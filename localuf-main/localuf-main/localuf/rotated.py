"""Rotated surface code as a localuf ``Code`` -- P4 step 1.

Why this file exists
--------------------
localuf's ``Surface`` is the **unrotated** surface code.  Helios (and the paper
column we want to compare against) uses the **rotated** code.  The area/geometry
case for switching was priced and then measured (report 6.26/6.28); this file is
the switch itself: a ``Code`` subclass the unmodified Snowflake decoder can run,
so the same golden/regression/generator machinery applies.

The index space (this is the part that had to be derived, not guessed)
---------------------------------------------------------------------
``Surface`` indexes the check lattice as ``(i, j, t)`` with ``i in [0, d-1]``
(rows), ``j in [-1, d-1]`` (the LONG axis: one west wall, ``d-1`` detector
columns, one east wall) and ``t`` time.  The two walls are the nodes
``Determinant.is_boundary`` recognises, i.e. ``v[LONG_AXIS] in {-1, d-1}``.

The rotated patch is the same object on a *parity* sublattice:

    nodes       (a, b, t) with a in [0, d], b in [-1, d-1], and (a + b) ODD
    detectors   b in [0, d-2]                 -> (d^2 - 1) / 2 per layer
    walls       b = -1 (a even), b = d-1 (a odd) -> d + 1 per layer
    neighbours  two checks share a data qubit  <=>  (da, db) = (+-1, +-1)

so the same ``LONG_AXIS = 1`` and the same determinant rule work untouched, and
the whole "constant slot offset" story survives with the DIAGONAL steps
``+-(NY +- 1)`` that fpga_flow/check_lattice_slots_rotated.py measured
(offsets -21, -19, 19, 21 at d = 21, NY = 20 in that script's numbering).

Counts (all verified against three independent sources in that script):

    detectors per layer  (d^2 - 1)/2    = 220 at d=21, and Helios reports 220
                                        PEs per layer for d=21
    nodes per layer      (d^2 - 1)/2 + d + 1 = 242 at d=21

vs the unrotated 462, i.e. **1.909x** -- the same ratio as the detector count,
because both conventions spend 1/11 of their nodes on boundary nodes.  (The
"2.10x" the docs used earlier compared OUR node count with HELIOS's PE count,
which is the detector count: two different conventions.  Corrected here.)

The ID convention
-----------------
``Snowflake.index_to_id`` is what the RTL's ``cid`` follows, and its shape is
load-bearing: IDs are blocked as [walls ... | detectors ...], each block ordered
with time DESCENDING and with a constant stride, so that the node below is
always ``id + delta`` with a piecewise-constant ``delta`` (that is exactly the
RTL's ``SNOW_CID_DELTA``).  The rotated analogue keeps the same shape:

    west wall  id = 2q (h-1-t) + a//2            q = (d+1)//2
    east wall  id = 2q (h-1-t) + q + a//2
    detector   id = 2q h + ((d^2-1)/2) (h-1-t) + rank(a, b)
    id_below   delta = 2q = d+1 below 2qh, else (d^2-1)/2

What is NOT here yet
--------------------
``_circuit_level_edges`` (the hook families).  It raises NotImplementedError, so
``RotatedSurface(d, 'circuit-level')`` fails loudly instead of silently
producing a phenomenological graph.  Route and evidence for that step are in
fpga_flow/rotated_p4_plan.md: Stim's rotated circuit-level graph has the same
per-basis node/edge counts as localuf's (100 detectors and ~467 vs 457 edges at
d=5), so it can be mapped instead of re-deriving the rotated CNOT schedule.
"""
from functools import cache

from localuf._base_classes import Code
from localuf.decoders.snowflake.main import Snowflake
from localuf.noise.main import CircuitLevel


def _q(d):
    """nodes on one wall per layer"""
    return (d + 1) // 2


def _n_det(d):
    """detectors per layer"""
    return (d * d - 1) // 2


class RotatedSurface(Code):
    """The decoding graph of a ROTATED surface code, one basis.

    Same interface as ``localuf.Surface`` (unrotated); same ``LONG_AXIS`` and
    boundary convention, different (parity) node set and edge families.
    """

    _LONG_AXIS = 1
    _CODE_DIMENSION = 2

    #: the decoder that knows this code's index/ID convention
    DECODER = None          # set at the bottom (RotatedSnowflake)

    #: the decoder's geometry-specific bitstring converter (`LENGTH`,
    #: `lowest_edges`) -- picked up by `Snowflake.__init__`
    BITSTRING_CONVERTER = None   # set at the bottom (_RotatedBitstringConverter)

    @property
    def DATA_QUBIT_COUNT(self):
        """Number of data qubits: d^2 for the rotated patch (2d^2-1 qubits
        total counting the d^2-1 ancillas)."""
        return self.D ** 2

    @property
    def CHECKS_PER_ROUND(self):
        """Detectors per round = the rotated patch's Z stabilisers."""
        return _n_det(self.D)

    # ---- node existence -------------------------------------------------
    def _ok(self, a, b):
        """Is (a, b) a node of the check lattice?"""
        d = self.D
        return 0 <= a <= d and -1 <= b <= d - 1 and (a + b) % 2 == 1

    def nodes_of_layer(self):
        d = self.D
        return {(a, b) for a in range(d + 1) for b in range(-1, d)
                if (a + b) % 2 == 1}

    def data_qubit_nodes(self, x, y):
        """The two nodes data qubit (x, y) connects.

        A data qubit touches the four dual positions ``{x, x+1} x {y-1, y}``, and
        the parity rule keeps exactly TWO of them -- either two detectors, or one
        detector and the wall node that terminates the chain.  Enumerating by
        DATA QUBIT is what makes the edge set correct: enumerating by
        (node, direction) is easy to get half-wrong, because the surviving pair
        is a ``(+1,+1)`` step for one data-qubit parity and a ``(+1,-1)`` step for
        the other.
        """
        assert 0 <= x < self.D and 0 <= y < self.D
        pair = [(x, y - 1), (x + 1, y)] if (x + y) % 2 == 0 \
            else [(x, y), (x + 1, y - 1)]
        return tuple(sorted(pair))

    def _det_rank(self, a, b):
        """Dense 0-based rank of detector (a, b), column-major over b.

        MUST be dense in [0, (d^2-1)/2): the ID convention's time stride for the
        detector block is exactly (d^2-1)/2, which is what makes
        ``id_below = id + delta`` hold (the RTL's SNOW_CID_DELTA).  A rank that
        left gaps for the parity-forbidden rows would still be *consistent* but
        would spread the IDs over a much wider range than there are nodes.
        """
        d = self.D
        q = _q(d)
        row = (a - (1 if b % 2 == 0 else 0)) // 2     # a within its column
        return b * q + row

    # ---- direction convention -------------------------------------------
    #: direction name -> (da, db, dt).  The rotated lattice's spatial steps are
    #: DIAGONAL, so none of the unrotated names apply; the two time directions
    #: keep their letters.  Circuit-level noise adds the six HOOK directions
    #: (three families, each seen from both ends).
    _NEIGHBOR_DELTAS_PHEN = {
        'NW': (-1, -1, 0),
        'NE': (-1, +1, 0),
        'SW': (+1, -1, 0),
        'SE': (+1, +1, 0),
        'U': (0, 0, +1),
        'D': (0, 0, -1),
    }
    #: the hook families, measured from the LOWER-time endpoint with dt = +1.
    #: The site conditions were LEARNED from Stim's detector error model
    #: (fpga_flow/probe_rotated_hook_sites.py; the three rules reproduce the
    #: interior site sets exactly at d = 3, 5 and 7):
    #:     (-2,  0) : a >= 2
    #:     (-1, -1) : a >= 1 and b >= 1
    #:     (-1, +1) : b <= d - 3
    _HOOK_FAMILIES = (
        ((-2, 0), 'W2U', 'E2D'),
        ((-1, -1), 'NWU', 'SED'),
        ((-1, +1), 'NEU', 'SWD'),
    )

    def _hook_ok(self, delta, a, b):
        """Is the hook of family ``delta`` present at site (a, b)?"""
        d = self.D
        if delta == (-2, 0):
            return a >= 2
        if delta == (-1, -1):
            return a >= 1 and b >= 1
        return b <= d - 3                     # (-1, +1)

    @property
    def NEIGHBOR_DELTAS(self):
        """{name: (da, db, dt)} -- the hook names exist only for circuit-level
        noise, because only then do hook EDGES exist in the graph."""
        out = dict(self._NEIGHBOR_DELTAS_PHEN)
        if str(self.NOISE) != 'phenomenological':
            for (da, db), fwd, rev in self._HOOK_FAMILIES:
                out[fwd] = (da, db, +1)
                out[rev] = (-da, -db, -1)
        return out

    @property
    def NEIGHBOR_ORDER(self):
        """The order the decoder walks; it fixes the RTL's direction indices.

        The phenomenological six KEEP their order, so tables generated before
        circuit-level support stay valid.
        """
        base = ('NW', 'NE', 'SW', 'SE', 'U', 'D')
        if str(self.NOISE) == 'phenomenological':
            return base
        return base + tuple(n for _, f, r in self._HOOK_FAMILIES for n in (f, r))

    def boundary_direction(self, index):
        """See ``_base_classes.Code.boundary_direction``.

        The rotated patch's smooth boundary is the LONG axis's two walls
        (b = -1 and b = d-1), but there is no pure 'W'/'E' step: moving one column
        toward a wall changes ``a`` by +-1 as well.  So the answer is the diagonal
        that exists at this ``a`` (at a = 0 the only westward step is 'SW'; at
        a = d the only eastward step is 'NE').
        """
        a, b, _t = index
        if b < (self.D - 1) / 2:                 # closer to the b = -1 wall
            return 'SW' if a == 0 else 'NW'
        return 'NE' if a == self.D else 'SE'

    def provisional_neighbors(self, index):
        """See ``_base_classes.Code.provisional_neighbors``.

        ALL names are reported, including ones whose edge does not exist (the
        decoder filters by ``EDGES`` membership, and its dict comprehension
        assumes every name in ``NEIGHBOR_ORDER`` is present -- returning a
        subset raises KeyError there).
        """
        a, b, t = index
        out = {}
        for name, (da, db, dt) in self.NEIGHBOR_DELTAS.items():
            other = (a + da, b + db, t + dt)
            edge = tuple(sorted((tuple(index), other)))
            end_sel = 0 if edge[0] == other else 1
            out[name] = (edge, end_sel)
        return out

    # ---- required by Code.__init__ --------------------------------------
    def _code_capacity_edges(self, merge_equivalent_boundary_nodes):
        raise NotImplementedError(
            "rotated: code-capacity noise is not used by this project "
            "(the golden is phenomenological or circuit-level)")

    def _phenomenological_edges(
            self,
            h,
            future_boundary,
            t_start=0,
            merge_equivalent_boundary_nodes=False,
    ):
        d = self.D
        if merge_equivalent_boundary_nodes:
            raise NotImplementedError(
                "rotated: merged boundary nodes are not implemented "
                "(the unrotated build does not use them either)")
        layer_count = h if future_boundary else h - 1
        # ONE SPACE EDGE PER DATA QUBIT per layer (see `data_qubit_nodes`), and
        # one time edge per detector per step.  The wall nodes get no time edge,
        # exactly as in the unrotated lattice.
        space = tuple(
            tuple(sorted(((u[0], u[1], t), (v[0], v[1], t))))
            for t in range(t_start, t_start + h)
            for x in range(d)
            for y in range(d)
            for u, v in (self.data_qubit_nodes(x, y),)
        )
        time = tuple(
            ((a, b, t), (a, b, t + 1))
            for t in range(t_start, t_start + layer_count)
            for b in range(d - 1)
            for a in range(d + 1)
            if (a + b) % 2 == 1
        )
        edges = space + time
        return len(edges), edges

    def _circuit_level_edges(
            self,
            h,
            future_boundary,
            _merge_redundant_edges,
            t_start=0,
            merge_equivalent_boundary_nodes=False,
    ):
        """Circuit-level graph = LOCAL steady-state families + the hooked ones.

        ROUTE (ii), chosen by the user: the graph keeps the SAME structure the
        unrotated column uses -- every round carries the space edges (one per
        data qubit, including the boundary ones to the wall nodes) and the time
        edges -- and Stim contributes only the HOOK families and where they live.
        Stim's own circuit has different first/final rounds (t = 0 compares
        against the initialisation, the last sheet comes from the data
        measurements), which is why its DEM is NOT "phenomenological + hooks";
        using the local steady-state structure instead keeps the window / commit
        semantics -- and therefore the RTL -- identical to the unrotated column.

        The edge families and the site conditions come from
        fpga_flow/probe_rotated_hook_sites.py (learned from the DEM, exact at
        d = 3, 5, 7); the direction count stays **12** (4 space + 2 time + 6
        hooks = NDIR), so the PE needs no extra ports.
        """
        d = self.D
        if merge_equivalent_boundary_nodes:
            raise NotImplementedError(
                "rotated: merged boundary nodes are not implemented")
        layer_count = h if future_boundary else h - 1
        _, phen = self._phenomenological_edges(h, future_boundary, t_start)

        space, time = [], []
        for e in phen:
            (space if e[0][:2] != e[1][:2] else time).append(e)

        hooks = {}
        for (da, db), fwd, _rev in self._HOOK_FAMILIES:
            es = []
            for t in range(t_start, t_start + layer_count):
                for a in range(d + 1):
                    for b in range(-1, d):
                        if (a + b) % 2 != 1 or not self._hook_ok((da, db), a, b):
                            continue
                        u = (a, b, t)
                        v = (a + da, b + db, t + 1)
                        if v[2] > h or not self._ok(v[0], v[1]):
                            continue
                        if (v[0] + v[1]) % 2 != 1:
                            continue
                        es.append(tuple(sorted((u, v))))
            hooks[fwd] = tuple(es)

        edges = tuple(space) + tuple(time) + tuple(
            e for fwd, _r in ((f, r) for _, f, r in self._HOOK_FAMILIES)
            for e in hooks[fwd])
        edge_dict = {'space': tuple(space), 'time': tuple(time)}
        edge_dict.update({name: hooks[name] for _, name, _r in
                          ((dlt, f, r) for dlt, f, r in self._HOOK_FAMILIES)})
        return len(edges), edges, edge_dict, None

    #: the noise container this code needs for circuit-level noise
    CIRCUIT_LEVEL_NOISE = None            # set at the bottom (RotatedCircuitLevel)

    def _future_boundary_nodes(self, h):
        """Detector positions at the top of the viewing window.

        (Unused by localuf itself -- nothing calls this -- but implemented so
        the class is complete and self-consistent.)"""
        d = self.D
        return [(a, b, h) for a in range(d + 1) for b in range(d - 1)
                if (a + b) % 2 == 1]

    def _redundant_boundary_nodes(self, h):
        """Only relevant to circuit-level noise."""
        return []

    # ---- IDs -------------------------------------------------------------
    @cache
    def index_to_id(self, index):
        d = self.D
        h = self.SCHEME.WINDOW_HEIGHT
        a, b, t = index
        q = _q(d)
        if b == -1:                      # west wall: a even
            return 2 * q * (h - 1 - t) + a // 2
        if b == d - 1:                   # east wall: a odd
            return 2 * q * (h - 1 - t) + q + a // 2
        return 2 * q * h + _n_det(d) * (h - 1 - t) + self._det_rank(a, b)

    def id_below(self, id_):
        """ID of the node one time step below ``id_`` (see the module docstring)."""
        d = self.D
        h = self.SCHEME.WINDOW_HEIGHT
        return id_ + (d + 1 if id_ < (d + 1) * h else _n_det(d))

    def get_pos(self, x_offset=0, nodelist=None):
        if nodelist is None:
            nodelist = self.NODES
        return {(a, b, t): (b + x_offset * a, t - x_offset * a)
                for a, b, t in nodelist}

    # ---- helpers the geometry scripts use -------------------------------
    def per_layer(self):
        """{t: {(a, b), ...}} -- the spatial footprint of each round."""
        out = {}
        for v in self.NODES:
            out.setdefault(v[self.TIME_AXIS], set()).add((v[0], v[1]))
        return out

    def max_degree(self):
        return max(len(self.neighbors(v)) for v in self.NODES)


class RotatedSnowflake(Snowflake):
    """``Snowflake`` with the rotated code's ID and floor-edge conventions.

    Two things in the decoder are geometry-specific for our flow; both are
    replaced here, so ``Snowflake`` itself is untouched (the unrotated build must
    stay byte-identical):

    * ``index_to_id`` -- the RTL's ``cid`` (see the module docstring);
    * ``id_below``    -- ``id + delta``, the RTL's ``SNOW_CID_DELTA``.

    The bitstring converter (``LENGTH``/``lowest_edges``) travels through the
    code's ``BITSTRING_CONVERTER`` attribute instead, so ``__init__`` needs no
    override at all.

    STILL MISSING, and it fails loudly rather than silently: the rotated check
    lattice's spatial steps are ``(+-1, +-1)``, which are NOT among the twelve
    ``(di, dj, dt)`` deltas the decoder's ``_Node`` hardcodes, so a rotated graph
    currently gets no spatial neighbours at all.  See
    fpga_flow/rotated_p4_plan.md step 2 (make the direction map code-supplied).
    """

    @cache
    def index_to_id(self, index):
        return self.CODE.index_to_id(index)

    @cache
    def id_below(self, id_):
        return self.CODE.id_below(id_)


class _RotatedBitstringConverter:
    """The rotated analogue of ``decoders.snowflake.main._Surface``."""

    def __init__(self, d, window_height):
        self._D = d
        self._WINDOW_HEIGHT = window_height

    @property
    def LENGTH(self):
        return _n_det(self._D)

    def lowest_edges(self, noise_model, _include_timelike_lowest_edges=True):
        """The bottom-layer edges of the viewing window, in the order the
        syndrome bits are read out.  ``lowest`` means: at least one endpoint at
        t = 0 (that is how the unrotated version's list is built too)."""
        d = self._D
        space = tuple(
            ((a, b, 0), (a + 1, b + 1, 0))
            for a in range(d) for b in range(-1, d - 1)
            if (a + b) % 2 == 1 and b + 1 <= d - 1)
        time = tuple(
            ((a, b, 0), (a, b, 1))
            for b in range(d - 1) for a in range(d + 1)
            if (a + b) % 2 == 1
        ) if _include_timelike_lowest_edges else ()
        return time + space


RotatedSurface.DECODER = RotatedSnowflake
RotatedSurface.BITSTRING_CONVERTER = _RotatedBitstringConverter


class RotatedCircuitLevel(CircuitLevel):
    """Circuit-level noise container for the ROTATED graph.

    Two differences from the unrotated container:

    * it accepts the rotated edge-type names (`space`, `time`, and the three hook
      families).  The multiplicity VECTORS are PLACEHOLDERS: this project's
      circuit-level column decodes a DETERMINISTIC syndrome pattern on the
      circuit-level graph (that is what the RTL regression compares against), it
      does not sample noise;
    * `make_error` / `force_error` therefore RAISE, instead of quietly returning
      statistics computed from those placeholders.
    """

    _DEFAULT_MULTIPLICITIES = dict(
        CircuitLevel._DEFAULT_MULTIPLICITIES,
        space=(4, 2, 1, 0),
        time=(4, 0, 0, 1),
        **{name: (2, 0, 0, 0) for _d, name, _r in
           RotatedSurface._HOOK_FAMILIES})

    def make_error(self, noise_level):
        raise NotImplementedError(
            "rotated circuit-level: this column decodes a DETERMINISTIC syndrome "
            "pattern on a Stim-derived graph; noise SAMPLING is not implemented "
            "(and the multiplicity vectors above are placeholders)")

    def force_error(self, weight):
        raise NotImplementedError(
            "rotated circuit-level: noise sampling is not implemented")


RotatedSurface.CIRCUIT_LEVEL_NOISE = RotatedCircuitLevel
