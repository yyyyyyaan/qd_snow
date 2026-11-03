"""check_lattice_slots_rotated.py -- the rotated answer to the question
check_lattice_slots.py answers for the unrotated code.

Runs the SAME four checks the unrotated script runs, on
``localuf.rotated.RotatedSurface`` (built by us, not by localuf):

  1. every layer has the SAME spatial coordinate set (time-translation invariance)
  2. that set is a COMPLETE RECTANGLE in localuf's row-major slot numbering
     (waste = slots in the bounding box that are never bound)
  3. every neighbour direction is a CONSTANT SLOT OFFSET
  4. NSLOT (= P = slots per layer) vs the number of REAL cells per layer

and cross-checks the cell count against Helios' published formula and against
Stim's rotated circuit.

    python fpga_flow/check_lattice_slots_rotated.py
"""
import os
import sys
from collections import defaultdict

HERE = os.path.dirname(os.path.abspath(__file__))
WS = os.path.normpath(os.path.join(HERE, '..'))
sys.path.insert(0, os.path.join(WS, 'localuf-main', 'localuf-main'))

from localuf.rotated import RotatedSurface                      # noqa: E402

OUT = []


def say(s=''):
    print(s)
    OUT.append(s)


def check(d):
    # P4: RotatedSurface is now a localuf `Code` subclass (it needs the noise
    # model and a decoding scheme like every other code).
    code = RotatedSurface(d, 'phenomenological', scheme='frugal')
    # The DECODER's node set, not the code's: `Snowflake` drops everything at
    # t >= WINDOW_HEIGHT (the future-boundary sheet, which carries detectors but
    # no wall nodes), and that filtered set is what the RTL is generated from.
    # The unrotated script gets this right by going through `Snowflake`; this one
    # must filter explicitly.
    h = code.SCHEME.WINDOW_HEIGHT
    nodes = [v for v in code.NODES if v[2] < h]
    per_layer = defaultdict(set)
    for v in nodes:
        per_layer[v[2]].add((v[0], v[1]))
    layers = sorted(per_layer)
    spatial = per_layer[layers[0]]

    ok_iso = all(per_layer[t] == spatial for t in layers)

    # The index space is (a, b, t) with a in [0, d] and b in [-1, d-1]; the
    # SLOT RANK the lattice uses is row-major over that bounding box, so shift b
    # by +1 to make it 0-based (the shift is a constant and does not change any
    # offset).
    as_ = sorted({p[0] for p in spatial})
    bs_ = sorted({p[1] for p in spatial})
    a0, b0 = as_[0], bs_[0]
    nx, ny = len(as_), len(bs_)
    P = nx * ny
    real = len(spatial)                       # nodes per layer (detectors + walls)
    n_wall = sum(1 for p in spatial if p[1] in (b0, bs_[-1]))
    n_det = real - n_wall

    # neighbour offsets in slot space
    offs = defaultdict(set)
    for v in nodes:
        sv = (v[0] - a0) * ny + (v[1] - b0) + v[2] * P
        for w in code.neighbors(v):
            sw = (w[0] - a0) * ny + (w[1] - b0) + w[2] * P
            offs[sw - sv].add((w[0] - v[0], w[1] - v[1], w[2] - v[2]))
    dt = {k: v for k, v in offs.items() if k in (P, -P)}
    dxy = {k: v for k, v in offs.items() if k not in (P, -P)}
    const_ok = all(len(v) == 1 for v in offs.values())

    say("%-3d  layers=%-3d iso=%-5s  bbox=%dx%d=%-5d nodes/lay=%-4d (det %-4d wall %-3d) "
        "fill=%5.1f%%  offset_sets(xy)=%d offsets=%s  up/down=%s  const=%s  maxdeg=%d"
        % (d, len(layers), ok_iso, nx, ny, P, real, n_det, n_wall,
           100.0 * real / P, len(dxy), sorted(dxy), sorted(dt), const_ok,
           code.max_degree()))
    return dict(d=d, iso=ok_iso, nx=nx, ny=ny, P=P, real=real, det=n_det,
                const=const_ok, offsets=sorted(dxy), maxdeg=code.max_degree())


say("=" * 118)
say("ROTATED surface code -- slot-numbering check (same four checks as the unrotated script)")
say("  graph = localuf/rotated.py RotatedSurface (one basis, phenomenological, window = d)")
say("=" * 118)
res = [check(d) for d in (3, 5, 7, 9, 11, 21)]

say()
say("-" * 118)
say("cross-checks on the cell count (checks per round)")
say("-" * 118)
say("%3s %10s %14s %14s %14s" % ("d", "our det/lay", "(d^2-1)/2", "Helios/d", "stim/2"))
try:
    import stim
    have_stim = True
except Exception:
    have_stim = False
for r in res:
    d = r['d']
    stim_half = '-'
    if have_stim:
        c = stim.Circuit.generated(f"surface_code:rotated_memory_z", distance=d,
                                   rounds=d, after_clifford_depolarization=1e-3,
                                   before_measure_flip_probability=1e-3,
                                   after_reset_flip_probability=1e-3,
                                   before_round_data_depolarization=1e-3)
        n = c.detector_error_model(decompose_errors=False).num_detectors
        stim_half = str(n // (2 * d))     # stim counts BOTH bases over d rounds
    say("%3d %10d %14d %14s %14s" %
        (d, r['det'], (d * d - 1) // 2,
         str((d * d - 1) // 2) if d == 21 else '-', stim_half))

say()
say("-" * 118)
say("VERDICT")
say("-" * 118)
iso = all(r['iso'] for r in res)
const = all(r['const'] for r in res)
fills = [100.0 * r['real'] / r['P'] for r in res]
say("  1. layer isomorphism (every layer same spatial set) : %s" % ("PASS" if iso else "FAIL"))
say("  2. complete rectangle / zero waste                   : **N/A**   fill d21 = %.1f%%"
    % fills[-1])
say("     (INFORMATIONAL, not a judge: the rotated check lattice is a PARITY")
say("      SUBLATTICE -- half of its bounding box is empty BY CONSTRUCTION.")
say("      Report 6.28 measured that never-bound slots cost NOTHING after")
say("      synthesis; the RTL-relevant invariants -- one (slot, slice) per edge,")
say("      constant (dL,dR) classes, `above` one layer up -- are checked by")
say("      fpga_flow/check_circuit_level_geometry.py rotated <d>.)")
say("  3. constant slot offsets for every neighbour         : %s   offsets(slot) = %s"
    % ("PASS" if const else "FAIL", res[-1]['offsets']))
say("  4. slots vs cells                                    : P = %d slots, %d nodes "
    "(%.1f%%), = %d detectors + %d wall"
    % (res[-1]['P'], res[-1]['real'], fills[-1], res[-1]['det'],
       res[-1]['real'] - res[-1]['det']))

os.makedirs(os.path.join(HERE, 'logs'), exist_ok=True)
with open(os.path.join(HERE, 'logs', 'rotated_slots.txt'), 'w', encoding='utf-8') as f:
    f.write('\n'.join(OUT) + '\n')
say()
say("written -> fpga_flow/logs/rotated_slots.txt")
