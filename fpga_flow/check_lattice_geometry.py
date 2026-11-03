"""Verify the geometric premise of the shared lattice (design doc 1.4 / 3.3 / 6.1).

    python fpga_flow/check_lattice_geometry.py                 # d3/d5/d7/d21 + rep
    python fpga_flow/check_lattice_geometry.py surface 21

The shared-lattice snowflake-n build only works if neighbour routing can be a
COMPILE-TIME CONSTANT slot offset.  If it could not, each slot would need a
per-context routing ROM of ~350 bits (12 directions x (kind + slot index + rev),
plus the per-direction edge slot index), i.e. ~1,050 LUT/slot at d21/n=7 --
1.45M LUT, more than the whole device (design doc 6.1).  So this is a
go/no-go premise, not a nicety.

Three things are checked, all straight from localuf (no packed vectors, so none
of the reversed-emission parsing that produced the bogus conclusions corrected
in design doc 1.4):

  1. OFFSET CONSTANCY -- for every direction name, the index delta
     neighbour - self is the SAME for every node in the graph.
  2. LAYER HOMOGENEITY -- the set of spatial coordinates is identical in every
     time layer (stronger than the per-layer counts checked before: set
     equality, so a single slot numbering serves every layer).
  3. PORT PATTERN DERIVABILITY -- for each direction, whether a node has that
     neighbour is decided by (a) the slot staying inside the lattice, which is
     geometry hence constant per slot, and (b) for the two TIME directions
     only, whether the adjacent layer is in this slice -- one per-context bit.
     In-plane directions therefore need no per-context table at all.

Exit status is 0 iff every check passes.
"""
import sys
import os
from collections import defaultdict

HERE = os.path.dirname(os.path.abspath(__file__))
BUILD = os.path.normpath(os.path.join(
    HERE, "..", "Helios_scalable_QEC-main", "Helios_scalable_QEC-main",
    "build_scripts"))
sys.path.insert(0, BUILD)

from generate_snowflake import make_code                     # noqa: E402
from localuf.decoders.snowflake import Snowflake             # noqa: E402


def analyse(kind, d, nslices=None):
    code = make_code(kind, d)
    dec = Snowflake(code)
    ndim = len(next(iter(dec.NODES)))
    ta = code.TIME_AXIS % ndim
    spatial_axes = [a for a in range(ndim) if a != ta]

    # ---- 1. offset constancy -------------------------------------------
    off = defaultdict(set)
    for idx, nd in dec.NODES.items():
        for dname, (edge, sel) in nd.NEIGHBORS.items():
            nidx = edge[sel]              # neighbour, same convention as the generator
            off[dname].add(tuple(b - a for a, b in zip(idx, nidx)))
    bad_off = {k: sorted(v) for k, v in off.items() if len(v) != 1}

    # ---- 2. layer homogeneity ------------------------------------------
    layers = defaultdict(set)
    for idx in dec.NODES:
        layers[idx[ta]].add(tuple(idx[a] for a in spatial_axes))
    keys = sorted(layers)
    sets = [layers[k] for k in keys]
    homog = all(s == sets[0] for s in sets)

    # ---- 3. port pattern derivability ----------------------------------
    # in-plane direction: does "has neighbour" ever disagree between two nodes
    # at the SAME spatial coordinate in different layers?  if not, the port
    # pattern is a function of the slot alone (no per-context bit needed).
    time_dirs = [k for k, v in off.items()
                 if len(v) == 1 and next(iter(v))[ta] != 0]
    plane_dirs = [k for k, v in off.items()
                  if len(v) == 1 and next(iter(v))[ta] == 0]
    by_pos = defaultdict(dict)
    for idx, nd in dec.NODES.items():
        sp = tuple(idx[a] for a in spatial_axes)
        by_pos[sp][idx[ta]] = set(nd.NEIGHBORS)
    plane_unstable = []
    for sp, per_layer in by_pos.items():
        for d2 in plane_dirs:
            if len({(d2 in nbrs) for nbrs in per_layer.values()}) != 1:
                plane_unstable.append((sp, d2))
    plane_stable = not plane_unstable

    # ---- slice sizes (for the NSLOT / sharing-factor numbers) ----------
    nl = len(keys)
    slice_info = None
    if nslices and nslices <= nl:
        groups = [list(range((i * nl) // nslices, ((i + 1) * nl) // nslices))
                  for i in range(nslices)]
        per = [sum(len(layers[keys[li]]) for li in gr) for gr in groups]
        slice_info = dict(layers_per_slice=[len(g) for g in groups],
                          nodes_per_slice=per, nslot=max(per),
                          total=sum(per), factor=sum(per) / max(per))

    return dict(kind=kind, d=d, ndim=ndim, time_axis=ta, n_nodes=len(dec.NODES),
                n_layers=nl, offsets={k: next(iter(v)) for k, v in off.items()
                                      if len(v) == 1},
                bad_offsets=bad_off, homogeneous=homog,
                plane_dirs=sorted(plane_dirs), time_dirs=sorted(time_dirs),
                plane_port_stable=plane_stable, plane_unstable=plane_unstable,
                slices=slice_info)


def main():
    if len(sys.argv) >= 3:
        cfgs = [(sys.argv[1], int(sys.argv[2]))]
        ns = int(sys.argv[3]) if len(sys.argv) > 3 else None
        cfgs = [(cfgs[0][0], cfgs[0][1], ns)]
    else:
        cfgs = [("surface", 3, 2), ("surface", 5, 2), ("surface", 7, 3),
                ("surface", 21, 7), ("rep", 3, 2)]
    ok = True
    for kind, d, ns in cfgs:
        r = analyse(kind, d, ns)
        good = (not r["bad_offsets"]) and r["homogeneous"] and r["plane_port_stable"]
        ok = ok and good
        print("%s d%d: %d nodes, %d layers, %d-D index, time axis %d  -> %s"
              % (kind, d, r["n_nodes"], r["n_layers"], r["ndim"], r["time_axis"],
                 "PASS" if good else "FAIL"))
        print("   offsets (constant per direction): %s"
              % ", ".join("%s=%s" % (k, v) for k, v in sorted(r["offsets"].items())))
        if r["bad_offsets"]:
            print("   !! NON-CONSTANT OFFSETS: %s" % r["bad_offsets"])
        print("   layer homogeneity (spatial set equality): %s"
              % r["homogeneous"])
        if r["plane_port_stable"]:
            print("   in-plane dirs %s: port pattern depends on the SLOT only "
                  "(no per-context bit)" % r["plane_dirs"])
        else:
            print("   !! in-plane port pattern varies within a slot position: %s"
                  % r["plane_unstable"][:6])
        print("   time dirs %s: the only ones needing a per-context bit"
              % r["time_dirs"])
        if r["slices"]:
            s = r["slices"]
            print("   slices n=%d: layers/slice %s, nodes/slice %s -> NSLOT=%d, "
                  "sharing factor %.2fx (of %d nodes)"
                  % (ns, s["layers_per_slice"], s["nodes_per_slice"], s["nslot"],
                     s["factor"], s["total"]))
        print()
    print("LATTICE_GEOMETRY_VERDICT %s" % ("PASS" if ok else "FAIL"))
    sys.exit(0 if ok else 1)


if __name__ == "__main__":
    main()
