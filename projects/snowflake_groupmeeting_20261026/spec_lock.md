<!-- ppt-master-schema: spec-lock/v1 -->
# Execution Lock

## canvas
- viewBox: 0 0 1280 720
- format: PPT 16:9

## communication
- primary_language: zh-CN
- audience: 实验室老师与同学，量子纠错与 FPGA/数字设计背景混合，含刚进组的新同学
- objective: 先讲清做了什么与为什么这样做，再用代码与证据说明进度并主动暴露缺口，最后给出与相关工作的定位
- core_message: Snowflake 算法与 Helios 阵列组织都不是本项目提出的；本项目交付可综合实现、逐行回归与同口径资源刻画
- consumption_mode: balanced

## mode
- mode: custom
- mode_references: pyramid, briefing, instructional
- mode_behavior: pyramid 负责全场骨架，开场先给结论、页标题写判断句；briefing 负责证据页的中性完整与可扫读；instructional 负责 P03、P04、P07 三页基础，先建前置概念再进项目。三者按页分工，不在一页内互相拉扯。

## visual_style
- visual_style: custom
- visual_style_references: swiss-minimal
- visual_style_behavior: 严格栅格、锐利几何、单一线宽、大留白；补入工程制图注释语言——尺寸线与引线箭头、极浅网格底、等宽字体的信号名与文件行号；纸面保持纯白，不用深色蓝图底。全篇无阴影、无圆角卡片、无渐变；色块只用于分区或标注当前状态。

## colors
- background: #FFFFFF
- secondary_bg: #F2F4F7
- primary: #12263A
- accent: #B23A2E
- secondary_accent: #2C6E9B
- body_text: #1B2632
- secondary_text: #5A6672
- divider: #D8DEE5

## typography
- font_family: 微软雅黑, Arial, PingFang SC, Noto Sans CJK SC, sans-serif
- title_family: 微软雅黑, Arial, PingFang SC, Noto Sans CJK SC, sans-serif
- body_family: 微软雅黑, Arial, PingFang SC, Noto Sans CJK SC, sans-serif
- code_family: Consolas, Cascadia Mono, Courier New, monospace
- body: 22
- title: 38
- subtitle: 26
- annotation: 15
- code: 16
- display: 96

## icons
- library: none
- inventory: none

## page_rhythm
- P01: anchor
- P02: breathing
- P03: dense
- P04: dense
- P05: anchor
- P06: dense
- P07: dense
- P08: dense
- P09: breathing
- P10: anchor
- P11: dense
- P12: dense
- P13: dense
- P14: dense
- P15: dense
- P16: dense
- P17: breathing
- P18: dense
- P19: dense
- P20: dense
- P21: dense
- P22: dense
- P23: breathing
- P24: dense
- P25: dense
- P26: breathing
- P27: dense
- P28: anchor

## pptx_structure
- mode: flat

## page_visualizations
- P07: table/comparison_matrix
- P20: chart/dumbbell_chart
- P24: table/record_table
- P25: table/comparison_matrix

## forbidden
- `mask`, `<style>`, `class`, external CSS, `<foreignObject>`, `textPath`, `@font-face`, `<animate*>`, `<set>`, `<script>` / event attributes, `<iframe>`
- HTML named entities in text; write typography as raw Unicode and escape XML reserved characters
- 不要声称我完成了论文中的工作 (user)
