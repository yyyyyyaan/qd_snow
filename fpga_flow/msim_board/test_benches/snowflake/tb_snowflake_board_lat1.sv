`timescale 1ns / 1ps
//======================================================================
// Testbench for the BOARD PATH (design/board/snowflake_board_top.sv).
//
// It is the PS, not a TB: every stimulus goes through AXI4-Lite register writes
// and every observation comes back through AXI4-Lite register reads, in the same
// order the bring-up software uses:
//
//   POR  ->  poll STATUS[4] (core reset)  ->  read the ID block
//        ->  per round: TRACE_CLEAR, write SYNDROME, TRACE_ARM, START,
//            poll STATUS[0] (done), read REC_COUNT, drain the records
//
// What it writes to `board_records.txt` is the RAW record words (plus a
// `#LAYOUT` line taken from the PL's own ID registers).  It does NOT format the
// trace itself: `fpga_flow/board_records_to_trace.py` does that, exactly as the
// PS software will, so the line-exact comparison covers the host-side
// reconstruction too -- the only thing that is not simulated is the A9
// executing the same algorithm.
//
// The stimulus is byte-identical to tb_snowflake_pe_array_lat1.sv, so the
// resulting trace is compared against the SAME golden file as the direct-array
// regression (`fpga_flow/evidence/golden_lat1_*.txt`).
//
// Parameters are top-level so the reset-contract sweep can re-run the same
// compiled library with `vsim -gRSTLEN=... -gRSTPULSE=...`.
//======================================================================
`include "../../design/generated/snowflake_graph.svh"
`include "../../design/generated/snowflake_lattice.svh"

module tb_snowflake_board_lat1 #(
  parameter integer RSTLEN   = 16,    // -> board top RESET_LEN
  parameter integer RSTPULSE = 4,     // cycles `pl_reset_in` is held
  parameter integer MAXREC   = 128,   // -> board top TRACE_MAXREC
  parameter integer NCYC     = 12
);

  localparam integer SYN_WORDS = (SNOW_NSYN + 31) / 32;
  localparam integer ONE_ONE   = 0;

  reg clk = 0;
  always #5 clk = ~clk;                  // 10 ns: the TB clock, not a board claim
  integer clk_cnt = 0;
  always @(posedge clk) clk_cnt = clk_cnt + 1;

  reg pl_reset_in = 1;

  reg  [15:0] awaddr = 0;
  reg         awvalid = 0;
  wire        awready;
  reg  [31:0] wdata = 0;
  reg  [3:0]  wstrb = 0;
  reg         wvalid = 0;
  wire        wready;
  wire [1:0]  bresp;
  wire        bvalid;
  reg         bready = 1;
  reg  [15:0] araddr = 0;
  reg         arvalid = 0;
  wire        arready;
  wire [31:0] rdata;
  wire [1:0]  rresp;
  wire        rvalid;
  reg         rready = 1;

  snowflake_board_top #(.RESET_LEN(RSTLEN), .TRACE_MAXREC(MAXREC),
                        .ONE_ONE(ONE_ONE)) dut (
      .clk(clk), .pl_reset_in(pl_reset_in),
      .s_axi_awaddr(awaddr), .s_axi_awvalid(awvalid), .s_axi_awready(awready),
      .s_axi_wdata(wdata), .s_axi_wstrb(wstrb), .s_axi_wvalid(wvalid),
      .s_axi_wready(wready), .s_axi_bresp(bresp), .s_axi_bvalid(bvalid),
      .s_axi_bready(bready),
      .s_axi_araddr(araddr), .s_axi_arvalid(arvalid), .s_axi_arready(arready),
      .s_axi_rdata(rdata), .s_axi_rresp(rresp), .s_axi_rvalid(rvalid),
      .s_axi_rready(rready)
  );

  integer aw_ok, w_ok, ar_ok, rv_ok, wd, poll;

  // ---- AXI4-Lite master -------------------------------------------------
  task automatic axi_wr(input [15:0] a, input [31:0] d);
    begin
      @(negedge clk);
      awaddr = a; awvalid = 1'b1;
      wdata  = d; wstrb = 4'hF; wvalid = 1'b1;
      aw_ok = 0; w_ok = 0;
      while (!(aw_ok && w_ok)) begin
        @(posedge clk);
        if (awready) begin awvalid = 1'b0; aw_ok = 1; end
        if (wready)  begin wvalid  = 1'b0; w_ok  = 1; end
      end
      poll = 0;
      while (!bvalid && poll < 1000) begin @(posedge clk); poll = poll + 1; end
      if (poll >= 1000) $display("[brd] FATAL: no write response (addr=%h)", a);
      @(negedge clk);
    end
  endtask

  task automatic axi_rd(input [15:0] a, output [31:0] d);
    begin
      @(negedge clk);
      araddr = a; arvalid = 1'b1;
      ar_ok = 0;
      while (!ar_ok) begin
        @(posedge clk);
        if (arready) begin arvalid = 1'b0; ar_ok = 1; end
      end
      rv_ok = 0;
      while (!rv_ok && poll < 1000) begin
        @(posedge clk);
        if (rvalid) begin d = rdata; rv_ok = 1; end
      end
      if (!rv_ok) $display("[brd] FATAL: no read data (addr=%h)", a);
      @(negedge clk);
    end
  endtask

  // ---- helpers ----------------------------------------------------------
  reg [31:0] st, v, words, nrec, cyclast, idv;
  reg [31:0] id_nn, id_ne, id_ncommit, id_nsyn, id_wid, id_cap, id_hdrw;
  reg [31:0] id_stride, id_rbits, id_nslot, id_nctx, corr0, corr1;
  integer cyc, rec, w, errs;
  integer fd;
  reg [SNOW_NSYN-1:0] rounds [0:NCYC-1];
  reg [31:0] synw;

  initial begin
    // ---- stimulus: the same 12 rounds as tb_snowflake_pe_array_lat1 ----
`ifdef SNOW_SEAM_PAT
    rounds[0]=16'hABAA; rounds[1]=16'hB7D5; rounds[2]=16'h9CA8; rounds[3]=16'h08D3;
    rounds[4]=16'hD512; rounds[5]=16'h2A9C; rounds[6]=16'h3539; rounds[7]=16'h4EA2;
    rounds[8]=16'hCDDF; rounds[9]=16'hD75A; rounds[10]=16'hCBAD; rounds[11]=16'h1D6E;
`else
    rounds[0]=16'h0000; rounds[1]=16'h0001; rounds[2]=16'h0002; rounds[3]=16'h0003;
    rounds[4]=16'h0000; rounds[5]=16'h0001; rounds[6]=16'h0000; rounds[7]=16'h0002;
    rounds[8]=16'h0003; rounds[9]=16'h0000; rounds[10]=16'h0001; rounds[11]=16'h0000;
`endif

    fd = $fopen("board_records.txt", "w");
    if (fd == 0) begin $display("[brd] FATAL: cannot open board_records.txt"); $finish; end

    // ---- power-on reset: the board's POR/button ----
    pl_reset_in = 1'b1;
    repeat (RSTPULSE) @(posedge clk);
    pl_reset_in = 1'b0;
    repeat (8) @(posedge clk);           // let the bus synchronizer settle

    // ---- poll the core reset through the LIVE bus (the reset split) ----
    poll = 0;
    axi_rd(16'h0004, st);
    while (st[4] && poll < 200) begin axi_rd(16'h0004, st); poll = poll + 1; end
    $display("[brd] core reset released after %0d polls (rstlen=%0d pulse=%0d)",
             poll, RSTLEN, RSTPULSE);

    // ---- ID block: the bitstream says what it is ----
    axi_rd(16'h0034, idv);
    axi_rd(16'h0038, id_nn);
    axi_rd(16'h003C, id_ne);
    axi_rd(16'h0040, id_ncommit);
    axi_rd(16'h0044, id_nsyn);
    axi_rd(16'h0048, id_wid);
    axi_rd(16'h004C, words);
    axi_rd(16'h0050, id_cap);
    axi_rd(16'h0054, id_nslot);
    axi_rd(16'h0058, id_nctx);
    axi_rd(16'h005C, id_hdrw);
    axi_rd(16'h0060, id_stride);
    axi_rd(16'h0064, id_rbits);
    $fwrite(fd, "#LAYOUT magic=%08x nn=%0d ne=%0d ncommit=%0d nsyn=%0d cid_w=%0d ptr_w=%0d ndir=%0d words=%0d maxrec=%0d hdrw=%0d ns=%0d es=%0d rbits=%0d nslot=%0d nctx=%0d rstlen=%0d rstpulse=%0d\n",
            idv, id_nn, id_ne, id_ncommit, id_nsyn, id_wid[7:0], id_wid[15:8],
            id_wid[23:16], words, id_cap, id_hdrw, id_stride[15:8],
            id_stride[7:0], id_rbits, id_nslot, id_nctx, RSTLEN, RSTPULSE);
    $display("[brd] ID magic=%08x nn=%0d ne=%0d ncommit=%0d nsyn=%0d cid_w=%0d ptr_w=%0d ndir=%0d",
             idv, id_nn, id_ne, id_ncommit, id_nsyn, id_wid[7:0], id_wid[15:8],
             id_wid[23:16]);
    $display("[brd] layout words=%0d maxrec=%0d hdrw=%0d ns=%0d es=%0d rbits=%0d nslot=%0d nctx=%0d",
             words, id_cap, id_hdrw, id_stride[15:8], id_stride[7:0], id_rbits,
             id_nslot, id_nctx);

    errs = 0;
    if (idv !== 32'h534E0101) begin
      $display("[brd] FATAL: ID magic mismatch"); errs = errs + 1;
    end
    if (words == 0 || words > 4096) begin
      $display("[brd] FATAL: implausible record length %0d", words); errs = errs + 1;
    end
    if (SYN_WORDS > 16) begin
      $display("[brd] FATAL: SNOW_NSYN=%0d does not fit the SYN window", SNOW_NSYN);
      errs = errs + 1;
    end

    // ---- the 12 rounds ----
    for (cyc = 0; cyc < NCYC; cyc = cyc + 1) begin
      axi_wr(16'h0000, 32'h0004);                   // TRACE_CLEAR
      for (w = 0; w < SYN_WORDS; w = w + 1) begin
        synw = rounds[cyc] >> (w*32);
        axi_wr(16'h0100 + 4*w, synw);               // SYNDROME word w
      end
      axi_wr(16'h0000, 32'h0008);                   // TRACE_ARM
      axi_wr(16'h0000, 32'h0001);                   // START

      poll = 0;
      axi_rd(16'h0004, st);
      while (!st[0] && poll < 20000) begin axi_rd(16'h0004, st); poll = poll + 1; end
      if (!st[0]) begin
        $display("[brd] FATAL: round %0d never finished", cyc);
        errs = errs + 1;
        cyc = NCYC;
      end else begin
        axi_rd(16'h000C, cyclast);
        axi_rd(16'h0010, nrec);
        if (st[2]) begin
          $display("[brd] FATAL: round %0d overflowed the record buffer", cyc);
          errs = errs + 1;
        end
        $fwrite(fd, "#RND round=%0d records=%0d cyc_last=%0d polls=%0d\n",
                cyc, nrec, cyclast, poll);
        $display("[brd] round=%0d records=%0d cyc_last=%0d polls=%0d stage=%0d step=%0d",
                 cyc, nrec, cyclast, poll, st[7:5], st[15:8]);
        for (rec = 0; rec < nrec; rec = rec + 1) begin
          axi_wr(16'h0018, rec);                    // TRACE_REC
          $fwrite(fd, "R %0d", rec);
          for (w = 0; w < words; w = w + 1) begin
            axi_rd(16'h0020, v);                    // TRACE_DATA (auto-increments)
            $fwrite(fd, " %08x", v);
          end
          $fwrite(fd, "\n");
        end
      end
    end

    // ---- correction output port (diagnostic: the last round's commit mask) ----
    axi_rd(16'h0200, corr0);
    axi_rd(16'h0204, corr1);
    $fwrite(fd, "#CORR w0=%08x w1=%08x\n", corr0, corr1);
    $display("[brd] CORR mask w0=%08x w1=%08x", corr0, corr1);
    $display("[brd] AXI transactions done; errs=%0d", errs);
    $fclose(fd);
    $display("[brd] DONE rounds=%0d", NCYC);
    $finish;
  end

  initial begin
    #50000000;
    $display("[brd] TIMEOUT");
    $finish;
  end

`ifdef SNOW_BOARD_DBG
  // Cycle-level probe (RTL only): shows, for every cycle that carries a record
  // or the round end, whether the capture window was open.  Used to explain a
  // missing record instead of guessing.
  always @(posedge clk) begin
    if (dut.dbg_valid_i || dut.done_i)
      $display("[dbg] c=%0d round=%0d done=%b valid=%b cap_en=%b run=%b arm=%b stage=%0d step=%0d cnt=%0d wp=%0d",
               clk_cnt, dut.u_host.round_idx_r, dut.done_i, dut.dbg_valid_i,
               dut.cap_en, dut.u_host.running, dut.u_host.trace_arm_r,
               dut.dbg_stage_i, dut.dbg_step_i, dut.u_trace.cnt_r, dut.u_trace.wptr);
  end
`endif

endmodule
