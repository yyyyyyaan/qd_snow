`timescale 1ns / 1ps
//======================================================================
// Testbench for the MERGED shared-lattice array
// (design/snowflake/snowflake_pe_array_lat1.sv: one datapath per slot).
//
// Identical stimulus, identical trace format and identical golden comparison as
// tb_snowflake_pe_array_lat.sv, so the two arrays can be compared line by line
// against the SAME golden traces.
//
// ONE difference: reset is held for NCTX+3 cycles instead of 5.  The merged
// array has a single address per cycle, so it applies the per-cell reset preset
// by walking `phase` through all NCTX contexts while reset is asserted; a
// 5-cycle reset would preset only contexts 0..4.
//======================================================================
`include "../../design/generated/snowflake_graph.svh"
`include "../../design/generated/snowflake_lattice.svh"

module tb_snowflake_pe_array_lat1;

  localparam integer NCYC = 12;
`ifdef SNOW_ONE_ONE
  localparam integer ONE_ONE = 1;
`else
  localparam integer ONE_ONE = 0;
`endif

  reg clk = 0;
  always #5 clk = ~clk;      // 10 ns = 100 MHz
  integer clk_cnt = 0;
  always @(posedge clk) clk_cnt = clk_cnt + 1;

  reg reset = 1;
  reg start = 0;
  reg [SNOW_NSYN-1:0] syndrome = {SNOW_NSYN{1'b0}};
  wire done, all_busy;
  wire [2:0]  dbg_stage;
  wire [7:0]  dbg_step;
  wire        dbg_valid;
  wire [SNOW_NCOMMIT-1:0] commit_onehot;
  wire [SNOW_NN*SNOW_CID_W-1:0] obs_cid;
  wire [SNOW_NN-1:0]   obs_active, obs_whole, obs_defect, obs_grown, obs_unrooted, obs_busy;
  wire [SNOW_NN*SNOW_PTR_W-1:0] obs_ptr;
  wire [SNOW_NE*2-1:0] obs_growth;
  wire [SNOW_NE-1:0]   obs_ecorr;
  wire [31:0] lat_live_cnt, lat_push_cnt, lat_flip_cnt;

  // The synthesized netlist exposes the module WITHOUT its parameter list
  // (Vivado binds ONE_ONE during elaboration of the RTL), so the gate-level run
  // compiles this TB with SNOW_NETLIST and skips the override.
  snowflake_pe_array_lat1
`ifndef SNOW_NETLIST
      #(.ONE_ONE(ONE_ONE))
`endif
      dut (
      .clk(clk), .reset(reset), .start(start), .syndrome(syndrome),
      .done(done), .all_busy(all_busy),
      .commit_onehot(commit_onehot),
      .obs_cid(obs_cid), .obs_active(obs_active), .obs_whole(obs_whole),
      .obs_defect(obs_defect), .obs_ptr(obs_ptr), .obs_grown(obs_grown),
      .obs_unrooted(obs_unrooted), .obs_busy(obs_busy),
      .obs_growth(obs_growth), .obs_ecorr(obs_ecorr),
      .dbg_stage(dbg_stage), .dbg_step(dbg_step), .dbg_valid(dbg_valid),
      .lat_live_cnt(lat_live_cnt), .lat_push_cnt(lat_push_cnt),
      .lat_flip_cnt(lat_flip_cnt)
  );

`ifdef SNOW_NETLIST
  // GATE-LEVEL PROBE ONLY (the RTL runs never define SNOW_NETLIST, so their
  // traces are untouched).  The netlist run used to hit the watchdog with an
  // EMPTY trace, and the TB could not say why; this prints the handshake so the
  // stopping point is visible.
  //
  // PORTS ONLY, on purpose.  The first version of this probe also read `phase`
  // and `lat_bpass` hierarchically, and that does not survive contact with a
  // second configuration: `wire phase` exists in the SURFACE d3 netlist but is
  // GONE from the ROTATED d3 one (its 32 slots are a power of two, so the phase
  // counter folds into the address bits), and xelab then dies with
  // `[VRFC 10-2991] 'phase' is not declared under prefix 'dut'` -- i.e. the
  // diagnostic itself becomes the failure.  The port-level fields below exist in
  // EVERY netlist and still separate "start never latched" (stage stays 0) from
  // "quiescence never drops" (`all_busy` stuck 1).
  integer prb = 0;
  always @(posedge clk) begin
    prb = prb + 1;
    if (prb <= 48 || (prb % 100) == 0)
      $display("[net] c%0d reset=%b start=%b done=%b stage=%0d step=%0d valid=%b busy=%b live=%0d obsbusy=%h",
               prb, reset, start, done, dbg_stage, dbg_step, dbg_valid, all_busy,
               lat_live_cnt, obs_busy);
  end
`endif

`ifdef SNOW_NETLIST_PROBE_INT
  // INTERNAL probe -- OPT-IN (`-d SNOW_NETLIST_PROBE_INT`), because every name
  // in it is synthesis-dependent.  Use it on a config whose netlist is known to
  // carry them (`lat_bpass`, `stage__0`/`stage__1` and the FSM clock-enable LUT
  // are present in both the surface and the rotated d3 netlists; `phase` only in
  // the surface one).  It is the block that diagnosed the empty gate-level trace
  // (report 6.24): `ph`/`bpass` plus the FSM register separate "the next-state
  // logic is wrong" from "the register never clocks" (CE stuck 0 / held in
  // reset) -- without them the netlist only says "stage never changes".
  integer prb2 = 0;
  always @(posedge clk) begin
    prb2 = prb2 + 1;
    if (prb2 <= 48 || (prb2 % 100) == 0)
      $display("[net] c%0d reset=%b start=%b done=%b stage=%0d step=%0d valid=%b busy=%b ph=%0d bpass=%b live=%0d obsbusy=%h",
               prb2, reset, start, done, dbg_stage, dbg_step, dbg_valid, all_busy,
               dut.phase, dut.lat_bpass, lat_live_cnt, obs_busy);
    if (prb2 <= 24)
      $display("[net2] c%0d stage0=%b stage1=%b ce=%b",
               prb2, dut.stage__0, dut.stage__1,
               dut.\FSM_sequential_stage[2]_i_1_n_0 );
  end
`endif

  function automatic [7:0] ST_CH(input [2:0] s);
    case (s) 3'd1: ST_CH="D"; 3'd2: ST_CH="G"; 3'd3: ST_CH="M";
             3'd4: ST_CH="g"; 3'd5: ST_CH="m"; default: ST_CH="?"; endcase
  endfunction

  integer fd;
  integer cyc, n, e;
  integer cyc0;              // clk_cnt when the round's `start` pulse went out
  reg [SNOW_NSYN-1:0] rounds [0:NCYC-1];

  task automatic dump_trace(input integer c, input [2:0] st, input [7:0] step);
    begin
      $fwrite(fd, "T %0d %0s %0d\n", c, ST_CH(st), step);
      for (n = 0; n < SNOW_NN; n = n + 1) begin
        $fwrite(fd, "N %0d ", n);
        if (obs_cid[n*SNOW_CID_W +: SNOW_CID_W] == SNOW_RESET_CID) $fwrite(fd, "R ");
        else $fwrite(fd, "%0d ", obs_cid[n*SNOW_CID_W +: SNOW_CID_W]);
        $fwrite(fd, "%0d %0d %0d %0d %0d %0d\n",
                obs_active[n], obs_whole[n], obs_defect[n],
                obs_ptr[n*SNOW_PTR_W +: SNOW_PTR_W],
                obs_grown[n], obs_unrooted[n]);
      end
      for (e = 0; e < SNOW_NE; e = e + 1) begin
        $fwrite(fd, "E %0d-%0d %0d %0d\n", SNOW_EDGE_U(e), SNOW_EDGE_V(e),
                obs_growth[e*2 +: 2], obs_ecorr[e]);
      end
    end
  endtask

  initial begin
`ifdef SNOW_SEAM_PAT
    rounds[0]=16'hABAA; rounds[1]=16'hB7D5; rounds[2]=16'h9CA8; rounds[3]=16'h08D3;
    rounds[4]=16'hD512; rounds[5]=16'h2A9C; rounds[6]=16'h3539; rounds[7]=16'h4EA2;
    rounds[8]=16'hCDDF; rounds[9]=16'hD75A; rounds[10]=16'hCBAD; rounds[11]=16'h1D6E;
`else
    rounds[0]=16'h0000; rounds[1]=16'h0001; rounds[2]=16'h0002; rounds[3]=16'h0003;
    rounds[4]=16'h0000; rounds[5]=16'h0001; rounds[6]=16'h0000; rounds[7]=16'h0002;
    rounds[8]=16'h0003; rounds[9]=16'h0000; rounds[10]=16'h0001; rounds[11]=16'h0000;
`endif

    fd = $fopen("rtl_trace.txt", "w");
    if (fd == 0) begin $display("ERROR: cannot open rtl_trace.txt"); $finish; end

    reset = 1'b1;
`ifdef SNOW_NETLIST
    // GATE-LEVEL ONLY -- the fix for the empty gate-level trace.
    //
    // `write_verilog -mode funcsim` emits Vivado's `glbl` model together with
    // the netlist, and its GSR is asserted for ROC_WIDTH time units (100000 ps,
    // i.e. 100 ns here, from the netlist's `timescale 1 ps / 1 ps`).  While GSR
    // is high every unisims flip-flop does `assign Q_out = INIT` and IGNORES its
    // clock, so no register in the netlist can leave its power-up value.
    //
    // This TB released reset after 5 cycles (45 ns) and pulsed `start` at ~85 ns
    // -- inside the window -- so the pulse was swallowed and the FSM sat in
    // ST_IDLE forever while the TB waited for `done` (watchdog, empty trace).
    // Measured with probes: on the cycle `start` was high the FSM's next state
    // was 110 (ST_DROP) and its clock enable was 1, and the register still never
    // moved.  The flat `tb_snowflake_core.sv` never hit this because its
    // 20-cycle reset already outlasts GSR.
    //
    // Nothing else changes: GSR forces every state bit to its INIT value, which
    // is the value the RTL's reset path presets, so after the wait the netlist
    // stands in the same state the RTL is in after reset.
    while (glbl.GSR !== 1'b0) @(posedge clk);
`endif
    repeat (5) @(posedge clk);
    reset = 1'b0;
    repeat (2) @(posedge clk);

    for (cyc = 0; cyc < NCYC; cyc = cyc + 1) begin
      syndrome = rounds[cyc];
      @(negedge clk); start = 1'b1; cyc0 = clk_cnt;
      @(negedge clk); start = 1'b0;
      while (!done) begin
        @(negedge clk);
        if (dbg_valid) begin
          dump_trace(cyc, dbg_stage, dbg_step);
          if ((dbg_stage == 3'd1) && (commit_onehot != 0)) begin
            for (e = 0; e < SNOW_NE; e = e + 1)
              if (SNOW_IS_COMMIT(e) && commit_onehot[SNOW_COMMIT_IDX(e)])
                $fwrite(fd, "P %0d-%0d\n", SNOW_EDGE_U(e), SNOW_EDGE_V(e));
          end
        end
      end
      // CYCLES PER ROUND (stdout only -- rtl_trace.txt is untouched, so the
      // line-exact comparison and the byte-for-byte equality across builds both
      // still hold).  This is the P0b measurement: one decode round = the span
      // from the `start` pulse to the cycle `done` is first seen, and with
      // `-Slices n` its slope in n is the per-slice execution cost, i.e. the
      // number the d21 `ns/round <= ~1 us` budget is decided by.
      @(posedge clk);
      $display("[cyc] round=%0d cycles=%0d", cyc, clk_cnt - cyc0);
    end

    $fclose(fd);
    $display("LAT stats: live_cycles=%0d push_xfer_cycles=%0d flip_xfer_cycles=%0d",
             lat_live_cnt, lat_push_cnt, lat_flip_cnt);
    $display("RTL trace written to rtl_trace.txt (%0d rounds, ONE_ONE=%0d, NN=%0d, NE=%0d, clk_cycles=%0d)",
             NCYC, ONE_ONE, SNOW_NN, SNOW_NE, clk_cnt);
    $finish;
  end

  initial begin
    #20000000;
    $display("[TIMEOUT]");
    $finish;
  end

endmodule
