"""2:1 与 1:1 调度的精度对比（后续工作第 3 步）

用 localuf 的蒙特卡洛评估两种调度在同一噪声模型下的逻辑错误率，
复现论文 Fig.13 的趋势（2:1 的阈值明显高于 1:1）。

用法: python compare_accuracy.py [--samples 300] [--p 0.004 0.006] [--d 3 5]
"""
import argparse
import sys

LOCALUF = r"D:\ycz\doc\deepseek_workzone\decoder\localuf-main\localuf-main"
sys.path.insert(0, LOCALUF)

from localuf import Repetition                                            # noqa: E402
from localuf.decoders import Snowflake                                     # noqa: E402
from localuf.sim.accuracy.monte_carlo import monte_carlo                   # noqa: E402


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--samples", type=int, default=300)
    ap.add_argument("--p", type=float, nargs="+", default=[0.004, 0.006])
    ap.add_argument("--d", type=int, nargs="+", default=[3, 5])
    a = ap.parse_args()

    counts = {d: [(p, a.samples) for p in a.p] for d in a.d}

    print(f"phenomenological noise, frugal scheme, {a.samples} shots per point")
    results = {}
    for sched in ("2:1", "1:1"):
        df = monte_carlo(counts, Repetition, Snowflake, "phenomenological",
                         scheme="frugal", schedule=sched)
        results[sched] = df

    cols = list(results["2:1"].columns)
    print(f"\n{'code distance':>13s} {'p':>7s} | {'2:1 errors/shots':>18s} {'f_2:1':>10s} | "
          f"{'1:1 errors/shots':>18s} {'f_1:1':>10s} | {'ratio':>6s}")
    print("-" * 100)
    for c in cols:
        d, p = c
        m21, n21 = results["2:1"][c]["m"], results["2:1"][c]["n"]
        m11, n11 = results["1:1"][c]["m"], results["1:1"][c]["n"]
        f21 = m21 / n21 if n21 else float("nan")
        f11 = m11 / n11 if n11 else float("nan")
        ratio = (f21 / f11) if f11 else float("nan")
        print(f"{d:13d} {p:7.4f} | {m21:8.0f}/{n21:<9.0f} {f21:10.3e} | "
              f"{m11:8.0f}/{n11:<9.0f} {f11:10.3e} | {ratio:6.2f}")

    print("\n说明: ratio < 1 表示 Snowflake 的 2:1 调度逻辑错误率更低（更准确）。"
          "\n      1:1 调度的阈值约为 2:1 的一半（论文 Fig.13），因此在高噪声点差距更明显。")


if __name__ == "__main__":
    main()
