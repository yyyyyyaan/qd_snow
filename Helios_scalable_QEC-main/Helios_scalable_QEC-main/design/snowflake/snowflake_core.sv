`timescale 1ns / 1ps
//======================================================================
// Snowflake decoder core (streaming / frugal) -- RTL port of the reference
// implementation "localuf" (github.com/timchan0/localuf, arXiv:2406.01701).
//
// Architecture follows the Helios approach: one element per decoding-graph
// node, one link per edge, a single global stage controller; every clock is
// one timestep of the reference model.
//
// The graph tables (nodes, edges, neighbour wiring, directions, drop
// relations, commit region, syndrome injection points) are NOT hard-coded:
// build_scripts/generate_snowflake.py exports them from localuf itself
// (repetition or surface code, any d) into design/generated/.
//
// ONE_ONE = 0 -> 2:1 growth schedule (Snowflake):
//                DROP -> GROW_WHOLE -> MERGING_WHOLE* -> GROW_HALF -> MERGING_HALF*
// ONE_ONE = 1 -> 1:1 growth schedule (baseline used for the comparison):
//                DROP -> GROW -> MERGING*
//======================================================================
`include "../generated/snowflake_graph.svh"

module snowflake_core #(
`ifdef SNOW_ONE_ONE
    parameter integer ONE_ONE = 1          // 0 = 2:1 (Snowflake), 1 = 1:1 baseline
`else
    parameter integer ONE_ONE = 0          // macro makes the choice stick in synthesis
`endif
`ifdef SNOW_NO_OBS
    , parameter integer DEBUG_OBS = 0       // 0 = no observation buses (area measurement)
`else
    , parameter integer DEBUG_OBS = 1
`endif
) (
    input  wire        clk,
    input  wire        reset,
    input  wire        start,                       // pulse: run one decoding cycle
    input  wire [SNOW_NSYN-1:0] syndrome,           // new-round defects (top-sheet detectors)
    output reg         done,                        // 1-cycle pulse: cycle finished
    output wire        all_busy,
    output reg  [SNOW_NCOMMIT-1:0] commit_onehot,   // commit-region edges corrected at last DROP
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

  localparam [2:0] ST_IDLE = 0, ST_DROP = 1, ST_GW = 2, ST_MW = 3, ST_GH = 4, ST_MH = 5;

  // pointer encoding: 0 = C (root), d+1 = direction d
  function automatic [SNOW_PTR_W-1:0] DIR2PTR(input integer d);
    DIR2PTR = d[SNOW_PTR_W-1:0] + 1'b1;
  endfunction
  function automatic integer PTR2DIR(input [SNOW_PTR_W-1:0] p);
    PTR2DIR = p - 1'b1;
  endfunction

  // ---------- state ----------
`ifdef SNOW_KEEP_STATE
  // Ablation builds only: without `keep`, Vivado prunes the whole state loop as
  // soon as the merging datapath is removed (nothing observable depends on it
  // in an out-of-context synthesis), which made the earlier ablation numbers
  // meaningless (6 LUT instead of a real area measurement).
  (* keep = "true" *) reg [CW-1:0]         cid      [0:NN-1];
  (* keep = "true" *) reg                  active   [0:NN-1];
  (* keep = "true" *) reg                  whole    [0:NN-1];
  (* keep = "true" *) reg                  defect   [0:NN-1];
  (* keep = "true" *) reg [SNOW_PTR_W-1:0] ptr      [0:NN-1];
  (* keep = "true" *) reg                  grown    [0:NN-1];
  (* keep = "true" *) reg                  unrooted [0:NN-1];
  (* keep = "true" *) reg                  busy     [0:NN-1];
  (* keep = "true" *) reg [1:0]            growth   [0:NE-1];
  (* keep = "true" *) reg                  ecorr    [0:NE-1];
`else
  reg [CW-1:0]         cid      [0:NN-1];
  reg                  active   [0:NN-1];
  reg                  whole    [0:NN-1];
  reg                  defect   [0:NN-1];
  reg [SNOW_PTR_W-1:0] ptr      [0:NN-1];
  reg                  grown    [0:NN-1];
  reg                  unrooted [0:NN-1];
  reg                  busy     [0:NN-1];
  reg [1:0]            growth   [0:NE-1];
  reg                  ecorr    [0:NE-1];
`endif

  // ---------- combinational next values ----------
  reg [CW-1:0]         c_cid      [0:NN-1];
  reg                  c_active   [0:NN-1];
  reg                  c_whole    [0:NN-1];
  reg                  c_defect   [0:NN-1];
  reg [SNOW_PTR_W-1:0] c_ptr      [0:NN-1];
  reg                  c_grown    [0:NN-1];
  reg                  c_unrooted [0:NN-1];
  reg                  c_busy     [0:NN-1];
  reg [1:0]            c_growth   [0:NE-1];
  reg                  c_ecorr    [0:NE-1];

  reg [2:0] stage;
  reg [7:0] step_cnt;

  integer n, d, m, e, e2, s;
  reg [SNOW_NW-1:0] nb;
  reg [SNOW_EW-1:0] eb;
  reg       det_def;
  reg [SNOW_NW-1:0] push_to  [0:NN-1];
  reg [SNOW_EW-1:0] push_dir [0:NN-1];
  // localised push bookkeeping (see the merging stage): a push may only travel
  // along a pointer, so it only ever reaches a direct neighbour.
  reg [SNOW_NW-1:0] push_target [0:NN-1];
  reg               has_push    [0:NN-1];
  reg               inc_def;
  reg               flip_u, flip_v;
  reg       grow_pulse [0:NN-1];
  reg [1:0] inc_sum;
  reg       any_c_busy;

  // `busy` is an unpacked array, so the OR reduction needs an explicit loop
  // (a reduction operator on an unpacked array is illegal in SystemVerilog).
  reg     all_busy_r;
  integer bi;
  always @(*) begin
    all_busy_r = 1'b0;
    for (bi = 0; bi < NN; bi = bi + 1) all_busy_r = all_busy_r | busy[bi];
  end
  assign all_busy = all_busy_r;

  genvar gi;
  generate
    if (DEBUG_OBS) begin : g_obs
      for (gi = 0; gi < NN; gi = gi + 1) begin : obs_nodes
        assign obs_cid[gi*CW +: CW]                 = cid[gi];
        assign obs_active[gi]                       = active[gi];
        assign obs_whole[gi]                        = whole[gi];
        assign obs_defect[gi]                       = defect[gi];
        assign obs_ptr[gi*SNOW_PTR_W +: SNOW_PTR_W] = ptr[gi];
        assign obs_grown[gi]                        = grown[gi];
        assign obs_unrooted[gi]                     = unrooted[gi];
        assign obs_busy[gi]                         = busy[gi];
      end
      for (gi = 0; gi < NE; gi = gi + 1) begin : obs_edges
        assign obs_growth[gi*2 +: 2] = growth[gi];
        assign obs_ecorr[gi]         = ecorr[gi];
      end
    end else begin : g_noobs
      // SNOW_NO_OBS: observation buses tied off.  They are pure debug plumbing
      // (a real design would time-multiplex them into a narrow debug port), so
      // the difference against the default build measures their area cost.
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

  // ================== combinational next-state ==================
  always @(*) begin
    for (n = 0; n < NN; n = n + 1) begin
      c_cid[n]      = cid[n];
      c_active[n]   = active[n];
      c_whole[n]    = whole[n];
      c_defect[n]   = defect[n];
      c_ptr[n]      = ptr[n];
      c_grown[n]    = grown[n];
      c_unrooted[n] = unrooted[n];
      c_busy[n]     = 1'b0;
      push_to[n]    = SNOW_NO_NODE;
      push_dir[n]   = SNOW_NO_EDGE;
      grow_pulse[n] = 1'b0;
    end
    for (e = 0; e < NE; e = e + 1) begin
      c_growth[e] = growth[e];
      c_ecorr[e]  = ecorr[e];
    end

    case (stage)

      // ---------------- DROP ----------------
      ST_DROP: begin
        for (n = 0; n < NN; n = n + 1) begin
          c_grown[n]    = 1'b0;                 // Friendship.drop()
          c_unrooted[n] = 1'b0;
          m = SNOW_NODE_BELOW(n);
          if (m != SNOW_NO_NODE) begin          // NodeFriendship.drop(): slide state down
            c_defect[m] = defect[n];
            c_active[m] = active[n];
            c_cid[m]    = (cid[n] == SNOW_RESET_CID) ? SNOW_RESET_CID
                                                     : (cid[n] + SNOW_CID_DELTA(cid[n]));
            c_ptr[m]    = ptr[n];
            c_whole[m]  = whole[n];
          end
          if (SNOW_IS_TOP(n)) begin             // TopSheetFriendship.drop()
            c_defect[n] = 1'b0;
            c_active[n] = 1'b0;
          end
        end
        for (s = 0; s < SNOW_NSYN; s = s + 1) begin    // _load(syndrome)
          m = SNOW_SYN_NODE(s);
          c_defect[m] = c_defect[m] ^ syndrome[s];
        end
        for (e = 0; e < NE; e = e + 1) begin            // edge contacts slide down
          e2 = SNOW_EDGE_ABOVE(e);
          if (e2 != SNOW_NO_EDGE) begin
            c_growth[e] = growth[e2];
            c_ecorr[e]  = ecorr[e2];
          end else begin
            c_growth[e] = 2'd0;                         // no edge above -> reset
            c_ecorr[e]  = 1'b0;
          end
        end
      end

      // ---------------- GROW (whole clusters for 2:1, all active for 1:1) ----
      ST_GW: begin
        for (n = 0; n < NN; n = n + 1) begin
          if (ONE_ONE ? active[n] : (active[n] && whole[n])) begin
            grow_pulse[n] = 1'b1;
            c_whole[n]    = ~whole[n];                  // _grow() flips whole
            // `grown` is only set by the 2:1 schedule's grow_whole()
            if (!ONE_ONE) c_grown[n] = 1'b1;
          end
          // find_broken_pointers(): localuf unroots a bottom-sheet node whose
          // pointer CONTAINS a 'D' (`'D' in node.pointer`).  Comparing against the
          // single constant SNOW_PTR_D is the same test only while 'D' is the ONLY
          // direction name containing a 'D' -- true for both phenomenological
          // graphs, false for every circuit-level one (report 6.32).  Same
          // one-line fix as snowflake_pe.sv:415 / snowflake_pe_array_lat1.sv.
          if (SNOW_IS_BOT(n) && SNOW_PTR_DOWN_MASK[ptr[n]]) begin  // find_broken_pointers()
            c_cid[n] = SNOW_RESET_CID;
            c_ptr[n] = SNOW_PTR_C;
          end
        end
        for (e = 0; e < NE; e = e + 1) begin
          if (growth[e] < 2'd2) begin
            inc_sum = {1'b0, grow_pulse[SNOW_EDGE_U(e)]} + {1'b0, grow_pulse[SNOW_EDGE_V(e)]};
            c_growth[e] = (growth[e] + inc_sum > 2) ? 2'd2 : (growth[e] + inc_sum);
          end
        end
      end

      // ---------------- GROW_HALF (2:1 only) ----------------
      ST_GH: begin
        for (n = 0; n < NN; n = n + 1) begin
          c_unrooted[n] = 1'b0;                 // Node.grow_half() resets unrooted
          if (active[n] && !whole[n] && !grown[n]) begin
            grow_pulse[n] = 1'b1;
            c_whole[n]    = 1'b1;
          end
        end
        for (e = 0; e < NE; e = e + 1) begin
          if (growth[e] < 2'd2) begin
            inc_sum = {1'b0, grow_pulse[SNOW_EDGE_U(e)]} + {1'b0, grow_pulse[SNOW_EDGE_V(e)]};
            c_growth[e] = (growth[e] + inc_sum > 2) ? 2'd2 : (growth[e] + inc_sum);
          end
        end
      end

      // ---------------- MERGING (whole / half) ----------------
      ST_MW, ST_MH: begin
`ifdef SNOW_ABLATE_MERGE
        // SNOW_ABLATE_MERGE: merging datapath deleted (one-cycle no-op).
        // Synthesis-only ablation build: the difference against the default
        // build is the area of the merging logic (flooding compares + pointer
        // update + syncing + push aggregation) -- exactly the combinational
        // part that context switching can share between logical lattices.
        for (n = 0; n < NN; n = n + 1) c_busy[n] = 1'b0;
`else
        // ---- flooding ----
        for (n = 0; n < NN; n = n + 1) begin
          if (cid[n] == SNOW_RESET_CID) begin               // finish unrooting
            c_busy[n]     = 1'b1;
            c_cid[n]      = n[CW-1:0];
            c_unrooted[n] = 1'b1;
          end else begin
            for (d = 0; d < NDIR; d = d + 1) begin
              eb = SNOW_EDGE_OF(n, d);
              nb = SNOW_NB(n, d);
              if ((eb != SNOW_NO_EDGE) && (nb != SNOW_NO_NODE) && (growth[eb] == 2'd2)) begin
                if (cid[nb] == SNOW_RESET_CID) begin
                  if (!unrooted[n]) begin                   // start unrooting self, then break
                    c_busy[n] = 1'b1;
                    c_cid[n]  = SNOW_RESET_CID;
                    c_ptr[n]  = SNOW_PTR_C;
                    break;                                  // synthesis-safe early exit
                  end else if ((stage == ST_MW) && grown[nb] && !c_grown[n]) begin
                    c_busy[n] = 1'b1;
                    c_grown[n] = 1'b1;
                  end
                end else begin
                  if (cid[nb] < c_cid[n]) begin             // _compare_cid
                    c_busy[n] = 1'b1;
                    c_ptr[n]  = DIR2PTR(d);
                    c_cid[n]  = cid[nb];
                  end
                  if ((stage == ST_MW) && grown[nb] && !c_grown[n]) begin   // _check_grown
                    c_busy[n] = 1'b1;
                    c_grown[n] = 1'b1;
                  end
                end
              end
            end
          end
        end
        // ---- syncing (fast merger: uses the pointer updated by flooding) ----
        for (n = 0; n < NN; n = n + 1) begin
          det_def = (!SNOW_IS_BND(n)) && defect[n];
          has_push[n]    = 1'b0;
          push_target[n] = SNOW_NO_NODE;
          push_dir[n]    = SNOW_NO_EDGE;
          if (c_ptr[n] == SNOW_PTR_C) begin
            c_active[n] = det_def;                          // root: active iff it holds a defect
          end else begin
            d  = PTR2DIR(c_ptr[n]);
            nb = SNOW_NB(n, d);
            c_active[n] = active[nb];
            if (det_def) begin                              // push defect along pointer
              c_busy[n]      = 1'b1;
              has_push[n]    = 1'b1;
              push_target[n] = nb;
              push_dir[n]    = SNOW_EDGE_OF(n, d);
            end
          end
          if (active[n] != c_active[n]) c_busy[n] = 1'b1;
        end
        // ---- apply defect pushes and correction flips, locally ----
        // Semantically identical to
        //     c_defect[push_to[n]] ^= 1; c_defect[n] ^= 1; c_ecorr[push_dir[n]] ^= 1
        // for every pushing node n, but written without any variable index on a
        // state array: a push can only travel along a pointer, so it can only
        // reach a direct neighbour, and an edge can only be flipped by one of
        // its two endpoints.  The original form synthesised into an N x N write
        // crossbar whose cost grows as O(N^2) and which dominated both the area
        // (43% of the surface d=5 build) and the critical path of the flat
        // design (cid -> compare -> pointer -> push -> defect, 52% of it route).
        for (n = 0; n < NN; n = n + 1) begin
          inc_def = 1'b0;
          for (d = 0; d < NDIR; d = d + 1) begin
            m = SNOW_NB(n, d);
            if ((m != SNOW_NO_NODE) && has_push[m] && (push_target[m] == n))
              inc_def = inc_def ^ 1'b1;                     // two pushes cancel
          end
          if (inc_def) begin
            c_defect[n] = c_defect[n] ^ 1'b1;
            c_busy[n]   = 1'b1;
          end
          if (has_push[n]) c_defect[n] = c_defect[n] ^ 1'b1;
        end
        for (e = 0; e < NE; e = e + 1) begin
          flip_u = 1'b0;
          flip_v = 1'b0;
          m = SNOW_EDGE_U(e);
          if ((m != SNOW_NO_NODE) && has_push[m] && (push_dir[m] == e)) flip_u = 1'b1;
          m = SNOW_EDGE_V(e);
          if ((m != SNOW_NO_NODE) && has_push[m] && (push_dir[m] == e)) flip_v = 1'b1;
          if (flip_u ^ flip_v) c_ecorr[e] = c_ecorr[e] ^ 1'b1;
        end
`endif // SNOW_ABLATE_MERGE
      end

      default: ;
    endcase

    any_c_busy = 1'b0;
    for (n = 0; n < NN; n = n + 1) any_c_busy = any_c_busy | c_busy[n];
  end

  // ================== controller + state update ==================
  always @(posedge clk) begin
    if (reset) begin
      for (n = 0; n < NN; n = n + 1) begin
        cid[n]      <= n[CW-1:0];
        active[n]   <= 1'b0;
        whole[n]    <= 1'b1;
        defect[n]   <= 1'b0;
        ptr[n]      <= SNOW_PTR_C;
        grown[n]    <= 1'b0;
        unrooted[n] <= 1'b0;
        busy[n]     <= 1'b0;
      end
      for (e = 0; e < NE; e = e + 1) begin
        growth[e] <= 2'd0;
        ecorr[e]  <= 1'b0;
      end
      stage <= ST_IDLE;
      step_cnt <= 8'd0;
      done <= 1'b0;
      dbg_stage <= ST_IDLE;
      dbg_step <= 8'd0;
      dbg_valid <= 1'b0;
      commit_onehot <= {SNOW_NCOMMIT{1'b0}};
    end else begin
      done <= 1'b0;
      dbg_valid <= 1'b0;
      commit_onehot <= {SNOW_NCOMMIT{1'b0}};

      case (stage)
        ST_IDLE: if (start) begin stage <= ST_DROP; step_cnt <= 8'd1; end
        ST_DROP: begin stage <= ST_GW; step_cnt <= 8'd1; end
        ST_GW:   begin stage <= ST_MW; step_cnt <= 8'd1; end
`ifdef SNOW_BUSYREG
        // V2d: the quiescence check feeds the FSM clock enable and, in the
        // flat build, its OR reduction over all nodes is the new critical path
        // (report: cid -> ... -> stage_reg/CE, 26 levels, 57% of it routing).
        // The per-node busy flags are already registers, so all_busy (= OR of
        // them) is a pure FF -> OR-tree -> CE path with no deep logic in front
        // of it.  `step_cnt > 1` is needed because on the first merging cycle
        // those flags still come from the previous stage (nothing busy there).
        // Cost: exactly one extra clock per merging phase; that clock provably
        // changes nothing (no node updates when nothing is busy), so it is
        // hidden from the trace by the dbg_valid rule below.
        ST_MW:   begin
                   if (!all_busy && (step_cnt > 8'd1)) begin
                     if (ONE_ONE) begin
                       stage <= ST_IDLE; step_cnt <= 8'd0; done <= 1'b1;
                     end else begin
                       stage <= ST_GH; step_cnt <= 8'd1;
                     end
                   end else step_cnt <= step_cnt + 8'd1;
                 end
        ST_GH:   begin stage <= ST_MH; step_cnt <= 8'd1; end
        ST_MH:   begin
                   if (!all_busy && (step_cnt > 8'd1)) begin
                     stage <= ST_IDLE; step_cnt <= 8'd0; done <= 1'b1;
                   end else step_cnt <= step_cnt + 8'd1;
                 end
`else
        ST_MW:   begin
                   if (!any_c_busy) begin
                     if (ONE_ONE) begin                 // 1:1 -> cycle ends after merging
                       stage <= ST_IDLE; step_cnt <= 8'd0; done <= 1'b1;
                     end else begin
                       stage <= ST_GH; step_cnt <= 8'd1;
                     end
                   end else step_cnt <= step_cnt + 8'd1;
                 end
        ST_GH:   begin stage <= ST_MH; step_cnt <= 8'd1; end
        ST_MH:   begin
                   if (!any_c_busy) begin
                     stage <= ST_IDLE; step_cnt <= 8'd0; done <= 1'b1;
                   end else step_cnt <= step_cnt + 8'd1;
                 end
`endif
        default: stage <= ST_IDLE;
      endcase

      if (stage != ST_IDLE) begin
        for (n = 0; n < NN; n = n + 1) begin
          cid[n]      <= c_cid[n];
          active[n]   <= c_active[n];
          whole[n]    <= c_whole[n];
          defect[n]   <= c_defect[n];
          ptr[n]      <= c_ptr[n];
          grown[n]    <= c_grown[n];
          unrooted[n] <= c_unrooted[n];
          busy[n]     <= c_busy[n];
        end
        for (e = 0; e < NE; e = e + 1) begin
          growth[e] <= c_growth[e];
          ecorr[e]  <= c_ecorr[e];
        end
        dbg_stage <= stage;
        dbg_step  <= step_cnt;
`ifdef SNOW_BUSYREG
        // suppress the extra exit clock so the trace stays line-identical to
        // the localuf golden trace
        dbg_valid <= !(((stage == ST_MW) || (stage == ST_MH)) && !all_busy
                       && (step_cnt > 8'd1));
`else
        dbg_valid <= 1'b1;
`endif
        if (stage == ST_DROP) begin
          for (e = 0; e < NE; e = e + 1)
            if (SNOW_IS_COMMIT(e) && ecorr[e]) commit_onehot[SNOW_COMMIT_IDX(e)] <= 1'b1;
        end
      end
    end
  end

endmodule
