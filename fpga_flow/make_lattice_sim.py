"""Shared-lattice tables for the snowflake-n single-FPGA build (design doc 9).

    python fpga_flow/make_lattice_sim.py --code surface --d 5 --slices 2 [--dirs all]

Writes design/generated/snowflake_lattice.svh (+ a _meta.json beside it), which
snowflake_pe_array_lat.sv includes.  Everything is derived from the same localuf
tables the golden trace comes from (build_scripts/generate_snowflake.py is
imported and reused, so the two can never disagree), and the slot numbering is
the one proven by fpga_flow/check_lattice_slots.py:

    slot(node) = tlocal * P + (x - xmin) * NY + (y - ymin)      P = NX * NY
    N = -NY  S = +NY  E = +1  W = -1  D = -P  U = +P             (constants)

Four ideas make the latticed build work.

1. A slot is a SHAPE, not a graph object.  tlocal is the layer's position inside
   its slice's gmax-wide layout window and the spatial index is the same in every
   slice, so one slot serves every slice.  "Which node / which edge am I now" is
   therefore a per-(slot, slice) CONSTANT -- exactly the identity word design doc
   3.3.2 predicted, with no routing ROM anywhere.

2. EDGES GET THEIR OWN SLOT SPACE, split by orientation:

       edge slot = (tlocal * 3 + orient) * P + base_rank
       orient = 0 E/W, 1 N/S, 2 vertical

   At every (tlocal, base_rank) the graph has at most one edge of each
   orientation (an in-plane edge moves the rank by +-1 or +-NY, so the E/W and
   N/S classes cannot collide either), so this is a bijection onto the edge set.
   A node's incident E/W, N/S and vertical edges therefore get three different
   slots -- with one shared edge space they would all want the same one.

3. THE BANK IS LAYER-INDEXED.  With L the layer's absolute index,

       node bank = (L - LAYER0) * NSLOT       + node_slot
       edge bank = (L - LAYER0) * 3 * NSLOT   + edge_slot

   so a bank offset is a layer offset: DROP becomes `-NSLOT` for a node and
   `-3 * NSLOT` for an edge, and the graph's own `above` tables agree with that
   by construction (both are checked below).

4. A SHADOW COPY holds the start-of-step value of every cell.  During slice c's
   phase the live registers of slice c hold Q_k, but a slice that has ALREADY run
   this step holds Q_{k+1}; the shadow is written the instant before a cell
   commits, so `shadow[home]` is Q_k for every cell, always.  A crossing reads
   the shadow with a constant address, a same-slice neighbour reads live.

The price is one extra copy of the state (a known Helios-n cost) plus one 2:1
select per (slot, direction) whose control is a constant, while the datapath is
instantiated once per slot instead of once per node -- which is where the area
multiplier comes from.
"""
import argparse
import json
import os
import sys
from collections import defaultdict

HERE = os.path.dirname(os.path.abspath(__file__))
WS = os.path.dirname(HERE)
REPO = os.path.join(WS, "Helios_scalable_QEC-main", "Helios_scalable_QEC-main")
BUILD = os.path.join(REPO, "build_scripts")
sys.path.insert(0, BUILD)

from generate_snowflake import (collect, make_code, make_decoder,   # noqa: E402
                                NO_NODE)
from localuf.decoders.snowflake import Snowflake             # noqa: E402


def _check(cond, msg):
    if not cond:
        _die(msg)


def _die(msg):
    raise SystemExit("make_lattice_sim: ASSERT FAILED: %s" % msg)


def _dir_at(g, nid, other):
    """direction index at node `nid` whose edge leads to node `other`"""
    for dn, (m, ee) in g["nb"][nid].items():
        if m == other:
            return g["dirs"].index(dn)
    return 0


def build(kind, d, nslices, dirs_mode="all", pad=1, noise="phenomenological"):
    g = collect(kind, d, dirs_mode, noise)
    code = make_code(kind, d, noise)
    # NOT `Snowflake(code)`: a rotated code carries its own decoder subclass
    # (index/ID convention + floor-edge list), and `make_decoder` is the single
    # place that decision lives.
    dec = make_decoder(code)

    # ---- geometry (same computation as check_lattice_slots.py) -----------
    ndim = len(next(iter(dec.NODES)))
    ta = code.TIME_AXIS % ndim
    sp_axes = [a for a in range(ndim) if a != ta]

    per_layer = defaultdict(set)
    for idx in dec.NODES:
        per_layer[idx[ta]].add(tuple(idx[a] for a in sp_axes))
    layers = sorted(per_layer)
    spatial = per_layer[layers[0]]
    for t in layers:
        if per_layer[t] != spatial:
            _die("layers do not share one spatial coordinate set")
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
    # ---- the spatial box, and the `--pad` experiment ---------------------
    # `--pad K` multiplies the SPATIAL box by K (P -> K * P_REAL) and leaves the
    # layer window GMAX alone, so NSLOT and ESLOT become K times as wide while
    # every REAL cell keeps its (layout layer, rank) and its address stays inside
    # its own bank row.  The added slots are structurally present -- the array
    # really does instantiate a datapath for each of them -- but carry
    # `*_VALID = 0` in EVERY context, which is exactly the situation ONE BASIS of
    # a rotated surface code is in: its check lattice fills only half of its own
    # bounding box (fpga_flow/check_lattice_slots_rotated.py: 220 real of 440
    # slots at d = 21).  The question the switch exists to answer is whether such
    # never-valid slots cost area after synthesis or are folded away.
    #
    # PADDING THE LAYER WINDOW INSTEAD WOULD TEST SOMETHING ELSE: a slot's layout
    # layer is `slot // P` and the RTL's row is `SLICEBASE[slice] + slot // P`, so
    # padding GMAX puts the added slots' addresses one slice window up -- out of
    # the node bank and on top of live edge state.  Those reads are dead (VALID
    # gates every write) but they are not CONSTANT, which makes that variant a
    # harder, not a fairer, test.  Padding P keeps every added address in range.
    #
    # pad = 1 (the default) must leave the generated header BYTE-IDENTICAL.
    P_REAL = nx * ny
    # WHICH SPATIAL RANKS ARE REAL NODES?  `rank` is row-major over the bounding
    # box, so for the unrotated code every rank in [0, P_REAL) is a node and the
    # box is a full rectangle.  THE ROTATED CHECK LATTICE IS A PARITY SUBLATTICE:
    # half of its bounding box is empty BY CONSTRUCTION (report 6.26/6.30), so
    # "is a full rectangle" is the wrong question to ask.  What the array needs
    # is exactly this set: the ranks a node may live at, and hence the ranks that
    # are STRUCTURAL but never VALID.  Writing the rule as a SET keeps every
    # existing configuration byte-identical (there, the set IS range(P_REAL), so
    # `(s % P) in real_rank` is the old `(s % P) < P_REAL`) and it makes `--pad`
    # fall out for free (a padded rank is simply not in the set).
    real_rank = {rank(s) for s in spatial}
    _check(len(real_rank) == len(spatial),
           "two spatial positions share a slot rank")
    _check(all(0 <= r < P_REAL for r in real_rank),
           "a spatial rank falls outside the bounding box [0, %d)" % P_REAL)
    P = P_REAL * pad
    LAYER0 = layers[0]
    if tuple(layers) != tuple(range(LAYER0, LAYER0 + len(layers))):
        _die("layer indices are not contiguous")

    # ---- slices: gmax CONSECUTIVE layers each ---------------------------
    # The alignment matters.  A slice owns a contiguous run of layers, and a
    # layer's layout position is its offset inside that run, so a slot means the
    # same relative layer in every slice.  With arbitrary unequal splits a
    # vertical neighbour of a slice-crossing edge could be two layout positions
    # away, which would break the constant-offset rule.
    nl = len(layers)
    if not (2 <= nslices <= nl):
        _die("need 2 <= slices <= %d" % nl)
    gmax = (nl + nslices - 1) // nslices
    groups = [list(range(LAYER0 + i * gmax, LAYER0 + min((i + 1) * gmax, nl)))
              for i in range(nslices)]
    if not all(groups):
        _die("an empty slice -- reduce the slice count")
    # A node slot is `tlocal*P + spatial` with tlocal < gmax, so one LAYER of
    # slots is NSLOT wide; the bank row stride is therefore NSLOT (not P, which
    # would alias slot 4 of layer 0 with slot 0 of layer 1).
    NSLOT = gmax * P
    # ES_PER_LAYER (= how many edge slots one layout layer holds) is set below,
    # after the edge slot map: it is the number of (orient, rank) positions the
    # graph actually uses, NOT the box width 3P.  ES_STRIDE (the edge bank's row
    # stride) is one layout layer's worth of edge slots, so it equals ES_PER_LAYER
    # and is likewise set below.  Both were `3*P` / `3*P*gmax`, which sized the
    # array and the bank for a box the graph does not fill (measured utilisation
    # 27%..53%).

    slice_of_layer, tlocal_of_layer = {}, {}
    for gi, grp in enumerate(groups):
        for l in grp:
            slice_of_layer[l] = gi
            # A layer's LAYOUT position is (layer - LAYER0) mod gmax, i.e. it is
            # an absolute property of the graph layer, not of its slice.  That is
            # what keeps a vertical neighbour a constant +-P away in slot space
            # even at a slice boundary, where the two layers belong to different
            # slices but sit at adjacent layout positions.
            tlocal_of_layer[l] = (l - LAYER0) % gmax

    # ---- node position ---------------------------------------------------
    idx_of_id = {nd.ID: idx for idx, nd in dec.NODES.items()}
    if sorted(idx_of_id) != list(range(g["nn"])):
        _die("node IDs are not exactly 0..NN-1 (the array relies on it)")
    layer_of_id = {nid: idx_of_id[nid][ta] for nid in range(g["nn"])}
    sp_of_id = {nid: rank(tuple(idx_of_id[nid][a] for a in sp_axes))
                for nid in range(g["nn"])}

    node_slot, node_tl, node_home = {}, {}, {}
    for nid in range(g["nn"]):
        tl = tlocal_of_layer[layer_of_id[nid]]
        node_tl[nid] = tl
        node_slot[nid] = tl * P + sp_of_id[nid]
        # NB: the ROW base is the SLICE's window base (c*gmax), added by naddr.
        node_home[nid] = (tl * NSLOT) + node_slot[nid]
    node_slice = {nid: slice_of_layer[layer_of_id[nid]] for nid in range(g["nn"])}

    slotnode = {}
    for nid in range(g["nn"]):
        key = (node_slot[nid], slice_of_layer[layer_of_id[nid]])
        if key in slotnode:
            _die("two nodes share cell (slot %d, slice %d)" % key)
        slotnode[key] = nid
    # A cell is STRUCTURAL when the slice owns a layer at the slot's layout
    # position; it is VALID when, in addition, the slot carries a REAL spatial
    # rank.  For the unrotated code (and for `--pad`) the two coincide, because
    # every rank in the box is a node; for the ROTATED lattice the parity
    # sublattice leaves half the ranks structural-but-never-valid.  Either way
    # the non-valid cells are structural only: they own a row address in the
    # bank, every address check below still covers them, but no datapath state
    # exists for them and `run` is 0 in every context.
    node_valid = [[(1 if ((s // P) < len(groups[c]) and (s % P) in real_rank)
                    else 0)
                   for c in range(nslices)] for s in range(NSLOT)]
    for s in range(NSLOT):
        for c in range(nslices):
            if (s, c) not in slotnode and node_valid[s][c]:
                _die("cell (slot %d, slice %d) is unbound although the slice has "
                     "that layer" % (s, c))

    # ---- edges: own slot space, split by orientation ---------------------
    # An edge is placed at its ANCHOR endpoint's layout position:
    #
    #     edge slot = tlocal(layer) * PR + within(orient, rank(anchor))
    #     orient    = 0 E/W, 1 N/S, 2 vertical
    #
    # where the anchor is the endpoint with the SMALLER RANK (for an in-plane edge
    # the two endpoints differ in rank by +-1 or +-NY, so this is well defined and
    # makes the node ports constant offsets; for a vertical edge both endpoints
    # share a rank, so either works and the lower layer is used).
    #
    # At every (tlocal, rank) the graph has at most one edge of each orientation,
    # so `(tlocal, orient, rank)` is a bijection onto the edge set.
    #
    # ⚠️ `within` USED TO BE `orient * P + rank`, i.e. the box shape 3P wide, and
    # that is an UPPER BOUND, not the graph: the array instantiates one edge
    # module per (slot, slice), so every position the graph has no edge at is a
    # datapath module holding nothing.  Measured utilisation of that space:
    # 27% (rep d3), 35% (surface d3), 53% (surface d5) -- and at those sizes the
    # lattice instantiated MORE modules than the flat array it is supposed to
    # shrink (rep d3: 8+24 vs 12+13; surface d3: 24+72 vs 36+51).  The within-
    # layer index is now a DENSE numbering of the (orient, rank) pairs the graph
    # actually uses, which keeps every property the rest of this file relies on:
    #
    #   * a slot is still a layout POSITION: the used (orient, rank) set is the
    #     same in every tlocal (asserted below), and `slot // PR == tlocal`, which
    #     is what the row arithmetic `row = SLICEBASE[slice] + slot // per_layer`
    #     needs;
    #   * `(slot, slice)` is still a bijection onto the edges;
    #   * nothing in the RTL changes: an edge cell's address comes from
    #     SNOW_LAT_EB_ADDR_VEC, a node's edge port from the per-(cell, dir)
    #     SNOW_LAT_NB_E_VEC offset, and the edge's endpoints/above from EB_CU/CV
    #     and EB_ABA -- all of them per-cell ELABORATION-TIME constants, so no
    #     runtime ROM appears either way.
    euv = g["edge_uv"]
    # ---- the edge ORIENTATION CLASS --------------------------------------
    # An edge lives at its ANCHOR endpoint's layout position:
    #
    #     edge slot = tlocal(anchor layer) * ES_PER_LAYER + within(class, rank)
    #
    # and the anchor is the endpoint at the LOWER LAYER (ties -- i.e. in-plane
    # edges -- broken by the SMALLER RANK).  `(slot, slice)` is a bijection onto
    # the edge set only if the CLASS separates every (d_layer, d_rank) pair the
    # graph uses.
    #
    # THE CLASS USED TO BE THREE VALUES: 0 = in-plane |drank| == 1 (E/W),
    # 1 = in-plane |drank| == NY (N/S), 2 = across layers.  Class 2 was applied
    # to EVERY inter-layer edge with the rank difference NEVER EXAMINED, which is
    # exactly right for the phenomenological graph (an inter-layer edge there is
    # always a pure time step, drank == 0) and WRONG for the circuit-level
    # graph: localuf's "hook" edges (e.g. `south down`, (i,j,t) -> (i+1,j,t-1))
    # change rank ACROSS layers, so they land on the true vertical edge's slot.
    # The failure is not subtle -- `(slot, slice)` stops being a bijection and
    # the generator dies with "two edges share cell" (measured by
    # fpga_flow/check_circuit_level_geometry.py: 10 shared cells at surface
    # d3 n=2, 76 at d5, 246 at d7; logs/circuit_level_geometry.txt).
    #
    # So the class is now the FULL (d_layer, drank) pair, with two exceptions
    # that are kept only so the verified tables stay byte-identical: an in-plane
    # |drank| of 1 still gets 0 and of NY still gets 1 (a phenomenological graph
    # has no other class, so its numbering is untouched), and every remaining
    # pair gets the next id in SORTED order, so the numbering is deterministic.
    #
    # The in-plane `_die` for "any other |drank|" is GONE with it: a rotated
    # surface code's in-plane steps are +-(NY-1) / +-(NY+1) (measured:
    # logs/rotated_slots.txt, offsets -21,-19,19,21 at d=21), which that check
    # would reject.  What still has to hold is what the RTL needs: the used
    # (class, rank) set must be identical in EVERY layout layer (asserted right
    # below) and `(slot, slice)` must stay a bijection (asserted further down).
    # Inspect a new graph's class inventory with check_circuit_level_geometry.py.
    _raw, _new = [], set()
    for u, v in euv:
        lu, lv = layer_of_id[u], layer_of_id[v]
        if lu == lv:
            dr = abs(sp_of_id[u] - sp_of_id[v])
            if dr == 1:
                cl = 0
            elif dr == ny:
                cl = 1
            else:
                cl = (0, dr)                    # e.g. rotated: NY-1 / NY+1
                _new.add(cl)
            a, b = (u, v) if sp_of_id[u] <= sp_of_id[v] else (v, u)
            lo, hi = a, b                       # for an in-plane edge U == lower
        else:
            if lu < lv:
                a, lo, hi = u, u, v
                dl, dr = lv - lu, sp_of_id[v] - sp_of_id[u]
            else:
                a, lo, hi = v, v, u
                dl, dr = lu - lv, sp_of_id[u] - sp_of_id[v]
            if dr == 0:
                cl = 2                          # a pure time step: vertical
            else:
                cl = (dl, dr)                   # a space-time "hook" edge
                _new.add(cl)
        _raw.append((cl, a, lo, hi))
    _NEW = {p: 3 + i for i, p in enumerate(sorted(_new))}
    etype, eanchor, elow, eup = [], [], [], []
    for cl, a, lo, hi in _raw:
        etype.append(_NEW[cl] if isinstance(cl, tuple) else cl)
        eanchor.append(a)
        elow.append(lo)
        eup.append(hi)
    # the geometric triple of every edge, then the dense within-layer numbering
    edge_geo = [(tlocal_of_layer[layer_of_id[x]], ty, sp_of_id[x])
                for x, ty in zip(eanchor, etype)]
    _used_by_tl = {}
    for tl, ty, rk in edge_geo:
        _used_by_tl.setdefault(tl, set()).add((ty, rk))
    _sets = list(_used_by_tl.values())
    _all_eq = all(s == _sets[0] for s in _sets)
    _check(_all_eq,
           "the (orient, rank) positions an edge occupies differ between layout "
           "layers (%s), so a slot would no longer be one layout position"
           % {t: len(s) for t, s in sorted(_used_by_tl.items())})
    _within = {p: i for i, p in enumerate(sorted(_sets[0]))}
    ES_PER_LAYER_REAL = len(_within)   # the (orient, rank) pairs the graph uses
    # `--pad K` widens the EDGE slot space exactly like the node one: K times as
    # many edge slots per layout layer, the added ones never VALID (EB_VALID = 0
    # in every context) but structurally present, with their own in-bank address
    # in EB_ADDR0 so that every cell still resolves to a real address band.
    ES_PER_LAYER = ES_PER_LAYER_REAL * pad
    edge_slot = [tl * ES_PER_LAYER + _within[(ty, rk)]
                 for tl, ty, rk in edge_geo]
    ES = ES_PER_LAYER * gmax
    ES_STRIDE = ES          # one layout layer of edge slots IS the row stride
    if max(edge_slot) >= ES:
        _die("edge slot out of range")
    # The edge's SLICE must be the anchor's, not the lower endpoint's.  For an
    # in-plane edge the two are the same layer; for a VERTICAL edge the anchor is
    # the LOWER endpoint in slot space, but the slot's layout layer is the
    # ANCHOR's, and the cell's slice is decided by the (slot, layout layer) pair.
    # Slicing by `elow` therefore put a vertical edge's cell in the wrong slice --
    # measurably: 6 of the 13 edges of `rep d3 n=2` landed in slice 0 while the
    # observation bus (which uses `eaddr`, built from the slot) expected slice 1,
    # so their cells were marked invalid and never written.
    edge_slice = [slice_of_layer[layer_of_id[x]] for x in eanchor]
    # bank address of the cell holding this edge (see the memory map below):
    # the edge's slot plus its layout layer, indexed by its own slice
    edge_cell = {}
    for e in range(g["ne"]):
        key = (edge_slot[e], edge_slice[e])
        if key in edge_cell:
            _die("two edges share cell (slot %d, slice %d): %d and %d"
                 % (key[0], key[1], edge_cell[key], e))
        edge_cell[key] = e
    if len(edge_cell) != g["ne"]:
        _die("not every edge got a distinct cell")
    for e, ab in enumerate(g["above"]):
        if ab in (-1, None) or ab == e:
            continue
        # above[e] is the edge one layer UP in graph layer numbering, i.e. the one
        # whose state e takes over at DROP, so it is one slot layer up.
        if edge_slot[ab] != edge_slot[e] + P:
            _die("edge %d: graph above %d is not a slot layer up (%d -> %d)"
                 % (e, ab, edge_slot[e], edge_slot[ab]))

    # ---- memory map ------------------------------------------------------
    # The address of a cell is
    #
    #     node cell (slot s, slice c):  ((SB[c] + s // P) * NSLOT + s) * NCTX + c
    #     edge cell (slot s, slice c):  NEB + ((SB[c] + s // (3P)) * ES_STRIDE
    #                                          + s) * NCTX + c
    #
    # with SB[c] = the slice's ROW BASE and s // P = the slot's LAYOUT layer
    # inside that slice.  SB[c] is `c * (rows per slice)` and NOT the slice's
    # first absolute layer:
    #
    #   * `SB[c] + lay` must be the cell's ROW.  Because a slot already encodes
    #     tlocal (`slot = tlocal*P + rank`), `SB[c] + tlocal` must stay constant
    #     for the two cells of one (slot, slice) pair -- so SB[c] may only depend
    #     on c, not on the slot.
    #   * Rows must not be shared between slices: with SB[c] = layer offset of the
    #     slice's first layer (the old formula) slices 0 and 1 of `rep d3 n=2`
    #     both landed on row 2, so two slice-0 cells and one slice-1 cell
    #     aliased, and the observation bus read untouched state.
    #
    # Both banks are sized so that ALL rows fit: NL*NSLOT*NCTX for nodes (NL
    # layers, gmax rows each ... the slice windows tile [0, NL*gmax) because
    # nslices*gmax >= NL) and NL*ES_STRIDE*NCTX for edges.
    #
    # The mirror of a cell is its address plus NBM_OFF / EBM_OFF, so a
    # port offset is `addr(source) + (mirror ? OFF : 0) - addr(this cell)` -- all
    # elaboration-time constants, and the formula is short enough to check by
    # hand (the previous home/context-based map was not).
    #
    # SB[c] is emitted as SNOW_LAT_SLICEBASE_VEC for the RTL, which reconstructs
    # the row as SB[slice] + SLOTLAY[slot]; the check below asserts that for
    # every (slot, slice) this equals the generator's `c*gmax + tlocal`, so the
    # two views cannot drift apart silently again.
    NL = len(layers)
    NEB = NL * NSLOT * nslices              # node bank [0, NEB)
    # One edge ROW is `ES_STRIDE * nslices` addresses wide: ES_STRIDE slots, each
    # carrying nslices contexts.  Using `ES_STRIDE` as the row stride made the
    # rows overlap -- row 1 of `rep d3 n=2` began at NEB+24 while row 0's context
    # 1 already occupied NEB+24..NEB+47, so an edge's `above` cell landed on
    # another context's cell of the SAME row (edge 2 read bank[96] -- row 0,
    # slot 12 -- instead of edge 1's bank[120], and got 'x').
    EROW = ES_STRIDE * nslices
    MIR = NEB + NL * EROW                   # edge bank [NEB, MIR)
    EMIR = MIR + NEB                        # node mirror
    MEM = EMIR + (MIR - NEB)                # edge mirror
    NBM_OFF = MIR
    EBM_OFF = EMIR - NEB

    NCELLX = NSLOT * nslices          # deliberately out of range: "no cell"

    # Valid slot/layout pairs per slice: a slot of layout layer `lay` only exists
    # in a slice that really owns such a layer.
    slot_lay_ok = [[((s // P) < len(groups[c])) for c in range(nslices)]
                   for s in range(NSLOT)]

    # The RTL's row base per slice, and the generator's authoritative row base.
    #
    # `SB[c] = c * gmax` -- a per-slice ROW WINDOW, not the slice's first absolute
    # layer.  Both forms agree only while every slice is one layer: with gmax > 1
    # the first absolute layer of slice 0 is 0 and of slice 1 is also 0 after
    # subtracting LAYER0, so `groups[c][0] - LAYER0` gave every slice the window
    # base 0 and slice 1's cells landed on slice 0's (measured: `rep d3 n=2`
    # generator node_addr[0] == node_addr[4] == 0, the generator's own
    # node-address assertion then compared `naddr` with `naddr` and passed).
    _slice_base = [c * gmax for c in range(nslices)]
    slice_of_layer = {l: gi for gi, grp in enumerate(groups) for l in grp}
    rowbase_of_layer = {l: slice_of_layer[l] * gmax + (l - LAYER0) % gmax
                        for l in layers}
    for l in layers:
        _check(rowbase_of_layer[l] == _slice_base[slice_of_layer[l]]
               + tlocal_of_layer[l],
               "row base reconstruction disagrees at layer %d" % l)

    # --- memory map ----------------------------------------------------
    # node bank : ((SB[slice] + slot//P) * NSLOT + slot) * NCTX + slice  -> [0, NEB)
    # edge bank : NEB + ((SB[slice] + slot//(3P)) * ES_STRIDE + slot) * NCTX + slice
    # Each bank's row stride must hold a whole layout layer of its own slots, and
    # the edge bank must START after the node bank ENDS -- getting that wrong
    # aliased the two banks and destroyed the reset values.
    def _row(c, slot, per_layer):
        """the ABSOLUTE slot ROW of a cell in slice `c`.

        `row = SLICEBASE[c] + slot // per_layer`, with `SLICEBASE[c] = c * GMAX`:
        every slice owns a DISJOINT window of GMAX rows, so two slices can never
        place a cell on the same row, and a slot supplies only its own layout
        layer inside that window.

        Both earlier forms were wrong in a way the assertions could not see:
        taking the window base from the slice's first ABSOLUTE layer gave 0 for
        every slice (LAYER0 is subtracted first), and omitting the window base
        altogether collapsed all slices onto rows 0..GMAX-1.  In both cases
        `naddr` and the "replay the RTL formula" check were computed from the same
        wrong `_row`, so they agreed with each other while disagreeing with the
        tables the RTL is actually handed.
        """
        return _slice_base[c] + slot // per_layer

    def naddr(nid, c):
        """bank address of a node's state in slice c (an elaboration constant).

        The RTL computes exactly `((ROW * NSLOT) + slot) * NCTX + slice`.
        """
        _check(slot_lay_ok[node_slot[nid]][c],
               "node %d has no cell in slice %d" % (nid, c))
        return ((_row(c, node_slot[nid], P) * NSLOT) + node_slot[nid]) \
            * nslices + c

    def eaddr(e, c):
        """bank address of an edge's state in slice c.

        Same shape as `naddr` with the edge bank's own row stride, and the layout
        layer is `edge_slot // (3P)` -- the SLOT's layout layer, i.e. the layer of
        `eanchor[e]`, which is the layer `edge_slot` was built from.  It must NOT
        come from `eup[e]`: for a VERTICAL edge the anchor is the LOWER endpoint
        while `eup` is the upper one, one layout layer up, so using `eup` shifted
        every vertical edge's memory map by one row while the RTL (which builds
        the address from the slot alone) stayed put.
        """
        _check(edge_slot[e] // ES_PER_LAYER < len(groups[c]),
               "edge %d has no cell in slice %d" % (e, c))
        return NEB + (_row(c, edge_slot[e], ES_PER_LAYER) * EROW
                      + edge_slot[e] * nslices + c)

    node_addr = {nid: naddr(nid, node_slice[nid]) for nid in range(g["nn"])}
    # `node_addr0` is NOT the address a node's cell has -- a node's cell lives in
    # its own slice.  It is kept only as "the same slot/layer in slice 0", which
    # is meaningless for a node outside slice 0, so it must never be handed to the
    # RTL or compared with `naddr(.., node_slice[..])`.
    node_addr0 = {nid: naddr(nid, 0) for nid in range(g["nn"])}
    # Every (slot, slice) cell a slice really owns must be in range.  A slot whose
    # layout layer exceeds the slice's layer count is simply unused (the RTL still
    # instantiates the cell, but `run` is gated by the identity table), so it is
    # not addressed as any node and must NOT be range-checked via naddr().
    for nid in range(g["nn"]):
        for c in range(nslices):
            if slot_lay_ok[node_slot[nid]][c]:
                _check(naddr(nid, c) < NEB,
                       "node %d cell out of range in slice %d" % (nid, c))
    _check(len(set(node_addr.values())) == g["nn"],
           "two nodes share a bank cell")

    # edge layout layer = the layout layer of the LOWER endpoint (the slice that
    # owns the edge's state), and its bank address follows the same shape as a
    # node's address
    # An edge's cell LAYOUT layer and its spatial index/orientation both come from
    # the SAME anchor the slot came from (eanchor), which is what keeps `above` a
    # constant +-one-layout-layer step in the bank.  Mixing two anchors (e.g. the
    # lower endpoint's layer with the U endpoint's rank) collapses edges.
    edge_lay = [(layer_of_id[x] - LAYER0) for x in eup]
    edge_home = [eaddr(e, edge_slice[e]) for e in range(g["ne"])]
    _check(len(set(edge_home)) == g["ne"], "two edges share a bank cell")

    # The two banks and their mirrors must be four DISJOINT address bands.
    #
    # Every node that a slice really owns must land exactly where TWO
    # INDEPENDENT models say it does:
    #   (a) `naddr`, the generator's model;
    #   (b) a replay of the RTL's arithmetic, fed only by the tables the RTL is
    #       actually given (SNOW_LAT_SLICEBASE_VEC, and SLOTLAY[slot] = slot//P
    #       which the RTL derives itself): `((SB[slice] + slot//P) * ROW + slot)
    #       * NCTX + slice`.
    # Comparing (a) with a copy of (a) is what let an earlier stride bug through,
    # so (b) is written out in full here even though it looks redundant.
    _rtl_bad = []
    for _nid in range(g["nn"]):
        _s = node_slot[_nid]
        for _c in range(nslices):
            if not slot_lay_ok[_s][_c]:
                continue
            _want = ((_slice_base[_c] + _s // P) * NSLOT + _s) * nslices + _c
            if naddr(_nid, _c) != _want:
                _rtl_bad.append((_nid, _c, naddr(_nid, _c), _want))
    _check(not _rtl_bad,
           "generator and RTL node-address formulas disagree, e.g. node %d "
           "slice %d: generator %d vs RTL %d"
           % (_rtl_bad[0] if _rtl_bad else (0, 0, 0, 0)))

    # Every (slot, slice) cell that a slice really owns must be in the right band.
    # Cells whose layout layer exceeds the slice's layer count are simply unused,
    # so they are enumerated here from the slot/layout map, not from the graph.
    _node_bands = set()
    for s in range(NSLOT):
        for c in range(nslices):
            if s // P < len(groups[c]):
                _node_bands.add((_slice_base[c] + s // P) * NSLOT * nslices
                                + s * nslices + c)
    _edge_bands = set()
    for s in range(ES):
        for c in range(nslices):
            if s // ES_PER_LAYER < len(groups[c]):
                _edge_bands.add(NEB + (_slice_base[c] + s // ES_PER_LAYER)
                                * EROW + s * nslices + c)
    _check(all(naddr(nid, c) in _node_bands
               for nid in range(g["nn"]) for c in range(nslices)
               if slot_lay_ok[node_slot[nid]][c]),
           "a node's cell is not in the set of cells its slice owns")
    _check(all(eaddr(e, c) in _edge_bands
               for e in range(g["ne"]) for c in range(nslices)
               if edge_slot[e] // ES_PER_LAYER < len(groups[c])),
           "an edge's cell is not in the set of cells its slice owns")
    _check(max(_node_bands) < NEB,
           "a node cell spilled outside the node bank (max %d >= NEB %d)"
           % (max(_node_bands), NEB))
    _check(min(_edge_bands) >= NEB and max(_edge_bands) < MIR,
           "an edge cell spilled outside the edge bank ([%d,%d) vs [%d,%d))"
           % (min(_edge_bands), max(_edge_bands), NEB, MIR))
    _check(not (_node_bands & _edge_bands),
           "the node and edge banks overlap (%d shared addresses)"
           % len(_node_bands & _edge_bands))
    # The four address bands (node register, node mirror, edge register, edge
    # mirror) must be pairwise disjoint and inside MEM.  The mirror of a cell is
    # at a CONSTANT offset (+NBM_OFF / +EBM_OFF) from its register, which is what
    # makes a port offset a single compile-time constant -- but that also means a
    # mirror lands on top of whatever occupies `address + OFF`, and a mirror of a
    # NODE lands in the node mirror only if the node bank is exactly NEB long.
    _nreg = set(_node_bands)
    _nmir = {a + NBM_OFF for a in _nreg}
    _ereg = set(_edge_bands)
    _emir = {a + EBM_OFF for a in _ereg}
    _all = _nreg | _nmir | _ereg | _emir
    for _nm, _band in (("node reg", _nreg), ("node mirror", _nmir),
                       ("edge reg", _ereg), ("edge mirror", _emir)):
        _check(min(_band) >= 0 and max(_band) < MEM,
               "%s band spills outside the bank ([%d,%d) vs [0,%d))"
               % (_nm, min(_band), max(_band), MEM))
    _check(len(_all) == len(_nreg) + len(_nmir) + len(_ereg) + len(_emir),
           "two of the four address bands overlap (%d addresses for %d cells)"
           % (len(_all), len(_nreg) + len(_nmir) + len(_ereg) + len(_emir)))
    _check(all(naddr(nid, c) + NBM_OFF in _nmir
               for nid in range(g["nn"]) for c in range(nslices)
               if slot_lay_ok[node_slot[nid]][c]),
           "a node's mirror is not in the node mirror band")
    # Every real node/edge cell must be one of the cells its slice owns.  This is
    # the assertion that catches a wrong row WINDOW: when `_slice_base` collapsed
    # two slices onto one row, each node was still "the cell its own slot/layer
    # pair" said, so a self-consistent `naddr` check could not see it -- but the
    # cell it named was not in the band the slot map enumerates.
    _check(all(naddr(nid, c) in _node_bands
               for nid in range(g["nn"]) for c in range(nslices)
               if slot_lay_ok[node_slot[nid]][c]),
           "a node's cell is not in the set of cells its slice owns")
    _check(all(eaddr(e, c) in _edge_bands
               for e in range(g["ne"]) for c in range(nslices)
               if edge_slot[e] // ES_PER_LAYER < len(groups[c])),
           "an edge's cell is not in the set of cells its slice owns")
    # The edge `above` relation, checked for real.
    #
    # This loop used to read `for e, ab in enumerate(g["above"])`.  `g["above"]`
    # is a DICT keyed by edge id, so `enumerate` yielded `(index, KEY)`: `ab` was
    # always `e` itself, `ab == e` was always true, and EVERY assertion below was
    # dead code.  That is how `EB_AB` came to hold a constant `+EROW` for an
    # `above` edge that is in fact a different slice and a different slot (see
    # 2.6 of fpga_flow/lattice_b_step_status.md): nothing ever checked it.
    #
    # What is actually true, and what the DROP chain needs, is only that `above`
    # is the same edge one GRAPH LAYER up at the same spatial position: same
    # rank, same orientation, layer + 1.  In the shared lattice that can be a
    # different SLICE and a different slot (tlocal wraps at GMAX), so no constant
    # bank offset can express it -- which is exactly why the RTL takes the source
    # as an ADDRESS + the source's slice, and why the check is written on the
    # geometric triple `edge_geo` rather than on slot arithmetic: the slot
    # numbering is a dense packing of the (orient, rank) pairs the graph uses, so
    # `slot % P` / `(slot // P) % 3` no longer recover the triple.
    _ab_bad = []
    for e, ab in g["above"].items():
        if ab in (-1, None) or ab == e:
            continue
        _tl_e, _ty_e, _rk_e = edge_geo[e]
        _tl_a, _ty_a, _rk_a = edge_geo[ab]
        if not (_rk_a == _rk_e and _ty_a == _ty_e
                and edge_lay[ab] == edge_lay[e] + 1):
            _ab_bad.append((e, ab))
    _check(not _ab_bad,
           "edge above is not the same edge one layer up, e.g. %d -> %d "
           "(rank %d/%d orient %d/%d layer %d/%d)"
           % (_ab_bad[0][0], _ab_bad[0][1],
              edge_geo[_ab_bad[0][1]][2], edge_geo[_ab_bad[0][0]][2],
              edge_geo[_ab_bad[0][1]][1], edge_geo[_ab_bad[0][0]][1],
              edge_lay[_ab_bad[0][1]], edge_lay[_ab_bad[0][0]])
           if _ab_bad else "")
    # and the cell it names must be a real edge cell, so the RTL's
    # `ecell_nxt[above]` is never a padding cell
    _ab_bad = [(e, ab) for e, ab in g["above"].items()
               if ab not in (-1, None) and ab != e
               and (edge_slot[ab], edge_slice[ab]) not in edge_cell]
    _check(not _ab_bad,
           "edge %d: above %d has no cell"
           % _ab_bad[0] if _ab_bad else "")

    # ---- per-(slot, slice) direction tables ------------------------------
    # Bank selection, the heart of the shared lattice.  ONE rule covers every
    # port, and it is evaluated against the phase RUNNING NOW:
    #
    #     source_slice <  phase  ->  read the MIRROR
    #     source_slice >= phase  ->  read the REGISTER
    #
    # so every port carries the source's start-of-stage state whatever phase the
    # reader happens to run in.  That is exactly what the flat array sees: its
    # PEs keep one register each and `o_cid`/`o_push`/... ARE those registers
    # (`assign o_cid = cid`), so `ab_cid[n] = pe_cid[AB_S]` and
    # `pe_nb_push[n][d] = pe_push[NBR][REV]` sample live registers that this
    # stage has not updated yet.
    #
    #   * source not yet committed in this stage: its register is still the
    #     start-of-stage value.
    #   * source already committed (an EARLIER slice, since phases run in slice
    #     order): it left the start-of-stage value in its mirror (every cell
    #     writes `mirror <= register` on every run edge of its own slice).
    #
    # The select must be DYNAMIC (a comparison against `phase`), not a constant
    # per link.  A constant "mirror unless the source is in a later slice" is
    # right only when the reader is evaluated at its own phase; the array's
    # outputs are read ACROSS cells (a push tap, an edge flip), so a cell
    # evaluated at one phase must see the same state as at any other.  With the
    # dynamic rule every cell's combinational output is phase-invariant and equal
    # to the flat array's, which is what makes those taps exact.
    #
    # NB_A / NB_E are offsets to the source's REGISTER (the mirror shift is added
    # by the RTL), and NB_SL / NB_ESL are the source's slice, which is what the
    # comparison needs.
    dirs = g["dirs"]
    NDIR = len(dirs)
    Z = lambda: [[[0] * NDIR for _ in range(nslices)] for _ in range(NSLOT)]  # noqa: E731
    NB_V, NB_A, NB_L, NB_E, NB_EL = Z(), Z(), Z(), Z(), Z()
    NB_SL, NB_ESL = Z(), Z()
    NB_C, NB_RV = Z(), Z()          # neighbour's cell index, and its rev direction
    AB_A = [0] * (NSLOT * nslices)  # cell -> the ADDRESS its DROP source reads
    AB_SL = [0] * (NSLOT * nslices)  # ... and that source's slice
    for (s, c), nid in slotnode.items():
        CELL = s * nslices + c
        for di, dn in enumerate(dirs):
            ent = g["nb"][nid].get(dn)
            if ent is None:
                # no neighbour: keep the addresses in range (validity gates the
                # use) and take the register-bank path so nothing is read
                NB_V[s][c][di] = 0
                NB_A[s][c][di] = 0
                NB_L[s][c][di] = 1
                NB_E[s][c][di] = 0
                NB_EL[s][c][di] = 1
                NB_RV[s][c][di] = 0
                NB_C[s][c][di] = 0
                NB_SL[s][c][di] = 0
                NB_ESL[s][c][di] = 0
                continue
            m, e = ent
            NB_V[s][c][di] = 1
            NB_L[s][c][di] = 1 if node_slice[m] >= c else 0
            NB_EL[s][c][di] = 1 if edge_slice[e] >= c else 0
            # offsets to the source's REGISTER; the RTL adds the mirror shift
            # itself when the source's slice is earlier than the phase running
            NB_A[s][c][di] = naddr(m, node_slice[m]) - naddr(nid, c)
            NB_E[s][c][di] = edge_home[e] - naddr(nid, c)
            NB_SL[s][c][di] = node_slice[m]
            NB_ESL[s][c][di] = edge_slice[e]
            # the neighbour's CELL, and the direction at it that points back here.
            # Both are needed because `push` is a datapath OUTPUT, not banked
            # state: the flat array takes `pe_push[NBR][REV]`, and `push` depends
            # on the pointer the neighbour computes THIS cycle (`n_ptr`, from the
            # flooding), not on the one in its register.
            NB_C[s][c][di] = node_slot[m] * nslices + node_slice[m]
            NB_RV[s][c][di] = _dir_at(g, m, nid)
        abn = g["node_above"].get(nid, NO_NODE)
        # The DROP source: the `above` node's start-of-stage state, read from the
        # bank exactly like every other port (mirror iff its slice is earlier).
        #
        # The flat array gets the same value from `ab_cid[n] = pe_cid[AB_S]`,
        # which is the source PE's live REGISTER (`assign o_cid = cid`), and one
        # defect layer therefore moves exactly one step per step.  Measured on the
        # golden for `rep d3 n=2`: node 6 picks up the syndrome's defect at T1,
        # node 8 takes node 6's end-of-T1 state at T2, node 10 takes node 8's
        # end-of-T2 state at T3.  Reading the source's NEXT state instead (the
        # PE's `st_out`) lands the whole 6->8->10 chain in T1, which is wrong.
        ab = abn
        AB_A[CELL] = 0 if ab == NO_NODE else (
            naddr(ab, node_slice[ab]) - naddr(nid, c))
        AB_SL[CELL] = 0 if ab == NO_NODE else node_slice[ab]
        if ab != NO_NODE:
            _check(layer_of_id[ab] == layer_of_id[nid] + 1,
                   "node %d: above %d is not one graph layer up (%d -> %d)"
                   % (nid, ab, layer_of_id[nid], layer_of_id[ab]))
            _check(naddr(nid, c) + AB_A[CELL] in _node_bands,
                   "node %d slice %d: DROP source address %d is not a node cell"
                   % (nid, c, naddr(nid, c) + AB_A[CELL]))

    # ---- edge contents per (edge slot, slice) ----------------------------
    EB_U = [0] * ES            # upper endpoint's node slot
    EB_V = [0] * ES            # lower endpoint's node slot
    EB_DU = [0] * ES           # direction index at the upper end (points down)
    EB_DV = [0] * ES           # direction index at the lower end (points up)
    EB_HA = [0] * ES           # has an `above` edge (bank +ES_PER_LAYER)
    EB_VL = [0] * ES           # lower endpoint is inside the edge's own slice
    EB_VX = [0] * ES           # lower endpoint is in the PREVIOUS slice
    EB_HAS = [[0] * nslices for _ in range(ES)]
    for e in range(g["ne"]):
        es = edge_slot[e]
        EB_HAS[es][edge_slice[e]] = 1
        EB_U[es] = node_slot[eup[e]]
        EB_V[es] = node_slot[elow[e]]
        # DU / DV are the directions at the graph's U and V toward each other --
        # the flat array's `SNOW_EDIRU_VEC` convention, which is what the port is
        # for (`flip_u(pe_push[U][DU])`).  Building them from the LAYER-ordered
        # `eup`/`elow` instead gives the direction at the OTHER endpoint: for the
        # in-plane edge 4-10 of `rep d3 n=2` that is W at node 10 where V's W is
        # wanted and E at node 4 where U's E is wanted, so `flip_u`/`flip_v` are
        # simply exchanged.  The edge's `inc = u_pulse + v_pulse` and its
        # `flip_u ^ flip_v` are symmetric, which is why the swap hid for so long
        # -- but the mirror/recompute path is NOT symmetric (it reads `usrc` for
        # u and `vsrc` for v), and the golden's `T 3 m 1` flipped edge 4-10's
        # ecorr while the RTL did not.
        EB_DU[es] = _dir_at(g, g["edge_uv"][e][0], g["edge_uv"][e][1])
        EB_DV[es] = _dir_at(g, g["edge_uv"][e][1], g["edge_uv"][e][0])
        EB_HA[es] = 0 if g["above"][e] in (-1, None) else 1
        EB_VL[es] = 1 if node_tl[elow[e]] == node_tl[eanchor[e]] else 0
        EB_VX[es] = 0 if layer_of_id[elow[e]] > layer_of_id[eup[e]] else 1

    # ---- edge bank layout: endpoints, `above`, and the live taps ----------
    # The datapath of edge cell (es, c) needs the bank addresses of both endpoint
    # nodes, the address of its own `above` edge, and the cell indices of the two
    # endpoints (a pulse / flip request is a datapath OUTPUT, not state, so it has
    # to be tapped from the producing cell).
    EB_NU = [[0] * nslices for _ in range(ES)]
    EB_NV = [[0] * nslices for _ in range(ES)]
    # edge cell -> the ADDRESS its DROP source (`above` edge) reads, and whether
    # such a source exists.  Same rule as every other port: the above edge's
    # start-of-stage state, from its register unless its slice is earlier (then
    # its mirror).  An OFFSET cannot express this -- the above edge can be in the
    # other slice and a whole layout layer away in slot space (measured on
    # `rep d3 n=2`: e2's above is at +72 and e6's at +25, while the table used to
    # say a flat +48 for all of them, unchecked).
    ECELLX = ES * nslices
    EB_ABH = [[0] * nslices for _ in range(ES)]   # this cell has an `above` edge
    EB_ABA = [[0] * nslices for _ in range(ES)]   # ... and its REGISTER address
    EB_ABS = [[0] * nslices for _ in range(ES)]   # ... and that edge's slice
    EB_CU = [[0] * nslices for _ in range(ES)]
    EB_CV = [[0] * nslices for _ in range(ES)]
    EB_SU = [[0] * nslices for _ in range(ES)]
    EB_SV = [[0] * nslices for _ in range(ES)]
    # "must be read from the MIRROR" flags for the two endpoints.
    #
    # The rule is "has that slice ALREADY run this step?".  Phases run in slice
    # order within one step, and a cell committed in an earlier phase no longer
    # holds Q_k in its register -- but it left Q_k in its mirror.  So the mirror is
    # needed when the endpoint's slice is EARLIER than the reading cell's, i.e.
    # `cu < c`.  The table used `cu > c`, which is exactly backwards: it sent a
    # later-slice endpoint (whose register is still untouched Q_k, and whose live
    # pulse is still valid) down the mirror path and an earlier-slice endpoint
    # down the live path where its register had already moved on.  Measured on
    # `rep d3 n=2`, edge 8-6 (slice 0, endpoint node 6 in slice 1) took its V
    # pulse from the live tap of a cell that runs in the OTHER phase, so it read 0
    # forever while the golden model grew the edge.
    EB_UM = [[0] * nslices for _ in range(ES)]
    EB_VM = [[0] * nslices for _ in range(ES)]
    EB_NU2 = [[0] * nslices for _ in range(ES)]
    EB_NV2 = [[0] * nslices for _ in range(ES)]
    for e in range(g["ne"]):
        es, c = edge_slot[e], edge_slice[e]
        # U and V are the GRAPH's endpoint labels -- the ones the trace prints as
        # `SNOW_EDGE_U(e)`/`SNOW_EDGE_V(e)`.  `eup`/`elow` are LAYER ordered, so
        # for an in-plane edge they coincide with U/V, but for a VERTICAL edge
        # `eup` is the graph's V endpoint and `elow` its U endpoint.  Every U/V
        # table below therefore takes U from `elow` and V from `eup`; building them
        # from `eup`/`elow` swapped the two live taps AND the two bank addresses
        # for every vertical edge (measured on `rep d3 n=2`: edge 8-6 read node 8's
        # pulse instead of node 6's and never grew).
        u_nid, v_nid = g["edge_uv"][e]
        _check({u_nid, v_nid} == {eup[e], elow[e]},
               "edge %d: U/V %s are not the layer endpoints (%d,%d)"
               % (e, (u_nid, v_nid), eup[e], elow[e]))
        cu, cv = node_slice[u_nid], node_slice[v_nid]
        EB_NU[es][c] = naddr(u_nid, cu)
        EB_NV[es][c] = naddr(v_nid, cv)
        EB_UM[es][c] = 1 if cu < c else 0
        EB_VM[es][c] = 1 if cv < c else 0
        EB_NU2[es][c] = EB_NU[es][c] + (NBM_OFF if EB_UM[es][c] else 0)
        EB_NV2[es][c] = EB_NV[es][c] + (NBM_OFF if EB_VM[es][c] else 0)
        EB_CU[es][c] = node_slot[u_nid] * nslices + cu
        EB_CV[es][c] = node_slot[v_nid] * nslices + cv
        EB_SU[es][c] = cu
        EB_SV[es][c] = cv
        _check(EB_CU[es][c] == node_slot[u_nid] * nslices + node_slice[u_nid],
               "edge %d: CU %d is not U node %d's cell"
               % (e, EB_CU[es][c], u_nid))
        _check(EB_CV[es][c] == node_slot[v_nid] * nslices + node_slice[v_nid],
               "edge %d: CV %d is not V node %d's cell"
               % (e, EB_CV[es][c], v_nid))
        # `above` is the edge one layer UP at the same position.  Its DROP source
        # is read from the bank at the address below: the above edge's own cell,
        # or its mirror when that cell's slice is EARLIER than this one (it has
        # already committed in this stage).  The address is absolute, because an
        # offset would need the two cells to be a constant apart, which they are
        # not: the `above` edge can sit in the other slice, a layout layer away.
        abe = g["above"].get(e, -1)
        if abe in (-1, None):
            EB_ABH[es][c] = 0
            EB_ABA[es][c] = 0
        else:
            EB_ABH[es][c] = 1
            EB_ABA[es][c] = edge_home[abe]
            EB_ABS[es][c] = edge_slice[abe]
            _check(EB_ABA[es][c] in _edge_bands,
                   "edge %d slice %d: DROP source address %d is not an edge cell"
                   % (e, c, EB_ABA[es][c]))
            _check(EB_ABA[es][c] != edge_home[e],
                   "edge %d: its own cell is its above" % e)

    # ---- per (slot, slice) node identity ---------------------------------
    cid_w = max(2, g["nn"].bit_length() + 1)
    syn_w = max(1, len(g["syn_nodes"]).bit_length())
    SYN_NONE = (1 << syn_w) - 1
    ident, synidx = {}, {}
    for s in range(NSLOT):
        for c in range(nslices):
            nid = slotnode.get((s, c))
            if nid is None:
                ident[(s, c)] = 0
                synidx[(s, c)] = SYN_NONE
                continue
            ab = g["node_above"].get(nid, NO_NODE)
            word = nid
            word |= (1 if ab != NO_NODE else 0) << cid_w
            word |= (1 if g["is_bnd"].get(nid, 0) else 0) << (cid_w + 1)
            word |= (1 if g["is_top"].get(nid, 0) else 0) << (cid_w + 2)
            word |= (1 if g["is_bot"].get(nid, 0) else 0) << (cid_w + 3)
            word |= (1 if nid in g["syn_nodes"] else 0) << (cid_w + 4)
            ident[(s, c)] = word
            synidx[(s, c)] = (g["syn_nodes"].index(nid) if nid in g["syn_nodes"]
                              else SYN_NONE)

    # ---- the DROP source tables, tied to the graph -----------------------
    # The RTL decides "this cell takes its DROP from an `above` cell" from the
    # per-cell flag alone (`AB_HAS` / `EB_ABH`), because there is nothing else to
    # decide it from: a node's identity is available per cell, but an EDGE slot
    # holds one edge per slice, so a per-slot flag cannot describe a cell.  Gating
    # the edge side on the per-slot `EB_HA` made a slot whose two edges differ
    # (one has an above, the other does not) read a cell that is not its source,
    # and 666 trace values went to 'x'.
    _sent_bad = []
    for (s, c), nid in slotnode.items():
        ab = g["node_above"].get(nid, NO_NODE)
        if ab == NO_NODE:
            continue
        cell = s * nslices + c
        if naddr(nid, c) + AB_A[cell] != naddr(ab, node_slice[ab]) \
                or AB_SL[cell] != node_slice[ab]:
            _sent_bad.append(("node %d slice %d" % (nid, c), ab,
                              node_slice[ab]))
    for es in range(ES):
        for c in range(nslices):
            real = [e for e in range(g["ne"])
                    if edge_slot[e] == es and edge_slice[e] == c]
            if not real:
                if EB_ABH[es][c]:
                    _sent_bad.append(("padding edge slot %d slice %d" % (es, c),
                                      0, True))
                continue
            e = real[0]
            abe = g["above"].get(e, -1)
            want = 0 if abe in (-1, None) else edge_home[abe]
            wsl = 0 if abe in (-1, None) else edge_slice[abe]
            if EB_ABH[es][c] != (0 if abe in (-1, None) else 1) \
                    or EB_ABA[es][c] != want or EB_ABS[es][c] != wsl:
                _sent_bad.append(("edge %d slice %d" % (e, c), es, abe))
    _check(not _sent_bad,
           "a DROP source table disagrees with the graph/mirror rule, e.g. %s"
           % (_sent_bad[0] if _sent_bad else ""))

    # ---- cross-checks ----------------------------------------------------
    for (s, c), nid in slotnode.items():
        for di, dn in enumerate(dirs):
            ent = g["nb"][nid].get(dn)
            if ent is None:
                continue
            m, e = ent
            if naddr(nid, c) + NB_A[s][c][di] != naddr(m, node_slice[m]) \
                    or NB_SL[s][c][di] != node_slice[m]:
                _die("neighbour address mismatch at node %d dir %s" % (nid, dn))
            if naddr(nid, c) + NB_E[s][c][di] != edge_home[e] \
                    or NB_ESL[s][c][di] != edge_slice[e]:
                _die("edge port address mismatch at node %d dir %s edge %d"
                     % (nid, dn, e))
    # ---- observation + commit tables -------------------------------------
    # A graph node's bank address, and a graph edge's; plus, for every commit
    # edge, its commit-vector index and bank address (commit reporting reads the
    # live bank at phase 0, before slice 0 commits).
    obs_node = [node_addr[nid] for nid in range(g["nn"])]
    obs_edge = [edge_home[e] for e in range(g["ne"])]
    # The observation bus must point at the cell the node/edge actually lives in.
    # Assert it explicitly: this vector is built from `naddr`/`eaddr`, and when
    # those two definitions drifted apart the bus silently read ANOTHER cell --
    # which is invisible in the bus itself and shows up only as a wrong trace.
    _check(obs_node == [naddr(nid, node_slice[nid]) for nid in range(g["nn"])],
           "the node observation bus does not match naddr")
    _check(obs_edge == [eaddr(e, edge_slice[e]) for e in range(g["ne"])],
           "the edge observation bus does not match eaddr")
    _check(all(obs_node[nid] in _node_bands for nid in range(g["nn"])),
           "a node observation address is not a cell any slice owns")
    _check(all(obs_edge[e] in _edge_bands for e in range(g["ne"])),
           "an edge observation address is not a cell any slice owns")
    # Every (edge slot, slice) cell that the slice owns: its bank address with the
    # slice component removed.  The RTL indexes this table with the cell's own
    # `slot*NCTX + slice` and adds the slice back, so two contexts of one slot
    # share an entry -- which is only sound because an edge slot is a bijection
    # onto the graph's edges, so at most one context of a slot is ever bound.
    EB_ADDR0 = [0] * (ES * nslices)
    EB_VALID = [0] * (ES * nslices)
    # EVERY structurally-owned cell gets its real address, padding cells included.
    # The RTL builds a cell's address from its own (slot, slice) alone, so leaving
    # the unbound cells at a 0 placeholder made their addresses disagree with the
    # slot arithmetic (measured: 21 of the 48 `rep d3 n=2` edge cells named
    # `bank[0]`/`bank[1]`).  They never WRITE, but a placeholder address also
    # makes the table impossible to check -- a self-check that replays the RTL
    # arithmetic now covers every cell instead of only the bound ones.
    for sl in range(ES):
        for c in range(nslices):
            lay = sl // ES_PER_LAYER
            if lay >= len(groups[c]):
                continue
            # The FULL address, slice included.  Two contexts of one slot are two
            # different cells (`... + slot*nslices + c`), so a table entry that
            # dropped `c` and let the RTL add it back made both of them resolve to
            # the same address -- edge 0's cell 1 landed on the padding cell 25.
            EB_ADDR0[sl * nslices + c] = NEB + (_slice_base[c] + lay) * EROW \
                + sl * nslices + c
            # VALID, unlike the address, needs the slot to be a REAL edge
            # position: with `--pad K` the padding edge slots own an address in
            # the same row but no datapath state and no `run`.
            EB_VALID[sl * nslices + c] = \
                1 if (sl % ES_PER_LAYER) < ES_PER_LAYER_REAL else 0
    # the edge that a (slot, slice) pair is bound to must sit exactly where
    # `eaddr` says -- this is the check that keeps the two tables in step
    for e in range(g["ne"]):
        c = edge_slice[e]
        _check(EB_ADDR0[edge_slot[e] * nslices + c] == eaddr(e, c),
               "edge %d: table address %d disagrees with eaddr %d"
               % (e, EB_ADDR0[edge_slot[e] * nslices + c], eaddr(e, c)))
    # replay the RTL arithmetic for EVERY cell: `MYADDR = EB_ADDR_VEC[cell]` must
    # equal the slot's own address in that slice's window, and no two real cells
    # may share an address
    _cell_bad = []
    _seen = {}
    for _cell in range(ES * nslices):
        _sl, _c = _cell // nslices, _cell % nslices
        _lay = _sl // ES_PER_LAYER
        if _lay >= len(groups[_c]):
            continue
        _want = NEB + (_slice_base[_c] + _lay) * EROW + _sl * nslices + _c
        if EB_ADDR0[_cell] != _want:
            _cell_bad.append((_cell, EB_ADDR0[_cell], _want))
        if EB_ADDR0[_cell] in _seen:
            _cell_bad.append((_cell, EB_ADDR0[_cell], _seen[EB_ADDR0[_cell]]))
        _seen[EB_ADDR0[_cell]] = _cell
    _check(not _cell_bad,
           "edge address table disagrees with the slot arithmetic, e.g. cell "
           "%d: table %d vs slot %d" % (_cell_bad[0] if _cell_bad else (0, 0, 0)))
    com_idx, com_addr = [], []
    for ci in range(g["n_commit"]):
        for e in range(g["ne"]):
            if g["commit_idx"].get(e, -1) == ci:
                com_idx.append(ci)
                com_addr.append(edge_home[e])
                break

    return dict(kind=kind, d=d, nslices=nslices, dirs=dirs, g=g,
                nx=nx, ny=ny, P=P, P_REAL=P_REAL, pad=pad, gmax=gmax,
                NSLOT=NSLOT, ES=ES, node_valid=node_valid,
                ES_PER_LAYER=ES_PER_LAYER, ES_STRIDE=ES_STRIDE, LAYER0=LAYER0,
                layers=layers, groups=groups, NL=NL, MEM=MEM,
                NEB=NEB, MIR=MIR, EMIR=EMIR, NBM_OFF=NBM_OFF,
                EBM_OFF=EBM_OFF, EB_VALID=EB_VALID,
                node_slot=node_slot, node_tl=node_tl, node_home=node_home,
                node_slice=node_slice, slotnode=slotnode,
                node_addr0=node_addr0,
                # a cell's own address: use the node bound at THAT (slot, slice)
                cell_addr=[(naddr(slotnode[(s, c)], c)
                            if (s, c) in slotnode else 0)
                           for s in range(NSLOT) for c in range(nslices)],
                NB_V=NB_V, NB_A=NB_A, NB_L=NB_L, NB_E=NB_E, NB_EL=NB_EL,
                NB_RV=NB_RV, NB_C=NB_C, AB_A=AB_A, AB_SL=AB_SL,
                NB_SL=NB_SL, NB_ESL=NB_ESL,
                edge_slot=edge_slot, edge_home=edge_home, edge_slice=edge_slice,
                edge_lay=edge_lay,
                eslot_lay={sl: edge_lay[e] for e, sl in enumerate(edge_slot)},
                elow=elow, eup=eup, eanchor=eanchor,
                slice_base=_slice_base,
                node_lay={nid: layer_of_id[nid] - LAYER0
                          for nid in range(g["nn"])},
                EB_U=EB_U, EB_V=EB_V, EB_DU=EB_DU, EB_DV=EB_DV,
                EB_HAS=EB_HAS, EB_VL=EB_VL, EB_HA=EB_HA, EB_VX=EB_VX,
                EB_NU=EB_NU, EB_NV=EB_NV, EB_ABH=EB_ABH, EB_ABA=EB_ABA,
                EB_ABS=EB_ABS,
                EB_CU=EB_CU, EB_CV=EB_CV, EB_SU=EB_SU, EB_SV=EB_SV,
                EB_UM=EB_UM, EB_VM=EB_VM, EB_NU2=EB_NU2, EB_NV2=EB_NV2,
                obs_node=obs_node, obs_edge=obs_edge, EB_ADDR0=EB_ADDR0,
                com_idx=com_idx, com_addr=com_addr,
                ident=ident, synidx=synidx,
                cid_w=cid_w, syn_w=syn_w, SYN_NONE=SYN_NONE)


def _vec(name, values, width, default=0):
    """emit an UNPACKED INTEGER ARRAY.

    Two separate traps are avoided by never emitting a packed vector:

    1. A packed `'d` literal whose top bit is set is NEGATIVE, so the vector's
       most significant element silently loses that bit (`_vec` used to do
       `{... 10'd356 ...}`, which cleared is_bnd/has_above).  It is emitted here
       as an unpacked integer array, so the value survives verbatim.
    2. A constant part-select `VEC[K*W +: W]` with a genvar-derived base is
       evaluated at elaboration; ModelSim mis-evaluates it and returns the
       element at a collapsed index (in this build every edge cell read entry
       ESLOT-1, aliasing 15 of 24 cells onto node addresses).  `VEC[K]` is a
       plain array read and works in every simulator.

    NEGATIVE values are emitted as their two's-complement form at `width` bits,
    which is the number the RTL's arithmetic needs: a port offset such as -2 is
    `myaddr - 2` in a `width`-bit adder, i.e. `{width{1'b1}} - 1`, not
    `{width{1'b1}}`.  Collapsing every negative value onto `(1<<width)-1` -- what
    this function used to do -- is right only for -1, and it silently turned the
    offset -2 into -1: measured on `rep d3 n=2`, node 8's port to node 2 read
    bank[25] instead of bank[24] and answered cid 0 instead of cid 2, so the
    T 3 `m` merge landed on cluster 0 instead of cluster 4.  A -1 sentinel still
    becomes all-ones, so sentinel call sites are unaffected.

    `width` is therefore the RTL's arithmetic width for this table, not merely
    documentation.
    """
    mask = (1 << width) - 1
    items = [str(int(v) & mask) for v in values]
    return ("localparam integer %s [0:%d] = '{%s};"
            % (name, len(values) - 1, ", ".join(items)))


def _iarr(name, values):
    """kept for call-site clarity; a full-width (unmasked) integer array.

    The width matters now that `_vec` masks to two's complement -- passing 1 here
    truncated every identity word and every PE reset word to a single bit, and
    the whole state bank came up as zeros."""
    return _vec(name, values, 32)


def _slw(nctx):
    return max(1, (nctx - 1).bit_length()) if nctx > 1 else 1


SNOW_LAT_SLW_ = _slw


def emit(r):
    g = r["g"]
    NDIR = len(r["dirs"])
    NSLOT, ES, gmax, P, NCTX = r["NSLOT"], r["ES"], r["gmax"], r["P"], r["nslices"]
    cid_w, syn_w = r["cid_w"], r["syn_w"]
    # Address width: the bank holds MEM words, so the largest address is MEM-1.
    # `MEM.bit_length()` happens to equal `(MEM-1).bit_length()` whenever MEM is a
    # power of two -- which every configuration was until the edge row stride was
    # widened -- and is one bit too many otherwise.  Use the correct form.
    aw = max(1, (r["MEM"] - 1).bit_length())
    nbw = max(1, (NSLOT * NCTX + 2).bit_length())
    slw = max(1, (NCTX - 1).bit_length()) if NCTX > 1 else 1
    eaw = max(1, (ES + 1).bit_length())
    ebw = aw
    rvw = max(1, (NDIR - 1).bit_length())
    L = []
    A = L.append
    A("// ---- packed state word widths (needed by snowflake_pe.sv at parse time)")
    # The packed state word is, from the bottom up,
    #     busy, unrooted, grown, ptr(pw), defect, whole, active, cid(cid_w), pb
    # i.e. exactly `7 + pw + cid_w` bits with `pb` -- the two-pass push decision
    # (report 6.24 / design doc 4.8.4) -- as the TOP bit.
    #
    # The expression used to be written as `7 + ...` too, but it then carried one
    # SLACK bit at the top, and that slack is exactly what broke the first
    # two-pass run: `STW - 1` named the slack bit instead of `pb`, every `SO_PB`
    # read returned 0, no defect was ever pushed, and merging stopped after 3 of
    # the golden's 6 sub-rounds (`rep d3 n=2` `T 4`).  So the width is now CHECKED
    # against the field sum instead of being asserted by eye.
    _pw = max(3, (NDIR + 1).bit_length())
    _stw = 7 + _pw + cid_w
    _fields = 1 + 1 + 1 + _pw + 1 + 1 + 1 + cid_w + 1
    _check(_stw == _fields,
           "SNOW_PE_STW %d is not the packed field sum %d -- one slack bit is "
           "enough to make every `STW - k` offset name the wrong field"
           % (_stw, _fields))
    # SNOW_PE_STW IS NOT DEFINED HERE ANY MORE (report 6.33).  It moved to the
    # graph header, which is the only way `snowflake_pe.sv` can stop including
    # this table -- and that include, in a module instantiated once per slot, was
    # what made every instance elaborate the whole table (25-38 MB/instance;
    # rotated d7 unbuildable).  The value must not drift, so assert that the
    # graph header's own definition (`7 + SNOW_PTR_W + SNOW_CID_W`) is this one.
    _check(_stw == 7 + max(3, (NDIR + 1).bit_length()) + cid_w,
           "the lattice's packed state word disagrees with the graph header's "
           "SNOW_PE_STW")
    A("// SNOW_PE_STW comes from the graph header (7 + SNOW_PTR_W + SNOW_CID_W = %d)" % _stw)
    A("localparam integer SNOW_EDGE_STW  = 3;")
    A("")
    A("// ---- lattice geometry --------------------------------------------")
    A("localparam integer SNOW_LAT_NX     = %d;" % r["nx"])
    A("localparam integer SNOW_LAT_NY     = %d;" % r["ny"])
    A("localparam integer SNOW_LAT_P      = %d;" % P)
    A("localparam integer SNOW_LAT_GMAX   = %d;" % gmax)
    A("localparam integer SNOW_LAT_NL     = %d;" % r["NL"])
    A("localparam integer SNOW_LAT_NSLOT  = %d;" % NSLOT)
    A("localparam integer SNOW_LAT_ESLOT  = %d;" % ES)
    A("localparam integer SNOW_LAT_ELAY   = %d;" % (3 * P))
    A("localparam integer SNOW_LAT_NCTX   = %d;" % NCTX)
    A("// memory map (HOME-cell addressed; see the header comment)")
    A("localparam integer SNOW_LAT_NEB    = %d;" % r["NEB"])
    A("localparam integer SNOW_LAT_MIR    = %d;" % r["MIR"])
    A("localparam integer SNOW_LAT_EMIR   = %d;" % r["EMIR"])
    A("localparam integer SNOW_LAT_MEM    = %d;" % r["MEM"])
    A("localparam integer SNOW_LAT_NBM    = %d;" % r["NBM_OFF"])
    A("localparam integer SNOW_LAT_EBM    = %d;" % r["EBM_OFF"])
    A("localparam integer SNOW_LAT_AW     = %d;" % aw)
    A("localparam integer SNOW_LAT_NBW    = %d;" % nbw)
    A("localparam integer SNOW_LAT_EBW    = %d;" % ebw)
    A("localparam integer SNOW_LAT_RVW    = %d;" % rvw)
    A("localparam integer SNOW_LAT_SLW    = %d;" % slw)
    A("// stride widths of the per-cell tables (the RTL indexes them with these)")
    A("localparam integer SNOW_LAT_ABW    = %d;" % aw)
    A("localparam integer SNOW_LAT_SIDW2  = %d;" % syn_w)
    A("localparam integer SNOW_LAT_NCW    = %d;" % nbw)
    A("localparam integer SNOW_LAT_EAW    = %d;" % eaw)
    A("")
    A("// ---- per-(slot, slice) direction tables, index = (slot*NCTX + c)*NDIR + d")
    A("// One bank rule for every port, evaluated against the phase RUNNING NOW:")
    A("// the source's slice is earlier than the phase -> MIRROR, else REGISTER.")
    A("// NB_SL carries that slice; the mirror shift is a constant the RTL adds.")
    A(_vec("SNOW_LAT_NB_V_VEC",
           [r["NB_V"][s][c][d] for s in range(NSLOT) for c in range(NCTX)
            for d in range(NDIR)], 1))
    A("// per (cell, direction): the port offset to the neighbour's REGISTER, the")
    A("// neighbour's slice, and the neighbour's own CELL + the direction at it")
    A("// pointing back.  The RTL adds the mirror shift itself when the neighbour's")
    A("// slice is earlier than the phase running, so the offset is register-only.")
    A(_vec("SNOW_LAT_NB_A_VEC",
           [r["NB_A"][s][c][d] for s in range(NSLOT) for c in range(NCTX)
            for d in range(NDIR)], aw))
    A(_vec("SNOW_LAT_NB_SL_VEC",
           [r["NB_SL"][s][c][d] for s in range(NSLOT) for c in range(NCTX)
            for d in range(NDIR)], slw))
    A(_vec("SNOW_LAT_NB_E_VEC",
           [r["NB_E"][s][c][d] for s in range(NSLOT) for c in range(NCTX)
            for d in range(NDIR)], aw))
    A(_vec("SNOW_LAT_NB_ESL_VEC",
           [r["NB_ESL"][s][c][d] for s in range(NSLOT) for c in range(NCTX)
            for d in range(NDIR)], slw))
    A("// the neighbour's CELL and the direction at it that points back here, plus")
    A("// the register/mirror select: a defect push is a datapath OUTPUT of the")
    A("// NEIGHBOUR (the flat array's `pe_push[NBR][REV]`), because `push` follows")
    A("// the pointer the neighbour computes THIS cycle, not the one in its")
    A("// register.  NB_L is 1 when that neighbour's slice has not committed yet,")
    A("// i.e. when its live output is the one to use.")
    A(_vec("SNOW_LAT_NB_C_VEC",
           [r["NB_C"][s][c][d] for s in range(NSLOT) for c in range(NCTX)
            for d in range(NDIR)], nbw))
    A(_vec("SNOW_LAT_NB_RV_VEC",
           [r["NB_RV"][s][c][d] for s in range(NSLOT) for c in range(NCTX)
            for d in range(NDIR)], rvw))
    A("// cell -> the REGISTER address of its `above` (its DROP source), that")
    A("// source's slice (the RTL adds the mirror shift when it is earlier than the")
    A("// phase running), and whether such a source exists.  The flat array takes")
    A("// the same value from `pe_cid[AB_S]`, a live register, so one defect layer")
    A("// moves one step per step.  0 = no above (the value is unused).")
    A(_vec("SNOW_LAT_AB_A_VEC", r["AB_A"], aw))
    A(_vec("SNOW_LAT_AB_SL_VEC", r["AB_SL"], slw))
    A("")
    A("// ---- node bank address per (layer, slot) ---------------------------")
    A("// A slot serves one node per LAYER (that is what makes the lattice shared),")
    A("// so a per-slot table cannot carry the address: it needs the layer too.")
    A("// The RTL knows the layer it runs (SLICEBASE[slice] + SLOTLAY[slot]) and")
    A("// reads this table as [(layer*NSLOT + slot)*AW +: AW].")
    A("// The spatial index is slot mod P -- folding the slot's own layer in")
    A("// aliases slot 0 of two layers, a bug this build hit.")
    _addr_ls = [0] * (r["NL"] * NSLOT)
    for _nid in range(g["nn"]):
        _ly = r["node_lay"][_nid]
        _sl = r["node_slot"][_nid]
        _addr_ls[_ly * NSLOT + _sl] = (r["node_lay"][_nid] * P + _sl) * NCTX
    A(_vec("SNOW_LAT_LS_ADDR_VEC", _addr_ls, aw))
    A("")
    A("// ---- slot -> state-bank HOME index and the slice base layers --------")
    # A cell's address is ((layer_offset * PER_LAYER + slot) * NCTX + slice),
    # where layer_offset is the layer's ABSOLUTE offset from LAYER0.  A slot
    # carries only its LAYOUT layer (its position inside the slice), so the RTL
    # adds the slice's base layer (SNOW_LAT_SLICEBASE_VEC) to get the offset.
    A("// layer offset of each slice's first layer, in LAYER units.  These are")
    A("// INTEGER ARRAYS: a packed vector read with a genvar index is either a")
    A("// single bit (VEC[i]) or an illegal variable part-select (VEC[i*W +: W]),")
    A("// and ModelSim silently mis-evaluates the latter.")
    A("localparam integer SNOW_LAT_SLICEBASE_VEC [0:%d] = '{%s};"
      % (NCTX - 1, ", ".join(str(v) for v in r["slice_base"])))
    A("// layout layer carried by a slot's geometry (0 .. GMAX-1), likewise")
    A("localparam integer SNOW_LAT_SLOTLAY_VEC [0:%d] = '{%s};"
      % (NSLOT - 1, ", ".join(str(s // P) for s in range(NSLOT))))
    A("// the per-(edge slot, slice) cell's own bank address, slice included")
    A(_vec("SNOW_LAT_EB_ADDR_VEC",
           [r["EB_ADDR0"][e*NCTX + c]
            for e in range(ES) for c in range(NCTX)], aw))
    A("// 1 = this (edge slot, slice) cell exists in the graph.  A slot's layout")
    A("// layer only exists in the slices that own such a layer, so the cells of")
    A("// the other slices neighbour the bank with no meaning at all: they must")
    A("// not write (their address is a don't-care) or they would clobber a real")
    A("// cell's reset value.")
    A(_vec("SNOW_LAT_EB_VALID_VEC",
           [r["EB_VALID"][e*NCTX + c]
            for e in range(ES) for c in range(NCTX)], 1))
    # The flag this vector carries is "this structural cell is also a REAL
    # spatial position".  With pad = 1 (and the original comment text, which must
    # stay byte-identical) the two are the same thing; with --pad K the padding
    # positions are structural but never valid, and the header says so.
    if r["pad"] == 1:
        A("// 1 = this (node slot, slice) cell is STRUCTURAL: the slice owns a layer at")
        A("// the slot's layout position.  The others are don't-cares -- and their")
        A("// computed row is one past the slice's window, so their address lands in")
        A("// the EDGE band.  They must not run and must not be reset, or they would")
        A("// write a node word over a live edge cell.")
    else:
        A("// 1 = this (node slot, slice) cell is VALID: the slice owns a layer at the")
        A("// slot's layout position AND the slot is one of the %d real spatial"
          % r["P_REAL"])
        A("// positions of the box.  Under --pad %d the padding positions are"
          % r["pad"])
        A("// STRUCTURAL (they own a row address in the bank, and every address check")
        A("// covers them) but never VALID: no state exists for them and `run` is 0")
        A("// in every context, which is the situation this switch exists to price.")
    A(_vec("SNOW_LAT_NODE_VALID_VEC",
           [r["node_valid"][s][c]
            for s in range(NSLOT) for c in range(NCTX)], 1))
    A("// the slot's own contribution, in cell units")
    A(_vec("SNOW_LAT_HOME_VEC", [(s * NCTX) for s in range(NSLOT)], aw))
    A(_vec("SNOW_LAT_EHOME_VEC", [r["NEB"] + (s * NCTX) for s in range(ES)], aw))
    A("")
    A("// ---- per (slot, slice) node identity -----------------------------")
    A("// word = {is_syn, is_bot, is_top, is_bnd, has_above, id}")
    A("// INTEGER ARRAY: the identity word's top bit (is_bnd) would make a")
    A("// packed `'d` literal negative and silently drop, which broke has_above")
    A(_iarr("SNOW_LAT_IDENT_VEC",
            [r["ident"][(s, c)] for s in range(NSLOT) for c in range(NCTX)]))
    A(_iarr("SNOW_LAT_SYNIDX_VEC",
            [r["synidx"][(s, c)] if r["synidx"][(s, c)] >= 0
             else r["SYN_NONE"] for s in range(NSLOT) for c in range(NCTX)]))
    A("// Reset value of a cell's packed state: cid = identity's id, whole = 1,")
    A("// everything else 0.")
    A("// Layout {cid, active, whole, defect, ptr, grown, unrooted, busy} means")
    A("// cid sits at bit (6 + PTR_W) and whole at (4 + PTR_W) -- a fixed `<< 7`")
    A("// is only correct when PTR_W == 1, and getting it wrong leaves the cid's")
    A("// top bits as X (and `x + delta` stays X).")
    pw = max(3, (NDIR + 1).bit_length())
    rst_pe = []
    for s in range(NSLOT):
        for c in range(NCTX):
            nid = r["ident"][(s, c)] & ((1 << cid_w) - 1)
            rst_pe.append((nid << (6 + pw)) | (1 << (pw + 4)))
    A("// one entry per cell, SNOW_PE_STW bits each (the RTL reads entry CELL")
    A("// with `[CELL*SNOW_PE_STW +: SNOW_PE_STW]`)")
    A(_iarr("SNOW_LAT_PE_RST_VEC", rst_pe))
    A("")
    A("// ---- the whole bank's power-up value, ONE entry per ADDRESS ----------")
    A("// The one-datapath-per-slot array cannot preset a cell from its own")
    A("// `always` block with a compile-time address (the address is `phase`-")
    A("// dependent), and a reset branch that walks the contexts makes Vivado see")
    A("// a VARIABLE-address write racing the commit write -- measured: 50x")
    A("// `[Synth 8-6859] multi-driven net on pin Q ... 2nd driver 'GND'` plus")
    A("// `8-6858 constant driver PRESERVED, other driver ignored` on `bank_reg[*][*]`,")
    A("// which both zeroes live state and folds the datapath away (the same")
    A("// design reported 203 LUT / 962 FF / 435 MHz -- a netlist that is NOT the")
    A("// RTL that was verified line by line).")
    A("//")
    A("// So the preset is emitted as a FULL MEMORY IMAGE and applied by the one")
    A("// `initial` loop the array already had.  Every address then has exactly")
    A("// one constant driver, the clocked block is the only other driver, and")
    A("// `reset` no longer touches the bank at all.")
    bank_init = [0] * r["MEM"]
    for s in range(NSLOT):
        for c in range(NCTX):
            cell = s * NCTX + c
            row = r["slice_base"][c] + s // P
            if s // P >= len(r["groups"][c]):
                continue                      # no cell here
            adr = ((row * NSLOT) + s) * NCTX + c
            bank_init[adr] = rst_pe[cell]
            bank_init[adr + r["NBM_OFF"]] = rst_pe[cell]
            _check(0 <= adr and adr < r["NEB"]
                   and r["MIR"] <= adr + r["NBM_OFF"] < r["EMIR"],
                   "bank init: node cell %d address %d outside the node bands"
                   % (cell, adr))
    for s in range(ES):
        for c in range(NCTX):
            cell = s * NCTX + c
            if not r["EB_VALID"][cell]:
                continue
            adr = r["EB_ADDR0"][cell]
            bank_init[adr] = 0
            bank_init[adr + r["EBM_OFF"]] = 0
            _check(r["NEB"] <= adr and adr + r["EBM_OFF"] < r["MEM"],
                   "bank init: edge cell %d address %d outside the edge band"
                   % (cell, adr))
    # the image must agree with the per-cell reset table, or the array would
    # come up in a different state than the copy version's clocked reset path
    for s in range(NSLOT):
        for c in range(NCTX):
            row = r["slice_base"][c] + s // P
            if s // P >= len(r["groups"][c]):
                continue
            adr = ((row * NSLOT) + s) * NCTX + c
            _check(bank_init[adr] == rst_pe[s * NCTX + c],
                   "bank init: cell %d value %d != reset table %d"
                   % (s * NCTX + c, bank_init[adr], rst_pe[s * NCTX + c]))
    A(_iarr("SNOW_LAT_BANK_INIT_VEC", bank_init))
    A("")
    A("// ---- per (edge slot, slice) edge identity ------------------------")
    A("// EB_U / EB_V name the two endpoints by NODE slot; EB_DU / EB_DV are the")
    A("// direction indices at each end; EB_NU / EB_NV are the endpoints' BANK")
    A("// addresses and EB_ABN the `above` edge's CELL INDEX (ECELLX = none);")
    A("// EB_HAS says an edge lives here; EB_VL says its V end is in this slice")
    A("// (so its pulse/flip are read live), EB_VX that it is in the previous one.")
    E = lambda name, vals, w, dflt=0: A(_vec(name, vals, w, dflt))   # noqa: E731
    E("SNOW_LAT_EB_HAS_VEC",
      [r["EB_HAS"][s][c] for s in range(ES) for c in range(NCTX)], 1)
    E("SNOW_LAT_EB_U_VEC",
      [r["EB_U"][s] for s in range(ES) for c in range(NCTX)], aw)
    E("SNOW_LAT_EB_V_VEC",
      [r["EB_V"][s] for s in range(ES) for c in range(NCTX)], aw)
    E("SNOW_LAT_EB_NU_VEC",
      [r["EB_NU"][s][c] for s in range(ES) for c in range(NCTX)], aw)
    E("SNOW_LAT_EB_NV_VEC",
      [r["EB_NV"][s][c] for s in range(ES) for c in range(NCTX)], aw)
    E("SNOW_LAT_EB_ABH_VEC",
      [r["EB_ABH"][s][c] for s in range(ES) for c in range(NCTX)], 1)
    E("SNOW_LAT_EB_ABA_VEC",
      [r["EB_ABA"][s][c] for s in range(ES) for c in range(NCTX)], aw)
    E("SNOW_LAT_EB_ABS_VEC",
      [r["EB_ABS"][s][c] for s in range(ES) for c in range(NCTX)], slw)
    E("SNOW_LAT_EB_NU2_VEC",
      [r["EB_NU2"][s][c] for s in range(ES) for c in range(NCTX)], aw)
    E("SNOW_LAT_EB_NV2_VEC",
      [r["EB_NV2"][s][c] for s in range(ES) for c in range(NCTX)], aw)
    E("SNOW_LAT_EB_UM_VEC",
      [r["EB_UM"][s][c] for s in range(ES) for c in range(NCTX)], 1)
    E("SNOW_LAT_EB_VM_VEC",
      [r["EB_VM"][s][c] for s in range(ES) for c in range(NCTX)], 1)
    E("SNOW_LAT_EB_CU_VEC",
      [r["EB_CU"][s][c] for s in range(ES) for c in range(NCTX)], nbw)
    E("SNOW_LAT_EB_CV_VEC",
      [r["EB_CV"][s][c] for s in range(ES) for c in range(NCTX)], nbw)
    E("SNOW_LAT_EB_SU_VEC",
      [r["EB_SU"][s][c] for s in range(ES) for c in range(NCTX)],
      max(1, SNOW_LAT_SLW_(NCTX)))
    E("SNOW_LAT_EB_SV_VEC",
      [r["EB_SV"][s][c] for s in range(ES) for c in range(NCTX)],
      max(1, SNOW_LAT_SLW_(NCTX)))
    E("SNOW_LAT_EB_DU_VEC",
      [r["EB_DU"][s] for s in range(ES) for c in range(NCTX)], rvw)
    E("SNOW_LAT_EB_DV_VEC",
      [r["EB_DV"][s] for s in range(ES) for c in range(NCTX)], rvw)
    E("SNOW_LAT_EB_VL_VEC",
      [r["EB_VL"][s] for s in range(ES) for c in range(NCTX)], 1)
    E("SNOW_LAT_EB_VX_VEC",
      [r["EB_VX"][s] for s in range(ES) for c in range(NCTX)], 1)
    E("SNOW_LAT_EB_HA_VEC",
      [r["EB_HA"][s] for s in range(ES) for c in range(NCTX)], 1)
    A("")
    A("// ---- observation buses: node -> bank index, edge -> bank index -----")
    A(_vec("SNOW_LAT_OBS_VEC", r["obs_node"], aw))
    A("// a graph edge's BANK ADDRESS (the slice is already in it), for the")
    A("// observation bus -- the RTL adds EBM and nothing else")
    A(_vec("SNOW_LAT_EB_OB_VEC",
           [r["edge_home"][e] for e in range(g["ne"])], aw))
    A("// ---- commit edges: vector index -> bank index (read at phase 0) -----")
    A(_vec("SNOW_LAT_CMT_I_VEC", r["com_idx"],
           max(1, (g["n_commit"] - 1).bit_length()) if g["n_commit"] > 0 else 1, 0))
    A(_vec("SNOW_LAT_CMT_A_VEC", r["com_addr"], aw))
    A("")
    return "\n".join(L)


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--code", choices=["rep", "surface", "rotated"],
                    default="surface")
    ap.add_argument("--d", type=int, default=5)
    ap.add_argument("--slices", type=int, default=2)
    ap.add_argument("--dirs", choices=["all", "used"], default="all")
    # --pad K: multiply the SPATIAL box by K and mark every added slot
    # `*_VALID = 0` in every context -- the folding experiment.  K = 1 is the
    # default and must leave the generated header byte-identical (see build()).
    ap.add_argument("--pad", type=int, default=1)
    # --noise: the localuf noise model (D14's extra column).  The DEFAULT IS
    # UNCHANGED and must leave the generated header byte-identical; the
    # circuit-level column is a NEW set of tables, never an overwrite.
    ap.add_argument("--noise", choices=["phenomenological", "circuit-level"],
                    default="phenomenological")
    ap.add_argument("--out", default=None)
    a = ap.parse_args()
    if a.pad < 1:
        raise SystemExit("make_lattice_sim: --pad must be >= 1")

    r = build(a.code, a.d, a.slices, a.dirs, a.pad, a.noise)
    g = r["g"]
    head = [
        "//=========================================================================",
        "// GENERATED FILE - DO NOT EDIT",
        "// Shared-lattice tables for the snowflake-n single-FPGA build",
        "//   %s d=%d, %d slices, window %d layers, box %dx%d, P=%d"
        % ({"rep": "repetition", "rotated": "rotated"}.get(a.code, "surface"),
           a.d, a.slices,
           len(r["layers"]), r["nx"], r["ny"], r["P"]),
        "//   NSLOT=%d node slots, %d edge slots, %d slices, %d graph nodes, %d edges"
        % (r["NSLOT"], r["ES"], r["nslices"], g["nn"], g["ne"]),
        "// generated by fpga_flow/make_lattice_sim.py from the same localuf tables",
        "// as design/generated/snowflake_graph.svh",
        "//=========================================================================",
        "`ifndef SNOWFLAKE_LATTICE_SVH",
        "`define SNOWFLAKE_LATTICE_SVH",
        "// the lattice tables extend the graph tables, so pull those in first:",
        "// SNOW_PE_STW comes from snowflake_graph.svh (7 + SNOW_PTR_W + SNOW_CID_W);",
        "`include \"snowflake_graph.svh\"",
        "",
    ]
    if a.pad != 1:
        # inserted AFTER the six header lines the synth driver verifies, so the
        # driver's header check sees exactly the lines it always saw
        head.insert(6, "//   [PAD x%d] SPATIAL box padded: the array instantiates %d x as"
                       " many node/edge slots" % (a.pad, a.pad))
        head.insert(7, "//   and every added slot has *_VALID = 0 in every context"
                       " (folding experiment).")
        head.insert(8, "//   real spatial positions: P_REAL=%d of P=%d"
                       % (r["P_REAL"], r["P"]))
    if a.noise != "phenomenological":
        # likewise inserted AFTER the six lines the synth driver verifies
        head.insert(6, "//   [NOISE] localuf noise model = %s (D14 column; the"
                       " phenomenological tables are a separate build)" % a.noise)
    text = "\n".join(head + [emit(r), "", "`endif // SNOWFLAKE_LATTICE_SVH", ""])

    out = a.out or os.path.join(REPO, "design", "generated", "snowflake_lattice.svh")
    out = os.path.abspath(out)
    os.makedirs(os.path.dirname(out), exist_ok=True)
    with open(out, "w", encoding="utf-8") as f:
        f.write(text)

    meta = dict(code=a.code, d=a.d, slices=a.slices, dirs=r["dirs"], pad=a.pad,
                noise=a.noise, max_degree=g["max_degree"],
                nx=r["nx"], ny=r["ny"], P=r["P"], P_REAL=r["P_REAL"],
                gmax=r["gmax"],
                NSLOT=r["NSLOT"], edge_slots=r["ES"], layers=r["layers"],
                groups=r["groups"], edge_uv=g["edge_uv"],
                MEM=r["MEM"], NEB=r["NEB"], MIR=r["MIR"], EMIR=r["EMIR"],
                node_slot={str(k): v for k, v in r["node_slot"].items()},
                node_tl={str(k): v for k, v in r["node_tl"].items()},
                node_home={str(k): v for k, v in r["node_home"].items()},
                edge_slot=r["edge_slot"], edge_home=r["edge_home"],
                obs_edge=r["obs_edge"])
    mpath = out.replace(".svh", "_meta.json")
    with open(mpath, "w", encoding="utf-8") as f:
        json.dump(meta, f, indent=1)

    xs = sum(1 for s in range(r["NSLOT"]) for c in range(r["nslices"])
             for d in range(len(r["dirs"]))
             if r["NB_V"][s][c][d] and not r["NB_L"][s][c][d])
    xe = sum(1 for s in range(r["NSLOT"]) for c in range(r["nslices"])
             for d in range(len(r["dirs"]))
             if r["NB_V"][s][c][d] and not r["NB_EL"][s][c][d])
    used_e = sum(1 for s in range(r["ES"]) for c in range(r["nslices"])
                 if r["EB_HAS"][s][c])
    print("lattice %s d=%d n=%d: box %dx%d P=%d gmax=%d NSLOT=%d ESLOT=%d"
          % (a.code, a.d, a.slices, r["nx"], r["ny"], r["P"], r["gmax"],
             r["NSLOT"], r["ES"]))
    print("  graph: %d nodes, %d edges; slices %s"
          % (g["nn"], g["ne"], [len(x) for x in r["groups"]]))
    print("  noise=%s  max node degree=%d  direction ports=%d"
          % (a.noise, g["max_degree"], len(r["dirs"])))
    print("  datapath instances: %d PE + %d edge   (flat array: %d + %d)"
          % (r["NSLOT"], r["ES"], g["nn"], g["ne"]))
    print("  edge cells bound: %d (one per graph edge), node cells bound: %d"
          % (used_e, len(r["node_slot"])))
    print("  mirror reads: %d node ports, %d edge ports" % (xs, xe))
    print("  memory: %d words total (%d node bank + %d edge bank + mirrors)"
          % (r["MEM"], r["NEB"], r["MIR"] - r["NEB"]))
    if a.pad != 1:
        _nv = sum(r["node_valid"][s][c] for s in range(r["NSLOT"])
                  for c in range(r["nslices"]))
        _ev = sum(r["EB_VALID"][s * r["nslices"] + c] for s in range(r["ES"])
                  for c in range(r["nslices"]))
        print("  [PAD x%d] spatial box %d -> %d; NEVER-VALID cells: %d of %d node"
              " (%.1f%%), %d of %d edge (%.1f%%)"
              % (a.pad, r["P_REAL"], r["P"],
                 r["NSLOT"] * r["nslices"] - _nv, r["NSLOT"] * r["nslices"],
                 100.0 * (r["NSLOT"] * r["nslices"] - _nv)
                 / (r["NSLOT"] * r["nslices"]),
                 r["ES"] * r["nslices"] - _ev, r["ES"] * r["nslices"],
                 100.0 * (r["ES"] * r["nslices"] - _ev)
                 / (r["ES"] * r["nslices"])))
    print("wrote %s" % out)
    print("wrote %s" % mpath)


if __name__ == "__main__":
    main()
