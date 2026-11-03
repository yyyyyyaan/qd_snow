"""Check whether node IDs are contiguous in space in the generated graph.

The pblock experiment maps *contiguous node-ID blocks* onto physical stripes, so
it only tests "PE locality" if a block of IDs is also a spatial neighbourhood.
If IDs were scattered, the stripes would cut the graph into random pieces and the
experiment would measure nothing but damage.

    python fpga_flow/check_node_order.py [d]
"""
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
    d = int(sys.argv[1]) if len(sys.argv) > 1 else 7
    path = os.path.join(GEN, "snowflake_graph_surface_d%d.svh" % d)
    txt = open(path, encoding="utf-8").read()
    NN = int(re.search(r"SNOW_NN\s*=\s*(\d+)", txt).group(1))
    NDIR = int(re.search(r"SNOW_NDIR\s*=\s*(\d+)", txt).group(1))
    rounds = int(re.search(r"SNOW_WINDOW_HEIGHT\s*=\s*(\d+)", txt).group(1))
    nb = read_vec(txt, "SNOW_NB_VEC")
    above = read_vec(txt, "SNOW_ABOVE_VEC")
    marker = max(nb)
    print("d=%d NN=%d NDIR=%d rounds=%d nb_len=%d above_len=%d marker=%d"
          % (d, NN, NDIR, rounds, len(nb), len(above or []), marker))

    dists = []
    for n in range(NN):
        for k in range(NDIR):
            v = nb[n * NDIR + k]
            if v != marker and v < NN:
                dists.append(abs(v - n))
    dists.sort()
    print("neighbour |dID|: mean %.1f median %d p90 %d max %d"
          % (sum(dists) / len(dists), dists[len(dists) // 2],
             dists[int(len(dists) * 0.9)], dists[-1]))
    per_round = NN // rounds
    print("nodes per round = %d" % per_round)
    for lim in (per_round // 4, per_round // 2, per_round, 2 * per_round):
        frac = sum(1 for x in dists if x <= lim) / len(dists)
        print("  |dID| <= %-4d : %.3f of all neighbour links" % (lim, frac))

    # how many stripe cuts (k stripes => k-1 cuts) would separate neighbours?
    for k in (2, 4, 6, 7, 8, 14):
        cuts = set((i * NN // k) for i in range(1, k))
        cross = 0
        for n in range(NN):
            for j in range(NDIR):
                v = nb[n * NDIR + j]
                if v != marker and v < NN:
                    a, b = min(n, v), max(n, v)
                    if any(a < c <= b for c in cuts):
                        cross += 1
        print("  k=%-3d cuts at %s -> %d of %d neighbour links cross a stripe (%.1f%%)"
              % (k, sorted(cuts)[:6], cross, len(dists), 100.0 * cross / len(dists)))


if __name__ == "__main__":
    main()
