# P4 换 rotated 码 —— 第一步：把 `RotatedSurface` 做成能被 Snowflake 解码的 `Code`
（2026-09-21 开工；本文件是设计与进度台账，结论同步进报告 §6.30 / `NEXT_SESSION_PROMPT.md` §4）

> **P4 已全部完成（五个闸门 + 步骤 3/4/5/5d）**。
> **后续的 P2（电路级那一列）不写在本文件里**：它的结论、以及路上挖出的那个潜伏 RTL bug
> 与修复，记在**报告 §6.32** 与 `NEXT_SESSION_PROMPT.md` §4 的 P2 段。
> ⚠️ **P2 的 mask 修复改了 `snowflake_pe.sv` 一行** ⇒ 本文件 §4 里那些面积数字测于**改前**的 RTL，
> **引用请用 §6.32 的 `lat1_v2_*` 行**（差值 ≤1.4%，结论不变）。

## 0. 这一步的目标与验收

**目标**：`localuf/rotated.py` 提供一个 `Code` 子类，**未经修改的 Snowflake 解码流程**能在它上面跑出
golden；随后同一套 lattice 生成器 / 槽位检查器 / RTL 回归 / 面积流程都适用。

**验收闸门（按顺序，前一个不过不往下走）—— 全部已过**
1. **图结构自洽**（已过，见 §3）：每层节点数 = `(d²−1)/2 + (d+1)`、检测器/边界计数、
   图度数分布（边界点 1–2、内部点 4）、ID 连续、`id_below` 自洽；
2. **方向表**：解码器必须**看得见**每个空间邻居（现在只看见时间邻居）；
3. **几何前提**：`check_circuit_level_geometry.py` 指向 rotated 图，**两种噪声都 PASS**
   （P0″ 承诺的那一半）；
4. **golden**：`gen_golden.py --code rotated` 出轨迹；
5. **RTL / 门级**：`make_lattice_sim.py --code rotated` 出表 → RTL 逐行（d3/d5/d7）+ 门级逐行（d3）
   —— ✅ **2026-09-21 一次通过，RTL 一行未改**（见 §4 步骤 5）。

## 1. 索引空间（已定，并与 localuf 的既有约定完全对齐）

`(a, b, t)`，`a ∈ [0, d]`、`b ∈ [−1, d−1]`、**所有节点满足 `(a+b)` 为奇**：

| 角色 | 条件 | 每层数量 |
|---|---|---|
| 检测器 | `b ∈ [0, d−2]` | `(d²−1)/2`（d21 = **220**，与 Helios 每层 PE 数一致） |
| 西墙（虚拟边界） | `b = −1`（a 偶） | `(d+1)/2` |
| 东墙（虚拟边界） | `b = d−1`（a 奇） | `(d+1)/2` |
| **合计** | | **`(d²−1)/2 + d + 1`**（d21 = **242**） |

- **邻居 = 共享一个数据比特的两个检查点 ⇒ `(Δa, Δb) = (±1, ±1)`**（对角步进）。
  在行主序 rank 编号下，偏移是常量 `±(NY ∓ 1)` —— 与
  `check_lattice_slots_rotated.py` 量到的 `−21,−19,19,21`（d21）一致。
- **`LONG_AXIS = 1`**、`TIME_AXIS = −1`、`_CODE_DIMENSION = 2`，
  `Determinant.is_boundary` 的规则 `v[LONG_AXIS] ∈ {−1, d−1}` **原样成立**（不需要改 determinant）✓
- 因此**节点数比**：unrotated 462/层（420 检测器 + 42 边界）vs rotated **242/层**
  ⇒ **1.909×**，与检测器比 `420/220 = 1.909` 完全一致（两边边界开销都正好占 1/11）。
  ⚠️ **更正**：文档里先前写的"节点 2.10×"是拿**我们的节点数**比 **Helios 的 PE 数**（= 检测器数），
  两套口径混用；**同一套口径下的真实杠杆是 1.909×（节点）/ 1.97×（边）**，
  也就是一直说的"≈1.9×"，**不是 2.10×**。

## 2. ID 约定（与 RTL 的 `SNOW_CID_DELTA` 机制耦合，已实现并验证）

`Snowflake.index_to_id` 的形状是**承重**的：ID 分两块（先墙、后检测器），**每块内时间倒序、
步长恒定**，于是"下面的节点"永远是 `id + delta`，`delta` 分段常量 —— 这正是 RTL 的
`SNOW_CID_DELTA`（`snowflake_pe.sv:384` 用 `ab_cid + SNOW_CID_DELTA(ab_cid)` 定位 DROP 目标）。

rotated 的同构写法（`q = (d+1)//2`，已实现）：

```
西墙  id = 2q (h−1−t) + a//2
东墙  id = 2q (h−1−t) + q + a//2
检测器 id = 2q h + ((d²−1)/2)(h−1−t) + rank(a,b)      rank 必须"稠密"（列主序，步长 q）
id_below: delta = 2q = d+1   (id < 2q h)，否则 (d²−1)/2
```

⇒ 生成器侧要加一条对应的 `cid_delta_rule('rotated', d, h)`（下一步）。

## 3. 已完成（截至本次更新）

**五个闸门全过**：图结构 ✅ / 方向表 ✅ / 几何前提（两种噪声）✅ / golden ✅ /
**RTL 逐行 d3+d5+d7 ✅ 与门级逐行 d3 ✅**；生成器接入 ✅；四个格子的面积 ✅；上板器件（Z-7020）实测列 ✅（§4 步骤 5d）。

- `localuf/rotated.py`：**`RotatedSurface(Code)`** —— 节点集、**按数据比特枚举**的现象学边集、
  `index_to_id`/`id_below`、`NEIGHBOR_DELTAS`/`NEIGHBOR_ORDER`（6 个方向）、
  `provisional_neighbors`、`boundary_direction`、`per_layer`/`max_degree`；
  **`RotatedSnowflake(Snowflake)`** —— 覆盖 `index_to_id`/`id_below`。
- **`Snowflake` 一共只改了 3 处，全部向后兼容**（用 `getattr`/`code` 提供）：
  ① `_BITSTRING_CONVERTER` 优先取 `code.BITSTRING_CONVERTER`；
  ② `_neighbor_order` 优先取 `code.NEIGHBOR_ORDER`；
  ③ `_Node` 的**方向表**与 `_SimpleUnrooter` 的**边界方向**改为问 `code`
  （`provisional_neighbors` / `boundary_direction`；`Surface`/`Repetition` 保留原表 ⇒ 逐字节不变）。
  **未旋转 golden 4 份（rep d3、surface d3/d5、surface d3 电路级）逐字节相同** ✓；P0″ 检查器仍 PASS ✓。
- **实测（d3/5/7，frugal）**：每层节点 **8 / 18 / 32** = `(d²−1)/2 + (d+1)`；
  **空间边/层 = d²**（9/25/49，一个数据比特一条边 ✓）；ID 连续；`id_below` 逐点一致；
  边界点空间度 1–2、无时间边 ✓；`NEIGHBORS` 最多 **6**（4 对角 + 2 时间）✓。
- **第一份 rotated golden 生成成功**（`gen_golden.py --code rotated --d 3`：24 节点 / 35 边 /
  6 方向 / 12 轮，83 个 timestep）✓。
- **几何检查（P0″ 承诺的那一半，唯象部分）**：`check_circuit_level_geometry.py rotated 3|5|7`
  → **P1 PASS、P2（generalised 规则）PASS、P3 PASS、度数 ≤ NDIR** ✓：
  - 类清单正好是预测的三个：**平面内对角 `(0, NY∓1)`**（d3：`(0,3)`/`(0,5)`）+ 纯时间步 `(1,0)`；
  - **旧的三类规则在它上面 27 条边无法分类** ⇒ P0″ 那个修复**确实是 rotated 的前置** ✓；
  - 节点/边/槽位比（d5）：`150/90 = 285/173 = 183/111 = 1.667` ✓；d21 就是 **1.909**
    （通式 `2d/(d+1)`，检测器与节点同比值 ✓）。
  - 唯一"非 PASS"的是**"整块矩形"**：rotated 是**棋盘格半填充**（fill 50%），
    检查器已把它降为**信息项**（不是判据）—— 因为 §6.28 已经证明空槽位免费。

## 4. 还差什么（按顺序）

### 步骤 4 —— 接进生成器 ✅ **已完成（2026-09-21）**

- `make_lattice_sim.py`：`--code rotated` 已接（`--code` 的 choices、头部配置名、"真实空间位置"判据）；
  **"必须整块矩形"那条断言已推广成通用"真实 rank 集合"**：
  ```python
  real_rank = {rank(s) for s in spatial}       # 未旋转 = range(P_REAL)（逐字节不变）
  node_valid = (s // P) < len(groups[c]) and (s % P) in real_rank
  ```
  对未旋转/`--pad` 就是原来的 `(s % P) < P_REAL` ⇒ **逐字节不变**（已验）；对 rotated 自动处理棋盘格。
- `build()` 里原来自己 `Snowflake(code)` ⇒ **改成 `make_decoder(code)`**（否则 rotated 会用未旋转的
  ID 规则，撞 "node IDs are not exactly 0..NN-1"）。
- `generate_snowflake.py`：`cid_delta_rule('rotated', d, h)` = `dict(limit=(d+1)h, small=d+1,
  big=(d²−1)/2)` ✓；发出的码型名加 `rotated` ✓。
- **实测生成成功**：
  | 配置 | 图 | 实例 | ESLOT | 内存 |
  |---|---|---|---|---|
  | rotated d3 n=2 | 24 节点 / 35 边 | 32 PE + 26 edge | 26 | 696 字 |
  | rotated d5 n=2 | 90 / 173 | 108 + 111 | 111 | — |
  | rotated d7 n=2 | 224 / 487 | 256 + 292 | 292 | — |
  生成器**全部断言通过**（层同构、(slot,slice) 双射、四条地址带、地址重放、DROP 源、`above`）。
- **第一次 rotated 综合（VU9P，5 ns，synth）**：
  | 配置 | LUT | FF | fmax | 级数 |
  |---|---|---|---|---|
  | `surface d3 n=2`（未旋转，基线） | 4,343 | 1,241 | 99.2 MHz | 35 |
  | **`rotated d3 n=2`** | **2,667** | **798** | **154.3 MHz** | **24** |
  | 比值 | **1.63×** | **1.56×** | **1.55×** | −11 |
  - 同 d 的**活格点**比（24+35 vs 36+51）= **1.47×**；LUT 比 1.63×（含 glue/位宽等开销）。
  - 理论通式 **`2d/(d+1)`**：d3 1.5、d5 1.667、**d21 1.909** ⇒ d3 上的 1.63 与之一致，
    而且**时序还变好了**（级数 35→24，fmax ×1.55）—— 收益不是拿时序换的。
  - ⚠️ 这是**唯象**列；电路级列还要等步骤 3 的 hook 族（端口会从 6 涨到 16）。

### 步骤 3 —— `_circuit_level_edges` ✅ **已完成（路线 (ii)，2026-09-21）**

**用户选了路线 (ii)**：保留本地稳态结构，只从 DEM 学 hook 族与位置条件。

**学到的规则**（`fpga_flow/probe_rotated_hook_sites.py`，从 DEM 的**内部轮**学、在 d3/d5/d7 逐点核对）：

| hook 族（从低时刻端，dt=+1） | 位置条件 | 验证 |
|---|---|---|
| `(−2, 0)` | `a ≥ 2` | d3 2 点 ✓ / d5 8 点 ✓ / d7 18 点 ✓ 与 DEM **完全相同** |
| `(−1, −1)` | `a ≥ 1` 且 `b ≥ 1` | d5 7 点 ✓ / d7 17 点 ✓ |
| `(−1, +1)` | `b ≤ d−3` | d3 2 点 ✓ / d5 8 点 ✓ / d7 18 点 ✓ |

⚠️ **只有 3 个 hook 族（不是 5）** —— 上一轮"5 个无向类"的提取被**时间边界污染**了
（DEM 的首/末轮结构不同，混进来两个假类）。**⇒ 方向数 = 4 空间 + 2 时间 + 6 hook = 12 = NDIR**，
**端口不涨、电路级列也不用给面积打折**（更正上一轮"≈16 ⇒ 打折到 1.5–1.7×"那条）。

**实现**（`localuf/rotated.py`）：
- `_circuit_level_edges` = 本地稳态的 space + time（沿用现象学那套，含边界边）+ 三个 hook 族
  （按上表条件、`t ∈ [t_start, t_start+layer_count)`、目标必须是节点）；
- `NEIGHBOR_ORDER`/`NEIGHBOR_DELTAS` 改成**按噪声给出**（唯象 6 个**保持原顺序** ⇒ 已生成的表不受影响；
  电路级 12 个 = 6 + `W2U/E2D/NWU/SED/NEU/SWD`）；
- `RotatedCircuitLevel(CircuitLevel)`：接受 rotated 的边类型名；**多重度向量是占位值**，
  `make_error`/`force_error` **直接抛错**（本项目的电路级列是"在电路级图上解一个**确定性** syndrome 激励"，
  不做噪声采样）；
- `_base_classes` 加 `CIRCUIT_LEVEL_NOISE` 钩子（默认 `CircuitLevel` ⇒ 未旋转逐字节不变 ✓）。

**验收（全过）**：
- `check_circuit_level_geometry.py rotated 3|5` → **P1/P2/P3 全 PASS**、**12 个方向 ≤ NDIR=12**、
  度 10（d3）/12（d5）；类清单正好是**2 个平面内对角 + 1 个时间 + 3 个 hook** ✓
  ⇒ **P0″ 承诺的"两种噪声都过"对 rotated 兑现** ✓；
- **rotated 电路级 golden 生成成功**（d3：24 节点 / 55 边 / 12 轮）✓；
- 未旋转 golden（唯象 rep d3、电路级 surface d3）**逐字节不变** ✓。
- 与 DEM 的差异（**按设计**）：本实现用**稳态**条件、统一施于所有 t，而 Stim 电路的首/末轮不同
  ⇒ 边数不会与 DEM 逐条相同（这正是选 (ii) 的代价，换来的是与未旋转列**同一套窗口/提交语义**）。

**仍未做的**：步骤 5（d3 golden → RTL 逐行 → 门级逐行）。

### 步骤 3 附带：修掉一个**流程 bug**（第一次电路级综合失败的原因）

第一次给 rotated 电路级跑综合时 elaboration 就挂了：
`ERROR: [Synth 8-524] part-select [17033:17017] out of range of prefix 'bview'`。
**根因不是设计**：`sweep.ps1` 的图头缓存叫 `graphs/<code>_d<d>.svh`，**只按 (code, d) 命名**
⇒ 电路级那次**复用了先前唯象那次缓存的 graph 头**，于是拿**唯象的图**配**电路级的 lattice 表**
（两者对图的看法不同：方向集、边映射、地址）⇒ 地址算术越界。
**修法**：`synth_lattice1.ps1` 现在自己按 `graphs/<code>_d<d>_<noise>.svh` 生成/钉住图头
（`-Noise` 是它自己的参数，只有它知道该用哪个），并显式传给 `sweep.ps1 -Graph` ✓。修完重跑成功 ✓。

### 面积（VU9P，5 ns，synth，n=2，d=3；唯一变量 = 码型 × 噪声）

| 配置 | LUT | FF | fmax |
|---|---|---|---|
| `surface`（未旋转）× 唯象 | 4,343 | 1,241 | 99.2 MHz |
| **`surface`（未旋转）× 电路级** | **5,622** | 1,337 | 69.8 MHz |
| `rotated` × 唯象 | 2,667 | 798 | 154.3 MHz |
| **`rotated` × 电路级** | **3,963** | 1,026 | 104.9 MHz |
| **同 d 同噪声：rotated / unrotated** | **1.42×（电路级）/ 1.63×（唯象）** | 1.30× / 1.56× | **1.50× / 1.55×** |
| 电路级的代价（同码型） | +29%（未旋转）/ **+49%**（rotated） | | |

⇒ **四点全测**：① 旋转的收益在**两种噪声下都成立**（1.63× / 1.42×），
d3 的理论通式 `2d/(d+1) = 1.5` ✓（唯象略好、电路级略差，因为 hook 族给 rotated 加的比例更大）；
② 电路级的代价 +49%（§6.26.2 估计 +50–65% ✓ 对上）；
③ **时序两边都变好**（104.9 vs 69.8 MHz）—— 不是拿时序换面积；
④ **端口数 12 = NDIR 不变**，所以不需要为 rotated 电路级改端口宽或重估 argmin。

### 步骤 4（原）—— 接进生成器（已被上面的 ✅ 取代，留作记录）

`make_lattice_sim.build` 里有 `_check(len(spatial) != P_REAL → die("not a full rectangle"))`，
**rotated 会在这里 die**（空间集合是棋盘格子集）。
`--pad` 那次已经把"结构存在但无效"的概念做出来了，这次要把它推广成**通用的"真实位置"判据**
（而不是 `s % P < P_REAL` 那条 pad 专用规则）。改完：`--pad 1` 仍须逐字节不变。

另外：`cid_delta_rule('rotated', d, h)`（`limit = (d+1)h`、`small = d+1`、`big = (d²−1)/2`）。

### 步骤 5 —— 全链路回归 ✅ **已完成（2026-09-21）**

**闸门 5（RTL 逐行）与门级逐行：一次通过，无需改 RTL** —— rotated 唯象列在 d3/d5/d7 上
都逐行等于 localuf golden，d3 还过了门级（综合后网表）：

| 配置 | 行数 | 提交数 | 判定 | 证据 |
|---|---|---|---|---|
| `rotated d3 n=2` RTL | 4,980 | 6 | **PASS** | `evidence/PASS_lat1_rotated_d3_s2_rtl.txt` |
| **`rotated d3 n=2` 门级** | 4,980 | 6 | **PASS** | `evidence/PASS_lat1_rotated_d3_s2_netlist_rtl.txt` |
| `rotated d5 n=2` RTL | 22,440 | 4 | **PASS** | `evidence/PASS_lat1_rotated_d5_s2_rtl.txt` |
| `rotated d7 n=2` RTL | 61,944 | 3 | **PASS** | `evidence/PASS_lat1_rotated_d7_s2_rtl.txt` |

命令（`generate_snowflake.py` + `make_lattice_sim.py` + `gen_golden.py --code rotated` 全在脚本里）：

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File fpga_flow\msim_regress_lat1.ps1    -Code rotated -D 3 -Slices 2
powershell -NoProfile -ExecutionPolicy Bypass -File fpga_flow\netlist_regress_lat1.ps1 -Code rotated -D 3 -Slices 2
powershell -NoProfile -ExecutionPolicy Bypass -File fpga_flow\msim_regress_lat1.ps1    -Code rotated -D 5 -Slices 2
powershell -NoProfile -ExecutionPolicy Bypass -File fpga_flow\msim_regress_lat1.ps1    -Code rotated -D 7 -Slices 2
```

**每轮拍数：rotated 一次都没有比未旋转慢，反而更快**（同一 TB 打印的 `[cyc] round=…`；
未旋转 surface d3 同一份日志并列）：

| 配置 | 每轮拍数（12 轮） | 最大 | 12 轮合计 | `live_cycles` |
|---|---|---|---|---|
| `surface d3`（未旋转，基线） | 16…36 | **36** | 315 | 284 |
| **`rotated d3`** | 16…28 | **28** | **291** | 260 |
| `rotated d5` | 16…36 | 36 | 299 | 268 |
| `rotated d7` | 16…44 | 44 | 307 | 276 |

⇒ 收益**不只是面积和 fmax**：最大轮延迟 −22%（36→28 @d3），而 d7 才回到 36–44
（拍数由**图直径/度数**决定，不由格点数决定 —— 这也解释了为什么 `rep d3` 与 `surface d3` 拍数完全相同）。

**槽位编号复核（`check_lattice_slots_rotated.py`，d3…d21 全过）**：
`iso=True`、**邻居偏移集合恒为 4 个常量**（d3 `±3,±5` … d21 `±21,±23`）、`up/down=±P`、
`maxdeg=6`、**fill 恒 50%**、每层节点 = `(d²−1)/2 + (d+1)`（d21 = 220 检测器 + 22 墙 = 242），
检测器数与 Stim/2 逐 d 相等 ✓。取证 `logs/rotated_slots.txt`。

### 步骤 5 附带：修掉两处**回归/综合流程**的坑（都不是设计问题）

1. **门级 TB 的诊断探针反而成了失败点**：`tb_snowflake_pe_array_lat1.sv` 里那段
   `SNOW_NETLIST` 探针**层次化读 `dut.phase`**，而 rotated d3 的网表里
   **`wire phase` 被优化掉了**（32 槽位 = 2 的幂，相位计数折进地址位）⇒ xelab 直接
   `[VRFC 10-2991] 'phase' is not declared under prefix 'dut'`。
   修法：探针拆成**常开的"只看端口"版**（任何网表都能 elaborate）+
   **可选 `-d SNOW_NETLIST_PROBE_INT`** 的内部版（`phase`/`lat_bpass`/FSM 寄存器名都是
   综合相关的），`netlist_regress_lat1.ps1` 加 `-Probe` 开关。**对已归档的 trace 零影响**
   （探针只 `$display`，不写 `rtl_trace.txt`）。
2. **7 系列的利用率行名不同**：`run_ooc.tcl` 的 `util_row` 只认 UltraScale 的
   `CLB LUTs` / `CLB Registers`，而 7 系列（= 板上 Z-7020）打印
   `Slice LUTs` / `Slice Registers` ⇒ 前两次上板跑出 `lut=NA ff=NA`，
   而报告里明明写着 2,598 / 799。修法：加 `util_any` 依次尝试（UltraScale 行名排在前 ⇒
   **既有行为逐字节不变**）。

### 步骤 5d —— 上板器件（Z-7020）实测列

**为什么必须实测**：此前所有面积/时序数字都是 `xcvu9p-flga2104-2L-e`，再**拿 LUT 数去比
Z-7020 的 53,200**（§6.27）。那是**跨器件族外推**（UltraScale vs 7 系列），而 D12 的板子是
`xc7z020clg484-1`。更麻烦的是：§6.27 里"d7 = 72,982 LUT = 137% ⇒ 装不下"那行，
**top 是扁平 PE 阵列 `snowflake_pe_array`**，不是我们一路在测的**合并 lattice
`snowflake_pe_array_lat1`** —— 同一个 top 的未旋转 d7 **从来没测过**，而 D16 的
"Z-7020 上 d7 只有 rotated 那一列站得住"正是靠这一行立的。

**实测（`xc7z020clg484-1`，同 top `snowflake_pe_array_lat1`、n=2、唯象；详表与路径分析见报告 §6.31）**

| 配置 | 模式 | LUT | FF | 占 53,200 | 达到周期 | fmax |
|---|---|---|---|---|---|---|
| **`rotated d3`** | **impl @10 ns** | **2,884** | 836 | **5.4%** | **18.859 ns** | 53.0 MHz |
| `rotated d3` | impl @6.5 ns（pacing） | 2,964 | 829 | 5.6% | 18.405 ns | 54.3 MHz |
| **`rotated d5`** | **impl @10 ns** | **12,683** | 3,063 | **23.8%** | 26.891 ns | 37.2 MHz |
| **`surface d3`** | **impl @10 ns** | **4,859** | 1,296 | 9.1% | 24.226 ns | 41.3 MHz |
| `rotated d3` | synth @10 ns | 2,528 | 799 | 4.8% | (21.987 ns)* | (45.5)* |
| `surface d5` | impl / synth | **构建不出来**：elaboration 10,408 MB 通过，但跨边界优化阶段 >60 min（impl）/>20 min（synth）无输出、内存仍在涨 ⇒ 放弃。ESLOT 律外推 ≈20.9K |
| **`rotated d7`** | — | **构建不出来**：elaboration 峰值 **13,152 MB**（`-Flatten full` 反而 **13,850 MB**）> 本机 15.9 GB |
| `surface d7`（同 top） | — | **也构建不出来**：732 个实例 ⇒ elaboration 峰值 **18,533 MB** |

\* synth 模式在 7 系列上的时序是"没有布局的布线估算"（`route 17.3 ns / 82.5%`），**不可引用**；
两个约束档给出同一个 21.987 ns 就是证据。

**同器件同模式 A/B（d3, impl）**：LUT **4,859 / 2,884 = 1.685×**、FF 1.55×、周期 1.28×
⇒ VU9P synth 口径的 1.63× 在**真板器件**上成立 ✓。

**收益来源分解（消融）**：未旋转唯象图只用 12 个方向名里的 6 个，默认却发 12 个
⇒ 新增 `-Dirs used` 消融：**4,343 → 4,200 LUT，只省 3.3%**
⇒ **收益不是"端口少"，是几何**（同 6 方向下 4,200 / 2,667 = **1.575×**）；
真正成本单位是 **ESLOT**（d3 38/26 = 1.462、d5 183/111 = 1.649、d7 508/292 = 1.740，
与 `2d/(d+1)` 逐 d 对上，每槽位 ≈103–115 LUT）。

**两个必须带走的结论**：
1. **内存墙是 P3 的硬前置**：`snowflake_pe.sv:28` 把生成的 lattice 表 **include 进每个槽位实例**，
   elaboration ≈ **25–38 MB/实例**（58 → 1.45 GB、219 → 5.45 GB、273 → 10.4 GB、**548 → 13.15 GB 失败**）
   ⇒ 不把表提出去，**d7 在任何 16 GB 机器上都构建不起来**（d7 是 D16 的验收线）。
2. **频率是比面积更硬的风险**：板上实测 **d3 ≈53 MHz / d5 ≈37 MHz**（OOC，无 floorplan），
   **D1 的 6.5 ns / 100 MHz 在 Z-7020 上不收敛**；而 VU9P 那些 fmax 是 **synth 估算**、不可比。
   杠杆是 §6.17 的 BUSYREG/MINTS，但 **`SNOW_BUSYREG` 在 `snowflake_pe_array_lat1.sv` 里没有**
   （只有扁平阵列有）⇒ 要**先移植再测**。这一步排进 P3。

**为什么板上列用 `-Mode impl` 而不是 `synth`**：第一次上板跑的是 synth，得到
`wns=−15.487 / min_period=21.987 ns`，**同一个逻辑深度（24 级）比 VU9P 的 6.48 ns 差 3.4×**。
时序报告给出原因：`logic 3.665ns (17.5%) / route 17.314ns (82.5%)` —— 那是
**综合后的布线估算**，7 系列在没有布局之前极不准（每级逻辑 153 ps 完全正常）。
⇒ **7 系列上 synth 模式的时序数字不可引用**（面积仍可，见上表两行 synth），
板上列一律走 place & route。

## 5. 复现命令

```powershell
# 图结构自检（每层节点数 / ID 连续 / id_below / 度数）
python -c "import sys; sys.path.insert(0,'localuf-main/localuf-main'); ..."   # 见报告 §6.30
# 方向类数（两种布局 × 两种噪声）
python fpga_flow\probe_rotated_directions.py
# 图结构对照（Stim vs localuf）
python fpga_flow\probe_rotated_graph.py
# 未旋转路径未受损的证据（改 snowflake/main.py 之后必须重跑）
python snowflake_sim\ref\gen_golden.py --code surface --d 3 --schedule 2:1 --out tmp\gg.sv
python snowflake_sim\ref\gen_golden.py --code rep --d 3 --schedule 2:1 --out tmp\gg2.sv
```

```powershell
# ---- 步骤 5：RTL / 门级逐行回归（唯象列，d3 起）----
powershell -NoProfile -ExecutionPolicy Bypass -File fpga_flow\msim_regress_lat1.ps1    -Code rotated -D 3 -Slices 2
powershell -NoProfile -ExecutionPolicy Bypass -File fpga_flow\netlist_regress_lat1.ps1 -Code rotated -D 3 -Slices 2
powershell -NoProfile -ExecutionPolicy Bypass -File fpga_flow\msim_regress_lat1.ps1    -Code rotated -D 5 -Slices 2
powershell -NoProfile -ExecutionPolicy Bypass -File fpga_flow\msim_regress_lat1.ps1    -Code rotated -D 7 -Slices 2
# 槽位编号复核（d3…d21）
python fpga_flow\check_lattice_slots_rotated.py

# ---- 步骤 5d：上板器件 Z-7020 实测列（串行；脚本自己保证）----
powershell -NoProfile -ExecutionPolicy Bypass -File fpga_flow\z7020_battery.ps1
powershell -NoProfile -ExecutionPolicy Bypass -File fpga_flow\board_remaining.ps1   # 三行"构建不出来"的取证
# 单跑一条：
#   fpga_flow\synth_lattice1.ps1 -Code rotated -D 5 -Slices 2 -Part xc7z020clg484-1 -Period 10.0 -Mode impl

# ---- 端口消融（rotated 的收益是不是"端口少"？）----
powershell -NoProfile -ExecutionPolicy Bypass -File fpga_flow\dirs_ablation.ps1
#   = synth_lattice1.ps1 -Code surface -D 3 -Slices 2 -Dirs used -Part xcvu9p-flga2104-2L-e -Period 5.0
```

> ⚠️ **构建 d5/d7 之前先看内存**：`snowflake_pe.sv` 把生成的 lattice 表 include 进**每个槽位实例**，
> elaboration ≈ 25–38 MB/实例 ⇒ rotated d7（548 实例）要 >13 GB、未旋转 d7（732 实例）要 >18.5 GB。
> 本机 15.9 GB ⇒ **这两个配置现在构建不出来**（报告 §6.31 补测）。
