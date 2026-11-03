"""Generate the localuf golden traces for a list of configurations and derive
the per-round cycle histogram used by the area/latency analysis.

    python fpga_flow/collect_cycles.py

Outputs
    fpga_flow/ref/golden_<code>_d<d>_<sched>.txt   (one trace per config)
    fpga_flow/cycles.csv                           (tag,rounds,D,G,M,cycles_per_round,...)

Why: the number of clock cycles per decoding round is the only way to turn a
clock period into the metric that actually matters -- ns per round
(= cycles/round x achieved period).  The histogram is taken from the reference
implementation (localuf) through the same 12-round stimulus pattern the RTL
testbenches use, so the numbers are exactly comparable.

Note: this script only reads localuf and writes traces -- it does NOT touch
design/generated/snowflake_graph.svh, so it can run while a Vivado sweep is in
flight.
"""
import os
import subprocess
import sys

HERE = os.path.dirname(os.path.abspath(__file__))
ROOT = os.path.dirname(HERE)                      # workspace root
REF = os.path.join(ROOT, "snowflake_sim", "ref")
OUTDIR = os.path.join(HERE, "ref")

CONFIGS = [
    ("rep", 3, "2:1"), ("rep", 3, "1:1"),
    ("surface", 3, "2:1"), ("surface", 3, "1:1"),
    ("rep", 5, "2:1"), ("rep", 5, "1:1"),
    ("surface", 5, "2:1"), ("surface", 5, "1:1"),
    ("surface", 7, "2:1"), ("surface", 7, "1:1"),
]

STAGE_NAMES = {"D": "drop", "G": "grow", "M": "merging", "g": "grow_half", "m": "merging_half"}


def gen(code, d, sched, out):
    cmd = [sys.executable, os.path.join(REF, "gen_golden.py"),
           "--code", code, "--d", str(d), "--schedule", sched, "--out", out]
    r = subprocess.run(cmd, capture_output=True, text=True)
    if r.returncode != 0:
        print("  [warn] golden generation failed:", (r.stderr or r.stdout).strip().splitlines()[-1:])
        return False
    return True


def histogram(path):
    counts, cycles, rounds = {}, 0, 0
    for ln in open(path, encoding="utf-8"):
        if not ln.startswith("T "):
            continue
        f = ln.split()
        stage = f[2]
        counts[stage] = counts.get(stage, 0) + 1
        cycles += 1
        if stage == "D":
            rounds += 1
    return counts, cycles, rounds


def main():
    os.makedirs(OUTDIR, exist_ok=True)
    rows = []
    for code, d, sched in CONFIGS:
        tag = "%s_d%d_%s" % (code, d, "2to1" if sched == "2:1" else "1to1")
        out = os.path.join(OUTDIR, "golden_%s.txt" % tag)
        print("[gen ] %s" % tag)
        if not gen(code, d, sched, out):
            continue
        counts, cycles, rounds = histogram(out)
        if rounds == 0:
            print("  [warn] no rounds in trace")
            continue
        merge = counts.get("M", 0) + counts.get("m", 0)
        cpr = cycles / rounds
        rows.append(dict(tag=tag, code=code, d=d, sched=sched, rounds=rounds, cycles=cycles,
                         drop=counts.get("D", 0), grow=counts.get("G", 0),
                         grow_half=counts.get("g", 0), merge=merge,
                         cycles_per_round=cpr, merge_per_round=merge / rounds,
                         cycles_split_merge=cycles + merge,
                         split_factor=(cycles + merge) / cycles))
        print("  cycles=%d rounds=%d cycles/round=%.2f merge/round=%.2f split_factor=%.2f"
              % (cycles, rounds, cpr, merge / rounds, (cycles + merge) / cycles))

    csv_path = os.path.join(HERE, "cycles.csv")
    with open(csv_path, "w", encoding="ascii") as fh:
        fh.write("tag,code,d,schedule,rounds,cycles,drop,grow,grow_half,merge,"
                 "cycles_per_round,merge_per_round,cycles_with_split_merge,split_factor\n")
        for r in rows:
            fh.write("%s,%s,%d,%s,%d,%d,%d,%d,%d,%d,%.3f,%.3f,%d,%.3f\n" % (
                r["tag"], r["code"], r["d"], r["sched"], r["rounds"], r["cycles"], r["drop"],
                r["grow"], r["grow_half"], r["merge"], r["cycles_per_round"],
                r["merge_per_round"], r["cycles_split_merge"], r["split_factor"]))
    print("\nwrote %s (%d configs)" % (csv_path, len(rows)))


if __name__ == "__main__":
    main()
