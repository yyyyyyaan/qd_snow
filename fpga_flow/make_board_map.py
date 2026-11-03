"""Board map for the bring-up image: the ONE place the host record layout lives.

    python fpga_flow/make_board_map.py --code rotated --d 3 --noise phenomenological \
        --maxrec 128 --json fpga_flow/board/board_map.json \
        --c    Helios_scalable_QEC-main/Helios_scalable_QEC-main/design/generated/snowflake_board_map.h

Why this exists
---------------
The board path has three sides that must agree BIT FOR BIT on how one captured
cycle is packed into a wide record:

  1. `design/board/snowflake_trace_capture.sv`   (the RTL that writes the record)
  2. `fpga_flow/board_records_to_trace.py`       (the executable host algorithm)
  3. the PS bare-metal software                  (the same algorithm in C)

(1) derives the layout from the generated graph header's own constants.  This
script derives the SAME numbers a second time, independently, straight from
localuf -- and then checks itself against the header text that
`generate_snowflake.py` emits, so the two derivations cannot drift silently.
The resulting `#LAYOUT` line that the TB reads out of the PL's ID registers is
compared against this file by `board_records_to_trace.py`: if the bitstream and
the host software ever disagree, the flow fails loudly instead of producing a
plausible-looking trace.
"""
import argparse
import json
import os
import re
import sys
import tempfile

HERE = os.path.dirname(os.path.abspath(__file__))
WS = os.path.dirname(HERE)
REPO = os.path.join(WS, "Helios_scalable_QEC-main", "Helios_scalable_QEC-main")
BUILD = os.path.join(REPO, "build_scripts")
sys.path.insert(0, BUILD)

from generate_snowflake import collect, emit          # noqa: E402


def layout(g, maxrec):
    nn, ne = g["nn"], g["ne"]
    ncommit = g["n_commit"]
    nsyn = len(g["syn_nodes"])
    ndir = len(g["dirs"])
    # identical formulas to generate_snowflake.emit() (asserted below)
    cid_w = max(2, nn.bit_length() + 1)
    ptr_w = max(3, (ndir + 1).bit_length())
    # identical formula to snowflake_trace_capture.sv
    hdrw = 35 + ncommit
    ns = cid_w + ptr_w + 6
    es = 3
    rbits = hdrw + nn * ns + ne * es
    words = (rbits + 31) // 32
    return dict(nn=nn, ne=ne, ncommit=ncommit, nsyn=nsyn, ndir=ndir,
                cid_w=cid_w, ptr_w=ptr_w, nw=max(5, (nn + 1).bit_length()),
                ew=max(4, (ne + 1).bit_length()),
                hdrw=hdrw, ns=ns, es=es, rbits=rbits, words=words,
                maxrec=maxrec, syn_words=(nsyn + 31) // 32,
                corr_words=(ncommit + 31) // 32,
                reset_cid=(1 << cid_w) - 1,
                ptr_c=0, ptr_d=(g["dirs"].index("D") + 1) if "D" in g["dirs"] else 0)


def check_against_header(g, lay):
    """Emit the graph header to a temp file and read the constants back."""
    with tempfile.TemporaryDirectory() as td:
        p = os.path.join(td, "snowflake_graph.svh")
        emit(g, p)
        text = open(p, encoding="utf-8").read()
    got = {}
    for name in ("SNOW_NN", "SNOW_NE", "SNOW_NCOMMIT", "SNOW_NSYN",
                 "SNOW_CID_W", "SNOW_NW", "SNOW_EW", "SNOW_NDIR", "SNOW_PTR_W"):
        m = re.search(r"localparam integer %s = (\d+);" % name, text)
        if not m:
            raise SystemExit("make_board_map: %s not found in the emitted header" % name)
        got[name] = int(m.group(1))
    want = {"SNOW_NN": lay["nn"], "SNOW_NE": lay["ne"],
            "SNOW_NCOMMIT": lay["ncommit"], "SNOW_NSYN": lay["nsyn"],
            "SNOW_CID_W": lay["cid_w"], "SNOW_NW": lay["nw"],
            "SNOW_EW": lay["ew"], "SNOW_NDIR": lay["ndir"],
            "SNOW_PTR_W": lay["ptr_w"]}
    for k in sorted(want):
        if got[k] != want[k]:
            raise SystemExit("make_board_map: %s header=%d this script=%d"
                             % (k, got[k], want[k]))
    return got


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--code", choices=["rep", "surface", "rotated"], default="rotated")
    ap.add_argument("--d", type=int, default=3)
    ap.add_argument("--dirs", choices=["all", "used"], default="all")
    ap.add_argument("--noise", choices=["phenomenological", "circuit-level"],
                    default="phenomenological")
    ap.add_argument("--maxrec", type=int, default=128)
    ap.add_argument("--json", default=os.path.join(HERE, "board", "board_map.json"))
    ap.add_argument("--c", default=os.path.join(REPO, "design", "generated",
                                               "snowflake_board_map.h"))
    a = ap.parse_args()

    if (a.maxrec & (a.maxrec - 1)) != 0:
        raise SystemExit("make_board_map: --maxrec must be a power of two")

    g = collect(a.code, a.d, a.dirs, a.noise)
    lay = layout(g, a.maxrec)
    check_against_header(g, lay)

    edge_uv = [[int(u), int(v)] for (u, v) in g["edge_uv"]]
    # commit edges, indexed by their commit bit (that is what `commit_onehot` is)
    commit = [None] * lay["ncommit"]
    for e, ci in g["commit_idx"].items():
        commit[int(ci)] = [int(g["edge_uv"][e][0]), int(g["edge_uv"][e][1])]
    if any(c is None for c in commit):
        raise SystemExit("make_board_map: commit index set is not 0..ncommit-1")

    cfg = dict(code=a.code, d=a.d, dirs=a.dirs, noise=a.noise,
               window=int(g["win"]), commit_height=int(g["commit_h"]))
    with open(a.json, "w", encoding="utf-8") as f:
        json.dump(dict(cfg=cfg, layout=lay, edge_uv=edge_uv, commit_edges=commit),
                  f, indent=1)

    with open(a.c, "w", encoding="utf-8") as f:
        f.write(c_header(cfg, lay, edge_uv, commit))

    print("board map: %s d=%d noise=%s" % (a.code, a.d, a.noise))
    print("  id magic 0x534E0101  nn=%d ne=%d ncommit=%d nsyn=%d ndir=%d"
          % (lay["nn"], lay["ne"], lay["ncommit"], lay["nsyn"], lay["ndir"]))
    print("  record: hdrw=%d ns=%d es=%d rbits=%d words=%d maxrec=%d"
          % (lay["hdrw"], lay["ns"], lay["es"], lay["rbits"], lay["words"],
             lay["maxrec"]))
    print("  windows: syn=%d word(s) at 0x100, corr=%d word(s) at 0x200"
          % (lay["syn_words"], lay["corr_words"]))
    print("wrote %s" % a.json)
    print("wrote %s" % a.c)


def c_header(cfg, lay, edge_uv, commit):
    L = []
    A = L.append
    A("/*=========================================================================")
    A(" * GENERATED FILE - DO NOT EDIT")
    A(" * Snowflake-on-Helios board map for the Z-7020 bring-up host software.")
    A(" *   %s d=%d, dirs=%s, noise=%s" % (cfg["code"], cfg["d"], cfg["dirs"], cfg["noise"]))
    A(" * generated by fpga_flow/make_board_map.py from the same localuf tables")
    A(" * as design/generated/snowflake_graph.svh")
    A(" *")
    A(" * The record layout below is the one snowflake_trace_capture.sv builds and")
    A(" * fpga_flow/board_records_to_trace.py takes apart.  The PL also reports it")
    A(" * through its ID registers; the software MUST check them at run time.")
    A(" *=========================================================================*/")
    A("#ifndef SNOWFLAKE_BOARD_MAP_H")
    A("#define SNOWFLAKE_BOARD_MAP_H")
    A("")
    A("#define SNOW_ID_MAGIC      0x%08Xu" % 0x534E0101)
    A("#define SNOW_NN            %d" % lay["nn"])
    A("#define SNOW_NE            %d" % lay["ne"])
    A("#define SNOW_NCOMMIT       %d" % lay["ncommit"])
    A("#define SNOW_NSYN          %d" % lay["nsyn"])
    A("#define SNOW_NDIR          %d" % lay["ndir"])
    A("#define SNOW_CID_W         %d" % lay["cid_w"])
    A("#define SNOW_PTR_W         %d" % lay["ptr_w"])
    A("#define SNOW_RESET_CID     0x%Xu" % lay["reset_cid"])
    A("#define SNOW_TRACE_HDRW    %d" % lay["hdrw"])
    A("#define SNOW_TRACE_NS      %d" % lay["ns"])
    A("#define SNOW_TRACE_ES      %d" % lay["es"])
    A("#define SNOW_TRACE_RBITS   %d" % lay["rbits"])
    A("#define SNOW_TRACE_WORDS   %d" % lay["words"])
    A("#define SNOW_TRACE_MAXREC  %d" % lay["maxrec"])
    A("#define SNOW_SYN_WORDS     %d" % lay["syn_words"])
    A("#define SNOW_CORR_WORDS    %d" % lay["corr_words"])
    A("")
    A("/* register map (byte offsets; see design/board/snowflake_host_regs.sv) */")
    for nm, off in (("REG_CTRL", 0x000), ("REG_STATUS", 0x004), ("REG_ROUNDS", 0x008),
                    ("REG_CYC_LAST", 0x00C), ("REG_REC_COUNT", 0x010),
                    ("REG_CYC_ROUND", 0x014), ("REG_TRACE_REC", 0x018),
                    ("REG_TRACE_WIX", 0x01C), ("REG_TRACE_DATA", 0x020),
                    ("REG_CYC_TOTAL", 0x024), ("REG_LAT_LIVE", 0x028),
                    ("REG_LAT_PUSH", 0x02C), ("REG_LAT_FLIP", 0x030),
                    ("REG_ID_MAGIC", 0x034), ("REG_ID_NN", 0x038), ("REG_ID_NE", 0x03C),
                    ("REG_ID_NCOMMIT", 0x040), ("REG_ID_NSYN", 0x044),
                    ("REG_ID_WID", 0x048), ("REG_ID_WORDS", 0x04C),
                    ("REG_ID_MAXREC", 0x050), ("REG_ID_NSLOT", 0x054),
                    ("REG_ID_NCTX", 0x058), ("REG_ID_HDRW", 0x05C),
                    ("REG_ID_STRIDE", 0x060), ("REG_ID_RBITS", 0x064),
                    ("REG_SYN_BASE", 0x100), ("REG_CORR_BASE", 0x200)):
        A("#define %-16s 0x%03Xu" % (nm, off))
    A("")
    A("/* CTRL write-1-pulse bits */")
    A("#define SNOW_CTRL_START        0x00000001u")
    A("#define SNOW_CTRL_SW_RESET     0x00000002u")
    A("#define SNOW_CTRL_TRACE_CLEAR  0x00000004u")
    A("#define SNOW_CTRL_TRACE_ARM    0x00000008u")
    A("#define SNOW_CTRL_TRACE_DISARM 0x00000010u")
    A("")
    A("/* STATUS bits */")
    A("#define SNOW_ST_DONE       0x00000001u")
    A("#define SNOW_ST_ALL_BUSY   0x00000002u")
    A("#define SNOW_ST_REC_OVF    0x00000004u")
    A("#define SNOW_ST_ARMED      0x00000008u")
    A("#define SNOW_ST_CORE_RST   0x00000010u")
    A("")
    A("/* edge endpoints, indexed by graph edge id (that is the order in the")
    A("   record's edge block and in the `E` trace lines) */")
    A("static const unsigned short SNOW_EDGE_UV[SNOW_NE][2] = {")
    for i, (u, v) in enumerate(edge_uv):
        A("  {%3d, %3d},   /* %3d */" % (u, v, i))
    A("};")
    A("")
    A("/* commit edges, indexed by COMMIT BIT (the order inside `commit_onehot`,")
    A("   i.e. the `P` trace lines) */")
    A("static const unsigned short SNOW_COMMIT_UV[SNOW_NCOMMIT][2] = {")
    for i, (u, v) in enumerate(commit):
        A("  {%3d, %3d},   /* %3d */" % (u, v, i))
    A("};")
    A("")
    A("#endif /* SNOWFLAKE_BOARD_MAP_H */")
    return "\n".join(L) + "\n"


if __name__ == "__main__":
    main()
