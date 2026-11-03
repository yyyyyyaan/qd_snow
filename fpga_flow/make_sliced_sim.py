"""Build the seam constant tables for the SNOW_SLICED (snowflake-n) prototype.

    python fpga_flow/make_sliced_sim.py --code surface --d 5 --slices 2

Reads (or regenerates) design/generated/snowflake_graph_<code>_d<d>_part.json
(the output of generate_snowflake.py --slices N) and writes
design/generated/snowflake_seam_<code>_d<d>.svh plus the canonical
snowflake_seam.svh that snowflake_pe_array.sv `include`s under `SNOW_SLICED`.

What the emitted tables describe -- the complete inventory of wiring points in
snowflake_pe_array.sv whose source and destination would live in DIFFERENT
slices, i.e. everything a seam must carry (design doc 4.7; note the doc's
13-point table misses the edge flip inputs, so the real inventory is 15 points
in 6 groups):

  A  node above state      ab_cid/active/whole/defect/ptr    per node
  B  neighbour state       nb_cid/active/grown               per (node,dir)
  B  neighbour push        nb_push                           per (node,dir)
  C  edge-of-port growth   e_grown                           per (node,dir)
  D  edge endpoint pulse   u_pulse / v_pulse                 per edge, per side
  F  edge endpoint flip    flip_u / flip_v                   per edge, per side
  E  edge-above state      above_growth / above_ecorr        per edge

Timing classes (why cycle-exactness needs two kinds of seam registers -- see
optimization_report 6.16): every PE/edge is a pure function of registers, but a
boundary node's push/pulse outputs depend on its OWN seam inputs, so a plain
"cut + one register" (posedge, Q-sampled) is one cycle stale and a plain
negedge re-timing still leaves push stale by one cycle through the chain
nb_cid -> argmin -> push.  The cycle-exact construction is:

  * state crossings  (A, B.cid/active/grown, C, and the E growth/ecorr bits):
    posedge "D-shadow" registers fed from the source's NEXT-STATE outputs
    (o_n_cid/... on snowflake_pe, o_n_growth on snowflake_edge), so the shadow
    always equals the source register for the whole cycle;
  * combinational crossings (B.push, D.pulse, F.flip): negedge-clocked
    registers sampling the source's combinational output, which is stable from
    cycle start because all of its inputs are registers or D-shadows.

The generator emits, per group, packed vectors exactly like the graph tables
(element i at bits [i*W +: W], i.e. emitted in REVERSE concatenation order),
plus per-entry peer/edge/rev constants.  Nothing is emitted as a lookup
function: Vivado cannot constant-fold those inside a generate body.
"""
import argparse
import json
import os
import re
import subprocess
import sys

HERE = os.path.dirname(os.path.abspath(__file__))
REPO = os.path.normpath(os.path.join(HERE, "..", "Helios_scalable_QEC-main",
                                     "Helios_scalable_QEC-main"))
BUILD = os.path.join(REPO, "build_scripts")
GEN = os.path.join(REPO, "design", "generated")

sys.path.insert(0, BUILD)
from generate_snowflake import collect, NO_NODE, NO_EDGE            # noqa: E402


def idx_width(n):
    """Bits to address n entries (>=1)."""
    return max(1, (max(1, n) - 1).bit_length())


def vec(name, values, width):
    """Packed constant vector, element i at [i*W +: W] (reverse emission order,
    same convention as generate_snowflake.py)."""
    items = ["%d'd%d" % (width, v) for v in reversed(values)]
    return "localparam [%d:0] %s = {%s};" % (len(values) * width - 1, name,
                                             ", ".join(items))


def graph_widths(code, d):
    """Parse the widths back from the generated graph .svh (assertion aid)."""
    path = os.path.join(GEN, "snowflake_graph_%s_d%d.svh" % (code, d))
    txt = open(path, encoding="utf-8").read()
    out = {}
    for name in ("SNOW_NN", "SNOW_NE", "SNOW_NW", "SNOW_EW", "SNOW_NDIR"):
        m = re.search(r"localparam integer %s = (\d+);" % name, txt)
        if not m:
            raise RuntimeError("%s not found in %s" % (name, path))
        out[name] = int(m.group(1))
    return out


def build_tables(code, d, dirs, ns):
    g = collect(code, d, dirs)
    nn, ne, ndir = g["nn"], g["ne"], len(g["dirs"])
    nl = g["n_layers"]
    if ns < 2 or ns > nl:
        raise SystemExit("need 2 <= slices <= %d time layers (got %d)" % (nl, ns))
    nw = max(5, (nn + 1).bit_length())
    ew = max(4, (ne + 1).bit_length())
    rvw = max(1, (ndir - 1).bit_length())
    gw = graph_widths(code, d)
    assert (gw["SNOW_NN"], gw["SNOW_NE"], gw["SNOW_NW"], gw["SNOW_EW"],
            gw["SNOW_NDIR"]) == (nn, ne, nw, ew, ndir), \
        "graph .svh widths disagree with collect() -- regenerate first"

    # ---- slice assignment (identical formulas to generate_snowflake.py) ----
    layers = [list(range((i * nl) // ns, ((i + 1) * nl) // ns)) for i in range(ns)]
    node_layer = g["node_part"]
    slice_of = {}
    for n in range(nn):
        sl = [i for i, ls in enumerate(layers) if node_layer[n] in ls]
        assert len(sl) == 1
        slice_of[n] = sl[0]

    # ---- per-edge endpoint directions + ownership (owner = slice of U) ----
    dir_index = {name: i for i, name in enumerate(g["dirs"])}
    dir_u, dir_v = {}, {}
    for e, (u, v) in enumerate(g["edge_uv"]):
        for nid, other in ((u, v), (v, u)):
            for dname, (m, ee) in g["nb"][nid].items():
                if m == other and ee == e:
                    (dir_u if nid == u else dir_v)[e] = dir_index[dname]
    owner = [slice_of[g["edge_uv"][e][0]] for e in range(ne)]

    # ---- group A: state of the node above, per node ----
    ab_xs, ab_idx, ab_peer = [0] * nn, [0] * nn, []
    for n in range(nn):
        m = g["node_above"].get(n, NO_NODE)
        if m != NO_NODE and slice_of[m] != slice_of[n]:
            ab_xs[n] = 1
            ab_idx[n] = len(ab_peer)
            ab_peer.append(m)

    # ---- groups B/C: per (node, direction) ports ----
    NPORT = nn * ndir
    nb_xs, nb_idx, nb_peer, nb_rev = [0] * NPORT, [0] * NPORT, [], []
    eg_xs, eg_idx, eg_edge = [0] * NPORT, [0] * NPORT, []
    for n in range(nn):
        for d_i, dname in enumerate(g["dirs"]):
            ent = g["nb"][n].get(dname)
            if not ent:
                continue
            m, e = ent
            p = n * ndir + d_i
            if slice_of[m] != slice_of[n]:              # neighbour in another slice
                nb_xs[p] = 1
                nb_idx[p] = len(nb_peer)
                nb_peer.append(m)
                nb_rev.append(g["rev"].get((n, d_i), 0))
            if owner[e] != slice_of[n]:                 # edge module in another slice
                eg_xs[p] = 1
                eg_idx[p] = len(eg_edge)
                eg_edge.append(e)

    # ---- groups D/F: edge endpoint pulse/flip, per edge and side ----
    epu_xs, epu_idx = [0] * ne, [0] * ne
    epv_xs, epv_idx = [0] * ne, [0] * ne
    ep_peer = []
    efu_xs, efu_idx = [0] * ne, [0] * ne
    efv_xs, efv_idx = [0] * ne, [0] * ne
    ef_peer, ef_dir = [], []
    for e, (u, v) in enumerate(g["edge_uv"]):
        if slice_of[u] != owner[e]:                     # (always 0: owner IS slice of U)
            epu_xs[e] = 1
            epu_idx[e] = len(ep_peer)
            ep_peer.append(u)
            efu_xs[e] = 1
            efu_idx[e] = len(ef_peer)
            ef_peer.append(u)
            ef_dir.append(dir_u[e])
        if slice_of[v] != owner[e]:
            epv_xs[e] = 1
            epv_idx[e] = len(ep_peer)
            ep_peer.append(v)
            efv_xs[e] = 1
            efv_idx[e] = len(ef_peer)
            ef_peer.append(v)
            ef_dir.append(dir_v[e])

    # ---- group E: state of the edge above, per edge ----
    ea_xs, ea_idx, ea_edge = [0] * ne, [0] * ne, []
    for e in range(ne):
        ab = g["above"].get(e, NO_EDGE)
        if ab != NO_EDGE and owner[ab] != owner[e]:
            ea_xs[e] = 1
            ea_idx[e] = len(ea_edge)
            ea_edge.append(ab)

    return dict(g=g, nn=nn, ne=ne, ndir=ndir, nl=nl, layers=layers,
                slice_of=slice_of, owner=owner, nw=nw, ew=ew, rvw=rvw,
                ab_xs=ab_xs, ab_idx=ab_idx, ab_peer=ab_peer,
                nb_xs=nb_xs, nb_idx=nb_idx, nb_peer=nb_peer, nb_rev=nb_rev,
                eg_xs=eg_xs, eg_idx=eg_idx, eg_edge=eg_edge,
                epu_xs=epu_xs, epu_idx=epu_idx, epv_xs=epv_xs, epv_idx=epv_idx,
                ep_peer=ep_peer,
                efu_xs=efu_xs, efu_idx=efu_idx, efv_xs=efv_xs, efv_idx=efv_idx,
                ef_peer=ef_peer, ef_dir=ef_dir,
                ea_xs=ea_xs, ea_idx=ea_idx, ea_edge=ea_edge)


def crosscheck_json(t, code, d, ns):
    """Verify our recomputed slice/port view against the generator's *_part.json
    (the artifact validated by check_slice_ports.py)."""
    path = os.path.join(GEN, "snowflake_graph_%s_d%d_part.json" % (code, d))
    j = json.load(open(path))
    if "slices" not in j:
        raise SystemExit("no slices in %s -- rerun with --slices %d" % (path, ns))
    if j["slices_meta"]["n_slices"] != ns:
        raise SystemExit("%s carries n_slices=%d, asked for %d"
                         % (path, j["slices_meta"]["n_slices"], ns))
    g = t["g"]
    if j["node_partition"] != {str(k): v for k, v in g["node_part"].items()}:
        raise SystemExit("node_partition disagrees with collect()")
    ndir = t["ndir"]
    mine = {}
    for n in range(t["nn"]):
        for d_i, dname in enumerate(g["dirs"]):
            ent = g["nb"][n].get(dname)
            if not ent:
                mine[(n, d_i)] = ("none", -1)
            else:
                m, _e = ent
                kind = "seam" if t["slice_of"][m] != t["slice_of"][n] else "int"
                mine[(n, d_i)] = (kind, m)
    for s in j["slices"]:
        for n_str, ports in s["port_map"].items():
            for p in ports:
                key = (int(n_str), p["d"])
                kind, peer = mine[key]
                if kind != p["kind"] or (kind != "none" and peer != p["peer"]):
                    raise SystemExit("port_map mismatch at %s: json %s vs mine %s"
                                     % (key, p, (kind, peer)))
    n_seam_json = sum(1 for (n, d), (k, _m) in mine.items() if k == "seam")
    assert n_seam_json == len(t["nb_peer"])
    return j


def emit_svh(t, code, d, ns, dirs):
    g = t["g"]
    nn, ne, ndir = t["nn"], t["ne"], t["ndir"]
    nw, ew, rvw = t["nw"], t["ew"], t["rvw"]

    counts = dict(ab=len(t["ab_peer"]), nb=len(t["nb_peer"]),
                  eg=len(t["eg_edge"]), ep=len(t["ep_peer"]),
                  ef=len(t["ef_peer"]), ea=len(t["ea_edge"]))

    def pad1(lst):
        return lst if lst else [0]          # keep vectors at least 1 element wide

    L = []
    L += ["//=========================================================================",
          "// GENERATED FILE - DO NOT EDIT",
          "// Seam constant tables for the SNOW_SLICED snowflake-n prototype",
          f"//   {code} code d={d}, {ns} slices "
          f"(layers/slice: {', '.join(str(len(x)) for x in t['layers'])}), "
          f"dirs={dirs}",
          "// generated by fpga_flow/make_sliced_sim.py from the localuf reference",
          "// (cross-checked against snowflake_graph_%s_d%d_part.json)." % (code, d),
          "//",
          "// Six groups of cut points (design doc 4.7 + the flip inputs at line 191",
          "// that the doc's 13-point table missed).  Timing classes:",
          "//   A / E            : negedge register snapshot (consumed by DROP only)",
          "//   B.cid/act/grown,C: posedge D-shadow (feeds the boundary argmin)",
          "//   B.push/D/F       : negedge sample of the source's comb output",
          "// SNOW_SERIAL (design doc 4.2 ping-pong) replaces all of the above with",
          "// posedge buffers written at the end of the owner slice's phase; it needs",
          "// the per-node slice / per-edge owner tables emitted at the end.",
          "// Entry counts: " + ", ".join(f"{k}={v}" for k, v in counts.items()),
          "//=========================================================================",
          "`ifndef SNOWFLAKE_SEAM_SVH",
          "`define SNOWFLAKE_SEAM_SVH",
          "",
          f"localparam integer SNOW_SEAM_SLICES = {ns};",
          f"localparam integer SNOW_SEAM_RVW = {rvw};   // direction index width",
          ""]
    for k, v in counts.items():
        L.append(f"localparam integer SNOW_SEAM_{k.upper()}_N = {max(1, v)};")
    L.append("")
    for k, v in counts.items():
        L.append(f"localparam integer SNOW_{k.upper()}_IW = {idx_width(v)};")
    L.append("")

    NPORT = nn * ndir
    L.append(vec("SNOW_XS_AB_VEC", t["ab_xs"], 1))
    L.append(vec("SNOW_AB_IDX_VEC", t["ab_idx"], idx_width(counts["ab"])))
    L.append(vec("SNOW_AB_PEER_VEC", pad1(t["ab_peer"]), nw))
    L.append("")
    L.append(vec("SNOW_XS_NB_VEC", t["nb_xs"], 1))
    L.append(vec("SNOW_NB_IDX_VEC", t["nb_idx"], idx_width(counts["nb"])))
    L.append(vec("SNOW_NB_PEER_VEC", pad1(t["nb_peer"]), nw))
    L.append(vec("SNOW_NB_REV_VEC", pad1(t["nb_rev"]), rvw))
    L.append("")
    L.append(vec("SNOW_XS_EG_VEC", t["eg_xs"], 1))
    L.append(vec("SNOW_EG_IDX_VEC", t["eg_idx"], idx_width(counts["eg"])))
    L.append(vec("SNOW_EG_EDGE_VEC", pad1(t["eg_edge"]), ew))
    L.append("")
    for side in ("U", "V"):
        L.append(vec("SNOW_XS_EP%s_VEC" % side, t["ep%s_xs" % side.lower()], 1))
        L.append(vec("SNOW_EP%s_IDX_VEC" % side, t["ep%s_idx" % side.lower()],
                     idx_width(counts["ep"])))
    L.append(vec("SNOW_EP_PEER_VEC", pad1(t["ep_peer"]), nw))
    L.append("")
    for side in ("U", "V"):
        L.append(vec("SNOW_XS_EF%s_VEC" % side, t["ef%s_xs" % side.lower()], 1))
        L.append(vec("SNOW_EF%s_IDX_VEC" % side, t["ef%s_idx" % side.lower()],
                     idx_width(counts["ef"])))
    L.append(vec("SNOW_EF_PEER_VEC", pad1(t["ef_peer"]), nw))
    L.append(vec("SNOW_EF_DIR_VEC", pad1(t["ef_dir"]), rvw))
    L.append("")
    L.append(vec("SNOW_XS_EA_VEC", t["ea_xs"], 1))
    L.append(vec("SNOW_EA_IDX_VEC", t["ea_idx"], idx_width(counts["ea"])))
    L.append(vec("SNOW_EA_EDGE_VEC", pad1(t["ea_edge"]), ew))
    L.append("")
    # ---- SNOW_SERIAL support: which slice owns each node / edge ------------
    slw = max(1, (ns - 1).bit_length())
    L.append(f"localparam integer SNOW_SEAM_NSLICE = {ns};")
    L.append(f"localparam integer SNOW_SEAM_SLW = {slw};   // slice index width")
    L.append(vec("SNOW_SLICE_OF_VEC", [t["slice_of"][n] for n in range(nn)], slw))
    L.append(vec("SNOW_EDGE_OWNER_VEC", t["owner"], slw))
    L.append("")
    L.append("`endif // SNOWFLAKE_SEAM_SVH")
    return "\n".join(L) + "\n", counts


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--code", choices=["rep", "surface"], default="rep")
    ap.add_argument("--d", type=int, default=3)
    ap.add_argument("--slices", type=int, default=2)
    ap.add_argument("--dirs", choices=["all", "used"], default="all")
    ap.add_argument("--force-regen", action="store_true",
                    help="always rerun generate_snowflake.py --slices first")
    a = ap.parse_args()

    part = os.path.join(GEN, "snowflake_graph_%s_d%d_part.json" % (a.code, a.d))
    need = a.force_regen
    if os.path.exists(part):
        j = json.load(open(part))
        need = need or j.get("slices_meta", {}).get("n_slices") != a.slices \
            or j.get("code") != a.code or j.get("d") != a.d
    else:
        need = True
    if need:
        cmd = [sys.executable, os.path.join(BUILD, "generate_snowflake.py"),
               "--code", a.code, "--d", str(a.d), "--dirs", a.dirs,
               "--slices", str(a.slices)]
        print("[seam] regenerating:", " ".join(cmd))
        subprocess.check_call(cmd)

    t = build_tables(a.code, a.d, a.dirs, a.slices)
    crosscheck_json(t, a.code, a.d, a.slices)
    text, counts = emit_svh(t, a.code, a.d, a.slices, a.dirs)

    out_named = os.path.join(GEN, "snowflake_seam_%s_d%d.svh" % (a.code, a.d))
    canon = os.path.join(GEN, "snowflake_seam.svh")
    for p in (out_named, canon):
        with open(p, "w", encoding="utf-8", newline="\n") as f:
            f.write(text)

    seam_bits = (counts["ab"] * 22 + counts["nb"] * (0) + counts["eg"] * 2
                 + counts["ep"] * 1 + counts["ef"] * 1 + counts["ea"] * 3)
    print(f"[seam] {a.code} d={a.d} slices={a.slices}: cut points -> " +
          ", ".join(f"{k}={v}" for k, v in counts.items()))
    print(f"[seam] wrote {out_named}")
    print(f"[seam] wrote {canon} (canonical, included by snowflake_pe_array.sv)")
    print(f"[seam] rough seam width: {seam_bits} bit (A=22, C=2, D/F=1, E=3 per entry)")


if __name__ == "__main__":
    main()
