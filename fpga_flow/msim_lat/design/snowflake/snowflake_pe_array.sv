`timescale 1ns / 1ps
//=============================================================================
// snowflake_pe_array.sv -- the PE-array form of the Snowflake decoder: one
// processing element per decoding-graph node (snowflake_pe.sv) and one module
// per edge (snowflake_edge.sv), wired together from the tables that
// build_scripts/generate_snowflake.py exports from the localuf reference.
//
// Differences from the flat core (snowflake_core.sv), both structural:
//   * state lives inside the PEs / edges, and every cross-node interaction is
//     an explicit wire (cluster id, grown, active, push request, edge grown);
//   * the DROP step pulls state from the node above instead of writing into
//     the node below.
// The stage machine and all per-stage semantics are identical, so this design
// reproduces the flat core's trace line by line -- that is what the regression
// checks.
//
// Why it matters: this is the shape in which the state can move into per-PE RAM
// (context = an address bit) and in which placement can be constrained
// locally, which is where Helios gets its area/latency numbers, and it is the
// only form that scales to d=21 without a hundred-thousand-line flat netlist.
//
// NOTE on the packed constant tables (SNOW_*_VEC): Vivado refuses to
// constant-fold the generator's lookup *functions* inside a generate body
// ("unable to resolve 'SNOW_NODE_ABOVE'"), so the array reads the packed
// vectors with constant part-selects instead.  The functions are still used by
// the flat core.
//=============================================================================
`include "../generated/snowflake_graph.svh"
`ifdef SNOW_SLICED
// Seam constant tables for the snowflake-n prototype (n=2..k slices along the
// time axis).  Built by fpga_flow/make_sliced_sim.py from the same localuf
// tables as the graph, so the two files always agree.
`include "../generated/snowflake_seam.svh"
`endif

module snowflake_pe_array #(
`ifdef SNOW_ONE_ONE
    parameter integer ONE_ONE = 1
`else
    parameter integer ONE_ONE = 0
`endif
`ifdef SNOW_NO_OBS
    , parameter integer DEBUG_OBS = 0
`else
    , parameter integer DEBUG_OBS = 1
`endif
) (
    input  wire        clk,
    input  wire        reset,
    input  wire        start,
    input  wire [SNOW_NSYN-1:0] syndrome,
    output reg         done,
    output wire        all_busy,
    output reg  [SNOW_NCOMMIT-1:0] commit_onehot,
    output wire [SNOW_NN*SNOW_CID_W-1:0] obs_cid,
    output wire [SNOW_NN-1:0]    obs_active,
    output wire [SNOW_NN-1:0]    obs_whole,
    output wire [SNOW_NN-1:0]    obs_defect,
    output wire [SNOW_NN*SNOW_PTR_W-1:0] obs_ptr,
    output wire [SNOW_NN-1:0]    obs_grown,
    output wire [SNOW_NN-1:0]    obs_unrooted,
    output wire [SNOW_NN-1:0]    obs_busy,
    output wire [SNOW_NE*2-1:0]  obs_growth,
    output wire [SNOW_NE-1:0]    obs_ecorr,
    output reg  [2:0]  dbg_stage,
    output reg  [7:0]  dbg_step,
    output reg         dbg_valid
);

  localparam integer NN   = SNOW_NN;
  localparam integer NE   = SNOW_NE;
  localparam integer CW   = SNOW_CID_W;
  localparam integer NDIR = SNOW_NDIR;
  localparam integer NW   = SNOW_NW;
  localparam integer EW   = SNOW_EW;
  localparam integer RVW  = (NDIR > 1) ? $clog2(NDIR) : 1;
  localparam integer CBW  = (SNOW_NCOMMIT > 1) ? $clog2(SNOW_NCOMMIT) : 1;
  localparam integer SYN_IDX_W = SNOW_SYN_IDX_W;
  localparam [SYN_IDX_W-1:0] SYN_NONE = {SYN_IDX_W{1'b1}};

  localparam [2:0] ST_IDLE = 3'd0, ST_DROP = 3'd1, ST_GW = 3'd2,
                   ST_MW   = 3'd3, ST_GH   = 3'd4, ST_MH = 3'd5;

  reg [2:0] stage;
  reg [7:0] step_cnt;

`ifdef SNOW_MINTS
  // ---- min-search time multiplexing (report 6.17) ------------------------
  // Every merging step takes MTS_G cycles: sub-cycles 0..G-2 scan one
  // direction group each into per-PE partial registers (PEs and edges see
  // stage IDLE then, so every committed state holds); on sub-cycle G-1 the
  // merging branch scans the last group and commits.  The controller only
  // evaluates busy / advances / dumps at mts_last, so the trace keeps exactly
  // one T-line per logical merging step -- the golden trace's own cadence.
  // MTS_G must match snowflake_pe.sv's.
  localparam integer MTS_G = (SNOW_NDIR % 3 == 0 && SNOW_NDIR >= 6) ? 3 : 2;
  localparam integer MTS_W = (MTS_G > 1) ? $clog2(MTS_G) : 1;
  reg  [MTS_W-1:0] mts_sub;
  wire mts_merge = (stage == ST_MW) || (stage == ST_MH);
  wire mts_last  = mts_merge && (mts_sub == MTS_G-1);
  wire mts_scan  = mts_merge && !mts_last;
  wire mts_mw    = (stage == ST_MW);
  wire [2:0] stage_eff = (mts_merge && !mts_last) ? ST_IDLE : stage;

  always @(posedge clk) begin
    if (reset)          mts_sub <= {MTS_W{1'b0}};
    else if (mts_merge) begin
      if (mts_last) mts_sub <= {MTS_W{1'b0}};
      else          mts_sub <= mts_sub + 1'b1;
    end
  end
`endif

  // ---------------- wires: PE state and edge state ----------------
  wire [CW-1:0]         pe_cid      [0:NN-1];
  wire                  pe_active   [0:NN-1];
  wire                  pe_whole    [0:NN-1];
  wire                  pe_defect   [0:NN-1];
  wire [SNOW_PTR_W-1:0] pe_ptr      [0:NN-1];
  wire                  pe_grown    [0:NN-1];
  wire                  pe_unrooted [0:NN-1];
  wire                  pe_busy     [0:NN-1];
  wire                  pe_busy_c   [0:NN-1];
  wire                  pe_pulse    [0:NN-1];
  wire [NDIR-1:0]       pe_push     [0:NN-1];
  wire [1:0]            ed_growth   [0:NE-1];
  wire                  ed_ecorr    [0:NE-1];

  // per-PE inputs (assembled from the neighbour wires below)
  wire [NDIR-1:0]          pe_e_grown  [0:NN-1];
  wire [NDIR-1:0]          pe_nb_valid [0:NN-1];
  wire [NDIR*CW-1:0]       pe_nb_cid   [0:NN-1];
  wire [NDIR-1:0]          pe_nb_active[0:NN-1];
  wire [NDIR-1:0]          pe_nb_grown [0:NN-1];
  wire [NDIR-1:0]          pe_nb_push  [0:NN-1];
  wire [CW-1:0]            ab_cid      [0:NN-1];
  wire                     ab_active   [0:NN-1];
  wire                     ab_whole    [0:NN-1];
  wire                     ab_defect   [0:NN-1];
  wire [SNOW_PTR_W-1:0]    ab_ptr      [0:NN-1];
  wire                     pe_syn_bit  [0:NN-1];

  wire [NN-1:0] busy_vec, busy_c_vec;
  wire          any_c_busy;
  wire [SNOW_NCOMMIT-1:0] commit_bits;

`ifdef SNOW_SERIAL
  // commit_bits is consumed at phase_last, by which point the slices whose
  // phase came earlier have already committed this step -- so it would mix
  // pre-step and post-step ecorr.  Latch it on the step's FIRST phase, when
  // every edge still holds Q_k, and report that.
  reg [SNOW_NCOMMIT-1:0] commit_hold;
`endif

  assign all_busy    = |busy_vec;
  assign any_c_busy  = |busy_c_vec;

`ifdef SNOW_SLICED
  // =====================================================================
  // Seam registers for the snowflake-n prototype (report 6.16; design doc
  // 4.7 with two corrections found while implementing -- see the report).
  // Every cut point below selects between its original source and a seam
  // register with a CONSTANT (XS) ternary, so non-crossing ports elaborate
  // bit-identically to the unsliced array.
  //
  // Cycle-exactness needs TWO timing classes of seam register:
  //  * D-shadow (posedge, fed from the source's next-state output, e.g.
  //    o_n_cid): the shadow is written with the same value the source
  //    register receives, so it equals the source register for the WHOLE
  //    cycle.  Mandatory for every crossing that feeds a boundary node's
  //    12-direction minimum search (B.cid/active/grown, C) because that
  //    search's result (push) is itself sampled by a negedge seam below and
  //    must not depend on values that only settle at mid-cycle.
  //  * negedge snapshot: holds the source's current-cycle value from
  //    mid-cycle on.  Sufficient for consumers that only feed
  //    posedge-sampled logic (A: DROP pulls state from above; E: DROP
  //    edge-above), and for the sources' own combinational outputs
  //    (B.push, D.pulse, F.flip), which are stable from cycle start because
  //    every input of a PE's combinational is a register or a D-shadow.
  // A plain "cut + posedge register" is one cycle stale and fails the
  // line-exact regression (measured, report 6.16); see also the note in
  // snowflake_n_design.md 4.7.
  // =====================================================================
`ifndef SNOW_SERIAL
  reg [CW-1:0]         seam_ab_cid    [0:SNOW_SEAM_AB_N-1];
  reg                  seam_ab_active [0:SNOW_SEAM_AB_N-1];
  reg                  seam_ab_whole  [0:SNOW_SEAM_AB_N-1];
  reg                  seam_ab_defect [0:SNOW_SEAM_AB_N-1];
  reg [SNOW_PTR_W-1:0] seam_ab_ptr    [0:SNOW_SEAM_AB_N-1];
  reg [CW-1:0]         seam_nb_cid    [0:SNOW_SEAM_NB_N-1];
  reg                  seam_nb_active [0:SNOW_SEAM_NB_N-1];
  reg                  seam_nb_grown  [0:SNOW_SEAM_NB_N-1];
  reg                  seam_nb_push   [0:SNOW_SEAM_NB_N-1];
  reg [1:0]            seam_eg        [0:SNOW_SEAM_EG_N-1];
  reg                  seam_ep        [0:SNOW_SEAM_EP_N-1];
  reg                  seam_ef        [0:SNOW_SEAM_EF_N-1];
  reg [2:0]            seam_ea        [0:SNOW_SEAM_EA_N-1];   // {ecorr, growth[1:0]}
`endif

  // next-state views from the PEs / edges (drivers of the D-shadows)
  wire [CW-1:0]  pe_n_cid    [0:NN-1];
  wire           pe_n_active [0:NN-1];
  wire           pe_n_grown  [0:NN-1];
  wire [1:0]     ed_n_growth [0:NE-1];
`ifdef SNOW_SERIAL
  wire           pe_n_whole  [0:NN-1];
  wire           pe_n_defect [0:NN-1];
  wire [SNOW_PTR_W-1:0] pe_n_ptr [0:NN-1];
  wire           ed_n_ecorr  [0:NE-1];
`endif

  // cross-seam activity counters (the testbench reads them hierarchically):
  // live = active cycles consuming seam state; push_xfer/flip_xfer = cycles in
  // which a defect-migration push / an ecorr flip request actually crossed the
  // seam (push_xfer > 0 is the "defect moved across the cut" evidence)
  wire [SNOW_SEAM_NB_N-1:0] seam_push_src;
  wire [SNOW_SEAM_EF_N-1:0] seam_flip_src;
  reg  [31:0] seam_live_cnt, seam_push_cnt, seam_flip_cnt;

  always @(posedge clk) begin
    if (reset) begin
      seam_live_cnt <= 32'd0;
      seam_push_cnt <= 32'd0;
      seam_flip_cnt <= 32'd0;
    end else if (stage != ST_IDLE) begin
      seam_live_cnt <= seam_live_cnt + 32'd1;
      if (|seam_push_src) seam_push_cnt <= seam_push_cnt + 32'd1;
      if (|seam_flip_src) seam_flip_cnt <= seam_flip_cnt + 32'd1;
    end
  end

  genvar k;
`ifndef SNOW_SERIAL
  generate
    // ---- group A: state of the node above, per node (negedge snapshot) ----
    for (k = 0; k < SNOW_SEAM_AB_N; k = k + 1) begin : g_seam_ab
      localparam integer PEER = SNOW_AB_PEER_VEC[k*SNOW_NW +: SNOW_NW];
      always @(negedge clk) begin
        seam_ab_cid[k]    <= pe_cid[PEER];
        seam_ab_active[k] <= pe_active[PEER];
        seam_ab_whole[k]  <= pe_whole[PEER];
        seam_ab_defect[k] <= pe_defect[PEER];
        seam_ab_ptr[k]    <= pe_ptr[PEER];
      end
    end
    // ---- group B: neighbour state (posedge D-shadow) + push (negedge) ----
    for (k = 0; k < SNOW_SEAM_NB_N; k = k + 1) begin : g_seam_nb
      localparam integer PEER = SNOW_NB_PEER_VEC[k*SNOW_NW +: SNOW_NW];
      localparam integer REV  = SNOW_NB_REV_VEC[k*SNOW_SEAM_RVW +: SNOW_SEAM_RVW];
      always @(posedge clk) begin
        seam_nb_cid[k]    <= pe_n_cid[PEER];
        seam_nb_active[k] <= pe_n_active[PEER];
        seam_nb_grown[k]  <= pe_n_grown[PEER];
      end
      always @(negedge clk) seam_nb_push[k] <= pe_push[PEER][REV];
      assign seam_push_src[k] = pe_push[PEER][REV];
    end
    // ---- group C: edge-of-port growth (posedge D-shadow) ----
    for (k = 0; k < SNOW_SEAM_EG_N; k = k + 1) begin : g_seam_eg
      localparam integer EDGE = SNOW_EG_EDGE_VEC[k*SNOW_EW +: SNOW_EW];
      always @(posedge clk) seam_eg[k] <= ed_n_growth[EDGE];
    end
    // ---- group D: edge endpoint pulse (negedge) ----
    for (k = 0; k < SNOW_SEAM_EP_N; k = k + 1) begin : g_seam_ep
      localparam integer PEER = SNOW_EP_PEER_VEC[k*SNOW_NW +: SNOW_NW];
      always @(negedge clk) seam_ep[k] <= pe_pulse[PEER];
    end
    // ---- group F: edge endpoint flip request (negedge) ----
    for (k = 0; k < SNOW_SEAM_EF_N; k = k + 1) begin : g_seam_ef
      localparam integer PEER = SNOW_EF_PEER_VEC[k*SNOW_NW +: SNOW_NW];
      localparam integer FDIR = SNOW_EF_DIR_VEC[k*SNOW_SEAM_RVW +: SNOW_SEAM_RVW];
      always @(negedge clk) seam_ef[k] <= pe_push[PEER][FDIR];
      assign seam_flip_src[k] = pe_push[PEER][FDIR];
    end
    // ---- group E: edge-above state (negedge snapshot) ----
    for (k = 0; k < SNOW_SEAM_EA_N; k = k + 1) begin : g_seam_ea
      localparam integer EDGE = SNOW_EA_EDGE_VEC[k*SNOW_EW +: SNOW_EW];
      always @(negedge clk) seam_ea[k] <= {ed_ecorr[EDGE], ed_growth[EDGE]};
    end
  endgenerate
`else
  // =====================================================================
  // SNOW_SERIAL: design doc 4.2's ping-pong protocol (report 6.18).
  //
  // A global step now takes SNOW_SEAM_NSLICE cycles ("phases"); phase p
  // commits exactly the nodes/edges owned by slice p and every other slice
  // holds.  PEs and edges keep seeing the REAL stage, so an idle slice's
  // combinational outputs stay live -- that is what keeps the push/pulse/flip
  // crossings exact without a second evaluation (design doc 4.8, option A;
  // area sharing has to replace those three with option B).  Only the four
  // STATE groups go through registers, and every one of them is posedge now:
  // no negedge registers and no half-cycle paths.
  //
  //   The owner slice samples the source's NEXT state at the end of its own
  //   phase into buf[par]; a reader during the current step reads buf[~par],
  //   which the owner filled at the end of the PREVIOUS step -- i.e. exactly
  //   the state at the start of this step (Q_k).  One uniform rule covers both
  //   crossing directions, and the buffer being written is never the one being
  //   read during the same step.  Intra-slice reads need no buffer: everything
  //   in a slice commits at the end of its phase, so during the phase all of
  //   its registers still hold Q_k.
  // =====================================================================
  reg [SNOW_SEAM_SLW-1:0] phase;
  reg                     par;
  wire                    phase_last = (phase == SNOW_SEAM_NSLICE-1);
  wire                    par_r      = ~par;    // buffer a reader uses this step

  always @(posedge clk) begin
    if (reset)                 begin phase <= {SNOW_SEAM_SLW{1'b0}}; par <= 1'b0; end
    else if (stage == ST_IDLE)      phase <= {SNOW_SEAM_SLW{1'b0}};
    else if (phase_last)       begin phase <= {SNOW_SEAM_SLW{1'b0}}; par <= ~par; end
    else                            phase <= phase + 1'b1;
  end

  reg [CW-1:0]         ser_ab_cid    [0:1][0:SNOW_SEAM_AB_N-1];
  reg                  ser_ab_active [0:1][0:SNOW_SEAM_AB_N-1];
  reg                  ser_ab_whole  [0:1][0:SNOW_SEAM_AB_N-1];
  reg                  ser_ab_defect [0:1][0:SNOW_SEAM_AB_N-1];
  reg [SNOW_PTR_W-1:0] ser_ab_ptr    [0:1][0:SNOW_SEAM_AB_N-1];
  reg [CW-1:0]         ser_nb_cid    [0:1][0:SNOW_SEAM_NB_N-1];
  reg                  ser_nb_active [0:1][0:SNOW_SEAM_NB_N-1];
  reg                  ser_nb_grown  [0:1][0:SNOW_SEAM_NB_N-1];
  reg [1:0]            ser_eg        [0:1][0:SNOW_SEAM_EG_N-1];
  reg [2:0]            ser_ea        [0:1][0:SNOW_SEAM_EA_N-1];

  // Combinational crossings (push / pulse / flip) need ONE buffer each, not
  // two, and only in one direction.  During a step, a slice's registers hold
  // Q_k until its own phase commits them, so:
  //   * source phase LATER than the consumer's: the source has not committed
  //     yet, its live combinational output already equals F(Q_k) -> wire it
  //     straight through (no register, no second evaluation);
  //   * source phase EARLIER: by the time the consumer runs, the source's
  //     combinational has moved on to F(Q_{k+1}) -> latch F(Q_k) at the end of
  //     the source's own phase (write-before-read within the same step, so a
  //     single buffer is enough).
  // This is the cheap half of design doc 4.8; the expensive half (option B,
  // double evaluation) is only needed once the slices SHARE one lattice,
  // because then the idle context's combinational is not evaluated at all.
  reg                  ser_nb_push   [0:SNOW_SEAM_NB_N-1];
  reg                  ser_ep        [0:SNOW_SEAM_EP_N-1];
  reg                  ser_ef        [0:SNOW_SEAM_EF_N-1];

  // "did this global step change anything", for the merging exit rule: the
  // slice owning the current phase reports its combinational busy_c, every
  // other slice reports the busy flag it registered when it committed earlier
  // in this same step -- so both refer to the same logical step.
  wire [NN-1:0] busy_step_vec;
  wire          any_step_busy = |busy_step_vec;

  generate
    // ---- group A: state of the node above ----
    for (k = 0; k < SNOW_SEAM_AB_N; k = k + 1) begin : g_ser_ab
      localparam integer PEER   = SNOW_AB_PEER_VEC[k*SNOW_NW +: SNOW_NW];
      localparam integer WSLICE = SNOW_SLICE_OF_VEC[PEER*SNOW_SEAM_SLW +: SNOW_SEAM_SLW];
      localparam [CW-1:0] PEER_CID = PEER;      // reset value of cid is the ID
      always @(posedge clk) begin
        if (reset) begin
          ser_ab_cid[0][k]    <= PEER_CID;   ser_ab_cid[1][k]    <= PEER_CID;
          ser_ab_active[0][k] <= 1'b0;       ser_ab_active[1][k] <= 1'b0;
          ser_ab_whole[0][k]  <= 1'b1;       ser_ab_whole[1][k]  <= 1'b1;
          ser_ab_defect[0][k] <= 1'b0;       ser_ab_defect[1][k] <= 1'b0;
          ser_ab_ptr[0][k]    <= SNOW_PTR_C; ser_ab_ptr[1][k]    <= SNOW_PTR_C;
        end else if (phase == WSLICE) begin
          ser_ab_cid[par][k]    <= pe_n_cid[PEER];
          ser_ab_active[par][k] <= pe_n_active[PEER];
          ser_ab_whole[par][k]  <= pe_n_whole[PEER];
          ser_ab_defect[par][k] <= pe_n_defect[PEER];
          ser_ab_ptr[par][k]    <= pe_n_ptr[PEER];
        end
      end
    end
    // ---- group B: neighbour state (push stays a live wire, option A) ----
    for (k = 0; k < SNOW_SEAM_NB_N; k = k + 1) begin : g_ser_nb
      localparam integer PEER   = SNOW_NB_PEER_VEC[k*SNOW_NW +: SNOW_NW];
      localparam integer REV    = SNOW_NB_REV_VEC[k*SNOW_SEAM_RVW +: SNOW_SEAM_RVW];
      localparam integer WSLICE = SNOW_SLICE_OF_VEC[PEER*SNOW_SEAM_SLW +: SNOW_SEAM_SLW];
      localparam [CW-1:0] PEER_CID = PEER;
      assign seam_push_src[k] = pe_push[PEER][REV];   // counter only
      always @(posedge clk) begin
        if (reset) begin
          ser_nb_cid[0][k]    <= PEER_CID; ser_nb_cid[1][k]    <= PEER_CID;
          ser_nb_active[0][k] <= 1'b0;     ser_nb_active[1][k] <= 1'b0;
          ser_nb_grown[0][k]  <= 1'b0;     ser_nb_grown[1][k]  <= 1'b0;
          ser_nb_push[k]      <= 1'b0;
        end else if (phase == WSLICE) begin
          ser_nb_cid[par][k]    <= pe_n_cid[PEER];
          ser_nb_active[par][k] <= pe_n_active[PEER];
          ser_nb_grown[par][k]  <= pe_n_grown[PEER];
          // latched F(Q_k) of this peer's push, for consumers whose own phase
          // comes AFTER WSLICE (see the comment above the buffer declarations)
          ser_nb_push[k]        <= pe_push[PEER][REV];
        end
      end
    end
    // ---- group C: edge-of-port growth ----
    for (k = 0; k < SNOW_SEAM_EG_N; k = k + 1) begin : g_ser_eg
      localparam integer EDGE   = SNOW_EG_EDGE_VEC[k*SNOW_EW +: SNOW_EW];
      localparam integer WSLICE = SNOW_EDGE_OWNER_VEC[EDGE*SNOW_SEAM_SLW +: SNOW_SEAM_SLW];
      always @(posedge clk) begin
        if (reset) begin
          ser_eg[0][k] <= 2'd0; ser_eg[1][k] <= 2'd0;
        end else if (phase == WSLICE) begin
          ser_eg[par][k] <= ed_n_growth[EDGE];
        end
      end
    end
    // ---- group D: edge endpoint pulse (same rule as push) ----
    for (k = 0; k < SNOW_SEAM_EP_N; k = k + 1) begin : g_ser_ep
      localparam integer PEER   = SNOW_EP_PEER_VEC[k*SNOW_NW +: SNOW_NW];
      localparam integer WSLICE = SNOW_SLICE_OF_VEC[PEER*SNOW_SEAM_SLW +: SNOW_SEAM_SLW];
      always @(posedge clk) begin
        if (reset)                ser_ep[k] <= 1'b0;
        else if (phase == WSLICE) ser_ep[k] <= pe_pulse[PEER];
      end
    end
    // ---- group F: edge endpoint flip request (same rule as push) ----
    for (k = 0; k < SNOW_SEAM_EF_N; k = k + 1) begin : g_ser_ef
      localparam integer PEER   = SNOW_EF_PEER_VEC[k*SNOW_NW +: SNOW_NW];
      localparam integer FDIR   = SNOW_EF_DIR_VEC[k*SNOW_SEAM_RVW +: SNOW_SEAM_RVW];
      localparam integer WSLICE = SNOW_SLICE_OF_VEC[PEER*SNOW_SEAM_SLW +: SNOW_SEAM_SLW];
      assign seam_flip_src[k] = pe_push[PEER][FDIR];
      always @(posedge clk) begin
        if (reset)                ser_ef[k] <= 1'b0;
        else if (phase == WSLICE) ser_ef[k] <= pe_push[PEER][FDIR];
      end
    end
    // ---- group E: edge-above state ----
    for (k = 0; k < SNOW_SEAM_EA_N; k = k + 1) begin : g_ser_ea
      localparam integer EDGE   = SNOW_EA_EDGE_VEC[k*SNOW_EW +: SNOW_EW];
      localparam integer WSLICE = SNOW_EDGE_OWNER_VEC[EDGE*SNOW_SEAM_SLW +: SNOW_SEAM_SLW];
      always @(posedge clk) begin
        if (reset) begin
          ser_ea[0][k] <= 3'd0; ser_ea[1][k] <= 3'd0;
        end else if (phase == WSLICE) begin
          ser_ea[par][k] <= {ed_n_ecorr[EDGE], ed_n_growth[EDGE]};
        end
      end
    end
  endgenerate
`endif
`endif

  genvar n, e, d;

  generate

    // ---------------- processing elements ----------------
    for (n = 0; n < NN; n = n + 1) begin : g_pe
      localparam integer ABOVE  = SNOW_ABOVE_VEC[n*NW +: NW];
      localparam integer AB_S   = (ABOVE == {NW{1'b1}}) ? 0 : ABOVE;
      localparam integer HAS_AB = (ABOVE == {NW{1'b1}}) ? 0 : 1;
      localparam integer BND    = SNOW_BND_VEC[n];
      localparam integer TOP    = SNOW_TOP_VEC[n];
      localparam integer BOT    = SNOW_BOT_VEC[n];
      localparam [SYN_IDX_W-1:0] SIDX_RAW = SNOW_SYNIDX_VEC[n*SYN_IDX_W +: SYN_IDX_W];
      localparam integer IS_SYN = (SIDX_RAW == SYN_NONE) ? 0 : 1;
      localparam integer SIDX   = IS_SYN ? SIDX_RAW : 0;
`ifdef SNOW_SERIAL
      // which phase (slice) commits this node, and this node's contribution to
      // "did the current global step change anything"
      localparam integer SLICE = SNOW_SLICE_OF_VEC[n*SNOW_SEAM_SLW +: SNOW_SEAM_SLW];
      assign busy_step_vec[n] = (phase == SLICE) ? pe_busy_c[n] : pe_busy[n];
`endif

      // state of the node above (used by DROP)
`ifdef SNOW_SLICED
      localparam integer XS_AB  = SNOW_XS_AB_VEC[n];
      localparam integer IDX_AB = SNOW_AB_IDX_VEC[n*SNOW_AB_IW +: SNOW_AB_IW];
`ifdef SNOW_SERIAL
      assign ab_cid[n]    = XS_AB ? ser_ab_cid[par_r][IDX_AB]    : (HAS_AB ? pe_cid[AB_S] : {CW{1'b0}});
      assign ab_active[n] = XS_AB ? ser_ab_active[par_r][IDX_AB] : (HAS_AB ? pe_active[AB_S] : 1'b0);
      assign ab_whole[n]  = XS_AB ? ser_ab_whole[par_r][IDX_AB]  : (HAS_AB ? pe_whole[AB_S] : 1'b1);
      assign ab_defect[n] = XS_AB ? ser_ab_defect[par_r][IDX_AB] : (HAS_AB ? pe_defect[AB_S] : 1'b0);
      assign ab_ptr[n]    = XS_AB ? ser_ab_ptr[par_r][IDX_AB]    : (HAS_AB ? pe_ptr[AB_S] : SNOW_PTR_C);
`else
      assign ab_cid[n]    = XS_AB ? seam_ab_cid[IDX_AB]    : (HAS_AB ? pe_cid[AB_S] : {CW{1'b0}});
      assign ab_active[n] = XS_AB ? seam_ab_active[IDX_AB] : (HAS_AB ? pe_active[AB_S] : 1'b0);
      assign ab_whole[n]  = XS_AB ? seam_ab_whole[IDX_AB]  : (HAS_AB ? pe_whole[AB_S] : 1'b1);
      assign ab_defect[n] = XS_AB ? seam_ab_defect[IDX_AB] : (HAS_AB ? pe_defect[AB_S] : 1'b0);
      assign ab_ptr[n]    = XS_AB ? seam_ab_ptr[IDX_AB]    : (HAS_AB ? pe_ptr[AB_S] : SNOW_PTR_C);
`endif
`else
      assign ab_cid[n]    = HAS_AB ? pe_cid[AB_S] : {CW{1'b0}};
      assign ab_active[n] = HAS_AB ? pe_active[AB_S] : 1'b0;
      assign ab_whole[n]  = HAS_AB ? pe_whole[AB_S] : 1'b1;
      assign ab_defect[n] = HAS_AB ? pe_defect[AB_S] : 1'b0;
      assign ab_ptr[n]    = HAS_AB ? pe_ptr[AB_S] : SNOW_PTR_C;
`endif
      assign pe_syn_bit[n] = IS_SYN ? syndrome[SIDX] : 1'b0;
      assign busy_vec[n]   = pe_busy[n];
      assign busy_c_vec[n] = pe_busy_c[n];

      // neighbour wiring: everything a PE needs from its neighbours comes in
      // through these direction-indexed ports and nothing else
      for (d = 0; d < NDIR; d = d + 1) begin : g_dir
        localparam integer NBR   = SNOW_NB_VEC[(n*NDIR + d)*NW +: NW];
        localparam integer EB    = SNOW_EB_VEC[(n*NDIR + d)*EW +: EW];
        localparam integer EB_S  = (EB == {EW{1'b1}}) ? 0 : EB;
        localparam integer HAS_N = (NBR == {NW{1'b1}}) ? 0 : 1;
        localparam integer REV   = SNOW_REV_VEC[(n*NDIR + d)*RVW +: RVW];

        assign pe_nb_valid[n][d]        = HAS_N;
`ifdef SNOW_SLICED
        localparam integer XS_NB  = SNOW_XS_NB_VEC[n*NDIR + d];
        localparam integer IDX_NB = SNOW_NB_IDX_VEC[(n*NDIR + d)*SNOW_NB_IW +: SNOW_NB_IW];
        localparam integer XS_EG  = SNOW_XS_EG_VEC[n*NDIR + d];
        localparam integer IDX_EG = SNOW_EG_IDX_VEC[(n*NDIR + d)*SNOW_EG_IW +: SNOW_EG_IW];
`ifdef SNOW_SERIAL
        // push crossing, direction-dependent (design doc 4.8, cheap half):
        // if the source slice's phase comes BEFORE this node's, the source has
        // already committed this step and its live output is already F(Q_{k+1})
        // -> read the value latched at the end of the source's own phase.
        // Otherwise the source has not committed yet, so its live combinational
        // output IS F(Q_k) and can be wired straight through.
        localparam integer NBR_C  = (NBR >= NN) ? 0 : NBR;
        localparam integer SL_N   = SNOW_SLICE_OF_VEC[n*SNOW_SEAM_SLW +: SNOW_SEAM_SLW];
        localparam integer SL_B   = SNOW_SLICE_OF_VEC[NBR_C*SNOW_SEAM_SLW +: SNOW_SEAM_SLW];
        localparam integer NB_REG = (SL_B < SL_N);
        assign pe_e_grown[n][d]         = XS_EG ? (ser_eg[par_r][IDX_EG] == 2'd2)
                                                 : (HAS_N ? (ed_growth[EB_S] == 2'd2) : 1'b0);
        assign pe_nb_cid[n][d*CW +: CW] = XS_NB ? ser_nb_cid[par_r][IDX_NB]
                                                 : (HAS_N ? pe_cid[NBR] : {CW{1'b0}});
        assign pe_nb_active[n][d]       = XS_NB ? ser_nb_active[par_r][IDX_NB]
                                                 : (HAS_N ? pe_active[NBR] : 1'b0);
        assign pe_nb_grown[n][d]        = XS_NB ? ser_nb_grown[par_r][IDX_NB]
                                                 : (HAS_N ? pe_grown[NBR] : 1'b0);
        assign pe_nb_push[n][d]         = HAS_N ? (NB_REG ? ser_nb_push[IDX_NB]
                                                          : pe_push[NBR][REV]) : 1'b0;
`else
        assign pe_e_grown[n][d]         = XS_EG ? (seam_eg[IDX_EG] == 2'd2)
                                                 : (HAS_N ? (ed_growth[EB_S] == 2'd2) : 1'b0);
        assign pe_nb_cid[n][d*CW +: CW] = XS_NB ? seam_nb_cid[IDX_NB]
                                                 : (HAS_N ? pe_cid[NBR] : {CW{1'b0}});
        assign pe_nb_active[n][d]       = XS_NB ? seam_nb_active[IDX_NB]
                                                 : (HAS_N ? pe_active[NBR] : 1'b0);
        assign pe_nb_grown[n][d]        = XS_NB ? seam_nb_grown[IDX_NB]
                                                 : (HAS_N ? pe_grown[NBR] : 1'b0);
        assign pe_nb_push[n][d]         = XS_NB ? seam_nb_push[IDX_NB]
                                                 : (HAS_N ? pe_push[NBR][REV] : 1'b0);
`endif
`else
        assign pe_e_grown[n][d]         = HAS_N ? (ed_growth[EB_S] == 2'd2) : 1'b0;
        assign pe_nb_cid[n][d*CW +: CW] = HAS_N ? pe_cid[NBR] : {CW{1'b0}};
        assign pe_nb_active[n][d]       = HAS_N ? pe_active[NBR] : 1'b0;
        assign pe_nb_grown[n][d]        = HAS_N ? pe_grown[NBR] : 1'b0;
        assign pe_nb_push[n][d]         = HAS_N ? pe_push[NBR][REV] : 1'b0;
`endif
      end

      snowflake_pe #(
        .ONE_ONE(ONE_ONE), .ID(n), .HAS_ABOVE(HAS_AB), .IS_BND(BND),
        .IS_TOP(TOP), .IS_BOT(BOT), .SYN_IDX(SIDX)
      ) pe_i (
        .clk(clk), .reset(reset),
`ifdef SNOW_MINTS
        .stage(stage_eff),
`else
        .stage(stage),
`endif
        .syn_bit(pe_syn_bit[n]),
        .ab_cid(ab_cid[n]), .ab_active(ab_active[n]), .ab_whole(ab_whole[n]),
        .ab_defect(ab_defect[n]), .ab_ptr(ab_ptr[n]),
        .e_grown(pe_e_grown[n]), .nb_valid(pe_nb_valid[n]), .nb_cid(pe_nb_cid[n]),
        .nb_active(pe_nb_active[n]), .nb_grown(pe_nb_grown[n]), .nb_push(pe_nb_push[n]),
        .o_cid(pe_cid[n]), .o_active(pe_active[n]), .o_whole(pe_whole[n]),
        .o_defect(pe_defect[n]), .o_ptr(pe_ptr[n]), .o_grown(pe_grown[n]),
        .o_unrooted(pe_unrooted[n]), .o_busy(pe_busy[n]), .o_busy_c(pe_busy_c[n]),
        .o_pulse(pe_pulse[n]), .o_push(pe_push[n]), .zzz_never_used(1'b0)
`ifdef SNOW_SLICED
        , .o_n_cid(pe_n_cid[n]), .o_n_active(pe_n_active[n]), .o_n_grown(pe_n_grown[n])
`endif
`ifdef SNOW_MINTS
        // explicit zero-extension: a narrower mts_sub would pad the 4-bit
        // port with z, and both `== 4'd0` and the case() would then evaluate
        // unknown (found the hard way: mts_grown_r self-sustains x)
        , .mts_scan(mts_scan), .mts_mw(mts_mw),
          .mts_sub({{(4-MTS_W){1'b0}}, mts_sub})
`endif
`ifdef SNOW_SERIAL
        , .commit_en(phase == SLICE)
        , .o_n_whole(pe_n_whole[n]), .o_n_defect(pe_n_defect[n]), .o_n_ptr(pe_n_ptr[n])
`endif
`ifdef SNOW_LATTICE
        // step (a) of the shared lattice (design doc 9 item 4): the PE's
        // identity is driven as data, not baked in as a parameter.  Here the
        // driven values are still the same per-node constants and the instance
        // count is still NN, so this is a pure refactor -- it must reproduce the
        // trace exactly.  Step (b) replaces these constants with a ROM indexed
        // by the running phase and cuts the instance count to one slice.
        , .p_id(n[SNOW_CID_W-1:0])
        , .p_has_above(HAS_AB != 0), .p_is_bnd(BND != 0)
        , .p_is_top(TOP != 0), .p_is_bot(BOT != 0), .p_is_syn(IS_SYN != 0)
`endif
      );
    end

    // ---------------- edges ----------------
    for (e = 0; e < NE; e = e + 1) begin : g_edge
      localparam integer U      = SNOW_EU_VEC[e*NW +: NW];
      localparam integer V      = SNOW_EV_VEC[e*NW +: NW];
      localparam integer DU     = SNOW_EDIRU_VEC[e*RVW +: RVW];
      localparam integer DV     = SNOW_EDIRV_VEC[e*RVW +: RVW];
      localparam integer ABOVE  = SNOW_EABOVE_VEC[e*EW +: EW];
      localparam integer AB_S   = (ABOVE == {EW{1'b1}}) ? 0 : ABOVE;
      localparam integer HAS_AB = (ABOVE == {EW{1'b1}}) ? 0 : 1;
      localparam integer IS_CMT = SNOW_ECOMMIT_VEC[e];
      localparam integer C_IDX  = SNOW_ECIDX_VEC[e*CBW +: CBW];

`ifdef SNOW_SERIAL
      // serial protocol: the edge commits only during its owner slice's phase.
      // The owner IS slice_of[U], so the u endpoint never crosses.  For the v
      // endpoint the same direction rule as push applies (see the comment above
      // the buffer declarations): a source in an EARLIER phase has already
      // committed, so read the value latched at the end of that phase; a source
      // in a LATER phase still holds Q_k, so read it live.
      localparam integer EOWNER = SNOW_EDGE_OWNER_VEC[e*SNOW_SEAM_SLW +: SNOW_SEAM_SLW];
      localparam integer SL_V   = SNOW_SLICE_OF_VEC[V*SNOW_SEAM_SLW +: SNOW_SEAM_SLW];
      localparam integer V_REG  = (SL_V < EOWNER);
      localparam integer XS_EA  = SNOW_XS_EA_VEC[e];
      localparam integer IDX_EA = SNOW_EA_IDX_VEC[e*SNOW_EA_IW +: SNOW_EA_IW];
      localparam integer XS_EPV  = SNOW_XS_EPV_VEC[e];
      localparam integer IDX_EPV = SNOW_EPV_IDX_VEC[e*SNOW_EP_IW +: SNOW_EP_IW];
      localparam integer XS_EFV  = SNOW_XS_EFV_VEC[e];
      localparam integer IDX_EFV = SNOW_EFV_IDX_VEC[e*SNOW_EF_IW +: SNOW_EF_IW];
      snowflake_edge ed_i (
        .clk(clk), .reset(reset), .stage(stage), .commit_en(phase == EOWNER),
        .u_pulse(pe_pulse[U]),
        .v_pulse(XS_EPV ? (V_REG ? ser_ep[IDX_EPV]   : pe_pulse[V])     : pe_pulse[V]),
        .flip_u(pe_push[U][DU]),
        .flip_v(XS_EFV ? (V_REG ? ser_ef[IDX_EFV] : pe_push[V][DV]) : pe_push[V][DV]),
        .above_growth(XS_EA ? ser_ea[par_r][IDX_EA][1:0] : (HAS_AB ? ed_growth[AB_S] : 2'd0)),
        .above_ecorr (XS_EA ? ser_ea[par_r][IDX_EA][2]   : (HAS_AB ? ed_ecorr[AB_S]  : 1'b0)),
        .o_growth(ed_growth[e]), .o_ecorr(ed_ecorr[e]),
        .o_n_growth(ed_n_growth[e]), .o_n_ecorr(ed_n_ecorr[e])
      );
`elsif SNOW_SLICED
      // seam cut points on the edge instance: endpoint pulses (group D),
      // endpoint flip requests (group F -- the doc's 13-point table missed
      // the flip inputs) and the edge-above state (group E)
      localparam integer XS_EPU  = SNOW_XS_EPU_VEC[e];
      localparam integer IDX_EPU = SNOW_EPU_IDX_VEC[e*SNOW_EP_IW +: SNOW_EP_IW];
      localparam integer XS_EPV  = SNOW_XS_EPV_VEC[e];
      localparam integer IDX_EPV = SNOW_EPV_IDX_VEC[e*SNOW_EP_IW +: SNOW_EP_IW];
      localparam integer XS_EFU  = SNOW_XS_EFU_VEC[e];
      localparam integer IDX_EFU = SNOW_EFU_IDX_VEC[e*SNOW_EF_IW +: SNOW_EF_IW];
      localparam integer XS_EFV  = SNOW_XS_EFV_VEC[e];
      localparam integer IDX_EFV = SNOW_EFV_IDX_VEC[e*SNOW_EF_IW +: SNOW_EF_IW];
      localparam integer XS_EA   = SNOW_XS_EA_VEC[e];
      localparam integer IDX_EA  = SNOW_EA_IDX_VEC[e*SNOW_EA_IW +: SNOW_EA_IW];
      snowflake_edge ed_i (
        .clk(clk), .reset(reset),
`ifdef SNOW_MINTS
        .stage(stage_eff),
`else
        .stage(stage),
`endif
        .u_pulse(XS_EPU ? seam_ep[IDX_EPU] : pe_pulse[U]),
        .v_pulse(XS_EPV ? seam_ep[IDX_EPV] : pe_pulse[V]),
        .flip_u(XS_EFU ? seam_ef[IDX_EFU] : pe_push[U][DU]),
        .flip_v(XS_EFV ? seam_ef[IDX_EFV] : pe_push[V][DV]),
        .above_growth(XS_EA ? seam_ea[IDX_EA][1:0] : (HAS_AB ? ed_growth[AB_S] : 2'd0)),
        .above_ecorr (XS_EA ? seam_ea[IDX_EA][2]   : (HAS_AB ? ed_ecorr[AB_S]  : 1'b0)),
        .o_growth(ed_growth[e]), .o_ecorr(ed_ecorr[e]),
        .o_n_growth(ed_n_growth[e])
      );
`else
      snowflake_edge ed_i (
        .clk(clk), .reset(reset),
`ifdef SNOW_MINTS
        .stage(stage_eff),
`else
        .stage(stage),
`endif
        .u_pulse(pe_pulse[U]), .v_pulse(pe_pulse[V]),
        .flip_u(pe_push[U][DU]), .flip_v(pe_push[V][DV]),
        .above_growth(HAS_AB ? ed_growth[AB_S] : 2'd0),
        .above_ecorr (HAS_AB ? ed_ecorr[AB_S]  : 1'b0),
        .o_growth(ed_growth[e]), .o_ecorr(ed_ecorr[e])
      );
`endif

      // commit region: a commit edge reports its correction flag at DROP
      if (IS_CMT) begin : g_commit
        assign commit_bits[C_IDX] = ed_ecorr[e];
      end
    end

    // ---------------- observation buses ----------------
    if (DEBUG_OBS) begin : g_obs
      for (n = 0; n < NN; n = n + 1) begin : obs_nodes
        assign obs_cid[n*CW +: CW]                  = pe_cid[n];
        assign obs_active[n]                        = pe_active[n];
        assign obs_whole[n]                         = pe_whole[n];
        assign obs_defect[n]                        = pe_defect[n];
        assign obs_ptr[n*SNOW_PTR_W +: SNOW_PTR_W]  = pe_ptr[n];
        assign obs_grown[n]                         = pe_grown[n];
        assign obs_unrooted[n]                      = pe_unrooted[n];
        assign obs_busy[n]                          = pe_busy[n];
      end
      for (e = 0; e < NE; e = e + 1) begin : obs_edges
        assign obs_growth[e*2 +: 2] = ed_growth[e];
        assign obs_ecorr[e]         = ed_ecorr[e];
      end
    end else begin : g_noobs
      assign obs_cid      = {(NN*CW){1'b0}};
      assign obs_active   = {NN{1'b0}};
      assign obs_whole    = {NN{1'b0}};
      assign obs_defect   = {NN{1'b0}};
      assign obs_ptr      = {(NN*SNOW_PTR_W){1'b0}};
      assign obs_grown    = {NN{1'b0}};
      assign obs_unrooted = {NN{1'b0}};
      assign obs_busy     = {NN{1'b0}};
      assign obs_growth   = {(NE*2){1'b0}};
      assign obs_ecorr    = {NE{1'b0}};
    end

  endgenerate

  // ---------------- stage controller (same as the flat core) ----------------
  always @(posedge clk) begin
    if (reset) begin
      stage <= ST_IDLE;
      step_cnt <= 8'd0;
      done <= 1'b0;
      dbg_stage <= ST_IDLE;
      dbg_step <= 8'd0;
      dbg_valid <= 1'b0;
      commit_onehot <= {SNOW_NCOMMIT{1'b0}};
`ifdef SNOW_SERIAL
      commit_hold   <= {SNOW_NCOMMIT{1'b0}};
`endif
    end else begin
      done <= 1'b0;
      dbg_valid <= 1'b0;
      commit_onehot <= {SNOW_NCOMMIT{1'b0}};

`ifdef SNOW_SERIAL
      // ---- serial (ping-pong) controller (report 6.18) --------------------
      // Every stage step spans SNOW_SEAM_NSLICE phases; transitions, step
      // counting, dumps and commit reporting all happen on the LAST phase, so
      // the trace keeps exactly one T-line per global step -- the golden's own
      // cadence -- and the state that line shows is the post-step state of
      // BOTH slices.  The merging exit uses any_step_busy: the slice owning
      // this phase reports its combinational busy_c, every other slice reports
      // the busy flag it registered when it committed earlier in this same
      // step, so all of them describe the same logical step (no `step_cnt > 1`
      // guard is needed here, unlike SNOW_BUSYREG).
      case (stage)
        ST_IDLE: if (start) begin stage <= ST_DROP; step_cnt <= 8'd1; end
        ST_DROP: if (phase_last) begin stage <= ST_GW; step_cnt <= 8'd1; end
        ST_GW:   if (phase_last) begin stage <= ST_MW; step_cnt <= 8'd1; end
        ST_MW:   if (phase_last) begin
                   if (!any_step_busy) begin
                     if (ONE_ONE) begin
                       stage <= ST_IDLE; step_cnt <= 8'd0; done <= 1'b1;
                     end else begin
                       stage <= ST_GH; step_cnt <= 8'd1;
                     end
                   end else step_cnt <= step_cnt + 8'd1;
                 end
        ST_GH:   if (phase_last) begin stage <= ST_MH; step_cnt <= 8'd1; end
        ST_MH:   if (phase_last) begin
                   if (!any_step_busy) begin
                     stage <= ST_IDLE; step_cnt <= 8'd0; done <= 1'b1;
                   end else step_cnt <= step_cnt + 8'd1;
                 end
        default: stage <= ST_IDLE;
      endcase

      if (!phase) commit_hold <= commit_bits;

      if ((stage != ST_IDLE) && phase_last) begin
        dbg_stage <= stage;
        dbg_step  <= step_cnt;
        dbg_valid <= 1'b1;
        if (stage == ST_DROP) commit_onehot <= commit_hold;
      end
`else
      case (stage)
        ST_IDLE: if (start) begin stage <= ST_DROP; step_cnt <= 8'd1; end
        ST_DROP: begin stage <= ST_GW; step_cnt <= 8'd1; end
        ST_GW:   begin stage <= ST_MW; step_cnt <= 8'd1; end
`ifdef SNOW_BUSYREG
        // V2d for the PE array.  The d7 post-route critical path is
        //   g_pe[N].pe_i/cid_reg -> merge compare chain -> busy_c
        //     -> 392-input OR -> stage_reg/CE        (33 levels, 67% routing)
        // i.e. the *combinational* quiescence signal has to cross the whole
        // array and come back into the global controller every merging cycle.
        // The per-PE busy flags are already registers, so all_busy (|busy_vec)
        // is a pure FF -> OR tree -> CE path with no logic in front of it.
        // `step_cnt > 1` is required because on the first merging cycle those
        // flags still describe the previous stage.  Cost: one extra clock per
        // merging phase, which is provably a no-op cycle (nothing is busy, so
        // no state updates), and the dbg_valid rule below keeps it out of the
        // trace -- same argument as the flat core's V2d.
        ST_MW:   begin
`ifdef SNOW_MINTS
                   if (mts_last) begin
`endif
                   if (!all_busy && (step_cnt > 8'd1)) begin
                     if (ONE_ONE) begin
                       stage <= ST_IDLE; step_cnt <= 8'd0; done <= 1'b1;
                     end else begin
                       stage <= ST_GH; step_cnt <= 8'd1;
                     end
                   end else step_cnt <= step_cnt + 8'd1;
`ifdef SNOW_MINTS
                   end
`endif
                 end
        ST_GH:   begin stage <= ST_MH; step_cnt <= 8'd1; end
        ST_MH:   begin
`ifdef SNOW_MINTS
                   if (mts_last) begin
`endif
                   if (!all_busy && (step_cnt > 8'd1)) begin
                     stage <= ST_IDLE; step_cnt <= 8'd0; done <= 1'b1;
                   end else step_cnt <= step_cnt + 8'd1;
`ifdef SNOW_MINTS
                   end
`endif
                 end
`else
        ST_MW:   begin
`ifdef SNOW_MINTS
                   // merging steps take MTS_G cycles: only the final
                   // sub-cycle sees valid busy_c / advances the step count
                   if (mts_last) begin
`endif
                   if (!any_c_busy) begin
                     if (ONE_ONE) begin
                       stage <= ST_IDLE; step_cnt <= 8'd0; done <= 1'b1;
                     end else begin
                       stage <= ST_GH; step_cnt <= 8'd1;
                     end
                   end else step_cnt <= step_cnt + 8'd1;
`ifdef SNOW_MINTS
                   end
`endif
                 end
        ST_GH:   begin stage <= ST_MH; step_cnt <= 8'd1; end
        ST_MH:   begin
`ifdef SNOW_MINTS
                   if (mts_last) begin
`endif
                   if (!any_c_busy) begin
                     stage <= ST_IDLE; step_cnt <= 8'd0; done <= 1'b1;
                   end else step_cnt <= step_cnt + 8'd1;
`ifdef SNOW_MINTS
                   end
`endif
                 end
`endif
        default: stage <= ST_IDLE;
      endcase

      if (stage != ST_IDLE) begin
        dbg_stage <= stage;
        dbg_step  <= step_cnt;
`ifdef SNOW_MINTS
        // merging sub-cycles are internal pipelining (all state holds): they
        // are not golden steps, so they produce no trace line
        if (mts_merge && !mts_last) begin
          dbg_valid <= 1'b0;
        end else
`endif
`ifdef SNOW_BUSYREG
        // suppress the extra exit clock so the trace stays line-identical to the
        // localuf golden trace (same rule as the flat core's V2d)
        dbg_valid <= !(((stage == ST_MW) || (stage == ST_MH)) && !all_busy
                       && (step_cnt > 8'd1));
`else
        dbg_valid <= 1'b1;
`endif
        if (stage == ST_DROP) commit_onehot <= commit_bits;
      end
`endif
    end
  end

endmodule
