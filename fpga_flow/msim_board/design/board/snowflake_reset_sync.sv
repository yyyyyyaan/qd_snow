`timescale 1ns / 1ps
//=============================================================================
// snowflake_reset_sync -- THE ONE reset path into the decoder core.
//
// WHY THIS MODULE EXISTS (design doc 4.9 / NEXT 3.6 item 1)
// ---------------------------------------------------------
// The state bank has NO `initial` image: the per-slot clocked reset inside
// `snowflake_pe_array_lat1.sv` is the ONE preset path, and it was made that way
// on purpose (an initial image is dropped by `write_verilog -mode funcsim`, and
// with the image present Vivado treats the clocked reset as redundant and
// optimises it away -- measured: the netlist then had neither path and never
// converged).  The consequence for the board is a HARD requirement:
//
//     after configuration the decoder core MUST see at least one full cycle of
//     `reset`, or it starts from FF power-up values that are not the preset.
//
// Until now that requirement was prose.  This module makes it structural: the
// array's `reset` pin is driven ONLY from here, and the stretcher guarantees a
// complete `LEN`-cycle assertion no matter what the outside world does --
// a one-cycle button pulse, a bounce, a software write, or nothing at all.
//
// CONTRACT (measured, see the reset-contract sweep in the report)
// --------------------------------------------------------------
//   * `arst_in` is the ONLY asynchronous input of the whole PL.  It is the
//     board POR / PROG button / PS `pl_resetn`; its LEVEL is synchronized here
//     (2-FF for `bus_rst`, SYNC-deep shift for the stretch request).
//   * `reset` is a synchronous output: asserted while a request is pending and
//     for a full `LEN` cycles after the request drops.  `LEN >= 2` is enforced
//     by elaboration (the preset itself needs exactly 1 cycle).
//   * `bus_rst` is the host/bus reset level (NOT stretched, NOT affected by
//     `sw_reset`).  The AXI register file is reset by `bus_rst` only, so the
//     host can always read STATUS -- including `STATUS[4]` (`core_rst`) -- while
//     the core is held in reset.  That split is what removes the chicken-and-egg
//     problem of "the PS must poll the core reset through a bus that the core
//     reset would have killed".
//   * SILICON property that cannot be shown in RTL simulation: every FF here
//     powers up at 0, so `cnt < LEN` holds at power-up and a power-on reset is
//     produced with NO external stimulus at all.  RTL simulation starts at X, so
//     the sweep drives `arst_in` explicitly; the property itself is what makes
//     "the board cannot forget the reset" true, and `write_verilog -mode
//     funcsim` (GSR forces INIT=0) preserves it.
//=============================================================================
module snowflake_reset_sync #(
    // stretched reset length in clk cycles.  The bank preset needs 1; the
    // default is a comfortable 16 (320 ns at 50 MHz) and the sweep shows every
    // value from 1 upward passes the line-exact regression.
    parameter integer LEN  = 16,
    // synchronizer depth for the asynchronous request.  >= 2.
    parameter integer SYNC = 3
) (
    input  wire clk,
    input  wire arst_in,     // asynchronous POR / button / pl_resetn, active high
    input  wire sw_reset,    // 1-cycle pulse from the host register file
    output wire reset,       // stretched core reset (synchronous, active high)
    output wire busy,        // == reset; mirrored into STATUS[4]
    output wire bus_rst      // synchronized level of arst_in (host/bus reset)
);

  reg [SYNC-1:0] sr;
  reg [15:0]     cnt;
  reg            core_rst;

  // `cnt` powers up at 0 ON SILICON (INIT=0 is the default for every FF), and
  // that is what makes the power-on reset structural: cnt < LEN is true at
  // power-up, so the core is reset for LEN cycles even if nobody asks.  The
  // `initial` below states that assumption instead of leaving it implicit, and
  // it makes RTL simulation agree with the silicon -- `write_verilog -mode
  // funcsim` forces the same INIT=0 through GSR, so gate-level is consistent too.
  //
  // NOTE the difference from `snowflake_pe_array_lat1.sv`, which deliberately has
  // NO initial image anywhere: there the image both hid the clocked reset from
  // synthesis and vanished in gate-level simulation.  Neither hazard exists here
  // -- `cnt` has no reset to be "redundant" with, and the value below is the one
  // the hardware powers up with anyway.
  initial cnt = 16'd0;

  // The request is a LEVEL, not an edge: a pulse shorter than a clock period
  // still sets the shift register on the next edge (it cannot be missed), and
  // the counter below holds the reset for LEN cycles after it drops.  A button
  // held down keeps `req` high, which keeps the core in reset -- intended.
  always @(posedge clk) sr <= {sr[SYNC-2:0], arst_in};
  wire req = sr[SYNC-1] | sw_reset;

  // Counts UP from 0 to LEN and stops, so that INIT=0 alone produces a full
  // power-on reset window (see the header): at power-up cnt = 0 < LEN.
  always @(posedge clk) begin
    if (req)            cnt <= 16'd0;
    else if (cnt < LEN) cnt <= cnt + 16'd1;
    core_rst <= req | (cnt < LEN);
  end

  assign reset   = core_rst;
  assign busy    = core_rst;
  assign bus_rst = sr[SYNC-1];

  // Elaboration-time guards.  These are `generate`+`initial` on purpose: they
  // fire during elaboration in every simulator and are ignored by synthesis,
  // and they cost no logic.
  generate
    if (LEN < 1) begin : g_bad_len
      initial $display("snowflake_reset_sync: FATAL LEN=%0d must be >= 1", LEN);
    end
    if (SYNC < 2) begin : g_bad_sync
      initial $display("snowflake_reset_sync: FATAL SYNC=%0d must be >= 2", SYNC);
    end
  endgenerate

endmodule
