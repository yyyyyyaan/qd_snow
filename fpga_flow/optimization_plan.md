# Snowflake-on-Helios 单 FPGA 优化方案（第 1/2/3 点 + PE 五阶段流水线结论）

> 状态：**待确认**。本文只描述方案与已经拿到的实测证据，确认后再动 RTL。
> 所有"实测"数据都来自本机 Vivado 2020.2（`D:\ycz\vivado\Vivado\2020.2`）与已通过逐行比对的
> localuf golden trace，证据文件见 `fpga_flow/logs/`。

---

## 0. 结论速览

| 你问的 | 结论 |
|---|---|
| 第 3 点（综合/布局布线/时序报告）能做到吗 | **能，而且已经跑通**：探针 6 个器件综合全部 OK；rep d=3/d=5/surface d=3 三个配置已完成 synth→place→route 并出时序报告（rep d3 WNS +0.805 ns / 780 LUT，surface d3 WNS −1.94 ns / 3587 LUT）。唯一坏消息是**论文用的 VCU129（xcvu29p）没有安装**，同代的 VU9P（VCU118）和 Helios 官方目标板 ZCU106（xczu7ev）都在 |
| 第 2 点（LUT/BRAM/FF 占用率） | 能做，第一批实测已在手：**65–100 LUT/节点**、19–22 FF/节点、0 BRAM/LUTRAM（状态全在 FF）。会给出归一化到"每节点/每条边/每轮 ns"的表，直接和 Helios 论文 d=21 的 898,715 LUT（≈92 LUT/节点）/ 11.5 ns 对比；flat 版只能外推到 d=7，d=21 需要 PE 阵列化（这就是外推要交代的边界） |
| 第 1 点（上下文切换） | 能做，但要先把"上下文切换到底买什么"说清楚：它买的是**面积/延迟折中**（n 个逻辑格点共享一套数据通路）和**I/O 停顿填充**，**不是**单格点吞吐。方案给了 3 种候选 + 选型 + 状态预算（实测：surface d21 每 context 仅 39 KB） |
| PE 内部五阶段做流水线有必要吗 | **不必要**，理由见第 5 节（数据相关变长迭代、流水寄存器要带整格点状态、1:1 模式有两个阶段根本不用、阶段间强顺序依赖）。该做的是 **V1 步内切分** 和 **V3 窗口间重叠**，判定标准是 **ns/round** 而不是 f_max |

---

## 1. 已经拿到的实测证据（本次会话）

### 1.1 器件 / license 探针（`fpga_flow/probe4_log.txt`，权威版）

> 教训记录：前两版探针用了 `synth_design ... -quiet`，**失败不会抛 Tcl 异常**，导致"全部 OK"的假阳性。
> `probe4.tcl` 去掉了 `-quiet`，并且额外校验 `get_cells` 非空。

| part | 是什么 | 已安装 | 综合 |
|---|---|---|---|
| `xcvu9p-flga2104-2L-e` | VU9P / VCU118，Virtex UltraScale+（与论文 VU29P 同代同族） | ✓ 35 个变体 | **OK** |
| `xczu7ev-ffvc1156-2-e` | ZCU106，**Helios README 与 `scripts/total.tcl` 的官方目标板** | ✓ 27 | **OK** |
| `xczu19eg-ffvc1760-2-i` | ZU19EG，大容量 MPSoC | ✓ 36 | **OK** |
| `xcku040-ffva1156-2-e` | KU040，小容量（验证"能不能塞进小器件"） | ✓ 28 | **OK** |
| `xc7z020clg400-1` / `xc7a100tcsg324-1` | Zynq-7020 / Artix-100T | ✓ | **OK** |
| `xcvu29p-fsvh2892-2-e` | **VCU129，论文器件** | ✗ 0 个 | — |

结论：**综合/实现/时序报告不受 license 阻塞**（环境里没有 `XILINXD_LICENSE_FILE`，说明用的是安装目录里的 license）。
论文绝对 LUT 数可以直接比（同族 UltraScale+）；占用率百分比用报告里给出的器件总量换算，不靠记忆里的数字。

### 1.2 阶段直方图（来自已通过逐行验证的 golden trace）

`T <cycle> <stage> <step>` 里 stage 记的是 `D/G/M`（drop / grow / merge）：

| 配置 | 12 轮总周期 | D | G | M | cycles/轮 | M/轮 | **flood/sync 切两拍后** | 需要多少倍频率才划算 |
|---|---|---|---|---|---|---|---|---|
| rep d=3 1:1 | 58 | 12 | 12 | 34 | 4.83 | 2.83 | 7.67 | **1.59×** |
| surface d=3 2:1 | 89 | 12 | 24 | 53 | 7.42 | 4.42 | 11.83 | **1.59×** |

（公式：2:1 → `(3+2M)/(3+M)`；1:1 → `(2+2M)/(2+M)`。这是第 5 节判定"要不要切分"的硬指标：
切分只加时钟数、不改算法语义，必须换来 >1.6× 的周期压缩才值得。）

另外：2:1 时 merging 占 **60%** 的周期（53/89）——这是第 1 点里"窗口间重叠能买到多少"的上界来源。

### 1.3 图形规模与状态预算（`build_scripts/generate_snowflake.py` 实测）

`状态 bit/context = NN×(CID_W+PTR_W+6) + NE×3`（6 = active/whole/defect/grown/unrooted/busy；边 3 = growth(2)+ecorr(1)）

| code | d | NN | NE | CID_W | PTR_W | NDIR | bit/context | ≈ |
|---|---|---|---|---|---|---|---|---|
| rep | 3 | 12 | 13 | 5 | 3 | 4 | 207 | 26 B |
| rep | 5 | 30 | 41 | 6 | 3 | 4 | 573 | 72 B |
| rep | 21 | 462 | 841 | 10 | 3 | 4 | 11,301 | 1.4 KB |
| surface | 3 | 36 | 51 | 7 | 4 | 12 | 765 | 96 B |
| surface | 5 | 150 | 285 | 9 | 4 | 12 | 3,705 | 0.45 KB |
| surface | 7 | 392 | 847 | 10 | 4 | 12 | 10,381 | 1.3 KB |
| surface | 21 | 9,702 | 26,061 | 15 | 4 | 12 | 320,733 | **39.2 KB** |

这条表是第 1 点的核心论据：**CS 的存储代价小到可以忽略**（d=21 每个上下文 39 KB，VU9P 有 75.9 Mb BRAM），
真正的代价在数据通路上的 `NCTX:1` 多路选择——所以 CS 的收益必须靠"数据通路复用"来挣，
这也正好是第 2 点要测的 **数据通路 : 状态 面积比**。

### 1.4 已经跑通的实现结果（VU9P / `xcvu9p-flga2104-2L-e`，OOC，目标周期 5 ns，布线后）

这是"第 3 点到底能不能做"的实证：synth → opt → place → phys_opt → route → 时序/资源报告全流程已跑通，
6 个配置的结果如下（完整表格由 `collect_results.py` 生成到 `util_report.md`）：

| 配置 | CLB LUTs | CLB Registers | BRAM | LUTRAM | WNS (5ns 目标) | 逻辑级数 | 达成周期 | f_max | LUT/节点 |
|---|---|---|---|---|---|---|---|---|---|
| rep d=3 2:1 | 780 | 224 | 0 | 0 | **+0.805（满足）** | 14 | 4.195 ns | 238 MHz | 65.0 |
| rep d=3 1:1 | 685 | 220 | 0 | 0 | **+1.153（满足）** | 11 | 3.847 ns | 260 MHz | 57.1 |
| rep d=5 2:1 | 2,569 | 588 | 0 | 0 | **+0.285（满足）** | 21 | 4.715 ns | 212 MHz | 85.6 |
| rep d=5 1:1 | 2,248 | 577 | 0 | 0 | **+0.312（满足）** | 22 | 4.688 ns | 213 MHz | 74.9 |
| surface d=3 2:1 | 3,587 | 799 | 0 | 0 | **−1.940（违例）** | **34** | 6.940 ns | 144 MHz | 99.6 |
| surface d=3 1:1 | 3,144 | 791 | 0 | 0 | **−2.073（违例）** | **35** | 7.073 ns | 141 MHz | 87.3 |

四个立刻可用的结论：

1. **重复码版轻松收敛**：rep d=3 反推 f_max ≈ 238 MHz，rep d=5 ≈ 212 MHz；flat 版目前不含任何 BRAM/LUTRAM，
   状态全在 FF 里（对 UltraScale+ 是好消息：VU9P 有 2,364,480 个 FF，d=3 只用了 224 个）。
2. **表面码版在 5 ns 下违例**（WNS −1.94 ns → 该路径实际需要 ~6.94 ns），
   且关键路径逻辑级数 34（rep 只有 14/21）——这正是 12 方向 flooding 比较 + 指针 + syncing + push 聚合串成的长链。
   **第 5 节的 V1/V2 因此不是空谈：surface 版有实测依据。**
3. **每节点面积 ≈ 100 LUT（surface d=3）**。论文 Helios d=21 = 898,715 LUT / 9702 节点 ≈ **92 LUT/节点**。
   也就是说 flat Snowflake 与 Helios 在同 d 下**面积同量级**，Snowflake 的"frugal"要赢必须从别处赢
   （ns/round、以及不需要 Helios 那套共享存储 S1–S4），这个结论会写进第 2 点报告。
4. **d=3 时 1:1 基线比 2:1 更小也更快**（685 vs 780 LUT；每轮 4.83 vs 7.42 拍）。
   2:1 调度的买点不在小 d 低 p，而在大 d / 高 p 下的收敛轮数——这一点必须如实写，不能只报 Snowflake 的好处。

### 1.5 已修复的问题（全部由"换配置去测"暴露，xsim 在原来的配置上都是通过的）

| # | 位置 | 问题 | 修法 |
|---|---|---|---|
| 1 | `design/snowflake/snowflake_core.sv` | 用 `d = NDIR;` 在 `for` 里提前跳出，Vivado 报 `loop condition does not converge after 2000 iterations`（综合直接失败） | 改成 `break;` |
| 2 | `build_scripts/generate_snowflake.py` | 生成的查表 `case` 无 `default`（Vivado INFO 8-155，属 don't-care 风险，可能导致仿真/综合不一致） | 每个生成的 `case` 补 `default:` 分支 |
| 3 | `build_scripts/generate_snowflake.py` | `SNOW_SYN_NODE` 里硬编码 `5'd{nid}`，d≥7 时节点号 >31 会被截断 | 改为按实际位宽的数字位宽 `{nw}'d{nid}`（注意 `SNOW_NW'd{}` 这种"位宽用标识符"的写法 Vivado 不接受，实测报 `syntax error near 'd`） |
| 4 | `build_scripts/generate_snowflake.py` | `SNOW_CID_DELTA` 硬编码 4 位宽，surface d≥5 / rep d≥13 的 cid 步长会被截断（xsim 报 `literal truncated to fit in 4 bits`） | 位宽按实际步长值推导 |
| 5 | `design/snowflake/snowflake_core.sv` | `assign all_busy = \|busy;` 对**非打包数组**做归约，xsim 报 `illegal operand for operator \|` | 改成显式 for 循环 OR |
| 6 | `test_benches/snowflake/tb_snowflake_core.sv` | 激励表声明成 `[15:0]`，而 surface d=5 有 **20** 个探测器 → 读 `rounds[cyc][19:0]` 时高位读出 `x`，污染 defect 标志（这是唯一被抓到的**功能性**失败） | 激励表宽度改为 `SNOW_NSYN` |

配套把验证流程工具化：

- `snowflake_sim/run/regress.bat <rep|surface> <d> [1:1]`：一条命令跑完 **生成 graph → localuf 出 golden → xsim → 逐行比对**，失败返回非零退出码；
- `run_core.bat` 增加"先删除旧 `rtl_trace.txt`"（之前踩过 stale trace 导致假 PASS/假 FAIL 的坑）；
- `compare_trace.py` 输出 `REGRESS_VERDICT PASS/FAIL` 并返回退出码。

回归结果（`fpga_flow/logs/regress_summary.txt`）：**6 个配置全部 PASS，最大规模到 surface d=5（40112 行状态）**

| 配置 | 状态行数（golden = RTL） | 提交事件 |
|---|---|---|
| rep d=3 2:1 | 2314 | 6 |
| rep d=3 1:1 | 1508 | 6 |
| surface d=3 2:1 | 7832 | 6 |
| surface d=3 1:1 | 5104 | 6 |
| rep d=5 2:1 | 6624 | 4 |
| **surface d=5 2:1** | **40112** | 4 |

### 1.6 一个必须写进结论的运行时间发现

**flat 版（全部节点展开在一个模块里）的规模上限很低**：综合 rep d3 约 1 min、surface d3 约 2 min、
surface d5 **27 min**，而 surface d5 的布局布线在 35 min 后仍停在 `Phase 2 Global Placement`（已终止）。
也就是说：flat 版可以做到 d=5 的面积数字，但 d≥5 的实现级时序/面积只能靠"仅综合"或外推，
真正的可量产形态必须是 PE 阵列化（generate 循环 + 每 PE 独立状态 + 邻居短连线），
这和第 5 节 V4 的方向一致，也是 d=21（9702 节点）唯一可行的路。

### 1.7 实测标度律：面积线性于**边数**（并修正一个我先前的错误推断）

把综合结果按每边归一化后，规律很清楚（`fpga_flow/results.csv`）：

| 配置 | NN | NE | LUT | LUT/节点 | **LUT/边** | NE/NN |
|---|---|---|---|---|---|---|
| rep d=3 | 12 | 13 | 825 | 68.8 | **63.5** | 1.08 |
| rep d=5 | 30 | 41 | 2579 | 86.0 | **62.9** | 1.37 |
| rep d=7 | 56 | 85 | 5556 | 99.2 | **65.4** | 1.52 |
| surface d=3 | 36 | 51 | 3379 | 93.9 | **66.3** | 1.42 |
| surface d=5 | 150 | 285 | 20983 | 139.9 | **73.6** | 1.90 |

**面积 ≈ 63–74 LUT/边，基本恒定**；"每节点面积随 d 变大"只是因为大 d 时平均度数变大（NE/NN 从 1.4 → 1.9）。
用这个规律外推 surface d=21（NE=26061）：**≈1.77M LUT ≈ 182 LUT/节点**，
而论文 Helios d=21 是 898,715 LUT ≈ 92 LUT/节点、34.5 LUT/边 ——
**flat 版每边成本约为 Helios 的 2 倍**，原因是 flat 把每个节点的 12 方向逻辑全部展开、邻居靠长连线，
而 Helios 是"每节点一个 PE + 短连线 + 小 RAM 状态"。

> 更正：本文档早先根据一个三参数拟合写过"存在 O(N²) 写交叉开关、占 surface d5 的 43%"。
> 那个拟合的基函数（NN、NE、NN·NDIR）之间高度共线，得到的二次项是假象。
> 随后实现的 M3 局部化（见 5.3）实测只降了 **−4.9%（surface d3）/ −3.7%（surface d5）**，
> 与"线性于边数"的规律一致，因此以本节为准。

结论：**Snowflake 的"frugal"在 flat RTL 上并不体现为面积优势**（约 Helios 的 2 倍），
它的价值必须从"轮数 × 周期"、"不需要 Helios 那套共享存储 S1–S4"、
以及算法层面的 frugal 性质来论证；要谈面积对等，PE 阵列化是前提。



---

## 2. 第 3 点方案：Vivado 综合 / 实现 / 时序报告

### 2.1 两条流程，两个用途

| 流程 | 命令要点 | 用途 |
|---|---|---|
| **OOC 综合**（主） | `synth_design -top snowflake_core -part <P> -mode out_of_context -flatten_hierarchy none` | 单位面积/单位时序基线：不受 IO 摆布影响，得到"每节点 LUT / 每边 FF"这类可外推的数 |
| **实现级**（opt→place→phys_opt→route） | `opt_design; place_design; phys_opt_design; route_design` | 真实 f_max、WNS/TNS、逻辑级数、拥塞、功耗；产出 routed checkpoint 供 GUI 查看 |
| **系统级** | 顶层换成 `snowflake_wrapper`（内含 Helios 的 `fifo_fwft.v` + `serdes.sv`），配真实时钟与（可选）ZCU106 引脚约束 | 板级可实现的 f_max 与 BRAM/FIFO 占用；证明 Helios 代码仍在编译链里 |

### 2.2 脚本与文件（新增，不动 Helios 原有脚本）

```
fpga_flow/
  run_ooc.tcl          # 参数化：PART / PERIOD / TAG / TOP，跑 synth→opt→place→route→报告→dcp
  run_all.ps1          # 扫描驱动：config × part × period 串行（一次一个 Vivado 进程）
  sweep_period.tcl     # 周期扫描：5ns 起步 → 读 logic levels & WNS → 1.05×f_max 复跑确认
  netlist_regress.tcl  # write_verilog 门级网表 → 同一 TB 跑 xsim → 与 localuf golden 逐行比对
  open_impl_gui.tcl    # open_checkpoint + start_gui，附 report_timing 交互命令
  xdc/snowflake_ooc.xdc        # create_clock / input_delay / output_delay（每次运行由脚本按 period 生成）
  xdc/zcu106_system.xdc        # 板级引脚（可选，仅在需要板级 f_max 时）
  logs/  reports/  util_report.md  timing_report.md
```

`run_ooc.tcl` 已经写好雏形（`fpga_flow/smoke_impl.tcl`），当前正在跑 d=3/5 的 4 个配置做冒烟。

### 2.3 报告清单（每次实现都出，全部落盘）

- `report_utilization -hierarchical`（综合后 + 布线后两份）
- `report_timing_summary -delay_type max -max_paths 20`（WNS/TNS/WHS、时钟、路径分组）
- `report_timing -max_paths 20 -input_pins`（关键路径逐级）、`report_design_analysis -logic_level_distribution`（逻辑级数分布 → 判断该不该切流水）
- `report_power`、`report_drc`、`report_clock_utilization`
- routed `.dcp` + `write_verilog` 网表

### 2.4 怎么看结果（承接你之前问的"结果我怎么自己看"）

1. **不想开 GUI**：直接看 `fpga_flow/reports/timing_<tag>.rpt` 里的 `WNS`/`TNS` 和 `Slack (MET/VIOLATED)`；
   `util_route_<tag>.rpt` 里 `CLB LUTs / CLB Registers / Block RAM Tile / RAMB36 / URAM` 的 `Used / Available / Util%`。
2. **想开 GUI 看关键路径**：`vivado -mode gui -source fpga_flow/open_impl_gui.tcl`（脚本里 `open_checkpoint` 后用
   `start_gui`，自动打开时序路径高亮），也可以在 GUI 里 `report_timing -max_paths 20 -input_pins -file ...`。
   和之前的波形 GUI 脚本（`snowflake_sim/run/run_gui.bat`）是并列的两套 GUI 入口。

### 2.5 必须补的一步：门级回归（防止"综合把语义改了"）

综合/实现最容易悄悄改语义：x 传播、位宽截断、latch 推断、`case` 默认分支。方案：
`write_verilog` 出网表 → 用**同一个** `tb_snowflake_core.sv` 跑 xsim → 用现成的 `compare_trace.py` 与 localuf golden
逐行比对。d=3 级别只要几十秒，性价比极高；post-route 网表版本可选（慢，且 SDF 时序仿真暂不做）。

### 2.6 目标器件策略与运行时间预算

| 优先级 | 器件 | 理由 |
|---|---|---|
| 主 | `xcvu9p-flga2104-2L-e` | 与论文 VU29P 同族同代，绝对 LUT 数可直接对比；容量足够跑大 d 的面积外推 |
| 副 | `xczu7ev-ffvc1156-2-e` | Helios 官方目标板（ZCU106），给"板级可实现"的数 |
| 拟合 | `xcku040-ffva1156-2-e` | 小器件对照：Snowflake 这种"省面积"的卖点能不能落到小板子上 |

时间预算（VU9P，OOC）：d=3 每配置 2–5 min；d=5 5–15 min；d=7 flat 可能 30–60 min（150→392 节点，组合展开大）；
d=21 flat **不可实现**（9702 节点展平 = 千万级 LUT），d=21 只能走"每节点 LUT × NN"的外推或 PE 阵列化版本。

### 2.7 风险

- VCU129 缺失 → 用 VU9P 替代并显式声明；论文百分比若要对齐需按 VU29P 资源总量换算（用报告里的器件总量，不靠记忆）。
- flat 版 d≥7 综合时间长/内存大 → 限制在 d≤7 做拟合，并标注外推区间。
- 多驱动/未定义信号（之前 Helios 单 FPGA 顶层 `PU(1,1,k).EAST` 的坑）在实现阶段**不会报错**，只会 x 传播 → 靠 2.5 兜住。

---

## 3. 第 2 点方案：LUT / BRAM / FF 占用率分析

### 3.1 扫描矩阵

`code ∈ {rep, surface} × d ∈ {3,5,7} × schedule ∈ {2:1, 1:1} × NCTX ∈ {1,(2)} × DEBUG_OBS ∈ {on,off} × {OOC, 系统级}`
（约 20–30 次综合；实现级只跑代表点：surface d=5 2:1 与 rep d=5 2:1，VU9P + ZU7EV）

### 3.2 归一化指标（这才是能下结论的量）

| 指标 | 定义 | 用途 |
|---|---|---|
| LUT/节点, FF/节点 | 总量 ÷ NN | 与 Helios 的"每 PE"面积对比；外推到 d=21 |
| LUT/边, BRAM(或 LUTRAM)/节点 | 总量 ÷ NE / NN | 判断边存储（growth+ecorr）是否成为瓶颈 |
| **LUT·ns/round** | LUT × cycles/round × 周期 | 单指标综合面积与速度；越小越好 |
| **ns/round** | 与 Helios 论文 11.5 ns/round（d=21 phen）对比的主指标 | 兼容"Snowflake 用更多轮数换面积"的本质 |
| 数据通路 : 状态 面积比 | 用 `-hierarchical` 拆 `c_cid/ptr/…` 与合并逻辑 | **直接喂给第 1 点的 CS 决策** |

### 3.3 三个必须交代的对照

1. **Helios 基线（同器件实测）**：把 `design/wrappers/single_FPGA_decoding_graph*.sv` + `design/pe/processing_unit.sv`
   在 VU9P 上综合（面积、不需要功能正确），得到"Helios 每 PE 多少 LUT / 多少 FF"，与我的 Snowflake PE 同表比较。
   论文数字（d=21 phen 898,715 LUT @100 MHz、11.5 ns/round；sliding window d=13 371K LUT、194→230 ns）作为外部锚点。
2. **调试开销**：`obs_cid/obs_ptr/obs_growth/…` 是纯观察总线（`NN×CW + NN×PTR_W + NE×2` 位），
   在真实设计里应该时分复用到 32 位调试口。给出 DEBUG_OBS=off 的面积差 → 这是可以直接写进结论的可优化项。
3. **flat vs 参数化**：flat 版让综合器看到全部节点、可能跨节点共享逻辑，因此 LUT/节点 是**下界**；
   真正的量产形态是 PE 阵列（generate 循环 + 每 PE 独立状态）。报告里明确区分，不拿 flat 数当阵列数。

### 3.4 外推与验证

用 d=3/5/7 三点拟合 `LUT ≈ a·NN + b·NE + c·CW(+d·NDIR)`，检查残差是否线性；再用 d=9 抽验一次。
预测 d=21 surface 的 LUT 总量并与 Helios 898,715 LUT 比较 —— 若预测值远大于 Helios，就应如实写出
"flat 展开不是可量产形态，PE 阵列化是必须的下一步"，而不是硬报一个漂亮数字。

### 3.5 交付物

`fpga_flow/util_report.md`（表 + 结论）、`fpga_flow/util_data.csv`（原始数）、`fpga_flow/timing_report.md`。

---

## 4. 第 1 点方案：上下文切换（CS）

### 4.1 先把"CS 买什么"说清楚（避免方案变成玄学）

| 目的 | CS 能不能买到 | 说明 |
|---|---|---|
| **A. 面积/逻辑格点**（Helios-n 原义） | **能，这是主要收益** | n 个逻辑格点（或 n 倍码距）共享一套数据通路：面积 ≈ 1× 数据通路 + n× 状态 + n:1 多路选择。第 2 点会给出数据通路 : 状态的实测比值，这个比值直接决定收益上限 |
| **B. 单格点吞吐（rounds/s）** | **不能**（默认假设下） | 一条共享数据通路每周期只能推进一步，一轮的总步数不变；除非数据通路本来在空转（见 C） |
| **C. I/O 停顿填充 / 抗长 cluster 卡顿** | **能，需要实测支撑** | 真实流式系统里 syndrome 到达率固定、或某个窗口被跨窗口 cluster 卡住时，另一个上下文可以继续推进 → 聚合吞吐提升。测"停顿比例"而不是只报最好情况 |
| **D. 延迟** | **变差 n 倍** | round-robin 下每个格点的一轮延迟 ×n（这正是 Snowflake"省面积、多轮数"哲学的延伸，但要在方案里写明） |

### 4.2 三个候选与选型

- **候选 A（先做）：窗口级时间复用 NCTX=2/4。** 同一格点的连续窗口 / 相邻轮次共享数据通路；
  一个窗口在 merging 长跑时，另一个窗口做 DROP/GROW/装载。语义完全不变，改动集中在状态数组与控制器。
- **候选 B（后续）：Helios-n 式逻辑格点复用。** 真正把 PE 阵列按格点分时复用；需要先有 PE 阵列化版本
  （即之前推迟的"分层 PE 阵列"），因为 flat 版做 B 收益最小、多路选择代价最大。
- **候选 C（备用）：可抢占的合并单元。** 把 merging 做成可切换任务，多个 cluster 合并轮转；改动最大、语义最容易出错，只在 A/B 都不够时再考虑。

### 4.3 RTL 改动清单（以候选 A 为准）

1. `snowflake_core.sv` 加参数 `NCTX`，状态数组加一层 `[NCTX]`（或把 `cid/ptr/flags` 合成一条 `state_mem` 用 `ctx_id` 做地址高位）；
2. 每个上下文一套 `stage/step_cnt/step_state` + 独立的 syndrome 输入缓冲 + 独立的 commit 输出缓冲；
3. 仲裁器：每周期从 ready 掩码里 round-robin 选一个上下文推进（drop/grow 恒 1 拍；merging 每拍都能推进；
   等输入/输出满时让出），保证无饥饿；
4. **commit 顺序性**：每个上下文独立输出通道（或在 wrapper 输出字节流里加 `ctx_id` 标签），
   由 wrapper 负责按每个格点的窗口顺序拼接——绝不能把不同上下文的 commit 混在一个流里；
5. 观察总线 `obs_*` 加 `ctx_id` 过滤（调试用），避免不同上下文状态混显。

### 4.4 度量与验收（三场景）

| 场景 | 做什么 | 报什么 |
|---|---|---|
| S1 面积 | NCTX=1 vs 2 vs 4 综合 | LUT/FF/BRAM 增量 → **每上下文成本**、**每逻辑格点面积**（n 份 NCTX=1 vs 1 份 NCTX=n） |
| S2 延迟/吞吐 | 同样的 12 轮流，统计 rounds/s 与 busy 占比 | rounds/s（聚合）、单格点延迟 ×n、数据通路利用率 |
| S3 停顿填充 | 构造输入受限流（syndrome 间隔加大）+ 长 cluster 卡顿 | 停顿周期占比、NCTX=2 恢复后的吞吐、卡顿容忍度 |
| 正确性 | NCTX=2/4 交织后的 commit 流 | 与 NCTX=1 逐上下文 golden **逐行一致**（扩展现有 `compare_trace.py`，加 ctx 维） |

### 4.5 诚实的风险与量化预算（已用实测结账）

flat 版的邻居状态是"线"，CS 后变成"LUTRAM 读 + NCTX:1 多路选择"，**LUT/LUTRAM 会涨、路径会变长**；
所以候选 A 的结论很可能是"面积收益成立、时序变差"，这时正确答案是顺势转候选 B（PE 阵列，邻居是短连线、状态在小 RAM 里），
而不是硬把 CS 塞进 flat 版。方案里把这条写成预设结论，用数据确认。

量化预算（用 §1.3/§1.4 的实测数）：

| 量 | surface d=21 估算 | 说明 |
|---|---|---|
| 数据通路（要被复用的部分） | ≈ 1.77M LUT（按实测 68 LUT/边 × 26061 边） | CS 省下来的就是这个 ×(n−1) |
| 每 context 状态 | ≈ 320k bit ≈ 320k FF | 实测 flat 版状态全在 FF、BRAM/LUTRAM 用 0 |
| NCTX=2 / 4 的额外 FF | +320k / +960k FF（VU9P 共 2.36M FF，占 13.6% / 40.7%） | 若综合器把它映射成 LUTRAM 则转成 LUTRAM 压力，要单独报 |
| 理论结论 | 状态 : 数据通路 ≈ 1 : 3 | 这是"PE 阵列形态下值得做"的定量理由 |

**实测结果（M4 已完成，见 `optimization_report.md` 第 4 节）**：

| 构建（surface d=3，布线后） | LUT | FF | 达成周期 |
|---|---|---|---|
| 单上下文核心 | 3410 | 793 | 6.618 ns |
| CS 原型 NCTX=1（纯重构开销） | 3852 (+13%) | 795 | 5.885 ns |
| CS 原型 NCTX=2 | **6327** | 1626 | 8.142 ns |
| 两个独立核（算术） | 6820 | 1586 | — |

即：**flat 形态下 CS 只省 7%（surface）/9%（rep），延迟翻倍，周期还变差** →
预设结论被证实：**CS 必须在 PE 阵列形态下做**（每 PE 小 RAM + context 当地址位），
在那里"一份数据通路 + n 份状态"才不用付全设计的宽多路选择代价。
另外 CS 的**功能正确性已经逐行验证通过**（NCTX=2 两个 context 各自与 localuf 逐行一致）。


---

## 5. PE 内部五阶段要不要做流水线

### 5.1 结论：**不要做五级流水线**

1. **五个阶段不是等长流水段，而是数据相关的迭代循环。** 只有 MERGING 是多拍，且拍数 = cluster 在窗口里的直径
   （实测 surface d=3 平均 4.42 拍/轮，d 越大越多，最长可到整个窗口高度）。变长迭代无法被固定深度流水线吸收，
   只能靠停顿；一停顿，流水寄存器就白拿面积。
2. **流水寄存器要携带整个格点状态。** 每加一级就是一份全状态（surface d=21：9702 节点 × 25 bit ≈ 30 KB + 26061 边 × 3 bit）。
   5 级 ≈ 4 份额外状态寄存器——面积代价远超收益。Helios 的答案本来就是**空间并行（每节点一个 PE）+ 时间并行（滑动窗口）**，
   而不是 PE 内部深流水；我的实现沿用同一路子。
3. **有两个阶段在某些调度下根本不执行。** 1:1 调度只走 `DROP → GROW → MERGING`，
   `GROW_HALF / MERGING_HALF` 全程空转 → 为"五阶段"配固定流水线，等于让 40% 的流水段闲置。
4. **阶段间是强顺序依赖**（drop→grow→merge→grow_half→merge_half），同一轮内没有可重叠的独立工作，
   流水线只增加延迟、不增加吞吐。

### 5.2 但要做这四件事（按性价比排序）

| 变体 | 做什么 | 代价 | 收益 | 何时采用 |
|---|---|---|---|---|
| **V1 步内切分** | flooding → 寄存器 → syncing（语义合法：syncing 消费的就是本步 flooding 产生的指针） | 每轮周期 ×1.59（实测，见 1.2） | 关键组合链被切成两段，周期可能减半 | **仅当** WNS 报告显示 merging 链是瓶颈，且周期压缩 >1.6× |
| **V2 比较树/归约重定时** | 12 方向比较器平衡成树；`busy` 的 OR 归约单独一级；不改语义 | 接近 0（只是写法/属性） | 通常 20–40% 周期改善 | 默认做，先做 V2 再评估 V1 |
| **V3 窗口/轮间重叠** | drop/grow 只依赖已提交层与输入流，不依赖 merging 内部状态 → 两个窗口并行推进 | 状态 ×2（d=21 仅 39 KB/context，便宜） | 把 merging 单元占用率从 ~60% 拉向 ~100%（上界 1.67×） | **推荐**，这就是"流水线"的正确形态，与第 1 点候选 A 是同一套机制 |
| **V4 空间切分** | 奇/偶节点子集或上下半区拆成两个物理单元，边界交换 | 面积 ×2（或按分区数） | 吞吐 ×分区数 | 与 Helios 的 PE 阵列化同向；deferred |

### 5.3 M3 具体要动哪里（已由 surface d=3 的关键路径报告定位）

`logs/timing_paths_surface_d3_2to1_xcvu9p.rpt` 的第一条违例路径给出了确切答案：

```
Slack (VIOLATED) : -1.940ns
Source:      cid_reg[25][1]        <-- 一个 CID 状态位
Destination: defect_reg[31]/D      <-- 一个 defect 状态位
Data Path Delay: 6.922ns (logic 3.295ns = 48%, route 3.627ns = 52%)
Logic Levels: 34  (CARRY8=6 LUT2=1 LUT4=11 LUT5=1 LUT6=15)
```

也就是：`cid → 比较器(CARRY8) → 指针选择 → 沿指针取邻居 active → push → 写 defect` 这条链，
其中**一半延迟是布线**。原因很清楚：`apply defect pushes` 那两句

```systemverilog
c_defect[push_to[n]] = c_defect[push_to[n]] ^ 1'b1;   // push_to[n] 是变量索引
c_ecorr[push_dir[n]] = c_ecorr[push_dir[n]] ^ 1'b1;
```

综合出来是一个**全局写入交叉开关**（每个节点都可能写到任意节点/任意边），既有面积也有深度，
而它本来只需连接"邻居"——这正是 PE 阵列做法能赢的地方。

因此 M3 按下面的顺序做（前两步不动语义、不增加周期）：

| 步骤 | 改动 | 语义 | 周期代价 | 预期收益 |
|---|---|---|---|---|
| **V2a** | 把 push 的写入改成**局部反向读**：节点 n 的 defect 翻转 = `OR_{m∈邻居(n)} (det_def[m] && c_ptr[m]!=C && NB(m,PTR2DIR(c_ptr[m]))==n)`，彻底去掉变量索引写 | 完全等价（push 只能来自邻居，因为指针只指邻居） | 0 | 去掉交叉开关，面积与深度都降；布线段（52%）显著缩短 |
| **V2b** | `c_ecorr[e]` 同样局部化：边 e 被翻转 = 它的两个端点里有人指向 e | 等价 | 0 | 同上 |
| **V2c** | min-cid/方向选择写成**平衡比较树**，并保持"同 cid 时取方向序在前者"的优先级（与 localuf 的遍历顺序一致） | 等价 | 0 | 34 级里 6 个 CARRY8 的比较链变浅 |
| **V1** | 若 V2 仍不够：把每个 merging 拍切成两拍（第一拍 flood+sync，第二拍应用 push），**并让 TB 只在每个算法步的第一拍打 trace**，从而保持与 localuf 的逐行可比性 | 等价（只是把一拍拆两拍） | ×1.54–1.62（实测 split_factor） | 需要周期压缩 >1.6× 才回本（surface d3：6.94 → <4.37 ns） |
| **V3** | 窗口/轮重叠（=第 1 点候选 A），收益来自重复利用空闲拍 | 等价 | 0（吞吐提升） | merging 占 60% 周期 → 上界 1.67× |

实施约定：每一步改完都必须跑 `regress.bat`（rep d3 / surface d3 / surface d5 三个配置），
再用同一个 `sweep.ps1` 重测 `ns/轮 = cycles/轮 × 达成周期`，与本节表格里的基线逐项对比。

### 5.5 M3 实测结果（已实现、已逐行回归、已综合与布线）

所有改动都先过 `regress.bat`（rep d3 / surface d3 / surface d5 逐行 PASS），再用 5 ns 目标跑实现：

**surface d=3 2:1（VU9P，布线后）**

| 变体 | LUT | FF | WNS | 达成周期 | f_max | 关键路径级数 | cycles/轮 | **ns/轮** |
|---|---|---|---|---|---|---|---|---|
| V0 基线 | 3587 | 799 | −1.940 | 6.940 ns | 144 MHz | 34 | 7.42 | 51.5 |
| **M3** 局部化 push（V2a/V2b，零周期代价） | 3410 (−4.9%) | 793 | −1.618 | 6.618 ns (−4.6%) | 151 MHz | **26** | 7.42 | **49.1 (−4.7%)** |
| **M3+V2d** registered busy（+1 拍/合并相） | 3233 (−9.9%) | 780 | **−0.227** | **5.227 ns (−24.7%)** | **191 MHz** | 26 | 9.42 (+27%) | 49.2 (−4.5%) |

**rep d=3 2:1（VU9P，布线后）**

| 变体 | LUT | FF | WNS | 达成周期 | f_max | 级数 | cycles/轮 | ns/轮 |
|---|---|---|---|---|---|---|---|---|
| V0 基线 | 780 | 224 | +0.805 | 4.195 ns | 238 MHz | 14 | 4.83 | 20.3 |
| M3 | 791 | 224 | +0.778 | 4.222 ns | 237 MHz | 14 | 4.83 | 20.4 |
| M3+V2d | 729 (−6.5%) | 224 | +1.403 | 3.597 ns (−14%) | 278 MHz | 13 | 5.83 (+21%) | 21.0 |

结论（诚实版）：

1. **M3 是纯赚**：surface 版面积 −4.9%、关键路径 34 → 26 级、周期 −4.6%、**零周期代价**，
   因为局部化 push 只是把"变量索引写状态数组"换成"邻居反向读"，语义完全不变。
   rep 版几乎不变 —— 说明它是为**高度数**的表面码设计的（rep 只有 4 个方向）。
2. **V2d 是"频率换轮数"**：周期再降 21%（累计 −24.7%），但同时每轮多 2 拍（+27%），
   在 d=3 上 ns/轮 刚好打平。它的价值应随 d 增长：多出来的 2 拍是**常数**，
   而 OR 归约的扇出/布线随 NN 线性增长（surface d5 的 synth 周期 V0 15.07 ns → M3 12.23 ns 已见端倪）。
3. 所以对"PE 五阶段要不要流水线"的最终回答：
   **不要五级流水线，要做"控制路径/步内"的定向寄存器切割**，并且必须用 **ns/轮** 结账——
   凡是只报 f_max 的方案都会把 V2d 这种"频率换轮数"误判为胜利。
4. 还留着一个明确可做的改进（未实现，供后续）：V2d 多出来的那一拍是**可证明的空拍**
   （`any_c_busy == 0` 时状态不变），可以改成"用这一拍执行下一阶段（GROW_HALF）"的 lookahead FSM，
   从而把 +2 拍/轮收回、同时保留短 CE 路径；代价是 trace 约定要相应调整（TB 需为跳过的空拍补一行）。

### 5.4 判定规则（一切以数据说话）统一用 **ns/round = cycles/round × 时钟周期** 评价，不用 f_max。
第一批判据已经拿到（§1.4）：surface d=3 的关键路径 = **6.94 ns、34 级逻辑**（rep 只有 14/21 级、5 ns 内收敛）。

1. 先跑 V0（现状）与 V2（比较树/归约重定时，零周期代价），拿到 WNS + logic levels 分布；
2. 若关键路径仍在 merging 链且级数显著高于其他路径（surface 已经是这种情况）→ 做 V1 步内切分，复测 ns/round；
   **收支平衡点**：surface d3 需从 6.94 ns 压到 < 6.94/1.59 = **4.37 ns** 才划算；达不到就退回 V2+V3；
3. 无论 V1 结果如何，做 V3（窗口重叠），因为它的收益来自"占用率"而不是"频率"，两者叠加；
4. 目标锚点：Helios 论文 d=21 phenomenological = **11.5 ns/round**、898,715 LUT（≈92 LUT/节点，
   我的 surface d=3 实测 ≈100 LUT/节点，**面积已同量级**）。最终表里同时给 `ns/round` 和 `LUT`，
   按"同等 ns/round 下谁的 LUT 少"给结论，而不是只报频率。

---

## 6. 执行顺序（里程碑）

| 里程碑 | 内容 | 预估 |
|---|---|---|
| M0 | 把 smoke 流程固化成 `run_ooc.tcl` + period sweep + 门级回归；出 rep/surface d=3/5 基线表 | 0.5 天 |
| M1 | 第 2 点完整扫描（含 Helios 基线综合）+ 拟合外推 + `util_report.md` | 1–2 天 |
| M2 | 第 3 点实现级流程（VU9P 主 + ZU7EV 副）+ 时序报告 + GUI 脚本 + 关键路径分析 | 2–3 天 |
| M3 | V2 重定时；按报告决定是否做 V1 步内切分；复测 ns/round | 2–3 天 |
| M4 | 第 1 点候选 A（NCTX=2/4）+ 三场景度量 + 交织正确性回归 | 3–5 天 |
| M5 | 汇总 `fpga_flow/optimization_report.md`（所有表格、结论、下一步建议） | 0.5 天 |

## 7. 交付物

- `fpga_flow/optimization_plan.md`（本文）
- `fpga_flow/run_ooc.tcl`、`run_all.ps1`、`sweep_period.tcl`、`netlist_regress.tcl`、`open_impl_gui.tcl`、`xdc/*.xdc`
- `design/snowflake/snowflake_core.sv`（加 `NCTX`、`DEBUG_OBS`、可选的 `PIPE` 变体参数）
- `fpga_flow/util_report.md`、`timing_report.md`、`optimization_report.md`、`util_data.csv`、`logs/`、`reports/`、`*.dcp`
- 仿真侧复用：`snowflake_sim/ref/compare_trace.py`（加 ctx 维）

## 8. 需要确认的点

1. **器件优先级**：VU29P 没装，建议主用 **VU9P（VCU118）**、副用 **ZU7EV（ZCU106，Helios 官方板）**，可以吗？
2. **是否顺带把 Helios 自己的 PE 阵列在同一器件上综合一遍做基线**（多花约 0.5 天，但对比表的说服力完全不同）？
3. **CS 的 NCTX 先做 2 还是 2/4 都做**（建议先 2，S1/S2/S3 数据出来再决定要不要 4）？
