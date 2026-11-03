"""Snowflake 解码图生成器（对标 Helios 的 build_scripts/generate.py）

从参考实现 localuf 导出解码图的**结构与所有查表**，生成 SystemVerilog include 文件，
供 design/snowflake/snowflake_core.sv 使用。换码型/码距只需要重跑本脚本。

用法:
    python generate_snowflake.py --d 3                      # repetition (默认)
    python generate_snowflake.py --code surface --d 3       # 表面码(2D, 多方向)
    python generate_snowflake.py --code surface --d 5

同时输出 <name>_part.json：每个节点所属分区（按时间轴分层）与跨分区边清单，
供后续多 FPGA 划分使用。

生成内容（Verilog include）:
    SNOW_NN / SNOW_NE / SNOW_NCOMMIT / SNOW_NSYN   规模
    SNOW_CID_W / SNOW_NW / SNOW_EW / SNOW_PTR_W    位宽
    SNOW_IS_BND / SNOW_IS_TOP / SNOW_IS_BOT        节点分类
    SNOW_NODE_BELOW / SNOW_CID_DELTA               drop 关系
    SNOW_NDIR / SNOW_NB / SNOW_EDGE_OF             方向表(方向数由参考实现决定)
    SNOW_EDGE_U/V/ABOVE, SNOW_IS_COMMIT/IDX        边表与提交区
    SNOW_SYN_NODE                                  顶层探测器注入点
"""
import argparse
import json
import os
import sys


def _add_localuf_to_path():
    here = os.path.dirname(os.path.abspath(__file__))
    for cand in (
        os.path.join(here, "..", "..", "..", "localuf-main", "localuf-main"),
        os.path.join(here, "..", "..", "localuf-main", "localuf-main"),
    ):
        if os.path.isdir(os.path.join(cand, "localuf")):
            sys.path.insert(0, os.path.abspath(cand))
            return os.path.abspath(cand)
    return None


LOCALUF = _add_localuf_to_path()

from localuf import Repetition, Surface                            # noqa: E402
from localuf.decoders.snowflake import Snowflake                    # noqa: E402
from localuf.decoders.snowflake.main import (                       # noqa: E402
    TopSheetFriendship, NothingFriendship, EdgeContact, FloorContact,
)

# Python 侧用负数做"不存在"哨兵（不能用可能合法的 id！发射时映射为全 1）
NO_NODE = -1
NO_EDGE = -1

# Header FORMAT version, written into every generated header as
# `// SNOW_GRAPH_FORMAT <n>` so a CACHED header can be told apart from a stale
# one.  `fpga_flow/synth_lattice1.ps1` pins `graphs/<code>_d<d>_<noise>.svh` and
# reuses it, and a stale pin is silent until synthesis fails: after the
# SNOW_PTR_DOWN_MASK repair (report 6.32) the new `snowflake_pe.sv` met an old
# pinned header and Vivado said `[Synth 8-1031] SNOW_PTR_DOWN_MASK is not
# declared`.  Bump this whenever the header's CONTENTS change shape:
#   1 = original
#   2 = adds SNOW_PTR_DOWN_MASK ("'D' in pointer", report 6.32)
#   3 = moves SNOW_PE_STW here so snowflake_pe.sv stops including the lattice
#       table (report 6.33)
GRAPH_FORMAT = 3


def make_code(kind, d, noise="phenomenological"):
    """Build the localuf code object.

    `noise` is the localuf noise-model string.  The DEFAULT IS UNCHANGED
    ("phenomenological", scheme "frugal") so that every existing caller keeps
    generating byte-identical tables; "circuit-level" is the D14 extra column.

    `kind="rotated"` is P4: the rotated surface code (localuf/rotated.py), a
    `Code` subclass with its own index/ID convention and direction set.
    """
    if kind == "rotated":
        from localuf.rotated import RotatedSurface
        return RotatedSurface(d, noise, scheme="frugal")
    cls = Repetition if kind == "rep" else Surface
    return cls(d, noise, scheme="frugal")


def make_decoder(code, **kwargs):
    """The decoder that knows this code's convention.

    `Snowflake` for every existing code; a rotated code carries its own subclass
    in `DECODER` (it only replaces the ID convention and the floor-edge list).
    """
    return getattr(code, "DECODER", Snowflake)(code, **kwargs)


def cid_delta_rule(kind, d, h):
    """localuf 的 id_below 公式: id < limit 时 delta=small, 否则 delta=big.

    The RTL turns this into `SNOW_CID_DELTA`, so it must match the ID convention
    the decoder actually uses (`Snowflake.index_to_id` / `RotatedSnowflake`):
    IDs are blocked as [wall nodes ... | detectors ...], each block ordered with
    time DESCENDING and a constant stride, so `id_below = id + stride`.

    rotated: wall block stride = (d+1), detector block stride = (d^2-1)/2
    (localuf/rotated.py, `RotatedSurface.index_to_id`).
    """
    if kind == "rep":
        return dict(limit=2 * h, small=2, big=d - 1)
    if kind == "rotated":
        return dict(limit=(d + 1) * h, small=d + 1, big=(d * d - 1) // 2)
    return dict(limit=2 * d * h, small=2 * d, big=d * (d - 1))


def collect(kind, d, dirs_mode="all", noise="phenomenological"):
    code = make_code(kind, d, noise)
    dec = make_decoder(code)
    # Direction set.  localuf's _NEIGHBOR_ORDER is the FULL list the decoder can
    # express (12 entries for surface codes: axis-aligned N/S/E/W/D/U plus the
    # six combined NWD/NU/WD/EU/SD/SEU names).  Phenomenological graphs only ever
    # use the 6 axis-aligned ones -- measured over d=3/5/21/51, the combined
    # names occur ZERO times -- so instantiating 12 direction ports per PE wires
    # up twice the neighbour buses the design needs (d7: 120 bits of neighbour
    # CID per PE instead of 60), and routing is 67% of the d7 critical path.
    # dirs_mode="used" keeps only the directions that actually occur, preserving
    # localuf's relative order so direction indices stay stable.
    order = tuple(dec._NEIGHBOR_ORDER)
    if dirs_mode == "used":
        present = set()
        for _idx, node in dec.NODES.items():
            present.update(node.NEIGHBORS.keys())
        dirs = tuple(dname for dname in order if dname in present)
    else:
        dirs = order

    edge_list = sorted(dec.EDGES.keys(),
                       key=lambda e: (dec.index_to_id(e[0]), dec.index_to_id(e[1])))
    edge_idx = {e: i for i, e in enumerate(edge_list)}
    edge_uv = [(dec.index_to_id(u), dec.index_to_id(v)) for u, v in edge_list]

    nodes = sorted(dec.NODES.items(), key=lambda kv: kv[1].ID)
    is_bnd, is_top, is_bot, below = {}, {}, {}, {}
    for idx, node in nodes:
        nid = node.ID
        f = node.FRIENDSHIP
        is_bnd[nid] = 1 if node._IS_BOUNDARY else 0
        is_top[nid] = 1 if isinstance(f, TopSheetFriendship) else 0
        is_bot[nid] = 1 if isinstance(f, NothingFriendship) else 0
        below[nid] = (dec.NODES[f.DROPEE].ID if not isinstance(f, NothingFriendship)
                      else NO_NODE)

    nb = {node.ID: {} for _, node in nodes}
    for idx, node in nodes:
        for direction, (e, end_sel) in node.NEIGHBORS.items():
            nb[node.ID][direction] = (dec.NODES[e[end_sel]].ID, edge_idx[e])

    # ---- max node degree <= the direction-port count (D14 step 1) ---------
    # The PE has ONE PORT PER DIRECTION: `dirs` is the set of direction names the
    # hardware expresses (12 for the full localuf order, 6 for the axis-aligned
    # subset the phenomenological graph uses).  A node with more neighbours than
    # that cannot be wired up at all, and the failure mode is silent (the extra
    # neighbour simply has no port).  Under circuit-level noise the degree
    # reaches EXACTLY 12, i.e. zero margin, so the assertion is made here -- at
    # the single choke point every generator goes through -- instead of being
    # assumed.
    max_degree = max((len(m) for m in nb.values()), default=0)
    assert max_degree <= len(dirs), (
        "max node degree %d > %d direction ports (%s, %s d=%d): the PE cannot "
        "express this graph" % (max_degree, len(dirs), dirs_mode, noise, d))

    # ---- tables needed by the PE-array implementation ----------------
    # node_above: inverse of `below`.  The flat core writes the dropped state
    # into the node below; a PE array cannot write another PE's registers, so
    # each PE pulls its new state from the node above instead.
    node_above = {n: NO_NODE for n in below}
    for n, m in below.items():
        if m != NO_NODE:
            node_above[m] = n
    # rev[(n, d)]: at the neighbour reached from n through direction d, which
    # direction index points back at n?  Needed for the localised push and for
    # the edge flip requests (a PE must know which of its neighbour's ports to
    # listen to).
    dir_index = {name: i for i, name in enumerate(dirs)}
    rev = {}
    for nid, dmap in nb.items():
        for dname, (m, _e) in dmap.items():
            d_i = dir_index[dname]
            back = [dir_index[dn] for dn, (mm, _ee) in nb[m].items() if mm == nid]
            rev[(nid, d_i)] = back[0] if back else 0

    above = {i: NO_EDGE for i in range(len(edge_uv))}
    is_commit, commit_idx, n_commit = {}, {}, 0
    for e, i in edge_idx.items():
        c = dec.EDGES[e].CONTACT
        if isinstance(c, FloorContact):
            is_commit[i] = 1
            commit_idx[i] = n_commit
            n_commit += 1
        else:
            assert isinstance(c, EdgeContact)
            below_e = code.raise_edge(e, delta_t=-1)
            if below_e in edge_idx:
                above[edge_idx[below_e]] = i

    syn_nodes = sorted(node.ID for _, node in nodes
                       if isinstance(node.FRIENDSHIP, TopSheetFriendship)
                       and not node._IS_BOUNDARY)

    # 分区信息（供多 FPGA 划分）: 按时间层划分
    t_axis = code.TIME_AXIS
    tvals = sorted({idx[t_axis] for idx, _ in nodes})
    t_to_part = {t: i for i, t in enumerate(tvals)}
    node_part = {node.ID: t_to_part[idx[t_axis]] for idx, node in nodes}
    cross_edges = [i for i, (u, v) in enumerate(edge_uv) if node_part[u] != node_part[v]]

    return dict(code=kind, d=d, dirs=dirs, nn=len(nodes), ne=len(edge_uv),
                noise=noise, max_degree=max_degree,
                edge_uv=edge_uv, above=above, is_bnd=is_bnd, is_top=is_top,
                is_bot=is_bot, below=below, node_above=node_above, rev=rev,
                nb=nb, is_commit=is_commit,
                commit_idx=commit_idx, n_commit=n_commit, syn_nodes=syn_nodes,
                win=code.SCHEME.WINDOW_HEIGHT, commit_h=code.SCHEME._COMMIT_HEIGHT,
                buf_h=code.SCHEME._BUFFER_HEIGHT,
                delta=cid_delta_rule(kind, d, code.SCHEME.WINDOW_HEIGHT),
                node_part=node_part, cross_edges=cross_edges,
                n_layers=len(tvals))


def _case(fname, entries, width, default):
    """生成查表函数（负值=哨兵 -> 全 1）。双参数键编码为 a0*16+a1。"""
    ones = (1 << width) - 1
    norm = {}
    for k, v in entries.items():
        kk = k if isinstance(k, tuple) else (k,)
        norm[kk] = ones if (isinstance(v, int) and v < 0) else v
    if isinstance(default, int) and default < 0:
        default = ones
    nargs = len(next(iter(norm)))
    keys = ", ".join(f"input integer a{i}" for i in range(nargs))
    sel = "a0" if nargs == 1 else "a0*16 + a1"
    L = [f"  function automatic [{width-1}:0] {fname}({keys});",
         "    begin",
         f"      {fname} = {width}'d{default};",
         f"      case ({sel})"]
    for k, v in norm.items():
        key = k[0] if nargs == 1 else k[0] * 16 + k[1]
        L.append(f"        {key} : {fname} = {width}'d{v};")
    L.append(f"        default: {fname} = {width}'d{default};")
    L += ["      endcase", "    end", "  endfunction"]
    return "\n".join(L)


def emit(g, out_path):
    nn, ne = g["nn"], g["ne"]
    nw = max(5, (nn + 1).bit_length())
    ew = max(4, (ne + 1).bit_length())
    ndir = len(g["dirs"])
    ptr_w = max(3, (ndir + 1).bit_length())
    d_name = {"rep": "repetition", "rotated": "rotated"}.get(g["code"], "surface")
    L = []
    L += ["//=========================================================================",
          "// GENERATED FILE - DO NOT EDIT",
          f"// SNOW_GRAPH_FORMAT {GRAPH_FORMAT}",
          f"// Snowflake decoding graph: {d_name} code d={g['d']}, "
          f"window height={g['win']} (commit {g['commit_h']} + buffer {g['buf_h']})",
          f"// directions ({ndir}): {', '.join(g['dirs'])}",
          "// generated by build_scripts/generate_snowflake.py from the localuf",
          "// reference implementation (github.com/timchan0/localuf)",
          "//=========================================================================",
          "`ifndef SNOWFLAKE_GRAPH_SVH",
          "`define SNOWFLAKE_GRAPH_SVH",
          ""]
    L.append(f"localparam integer SNOW_NN = {nn};")
    L.append(f"localparam integer SNOW_NE = {ne};")
    L.append(f"localparam integer SNOW_NCOMMIT = {g['n_commit']};")
    L.append(f"localparam integer SNOW_NSYN = {len(g['syn_nodes'])};")
    L.append(f"localparam integer SNOW_CID_W = {max(2, nn.bit_length() + 1)};")
    L.append(f"localparam integer SNOW_NW = {nw};")
    L.append(f"localparam integer SNOW_EW = {ew};")
    L.append(f"localparam integer SNOW_NDIR = {ndir};")
    L.append(f"localparam integer SNOW_PTR_W = {ptr_w};")
    L.append("localparam [SNOW_NW-1:0] SNOW_NO_NODE = {SNOW_NW{1'b1}};")
    L.append("localparam [SNOW_EW-1:0] SNOW_NO_EDGE = {SNOW_EW{1'b1}};")
    L.append("localparam [SNOW_CID_W-1:0] SNOW_RESET_CID = {SNOW_CID_W{1'b1}};")
    L.append(f"localparam integer SNOW_WINDOW_HEIGHT = {g['win']};")
    L.append(f"localparam integer SNOW_COMMIT_HEIGHT = {g['commit_h']};")
    L.append(f"localparam integer SNOW_SYN_BYTES = {(len(g['syn_nodes'])+7)//8};")
    L.append(f"localparam integer SNOW_SYN_IDX_W = {max(1, len(g['syn_nodes']).bit_length())};")
    L.append("")

    # 指针编码: 0 = C(root), d+1 = 方向 d
    dir_d = g["dirs"].index("D") + 1 if "D" in g["dirs"] else 0
    L.append("localparam [SNOW_PTR_W-1:0] SNOW_PTR_C = 0;")
    L.append(f"localparam [SNOW_PTR_W-1:0] SNOW_PTR_D = {dir_d};   // 'D' = 向下")
    # find_broken_pointers(): localuf unroots a bottom-sheet node when its
    # pointer CONTAINS a 'D' (`if 'D' in self.NODE.pointer`, i.e. the direction's
    # time step is -1).  The RTL used to compare the pointer against the single
    # constant SNOW_PTR_D above, which is the same test only when 'D' is the ONLY
    # direction name containing a 'D':
    #   unrotated phenomenological  N,S,E,W,U,D          -> equal
    #   rotated   phenomenological  NW,NE,SW,SE,U,D      -> equal
    #   ANY circuit-level graph      adds SD/WD/NWD (unrotated) or
    #                                E2D/SED/SWD (rotated) -> NOT equal
    # so those t=0 nodes were never unrooted.  Measured on the rotated d3
    # circuit-level trace: 25 of 7,120 state lines wrong, all on node 22
    # ((0,1,0), pointer 'SWD'), fields cid/ptr/unrooted (report 6.32).
    # The mask is indexed by the SAME pointer encoding (0 = 'C', d+1 = direction
    # d) and is 2**SNOW_PTR_W wide so every representable pointer indexes it.
    down_mask = 0
    for di, dn in enumerate(g["dirs"]):
        if "D" in dn:
            down_mask |= 1 << (di + 1)
    L.append(f"localparam [{(1 << ptr_w) - 1}:0] SNOW_PTR_DOWN_MASK = "
             f"{1 << ptr_w}'d{down_mask};   // 'D' in pointer")
    # SNOW_PE_STW -- the packed per-cell state-word width -- is the ONE thing
    # `snowflake_pe.sv` ever needed from the lattice header, and it is a pure
    # function of the two widths above (7 flag bits + ptr + cid).  Defining it
    # here is what lets the PE stop including the lattice table: that include
    # happens in a module instantiated once per slot, so every instance used to
    # elaborate the whole table (~25-38 MB per instance; rotated d7 = 548
    # instances = 13.2 GB, i.e. unbuildable on a 16 GB machine -- report 6.31).
    # `fpga_flow/make_lattice_sim.py` asserts this same value when it builds the
    # tables (`_check(_stw == _fields)`), so the two cannot drift.
    L.append("localparam integer SNOW_PE_STW = 7 + SNOW_PTR_W + SNOW_CID_W;")
    L.append("")

    L.append(_case("SNOW_IS_BND", {n: v for n, v in g["is_bnd"].items()}, 1, 0))
    L.append(_case("SNOW_IS_TOP", {n: v for n, v in g["is_top"].items()}, 1, 0))
    L.append(_case("SNOW_IS_BOT", {n: v for n, v in g["is_bot"].items()}, 1, 0))
    L.append(_case("SNOW_NODE_BELOW", {n: v for n, v in g["below"].items()},
                   nw, (1 << nw) - 1))
    # PE-array support: the inverse (state is pulled from above instead of being
    # pushed into the node below) and the reverse-direction table
    L.append(_case("SNOW_NODE_ABOVE", {n: v for n, v in g["node_above"].items()},
                   nw, (1 << nw) - 1))
    L.append("  // (n, d) -> the direction index at the neighbour that points back at n")
    L.append(_case("SNOW_REV", {k: v for k, v in g["rev"].items()},
                   max(1, (ndir - 1).bit_length()), ndir - 1))
    # node -> syndrome bit index (or "none"), used by the PE array to inject
    # width must hold NSYN-1 AND a sentinel, hence bit_length(NSYN)
    syn_w = max(1, len(g["syn_nodes"]).bit_length())
    L.append(_case("SNOW_IS_SYN", {n: 1 for n in g["syn_nodes"]}, 1, 0))
    L.append(_case("SNOW_SYN_IDX", {n: i for i, n in enumerate(g["syn_nodes"])},
                   syn_w, (1 << syn_w) - 1))
    # edge -> the direction index at each of its endpoints that points to the
    # other endpoint (needed to route the push/edge-flip requests in the array)
    dir_index = {name: i for i, name in enumerate(g["dirs"])}
    dir_u = {}
    dir_v = {}
    for e, (u, v) in enumerate(g["edge_uv"]):
        for nid, dmap in ((u, g["nb"][u]), (v, g["nb"][v])):
            other = v if nid == u else u
            for dname, (m, ee) in dmap.items():
                if m == other and ee == e:
                    (dir_u if nid == u else dir_v)[e] = dir_index[dname]
    L.append(_case("SNOW_EDGE_DIR_U", dir_u, max(1, (ndir - 1).bit_length()), ndir - 1))
    L.append(_case("SNOW_EDGE_DIR_V", dir_v, max(1, (ndir - 1).bit_length()), ndir - 1))
    L.append(_case("SNOW_IS_COMMIT", {e: v for e, v in g["is_commit"].items()}, 1, 0))
    L.append("")
    cb = max(1, (g["n_commit"] - 1).bit_length())
    L.append(f"  function automatic [{cb-1}:0] SNOW_COMMIT_IDX(input integer a0);")
    L.append("    begin")
    L.append("      SNOW_COMMIT_IDX = 0;")
    L.append("      case (a0)")
    for e, ci in sorted(g["commit_idx"].items()):
        L.append(f"        {e} : SNOW_COMMIT_IDX = {ci};")
    L.append("      endcase")
    L.append("    end")
    L.append("  endfunction")
    L.append("")
    L.append(_case("SNOW_EDGE_U", {e: uv[0] for e, uv in enumerate(g["edge_uv"])},
                   nw, (1 << nw) - 1))
    L.append(_case("SNOW_EDGE_V", {e: uv[1] for e, uv in enumerate(g["edge_uv"])},
                   nw, (1 << nw) - 1))
    L.append(_case("SNOW_EDGE_ABOVE", {e: v for e, v in g["above"].items()},
                   ew, (1 << ew) - 1))
    L.append("")
    nb_entries, eo_entries = {}, {}
    for nid, dmap in g["nb"].items():
        for d_i, dname in enumerate(g["dirs"]):
            if dname in dmap:
                nbr, e = dmap[dname]
                nb_entries[(nid, d_i)] = nbr
                eo_entries[(nid, d_i)] = e
    L.append(_case("SNOW_NB", nb_entries, nw, (1 << nw) - 1))
    L.append(_case("SNOW_EDGE_OF", eo_entries, ew, (1 << ew) - 1))
    L.append("")
    L.append("  function automatic [SNOW_NW-1:0] SNOW_SYN_NODE(input integer a0);")
    L.append("    begin")
    L.append("      SNOW_SYN_NODE = SNOW_NO_NODE;")
    L.append("      case (a0)")
    for i, nid in enumerate(g["syn_nodes"]):
        L.append(f"        {i} : SNOW_SYN_NODE = {nw}'d{nid};")
    L.append("      endcase")
    L.append("    end")
    L.append("  endfunction")
    L.append("")
    dd = g["delta"]
    # width must fit the actual step values: with a hard-coded 4 bits the
    # surface d>=5 and repetition d>=13 graphs were silently truncated
    # (xsim reported "literal value truncated to fit in 4 bits").
    dw = max(4, max(int(dd["small"]), int(dd["big"])).bit_length())
    L.append("  // drop 时 cid 的映射步长: 与 localuf 的 Snowflake.id_below 公式一致")
    L.append(f"  function automatic [{dw-1}:0] SNOW_CID_DELTA(input integer a0);")
    L.append("    begin")
    L.append(f"      SNOW_CID_DELTA = {dw}'d{dd['small']};")
    L.append(f"      if (a0 >= {dd['limit']}) SNOW_CID_DELTA = {dw}'d{dd['big']};")
    L.append("    end")
    L.append("  endfunction")
    L.append("")
    L.append("  // 指针码 -> 方向名(3 字符), 供 testbench 打印")
    L.append("  function automatic [23:0] SNOW_PTR_STR(input integer a0);")
    L.append("    begin")
    L.append("      SNOW_PTR_STR = \"C  \";")
    L.append("      case (a0)")
    for i, dn in enumerate(g["dirs"]):
        pad = (dn + "   ")[:3]
        L.append(f"        {i+1} : SNOW_PTR_STR = \"{pad}\";")
    L.append("      endcase")
    L.append("    end")
    L.append("  endfunction")
    L.append("")
    # 分区表（供多 FPGA / hub-leaf 划分：按时间层分 leaf）
    L.append(f"localparam integer SNOW_NPART = {g['n_layers']};")
    L.append("  // 节点 -> 所属 leaf（按时间层）")
    L.append(_case("SNOW_NODE_PART", {n: v for n, v in g["node_part"].items()},
                   max(1, (g["n_layers"] - 1).bit_length()), 0))
    L.append("")

    # ------------------------------------------------------------------
    # Packed constant tables for the PE array.
    # The array wires PEs together inside generate loops, so every per-node
    # value must be usable as a *constant index* during elaboration.  Vivado
    # refuses to constant-fold the lookup functions above in that context
    # ("unable to resolve 'SNOW_NODE_ABOVE'"), hence these vectors: element i
    # of each table sits at bits [i*W +: W].
    # ------------------------------------------------------------------
    def vec(name, values, width, default):
        ones = (1 << width) - 1
        items = []
        for v in reversed(values):
            v = ones if (isinstance(v, int) and v < 0) else v
            items.append(f"{width}'d{v}")
        L.append(f"localparam [{len(values)*width-1}:0] {name} = {{{', '.join(items)}}};")

    nn = g["nn"]
    ne = g["ne"]
    vec("SNOW_ABOVE_VEC", [g["node_above"].get(i, NO_NODE) for i in range(nn)], nw, (1 << nw) - 1)
    vec("SNOW_BND_VEC",   [g["is_bnd"].get(i, 0) for i in range(nn)], 1, 0)
    vec("SNOW_TOP_VEC",   [g["is_top"].get(i, 0) for i in range(nn)], 1, 0)
    vec("SNOW_BOT_VEC",   [g["is_bot"].get(i, 0) for i in range(nn)], 1, 0)
    vec("SNOW_SYNIDX_VEC", [g["syn_nodes"].index(i) if i in g["syn_nodes"] else -1 for i in range(nn)],
        syn_w, (1 << syn_w) - 1)
    nb_vec, eb_vec, rv_vec = [], [], []
    for nid in range(nn):
        for d_i, dname in enumerate(g["dirs"]):
            if dname in g["nb"][nid]:
                nbr, e = g["nb"][nid][dname]
                nb_vec.append(nbr)
                eb_vec.append(e)
                rv_vec.append(g["rev"].get((nid, d_i), 0))
            else:
                nb_vec.append(-1)
                eb_vec.append(-1)
                rv_vec.append(0)
    rvw = max(1, (ndir - 1).bit_length())
    vec("SNOW_NB_VEC",   nb_vec, nw, (1 << nw) - 1)
    vec("SNOW_EB_VEC",   eb_vec, ew, (1 << ew) - 1)
    vec("SNOW_REV_VEC",  rv_vec, rvw, ndir - 1)
    vec("SNOW_EU_VEC",   [uv[0] for uv in g["edge_uv"]], nw, (1 << nw) - 1)
    vec("SNOW_EV_VEC",   [uv[1] for uv in g["edge_uv"]], nw, (1 << nw) - 1)
    vec("SNOW_EDIRU_VEC", [dir_u.get(e, ndir - 1) for e in range(ne)], rvw, ndir - 1)
    vec("SNOW_EDIRV_VEC", [dir_v.get(e, ndir - 1) for e in range(ne)], rvw, ndir - 1)
    vec("SNOW_EABOVE_VEC", [g["above"].get(e, NO_EDGE) for e in range(ne)], ew, (1 << ew) - 1)
    vec("SNOW_ECOMMIT_VEC", [g["is_commit"].get(e, 0) for e in range(ne)], 1, 0)
    cbw = max(1, (g["n_commit"] - 1).bit_length()) if g["n_commit"] > 0 else 1
    vec("SNOW_ECIDX_VEC", [g["commit_idx"].get(e, 0) for e in range(ne)], cbw, 0)
    L.append("")
    L.append(f"localparam integer SNOW_NCROSS_EDGES = {len(g['cross_edges'])};")
    L.append("  // 跨 leaf 的边（索引表），供 hub 转发连接")
    L.append("  function automatic [SNOW_EW-1:0] SNOW_CROSS_EDGE(input integer a0);")
    L.append("    begin")
    L.append("      SNOW_CROSS_EDGE = SNOW_NO_EDGE;")
    L.append("      case (a0)")
    for i, e in enumerate(g["cross_edges"]):
        L.append(f"        {i} : SNOW_CROSS_EDGE = {e};")
    L.append("      endcase")
    L.append("    end")
    L.append("  endfunction")
    L.append("")
    L.append("`endif // SNOWFLAKE_GRAPH_SVH")

    os.makedirs(os.path.dirname(out_path), exist_ok=True)
    text = "\n".join(L) + "\n"
    with open(out_path, "w", encoding="utf-8") as f:
        f.write(text)
    canon = os.path.join(os.path.dirname(out_path), "snowflake_graph.svh")
    with open(canon, "w", encoding="utf-8") as f:
        f.write(text)

    part_path = out_path.replace(".svh", "_part.json")
    payload = {"code": g["code"], "d": g["d"],
               "node_partition": g["node_part"], "n_partitions": g["n_layers"],
               "cross_edges": g["cross_edges"], "edge_uv": g["edge_uv"]}
    # ---- optional: time-axis slices for the snowflake-n prototype ------------
    # See fpga_flow/snowflake_n_design.md 4.6.  Purely additive: the .svh and the
    # flat PE array are untouched, and nothing here is used unless --slices >= 2.
    # A slice owns the nodes of its layers, the edges with both endpoints inside,
    # and a CROSSING (vertical) edge belongs to the slice of its U endpoint (the
    # low-ID end, matching the flat core's "edge state lives at the low ID" rule).
    ns = g.get("n_slices", 0)
    if ns and ns >= 2:
        nl = g["n_layers"]
        node_layer = g["node_part"]
        slices = []
        for i in range(ns):
            a = (i * nl) // ns
            b = ((i + 1) * nl) // ns
            layers = list(range(a, b))
            nodes_i = sorted(n for n, L in node_layer.items() if a <= L < b)
            own = set(nodes_i)
            e_in, e_x, e_below = [], [], []
            for e, (u, v) in enumerate(g["edge_uv"]):
                u_in, v_in = u in own, v in own
                if u_in and v_in:
                    e_in.append(e)
                elif u_in != v_in:
                    # crossing edge: owned by the slice holding U
                    if u_in:
                        e_x.append(e)
                    else:
                        e_below.append(e)      # owned by the neighbouring slice
            slices.append({"index": i, "layers": layers, "n_nodes": len(nodes_i),
                           "nodes": nodes_i, "edges_internal": e_in,
                           "edges_crossing_owned": e_x,
                           "edges_crossing_foreign": e_below})
        # seam contents per cut: the boundary layers and every crossing edge
        cuts = []
        for i in range(ns - 1):
            bi = slices[i]["layers"][-1]
            bj = slices[i + 1]["layers"][0]
            xb = [e for e, (u, v) in enumerate(g["edge_uv"])
                  if {node_layer[u], node_layer[v]} == {bi, bj}
                  or (min(node_layer[u], node_layer[v]) == bi
                      and max(node_layer[u], node_layer[v]) == bj)]
            nb = sorted(n for n, L in node_layer.items() if L == bi)
            na = sorted(n for n, L in node_layer.items() if L == bj)
            cuts.append({"between": [i, i + 1], "layers": [bi, bj],
                         "crossing_edges": xb,
                         "nodes_lower": nb, "nodes_upper": na,
                         "seam_bits_nodes": len(nb) * 22, "seam_bits_edges": len(xb) * 3})
        payload["slices"] = slices
        payload["slices_meta"] = {"n_slices": ns, "layers_per_slice": [len(s["layers"]) for s in slices],
                                  "nodes_per_slice": [s["n_nodes"] for s in slices],
                                  "seam_cuts": cuts,
                                  "note": "crossing edge is owned by the slice holding its U endpoint"}
        # ---- per-slice port map (input for snowflake_pe_array_s2.sv) --------
        # Slices keep localuf's logical node numbering (it must not change: the
        # frugal CID delta rule is defined by ID thresholds, design doc 3.2), so
        # an internal port is just "the peer node id", while a port that leaves
        # the slice becomes a seam entry: seam_slice = which neighbouring slice,
        # seam_idx = that peer's position in the seam's node list, and rev = the
        # direction at which the peer looks back (needed for the localised push).
        slice_of = {}
        for s in slices:
            for n in s["nodes"]:
                slice_of[n] = s["index"]
        # seam node lists: boundary layers of each cut, both sides
        seam_nodes = {}          # (slice, peer_slice) -> ordered node list
        for c in cuts:
            i, j = c["between"]
            seam_nodes[(i, j)] = c["nodes_upper"]     # slice i sees slice j's first layer
            seam_nodes[(j, i)] = c["nodes_lower"]
        seam_index = {}
        for key, lst in seam_nodes.items():
            for k, n in enumerate(lst):
                seam_index[(key[0], key[1], n)] = k
        ndir = len(g["dirs"])
        for s in slices:
            pmap = {}
            for n in s["nodes"]:
                ports = []
                for d_i, dname in enumerate(g["dirs"]):
                    ent = g["nb"][n].get(dname)
                    if not ent:
                        ports.append({"d": d_i, "kind": "none", "peer": -1, "seam_idx": -1, "rev": -1})
                        continue
                    m, _e = ent
                    if slice_of.get(m) == s["index"]:
                        ports.append({"d": d_i, "kind": "int", "peer": m, "seam_idx": -1,
                                      "rev": g["rev"].get((n, d_i), 0)})
                    else:
                        ps = slice_of.get(m)
                        ports.append({"d": d_i, "kind": "seam", "peer": m, "seam_slice": ps,
                                      "seam_idx": seam_index.get((s["index"], ps, m), -1),
                                      "rev": g["rev"].get((n, d_i), 0)})
                pmap[n] = ports
            s["port_map"] = pmap
            # ---- per-slice constant tables (the rest of what the RTL needs) ---
            # Slices keep localuf's logical IDs, so for every node slot the RTL
            # needs: the logical ID (reset value of cid), the boundary/top/bot
            # flags, the syndrome bit index and whether an "above" neighbour
            # exists.  In the single-context array these are per-node constants;
            # here they are emitted per slice so the sliced build can carry them
            # as per-context ROM tables.
            ct = {}
            for n in s["nodes"]:
                ab = g["node_above"].get(n, NO_NODE)
                ct[n] = {
                    "id": n,
                    "is_bnd": int(g["is_bnd"].get(n, 0)),
                    "is_top": int(g["is_top"].get(n, 0)),
                    "is_bot": int(g["is_bot"].get(n, 0)),
                    "has_above": int(ab != NO_NODE),
                    "above": (ab if ab != NO_NODE else -1),
                    "syn_idx": (g["syn_nodes"].index(n) if n in g["syn_nodes"] else -1),
                }
            s["const_tables"] = ct
    with open(part_path, "w", encoding="utf-8") as f:
        json.dump(payload, f, indent=1)
    return out_path, part_path


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--code", choices=["rep", "surface", "rotated"], default="rep")
    ap.add_argument("--d", type=int, default=3)
    ap.add_argument("--out", default=None)
    ap.add_argument("--dirs", choices=["all", "used"], default="all",
                    help="used: keep only the directions that actually occur in the "
                         "graph (surface codes express 12 but use 6)")
    ap.add_argument("--slices", type=int, default=0,
                    help=">=2: also emit time-axis slices + seam description into "
                         "the _part.json for the snowflake-n prototype "
                         "(see fpga_flow/snowflake_n_design.md 4.6)")
    # --noise: the localuf noise model (D14's extra column).  The DEFAULT IS
    # UNCHANGED and must leave the emitted graph header byte-identical.  The
    # LATTICE header a build also needs (make_lattice_sim.py --noise) must be
    # generated with the SAME noise model or the two disagree about the graph.
    ap.add_argument("--noise", choices=["phenomenological", "circuit-level"],
                    default="phenomenological")
    a = ap.parse_args()
    here = os.path.dirname(os.path.abspath(__file__))
    name = f"snowflake_graph_{a.code}_d{a.d}.svh"
    out = a.out or os.path.join(here, "..", "design", "generated", name)
    out = os.path.abspath(out)
    g = collect(a.code, a.d, a.dirs, a.noise)
    g["n_slices"] = a.slices          # picked up by emit() for the _part.json
    svh, part = emit(g, out)
    print(f"localuf: {LOCALUF}")
    print(f"{a.code} d={a.d} noise={a.noise}: {g['nn']} nodes, {g['ne']} edges, "
          f"{g['n_commit']} commit "
          f"edges, {len(g['syn_nodes'])} top-sheet detectors, window {g['win']}, "
          f"{len(g['dirs'])} directions, {g['n_layers']} time layers "
          f"({len(g['cross_edges'])} cross-layer edges), max degree {g['max_degree']}")
    print(f"wrote {svh}")
    print(f"wrote {part}")


if __name__ == "__main__":
    main()
