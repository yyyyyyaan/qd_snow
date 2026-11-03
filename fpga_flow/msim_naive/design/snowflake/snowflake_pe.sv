`timescale 1ns / 1ps
//=============================================================================
// snowflake_pe.sv -- one processing element (one decoding-graph NODE) of the
// PE-array Snowflake decoder.
//
// This is the per-node part of snowflake_core.sv moved behind a module
// boundary, with two structural changes that the flat version cannot express:
//
//   * the DROP step PULLS the state from the node above instead of writing
//     into the node below (a PE cannot write another PE's registers), which is
//     why the generator exports SNOW_NODE_ABOVE;
//   * every neighbour interaction is an explicit port: cluster id, grown,
//     active, "the neighbour pushes toward me", and the edge's grown state.
//     Nothing reaches across the array except through these wires, so all
//     state is local to the PE -- the property that makes context switching
//     cheap later (a context becomes an address bit on local RAM).
//
// Stage semantics are copied from the flat core, which is verified line by line
// against the localuf reference; the array is expected to reproduce that trace
// exactly.
//=============================================================================
`include "../generated/snowflake_graph.svh"

module snowflake_pe #(
    parameter integer ONE_ONE   = 0,
    parameter integer ID        = 0,
    parameter integer HAS_ABOVE = 0,
    parameter integer IS_BND    = 0,
    parameter integer IS_TOP    = 0,
    parameter integer IS_BOT    = 0,
    parameter integer SYN_IDX   = -1       // -1 = this node is not a syndrome node
) (
    input  wire        clk,
    input  wire        reset,
    input  wire [2:0]  stage,
    input  wire        syn_bit,
    // state of the node above (DROP pulls from here)
    input  wire [SNOW_CID_W-1:0]   ab_cid,
    input  wire                    ab_active,
    input  wire                    ab_whole,
    input  wire                    ab_defect,
    input  wire [SNOW_PTR_W-1:0]   ab_ptr,
    // per-direction neighbours and edges
    input  wire [SNOW_NDIR-1:0]                  e_grown,   // edge fully grown (growth == 2)
    input  wire [SNOW_NDIR-1:0]                  nb_valid,  // neighbour exists
    input  wire [SNOW_NDIR*SNOW_CID_W-1:0]       nb_cid,
    input  wire [SNOW_NDIR-1:0]                  nb_active,
    input  wire [SNOW_NDIR-1:0]                  nb_grown,
    input  wire [SNOW_NDIR-1:0]                  nb_push,   // neighbour pushes toward me
    // observable state (to neighbours, edges and the debug buses)
    output wire [SNOW_CID_W-1:0]   o_cid,
    output wire                    o_active,
    output wire                    o_whole,
    output wire                    o_defect,
    output wire [SNOW_PTR_W-1:0]   o_ptr,
    output wire                    o_grown,
    output wire                    o_unrooted,
    output wire                    o_busy,      // registered: "changed last step"
    output wire                    o_busy_c,    // combinational: "will change this step"
    output wire                    o_pulse,     // grows its half of every incident edge
    output wire [SNOW_NDIR-1:0]    o_push      // pushes across this direction
`ifdef SNOW_SLICED
    // next-state view for the seam D-shadows (snowflake-n prototype, report
    // 6.16): a posedge register sampling o_n_* always equals the state
    // register, so a consumer across the seam sees the value for the WHOLE
    // cycle.  Only the three fields the seam needs are exposed.
    , output wire [SNOW_CID_W-1:0] o_n_cid
    , output wire                  o_n_active
    , output wire                  o_n_grown
`endif
);

  localparam [2:0] ST_IDLE = 3'd0, ST_DROP = 3'd1, ST_GW = 3'd2,
                   ST_MW   = 3'd3, ST_GH   = 3'd4, ST_MH = 3'd5;

  // ---------- state (all local to this node) ----------
  reg [SNOW_CID_W-1:0] cid;
  reg                  active, whole, defect, grown, unrooted, busy;
  reg [SNOW_PTR_W-1:0] ptr;

  assign o_cid      = cid;
  assign o_active   = active;
  assign o_whole    = whole;
  assign o_defect   = defect;
  assign o_ptr      = ptr;
  assign o_grown    = grown;
  assign o_unrooted = unrooted;
  assign o_busy     = busy;

  // ---------- combinational next state ----------
  reg [SNOW_CID_W-1:0] n_cid;
  reg                  n_active, n_whole, n_defect, n_grown, n_unrooted, busy_c;
  reg [SNOW_PTR_W-1:0] n_ptr;
  reg [SNOW_NDIR-1:0]  push;
  reg                  pulse;
  reg [SNOW_CID_W-1:0] best_cid;
  reg [SNOW_NDIR-1:0]  best_dir;
  reg                  best_found;
  integer              best_d;
  reg                  det_def, inc_def;
  integer              d;

`ifdef SNOW_MINTREE
  // ---- balanced argmin tree workspace (see the ST_MW/ST_MH case) ----
  // Element 0 is self, elements 1..SNOW_NDIR are the directions; the tree is a
  // plain pairwise reduction with strict "<" so that the LEFT (lower) index
  // survives ties -- which reproduces the serial scan's rule "self wins ties,
  // then the lowest direction index".
  reg [SNOW_CID_W-1:0] mt_v [0:SNOW_NDIR];
  reg [3:0]            mt_i [0:SNOW_NDIR];
  reg [SNOW_NDIR-1:0]  mt_rst;
  reg [3:0]            mt_first;
  reg                  mt_take_rst;
  integer              mt_s, mt_k, mt_pe;
`endif

  function automatic [SNOW_PTR_W-1:0] DIR2PTR(input integer dd);
    DIR2PTR = dd[SNOW_PTR_W-1:0] + 1'b1;
  endfunction

  always @(*) begin
    n_cid      = cid;
    n_active   = active;
    n_whole    = whole;
    n_defect   = defect;
    n_ptr      = ptr;
    n_grown    = grown;
    n_unrooted = unrooted;
    busy_c     = 1'b0;
    push       = {SNOW_NDIR{1'b0}};
    pulse      = 1'b0;

    case (stage)

      // ---------------- DROP: pull the state from above ----------------
      ST_DROP: begin
        n_grown    = 1'b0;
        n_unrooted = 1'b0;
        if (HAS_ABOVE) begin
          n_cid    = (ab_cid == SNOW_RESET_CID) ? SNOW_RESET_CID
                                                : (ab_cid + SNOW_CID_DELTA(ab_cid));
          n_active = ab_active;
          n_whole  = ab_whole;
          n_defect = ab_defect;
          n_ptr    = ab_ptr;
        end
        if (IS_TOP) begin
          n_defect = 1'b0;
          n_active = 1'b0;
        end
        if (SYN_IDX >= 0) n_defect = n_defect ^ syn_bit;
      end

      // ---------------- GROW (whole clusters for 2:1, all active for 1:1) --
      ST_GW: begin
        if (IS_BOT && (ptr == SNOW_PTR_D)) begin      // find_broken_pointers()
          n_cid = SNOW_RESET_CID;
          n_ptr = SNOW_PTR_C;
        end
        if (ONE_ONE ? active : (active && whole)) begin
          pulse   = 1'b1;
          n_whole = ~whole;                           // _grow() flips whole
          if (!ONE_ONE) n_grown = 1'b1;               // only 2:1 sets grown
        end
      end

      // ---------------- GROW_HALF (2:1 only) ----------------
      ST_GH: begin
        n_unrooted = 1'b0;
        if (active && !whole && !grown) begin
          pulse   = 1'b1;
          n_whole = 1'b1;
        end
      end

      // ---------------- MERGING (whole / half) ----------------
      ST_MW, ST_MH: begin
        // ---- flooding ----
        if (cid == SNOW_RESET_CID) begin               // finish unrooting
          busy_c     = 1'b1;
          n_cid      = ID[SNOW_CID_W-1:0];
          n_unrooted = 1'b1;
        end else begin
`ifdef SNOW_MINTREE
          // ---- balanced argmin tree, exactly equivalent to the serial scan ----
          // The serial loop compares against a RUNNING best, so synthesis builds
          // a 12-deep chain of CID_W-bit comparators -- and that chain is the d7
          // post-route critical path (report 6.14: cid_reg -> compare chain ->
          // busy_c).  This version computes the same result on a log-depth tree.
          //
          // Semantics reproduced exactly, including one quirk: if (!unrooted) and
          // a grown neighbour holds RESET_CID, the serial loop BREAKS at the
          // first such direction, so only directions d < first_rst are examined;
          // the n_cid=RESET assignment made there is then OVERWRITTEN by the
          // post-loop `if (best_found)` whenever an earlier direction already
          // improved.  The lasting effects are busy_c=1 and the truncation.
          mt_rst = {SNOW_NDIR{1'b0}};
          for (d = 0; d < SNOW_NDIR; d = d + 1)
            if (nb_valid[d] && e_grown[d] &&
                (nb_cid[d*SNOW_CID_W +: SNOW_CID_W] == SNOW_RESET_CID))
              mt_rst[d] = 1'b1;
          mt_take_rst = (!unrooted) && (|mt_rst);
          mt_first    = 4'd15;                       // "none"
          for (d = SNOW_NDIR-1; d >= 0; d = d - 1)   // priority encode: lowest d
            if (mt_rst[d]) mt_first = d;
          mt_pe = mt_take_rst ? mt_first : SNOW_NDIR;

          for (mt_k = 0; mt_k <= SNOW_NDIR; mt_k = mt_k + 1) begin
            if (mt_k == 0) begin
              mt_v[0] = cid;                         // self
              mt_i[0] = SNOW_NDIR;
            end else if (((mt_k - 1) < mt_pe) && nb_valid[mt_k-1] && e_grown[mt_k-1] &&
                         (nb_cid[(mt_k-1)*SNOW_CID_W +: SNOW_CID_W] != SNOW_RESET_CID)) begin
              mt_v[mt_k] = nb_cid[(mt_k-1)*SNOW_CID_W +: SNOW_CID_W];
              mt_i[mt_k] = (mt_k - 1);
            end else begin
              mt_v[mt_k] = {SNOW_CID_W{1'b1}};       // masked out: never wins
              mt_i[mt_k] = SNOW_NDIR;
            end
          end
          for (mt_s = 1; mt_s <= SNOW_NDIR; mt_s = mt_s * 2)
            for (mt_k = 0; mt_k + mt_s <= SNOW_NDIR; mt_k = mt_k + 2*mt_s)
              if (mt_v[mt_k + mt_s] < mt_v[mt_k]) begin
                mt_v[mt_k] = mt_v[mt_k + mt_s];
                mt_i[mt_k] = mt_i[mt_k + mt_s];
              end

          best_cid   = mt_v[0];
          best_found = (best_cid < cid);
          best_d     = mt_i[0];
          if (best_found) begin
            // the serial loop sets busy_c on EVERY improvement; the equivalent
            // condition is exactly "min candidate < own cid", so this single
            // assignment reproduces it (and the PE must not report idle while
            // it changes cid/ptr, or the stage would advance early)
            busy_c = 1'b1;
            n_cid  = best_cid;
            n_ptr  = DIR2PTR(best_d);
          end
          if (mt_take_rst) begin
            // the serial loop's RESET assignment, then the post-loop overwrite
            busy_c = 1'b1;
            n_cid  = best_found ? best_cid : SNOW_RESET_CID;
            n_ptr  = best_found ? DIR2PTR(best_d) : SNOW_PTR_C;
          end
          // n_grown: inside the examined prefix the rule is uniform (the break
          // point itself is excluded from the prefix), so a plain OR suffices
          if (stage == ST_MW)
            for (d = 0; d < SNOW_NDIR; d = d + 1)
              if ((d < mt_pe) && nb_valid[d] && e_grown[d] && nb_grown[d] && !n_grown) begin
                busy_c  = 1'b1;
                n_grown = 1'b1;
              end
`else
          best_cid   = cid;
          best_d     = 0;
          best_found = 1'b0;
          for (d = 0; d < SNOW_NDIR; d = d + 1) begin
            if (nb_valid[d] && e_grown[d]) begin
              if (nb_cid[d*SNOW_CID_W +: SNOW_CID_W] == SNOW_RESET_CID) begin
                if (!unrooted) begin                   // start unrooting self
                  busy_c = 1'b1;
                  n_cid  = SNOW_RESET_CID;
                  n_ptr  = SNOW_PTR_C;
                  break;
                end else if ((stage == ST_MW) && nb_grown[d] && !n_grown) begin
                  busy_c  = 1'b1;
                  n_grown = 1'b1;
                end
              end else begin
`ifdef SNOW_ABL_MIN
                // Synthesis-only ablation (never simulated): keep the whole
                // merging path -- the reset/unroot handling, n_grown, busy_c --
                // but drop the minimum search itself, i.e. the CID comparators
                // and the best_cid/best_d multiplexers.  The difference against
                // the SNOW_KEEP_STATE baseline is the cost of the min tree.
                // (The d7 critical path runs through exactly this chain:
                //  cid_reg -> compare -> busy_c -> global OR -> stage_reg/CE.)
`else
                if (nb_cid[d*SNOW_CID_W +: SNOW_CID_W] < best_cid) begin
                  busy_c     = 1'b1;
                  best_cid   = nb_cid[d*SNOW_CID_W +: SNOW_CID_W];
                  best_d     = d;
                  best_found = 1'b1;
                end
`endif
                if ((stage == ST_MW) && nb_grown[d] && !n_grown) begin
                  busy_c  = 1'b1;
                  n_grown = 1'b1;
                end
              end
            end
          end
          if (best_found) begin
            n_ptr = DIR2PTR(best_d);
            n_cid = best_cid;
          end
`endif
        end

        // ---- syncing (uses the pointer produced by flooding) ----
        det_def = (!IS_BND) && defect;
        if (n_ptr == SNOW_PTR_C) begin
          n_active = det_def;                          // root: active iff it holds a defect
        end else begin
          d = n_ptr - 1'b1;
          n_active = nb_active[d];
          if (det_def) begin                           // push defect along pointer
            busy_c   = 1'b1;
            push[d]  = 1'b1;
          end
        end
        if (active != n_active) busy_c = 1'b1;

        // ---- apply incoming pushes locally ----
        inc_def = 1'b0;
        for (d = 0; d < SNOW_NDIR; d = d + 1)
          if (nb_valid[d] && nb_push[d]) inc_def = inc_def ^ 1'b1;   // two pushes cancel
        if (inc_def) begin
          n_defect = n_defect ^ 1'b1;
          busy_c   = 1'b1;
        end
        if (|push) n_defect = n_defect ^ 1'b1;
      end

      default: ;
    endcase
  end

  assign o_busy_c = busy_c;
  assign o_pulse  = pulse;
  assign o_push   = push;
`ifdef SNOW_SLICED
  assign o_n_cid    = n_cid;
  assign o_n_active = n_active;
  assign o_n_grown  = n_grown;
`endif

  // ---------- state update ----------
  always @(posedge clk) begin
    if (reset) begin
      cid      <= ID[SNOW_CID_W-1:0];
      active   <= 1'b0;
      whole    <= 1'b1;
      defect   <= 1'b0;
      ptr      <= SNOW_PTR_C;
      grown    <= 1'b0;
      unrooted <= 1'b0;
      busy     <= 1'b0;
    end else if (stage != ST_IDLE) begin
      cid      <= n_cid;
      active   <= n_active;
      whole    <= n_whole;
      defect   <= n_defect;
      ptr      <= n_ptr;
      grown    <= n_grown;
      unrooted <= n_unrooted;
      busy     <= busy_c;
    end
  end

endmodule
