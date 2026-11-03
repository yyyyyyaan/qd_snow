# Snowflake-on-Helios 资源占用率分析（M1）

> 自动生成，数据来源 `fpga_flow/summary_*.csv` + `fpga_flow/cycles.csv`。
> 重新生成：`python fpga_flow/collect_results.py`

## 1. 实现结果（布线后实测）

| config | part | 周期(ns) | WNS | 达成周期 | f_max(MHz) | 逻辑级数 | LUT | FF | LUTRAM | BRAM | LUT/节点 | FF/节点 | cycles/轮 | ns/轮 |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| rep_d3_2to1_xcvu9p | xcvu9p-flga2104-2L-e | 5.0 | 0.805 | 4.195 | 238.4 | 14 | 780 | 224 | 0 | 0 | 65.0 | 18.7 | 7.42 | 31.11 |
| rep_d3_1to1_xcvu9p | xcvu9p-flga2104-2L-e | 5.0 | 1.153 | 3.847 | 259.9 | 11 | 685 | 220 | 0 | 0 | 57.1 | 18.3 | 4.83 | 18.59 |
| surface_d3_2to1_xcvu9p | xcvu9p-flga2104-2L-e | 5.0 | -1.940 | 6.940 | 144.1 | 34 | 3587 | 799 | 0 | 0 | 99.6 | 22.2 | 7.42 | 51.47 |
| surface_d3_1to1_xcvu9p | xcvu9p-flga2104-2L-e | 5.0 | -2.073 | 7.073 | 141.4 | 35 | 3144 | 791 | 0 | 0 | 87.3 | 22.0 | 4.83 | 34.18 |
| rep_d5_2to1_xcvu9p | xcvu9p-flga2104-2L-e | 5.0 | 0.285 | 4.715 | 212.1 | 21 | 2569 | 588 | 0 | 0 | NA | NA | 7.67 | 36.15 |
| rep_d5_1to1_xcvu9p | xcvu9p-flga2104-2L-e | 5.0 | 0.312 | 4.688 | 213.3 | 22 | 2248 | 577 | 0 | 0 | NA | NA | 5.33 | 25.00 |
| rep_d3_2to1_m3loc_xcvu9p | xcvu9p-flga2104-2L-e | 5.0 | 0.778 | 4.222 | 236.9 | 14 | 791 | 224 | 0 | 0 | 65.9 | 18.7 | 7.42 | 31.31 |
| surface_d3_2to1_m3loc_xcvu9p | xcvu9p-flga2104-2L-e | 5.0 | -1.618 | 6.618 | 151.1 | 26 | 3410 | 793 | 0 | 0 | 94.7 | 22.0 | 7.42 | 49.09 |
| rep_d3_2to1_m3loc_busyreg_xcvu9p | xcvu9p-flga2104-2L-e | 5.0 | 1.403 | 3.597 | 278.0 | 13 | 729 | 224 | 0 | 0 | 60.8 | 18.7 | 7.42 | 26.68 |
| surface_d3_2to1_m3loc_busyreg_xcvu9p | xcvu9p-flga2104-2L-e | 5.0 | -0.227 | 5.227 | 191.3 | 26 | 3233 | 780 | 0 | 0 | 89.8 | 21.7 | 7.42 | 38.77 |
| rep_d3_2to1_m3loc_noobs_xcvu9p | xcvu9p-flga2104-2L-e | 5.0 | 0.786 | 4.214 | 237.3 | 14 | 773 | 218 | 0 | 0 | 64.4 | 18.2 | 7.42 | 31.26 |
| rep_d3_2to1_m3loc_ablmerge_xcvu9p | xcvu9p-flga2104-2L-e | 5.0 | 4.165 | 0.835 | 1197.6 | 1 | 6 | 16 | 0 | 0 | 0.5 | 1.3 | 7.42 | 6.19 |
| rep_d3_2to1_m3loc_noobs_ablmerge_xcvu9p | xcvu9p-flga2104-2L-e | 5.0 | 4.343 | 0.657 | 1522.1 | 1 | 6 | 10 | 0 | 0 | 0.5 | 0.8 | 7.42 | 4.87 |
| surface_d3_2to1_m3loc_noobs_xcvu9p | xcvu9p-flga2104-2L-e | 5.0 | -1.823 | 6.823 | 146.6 | 31 | 3429 | 778 | 0 | 0 | 95.2 | 21.6 | 7.42 | 50.61 |
| surface_d3_2to1_m3loc_ablmerge_xcvu9p | xcvu9p-flga2104-2L-e | 5.0 | 4.216 | 0.784 | 1275.5 | 1 | 7 | 28 | 0 | 0 | 0.2 | 0.8 | 7.42 | 5.81 |
| surface_d3_2to1_m3loc_noobs_ablmerge_xcvu9p | xcvu9p-flga2104-2L-e | 5.0 | 4.343 | 0.657 | 1522.1 | 1 | 6 | 10 | 0 | 0 | 0.2 | 0.3 | 7.42 | 4.87 |
| rep_d5_2to1_m3loc_xcvu9p | xcvu9p-flga2104-2L-e | 5.0 | 0.385 | 4.615 | 216.7 | 17 | 2525 | 591 | 0 | 0 | NA | NA | 7.67 | 35.38 |
| surface_d3_2to1_nctx1_xcvu9p | xcvu9p-flga2104-2L-e | 5.0 | -0.885 | 5.885 | 169.9 | 26 | 3852 | 795 | 0 | 0 | 107.0 | 22.1 | 7.42 | 43.65 |
| rep_d3_2to1_nctx1_xcvu9p | xcvu9p-flga2104-2L-e | 5.0 | 0.898 | 4.102 | 243.8 | 13 | 950 | 226 | 0 | 0 | 79.2 | 18.8 | 7.42 | 30.42 |
| surface_d3_2to1_nctx2_xcvu9p | xcvu9p-flga2104-2L-e | 5.0 | -3.142 | 8.142 | 122.8 | 31 | 6327 | 1626 | 0 | 0 | 175.8 | 45.2 | 7.42 | 60.39 |
| rep_d3_2to1_nctx2_xcvu9p | xcvu9p-flga2104-2L-e | 5.0 | 0.562 | 4.438 | 225.3 | 16 | 1439 | 443 | 0 | 0 | 119.9 | 36.9 | 7.42 | 32.92 |
| rep_d3_2to1_xcvu9p_p4p3 | xcvu9p-flga2104-2L-e | 4.3 | 0.744 | 3.556 | 281.2 | 13 | 815 | 224 | 0 | 0 | 67.9 | 18.7 | 7.42 | 26.37 |
| surface_d3_2to1_xcvu9p_p7p0 | xcvu9p-flga2104-2L-e | 7.0 | 0.057 | 6.943 | 144.0 | 26 | 3334 | 770 | 0 | 0 | 92.6 | 21.4 | 7.42 | 51.50 |
| rep_d5_2to1_xcvu9p_p4p8 | xcvu9p-flga2104-2L-e | 4.8 | 0.402 | 4.398 | 227.4 | 17 | 2557 | 591 | 0 | 0 | NA | NA | 7.67 | 33.72 |
| surface_d3_2to1_xczu7ev | xczu7ev-ffvc1156-2-e | 5.0 | -1.459 | 6.459 | 154.8 | 26 | 3450 | 805 | 0 | 0 | 95.8 | 22.4 | 7.42 | 47.91 |
| surface_d5_2to1_xczu7ev | xczu7ev-ffvc1156-2-e | 5.0 | -5.410 | 10.410 | 96.1 | 39 | 21036 | 3743 | 0 | 0 | 140.2 | 25.0 | 7.67 | 79.81 |
| rep_d3_2to1_xczu7ev | xczu7ev-ffvc1156-2-e | 5.0 | 0.829 | 4.171 | 239.8 | 14 | 798 | 224 | 0 | 0 | 66.5 | 18.7 | 7.42 | 30.94 |
| rep_d3_2to1_m3loc_keep_xcvu9p | xcvu9p-flga2104-2L-e | 5.0 | 1.073 | 3.927 | 254.6 | 14 | 985 | 236 | 0 | 0 | 82.1 | 19.7 | 7.42 | 29.13 |
| surface_d3_2to1_m3loc_keep_xcvu9p | xcvu9p-flga2104-2L-e | 5.0 | -1.199 | 6.199 | 161.3 | 28 | 3906 | 826 | 0 | 0 | 108.5 | 22.9 | 7.42 | 45.98 |
| rep_d3_2to1_m3loc_keep_noobs_xcvu9p | xcvu9p-flga2104-2L-e | 5.0 | 0.993 | 4.007 | 249.6 | 14 | 987 | 230 | 0 | 0 | 82.2 | 19.2 | 7.42 | 29.72 |
| surface_d3_2to1_m3loc_keep_noobs_xcvu9p | xcvu9p-flga2104-2L-e | 5.0 | -1.406 | 6.406 | 156.1 | 22 | 3867 | 816 | 0 | 0 | 107.4 | 22.7 | 7.42 | 47.51 |
| rep_d3_2to1_m3loc_keep_ablmerge_xcvu9p | xcvu9p-flga2104-2L-e | 5.0 | 2.674 | 2.326 | 429.9 | 3 | 238 | 222 | 0 | 0 | 19.8 | 18.5 | 7.42 | 17.25 |
| surface_d3_2to1_m3loc_keep_ablmerge_xcvu9p | xcvu9p-flga2104-2L-e | 5.0 | 2.269 | 2.731 | 366.2 | 2 | 898 | 797 | 0 | 0 | 24.9 | 22.1 | 7.42 | 20.26 |
| surface_d3_2to1_pearray_xcvu9p | xcvu9p-flga2104-2L-e | 5.0 | -2.243 | 7.243 | 138.1 | 30 | 4091 | 797 | 0 | 0 | 113.6 | 22.1 | 7.42 | 53.72 |
| rep_d3_2to1_pearray_xcvu9p | xcvu9p-flga2104-2L-e | 5.0 | 1.002 | 3.998 | 250.1 | 19 | 864 | 222 | 0 | 0 | 72.0 | 18.5 | 7.42 | 29.65 |
| surface_d3_2to1_pearray_xcvu9p_ffull | xcvu9p-flga2104-2L-e | 5.0 | -1.747 | 6.747 | 148.2 | 32 | 3901 | 813 | 0 | 0 | 108.4 | 22.6 | 7.42 | 50.04 |
| rep_d3_2to1_pearray_xcvu9p_ffull | xcvu9p-flga2104-2L-e | 5.0 | 0.797 | 4.203 | 237.9 | 15 | 901 | 228 | 0 | 0 | 75.1 | 19.0 | 7.42 | 31.17 |
| surface_d3_2to1_pearray_nctx1_xcvu9p | xcvu9p-flga2104-2L-e | 5.0 | -1.939 | 6.939 | 144.1 | 37 | 4210 | 808 | 0 | 0 | 116.9 | 22.4 | 7.42 | 51.47 |
| rep_d3_2to1_pearray_nctx1_xcvu9p | xcvu9p-flga2104-2L-e | 5.0 | 0.747 | 4.253 | 235.1 | 19 | 859 | 225 | 0 | 0 | 71.6 | 18.8 | 7.42 | 31.54 |
| surface_d3_2to1_pearray_nctx2_xcvu9p | xcvu9p-flga2104-2L-e | 5.0 | -2.855 | 7.855 | 127.3 | 36 | 5249 | 1591 | 0 | 0 | 145.8 | 44.2 | 7.42 | 58.26 |
| rep_d3_2to1_pearray_nctx2_xcvu9p | xcvu9p-flga2104-2L-e | 5.0 | 0.274 | 4.726 | 211.6 | 21 | 1153 | 457 | 0 | 0 | 96.1 | 38.1 | 7.42 | 35.05 |
| surface_d5_2to1_pearray_xcvu9p | xcvu9p-flga2104-2L-e | 5.0 | -4.603 | 9.603 | 104.1 | 37 | 23168 | 3725 | 0 | 0 | 154.5 | 24.8 | 7.67 | 73.63 |
| surface_d7_2to1_pearray_xcvu9p | xcvu9p-flga2104-2L-e | 5.0 | -6.446 | 11.446 | 87.4 | 33 | 72982 | 10338 | 0 | 0 | 186.2 | 26.4 | 7.75 | 88.71 |
| surface_d5_2to1_pearray_keephier_xcvu9p | xcvu9p-flga2104-2L-e | 5.0 | -4.603 | 9.603 | 104.1 | 37 | 23168 | 3725 | 0 | 0 | 154.5 | 24.8 | 7.67 | 73.63 |
| surface_d3_2to1_pearray_pb4_xcvu9p | xcvu9p-flga2104-2L-e | 5.0 | -2.243 | 7.243 | 138.1 | 30 | 4091 | 797 | 0 | 0 | 113.6 | 22.1 | 7.42 | 53.72 |
| surface_d3_2to1_pearray_pb8_xcvu9p | xcvu9p-flga2104-2L-e | 5.0 | -2.243 | 7.243 | 138.1 | 30 | 4091 | 797 | 0 | 0 | 113.6 | 22.1 | 7.42 | 53.72 |
| surface_d5_2to1_pearray_noobs_xcvu9p | xcvu9p-flga2104-2L-e | 5.0 | -5.187 | 10.187 | 98.2 | 35 | 22987 | 3688 | 0 | 0 | 153.2 | 24.6 | 7.67 | 78.10 |
| surface_d3_2to1_pearray_busyreg_xcvu9p | xcvu9p-flga2104-2L-e | 5.0 | -1.659 | 6.659 | 150.2 | 29 | 3961 | 793 | 0 | 0 | 110.0 | 22.0 | 7.42 | 49.39 |
| surface_d5_2to1_pearray_busyreg_xcvu9p | xcvu9p-flga2104-2L-e | 5.0 | -2.854 | 7.854 | 127.3 | 34 | 22482 | 3702 | 0 | 0 | 149.9 | 24.7 | 7.67 | 60.22 |
| surface_d7_2to1_pearray_busyreg_xcvu9p | xcvu9p-flga2104-2L-e | 5.0 | -4.450 | 9.450 | 105.8 | 33 | 71189 | 10325 | 0 | 0 | 181.6 | 26.3 | 7.75 | 73.24 |
| surface_d3_2to1_pearray_mintree_xcvu9p | xcvu9p-flga2104-2L-e | 5.0 | -1.970 | 6.970 | 143.5 | 28 | 4725 | 831 | 0 | 0 | 131.2 | 23.1 | 7.42 | 51.70 |
| surface_d5_2to1_pearray_mintree_xcvu9p | xcvu9p-flga2104-2L-e | 5.0 | -3.697 | 8.697 | 115.0 | 33 | 27731 | 3793 | 0 | 0 | 184.9 | 25.3 | 7.67 | 66.68 |
| surface_d7_2to1_pearray_mintree_xcvu9p | xcvu9p-flga2104-2L-e | 5.0 | -6.095 | 11.095 | 90.1 | 32 | 87663 | 10517 | 0 | 0 | 223.6 | 26.8 | 7.75 | 85.99 |
| surface_d7_2to1_pearray_pb2_xcvu9p | xcvu9p-flga2104-2L-e | 5.0 | -6.779 | 11.779 | 84.9 | 37 | 72799 | 10327 | 0 | 0 | 185.7 | 26.3 | 7.75 | 91.29 |
| surface_d7_2to1_pearray_pb4_xcvu9p | xcvu9p-flga2104-2L-e | 5.0 | -7.690 | 12.690 | 78.8 | 36 | 72873 | 10329 | 0 | 0 | 185.9 | 26.3 | 7.75 | 98.35 |
| surface_d3_2to1_pearray_pb2_xcvu9p | xcvu9p-flga2104-2L-e | 5.0 | -2.140 | 7.140 | 140.1 | 32 | 4084 | 790 | 0 | 0 | 113.4 | 21.9 | 7.42 | 52.96 |
| surface_d3_2to1_pearray_dirsused_xcvu9p | xcvu9p-flga2104-2L-e | 5.0 | -2.204 | 7.204 | 138.8 | 37 | 4219 | 781 | 0 | 0 | 117.2 | 21.7 | 7.42 | 53.43 |
| surface_d3_2to1_mints2bank_xcvu9p | xcvu9p-flga2104-2L-e | 5.0 | 0.201 | 4.799 | 208.4 | 17 | 5529 | 1374 | 0 | 0 | 153.6 | 38.2 | 7.42 | 35.59 |
| surface_d5_2to1_mints2bank_xcvu9p | xcvu9p-flga2104-2L-e | 5.0 | -0.282 | 5.282 | 189.3 | 20 | 29248 | 6581 | 0 | 0 | 195.0 | 43.9 | 7.67 | 40.50 |
| surface_d3_2to1_mints1bank_xcvu9p | xcvu9p-flga2104-2L-e | 5.0 | -1.466 | 6.466 | 154.7 | 24 | 5770 | 1465 | 0 | 0 | 160.3 | 40.7 | 7.42 | 47.96 |
| surface_d3_2to1_mints_xcvu9p | xcvu9p-flga2104-2L-e | 5.0 | 0.201 | 4.799 | 208.4 | 17 | 5529 | 1374 | 0 | 0 | 153.6 | 38.2 | 7.42 | 35.59 |
| surface_d7_2to1_mints_xcvu9p | xcvu9p-flga2104-2L-e | 5.0 | -1.710 | 6.710 | 149.0 | 20 | 90455 | 18243 | 0 | 0 | 230.8 | 46.5 | 7.75 | 52.00 |
| surface_d3_2to1_sliced_xcvu9p | xcvu9p-flga2104-2L-e | 5.0 | -3.157 | 8.157 | 122.6 | 25 | 4213 | 1139 | 0 | 0 | 117.0 | 31.6 | 7.42 | 60.50 |
| surface_d3_2to1_sliced_serial_xcvu9p | xcvu9p-flga2104-2L-e | 5.0 | -1.809 | 6.809 | 146.9 | 32 | 4535 | 1382 | 0 | 0 | 126.0 | 38.4 | 7.42 | 50.50 |
| surface_d5_2to1_sliced_xcvu9p | xcvu9p-flga2104-2L-e | 5.0 | -4.636 | 9.636 | 103.8 | 26 | 24559 | 4879 | 0 | 0 | 163.7 | 32.5 | 7.67 | 73.88 |
| surface_d5_2to1_sliced_serial_xcvu9p | xcvu9p-flga2104-2L-e | 5.0 | -4.524 | 9.524 | 105.0 | 33 | 25458 | 5637 | 0 | 0 | 169.7 | 37.6 | 7.67 | 73.02 |
| surface_d3_2to1_lattice_xcvu9p | xcvu9p-flga2104-2L-e | 5.0 | -2.298 | 7.298 | 137.0 | 34 | 4248 | 801 | 0 | 0 | 118.0 | 22.2 | 7.42 | 54.13 |
| surface_d3_2to1_lattice_sliced_serial_xcvu9p | xcvu9p-flga2104-2L-e | 5.0 | -1.970 | 6.970 | 143.5 | 34 | 4689 | 1388 | 0 | 0 | 130.2 | 38.6 | 7.42 | 51.70 |
| surface_d3_2to1_mints_busyreg_xcvu9p | xcvu9p-flga2104-2L-e | 5.0 | 0.119 | 4.881 | 204.9 | 18 | 5430 | 1376 | 0 | 0 | 150.8 | 38.2 | 7.42 | 36.20 |
| surface_d7_2to1_mints_busyreg_xcvu9p | xcvu9p-flga2104-2L-e | 5.0 | -1.359 | 6.359 | 157.3 | 21 | 89291 | 18283 | 0 | 0 | 227.8 | 46.6 | 7.75 | 49.28 |
| surface_d5_2to1_mints_busyreg_xcvu9p | xcvu9p-flga2104-2L-e | 5.0 | -0.227 | 5.227 | 191.3 | 17 | 28423 | 6553 | 0 | 0 | 189.5 | 43.7 | 7.67 | 40.08 |


## 1b. 面积构成拆解（消融综合）

| 基线 | obs 总线 LUT | merging 数据通路 LUT | 基线 LUT | 基线 FF | 说明 |
|---|---|---|---|---|---|
| rep_d3_2to1_m3loc_keep_xcvu9p | -2.0 | 747.0 | 985 | 236 | obs 占 -0.2%; merging 占 75.8% |
| rep_d3_2to1_m3loc_xcvu9p | 18.0 | 785.0 | 791 | 224 | obs 占 2.3%; merging 占 99.2% |
| surface_d3_2to1_m3loc_keep_xcvu9p | 39.0 | 3008.0 | 3906 | 826 | obs 占 1.0%; merging 占 77.0% |
| surface_d3_2to1_m3loc_xcvu9p | -19.0 | 3403.0 | 3410 | 793 | obs 占 -0.6%; merging 占 99.8% |
| surface_d5_2to1_pearray_xcvu9p | 181.0 | NA | 23168 | 3725 | obs 占 0.8% |

obs = 观察总线（`obs_cid/obs_ptr/obs_growth/...`，真实设计里应时分复用到 32 位调试口）；
merging = 合并阶段的组合逻辑。

> 注意：`SNOW_ABLATE_MERGE` 的数字目前**不可用**——把 merging 逻辑挖掉后，
> Vivado 会把整个状态环剪掉（没有任何输出再依赖它），于是只剩 6–7 LUT。
> 要得到有意义的数字，需要给状态数组加 `(* keep = "true" *)` 后重跑。


## 1c. 变体对比（同一配置的不同构建，impl 模式）

| 配置 | 变体 | LUT | Δ LUT | FF | WNS | 达成周期 | ns/轮 | Δ ns/轮 |
|---|---|---|---|---|---|---|---|---|
| rep d=3 2:1 | _m3loc_ablmerge_xcvu9p | 6 |  | 16 | 4.165 | 0.835 | 6.19 |  |
| rep d=3 2:1 | _m3loc_busyreg_xcvu9p | 729 |  | 224 | 1.403 | 3.597 | 26.68 |  |
| rep d=3 2:1 | _m3loc_keep_ablmerge_xcvu9p | 238 |  | 222 | 2.674 | 2.326 | 17.25 |  |
| rep d=3 2:1 | _m3loc_keep_noobs_xcvu9p | 987 |  | 230 | 0.993 | 4.007 | 29.72 |  |
| rep d=3 2:1 | _m3loc_keep_xcvu9p | 985 |  | 236 | 1.073 | 3.927 | 29.13 |  |
| rep d=3 2:1 | _m3loc_noobs_ablmerge_xcvu9p | 6 |  | 10 | 4.343 | 0.657 | 4.87 |  |
| rep d=3 2:1 | _m3loc_noobs_xcvu9p | 773 |  | 218 | 0.786 | 4.214 | 31.26 |  |
| rep d=3 2:1 | _m3loc_xcvu9p | 791 |  | 224 | 0.778 | 4.222 | 31.31 |  |
| rep d=3 2:1 | _nctx1_xcvu9p | 950 |  | 226 | 0.898 | 4.102 | 30.42 |  |
| rep d=3 2:1 | _nctx2_xcvu9p | 1439 |  | 443 | 0.562 | 4.438 | 32.92 |  |
| rep d=3 2:1 | _pearray_nctx1_xcvu9p | 859 |  | 225 | 0.747 | 4.253 | 31.54 |  |
| rep d=3 2:1 | _pearray_nctx2_xcvu9p | 1153 |  | 457 | 0.274 | 4.726 | 35.05 |  |
| rep d=3 2:1 | _pearray_xcvu9p | 864 |  | 222 | 1.002 | 3.998 | 29.65 |  |
| rep d=3 2:1 | _pearray_xcvu9p_ffull | 901 |  | 228 | 0.797 | 4.203 | 31.17 |  |
| rep d=3 2:1 | _xcvu9p | 780 |  | 224 | 0.805 | 4.195 | 31.11 |  |
| rep d=3 2:1 | _xcvu9p_p4p3 | 815 |  | 224 | 0.744 | 3.556 | 26.37 |  |
| rep d=5 2:1 | _m3loc_xcvu9p | 2525 |  | 591 | 0.385 | 4.615 | 35.38 |  |
| rep d=5 2:1 | _xcvu9p | 2569 |  | 588 | 0.285 | 4.715 | 36.15 |  |
| rep d=5 2:1 | _xcvu9p_p4p8 | 2557 |  | 591 | 0.402 | 4.398 | 33.72 |  |
| surface d=3 2:1 | _lattice_sliced_serial_xcvu9p | 4689 |  | 1388 | -1.970 | 6.970 | 51.70 |  |
| surface d=3 2:1 | _lattice_xcvu9p | 4248 |  | 801 | -2.298 | 7.298 | 54.13 |  |
| surface d=3 2:1 | _m3loc_ablmerge_xcvu9p | 7 |  | 28 | 4.216 | 0.784 | 5.81 |  |
| surface d=3 2:1 | _m3loc_busyreg_xcvu9p | 3233 |  | 780 | -0.227 | 5.227 | 38.77 |  |
| surface d=3 2:1 | _m3loc_keep_ablmerge_xcvu9p | 898 |  | 797 | 2.269 | 2.731 | 20.26 |  |
| surface d=3 2:1 | _m3loc_keep_noobs_xcvu9p | 3867 |  | 816 | -1.406 | 6.406 | 47.51 |  |
| surface d=3 2:1 | _m3loc_keep_xcvu9p | 3906 |  | 826 | -1.199 | 6.199 | 45.98 |  |
| surface d=3 2:1 | _m3loc_noobs_ablmerge_xcvu9p | 6 |  | 10 | 4.343 | 0.657 | 4.87 |  |
| surface d=3 2:1 | _m3loc_noobs_xcvu9p | 3429 |  | 778 | -1.823 | 6.823 | 50.61 |  |
| surface d=3 2:1 | _m3loc_xcvu9p | 3410 |  | 793 | -1.618 | 6.618 | 49.09 |  |
| surface d=3 2:1 | _mints1bank_xcvu9p | 5770 |  | 1465 | -1.466 | 6.466 | 47.96 |  |
| surface d=3 2:1 | _mints2bank_xcvu9p | 5529 |  | 1374 | 0.201 | 4.799 | 35.59 |  |
| surface d=3 2:1 | _mints_busyreg_xcvu9p | 5430 |  | 1376 | 0.119 | 4.881 | 36.20 |  |
| surface d=3 2:1 | _mints_xcvu9p | 5529 |  | 1374 | 0.201 | 4.799 | 35.59 |  |
| surface d=3 2:1 | _nctx1_xcvu9p | 3852 |  | 795 | -0.885 | 5.885 | 43.65 |  |
| surface d=3 2:1 | _nctx2_xcvu9p | 6327 |  | 1626 | -3.142 | 8.142 | 60.39 |  |
| surface d=3 2:1 | _pearray_busyreg_xcvu9p | 3961 |  | 793 | -1.659 | 6.659 | 49.39 |  |
| surface d=3 2:1 | _pearray_dirsused_xcvu9p | 4219 |  | 781 | -2.204 | 7.204 | 53.43 |  |
| surface d=3 2:1 | _pearray_mintree_xcvu9p | 4725 |  | 831 | -1.970 | 6.970 | 51.70 |  |
| surface d=3 2:1 | _pearray_nctx1_xcvu9p | 4210 |  | 808 | -1.939 | 6.939 | 51.47 |  |
| surface d=3 2:1 | _pearray_nctx2_xcvu9p | 5249 |  | 1591 | -2.855 | 7.855 | 58.26 |  |
| surface d=3 2:1 | _pearray_pb2_xcvu9p | 4084 |  | 790 | -2.140 | 7.140 | 52.96 |  |
| surface d=3 2:1 | _pearray_pb4_xcvu9p | 4091 |  | 797 | -2.243 | 7.243 | 53.72 |  |
| surface d=3 2:1 | _pearray_pb8_xcvu9p | 4091 |  | 797 | -2.243 | 7.243 | 53.72 |  |
| surface d=3 2:1 | _pearray_xcvu9p | 4091 |  | 797 | -2.243 | 7.243 | 53.72 |  |
| surface d=3 2:1 | _pearray_xcvu9p_ffull | 3901 |  | 813 | -1.747 | 6.747 | 50.04 |  |
| surface d=3 2:1 | _sliced_serial_xcvu9p | 4535 |  | 1382 | -1.809 | 6.809 | 50.50 |  |
| surface d=3 2:1 | _sliced_xcvu9p | 4213 |  | 1139 | -3.157 | 8.157 | 60.50 |  |
| surface d=3 2:1 | _xcvu9p | 3587 |  | 799 | -1.940 | 6.940 | 51.47 |  |
| surface d=3 2:1 | _xcvu9p_p7p0 | 3334 |  | 770 | 0.057 | 6.943 | 51.50 |  |
| surface d=5 2:1 | _mints2bank_xcvu9p | 29248 |  | 6581 | -0.282 | 5.282 | 40.50 |  |
| surface d=5 2:1 | _mints_busyreg_xcvu9p | 28423 |  | 6553 | -0.227 | 5.227 | 40.08 |  |
| surface d=5 2:1 | _pearray_busyreg_xcvu9p | 22482 |  | 3702 | -2.854 | 7.854 | 60.22 |  |
| surface d=5 2:1 | _pearray_keephier_xcvu9p | 23168 |  | 3725 | -4.603 | 9.603 | 73.63 |  |
| surface d=5 2:1 | _pearray_mintree_xcvu9p | 27731 |  | 3793 | -3.697 | 8.697 | 66.68 |  |
| surface d=5 2:1 | _pearray_noobs_xcvu9p | 22987 |  | 3688 | -5.187 | 10.187 | 78.10 |  |
| surface d=5 2:1 | _pearray_xcvu9p | 23168 |  | 3725 | -4.603 | 9.603 | 73.63 |  |
| surface d=5 2:1 | _sliced_serial_xcvu9p | 25458 |  | 5637 | -4.524 | 9.524 | 73.02 |  |
| surface d=5 2:1 | _sliced_xcvu9p | 24559 |  | 4879 | -4.636 | 9.636 | 73.88 |  |
| surface d=7 2:1 | _mints_busyreg_xcvu9p | 89291 |  | 18283 | -1.359 | 6.359 | 49.28 |  |
| surface d=7 2:1 | _mints_xcvu9p | 90455 |  | 18243 | -1.710 | 6.710 | 52.00 |  |
| surface d=7 2:1 | _pearray_busyreg_xcvu9p | 71189 |  | 10325 | -4.450 | 9.450 | 73.24 |  |
| surface d=7 2:1 | _pearray_mintree_xcvu9p | 87663 |  | 10517 | -6.095 | 11.095 | 85.99 |  |
| surface d=7 2:1 | _pearray_pb2_xcvu9p | 72799 |  | 10327 | -6.779 | 11.779 | 91.29 |  |
| surface d=7 2:1 | _pearray_pb4_xcvu9p | 72873 |  | 10329 | -7.690 | 12.690 | 98.35 |  |
| surface d=7 2:1 | _pearray_xcvu9p | 72982 |  | 10338 | -6.446 | 11.446 | 88.71 |  |


## 1c. 变体对比（同一配置的不同构建，synth 模式）

| 配置 | 变体 | LUT | Δ LUT | FF | WNS | 达成周期 | ns/轮 | Δ ns/轮 |
|---|---|---|---|---|---|---|---|---|
| rep d=3 2:1 | _m3loc_busyreg_xcvu9p | 752 |  | 224 | 1.537 | 3.463 | 25.69 |  |
| rep d=3 2:1 | _m3loc_xcvu9p | 829 |  | 224 | 1.008 | 3.992 | 29.61 |  |
| rep d=3 2:1 | _nctx1_xcvu9p | 984 |  | 226 | 0.908 | 4.092 | 30.35 |  |
| rep d=3 2:1 | _nctx2_xcvu9p | 1531 |  | 443 | 0.208 | 4.792 | 35.54 |  |
| rep d=3 2:1 | _pearray_xcvu9p | 924 |  | 222 | -0.121 | 5.121 | 37.98 |  |
| rep d=3 2:1 | _xcvu9p | 825 |  | 224 | 0.997 | 4.003 | 29.69 |  |
| rep d=5 2:1 | _m3loc_xcvu9p | 2574 |  | 591 | 0.170 | 4.830 | 37.03 |  |
| rep d=5 2:1 | _xcvu9p | 2579 |  | 588 | -0.827 | 5.827 | 44.68 |  |
| rep d=7 2:1 | _m3loc_xcvu9p | 5718 |  | 1165 | -2.065 | 7.065 | NA |  |
| rep d=7 2:1 | _xcvu9p | 5556 |  | 1170 | -2.099 | 7.099 | NA |  |
| surface d=3 2:1 | _m3loc_busyreg_xcvu9p | 3155 |  | 766 | -2.813 | 7.813 | 57.95 |  |
| surface d=3 2:1 | _m3loc_xcvu9p | 3334 |  | 770 | -3.846 | 8.846 | 65.61 |  |
| surface d=3 2:1 | _nctx1_xcvu9p | 3716 |  | 771 | -3.833 | 8.833 | 65.51 |  |
| surface d=3 2:1 | _nctx2_xcvu9p | 6394 |  | 1621 | -3.976 | 8.976 | 66.57 |  |
| surface d=3 2:1 | _pearray_keep_ablmin_xcvu9p | 1443 |  | 495 | 2.244 | 2.756 | 20.44 |  |
| surface d=3 2:1 | _pearray_keep_xcvu9p | 3992 |  | 769 | -4.886 | 9.886 | 73.32 |  |
| surface d=3 2:1 | _pearray_nctx2_peram_xcvu9p | 5026 |  | 1592 | -5.787 | 10.787 | 80.01 |  |
| surface d=3 2:1 | _pearray_nctx2_peram_xcvu9p_nctx8 | 7504 |  | 6326 | -6.688 | 11.688 | 86.69 |  |
| surface d=3 2:1 | _pearray_nctx2_xcvu9p | 5004 |  | 1591 | -5.996 | 10.996 | 81.56 |  |
| surface d=3 2:1 | _pearray_nctx2_xcvu9p_nctx8 | 7504 |  | 6326 | -6.688 | 11.688 | 86.69 |  |
| surface d=3 2:1 | _pearray_xcvu9p | 3992 |  | 769 | -4.886 | 9.886 | 73.32 |  |
| surface d=3 2:1 | _xcvu9p | 3379 |  | 770 | -4.993 | 9.993 | 74.12 |  |
| surface d=5 2:1 | _m3loc_busyreg_xcvu9p | 20324 |  | 3699 | -4.111 | 9.111 | 69.85 |  |
| surface d=5 2:1 | _m3loc_xcvu9p | 20217 |  | 3704 | -7.227 | 12.227 | 93.74 |  |
| surface d=5 2:1 | _pearray_nctx2_xcvu9p | 28828 |  | 7563 | -7.453 | 12.453 | 95.48 |  |
| surface d=5 2:1 | _pearray_xcvu9p | 22620 |  | 3665 | -6.337 | 11.337 | 86.92 |  |
| surface d=5 2:1 | _xcvu9p | 20983 |  | 3715 | -10.071 | 15.071 | 115.55 |  |
| surface d=7 2:1 | _pearray_dirsused_xcvu9p | 74354 |  | 9993 | -6.390 | 11.390 | 88.27 |  |
| surface d=7 2:1 | _pearray_keep_ablmin_xcvu9p | 28666 |  | 7215 | 1.532 | 3.468 | 26.88 |  |
| surface d=7 2:1 | _pearray_keep_xcvu9p | 73310 |  | 10287 | -6.198 | 11.198 | 86.78 |  |


## 2. 单码拟合与外推

模型 `LUT ≈ a·NN + b·NE`（NN=节点数，NE=边数），用已测的 d 点最小二乘拟合。

### surface 2:1 @ xcvu9p-flga2104-2L-e   a=-74.22 LUT/节点  b=128.27 LUT/边

| 配置 | NN | 实测 LUT | 拟合 LUT | 偏差 |
|---|---|---|---|---|
| surface_d3_2to1_xcvu9p | 36 | 3587 | 3870 | +7.9% |
| surface_d3_2to1_m3loc_xcvu9p | 36 | 3410 | 3870 | +13.5% |
| surface_d3_2to1_m3loc_busyreg_xcvu9p | 36 | 3233 | 3870 | +19.7% |
| surface_d3_2to1_m3loc_noobs_xcvu9p | 36 | 3429 | 3870 | +12.9% |
| surface_d3_2to1_m3loc_ablmerge_xcvu9p | 36 | 7 | 3870 | +55183.7% |
| surface_d3_2to1_m3loc_noobs_ablmerge_xcvu9p | 36 | 6 | 3870 | +64397.7% |
| surface_d3_2to1_nctx1_xcvu9p | 36 | 3852 | 3870 | +0.5% |
| surface_d3_2to1_nctx2_xcvu9p | 36 | 6327 | 3870 | -38.8% |
| surface_d3_2to1_xcvu9p_p7p0 | 36 | 3334 | 3870 | +16.1% |
| surface_d3_2to1_m3loc_keep_xcvu9p | 36 | 3906 | 3870 | -0.9% |
| surface_d3_2to1_m3loc_keep_noobs_xcvu9p | 36 | 3867 | 3870 | +0.1% |
| surface_d3_2to1_m3loc_keep_ablmerge_xcvu9p | 36 | 898 | 3870 | +330.9% |
| surface_d3_2to1_pearray_xcvu9p | 36 | 4091 | 3870 | -5.4% |
| surface_d3_2to1_pearray_xcvu9p_ffull | 36 | 3901 | 3870 | -0.8% |
| surface_d3_2to1_pearray_nctx1_xcvu9p | 36 | 4210 | 3870 | -8.1% |
| surface_d3_2to1_pearray_nctx2_xcvu9p | 36 | 5249 | 3870 | -26.3% |
| surface_d3_2to1_pearray_pb4_xcvu9p | 36 | 4091 | 3870 | -5.4% |
| surface_d3_2to1_pearray_pb8_xcvu9p | 36 | 4091 | 3870 | -5.4% |
| surface_d3_2to1_pearray_busyreg_xcvu9p | 36 | 3961 | 3870 | -2.3% |
| surface_d3_2to1_pearray_mintree_xcvu9p | 36 | 4725 | 3870 | -18.1% |
| surface_d3_2to1_pearray_pb2_xcvu9p | 36 | 4084 | 3870 | -5.2% |
| surface_d3_2to1_pearray_dirsused_xcvu9p | 36 | 4219 | 3870 | -8.3% |
| surface_d3_2to1_mints2bank_xcvu9p | 36 | 5529 | 3870 | -30.0% |
| surface_d3_2to1_mints1bank_xcvu9p | 36 | 5770 | 3870 | -32.9% |
| surface_d3_2to1_mints_xcvu9p | 36 | 5529 | 3870 | -30.0% |
| surface_d3_2to1_sliced_xcvu9p | 36 | 4213 | 3870 | -8.1% |
| surface_d3_2to1_sliced_serial_xcvu9p | 36 | 4535 | 3870 | -14.7% |
| surface_d3_2to1_lattice_xcvu9p | 36 | 4248 | 3870 | -8.9% |
| surface_d3_2to1_lattice_sliced_serial_xcvu9p | 36 | 4689 | 3870 | -17.5% |
| surface_d3_2to1_mints_busyreg_xcvu9p | 36 | 5430 | 3870 | -28.7% |
| surface_d5_2to1_pearray_xcvu9p | 150 | 23168 | 25424 | +9.7% |
| surface_d5_2to1_pearray_keephier_xcvu9p | 150 | 23168 | 25424 | +9.7% |
| surface_d5_2to1_pearray_noobs_xcvu9p | 150 | 22987 | 25424 | +10.6% |
| surface_d5_2to1_pearray_busyreg_xcvu9p | 150 | 22482 | 25424 | +13.1% |
| surface_d5_2to1_pearray_mintree_xcvu9p | 150 | 27731 | 25424 | -8.3% |
| surface_d5_2to1_mints2bank_xcvu9p | 150 | 29248 | 25424 | -13.1% |
| surface_d5_2to1_sliced_xcvu9p | 150 | 24559 | 25424 | +3.5% |
| surface_d5_2to1_sliced_serial_xcvu9p | 150 | 25458 | 25424 | -0.1% |
| surface_d5_2to1_mints_busyreg_xcvu9p | 150 | 28423 | 25424 | -10.6% |
| surface_d7_2to1_pearray_xcvu9p | 392 | 72982 | 79551 | +9.0% |
| surface_d7_2to1_pearray_busyreg_xcvu9p | 392 | 71189 | 79551 | +11.7% |
| surface_d7_2to1_pearray_mintree_xcvu9p | 392 | 87663 | 79551 | -9.3% |
| surface_d7_2to1_pearray_pb2_xcvu9p | 392 | 72799 | 79551 | +9.3% |
| surface_d7_2to1_pearray_pb4_xcvu9p | 392 | 72873 | 79551 | +9.2% |
| surface_d7_2to1_mints_xcvu9p | 392 | 90455 | 79551 | -12.1% |
| surface_d7_2to1_mints_busyreg_xcvu9p | 392 | 89291 | 79551 | -10.9% |

外推 d=21（NN=9702, NE=26061）: **2622778 LUT**（论文 Helios d=21 = 898,715 LUT）

## 3. Helios 论文参考点

| 参考 | 器件 | LUT | ns/round | 备注 |
|---|---|---|---|---|
| Helios d=21 phenomenological | VCU129 (xcvu29p) | 898715 | 11.5 | paper, 100 MHz |
| Helios d=17 circuit-level | VCU129 (xcvu29p) | NA | 23.7 | paper |
| Helios d=13 phenomenological | VCU129 (xcvu29p) | 165718 | 15.0 | paper |
| Helios sliding-window d=13 | VCU129 (xcvu29p) | 371000 | 194.0 | paper (windowed, higher latency) |
| Helios d=51 phenomenological | VCU129 (xcvu29p) | 796000 | 543.9 | paper, 85 MHz |

## 4. 结论（自动生成的骨架，人工补充解读）

- `LUT/节点` 与 Helios 论文 d=21 的 ≈92 LUT/节点 对比：见上表。
- `ns/轮` = cycles/轮 × 达成周期；与 Helios 11.5 ns/轮 对比：见上表。
- `split_factor`（flood/sync 切两拍的周期代价）见 `cycles.csv`；只有当切分能把周期压缩超过该倍数时才划算。
