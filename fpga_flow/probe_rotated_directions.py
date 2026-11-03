"""Probe 2: how many DISTINCT DIRECTION CLASSES does the rotated decoding graph
need?  (P4 gate -- the RTL has NDIR ports, and a direction is a (di, dj, dt)
delta class in the decoder's NEIGHBORS map.)

    python fpga_flow/probe_rotated_directions.py

Why this decides something: localuf's Snowflake names a direction by its INDEX
DELTA (`'E' = (0,+1,0)`, `'SEU' = (+1,+1,+1)`, ... -- 6 axis-aligned + 6
space-time, see decoders/snowflake/main.py `_Node.__init__`).  The ROTATED check
lattice's spatial neighbours are `(+-1, +-1, 0)` -- diagonal in that frame and
NOT among those twelve -- so the rotated code needs its own direction set, and
the SIZE of that set is what the PE's port count has to cover.  The unrotated
design uses exactly 12 (NDIR = 12, measured); if the rotated graph needs more,
the RTL changes and the area model moves.

Method: take Stim's circuit-level detector error model (the standard
circuit-level model, same one the pricing experiment used), map every detector to
its coordinate, deduplicate error mechanisms by their detector sets (that is the
matching-graph edge set), and tabulate the distinct (dx, dy, dt) classes.  The
deltas are computed in Stim's own coordinate units, which is fine: a class is
invariant under any affine re-indexing, and the COUNT is what matters.

The unrotated layout is run as a CONTROL: its class count must come out at 12
(the RTL's NDIR), which validates the extraction.
"""
import collections
import io
import os
import sys

import stim

HERE = os.path.dirname(os.path.abspath(__file__))
NOISE = dict(after_clifford_depolarization=0.001,
             before_measure_flip_probability=0.001,
             after_reset_flip_probability=0.001,
             before_round_data_depolarization=0.001)


def classes(layout, d, noise_on=True):
    kw = NOISE if noise_on else dict(
        after_clifford_depolarization=0, before_measure_flip_probability=0,
        after_reset_flip_probability=0, before_round_data_depolarization=0)
    c = stim.Circuit.generated(f"surface_code:{layout}_memory_z",
                              distance=d, rounds=d, **kw)
    dem = c.detector_error_model(decompose_errors=True)
    coords = c.get_detector_coordinates()
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

    # one basis only: keep edges whose detectors all have the same parity of
    # the coordinate sum (the two bases' detectors interleave in Stim's coords)
    def key(i):
        x, y = coords[i][0], coords[i][1]
        return (round(2 * x) + round(2 * y)) % 2

    def canon(dx, dy, dt):
        """canonical representative of the UNDIRECTED class (dx,dy,dt)"""
        for c in (dx, dy, dt):
            if c > 0:
                return (dx, dy, dt)
            if c < 0:
                return (-dx, -dy, -dt)
        return (0, 0, 0)

    cls = collections.Counter()
    for e in esets:
        if len(e) != 2:
            continue
        u, v = sorted(e)
        if key(u) != key(v):
            continue                      # crosses the two bases: skip
        cu, cv = coords[u], coords[v]
        dx = round(2 * (cv[0] - cu[0]))
        dy = round(2 * (cv[1] - cu[1]))
        dt = round(cv[2] - cu[2]) if len(cu) > 2 else 0
        cls[canon(dx, dy, dt)] += 1
    return cls, None, esets, coords


def main():
    out = []

    def p(s=''):
        print(s)
        out.append(s)

    p("=" * 108)
    p("DISTINCT DIRECTION CLASSES (dx, dy, dt) of the deduplicated matching graph")
    p("=" * 108)
    for noise_on, tag in ((False, "phenomenological"), (True, "circuit-level")):
        p()
        p("--- %s ---" % tag)
        for layout in ('unrotated', 'rotated'):
            line = []
            for d in (3, 5, 7):
                cls, half, esets, coords = classes(layout, d, noise_on)
                line.append("d%d=%d" % (d, len(cls)))
            p("  %-10s distinct classes: %s" % (layout, "  ".join(line)))
            cls, half, esets, coords = classes(layout, 5, noise_on)
            p("             d=5 breakdown: %s"
              % ", ".join("(%+d,%+d,%+d)x%d" % (k[0], k[1], k[2], v)
                          for k, v in sorted(cls.items())))
    p()
    p("REMINDER: the RTL's PE has NDIR = 12 ports; the unrotated design uses all")
    p("12 under circuit-level noise (zero margin).  A rotated class count > 12")
    p("means the PE needs more ports, i.e. an RTL change.")

    io.open(os.path.join(HERE, 'logs', 'probe_rotated_directions.txt'), 'w',
            encoding='utf-8').write('\n'.join(out) + '\n')
    p()
    p("written -> fpga_flow/logs/probe_rotated_directions.txt")


if __name__ == "__main__":
    main()
