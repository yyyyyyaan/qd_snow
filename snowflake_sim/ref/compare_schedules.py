"""调度/码型性能对比（后续工作第 3 步）

在**同一综合征序列**上运行 localuf，比较 Snowflake 的 2:1 调度与 1:1 基线：
  * 每个解码周期的 timestep 数（吞吐/时延）
  * 总 timestep、平均每周期 timestep
  * 提交的纠错边数（配对行为）
RTL 侧的 timestep 数由 T 行比对保证与本地一致（逐行比对通过即等价）。

用法: python compare_schedules.py [--ncyc 40]
"""
import argparse
import sys

LOCALUF = r"D:\ycz\doc\deepseek_workzone\decoder\localuf-main\localuf-main"
sys.path.insert(0, LOCALUF)

from localuf import Repetition, Surface                                    # noqa: E402
from localuf.decoders.snowflake import Snowflake                            # noqa: E402
from localuf.decoders.snowflake.constants import Stage                      # noqa: E402
from localuf.decoders.snowflake.main import TopSheetFriendship              # noqa: E402

# 固定激励模式（与 RTL testbench 相同），周期性重复
PATTERN = [0x0, 0x1, 0x2, 0x3, 0x0, 0x1, 0x0, 0x2, 0x3, 0x0, 0x1, 0x0]


def timesteps(kind, d, schedule, ncyc):
    code = (Repetition if kind == "rep" else Surface)(d, "phenomenological",
                                                      scheme="frugal")
    dec = Snowflake(code, schedule=schedule)
    top = sorted(idx for idx, node in dec.NODES.items()
                 if isinstance(node.FRIENDSHIP, TopSheetFriendship) and not node._IS_BOUNDARY)
    n_commit = 0
    orig = code.SCHEME.pairs.load

    def logged(e):
        nonlocal n_commit
        n_commit += 1
        orig(e)

    code.SCHEME.pairs.load = logged

    total = 0
    per_cycle = []
    for cyc in range(ncyc):
        pat = PATTERN[cyc % len(PATTERN)]
        syn = {top[b] for b in range(len(top)) if (pat >> b) & 1}
        dec._stage = Stage.DROP
        for e in dec.EDGES.values():
            e.CONTACT.drop()
        for e in dec.EDGES.values():
            e.update_after_drop()
        for nd in dec.NODES.values():
            nd.FRIENDSHIP.drop()
        dec._load(set(syn))
        for nd in dec.NODES.values():
            nd.update_after_drop()
        rt = 1

        stages = ((True, True), (False, False)) if schedule == "2:1" else ((True, True),)
        for whole, is_21 in stages:
            if schedule == "2:1":
                dec._stage = Stage.GROW_WHOLE if whole else Stage.GROW_HALF
                fn = (lambda nd: nd.grow_whole()) if whole else (lambda nd: nd.grow_half())
            else:
                dec._stage = Stage.GROW_WHOLE
                fn = lambda nd: nd.grow()
            for nd in dec.NODES.values():
                fn(nd)
            for nd in dec.NODES.values():
                nd.update_access()
            rt += 1
            dec._stage = Stage.MERGING_WHOLE
            while True:
                for nd in dec.NODES.values():
                    nd.merging(True)
                for nd in dec.NODES.values():
                    nd.update_after_merging()
                rt += 1
                if not any(nd.busy for nd in dec.NODES.values()):
                    break
        per_cycle.append(rt)
        total += rt
    return dict(code=kind, d=d, schedule=schedule, nodes=len(dec.NODES),
                edges=len(dec.EDGES), total=total,
                mean=total / ncyc, commits=n_commit, per_cycle=per_cycle)


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--ncyc", type=int, default=40)
    a = ap.parse_args()

    rows = []
    for kind, d in (("rep", 3), ("rep", 5), ("surface", 3)):
        for sched in ("2:1", "1:1"):
            rows.append(timesteps(kind, d, sched, a.ncyc))

    print(f"\n{'code':8s} {'d':>2s} {'schedule':8s} {'nodes':>6s} {'edges':>6s} "
          f"{'total_ts':>9s} {'mean/cyc':>9s} {'commits':>8s}")
    print("-" * 66)
    for r in rows:
        print(f"{r['code']:8s} {r['d']:2d} {r['schedule']:8s} {r['nodes']:6d} "
              f"{r['edges']:6d} {r['total']:9d} {r['mean']:9.2f} {r['commits']:8d}")

    print("\n相对开销 (1:1 基准 -> 2:1):")
    for kind, d in (("rep", 3), ("rep", 5), ("surface", 3)):
        a21 = next(r for r in rows if r["code"] == kind and r["d"] == d and r["schedule"] == "2:1")
        a11 = next(r for r in rows if r["code"] == kind and r["d"] == d and r["schedule"] == "1:1")
        print(f"  {kind} d={d}: 2:1 比 1:1 多用 {100*(a21['total']/a11['total']-1):.1f}% "
              f"timestep ({a21['total']} vs {a11['total']}), 提交边 {a21['commits']} vs {a11['commits']}")


if __name__ == "__main__":
    main()
