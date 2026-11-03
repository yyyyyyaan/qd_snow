"""Build the 2-context context-switching prototype from the verified core.

    python fpga_flow/make_ctx2.py

Reads  design/snowflake/snowflake_core.sv   (single-context, verified)
Writes design/snowflake/snowflake_core_ctx2.sv

What changes (and why this is a mechanical rewrite rather than new logic):

  * every state array gets a second copy, indexed as  ctx*NN + n  (ctx*NE + e
    for edge state); the datapath itself is untouched and is time-shared, so
    the combinational logic exists once instead of NCTX times -- that is the
    whole point of context switching (Helios-n does the same with a LUTRAM
    state per PE);
  * the combinational always block only READS state, so those reads are
    renamed to per-context "current view" wires (cid_cur etc.), which are the
    only place the context multiplexer appears;
  * the sequential block writes into the selected context;
  * the stage FSM, step counter, done flag and commit vector become
    per-context registers, plus a small arbiter that advances one ready
    context per clock (coarse round robin: a context runs its round to
    completion, then the next ready context gets the datapath).

Everything else (stage semantics, merging logic, marking of debug validity)
is copied verbatim so the per-context behaviour is identical to the
single-context core, which is exactly what the regression checks.
"""
import os
import re

HERE = os.path.dirname(os.path.abspath(__file__))
REPO = os.path.normpath(os.path.join(HERE, "..", "Helios_scalable_QEC-main", "Helios_scalable_QEC-main"))
SRC = os.path.join(REPO, "design", "snowflake", "snowflake_core.sv")
DST = os.path.join(REPO, "design", "snowflake", "snowflake_core_ctx2.sv")

NODE = ["cid", "active", "whole", "defect", "ptr", "grown", "unrooted", "busy"]
EDGE = ["growth", "ecorr"]


def main():
    txt = open(SRC, encoding="utf-8", errors="ignore").read().replace("\r\n", "\n")

    # ---- module name / header ------------------------------------------
    txt = txt.replace("module snowflake_core #(", "module snowflake_core_ctx2 #(")
    txt = txt.replace("""`ifdef SNOW_NO_OBS
    , parameter integer DEBUG_OBS = 0       // 0 = no observation buses (area measurement)
`else
    , parameter integer DEBUG_OBS = 1
`endif
) (""", """`ifdef SNOW_NO_OBS
    , parameter integer DEBUG_OBS = 0       // 0 = no observation buses (area measurement)
`else
    , parameter integer DEBUG_OBS = 1
`endif
`ifdef SNOW_CTX1
    , parameter integer NCTX = 1            // area anchor: same RTL, one context
`else
    , parameter integer NCTX = 2            // number of time-multiplexed contexts
`endif
) (""")
    # ---- ports ---------------------------------------------------------
    txt = txt.replace("""    input  wire        clk,
    input  wire        reset,
    input  wire        start,                       // pulse: run one decoding cycle
    input  wire [SNOW_NSYN-1:0] syndrome,           // new-round defects (top-sheet detectors)
    output reg         done,                        // 1-cycle pulse: cycle finished""",
"""    input  wire        clk,
    input  wire        reset,
    input  wire [NCTX-1:0] start,                   // per-context: run one decoding cycle
    input  wire [NCTX*SNOW_NSYN-1:0] syndrome,      // per-context new-round defects
    output reg  [NCTX-1:0] done,                    // per-context: cycle finished""")
    txt = txt.replace("    output reg  [SNOW_NCOMMIT-1:0] commit_onehot,   // commit-region edges corrected at last DROP",
                      "    output reg  [NCTX*SNOW_NCOMMIT-1:0] commit_onehot,  // per-context commit vectors")

    # ---- state arrays: one copy per context ----------------------------
    txt = txt.replace("  reg [CW-1:0]         cid      [0:NN-1];",
                      "  reg [CW-1:0]         cid      [0:NCTX*NN-1];")
    # ptr has a packed range too, so it needs its own replacement: with the
    # plain "reg <name> [0:NN-1];" pattern below it stayed NN deep and the
    # second context read out of range (x) -- that was the bug that made the
    # first NCTX=2 prototype diverge.
    txt = txt.replace("  reg [SNOW_PTR_W-1:0] ptr      [0:NN-1];",
                      "  reg [SNOW_PTR_W-1:0] ptr      [0:NCTX*NN-1];")
    for nm in NODE[1:]:
        txt = txt.replace("  reg                  %-8s [0:NN-1];" % nm,
                          "  reg                  %-8s [0:NCTX*NN-1];" % nm)
    txt = txt.replace("  reg [1:0]            growth   [0:NE-1];",
                      "  reg [1:0]            growth   [0:NCTX*NE-1];")
    txt = txt.replace("  reg                  ecorr    [0:NE-1];",
                      "  reg                  ecorr    [0:NCTX*NE-1];")

    # ---- per-context control state -------------------------------------
    txt = txt.replace("""  reg [2:0] stage;
  reg [7:0] step_cnt;""",
"""  reg [2:0] stage     [0:NCTX-1];
  reg [7:0] step_cnt  [0:NCTX-1];
  reg       run       [0:NCTX-1];      // context has work (started, not done)
  reg [CTXW-1:0] ctx_sel;              // context owning the datapath this cycle
  reg [CTXW-1:0] dbg_ctx_r;            // registered copy, aligned with dbg_valid
  reg [CTXW-1:0] hold;                 // context kept one drain cycle after done
  reg            hold_valid;
  integer        ctx_scan;             // must NOT be CTXW wide: a 1-bit counter
                                       // never reaches NCTX and the arbiter loop
                                       // would spin forever in zero time
  reg            ctx_found;""")

    # localparam for the context index width (clog2 for NCTX=1 is 0 -> clamp)
    txt = txt.replace("  localparam integer NDIR = SNOW_NDIR;",
"""  localparam integer NDIR = SNOW_NDIR;
  localparam integer CTXW = (NCTX > 1) ? $clog2(NCTX) : 1;""")

    # ---- current-context views (this is the only context multiplexer) ---
    txt = txt.replace("    output reg  [2:0]  dbg_stage,",
                      "    output wire [$clog2(NCTX)-1:0] dbg_ctx,   // context owning the datapath\n"
                      "    output reg  [2:0]  dbg_stage,")
    txt = txt.replace("  // ---- current-context views of the state (the context mux) ----",
                      "  assign dbg_ctx = ctx_sel;\n\n"
                      "  // ---- current-context views of the state (the context mux) ----")
    view = ["  // dbg_ctx must be registered together with dbg_stage/dbg_valid: they are",
            "  // all sampled one cycle after the step, and the arbiter may already have",
            "  // moved to the other context by then (otherwise the testbench dumps the",
            "  // new context's state under the old context's stage).",
            "  assign dbg_ctx = dbg_ctx_r;",
            "  // ---- current-context views of the state (the context mux) ----",
            "  // NOTE: the element width MUST be spelled out -- an unpacked net array",
            "  // declared without a range defaults to 1 bit and silently truncates the",
            "  // cluster ids, which is exactly what broke the first prototype.",
            "  wire [CW-1:0]         cur_cid [0:NN-1];",
            "  wire                  cur_active [0:NN-1];",
            "  wire                  cur_whole [0:NN-1];",
            "  wire                  cur_defect [0:NN-1];",
            "  wire [SNOW_PTR_W-1:0] cur_ptr [0:NN-1];",
            "  wire                  cur_grown [0:NN-1];",
            "  wire                  cur_unrooted [0:NN-1];",
            "  wire                  cur_busy [0:NN-1];",
            "  wire [1:0]            cur_growth [0:NE-1];",
            "  wire                  cur_ecorr [0:NE-1];"]
    view.append("  genvar gj;")
    view.append("  generate")
    view.append("    for (gj = 0; gj < NN; gj = gj + 1) begin : ctx_view_n")
    for nm in NODE:
        view.append("      assign cur_%s[gj] = %s[ctx_sel*NN + gj];" % (nm, nm))
    view.append("    end")
    view.append("    for (gj = 0; gj < NE; gj = gj + 1) begin : ctx_view_e")
    for nm in EDGE:
        view.append("      assign cur_%s[gj] = %s[ctx_sel*NE + gj];" % (nm, nm))
    view.append("    end")
    view.append("  endgenerate")
    view.append("")
    txt = txt.replace("  genvar gi;", "\n".join(view) + "\n\n  genvar gi;")

    # ---- rename state reads inside the combinational block -------------
    head, body, tail = txt.partition("  // ================== combinational next-state ==================")
    body, sep, tail2 = tail.partition("  // ================== controller + state update ==================")
    tail2 = sep + tail2
    for nm in NODE + EDGE:
        body = re.sub(r"\b%s\[" % nm, "cur_%s[" % nm, body)
    txt = head + body + tail2

    # ---- views must not be renamed in the sequential block -------------

    # ---- arbiter -------------------------------------------------------
    arb = """
  // ---- context arbiter: one ready context advances per clock ----------
  // `hold` is a one-cycle drain: after a context finishes, the arbiter keeps
  // pointing at it for one more clock (with ctx_found=0, so the datapath does
  // NOT advance).  Without it, the debug/observation buses switch to the next
  // context in the very cycle the finished context's last step is sampled, and
  // the testbench records the wrong context's state for that step.
  // Cost: NCTX idle cycles per round.
  always @(*) begin
    if (hold_valid) begin
      ctx_sel   = hold;
      ctx_found = 1'b0;
    end else begin
      ctx_sel   = {CTXW{1'b0}};
      ctx_found = 1'b0;
      for (ctx_scan = 0; ctx_scan < NCTX; ctx_scan = ctx_scan + 1) begin
        if (!ctx_found && run[ctx_scan]) begin
          ctx_sel   = ctx_scan;
          ctx_found = 1'b1;
        end
      end
    end
  end

"""
    txt = txt.replace("  // ================== controller + state update ==================",
                      arb + "  // ================== controller + state update ==================")

    # ---- sequential block: per-context FSM + writes --------------------
    old_reset = """    if (reset) begin
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
      commit_onehot <= {SNOW_NCOMMIT{1'b0}};"""
    new_reset = """    if (reset) begin
      for (c = 0; c < NCTX; c = c + 1) begin
        for (n = 0; n < NN; n = n + 1) begin
          cid[c*NN + n]      <= n[CW-1:0];
          active[c*NN + n]   <= 1'b0;
          whole[c*NN + n]    <= 1'b1;
          defect[c*NN + n]   <= 1'b0;
          ptr[c*NN + n]      <= SNOW_PTR_C;
          grown[c*NN + n]    <= 1'b0;
          unrooted[c*NN + n] <= 1'b0;
          busy[c*NN + n]     <= 1'b0;
        end
        for (e = 0; e < NE; e = e + 1) begin
          growth[c*NE + e] <= 2'd0;
          ecorr[c*NE + e]  <= 1'b0;
        end
        stage[c]    <= ST_IDLE;
        step_cnt[c] <= 8'd0;
        run[c]      <= 1'b0;
      end
      done <= {NCTX{1'b0}};
      dbg_stage <= ST_IDLE;
      dbg_step <= 8'd0;
      dbg_valid <= 1'b0;
      commit_onehot <= {(NCTX*SNOW_NCOMMIT){1'b0}};"""
    if old_reset not in txt:
        raise SystemExit("reset block not found -- source changed?")
    txt = txt.replace(old_reset, new_reset)

    # else branch: per-context bookkeeping on the selected context
    txt = txt.replace("""    end else begin
      done <= 1'b0;
      dbg_valid <= 1'b0;
      commit_onehot <= {SNOW_NCOMMIT{1'b0}};""",
"""    end else begin
      dbg_valid <= 1'b0;
      if (ctx_found) begin
        // clear this context's done/commit pulses (they live one clock)
        done[ctx_sel] <= 1'b0;
        for (e = 0; e < SNOW_NCOMMIT; e = e + 1)
          commit_onehot[ctx_sel*SNOW_NCOMMIT + e] <= 1'b0;
      end""")

    # FSM: use the selected context's stage/step_cnt and its start pulse
    txt = txt.replace("""      case (stage)
        ST_IDLE: if (start) begin stage <= ST_DROP; step_cnt <= 8'd1; end
        ST_DROP: begin stage <= ST_GW; step_cnt <= 8'd1; end
        ST_GW:   begin stage <= ST_MW; step_cnt <= 8'd1; end""",
"""      case (stage[ctx_sel])
        ST_IDLE: if (ctx_found) begin
                   // a context that has been started but has not run yet
                 end
        ST_DROP: begin stage[ctx_sel] <= ST_GW; step_cnt[ctx_sel] <= 8'd1; end
        ST_GW:   begin stage[ctx_sel] <= ST_MW; step_cnt[ctx_sel] <= 8'd1; end""")
    txt = re.sub(r"stage <= ST_(IDLE|DROP|GW|GH|MH); step_cnt <= 8'd(\d);",
                 lambda m: "stage[ctx_sel] <= ST_%s; step_cnt[ctx_sel] <= 8'd%s;" % (m.group(1), m.group(2)),
                 txt)
    # any remaining plain `stage` comparison/selection is the selected context's
    txt = re.sub(r"\bcase \(stage\)", "case (stage[ctx_sel])", txt)
    txt = re.sub(r"\bstage (?=[!=]=)", "stage[ctx_sel] ", txt)
    txt = re.sub(r"default: stage <= ST_IDLE;", "default: stage[ctx_sel] <= ST_IDLE;", txt)
    txt = txt.replace("done <= 1'b1;", "done[ctx_sel] <= 1'b1; run[ctx_sel] <= 1'b0;")
    txt = txt.replace("step_cnt <= step_cnt + 8'd1;", "step_cnt[ctx_sel] <= step_cnt[ctx_sel] + 8'd1;")
    txt = txt.replace("if (!any_c_busy)", "if (!any_c_busy)")
    txt = txt.replace("if (!all_busy && (step_cnt > 8'd1))", "if (!all_busy && (step_cnt[ctx_sel] > 8'd1))")
    txt = txt.replace("case (stage)\n        ST_IDLE", "case (stage[ctx_sel])\n        ST_IDLE")

    # state write-back: into the selected context
    for nm in NODE:
        txt = re.sub(r"\b%s\[n\](\s*)<= c_%s\[n\];" % (nm, nm),
                     lambda m, nm=nm: "%s[ctx_sel*NN + n]%s<= c_%s[n];" % (nm, m.group(1), nm),
                     txt)
    txt = re.sub(r"\bgrowth\[e\](\s*)<= c_growth\[e\];",
                 lambda m: "growth[ctx_sel*NE + e]%s<= c_growth[e];" % m.group(1), txt)
    txt = re.sub(r"\becorr\[e\](\s*)<= c_ecorr\[e\];",
                 lambda m: "ecorr[ctx_sel*NE + e]%s<= c_ecorr[e];" % m.group(1), txt)

    # start / done envelope of the datapath update
    txt = re.sub(r"if \(stage\[ctx_sel\] != ST_IDLE\) begin",
                 "if (ctx_found && (stage[ctx_sel] != ST_IDLE)) begin", txt)
    txt = txt.replace("""        dbg_stage <= stage;
        dbg_step  <= step_cnt;""",
"""        dbg_stage <= stage[ctx_sel];
        dbg_step  <= step_cnt[ctx_sel];
        dbg_ctx_r <= ctx_sel;""")
    txt = txt.replace("""        if (stage[ctx_sel] == ST_DROP) begin
          for (e = 0; e < NE; e = e + 1)
            if (SNOW_IS_COMMIT(e) && ecorr[e]) commit_onehot[SNOW_COMMIT_IDX(e)] <= 1'b1;
        end""",
"""        if (stage[ctx_sel] == ST_DROP) begin
          for (e = 0; e < NE; e = e + 1)
            if (SNOW_IS_COMMIT(e) && ecorr[ctx_sel*NE + e])
              commit_onehot[ctx_sel*SNOW_NCOMMIT + SNOW_COMMIT_IDX(e)] <= 1'b1;
        end""")
    txt = txt.replace("""`ifdef SNOW_BUSYREG
        // suppress the extra exit clock so the trace stays line-identical to
        // the localuf golden trace
        dbg_valid <= !(((stage == ST_MW) || (stage == ST_MH)) && !all_busy
                       && (step_cnt > 8'd1));""",
"""`ifdef SNOW_BUSYREG
        // suppress the extra exit clock so the trace stays line-identical to
        // the localuf golden trace
        dbg_valid <= !(((stage[ctx_sel] == ST_MW) || (stage[ctx_sel] == ST_MH)) && !all_busy
                       && (step_cnt[ctx_sel] > 8'd1));""")

    # start handling: a start pulse puts its context into the ready set and
    # loads that context's syndrome (kept per context)
    txt = txt.replace("""  reg [7:0] step_cnt  [0:NCTX-1];""",
"""  reg [7:0] step_cnt  [0:NCTX-1];
  reg [SNOW_NSYN-1:0] syn_buf [0:NCTX-1];""")
    txt = txt.replace("""      if (ctx_found) begin
        // clear this context's done/commit pulses (they live one clock)
        done[ctx_sel] <= 1'b0;
        for (e = 0; e < SNOW_NCOMMIT; e = e + 1)
          commit_onehot[ctx_sel*SNOW_NCOMMIT + e] <= 1'b0;
      end""",
"""      // done / commit are one-clock pulses for EVERY context: clearing only
      // the selected one would leave stale pulses behind and the testbench
      // would think a context finished when it did not.
      done <= {NCTX{1'b0}};
      commit_onehot <= {(NCTX*SNOW_NCOMMIT){1'b0}};""")

    # syndrome load in the DROP stage must use the context's buffer
    txt = txt.replace("c_defect[m] = c_defect[m] ^ syndrome[s];",
                      "c_defect[m] = c_defect[m] ^ syn_buf[ctx_sel][s];")

    # drain cycle: keep pointing at the context that just finished for one clock
    txt = txt.replace("done <= 1'b1;", "done[ctx_sel] <= 1'b1; run[ctx_sel] <= 1'b0;")
    txt = txt.replace("done[ctx_sel] <= 1'b1; run[ctx_sel] <= 1'b0;",
                      "done[ctx_sel] <= 1'b1; run[ctx_sel] <= 1'b0;\n"
                      "                     hold <= ctx_sel; hold_valid <= 1'b1;")
    txt = txt.replace("""      done <= {NCTX{1'b0}};
      commit_onehot <= {(NCTX*SNOW_NCOMMIT){1'b0}};""",
"""      done <= {NCTX{1'b0}};
      hold_valid <= 1'b0;
      hold <= {CTXW{1'b0}};
      commit_onehot <= {(NCTX*SNOW_NCOMMIT){1'b0}};""")
    txt = txt.replace("""    end else begin
      dbg_valid <= 1'b0;
      for (c = 0; c < NCTX; c = c + 1) begin""",
"""    end else begin
      dbg_valid <= 1'b0;
      hold_valid <= 1'b0;            // set again below when a context finishes
      for (c = 0; c < NCTX; c = c + 1) begin""")

    # start handling: a start pulse puts its context into the ready set and
    # latches that context's syndrome
    txt = txt.replace("""    end else begin
      dbg_valid <= 1'b0;""",
"""    end else begin
      dbg_valid <= 1'b0;
      for (c = 0; c < NCTX; c = c + 1) begin
        if (start[c] && !run[c]) begin
          run[c]      <= 1'b1;
          stage[c]    <= ST_DROP;
          step_cnt[c] <= 8'd1;
          syn_buf[c]  <= syndrome[c*SNOW_NSYN +: SNOW_NSYN];
        end
      end""")

    # obs buses: report the selected context (debug only)
    txt = re.sub(r"assign obs_cid\[gi\*CW \+: CW\]\s*= cid\[gi\];",
                 "assign obs_cid[gi*CW +: CW] = cid[ctx_sel*NN + gi];", txt)
    txt = re.sub(r"assign obs_ptr\[gi\*SNOW_PTR_W \+: SNOW_PTR_W\]\s*= ptr\[gi\];",
                 "assign obs_ptr[gi*SNOW_PTR_W +: SNOW_PTR_W] = ptr[ctx_sel*NN + gi];", txt)
    for nm in NODE:
        txt = re.sub(r"assign obs_%s\[gi\]\s*= %s\[gi\];" % (nm, nm),
                     "assign obs_%s[gi] = %s[ctx_sel*NN + gi];" % (nm, nm), txt)
    for nm in EDGE:
        txt = re.sub(r"assign obs_%s\[gi\*2 \+: 2\]\s*= %s\[gi\];" % (nm, nm),
                     "assign obs_%s[gi*2 +: 2] = %s[ctx_sel*NE + gi];" % (nm, nm), txt)
        txt = re.sub(r"assign obs_%s\[gi\]\s*= %s\[gi\];" % (nm, nm),
                     "assign obs_%s[gi] = %s[ctx_sel*NE + gi];" % (nm, nm), txt)

    # integer loop variable for contexts
    txt = txt.replace("  integer n, d, m, e, e2, s;", "  integer n, d, m, e, e2, s, c;")

    # The sequential block must NOT share its loop variables with the
    # combinational block: in the single-context core that sharing happened to
    # be harmless, but with the extra nesting the reset loop got clobbered and
    # some contexts came out of reset with wrong cluster ids.
    head2, sep2, seq = txt.partition("  // ================== controller + state update ==================")
    seq = re.sub(r"\bn\b", "ns", seq)
    seq = re.sub(r"\be\b", "es", seq)
    seq = re.sub(r"\bc\b", "cs", seq)
    seq = seq.replace("  integer n, d, m, e, e2, s, c;", "  integer n, d, m, e, e2, s, c;")
    txt = head2 + sep2 + seq
    txt = txt.replace("  integer n, d, m, e, e2, s, c;",
                      "  integer n, d, m, e, e2, s, c;      // combinational block\n"
                      "  integer ns, es, cs;                 // sequential block (kept separate)")

    # all_busy must look at the selected context
    txt = txt.replace("""    all_busy_r = 1'b0;
    for (bi = 0; bi < NN; bi = bi + 1) all_busy_r = all_busy_r | busy[bi];""",
"""    all_busy_r = 1'b0;
    for (bi = 0; bi < NN; bi = bi + 1) all_busy_r = all_busy_r | busy[ctx_sel*NN + bi];""")

    hdr = ("//=========================================================================\n"
           "// GENERATED by fpga_flow/make_ctx2.py from snowflake_core.sv -- do not edit\n"
           "// by hand; edit the generator or the single-context core instead.\n"
           "//\n"
           "// 2-context context-switching prototype: the state has one copy per\n"
           "// context, the (large) combinational datapath is shared and time\n"
           "// multiplexed by a small arbiter that advances one ready context per\n"
           "// clock.  Per-context behaviour is identical to snowflake_core.\n"
           "//=========================================================================\n")
    open(DST, "w", encoding="utf-8").write(hdr + txt)
    print("wrote", DST)
    print("ctx_sel references:", txt.count("ctx_sel"))
    for nm in NODE + EDGE:
        left = len(re.findall(r"(?<!cur_)(?<!\w)%s\[(?!ctx_sel|gj|c\*)" % nm, txt))
        print("  %-9s raw state references left: %d" % (nm, left))


if __name__ == "__main__":
    main()
