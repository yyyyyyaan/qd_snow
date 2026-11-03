"""Probe 5 (P4 route ii): LEARN the positional conditions of the rotated
circuit-level hook families from Stim's DEM.

    python fpga_flow/probe_rotated_hook_sites.py

Route (ii) decided by the user: keep the LOCAL steady-state graph structure (the
same one the unrotated column uses: edges = space + time + hooks over every
round), and take from Stim only the HOOK FAMILIES and WHERE they live.  This
script produces that "where".

Method: build the `memory_z` DEM, keep the Z basis (the detectors present in
sheet 0 -- coordinate parity does NOT separate the bases, measured), align the
frame ((da, db) = (0, -1), solved by overlap), and then, for INTERIOR rounds
only (t = 1 .. h-2, so the circuit's first/final-round artefacts cannot
contaminate the rule), tabulate for every dt=+1 delta the set of (a, b) sites.
The conditions are then expressed as a function of a few discrete features of
the site, and cross-checked at d = 3, 5, 7.
"""
import collections
import io
import os
import sys

import stim

HERE = os.path.dirname(os.path.abspath(__file__))
WS = os.path.dirname(HERE)
sys.path.insert(0, os.path.join(WS, "localuf-main", "localuf-main"))

from localuf.rotated import RotatedSurface                       # noqa: E402

NOISE = dict(after_clifford_depolarization=0.001,
             before_measure_flip_probability=0.001,
             after_reset_flip_probability=0.001,
             before_round_data_depolarization=0.001)


def dem_sites(d, h, ref):
    c = stim.Circuit.generated("surface_code:rotated_memory_z", distance=d,
                               rounds=h, **NOISE)
    dem = c.detector_error_model(decompose_errors=True)
    coords = c.get_detector_coordinates()
    xs = sorted({round(2 * v[0]) for v in coords.values()})
    ys = sorted({round(2 * v[1]) for v in coords.values()})

    def lat(i):
        cc = coords[i]
        return (xs.index(round(2 * cc[0])), ys.index(round(2 * cc[1])),
                round(cc[2] if len(cc) > 2 else 0))

    t0 = min(lat(i)[2] for i in coords)
    sheet0 = {lat(i)[:2] for i in coords if lat(i)[2] == t0}
    base = {i: lat(i) for i in coords if lat(i)[:2] in sheet0}
    best = None
    for da in range(-3, 4):
        for db in range(-3, 4):
            common = sum(1 for v in base.values()
                         if (v[0] + da, v[1] + db, v[2]) in ref)
            if best is None or common > best[0]:
                best = (common, da, db)
    det = {i: (v[0] + best[1], v[1] + best[2], v[2]) for i, v in base.items()}

    fam = collections.defaultdict(set)
    for inst in dem.flattened():
        if inst.type != 'error':
            continue
        comp = []
        for t in inst.targets_copy():
            if t.is_separator():
                if len(comp) == 2:
                    u, v = comp
                    if u in det and v in det:
                        du, dv = det[u], det[v]
                        if du[2] == dv[2]:
                            continue            # space edge: already have it
                        if du[2] > dv[2]:
                            du, dv = dv, du
                        dl = (dv[0] - du[0], dv[1] - du[1], dv[2] - du[2])
                        if dl[2] == 1 and dl[:2] != (0, 0):
                            fam[dl[:2]].add((du[0], du[1], du[2]))
                comp = []
            elif t.is_relative_detector_id():
                comp.append(t.val)
        if len(comp) == 2:
            u, v = comp
            if u in det and v in det:
                du, dv = det[u], det[v]
                if du[2] != dv[2]:
                    if du[2] > dv[2]:
                        du, dv = dv, du
                    dl = (dv[0] - du[0], dv[1] - du[1], dv[2] - du[2])
                    if dl[2] == 1 and dl[:2] != (0, 0):
                        fam[dl[:2]].add((du[0], du[1], du[2]))
    return fam, best


def main():
    out = []

    def p(s=''):
        print(s)
        out.append(s)

    for d in (3, 5, 7):
        code = RotatedSurface(d, 'phenomenological', scheme='frugal')
        h = code.SCHEME.WINDOW_HEIGHT
        ref = {v for v in code.NODES}
        fam, shift = dem_sites(d, h, ref)
        p("=" * 108)
        p("rotated d=%d  h=%d  frame shift (da,db)=(%d,%d)"
          % (d, h, shift[1], shift[2]))
        for delta, sites in sorted(fam.items()):
            ts = sorted({t for _, _, t in sites})
            interior = sorted({(a, b) for a, b, t in sites if 1 <= t <= h - 2})
            p("   hook (%+d,%+d,+1): %d sites over t=%s"
              % (delta[0], delta[1], len(sites), ts))
            p("      interior (t=1..%d) spatial sites (%d): %s"
              % (h - 2, len(interior), interior))

    io.open(os.path.join(HERE, 'logs', 'probe_rotated_hook_sites.txt'), 'w',
            encoding='utf-8').write('\n'.join(out) + '\n')
    p()
    p("written -> fpga_flow/logs/probe_rotated_hook_sites.txt")


if __name__ == "__main__":
    main()
