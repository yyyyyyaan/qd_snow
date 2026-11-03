`timescale 1ns / 1ps
//======================================================================
// Byte-stream (Helios protocol) testbench for snowflake_wrapper.
//   - 发 0x01 复位/初始化
//   - 每轮: 发 0x02 + 1 字节综合征, 等 core 完成, 收 3 字节输出
//   - 打印收到的字节, 与黄金轨迹的提交事件对照
//======================================================================
module tb_snowflake_wrapper;

  `include "../../design/generated/snowflake_graph.svh"

  localparam integer NCYC = 12;
  localparam [7:0] MSG_START = 8'h01;
  localparam [7:0] MSG_MEAS  = 8'h02;

  reg clk = 0;
  always #5 clk = ~clk;

  reg reset = 1;
  reg [7:0] in_data = 0;
  reg in_valid = 0;
  wire in_ready;
  wire [7:0] out_data;
  wire out_valid;
  reg out_ready = 1;

  snowflake_wrapper dut (
      .clk(clk), .reset(reset),
      .input_data(in_data), .input_valid(in_valid), .input_ready(in_ready),
      .output_data(out_data), .output_valid(out_valid), .output_ready(out_ready),
      .busy()
  );

  integer cyc, nb;
  reg [7:0] rounds [0:NCYC-1];
  reg [7:0] obuf [0:15];

  task automatic send_byte(input [7:0] b);
    begin
      @(negedge clk); in_data = b; in_valid = 1'b1;
      @(posedge clk);
      while (in_ready !== 1'b1) @(posedge clk);
      @(negedge clk); in_valid = 1'b0;
    end
  endtask

  initial begin
    rounds[0]=8'h00; rounds[1]=8'h01; rounds[2]=8'h02; rounds[3]=8'h03;
    rounds[4]=8'h00; rounds[5]=8'h01; rounds[6]=8'h00; rounds[7]=8'h02;
    rounds[8]=8'h03; rounds[9]=8'h00; rounds[10]=8'h01; rounds[11]=8'h00;

    reset = 1'b1;
    repeat (5) @(posedge clk);
    reset = 1'b0;
    repeat (3) @(posedge clk);

    $display("=== Snowflake byte-stream interface (Helios protocol) ===");
    send_byte(MSG_START);
    $display("[%0t] sent 0x01 (start)", $time);

    for (cyc = 0; cyc < NCYC; cyc = cyc + 1) begin
      send_byte(MSG_MEAS);
      send_byte(rounds[cyc] & {SNOW_NSYN{1'b1}});
      // 收集本轮 3 个输出字节
      nb = 0;
      while (nb < 3) begin
        @(negedge clk);
        if (out_valid && out_ready) begin
          obuf[nb] = out_data;
          nb = nb + 1;
        end
      end
      $display("[%0t] cycle %0d  syndrome=0x%02h  ->  bytes: idx=%0d commit=0x%02h 0x%02h",
               $time, cyc, rounds[cyc] & {SNOW_NSYN{1'b1}},
               obuf[0], obuf[2], obuf[1]);
    end

    $display("=== DONE ===");
    $finish;
  end

  initial begin
    #2000000; $display("[TIMEOUT]"); $finish;
  end

endmodule
