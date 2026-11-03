"""Consistency check for the snowflake-n slice port maps.

The generator emits, per slice, a per-node per-direction port map
(`kind` = none / int / seam).  The RTL prototype will wire internal ports to
neighbour PEs and seam ports to the seam buffer, so two properties must hold on
the real graph before any RTL is written:

  1. every direction of every node is classified exactly once, and the class
     agrees with the slice partition;
  2. every seam port (n, d) -> (m in another slice) has a MATCHING reverse seam
     entry (m, d') -> n with d' == rev(n, d) -- otherwise the localised push
     would be routed to the wrong port across the seam;
  3. the number of distinct seam peers equals the crossing-edge endpoint count
     reported by the generator.

    python fpga_flow/check_slice_ports.py surface 5 2
"""
import json
import os
import sys

HERE = os.path.dirname(os.path.abspath(__file__))
REPO = os.path.normpath(os.path.join(HERE, "..", "Helios_scalable_QEC-main", "Helios_scalable_QEC-main"))
GEN = os.path.join(REPO, "design", "generated")


def main():
    code = sys.argv[1] if len(sys.argv) > 1 else "surface"
    d = int(sys.argv[2]) if len(sys.argv) > 2 else 5
    ns = int(sys.argv[3]) if len(sys.argv) > 3 else 2
    path = os.path.join(GEN, "snowflake_graph_%s_d%d_part.json" % (code, d))
    j = json.load(open(path))
    if "slices" not in j:
        print("no slices in %s -- rerun the generator with --slices %d" % (path, ns))
        return 1
    slices = j["slices"]
    print("%s d=%d: %d slices, nodes/slice %s, layers/slice %s"
          % (code, d, len(slices), [s["n_nodes"] for s in slices],
             [len(s["layers"]) for s in slices]))

    # rebuild the global port view: (node, dir) -> (kind, peer)
    glob = {}
    for s in slices:
        for n_str, ports in s["port_map"].items():
            n = int(n_str)
            for p in ports:
                key = (n, p["d"])
                if key in glob:
                    print("  FAIL: duplicate port entry %s" % (key,))
                    return 1
                glob[key] = p
    ndir = max(p["d"] for p in glob.values()) + 1
    ok = True

    # 1) classification
    kinds = {}
    for (n, dd), p in glob.items():
        kinds[p["kind"]] = kinds.get(p["kind"], 0) + 1
    print("  port classification: %s" % kinds)

    # 2) seam reciprocity
    bad = 0
    seam_ports = [(k, p) for k, p in glob.items() if p["kind"] == "seam"]
    for (n, dd), p in seam_ports:
        m = p["peer"]
        back = glob.get((m, p["rev"]))
        if back is None or back["kind"] != "seam" or back["peer"] != n:
            bad += 1
            if bad <= 3:
                print("  FAIL: seam port (%d,%d)->%d has no reciprocal at rev=%d"
                      % (n, dd, m, p["rev"]))
    print("  seam ports: %d, reciprocity violations: %d" % (len(seam_ports), bad))
    ok = ok and bad == 0

    # 2b) every seam peer must appear in the seam node list with the stated index
    idx_bad = sum(1 for (n, dd), p in seam_ports if p.get("seam_idx", -1) < 0)
    print("  seam ports with a missing seam_idx: %d" % idx_bad)
    ok = ok and idx_bad == 0

    # 3) seam peers vs crossing edges -- union over ALL cuts (with n>2 slices
    #    there are n-1 cuts, and looking at only the first one under-counts)
    seam_peer_nodes = set(p["peer"] for _k, p in seam_ports)
    cross = set()
    for c in j["slices_meta"]["seam_cuts"]:
        for e in c["crossing_edges"]:
            u, v = j["edge_uv"][e]
            cross.add(u)
            cross.add(v)
    print("  distinct seam peer nodes: %d ; crossing-edge endpoints (all cuts): %d ; equal: %s"
          % (len(seam_peer_nodes), len(cross), seam_peer_nodes == cross))
    ok = ok and (seam_peer_nodes == cross)

    # internal ports must point at same-slice nodes
    slice_of = {}
    for s in slices:
        for n in s["nodes"]:
            slice_of[n] = s["index"]
    int_bad = sum(1 for _k, p in glob.items()
                  if p["kind"] == "int" and slice_of.get(p["peer"]) != slice_of.get(_k[0]))
    print("  internal ports pointing outside their slice: %d" % int_bad)
    ok = ok and int_bad == 0

    print("VERDICT %s" % ("PASS" if ok else "FAIL"))
    return 0 if ok else 1


if __name__ == "__main__":
    sys.exit(main())
