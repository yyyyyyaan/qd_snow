# Snowflake 源码阅读页 · 生成笔记

- 日期：2026-10-29（同日按反馈改为暗黑主题；内容与数字未变）
- 产物：`projects/snowflake_code_study/fpga_study.html`（单文件，离线双击即开）
- 工程根：`Helios_scalable_QEC-main/Helios_scalable_QEC-main/`
- 本次只读源码与文档，未修改任何 RTL / testbench / 生成物 / 脚本。

## 页面结构

1. 工程概览：一句话、系统数据流、状态表、源码地图
2. 五分钟心智模型：图先于 RTL / 逻辑 step / DROP 上拉 / 共享晶格
3. 模块层级：可下钻框图（root → board_top → lat1 → PE/edge 端口表）
4. 端口、寄存器与记录布局：顶层 AXI、内部信号、寄存器映射、记录位布局、Z-7020 数字
5. 关键代码：6 段（两趟合并、常量地址 bank 读、DROP/GROW、merge 同步、edge、trace 窗口）
6. 契约与坑：单时钟、复位、观测窗口 + 7 个已测量的坑
7. 学习任务：8 个，含可执行命令与验收标准
8. 小测验：8 题，选项判定 + 解析
9. 术语表：24 条
10. 我的笔记：localStorage 自动保存

## 框图实现

- 4 个场景：`root`（PS/board/PC）、`board`（reset/host/trace/array）、`array`（FSM/bank/影子/PE/edge/obs）、`host`（AXI/寄存器/SYN/COR/ID/STATUS）。
- 叶子模块点击弹端口表：`reset_sync`、`trace_capture`、`pe`、`edge`。
- 数据与端口表内嵌为两个 JSON `<script>` 块；渲染器为原生 JS，无外部依赖。
- 布局已用脚本校验：方块 h≥110（3+ 端口 h≥140）、w≥130、水平间隙≥60、垂直间隙≥20、无重叠、连线端点/索引存在、端口名 ≤16 字符。
- `?scene=board|array|host` 可深链到某个场景（默认 root）。

## 核对过的数字

- rotated d3 唯象：24 节点 / 35 边 / NCOMMIT 13 / NSYN 4；记录 513 bit = 48 + 24×15 + 35×3，17 字。
- rotated d5 唯象：90 节点 / 173 边 / NCOMMIT 37 / NSYN 12；记录 2,121 bit = 72 + 90×17 + 173×3，67 字。
- 板级 4 配置：4,980 / 7,120 / 7,832 / 22,440 行；记录数 83 / 89 / 89 / 85（12 轮合计）。
- Z-7020 外围：3,041 LUT / 1,228 FF / 7.5 BRAM；19.65 ns（50.9 MHz），WNS +0.350 @20 ns。
- 复位扫描 18/18；LEN=1 + 外部 1 拍即可。
- `check_pb_bnd.py` 实测：surface d3 seam 10、surface d5 5、surface d5 seam 22；结论 `!IS_BND` 必需。

## 本次验证

- JSON 解析、布局校验、HTML 标签配对、内联 JS `node --check` 通过。
- Edge headless 截图检查了 root / board / array / host / PE 端口面板 / 任务 / 小测验 / 术语 / 端口表；修正了端口与标题重叠、连线穿过方块、直线斜穿、标签遮挡、端口面板列宽等问题。
- 交互实测：方块下钻、Esc 返回、叶子端口表、关闭按钮、缩放 1.25/1.5/1.0、测验判定与重做、localStorage 保存。
- 浏览器控制台无 error / warn。

## 未做 / 待讨论

- 板上 D8 仍未做：XDC / PS7 block design / bitstream / FSBL+BOOT.bin / host C 编译运行都还缺。
- 页面里的“50 MHz”是建议值；上板前需按本板重跑顶层实现确认 WNS。
- 若需要，下一步可以：把 `snowflake_host.c` 编进 Vitis 的步骤做成单独一页，或给每个阶段加一张时序波形示意图。
