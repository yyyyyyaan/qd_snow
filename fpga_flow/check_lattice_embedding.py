"""Lattice embeddability check for snowflake-n (design doc step 1).

Question: can all time layers (or layer groups) be mapped onto ONE lattice
topology, with masks covering the ports a given layer does not have?

Helios-n relies on "each PE has a fixed number of edges that connect to adjacent
PEs".  Our window's layers have equal node counts (check_layer_homogeneity.py)
but DIFFERENT port patterns, so the sufficient condition to test is stronger:

    with slot = spatial position inside the layer, do the in-layer edges of every
    layer connect slots that differ by the SAME small set of offsets?

If yes, one slot grid + one offset table (plus per-layer masks) works.  If the
offsets scatter, the layers are not mutually embeddable and the slices have to be
thicker (or the lattice needs per-layer routing).

Node IDs cannot be renumbered for this (the frugal CID scheme is defined by ID
thresholds, see snowflake_n_design.md 3.2), so the spatial position has to come
from localuf's node index triple.

    python fpga_flow/check_lattice_embedding.py surface 7
"""
import collections
import os
import sys

HERE = os.path.dirname(os.path.abspath(__file__))
REPO = os.path.normpath(os.path.join(HERE, "..", "Helios_scalable_QEC-main", "Helios_scalable_QEC-main"))
sys.path.insert(0, os.path.join(REPO, "build_scripts"))
sys.path.insert(0, os.path.join(HERE, "..", "localuf-main", "localuf-main"))


def main():
    code_kind = sys.argv[1] if len(sys.argv) > 1 else "surface"
    d = int(sys.argv[2]) if len(sys.argv) > 2 else 7
    from generate_snowflake import make_code          # noqa: E402
    from localuf.decoders.snowflake import Snowflake  # noqa: E402
    code = make_code(code_kind, d)
    dec = Snowflake(code)                             # same entry point as collect()
    t_axis = code.TIME_AXIS
    others = [i for i in range(3) if i != t_axis]

    nodes = {}
    for idx, node in dec.NODES.items():
        nodes[node.ID] = (idx[t_axis], idx[others[0]], idx[others[1]])

    layers = collections.defaultdict(list)
    for nid, (t, a, b) in nodes.items():
        layers[t].append(nid)
    nl = len(layers)
    print("%s d=%d: %d nodes, %d layers, TIME_AXIS=%d, spatial axes=%s"
          % (code_kind, d, len(nodes), nl, t_axis, others))

    sizes = collections.Counter(len(v) for v in layers.values())
    print("layer sizes: %s" % dict(sizes))
    ok = True
    for t, mem in layers.items():
        pos = [(nodes[n][1], nodes[n][2]) for n in mem]
        if len(set(pos)) != len(pos):
            ok = False
    print("spatial (a,b) unique within every layer: %s" % ok)

    # in-layer edges, expressed as spatial offsets between the two endpoints
    per_layer = collections.defaultdict(collections.Counter)
    all_off = collections.Counter()
    for idx, node in dec.NODES.items():
        nid = node.ID
        t, a, b = nodes[nid]
        for _direction, (e, end_sel) in node.NEIGHBORS.items():
            nb = dec.NODES[e[end_sel]].ID
            nt, na, nbb = nodes[nb]
            if nt == t and nb != nid:
                off = (na - a, nbb - b)
                per_layer[t][off] += 1
                all_off[off] += 1

    print()
    print("%-6s %-8s %-10s %s" % ("layer", "nodes", "in-layer", "spatial offsets (count)"))
    for t in sorted(per_layer):
        off = per_layer[t]
        tot = sum(off.values())
        head = " ".join("%s:%d" % (k, v) for k, v in sorted(off.items(), key=lambda kv: -kv[1])[:6])
        print("%-6d %-8d %-10d %s" % (t, len(layers[t]), tot, head))
    print()
    print("union of all in-layer spatial offsets: %d distinct" % len(all_off))
    for k, v in sorted(all_off.items(), key=lambda kv: -kv[1]):
        print("   offset %-10s total %d" % (str(k), v))
    per = [set(per_layer[t].keys()) for t in sorted(per_layer)]
    common = set.intersection(*per) if per else set()
    union = set().union(*per) if per else set()
    print()
    print("offsets common to ALL layers: %s" % sorted(common))
    print("offsets present in only some layers: %s" % sorted(union - common))
    print("=> one lattice + masks is enough iff every layer's offsets are a SUBSET of the union")
    print("   and the union is small (a fixed port table): union has %d offsets" % len(union))

    # ---- vertical (cross-layer) ports, per layer -----------------------------
    # The lattice also needs the up/down ports; if those differ per layer (top
    # layer has no "above", bottom layer commits) they are what the per-layer
    # masks have to cover.
    vert = collections.defaultdict(collections.Counter)
    for idx, node in dec.NODES.items():
        nid = node.ID
        t, a, b = nodes[nid]
        for _direction, (e, end_sel) in node.NEIGHBORS.items():
            nb = dec.NODES[e[end_sel]].ID
            nt, na, nbb = nodes[nb]
            if nt != t and nb != nid:
                vert[t][(nt - t, na - a, nbb - b)] += 1
    print()
    print("%-6s %-10s %s" % ("layer", "nodes", "cross-layer offsets (dt,da,db) with counts"))
    for t in sorted(vert):
        c = vert[t]
        print("%-6d %-10d %s" % (t, len(layers[t]),
                                 " ".join("%s:%d" % (k, v) for k, v in sorted(c.items(), key=lambda kv: -kv[1]))))
    vsig = {t: tuple(sorted(vert[t].items())) for t in vert}
    groups = collections.defaultdict(list)
    for t, s in vsig.items():
        groups[s].append(t)
    print()
    print("distinct cross-layer port signatures: %d" % len(groups))
    for s, ts in groups.items():
        print("   layers %-24s -> %s" % (ts, [kv for kv in s][:4]))

    # ---- direction -> spatial offset consistency -----------------------------
    # For a GEOMETRIC lattice (fixed neighbour wiring, per-context masks only)
    # every RTL direction must mean the SAME (dt, da, db) offset at every node.
    # If that holds, the lattice is a plain grid and helios-n's premise ("a fixed
    # number of edges connecting adjacent PEs") is literally satisfied.
    print()
    dir_off = collections.defaultdict(collections.Counter)
    for idx, node in dec.NODES.items():
        t, a, b = nodes[node.ID]
        for direction, (e, end_sel) in node.NEIGHBORS.items():
            nb = dec.NODES[e[end_sel]].ID
            nt, na, nbb = nodes[nb]
            dir_off[direction][(nt - t, na - a, nbb - b)] += 1
    multi = {d: c for d, c in dir_off.items() if len(c) > 1}
    print("directions whose offset is unique over the whole graph: %d / %d"
          % (len(dir_off) - len(multi), len(dir_off)))
    for dname, c in sorted(dir_off.items()):
        common = c.most_common(1)[0]
        flag = "" if len(c) == 1 else "   <-- NOT UNIQUE (%d variants)" % len(c)
        print("   %-4s -> %-16s used %4d times (%.1f%% of its uses)%s"
              % (dname, common[0], common[1],
                 100.0 * common[1] / sum(c.values()), flag))
    if multi:
        for dname, c in sorted(multi.items()):
            print("   %s variants: %s" % (dname, c.most_common()))
    print()
    print("VERDICT geometric lattice (direction == fixed offset everywhere): %s"
          % (not multi))


if __name__ == "__main__":
    main()
