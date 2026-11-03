"""Build a pblock grouping that follows the graph's TIME axis.

Why not group by node ID: the generator's node numbering is not spatial.  For
surface d7 the mean |delta ID| between neighbours is 153 (p90 316) and 87-93% of
all neighbour links would cross any ID-based stripe cut -- an ID stripe measures
pure damage, not locality.

The natural boundary is the measurement-round axis (the same axis Helios
partitions along for Helios-n).  The round index is recovered by walking the
SNOW_ABOVE_VEC chain (the window's vertical neighbour), then rounds are grouped
into k contiguous blocks and written out as one group id per node.

    python fpga_flow/make_pblock_groups.py surface 7 7 fpga_flow/logs/groups_surface_d7_k7.txt
"""
import os
import re
import sys

HERE = os.path.dirname(os.path.abspath(__file__))
REPO = os.path.normpath(os.path.join(HERE, "..", "Helios_scalable_QEC-main", "Helios_scalable_QEC-main"))
GEN = os.path.join(REPO, "design", "generated")


def read_vec(txt, name):
    m = re.search(r"localparam\s*\[[^\]]*\]\s*" + name + r"\s*=\s*\{(.*?)\};", txt, re.S)
    return None if not m else [int(x) for x in re.findall(r"\d+'d(\d+)", m.group(1))]


def main():
    code = sys.argv[1] if len(sys.argv) > 1 else "surface"
    d = int(sys.argv[2]) if len(sys.argv) > 2 else 7
    k = int(sys.argv[3]) if len(sys.argv) > 3 else 7
    out = sys.argv[4] if len(sys.argv) > 4 else os.path.join(HERE, "logs", "groups_%s_d%d_k%d.txt" % (code, d, k))

    path = os.path.join(GEN, "snowflake_graph_%s_d%d.svh" % (code, d))
    txt = open(path, encoding="utf-8").read()
    NN = int(re.search(r"SNOW_NN\s*=\s*(\d+)", txt).group(1))
    NDIR = int(re.search(r"SNOW_NDIR\s*=\s*(\d+)", txt).group(1))
    rounds = int(re.search(r"SNOW_WINDOW_HEIGHT\s*=\s*(\d+)", txt).group(1))
    nb = read_vec(txt, "SNOW_NB_VEC")
    above = read_vec(txt, "SNOW_ABOVE_VEC")
    bot = read_vec(txt, "SNOW_BOT_VEC")
    no_node = max(nb)

    # Round index: SNOW_ABOVE is a CYCLE, not a DAG -- the window is a circular
    # buffer (the row that commits at the bottom is refilled at the top), so a
    # naive "walk up until NO_NODE" loops forever.  Start each cycle at its
    # bottom-row node (SNOW_BOT_VEC) and count steps from there.
    def above_of(n):
        a = above[n] if above else no_node
        return None if (a == no_node or a >= NN) else a

    rnd = [-1] * NN
    for start in range(NN):
        if rnd[start] >= 0:
            continue
        # walk the cycle to collect its members
        cyc = []
        cur = start
        while cur is not None and rnd[cur] < 0 and cur not in cyc:
            cyc.append(cur)
            cur = above_of(cur)
        if cur is not None and cur in cyc:
            cyc = cyc[cyc.index(cur):]        # trim the tail before the cycle
        # reference: the bottom-row node of this cycle, else the lowest index
        bots = [n for n in cyc if bot and bot[n]]
        ref = bots[0] if bots else min(cyc)
        if not bots:
            print("WARN cycle without a BOT node (start=%d, len=%d)" % (start, len(cyc)))
        # rotate so that ref is first, then depth = position in the cycle
        i = cyc.index(ref)
        ordered = cyc[i:] + cyc[:i]
        for depth, n in enumerate(ordered):
            rnd[n] = depth
        if len(cyc) != rounds:
            print("WARN cycle length %d != window height %d (start=%d)" % (len(cyc), rounds, start))
    hist = {}
    for r in rnd:
        hist[r] = hist.get(r, 0) + 1
    ncyc = hist.get(0, 0)
    print("NN=%d rounds=%d NDIR=%d  cycles=%d  node count per depth: %s"
          % (NN, rounds, NDIR, ncyc, [hist.get(i, 0) for i in range(max(hist) + 1)]))

    # group rounds into k contiguous blocks of nearly equal total node count
    maxr = max(rnd)
    groups = [0] * NN
    bounds = [((i * (maxr + 1)) // k) for i in range(k + 1)]
    for n in range(NN):
        g = 0
        for i in range(k):
            if bounds[i] <= rnd[n] < bounds[i + 1] or (i == k - 1 and rnd[n] >= bounds[i]):
                g = i
                break
        groups[n] = g
    gsizes = {}
    for g in groups:
        gsizes[g] = gsizes.get(g, 0) + 1
    print("rounds per group: %s" % [ (bounds[i], bounds[i + 1] - 1) for i in range(k) ])
    print("node count per group: %s" % [gsizes.get(i, 0) for i in range(k)])

    # how many neighbour links cross a group boundary?  (this is the cost the
    # pblock is forcing onto the router)
    cross = 0
    total = 0
    for n in range(NN):
        for j in range(NDIR):
            v = nb[n * NDIR + j]
            if v != no_node and v < NN:
                total += 1
                if groups[n] != groups[v]:
                    cross += 1
    print("neighbour links crossing a group boundary: %d / %d (%.1f%%)"
          % (cross, total, 100.0 * cross / max(1, total)))
    # temporal (round-changing) vs spatial links, for reference
    temp = sum(1 for n in range(NN) for j in range(NDIR)
               if nb[n * NDIR + j] != no_node and nb[n * NDIR + j] < NN
               and rnd[nb[n * NDIR + j]] != rnd[n])
    print("links that change round (temporal): %d / %d (%.1f%%)"
          % (temp, total, 100.0 * temp / max(1, total)))
    print("bottom-row nodes: %d" % sum(1 for b in (bot or []) if b))

    os.makedirs(os.path.dirname(out), exist_ok=True)
    with open(out, "w", encoding="ascii") as fh:
        fh.write("# node_index group_id   (%s d=%d, k=%d, grouped along the round axis)\n" % (code, d, k))
        for n in range(NN):
            fh.write("%d %d\n" % (n, groups[n]))
    print("wrote %s" % out)


if __name__ == "__main__":
    main()
