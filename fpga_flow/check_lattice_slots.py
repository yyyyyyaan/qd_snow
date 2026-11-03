"""Validate the SLOT NUMBERING for the shared lattice (design doc 3.3.1 / 6.1).

    python fpga_flow/check_lattice_slots.py                 # d3/d5/d7/d21 + rep
    python fpga_flow/check_lattice_slots.py surface 5 2

check_lattice_geometry.py proves the decoding graph is a regular grid in
localuf's own index space.  This script goes one step further and checks the
thing the RTL actually needs: that a SINGLE slot numbering, shared by every
slice, turns every neighbour into a CONSTANT SLOT OFFSET.

The numbering is row-major over the layer's bounding box:

    slot(node) = t_local * P + (x - xmin) * NY + (y - ymin)
    P = NX * NY            (slots per layer)
    t_local = index of the node's layer WITHIN ITS SLICE

which makes the six surface-code directions constant slot offsets:

    N = -NY    S = +NY    E = +1    W = -1    D = -P    U = +P

and for repetition codes (2-D, no x/y split) the same formula with NX = 1.

Two things this can legitimately fail on, both of which would change the design:

  * the spatial set of a layer is NOT a full rectangle, so the lattice has to be
    the bounding box and some slots are never bound.  The script reports the
    waste; a large waste means NSLOT (hence area) is bigger than
    max(nodes per slice), which is what design doc 6.1 assumed.
  * a direction's offset is not expressible in this numbering (would mean the
    grid claim from check_lattice_geometry.py does not survive re-numbering).

Everything is computed straight from localuf, no packed vectors.
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


def build(kind, d, nslices):
    code = make_code(kind, d)
    dec = Snowflake(code)
    ndim = len(next(iter(dec.NODES)))
    ta = code.TIME_AXIS % ndim
    sp_axes = [a for a in range(ndim) if a != ta]

    # ---- spatial coordinate set (must be identical in every layer) -------
    per_layer = defaultdict(set)
    for idx in dec.NODES:
        per_layer[idx[ta]].add(tuple(idx[a] for a in sp_axes))
    layers = sorted(per_layer)
    spatial = per_layer[layers[0]]
    assert all(per_layer[t] == spatial for t in layers), \
        "layers do not share one spatial coordinate set"

    # ---- bounding box ----------------------------------------------------
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

    # ---- direction offsets in index space --------------------------------
    off = {}
    for idx, nd in dec.NODES.items():
        for dname, (edge, sel) in nd.NEIGHBORS.items():
            delta = tuple(b - a for a, b in zip(idx, edge[sel]))
            if dname in off:
                assert off[dname] == delta, "non-constant offset for %s" % dname
            else:
                off[dname] = delta

    # ---- slice assignment (same formulas as generate_snowflake.py) -------
    nl = len(layers)
    assert 2 <= nslices <= nl
    groups = [list(range((i * nl) // nslices, ((i + 1) * nl) // nslices))
              for i in range(nslices)]
    gmax = max(len(g) for g in groups)
    NSLOT = gmax * P
    slice_of_layer = {}
    tlocal_of_layer = {}
    for si, g in enumerate(groups):
        for li, l in enumerate(g):
            slice_of_layer[l] = si
            tlocal_of_layer[l] = li

    node_slot = {}
    for idx in dec.NODES:
        t = idx[ta]
        s = tuple(idx[a] for a in sp_axes)
        node_slot[idx] = tlocal_of_layer[t] * P + rank(s)

    # ---- check every neighbour is a constant SLOT offset -----------------
    slot_off = defaultdict(set)
    xs_count = 0
    for idx, nd in dec.NODES.items():
        for dname, (edge, sel) in nd.NEIGHBORS.items():
            nidx = edge[sel]
            same_slice = slice_of_layer[idx[ta]] == slice_of_layer[nidx[ta]]
            if not same_slice:
                xs_count += 1
                continue
            slot_off[dname].add(node_slot[nidx] - node_slot[idx])
    bad = {k: sorted(v) for k, v in slot_off.items() if len(v) != 1}

    # ---- predicted offsets from the numbering ----------------------------
    dt = {k: v[ta] for k, v in off.items()}
    dsp = {k: tuple(v[a] for a in range(ndim) if a != ta) for k, v in off.items()}
    pred = {}
    for k in off:
        if dt[k] != 0:
            pred[k] = (1 if dt[k] > 0 else -1) * P
        elif len(dsp[k]) == 1:
            pred[k] = dsp[k][0]
        else:
            pred[k] = dsp[k][0] * ny + dsp[k][1]

    nodes_per_slice = [sum(1 for i in dec.NODES if slice_of_layer[i[ta]] == si)
                       for si in range(nslices)]
    # the lattice only has to hold the LARGEST slice, so waste is measured
    # against that, not against the whole graph
    bound = max(nodes_per_slice)
    return dict(kind=kind, d=d, ndim=ndim, nx=nx, ny=ny, P=P, layers=nl,
                nslot=NSLOT, gmax=gmax, slices=nslices, bound=bound,
                waste=NSLOT - bound, bad=bad, pred=pred,
                actual={k: next(iter(v)) for k, v in slot_off.items() if len(v) == 1},
                xs=xs_count, spatial_n=len(spatial),
                rect=(len(spatial) == P),
                nodes_per_slice=nodes_per_slice)


def main():
    if len(sys.argv) >= 3:
        cfgs = [(sys.argv[1], int(sys.argv[2]),
                 int(sys.argv[3]) if len(sys.argv) > 3 else 2)]
    else:
        cfgs = [("surface", 3, 2), ("surface", 5, 2), ("surface", 7, 3),
                ("surface", 21, 7), ("rep", 3, 2)]
    ok = True
    for kind, d, ns in cfgs:
        r = build(kind, d, ns)
        good = (not r["bad"]) and r["actual"] == {k: v for k, v in r["pred"].items()
                                                  if k in r["actual"]}
        ok = ok and good
        print("%s d%d n=%d: box %dx%d -> P=%d slots/layer, %d layers, gmax=%d"
              % (kind, d, ns, r["nx"], r["ny"], r["P"], r["layers"], r["gmax"]))
        print("   NSLOT=%d  largest slice=%d  unbound slots=%d (%.1f%% waste)%s"
              % (r["nslot"], r["bound"], r["waste"],
                 100.0 * r["waste"] / r["nslot"],
                 "" if r["rect"] else "   [spatial set is NOT a full rectangle]"))
        print("   nodes per slice: %s ; spatial coords per layer: %d (= P? %s)"
              % (r["nodes_per_slice"], r["spatial_n"], r["rect"]))
        print("   slot offsets  actual: %s"
              % ", ".join("%s=%+d" % (k, v) for k, v in sorted(r["actual"].items())))
        print("                   predicted by the numbering: %s"
              % ", ".join("%s=%+d" % (k, v) for k, v in sorted(r["pred"].items())))
        if r["bad"]:
            print("   !! NON-CONSTANT SLOT OFFSETS: %s" % r["bad"])
        print("   cross-slice neighbour ports (seam entries): %d" % r["xs"])
        print("   -> %s" % ("PASS" if good else "FAIL"))
        print()
    print("LATTICE_SLOT_VERDICT %s" % ("PASS" if ok else "FAIL"))
    sys.exit(0 if ok else 1)


if __name__ == "__main__":
    main()
