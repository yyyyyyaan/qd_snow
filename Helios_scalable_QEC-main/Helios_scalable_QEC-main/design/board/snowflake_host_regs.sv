`timescale 1ns / 1ps
//=============================================================================
// snowflake_host_regs -- the PS host interface: AXI4-Lite slave + register file.
//
// This is the SYSTEM SHELL the project never had (NEXT 3.6C): until now the
// decoder was "a TB wired straight to the PE array".  Everything the host has to
// do for D8 lives here:
//
//   * syndrome injection      -> the SYN window (0x100..), latched and held for
//                                the whole round (the array latches it again
//                                into `syn_buf` on `start`);
//   * correction output       -> the COR window (0x200..): the commit mask,
//                                latched when `commit_onehot` is non-zero, so
//                                software reads "which boundary edges this round
//                                committed" without parsing the trace;
//   * round control/status    -> start / done / cycles / round index;
//   * `obs_*` readback        -> TRACE_REC/TRACE_WIX/TRACE_DATA, which drain the
//                                wide record buffer of snowflake_trace_capture;
//   * identity                -> the ID block, so software can prove WHICH
//                                configuration the bitstream holds (NN, NE,
//                                NCOMMIT, NSYN, CID_W, PTR_W, NDIR, record
//                                layout, lattice shape) before trusting a run.
//
// REGISTER MAP (byte offsets; 16-bit address window = 64 KB aperture)
// ------------------------------------------------------------------
//   0x000 CTRL        W   W1P: [0] START, [1] SW_RESET, [2] TRACE_CLEAR,
//                             [3] TRACE_ARM, [4] TRACE_DISARM
//                     R   [3] armed
//   0x004 STATUS      R   [0] done (sticky to the next START)
//                         [1] all_busy
//                         [2] record overflow
//                         [3] trace armed
//                         [4] core_rst
//                         [7:5] dbg_stage   [15:8] dbg_step
//   0x008 ROUNDS      R   rounds started
//   0x00C CYC_LAST    R   host-visible cycles of the last round
//                         (= cycles from the START write to the cycle `done` was
//                            observed; the array's internal cycle count is this
//                            minus 1 -- documented, not silently assumed)
//   0x010 REC_COUNT   R   records captured for the current round
//   0x014 CYC_ROUND   R   live cycles since START
//   0x018 TRACE_REC   W   record index (also latches the record for reading)
//   0x01C TRACE_WIX   R/W word index; TRACE_DATA reads auto-increment it and it
//                         wraps at ID_WORDS
//   0x020 TRACE_DATA  R   word[TRACE_WIX] of TRACE_REC; reading advances WIX
//   0x024 CYC_TOTAL   R   free-running cycle counter
//   0x028 LAT_LIVE    R   array latency counters (per-round sanity numbers)
//   0x02C LAT_PUSH    R
//   0x030 LAT_FLIP    R
//   0x034 ID_MAGIC    R   0x534E0101 ("SN", version 1, interface 1)
//   0x038 ID_NN       R   graph nodes
//   0x03C ID_NE       R   graph edges
//   0x040 ID_NCOMMIT  R   commit edges
//   0x044 ID_NSYN     R   syndrome bits
//   0x048 ID_WID      R   {8'd0, NDIR, PTR_W, CID_W}
//   0x04C ID_WORDS    R   words per trace record
//   0x050 ID_MAXREC   R   record capacity
//   0x054 ID_NSLOT    R   lattice node slots
//   0x058 ID_NCTX     R   lattice contexts (slices)
//   0x05C ID_HDRW     R   trace record header width (bits)
//   0x060 ID_STRIDE   R   {16'd0, NS, ES}
//   0x064 ID_RBITS    R   full record width (bits)
//   0x100..           W   SYN: ceil(NSYN/32) words, byte strobes honoured
//   0x200..           R   COR: ceil(NCOMMIT/32) words of the commit mask
//
// Reset split (see snowflake_reset_sync.sv): the AXI FSM is reset by `rst_host`
// ONLY, so the bus stays alive while the core is in reset and the host can
// always poll STATUS[4].  Every register/counter is cleared by either reset.
//
// The AXI implementation is deliberately small: one outstanding read, one
// outstanding write, AW/W captured independently, 1-cycle read latency, and the
// read data registered out of a combinational decode of the ACCEPTED address.
//=============================================================================
`include "../generated/snowflake_graph.svh"

module snowflake_host_regs #(
    parameter integer NSLOT = 1,      // lattice shape, for the ID block only
    parameter integer NCTX  = 1
) (
    input  wire clk,
    input  wire rst_host,             // bus reset (level, synchronized)
    input  wire rst_core,             // stretched core reset

    // ---- AXI4-Lite slave ----
    input  wire [15:0] s_axi_awaddr,
    input  wire        s_axi_awvalid,
    output wire        s_axi_awready,
    input  wire [31:0] s_axi_wdata,
    input  wire [3:0]  s_axi_wstrb,
    input  wire        s_axi_wvalid,
    output wire        s_axi_wready,
    output wire [1:0]  s_axi_bresp,
    output wire        s_axi_bvalid,
    input  wire        s_axi_bready,
    input  wire [15:0] s_axi_araddr,
    input  wire        s_axi_arvalid,
    output wire        s_axi_arready,
    output wire [31:0] s_axi_rdata,
    output wire [1:0]  s_axi_rresp,
    output wire        s_axi_rvalid,
    input  wire        s_axi_rready,

    // ---- to the decoder core ----
    output wire start_pulse,
    output wire sw_reset_pulse,
    output wire [SNOW_NSYN-1:0] syndrome,
    output wire cap_en,               // armed & running & ~done

    // ---- from the decoder core ----
    input  wire        done_i,
    input  wire        all_busy_i,
    input  wire [2:0]  dbg_stage_i,
    input  wire [7:0]  dbg_step_i,
    input  wire [SNOW_NCOMMIT-1:0] commit_onehot_i,
    input  wire [31:0] lat_live_i,
    input  wire [31:0] lat_push_i,
    input  wire [31:0] lat_flip_i,

    // ---- capture-side context (the counters are the host's own bookkeeping,
    //      so they are exported rather than duplicated in the capture module) ----
    output wire [7:0]  round_idx_o,
    output wire [15:0] cyc_round_o,

    // ---- trace capture ----
    output wire        trace_clear,
    output wire        trace_rec_load,
    output wire [31:0] trace_rec,
    output wire [31:0] trace_wix,
    input  wire [31:0] rword_i,
    input  wire [15:0] rec_count_i,
    input  wire        rec_ovf_i,
    input  wire [31:0] rec_words_i,
    input  wire [31:0] rec_cap_i,
    input  wire [31:0] rec_hdrw_i,
    input  wire [31:0] rec_ns_i,
    input  wire [31:0] rec_es_i,
    input  wire [31:0] rec_rbits_i
);

  localparam integer SYN_WORDS  = (SNOW_NSYN + 31) / 32;
  localparam integer CORR_WORDS = (SNOW_NCOMMIT + 31) / 32;
  localparam integer SW = SYN_WORDS * 32;
  localparam integer CW = CORR_WORDS * 32;

  localparam [31:0] ID_MAGIC = 32'h534E0101;

  //===========================================================================
  // AXI4-Lite channel state
  //===========================================================================
  reg        aw_have, w_have;
  reg [15:0] awaddr_q;
  reg [31:0] wdata_q;
  reg [3:0]  wstrb_q;
  reg        awready_r, wready_r, bvalid_r;
  reg        arready_r, rvalid_r, rd_is_trace;
  reg [31:0] rdata_r;
  reg [15:0] araddr_q;

  // Address the read decode is applied to: while the slave is ready to accept,
  // that is the address ON THE BUS (decoding the registered one would return the
  // previous transaction's data); afterwards it is the accepted one.
  wire [15:0] rd_addr = arready_r ? s_axi_araddr : araddr_q;
  reg  [31:0] rd_mux;

  assign s_axi_awready = awready_r;
  assign s_axi_wready  = wready_r;
  assign s_axi_bresp   = 2'b00;
  assign s_axi_bvalid  = bvalid_r;
  assign s_axi_arready = arready_r;
  assign s_axi_rdata   = rdata_r;
  assign s_axi_rresp   = 2'b00;
  assign s_axi_rvalid  = rvalid_r;

  always @(posedge clk) begin
    if (rst_host) begin
      aw_have     <= 1'b0;
      w_have      <= 1'b0;
      awready_r   <= 1'b1;
      wready_r    <= 1'b1;
      bvalid_r    <= 1'b0;
      arready_r   <= 1'b1;
      rvalid_r    <= 1'b0;
      rdata_r     <= 32'h0;
      araddr_q    <= 16'h0;
      rd_is_trace <= 1'b0;
    end else begin
      // ---- write address / data capture (independent halves) ----
      if (awready_r && s_axi_awvalid) begin
        awready_r <= 1'b0;
        awaddr_q  <= s_axi_awaddr;
        aw_have   <= 1'b1;
      end
      if (wready_r && s_axi_wvalid) begin
        wready_r <= 1'b0;
        wdata_q  <= s_axi_wdata;
        wstrb_q  <= s_axi_wstrb;
        w_have   <= 1'b1;
      end
      if (aw_have && w_have) begin
        aw_have  <= 1'b0;
        w_have   <= 1'b0;
        bvalid_r <= 1'b1;
      end
      if (bvalid_r && s_axi_bready) begin
        bvalid_r  <= 1'b0;
        awready_r <= 1'b1;
        wready_r  <= 1'b1;
      end
      // ---- read channel ----
      if (arready_r && s_axi_arvalid) begin
        arready_r   <= 1'b0;
        araddr_q    <= s_axi_araddr;
        rdata_r     <= rd_mux;      // decode of the address being accepted
        rvalid_r    <= 1'b1;
        rd_is_trace <= (s_axi_araddr == 16'h0020);
      end else if (rvalid_r && s_axi_rready) begin
        rvalid_r  <= 1'b0;
        arready_r <= 1'b1;
      end
    end
  end

  // A write is applied on the cycle both halves are present.
  wire        wr_en   = aw_have && w_have;
  wire [15:0] wr_addr = awaddr_q;
  wire [31:0] wr_data = wdata_q;
  wire [3:0]  wr_strb = wstrb_q;
  wire [7:0]  wr_page = wr_addr[15:8];
  wire [5:0]  wr_word = wr_addr[7:2];

  wire wr_ctrl = wr_en && (wr_addr == 16'h0000);
  wire wr_trec = wr_en && (wr_addr == 16'h0018);
  wire wr_twix = wr_en && (wr_addr == 16'h001C);
  wire wr_syn  = wr_en && (wr_page == 8'h01) && (wr_word < SYN_WORDS);

  assign start_pulse    = wr_ctrl && wr_data[0] && !rst_core;
  assign sw_reset_pulse = wr_ctrl && wr_data[1];
  assign trace_clear    = ((wr_ctrl && wr_data[2]) || rst_core);

  //===========================================================================
  // register file + counters (cleared by either reset)
  //===========================================================================
  reg [SW-1:0] syn_pad;        // syndrome words, padded to whole words
  reg [CW-1:0] corr_pad;       // commit mask, padded
  reg [31:0]   rounds_r, cyc_total_r, cyc_at_start, cyc_round_r, cyc_last_r;
  reg [31:0]   trace_rec_r, trace_wix_r;
  reg          trace_arm_r, running, done_lat;
  reg [7:0]    round_idx_r;
  reg          trec_load_r;

  integer wi, bi;

  assign syndrome       = syn_pad[SNOW_NSYN-1:0];
  // CAPTURE WINDOW -- the one interface subtlety that cost a trace line per round.
  //
  // tb_snowflake_pe_array_lat1.sv's dump loop is
  //     while (!done) begin @(negedge clk); if (dbg_valid) dump; end
  // and the `@(negedge clk)` sits at the TOP of the body, so the record for a
  // cycle is read BEFORE that cycle's `done` is tested: the cycle that asserts
  // `done` IS part of the trace.  Measured the hard way -- a window of
  // `running & ~done` (the "obvious" reading) drops exactly the last record of
  // every round (rotated d3: 71 records instead of 83, one `m` line per round).
  //
  // `running` covers S+1..D-1 and the done cycle adds D; `trace_arm_r` is still
  // set during D (it clears at the END of D).  Window = S+1..D.  The testbench's
  // first sample is S+2, and the two agree because `dbg_valid` cannot be high in
  // S+1: `phase` is 0 there (it is cleared while the FSM is in ST_IDLE) and
  // `stage_last` needs phase == NCTX-1, i.e. NCTX >= 2 -- which the merged array
  // always has (the two-pass scheme needs the phase walk).
  assign cap_en         = trace_arm_r && (running || done_i);
  assign trace_rec      = trace_rec_r;
  assign trace_wix      = trace_wix_r;
  assign trace_rec_load = trec_load_r;
  assign round_idx_o    = round_idx_r;
  assign cyc_round_o    = cyc_round_r[15:0];

  always @(posedge clk) begin
    if (rst_host || rst_core) begin
      syn_pad      <= {SW{1'b0}};
      corr_pad     <= {CW{1'b0}};
      rounds_r     <= 32'd0;
      cyc_total_r  <= 32'd0;
      cyc_at_start <= 32'd0;
      cyc_round_r  <= 32'd0;
      cyc_last_r   <= 32'd0;
      trace_rec_r  <= 32'd0;
      trace_wix_r  <= 32'd0;
      trace_arm_r  <= 1'b0;
      running      <= 1'b0;
      done_lat     <= 1'b0;
      round_idx_r  <= 8'd0;
      trec_load_r  <= 1'b0;
    end else begin
      cyc_total_r <= cyc_total_r + 32'd1;
      trec_load_r <= 1'b0;

      // ---- round bookkeeping ----
      if (start_pulse) begin
        done_lat     <= 1'b0;
        running      <= 1'b1;
        round_idx_r  <= rounds_r[7:0];     // this round's index (0-based)
        rounds_r     <= rounds_r + 32'd1;
        cyc_at_start <= cyc_total_r;
        cyc_round_r  <= 32'd0;
      end else if (running) begin
        cyc_round_r <= cyc_round_r + 32'd1;
      end

      if (done_i) begin
        done_lat    <= 1'b1;
        running     <= 1'b0;
        cyc_last_r  <= cyc_total_r - cyc_at_start;
        trace_arm_r <= 1'b0;               // the capture window closes with the round
      end

      // ---- commit mask: the correction output port ----
      if (|commit_onehot_i) corr_pad[SNOW_NCOMMIT-1:0] <= commit_onehot_i;

      // ---- host writes ----
      if (wr_ctrl) begin
        if (wr_data[3]) trace_arm_r <= 1'b1;
        if (wr_data[4]) trace_arm_r <= 1'b0;
        if (wr_data[2]) begin              // TRACE_CLEAR also resets the pointers
          trace_rec_r <= 32'd0;
          trace_wix_r <= 32'd0;
        end
      end
      if (wr_trec) begin
        trace_rec_r <= wr_data;
        trace_wix_r <= 32'd0;
        trec_load_r <= 1'b1;               // latch the record into the read register
      end
      if (wr_twix) begin
        trace_wix_r <= (wr_data < rec_words_i) ? wr_data : 32'd0;
      end
      // syndrome words, byte strobes honoured
      if (wr_syn) begin
        for (wi = 0; wi < SYN_WORDS; wi = wi + 1) begin
          if (wr_word == wi[5:0]) begin
            for (bi = 0; bi < 4; bi = bi + 1) begin
              if (wr_strb[bi]) syn_pad[wi*32 + bi*8 +: 8] <= wr_data[bi*8 +: 8];
            end
          end
        end
      end
      // TRACE_DATA read: advance the word index (wraps at the record length)
      if (rvalid_r && s_axi_rready && rd_is_trace) begin
        trace_wix_r <= (trace_wix_r + 32'd1 >= rec_words_i) ? 32'd0
                                                           : trace_wix_r + 32'd1;
      end
    end
  end

  //===========================================================================
  // read decode (combinational; registered into rdata_r on acceptance)
  //===========================================================================
  // STATUS IS PIPELINED, and not for style.  `all_busy` is the output of the
  // ARRAY'S own critical chain (state -> st_out -> |busy), and feeding it
  // straight into the read mux EXTENDS that chain into `rdata_r`: measured on
  // `xc7z020clg484-1` @20 ns the top's worst path was
  //     u_array/g_slot[16].own_reg[14]/C -> u_host/rdata_r_reg[1]/D   20.041 ns
  // i.e. the array's 18-19 ns chain plus the read mux.  One pipeline stage here
  // gives STATUS[1] (and the dbg fields) one cycle of latency -- free for a host
  // that polls -- and takes the mux off the array's path.
  reg [31:0] status_q;
  always @(posedge clk) begin
    if (rst_host || rst_core)
      status_q <= {16'h0, dbg_step_i, dbg_stage_i,
                   rst_core, trace_arm_r, rec_ovf_i, all_busy_i, done_lat};
    else
      status_q <= {16'h0, dbg_step_i, dbg_stage_i,
                   rst_core, trace_arm_r, rec_ovf_i, all_busy_i, done_lat};
  end

  wire [31:0] status_word = status_q;

  always @* begin
    rd_mux = 32'h0;
    case (rd_addr)
      16'h0000: rd_mux = {28'h0, trace_arm_r, 3'h0};
      16'h0004: rd_mux = status_word;
      16'h0008: rd_mux = rounds_r;
      16'h000C: rd_mux = cyc_last_r;
      16'h0010: rd_mux = {16'h0, rec_count_i};
      16'h0014: rd_mux = cyc_round_r;
      16'h0018: rd_mux = trace_rec_r;
      16'h001C: rd_mux = trace_wix_r;
      16'h0020: rd_mux = rword_i;
      16'h0024: rd_mux = cyc_total_r;
      16'h0028: rd_mux = lat_live_i;
      16'h002C: rd_mux = lat_push_i;
      16'h0030: rd_mux = lat_flip_i;
      16'h0034: rd_mux = ID_MAGIC;
      16'h0038: rd_mux = SNOW_NN;
      16'h003C: rd_mux = SNOW_NE;
      16'h0040: rd_mux = SNOW_NCOMMIT;
      16'h0044: rd_mux = SNOW_NSYN;
      16'h0048: rd_mux = {8'h0, SNOW_NDIR[7:0], SNOW_PTR_W[7:0], SNOW_CID_W[7:0]};
      16'h004C: rd_mux = rec_words_i;
      16'h0050: rd_mux = rec_cap_i;
      16'h0054: rd_mux = NSLOT;
      16'h0058: rd_mux = NCTX;
      16'h005C: rd_mux = rec_hdrw_i;
      16'h0060: rd_mux = {16'h0, rec_ns_i[7:0], rec_es_i[7:0]};
      16'h0064: rd_mux = rec_rbits_i;
      default: begin
        if (rd_addr[15:8] == 8'h01) begin
          for (wi = 0; wi < SYN_WORDS; wi = wi + 1)
            if (rd_addr[7:2] == wi[5:0]) rd_mux = syn_pad[wi*32 +: 32];
        end else if (rd_addr[15:8] == 8'h02) begin
          for (wi = 0; wi < CORR_WORDS; wi = wi + 1)
            if (rd_addr[7:2] == wi[5:0]) rd_mux = corr_pad[wi*32 +: 32];
        end
      end
    endcase
  end

endmodule
