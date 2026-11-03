`timescale 1ns / 1ps
//======================================================================
// Testbench for design/snowflake/snowflake_core.sv.
//
// 每个 timestep 输出一行轨迹, 与 localuf 黄金轨迹同格式, 供逐行比对:
//      T <cycle> <stage> <step>
//      N <id> <cid> <active> <whole> <defect> <pointer> <grown> <unrooted>
//      E <u>-<v> <growth> <correction>
//      P <u>-<v>                              (提交区纠错事件)
// 指针字段为数值编码: 0 = C(根), d+1 = 方向 d (方向顺序由生成文件给出)
//
// 解码图(规模/位宽/方向/顶层探测器)来自 design/generated/snowflake_graph.svh,
// 由 build_scripts/generate_snowflake.py 依据 localuf 生成。
//
// 调度: 默认 2:1 (Snowflake); xvlog 加 -d SNOW_ONE_ONE 编译为 1:1 基线。
//======================================================================
`include "../../design/generated/snowflake_graph.svh"

module tb_snowflake_core;

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

`ifdef SNOW_NETLIST
  // gate-level run: the synthesised netlist has no parameters to override
  snowflake_core dut (
`else
  snowflake_core #(.ONE_ONE(ONE_ONE)) dut (
`endif
      .clk(clk), .reset(reset), .start(start), .syndrome(syndrome),
      .done(done), .all_busy(all_busy),
      .commit_onehot(commit_onehot),
      .obs_cid(obs_cid), .obs_active(obs_active), .obs_whole(obs_whole),
      .obs_defect(obs_defect), .obs_ptr(obs_ptr), .obs_grown(obs_grown),
      .obs_unrooted(obs_unrooted), .obs_busy(obs_busy),
      .obs_growth(obs_growth), .obs_ecorr(obs_ecorr),
      .dbg_stage(dbg_stage), .dbg_step(dbg_step), .dbg_valid(dbg_valid)
  );

  function automatic [7:0] ST_CH(input [2:0] s);
    case (s) 3'd1: ST_CH="D"; 3'd2: ST_CH="G"; 3'd3: ST_CH="M";
             3'd4: ST_CH="g"; 3'd5: ST_CH="m"; default: ST_CH="?"; endcase
  endfunction

  integer fd;
  integer cyc, n, e, s;
  // 激励表必须与 SNOW_NSYN 同宽: 用 [15:0] 再切片会在 NSYN>16 时读出 x
  // (surface d=5 有 20 个探测器, 曾因此让 RTL 的 defect 变成 x)
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
    // 12 轮流式激励, 与 snowflake_sim/ref/gen_golden.py 的 PATTERN 一致
    rounds[0]=16'h0000; rounds[1]=16'h0001; rounds[2]=16'h0002; rounds[3]=16'h0003;
    rounds[4]=16'h0000; rounds[5]=16'h0001; rounds[6]=16'h0000; rounds[7]=16'h0002;
    rounds[8]=16'h0003; rounds[9]=16'h0000; rounds[10]=16'h0001; rounds[11]=16'h0000;

    fd = $fopen("rtl_trace.txt", "w");
    if (fd == 0) begin $display("ERROR: cannot open rtl_trace.txt"); $finish; end

    reset = 1'b1;
`ifdef SNOW_NETLIST
    // gate-level run: the unisim glbl module holds GSR asserted for 100 ns and
    // while GSR is high every flip-flop is forced to its INIT value, so the
    // reset pulse must last longer than that (otherwise the design comes out
    // of GSR uninitialised and never finishes a round).
    repeat (20) @(posedge clk);
`else
    repeat (5) @(posedge clk);
`endif
    reset = 1'b0;
    repeat (2) @(posedge clk);

    for (cyc = 0; cyc < NCYC; cyc = cyc + 1) begin
      syndrome = rounds[cyc];
      @(negedge clk); start = 1'b1;
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
      @(posedge clk);
    end

    $fclose(fd);
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
