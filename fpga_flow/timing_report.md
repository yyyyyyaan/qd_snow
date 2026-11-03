# Snowflake-on-Helios 实现与时序报告（M2）

## 1. WNS / 逻辑级数 / 达成频率

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


## 2. 关键路径（逐配置，取自 `logs/timing_paths_<tag>.rpt`）

### rep_d3_2to1_xcvu9p
```
Slack (MET) :             0.778ns  (required time - arrival time)
Source:                 cid_reg[2][2]/C
Destination:            step_cnt_reg[5]/D
Slack (MET) :             0.784ns  (required time - arrival time)
Source:                 cid_reg[2][2]/C
Destination:            step_cnt_reg[3]/D
```

### rep_d3_1to1_xcvu9p
```
Slack (MET) :             1.153ns  (required time - arrival time)
Source:                 cid_reg[8][2]/C
Destination:            FSM_onehot_stage_reg[2]/CE
Slack (MET) :             1.252ns  (required time - arrival time)
Source:                 cid_reg[8][2]/C
Destination:            FSM_onehot_stage_reg[5]/CE
```

### surface_d3_2to1_xcvu9p
```
Slack (VIOLATED) :        -1.618ns  (required time - arrival time)
Source:                 cid_reg[21][1]/C
Destination:            FSM_sequential_stage_reg[1]/CE
Slack (VIOLATED) :        -1.618ns  (required time - arrival time)
Source:                 cid_reg[21][1]/C
Destination:            FSM_sequential_stage_reg[1]_rep/CE
```

### surface_d3_1to1_xcvu9p
```
Slack (VIOLATED) :        -2.073ns  (required time - arrival time)
Source:                 cid_reg[24][5]/C
Destination:            defect_reg[35]/D
Slack (VIOLATED) :        -2.061ns  (required time - arrival time)
Source:                 cid_reg[24][5]/C
Destination:            defect_reg[31]/D
```

### rep_d5_2to1_xcvu9p
```
Slack (MET) :             0.285ns  (required time - arrival time)
Source:                 cid_reg[14][4]/C
Destination:            defect_reg[20]/D
Slack (MET) :             0.382ns  (required time - arrival time)
Source:                 cid_reg[14][4]/C
Destination:            defect_reg[25]/D
```

### rep_d5_1to1_xcvu9p
```
Slack (MET) :             0.312ns  (required time - arrival time)
Source:                 cid_reg[10][2]/C
Destination:            ecorr_reg[31]/D
Slack (MET) :             0.314ns  (required time - arrival time)
Source:                 cid_reg[10][2]/C
Destination:            ecorr_reg[30]/D
```

### rep_d3_2to1_m3loc_xcvu9p
```
Slack (MET) :             0.778ns  (required time - arrival time)
Source:                 cid_reg[2][2]/C
Destination:            step_cnt_reg[5]/D
Slack (MET) :             0.784ns  (required time - arrival time)
Source:                 cid_reg[2][2]/C
Destination:            step_cnt_reg[3]/D
```

### surface_d3_2to1_m3loc_xcvu9p
```
Slack (VIOLATED) :        -1.618ns  (required time - arrival time)
Source:                 cid_reg[21][1]/C
Destination:            FSM_sequential_stage_reg[1]/CE
Slack (VIOLATED) :        -1.618ns  (required time - arrival time)
Source:                 cid_reg[21][1]/C
Destination:            FSM_sequential_stage_reg[1]_rep/CE
```

### rep_d3_2to1_m3loc_busyreg_xcvu9p
```
Slack (MET) :             1.403ns  (required time - arrival time)
Source:                 cid_reg[8][2]/C
Destination:            busy_reg[9]/D
Slack (MET) :             1.438ns  (required time - arrival time)
Source:                 cid_reg[8][2]/C
Destination:            busy_reg[8]/D
```

### surface_d3_2to1_m3loc_busyreg_xcvu9p
```
Slack (VIOLATED) :        -0.227ns  (required time - arrival time)
Source:                 cid_reg[24][5]/C
Destination:            busy_reg[25]/D
Slack (VIOLATED) :        -0.223ns  (required time - arrival time)
Source:                 cid_reg[30][1]/C
Destination:            busy_reg[31]/D
```

### rep_d3_2to1_m3loc_noobs_xcvu9p
```
Slack (MET) :             0.786ns  (required time - arrival time)
Source:                 cid_reg[8][0]/C
Destination:            FSM_sequential_stage_reg[1]_rep/CE
Slack (MET) :             0.788ns  (required time - arrival time)
Source:                 cid_reg[8][0]/C
Destination:            FSM_sequential_stage_reg[1]_rep__0/CE
```

### rep_d3_2to1_m3loc_ablmerge_xcvu9p
```
Slack (MET) :             4.165ns  (required time - arrival time)
Source:                 FSM_sequential_stage_reg[2]/C
Destination:            FSM_sequential_stage_reg[0]/CE
Slack (MET) :             4.165ns  (required time - arrival time)
Source:                 FSM_sequential_stage_reg[2]/C
Destination:            FSM_sequential_stage_reg[1]/CE
```

### rep_d3_2to1_m3loc_noobs_ablmerge_xcvu9p
```
Slack (MET) :             4.343ns  (required time - arrival time)
Source:                 FSM_sequential_stage_reg[2]/C
Destination:            dbg_stage_reg[0]/CE
Slack (MET) :             4.344ns  (required time - arrival time)
Source:                 FSM_sequential_stage_reg[2]/C
Destination:            dbg_stage_reg[1]/CE
```

### surface_d3_2to1_m3loc_noobs_xcvu9p
```
Slack (VIOLATED) :        -1.823ns  (required time - arrival time)
Source:                 cid_reg[24][1]_replica_2/C
Destination:            FSM_sequential_stage_reg[1]_rep__3/CE
Slack (VIOLATED) :        -1.752ns  (required time - arrival time)
Source:                 cid_reg[24][1]_replica_2/C
Destination:            FSM_sequential_stage_reg[1]_rep__4/CE
```

### surface_d3_2to1_m3loc_ablmerge_xcvu9p
```
Slack (MET) :             4.216ns  (required time - arrival time)
Source:                 FSM_sequential_stage_reg[2]/C
Destination:            FSM_sequential_stage_reg[0]/CE
Slack (MET) :             4.216ns  (required time - arrival time)
Source:                 FSM_sequential_stage_reg[2]/C
Destination:            FSM_sequential_stage_reg[1]/CE
```

### surface_d3_2to1_m3loc_noobs_ablmerge_xcvu9p
```
Slack (MET) :             4.343ns  (required time - arrival time)
Source:                 FSM_sequential_stage_reg[2]/C
Destination:            dbg_stage_reg[0]/CE
Slack (MET) :             4.344ns  (required time - arrival time)
Source:                 FSM_sequential_stage_reg[2]/C
Destination:            dbg_stage_reg[1]/CE
```

### rep_d5_2to1_m3loc_xcvu9p
```
Slack (MET) :             0.385ns  (required time - arrival time)
Source:                 cid_reg[18][2]/C
Destination:            step_cnt_reg[5]/D
Slack (MET) :             0.403ns  (required time - arrival time)
Source:                 cid_reg[18][2]/C
Destination:            step_cnt_reg[6]/D
```

### surface_d3_2to1_nctx1_xcvu9p
```
Slack (VIOLATED) :        -0.885ns  (required time - arrival time)
Source:                 cid_reg[24][0]_replica_1/C
Destination:            stage_reg[0][0]/CE
Slack (VIOLATED) :        -0.885ns  (required time - arrival time)
Source:                 cid_reg[24][0]_replica_1/C
Destination:            stage_reg[0][1]/CE
```

### rep_d3_2to1_nctx1_xcvu9p
```
Slack (MET) :             0.898ns  (required time - arrival time)
Source:                 cid_reg[8][3]/C
Destination:            step_cnt_reg[0][5]/D
Slack (MET) :             0.919ns  (required time - arrival time)
Source:                 cid_reg[10][0]/C
Destination:            step_cnt_reg[0][6]/D
```

### surface_d3_2to1_nctx2_xcvu9p
```
Slack (VIOLATED) :        -3.142ns  (required time - arrival time)
Source:                 hold_reg[0]/C
Destination:            run_reg[0]/D
Slack (VIOLATED) :        -3.070ns  (required time - arrival time)
Source:                 hold_reg[0]/C
Destination:            hold_valid_reg_replica_2/D
```

### rep_d3_2to1_nctx2_xcvu9p
```
Slack (MET) :             0.562ns  (required time - arrival time)
Source:                 hold_reg[0]/C
Destination:            run_reg[1]/D
Slack (MET) :             0.624ns  (required time - arrival time)
Source:                 hold_reg[0]/C
Destination:            run_reg[0]/D
```

### rep_d3_2to1_xcvu9p_p4p3
```
Slack (MET) :             0.744ns  (required time - arrival time)
Source:                 growth_reg[1][1]/C
Destination:            FSM_sequential_stage_reg[0]/CE
Slack (MET) :             0.744ns  (required time - arrival time)
Source:                 growth_reg[1][1]/C
Destination:            FSM_sequential_stage_reg[2]/CE
```

### surface_d3_2to1_xcvu9p_p7p0
```
Slack (MET) :             0.057ns  (required time - arrival time)
Source:                 cid_reg[24][0]/C
Destination:            FSM_sequential_stage_reg[1]_rep__2/D
Slack (MET) :             0.139ns  (required time - arrival time)
Source:                 cid_reg[24][0]/C
Destination:            FSM_sequential_stage_reg[1]_rep__1/D
```

### rep_d5_2to1_xcvu9p_p4p8
```
Slack (MET) :             0.402ns  (required time - arrival time)
Source:                 cid_reg[11][3]/C
Destination:            FSM_sequential_stage_reg[0]_rep__0/CE
Slack (MET) :             0.402ns  (required time - arrival time)
Source:                 cid_reg[11][3]/C
Destination:            FSM_sequential_stage_reg[2]/CE
```

### surface_d3_2to1_xczu7ev
```
Slack (VIOLATED) :        -1.459ns  (required time - arrival time)
Source:                 cid_reg[30][1]/C
Destination:            FSM_sequential_stage_reg[1]_rep__1/CE
Slack (VIOLATED) :        -1.455ns  (required time - arrival time)
Source:                 cid_reg[30][1]/C
Destination:            FSM_sequential_stage_reg[0]/CE
```

### surface_d5_2to1_xczu7ev
```
Slack (VIOLATED) :        -5.410ns  (required time - arrival time)
Source:                 cid_reg[112][7]/C
Destination:            FSM_sequential_stage_reg[1]/CE
Slack (VIOLATED) :        -5.410ns  (required time - arrival time)
Source:                 cid_reg[112][7]/C
Destination:            FSM_sequential_stage_reg[2]_rep__3/CE
```

### rep_d3_2to1_xczu7ev
```
Slack (MET) :             0.829ns  (required time - arrival time)
Source:                 cid_reg[7][3]/C
Destination:            step_cnt_reg[1]/D
Slack (MET) :             0.854ns  (required time - arrival time)
Source:                 cid_reg[8][4]/C
Destination:            FSM_sequential_stage_reg[1]/CE
```

### rep_d3_2to1_m3loc_keep_xcvu9p
```
Slack (MET) :             1.073ns  (required time - arrival time)
Source:                 cid_reg[8][2]/C
Destination:            step_cnt_reg[7]/D
Slack (MET) :             1.090ns  (required time - arrival time)
Source:                 cid_reg[8][2]/C
Destination:            step_cnt_reg[0]/D
```

### surface_d3_2to1_m3loc_keep_xcvu9p
```
Slack (VIOLATED) :        -1.199ns  (required time - arrival time)
Source:                 cid_reg[24][1]_replica/C
Destination:            FSM_sequential_stage_reg[1]/CE
Slack (VIOLATED) :        -1.196ns  (required time - arrival time)
Source:                 cid_reg[24][1]_replica/C
Destination:            FSM_sequential_stage_reg[1]_rep/CE
```

### rep_d3_2to1_m3loc_keep_noobs_xcvu9p
```
Slack (MET) :             0.993ns  (required time - arrival time)
Source:                 cid_reg[9][3]/C
Destination:            FSM_sequential_stage_reg[1]/CE
Slack (MET) :             0.993ns  (required time - arrival time)
Source:                 cid_reg[9][3]/C
Destination:            FSM_sequential_stage_reg[2]/CE
```

### surface_d3_2to1_m3loc_keep_noobs_xcvu9p
```
Slack (VIOLATED) :        -1.406ns  (required time - arrival time)
Source:                 cid_reg[30][1]/C
Destination:            FSM_sequential_stage_reg[1]_rep__0/CE
Slack (VIOLATED) :        -1.404ns  (required time - arrival time)
Source:                 cid_reg[30][1]/C
Destination:            FSM_sequential_stage_reg[0]_rep__1/CE
```

### rep_d3_2to1_m3loc_keep_ablmerge_xcvu9p
```
Slack (MET) :             2.674ns  (required time - arrival time)
Source:                 FSM_sequential_stage_reg[0]/C
Destination:            whole_reg[3]/D
Slack (MET) :             2.782ns  (required time - arrival time)
Source:                 FSM_sequential_stage_reg[0]/C
Destination:            growth_reg[11][0]/D
```

### surface_d3_2to1_m3loc_keep_ablmerge_xcvu9p
```
Slack (MET) :             2.269ns  (required time - arrival time)
Source:                 FSM_sequential_stage_reg[0]_rep/C
Destination:            cid_reg[24][1]/D
Slack (MET) :             2.275ns  (required time - arrival time)
Source:                 FSM_sequential_stage_reg[0]_rep/C
Destination:            cid_reg[24][3]/D
```

### surface_d3_2to1_pearray_xcvu9p
```
Slack (VIOLATED) :        -2.243ns  (required time - arrival time)
Source:                 g_pe[31].pe_i/cid_reg[4]/C
Destination:            FSM_sequential_stage_reg[0]/CE
Slack (VIOLATED) :        -2.243ns  (required time - arrival time)
Source:                 g_pe[31].pe_i/cid_reg[4]/C
Destination:            FSM_sequential_stage_reg[1]/CE
```

### rep_d3_2to1_pearray_xcvu9p
```
Slack (MET) :             1.002ns  (required time - arrival time)
Source:                 g_edge[1].ed_i/growth_reg[1]/C
Destination:            FSM_sequential_stage_reg[2]/CE
Slack (MET) :             1.003ns  (required time - arrival time)
Source:                 g_edge[1].ed_i/growth_reg[1]/C
Destination:            FSM_sequential_stage_reg[0]/CE
```

### surface_d3_2to1_pearray_xcvu9p_ffull
```
Slack (VIOLATED) :        -1.747ns  (required time - arrival time)
Source:                 g_pe[27].pe_i/cid_reg[0]/C
Destination:            FSM_sequential_stage_reg[1]/CE
Slack (VIOLATED) :        -1.745ns  (required time - arrival time)
Source:                 g_pe[27].pe_i/cid_reg[0]/C
Destination:            FSM_sequential_stage_reg[2]/CE
```

### rep_d3_2to1_pearray_xcvu9p_ffull
```
Slack (MET) :             0.797ns  (required time - arrival time)
Source:                 g_pe[8].pe_i/cid_reg[0]/C
Destination:            step_cnt_reg[3]/D
Slack (MET) :             0.801ns  (required time - arrival time)
Source:                 g_pe[8].pe_i/cid_reg[0]/C
Destination:            step_cnt_reg[4]/D
```

### surface_d3_2to1_pearray_nctx1_xcvu9p
```
Slack (VIOLATED) :        -1.939ns  (required time - arrival time)
Source:                 g_pe[27].pe_i/cid_reg[0][0]/C
Destination:            stage_reg[0][2]/D
Slack (VIOLATED) :        -1.926ns  (required time - arrival time)
Source:                 g_pe[27].pe_i/cid_reg[0][0]/C
Destination:            done_reg[0]/D
```

### rep_d3_2to1_pearray_nctx1_xcvu9p
```
Slack (MET) :             0.747ns  (required time - arrival time)
Source:                 g_edge[1].ed_i/growth_mem_reg[0][1]/C
Destination:            stage_reg[0][0]/CE
Slack (MET) :             0.747ns  (required time - arrival time)
Source:                 g_edge[1].ed_i/growth_mem_reg[0][1]/C
Destination:            stage_reg[0][2]/CE
```

### surface_d3_2to1_pearray_nctx2_xcvu9p
```
Slack (VIOLATED) :        -2.855ns  (required time - arrival time)
Source:                 run_reg[0]/C
Destination:            stage_reg[0][2]/CE
Slack (VIOLATED) :        -2.854ns  (required time - arrival time)
Source:                 run_reg[0]/C
Destination:            stage_reg[0][0]/CE
```

### rep_d3_2to1_pearray_nctx2_xcvu9p
```
Slack (MET) :             0.274ns  (required time - arrival time)
Source:                 run_reg[1]/C
Destination:            stage_reg[1][0]/CE
Slack (MET) :             0.274ns  (required time - arrival time)
Source:                 run_reg[1]/C
Destination:            stage_reg[1][1]/CE
```

### surface_d5_2to1_pearray_xcvu9p
```
Slack (VIOLATED) :        -4.603ns  (required time - arrival time)
Source:                 g_pe[81].pe_i/cid_reg[0]/C
Destination:            FSM_sequential_stage_reg[0]/CE
Slack (VIOLATED) :        -4.603ns  (required time - arrival time)
Source:                 g_pe[81].pe_i/cid_reg[0]/C
Destination:            FSM_sequential_stage_reg[2]/CE
```

### surface_d7_2to1_pearray_xcvu9p
```
Slack (VIOLATED) :        -6.446ns  (required time - arrival time)
Source:                 g_pe[159].pe_i/cid_reg[3]/C
Destination:            FSM_sequential_stage_reg[1]/CE
Slack (VIOLATED) :        -6.446ns  (required time - arrival time)
Source:                 g_pe[159].pe_i/cid_reg[3]/C
Destination:            FSM_sequential_stage_reg[2]/CE
```

### surface_d5_2to1_pearray_keephier_xcvu9p
```
Slack (VIOLATED) :        -4.603ns  (required time - arrival time)
Source:                 g_pe[81].pe_i/cid_reg[0]/C
Destination:            FSM_sequential_stage_reg[0]/CE
Slack (VIOLATED) :        -4.603ns  (required time - arrival time)
Source:                 g_pe[81].pe_i/cid_reg[0]/C
Destination:            FSM_sequential_stage_reg[2]/CE
```

### surface_d3_2to1_pearray_pb4_xcvu9p
```
Slack (VIOLATED) :        -2.243ns  (required time - arrival time)
Source:                 g_pe[31].pe_i/cid_reg[4]/C
Destination:            FSM_sequential_stage_reg[0]/CE
Slack (VIOLATED) :        -2.243ns  (required time - arrival time)
Source:                 g_pe[31].pe_i/cid_reg[4]/C
Destination:            FSM_sequential_stage_reg[1]/CE
```

### surface_d3_2to1_pearray_pb8_xcvu9p
```
Slack (VIOLATED) :        -2.243ns  (required time - arrival time)
Source:                 g_pe[31].pe_i/cid_reg[4]/C
Destination:            FSM_sequential_stage_reg[0]/CE
Slack (VIOLATED) :        -2.243ns  (required time - arrival time)
Source:                 g_pe[31].pe_i/cid_reg[4]/C
Destination:            FSM_sequential_stage_reg[1]/CE
```

### surface_d5_2to1_pearray_noobs_xcvu9p
```
Slack (VIOLATED) :        -5.187ns  (required time - arrival time)
Source:                 g_pe[116].pe_i/cid_reg[0]/C
Destination:            FSM_sequential_stage_reg[0]/CE
Slack (VIOLATED) :        -5.187ns  (required time - arrival time)
Source:                 g_pe[116].pe_i/cid_reg[0]/C
Destination:            FSM_sequential_stage_reg[1]/CE
```

### surface_d3_2to1_pearray_busyreg_xcvu9p
```
Slack (VIOLATED) :        -1.659ns  (required time - arrival time)
Source:                 g_pe[34].pe_i/cid_reg[2]/C
Destination:            g_pe[35].pe_i/busy_reg/D
Slack (VIOLATED) :        -1.653ns  (required time - arrival time)
Source:                 g_pe[25].pe_i/cid_reg[4]/C
Destination:            g_pe[31].pe_i/busy_reg/D
```

### surface_d5_2to1_pearray_busyreg_xcvu9p
```
Slack (VIOLATED) :        -2.854ns  (required time - arrival time)
Source:                 g_pe[100].pe_i/cid_reg[0]/C
Destination:            g_pe[121].pe_i/busy_reg/D
Slack (VIOLATED) :        -2.849ns  (required time - arrival time)
Source:                 g_pe[91].pe_i/cid_reg[6]/C
Destination:            g_pe[112].pe_i/busy_reg/D
```

### surface_d7_2to1_pearray_busyreg_xcvu9p
```
Slack (VIOLATED) :        -4.450ns  (required time - arrival time)
Source:                 g_pe[168].pe_i/cid_reg[5]/C
Destination:            g_pe[162].pe_i/busy_reg/D
Slack (VIOLATED) :        -4.444ns  (required time - arrival time)
Source:                 g_pe[253].pe_i/cid_reg[0]/C
Destination:            g_pe[296].pe_i/busy_reg/D
```

### surface_d3_2to1_pearray_mintree_xcvu9p
```
Slack (VIOLATED) :        -1.970ns  (required time - arrival time)
Source:                 g_pe[25].pe_i/cid_reg[3]/C
Destination:            FSM_sequential_stage_reg[0]/CE
Slack (VIOLATED) :        -1.970ns  (required time - arrival time)
Source:                 g_pe[25].pe_i/cid_reg[3]/C
Destination:            FSM_sequential_stage_reg[1]/CE
```

### surface_d5_2to1_pearray_mintree_xcvu9p
```
Slack (VIOLATED) :        -3.697ns  (required time - arrival time)
Source:                 g_edge[90].ed_i/growth_reg[1]/C
Destination:            FSM_sequential_stage_reg[2]/D
Slack (VIOLATED) :        -3.664ns  (required time - arrival time)
Source:                 g_edge[90].ed_i/growth_reg[1]/C
Destination:            FSM_sequential_stage_reg[0]/CE
```

### surface_d7_2to1_pearray_mintree_xcvu9p
```
Slack (VIOLATED) :        -6.095ns  (required time - arrival time)
Source:                 g_pe[152].pe_i/cid_reg[4]/C
Destination:            FSM_sequential_stage_reg[1]/CE
Slack (VIOLATED) :        -6.095ns  (required time - arrival time)
Source:                 g_pe[152].pe_i/cid_reg[4]/C
Destination:            FSM_sequential_stage_reg[2]/CE
```

### surface_d7_2to1_pearray_pb2_xcvu9p
```
Slack (VIOLATED) :        -6.779ns  (required time - arrival time)
Source:                 g_pe[151].pe_i/cid_reg[1]/C
Destination:            FSM_sequential_stage_reg[0]/CE
Slack (VIOLATED) :        -6.779ns  (required time - arrival time)
Source:                 g_pe[151].pe_i/cid_reg[1]/C
Destination:            FSM_sequential_stage_reg[1]/CE
```

### surface_d7_2to1_pearray_pb4_xcvu9p
```
Slack (VIOLATED) :        -7.690ns  (required time - arrival time)
Source:                 g_pe[299].pe_i/cid_reg[7]/C
Destination:            FSM_sequential_stage_reg[1]/CE
Slack (VIOLATED) :        -7.690ns  (required time - arrival time)
Source:                 g_pe[299].pe_i/cid_reg[7]/C
Destination:            FSM_sequential_stage_reg[2]/CE
```

### surface_d3_2to1_pearray_pb2_xcvu9p
```
Slack (VIOLATED) :        -2.140ns  (required time - arrival time)
Source:                 g_pe[27].pe_i/cid_reg[3]_replica/C
Destination:            FSM_sequential_stage_reg[1]/CE
Slack (VIOLATED) :        -2.136ns  (required time - arrival time)
Source:                 g_pe[27].pe_i/cid_reg[3]_replica/C
Destination:            FSM_sequential_stage_reg[0]/CE
```

### surface_d3_2to1_pearray_dirsused_xcvu9p
```
Slack (VIOLATED) :        -2.204ns  (required time - arrival time)
Source:                 g_pe[27].pe_i/cid_reg[0]/C
Destination:            FSM_sequential_stage_reg[1]/CE
Slack (VIOLATED) :        -2.200ns  (required time - arrival time)
Source:                 g_pe[27].pe_i/cid_reg[0]/C
Destination:            FSM_sequential_stage_reg[0]/CE
```

### surface_d3_2to1_mints_xcvu9p
```
Slack (MET) :             0.201ns  (required time - arrival time)
Source:                 mts_sub_reg[0]_replica_3/C
Destination:            g_pe[21].pe_i/mts_dir_r_reg[1]/CE
Slack (MET) :             0.201ns  (required time - arrival time)
Source:                 mts_sub_reg[0]_replica_3/C
Destination:            g_pe[21].pe_i/mts_dir_r_reg[2]/CE
```

### surface_d7_2to1_mints_xcvu9p
```
Slack (VIOLATED) :        -1.710ns  (required time - arrival time)
Source:                 g_pe[108].pe_i/mts_cid_r_reg[7]/C
Destination:            g_pe[108].pe_i/mts_found_r_reg/CE
Slack (VIOLATED) :        -1.709ns  (required time - arrival time)
Source:                 g_pe[207].pe_i/mts_cid_r_reg[1]/C
Destination:            g_pe[207].pe_i/mts_cid_r_reg[6]/D
```

### surface_d3_2to1_sliced_xcvu9p
```
Slack (VIOLATED) :        -3.157ns  (required time - arrival time)
Source:                 g_pe[25].pe_i/cid_reg[2]/C
Destination:            g_seam_nb[7].seam_nb_push_reg[7]/D
Slack (VIOLATED) :        -3.102ns  (required time - arrival time)
Source:                 g_pe[27].pe_i/cid_reg[1]_replica/C
Destination:            g_seam_nb[10].seam_nb_push_reg[10]/D
```

### surface_d3_2to1_sliced_serial_xcvu9p
```
Slack (VIOLATED) :        -1.809ns  (required time - arrival time)
Source:                 g_pe[28].pe_i/cid_reg[6]/C
Destination:            FSM_sequential_stage_reg[2]/CE
Slack (VIOLATED) :        -1.809ns  (required time - arrival time)
Source:                 g_pe[28].pe_i/cid_reg[6]/C
Destination:            FSM_sequential_stage_reg[0]/CE
```

### surface_d5_2to1_sliced_xcvu9p
```
Slack (VIOLATED) :        -4.636ns  (required time - arrival time)
Source:                 g_pe[101].pe_i/cid_reg[0]/C
Destination:            g_seam_nb[32].seam_nb_push_reg[32]/D
Slack (VIOLATED) :        -4.602ns  (required time - arrival time)
Source:                 g_pe[91].pe_i/cid_reg[0]/C
Destination:            g_seam_nb[21].seam_nb_push_reg[21]/D
```

### surface_d5_2to1_sliced_serial_xcvu9p
```
Slack (VIOLATED) :        -4.524ns  (required time - arrival time)
Source:                 g_pe[100].pe_i/cid_reg[0]/C
Destination:            FSM_sequential_stage_reg[0]/CE
Slack (VIOLATED) :        -4.524ns  (required time - arrival time)
Source:                 g_pe[100].pe_i/cid_reg[0]/C
Destination:            FSM_sequential_stage_reg[1]/CE
```

### surface_d3_2to1_lattice_xcvu9p
```
Slack (VIOLATED) :        -2.298ns  (required time - arrival time)
Source:                 g_pe[24].pe_i/cid_reg[1]_replica_2/C
Destination:            FSM_sequential_stage_reg[0]/CE
Slack (VIOLATED) :        -2.298ns  (required time - arrival time)
Source:                 g_pe[24].pe_i/cid_reg[1]_replica_2/C
Destination:            FSM_sequential_stage_reg[1]/CE
```

### surface_d3_2to1_lattice_sliced_serial_xcvu9p
```
Slack (VIOLATED) :        -1.970ns  (required time - arrival time)
Source:                 g_pe[28].pe_i/cid_reg[1]_replica/C
Destination:            FSM_sequential_stage_reg[1]/CE
Slack (VIOLATED) :        -1.970ns  (required time - arrival time)
Source:                 g_pe[28].pe_i/cid_reg[1]_replica/C
Destination:            FSM_sequential_stage_reg[2]/CE
```

### surface_d3_2to1_mints_busyreg_xcvu9p
```
Slack (MET) :             0.119ns  (required time - arrival time)
Source:                 g_pe[22].pe_i/mts_cid_r_reg[3]/C
Destination:            g_pe[22].pe_i/mts_found_r_reg/S
Slack (MET) :             0.131ns  (required time - arrival time)
Source:                 g_pe[22].pe_i/mts_cid_r_reg[3]/C
Destination:            g_pe[22].pe_i/mts_dir_r_reg[1]/S
```

### surface_d7_2to1_mints_busyreg_xcvu9p
```
Slack (VIOLATED) :        -1.359ns  (required time - arrival time)
Source:                 g_pe[233].pe_i/mts_cid_r_reg[0]/C
Destination:            g_pe[233].pe_i/mts_dir_r_reg[0]/D
Slack (VIOLATED) :        -1.359ns  (required time - arrival time)
Source:                 g_pe[315].pe_i/cid_reg[2]/C
Destination:            g_pe[322].pe_i/mts_dir_r_reg[0]/CE
```

### surface_d5_2to1_mints_busyreg_xcvu9p
```
Slack (VIOLATED) :        -0.227ns  (required time - arrival time)
Source:                 mts_sub_reg[0]_replica_32/C
Destination:            g_pe[58].pe_i/mts_dir_r_reg[0]/S
Slack (VIOLATED) :        -0.227ns  (required time - arrival time)
Source:                 mts_sub_reg[0]_replica_32/C
Destination:            g_pe[58].pe_i/mts_dir_r_reg[1]/S
```

## 3. 如何自己在 GUI 里看

```
fpga_flow\open_gui.bat <tag>      # 打开布线后 checkpoint + 时序报告
```
