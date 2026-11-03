"""Area model for the SHARED-lattice snowflake-n build, anchored on measurements.

    python fpga_flow/lattice_area_model.py            # all configs
    python fpga_flow/lattice_area_model.py --code surface --d 5 --slices 2

Why this exists
---------------
`snowflake_n_table.py` prices a slice as `86 LUT x touched edges`, i.e. it
assumes the WHOLE design shrinks by `total / max_slice`.  That is only true for
the combinational part.  The state does not shrink:

  * a shared lattice holds NSLOT = max_slice node slots, and each slot needs one
    context of state per slice (a slice's state must survive while the other
    slices run)  =>  total state = NSLOT x n >= total nodes, with equality only
    when the slices are balanced;
  * the plain (unshared) array has ZERO state-management logic -- each node's
    state is just its own flops.  The shared array has to multiplex n contexts
    through one set of PEs, and that muxing costs LUTs.

Both effects are measurable from the NCTX builds already in summary_impl.csv
(report 6.7), so this script uses them as anchors instead of guessing.

Anchors (surface d3, PE-array form, same OOC flow, VU9P):
    plain (no ctx infra)  4,091 LUT /   797 FF   [36 nodes, 51 edges, CID_W=7]
    NCTX=1                4,210 LUT /   808 FF
    NCTX=2                5,249 LUT / 1,591 FF
  => first context of infrastructure:  +119 LUT  (~3.3 LUT/node)
  => each FURTHER context:          +1,039 LUT  (~28.9 LUT/node) and +783 FF
     (~21.8 FF/node, which matches the ~22.1 FF/node of state in the base build
      -- a good sign the model is self-consistent rather than fitted)

Scaling the per-node state cost to other d
------------------------------------------
Only the d3 anchors were measured, and a node's state width grows with d because
SNOW_CID_W does (d3=7, d5=9, d7=10, d21=15).  Modelling the per-node state as
`CID_W + PTR_W + 4 flags` = CID_W + 8 and normalising to d3 gives the factor
(CID_W+8)/15.  That prediction can be checked against the MEASURED FF counts of
the unshared builds, and it holds:

      d    CID_W   predicted FF/node ratio   measured FF/node   ratio
      3      7            1.000                797/36 = 22.1    1.000
      5      9            1.133              3725/150 = 24.8    1.122
      7     10            1.200              10338/392 = 26.4   1.192

so the same factor is applied to the context-management LUT cost as well.  Both
are still extrapolations beyond d3 -- treat every number below as a MODEL, and
the d21 one as the thing the prototype has to calibrate.

One cost this model does NOT include (so its numbers are a LOWER bound): in the
NCTX anchor builds every context shares one graph, so the per-slot constants
(logical ID, is_bnd/is_top/is_bot, syn_idx, per-direction neighbour/edge index)
stay elaboration-time constants and cost nothing.  In a shared lattice they
become phase-selected runtime values, i.e. one n:1 mux each -- at d21/n=7 the
15-bit ID alone is ~45 LUT/slot, before the 12-direction neighbour tables.  The
only mitigation is the layer-homogeneity result (design doc 3.3): if lattice
neighbour routing can be expressed as fixed geometric offsets plus masks, a full
per-context neighbour ROM is not needed.  This term CANNOT be priced by the
"step (a)" no-op refactor (ID constants -> ports, instance count unchanged):
while the select stays an elaboration-time constant Vivado folds the whole mux
away and the measured cost is zero.  It only becomes measurable in the real
shared build (step b), where the ROM is indexed by the runtime `phase`.
"""
import argparse
import json
import os
import re

HERE = os.path.dirname(os.path.abspath(__file__))
WS = os.path.normpath(os.path.join(HERE, ".."))
GEN = os.path.join(WS, "Helios_scalable_QEC-main", "Helios_scalable_QEC-main",
                   "design", "generated")

# ---- measured anchors (fpga_flow/summary_impl.csv, VU9P, 5 ns, bus on) ------
A_D, A_NODES, A_EDGES = 3, 36, 51
A_CIDW = 7
LUT_PLAIN, FF_PLAIN = 4091, 797
LUT_CTX1, FF_CTX1 = 4210, 808
LUT_CTX2, FF_CTX2 = 5249, 1591

CTX1_LUT = LUT_CTX1 - LUT_PLAIN              # 119   infrastructure, 1 context
CTXN_LUT = LUT_CTX2 - LUT_CTX1               # 1039  each further context
CTXN_FF = FF_CTX2 - FF_CTX1                  # 783
BASE_FF = FF_PLAIN / A_NODES                 # 22.1 FF of state per node

LUT_PER_EDGE = 86.0                          # report 6.4 area law
# the law over-predicts the d3 PE array slightly (86*51 = 4386 vs 4210 measured
# for NCTX=1); keep the correction factor explicit instead of hiding it
LAW_CORR = LUT_CTX1 / (LUT_PER_EDGE * A_EDGES)

VU9P_LUT = 1_182_240


def state_scale(code, d):
    """(CID_W+8)/(anchor CID_W+8): how much wider a node's state is at this d."""
    path = os.path.join(GEN, "snowflake_graph_%s_d%d.svh" % (code, d))
    txt = open(path, encoding="utf-8").read()
    m = re.search(r"localparam integer SNOW_CID_W = (\d+);", txt)
    if not m:
        raise SystemExit("SNOW_CID_W not found in %s" % path)
    cidw = int(m.group(1))
    return (cidw + 8.0) / (A_CIDW + 8.0), cidw


def slices_of(code, d, ns):
    """(nodes, touched edges) per slice, from the generator's own partition."""
    path = os.path.join(GEN, "snowflake_graph_%s_d%d_part.json" % (code, d))
    if not os.path.exists(path):
        raise SystemExit("missing %s -- run generate_snowflake.py --code %s "
                         "--d %d --slices %d first" % (path, code, d, ns))
    j = json.load(open(path, encoding="utf-8"))
    if "slices" not in j:
        raise SystemExit("%s has no 'slices' -- regenerate with --slices %d"
                         % (path, ns))
    meta = j["slices_meta"]
    if meta["n_slices"] != ns:
        raise SystemExit("%s carries n_slices=%d, asked for %d"
                         % (path, meta["n_slices"], ns))
    out = []
    for s in j["slices"]:
        out.append((s["n_nodes"],
                    len(s["edges_internal"]) + len(s["edges_crossing_owned"])))
    return out, len(j["edge_uv"]), j["slices_meta"].get("layers_per_slice")


def model(code, d, ns, verbose=True):
    (per_slice, total_edges, lps) = slices_of(code, d, ns)
    sscale, cidw = state_scale(code, d)
    total_nodes = sum(n for n, _ in per_slice)
    nslot = max(n for n, _ in per_slice)
    eslot = max(e for _, e in per_slice)

    # --- unshared reference: what the full array costs today ----------------
    full_lut = LUT_PER_EDGE * total_edges * LAW_CORR
    full_ff = BASE_FF * sscale * total_nodes

    # --- shared lattice ----------------------------------------------------
    logic = LUT_PER_EDGE * eslot * LAW_CORR
    per_node = nslot / A_NODES * sscale
    ctx = CTX1_LUT * per_node + CTXN_LUT * per_node * (ns - 1)
    lat_lut = logic + ctx
    lat_ff = BASE_FF * sscale * nslot * ns   # state is replicated per context

    rows = dict(code=code, d=d, n=ns, layers=lps, cidw=cidw, sscale=sscale,
                total_nodes=total_nodes,
                total_edges=total_edges, nslot=nslot, eslot=eslot,
                full_lut=full_lut, full_ff=full_ff, logic=logic, ctx=ctx,
                lat_lut=lat_lut, lat_ff=lat_ff,
                naive=total_nodes / nslot,
                real=full_lut / lat_lut,
                ctx_share=100.0 * ctx / lat_lut,
                pct=100.0 * lat_lut / VU9P_LUT)
    if verbose:
        print("%s d%d n=%d  layers/slice=%s  CID_W=%d (state scale %.3f)"
              % (code, d, ns, lps, cidw, sscale))
        print("  full array      : %8.0f LUT / %7.0f FF   (%d nodes, %d edges)"
              % (full_lut, full_ff, total_nodes, total_edges))
        print("  lattice         : %d slots / %d touched edges (max slice)"
              % (nslot, eslot))
        print("    combinational : %8.0f LUT" % logic)
        print("    ctx mgmt      : %8.0f LUT   (%.0f%% of the lattice)"
              % (ctx, rows["ctx_share"]))
        print("    TOTAL         : %8.0f LUT / %7.0f FF  = %.1f%% of VU9P"
              % (lat_lut, lat_ff, rows["pct"]))
        print("  saving          : naive (nodes/maxslice) %.2fx   "
              "state-aware %.2fx" % (rows["naive"], rows["real"]))
        print()
    return rows


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--code", default=None)
    ap.add_argument("--d", type=int, default=None)
    ap.add_argument("--slices", type=int, default=None)
    a = ap.parse_args()
    if a.code and a.d and a.slices:
        model(a.code, a.d, a.slices)
        return
    print("law correction factor vs the 86 LUT/edge rule: %.3f" % LAW_CORR)
    print("per-node context cost at the d3 anchor: 1st %.1f LUT, each further "
          "%.1f LUT + %.1f FF (scaled by (CID_W+8)/15 elsewhere)"
          % (CTX1_LUT / A_NODES, CTXN_LUT / A_NODES, CTXN_FF / A_NODES))
    print()
    rows = []
    for code, d, ns in (("surface", 3, 2), ("surface", 5, 2),
                        ("surface", 7, 3), ("surface", 21, 7)):
        try:
            rows.append(model(code, d, ns))
        except SystemExit as e:
            print("%s d%d n=%d: %s\n" % (code, d, ns, e))
    if rows:
        print("%-16s %5s %8s %8s %8s %7s %8s %7s"
              % ("config", "n", "naive x", "real x", "lattice", "ctx%",
                 "VU9P%", "FF"))
        for r in rows:
            print("%-16s %5d %8.2f %8.2f %8.0f %7.0f %8.1f %7.0f"
                  % ("%s d%d" % (r["code"], r["d"]), r["n"], r["naive"],
                     r["real"], r["lat_lut"], r["ctx_share"], r["pct"],
                     r["lat_ff"]))


if __name__ == "__main__":
    main()
