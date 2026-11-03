"""Turn a BOARD UART log into a verdict (the missing link between the board and
`fpga_flow/evidence/`).

    python fpga_flow/board_log_check.py --log uart.txt --mode 1 \
        --map fpga_flow/board/board_map.json \
        --golden fpga_flow/evidence/golden_lat1_rotated_d3_s2.txt \
        --out fpga_flow/msim_board/trace_from_uart.txt --period-ns 20

The PS program (`fpga_flow/board/host/snowflake_host.c`) prints either the
reconstructed trace lines (mode 0) or the raw record words (mode 1).  This script
accepts both, plus the `# round=<k> records=<n> cycles=<c>` diagnostics the
program prints per round, and then runs the SAME comparator every RTL regression
uses.  In mode 1 it reuses `board_records_to_trace.convert` unchanged, so the
PC-side path is literally the one that was verified against captured records.

The round table it prints is the on-board timing measurement: cycles per round
from the PL's own counter, times the actual clock period -- i.e. the number D6's
"~1 us per round" reference line is about.
"""
import argparse
import os
import re
import subprocess
import sys

HERE = os.path.dirname(os.path.abspath(__file__))
WS = os.path.dirname(HERE)
sys.path.insert(0, HERE)

from board_records_to_trace import convert        # noqa: E402

TRACE_RE = re.compile(r"^[TNEP] ")
ROUND_RE = re.compile(r"#\s*round=(\d+)\s+records=(\d+)\s+cycles=(\d+)")


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--log", required=True)
    ap.add_argument("--mode", type=int, choices=[0, 1], required=True,
                    help="0 = trace lines in the log, 1 = raw record words")
    ap.add_argument("--map", required=True)
    ap.add_argument("--golden", required=True)
    ap.add_argument("--out", required=True)
    ap.add_argument("--period-ns", type=float, default=None,
                    help="PL clock period, for the ns/round column")
    ap.add_argument("--ref-us", type=float, default=1.0,
                    help="D6 reference line for ns/round (default 1 us)")
    a = ap.parse_args()

    rounds = []
    nlines = 0
    with open(a.log, encoding="utf-8", errors="replace") as f:
        for ln in f:
            m = ROUND_RE.search(ln)
            if m:
                rounds.append((int(m.group(1)), int(m.group(2)), int(m.group(3))))
            if TRACE_RE.match(ln):
                nlines += 1

    if a.mode == 1:
        rc = convert(a.log, a.map, a.out)
        if rc != 0:
            print("BOARD_LOG_VERDICT FAIL (record conversion/layout check)")
            return 1
    else:
        if not nlines:
            print("BOARD_LOG_VERDICT FAIL (no T/N/E/P lines in the log -- wrong mode?)")
            return 1
        with open(a.log, encoding="utf-8", errors="replace") as fi, \
                open(a.out, "w", encoding="utf-8") as fo:
            for ln in fi:
                if TRACE_RE.match(ln):
                    fo.write(ln)
        print("extracted %d trace lines from %s" % (nlines, a.log))

    if rounds:
        print("round  records  cycles" + ("   ns/round" if a.period_ns else ""))
        worst = 0.0
        for r, nrec, cyc in rounds:
            ns = cyc * a.period_ns if a.period_ns else None
            worst = max(worst, ns) if ns else worst
            print("  %2d      %3d     %3d%s" % (r, nrec, cyc,
                                                "   %8.1f" % ns if ns else ""))
        if a.period_ns:
            print("worst round = %.1f ns = %.3f us (D6 reference %.3f us) -> %s"
                  % (worst, worst / 1000.0, a.ref_us,
                     "OK" if worst / 1000.0 <= a.ref_us else "OVER"))
    else:
        print("no '# round=' diagnostics in the log (is this the PS program's own "
              "output, or only a trace dump?)")

    v = subprocess.run([sys.executable,
                        os.path.join(WS, "snowflake_sim", "ref", "compare_trace.py"),
                        a.golden, a.out], capture_output=True, text=True)
    line = ""
    for ln in (v.stdout or "").splitlines():
        if "REGRESS_VERDICT" in ln:
            line = ln.strip()
    print(line or "NO VERDICT")
    ok = line.endswith("PASS") or " PASS " in line
    print("BOARD_LOG_VERDICT %s golden=%s trace=%s"
          % ("PASS" if ok else "FAIL", os.path.basename(a.golden),
             os.path.basename(a.out)))
    if not ok and v.stdout:
        print(v.stdout[:2000])
    return 0 if ok else 1


if __name__ == "__main__":
    sys.exit(main())
