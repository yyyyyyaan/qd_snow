"""逐行比对 RTL trace 与 localuf 黄金 trace。

用法:
    python compare_trace.py                                   # 用默认路径
    python compare_trace.py <golden.txt> <rtl.txt>
    python compare_trace.py <golden.txt> <rtl.txt> --ptrmap 1:2,2:5,3:6,4:7,5:8,6:11

--ptrmap 是给 `--dirs used`（只用实际出现的 6 个方向）这类构建用的：
方向索引变小之后，N 行里的 ptr 字段（token 6，0=无指针）会按新的方向编号打印，
而黄金 trace 永远是 localuf 的完整 12 方向编号 ⇒ 语义相同但数字不同，
直接比会 FAIL（实测 surface d3：golden ptr=5 → RTL ptr=2，正是 W 在两套编号里的位置）。
映射写成 "rtl值:golden值" 的逗号分隔表，只作用在 RTL 一侧、且只改非零 ptr。
映射表本身由 localuf 的方向顺序算出（`fpga_flow/msim_regress.ps1` 会自动生成并传入），
不要手填——手填等于把待验证的东西当成已知。
"""
import os
import sys

HERE = os.path.dirname(os.path.abspath(__file__))
DEFAULT_GOLD = os.path.join(HERE, "golden_trace.txt")
DEFAULT_RTL = os.path.join(HERE, "..", "run", "rtl_trace.txt")

argv = [a for a in sys.argv[1:] if not a.startswith("--ptrmap")]
PTRMAP = {}
for a in sys.argv[1:]:
    if a.startswith("--ptrmap"):
        spec = a.split("=", 1)[1] if "=" in a else ""
        if not spec:
            i = sys.argv.index(a)
            spec = sys.argv[i + 1] if i + 1 < len(sys.argv) else ""
            argv = [x for x in argv if x != spec]
        for item in spec.split(","):
            if not item.strip():
                continue
            k, v = item.split(":")
            PTRMAP[int(k)] = int(v)

GOLD = argv[0] if len(argv) > 0 else DEFAULT_GOLD
RTL = argv[1] if len(argv) > 1 else DEFAULT_RTL


def load(path, remap_ptr=False):
    seq, pairs = [], []
    for ln in open(path, encoding="utf-8"):
        ln = ln.strip()
        if not ln or ln.startswith("#") or ln.startswith("G-"):
            continue
        if ln.startswith("P "):
            pairs.append(tuple(sorted(int(x) for x in ln[2:].split("-"))))
        else:
            tok = ln.split()
            if remap_ptr and PTRMAP and tok[0] == "N" and len(tok) > 6:
                p = int(tok[6])
                if p:
                    tok[6] = str(PTRMAP.get(p, p))
            seq.append(" ".join(tok))
    return seq, pairs


if PTRMAP:
    print("ptr remap (RTL -> golden numbering): %s"
          % ", ".join("%d->%d" % (k, v) for k, v in sorted(PTRMAP.items())))

g_seq, g_pairs = load(GOLD)
r_seq, r_pairs = load(RTL, remap_ptr=True)

print(f"golden ({os.path.basename(GOLD)}): {len(g_seq)} state lines, {len(g_pairs)} commits")
print(f"rtl    ({os.path.basename(RTL)}): {len(r_seq)} state lines, {len(r_pairs)} commits")

n = min(len(g_seq), len(r_seq))
mismatch = None
for i in range(n):
    if g_seq[i] != r_seq[i]:
        ctx = i
        while ctx > 0 and not g_seq[ctx].startswith("T "):
            ctx -= 1
        mismatch = (i, ctx, g_seq[i], r_seq[i])
        break

if mismatch is None and len(g_seq) == len(r_seq):
    print("\n*** 完全一致: RTL 与 localuf 参考实现逐拍状态完全相同 ***")
else:
    if mismatch:
        i, ctx, g, r = mismatch
        print(f"\n首个不一致: 第 {i+1} 行")
        print(f"  最近的阶段标记(参考): {g_seq[ctx]}")
        print(f"  参考: {g}")
        print(f"  RTL : {r}")
        for k in range(max(0, i - 4), min(n, i + 5)):
            mark = ">>" if k == i else "  "
            print(f"  {mark} G: {g_seq[k]:<44} | R: {r_seq[k]}")
    else:
        print(f"\n行数不同: 参考 {len(g_seq)} vs RTL {len(r_seq)}")

if sorted(g_pairs) == sorted(r_pairs):
    print(f"\n提交边一致: {g_pairs}")
else:
    print(f"\n提交边不同:\n  参考: {g_pairs}\n  RTL : {r_pairs}")

passed = (mismatch is None and len(g_seq) == len(r_seq)
          and sorted(g_pairs) == sorted(r_pairs))
print(f"\nREGRESS_VERDICT {'PASS' if passed else 'FAIL'} "
      f"golden_lines={len(g_seq)} rtl_lines={len(r_seq)} "
      f"golden_commits={len(g_pairs)} rtl_commits={len(r_pairs)} "
      f"golden={os.path.basename(GOLD)} rtl={os.path.basename(RTL)}")
sys.exit(0 if passed else 1)
