# -*- coding: utf-8 -*-
"""PRICING EXPERIMENT v3 -- the numbers that decide the rotated question.

Fixes over v2:
  * graph EDGES must be de-duplicated by detector set (many error mechanisms
    produce the same detector pair; they merge into ONE matching-graph edge).
  * the per-round footprint must be measured in CHECK-LATTICE coordinates
    (rank of distinct x / distinct y), not in Stim's qubit coordinates.

Read-only: does not touch localuf / RTL / generator / any existing result.
"""
import io, collections
import stim

NOISE = dict(after_clifford_depolarization=0.001, before_measure_flip_probability=0.001,
             after_reset_flip_probability=0.001, before_round_data_depolarization=0.001)

out = []
def p(s=''):
    print(s); out.append(s)


def run(layout, d):
    rounds = d
    c = stim.Circuit.generated(f"surface_code:{layout}_memory_z", distance=d, rounds=rounds, **NOISE)
    dem = c.detector_error_model(decompose_errors=True)

    esets = set()
    for inst in dem.flattened():
        if inst.type != 'error':
            continue
        comp = []
        for t in inst.targets_copy():
            if t.is_separator():
                if comp:
                    esets.add(frozenset(comp))
                comp = []
            elif t.is_relative_detector_id():
                comp.append(t.val)
        if comp:
            esets.add(frozenset(comp))

    deg = collections.Counter()
    for e in esets:
        for x in e:
            deg[x] += 1

    coords = c.get_detector_coordinates()
    by_t = collections.defaultdict(set)
    for idx, cc in coords.items():
        t = cc[2] if len(cc) > 2 else 0
        by_t[t].add((round(cc[0] * 2), round(cc[1] * 2)))

    return dict(n_det=dem.num_detectors, edges=len(esets), deg=deg, by_t=by_t,
                round_edges=len(esets) / float(rounds))


def ranks(pts):
    xs = sorted({q[0] for q in pts}); ys = sorted({q[1] for q in pts})
    mx = {v: i for i, v in enumerate(xs)}; my = {v: i for i, v in enumerate(ys)}
    return {(mx[x], my[y]) for x, y in pts}, len(xs), len(ys)


def footprint(pts):
    """fill of the rank bounding box, for both indexings."""
    best = None
    for name in ('xy', '45'):
        if name == 'xy':
            s = pts
        else:
            s = {((x + y) // 2, (x - y) // 2) for x, y in pts}
        r, nx, ny = ranks(s)
        fill = 100.0 * len(r) / (nx * ny)
        if best is None or fill > best[1]:
            best = (name, fill, r, nx, ny)
    return best


p("=" * 90)
p("PRICING EXPERIMENT v3 -- rotated vs unrotated surface code, circuit-level noise")
p("  stim %s | depolarizing 1e-3 on CNOT/meas/reset/data | rounds = d | memory_z" % stim.__version__)
p("=" * 90)
p("%-10s %3s %9s %10s %11s %7s %8s" %
  ("layout", "d", "detectors", "graph_edges", "edges/round", "det/rnd", "max_ports"))
rows = {}
for layout in ('unrotated', 'rotated'):
    for d in (3, 5, 7, 9, 21):
        s = run(layout, d); rows[(layout, d)] = s
        p("%-10s %3d %9d %10d %11.0f %7d %8d" %
          (layout, d, s['n_det'], s['edges'], s['round_edges'],
           max(len(v) for v in s['by_t'].values()), max(s['deg'].values())))

p()
p("-" * 90); p("Q3  real ratio (identical experiment, only the code layout differs)"); p("-" * 90)
p("%3s %12s %12s %8s %12s %12s %8s" %
  ("d", "det(unrot)", "det(rot)", "ratio", "edge(unrot)", "edge(rot)", "ratio"))
for d in (3, 5, 7, 9, 21):
    a, b = rows[('unrotated', d)], rows[('rotated', d)]
    p("%3d %12d %12d %8.2f %12d %12d %8.2f" %
      (d, a['n_det'], b['n_det'], a['n_det'] / float(b['n_det']),
       a['edges'], b['edges'], a['edges'] / float(b['edges'])))

p()
p("-" * 90); p("Q2  distinct edges touching one detector = PE ports needed"); p("-" * 90)
for k in sorted(rows, key=lambda k: (k[1], k[0])):
    s = rows[k]
    h = collections.Counter(s['deg'].values())
    p("%-10s d=%-3d max_ports=%-3d  hist(ports:nodes)=%s" %
      (k[0], k[1], max(s['deg'].values()), dict(sorted(h.items())[:10])))

p()
p("-" * 90); p("Q1  per-round footprint in CHECK-LATTICE coords (rank of x / rank of y)"); p("-" * 90)
for k in sorted(rows, key=lambda k: (k[1], k[0])):
    s = rows[k]
    t = sorted(s['by_t'])[len(s['by_t']) // 2]
    name, fill, r, nx, ny = footprint(s['by_t'][t])
    p("%-10s d=%-3d n=%-4d best=%-3s fill=%5.1f%%  (%d occupied of %dx%d=%d)"
      % (k[0], k[1], len(s['by_t'][t]), name, fill, len(r), nx, ny, nx * ny))

p()
p("-" * 90); p("Q1  maps, d=9, one round, check-lattice coords ('#'=detector, '.'=empty)"); p("-" * 90)
for layout in ('unrotated', 'rotated'):
    s = rows[(layout, 9)]
    t = sorted(s['by_t'])[len(s['by_t']) // 2]
    name, fill, r, nx, ny = footprint(s['by_t'][t])
    p("%s  (indexing=%s, fill=%.1f%%, %dx%d)" % (layout, name, fill, nx, ny))
    us = [u for u, v in r]; vs = [v for u, v in r]
    for v in range(max(vs), min(vs) - 1, -1):
        p('    ' + ''.join('#' if (u, v) in r else '.' for u in range(min(us), max(us) + 1)))

io.open('fpga_flow/logs/pricing_rotated.txt', 'w', encoding='utf-8').write('\n'.join(out) + '\n')
p(); p("written -> fpga_flow/logs/pricing_rotated.txt")
