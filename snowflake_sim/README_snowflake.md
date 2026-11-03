# Snowflake-on-Helios：仿真与验证工作区

> 本目录集中存放 Snowflake 的所有**仿真相关**文件（RTL 在 Helios 仓库内，见下）。
> 三步后续工作的完成情况见 §5。

```
snowflake_sim/
├── ref/     参考实现(localuf)侧：黄金轨迹生成、逐行比对、调度/精度对比
├── run/     运行脚本 + xsim GUI 波形配置 + 仿真产物(trace/log/wdb)
├── waves/   预留：导出的波形文件
└── README_snowflake.md    本文件
```

RTL / 生成器 / testbench 位于 Helios 仓库内（不放这里，避免与项目源码分离）：

```
Helios_scalable_QEC-main/Helios_scalable_QEC-main/
├── build_scripts/generate_snowflake.py        图生成器(对标 generate.py)
├── design/generated/snowflake_graph*.svh      生成的图/查表 + *_part.json 分区表
├── design/snowflake/snowflake_core.sv         Snowflake 解码核(流水式, 2:1/1:1 可选)
├── design/snowflake/snowflake_wrapper.sv      字节流包装(复用 Helios 的 FIFO/serializer)
└── test_benches/snowflake/tb_snowflake_*.sv   testbench
```

---

## 1. 快速开始

```bat
:: (0) 生成解码图（换码型/码距只需改这一行）
cd Helios_scalable_QEC-main\Helios_scalable_QEC-main\build_scripts
python generate_snowflake.py --code rep     --d 3      :: repetition d=3
python generate_snowflake.py --code surface --d 3      :: 表面码(2D) d=3
python generate_snowflake.py --code surface --d 5      :: 表面码(2D) d=5

:: (1) 参考实现黄金轨迹（必须与第 (2) 步同一调度）
cd ..\..\..\snowflake_sim\ref
python gen_golden.py --code surface --d 3 --schedule 2:1 --out golden_surface_d3_2to1.txt

:: (2) RTL 仿真（默认 2:1；加 1:1 参数跑基线调度）
cd ..\run
run_core.bat                     :: 2:1
run_core.bat 1:1                 :: 1:1 基线

:: (3) 逐行比对
cd ..\ref
python compare_trace.py golden_surface_d3_2to1.txt ..\run\rtl_trace.txt

:: (4) 看波形（xsim GUI，自动加载关键信号并运行）
cd ..\run
run_gui.bat
:: 或者先跑过 run_core.bat 后，用 Vivado GUI 打开已存波形：
::   Tcl Console: cd .../snowflake_sim/run ; source open_wave.tcl

:: (5) 字节流接口（Helios 协议，构建时同时编译 Helios 的 fifo_fwft.v / serdes.sv / parameters.sv）
cd ..\run
run_wrapper.bat
```

---

## 2. 验证结果（逐拍状态 + 提交事件，全部逐行一致）

| 码型 | 调度 | 图规模 | 黄金 vs RTL 状态行数 | 结果 |
|---|---|---|---|---|
| repetition d=3 | **2:1** | 12 节点 / 13 边 / 4 方向 | 2314 = 2314 | 完全一致，6 次提交事件一致 |
| repetition d=3 | **1:1** | 同上 | 1508 = 1508 | 完全一致，6 次提交事件一致（配对边不同） |
| **surface d=3（2D）** | **2:1** | 36 节点 / 51 边 / **12 方向** | 7832 = 7832 | 完全一致，6 次提交事件一致 |

比对粒度：每个 timestep 的全部节点状态（cid/active/whole/defect/pointer/grown/unrooted，指针为数值编码）
+ 全部边状态（growth/correction）+ 每次 drop 的提交边事件。覆盖 2:1 半条边调度、drop 流式窗口下移、
缺陷沿 pointer 树推送与边翻转、unrooting、边界节点、提交区提交；表面码还覆盖 12 方向与对角边。

表面码生成规模（同时验证生成器可扩展）：`surface d=5` = 150 节点 / 285 边 / 61 提交边 / 20 顶层探测器。

---

## 3. 调度与性能对比（后续工作第 3 步）

### 3.1 timestep 对比（同一激励序列，40 轮，localuf 统计；RTL 逐拍比对已证明与之一致）

| 码型 | 节点/边 | 2:1 总 timestep | 1:1 总 timestep | 2:1 相对开销 | 提交边数 |
|---|---|---|---|---|---|
| repetition d=3 | 12 / 13 | 298 (7.45/轮) | 196 (4.90/轮) | +52% | 21 vs 21 |
| repetition d=5 | 30 / 41 | 316 (7.90/轮) | 223 (5.58/轮) | +42% | 21 vs 21 |
| surface d=3 | 36 / 51 | 298 (7.45/轮) | 196 (4.90/轮) | +52% | 21 vs 21 |

复现：`python ref/compare_schedules.py --ncyc 40`

**结论**：2:1 调度用约 1.4–1.5 倍的 timestep 换取精度（论文：阈值几乎翻倍）；
两种调度的提交边**数量相同但配对方式不同**（rep d=3: 2:1 → {(4,10),(9,11),…}；1:1 → {(4,10),(5,11),(10,11),…}），
这正是论文所说"更平滑的簇形状"带来的精度差异来源。

### 3.2 精度对比（电路级噪声，表面码 d=3，100 shots —— 仅作趋势指示）

| 噪声 p | 2:1 逻辑错误 | 1:1 逻辑错误 |
|---|---|---|
| 0.004 | 1/102 | 4/102 |
| 0.006 | 2/102 | 3/102 |

趋势与论文一致（2:1 更准），但 **100 shots 的统计误差极大，不能作为定量结论**；
要复现论文 Fig.13 的阈值曲线需要 10⁵ 量级 shots（复现脚本：`ref/compare_accuracy.py`，
可用 `--samples/--p/--d` 调整）。

---

## 4. 波形查看（GUI）

* `run_gui.bat` —— 打开 xsim GUI，`gui_wave.tcl` 自动加载约 20 组信号（控制/协议、节点阵列打包总线、
  边阵列）并 `run all`。实测**无 skip、无 ERROR**。
* `open_wave.tcl` —— 在 Vivado GUI 的 Tcl Console 里打开已保存的 `tb_snow.wdb` / `tb_snow_wrap.wdb`。
* 推荐观察：`dut/obs_active`（哪些簇活跃）、`dut/obs_defect`（缺陷位置）、`dut/obs_growth`+`obs_ecorr`
  （边生长与纠错翻转）、`dut/dbg_stage`+`dbg_step`（五阶段与每阶段步数）、`commit_onehot`（提交事件）。

---

## 5. 三步后续工作的完成情况

| 步骤 | 状态 | 说明 |
|---|---|---|
| **1. 表面码（2D）** | ✅ 完成 | 生成器支持 `--code surface`（12 方向/对角边），surface d=3 逐拍 7832 行完全一致；d=5 图已生成（150 节点/285 边） |
| **3. 性能优化与对照** | ✅ 完成（精度部分仅趋势） | RTL 侧：2:1/1:1 两种调度都可跑且与参考逐拍一致；统计了 timestep 与提交配对差异；精度用 Monte Carlo 给出趋势（样本量受限，脚本已备） |
| **2. 层次化阵列 + Helios hub/leaf 多 FPGA** | ⚠️ 部分完成 | 已完成：把 `design/snowflake/*.sv` 作为可复用模块 + 干净的生成器驱动（图/方向/位宽/规模全部由生成文件决定，RTL 无硬编码）；生成器另外输出 `*_part.json`（节点→分区、跨分区边清单）供划分使用。**未完成**：把扁平核拆成"一层一个 leaf"的 PE 实例阵列 + hub 转发（跨分区连接改为显式端口） |

### 第 2 步剩余工作的具体方案（可直接照做）

1. **生成器**：在 `generate_snowflake.py` 中按 `node_part` 输出每个 leaf 拥有的节点/边清单，以及
   跨 leaf 的（节点状态、边状态）信号清单（派生出雪花的"叶间总线"宽度）。
2. **RTL**：把 `snowflake_core.sv` 中"读本地数组"的查表改成"本地数组 or 叶间输入总线"两路选择：
   `cid/grown/active/defect/whole/ptr`（节点状态）与 `growth/ecorr`（边状态）；DROP 时相邻 leaf 之间的
   状态下移也走同一总线（仿真中为组合连接，保持与 localuf 的 timestep 模型等价）。
3. **hub**：仿 Helios 的 hub/leaf 拓扑，实例化 N 个 leaf，把每个 leaf 的输出广播到需要它的 leaf；
   若要做真实多 FPGA 建模，可在 hub 上插入 Helios 的 `interconnection_model`/`serdes` 延迟模型
   （此时 timestep 数会增加，需要另立"物理时延"指标，而不是与 localuf 逐拍比对）。
4. **验证**：先用组合连接（零延迟）跑通并与现有黄金轨迹逐拍比对；再加延迟模型评估物理开销。

---

## 6. 与 Helios 的关系（哪些是真复用）

| Helios 资产 | 在 Snowflake 中的用途 |
|---|---|
| `parameters/parameters.sv` | 字节协议常量 `START_DECODING_MSG` / `MEASUREMENT_DATA_HEADER` |
| `design/generics/fifo_fwft.v`（`fifo_wrapper`） | 每轮输出字缓冲（`snowflake_wrapper`） |
| `design/channels/serdes.sv`（`serializer`） | 宽字 → 8bit 串行输出 |
| 架构：一节点一处理单元 + 全局阶段控制器 | `snowflake_core` 的结构与 `any_c_busy` 换阶段机制 |
| 架构：逐轮测量装载 / 窗口滑动 | `ST_DROP`（窗口状态下移一层 + 顶层注入） |
| 设计流程：`generate.py` → `design/generated/` | `generate_snowflake.py` → `design/generated/snowflake_graph*.svh` |

未复用：Helios 的 PE/图生成器本体（Snowflake 节点语义差异大，且 Helios scalable 生成器存在多驱动缺陷）。

---

## 7. 踩坑记录（复现时必须注意）

1. **批处理文件必须纯 ASCII**：`.bat` 里的中文注释会被 cmd 按本地码页解析成乱码命令，导致死循环。
2. **生成文件的哨兵值不能与真实 id 冲突**：Python 侧用 `-1`，发射为全 1；否则 d≥5 时会把真实节点当成"不存在"。
3. **生成文件需要 include guard**，且必须在 `module` 之前 include（$unit 作用域），否则端口宽度取不到常量。
4. **Verilog 函数要显式声明返回位宽**（`COMMIT_IDX` 曾因默认 1bit 而截断索引）。
5. **xsim 全设计 timescale 必须统一**：编译 Helios 的 `fifo_fwft.v` 时用 `xelab -timescale 1ns/1ps`。
6. **1:1 调度不要置 `grown`**：localuf 的 `grow()` 不碰该标志，只有 2:1 的 `grow_whole()` 才置。
7. **比对脚本的路径**：产物在 `snowflake_sim/run/rtl_trace.txt`，黄金轨迹在 `snowflake_sim/ref/`，
   参数可显式传入，避免比对到旧文件。
