`timescale 1ns / 1ps
//=============================================================================
// snowflake_pe_array_lat1.sv -- the SHARED lattice with ONE DATAPATH PER SLOT.
//
// snowflake_pe_array_lat.sv is `NSLOT * NCTX` node datapaths plus `ESLOT * NCTX`
// edge datapaths: only the STATE is shared, the logic is replicated once per
// (slot, slice).  Its hierarchical resource report says so directly, and the
// live datapath count ends up equal to the flat array's (report 6.20.9) -- which
// is why it paid `NCTX` times the cycles and saved nothing.
//
// This module is the real step (b): `NSLOT` + `ESLOT` datapaths, each running
// EVERY cycle for whichever slice `phase` selects.  Everything that used to be
// an elaboration-time constant indexed by
//     CELL = slot*NCTX + slice
// is now a runtime table read at
//     CELL = slot*NCTX + phase
// -- the "per-context ROM" of design doc 3.1.  The state bank, the address
// arithmetic, the bank-selection rule and the observation buses are unchanged.
//
// Three consequences of dropping the replication, all load-bearing:
//
// 1. TWO-PASS MERGING IS MANDATORY.  A consumer can no longer tap a later-phase
//    producer's combinational `push`, so every merging round runs pass A
//    (flooding: commits cid/ptr/grown and the push decision `SO_PB`) and then
//    pass B (syncing: compares banked pointers).  Always on here; the
//    copy-version array is where the mechanism itself was verified (report 6.24).
//
// 2. NO LIVE TAPS AT ALL.  `cell_push[...]` / `cell_pulse[...]` are gone, and
//    with them the `NB_C` / `EB_CU` / `EB_CV` tables.  Every tapped quantity is
//    a pure function of the producer's START-OF-ROUND state, which the consumer
//    already reads out of the bank:
//      * push  -- the producer commits its decision as `SO_PB` (the one operand
//                 that is not state, `!IS_BND`, is the producer's identity);
//      * pulse -- recomputed here from the endpoint's active/whole/grown, which
//                 is exactly the PE's rule and needs no new state.
//
// 3. RESET PRESETS ALL NCTX CONTEXTS IN ONE CYCLE.  One datapath per slot means
//    the runtime commit sees one address per cycle, but the reset preset must
//    cover every (slot, slice) cell at once -- a reset that WALKED `phase`
//    would write `bank['x]` on the very first reset edge and preset nothing.
//    The preset loop keeps every bank word on a single clocked driver.
//=============================================================================
`include "../generated/snowflake_lattice.svh"

module snowflake_pe_array_lat1 #(
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
  localparam integer NBM   = SNOW_LAT_NBM;
  localparam integer EBM   = SNOW_LAT_EBM;
  localparam integer AW    = SNOW_LAT_AW;
  localparam integer RVW   = SNOW_LAT_RVW;
  localparam integer SLW   = SNOW_LAT_SLW;

  // packed-state field offsets (must match snowflake_pe.sv's SNOW_LAT layout)
  localparam integer SO_BUSY = 0;
  localparam integer SO_UNR  = 1;
  localparam integer SO_GRW  = 2;
  localparam integer SO_PTR  = 3;
  localparam integer SO_DEF  = 3 + PW;
  localparam integer SO_WHL  = 4 + PW;
  localparam integer SO_ACT  = 5 + PW;
  localparam integer SO_CID  = 6 + PW;
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
  // ONE packed vector, NOT a Verilog memory.  A `reg [STW-1:0] bank [0:MEM-1]`
  // with 62 clocked writers and hundreds of constant-address readers makes
  // Vivado treat it as an inferred memory and split it per read/write group:
  // measured on `surface d3 n=2` (744 words, 576 read ports) that took
  // 56 minutes and 10.2 GB before it was killed, while the equivalent packed
  // vector finished in ~10 minutes at 2.5 GB.  Every access is now a constant
  // part-select, i.e. plain flip-flops and muxes.
  //
  // There is deliberately NO `initial` image here.  There used to be one (the
  // generator's full memory image), and it cost two things: `write_verilog
  // -mode funcsim` DROPS initial values, so a gate-level run started with every
  // state bit at 'x'; and with the image present Vivado treats the clocked
  // reset as redundant and optimises it away, so the netlist had NEITHER path
  // and never converged (measured: the netlist testbench hit its watchdog with
  // an empty trace).  The per-slot clocked reset below is the ONE preset path.
  // Read-only VIEW of every cell's word.  The state itself lives in
  // per-slot registers (see g_slot / g_eslot); this wire only fans it out.
  wire [SNOW_LAT_MEM*STW-1:0] bview;

  integer gi;

  // ---------------- phase counter and the two-pass selector ----------------
  reg [SLW-1:0] phase;
  reg [SNOW_NSYN-1:0] syn_buf;
  reg  lat_bpass;
  wire phase_last  = (phase == NCTX-1);
  wire any_run     = (stage != ST_IDLE);
  wire mrg_running = (stage == ST_MW) || (stage == ST_MH);
  // One merging ROUND is two phase rounds: pass A = flooding, pass B = syncing.
  wire [1:0] m_pass_w = (mrg_running && any_run) ? (lat_bpass ? 2'd2 : 2'd1)
                                                : 2'd0;
  wire [1:0] LATP = m_pass_w;
  // The edge cells commit once per round, in pass B (only there is the banked
  // pointer comparison valid).
  wire edge_en    = !(mrg_running && !lat_bpass);
  wire stage_last = phase_last && (!mrg_running || lat_bpass);

  always @(posedge clk) begin
    if (reset)                 phase <= {SLW{1'b0}};
    else if (stage == ST_IDLE) phase <= {SLW{1'b0}};
    else if (phase_last)       phase <= {SLW{1'b0}};
    else                       phase <= phase + 1'b1;
  end

  always @(posedge clk) begin
    if (reset)                 lat_bpass <= 1'b0;
    else if (stage == ST_IDLE) lat_bpass <= 1'b0;
    else if (phase_last)       lat_bpass <= mrg_running && !lat_bpass;
  end

  // ---------------- per-slot datapath outputs ----------------
  wire [NDIR-1:0] slot_push  [0:NSLOT-1];
  wire            slot_pulse [0:NSLOT-1];
  wire            slot_busy  [0:NSLOT-1];
  wire [STW-1:0]  slot_nxt   [0:NSLOT-1];
  wire [2:0]      eslot_nxt  [0:ES-1];
  wire            slot_valid [0:NSLOT-1];   // this slot's context exists
  wire            slot_cross [0:NSLOT-1];

  // ---------------- quiescence ----------------
  // A merged cell cannot report "the busy bit in my bank word" for the other
  // contexts: its datapath is busy with `phase` right now.  Each slot keeps two
  // NCTX-bit shadow rows instead -- pass A's answers and pass B's -- written at
  // the slot's own phase, and 0 for a context whose cell does not exist, so the
  // reduction is exact and cannot go stale.
  reg [NCTX-1:0] bshA [0:NSLOT-1];
  reg [NCTX-1:0] bshB [0:NSLOT-1];
`ifdef SNOW_BUSYREG
  // V2d for the merged array (report 6.34): the quiescence answer of the WHOLE
  // PREVIOUS ROUND, one NCTX-bit row per slot, captured at the round boundary.
  //
  // Why a whole row and not just the running context: one merging STEP is two
  // phase sweeps (pass A = flooding, pass B = syncing, see `mrg_running`), so at
  // the moment the FSM decides, `bshA`/`bshB` already hold THIS round's answers
  // for every context except the last one, whose shadow lands on this very edge.
  // Taking only the running context from the register (the obvious first
  // attempt) therefore mixes this round's and the previous round's answers: it
  // exits EARLY whenever the last context happened to be idle, which was
  // measured as 8 missing trace steps in `rotated d3` (the last `m` step of a
  // pass).  A row captured at the round boundary is uniformly one round stale,
  // which is exactly what makes the FSM's test a pure FF -> OR tree -> CE path.
  reg [NCTX-1:0] bshP [0:NSLOT-1];
`endif

  // `ph_oh` matters: the shadow bit of the phase RUNNING is not this round's yet
  // (it lands on this very clock edge), so it must be masked out of the row and
  // supplied combinationally by `qnow` instead.  Leaving it in makes the check
  // read the PREVIOUS round's answer for that one context -- measured on
  // `rep d3 n=2`: slot 1's pass-B row kept a stale 1 from the round before and
  // every merging stage ran one sub-round too many.  The prompt's sketch
  // (`|sh[slot] | (run ? cell_busy : 0)`) has this hole; the mask closes it.
  wire [NCTX-1:0] ph_oh;
  wire [NSLOT-1:0] qa, qb, qnow;
`ifdef SNOW_BUSYREG
  wire [NSLOT-1:0] qp;
`endif
  genvar gv_q;
  generate
    for (gv_q = 0; gv_q < NCTX; gv_q = gv_q + 1) begin : g_phoh
      assign ph_oh[gv_q] = (phase == gv_q);
    end
    for (gv_q = 0; gv_q < NSLOT; gv_q = gv_q + 1) begin : g_quiesce
      assign qa[gv_q]   = |(bshA[gv_q] & ~ph_oh);
      assign qb[gv_q]   = |(bshB[gv_q] & ~ph_oh);
`ifdef SNOW_BUSYREG
      assign qnow[gv_q] = 1'b0;   // unused under BUSYREG (kept so `qnow` exists)
`else
      // the phase running right now has not committed its shadow bit yet
      assign qnow[gv_q] = slot_valid[gv_q] && slot_busy[gv_q];
`endif
    end
`ifdef SNOW_BUSYREG
    for (gv_q = 0; gv_q < NSLOT; gv_q = gv_q + 1) begin : g_quiesce_busyreg
      // pure registers: no bank read, no phase mux, no PE logic in front of the
      // FSM's clock enable
      assign qp[gv_q] = |bshP[gv_q];
    end
`endif
  endgenerate

`ifdef SNOW_BUSYREG
  wire any_step_busy = (|qp);
`else
  wire any_step_busy = (|qa) | (|qb) | (|qnow);
`endif
  assign all_busy = any_step_busy;

  wire [NSLOT-1:0] cross_v;
  generate
    for (gv_q = 0; gv_q < NSLOT; gv_q = gv_q + 1) begin : g_cross
      assign cross_v[gv_q] = slot_cross[gv_q];
    end
  endgenerate
  wire cross_push = |cross_v;

  // ---------------- commit capture ----------------
  reg [SNOW_NCOMMIT-1:0] commit_hold;
  wire [SNOW_NCOMMIT-1:0] commit_now;

  genvar ci;
  generate
    if (SNOW_NCOMMIT > 0) begin : g_cmt
      for (ci = 0; ci < SNOW_NCOMMIT; ci = ci + 1) begin : g_cmtbit
        assign commit_now[ci] = bview[SNOW_LAT_CMT_A_VEC[ci]*STW + 2];
      end
    end
  endgenerate

  // Every generate loop below gets its OWN genvar.  This is not style: a genvar
  // is a MODULE-scope object, so a constant expression in the second of two
  // sibling loops can be evaluated with the value the first one left behind.
  // That bit the copy version (15 of 24 edge cells collapsed onto one address)
  // and it bit this module too: the constant ADDRESS ARITHMETIC below
  // (`myaddr_mux[c] + nba_mux[c]`, i.e. `bank[<constant>]`) is only correct if
  // each loop's index is its own.
  genvar gv_sn, gv_dn, gv_se;
  genvar gv_c1, gv_c2, gv_c3, gv_c4, gv_c5, gv_c6, gv_c7, gv_c8, gv_c9;

  generate

    // =====================================================================
    // Node datapaths: NSLOT of them, one context per cycle
    // =====================================================================
    for (gv_sn = 0; gv_sn < NSLOT; gv_sn = gv_sn + 1) begin : g_slot
      // ================= how the per-context constants are read ==========
      // This is the one thing the merge changes about the datapath, and it has
      // to be written carefully.  The generated tables are UNPACKED INTEGER
      // arrays indexed by `CELL = slot*NCTX + slice`; the obvious translation is
      // to index them with `CELL = slot*NCTX + phase`, i.e. with a WIRE.  That
      // is functionally right but it makes Vivado build a full ROM with an
      // address decoder for EVERY read port -- measured: `surface d3 n=2`
      // (24 slots x 12 directions x ~6 tables) had not finished synthesising
      // after 25 minutes, while `rep d3 n=2` (tiny tables) took 4 minutes.
      //
      // So each read is written as a PACKED vector of the NCTX entries this slot
      // can present, selected by `phase`.  Every entry is an elaboration-time
      // constant (the loop indices are genvars), and the select is an NCTX-way
      // mux of constants -- which is what the hardware actually is.
      wire [NCTX-1:0]          nvalid_mux;
      wire [NCTX*(CW+5)-1:0]   iw_mux;
      wire [NCTX*SNOW_LAT_SIDW2-1:0] sidx_mux;
      wire [NCTX*AW-1:0]       aba_mux;
      wire [NCTX*SLW-1:0]      absl_mux;
      wire [NCTX*AW-1:0]       myaddr_mux;
      for (gv_c1 = 0; gv_c1 < NCTX; gv_c1 = gv_c1 + 1) begin : g_pick
        assign nvalid_mux[gv_c1] = SNOW_LAT_NODE_VALID_VEC[gv_sn*NCTX + gv_c1];
        assign iw_mux[gv_c1*(CW+5) +: (CW+5)] =
          SNOW_LAT_IDENT_VEC[gv_sn*NCTX + gv_c1];
        assign sidx_mux[gv_c1*SNOW_LAT_SIDW2 +: SNOW_LAT_SIDW2] =
          SNOW_LAT_SYNIDX_VEC[gv_sn*NCTX + gv_c1];
        assign aba_mux[gv_c1*AW +: AW] =
          SNOW_LAT_AB_A_VEC[gv_sn*NCTX + gv_c1];
        assign absl_mux[gv_c1*SLW +: SLW] =
          SNOW_LAT_AB_SL_VEC[gv_sn*NCTX + gv_c1];
        // Cell address = ((row * NSLOT) + slot) * NCTX + slice, row = the
        // slice's window base plus the slot's layout layer.  Identical to the
        // copy-version expression, with `phase` where the genvar used to be.
        assign myaddr_mux[gv_c1*AW +: AW] =
          ((SNOW_LAT_SLICEBASE_VEC[gv_c1] + SNOW_LAT_SLOTLAY_VEC[gv_sn]) * NSLOT
           + gv_sn) * NCTX + gv_c1;
      end

      wire          NVALID = nvalid_mux[phase];
      wire [CW+4:0] iw     = iw_mux[phase*(CW+5) +: (CW+5)];
      wire [SNOW_LAT_SIDW2-1:0] sidx = sidx_mux[phase*SNOW_LAT_SIDW2 +: SNOW_LAT_SIDW2];
      wire [AW-1:0] myaddr = myaddr_mux[phase*AW +: AW];
      wire [AW-1:0] ab_a   = aba_mux[phase*AW +: AW];
      wire [SLW-1:0] ab_sl = absl_mux[phase*SLW +: SLW];
      wire          run    = NVALID && any_run;
      wire          has_ab = iw[IO_ABOVE];

      assign slot_valid[gv_sn] = NVALID;

      // The cell's own state as of the START OF THIS STAGE is simply its bank
      // word: this datapath IS the cell of the phase running, so the
      // "has my slice committed yet?" comparison of the copy version is always
      // false here.
      wire [NDIR-1:0]    nb_valid, nb_active, nb_grown, nb_push, e_grown;
      wire [NDIR-1:0]    nb_mir;
      wire [NDIR*CW-1:0] nb_cid;
      wire [STW-1:0]     absrc;

      for (gv_dn = 0; gv_dn < NDIR; gv_dn = gv_dn + 1) begin : g_dir
        // per-direction per-context constants (see the note above)
        wire [NCTX*AW-1:0]  nba_mux;
        wire [NCTX*AW-1:0]  eba_mux;
        wire [NCTX*SLW-1:0] nsl_mux;
        wire [NCTX*SLW-1:0] nesl_mux;
        wire [NCTX*RVW-1:0] rvd_mux;
        wire [NCTX-1:0]     nbv_mux;
        for (gv_c2 = 0; gv_c2 < NCTX; gv_c2 = gv_c2 + 1) begin : g_pick
          assign nba_mux [gv_c2*AW  +: AW ] =
            SNOW_LAT_NB_A_VEC [(gv_sn*NCTX + gv_c2)*NDIR + gv_dn];
          assign eba_mux [gv_c2*AW  +: AW ] =
            SNOW_LAT_NB_E_VEC [(gv_sn*NCTX + gv_c2)*NDIR + gv_dn];
          assign nsl_mux [gv_c2*SLW +: SLW] =
            SNOW_LAT_NB_SL_VEC[(gv_sn*NCTX + gv_c2)*NDIR + gv_dn];
          assign nesl_mux[gv_c2*SLW +: SLW] =
            SNOW_LAT_NB_ESL_VEC[(gv_sn*NCTX + gv_c2)*NDIR + gv_dn];
          assign rvd_mux [gv_c2*RVW +: RVW] =
            SNOW_LAT_NB_RV_VEC[(gv_sn*NCTX + gv_c2)*NDIR + gv_dn];
          assign nbv_mux [gv_c2] =
            SNOW_LAT_NB_V_VEC [(gv_sn*NCTX + gv_c2)*NDIR + gv_dn];
        end
        wire [AW-1:0]  nba_r = nba_mux [phase*AW  +: AW ];
        wire [AW-1:0]  eba_r = eba_mux [phase*AW  +: AW ];
        wire [SLW-1:0] nsl   = nsl_mux [phase*SLW +: SLW];
        wire [SLW-1:0] nesl  = nesl_mux[phase*SLW +: SLW];
        wire [RVW-1:0] rvd   = rvd_mux [phase*RVW +: RVW];
        wire           nbv   = nbv_mux [phase];
        // ---- the BANK reads, made small on purpose -------------------------
        // Every port read follows the one rule: a source whose slice has already
        // committed in the pass running is read from its mirror (which holds the
        // value it left, i.e. the start of this pass), otherwise from its
        // register (see the header of snowflake_pe_array_lat.sv).
        //
        // The address must NOT be a wire.  For ONE value of `phase` both
        // `myaddr` and the port offsets are constants, so the cell this port
        // reads has at most NCTX possible REGISTER ADDRESSES -- one per
        // context.  Reading `bank[<wire address>]` instead tells Vivado nothing,
        // and it answers with a full memory mux per read port: on
        // `surface d3 n=2` (744 words x 576 read ports) that did not finish in
        // 25 minutes, while `rep d3 n=2` (216 words x 64 ports) took 14.
        // So each context's word is read at its own CONSTANT address into a
        // packed vector, and `phase` selects among them -- a 2-way mux of two
        // registers, which is what the hardware is.
        wire [NCTX*STW-1:0] nsrc_mux;
        wire [NCTX*STW-1:0] esrc_mux;
        // The address is TRUNCATED TO AW BITS before it indexes the bank: the
        // generator masks a negative port offset into AW bits (`_vec`), so the
        // intended arithmetic is mod 2**AW.  Widening it here makes an offset
        // like -2 into +254+... and the read lands outside the bank -- measured:
        // the two-pass push silently stopped working (T 3 m 1, node 4 defect 1
        // vs 0) and merging ran 8 commits instead of 6.
        for (gv_c3 = 0; gv_c3 < NCTX; gv_c3 = gv_c3 + 1) begin : g_read
          // constant source addresses: the cell's own address for this context
          // plus the port's constant offset, truncated to AW bits exactly as
          // the copy version's `wire [AW-1:0] nba` did (the generator masks a
          // negative offset into AW bits, so the arithmetic is mod 2**AW).
          localparam integer MYC =
            ((SNOW_LAT_SLICEBASE_VEC[gv_c3] + SNOW_LAT_SLOTLAY_VEC[gv_sn])
             * NSLOT + gv_sn) * NCTX + gv_c3;
          localparam integer NRA =
            (MYC + SNOW_LAT_NB_A_VEC[(gv_sn*NCTX + gv_c3)*NDIR + gv_dn]
             + ((SNOW_LAT_NB_SL_VEC[(gv_sn*NCTX + gv_c3)*NDIR + gv_dn] < gv_c3)
                ? NBM : 0)) & ((1 << AW) - 1);
          localparam integer ERA =
            (MYC + SNOW_LAT_NB_E_VEC[(gv_sn*NCTX + gv_c3)*NDIR + gv_dn]
             + ((SNOW_LAT_NB_ESL_VEC[(gv_sn*NCTX + gv_c3)*NDIR + gv_dn] < gv_c3)
                ? EBM : 0)) & ((1 << AW) - 1);
          assign nsrc_mux[gv_c3*STW +: STW] = bview[NRA*STW +: STW];
          assign esrc_mux[gv_c3*STW +: STW] = bview[ERA*STW +: STW];
        end
        wire [STW-1:0] nsrc = nsrc_mux[phase*STW +: STW];
        wire [STW-1:0] esrc = esrc_mux[phase*STW +: STW];

        assign nb_valid[gv_dn]        = nbv;
        assign nb_cid[gv_dn*CW +: CW] = nsrc[SO_CID +: CW];
        assign nb_active[gv_dn]       = nsrc[SO_ACT];
        assign nb_grown[gv_dn]        = nsrc[SO_GRW];
        // The defect push, from the neighbour's BANK: its committed decision
        // (`SO_PB`, which carries `!IS_BND` and `n_ptr != C`) ANDed with "its
        // pointer points back at me".  No live tap, and no `NB_C` table.
        assign nb_push[gv_dn] = nbv && nsrc[SO_PB]
                                && (nsrc[SO_PTR +: PW] == (rvd + 1'b1));
        assign nb_mir[gv_dn]  = (nsl < NCTX) && (nsl < phase);
        assign e_grown[gv_dn] = (esrc[1:0] == 2'd2);
      end
      assign slot_cross[gv_sn] = |nb_mir;

      // the DROP source, read the same way.  NOTE: the copy version indexed the
      // bank with the FULL-WIDTH expression here (it was never narrowed to a
      // wire), so this one is deliberately not truncated either -- the two must
      // agree bit for bit.
      wire [NCTX*STW-1:0] absrc_mux;
      for (gv_c4 = 0; gv_c4 < NCTX; gv_c4 = gv_c4 + 1) begin : g_abrd
        // the copy version indexed this one with the FULL-WIDTH expression (it
        // was never narrowed to a wire), so this one is deliberately not
        // truncated either -- the two must agree bit for bit.
        localparam integer MYC4 =
          ((SNOW_LAT_SLICEBASE_VEC[gv_c4] + SNOW_LAT_SLOTLAY_VEC[gv_sn])
           * NSLOT + gv_sn) * NCTX + gv_c4;
        localparam integer ARA =
          MYC4 + SNOW_LAT_AB_A_VEC[gv_sn*NCTX + gv_c4]
          + ((SNOW_LAT_AB_SL_VEC[gv_sn*NCTX + gv_c4] < gv_c4) ? NBM : 0);
        assign absrc_mux[gv_c4*STW +: STW] =
          iw_mux[gv_c4*(CW+5) + IO_ABOVE]
          ? bview[ARA*STW +: STW]
          : {STW{1'b0}};
      end
      assign absrc = absrc_mux[phase*STW +: STW];

      // the cell's own state word, read at a CONSTANT address per context --
      // the same rule as every other port.  `bank[myaddr]` with `myaddr` a wire
      // is an STW-wide mux over the WHOLE bank (744 words on `surface d3 n=2`)
      // once per node datapath, which is what kept that configuration from
      // finishing synthesis.
      // ---- this slot's OWN state: one register and one mirror per context.
      // Only this block writes them, and they are visible to nobody else as
      // registers -- that is the point (see the file header).
      reg [NCTX*STW-1:0] own;
      reg [NCTX*STW-1:0] omir;
      for (gv_c8 = 0; gv_c8 < NCTX; gv_c8 = gv_c8 + 1) begin : g_view
        if (SNOW_LAT_NODE_VALID_VEC[gv_sn*NCTX + gv_c8]) begin : g_v
          localparam integer AV =
            ((SNOW_LAT_SLICEBASE_VEC[gv_c8] + SNOW_LAT_SLOTLAY_VEC[gv_sn])
             * NSLOT + gv_sn) * NCTX + gv_c8;
          assign bview[AV*STW +: STW]              = own[gv_c8*STW +: STW];
          assign bview[(AV + NBM)*STW +: STW]      = omir[gv_c8*STW +: STW];
        end
      end

      wire [NCTX*STW-1:0] stin_mux;
      for (gv_c7 = 0; gv_c7 < NCTX; gv_c7 = gv_c7 + 1) begin : g_selfrd
        localparam integer MYC7 =
          ((SNOW_LAT_SLICEBASE_VEC[gv_c7] + SNOW_LAT_SLOTLAY_VEC[gv_sn])
           * NSLOT + gv_sn) * NCTX + gv_c7;
        assign stin_mux[gv_c7*STW +: STW] = bview[MYC7*STW +: STW];
      end

      snowflake_pe #(.ONE_ONE(ONE_ONE)) pe_i (
        .clk(clk), .reset(reset), .stage(stage),
        .syn_bit(syn_buf[sidx]),
        .ab_cid(absrc[SO_CID +: CW]), .ab_active(absrc[SO_ACT]),
        .ab_whole(absrc[SO_WHL]), .ab_defect(absrc[SO_DEF]),
        .ab_ptr(absrc[SO_PTR +: PW]),
        .e_grown(e_grown), .nb_valid(nb_valid), .nb_cid(nb_cid),
        .nb_active(nb_active), .nb_grown(nb_grown), .nb_push(nb_push),
        .m_pass(m_pass_w),
        .o_busy_c(slot_busy[gv_sn]), .o_pulse(slot_pulse[gv_sn]),
        .o_push(slot_push[gv_sn]), .zzz_never_used(1'b0),
        .p_id(iw[CW-1:0]), .p_has_above(iw[IO_ABOVE]), .p_is_bnd(iw[IO_BND]),
        .p_is_top(iw[IO_TOP]), .p_is_bot(iw[IO_BOT]), .p_is_syn(iw[IO_SYN]),
        .st_in(stin_mux[phase*STW +: STW]), .st_out(slot_nxt[gv_sn])
      );

      always @(posedge clk) begin
        if (reset) begin
          bshA[gv_sn] <= {NCTX{1'b0}};
          bshB[gv_sn] <= {NCTX{1'b0}};
`ifdef SNOW_BUSYREG
          bshP[gv_sn] <= {NCTX{1'b0}};
`endif
          // ALL NCTX contexts preset in this one cycle, each at its own
          // CONSTANT address (the same `myaddr_mux` the commit uses, with no
          // `phase` gate).  The bank's `initial` image covers a plain RTL run,
          // but `write_verilog -mode funcsim` DROPS initial values, so a
          // gate-level run would otherwise start with every state bit at 'x'
          // and never converge -- measured: the netlist testbench hit its
          // watchdog with an EMPTY trace.
          for (gi = 0; gi < NCTX; gi = gi + 1) begin
            if (SNOW_LAT_NODE_VALID_VEC[gv_sn*NCTX + gi]) begin
              own[gi*STW +: STW]  <= SNOW_LAT_PE_RST_VEC[gv_sn*NCTX + gi][STW-1:0];
              omir[gi*STW +: STW] <= SNOW_LAT_PE_RST_VEC[gv_sn*NCTX + gi][STW-1:0];
            end
          end
        end else begin
          // one shadow bit per cycle: this slot's own context
          if (any_run) begin
            if (!lat_bpass) bshA[gv_sn][phase] <= NVALID ? slot_busy[gv_sn] : 1'b0;
            else            bshB[gv_sn][phase] <= NVALID ? slot_busy[gv_sn] : 1'b0;
          end
`ifdef SNOW_BUSYREG
          // The round-boundary capture that makes `any_step_busy` pure registers.
          //
          // TIMING MATTERS: this must be sampled at the START of a merging
          // step's pass A (`mrg_running && !lat_bpass && !phase`), NOT at
          // `stage_last`.  At `stage_last` the LAST context's shadow bit is
          // landing on that very edge, so the captured row would mix this
          // round's answers with the previous round's -- measured: the FSM then
          // exits one step early in 5 of 12 rounds and the trace loses those
          // steps (report 6.34).  One cycle later every bit is in, so the row is
          // uniformly "the state at the end of the previous step".
          if (mrg_running && !lat_bpass && !phase)
            bshP[gv_sn] <= bshA[gv_sn] | bshB[gv_sn];
`endif
          // The commit addresses its word through an EXPLICIT per-context
          // branch with a CONSTANT address, not through the runtime wire
          // `myaddr`.  Vivado's multi-driven analysis works per word, and with
          // a variable address it cannot prove that this slot and its
          // neighbours touch disjoint words -- it then reports
          // `[Synth 8-6859] ... 2nd driver pin 'GND'` plus
          // `8-6858 constant driver PRESERVED, other driver ignored`, i.e. it
          // throws the flip-flop away.  Measured before this change: 50 such
          // sites on `bank_reg[*][*]` and a design that synthesised to
          // 203 LUT / 962 FF (and, with the whole-bank image, 1,647 / 9,634).
          // After unrolling, every address below is a constant.
          if (run) begin
            for (gi = 0; gi < NCTX; gi = gi + 1)
              if (phase == gi) begin
                omir[gi*STW +: STW] <= own[gi*STW +: STW];
                own[gi*STW +: STW]  <= slot_nxt[gv_sn];
              end
          end
        end
      end
    end

    // =====================================================================
    // Edge datapaths: ESLOT of them, one context per cycle
    // =====================================================================
    for (gv_se = 0; gv_se < ES; gv_se = gv_se + 1) begin : g_eslot
      // per-context constants, read the same way as the node side (see the note
      // at the top of g_slot)
      wire [NCTX-1:0]      evalid_mux, eabh_mux;
      wire [NCTX*AW-1:0]   eaddr_mux, enu_mux, env_mux, eaba_mux;
      wire [NCTX*RVW-1:0]  edu_mux, edv_mux;
      wire [NCTX*SLW-1:0]  esu_mux, esv_mux, eabs_mux;
      for (gv_c5 = 0; gv_c5 < NCTX; gv_c5 = gv_c5 + 1) begin : g_pick
        assign evalid_mux[gv_c5] = SNOW_LAT_EB_VALID_VEC[gv_se*NCTX + gv_c5];
        assign eabh_mux[gv_c5]   = SNOW_LAT_EB_ABH_VEC  [gv_se*NCTX + gv_c5];
        assign eaddr_mux[gv_c5*AW +: AW] =
          SNOW_LAT_EB_ADDR_VEC[gv_se*NCTX + gv_c5];
        assign enu_mux[gv_c5*AW +: AW] =
          SNOW_LAT_EB_NU_VEC[gv_se*NCTX + gv_c5];
        assign env_mux[gv_c5*AW +: AW] =
          SNOW_LAT_EB_NV_VEC[gv_se*NCTX + gv_c5];
        assign eaba_mux[gv_c5*AW +: AW] =
          SNOW_LAT_EB_ABA_VEC[gv_se*NCTX + gv_c5];
        assign edu_mux[gv_c5*RVW +: RVW] =
          SNOW_LAT_EB_DU_VEC[gv_se*NCTX + gv_c5];
        assign edv_mux[gv_c5*RVW +: RVW] =
          SNOW_LAT_EB_DV_VEC[gv_se*NCTX + gv_c5];
        assign esu_mux[gv_c5*SLW +: SLW] =
          SNOW_LAT_EB_SU_VEC[gv_se*NCTX + gv_c5];
        assign esv_mux[gv_c5*SLW +: SLW] =
          SNOW_LAT_EB_SV_VEC[gv_se*NCTX + gv_c5];
        assign eabs_mux[gv_c5*SLW +: SLW] =
          SNOW_LAT_EB_ABS_VEC[gv_se*NCTX + gv_c5];
      end

      wire           EVALID = evalid_mux[phase];
      wire           EABH   = eabh_mux[phase];
      wire [AW-1:0]  MYADDR = eaddr_mux[phase*AW +: AW];
      wire [AW-1:0]  ENU    = enu_mux[phase*AW +: AW];
      wire [AW-1:0]  ENV    = env_mux[phase*AW +: AW];
      wire [AW-1:0]  EABA   = eaba_mux[phase*AW +: AW];
      wire [RVW-1:0] DU     = edu_mux[phase*RVW +: RVW];
      wire [RVW-1:0] DV     = edv_mux[phase*RVW +: RVW];
      wire [SLW-1:0] SU     = esu_mux[phase*SLW +: SLW];
      wire [SLW-1:0] SV     = esv_mux[phase*SLW +: SLW];
      wire [SLW-1:0] EABS   = eabs_mux[phase*SLW +: SLW];
      wire           run    = EVALID && any_run && edge_en;

      // ---- the BANK reads, at a CONSTANT address per context --------------
      // Same reason as the node side: a wire address makes Vivado build a full
      // memory mux for every read port.  Each context is read at its own
      // constant address into a packed vector, and `phase` selects among them.
      wire [NCTX*3-1:0]   mst_mux;
      wire [NCTX*3-1:0]   abst_mux;
      wire [NCTX*STW-1:0] u_mux;
      wire [NCTX*STW-1:0] v_mux;
      for (gv_c6 = 0; gv_c6 < NCTX; gv_c6 = gv_c6 + 1) begin : g_eread
        localparam integer EAC = SNOW_LAT_EB_ADDR_VEC[gv_se*NCTX + gv_c6];
        localparam integer EABC =
          SNOW_LAT_EB_ABA_VEC[gv_se*NCTX + gv_c6]
          + ((SNOW_LAT_EB_ABS_VEC[gv_se*NCTX + gv_c6] < gv_c6) ? EBM : 0);
        localparam integer EUC =
          SNOW_LAT_EB_NU_VEC[gv_se*NCTX + gv_c6]
          + ((SNOW_LAT_EB_SU_VEC[gv_se*NCTX + gv_c6] < gv_c6) ? NBM : 0);
        localparam integer EVC =
          SNOW_LAT_EB_NV_VEC[gv_se*NCTX + gv_c6]
          + ((SNOW_LAT_EB_SV_VEC[gv_se*NCTX + gv_c6] < gv_c6) ? NBM : 0);
        // this datapath IS the cell of the phase running, so its own state is
        // the register, with no mirror select
        assign mst_mux[gv_c6*3 +: 3] = bview[EAC*STW +: 3];
        // the `above` edge's start-of-round state, with the same mirror rule
        // (a per-context select, not a generate-if: a cell may have an `above`
        // in one context and not in the next)
        assign abst_mux[gv_c6*3 +: 3] =
          eabh_mux[gv_c6] ? bview[EABC*STW +: 3] : 3'd0;
        assign u_mux[gv_c6*STW +: STW] = bview[EUC*STW +: STW];
        assign v_mux[gv_c6*STW +: STW] = bview[EVC*STW +: STW];
      end
      wire [2:0]     my_state = mst_mux[phase*3 +: 3];
      wire [2:0]     ab_state = abst_mux[phase*3 +: 3];
      wire [STW-1:0] uword    = u_mux[phase*STW +: STW];
      wire [STW-1:0] vword    = v_mux[phase*STW +: STW];

      // ---- flip requests: the endpoints' BANKED push decisions + pointers ----
      wire umir = uword[SO_PB] && (uword[SO_PTR +: PW] == (DU + 1'b1));
      wire vmir = vword[SO_PB] && (vword[SO_PTR +: PW] == (DV + 1'b1));

      // ---- growth pulses: RECOMPUTED from the endpoint's bank word ----
      // The copy version taps `cell_pulse[CU]`, a live datapath output, which a
      // merged array cannot address (CU is a runtime value now).  It does not
      // have to: the PE's pulse in GW/GH is a pure function of the endpoint's
      // start-of-round active/whole/grown --
      //     GW: ONE_ONE ? active : (active && whole)
      //     GH: active && !whole && !grown
      // -- and that is exactly the word already read above.  So this costs a
      // couple of gates instead of an ESLOT-way mux per endpoint.
      wire gw = (stage == ST_GW), gh = (stage == ST_GH);
      wire upulse = gw ? (ONE_ONE ? uword[SO_ACT]
                                  : (uword[SO_ACT] && uword[SO_WHL]))
                       : (gh ? (uword[SO_ACT] && !uword[SO_WHL] && !uword[SO_GRW])
                             : 1'b0);
      wire vpulse = gw ? (ONE_ONE ? vword[SO_ACT]
                                  : (vword[SO_ACT] && vword[SO_WHL]))
                       : (gh ? (vword[SO_ACT] && !vword[SO_WHL] && !vword[SO_GRW])
                             : 1'b0);

      snowflake_edge ed_i (
        .clk(clk), .reset(reset), .stage(stage),
        .u_pulse(upulse), .v_pulse(vpulse),
        .flip_u(umir), .flip_v(vmir),
        .above_growth(ab_state[1:0]), .above_ecorr(ab_state[2]),
        .st_in(my_state), .st_out(eslot_nxt[gv_se])
      );

      // this slot's OWN edge state (3 bits per context) + mirror, and the view
      reg [NCTX*3-1:0] eown;
      reg [NCTX*3-1:0] eomir;
      for (gv_c9 = 0; gv_c9 < NCTX; gv_c9 = gv_c9 + 1) begin : g_ev
        if (SNOW_LAT_EB_VALID_VEC[gv_se*NCTX + gv_c9]) begin : g_v
          localparam integer AEV = SNOW_LAT_EB_ADDR_VEC[gv_se*NCTX + gv_c9];
          assign bview[AEV*STW +: STW]        = {{(STW-3){1'b0}}, eown[gv_c9*3 +: 3]};
          assign bview[(AEV + EBM)*STW +: STW] = {{(STW-3){1'b0}}, eomir[gv_c9*3 +: 3]};
        end
      end

      always @(posedge clk) begin
        if (reset) begin
          // all contexts at their constant addresses (see the node side)
          for (gi = 0; gi < NCTX; gi = gi + 1) begin
            if (SNOW_LAT_EB_VALID_VEC[gv_se*NCTX + gi]) begin
              eown [gi*3 +: 3] <= 3'd0;
              eomir[gi*3 +: 3] <= 3'd0;
            end
          end
        end else if (run) begin
          // constant address per context, exactly as on the node side
          for (gi = 0; gi < NCTX; gi = gi + 1)
            if (phase == gi) begin
              eomir[gi*3 +: 3] <= eown[gi*3 +: 3];
              eown [gi*3 +: 3] <= eslot_nxt[gv_se];
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

  // ---------------- observation buses (register bank) ----------------
  genvar gv_on, gv_oe;
  generate
    for (gv_on = 0; gv_on < SNOW_NN; gv_on = gv_on + 1) begin : g_obs
      localparam integer ADR = SNOW_LAT_OBS_VEC[gv_on];
      assign obs_cid[gv_on*CW +: CW]  = bview[ADR*STW + SO_CID +: CW];
      assign obs_active[gv_on]        = bview[ADR*STW + SO_ACT];
      assign obs_whole[gv_on]         = bview[ADR*STW + SO_WHL];
      assign obs_defect[gv_on]        = bview[ADR*STW + SO_DEF];
      assign obs_ptr[gv_on*PW +: PW]  = bview[ADR*STW + SO_PTR +: PW];
      assign obs_grown[gv_on]         = bview[ADR*STW + SO_GRW];
      assign obs_unrooted[gv_on]      = bview[ADR*STW + SO_UNR];
      assign obs_busy[gv_on]          = bview[ADR*STW + SO_BUSY];
    end
    for (gv_oe = 0; gv_oe < SNOW_NE; gv_oe = gv_oe + 1) begin : g_edobs
      localparam integer EADR = SNOW_LAT_EB_OB_VEC[gv_oe];
      assign obs_growth[gv_oe*2 +: 2] = bview[EADR*STW +: 2];
      assign obs_ecorr[gv_oe]         = bview[EADR*STW + 2];
    end
  endgenerate

  // ---------------- stage controller (two-pass merging) ----------------
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

      // one latch per round; report at DROP
      if (!phase && any_run && (!mrg_running || !lat_bpass)) commit_hold <= commit_now;

      case (stage)
        ST_IDLE: if (start) begin
                   stage   <= ST_DROP;
                   step_cnt <= 8'd1;
                   syn_buf <= syndrome;
                 end
        ST_DROP: if (stage_last) begin stage <= ST_GW; step_cnt <= 8'd1; end
        ST_GW:   if (stage_last) begin stage <= ST_MW; step_cnt <= 8'd1; end
        ST_MW:   if (stage_last) begin
`ifdef SNOW_BUSYREG
`ifdef SNOW_BUSYREG_NOGUARD
                   // EXPERIMENT (report 6.34): the guard forces every pass to run
                   // at least two steps.  `bshP` after a grow stage is normally
                   // already busy, so the guard may be redundant -- and dropping
                   // it would halve the +8 cycles/round that BUSYREG costs.
                   if (!any_step_busy) begin
`else
                   // the shadow rows are one step stale (see g_quiesce), so the
                   // first step of the pass cannot be trusted -- same guard and
                   // same argument as snowflake_pe_array.sv's version
                   if (!any_step_busy && (step_cnt > 8'd1)) begin
`endif
`else
                   if (!any_step_busy) begin
`endif
                     if (ONE_ONE) begin
                       stage <= ST_IDLE; step_cnt <= 8'd0; done <= 1'b1;
                     end else begin
                       stage <= ST_GH; step_cnt <= 8'd1;
                     end
                   end else step_cnt <= step_cnt + 8'd1;
                 end
        ST_GH:   if (stage_last) begin stage <= ST_MH; step_cnt <= 8'd1; end
        ST_MH:   if (stage_last) begin
`ifdef SNOW_BUSYREG
`ifdef SNOW_BUSYREG_NOGUARD
                   if (!any_step_busy) begin
`else
                   if (!any_step_busy && (step_cnt > 8'd1)) begin
`endif
`else
                   if (!any_step_busy) begin
`endif
                     stage <= ST_IDLE; step_cnt <= 8'd0; done <= 1'b1;
                   end else step_cnt <= step_cnt + 8'd1;
                 end
        default: stage <= ST_IDLE;
      endcase

      if ((stage != ST_IDLE) && stage_last) begin
        dbg_stage <= stage;
        dbg_step  <= step_cnt;
`ifdef SNOW_BUSYREG
        // Suppress the one EXTRA exit clock that BUSYREG spends learning that
        // nothing is busy, so the trace stays line-identical to the golden (same
        // rule as `snowflake_pe_array.sv`).  The extra step is a provable no-op:
        // every busy flag is 0, so no state update can fire.
`ifdef SNOW_BUSYREG_NOSUPP
        dbg_valid <= 1'b1;   // DIAGNOSTIC ONLY: see what the FSM actually emits
`else
        dbg_valid <= !(((stage == ST_MW) || (stage == ST_MH)) && !all_busy
                       && (step_cnt > 8'd1));
`endif
`else
        dbg_valid <= 1'b1;
`endif
        if (stage == ST_DROP) commit_onehot <= commit_hold;
      end
    end
  end

endmodule
