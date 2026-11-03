"""Probe 4: can the rotated CIRCUIT-LEVEL graph be taken straight from Stim's
detector error model, in our (a, b, t) index space?

    python fpga_flow/probe_rotated_stim_graph.py

The question this de-risks (P4 step 3): localuf's unrotated circuit-level graph
is built by enumerating ~15 hand-derived edge families; for the rotated lattice
the reliable source of truth is Stim's circuit-level model.  Before writing
`RotatedSurface._circuit_level_edges` on top of it, check the three things the
implementation depends on:

  1. the DEM's detectors of ONE basis land on a subset of our lattice with a
     CONSTANT affine map (proof: the same-basis detector set of one round is a
     translated copy of the next round's);
  2. the DEM's two-detector mechanisms INCLUDE every phenomenological edge
     (space + time) -- i.e. the circuit-level graph is a SUPERSET, so the
     implementation can be "phenomenological edges + the extra ones";
  3. what the EXTRA edges are (da, db, dt) classes -- they must be the hook
     families, and their count must match the direction-class measurement.

plus: how many 1-detector mechanisms there are, and whether each one's detector
is adjacent to a wall node of the PHENOMENOLOGICAL graph (in which case a
boundary fault needs NO new edge -- it is an extra fault on an existing
boundary edge).
"""
import collections
import io
import os
import sys

import stim

HERE = os.path.dirname(os.path.abspath(__file__))
WS = os.path.dirname(HERE)
sys.path.insert(0, os.path.join(WS, "localuf-main", "localuf-main"))
sys.path.insert(0, os.path.join(WS, "Helios_scalable_QEC-main",
                                "Helios_scalable_QEC-main", "build_scripts"))

from localuf.rotated import RotatedSurface                       # noqa: E402

SHIFT = [None]   # (da, db, overlap) chosen by the alignment search

NOISE = dict(after_clifford_depolarization=0.001,
             before_measure_flip_probability=0.001,
             after_reset_flip_probability=0.001,
             before_round_data_depolarization=0.001)


def stim_one_basis(d, rounds, ref_det):  # noqa: C901
    c = stim.Circuit.generated("surface_code:rotated_memory_z", distance=d,
                               rounds=rounds, **NOISE)
    dem = c.detector_error_model(decompose_errors=True)
    coords = c.get_detector_coordinates()
    xs = sorted({round(2 * cc[0]) for cc in coords.values()})
    ys = sorted({round(2 * cc[1]) for cc in coords.values()})

    def lat(i):
        cc = coords[i]
        return (xs.index(round(2 * cc[0])), ys.index(round(2 * cc[1])),
                round(cc[2] if len(cc) > 2 else 0))

    # WHICH DETECTORS ARE THE Z BASIS?  NOT by coordinate parity: measured, the
    # parity rule mixes the bases (for `unrotated_memory_z` every detector of
    # both bases has the same parity, and for the rotated layout the first and
    # last sheets carry only one basis each).  The robust rule is Stim's own: in
    # a `memory_z` circuit the Z-stabiliser comparisons are deterministic from
    # round 0, so the detectors present in SHEET 0 are exactly the Z checks --
    # (d^2-1)/2 of them, i.e. one full layer.
    t0 = min(round(cc[2] if len(cc) > 2 else 0) for cc in coords.values())
    sheet0 = {lat(i)[:2] for i in coords
              if round(coords[i][2] if len(coords[i]) > 2 else 0) == t0}
    det = {i: v for i, v in ((i, lat(i)) for i in coords)
           if v[:2] in sheet0}
    # ALIGN the mapped box onto OUR lattice: the two frames agree on the lattice
    # but not on the origin, so solve the translation by OVERLAP rather than
    # guessing (a wrong shift silently produces two disjoint detector sets --
    # which is exactly what the first version of this probe reported).
    best = None
    for da in range(-3, 4):
        for db in range(-3, 4):
            common = sum(1 for v in det.values()
                         if (v[0] + da, v[1] + db, v[2]) in ref_det)
            if best is None or common > best[0]:
                best = (common, da, db)
    SHIFT[0] = (best[1], best[2], best[0])
    det = {i: (v[0] + best[1], v[1] + best[2], v[2]) for i, v in det.items()}

    two, one, zero = set(), set(), 0
    for inst in dem.flattened():
        if inst.type != 'error':
            continue
        comp = []
        for t in inst.targets_copy():
            if t.is_separator():
                if comp:
                    (two if len(comp) == 2 else
                     one if len(comp) == 1 else None) is not None and None
                    if len(comp) == 2:
                        two.add(frozenset(comp))
                    elif len(comp) == 1:
                        one.add(comp[0])
                    else:
                        zero += 1
                comp = []
            elif t.is_relative_detector_id():
                comp.append(t.val)
        if comp:
            if len(comp) == 2:
                two.add(frozenset(comp))
            elif len(comp) == 1:
                one.add(comp[0])
            else:
                zero += 1
    return det, two, one, zero


def main():
    out = []

    def p(s=''):
        print(s)
        out.append(s)

    for d in (3, 5):
        code = RotatedSurface(d, 'phenomenological', scheme='frugal')
        h = code.SCHEME.WINDOW_HEIGHT
        phen = {frozenset((u, v)) for u, v in code.EDGES
                if all(x[2] < h for x in (u, v))}
        phen_det = {v for v in code.NODES
                    if not code.is_boundary(v) and v[2] < h}
        det, two, one, zero = stim_one_basis(d, h, phen_det)
        p("=" * 108)
        p("rotated d=%d, window h=%d: phenomenological graph has %d nodes "
          "(%d detectors, %d wall) and %d edges"
          % (d, h, len(phen_det) + len({v for v in code.NODES if code.is_boundary(v) and v[2] < h}),
             len(phen_det),
             len({v for v in code.NODES if code.is_boundary(v) and v[2] < h}),
             len(phen)))
        p("   Stim DEM, Z basis (detectors present in sheet 0): %d detectors, "
          "%d two-detector mechanisms, %d one-detector, %d zero-detector"
          % (len(det), len(two), len(one), zero))
        # do the DEM's detectors coincide with our detector set?
        dd = {det[i] for i in det}
        p("   alignment shift (da, db) = (%d, %d), overlap %d"
          % (SHIFT[0][0], SHIFT[0][1], SHIFT[0][2]))
        p("   detector sets: ours %d, stim %d, identical=%s  (ours-only %d, "
          "stim-only %d)"
          % (len(phen_det), len(dd), dd == phen_det,
             len(phen_det - dd), len(dd - phen_det)))
        # inside our time window?
        tmax = max(v[2] for v in dd)
        p("   stim detector t range: 0..%d (our window keeps t < %d)" % (tmax, h))

        # 2) is the DEM edge set a superset of the phenomenological one?
        stim_edges = set()
        for e in two:
            u, v = sorted(e)
            if u in det and v in det:
                stim_edges.add(frozenset((det[u], det[v])))
        miss = phen - stim_edges
        extra = stim_edges - phen
        p("   DEM edges (both endpoints in our one-basis detector set): %d" % len(stim_edges))
        p("   phenomenological edges NOT in the DEM: %d %s"
          % (len(miss), sorted(miss)[:3]))
        p("   DEM edges NOT phenomenological (the hooks): %d" % len(extra))
        cls = collections.Counter()
        for e in extra:
            u, v = sorted(e)
            cls[(v[0] - u[0], v[1] - u[1], v[2] - u[2])] += 1
        p("   hook classes (directed as extracted): %s"
          % dict(sorted(cls.items(), key=lambda kv: -kv[1])))
        # 3) are the one-detector mechanisms adjacent to an existing wall node?
        wall_adj = collections.Counter()
        for i in one:
            v = det.get(i)
            if v is None:
                continue
            nb = {frozenset((v, w)) for w in code.neighbors(v)} if v in code.INCIDENT_EDGES else set()
            wall_adj[bool(nb & phen)] += 1
        p("   one-detector mechanisms: %d have a PHENOMENOLOGICAL neighbour edge "
          "(boundary fault on an existing edge), %d do not"
          % (wall_adj[True], wall_adj[False]))

    io.open(os.path.join(HERE, 'logs', 'probe_rotated_stim_graph.txt'), 'w',
            encoding='utf-8').write('\n'.join(out) + '\n')
    p()
    p("written -> fpga_flow/logs/probe_rotated_stim_graph.txt")


if __name__ == "__main__":
    main()
