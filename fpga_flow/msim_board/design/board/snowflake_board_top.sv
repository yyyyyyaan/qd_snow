`timescale 1ns / 1ps
//=============================================================================
// snowflake_board_top -- the PL half of the bring-up image.
//
//                       +----------------------+
//   pl_reset_in  ----->| snowflake_reset_sync |-- core_rst -->+-------------+
//                       +----------------------+               |  trace      |
//                                                              |  capture    |
//   PS M_AXI_GP0 ----->+----------------------+  cap_en/obs -->|  (BRAM)     |
//   (AXI4-Lite)        | snowflake_host_regs  |                +-------------+
//                      |  syndrome / start /  |                      ^
//                      |  status / trace read |                      |
//                      +----------+-----------+                      |
//                                 |  start/syndrome                  |
//                                 v                                  |
//                      +--------------------------------------+      |
//                      | snowflake_pe_array_lat1              |------+
//                      | (the VERIFIED merged shared lattice) |  obs_* / dbg_*
//                      +--------------------------------------+
//
// ONE clock, ONE reset tree (NEXT 3.6 item 2: "single clock domain, no CDC"):
//   * `clk` is the only clock.  On the board it is the PS FCLK_CLK0 that also
//     clocks M_AXI_GP0, so the AXI path needs no clock converter at all -- which
//     is exactly why the trace is captured in the PL instead of being polled by
//     the host cycle by cycle.
//   * `pl_reset_in` is the only asynchronous input (POR button / PROG button /
//     PS pl_resetn).  It is synchronized inside snowflake_reset_sync.
//   * the core is reset ONLY by the stretched `core_rst`, so the >=1-cycle reset
//     the state bank needs cannot be forgotten or shortened by software.
//   * the AXI register file is reset by the synchronized bus level only, so
//     STATUS stays readable while the core is in reset.
//
// The board-specific wrapper (PS7 block design, pin constraints, LEDs) is NOT
// here on purpose: it needs the vendor's board files (D12/deferred).  This
// module is board-agnostic -- it is what gets measured out-of-context on
// `xc7z020clg484-1` and what the bring-up block design wraps in one more layer.
//=============================================================================
`include "../generated/snowflake_lattice.svh"

module snowflake_board_top #(
    // stretched core reset length in clk cycles (>= 1; see the sweep)
    parameter integer RESET_LEN    = 16,
    // trace records per round (power of two; d3 needs ~7, d5 needs ~68)
    parameter integer TRACE_MAXREC = 128,
    // array generic, kept here so the board top and the TB agree
    parameter integer ONE_ONE      = 0
) (
    input  wire        clk,
    input  wire        pl_reset_in,     // async POR/button, active high

    // ---- AXI4-Lite slave: PS M_AXI_GP0 --- AXI interconnect --- here ----
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
    input  wire        s_axi_rready
);

  localparam integer NCTX_  = SNOW_LAT_NCTX;
  localparam integer NSLOT_ = SNOW_LAT_NSLOT;

  // ---- reset tree ----
  wire core_rst, core_rst_busy, bus_rst;
  wire sw_reset_pulse;

  // ---- host <-> core ----
  wire        start_pulse, cap_en;
  wire [SNOW_NSYN-1:0] syndrome;
  wire        done_i, all_busy_i, dbg_valid_i;
  wire [2:0]  dbg_stage_i;
  wire [7:0]  dbg_step_i;
  wire [SNOW_NCOMMIT-1:0] commit_onehot_i;
  wire [31:0] lat_live_i, lat_push_i, lat_flip_i;
  wire [7:0]  round_idx_i;
  wire [15:0] cyc_round_i;

  // ---- observation bus ----
  wire [SNOW_NN*SNOW_CID_W-1:0] obs_cid;
  wire [SNOW_NN-1:0] obs_active, obs_whole, obs_defect, obs_grown,
                     obs_unrooted, obs_busy;
  wire [SNOW_NN*SNOW_PTR_W-1:0] obs_ptr;
  wire [SNOW_NE*2-1:0] obs_growth;
  wire [SNOW_NE-1:0]   obs_ecorr;

  // ---- trace capture <-> host ----
  wire        trace_clear, trace_rec_load, rec_ovf;
  wire [31:0] trace_rec, trace_wix, rword;
  wire [15:0] rec_count;
  wire [31:0] rec_words, rec_cap, rec_hdrw, rec_ns, rec_es, rec_rbits;

  snowflake_reset_sync #(.LEN(RESET_LEN)) u_reset (
      .clk      (clk),
      .arst_in  (pl_reset_in),
      .sw_reset (sw_reset_pulse),
      .reset    (core_rst),
      .busy     (core_rst_busy),
      .bus_rst  (bus_rst)
  );

  snowflake_host_regs #(.NSLOT(NSLOT_), .NCTX(NCTX_)) u_host (
      .clk(clk), .rst_host(bus_rst), .rst_core(core_rst),
      .s_axi_awaddr(s_axi_awaddr), .s_axi_awvalid(s_axi_awvalid),
      .s_axi_awready(s_axi_awready),
      .s_axi_wdata(s_axi_wdata), .s_axi_wstrb(s_axi_wstrb),
      .s_axi_wvalid(s_axi_wvalid), .s_axi_wready(s_axi_wready),
      .s_axi_bresp(s_axi_bresp), .s_axi_bvalid(s_axi_bvalid),
      .s_axi_bready(s_axi_bready),
      .s_axi_araddr(s_axi_araddr), .s_axi_arvalid(s_axi_arvalid),
      .s_axi_arready(s_axi_arready),
      .s_axi_rdata(s_axi_rdata), .s_axi_rresp(s_axi_rresp),
      .s_axi_rvalid(s_axi_rvalid), .s_axi_rready(s_axi_rready),
      .start_pulse(start_pulse), .sw_reset_pulse(sw_reset_pulse),
      .syndrome(syndrome), .cap_en(cap_en),
      .done_i(done_i), .all_busy_i(all_busy_i),
      .dbg_stage_i(dbg_stage_i), .dbg_step_i(dbg_step_i),
      .commit_onehot_i(commit_onehot_i),
      .lat_live_i(lat_live_i), .lat_push_i(lat_push_i), .lat_flip_i(lat_flip_i),
      .round_idx_o(round_idx_i), .cyc_round_o(cyc_round_i),
      .trace_clear(trace_clear), .trace_rec_load(trace_rec_load),
      .trace_rec(trace_rec), .trace_wix(trace_wix), .rword_i(rword),
      .rec_count_i(rec_count), .rec_ovf_i(rec_ovf),
      .rec_words_i(rec_words), .rec_cap_i(rec_cap), .rec_hdrw_i(rec_hdrw),
      .rec_ns_i(rec_ns), .rec_es_i(rec_es), .rec_rbits_i(rec_rbits)
  );

  snowflake_trace_capture #(.MAXREC(TRACE_MAXREC)) u_trace (
      .clk(clk), .reset(core_rst),
      .en(cap_en), .valid(dbg_valid_i), .round_idx(round_idx_i),
      .cyc_round(cyc_round_i), .stage(dbg_stage_i), .step(dbg_step_i),
      .commit_onehot(commit_onehot_i),
      .obs_cid(obs_cid), .obs_active(obs_active), .obs_whole(obs_whole),
      .obs_defect(obs_defect), .obs_grown(obs_grown),
      .obs_unrooted(obs_unrooted), .obs_busy(obs_busy), .obs_ptr(obs_ptr),
      .obs_growth(obs_growth), .obs_ecorr(obs_ecorr),
      .clear(trace_clear), .rload(trace_rec_load),
      .raddr(trace_rec), .wix(trace_wix), .rword(rword),
      .count(rec_count), .overflow(rec_ovf),
      .o_words(rec_words), .o_cap(rec_cap), .o_hdrw(rec_hdrw),
      .o_ns(rec_ns), .o_es(rec_es), .o_rbits(rec_rbits)
  );

  snowflake_pe_array_lat1 #(.ONE_ONE(ONE_ONE)) u_array (
      .clk(clk), .reset(core_rst), .start(start_pulse), .syndrome(syndrome),
      .done(done_i), .all_busy(all_busy_i), .commit_onehot(commit_onehot_i),
      .obs_cid(obs_cid), .obs_active(obs_active), .obs_whole(obs_whole),
      .obs_defect(obs_defect), .obs_ptr(obs_ptr), .obs_grown(obs_grown),
      .obs_unrooted(obs_unrooted), .obs_busy(obs_busy),
      .obs_growth(obs_growth), .obs_ecorr(obs_ecorr),
      .dbg_stage(dbg_stage_i), .dbg_step(dbg_step_i), .dbg_valid(dbg_valid_i),
      .lat_live_cnt(lat_live_i), .lat_push_cnt(lat_push_i),
      .lat_flip_cnt(lat_flip_i)
  );

  // core_rst_busy is exported through STATUS[4] inside the register file; keep
  // the net referenced so an OOC synthesis run does not report it as dangling.
  wire unused_core_rst_busy = core_rst_busy;

endmodule
