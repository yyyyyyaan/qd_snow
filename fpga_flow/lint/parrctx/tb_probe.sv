`timescale 1ns / 1ps
// Minimal probe: does snowflake_pe_ctx come out of reset with a valid state?
`include "../../../Helios_scalable_QEC-main/Helios_scalable_QEC-main/design/generated/snowflake_graph.svh"

module tb_probe;
  reg clk = 0;
  always #5 clk = ~clk;
  reg reset = 1;
  reg [2:0] stage = 0;
  reg [0:0] ctx = 0;                 // NCTX = 2 -> CTXW = 1

  wire [SNOW_CID_W-1:0] o_cid;
  wire o_active, o_whole, o_defect, o_grown, o_unrooted, o_busy, o_busy_c, o_pulse;
  wire [SNOW_PTR_W-1:0] o_ptr;
  wire [SNOW_NDIR-1:0]  o_push;

  snowflake_pe_ctx #(
    .ID(0), .HAS_ABOVE(0), .IS_BND(0), .IS_TOP(0), .IS_BOT(1), .SYN_IDX(-1), .NCTX(2)
  ) dut (
    .clk(clk), .reset(reset), .stage(stage), .ctx(ctx), .syn_bit(1'b0),
    .ab_cid({SNOW_CID_W{1'b0}}), .ab_active(1'b0), .ab_whole(1'b1),
    .ab_defect(1'b0), .ab_ptr(SNOW_PTR_C),
    .e_grown({SNOW_NDIR{1'b0}}), .nb_valid({SNOW_NDIR{1'b0}}),
    .nb_cid({(SNOW_NDIR*SNOW_CID_W){1'b0}}), .nb_active({SNOW_NDIR{1'b0}}),
    .nb_grown({SNOW_NDIR{1'b0}}), .nb_push({SNOW_NDIR{1'b0}}),
    .o_cid(o_cid), .o_active(o_active), .o_whole(o_whole), .o_defect(o_defect),
    .o_ptr(o_ptr), .o_grown(o_grown), .o_unrooted(o_unrooted), .o_busy(o_busy),
    .o_busy_c(o_busy_c), .o_pulse(o_pulse), .o_push(o_push)
  );

  integer k;
  initial begin
    repeat (4) @(posedge clk);
    reset = 0;
    @(posedge clk);
    for (k = 0; k < 2; k = k + 1) begin
      ctx = k[0:0];
      #1;
      $display("PROBE k=%0d ctx=%b raw cid0=%b cid1=%b dutctx=%b",
               k, ctx, dut.cid[0], dut.cid[1], dut.ctx);
    end
    stage = 3'd1;                     // DROP
    ctx = 0;
    @(posedge clk);
    #1;
    $display("PROBE after DROP: cid=%0d whole=%0d", o_cid, o_whole);
    $finish;
  end
endmodule
