"""Probe 3: map Stim's circuit-level detector graph onto the (a, b, t) check
lattice, and tabulate the edge families in LATTICE units.

    python fpga_flow/probe_rotated_circuit_edges.py

Why: `RotatedSurface._circuit_level_edges` is the last missing piece of P4.  The
unrotated families in localuf come from its own CNOT-schedule derivation; for the
rotated lattice the reliable source of truth is Stim's circuit-level model (the
one the pricing experiment used, and which matches localuf's unrotated counts:
d5 single-basis detectors 100, edges ~467 vs localuf 457).

This script does NOT build the graph yet.  It answers, empirically:

  1. what affine map takes a Stim detector coordinate to our (a, b) ?  (fitted
     from the coordinate set, then cross-checked against the known lattice)
  2. what are the edge DELTA CLASSES in lattice units (da, db, dt)?
     The unrotated layout is run as a CONTROL: its classes must come out as the
     four axis-aligned space steps, the time step, and localuf's three hook
     families (`sd`, `eu`, `seu`) -- if they do, the same extraction is
     trustworthy for the rotated lattice.
  3. how many edges are 1-detector (boundary) mechanisms, and where do they sit
     (which wall they must attach to)?
"""
import collections
import io
import os
import sys

import stim

HERE = os.path.dirname(os.path.abspath(__file__))
WS = os.path.dirname(HERE)
sys.path.insert(0, os.path.join(WS, "Helios_scalable_QEC-main",
                                "Helios_scalable_QEC-main", "build_scripts"))

NOISE = dict(after_clifford_depolarization=0.001,
             before_measure_flip_probability=0.001,
             after_reset_flip_probability=0.001,
             before_round_data_depolarization=0.001)


def dem_edges(layout, d):
    c = stim.Circuit.generated(f"surface_code:{layout}_memory_z",
                               distance=d, rounds=d, **NOISE)
    dem = c.detector_error_model(decompose_errors=True)
    coords = c.get_detector_coordinates()
    edges, singles, multis = set(), collections.Counter(), collections.Counter()
    for inst in dem.flattened():
        if inst.type != 'error':
            continue
        comp = []
        for t in inst.targets_copy():
            if t.is_separator():
                if comp:
                    edges.add(frozenset(comp))
                comp = []
            elif t.is_relative_detector_id():
                comp.append(t.val)
        if comp:
            edges.add(frozenset(comp))
    for e in edges:
        if len(e) == 1:
            singles[next(iter(e))] += 1
        elif len(e) > 2:
            multis[len(e)] += 1
    return c, dem, coords, edges, singles, multis


def lattice_map(coords, d, layout):
    """(detector id) -> (a, b, t) in OUR index space.

    Done by RANK of the doubled Stim coordinate.  SETTLED EMPIRICALLY (see the
    frame test in the P4 log): the plain rank map is the frame
    `RotatedSurface` uses -- under it the same-basis detectors of ONE ROUND come
    out as a set whose neighbours differ by (+-1, -+1), i.e. diagonal, which is
    exactly `RotatedSurface`'s `NEIGHBOR_DELTAS`.  (A 45-degree rotation of the
    rank frame is the OTHER convention and does not match.)
    """
    xs = sorted({round(2 * c[0]) for c in coords.values()})
    ys = sorted({round(2 * c[1]) for c in coords.values()})
    out = {}
    for i, c in coords.items():
        t = c[2] if len(c) > 2 else 0
        out[i] = (xs.index(round(2 * c[0])), ys.index(round(2 * c[1])), round(t))
    return out, xs, ys


def main():
    out = []

    def p(s=''):
        print(s)
        out.append(s)

    for layout in ('unrotated', 'rotated'):
        for d in (3, 5):
            c, dem, coords, edges, singles, multis = dem_edges(layout, d)
            lat, xs, ys = lattice_map(coords, d, layout)
            cls = collections.Counter()
            n2 = 0
            for e in edges:
                if len(e) != 2:
                    continue
                n2 += 1
                u, v = sorted(e)
                du = lat[u]
                dv = lat[v]
                delta = (dv[0] - du[0], dv[1] - du[1], dv[2] - du[2])
                cls[delta] += 1
            p("=" * 108)
            p("%s d=%d: %d detectors, %d distinct mechanisms, %d two-detector, "
              "%d one-detector (boundary), hyperedges %s"
              % (layout, d, dem.num_detectors, len(edges), n2, len(singles),
                 dict(multis) or "none"))
            p("   Stim coordinate grid: %d distinct doubled-x, %d distinct "
              "doubled-y (per full circuit)" % (len(xs), len(ys)))
            p("   delta classes in LATTICE units (da, db, dt), directed as "
              "extracted:")
            for k, n in sorted(cls.items(), key=lambda kv: -kv[1]):
                p("      (%+d, %+d, %+d) x%d" % (k[0], k[1], k[2], n))
            if singles:
                p("   one-detector mechanisms sit at b values: %s"
                  % dict(sorted(collections.Counter(
                      lat[i][1] for i in singles).items())))
            if layout == 'rotated':
                # WHERE does each hook family live?  Print, for ONE basis and one
                # interior round, the (a, b) sites that carry each dt=+1 delta.
                # (localuf's unrotated hook families are position-conditional too:
                # `eu` has three ranges, `seu` three, ... -- so the rotated
                # families need their conditions, not just their deltas.)
                one = collections.defaultdict(set)
                for e in edges:
                    if len(e) != 2:
                        continue
                    u, v = sorted(e)
                    du, dv = lat[u], lat[v]
                    if (du[0] + du[1]) % 2 != (dv[0] + dv[1]) % 2:
                        continue          # one basis only
                    dlt = (dv[0] - du[0], dv[1] - du[1], dv[2] - du[2])
                    if dlt[2] == 1 and dlt[:2] not in ((0, 0),):
                        one[dlt].add((du[0], du[1]))
                p("   hook families (dt=+1), one basis, spatial footprint of each:")
                for k, sites in sorted(one.items()):
                    p("      (%+d, %+d, +1): %d sites %s"
                      % (k[0], k[1], len(sites), sorted(sites)[:10]))
    p()
    p("CONTROL: for `unrotated` the classes should be the four axis-aligned")
    p("space steps + the time step + localuf's three hook families")
    p("(sd = south+down, eu = east+up, seu = south-east+up).")

    io.open(os.path.join(HERE, 'logs', 'probe_rotated_circuit_edges.txt'), 'w',
            encoding='utf-8').write('\n'.join(out) + '\n')
    p()
    p("written -> fpga_flow/logs/probe_rotated_circuit_edges.txt")


if __name__ == "__main__":
    main()
