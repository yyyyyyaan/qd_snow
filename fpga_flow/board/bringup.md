# Z-7020 上板说明（bring-up）—— Snowflake 流式 UF 译码器

> 本文件是**上板作业书**：板子一到就照这个顺序做。它不是"读一读"的文档，
> 里面的每一条契约都有对应的实测证据（列在每节末尾）。
>
> **状态（2026-09-24）**：PL 侧全部完成并**已在不含 PS 的仿真里逐行验收**
> （D8 的数据通路部分）；**板级 XDC / PS7 block design 仍未做**，因为需要板厂资料
> （型号 / 原理图 / MIO-DDR 配置），见 §6。

---

## 1. 复位契约（第一条，也是唯一一条不能忘的）

**结论：PL 自己保证复位，PS 不需要、也无法忘记拉复位。**

- state bank **没有 `initial` 上电镜像**（设计文档 §4.9 / 报告 §6.24 的教训）：
  `snowflake_pe_array_lat1.sv` 里的**逐槽位时钟复位是唯一的预置路径**。
  上电后若没有一拍 `reset`，阵列会从 FF 的 INIT=0 起跑，而那不是译码器要求的初值。
- 现在这条要求是**结构性**的：`design/board/snowflake_reset_sync.sv` 把
  `pl_reset_in`（POR / PROG 按键 / PS `pl_resetn`）同步后**拉长到 `LEN` 拍**，
  而且**阵列的 `reset` 引脚只由它驱动**（板级顶层不把 reset 暴露给外部）。
- `LEN` 默认 16 拍（50 MHz 下 320 ns）。**实测 `LEN=1` 就够**（§5 的扫描）。
- 计数器上电为 0（`INIT=0`），所以**即使外部完全不拉复位**，核心也会自己复位
  `LEN` 拍——这是"板子忘不了"的原因。仿真里看不到这一条（RTL 从 X 起跑），
  它是硅的性质，见 `snowflake_reset_sync.sv` 头部注释。
- **复位分两条**（都同步、同一时钟域）：
  | 信号 | 来源 | 谁被它复位的 | 为什么这样分 |
  |---|---|---|---|
  | `bus_rst` | `pl_reset_in` 同步后的**电平**（不拉长、不受 `sw_reset` 影响） | AXI 寄存器堆 / FSM | 核心在复位期间 **STATUS 仍然可读**，PS 才能轮询 `STATUS[4]` |
  | `core_rst` | `snowflake_reset_sync` 拉长 | 阵列 + trace capture + 所有寄存器/计数器 | 唯一能保证 ≥LEN 拍的路径 |
- **软件侧流程**：上电后**只需**在开始时等 `STATUS[4]==0`，然后照 §3 跑。软件不要写
  `CTRL.SW_RESET`（写了也没关系：它同样走拉长路径）。

## 2. 时钟契约

- **单时钟域，无 CDC**。`clk` 是 PL 里唯一的时钟；板上用 **PS 的 `FCLK_CLK0`**，
  它同时给 `M_AXI_GP0` 计时，所以 AXI 通路**不需要 clock converter**。
  这正是 trace 要放在 PL 里抓、而不是让 PS 逐拍轮询 `obs_*` 的原因。
- 唯一的异步输入是 `pl_reset_in`（在 PL 内同步；见 §1）。
- **频率怎么定**：不要照抄 D1 的 6.5 ns（那是 VU9P 口径）。用**本板实测**的
  `Fmax` 反推，留 `WNS ≥ 0`：

  | 配置 | 板载实测周期（impl, 10 ns 约束下） | 建议 `FCLK_CLK0` |
  |---|---|---|
  | rotated d3 + 唯象 | 阵列单独 18.291 ns（54.7 MHz）；**含外围实测 19.65 ns（50.9 MHz，WNS +0.35 @20 ns）** | **50 MHz（20 ns）**，余量 +0.35 ns；要更多余量用 45 MHz（22.2 ns，≈13%） |
  | rotated d3 + 电路级 | 27.838 ns → 35.9 MHz | **33 MHz（30 ns）**，余量 7% |
  | rotated d5 + 唯象 | 27.088 ns → 36.9 MHz | **30 MHz（33 ns）**，余量 18% |
  | rotated d5 + 电路级 | 46.927 ns → 21.3 MHz | 超 D6 参考线（见 §4），不建议上板 |

  上板前必须用本板重跑一次综合+实现（`xc7z020clg484-1`，见 §6）并按实测 `WNS` 定频率。
- **`SNOW_BUSYREG` 不要开**：频率 +10~17%，但拍数 +8/轮 ⇒ **每轮时间反而差 5~10%**（报告 §6.34）。

## 3. 寄存器映射（PS 侧接口）

完整映射、位定义、生成的头文件：

- RTL：`design/board/snowflake_host_regs.sv`（文件头有全表）
- 软件头：`design/generated/snowflake_board_map.h`（由 `fpga_flow/make_board_map.py` 生成，
  含边表 `SNOW_EDGE_UV` 与提交边表 `SNOW_COMMIT_UV`）
- 基地址：block design 的 Address Editor 里 `M_AXI_GP0` 的映射（默认 `0x43C0_0000`），
  必须与 `fpga_flow/board/host/snowflake_host.c` 的 `SNOW_BASE` 一致。

主机侧一轮的**固定顺序**（仿真里逐行验收过的那一套）：

```
写 CTRL = TRACE_CLEAR            (0x4)
写 SYN 窗口 = syndrome           (0x100 + 4*i)
写 CTRL = TRACE_ARM              (0x8)
写 CTRL = START                  (0x1)
轮询 STATUS[0] (done)
读  REC_COUNT                    (0x010)
每记录：写 TRACE_REC (0x018) → 连续读 TRACE_DATA (0x020) × ID_WORDS
```

- `TRACE_DATA` 每读一次**自动前进**一个 word（读完 `ID_WORDS` 个自动回到 0）。
- **ID 块（0x034~0x064）是"这颗 bitstream 是不是这份软件对应的配置"的唯一判据**：
  `nn/ne/ncommit/nsyn/cid_w/ptr_w/ndir/words` 已经把码型、码距、噪声模型钉死。
- `CORR` 窗口（0x200~）= **correction 出参**：最后一轮提交的边掩码（提交位序与
  生成的 `SNOW_COMMIT_UV` 对应）。
- trace 缓冲区是**每轮一份**（默认 128 条记录/轮）：d3 约 5–8 条/轮、d5 约 5–10 条/轮，
  所以 PS 在每轮之间把记录取走即可，不需要整轨缓冲。

## 4. D8 上板验收（唯一有意义的判据）

**板上跑同一 12 轮激励 → 回读 `obs_*` → 与 `fpga_flow/evidence/` 的 golden 逐行一致。**

已在仿真里用**板级通路**（POR → AXI4-Lite → syndrome → 阵列 → 宽记录缓冲 → AXI 回读 →
主机侧重建成文本 → 与 golden 逐行比）验收：

| 配置 | 记录数 | 轨迹行数 | 证据 |
|---|---|---|---|
| rotated d3 + 唯象（**主目标**） | 83 | 4980 | `evidence/PASS_board_rotated_d3_s2_rtl.txt` |
| rotated d3 + 电路级 | 89 | 7120 | `evidence/PASS_board_cl_rotated_d3_s2_rtl.txt` |
| surface d3 + 唯象 | 89 | 7832 | `evidence/PASS_board_surface_d3_s2_rtl.txt` |
| **rotated d5 + 唯象（争取目标）** | 85 | 22440 | `evidence/PASS_board_rotated_d5_s2_rtl.txt` |

板上做同样的事：

1. 跑 `snowflake_host`（`fpga_flow/board/host/snowflake_host.c`，mode 0 或 1），
   把 UART 日志存成文件；
2. PC 上：

```powershell
# mode 1（原始记录字）——走与仿真完全相同的转换 + 布局核对
python fpga_flow\board_log_check.py --log uart.txt --mode 1 `
    --map fpga_flow\board\board_map.json `
    --golden fpga_flow\evidence\golden_lat1_rotated_d3_s2.txt `
    --out trace.txt --period-ns 20

# mode 0（已经重建好的轨迹行）
python fpga_flow\board_log_check.py --log uart.txt --mode 0 `
    --golden fpga_flow\evidence\golden_lat1_rotated_d3_s2.txt `
    --out trace.txt --map fpga_flow\board\board_map.json --period-ns 20
```

`--period-ns` 给的是**实际 PL 时钟周期**，脚本会打印每轮拍数与 **ns/轮**，并与
**D6 的 ≈1 µs/轮**参考线比较（`OK` / `OVER`）。d5 电路级实测 1.88 µs，**超线近 2×**。

**验收线**：`BOARD_LOG_VERDICT PASS` 且每轮 `OK`。d3 主目标、d5 争取目标（D12）。

## 5. 实测证据（本仓库里能复核的）

| 项目 | 结论 | 证据 |
|---|---|---|
| 复位长度扫描（`LEN` × 外部脉冲宽） | **18/18 全 PASS**；**`LEN=1`、外部脉冲 1 拍就够** | `evidence/RSTSWEEP_lat1_rotated_d3_s2.txt`、`logs/rst_sweep_*.csv` |
| 板级通路逐行一致 | 4 个配置全 PASS（上表） | `evidence/PASS_board_*_rtl.txt` |
| 阵列本身未被外围改动 | 每轮拍数与直连 TB 逐一对应（差 1 是计数口径），rotated d3 唯象 28 拍/轮 | 各 `PASS_board_*` 文件内的 `# round=` 行 |
| 外围面积/频率（PL，`xc7z020clg484-1`） | d3 唯象：**3,041 LUT / 1,228 FF / 7.5 BRAM**，`WNS +0.350 ns @20 ns` ⇒ **50.9 MHz** | `fpga_flow/summary_board.csv`、`logs/util_route_board_rotated_d3_*_r2_*.rpt` |
| 外围对周期的影响 | 顶层 19.65 ns vs 阵列单独 18.291 ns（其中 ≈0.45 ns 是 STATUS 读 mux 未流水的那一版；加一拍流水后转正） | 报告 §6.35.8 |

## 6. 还没做的（需要板厂资料，D12/deferred）

1. **引脚约束**：`clk` 来自 PS `FCLK_CLK0`（不用管脚）、`pl_reset_in` 接 POR/PROG 按键
   或直接接 PS 的 `pl_resetn`；LED/UART 是板厂管脚。
2. **PS7 配置**：DDR 型号/位宽、MIO 分配、时钟树——全部来自板厂的 `.xdc`/`.tcl`/示例工程。
3. **block design**：`PS7 → M_AXI_GP0 → AXI Interconnect → snowflake_board_top`。
   `snowflake_board_top` 的 AXI 从口地址宽 16 bit（64 KB 窗口）——Interconnect 里
   按 64 KB 分配即可，不需要 packaging 成 IP（直接 add module 也行）。
4. **bitstream + FSBL/BOOT.bin**、SD 卡上的 `golden.txt`（若要在板上比对）。
5. 板载实测：§2 的频率重跑（`synth_lattice1.ps1 -Part xc7z020clg484-1`）与 §4 的 D8。

## 7. 文件清单

| 文件 | 作用 |
|---|---|
| `design/board/snowflake_reset_sync.sv` | 复位契约（拉长 + 同步 + 分 bus/core 两条） |
| `design/board/snowflake_trace_capture.sv` | `obs_*` 回读：一拍一条宽记录，写进 BRAM |
| `design/board/snowflake_host_regs.sv` | AXI4-Lite 从口 + 寄存器映射 + ID 块 |
| `design/board/snowflake_board_top.sv` | PL 顶层（单时钟、单复位树、无 PS 依赖） |
| `test_benches/snowflake/tb_snowflake_board_lat1.sv` | 假 PS：全程走寄存器通路 |
| `fpga_flow/msim_regress_board.ps1` | 板级通路回归（逐行比 golden） |
| `fpga_flow/reset_contract_sweep.ps1` | 复位契约扫描 |
| `fpga_flow/make_board_map.py` | 生成软件头 + 布局 JSON（并自校验与图头一致） |
| `fpga_flow/board_records_to_trace.py` | 主机侧重建成轨迹（**可执行规格**） |
| `fpga_flow/board_log_check.py` | UART 日志 → 判定（板上 D8 用） |
| `fpga_flow/board/host/snowflake_host.c` | PS 裸机宿主（**未编译过**，见文件头声明） |
