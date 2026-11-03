`timescale 1ns / 1ps
//======================================================================
// Snowflake byte-stream wrapper -- Helios-compatible external interface.
//
// This module is where Helios code is actually reused:
//   * parameters/parameters.sv      : Helios 的消息常量 (START_DECODING_MSG /
//                                     MEASUREMENT_DATA_HEADER) 与 STAGE_WIDTH 等
//   * design/generics/fifo_fwft.v   : fifo_wrapper (输出缓冲)
//   * design/channels/serdes.sv     : serializer (宽字 -> 8bit 串行输出)
//
// 协议（与 Helios 单 FPGA 核一致）:
//   收到 0x01  -> 复位内部状态, 准备接收测量数据
//   收到 0x02  -> 开始一轮: 随后 (SNOW_NSYN+7)/8 个字节为新一轮综合征
//                 收到后立即执行一个 Snowflake 解码周期 (DROP + 2:1 生长/合并)
//   每轮结束输出 3 字节: [cycle_index][commit_low][commit_high]
//                 commit 为本周期的提交区纠错位 (哪条提交边被翻转)
//======================================================================
module snowflake_wrapper (
    input  wire       clk,
    input  wire       reset,
    input  wire [7:0] input_data,
    input  wire       input_valid,
    output wire       input_ready,
    output wire [7:0] output_data,
    output wire       output_valid,
    input  wire       output_ready,
    output wire       busy
);

  `include "../../parameters/parameters.sv"

  localparam [7:0] MSG_START = START_DECODING_MSG;
  localparam [7:0] MSG_MEAS  = MEASUREMENT_DATA_HEADER;
  localparam integer OBYTES   = 3;                          // 每轮输出字节数
  localparam integer OWORD_W  = 8 * OBYTES;                 // 24 bit 输出字

  reg  [1:0]          state;      // 0=IDLE 1=COLLECT 2=DECODE 3=EMIT
  reg  [SNOW_NSYN-1:0] syn;
  reg                 syn_taken;
  reg  [7:0]          cyc_idx;
  reg  [SNOW_NCOMMIT-1:0] commit_r;
  reg  [OWORD_W-1:0]  out_word;

  wire                core_done;
  wire                core_busy;
  wire [SNOW_NCOMMIT-1:0] core_commit;

  snowflake_core u_core (
      .clk(clk), .reset(reset),
      .start(state == 2'd2 && !syn_taken),      // 收到综合征字节后启动一个解码周期
      .syndrome(syn),
      .done(core_done), .all_busy(core_busy),
      .dbg_stage(), .dbg_step(), .dbg_valid(),
      .commit_onehot(core_commit), .dbg_commit_corr(),
      .obs_cid(), .obs_active(), .obs_whole(), .obs_defect(), .obs_ptr(),
      .obs_grown(), .obs_unrooted(), .obs_busy(), .obs_growth(), .obs_ecorr()
  );

  assign busy = (state != 2'd0);

  // ---------------- 输出通路信号（Helios 的 fifo_wrapper + serializer）----------------
  wire [OWORD_W-1:0] fifo_out_data;
  wire               fifo_out_valid;
  wire               fifo_out_ready;
  wire               fifo_in_ready;
  wire               out_valid_r;
  // 每轮一个字: MSB 起 = [cycle_index][padding][commit bits]
  wire [OWORD_W-1:0] emit_word = { cyc_idx,
                                   {(OWORD_W-8-SNOW_NCOMMIT){1'b0}},
                                   commit_r };

  // ---------------- 输入字节解析 ----------------
  assign input_ready = (state == 2'd0) || (state == 2'd1);

  always @(posedge clk) begin
    if (reset) begin
      state     <= 2'd0;
      syn       <= {SNOW_NSYN{1'b0}};
      syn_taken <= 1'b0;
      cyc_idx   <= 8'd0;
    end else begin
      case (state)
        2'd0: begin                                     // IDLE: 等 0x01 / 0x02
          syn_taken <= 1'b0;
          if (input_valid && input_ready) begin
            if (input_data == MSG_START) begin
              cyc_idx <= 8'd0;
            end else if (input_data == MSG_MEAS) begin
              state <= 2'd1;                            // 开始收集本轮综合征
            end
          end
        end
        2'd1: begin                                     // COLLECT: 1 字节综合征
          if (input_valid && input_ready) begin
            syn       <= input_data[SNOW_NSYN-1:0];
            syn_taken <= 1'b0;
            commit_r  <= {SNOW_NCOMMIT{1'b0}};          // 新一轮: 清空提交累加
            state     <= 2'd2;                          // 启动解码周期
          end
        end
        2'd2: begin                                     // DECODE: 等 core 完成
          syn_taken <= 1'b1;                            // start 只脉冲一次
          if (core_commit != {SNOW_NCOMMIT{1'b0}})      // DROP 那一拍输出提交位 -> 累加
            commit_r <= commit_r | core_commit;
          if (core_done) begin
            out_word <= {8'd0, 8'd0, cyc_idx};          // 低字节 = cycle index
            state    <= 2'd3;
            cyc_idx  <= cyc_idx + 8'd1;
          end
        end
        2'd3: begin                                     // EMIT: 交给 fifo+serializer
          if (out_valid_r && fifo_in_ready) state <= 2'd0;
        end
        default: state <= 2'd0;
      endcase
    end
  end

  // ---------------- 输出: Helios 的 fifo_wrapper + serializer ----------------
  fifo_wrapper #(.WIDTH(OWORD_W), .DEPTH(32)) u_ofifo (
      .clk(clk), .reset(reset),
      .input_data(emit_word),
      .input_valid(state == 2'd3),
      .input_ready(fifo_in_ready),
      .output_data(fifo_out_data),
      .output_valid(fifo_out_valid),
      .output_ready(fifo_out_ready)
  );

  serializer #(.HUB_FIFO_WIDTH(OWORD_W), .HUB_FIFO_PHYSICAL_WIDTH(8)) u_oser (
      .clk(clk), .reset(reset),
      .wide_fifo_data(fifo_out_data),
      .wide_fifo_valid(fifo_out_valid),
      .wide_fifo_ready(fifo_out_ready),
      .narrow_fifo_valid(output_valid),
      .narrow_fifo_ready(output_ready),
      .narrow_fifo_data(output_data)
  );

  assign out_valid_r = fifo_out_valid;

endmodule
