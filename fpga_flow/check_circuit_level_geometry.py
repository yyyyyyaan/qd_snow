"""P0'' -- is the CIRCUIT-LEVEL decoding graph compatible with the shared
lattice's geometry?  (D14 step 1; NEXT_SESSION_PROMPT.md 4 / report 6.29)

    python fpga_flow/check_circuit_level_geometry.py                  # all configs
    python fpga_flow/check_circuit_level_geometry.py surface 5        # one config
    python fpga_flow/check_circuit_level_geometry.py surface 5 3      # + nslices
    python fpga_flow/check_circuit_level_geometry.py surface 5 -v     # name edges

WHY THIS EXISTS
---------------
The shared-lattice numbering (`fpga_flow/make_lattice_sim.py`) rests on three
geometric premises.  Only the first was ever checked, and only for the
PHENOMENOLOGICAL graph -- the circuit-level column (D14) was priced from GRAPH
STATISTICS (node count, edge count, max degree) and its GEOMETRY was never
tested.  This script measures all three for both noise models and both code
types, and it also evaluates the GENERALISED classification that a fix would
use, so the two can be compared directly.

  P1  LAYER ISOMORPHISM.  Every graph layer holds the same spatial coordinate
      set, and that set is a full rectangle (so one slot serves every slice).

  P2  EDGE = (layout layer, ORIENTATION CLASS, anchor rank), BIJECTIVELY.
      The generator implements exactly THREE orientation classes:

          orient 0 : in-plane, |drank| == 1        (E/W)
          orient 1 : in-plane, |drank| == NY       (N/S)
          orient 2 : across layers, rank UNCHANGED (vertical)

      Two ways the circuit-level graph can violate this:
        (a) an in-plane edge with any other |drank| is a hard `_die`;
        (b) an INTER-LAYER edge whose rank CHANGES is filed under orient 2 at
            its lower endpoint's rank, where it collides with the true vertical
            edge at that rank -- two different edges, one slot.

      THE CELL IS (slot, SLICE), NOT (slot): one slot serves one layer PER
      SLICE, so two edges sharing a (tlocal, class, rank) in DIFFERENT slices
      are different cells and are perfectly legal.  Checking the slot alone
      reports a failure on the VERIFIED phenomenological graph -- that was this
      script's second bug.

      THE LAYOUT LAYER IS `(L - LAYER0) % GMAX`, NOT THE ABSOLUTE LAYER: a slot
      is a position inside a slice's window, so layers 0 and GMAX must carry the
      same (class, rank) set.  Checking absolute layers instead reports a
      failure on the VERIFIED phenomenological graph -- that was the first bug.

  P3  `above` (the DROP source) IS THE SAME EDGE ONE LAYER UP: same rank, same
      orientation class, both endpoints one layer down.

GENERALISED CLASS (the candidate fix, evaluated here, not yet in the generator)
-------------------------------------------------------------------------------
Class an edge by its (d_layer, d_rank) with the endpoints swapped so that
d_layer >= 0, and keep the anchor = the endpoint at the LOWER layer.  The three
existing classes keep their ids 0/1/2, so the phenomenological tables are
untouched; the space-time "hook" classes take new ids in a fixed order.
"""
import sys
import os
from collections import defaultdict

HERE = os.path.dirname(os.path.abspath(__file__))
WS = os.path.dirname(HERE)
REPO = os.path.join(WS, "Helios_scalable_QEC-main", "Helios_scalable_QEC-main")
sys.path.insert(0, os.path.join(REPO, "build_scripts"))

from generate_snowflake import make_code, make_decoder           # noqa: E402
from localuf.decoders.snowflake import Snowflake                # noqa: E402

NDIR = 12          # the PE's direction-port count (localuf's full order)


def _legacy_class(dl, dr, ny):
    """The generator's rule BEFORE 2026-09-21 -- kept as the NEGATIVE CONTROL.

    In-plane: class 0 for |drank| == 1, class 1 for |drank| == NY, hard `_die`
    for anything else.  Inter-layer: class 2 for EVERY edge, with the rank
    difference never examined -- which is why a hook edge landed on the vertical
    edge's slot.  `make_lattice_sim.py` now classes an edge by its full
    (d_layer, drank) pair; this function exists so the failure it caused stays
    reproducible and citable.
    """
    if dl == 0:
        adr = abs(dr)
        if adr == 1:
            return 0
        if adr == ny:
            return 1
        return None
    return 2


def _general_class(dl, dr, ny):
    """The generator's rule after P0'': class = the full (d_layer, drank) pair.

    Ids 0/1/2 keep their old meaning (in-plane |drank| == 1, in-plane
    |drank| == NY, pure time step) so the phenomenological numbering is
    untouched, and EVERY other pair is its own class -- including the IN-PLANE
    diagonals (|drank| = NY-1 / NY+1), which are exactly what a rotated surface
    code's space edges are.  The old in-plane `_die` is gone.
    """
    if dl == 0:
        adr = abs(dr)
        if adr == 1:
            return 0
        if adr == ny:
            return 1
        return ("diag", 0, adr)         # e.g. rotated: NY-1 / NY+1
    if dr == 0:
        return 2
    return ("hook", dl, dr)             # new class, keyed by its (dL, dR)


def describe(kind, d, noise, nslices=2):
    code = make_code(kind, d, noise)
    dec = make_decoder(code)
    ndim = len(next(iter(dec.NODES)))
    ta = code.TIME_AXIS % ndim
    sp_axes = [a for a in range(ndim) if a != ta]

    # ---- P1: layer isomorphism + the bounding box ------------------------
    per_layer = defaultdict(set)
    for idx in dec.NODES:
        per_layer[idx[ta]].add(tuple(idx[a] for a in sp_axes))
    layers = sorted(per_layer)
    iso = all(per_layer[t] == per_layer[layers[0]] for t in layers)
    spatial = per_layer[layers[0]]
    lo = [min(s[i] for s in spatial) for i in range(len(sp_axes))]
    hi = [max(s[i] for s in spatial) for i in range(len(sp_axes))]
    dims = [hi[i] - lo[i] + 1 for i in range(len(sp_axes))]
    if len(dims) == 1:
        nx, ny = 1, dims[0]

        def rank(s):
            return s[0] - lo[0]
    else:
        nx, ny = dims[0], dims[1]

        def rank(s):
            return (s[0] - lo[0]) * ny + (s[1] - lo[1])
    P = nx * ny
    rect = (len(spatial) == P)
    LAYER0 = layers[0]
    nl = len(layers)
    gmax = -(-nl // nslices)            # ceil
    tlocal = {l: (l - LAYER0) % gmax for l in layers}
    slice_of = {l: (l - LAYER0) // gmax for l in layers}

    # ---- edge inventory ---------------------------------------------------
    idx_of = {node.ID: idx for idx, node in dec.NODES.items()}
    uv, geo = {}, {}
    for e in dec.EDGES:
        u = dec.NODES[e[0]].ID
        v = dec.NODES[e[1]].ID
        uv[e] = (u, v)
        iu, iv = idx_of[u], idx_of[v]
        geo[e] = (iu[ta], rank(tuple(iu[a] for a in sp_axes)),
                  iv[ta], rank(tuple(iv[a] for a in sp_axes)))
    ekeys = sorted(dec.EDGES, key=lambda e: uv[e])

    classes = defaultdict(int)
    for e in ekeys:
        lu, ru, lv, rv = geo[e]
        classes[(lv - lu, rv - ru)] += 1

    # ---- P2 for a given classification rule ------------------------------
    def classify(rule):
        keys = defaultdict(list)
        cells = defaultdict(list)
        bad = []
        for e in ekeys:
            lu, ru, lv, rv = geo[e]
            dl, dr = lv - lu, rv - ru
            if dl < 0:                   # canonical: anchor at the LOWER layer
                dl, dr = -dl, -dr
                a_layer, a_rank = lv, rv
            elif dl > 0:
                a_layer, a_rank = lu, ru
            else:                        # in-plane: anchor = smaller rank
                a_layer, a_rank = lu, min(ru, rv)
            ty = rule(dl, dr, ny)
            if ty is None:
                bad.append((e, dl, dr))
                continue
            keys[(tlocal[a_layer], ty, a_rank)].append(e)
            cells[(slice_of[a_layer], tlocal[a_layer], ty, a_rank)].append(e)
        coll = {k: v for k, v in cells.items() if len(v) > 1}
        per_tl = defaultdict(set)
        for (tl, ty, rk) in keys:
            per_tl[tl].add((ty, rk))
        sets = list(per_tl.values())
        equal = len(sets) <= 1 or all(s == sets[0] for s in sets)
        # ES_PER_LAYER = the size of that (class, rank) set; ES = x gmax
        es_per_layer = len(sets[0]) if sets and equal else max(
            (len(s) for s in sets), default=0)
        return dict(keys=keys, coll=coll, bad=bad, equal=equal,
                    es_per_layer=es_per_layer, es=es_per_layer * gmax,
                    n_used=len(keys), n_cells=len(cells))

    legacy = classify(_legacy_class)
    general = classify(_general_class)

    # ---- P3: `above` is the same edge one layer up -----------------------
    bad_above, n_above = [], 0
    for e in ekeys:
        try:
            below = code.raise_edge(e, delta_t=-1)
        except Exception:
            continue
        if below not in dec.EDGES:
            continue
        n_above += 1
        lu, ru, lv, rv = geo[e]
        blu, bru, blv, brv = geo[below]
        if (blu, bru, blv, brv) != (lu - 1, ru, lv - 1, rv):
            bad_above.append((e, below))

    degs = [len(n.NEIGHBORS) for n in dec.NODES.values()]
    dirs_used = len(set(dn for n in dec.NODES.values() for dn in n.NEIGHBORS))
    return dict(kind=kind, d=d, noise=noise, nslices=nslices, nn=len(dec.NODES),
                ne=len(dec.EDGES), iso=iso, rect=rect, nx=nx, ny=ny, P=P,
                per_layer=len(spatial),
                layers=nl, gmax=gmax, classes=classes, legacy=legacy,
                general=general, n_above=n_above, bad_above=bad_above,
                max_deg=max(degs), dirs_used=dirs_used, uv=uv, geo=geo)


def report(r, verbose=False, show_ok=True):
    ok_legacy = (not r["legacy"]["bad"] and not r["legacy"]["coll"]
                 and r["legacy"]["equal"])
    ok_general = (not r["general"]["bad"] and not r["general"]["coll"]
                  and r["general"]["equal"])
    if not show_ok and ok_legacy and ok_general:
        return True
    print("=" * 116)
    print("%s d=%d n=%d  noise=%-16s graph: %d nodes, %d edges, max degree %d"
          % ({"rep": "repetition"}.get(r["kind"], r["kind"]), r["d"],
             r["nslices"], r["noise"], r["nn"], r["ne"], r["max_deg"]))
    print("  P1 layer isomorphism %s | box %dx%d = %d slots/layer, %d layers, "
          "gmax=%d, fill %.1f%% %s"
          % ("PASS" if r["iso"] else "**FAIL**", r["nx"], r["ny"], r["P"],
             r["layers"], r["gmax"],
             100.0 * r["per_layer"] / r["P"],
             "(every slot a node)" if r["rect"]
             else "(PARITY SUBLATTICE: half the box is empty, which is FINE -- "
                  "dead slots are free, report 6.28)"))
    print("  max degree %d <= NDIR %d: %s   (distinct directions used: %d)"
          % (r["max_deg"], NDIR, "PASS" if r["max_deg"] <= NDIR else "**FAIL**",
             r["dirs_used"]))
    print("  edge classes actually used, by (d_layer, d_rank) [d_layer >= 0]:")
    for (dl, dr), n in sorted(r["classes"].items()):
        dl, dr = (dl, dr) if dl >= 0 else (-dl, -dr)
        tag = ""
        if dl == 0 and abs(dr) == 1:
            tag = "  = class 0 (E/W)"
        elif dl == 0 and abs(dr) == r["ny"]:
            tag = "  = class 1 (N/S)"
        elif dl == 0:
            tag = ("  = class (0,%d): in-plane DIAGONAL -- the pre-fix generator "
                   "died on this" % abs(dr))
        elif dr == 0:
            tag = "  = class 2 (vertical, a pure time step)"
        else:
            tag = ("  = class (%d,%+d): space-time HOOK -- the pre-fix generator "
                   "filed this under class 2 and collided" % (dl, dr))
        print("     dL=%d dR=%+d : %5d edges%s" % (dl, dr, n, tag))
    print("  P2 with the PRE-FIX 3-class rule (negative control): %s"
          % ("PASS" if ok_legacy else
             "**FAIL** (%d unclassifiable edge(s), %d cells shared by 2+ edges, "
             "per-layer set equal: %s)" % (len(r["legacy"]["bad"]),
                                           len(r["legacy"]["coll"]),
                                           r["legacy"]["equal"])))
    if not ok_legacy:
        for e, dl, dr in r["legacy"]["bad"][:4]:
            print("       edge %d-%d: (dL,dR) = (%d,%+d) -- |drank| = %d is "
                  "not 1 or NY = %d on the same layer"
                  % (r["uv"][e][0], r["uv"][e][1], dl, dr, abs(dr), r["ny"]))
        for k, es in sorted(r["legacy"]["coll"].items())[:6]:
            print("       cell (slice %d, tlocal %d, orient %d, rank %d): %s"
                  % (k[0], k[1], k[2], k[3],
                     ", ".join("%d-%d" % r["uv"][e] for e in es)))
        if verbose:
            for k, es in sorted(r["legacy"]["coll"].items()):
                for e in es:
                    lu, ru, lv, rv = r["geo"][e]
                    print("          %d-%d: (L%d R%d) -> (L%d R%d)"
                          % (r["uv"][e][0], r["uv"][e][1], lu, ru, lv, rv))
    if not ok_general:
        for k, es in sorted(r["general"]["coll"].items())[:8]:
            print("       GENERALISED collision at cell (slice %d, tlocal %d, "
                  "class %s, rank %d): %s"
                  % (k[0], k[1], k[2], k[3],
                     ", ".join("%d-%d %s" % (
                         r["uv"][e][0], r["uv"][e][1],
                         "same-layer" if r["geo"][e][0] == r["geo"][e][2]
                         else "cross-layer") for e in es)))
    print("  P2 with the GENERALISED rule (class = (dL,dR), anchor = lower "
          "layer) -- WHAT THE GENERATOR NOW IMPLEMENTS: %s   (per-layer set "
          "identical: %s)"
          % ("PASS" if ok_general else "**FAIL**", r["general"]["equal"]))
    if ok_general:
        cells = r["general"]["es"] * r["nslices"]
        print("       edge slots: ES_PER_LAYER %d -> ES %d for gmax=%d ; "
              "cells %d, live %d (fill %.1f%%)"
              % (r["general"]["es_per_layer"], r["general"]["es"], r["gmax"],
                 cells, r["ne"], 100.0 * r["ne"] / max(1, cells)))
    print("  P3 `above` = same edge one layer up: %d links, %s"
          % (r["n_above"], "PASS" if not r["bad_above"] else
             "**FAIL** (%d bad, e.g. %s)" % (len(r["bad_above"]),
                                             r["bad_above"][0])))
    # NOTE: `rect` is INFORMATIONAL, not part of the verdict.  The rotated check
    # lattice is a PARITY SUBLATTICE: half of its bounding box is empty by
    # construction, and report 6.28 measured that never-bound slots cost nothing
    # after synthesis.  What the RTL does need is P2 (bijection) and P3 (`above`),
    # and those are checked.
    ok = (r["iso"] and r["max_deg"] <= NDIR
          and not r["bad_above"] and ok_general)
    print("  -> geometry %s   (pre-fix generator: %s)"
          % ("PASS" if ok else "FAIL", "PASS" if ok_legacy else "FAIL"))
    return ok


CFGS = [("surface", 3), ("surface", 5), ("surface", 7), ("rep", 3), ("rep", 5)]


def main():
    argv = [a for a in sys.argv[1:] if not a.startswith("-")]
    verbose = "-v" in sys.argv
    only_fail = "-q" in sys.argv
    if len(argv) >= 2:
        cfgs = [(argv[0], int(argv[1]),
                 int(argv[2]) if len(argv) > 2 else 2)]
    else:
        cfgs = [(k, d, 2) for k, d in CFGS]
    allok, skipped = True, []
    for kind, d, ns in cfgs:
        for noise in ("phenomenological", "circuit-level"):
            try:
                r = describe(kind, d, noise, ns)
            except NotImplementedError as exc:
                print("%s d=%d %s: localuf raises NotImplementedError: %s"
                      % (kind, d, noise, exc))
                skipped.append((kind, d, noise))
                continue
            allok = report(r, verbose, show_ok=not only_fail) and allok
    print()
    if skipped:
        print("NOT TESTABLE (localuf has no such graph): %s"
              % "; ".join("%s d%d %s" % s for s in skipped))
    print("CIRCUIT_LEVEL_GEOMETRY_VERDICT %s" % ("PASS" if allok else "FAIL"))
    sys.exit(0 if allok else 1)


if __name__ == "__main__":
    main()
