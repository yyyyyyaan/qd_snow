"""Probe: the STRUCTURE of the rotated/unrotated matching graph, and how it maps
onto localuf's `Code` conventions.  (P4 step 1 reconnaissance)

    python fpga_flow/probe_rotated_graph.py            # d = 3, 5, 7

Read-only.  For each layout and d it prints, from Stim's detector error model:

  * detector count, rounds, detectors per round, the per-round spatial footprint
  * how the error mechanisms split by |detector set| -- 0 (undetectable /
    logical), 1 (BOUNDARY edge: the chain may terminate there), 2 (ordinary
    matching-graph edge), >2 (hyperedge / decomposition residue)
  * which detectors the 1-detector mechanisms touch (their coordinates), i.e.
    where the smooth boundary is
  * max degree over deduplicated detector pairs (= PE ports needed)

and it prints the corresponding localuf `Surface` numbers beside it, because the
whole point is to see which localuf structures a hand-built rotated graph has to
reproduce:

    localuf node count per layer  vs  Stim detectors per round
    localuf BOUNDARY nodes        vs  Stim 1-detector mechanisms
"""
import io
import collections
import sys
import os

import stim

HERE = os.path.dirname(os.path.abspath(__file__))
WS = os.path.dirname(HERE)
sys.path.insert(0, os.path.join(WS, "Helios_scalable_QEC-main",
                                "Helios_scalable_QEC-main", "build_scripts"))
from generate_snowflake import make_code                        # noqa: E402
from localuf.decoders.snowflake import Snowflake                # noqa: E402

NOISE = dict(after_clifford_depolarization=0.001,
             before_measure_flip_probability=0.001,
             after_reset_flip_probability=0.001,
             before_round_data_depolarization=0.001)


def stim_facts(layout, d):
    c = stim.Circuit.generated(f"surface_code:{layout}_memory_z",
                               distance=d, rounds=d, **NOISE)
    dem = c.detector_error_model(decompose_errors=True)
    esets = set()
    singles = collections.Counter()
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
    sizes = collections.Counter(len(e) for e in esets)
    for e in esets:
        if len(e) == 1:
            singles[next(iter(e))] += 1
    deg = collections.Counter()
    for e in esets:
        for x in e:
            deg[x] += 1
    coords = c.get_detector_coordinates()
    by_t = collections.defaultdict(set)
    for idx, cc in coords.items():
        t = round(cc[2], 3) if len(cc) > 2 else 0
        by_t[t].add((round(cc[0] * 2), round(cc[1] * 2)))
    return dict(n_det=dem.num_detectors, esets=esets, sizes=sizes,
                singles=singles, deg=deg, coords=coords, by_t=by_t,
                maxdeg=max(deg.values()) if deg else 0)


def localuf_facts(kind, d):
    code = make_code(kind, d)
    dec = Snowflake(code)
    per_layer = collections.defaultdict(set)
    for idx in dec.NODES:
        per_layer[idx[code.TIME_AXIS]].add(idx)
    det = [v for v in dec.NODES if not code.is_boundary(v)]
    bnd = [v for v in dec.NODES if code.is_boundary(v)]
    return dict(nodes=len(dec.NODES), edges=len(dec.EDGES), layers=len(per_layer),
                nodes_per_layer=len(next(iter(per_layer.values()))),
                det=len(det), bnd=len(bnd),
                time_axis=code.TIME_AXIS, long_axis=code.LONG_AXIS,
                window=code.SCHEME.WINDOW_HEIGHT)


def main():
    out = []

    def p(s=''):
        print(s)
        out.append(s)

    p("=" * 118)
    p("STIM: matching-graph structure of the two layouts (circuit-level, "
      "depolarizing 1e-3, rounds = d, memory_z)")
    p("=" * 118)
    p("%-10s %3s %7s %6s %9s %8s   %s" % ("layout", "d", "dets", "rounds",
                                          "det/round", "edges", "|D| split (0 / 1 / 2 / >2)"))
    for layout in ('unrotated', 'rotated'):
        for d in (3, 5, 7):
            f = stim_facts(layout, d)
            s = f["sizes"]
            p("%-10s %3d %7d %6d %9.1f %8d   %d / %d / %d / %d"
              % (layout, d, f["n_det"], len(f["by_t"]),
                 f["n_det"] / float(len(f["by_t"])), len(f["esets"]),
                 s.get(0, 0), s.get(1, 0), s.get(2, 0),
                 sum(v for k, v in s.items() if k > 2)))
            p("             max ports per detector (dedup edges): %d" % f["maxdeg"])
            p("             detectors per round: %s"
              % {t: len(s) for t, s in sorted(f["by_t"].items())})
            if f["singles"]:
                xs = sorted({tuple(f["coords"][i][:2]) for i in f["singles"]})
                p("             1-detector (boundary) mechanisms: %d distinct "
                  "detectors, at qubit coords e.g. %s"
                  % (len(f["singles"]), xs[:6]))
            else:
                p("             1-detector (boundary) mechanisms: NONE")

    p()
    p("=" * 118)
    p("LOCALUF: the unrotated `Surface` graph the RTL already decodes")
    p("=" * 118)
    p("%-8s %3s %7s %7s %8s %9s %9s %9s   %s"
      % ("code", "d", "nodes", "edges", "layers", "node/lay", "detectors", "boundary",
         "axes (time, long), window"))
    for d in (3, 5, 7):
        f = localuf_facts('surface', d)
        p("%-8s %3d %7d %7d %8d %9d %9d %9d   t=%d, long=%d, window=%d"
          % ("surface", d, f["nodes"], f["edges"], f["layers"],
             f["nodes_per_layer"], f["det"], f["bnd"],
             f["time_axis"], f["long_axis"], f["window"]))

    io.open(os.path.join(HERE, 'logs', 'probe_rotated_graph.txt'), 'w',
            encoding='utf-8').write('\n'.join(out) + '\n')
    p()
    p("written -> fpga_flow/logs/probe_rotated_graph.txt")


if __name__ == "__main__":
    main()
