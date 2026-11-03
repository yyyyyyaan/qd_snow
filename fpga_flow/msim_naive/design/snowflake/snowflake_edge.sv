`timescale 1ns / 1ps
//=============================================================================
// snowflake_edge.sv -- one decoding-graph EDGE of the PE-array Snowflake
// decoder.  It owns the 2-bit growth value and the correction flag of the
// edge, exactly like the flat core's per-edge state, and it is wired to both
// endpoint PEs (the PEs only supply their growth pulse and their push
// request).
//
// Semantics (identical to snowflake_core.sv):
//   DROP      : the edge takes over the state of the edge above it
//   GROW*     : growth += (pulse_u + pulse_v), saturating at 2
//   MERGING*  : ecorr ^= (flip_u ^ flip_v)   -- two simultaneous flips cancel
//=============================================================================
`include "../generated/snowflake_graph.svh"

module snowflake_edge (
    input  wire       clk,
    input  wire       reset,
    input  wire [2:0] stage,
    input  wire       u_pulse,
    input  wire       v_pulse,
    input  wire       flip_u,
    input  wire       flip_v,
    input  wire [1:0] above_growth,
    input  wire       above_ecorr,
    output reg  [1:0] growth,
    output reg        ecorr
`ifdef SNOW_SLICED
    // next-growth view for the seam D-shadow (snowflake-n prototype, report
    // 6.16): a posedge register sampling this always equals `growth`.
    , output wire [1:0] o_n_growth
`endif
);

  localparam [2:0] ST_DROP = 3'd1, ST_GW = 3'd2, ST_MW = 3'd3, ST_GH = 3'd4, ST_MH = 3'd5;

  wire        growing = (stage == ST_GW) || (stage == ST_GH);
  wire        merging = (stage == ST_MW) || (stage == ST_MH);
  wire [1:0]  inc     = {1'b0, u_pulse} + {1'b0, v_pulse};
  wire [1:0]  grown_n = (growth + inc > 2'd2) ? 2'd2 : (growth + inc);
`ifdef SNOW_SLICED
  // mirrors the `growth` branch of the state update exactly
  wire [1:0] n_growth_w = (reset)                ? 2'd0    :
                          (stage == ST_DROP)     ? above_growth :
                          (growing && (growth < 2'd2)) ? grown_n : growth;
  assign o_n_growth = n_growth_w;
`endif

  always @(posedge clk) begin
    if (reset) begin
      growth <= 2'd0;
      ecorr  <= 1'b0;
    end else if (stage == ST_DROP) begin
      growth <= above_growth;
      ecorr  <= above_ecorr;
    end else if (growing) begin
      if (growth < 2'd2) growth <= grown_n;
    end else if (merging) begin
      if (flip_u ^ flip_v) ecorr <= ecorr ^ 1'b1;
    end
  end

endmodule
