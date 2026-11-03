"""Cross-check: why did check_layer_homogeneity.py see different in-layer port
patterns per layer while check_lattice_embedding.py sees identical ones?

Method A (homogeneity script): SNOW_NB_VEC from the generated .svh + the layer
rank from *_part.json.
Method B (embedding script): localuf's node.NEIGHBORS + idx[TIME_AXIS] directly.

They must agree; if they do not, one of the two mappings is wrong and the
snowflake-n design (which relies on layer structure) is being built on sand.

    python fpga_flow/crosscheck_layers.py surface 7
"""
import collections
import json
import os
import re
import sys

HERE = os.path.dirname(os.path.abspath(__file__))
REPO = os.path.normpath(os.path.join(HERE, "..", "Helios_scalable_QEC-main", "Helios_scalable_QEC-main"))
GEN = os.path.join(REPO, "design", "generated")
sys.path.insert(0, os.path.join(REPO, "build_scripts"))


def read_vec(txt, name):
    """Parse a packed constant table into element order.

    IMPORTANT: generate_snowflake.py's vec() emits `for v in reversed(values)`,
    i.e. the text lists the HIGHEST element first (element i lives at bits
    [i*W +: W]).  Reading the numbers in textual order therefore yields the
    elements reversed -- which silently scrambles every per-node table and makes
    layer/neighbourhood statistics meaningless.  Always reverse here.
    """
    m = re.search(r"localparam\s*\[[^\]]*\]\s*" + name + r"\s*=\s*\{(.*?)\};", txt, re.S)
    if not m:
        return None
    return list(reversed([int(x) for x in re.findall(r"\d+'d(\d+)", m.group(1))]))


def main():
    kind = sys.argv[1] if len(sys.argv) > 1 else "surface"
    d = int(sys.argv[2]) if len(sys.argv) > 2 else 7
    from generate_snowflake import make_code
    from localuf.decoders.snowflake import Snowflake

    txt = open(os.path.join(GEN, "snowflake_graph_%s_d%d.svh" % (kind, d)), encoding="utf-8").read()
    j = json.load(open(os.path.join(GEN, "snowflake_graph_%s_d%d_part.json" % (kind, d))))
    part = {int(k): v for k, v in j["node_partition"].items()}
    NN = int(re.search(r"SNOW_NN\s*=\s*(\d+)", txt).group(1))
    NDIR = int(re.search(r"SNOW_NDIR\s*=\s*(\d+)", txt).group(1))
    nb = read_vec(txt, "SNOW_NB_VEC")
    no_node = max(nb)

    code = make_code(kind, d)
    dec = Snowflake(code)
    t_axis = code.TIME_AXIS
    print("%s d=%d: NN=%d NDIR=%d TIME_AXIS=%s" % (kind, d, NN, NDIR, t_axis))
    print("part.json n_partitions=%d, ranks present=%s"
          % (j["n_partitions"], sorted(set(part.values()))))

    # raw t values and their rank mapping
    raw = {node.ID: idx[t_axis] for idx, node in dec.NODES.items()}
    tvals = sorted(set(raw.values()))
    t2rank = {t: i for i, t in enumerate(tvals)}
    print("raw t values: %s" % tvals)
    print("rank->raw: %s" % {i: t for t, i in t2rank.items()})
    mismatch = sum(1 for n in raw if t2rank[raw[n]] != part[n])
    print("nodes where part.json rank != rank(idx[TIME_AXIS]): %d / %d" % (mismatch, NN))
    if mismatch:
        ex = [n for n in sorted(raw) if t2rank[raw[n]] != part[n]][:5]
        for n in ex:
            print("   node %d: raw t=%s rank=%d part.json=%d" % (n, raw[n], t2rank[raw[n]], part[n]))

    # Method A: in-layer degree from the .svh neighbour table + part.json rank
    degA = collections.defaultdict(collections.Counter)
    for n in range(NN):
        k = 0
        for i in range(NDIR):
            v = nb[n * NDIR + i]
            if v != no_node and v < NN and part[v] == part[n]:
                k += 1
        degA[part[n]][k] += 1
    # Method B: localuf neighbours + raw t rank
    degB = collections.defaultdict(collections.Counter)
    for idx, node in dec.NODES.items():
        nid = node.ID
        k = 0
        for _dir, (e, sel) in node.NEIGHBORS.items():
            other = dec.NODES[e[sel]].ID
            if other != nid and t2rank[raw[other]] == t2rank[raw[nid]]:
                k += 1
        degB[t2rank[raw[nid]]][k] += 1

    print()
    print("%-6s %-28s %s" % ("rank", "A: svh NB_VEC + part.json", "B: localuf NEIGHBORS"))
    for r in range(j["n_partitions"]):
        print("%-6d %-28s %s" % (r,
                                 " ".join("%d:%d" % kv for kv in sorted(degA[r].items())),
                                 " ".join("%d:%d" % kv for kv in sorted(degB[r].items()))))
    same = all(degA[r] == degB[r] for r in range(j["n_partitions"]))
    print()
    print("methods agree per layer: %s" % same)
    if not same:
        # where is the disagreement? look at one node
        for n in range(NN):
            va = sorted(nb[n * NDIR + i] for i in range(NDIR)
                        if nb[n * NDIR + i] != no_node and nb[n * NDIR + i] < NN)
            idx = [k for k, v in dec.NODES.items() if v.ID == n][0]
            vb = sorted(dec.NODES[e[sel]].ID for _dr, (e, sel) in dec.NODES[idx].NEIGHBORS.items())
            if va != vb:
                print("   node %d: svh neighbours %s" % (n, va))
                print("            localuf      %s" % vb)
                break


if __name__ == "__main__":
    main()
