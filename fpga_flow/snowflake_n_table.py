"""Snowflake-n parameter table: how big is the lattice, and how much traffic
crosses between time-slice groups, as a function of the multiplexing factor n?

Input is the generator's own partition info (node -> time-layer index, plus the
edge list), which is already written to design/generated/*_part.json.  Splitting
along the TIME axis is the right partition: only ~28-30% of edges cross a layer
boundary, versus 87-93% for any node-ID based cut (see check_node_order.py).

    python fpga_flow/snowflake_n_table.py
"""
import json
import os
import sys

HERE = os.path.dirname(os.path.abspath(__file__))
REPO = os.path.normpath(os.path.join(HERE, "..", "Helios_scalable_QEC-main", "Helios_scalable_QEC-main"))
GEN = os.path.join(REPO, "design", "generated")

# measured PE-array cost laws (VU9P, post-route, from optimization_report.md 6.4)
LUT_PER_EDGE = 86.0
LUT_PER_NODE = 186.0        # d7 value; grows with bit width
VU9P_LUT = 1182240
ZU7EV_LUT = 230400


def load(code, d):
    p = os.path.join(GEN, "snowflake_graph_%s_d%d_part.json" % (code, d))
    j = json.load(open(p))
    part = {int(k): v for k, v in j["node_partition"].items()}
    return j, part


def main():
    print("%-6s %-4s %-6s %-8s %-10s | %-6s %-9s %-9s %-8s %-9s"
          % ("code", "d", "nodes", "edges", "layers", "n", "lattice", "lattice%", "xg ed", "LUT est"))
    for code, d in (("surface", 5), ("surface", 7), ("surface", 21), ("surface", 51)):
        try:
            j, part = load(code, d)
        except FileNotFoundError:
            print("%-6s %-4d (no part.json)" % (code, d))
            continue
        nn = len(part)
        edges = j["edge_uv"]
        ne = len(edges)
        nl = j["n_partitions"]
        print("%-6s %-4d %-6d %-8d %-10d" % (code, d, nn, ne, nl))
        for n in (1, 2, 3, 4, 7, 14, 21, 51):
            if n > nl:
                continue
            # layer groups: [(i*nl)//n, ((i+1)*nl)//n)
            gsize, gedge, gedge_all = [], [], []
            for i in range(n):
                a = (i * nl) // n
                b = ((i + 1) * nl) // n
                # NB: inside() must map a NODE ID through part[] to its time
                # layer first -- comparing the raw node ID against the layer
                # range silently matches only IDs 0..nl-1.
                inside = lambda nid: a <= part[nid] < b     # noqa: E731
                gsize.append(sum(1 for nid in part if inside(nid)))
                gedge.append(sum(1 for u, v in edges if inside(u) != inside(v)))
                gedge_all.append(sum(1 for u, v in edges if inside(u) or inside(v)))
            lat = max(gsize)
            xg = sum(gedge)
            # Area model: the measurement says the PE array costs ~86 LUT per
            # EDGE and essentially nothing per node on top of that
            # (d7: 86*847 = 72,842 vs 72,982 measured, -0.2%; d5 -5%).
            # A lattice holding one layer group must instantiate every edge that
            # has at least one endpoint inside it (internal + crossing).
            touched = max(gedge_all)
            lut = LUT_PER_EDGE * touched
            print("%-6s %-4s %-6s %-8s %-10s | %-6d %-9d %-9.1f %-8d %-9.0f"
                  % ("", "", "", "", "", n, lat, 100.0 * lat / nn, xg, lut))
            if d == 7 and n == 1:
                print("      (model check: 86 LUT/edge * %d edges = %.0f vs 72,982 measured)"
                      % (ne, LUT_PER_EDGE * ne))
    print()
    print("VU9P   = %d LUT, ZU7EV = %d LUT" % (VU9P_LUT, ZU7EV_LUT))
    print("full d7  PE array measured: 72,982 LUT (bus on) / d5: 23,168 LUT")


if __name__ == "__main__":
    main()
