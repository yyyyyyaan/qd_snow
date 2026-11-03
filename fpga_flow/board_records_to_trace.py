"""Rebuild the golden text trace from the board's RAW record words.

    python fpga_flow/board_records_to_trace.py \
        --records fpga_flow/msim_board/board_records.txt \
        --map     fpga_flow/board/board_map.json \
        --out     fpga_flow/msim_board/rtl_trace_board.txt

This is the HOST side of D8, written as the executable twin of the PS software
(`fpga_flow/board/host/snowflake_host.c`): it takes the 32-bit words the AXI
readback produced and prints exactly the lines the RTL testbench prints --
`T`/`N`/`E`/`P`, same order, same formatting -- so the result can be compared
line for line against `fpga_flow/evidence/golden_*.txt` by the same comparator
(`snowflake_sim/ref/compare_trace.py`) the direct-array regressions use.

Two checks run before a single line is emitted, and both are fatal:

  1. `magic` must be the PL's ID magic, and every layout field the PL reported
     through its ID registers must equal the generated map.  That is the
     bitstream-vs-software drift check: a wrong `--code/--d/--noise` on either
     side fails here instead of producing a plausible-looking trace.
  2. every record's own round field must match the `#RND round=` context the
     testbench was in when it drained it.
"""
import argparse
import json
import sys

STAGE_CH = {1: "D", 2: "G", 3: "M", 4: "g", 5: "m"}


def parse(path):
    lay, rnds, recs, corr = None, [], [], None
    ignored = 0
    for ln in open(path, encoding="utf-8", errors="replace"):
        ln = ln.strip()
        if not ln:
            continue
        if ln.startswith("#LAYOUT"):
            lay = dict(kv.split("=") for kv in ln.split()[1:])
        elif ln.startswith("#RND") or ln.startswith("# round="):
            # the RTL testbench writes "#RND ...", the PS program "# round= ..."
            fields = ln.split()[1:]
            rnds.append(dict(kv.split("=") for kv in fields if "=" in kv))
        elif ln.startswith("#CORR"):
            corr = dict(kv.split("=") for kv in ln.split()[1:] if "=" in kv)
        elif ln.startswith("# commit mask"):
            # the PS program prints the same words without key=value
            corr = {"words": " ".join(ln.split()[3:])}
        elif ln.startswith("R "):
            tok = ln.split()
            recs.append((int(tok[1]), [int(x, 16) for x in tok[2:]]))
        elif ln.startswith("#"):
            continue          # any other comment: diagnostics, banners, counters
        else:
            # Unclassifiable line.  A UART log is allowed to carry a few of these
            # (line noise, a truncated tail), and the record count is checked
            # against what the host reported per round below -- so count them and
            # keep going, but never stay silent about it.
            ignored += 1
    if ignored:
        print("board_records_to_trace: ignored %d unrecognised line(s)" % ignored)
    return lay, rnds, recs, corr


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--records", required=True)
    ap.add_argument("--map", required=True)
    ap.add_argument("--out", required=True)
    a = ap.parse_args()
    if convert(a.records, a.map, a.out) != 0:
        sys.exit(1)


def convert(records_path, map_path, out_path):
    """The whole host-side step, importable so board_log_check.py can reuse it
    on a UART log (same `#LAYOUT` + `R` line formats).  Returns 0 on success."""
    m = json.load(open(map_path, encoding="utf-8"))
    lay, rnds, recs, corr = parse(records_path)
    if lay is None:
        raise SystemExit("board_records_to_trace: no #LAYOUT line -- the PL ID "
                         "block was not read (or the log was truncated)")
    L = m["layout"]

    def claim(key, pl, want):
        return "%s pl=%s map=%s" % (key, pl, want)

    bad = []
    if int(lay["magic"], 16) != 0x534E0101:
        bad.append(claim("magic", lay["magic"], "0x534e0101"))
    for key, mk in (("nn", "nn"), ("ne", "ne"), ("ncommit", "ncommit"),
                    ("nsyn", "nsyn"), ("words", "words"), ("maxrec", "maxrec"),
                    ("hdrw", "hdrw"), ("rbits", "rbits")):
        if int(lay[key]) != int(L[mk]):
            bad.append(claim(key, lay[key], L[mk]))
    wid = int(lay["cid_w"]) | (int(lay["ptr_w"]) << 8) | (int(lay["ndir"]) << 16)
    if int(lay["cid_w"]) != L["cid_w"] or int(lay["ptr_w"]) != L["ptr_w"] \
            or int(lay["ndir"]) != L["ndir"]:
        bad.append(claim("wid", "cid_w=%s ptr_w=%s ndir=%s"
                         % (lay["cid_w"], lay["ptr_w"], lay["ndir"]),
                         "cid_w=%d ptr_w=%d ndir=%d"
                         % (L["cid_w"], L["ptr_w"], L["ndir"])))
    if int(lay["ns"]) != L["ns"] or int(lay["es"]) != L["es"]:
        bad.append(claim("stride", "ns=%s es=%s" % (lay["ns"], lay["es"]),
                         "ns=%d es=%d" % (L["ns"], L["es"])))
    if bad:
        for b in bad:
            print("  MISMATCH " + b)
        print("BOARD_LAYOUT_VERDICT FAIL")
        return 1
    print("board layout verified against %s (magic %s, nn=%s ne=%s words=%s hdrw=%s)"
          % (map_path, lay["magic"], lay["nn"], lay["ne"], lay["words"], lay["hdrw"]))

    NN, NE = L["nn"], L["ne"]
    HW, NS, ES = L["hdrw"], L["ns"], L["es"]
    CW, PW = L["cid_w"], L["ptr_w"]
    WORDS = L["words"]
    RESET_CID = L["reset_cid"]
    edges = m["edge_uv"]
    commit = m["commit_edges"]

    # records per round, as the TB reported them (checked below)
    expect = [(int(r["round"]), int(r["records"])) for r in rnds]
    out = []
    nchecks = 0
    seen = {}
    for idx, words in recs:
        if len(words) != WORDS:
            raise SystemExit("record %d has %d words, expected %d"
                             % (idx, len(words), WORDS))
        rec = 0
        for i, wv in enumerate(words):
            rec |= (wv & 0xFFFFFFFF) << (32 * i)
        rnd = rec & 0xFF
        stage = (rec >> 8) & 0x7
        step = (rec >> 11) & 0xFF
        commit_mask = (rec >> 35) & ((1 << L["ncommit"]) - 1)
        seen[rnd] = seen.get(rnd, 0) + 1

        ch = STAGE_CH.get(stage)
        if ch is None:
            raise SystemExit("record %d: illegal stage %d" % (idx, stage))
        out.append("T %d %s %d" % (rnd, ch, step))
        base = HW
        for n in range(NN):
            o = base + n * NS
            cid = (rec >> o) & ((1 << CW) - 1)
            ptr = (rec >> (o + CW)) & ((1 << PW) - 1)
            fl = (rec >> (o + CW + PW)) & 0x3F
            out.append("N %d %s %d %d %d %d %d %d"
                       % (n, "R" if cid == RESET_CID else str(cid),
                          fl & 1, (fl >> 1) & 1, (fl >> 2) & 1, ptr,
                          (fl >> 3) & 1, (fl >> 4) & 1))
        ebase = HW + NN * NS
        for e in range(NE):
            o = ebase + e * ES
            g3 = (rec >> o) & 0x7
            u, v = edges[e]
            out.append("E %d-%d %d %d" % (u, v, g3 & 3, (g3 >> 2) & 1))
        if stage == 1 and commit_mask:
            for ci in range(L["ncommit"]):
                if (commit_mask >> ci) & 1:
                    u, v = commit[ci]
                    out.append("P %d-%d" % (u, v))
        nchecks += 1

    if expect:
        for rnd, cnt in expect:
            if seen.get(rnd, 0) != cnt:
                raise SystemExit("round %d: %d records present, the host reported %d"
                                 % (rnd, seen.get(rnd, 0), cnt))
    with open(out_path, "w", encoding="utf-8") as f:
        f.write("\n".join(out) + "\n")
    print("rebuilt %d records -> %d trace lines; per-round records %s"
          % (nchecks, len(out),
             ", ".join("%d:%d" % (r, c) for r, c in sorted(seen.items()))))
    if corr is not None:
        if "words" in corr:
            print("commit mask readback (last round): %s" % corr["words"])
        else:
            print("commit mask readback (last round): w0=%s w1=%s"
                  % (corr.get("w0"), corr.get("w1")))
    print("wrote %s" % out_path)
    return 0


if __name__ == "__main__":
    main()
