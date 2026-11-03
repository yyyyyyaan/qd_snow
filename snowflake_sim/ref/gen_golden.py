"""生成 localuf 的逐拍黄金轨迹，供 RTL 逐行比对。

用法:
    python gen_golden.py --code rep --d 3 --schedule 2:1
    python gen_golden.py --code surface --d 3 --schedule 1:1 --out golden_1to1.txt

输出格式 (与 RTL testbench 完全一致):
    T <cycle> <stage> <step>        stage: D/G/M/g/m
    N <id> <cid> <active> <whole> <defect> <pointer> <grown> <unrooted>
    E <u>-<v> <growth> <correction>
    P <u>-<v>                       提交区纠错事件
指针字段是数值: 0 = C(根), d+1 = 方向 d（方向顺序 = localuf 的 _NEIGHBOR_ORDER）
"""
import argparse
import sys

LOCALUF = r"D:\ycz\doc\deepseek_workzone\decoder\localuf-main\localuf-main"
sys.path.insert(0, LOCALUF)

from localuf import Repetition, Surface                                    # noqa: E402
from localuf.decoders.snowflake import Snowflake                            # noqa: E402
from localuf.decoders.snowflake.constants import Stage, RESET               # noqa: E402
from localuf.decoders.snowflake.main import TopSheetFriendship              # noqa: E402

# 与 RTL testbench 相同的激励模式（低 bit 对应 id 最小的顶层探测器）
PATTERN = [0x0, 0x1, 0x2, 0x3, 0x0, 0x1, 0x0, 0x2, 0x3, 0x0, 0x1, 0x0]

# 定向激励（seam 原型）：宽随机位型（16 位内），黄金模型实测能强制
# surface d5 上 18 次 / surface d3 上 3 次缺陷跨切面迁移（push 过缝）。
# 窄位型做不到：低 2 位的模式最多只让簇跨缝合并/翻转 ecorr，缺陷本身
# 不跨缝（rep d3 结构上永远为 0 —— 160 个随机位型实测）。搜索脚本见
# 优化报告 §6.16。对应 RTL 的 SNOW_SEAM_PAT。
PATTERN_SEAM = [0xABAA, 0xB7D5, 0x9CA8, 0x08D3, 0xD512, 0x2A9C,
                0x3539, 0x4EA2, 0xCDDF, 0xD75A, 0xCBAD, 0x1D6E]


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--code", choices=["rep", "surface", "rotated"],
                    default="rep")
    ap.add_argument("--d", type=int, default=3)
    ap.add_argument("--schedule", choices=["2:1", "1:1"], default="2:1")
    ap.add_argument("--pattern", choices=["std", "seam"], default="std",
                    help="seam: directed stimulus matching the RTL's SNOW_SEAM_PAT")
    ap.add_argument("--ncyc", type=int, default=0)
    # --noise: the localuf noise model (D14's extra column).  The DEFAULT IS
    # UNCHANGED and must leave the golden trace byte-identical; the circuit-level
    # column is a NEW trace, never an overwrite of the verified one.
    ap.add_argument("--noise", choices=["phenomenological", "circuit-level"],
                    default="phenomenological")
    ap.add_argument("--out", default="golden_trace.txt")
    a = ap.parse_args()

    if a.code == "rotated":
        # P4: the rotated surface code.  Its decoder subclass only replaces the
        # ID convention and the floor-edge list; everything else is Snowflake.
        from localuf.rotated import RotatedSurface, RotatedSnowflake
        code = RotatedSurface(a.d, a.noise, scheme="frugal")
        dec = RotatedSnowflake(code, schedule=a.schedule)
    else:
        code = (Repetition if a.code == "rep" else Surface)(a.d, a.noise,
                                                           scheme="frugal")
        dec = Snowflake(code, schedule=a.schedule)
    dec.init_history()
    dirs = tuple(dec._NEIGHBOR_ORDER)

    def ptr_num(p):
        return 0 if p == "C" else dirs.index(p) + 1

    out = open(a.out, "w", encoding="utf-8")

    def w(line=""):
        out.write(line + "\n")

    W = code.SCHEME.WINDOW_HEIGHT
    w(f"# localuf golden trace: code={a.code} d={a.d} schedule={a.schedule} "
      f"window={W} (commit {code.SCHEME._COMMIT_HEIGHT} + buffer {code.SCHEME._BUFFER_HEIGHT})")
    w(f"# nodes={len(dec.NODES)} edges={len(dec.EDGES)} directions={','.join(dirs)}")

    for idx, node in sorted(dec.NODES.items(), key=lambda kv: kv[1].ID):
        w(f"G-N {node.ID} {int(node._IS_BOUNDARY)} {idx}")
    low = {frozenset(e.INDEX) for e in dec._LOWEST_EDGES}
    for e in sorted(dec.EDGES, key=lambda e: (dec.index_to_id(e[0]), dec.index_to_id(e[1]))):
        u, v = e
        w(f"G-E {dec.index_to_id(u)} {dec.index_to_id(v)} {int(frozenset(e) in low)}")

    def dump(cyc, tag, step):
        w(f"T {cyc} {tag} {step}")
        for idx, node in sorted(dec.NODES.items(), key=lambda kv: kv[1].ID):
            cid = "R" if node.cid == RESET else node.cid
            w(f"N {node.ID} {cid} {int(node.active)} {int(node.whole)} {int(node.defect)} "
              f"{ptr_num(node.pointer)} {int(node.grown)} {int(node.unrooted)}")
        for e in sorted(dec.EDGES, key=lambda e: (dec.index_to_id(e[0]), dec.index_to_id(e[1]))):
            u, v = e
            w(f"E {dec.index_to_id(u)}-{dec.index_to_id(v)} {dec.EDGES[e].growth} "
              f"{int(dec.EDGES[e].correction)}")

    # 提交事件记录（与 RTL 的 P 行同口径）
    commit_events = []
    _orig_load = code.SCHEME.pairs.load

    def _logged_load(e):
        commit_events.append(e)
        _orig_load(e)

    code.SCHEME.pairs.load = _logged_load

    top = sorted((node.ID, idx) for idx, node in dec.NODES.items()
                 if isinstance(node.FRIENDSHIP, TopSheetFriendship) and not node._IS_BOUNDARY)
    syn_of_bit = [idx for _, idx in top]

    runtimes = []
    pattern = PATTERN if a.pattern == "std" else PATTERN_SEAM
    ncyc = a.ncyc if a.ncyc > 0 else len(pattern)
    for cyc in range(ncyc):
        pat = pattern[cyc % len(pattern)]
        syn = {syn_of_bit[b] for b in range(len(syn_of_bit)) if (pat >> b) & 1}

        dec._stage = Stage.DROP
        commit_events.clear()
        for edge in dec.EDGES.values():
            edge.CONTACT.drop()
        for e in commit_events:
            u, v = e
            w(f"P {dec.index_to_id(u)}-{dec.index_to_id(v)}")
        for edge in dec.EDGES.values():
            edge.update_after_drop()
        for node in dec.NODES.values():
            node.FRIENDSHIP.drop()
        dec._load(set(syn))
        for node in dec.NODES.values():
            node.update_after_drop()
        dump(cyc, "D", 1)
        runtime = 1

        if a.schedule == "2:1":
            stages = ((True, "G", "M"), (False, "g", "m"))
        else:
            stages = ((True, "G", "M"),)

        for whole, gtag, mtag in stages:
            if a.schedule == "2:1":
                dec._stage = Stage.GROW_WHOLE if whole else Stage.GROW_HALF
                grow = (lambda nd: nd.grow_whole()) if whole else (lambda nd: nd.grow_half())
            else:
                dec._stage = Stage.GROW_WHOLE
                grow = lambda nd: nd.grow()
            for node in dec.NODES.values():
                grow(node)
            for node in dec.NODES.values():
                node.update_access()
            dump(cyc, gtag, 1)
            runtime += 1

            dec._stage = Stage.MERGING_WHOLE
            step = 0
            while True:
                for node in dec.NODES.values():
                    node.merging(True)
                for node in dec.NODES.values():
                    node.update_after_merging()
                step += 1
                dump(cyc, mtag, step)
                runtime += 1
                if not any(node.busy for node in dec.NODES.values()):
                    break
        runtimes.append(runtime)

    out.close()
    print(f"wrote {a.out}")
    print(f"code={a.code} d={a.d} schedule={a.schedule}: "
          f"{len(dec.NODES)} nodes, {len(dec.EDGES)} edges, window {W}")
    print(f"timesteps per cycle: {runtimes}")
    print(f"total timesteps: {sum(runtimes)}  mean/cycle: {sum(runtimes)/len(runtimes):.2f}")


if __name__ == "__main__":
    main()
