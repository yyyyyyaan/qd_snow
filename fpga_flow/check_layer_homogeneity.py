"""Are the time layers of the decoding graph homogeneous?

Helios-n works because "all sub-graphs of the decoding graph can be mapped to the
same lattice due to the homogeneous topology of the decoding graph where each PE
has a fixed number of edges".  For our windowed Snowflake graph that has to be
CHECKED, not assumed: the window has a top layer (where new syndrome is injected)
and a bottom layer (which commits), so the layer port patterns may differ.  The
answer decides whether the lattice can be "one layer, fully connected" or needs
per-layer port masks.

    python fpga_flow/check_layer_homogeneity.py [code] [d]
"""
import json
import math
import os
import re
import sys

HERE = os.path.dirname(os.path.abspath(__file__))
REPO = os.path.normpath(os.path.join(HERE, "..", "Helios_scalable_QEC-main", "Helios_scalable_QEC-main"))
GEN = os.path.join(REPO, "design", "generated")


def read_vec(txt, name):
    """Parse a packed table in ELEMENT order.

    generate_snowflake.py's vec() emits `for v in reversed(values)` -- the text
    lists the highest element first (element i sits at bits [i*W +: W]), so the
    numbers must be reversed after reading.  Getting this wrong silently
    scrambles every per-node table (it produced a bogus "layers are
    inhomogeneous" and a bogus neighbour-distance statistic).
    """
    m = re.search(r"localparam\s*\[[^\]]*\]\s*" + name + r"\s*=\s*\{(.*?)\};", txt, re.S)
    return None if not m else list(reversed([int(x) for x in re.findall(r"\d+'d(\d+)", m.group(1))]))



def main():
    code = sys.argv[1] if len(sys.argv) > 1 else "surface"
    d = int(sys.argv[2]) if len(sys.argv) > 2 else 7
    txt = open(os.path.join(GEN, "snowflake_graph_%s_d%d.svh" % (code, d)), encoding="utf-8").read()
    j = json.load(open(os.path.join(GEN, "snowflake_graph_%s_d%d_part.json" % (code, d))))
    part = {int(k): v for k, v in j["node_partition"].items()}
    nl = j["n_partitions"]

    NN = int(re.search(r"SNOW_NN\s*=\s*(\d+)", txt).group(1))
    NDIR = int(re.search(r"SNOW_NDIR\s*=\s*(\d+)", txt).group(1))
    nb = read_vec(txt, "SNOW_NB_VEC")
    bnd = read_vec(txt, "SNOW_BND_VEC")
    top = read_vec(txt, "SNOW_TOP_VEC")
    bot = read_vec(txt, "SNOW_BOT_VEC")
    no_node = max(nb)

    print("%s d=%d: NN=%d NE=%d layers=%d NDIR=%d" % (code, d, NN, len(j["edge_uv"]), nl, NDIR))
    print()
    print("%-6s %-7s %-7s %-7s %-8s %-10s %-14s %s"
          % ("layer", "nodes", "bnd", "top", "bot", "in-links", "deg hist", "cross-edges to next"))
    # cross edges per boundary
    edges = j["edge_uv"]
    xb = [0] * (nl + 1)
    for u, v in edges:
        if part[u] != part[v]:
            b = max(part[u], part[v])
            xb[b] += 1

    port_hist = {}
    for L in range(nl):
        mem = [n for n in range(NN) if part[n] == L]
        degs = []
        for n in mem:
            k = sum(1 for i in range(NDIR) if nb[n * NDIR + i] != no_node
                    and nb[n * NDIR + i] < NN and part[nb[n * NDIR + i]] == L)
            degs.append(k)
        h = {}
        for k in degs:
            h[k] = h.get(k, 0) + 1
        port_hist[L] = h
        print("%-6d %-7d %-7d %-7d %-8d %-10s %-14s %s"
              % (L, len(mem), sum(bnd[n] for n in mem), sum(top[n] for n in mem),
                 sum(bot[n] for n in mem),
                 "%d..%d" % (min(degs), max(degs)),
                 " ".join("%d:%d" % kv for kv in sorted(h.items())),
                 xb[L + 1] if L + 1 <= nl else "-"))
    print()
    same = all(port_hist[L] == port_hist[0] for L in range(nl))
    print("all layers identical port pattern: %s" % same)
    if not same:
        keys = sorted({k for h in port_hist.values() for k in h})
        print("  per-layer degree histogram (rows=layer, cols=in-layer degree):")
        print("        " + "".join("%6d" % k for k in keys))
        for L in range(nl):
            print("  L%-4d " % L + "".join("%6d" % port_hist[L].get(k, 0) for k in keys))


if __name__ == "__main__":
    main()
