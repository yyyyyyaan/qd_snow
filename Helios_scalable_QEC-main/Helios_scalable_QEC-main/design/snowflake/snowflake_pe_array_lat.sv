`timescale 1ns / 1ps
//=============================================================================
// snowflake_pe_array_lat.sv -- the SHARED-LATTICE form of the Snowflake PE
// array (snowflake-n step (b)+(c), design doc ch. 3/4/6).
//
// snowflake_pe_array.sv instantiates one PE per graph NODE and one edge module
// per graph EDGE, sliced or not.  This one instantiates exactly NSLOT * NCTX
// node cells and ESLOT * NCTX edge cells -- one per (slot, slice) -- and runs
// one slice per phase.  That is the area sharing.  Every stage rule is
// unchanged, because the PEs and edge modules are the SAME RTL bodies in their
// stateless form (the `SNOW_LAT` variants of snowflake_pe.sv /
// snowflake_edge.sv).
//
// The generated tables (fpga_flow/make_lattice_sim.py) define everything that
// is not a stage rule:
//
//   * A slot is a layout position (layout layer, spatial index).  Which graph
//     node or edge it holds in a given slice is a per-(slot, slice) CONSTANT, so
//     every route is a constant offset and there is no routing ROM (design doc
//     3.3.2).
//   * Bank address of a cell:
//         node: ((layer_offset * NSLOT + slot) * NCTX + slice)
//         edge: ((layer_offset * ELAY  + eslot) * NCTX + slice) + NEB
//     where `layer_offset` is the layer's ABSOLUTE offset from LAYER0: the
//     generator exports SNOW_LAT_SLICEBASE_VEC for the slice's base layer and
//     SNOW_LAT_SLOTLAY_VEC for the layer a slot's geometry carries.
//   * The MIRROR of a cell is its address plus SNOW_LAT_NBM / SNOW_LAT_EBM.
//
// Bank selection is the whole of design doc 4.8's option B, and it is a 2:1
// select per port, never a copied comparator:
//
//   NB_L = 1  the source cell is in the slice running RIGHT NOW.  That slice
//             commits only at the END of the phase, so its registers still hold
//             the state this step started from -- read the register bank.
//   NB_L = 0  otherwise -> read the MIRROR.  Every cell copies its own
//             pre-commit value into the mirror in the very edge in which it
//             commits, and only during its own phase, so the mirror always holds
//             that cell's start-of-step value whatever the phase.
//
// `push` and `pulse` are datapath OUTPUTS, not banked state.  `pulse` is tapped
// from the producing cell (SNOW_LAT_EB_CU/CV name it).  `push` needs no tap at
// all: it is `!IS_BND && defect && ptr != C && d == ptr-1` at the NEIGHBOUR, and
// `defect`/`ptr` are in the very bank word the neighbour port already reads.
//=============================================================================
`include "../generated/snowflake_lattice.svh"

module snowflake_pe_array_lat #(
`ifdef SNOW_ONE_ONE
    parameter integer ONE_ONE = 1
`else
    parameter integer ONE_ONE = 0
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
    output reg         dbg_valid,
    output reg  [31:0] lat_live_cnt,
    output reg  [31:0] lat_push_cnt,
    output reg  [31:0] lat_flip_cnt
);

  localparam integer NSLOT = SNOW_LAT_NSLOT;
  localparam integer ES    = SNOW_LAT_ESLOT;
  localparam integer NCTX  = SNOW_LAT_NCTX;
  localparam integer NDIR  = SNOW_NDIR;
  localparam integer CW    = SNOW_CID_W;
  localparam integer PW    = SNOW_PTR_W;
  localparam integer STW   = SNOW_PE_STW;
  localparam integer NEB   = SNOW_LAT_NEB;
  localparam integer P     = SNOW_LAT_P;        // spatial positions per layer
  localparam integer NBM   = SNOW_LAT_NBM;
  localparam integer EBM   = SNOW_LAT_EBM;
  localparam integer AW    = SNOW_LAT_AW;
  localparam integer RVW   = SNOW_LAT_RVW;
  localparam integer SLW   = SNOW_LAT_SLW;
  localparam integer SLW2  = (SNOW_LAT_GMAX > 1) ? $clog2(SNOW_LAT_GMAX) : 1;
  localparam integer ABW   = SNOW_LAT_ABW;      // stride of AB_A / CDIR / CREV
  localparam integer NCW   = SNOW_LAT_NCW;      // stride of NB_C
  localparam integer SIDW  = SNOW_LAT_SIDW2;    // stride of SYNIDX
  localparam integer NCELL = NSLOT * NCTX;
  localparam integer ECMAX = ES * NCTX;
  localparam integer ELAY  = SNOW_LAT_ELAY;     // edge cells per layer per slice

  // packed-state field offsets (must match snowflake_pe.sv's SNOW_LAT layout)
  localparam integer SO_BUSY = 0;
  localparam integer SO_UNR  = 1;
  localparam integer SO_GRW  = 2;
  localparam integer SO_PTR  = 3;
  localparam integer SO_DEF  = 3 + PW;
  localparam integer SO_WHL  = 4 + PW;
  localparam integer SO_ACT  = 5 + PW;
  localparam integer SO_CID  = 6 + PW;
  // the producer-side push decision (the top bit of the word; see snowflake_pe.sv)
  localparam integer SO_PB   = STW - 1;

  // identity word field offsets
  localparam integer IO_ABOVE = CW;
  localparam integer IO_BND   = CW + 1;
  localparam integer IO_TOP   = CW + 2;
  localparam integer IO_BOT   = CW + 3;
  localparam integer IO_SYN   = CW + 4;

  localparam [2:0] ST_IDLE = 3'd0, ST_DROP = 3'd1, ST_GW = 3'd2,
                   ST_MW   = 3'd3, ST_GH   = 3'd4, ST_MH = 3'd5;

  reg [2:0] stage;
  reg [7:0] step_cnt;

  // ---------------- the state ----------------
  // ONE constant driver per word, and it is the loop below.  The per-cell
  // presets used to live in their own `initial` blocks, which made every word
  // they touched MULTI-DRIVEN (two constant drivers); Vivado reports that as
  // `[Synth 8-6859] multi-driven net on pin Q` and then silently DROPS one of
  // them, so the netlist stops matching the RTL that was verified.  The per-cell
  // values are applied by the clocked reset path instead, exactly like the flat
  // array's PEs (which have no `initial` at all).
  reg [STW-1:0] bank [0:SNOW_LAT_MEM-1];

  // Every word starts at 0 rather than 'x'.  The address map has holes (a row's
  // words exist for BOTH contexts, but only the slices that own such a layer
  // have a cell there), and the observation bus and the debug trace must report
  // a defined value for every cell either way.
  integer bi;
  initial begin
    for (bi = 0; bi < SNOW_LAT_MEM; bi = bi + 1) bank[bi] = {STW{1'b0}};
  end

  // ---------------- phase counter (serial ping-pong protocol) --------------
  reg [SLW-1:0] phase;
  // The syndrome of the step that is currently running, latched at `start`.
  reg [SNOW_NSYN-1:0] syn_buf;
  wire phase_last = (phase == NCTX-1);
  wire any_run    = (stage != ST_IDLE);

  always @(posedge clk) begin
    if (reset)                 phase <= {SLW{1'b0}};
    else if (stage == ST_IDLE) phase <= {SLW{1'b0}};
    else if (phase_last)       phase <= {SLW{1'b0}};
    else                       phase <= phase + 1'b1;
  end

  // ---------------- per-cell datapath outputs ----------------
  wire [NDIR-1:0] cell_push  [0:NCELL-1];
  wire            cell_pulse [0:NCELL-1];
  wire            cell_busy  [0:NCELL-1];
  wire [STW-1:0]  cell_nxt   [0:NCELL-1];
  wire [2:0]      ecell_nxt  [0:ECMAX-1];
  // "this cell has a direction whose port read came from the MIRROR bank", i.e.
  // the port was served by a slice that had already committed this stage
  wire            cross_bits [0:NCELL-1];

  // global quiescence: a cell in the running slice reports its combinational
  // busy; every other cell reports the busy bit in its mirror, which belongs to
  // the same logical step (report 6.18.2 bug 2, applied per cell)
  wire [NCELL-1:0] busy_step_vec;
  wire             any_step_busy;
`ifdef SNOW_LAT_2PASS
  // Two-pass merging: one merging ROUND is two phase rounds (pass A = flooding,
  // pass B = syncing), so the round is only over when both are.  `busy_a_vec`
  // latches pass A's answer at the end of pass A -- the instant `busy_step_vec`
  // holds it for every cell -- and is ORed into the check at the end of pass B.
  reg [NCELL-1:0]  busy_a_vec;
`endif
  assign all_busy = any_step_busy;

  // ---------------- commit capture ----------------
  // see the note inside the controller's always block: the latch lives there so
  // that `commit_hold` has exactly one driver.
  reg [SNOW_NCOMMIT-1:0] commit_hold;
  wire [SNOW_NCOMMIT-1:0] commit_now;

  genvar ci;

  generate
    if (SNOW_NCOMMIT > 0) begin : g_cmt
      for (ci = 0; ci < SNOW_NCOMMIT; ci = ci + 1) begin : g_cmtbit
        assign commit_now[ci] = bank[SNOW_LAT_CMT_A_VEC[ci]][2];
      end
    end
  endgenerate

  // ---------------- two-pass merging selector (report 6.20.13 / doc 4.8.4) ----
  // 0 = both halves of a merging stage in one phase: the flat array's behaviour,
  // and the value every SINGLE-pass configuration uses.  1 = flooding only,
  // 2 = syncing only.  The PE gates on it (`m_pass`), and the port reads below
  // select the pass-B form when it is 2.
  //
  // The pass-B form replaces a live tap (`cell_push[...]`) with a comparison
  // against the source's BANKED pointer -- which is what a merged cell must do,
  // because a later-phase source has no datapath to tap (doc 4.8.3).  At
  // m_pass == 0 the selection is constant, every pass-B expression is dead, and
  // Vivado prunes it, so a single-pass configuration is untouched.
  //
  // See snowflake_pe.sv's flooding half for why the third operand (`!IS_BND`) is
  // committed as a state bit (`SO_PB`) by the producer rather than looked up by
  // the consumer.
  wire mrg_running = (stage == ST_MW) || (stage == ST_MH);
`ifdef SNOW_LAT_2PASS
  // `lat_bpass` alternates within a merging stage: phase rounds 0..NCTX-1 are
  // pass A, the next NCTX are pass B.  `phase` itself needs no change -- it
  // already wraps at NCTX.
  reg  lat_bpass;
  wire [1:0] m_pass_w = (mrg_running && any_run) ? (lat_bpass ? 2'd2 : 2'd1)
                                                : 2'd0;
  wire [1:0] LATP     = m_pass_w;
  // The edge cells must commit exactly ONCE per merging round.  Their flip is
  // evaluated in pass B (only there is the pointer comparison valid); pass A's
  // live tap is meaningless now, because the producer's datapath is busy with
  // another context.  Gating `run` is enough -- the edge's own next-state
  // expressions are pure functions of its (unchanged) state in pass A.
  wire       edge_en  = !(mrg_running && !lat_bpass);
  // The end of a full stage round: what the stage FSM and the dump wait for.
  wire       stage_last = phase_last && (!mrg_running || lat_bpass);
  assign     any_step_busy = |busy_step_vec | (mrg_running && (|busy_a_vec));
`else
  // single-pass: `lat_bpass` is a constant so the shared expressions below (and
  // the controller) need no second copy
  wire       lat_bpass = 1'b0;
  wire [1:0] m_pass_w = 2'd0;
  wire [1:0] LATP     = 2'd0;
  wire       edge_en  = 1'b1;
  wire       stage_last = phase_last;
  assign     any_step_busy = |busy_step_vec;
`endif

`ifdef SNOW_LAT_2PASS
  always @(posedge clk) begin
    if (reset)                 lat_bpass <= 1'b0;
    else if (stage == ST_IDLE) lat_bpass <= 1'b0;
    else if (phase_last)       lat_bpass <= mrg_running && !lat_bpass;
  end
  always @(posedge clk) begin
    if (reset) busy_a_vec <= {NCELL{1'b0}};
    else if (phase_last && mrg_running && !lat_bpass) busy_a_vec <= busy_step_vec;
  end
`endif

  // ---------------- crossing counter ----------------
  // A "crossing" is a defect push read out of the MIRROR bank because its source
  // cell belongs to a slice that has already committed in this stage.  `lat_push_cnt`
  // counts the live cycles in which at least one cell took one, so 0 would mean
  // design doc 4.8 option B was never exercised for the defect migration.
  wire cross_push;
  genvar gv_cp;
  generate
    for (gv_cp = 0; gv_cp < NCELL; gv_cp = gv_cp + 1) begin : g_cross
      assign cross_push = cross_push | cross_bits[gv_cp];
    end
  endgenerate

  // Genvars are MODULE-scope objects, not loop-local: reusing one name in two
  // sibling generate loops makes the second loop's `localparam` expressions
  // evaluate with the value the first loop left behind (here the last edge
  // slot), which collapsed 15 of 24 edge cells onto a single address.  Every
  // generate loop below therefore gets its own genvar name.
  genvar gv_sn, gv_cn, gv_dn, gv_se, gv_ce;

  generate

    // =====================================================================
    // Node cells: NSLOT * NCTX
    // =====================================================================
    for (gv_sn = 0; gv_sn < NSLOT; gv_sn = gv_sn + 1) begin : g_slot
      for (gv_cn = 0; gv_cn < NCTX; gv_cn = gv_cn + 1) begin : g_ctx
        localparam integer CELL = gv_sn * NCTX + gv_cn;
        localparam integer K0   = CELL * NDIR;
        // A (slot, slice) cell is STRUCTURAL only when the slice owns a layer at
        // the slot's layout position; the others are don't-cares whose computed
        // address falls outside the node band (it lands in the EDGE band, since
        // the row is one past the slice's window).  They must not run and must
        // not be reset, or they would write over a live edge cell.  On
        // `rep d3 n=2` the four such cells of slice 1 land on unused addresses
        // by luck; the gate is what makes that a property instead of a accident.
        localparam integer NVALID = SNOW_LAT_NODE_VALID_VEC[CELL];
        // Cell address = ((layer_offset * P + spatial slot) * NCTX + slice).
        // The row stride is P (the spatial positions per layer), NOT NSLOT:
        // with NSLOT as the stride, slot 4 of layer 0 would land on slot 0 of
        // layer 1 and two nodes would share one cell.
        // Bank address of this cell, an ELABORATION-TIME CONSTANT.
        //
        // Each slice owns a WINDOW of `GMAX` slot rows, at rows
        // `SLICEBASE[slice] .. SLICEBASE[slice]+GMAX-1`, so that two slices can
        // never place a cell on the same row.  The row of a cell is therefore the
        // ABSOLUTE row `SLICEBASE[slice] + SLOTLAY[slot]` -- the slice's own
        // window base plus the slot's layout layer -- and the full address is
        //
        //     ((row * NSLOT) + slot) * NCTX + slice
        //
        // `SLICEBASE[c] == c * GMAX` (the generator emits it).  The earlier form
        // `(SLOTLAY + SLICEBASE) * NSLOT * NCTX + slot * NCTX + slice` was
        // algebraically the same expression only when GMAX == 1: it collapsed the
        // row term into the low bits, so with `rep d3 n=2` slice 1's whole window
        // (rows 2..3) aliased onto rows 0..1 and two different nodes -- one per
        // slice -- were addressed identically.
        localparam integer ROW =
          SNOW_LAT_SLICEBASE_VEC[gv_cn] + SNOW_LAT_SLOTLAY_VEC[gv_sn];
        wire [AW-1:0]   myaddr = ((ROW * NSLOT) + gv_sn) * NCTX + gv_cn;
        localparam integer MADDR = ((ROW * NSLOT) + gv_sn) * NCTX + gv_cn;
        // The identity and syndrome tables are INTEGER ARRAYS: a packed `'d`
        // literal whose top bit is set is negative, so the vector's most
        // significant element silently loses that bit (which cleared is_bnd and
        // has_above here).  Constant indices into an array have no such trap.
        wire [CW+4:0]   iw     = SNOW_LAT_IDENT_VEC[CELL][CW+4:0];
        wire [SIDW-1:0] sidx   = SNOW_LAT_SYNIDX_VEC[CELL][SIDW-1:0];
        wire            run    = NVALID && (phase == gv_cn) && any_run;
        wire            has_ab = iw[IO_ABOVE];
        // `ABN` is not needed by the RTL: `SNOW_LAT_AB_A_VEC` carries the bank
        // offset (mirror shift and all) and the identity word carries `has_above`.

        // The cell's own state as of the START OF THIS STAGE.  A cell that has
        // already committed in this stage (an earlier slice) left that value in
        // its mirror, so the read follows the phase.  Making this read -- and
        // every port read below -- phase-relative is what makes each cell's
        // combinational outputs phase-INVARIANT, i.e. equal to the flat array's
        // at every phase, which is what lets one cell tap another's output.
        wire [AW-1:0] own_a = myaddr + ((gv_cn < phase) ? NBM : 0);

        wire [NDIR-1:0]    nb_valid, nb_active, nb_grown, nb_push, e_grown;
        wire [NDIR-1:0]    nb_mir;
        wire [NDIR*CW-1:0] nb_cid;
        wire [STW-1:0]     absrc;

        for (gv_dn = 0; gv_dn < NDIR; gv_dn = gv_dn + 1) begin : g_dir
          localparam integer K   = K0 + gv_dn;
          localparam integer NBV = SNOW_LAT_NB_V_VEC[K];
          localparam integer NBC = SNOW_LAT_NB_C_VEC[K];
          localparam integer RVD = SNOW_LAT_NB_RV_VEC[K];
          // the neighbour's port: register address + the mirror shift when that
          // neighbour's slice has already committed in this stage
          wire [AW-1:0]  nba = myaddr + SNOW_LAT_NB_A_VEC[K]
                               + ((SNOW_LAT_NB_SL_VEC[K] < phase) ? NBM : 0);
          wire [AW-1:0]  eba = myaddr + SNOW_LAT_NB_E_VEC[K]
                               + ((SNOW_LAT_NB_ESL_VEC[K] < phase) ? EBM : 0);
          // The neighbour's START-OF-STAGE state, from the bank word the port
          // offset names.  One read serves cid / active / grown.
          wire [STW-1:0] nsrc = bank[nba];
          wire [STW-1:0] esrc = bank[eba];
          assign nb_valid[gv_dn]        = NBV;
          assign nb_cid[gv_dn*CW +: CW] = nsrc[SO_CID +: CW];
          assign nb_active[gv_dn]       = nsrc[SO_ACT];
          assign nb_grown[gv_dn]        = nsrc[SO_GRW];
          // The defect push, taken from the NEIGHBOUR IN THIS DIRECTION exactly
          // as the flat array does (`pe_nb_push[n][d] = pe_push[NBR][REV]`).
          // `push` follows the pointer the neighbour computes THIS cycle, so it
          // cannot be recomputed from the neighbour's banked `ptr`; and it comes
          // from the neighbour in direction d, not from the DROP source -- on
          // `rep d3 n=2` node 4's only neighbour is 10 while its `above` is 2,
          // and tapping the DROP source left node 4 without the defect the golden
          // gives it at `T 3 m 1`.
          // pass-B form of the push: the neighbour's BANKED pointer (the value it
          // committed in pass A of this stage) pointing back at me, ANDed with
          // the push decision it committed alongside it (`SO_PB`, which carries
          // the `!IS_BND` and `n_ptr != C` factors the consumer cannot evaluate).
          //
          // The read is `nsrc` -- the SAME dynamic read as cid/active/grown, so
          // this costs no extra port.  Doc 4.8.4 (a) says pass B must read the
          // REGISTER, and that is right about the POINTER but wrong about the
          // word: the mirror is rewritten by pass B's own commit with the value
          // being left, so during pass B it holds the START-OF-PASS-B value,
          // whose ptr IS pass A's result and whose defect/active are still the
          // round's start values.  A raw register read would instead pick up the
          // defect pass B has already updated for an earlier slice (measured:
          // `push_en` has to be the producer's round-start decision, and reading
          // the register for a slice < phase hands back this round's update).
          wire nb_push_b;
`ifdef SNOW_LAT_2PASS_NEG
          // NEGATIVE CONTROL (never enabled in a real build; pair it with
          // SNOW_LAT_2PASS).  This is the LITERAL reading of design doc 4.8.4
          // (a): "pass B always reads the register".  It must disagree with the
          // phase-relative read somewhere, or that sentence is not a rule and
          // the correction in the comment above is not load-bearing.
          // Measured: `rep d3 n=2` FAILS (2314 -> 2054 lines, merging stops
          // early).  (A third variant -- keeping the live tap in pass B -- also
          // PASSES, but that is NOT evidence the two-pass split is unnecessary:
          // in this COPY-VERSION array every (slot, slice) still owns a live
          // datapath, so the tap happens to answer correctly.  That is exactly
          // report 6.20.9's finding, and exactly why the merged version may not
          // lean on it.)
          wire [STW-1:0] nsrc_r = bank[myaddr + SNOW_LAT_NB_A_VEC[K]];
          assign nb_push_b = NBV && nsrc_r[SO_PB]
                             && (nsrc_r[SO_PTR +: PW] == (RVD + 1'b1));
`else
          assign nb_push_b = NBV && nsrc[SO_PB]
                             && (nsrc[SO_PTR +: PW] == (RVD + 1'b1));
`endif
          assign nb_push[gv_dn] = (LATP == 2'd2) ? nb_push_b
                                                 : (NBV ? cell_push[NBC][RVD] : 1'b0);
          assign nb_mir[gv_dn]  = (SNOW_LAT_NB_SL_VEC[K] < NCTX)
                                  && (SNOW_LAT_NB_SL_VEC[K] < phase);
          assign e_grown[gv_dn] = (esrc[1:0] == 2'd2);
        end
        // "this cell took at least one port from the MIRROR bank", i.e. from a
        // slice that had already committed in this stage
        assign cross_bits[CELL] = |nb_mir;

        // DROP source: the node "above", read from the bank like every other port.
        //
        // What the drop wants is the source's state at the START OF THE STAGE,
        // which is exactly what the flat array sees: its PE outputs ARE the PE
        // registers (`assign o_cid = cid` in snowflake_pe.sv), so
        // `ab_cid[n] = pe_cid[AB_S]` samples a live register that has not been
        // updated yet in this stage.  Measured on the golden for `rep d3 n=2`:
        // node 6 picks up the syndrome's defect at T1, node 8 takes node 6's
        // end-of-T1 state at T2, node 10 takes node 8's end-of-T2 state at T3 --
        // ONE layer per step.  Taking the source's next state instead (the PE's
        // `st_out`) lands the whole 6->8->10 chain in T1, which is wrong.
        //
        // Bank rule (the same one, for every port): a source whose slice has not
        // committed yet in this stage -- `node_slice[above] >= gv_cn`, including
        // the SAME slice, whose commit edge is this very edge -- still holds the
        // start-of-stage value in its register, so read the register.  A source in
        // an EARLIER slice has committed already and left that value in its
        // mirror.  `SNOW_LAT_AB_A_VEC` carries the offset with the mirror shift
        // already folded in, and is 0 when there is no above (the PE ignores ab_*
        // then: K_HAS_ABOVE = 0).
        //
        // SEVEN earlier variants read something else and all failed (first bad D
        // row / diffs over 12 steps / commits); they are recorded in
        // fpga_flow/lattice_b_step_status.md 2.5.
        assign absrc = has_ab
          ? bank[myaddr + SNOW_LAT_AB_A_VEC[CELL]
                 + ((SNOW_LAT_AB_SL_VEC[CELL] < phase) ? NBM : 0)]
          : {STW{1'b0}};

        snowflake_pe #(.ONE_ONE(ONE_ONE)) pe_i (
          .clk(clk), .reset(reset), .stage(stage),
          .syn_bit(syn_buf[sidx]),
          .ab_cid(absrc[SO_CID +: CW]), .ab_active(absrc[SO_ACT]),
          .ab_whole(absrc[SO_WHL]), .ab_defect(absrc[SO_DEF]),
          .ab_ptr(absrc[SO_PTR +: PW]),
          .e_grown(e_grown), .nb_valid(nb_valid), .nb_cid(nb_cid),
          .nb_active(nb_active), .nb_grown(nb_grown), .nb_push(nb_push),
          // 0 = both halves of merging in one phase (the flat array's behaviour).
          // The two-pass split (SNOW_LAT_2PASS) drives this per phase; the PE
          // logic is gated on it, so enabling it is a controller + port-read
          // change, not a datapath change.
          .m_pass(m_pass_w),
          .o_busy_c(cell_busy[CELL]), .o_pulse(cell_pulse[CELL]),
          .o_push(cell_push[CELL]), .zzz_never_used(1'b0),
          .p_id(iw[CW-1:0]), .p_has_above(iw[IO_ABOVE]), .p_is_bnd(iw[IO_BND]),
          .p_is_top(iw[IO_TOP]), .p_is_bot(iw[IO_BOT]), .p_is_syn(iw[IO_SYN]),
          .st_in(bank[own_a]), .st_out(cell_nxt[CELL])
        );

        // Quiescence is "did THIS stage change anything, in ANY slice".  The
        // controller only asks at `phase_last`, and at that instant a cell that
        // runs later (or not at all) in this stage has already committed its
        // answer into its REGISTER (a cell of an earlier slice committed in its
        // own phase; the slice running now is committing on this very edge, so
        // its combinational `busy_c` is the same answer one edge early).  The
        // MIRROR is the wrong bank here: it holds the value from the cell's
        // previous run edge, i.e. the PREVIOUS stage's busy, so a slice-0 cell
        // that changed state during the current merging round still reported the
        // busy flag of the stage before it -- and the merge terminated after one
        // sub-round instead of the golden's three (`rep d3 n=2`, T3 `m`).
        assign busy_step_vec[CELL] = run ? cell_busy[CELL]
                                         : bank[myaddr][SO_BUSY];

        // The banks start at their per-cell reset value.  This is the CLOCKED
        // path, not an `initial` block: the state preset is applied by `reset`,
        // like the flat array's PEs, which keeps one driver per bank word.
        always @(posedge clk) begin
          if (reset) begin
            if (NVALID) begin
              bank[myaddr]       <= SNOW_LAT_PE_RST_VEC[CELL][STW-1:0];
              bank[myaddr + NBM] <= SNOW_LAT_PE_RST_VEC[CELL][STW-1:0];
            end
          end else if (run) begin
            // commit the next state and leave the state being left (Q_k) in the
            // mirror -- which is what every other slice reads this stage
            bank[myaddr + NBM] <= bank[myaddr];
            bank[myaddr]       <= cell_nxt[CELL];
          end
        end
      end
    end

    // =====================================================================
    // Edge cells: ESLOT * NCTX
    // =====================================================================
    for (gv_se = 0; gv_se < ES; gv_se = gv_se + 1) begin : g_eslot
      for (gv_ce = 0; gv_ce < NCTX; gv_ce = gv_ce + 1) begin : g_ectx
        localparam integer CELL = gv_se * NCTX + gv_ce;
        localparam integer CU   = SNOW_LAT_EB_CU_VEC[CELL];
        localparam integer CV   = SNOW_LAT_EB_CV_VEC[CELL];
        // Edge cell address.  An edge slot does NOT encode its row (the spatial
        // index is `slot mod (ELAY/3)`), and the row is the slice's window base,
        // so the generator emits the address per (edge slot, slice) directly.
        //
        // `ADDR0`/`MYADDR` are localparams: the cell address is an
        // ELABORATION-TIME CONSTANT and must not be read through a continuous
        // assignment.  As a wire, ModelSim left it at 'x' inside the cell's own
        // `initial` block (the block runs before the continuous assignment is
        // scheduled), so the preset write went to `bank['x]`, the bank kept its
        // initial 'x', and the observation bus reported x for exactly those
        // edges -- while the clocked reset path, which sees the settled wire,
        // looked perfect.  `EVALID` (also a table read) was always right because
        // it is a localparam.
        // `EVALID` (also a table read) was always right because
        // it is a localparam.
        localparam integer EVALID = SNOW_LAT_EB_VALID_VEC[CELL];
        // The table carries this cell's FULL address, slice included, so nothing
        // is added here.  The two contexts of one slot are two DIFFERENT cells
        // (`... + slot*nslices + c`), and a table that dropped `c` and relied on
        // the RTL adding it back collapsed them onto one address -- edge 0's cell
        // landed on padding cell 25 and its observation went to 'x'.
        localparam integer MYADDR = SNOW_LAT_EB_ADDR_VEC[CELL];
        localparam integer DU     = SNOW_LAT_EB_DU_VEC[CELL];
        localparam integer DV     = SNOW_LAT_EB_DV_VEC[CELL];
        // `run` MUST include EVALID.  An edge slot exists in a slice only when
        // the slice owns a layer at the slot's layout position, so most (slot,
        // slice) cells of a real graph are structural padding with no edge bound
        // to them: their address is a don't-care and their datapath output is
        // meaningless.  Gating only the `initial`/reset writes was not enough --
        // their COMMIT still fired, and it wrote that meaningless state over a
        // live node cell.  Measured on `rep d3 n=2`: 15 padding cells committed
        // `bank[0] <- 0` and `bank[192] <- 0` at every step, wiping node 0's
        // register and its mirror (address 0 / 192), which is exactly the node
        // whose observation line went to zero.
        wire           run    = EVALID && (phase == gv_ce) && any_run && edge_en;
        // the cell's own start-of-stage state (mirror when it already committed)
        wire [2:0]     my_state = bank[MYADDR + ((gv_ce < phase) ? EBM : 0)][2:0];
        // The `above` edge is the same edge one graph layer up, and the DROP takes
        // its start-of-stage state, exactly as the node side does and exactly as
        // the flat array does (`above_growth(ed_growth[AB_S])`, `ed_growth` being
        // the edge module's own register).  The address is ABSOLUTE, not an
        // offset: 3 of the 8 `above` edges of `rep d3 n=2` live in the OTHER slice
        // and a whole layout layer away in slot space, so the old constant
        // `+EROW` named the wrong cell for those (measured: e2's above is at +72
        // and e6's at +25, not +48), and the table that said otherwise was never
        // checked -- see the dead-assertion note in make_lattice_sim.py.
        //
        // The branch is decided by a PER-CELL flag, not by the per-slot `EB_HA`.
        // Two edges share an edge SLOT (one per slice), so a per-slot flag cannot
        // describe a cell: `EB_HA` is 1 for the whole slot when EITHER of its two
        // edges has an above, and selecting on it made the other one read a cell
        // that is not its source -- 666 trace values went to 'x' that way.
        wire [2:0]     ab_state;
        if (SNOW_LAT_EB_ABH_VEC[CELL]) begin : g_abst
          assign ab_state =
            bank[SNOW_LAT_EB_ABA_VEC[CELL]
                 + ((SNOW_LAT_EB_ABS_VEC[CELL] < phase) ? EBM : 0)][2:0];
        end else begin : g_noabst
          // padding cell, or an edge with no above: the flat array passes 2'd0.
          assign ab_state = 3'd0;
        end
        // The endpoint pulse / flip requests are datapath OUTPUTS of the node
        // cells, so they are tapped LIVE -- `cell_push`/`cell_pulse` are
        // phase-invariant now that every node cell reads its own start-of-stage
        // state, so this is exactly the flat array's
        // `pe_pulse[U]` / `pe_push[U][DU]`.  No mirror recompute is needed, and
        // none is possible: `push` follows the pointer the node computes THIS
        // cycle, not the one in its register.
        // pass-B form: does the endpoint's BANKED pointer point at the other end,
        // and did it commit the push decision that goes with it?
        //
        // The read follows the same dynamic rule as every other port: the
        // endpoint's slice is EARLIER than the phase running -> its mirror, which
        // during pass B holds the start-of-pass-B value.  For the pointer that is
        // exactly pass A's result (the syncing pass never rewrites `ptr`), and for
        // the committed push decision it is exactly pass A's decision -- so one
        // read serves both, and no register-only variant is needed.
        // (EB_SU / EB_SV are the endpoints' slices; EB_NU / EB_NV their REGISTER
        //  addresses.)
        localparam integer SU = SNOW_LAT_EB_SU_VEC[CELL];
        localparam integer SV = SNOW_LAT_EB_SV_VEC[CELL];
        wire [STW-1:0] uword =
          bank[SNOW_LAT_EB_NU_VEC[CELL] + ((SU < phase) ? NBM : 0)];
        wire [STW-1:0] vword =
          bank[SNOW_LAT_EB_NV_VEC[CELL] + ((SV < phase) ? NBM : 0)];
        wire umir_b = uword[SO_PB] && (uword[SO_PTR +: PW] == (DU + 1'b1));
        wire vmir_b = vword[SO_PB] && (vword[SO_PTR +: PW] == (DV + 1'b1));
        wire umir   = (LATP == 2'd2) ? umir_b : cell_push[CU][DU];
        wire vmir   = (LATP == 2'd2) ? vmir_b : cell_push[CV][DV];
        wire upulse = cell_pulse[CU];
        wire vpulse = cell_pulse[CV];

        snowflake_edge ed_i (
          .clk(clk), .reset(reset), .stage(stage),
          .u_pulse(upulse), .v_pulse(vpulse),
          .flip_u(umir), .flip_v(vmir),
          .above_growth(ab_state[1:0]), .above_ecorr(ab_state[2]),
          .st_in(my_state), .st_out(ecell_nxt[CELL])
        );

        // Not every (edge slot, slice) pair is a real cell: a slot's layout layer
        // only exists in the slices that own such a layer.  The unused cells must
        // not write at all -- their address is a don't-care, and letting them
        // write would clobber a real cell's reset value (measured: 15 of the 24
        // edge cells of `rep d3 n=2` wrote into the node bank).  `EVALID` is
        // declared above, with the address.

        // (The preset used to be an `initial` block here too; it is the clocked
        // reset branch below now, for the one-driver-per-word reason above.)

        always @(posedge clk) begin
          if (reset) begin
            if (EVALID) begin
              bank[MYADDR]       <= 3'd0;
              bank[MYADDR + EBM] <= 3'd0;
            end
          end else if (run) begin
            bank[MYADDR + EBM] <= bank[MYADDR];
            bank[MYADDR]       <= ecell_nxt[CELL];







          end
        end
      end
    end

  endgenerate

  always @(posedge clk) begin
    if (reset) begin
      lat_live_cnt <= 32'd0;
      lat_push_cnt <= 32'd0;
      lat_flip_cnt <= 32'd0;
    end else if (any_run) begin
      lat_live_cnt <= lat_live_cnt + 32'd1;
      if (cross_push) begin
        lat_push_cnt <= lat_push_cnt + 32'd1;
        lat_flip_cnt <= lat_flip_cnt + 32'd1;
      end
    end
  end

  // ---------------- observation buses ----------------
  // Read the REGISTER bank, not the mirror.
  //
  // The mirror exists for the DATAPATH: it lets any slice read another slice's
  // start-of-step value while a step is in progress.  The trace needs the opposite
  // -- the POST-step state, one full line per step -- and the register bank holds
  // exactly that once the step's last phase has committed.  Reading the mirror
  // here was wrong for the slice that runs LAST: its mirror only catches up when
  // the NEXT stage's first phase commits, so the dump showed the previous step's
  // value for that slice (on `rep d3 n=2`, syndrome node 6's defect flip arrived
  // one step late, and only that node -- the other slices commit early enough to
  // have caught up).
  genvar gv_on, gv_oe;
  generate
    for (gv_on = 0; gv_on < SNOW_NN; gv_on = gv_on + 1) begin : g_obs
      localparam integer ADR = SNOW_LAT_OBS_VEC[gv_on];
      assign obs_cid[gv_on*CW +: CW]  = bank[ADR][SO_CID +: CW];
      assign obs_active[gv_on]        = bank[ADR][SO_ACT];
      assign obs_whole[gv_on]         = bank[ADR][SO_WHL];
      assign obs_defect[gv_on]        = bank[ADR][SO_DEF];
      assign obs_ptr[gv_on*PW +: PW]  = bank[ADR][SO_PTR +: PW];
      assign obs_grown[gv_on]         = bank[ADR][SO_GRW];
      assign obs_unrooted[gv_on]      = bank[ADR][SO_UNR];
      assign obs_busy[gv_on]          = bank[ADR][SO_BUSY];
    end
    for (gv_oe = 0; gv_oe < SNOW_NE; gv_oe = gv_oe + 1) begin : g_edobs
      localparam integer EADR = SNOW_LAT_EB_OB_VEC[gv_oe];
      assign obs_growth[gv_oe*2 +: 2] = bank[EADR][1:0];
      assign obs_ecorr[gv_oe]         = bank[EADR][2];
    end
  endgenerate

  // ---------------- stage controller (serial ping-pong) ----------------
  always @(posedge clk) begin
    if (reset) begin
      stage <= ST_IDLE;
      step_cnt <= 8'd0;
      done <= 1'b0;
      dbg_stage <= ST_IDLE;
      dbg_step <= 8'd0;
      dbg_valid <= 1'b0;
      commit_onehot <= {SNOW_NCOMMIT{1'b0}};
      commit_hold <= {SNOW_NCOMMIT{1'b0}};
    end else begin
      done <= 1'b0;
      dbg_valid <= 1'b0;
      commit_onehot <= {SNOW_NCOMMIT{1'b0}};

      // Commit capture.  The commit edges live in slice 0 and phase 0's
      // registers are exactly the pre-stage state, so latch at phase 0 and
      // report at DROP.  This MUST be in this same always block: a second
      // `always @(posedge clk)` driving `commit_hold` makes every one of its
      // bits multi-driven, which Vivado reports as `[Synth 8-6859] multi-driven
      // net on pin Q ... 2nd driver pin 'GND'` and then resolves by IGNORING one
      // driver -- the netlist would no longer be the RTL that was verified.
      //
      // Two-pass: phase 0 of pass B would latch the same value (the edge cells
      // commit only in pass B, so pass A cannot have moved them), but latching
      // once per ROUND is what the rule says, so pass B is excluded.
      if (!phase && any_run && (!mrg_running || !lat_bpass)) commit_hold <= commit_now;

      case (stage)
        ST_IDLE: if (start) begin
                   stage   <= ST_DROP;
                   step_cnt <= 8'd1;
                   // Latch the syndrome with the start, like the flat array's
                   // per-context `syn_buf`.  The DROP stage must see the syndrome
                   // of the step that is STARTING: the caller may change the
                   // syndrome as soon as the step is under way (the golden model
                   // applies the drop before the trace's D line), and reading the
                   // live input instead shifted the whole trace by one step --
                   // `rep d3 n=2` matched everywhere except that the DROP-induced
                   // defect flip appeared one step late.
                   syn_buf <= syndrome;
                 end
        // `stage_last`, not `phase_last`: with two-pass merging a merging stage
        // spans TWO phase rounds, and advancing at the end of pass A would skip
        // the syncing half entirely.
        ST_DROP: if (stage_last) begin stage <= ST_GW; step_cnt <= 8'd1; end
        ST_GW:   if (stage_last) begin stage <= ST_MW; step_cnt <= 8'd1; end
        ST_MW:   if (stage_last) begin
                   if (!any_step_busy) begin
                     if (ONE_ONE) begin
                       stage <= ST_IDLE; step_cnt <= 8'd0; done <= 1'b1;
                     end else begin
                       stage <= ST_GH; step_cnt <= 8'd1;
                     end
                   end else step_cnt <= step_cnt + 8'd1;
                 end
        ST_GH:   if (stage_last) begin stage <= ST_MH; step_cnt <= 8'd1; end
        ST_MH:   if (stage_last) begin
                   if (!any_step_busy) begin
                     stage <= ST_IDLE; step_cnt <= 8'd0; done <= 1'b1;
                   end else step_cnt <= step_cnt + 8'd1;
                 end
        default: stage <= ST_IDLE;
      endcase

      // The observation reads the REGISTER bank, so the DROP report needs no extra
      // wait: the commit lands on the `phase_last` edge and the report shows the
      // post-drop state immediately.  `commit_onehot` is asserted with the report
      // so the P lines stay on the same trace row as their D line.
      //
      // Two-pass: the report is emitted at `stage_last`, i.e. only at the end of
      // pass B, which keeps the trace at exactly ONE T block per logical step
      // (a report at the end of pass A would both double the lines and show a
      // half-updated state).
      if ((stage != ST_IDLE) && stage_last) begin
        dbg_stage <= stage;
        dbg_step  <= step_cnt;
        dbg_valid <= 1'b1;
        if (stage == ST_DROP) commit_onehot <= commit_hold;
      end
    end
  end

endmodule
