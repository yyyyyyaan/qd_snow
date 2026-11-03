"""Collect every sweep result into the normalised tables used by the report.

    python fpga_flow/collect_results.py

Inputs
    fpga_flow/summary_impl.csv / summary_synth.csv   (written by sweep.ps1)
    fpga_flow/cycles.csv                             (written by collect_cycles.py)
    fpga_flow/graphs/<code>_d<d>.svh                 (generated graph tables)

Output
    fpga_flow/util_report.md     area / utilisation analysis (M1)
    fpga_flow/timing_report.md   implementation + timing analysis (M2)
    fpga_flow/results.csv        flattened machine readable table

Derived metrics (the ones that actually allow conclusions):
    LUT/node, FF/node, LUT/edge   -- normalised area, comparable with Helios
                                     (paper: d=21 phenomenological = 898,715 LUT
                                      for 9702 nodes ~= 92 LUT/node)
    achieved_period = period - wns
    ns/round        = cycles/round x achieved_period
    LUT*ns/round    = area-time product; lower is better
"""
import csv
import os
import re
import sys

HERE = os.path.dirname(os.path.abspath(__file__))
GRAPHS = os.path.join(HERE, "graphs")

HELIOS_REF = [
    # name, device, LUTs, ns/round, note
    ("Helios d=21 phenomenological", "VCU129 (xcvu29p)", 898715, 11.5, "paper, 100 MHz"),
    ("Helios d=17 circuit-level",    "VCU129 (xcvu29p)", None,   23.7, "paper"),
    ("Helios d=13 phenomenological", "VCU129 (xcvu29p)", 165718, 15.0, "paper"),
    ("Helios sliding-window d=13",   "VCU129 (xcvu29p)", 371000, 194.0, "paper (windowed, higher latency)"),
    ("Helios d=51 phenomenological", "VCU129 (xcvu29p)", 796000, 543.9, "paper, 85 MHz"),
]

LP = re.compile(r"localparam[^\n;]*SNOW_(\w+)\s*=\s*([^;]+);")


def graph_params(code, d):
    p = os.path.join(GRAPHS, "%s_d%s.svh" % (code, d))
    if not os.path.exists(p):
        return {}
    txt = open(p, encoding="utf-8", errors="ignore").read()
    out = {}
    for k, v in LP.findall(txt):
        v = v.strip()
        if v.isdigit():
            out[k] = int(v)
    return out


def load_csv(path):
    if not os.path.exists(path):
        return []
    with open(path, newline="", encoding="utf-8", errors="ignore") as fh:
        return [r for r in csv.DictReader(fh)]


def load_cycles():
    out = {}
    for r in load_csv(os.path.join(HERE, "cycles.csv")):
        out[r["tag"]] = r
    return out


def fnum(x):
    try:
        return float(x)
    except (TypeError, ValueError):
        return None


def build_rows():
    rows = []
    for mode in ("impl", "synth"):
        for r in load_csv(os.path.join(HERE, "summary_%s.csv" % mode)):
            if r.get("wns") in (None, "", "FAIL", "NA"):
                r["_ok"] = False
            else:
                r["_ok"] = True
            rows.append(r)
    return rows


def enrich(rows, cycles):
    for r in rows:
        code, d = r.get("code", ""), r.get("d", "")
        gp = graph_params(code, d) if code and d else {}
        r["NN"] = gp.get("NN")
        r["NE"] = gp.get("NE")
        r["CID_W"] = gp.get("CID_W")
        r["PTR_W"] = gp.get("PTR_W")
        r["NDIR"] = gp.get("NDIR")
        lut, ff = fnum(r.get("lut")), fnum(r.get("ff"))
        r["lut_per_node"] = (lut / r["NN"]) if (lut and r["NN"]) else None
        r["ff_per_node"] = (ff / r["NN"]) if (ff and r["NN"]) else None
        r["lut_per_edge"] = (lut / r["NE"]) if (lut and r["NE"]) else None
        per = fnum(r.get("period"))
        wns = fnum(r.get("wns"))
        r["achieved_period"] = (per - wns) if (per is not None and wns is not None) else None
        ckey = "%s_d%s_%s" % (r.get("code"), r.get("d"),
                              "1to1" if r.get("schedule") == "1:1" else "2to1")
        c = cycles.get(ckey)
        r["cycles_per_round"] = fnum(c["cycles_per_round"]) if c else None
        r["merge_per_round"] = fnum(c["merge_per_round"]) if c else None
        r["split_factor"] = fnum(c["split_factor"]) if c else None
        r["ns_per_round"] = ((r["cycles_per_round"] * r["achieved_period"])
                             if (r["cycles_per_round"] and r["achieved_period"]) else None)
        r["area_time"] = ((fnum(r.get("lut")) * r["ns_per_round"])
                          if (fnum(r.get("lut")) and r["ns_per_round"]) else None)
    return rows


def fmt(x, nd=1):
    if x is None:
        return "NA"
    if isinstance(x, float):
        return ("%%.%df" % nd) % x
    return str(x)


def ablation_table(rows):
    """Area split from ablation builds (SNOW_NO_OBS / SNOW_ABLATE_MERGE tags)."""
    by_tag = {}
    for r in rows:
        if r.get("mode") == "impl" and r.get("_ok"):
            by_tag[r.get("tag")] = r
    out = []
    groups = {}
    for tag, r in by_tag.items():
        base = tag
        kind = []
        for k in ("_noobs", "_ablmerge"):
            if k in base:
                base = base.replace(k, "")
                kind.append(k)
        if not kind:
            continue
        groups.setdefault(base, {})["".join(sorted(kind))] = r
    if not groups:
        return ""
    out.append("## 1b. 面积构成拆解（消融综合）")
    out.append("")
    out.append("| 基线 | obs 总线 LUT | merging 数据通路 LUT | 基线 LUT | 基线 FF | 说明 |")
    out.append("|---|---|---|---|---|---|")
    for base, variants in sorted(groups.items()):
        b = by_tag.get(base)
        if not b or not fnum(b.get("lut")):
            continue
        lut_b = fnum(b["lut"])
        obs = fnum(b["lut"]) - fnum(variants["_noobs"]["lut"]) if "_noobs" in variants else None
        mrg = fnum(b["lut"]) - fnum(variants["_ablmerge"]["lut"]) if "_ablmerge" in variants else None
        note = []
        if obs is not None:
            note.append("obs 占 %.1f%%" % (100.0 * obs / lut_b))
        if mrg is not None:
            note.append("merging 占 %.1f%%" % (100.0 * mrg / lut_b))
        out.append("| %s | %s | %s | %.0f | %s | %s |" % (
            base, fmt(obs), fmt(mrg), lut_b, b.get("ff"), "; ".join(note)))
    out.append("")
    out.append("obs = 观察总线（`obs_cid/obs_ptr/obs_growth/...`，真实设计里应时分复用到 32 位调试口）；")
    out.append("merging = 合并阶段的组合逻辑。")
    out.append("")
    out.append("> 注意：`SNOW_ABLATE_MERGE` 的数字目前**不可用**——把 merging 逻辑挖掉后，")
    out.append("> Vivado 会把整个状态环剪掉（没有任何输出再依赖它），于是只剩 6–7 LUT。")
    out.append("> 要得到有意义的数字，需要给状态数组加 `(* keep = \"true\" *)` 后重跑。")
    out.append("")
    return "\n".join(out)


def joint_fit(rows, mode, label):
    """4-parameter fit over both codes, for ONE build variant:
           LUT ~ a*NN + b*(NN*CID_W) + c*(NN*NDIR) + d*NE
    The basis is chosen to be physically meaningful (per-node fixed logic, per
    node per cluster-id bit, per node per direction compared, per edge) and far
    better conditioned than NN/NE/NDIR alone.  Ablation builds are excluded by
    the caller: their logic is pruned by synthesis, so their LUT count is not
    an area measurement.
    """
    pts = [r for r in rows if r.get("mode") == mode and r.get("_ok")
           and r.get("schedule") == "2:1"          # schedule is not a basis function
           and variant_label(r) == label
           and r.get("NN") and r.get("NE") and r.get("NDIR") and r.get("CID_W")
           and fnum(r.get("lut"))]
    seen, uniq = set(), []
    for r in sorted(pts, key=lambda r: (r["code"], r["NN"])):
        if r["tag"] in seen:
            continue
        seen.add(r["tag"])
        uniq.append(r)
    pts = uniq
    if len(pts) < 5:
        return None
    cols = [lambda r: float(r["NN"]),
            lambda r: float(r["NN"] * r["CID_W"]),
            lambda r: float(r["NN"] * r["NDIR"]),
            lambda r: float(r["NE"])]
    n = 4
    A = [[sum(cols[i](r) * cols[j](r) for r in pts) for j in range(n)] for i in range(n)]
    y = [sum(cols[i](r) * float(r["lut"]) for r in pts) for i in range(n)]
    for i in range(n):
        p = max(range(i, n), key=lambda k: abs(A[k][i]))
        if abs(A[p][i]) < 1e-12:
            return None
        A[i], A[p] = A[p], A[i]
        y[i], y[p] = y[p], y[i]
        for k in range(i + 1, n):
            f = A[k][i] / A[i][i]
            for j in range(i, n):
                A[k][j] -= f * A[i][j]
            y[k] -= f * y[i]
    coef = [0.0] * n
    for i in reversed(range(n)):
        coef[i] = (y[i] - sum(A[i][j] * coef[j] for j in range(i + 1, n))) / A[i][i]
    preds = []
    for r in pts:
        pred = sum(coef[i] * cols[i](r) for i in range(n))
        preds.append((r["tag"], r["NN"], r["NE"], r["NDIR"], r["CID_W"],
                      float(r["lut"]), pred))
    return dict(coef=coef, points=preds, mode=mode)


def joint_section(rows):
    out = []
    # ablation builds are pruned by synthesis -> not an area measurement
    bad = ("ablmerge", "noobs")
    labels = []
    seen = set()
    for r in rows:
        if r.get("mode") != "synth" and r.get("mode") != "impl":
            continue
        lab = variant_label(r)
        if lab in seen or any(b in lab for b in bad):
            continue
        seen.add(lab)
        labels.append(lab)
    for mode in ("impl", "synth"):
        for lab in labels:
            f = joint_fit(rows, mode, lab)
            if not f:
                continue
            a, b, c, d = f["coef"]
            out.append("### 联合拟合（%s 模式，变体 `%s`）" % (mode, lab or "baseline V0"))
            out.append("")
            out.append("模型 `LUT ≈ %.2f·NN + %.2f·(NN·CID_W) + %.2f·(NN·NDIR) + %.2f·NE`"
                       % (a, b, c, d))
            out.append("")
            out.append("| 配置 | NN | NE | NDIR | CID_W | 实测 LUT | LUT/节点 | 拟合 LUT | 偏差 |")
            out.append("|---|---|---|---|---|---|---|---|---|")
            for tag, nn, ne, nd, cw, lut, pred in f["points"]:
                out.append("| %s | %d | %d | %d | %d | %.0f | %.1f | %.0f | %+.1f%% |" %
                           (tag, nn, ne, nd, cw, lut, lut / nn, pred,
                            100.0 * (pred - lut) / lut))
            out.append("")
            for code, nn, ne, nd, cw in (("surface", 9702, 26061, 12, 15),
                                         ("rep", 462, 841, 4, 10)):
                pred = a * nn + b * nn * cw + c * nn * nd + d * ne
                out.append("- 外推 %s d=21（NN=%d, NE=%d, NDIR=%d, CID_W=%d）: **%.0f LUT**，"
                           "即 %.1f LUT/节点（论文 Helios d=21 = 898,715 LUT，≈92 LUT/节点）"
                           % (code, nn, ne, nd, cw, pred, pred / nn))
            out.append("")
    return "\n".join(out)


def variant_label(row):
    """Strip the config identity out of the tag to get a variant label.

    baseline : surface_d3_2to1_xcvu9p
    M3       : m3_surface_d3_2to1_xcvu9p
    ablation : surface_d3_2to1_noobs_xcvu9p
    period   : surface_d3_2to1_xcvu9p_p7p0
    """
    tag = row.get("tag", "")
    stub = "%s_d%s_%s" % (row.get("code"), row.get("d"),
                          "1to1" if row.get("schedule") == "1:1" else "2to1")
    return tag.replace(stub, "")


def variant_section(rows, mode="impl"):
    groups = {}
    for r in rows:
        if r.get("mode") != mode or not r.get("_ok"):
            continue
        key = (r.get("code"), r.get("d"), r.get("schedule"), r.get("part"))
        groups.setdefault(key, []).append(r)
    multi = {k: v for k, v in groups.items() if len(v) > 1}
    if not multi:
        return ""
    out = ["## 1c. 变体对比（同一配置的不同构建，%s 模式）" % mode, "",
           "| 配置 | 变体 | LUT | Δ LUT | FF | WNS | 达成周期 | ns/轮 | Δ ns/轮 |",
           "|---|---|---|---|---|---|---|---|---|"]
    for key, vlist in sorted(multi.items()):
        base = None
        for r in vlist:
            if variant_label(r) == "":
                base = r
        for r in sorted(vlist, key=lambda x: variant_label(x)):
            dlut = ""
            dns = ""
            if base and base is not r:
                if fnum(base.get("lut")) and fnum(r.get("lut")):
                    dlut = "%+.1f%%" % (100.0 * (fnum(r["lut"]) - fnum(base["lut"])) / fnum(base["lut"]))
                if base.get("ns_per_round") and r.get("ns_per_round"):
                    dns = "%+.1f%%" % (100.0 * (r["ns_per_round"] - base["ns_per_round"]) / base["ns_per_round"])
            out.append("| %s d=%s %s | %s | %s | %s | %s | %s | %s | %s | %s |" % (
                key[0], key[1], key[2], (variant_label(r) or "(baseline)"),
                r.get("lut"), dlut, r.get("ff"), r.get("wns"),
                fmt(r["achieved_period"], 3), fmt(r["ns_per_round"], 2), dns))
    out.append("")
    return "\n".join(out)


def main_table(rows, mode="impl"):
    sel = [r for r in rows if r.get("mode") == mode and r.get("_ok")]
    if not sel:
        return "no successful %s runs yet\n" % mode
    L = ["| config | part | 周期(ns) | WNS | 达成周期 | f_max(MHz) | 逻辑级数 | LUT | FF | LUTRAM | BRAM | LUT/节点 | FF/节点 | cycles/轮 | ns/轮 |",
         "|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|"]
    for r in sel:
        fmax = fnum(r.get("fmax_mhz"))
        L.append("| %s | %s | %s | %s | %s | %s | %s | %s | %s | %s | %s | %s | %s | %s | %s |" % (
            r.get("tag"), r.get("part"), r.get("period"), r.get("wns"),
            fmt(r["achieved_period"], 3), fmt(fmax, 1), r.get("levels"),
            r.get("lut"), r.get("ff"), r.get("lutram"), r.get("bram"),
            fmt(r["lut_per_node"]), fmt(r["ff_per_node"]),
            fmt(r["cycles_per_round"], 2), fmt(r["ns_per_round"], 2)))
    return "\n".join(L) + "\n"


def fit_extrapolate(rows, code, sched, part, mode="impl"):
    """Least squares LUT ~ a*NN + b*NE over the measured d points."""
    pts = [r for r in rows if r.get("mode") == mode and r.get("_ok")
           and r.get("code") == code and r.get("schedule") == sched
           and r.get("part") == part and r.get("NN") and fnum(r.get("lut"))]
    pts.sort(key=lambda r: r["NN"])
    if len(pts) < 3:
        return None
    n = len(pts)
    sx = sum(r["NN"] for r in pts)
    sy = sum(r["NE"] for r in pts)
    sz = sum(float(r["lut"]) for r in pts)
    sxx = sum(r["NN"] ** 2 for r in pts)
    syy = sum(r["NE"] ** 2 for r in pts)
    sxy = sum(r["NN"] * r["NE"] for r in pts)
    sxz = sum(r["NN"] * float(r["lut"]) for r in pts)
    syz = sum(r["NE"] * float(r["lut"]) for r in pts)
    # solve [[sxx,sxy],[sxy,syy]] [a,b] = [sxz,syz]
    det = sxx * syy - sxy * sxy
    if abs(det) < 1e-9:
        return None
    a = (sxz * syy - syz * sxy) / det
    b = (syz * sxx - sxz * sxy) / det
    preds = []
    for r in pts:
        pred = a * r["NN"] + b * r["NE"]
        preds.append((r["tag"], r["NN"], float(r["lut"]), pred))
    return dict(a=a, b=b, n=n, points=preds)


def main():
    rows = enrich(build_rows(), load_cycles())
    if not rows:
        print("no summary CSV found -- run sweep.ps1 first")
        return 1

    with open(os.path.join(HERE, "results.csv"), "w", newline="", encoding="ascii") as fh:
        cols = ["tag", "code", "d", "schedule", "part", "period", "mode", "wns", "levels",
                "min_period", "fmax_mhz", "lut", "ff", "lutram", "bram", "uram", "dsp",
                "NN", "NE", "lut_per_node", "ff_per_node", "lut_per_edge",
                "achieved_period", "cycles_per_round", "merge_per_round", "split_factor",
                "ns_per_round", "area_time"]
        w = csv.DictWriter(fh, fieldnames=cols, extrasaction="ignore")
        w.writeheader()
        for r in rows:
            w.writerow(r)

    pairs = sorted({(r.get("code"), r.get("schedule"), r.get("part")) for r in rows
                    if r.get("mode") == "impl" and r.get("_ok")})
    fits = []
    for code, sched, part in pairs:
        f = fit_extrapolate(rows, code, sched, part)
        if f:
            fits.append((code, sched, part, f))

    util = ["# Snowflake-on-Helios 资源占用率分析（M1）", "",
            "> 自动生成，数据来源 `fpga_flow/summary_*.csv` + `fpga_flow/cycles.csv`。",
            "> 重新生成：`python fpga_flow/collect_results.py`", "",
            "## 1. 实现结果（布线后实测）", "", main_table(rows, "impl"), ""]
    ab = ablation_table(rows)
    if ab:
        util += [ab, ""]
    vs = variant_section(rows, "impl")
    if vs:
        util += [vs, ""]
    vss = variant_section(rows, "synth")
    if vss:
        util += [vss, ""]
    if fits:
        util += ["## 2. 单码拟合与外推", "",
                 "模型 `LUT ≈ a·NN + b·NE`（NN=节点数，NE=边数），用已测的 d 点最小二乘拟合。", ""]
        for code, sched, part, f in fits:
            util.append("### %s %s @ %s   a=%.2f LUT/节点  b=%.2f LUT/边" %
                        (code, sched, part, f["a"], f["b"]))
            util.append("")
            util.append("| 配置 | NN | 实测 LUT | 拟合 LUT | 偏差 |")
            util.append("|---|---|---|---|---|")
            for tag, nn, lut, pred in f["points"]:
                util.append("| %s | %d | %.0f | %.0f | %+.1f%% |" %
                            (tag, nn, lut, pred, 100.0 * (pred - lut) / lut))
            util.append("")
            nn21 = 9702 if code == "surface" else 462
            ne21 = 26061 if code == "surface" else 841
            pred21 = f["a"] * nn21 + f["b"] * ne21
            util.append("外推 d=21（NN=%d, NE=%d）: **%.0f LUT**（论文 Helios d=21 = 898,715 LUT）" %
                        (nn21, ne21, pred21))
            util.append("")

    js = joint_section(rows)
    if js:
        util += ["## 2b. 跨码联合拟合与外推", "",
                 "两类码的每节点成本不同（方向数 4 vs 12），所以用三个基函数一起拟合，",
                 "并且可以用 surface d=7 的实测值检验外推可信度。", "", js, ""]

    util += ["## 3. Helios 论文参考点", "",
             "| 参考 | 器件 | LUT | ns/round | 备注 |", "|---|---|---|---|---|"]
    for name, dev, lut, nsr, note in HELIOS_REF:
        util.append("| %s | %s | %s | %s | %s |" %
                    (name, dev, ("%d" % lut) if lut else "NA", nsr, note))
    util += ["", "## 4. 结论（自动生成的骨架，人工补充解读）", "",
             "- `LUT/节点` 与 Helios 论文 d=21 的 ≈92 LUT/节点 对比：见上表。",
             "- `ns/轮` = cycles/轮 × 达成周期；与 Helios 11.5 ns/轮 对比：见上表。",
             "- `split_factor`（flood/sync 切两拍的周期代价）见 `cycles.csv`；"
             "只有当切分能把周期压缩超过该倍数时才划算。", ""]
    open(os.path.join(HERE, "util_report.md"), "w", encoding="utf-8").write("\n".join(util))

    timing = ["# Snowflake-on-Helios 实现与时序报告（M2）", "",
              "## 1. WNS / 逻辑级数 / 达成频率", "", main_table(rows, "impl"), "",
              "## 2. 关键路径（逐配置，取自 `logs/timing_paths_<tag>.rpt`）", ""]
    for r in rows:
        if r.get("mode") != "impl" or not r.get("_ok"):
            continue
        p = os.path.join(HERE, "logs", "timing_paths_%s.rpt" % r.get("tag"))
        if not os.path.exists(p):
            continue
        txt = open(p, encoding="utf-8", errors="ignore").read()
        m = re.search(r"Slack \(VIOLATED\)|Slack \(MET\)", txt)
        head = []
        for ln in txt.splitlines():
            if "Slack" in ln or "Source:" in ln or "Destination:" in ln:
                head.append(ln.strip())
            if len(head) >= 6:
                break
        timing.append("### %s" % r.get("tag"))
        timing += ["```"] + head + ["```", ""]
    timing += ["## 3. 如何自己在 GUI 里看", "",
               "```", "fpga_flow\\open_gui.bat <tag>      # 打开布线后 checkpoint + 时序报告",
               "```", ""]
    open(os.path.join(HERE, "timing_report.md"), "w", encoding="utf-8").write("\n".join(timing))

    print("rows=%d  fits=%d" % (len(rows), len(fits)))
    print("wrote util_report.md, timing_report.md, results.csv")
    return 0


if __name__ == "__main__":
    sys.exit(main())
