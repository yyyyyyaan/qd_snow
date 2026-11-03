`timescale 1ns / 1ps
//=============================================================================
// snowflake_trace_capture -- one record per `dbg_valid` cycle, into a wide BRAM.
//
// This is the `obs_*` READBACK PATH of the board (NEXT 3.6 item 3 / P3).  It is
// the piece that turns D8 ("the board replays the same 12-round stimulus and the
// `obs_*` readback matches `fpga_flow/evidence/golden_*.txt` line for line")
// from a hope into a data path.
//
// WHY A WIDE RECORD AND NOT A 32-BIT FIFO
// ---------------------------------------
// The observation contract is CYCLIC: in the cycles where `dbg_valid` is high,
// ALL `SNOW_NN` node fields and ALL `SNOW_NE` edge fields are part of the trace,
// and records arrive on CONSECUTIVE cycles.  A 32-bit-wide buffer would have to
// write ~120 words per cycle (rotated d5) -- there is no bandwidth for that at
// any board clock, and stalling the array is not allowed (the FSM is verified
// RTL and its cycle count is part of the golden).  So the record IS the memory
// word: one wide BRAM word per captured cycle, drained by software afterwards.
//
// CAPTURE WINDOW -- exactly the TB's window
// -----------------------------------------
// `tb_snowflake_pe_array_lat1.sv` dumps when it sees `dbg_valid` at a negedge
// inside its `while (!done)` loop, and because the `@(negedge clk)` is at the
// TOP of the loop body the record for a cycle is read BEFORE that cycle's `done`
// is tested -- so the cycle that asserts `done` IS in the trace.  `en` here is
// the host's window (armed & (running | done)), i.e. S+1..D, and the TB samples
// S+2..D; they agree because `dbg_valid` cannot be high in S+1 (phase is 0 there
// and `stage_last` needs phase == NCTX-1, i.e. NCTX >= 2, which the merged array
// always has).  Measured: a window of `running & ~done` drops the last record of
// every round (71 records instead of 83 on rotated d3).
//
// ROUND GRANULARITY (why MAXREC can be small)
// -------------------------------------------
// The host owns the round loop (write syndrome -> start -> wait done -> drain),
// so this buffer only ever holds ONE round.  Rotated d3 = ~7 records/round,
// rotated d5 = ~68.  Depth up to 512 is free in a 36 Kb BRAM (the record is
// ~3800 bits wide for d5, i.e. ~53 BRAM columns -- see the utilization table),
// so 128 records is the default and `overflow` latches if a round needs more.
//
// RECORD LAYOUT (LSB first; also exported to the host through the ID registers
// of `snowflake_host_regs`, and to software through the generated board map):
//
//   [0]          round index (8)          -- the `T` line's first field
//   [8]          stage     (3)            -- 1=D 2=G 3=M 4=g 5=m
//   [11]         step      (8)            -- the `T` line's third field
//   [19]         cyc_round (16)           -- cycles since `start`, diagnostics
//   [35]         commit_onehot (SNOW_NCOMMIT)
//   [HW]         node block: SNOW_NN entries, stride NS = CID_W + PTR_W + 6
//                  cid (CID_W) | ptr (PTR_W) | {active, whole, defect, grown,
//                  unrooted, busy} (6, LSB = active)
//   [HW+NN*NS]   edge block: SNOW_NE entries, stride 3
//                  {ecorr, growth[1], growth[0]}
//
// The host reconstructs the text line as
//     T <round> <stage char> <step>
//     N <n> <cid|R> <active> <whole> <defect> <ptr> <grown> <unrooted>
//     E <u>-<v> <growth> <ecorr>
//     P <u>-<v>                     (only when stage==D and commit bit is set)
// which is byte-identical to what the TB writes.  `busy` is captured but is NOT
// part of the trace text: on the board it is the "every slot really went idle"
// check that a bring-up wants.
//=============================================================================
`include "../generated/snowflake_graph.svh"

module snowflake_trace_capture #(
    // records per round.  MUST be a power of two (the write pointer wraps by
    // truncation) and >= the largest round's record count.
    parameter integer MAXREC = 128
) (
    input  wire clk,
    input  wire reset,          // core reset (stretched)

    // ---- capture side (the array's observation bus) ----
    input  wire        en,      // host window: armed & running & ~done
    input  wire        valid,   // array `dbg_valid`
    input  wire [7:0]  round_idx,
    input  wire [15:0] cyc_round,
    input  wire [2:0]  stage,
    input  wire [7:0]  step,
    input  wire [SNOW_NCOMMIT-1:0] commit_onehot,
    input  wire [SNOW_NN*SNOW_CID_W-1:0] obs_cid,
    input  wire [SNOW_NN-1:0] obs_active,
    input  wire [SNOW_NN-1:0] obs_whole,
    input  wire [SNOW_NN-1:0] obs_defect,
    input  wire [SNOW_NN-1:0] obs_grown,
    input  wire [SNOW_NN-1:0] obs_unrooted,
    input  wire [SNOW_NN-1:0] obs_busy,
    input  wire [SNOW_NN*SNOW_PTR_W-1:0] obs_ptr,
    input  wire [SNOW_NE*2-1:0] obs_growth,
    input  wire [SNOW_NE-1:0]   obs_ecorr,

    // ---- host read side (from the AXI register file) ----
    input  wire        clear,   // 1-cycle: drop the round's records
    input  wire        rload,   // 1-cycle: latch record `raddr` into the read reg
    input  wire [31:0] raddr,
    input  wire [31:0] wix,     // word index within the latched record
    output wire [31:0] rword,

    // ---- status / layout back to the host ----
    output wire [15:0] count,
    output wire        overflow,
    output wire [31:0] o_words,   // 32-bit words per record
    output wire [31:0] o_cap,     // MAXREC
    output wire [31:0] o_hdrw,    // header width in bits
    output wire [31:0] o_ns,      // node stride in bits
    output wire [31:0] o_es,      // edge stride in bits
    output wire [31:0] o_rbits    // full record width in bits
);

  localparam integer NS = SNOW_CID_W + SNOW_PTR_W + 6;
  localparam integer ES = 3;
  localparam integer HW = 35 + SNOW_NCOMMIT;
  localparam integer RB = HW + SNOW_NN * NS + SNOW_NE * ES;
  localparam integer WORDS = (RB + 31) / 32;
  localparam integer RWP = WORDS * 32;
  localparam integer RIW = $clog2(MAXREC);
  localparam integer WIW = (WORDS <= 1) ? 1 : $clog2(WORDS);

  // ---- record assembly -----------------------------------------------------
  // Every field lands at a CONSTANT bit offset: the header offsets are literal
  // (or parameter-derived), and the node/edge offsets are genvar-derived
  // constants.  `rec_pack` is a wire with disjoint part-select drivers.
  wire [RWP-1:0]       rec_pack;
  wire [SNOW_NN*6-1:0] flag_flat;

  assign rec_pack[0  +:  8] = round_idx;
  assign rec_pack[8  +:  3] = stage;
  assign rec_pack[11 +:  8] = step;
  assign rec_pack[19 +: 16] = cyc_round;
  assign rec_pack[35 +: SNOW_NCOMMIT] = commit_onehot;

  genvar gn, ge;
  generate
    for (gn = 0; gn < SNOW_NN; gn = gn + 1) begin : g_flag
      // LSB FIRST: bit0 = active, bit1 = whole, bit2 = defect, bit3 = grown,
      // bit4 = unrooted, bit5 = busy -- the order the layout comment documents and
      // the host decoder (and the PS software) uses.  Written right-to-left in
      // the concatenation, because Verilog's leftmost term is the MSB: the first
      // version had it the other way round and the only visible symptom was
      // `whole` and `unrooted` swapping places in every `N` line.
      assign flag_flat[gn*6 +: 6] = {obs_busy[gn], obs_unrooted[gn], obs_grown[gn],
                                     obs_defect[gn], obs_whole[gn], obs_active[gn]};
    end
    for (gn = 0; gn < SNOW_NN; gn = gn + 1) begin : g_node
      assign rec_pack[HW + gn*NS +: SNOW_CID_W] =
             obs_cid[gn*SNOW_CID_W +: SNOW_CID_W];
      assign rec_pack[HW + gn*NS + SNOW_CID_W +: SNOW_PTR_W] =
             obs_ptr[gn*SNOW_PTR_W +: SNOW_PTR_W];
      assign rec_pack[HW + gn*NS + SNOW_CID_W + SNOW_PTR_W +: 6] =
             flag_flat[gn*6 +: 6];
    end
    for (ge = 0; ge < SNOW_NE; ge = ge + 1) begin : g_edge
      assign rec_pack[HW + SNOW_NN*NS + ge*ES +: ES] =
             {obs_ecorr[ge], obs_growth[ge*2 + 1], obs_growth[ge*2]};
    end
    if (RWP > RB) begin : g_pad
      assign rec_pack[RWP-1:RB] = {(RWP-RB){1'b0}};
    end
  endgenerate

  // ---- the capture memory --------------------------------------------------
  reg [RWP-1:0] tmem [0:MAXREC-1];
  reg [RIW-1:0] wptr;
  reg [15:0]    cnt_r;
  reg           ovf_r;

  always @(posedge clk) begin
    if (reset) begin
      wptr  <= {RIW{1'b0}};
      cnt_r <= 16'd0;
      ovf_r <= 1'b0;
    end else if (clear) begin
      wptr  <= {RIW{1'b0}};
      cnt_r <= 16'd0;
      ovf_r <= 1'b0;
    end else if (en && valid) begin
      if (cnt_r < MAXREC) begin
        tmem[wptr] <= rec_pack;
        wptr       <= wptr + 1'b1;      // wraps: MAXREC is a power of two
        cnt_r      <= cnt_r + 16'd1;
      end else begin
        ovf_r <= 1'b1;
      end
    end
  end

  // ---- read port ----------------------------------------------------------
  // The BRAM read is registered, so the host writes TRACE_REC first (which
  // pulses `rload`) and only then reads words -- the sequence the driver uses.
  reg [RWP-1:0] rrec_q;
  wire          raddr_ok = (raddr < MAXREC);

  always @(posedge clk) begin
    if (rload) rrec_q <= raddr_ok ? tmem[raddr[RIW-1:0]] : {RWP{1'b0}};
  end

  // Clamp the word index before the part-select: an out-of-range `+:` is not
  // defined behaviour, and getting it wrong here would look like a trace bug.
  wire [31:0] wix_c = (wix < WORDS) ? wix : 32'd0;
  assign rword = rrec_q[wix_c*32 +: 32];

  assign count    = cnt_r;
  assign overflow = ovf_r;
  assign o_words  = WORDS;
  assign o_cap    = MAXREC;
  assign o_hdrw   = HW;
  assign o_ns     = NS;
  assign o_es     = ES;
  assign o_rbits  = RB;

  // Maximum-record-count guard: the counter is 16 bits and MAXREC must be a
  // power of two for `wptr + 1` to wrap.  Simulator-only, ignored by synthesis.
  initial begin
    if ((MAXREC & (MAXREC - 1)) != 0)
      $display("snowflake_trace_capture: FATAL MAXREC=%0d is not a power of two", MAXREC);
    if (MAXREC < 2)
      $display("snowflake_trace_capture: FATAL MAXREC=%0d is too small", MAXREC);
  end

endmodule
