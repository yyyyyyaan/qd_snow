<!-- ppt-master-schema: design-spec/v1 -->
# snowflake_groupmeeting_20261026 - Design Spec

## I. Project Information

| Item | Value |
| --- | --- |
| Project Name | snowflake_groupmeeting_20261026 |
| Canvas Format | PPT 16:9, 1280 × 720 |
| Page Count | 28 |
| Primary Language | zh-CN |
| Target Audience | 实验室老师与同学，量子纠错与 FPGA/数字设计背景混合，含刚进组、知识量较少的新同学 |
| Communication Intent | 先讲清做了什么与为什么这样做，再用代码与证据说明当前进度，主动暴露缺口，最后给出与相关工作的定位 |
| Desired Audience Outcome | 听完能按论文的 Algorithm 编号说出每一段在 RTL 里的文件、分支与行号，并知道哪些已被逐行验证、还缺哪三件事 |
| Core Message / Ask / Action | 我把 Snowflake 流式解码算法落成了一条可综合、可逐行回归的 FPGA 实现，并在同口径下完成了资源与时序刻画；算法与零丢弃证明来自 Snowflake 论文，一节点一 PE 的阵列组织来自 Helios，本项目主张的是实现、验证与资源刻画 |
| Delivery Context | 实验室组会现场主讲，30–50 分钟：正文 38 分钟 + 7 分钟提问；会后留在组内作为进度存档 |
| Artifact Afterlife | 组会现场投屏、会后被同学当作入门材料阅读、作为下一阶段计划的书面依据 |
| Reading Mode | balanced |
| Content Strategy | Balanced（默认）：按论文算法编号重组章节，事实严格限定在工作区内的六份文档与 RTL 源码，不引入外部数据 |
| Design Style | 工程评审：瑞士极简栅格 + 工程制图注释语言（白色纸面、细规则线、等宽代码、右侧状态标记） |
| AI Image Acquisition Path | not applicable |
| Generation Mode | continuous |
| Spec Refinement | disabled |
| Speaker Notes | enabled — 采用 Stage-2 建议值 true |
| Custom Animations | disabled — 采用 Stage-2 建议值 false |
| Narration Audio | disabled — 采用 Stage-2 建议值 false |
| Created Date | 2026-10-26 |

## II. Canvas Specification

| Property | Value |
| --- | --- |
| Format | PPT 16:9 |
| Dimensions | 1280 × 720 |
| viewBox | `0 0 1280 720` |
| Margins | 左右 72 px，上下 64 px |
| Content Area | x 72–1208，y 64–656（1136 × 592） |

## III. Visual Theme

### Theme Style

- **Mode**: custom
- **Visual style**: custom
- **Mode References**: pyramid, briefing, instructional
- **Mode Behavior**: 以 pyramid 负责全场骨架——每页标题写成判断句，正文再展开支撑证据；以 briefing 负责证据页的中性、完整与可扫读（进度矩阵、口径对比不加工成故事）；以 instructional 负责 P02、P03、P06 三页基础与 P08、P11–P14 五页代码导读，先给论文定义再指到 RTL 位置。三者按页分工，不混在同一页里互相拉扯。
- **Visual Style References**: swiss-minimal
- **Visual Style Behavior**: 以 swiss-minimal 的严格栅格、锐利几何、单一线宽与大留白为骨；补入工程制图的注释语言——极浅网格底、等宽字体的信号名与文件行号、以代码块作为第一等证据——但不采用深色蓝图底色，纸面保持纯白。全篇无阴影、无圆角卡片、无渐变；色块只用于分区或标注当前状态。
- **Theme**: 工程评审桌面
- **Tone**: 克制、可核查、不夸大；数字给口径，结论给边界

### Color Scheme

| Role | HEX | Purpose |
| --- | --- | --- |
| Background | #FFFFFF | 全篇纸面 |
| Secondary background | #F2F4F7 | 代码块底、证据块底、表头 |
| Primary | #12263A | 标题、结构主线、代码正文 |
| Accent | #B23A2E | 缺口与风险标记、关键判断的强调线 |
| Secondary accent | #2C6E9B | 已完成状态、代码中的常量与数据路径 |
| Body text | #1B2632 | 正文 |
| Secondary text | #5A6672 | 图注、脚注、代码注释 |
| Divider | #D8DEE5 | 规则线、表格线、网格底 |

## IV. Typography System

### Font Plan

| Role | Character (Reference) | Primary | English if non-English | Fallback tail |
| --- | --- | --- | --- | --- |
| Title | neo-grotesque, bold, tight | 微软雅黑 | Arial | PingFang SC, Noto Sans CJK SC, sans-serif |
| Body | neo-grotesque, regular | 微软雅黑 | Arial | PingFang SC, Noto Sans CJK SC, sans-serif |
| Code | 等宽，用于信号名、文件名、行号与代码块 | Consolas | Consolas | Cascadia Mono, Courier New, monospace |

- **Code stack**: Consolas, Cascadia Mono, Courier New, monospace
- **Title stack**: 微软雅黑, Arial, PingFang SC, Noto Sans CJK SC, sans-serif
- **Body stack**: 微软雅黑, Arial, PingFang SC, Noto Sans CJK SC, sans-serif

### Font Size Hierarchy

| Purpose | Anchor Size (px) |
| --- | ---: |
| Body | 22 |
| Title | 38 |
| Subtitle | 26 |
| Annotation | 15 |
| Code | 16 |
| Display | 96 |

## V. Layout Principles

### Deck-wide Direction

- **Hierarchy direction**: 页面左上先落判断句标题 → 其下一行核心信息 → 中部证据（代码块、图、表）→ 右下角缺口注记
- **Composition tendency**: 左对齐、单焦点；代码页左半页放真实代码与文件行号，右半页只放"这段代码对应论文哪一步"；正文不与代码抢同一块区域
- **Cross-page continuity**: 页眉左侧固定章节号与章节名，页眉右侧固定状态标记（已完成 / 部分 / 未做 / 基础 / 边界 / 定位 / 总结）；标题基线、左边距、页脚线三层在所有页面保持同一位置
- **Spacing posture**: 随页面节奏变化——dense 页块距压缩到 16 px，breathing 页放宽到 40 px 以上
- **Spacing anchors**: 页面边距 72，块间距 24，栏间距 32，圆角 2，正文行高 1.45

## VI. Icon Usage Specification

- **Primary bundled library**: none

| Icon Path | Suitable Scenarios |
| --- | --- |

## VII. Visualization Reference List

| Page | Family | Template | Usage |
| --- | --- | --- | --- |
| P07 | table/comparison_matrix | — | 并列两种滑动窗口：批处理 2d 窗口与流式 1d 窗口，逐行比较窗口高度、丢弃层数、状态保存与代价来源 |
| P20 | chart/dumbbell_chart | — | 每个码距一行，两个数据点分别为优化前与优化后的时钟周期，中间连线暴露差距，并叠加 5 ns 目标线 |
| P24 | table/record_table | — | 每个工作包一行，列为状态、当前证据、还缺什么 |
| P25 | table/comparison_matrix | — | 每节点 LUT、每节点寄存器、LUTRAM、多板需求四项，Snowflake 与 Helios 两列并列 |

## VIII. Image Resource List

| Filename | Dimensions | Ratio | Purpose | Type | Image pattern | Crop Policy | Acquire Via | Status | Reference | text_policy | page_role |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |

## IX. Content Outline

### Part 1: 背景与问题定义（00:00–08:00）

#### Slide 01 - Snowflake 流式解码器：在单颗 FPGA 上把解码图铺成阵列

- **Audience move**: 刚坐下、不知道今天要听什么 → 知道这是一次"实现了什么、验证到哪、还缺什么"的进度汇报
- **Relationships**: 标题、副标题、汇报信息、状态基线四组信息构成自上而下的 order；标题为主，其余为从属
- **Composition**: 左侧三分之二压一个大标题与一句副标题，右上角一块极浅网格承载图意；底部一条细规则线放汇报人与导师
- **Title**: Snowflake 流式解码器：在单颗 FPGA 上把解码图铺成阵列
- **Core message**: 本次汇报讲一条从算法到可综合 RTL 的实现路径，以及它当前的真实进度
- **Content**:
  - 主标题
  - 副标题：从流式 Union-Find 到一节点一 PE 的可回归实现
  - 组会信息：实验室组会 · 2026-10-26
  - 汇报人 / 导师一行
  - 讲解 38 分钟 · 提问 7 分钟
- **Cover impact**: 钩子用一句话把全场的赌注说清 ——「解码器不是算法的附属品，它是实时性的瓶颈」

#### Slide 02 - 一个逻辑比特，要用上千个物理比特来守

- **Audience move**: 只知道"量子计算会出错" → 能说出为什么必须纠错、码距 d 在这个代价里扮演什么角色
- **Relationships**: 物理错误率与阈值是 contrast；码距 d 与物理比特数是 parent→membership（d 决定规模）
- **Composition**: 左侧一个超大数字 4d² 作为 Display，右侧一张四行码距对照表；底部一条结论带
- **Title**: 一个逻辑比特，要用上千个物理比特来守
- **Core message**: 纠错的代价是面积，收益是指数级压低的逻辑错误率
- **Content**:
  - 表面码的数据比特数：2d²−1；加上测量比特，量级约 4d²
  - d=21 时约 1,764 个物理比特守 1 个逻辑比特
  - 前提：物理错误率低于阈值；低于阈值后，逻辑错误率随 d 增大指数下降
  - 一句过渡：所以解码器不是可选项，它要和测量一起实时跑
- **Mathematical content**: N_{phys} \approx 4d^{2}

#### Slide 03 - 一次解码 = 在 2 空间 + 1 时间的图上找连通块

- **Audience move**: 没听过"综合症"和"解码图" → 能看懂后面所有模块都在处理同一张图
- **Relationships**: 同一层的探测器按空间近邻 link；上下两行边界节点是该层的 membership 边界；层与层之间是 order（时间）
- **Composition**: 中央画一个时间层（20 个探测器 + 上下边界各 5 个），背后四层只画轮廓表示时间堆叠；右侧四条图例与规模注记
- **Title**: 一次解码 = 在 2 空间 + 1 时间的图上找连通块
- **Core message**: 解码器处理的不是量子态，而是一张由测量历史长出来的三维图
- **Content**:
  - 综合症：稳定子测量结果相对上一次的变化；没变化记为 0
  - 探测器：一次"变化"事件，图上就是一个节点
  - 解码图：节点是探测器，边是可能产生这对探测器的错误机制；时间轴就是测量轮次
  - 规模示例（d=5 未旋转）：每层 20 个探测器 + 上下边界各 5 个，5 层共 5×(20+2×5)=150 个节点
  - 每个节点按 12 个方向登记邻居；边界节点只登记存在的方向
- **Mathematical content**: N_{node} = T \times (N_{det} + 2N_{bnd})

#### Slide 04 - 解码器的三条硬约束，决定了它必须长成并行阵列

- **Audience move**: 以为解码器只是个软件库 → 明白它是被延迟、吞吐、面积同时挤压的硬件问题
- **Relationships**: 三条约束互相制约，是 overlap 关系而非并列清单；任一约束放松都会改变另外两条的可行域
- **Composition**: 三条横带自上而下（延迟 / 吞吐 / 面积），右端各挂一个具体数字；右侧深色块给出取舍结论
- **Title**: 解码器的三条硬约束，决定了它必须长成并行阵列
- **Core message**: 实时预算把"全局匹配"这类算法挡在门外，剩下的是能一拍一拍推进的局部算法
- **Content**:
  - 延迟：解码结果要赶在下一次测量前回到实验控制，量级在微秒
  - 吞吐：每一轮测量都要解一次，不能攒着
  - 面积：要落在一颗 FPGA 上，多板互联在延迟上先输
  - 取舍：MWPM 需要全局匹配，代价与图规模强耦合；Union-Find 只做局部生长与合并，天然可以一拍一拍推进
  - 边界：这里只讲约束形状，不比较两种算法的阈值优劣

#### Slide 05 - 算法不是我提的，我主张的是实现、验证与资源刻画

- **Audience move**: 以为整条链路都是一个人做的 → 清楚三条边界，后面听到"论文"时不会误认为是在宣称复现
- **Relationships**: 三个来源是并列 ownership 关系；本项目与两条论文线是 membership 上的交集，不是包含
- **Composition**: 左右两列分别是两篇论文的主张，中间一窄列是本项目的主张；三列用同一基线对齐
- **Title**: 算法不是我提的，我主张的是实现、验证与资源刻画
- **Core message**: 说清归属，是为了让后面的数字站得住
- **Content**:
  - Snowflake 论文：流式 frugal 解码、窗口高约 d、每轮提交一层、c=1 时丢弃 0 层；逻辑比特寿命 +24.9(5)%
  - Helios 论文：分布式 Union-Find、一节点一 PE、混合树-网格结构、direct channel
  - 本项目：把上述算法组织成可综合的 RTL，建立逐行回归，给出同口径的资源与时序刻画，并推到板级外壳
  - 明确不做：不重跑论文的阈值实验，不声称复现论文全部结果

### Part 2: 解码算法与系统方案（08:00–13:00）

#### Slide 06 - Union-Find 只有三个动作：生长、合并、投票

- **Audience move**: 觉得并查集是个数据结构名词 → 能用三个动作讲清它怎么把探测器连成簇
- **Relationships**: 三个动作是 order（生长→合并→投票）；簇与簇之间是 link，合并后是 membership
- **Composition**: 三段并列，段间用短箭头连接；下方一条"为什么适合硬件"的结论带
- **Title**: Union-Find 只有三个动作：生长、合并、投票
- **Core message**: 解码就是在图上做局部生长，遇到邻居就连，最后按奇偶投票决定谁被翻转
- **Content**:
  - 生长：每个簇按边向外扩；本项目用半条边 +½，2:1 调度，使边的生长值只需 2 bit（0 / 1 / 2 三态）
  - 合并：两个簇在一条边上相遇，取较小簇标识作为新的根；缺陷沿指针一路上推，相遇即湮灭
  - 投票：簇里探测器数为奇数则标记该簇，最终由边决定哪些比特被翻转
  - 为什么适合硬件：三个动作都只看邻居，没有全局数据结构
  - 边界：不证明最优性，也不与 MWPM 比阈值

#### Slide 07 - 窗口只高 d 层，且不丢一拍

- **Audience move**: 以为流式解码一定要牺牲精度或吞吐 → 看到 1d 窗口在 c=1 下的代价形状
- **Relationships**: 两种窗口是 contrast；行是同一组比较维度，属于同一 parent 下的并列
- **Composition**: 上半部两张窗口示意（2d 批处理 / 1d 流式）叠在同一时间轴上；下半部四行比较矩阵
- **Title**: 窗口只高 d 层，且不丢一拍
- **Core message**: 窗口高度减半带来面积减半，代价是状态必须跨轮保留
- **Content**:
  - 批处理：攒 2d 轮一起解，窗口高 2d，轮与轮之间有大段重叠
  - 流式：窗口高约 d，每轮上移一层、提交一层；c=1 时丢弃 0 层
  - 同源数字（Helios 论文自己的两组窗口）：d13 下 2d 窗口 371K LUT、1d 窗口 166K LUT
  - 口径提醒：这是批处理 + 重叠带来的代价，不是实现缺陷
  - 本项目的代价：状态必须跨轮保留，因此状态量不随窗口缩小而线性缩小
- **Visualization**: window-compare (table/comparison_matrix)
- **Native-ready**: window-compare=yes

#### Slide 08 - Algorithm 2：frugal 周期，抬一层就提交一层

- **Audience move**: 把"一拍"理解成一次测量 → 看到五个阶段的真实跳转，知道一拍推进的是一个 timestep
- **Relationships**: 五个阶段是 order（DROP→GW→MW→GH→MH）；两处 `!any_c_busy` 是循环的退出条件（parent 决策）
- **Composition**: 左侧阶段机代码（9 行），右侧 DROP 重映射代码与两条契约；底部一条 c=1 结论带
- **Title**: Algorithm 2：frugal 周期，抬一层就提交一层
- **Core message**: 一个解码周期就是这五个阶段，窗口每轮只上移一层
- **Content**:
  - `snowflake_pe_array.sv:780-847`：`ST_DROP→ST_GW→ST_MW→ST_GH→ST_MH→ST_IDLE`
  - 两处 `if (!any_c_busy)` 决定 MW/MH 什么时候结束
  - `snowflake_pe.sv:392-393`：DROP 把上一层状态拉下来并做 CID 重映射
  - 一拍 = 一个 timestep；抬 1 层、提交 1 层
  - c=1 所以丢弃 0 层；Algorithm 1 的批处理在本实现里不存在
- **Core message 边界**: 只讲 frugal 周期，不讲批处理

#### Slide 09 - 离线出图，运行时只跑 RTL

- **Audience move**: 以为板子上跑的是 Python → 明确离线/在线分界
- **Relationships**: 五个环节是 order；上下两条轨道是 contrast（离线 / 在线）
- **Composition**: 一条横向流水线，左侧灰底为离线，右侧深色为在线，中间一条虚线切开
- **Title**: 离线出图，运行时只跑 RTL
- **Core message**: 图结构在综合前就固定成常量，运行时没有任何查表或脚本
- **Content**:
  - 离线：localuf 导出图常量表和黄金轨迹
  - 离线：生成器把噪声模型与码型变成 `.svh` 常量表，同时写 `_part.json`
  - 在线：PS 写入 syndrome，FPGA 跑 RTL，回读轨迹
  - 关键点：运行时没有 Python，没有 ROM，没有地址计算
  - 当前隐患：`design/generated/snowflake_graph.svh` 是过期别名，缺 `SNOW_PE_STW` 与 `SNOW_PTR_DOWN_MASK`，构建前必须重钉

### Part 3: 硬件架构与算法落成（13:00–24:00）

#### Slide 10 - 一个节点一个 PE，一条边一条链路

- **Audience move**: 不知道"分布式"指什么 → 知道它是顶点级分布，不是多 FPGA
- **Relationships**: 节点、边、控制器三类单元是 membership；节点之间按邻居表 link；控制器与全阵列是 parent（唯一节拍源）
- **Composition**: 全页阵列示意：5×4 节点网格与连线，右下角一块全局控制器，引线标注三条事实
- **Title**: 一个节点一个 PE，一条边一条链路
- **Core message**: 图的每个顶点在硅上都有一个对应物，邻居关系变成固定布线
- **Content**:
  - 每个节点例化一个 `snowflake_pe`，每条边例化一个 `snowflake_edge`
  - 邻居关系来自打包常量的常量位选，不是运行时索引
  - 全阵列只有一个阶段寄存器，PE 不各自定节拍
  - 论文里的 distributed 指顶点级并行；Helios 论文第 10 页明确否掉了多 FPGA：I/O 引脚与数十 ns 的跨片延迟
  - 结构上属于混合树-网格：局部是网格，阶段推进是树状归约

#### Slide 11 - Algorithm 7 + 8：一个节点每拍只走一个分支

- **Audience move**: 以为 PE 里是个复杂的算法状态机 → 看到论文五个过程与五个分支一一对应，且共享的状态只有七个字段
- **Relationships**: 五行论文过程与 RTL 分支是 link（一一对应）；五个分支是同一 case 的 membership；状态字段与打包状态字是同一组值的两种排布
- **Composition**: 左侧一张五行对应表（过程 / 分支 / 行号），下方三行状态声明；右侧打包状态字的位偏移
- **Title**: Algorithm 7 + 8：一个节点每拍只走一个分支
- **Core message**: Algorithm 7 就是那个 `case`，Algorithm 8 的五个过程就是它的五个分支
- **Content**:
  - Drop → `ST_DROP` :388-404
  - GrowWhole → `ST_GW` :407-424
  - GrowHalf → `ST_GH` :427-433
  - MergingWhole → `ST_MW` :436-674；MergingHalf → `ST_MH` :436-674
  - 提交（每拍一次）→ `posedge` 块 :701-727
  - 共享状态：`cid / active / whole / defect / grown / unrooted / busy / ptr`
  - 共享晶格版：`SNOW_PE_STW = 7 + SNOW_PTR_W + SNOW_CID_W`，`OFF_BUSY=0` … `OFF_CID`

#### Slide 12 - Algorithm 9：Compare 找根，Syncing 推缺陷

- **Audience move**: 知道有子程序但不知道落在哪 → 看到两段真实代码，能说出它们各自在合并里做什么
- **Relationships**: Compare 与 Syncing 是 order（先定指针，再沿指针同步）；两者共享 `n_ptr` 这一 link
- **Composition**: 左侧两段代码（Compare 节选 12 行、Syncing 6 行），各带文件行号；右侧四条要点
- **Title**: Algorithm 9：Compare 找根，Syncing 推缺陷
- **Core message**: Compare 决定往哪指，Syncing 决定活跃性与缺陷往哪走
- **Content**:
  - Compare（`snowflake_pe.sv:579-621`）：逐方向比较 `nb_cid`，更小就记方向，最后 `DIR2PTR`
  - Syncing（`:648-660`）：根看自己有没有缺陷；非根从父节点取 active，并用 `push` 把缺陷推出去
  - 两路 push 同时到达会异或抵消（`:664-670`）
  - FloodingWhole / FloodingHalf 是这两个块的外层，区别只在 RESET 分支
  - MINTS 把这 12 深拆成 3 组，用 3 拍换深度
- **Core message 边界**: 不逐行念语法，只指出两段的分工

#### Slide 13 - Algorithm 3：Grow 与 Merge 落在一条边上

- **Audience move**: 以为边模块是胶水 → 发现 Grow 的 +½ 与 Merge 的路径翻转都在二十来行里
- **Relationships**: 三个分支是 order（Drop → Grow → Merge）；`growth` 与 `ecorr` 是并列的两个状态位
- **Composition**: 左侧完整代码（17 行），右侧三条对应关系与两个数字
- **Title**: Algorithm 3：Grow 与 Merge 落在一条边上
- **Core message**: 论文的 Grow 是"每条边 +½"，Merge 是"沿路径翻转"，两者都由边模块执行
- **Content**:
  - Grow（`snowflake_edge.sv:71-109`）：`inc = u_pulse + v_pulse`，`growth + inc` 饱和在 2
  - Merge：`if (flip_u ^ flip_v) ecorr <= ecorr ^ 1` —— 两端同时翻转就相消
  - Drop：`growth` 与 `ecorr` 直接继承上一层
  - 选根与路径在 `snowflake_pe.sv:648-670` 完成，边只负责记翻转
  - 量级：d3 的图里 51 条边；每边只摊约 5.6 LUT
- **Core message 边界**: 复位值必须是 0，不是继承值

#### Slide 14 - Algorithm 5：2:1 调度，把半个边的差距补上

- **Audience move**: 以为"生长"就是每拍长一次 → 看到两轮生长各自的分支与 `grown` 位
- **Relationships**: 两轮是 order（整簇 → 半簇）；`whole` 与 `grown` 是 contrast（长没长过、整还是半）
- **Composition**: 左侧 `ST_GW` 与 `ST_GH` 两段代码，右侧三条规则与一句 1:1 的边界说明
- **Title**: Algorithm 5：2:1 调度，把半个边的差距补上
- **Core message**: 第 1 轮只长整簇、第 2 轮只长没长过的半簇，mixed 簇因此不会出现
- **Content**:
  - `ST_GW`（`:407-424`）：`active && whole` 才长；长过置 `grown`，本轮不再长
  - `ST_GH`（`:427-433`）：`active && !whole && !grown` 才长；长完整簇标记复原
  - 论文理由：1:1 会在半条边距时过冲，簇越涨越大（Lemma 2）
  - 2:1 下不会出现混合簇（Proposition 1）
  - 边界：`ONE_ONE=1` 是 1:1 对照开关，本页不展开
- **Core message 边界**: 只解释 2:1

#### Slide 15 - 我不发消息包，我只传一根位线

- **Audience move**: 认为并行解码必须靠消息网络 → 看到删掉的是什么、代价挪到哪里
- **Relationships**: 两种通信方式是 contrast；被删组件与原组件是 parent→removed 的替代关系
- **Composition**: 左半部是消息包结构（收件人 + 奇偶 + 触界 + FIFO 四件套），右半部是四条位线；底部两块写"删掉什么 / 代价去哪"
- **Title**: 我不发消息包，我只传一根位线
- **Core message**: 收发双方同拍同相，通信退化成固定布线上的几根线
- **Content**:
  - Helios：direct channel 传的是带收件人地址的数据包，通道本体是深度 16 的 FIFO，收到后要地址比对、转发、仲裁
  - 本项目：邻居端口只有 `nb_valid / nb_active / nb_grown / nb_push` 各 SNOW_NDIR 位，加每方向一段 `nb_cid`
  - 因为每链路每拍最多一项流量、所有单元同一阶段同步，收发不会失配
  - 代价换了形式：多跳要多拍；关键路径挪到合并时的最小值比较；跨片接缝要做半拍寄存器
  - 量级：每边摊到约 5.6 LUT，91–92% 的成本在节点逻辑

#### Slide 16 - Algorithm 6：控制器每拍只等一个条件

- **Audience move**: 以为控制器在算东西 → 明白它只是在等"不动点"
- **Relationships**: 各 PE 的 busy 位到控制器是 membership→parent 的归约；阶段切换是 order；两种静默来源是 contrast
- **Composition**: 上半部一条关键路径链（cid_reg → 比较 → busy_c → 全阵列 OR → stage_reg），下半部两组对照；底部两行归约代码
- **Title**: Algorithm 6：控制器每拍只等一个条件
- **Core message**: "迭代到不动点"在硬件里就是一条横跨全阵列的组合 OR
- **Content**:
  - `all_busy = |busy_vec`（`:155`）与 `any_c_busy = |busy_c_vec`（`:156`）是两个不同来源
  - 默认控制器用 `any_c_busy`：更即时，但要付一条全阵列 OR 树
  - 实测 d7 关键路径 33 级，其中约三分之二是布线
  - 优化：`SNOW_BUSYREG` 把归约打一拍；`SNOW_MINTS` 把 12 方向最小搜索时分复用
  - 代价：MINTS 在 d3/d5/d7 增加 LUT +35% / +26% / +24%，延迟约 1.44×（G=2）

### Part 4: RTL 实现与综合结果（24:00–30:00）

#### Slide 17 - 扁平核是教材，阵列才是产品，共享晶格是下一道账

- **Audience move**: 以为三种形态只是写法不同 → 知道每种形态各自在付什么账
- **Relationships**: 三种形态是 order（可读 → 可综合 → 可共享）；面积、时序、吞吐三者是 overlap 的取舍
- **Composition**: 三列并列，每列写"状态在哪 / 换来什么 / 付出什么"；底部一条状态定律
- **Title**: 扁平核是教材，阵列才是产品，共享晶格是下一道账
- **Core message**: 同一算法在不同形态下面积差一个量级，而且状态不随晶格缩小而缩小
- **Content**:
  - 扁平核：一个 `always @(*)` 顺序扫过所有节点，和参考实现一一对应；可读但不可放大综合
  - PE 阵列：真正拿去做综合与布线的形态；面积与时序结论都出自它
  - 共享晶格：多上下文轮转，用时间换面积；但状态必须按上下文复制
  - 关键结论：每多一个上下文，每节点约 +28.9 LUT / +21.8 FF；共享倍率实测 3.13×，不是最初设想的 7×
  - 面积地板：LUT(n) ≈ 1.77M/n + 430K

#### Slide 18 - 同一算法的 11 种形态，只有一种上板

- **Audience move**: 在目录里看到一堆 `snowflake_*` 文件不知从哪读 → 拿到形态链与阅读顺序
- **Relationships**: 四组形态是 order；形态之间是 link（逐行等价）；板级顶层只例化 lat1，是 parent→child 的唯一落地
- **Composition**: 2×2 四组文件清单，每组标行数与角色；底部两条事实
- **Title**: 同一算法的 11 种形态，只有一种上板
- **Core message**: 形态链是按研究目的递增的，不是同一层的并列选项
- **Content**:
  - ① 算法基线：`snowflake_core.sv`（498 行）+ `snowflake_wrapper.sv`
  - ② 可物理化：`snowflake_pe_array.sv`（881）+ `snowflake_pe.sv`（730）+ `snowflake_edge.sv`（112）
  - ③ 时间复用：`pe_array_ctx` / `core_ctx2` / `pe_array_lat` / `pe_array_lat1`（823）
  - ④ 板级外壳：`board_top` / `reset_sync` / `host_regs` / `trace_capture`
  - 唯一被板级顶层例化的是 `snowflake_pe_array_lat1`（`board_top.sv:154`）
  - 15 个编译期开关；`SNOW_MINTS` 与 `SNOW_SERIAL` 组合无保护，会静默失败

#### Slide 19 - 生成表长什么样：36 个节点、51 条边，全是常量

- **Audience move**: 听懂了"生成常量表"但没概念 → 看到真实声明后知道表就是位宽 + 打包向量
- **Relationships**: 五个规模常量是并列；三张打包向量是同一 parent 下的并列；"取用方式"与"表"是 link
- **Composition**: 左侧真实头文件片段（规模常量 + 三张向量 + 两行取用），右侧三条"为什么这样定义"
- **Title**: 生成表长什么样：36 个节点、51 条边，全是常量
- **Core message**: 表就是几根打包向量，取用时是常量位选，综合后是固定连线
- **Content**:
  - `SNOW_NN = 36` / `SNOW_NE = 51` / `SNOW_NSYN = 6` / `SNOW_CID_W = 7` / `SNOW_NDIR = 12`
  - `SNOW_ABOVE_VEC` / `SNOW_BND_VEC` / `SNOW_NB_VEC` 都是打包向量
  - 取用：`SNOW_ABOVE_VEC[n*NW +: NW]`、`SNOW_NB_VEC[(n*NDIR+d)*NW +: NW]`
  - 哨兵：`63 = 6'b111111` 表示"这个方向没有邻居"
  - 换码型 = 重跑生成器 + 重综合，RTL 不改
  - 提醒：canonical 的 `snowflake_graph.svh` 是过期别名，构建前要重钉

#### Slide 20 - 时序优化不是加法：两条路径的收益不会相乘

- **Audience move**: 以为多做几个优化就能线性变快 → 知道收益按路径分段计算
- **Relationships**: 三个码距是 order；每个码距上"优化前 / 优化后"是 contrast；5 ns 目标是所有行的共同 parent
- **Composition**: 左侧哑铃图（三行，两个点一条线，一条竖直目标线），右侧三行说明每个优化的靶子与代价
- **Title**: 时序优化不是加法：两条路径的收益不会相乘
- **Core message**: MINTS 与 BUSYREG 打的是同一条路径的两端，叠加收益远小于外推
- **Content**:
  - 基线周期：d3 7.243 ns / d5 9.603 ns / d7 11.446 ns
  - 优化后：d3 4.799 ns / d5 5.291 ns / d7 6.359 ns
  - d7 上 MINTS + BUSYREG 累计 −44% 周期，但仍差 1.36 ns
  - 原因：两者分别压缩比较链与归约链，却落在同一条 `cid_reg → busy_c → stage_reg` 上
  - 另一条教训：把参数改成端口并不免费，d3 上实测 +3.8% LUT / +4 级
- **Visualization**: timing-dumbbell (chart/dumbbell_chart)
- **Native-ready**: timing-dumbbell=no

#### Slide 21 - 板上没有跨时钟域，但有一个必须遵守的 2 的幂

- **Audience move**: 一上板就担心 CDC → 知道这块设计里根本没有跨时钟域，真正的坑在别处
- **Relationships**: PS 域与 PL 域是 contrast，但只通过寄存器接口交接；复位链是 order；轨迹深度与指针是 parent→constraint
- **Composition**: 左侧板级框图与字节流协议代码，右侧复位链三级与 MAXREC 约束；底部一行缺口
- **Title**: 板上没有跨时钟域，但有一个必须遵守的 2 的幂
- **Core message**: 单时钟域降低了风险，但引入了一个综合期就能撞上的硬约束
- **Content**:
  - 结论：解码器本体、板级外壳、轨迹捕获全在同一个时钟域，没有跨时钟域路径
  - 复位：异步进入 → 两级同步 → 分域拉长；同步复位释放
  - 字节流：`0x01` 复位并准备接收；`0x02` 开始一轮，随后 `(NSYN+7)/8` 字节；每轮输出 3 字节 `[cycle][commit_low][commit_high]`
  - 复用：Helios 的 `fifo_wrapper` 与 `serializer`
  - `MAXREC` 必须是 2 的幂：指针靠位宽回绕，非 2 的幂会算错；综合期还有一条 FATAL 检查兜底
  - 仍缺：XDC、PS7 block design、bitstream、FSBL、BOOT.bin 全未做；`snowflake_host.c` 写了但从未编译运行

### Part 5: 验证方法与当前进度（30:00–34:00）

#### Slide 22 - 逐行相等，才算验证过

- **Audience move**: 以为跑通波形就算验证 → 知道这里的判定标准是逐行相等
- **Relationships**: 五个环节是 order；黄金轨迹与 RTL 轨迹是 contrast（一对一比较）；四种轨迹行是 membership
- **Composition**: 上半部五步回归链，左下四行码型与行数，右下真实轨迹四行样例
- **Title**: 逐行相等，才算验证过
- **Core message**: 不比较"结果对不对"，而是比较中间每一步是否一模一样
- **Content**:
  - 轨迹只有四类行：`T`（阶段）/ `N`（节点）/ `E`（边）/ `P`（提交）
  - 样例：`T 12 M 3`、`N 7 R 1 1 0 C 0 0`、`E 7-23 2 0`、`P 7-23`
  - 黄金来自 localuf 的 Python 参考实现，RTL 每拍写一行
  - 最大一次：105,948 行完全相等
  - 板级 fake-PS 回归 4/4：4,980 / 7,120 / 7,832 / 22,440 行
  - 为什么可信：连"状态行全对但提交数为 0"这种静默失效也会被抓到

#### Slide 23 - 负对照不失败，说明测试没测到东西

- **Audience move**: 把负对照当成可选项 → 接受"先证明测试能失败"这条纪律
- **Relationships**: 五个坑是 order（按发现顺序）；每个坑的"错法 / 后果 / 正确做法"是 contrast
- **Composition**: 表格式五行三段：错法（等宽）→ 后果（红）→ 正确做法（蓝）
- **Title**: 负对照不失败，说明测试没测到东西
- **Core message**: 一个不会失败的测试，比没有测试更危险
- **Content**:
  - 负对照：故意用朴素实现跑同一激励，6/6 必须 FAIL；真的全 FAIL 才算测试有效
  - 坑一：canonical 图头是过期别名，缺两个常量，构建会静默降级
  - 坑二：全阵列归约若在 `phase_last` 采样，状态行全对，但提交 0/6
  - 坑三：Verilog 给窄端口补位补的是 z，不是 0
  - 坑四：`SNOW_MINTS` + `SNOW_SERIAL` 未加保护，组合后静默失败
  - 坑五：优化收益不外推；常数驱动端口也不免费（+3.8% LUT）

#### Slide 24 - 已经做完的、做了一半的、还没开始的

- **Audience move**: 听到一堆 P0/P2/P4 代号 → 看到一张能直接读的进度表
- **Relationships**: 工作包为 rows，状态是每行的 parent 属性；证据与缺口是并列字段
- **Composition**: 一张四列表格，状态列用两色编码；表格下方一条小结
- **Title**: 已经做完的、做了一半的、还没开始的
- **Core message**: 验证链条完整，板级闭环未闭环
- **Content**:
  - 已完成：P0 门级 9/9、P0′ 折叠、P0″ 电路级几何、P4 旋转码（d3/d5 实测）、P2 电路级、P3 板级外壳（fake-PS 4/4、复位扫描 18/18）
  - 部分完成：共享晶格 option B 未测量；d7 时序差 1.36 ns；host 未编译
  - 未开始：XDC / PS7 / bitstream / FSBL / BOOT.bin；板级 D8 测试
  - 提醒：d5 电路级约 1.88 µs，不作为实时板测目标
- **Visualization**: progress-matrix (table/record_table)
- **Native-ready**: progress-matrix=yes

### Part 6: 与相关工作的定位（34:00–36:00）

#### Slide 25 - 同口径比：LUT 相当，寄存器约 1/5，LUTRAM 为 0

- **Audience move**: 期待一个"降了多少倍"的数字 → 拿到一张分项、分口径的对比
- **Relationships**: 四项指标是 rows，两个实现是 columns；两列属于同一比较 parent，逐格 contrast
- **Composition**: 四行对比矩阵，右上角一条口径声明；下方一行结论
- **Title**: 同口径比：LUT 相当，寄存器约 1/5，LUTRAM 为 0
- **Core message**: 真正的优势是每节点寄存器数、零 LUTRAM 和单芯片，而不是 LUT 数量
- **Content**:
  - 每节点 LUT：Snowflake d7 186.2；Helios 论文折算 194.5，我们复综合阵列 276.7（d5）
  - 每节点寄存器：26.4；论文折算 51.7，复综合阵列 126.5（d5），单 PE 实测 62
  - LUTRAM：0；Helios 47.6 / PE（主要来自每链路阻塞通道 FIFO）
  - 多板需求：单芯片可容 d=7 全阵列；Helios 大码距需多板或上下文切换
  - 口径声明：论文折算与同器件复综合不是一回事，不能混着比；总规模对比禁用
- **Visualization**: helios-compare (table/comparison_matrix)
- **Native-ready**: helios-compare=yes

#### Slide 26 - UF 解码不是唯一路线，也不是所有场景都适用

- **Audience move**: 以为只有一种解码器 → 知道四条路线的分工与三条边界
- **Relationships**: 四条路线是并列 contrast；三条适用边界是 parent 条件
- **Composition**: 四条横带纵向排列，每条只写"适合什么 / 不适合什么"；底部一条边界带写晶格手术
- **Title**: UF 解码不是唯一路线，也不是所有场景都适用
- **Core message**: 选 UF 是因为它能在拍级推进，不是因为它全面更优
- **Content**:
  - MWPM：精度基准，全局匹配，难以拍级流水
  - MLE / 张量网络：接近最优，但计算量大，适合离线或小规模
  - 专用架构：面积与时序是主约束，Helios 与 Snowflake 都属于这一类
  - 多 FPGA：被 I/O 与跨片延迟挡住；论文原文明确否定
  - 晶格手术：尚未适配。L0 独立补丁可直接复用；L1 静态合并图可人工生成；L2 动态边界 + 相关解码属研究级，且没有黄金模型

### Part 7: 风险、计划与总结（36:00–38:00）

#### Slide 27 - 四个风险，两个在关键路径上

- **Audience move**: 不知道下一步该先做什么 → 拿到按"卡住程度"排序的四件事与三步计划
- **Relationships**: 四个风险按严重度 order；每个风险的"现状 / 影响 / 缓解"是 link
- **Composition**: 左侧四行风险（严重度用方块数量表示），右侧一条三阶段时间线；底部一条下一步
- **Title**: 四个风险，两个在关键路径上
- **Core message**: 时序与共享晶格都还在关键路径上，板级流程是纯工作量而非难点
- **Content**:
  - 风险一：d7 距 5 ns 差 1.36 ns，再压需要新结构而不是再调参
  - 风险二：共享晶格 option B 未测量，面积预估值不可信
  - 风险三：板级流程全缺（XDC / PS7 / bitstream / BOOT），host 代码未编译
  - 风险四：面积地板约 430K LUT，d>21 必须换 LUTRAM 存状态
  - 计划：先补板级闭环拿到第一份真实轨迹；再测 option B；最后决定是否为大 d 改状态存储
  - 边界：不把优先级判断推给听众，给出的是当前自定的顺序

#### Slide 28 - 三句话总结 + 三件仍待确定的事

- **Audience move**: 听完 28 页 → 带走三句结论，并知道作者当前自认的三个未决项
- **Relationships**: 三句总结是并列；三件未决项是并列；两者之间是 order（先给结论，再给待定项）
- **Composition**: 上半部三句总结，下半部三件未决项，底部一条收束线
- **Title**: 三句话总结 + 三件仍待确定的事
- **Core message**: 实现与验证已成立，定位与时序仍开放
- **Content**:
  - 总结一：算法来自 Snowflake，阵列组织来自 Helios，本项目交付的是实现、验证与资源刻画
  - 总结二：逐行回归是当前的信任基础，最大一次 105,948 行完全相等
  - 总结三：板级闭环与 d7 时序是下一步的两个硬目标
  - 未决一：板级闭环先行，时序改造随后再定
  - 未决二：共享晶格先测 option B，再决定是否继续投入
  - 未决三：这套材料可整理为开题的技术章节
- **Closing impact**: 收束用"实现与验证已成立，定位与时序仍开放"一句压住全场；不做致谢页

## X. Speaker Notes Requirements

- **Generation**: enabled
- **Filename**: match each SVG filename under `notes/`
- **Content**: 每页一段口语化讲解词，先给本页判断，再给一个可核查的数字或代码位置，最后一句过渡到下一页；代码页按"这段代码对应论文哪一步"讲，不逐行念语法；总时长按 38 分钟分配
- **Total duration**: 38 minutes
- **Notes style**: conversational-technical
- **Presentation purpose**: 先讲清做了什么与为什么这样做，再用代码与证据说明当前进度，主动暴露缺口，最后给出与相关工作的定位
