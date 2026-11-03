# Shared-lattice bring-up: CLOSED, line-exact on all six regressions

Authoritative record for `snowflake_pe_array_lat.sv` (the shared lattice,
"snowflake-n" step (b)+(c)). It supersedes the earlier version of this file,
which described the then-open DROP divergence. The divergence is closed: the
lattice reproduces the localuf golden trace **line for line** on every
configuration the flat array is held to, including the directed `seam` stimulus.

## 1. Where it stands

    [lat] lat_rep_d3_s2              PASS 2314/2314 lines, 6/6 commits
    [lat] lat_rep_d3_s2_seam         PASS 2366/2366 lines, 8/8 commits
    [lat] lat_surface_d3_s2          PASS 7832/7832 lines, 6/6 commits
    [lat] lat_surface_d3_s2_seam     PASS 12232/12232 lines, 21/21 commits
    [lat] lat_surface_d5_s2          PASS 40112/40112 lines, 4/4 commits
    [lat] lat_surface_d5_s2_seam     PASS 105948/105948 lines, 50/50 commits

The same six runs on the FLAT array (`fpga_flow/msim_regress.ps1`) are the red
lines, and the line counts and commit counts agree exactly, so the shared lattice
is behaviourally identical to the flat array on all of them.

Commands:

    python fpga_flow\make_lattice_sim.py --code rep --d 3 --slices 2
    powershell -NoProfile -ExecutionPolicy Bypass -File fpga_flow\msim_regress_lat.ps1 ^
        -Code {rep|surface} -D {3|5} -Slices 2 [-Pattern seam]

The passing traces are archived under `fpga_flow/evidence/`
(`PASS_lat_<code>_d<d>_s<s>[_seam]_rtl.txt`) with their golden files beside them.

## 2. The design, restated

One datapath instance per layout SLOT; one slice per phase; `NCTX` phases per
step. `node slot = tlocal*P + spatial_rank`, `edge slot = (tlocal*3 + orient)*P +
rank(anchor)`, and a cell's address is `((SLICEBASE[slice] + slot//per_layer) *
ROW + slot) * NCTX + slice`. Four disjoint bands: node register, node mirror,
edge register, edge mirror.

**The one rule that makes it work** (design doc 4.8 option B, generalised):

    every port reads the source cell's state as of the START OF THE STAGE,
    where `phase` is the phase RUNNING NOW:

        source_slice <  phase   ->  read the MIRROR
        source_slice >= phase   ->  read the REGISTER

A cell in an earlier slice has already committed this stage, so its register has
moved on and its mirror holds the start-of-stage value (every cell writes
`mirror <= register` on every run edge of its own slice). Every other cell's
register still holds it.

The select must be **dynamic** (a comparison against `phase`), not a per-link
constant. A constant is right only when a cell is evaluated at its own phase --
and the array's outputs are read ACROSS cells (a defect push, an edge flip, a
pulse), so a cell evaluated at one phase must see the same inputs as at any
other. With the dynamic rule every cell's combinational output is
**phase-invariant and equal to the flat array's**, which is what makes those
cross-cell taps exact. The cell's own state read uses the same rule, so
`st_in` is the start-of-stage word at every phase, and the commit at the cell's
own phase (`phase == slice`, select = REGISTER) is unaffected.

The flat array is the oracle for all of this because its PE outputs ARE its
registers (`assign o_cid = cid`): `ab_cid[n] = pe_cid[AB_S]` and
`pe_nb_push[n][d] = pe_push[NBR][REV]` are live register samples, so **one defect
layer moves exactly one step per step** (golden, `rep d3 n=2`: node 6 takes the
syndrome's defect at T1, node 8 node 6's end-of-T1 state at T2, node 10 node 8's
end-of-T2 state at T3).

## 3. Root causes found and fixed (this session)

Ordered by how much they cost.

1. **`_vec` collapsed every negative value onto all-ones at the given width.**
   That convention is right only for the `-1` sentinel; real negative port
   offsets are two's complement. `-2` was emitted as `511` instead of `510`, so
   `myaddr + NB_A` read one bank word too high. Measured: node 8's port to node 2
   read `bank[25]` instead of `bank[24]` and answered cid 0 instead of cid 2, so
   the `T 3 m` merge landed on cluster 0 instead of cluster 4. `_vec` now emits
   `int(v) & ((1<<width)-1)`.

2. **`_iarr` passed width 1 to `_vec`** and therefore truncated the identity and
   PE-reset words to one bit once (1) was fixed -- the whole state bank came up as
   zeros, which the regression showed immediately as `N x 0 0 0 0 0 0 0` at T0.
   It now uses width 32 (full-width integer).

3. **The DROP source is the `above` cell's START-OF-STAGE state**, i.e. a bank
   read, NOT its next state. `cell_nxt[AB_N]` -- the combinational chain -- makes
   the whole 6->8->10 defect chain land in T1; the golden moves one layer per
   step. Seven bank-read variants had been measured earlier (2.5 of the previous
   revision) but all of them were tried against a *wrong bank-select rule*, which
   is why none of them could work.

4. **The bank-select rule was off by one in two different ways.** The node DROP
   used "mirror iff `src <= my_slice`" (always mirroring a same-slice source, which
   is one stage cold) and the neighbour ports used "register iff `src == my_slice`"
   (mirroring a LATER-slice neighbour, also one stage cold). Both are replaced by
   the single dynamic rule above.

5. **`EB_AB`, the edge DROP source, was a constant `+EROW` and simply wrong.**
   The edge `above` relation can cross slices and move a whole layout layer in
   slot space. Measured on `rep d3 n=2`: edge 2's above is at +72 and edge 6's at
   +25, not +48 -- 3 of the 8 `above` edges named the wrong cell, and the value
   taken could not be selected from the mirror at all. It is now an absolute
   register address plus the source's slice.

6. **The edge-`above` assertions were dead code.** `for e, ab in
   enumerate(g["above"])` iterates a DICT, so `ab` was always the key (the edge
   id), `ab == e` was always true, and every check in that loop was skipped. That
   is exactly how a wrong constant offset survived. Rewritten over
   `g["above"].items()` with the checks that are actually true (same rank, same
   orientation, one graph layer up, and the named cell exists).

7. **`EB_HA` is a per-SLOT flag but a slot holds one edge per slice**, so it
   cannot describe a cell. Gating the edge DROP on it made the other slice's edge
   read an out-of-range index -- `'x'` committed straight into live cells, 666
   trace values. The per-cell `EB_ABH` replaced it, and a generator assertion now
   ties every DROP-source table to the graph.

8. **The defect push was tapped from the DROP source instead of the neighbour in
   that direction.** The flat array uses `pe_push[NBR][REV]`, and `push` follows
   the pointer the neighbour computes THIS cycle (`n_ptr` from the flooding), so
   it can be neither recomputed from the neighbour's banked `ptr` nor taken from
   the `above` cell: on `rep d3 n=2` node 4's only neighbour is 10 while its
   `above` is 2.

9. **`EB_DU`/`EB_DV` were built from the layer-ordered `eup`/`elow`** rather than
   the graph's U/V endpoints, which is the flat array's `SNOW_EDIRU_VEC`
   convention (the direction at U toward V). For the in-plane edge 4-10 that
   swaps `flip_u` and `flip_v`. It hid for a long time because `flip_u ^ flip_v`
   and `u_pulse + v_pulse` are both symmetric under the swap; it surfaced as the
   golden flipping edge 4-10's `ecorr` at `T 3 m 1` while the RTL did not.

10. **`busy_step_vec` read the MIRROR for cells that were not running.** Its job
    is "did THIS stage change anything", and at `phase_last` an already-committed
    cell has that answer in its register while the running slice has it in its
    combinational `busy_c`. Reading the mirror gave the PREVIOUS stage's flag, so
    the merge terminated after one sub-round instead of the golden's three
    (`rep d3 n=2`, T3 `m`).

11. **The endpoint pulse/flip recompute paths (the old `UM`/`VM` mirror paths)
    were removed.** They existed only because a node cell's output used to depend
    on the phase; with the dynamic rule `cell_push`/`cell_pulse` are exact at any
    phase, so the edge taps them live, exactly like the flat array.

## 4. What the earlier revision got wrong, in one paragraph

The previous revision of this file concluded that "the fix is a SCHEDULING change,
not a read change", and that no bank read could be right for the DROP because the
two cells of a drop pair are often in the same slice. Both statements were
artefacts of the off-by-one bank rule (item 4) plus a misreading of the flat
array: `pe_cid[AB_S]` is not the source PE's *next* state (which would make the
chain resolve in one step), it is its *register*, and a register is exactly what
the mirror/register pair reconstructs. The seven measured variants were all real
measurements, but every one of them was taken with a broken bank select, so none
of them could have passed.

## 5. Diagnosing this class of bug

* The trace diff is the ground truth; the first differing line names the stage and
  the cell. `fpga_flow/msim_lat/compare_trace.py`-style side-by-side dumps of one
  `T` block (nodes AND edges) localise it in one run.
* ModelSim hierarchical probes work and are the fastest way to see a cell's
  inputs. Referencing a wire declared inside a nested generate loop needs the full
  path (`dut.g_slot[5].g_ctx[0].g_dir[0].nba`); a level up it is
  "Unresolved reference" and the design will not even load.
* Guard a probe with a condition on TB variables (`if (cyc == 3 && dbg_stage ==
  3'd5 && dbg_step == 8'd1)`), never on `$time`: a `$time` comparison silently
  produces no output in this setup even when it compiles.
* A state bank that is all `'x'` or all zero is almost always a *generated table*
  problem (width, sign, or a masked constant), not an RTL problem. Compare the
  emitted numbers against a hand computation before touching the RTL.
* An `'x'` in a live cell means an out-of-range unpacked-array index, i.e. a
  table entry that says "none" where the RTL wanted a real index (or vice versa).
  Assert the sentinel against the graph in the generator.

## 6. Generator assertions that now guard this

`make_lattice_sim.py` refuses to write a header unless, for the requested config:

* the layers share one rectangular spatial set; `(node_slot, slice)` is unique;
  node addresses are pairwise distinct;
* `edge_slot` is unique and `(edge_slot, slice)` is a bijection onto the edges;
* `above` for nodes and edges is the same element one graph layer up, and its
  cell exists;
* the generator's node address and a replay of the RTL's own formula agree;
* the node and edge banks are disjoint and inside the memory, and the four bands
  (node register, node mirror, edge register, edge mirror) are pairwise disjoint;
* each cell's observation-bus address equals its own address;
* every DROP-source table (`AB_A`/`AB_SL`, `EB_ABA`/`EB_ABS`) names the graph's
  `above` cell and its slice, and the "has an above" flag matches the graph;
* every neighbour port offset plus its slice names the neighbour's own cell.

`fpga_flow/synth_lattice.ps1` additionally re-reads the generated header's own
metadata comment and refuses to synthesize if it does not match the requested
`code`/`d`/`slices` -- the guard against the false `surface d5` result recorded in
`optimization_report.md` 6.20.3.

## 7. Cost of the fix

* One comparator per cell against `phase` per port (an integer constant vs an
  `SLW`-bit phase), and an address mux. For `rep d3 n=2` the array went from
  the verified build (1,063 LUT / 437 FF for `rep d3 n=2`) to the numbers in `optimization_report.md` 6.20.4, measured with
  the same flow as the flat baselines. Nothing else about the datapath changed:
  the PE and edge bodies are the same RTL as the flat array's.

## 8. 结项之后的追加记录（n 扫描 / 紧致化 / 合并的真正障碍）

本节简短记录 §1–§7 之后发生的事，细节在 `optimization_report.md` §6.20.9–6.20.12
与 `snowflake_n_design.md` §4.8.3。

1. **边槽位紧致化**（报告 §6.20.10）：`ESLOT` 由盒子上界 `3·P·gmax` 改为**稠密编号**
   （rep d3 24→10、surface d3 72→38、surface d5 270→183、surface d7 504→381），
   `ES_STRIDE = ESLOT`。六条回归仍全 PASS。**面积中性**：rep d3 逐位相同（1,063/437）、
   surface d3 +1.0%——空槽位的数据通路本来就被综合器当死逻辑剪掉了。
2. **NCTX 扫描**（报告 §6.20.11）：**n=2/3/5 全部逐行 PASS**
   （rep d3 n=2/3、rep d5 n=2/3/5、surface d3 n=2/3、surface d5 n=2/3），
   把验证面从"只有 n=2"扩到多切片；面积上 n 越大越差（rep d3 1063→1169；
   rep d5 3320→3555→3603）。可用 n 受 `nl` 整除结构限制（nl=3→{2,3}，nl=5→{2,3,5}，nl=7→{2,3,4,7}）。
3. **结构复核（本轮最重要的发现，报告 §6.20.9）**：层次化资源报告显示阵列是
   `g_slot[*].g_ctx[*].pe_i` / `g_eslot[*].g_ectx[*].ed_i`，即
   **`NSLOT × NCTX` 个数据通路 + 一个共享 bank**（顶层 233 LUT + 506 FF = bank）；
   空槽位被剪掉后**活数据通路数 = 节点数/边数，与扁平阵列完全相同**
   ⇒ 第 (b) 步的"合并 n 套实例"**没有发生**，"面积共享"在当前形态下等于零。
   本文件 §1/§2 里"实例数 8+24 vs 12+13"的说法**作废**（那是槽位数）。
4. **合并的真正障碍（设计文档 §4.8.3）**：第 (c) 步的相位不变性只解决**读状态**；
   merging 要的 `push` 是邻居**本 stage 的 flooding 结果**（输出），邻居相位晚时合并后拿不到。
   B/C（复制 flooding）在 d21 按 5,040 个跨片端口估算几十万 LUT（估算）⇒ 不可行。
   **可行解 = merging 两趟**：pass A 只做 flooding 并提交 `cid/ptr/grown`，
   pass B 只做 syncing、用 bank 里已更新的 `ptr` 判 push/flip（几乎零额外面积），
   代价是 merging 相位翻倍（整步约 +40% 延迟）。**待实现。**
5. **surface d5 综合**：三次尝试均失败（一次 `EXCEPTION_STACK_OVERFLOW`、两次被运行环境回收），
   d5 面积继续记**"未测"**。
6. **流程缺陷（已修）**：`sweep.ps1` 的 tag 不含切片数 ⇒ n 扫描会逐行覆盖自己的产物；
   已加 `_s<n>` 后缀并让 `synth_lattice.ps1` 传下去（n=2 保留旧 tag）。
7. 已验证的 RTL 备份：`fpga_flow/snowflake_pe_array_lat.sv.verified`（合并前请先对照它）。

## 9. 追加记录：两趟 merging 与"一个槽位一个数据通路"（均已逐行验证）

本节的每一条都有实测支撑；细节在 `optimization_report.md` §6.21–§6.22
与 `snowflake_n_design.md` §4.8.4–§4.8.5。

### 9.1 两趟 merging（`SNOW_LAT_2PASS`，复制版）

一条 merging 轮拆成两趟相位：pass A 只做 flooding（提交 `cid/ptr/grown` + 本节点的 push 判决），
pass B 只做 syncing（用 bank 里的 `ptr` 做比较）。**六条逐行 PASS**。

落地时有两处与设计文档的写法相反/补充，都做了负对照：

* **`!IS_BND` 必须由生产方提交（`SO_PB`）。** `push = !IS_BND && defect && (n_ptr != C)`，
  最后一项是**生产方**的身份位。先用黄金轨迹回答"它会不会真的起作用"
  （`fpga_flow/check_pb_bnd.py`）：**会**——边界节点确实会同时持有
  `defect=1` 与 `pointer != C`（surface d3 `seam` 10、surface d5 5、surface d5 `seam` 22）。
* **pass B 必须读相位相关的那个字**，而不是文档 §4.8.4(a) 的"一律读寄存器"：
  pass B 自己的提交把镜像重写成"pass B 起始值"，其 `ptr` 正是 pass A 的结果、
  其 `defect/active` 仍是本轮起始值 ⇒ 一次动态读同时满足两个字段。
  负对照（读裸寄存器）**FAIL 2054/2314**。

控制器：`lat_bpass` 交替、`stage_last` 取代 `phase_last`（dump 仍在 pass B 末尾发一次）、
边只在 pass B 提交、busy 把 A/B 或起来。
**踩到的坑**：`SNOW_PE_STW` 原公式多一个顶端 slack 位 ⇒ `OFF_PB` 读到它 ⇒ 一次 push 都没发生
（golden `T 3 m 1` 节点 4 defect=1、RTL 0；merging 只跑 3 个子轮而 golden 6 个）。
生成器现在把 `SNOW_PE_STW` 与字段和逐项对账。

### 9.2 合并：`snowflake_pe_array_lat1.sv`（一个槽位一个数据通路）

`NSLOT + ESLOT` 个数据通路，每拍跑一个 context；原编译期 `CELL = slot*NCTX + slice`
全部换成运行时 `slot*NCTX + phase` 的表读。**六条逐行 PASS**，
且**三条构建（单趟复制版 / 两趟复制版 / 合并版）的轨迹逐字节相同**。

合并后**不能留任何活线抽头**（`cell_push`/`cell_pulse` 消失，`NB_C`/`EB_CU`/`EB_CV` 作废）：

* `push` → 生产方提交的 `SO_PB`（唯一不是状态的那一项是身份位）；
* `pulse` → **重算**：PE 在 GW/GH 的 pulse 只依赖端点本轮的 `active/whole/grown`
  （`GW: ONE_ONE ? active : (active && whole)`；`GH: active && !whole && !grown`），
  而那个字消费者本来就在读 ⇒ 每端点几个门，取代原来的 `ESLOT` 路 mux。

两个实测 bug（都属于"看起来对、其实静默错"）：

1. **复位**：曾让 `phase` 在复位期间走一圈；**第一个复位沿上 `phase` 还是 `x`**，
   写进 `bank['x']`，整个 bank 保持初始化全 0（每个节点复位后 `cid=0/whole=0`）。
   现在在同一个 always 块里一次展开全部 `NCTX` 个 context。
2. **静默位**：busy 的每槽位 shadow 行里，**正在跑的那个相位的位这一拍还没写**，
   必须屏蔽掉、由组合值补上（`qa = |(bshA & ~ph_oh)`）；不屏蔽会读到**上一轮**那一格的答案。
   症状是"每个 merging stage 多跑一个子轮、而状态逐位不变"。
3. **面积（最终形态 + 两个数据点，见报告 §6.23）**。`rep d3 n=2`，VU9P 综合 / 5 ns：
   复制版 1,063 LUT / 437 FF / 184.1 MHz；合并版（时钟复位路径）1,125 / 387 / 219.0；
   合并版（bank 全镜像预置）1,647 / **9,634** / 210.7；合并版（写口已修）1,805 / 924 / 210.7
   ——**这三段都不可信**。**最终形态**（bank 从 Verilog memory 改成 **packed 寄存器向量**，
   写口/读口全部常量地址）：
   * `rep d3 n=2`：**1,149 LUT / 406 FF / 4.794 ns / 208.6 MHz / 级数 17**
   * `surface d3 n=2`：**4,343 LUT / 1,241 FF / 10.076 ns / 99.2 MHz / 级数 35**
     （扁平 3,992/769/4.886/101.2/36；复制版 4,375/1,662/10.889/91.8/39）
   * `Synth 8-6858`（"常量驱动被保留、触发器被忽略"）**全部为 0**
     ⇒ 综合网表第一次与逐行验证过的 RTL 一致。
   **结论**：数据通路 25→18 / 87→62，但**每数据通路贵 1.5–1.7×**
   （37.0→63.8、45.9→70.0；两点斜率 49.5→72.6）⇒ **回本条件是共享倍率 > ~1.6**，
   而能测的三档是 1.39 / 1.40 / 1.59 ⇒ **"打平到略亏"是被倍率解释的**，不是结构不成立。
   `surface d5 n=2`（273 个数据通路，复制版 720 个）：**20,524 LUT / 5,197 FF /
   10.614 ns / 94.2 MHz / 级数 35**（80 分钟 / 12.2 GB 峰值）
   ⇒ **这是 lattice 路线第一次在 LUT 上低于扁平阵列**（22,620 → 20,524，**−9.3%**），
   代价是 FF +42% 与编译时间。复现用 `fpga_flow/run_lattice1_surface_d5.ps1`
   （跑完再核对头文件配置 + 可用内存下限保护）。
   三份日志里都有 `[Synth 8-6859]/[Synth 8-6858] multi-driven ... constant driver
   PRESERVED, other driver ignored`，**全部落在 `bank_reg[*][*]`**（复制版 24、合并版 48/50）
   ⇒ 综合网表不是逐行验证过的那份 RTL，**复制版同样如此**（报告 §6.20.4 的那一行也带这个保留）。
   已排除复位路径：把每 cell 的时钟预置换成生成器直接吐**整张 bank 的上电镜像**
   （新表 `SNOW_LAT_BANK_INIT_VEC`，生成器断言"镜像 = `SNOW_LAT_PE_RST_VEC`"、
   六条回归仍 PASS、计数器逐位相同），**警告数 50 不变**
   ⇒ 根因是**共享 bank 里"地址是 wire"的写口**（Vivado 无法证明不同 writer 的字互不相交）。
   **⇒ 补上网表级回归之前，仍不把面积写成结论。**
   可确定的是**数据通路数真的降了**：`rep d3 n=2` 25→18、`surface d3 n=2` 87→62、
   `surface d5 n=2` 358→273。
   **修法（已落地）**：提交时**按 `phase` 显式分支、每个分支一个常量地址**
   （地址取自 `myaddr_mux` / `eaddr_mux` packed 常量向量，循环展开后是常量），
   读路径一行没改。效果：`8-6858` **103 → 0**、FF **9,634 → 924**、
   剩余 47 处 `8-6859` **全部落在观测总线 `obs_*`**（不涉及状态）。
   六条回归 + n=3/5 四点仍全部 PASS。
4. **索引的写法会决定综合能不能收敛，而且这是本形态最贵的一课（表和 bank 都一样）**：用 wire 直接索引生成的表，
   Vivado 会给**每一个读口**造一张完整 ROM + 地址译码器；用 wire 当地址读 bank，
   则会给每个读口造一张**整存贮器 mux**。两者都改成
   "把该 `phase` 可能的 `NCTX` 个值打成一条 packed 常量向量、再用 `phase` 选一"
   （表和 bank 的源地址对每个 context 都是常量），之后 `rep d3 n=2` 六条回归仍逐行 PASS、
   计数器逐位相同。**`surface d3 n=2`（744 字 × 576 读口）在最终版上仍 20+ 分钟未收敛**
   （`rep d3 n=2` 只有 216 字 × 64 读口）。**最后一处漏网的是 PE 自己的状态读
   `.st_in(bank[myaddr])`**；补上之后 `rep d3 n=2` 的 LUT 1,805→1,178、FF 924→388、
   综合时间 14→3.3 分钟，**且多驱动警告归零**。
   `surface d3 n=2`（744 字 × 576 读口）在 memory 形态下跑到 **56 分钟 / 10.2 GB** 未收敛；
   **把 bank 改成 packed 寄存器向量之后同一配置 ~10 分钟 / 2.5 GB 就出结果**——
   这是能不能综合出来的分水岭。代价是 elaboration 的内存与 bank 位数成正比：
   `surface d5 n=2` 是 5,460 字 × 20 位 = **10.9 万位**，elaboration 峰值 **22 GB** ⇒ FAIL。
   ⇒ 要继续往上走，只能把状态真的做成 LUTRAM（或换机器）。
5. **⚠️ 位宽要跟着搬**：把读口改成常量地址时第一次**没有截到 `AW` 位**，
   `rep d3 n=2` 立刻 FAIL（1950/2314、commit 8/6、live 228 而非 284），
   症状与 §9.1 的 `SO_PB` bug 一样。生成器把负偏移**掩码进 `AW` 位**（`_vec`），
   要的是**模 `2**AW`** 的地址算术；复制版里 `nba` 恰好声明成 `wire [AW-1:0]`
   （隐式截断）把这件事藏住了。`absrc` 那一处复制版本来就是全宽索引，
   所以最终版也**故意**不截断。
6. **genvar 每个 generate 循环一个名字**：兄弟循环共用 genvar 时，第二个循环里的常量
   表达式可能用第一个循环剩下的值求值（复制版为此丢过 15 个边 cell，本轮又踩一次）。
   `snowflake_pe_array_lat1.sv` 现在用 `gv_c1`…`gv_c6`。

### 9.3 证据与复现

    powershell -NoProfile -ExecutionPolicy Bypass -File fpga_flow\battery_2pass.ps1
    powershell -NoProfile -ExecutionPolicy Bypass -File fpga_flow\battery_lat1.ps1
    powershell -NoProfile -ExecutionPolicy Bypass -File fpga_flow\synth_lattice1.ps1 -Code rep -D 3 -Slices 2

日志 `logs/battery_2pass.txt`、`logs/battery_lat1.txt`；
轨迹 `evidence/PASS_lat_*`（单趟）、`evidence/PASS_lat_*_snow_lat_2pass_*`（两趟）、
`evidence/PASS_lat1_*`（合并）。

**流程缺陷（已修，同类第三次）**：`sweep.ps1` 的 `[string] $TagPrefix` 被写在了
`$Graph` 那一行的**注释里**，于是 PowerShell 从未绑定它——`-TagPrefix lat1_` 被静默收进 `$args`，
tag 与复制版逐字节相同。已挪到独立行；`synth_lattice1.ps1` 现在会传出 `lat1_` 前缀。
（前两次同类：`--dirs used` 的 tag 少了 `_used`、n 扫描的 tag 少了 `_s<n>`。）
**后果**：该次被终止的运行覆盖了 `logs/flow_synth_rep_d3_2to1_lattice_lat_xcvu9p.log`
（数字仍在 `summary_synth.csv`）；重跑 `synth_lattice.ps1 -Code rep -D 3 -Slices 2` 可复原日志。

### 9.4 n 点（合并版）

`lat1` 在 n=3/5 上同样逐行一致（最终版 RTL）：`rep d3 n=3` 2314/2314、
`surface d3 n=3` 7832/7832、`surface d5 n=3` 40112/40112、`surface d5 n=5` 40112/40112
（分别 6/6 与 4/4）；n=2 的六条也在最终版上重跑 PASS 且**计数器逐位不变**。
脚本 `fpga_flow/battery_lat1_n.ps1`，日志 `logs/battery_lat1_n.txt`，
轨迹 `evidence/PASS_lat1_*_s3|s5_rtl.txt`。

### 9.5 最终版 `lat1` 的完整验证（本轮）

- 逐行回归 **十条全 PASS**（与综合无关）：n=2 六条（`rep d3` / `surface d3` / `surface d5`
  × std/`seam`）、n=3 三条（`rep d3` / `surface d3` / `surface d5`）、n=5 一条（`surface d5`）。
  三条构建的六条 n=2 轨迹仍**逐字节相同**。
- 面积：`rep d3 n=2` = **1,178 LUT / 388 FF / 4.782 ns / 209.1 MHz**，
  多驱动警告 **0**（见第 3/4 条）。
- surface 面积：**未测**（内存，见第 4 条）。

### 9.6 面积对照结论（本轮）

- **合并版每个数据通路贵 1.5–1.8×**（"每 context 常量选择"：端口表选一、bank 地址选一、
  自身状态选一），共享省的是**数据通路个数** ⇒ **回本条件 ≈ `N_flat/N_merged > 1.5~1.8`**。
- 本轮能综合的三档共享倍率：rep d3 n=2 = 25/18 = **1.39**、surface d3 n=2 = 87/62 = **1.40**、
  surface d5 n=2 = 435/273 = **1.59** ⇒ **全部卡在门槛上或之下**，
  这正是实测到的"LUT 与复制版几乎相同、比扁平阵列高 12–28%"。
- ⇒ §6.1 的模型要补的第三项不是常数，而是**倍率 `c_merged ≈ (1.5~1.8)·c_flat`**。
  代进去 d21/n=7 的共享倍率 **7.0** 远在门槛之上 ⇒ 模型仍支持"大 n 划算"，
  **但本机验证不了**（surface d5 已要 22 GB elaboration）。

### 9.7 网表级回归（**已跑出轨迹**；根因是 `glbl.GSR`，见报告 §6.24）

本形态的 bank 曾经是 `reg` memory，而"多驱动 → 保留常量驱动、忽略触发器"（`8-6858`）
会**静默改掉网表语义**，RTL 回归看不出这件事 —— 所以必须有门级回归。

- 新脚本 `fpga_flow/netlist_regress_lat1.ps1`：生成并校验该配置的头 → 综合出功能网表 →
  `xvlog/xelab/xsim` 跑**同一个 TB** → 与同一份 golden 逐行比。
- 三处踩到的坑都已修：`netlist_synth.tcl` 需要 `set_property include_dirs`
  （`read_verilog` 在 2020.2 没有 `-include_dirs`，否则报 `cannot open include file
  snowflake_graph.svh`）；综合后的网表**没有参数表**，TB 的 `#(.ONE_ONE(...))` 要用
  `` `ifndef SNOW_NETLIST `` 包住（否则 xelab 报 `does not have a parameter named ONE_ONE`）；
  `xsim -t` **不能收反斜杠路径**（`D:\a\b` 变成 `D:ab`），用同目录相对名。
- ✅ **2026-09-20：轨迹跑出来了，`REGRESS_VERDICT PASS`（2314/2314、6/6），
  而且与同一配置的 RTL 轨迹逐字节相同**（SHA-256 `BB3AE926AB6A4C0F…`）。
- **根因（当初的两条"已排除"都是错的）**：`write_verilog -mode funcsim` 会把 Vivado 的
  `glbl` 模型一起写进网表，`GSR` 在 `ROC_WIDTH`(=100000) × `` `timescale 1 ps `` = **100 ns**
  内一直是 1；unisims 触发器在此期间 `assign Q_out = INIT`、**完全忽略时钟**。
  本 TB 复位只压 5 拍（45 ns 释放）、第一个 `start` 落在 ≈85 ns ⇒ **被静默吞掉**。
  探针实测：`start` 那一拍 FSM **次态=110（ST_DROP）、CE=1**，而现态**始终是 000** —— 
  次态对、使能对、时钟在翻，寄存器不动，只有 GSR 能解释。
  ⇒ 旧的"已排除 funcsim 不写初值"与此**无关**；"reset 被当冗余优化掉"也**不成立**。
- **修法**：TB 在 `ifdef SNOW_NETLIST` 下 `while (glbl.GSR !== 1'b0) @(posedge clk);` 再开始。
  GSR 把每个状态位按在 `INIT`，而 `INIT` 就是 RTL 复位路径写的初值 ⇒ 等完之后网表站的位置
  与 RTL 复位后相同，不需要别的改动。**RTL 轨迹一字未动**（这段不编译进 RTL 运行）。
- **顺带（旧网表作废）**：上一轮那个有 **100 条 `[Synth 8-6859] multi-driven net`** 的网表
  是**改动前的 RTL** 综合出来的（RTL 在 16:36 才改成"每槽位自己的寄存器 + 只读视图"）。
  同一版 RTL 重新综合：**`8-6859 = 0` / `8-6858 = 0`，`Synthesis finished with 0 errors,
  0 critical warnings and 0 warnings`**（`rep d3 n=2`）。⇒ 那 100 条警告**不要再去追**。
- 覆盖：`fpga_flow/battery_netlist_lat1.ps1`（`-Pattern seam` 已接到门级侧）；
  取证工具 `fpga_flow/netlist_qmap.py`（某 net 谁在驱动、驱动是死是活）。

### 9.8 三点总结（本条是对 §6.1 面积模型的回答）

| 配置 | 共享倍率 | 每数据通路比 `c_merged/c_flat` | LUT 结果 |
|---|---|---|---|
| rep d3 n=2 | 1.39 | 1.73× | +24.4%（亏） |
| surface d3 n=2 | 1.40 | 1.53× | +8.8%（亏） |
| surface d5 n=2 | 1.59 | **1.45×** | **−9.3%（赚）** |

⇒ **盈亏平衡点 ≈ 共享倍率 1.5**，且**每数据通路比随规模下降**（1.73→1.53→1.45）
—— 说明"每 context 常量选择"里有一部分是**可摊薄的共同开销**（shadow / 控制 / 观察总线），
不是纯粹的每 cell 常数项。三点方向一致 ⇒ 支持"共享倍率越大越划算"，
d21/n=7 的 7.0 远在盈亏点之上；**但这仍只是三点拟合**，要真正验证必须有一档
共享倍率明显 >2 的配置能综合出来。

### 9.9 `LUT(n)`（合并版，最终修订版）

| 配置 | 共享倍率 | LUT（合并） | LUT（扁平） | 结果 |
|---|---|---|---|---|
| rep d3 n=2 | 1.39 | 1,149 | 924 | +24.4% |
| rep d3 **n=3** | **2.78** | **712** | 924 | **−22.9%** |
| surface d3 n=2 | 1.40 | 4,343 | 3,992 | +8.8% |
| surface d3 **n=3** | **2.81** | **2,628** | 3,992 | **−34.2%** |
| surface d5 n=2 | 1.59 | 20,524 | 22,620 | −9.3% |

⇒ **盈亏点 ≈ 共享倍率 1.5**（与"每数据通路贵 1.45–1.73×"推出的门槛一致），
**n=3 的两个配置已经明显低于扁平阵列**，而且都是同一版通过逐行回归的 RTL
（`rep d3 n=3` 2314/2314、`surface d3 n=3` 7832/7832）。
