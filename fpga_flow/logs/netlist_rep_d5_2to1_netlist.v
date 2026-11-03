// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Wed Sep 16 02:03:22 2026
// Host        : DESKTOP-TO7M6OH running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               {D:\ycz\doc\deepseek_workzone\decoder\fpga_flow\logs/netlist_rep_d5_2to1_netlist.v}
// Design      : snowflake_core
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcvu9p-flga2104-2L-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CW = "6" *) (* DEBUG_OBS = "1" *) (* NDIR = "4" *) 
(* NE = "41" *) (* NN = "30" *) (* ONE_ONE = "0" *) 
(* ST_DROP = "3'b001" *) (* ST_GH = "3'b100" *) (* ST_GW = "3'b010" *) 
(* ST_IDLE = "3'b000" *) (* ST_MH = "3'b101" *) (* ST_MW = "3'b011" *) 
(* NotValidForBitStream *)
module snowflake_core
   (clk,
    reset,
    start,
    syndrome,
    done,
    all_busy,
    commit_onehot,
    obs_cid,
    obs_active,
    obs_whole,
    obs_defect,
    obs_ptr,
    obs_grown,
    obs_unrooted,
    obs_busy,
    obs_growth,
    obs_ecorr,
    dbg_stage,
    dbg_step,
    dbg_valid);
  input clk;
  input reset;
  input start;
  input [3:0]syndrome;
  output done;
  output all_busy;
  output [8:0]commit_onehot;
  output [179:0]obs_cid;
  output [29:0]obs_active;
  output [29:0]obs_whole;
  output [29:0]obs_defect;
  output [89:0]obs_ptr;
  output [29:0]obs_grown;
  output [29:0]obs_unrooted;
  output [29:0]obs_busy;
  output [81:0]obs_growth;
  output [40:0]obs_ecorr;
  output [2:0]dbg_stage;
  output [7:0]dbg_step;
  output dbg_valid;

  wire \<const0> ;
  wire \FSM_sequential_stage[1]_i_1_n_0 ;
  wire \FSM_sequential_stage[1]_i_2_n_0 ;
  wire \FSM_sequential_stage[1]_i_3_n_0 ;
  wire \FSM_sequential_stage[1]_i_4_n_0 ;
  wire \FSM_sequential_stage[1]_i_5_n_0 ;
  wire \FSM_sequential_stage[1]_i_6_n_0 ;
  wire \FSM_sequential_stage[1]_i_7_n_0 ;
  wire \FSM_sequential_stage[1]_rep_i_1__0_n_0 ;
  wire \FSM_sequential_stage[1]_rep_i_1__1_n_0 ;
  wire \FSM_sequential_stage[1]_rep_i_1__2_n_0 ;
  wire \FSM_sequential_stage[1]_rep_i_1__3_n_0 ;
  wire \FSM_sequential_stage[1]_rep_i_1__4_n_0 ;
  wire \FSM_sequential_stage[1]_rep_i_1_n_0 ;
  wire \FSM_sequential_stage[2]_i_10_n_0 ;
  wire \FSM_sequential_stage[2]_i_11_n_0 ;
  wire \FSM_sequential_stage[2]_i_12_n_0 ;
  wire \FSM_sequential_stage[2]_i_13_n_0 ;
  wire \FSM_sequential_stage[2]_i_14_n_0 ;
  wire \FSM_sequential_stage[2]_i_15_n_0 ;
  wire \FSM_sequential_stage[2]_i_16_n_0 ;
  wire \FSM_sequential_stage[2]_i_17_n_0 ;
  wire \FSM_sequential_stage[2]_i_18_n_0 ;
  wire \FSM_sequential_stage[2]_i_19_n_0 ;
  wire \FSM_sequential_stage[2]_i_1_n_0 ;
  wire \FSM_sequential_stage[2]_i_20_n_0 ;
  wire \FSM_sequential_stage[2]_i_21_n_0 ;
  wire \FSM_sequential_stage[2]_i_22_n_0 ;
  wire \FSM_sequential_stage[2]_i_23_n_0 ;
  wire \FSM_sequential_stage[2]_i_3_n_0 ;
  wire \FSM_sequential_stage[2]_i_4_n_0 ;
  wire \FSM_sequential_stage[2]_i_5_n_0 ;
  wire \FSM_sequential_stage[2]_i_6_n_0 ;
  wire \FSM_sequential_stage[2]_i_7_n_0 ;
  wire \FSM_sequential_stage[2]_i_8_n_0 ;
  wire \FSM_sequential_stage[2]_i_9_n_0 ;
  wire \FSM_sequential_stage_reg[1]_rep__0_n_0 ;
  wire \FSM_sequential_stage_reg[1]_rep__1_n_0 ;
  wire \FSM_sequential_stage_reg[1]_rep__2_n_0 ;
  wire \FSM_sequential_stage_reg[1]_rep__3_n_0 ;
  wire \FSM_sequential_stage_reg[1]_rep__4_n_0 ;
  wire \FSM_sequential_stage_reg[1]_rep_n_0 ;
  wire \active[0]_i_2_n_0 ;
  wire \active[10]_i_1_n_0 ;
  wire \active[10]_i_2_n_0 ;
  wire \active[11]_i_1_n_0 ;
  wire \active[11]_i_2_n_0 ;
  wire \active[12]_i_1_n_0 ;
  wire \active[12]_i_2_n_0 ;
  wire \active[13]_i_1_n_0 ;
  wire \active[13]_i_2_n_0 ;
  wire \active[14]_i_2_n_0 ;
  wire \active[14]_i_3_n_0 ;
  wire \active[14]_i_4_n_0 ;
  wire \active[15]_i_2_n_0 ;
  wire \active[15]_i_3_n_0 ;
  wire \active[15]_i_4_n_0 ;
  wire \active[15]_i_5_n_0 ;
  wire \active[16]_i_2_n_0 ;
  wire \active[16]_i_3_n_0 ;
  wire \active[16]_i_4_n_0 ;
  wire \active[17]_i_2_n_0 ;
  wire \active[17]_i_3_n_0 ;
  wire \active[17]_i_4_n_0 ;
  wire \active[18]_i_2_n_0 ;
  wire \active[18]_i_3_n_0 ;
  wire \active[18]_i_4_n_0 ;
  wire \active[19]_i_2_n_0 ;
  wire \active[19]_i_3_n_0 ;
  wire \active[19]_i_4_n_0 ;
  wire \active[1]_i_1_n_0 ;
  wire \active[1]_i_2_n_0 ;
  wire \active[1]_i_3_n_0 ;
  wire \active[20]_i_2_n_0 ;
  wire \active[20]_i_3_n_0 ;
  wire \active[20]_i_4_n_0 ;
  wire \active[21]_i_2_n_0 ;
  wire \active[21]_i_3_n_0 ;
  wire \active[22]_i_2_n_0 ;
  wire \active[22]_i_3_n_0 ;
  wire \active[22]_i_4_n_0 ;
  wire \active[23]_i_2_n_0 ;
  wire \active[23]_i_3_n_0 ;
  wire \active[23]_i_4_n_0 ;
  wire \active[24]_i_2_n_0 ;
  wire \active[24]_i_3_n_0 ;
  wire \active[24]_i_4_n_0 ;
  wire \active[25]_i_2_n_0 ;
  wire \active[25]_i_3_n_0 ;
  wire \active[25]_i_4_n_0 ;
  wire \active[25]_i_5_n_0 ;
  wire \active[26]_i_2_n_0 ;
  wire \active[26]_i_3_n_0 ;
  wire \active[26]_i_4_n_0 ;
  wire \active[26]_i_5_n_0 ;
  wire \active[27]_i_10_n_0 ;
  wire \active[27]_i_11_n_0 ;
  wire \active[27]_i_12_n_0 ;
  wire \active[27]_i_13_n_0 ;
  wire \active[27]_i_14_n_0 ;
  wire \active[27]_i_2_n_0 ;
  wire \active[27]_i_3_n_0 ;
  wire \active[27]_i_4_n_0 ;
  wire \active[27]_i_5_n_0 ;
  wire \active[27]_i_6_n_0 ;
  wire \active[27]_i_7_n_0 ;
  wire \active[27]_i_8_n_0 ;
  wire \active[27]_i_9_n_0 ;
  wire \active[28]_i_2_n_0 ;
  wire \active[28]_i_3_n_0 ;
  wire \active[29]_i_1_n_0 ;
  wire \active[29]_i_2_n_0 ;
  wire \active[29]_i_3_n_0 ;
  wire \active[2]_i_2_n_0 ;
  wire \active[3]_i_2_n_0 ;
  wire \active[3]_i_3_n_0 ;
  wire \active[4]_i_2_n_0 ;
  wire \active[5]_i_2_n_0 ;
  wire \active[6]_i_2_n_0 ;
  wire \active[7]_i_2_n_0 ;
  wire \active[8]_i_2_n_0 ;
  wire \active[9]_i_2_n_0 ;
  wire all_busy;
  wire all_busy_INST_0_i_1_n_0;
  wire all_busy_INST_0_i_2_n_0;
  wire all_busy_INST_0_i_3_n_0;
  wire all_busy_INST_0_i_4_n_0;
  wire all_busy_INST_0_i_5_n_0;
  wire \busy[0]_i_2_n_0 ;
  wire \busy[10]_i_1_n_0 ;
  wire \busy[10]_i_2_n_0 ;
  wire \busy[10]_i_3_n_0 ;
  wire \busy[10]_i_4_n_0 ;
  wire \busy[10]_i_5_n_0 ;
  wire \busy[10]_i_6_n_0 ;
  wire \busy[10]_i_7_n_0 ;
  wire \busy[11]_i_10_n_0 ;
  wire \busy[11]_i_11_n_0 ;
  wire \busy[11]_i_12_n_0 ;
  wire \busy[11]_i_13_n_0 ;
  wire \busy[11]_i_14_n_0 ;
  wire \busy[11]_i_15_n_0 ;
  wire \busy[11]_i_16_n_0 ;
  wire \busy[11]_i_17_n_0 ;
  wire \busy[11]_i_18_n_0 ;
  wire \busy[11]_i_19_n_0 ;
  wire \busy[11]_i_1_n_0 ;
  wire \busy[11]_i_20_n_0 ;
  wire \busy[11]_i_21_n_0 ;
  wire \busy[11]_i_2_n_0 ;
  wire \busy[11]_i_3_n_0 ;
  wire \busy[11]_i_4_n_0 ;
  wire \busy[11]_i_5_n_0 ;
  wire \busy[11]_i_6_n_0 ;
  wire \busy[11]_i_7_n_0 ;
  wire \busy[11]_i_8_n_0 ;
  wire \busy[11]_i_9_n_0 ;
  wire \busy[12]_i_10_n_0 ;
  wire \busy[12]_i_1_n_0 ;
  wire \busy[12]_i_2_n_0 ;
  wire \busy[12]_i_3_n_0 ;
  wire \busy[12]_i_4_n_0 ;
  wire \busy[12]_i_5_n_0 ;
  wire \busy[12]_i_6_n_0 ;
  wire \busy[12]_i_7_n_0 ;
  wire \busy[12]_i_8_n_0 ;
  wire \busy[12]_i_9_n_0 ;
  wire \busy[13]_i_1_n_0 ;
  wire \busy[13]_i_2_n_0 ;
  wire \busy[13]_i_3_n_0 ;
  wire \busy[13]_i_4_n_0 ;
  wire \busy[13]_i_5_n_0 ;
  wire \busy[13]_i_6_n_0 ;
  wire \busy[13]_i_7_n_0 ;
  wire \busy[13]_i_8_n_0 ;
  wire \busy[13]_i_9_n_0 ;
  wire \busy[14]_i_1_n_0 ;
  wire \busy[14]_i_2_n_0 ;
  wire \busy[14]_i_3_n_0 ;
  wire \busy[14]_i_4_n_0 ;
  wire \busy[14]_i_5_n_0 ;
  wire \busy[14]_i_6_n_0 ;
  wire \busy[14]_i_7_n_0 ;
  wire \busy[14]_i_8_n_0 ;
  wire \busy[14]_i_9_n_0 ;
  wire \busy[15]_i_10_n_0 ;
  wire \busy[15]_i_1_n_0 ;
  wire \busy[15]_i_2_n_0 ;
  wire \busy[15]_i_3_n_0 ;
  wire \busy[15]_i_4_n_0 ;
  wire \busy[15]_i_5_n_0 ;
  wire \busy[15]_i_6_n_0 ;
  wire \busy[15]_i_7_n_0 ;
  wire \busy[15]_i_8_n_0 ;
  wire \busy[15]_i_9_n_0 ;
  wire \busy[16]_i_10_n_0 ;
  wire \busy[16]_i_11_n_0 ;
  wire \busy[16]_i_1_n_0 ;
  wire \busy[16]_i_2_n_0 ;
  wire \busy[16]_i_3_n_0 ;
  wire \busy[16]_i_4_n_0 ;
  wire \busy[16]_i_5_n_0 ;
  wire \busy[16]_i_6_n_0 ;
  wire \busy[16]_i_7_n_0 ;
  wire \busy[16]_i_8_n_0 ;
  wire \busy[16]_i_9_n_0 ;
  wire \busy[17]_i_10_n_0 ;
  wire \busy[17]_i_1_n_0 ;
  wire \busy[17]_i_2_n_0 ;
  wire \busy[17]_i_3_n_0 ;
  wire \busy[17]_i_4_n_0 ;
  wire \busy[17]_i_5_n_0 ;
  wire \busy[17]_i_6_n_0 ;
  wire \busy[17]_i_7_n_0 ;
  wire \busy[17]_i_8_n_0 ;
  wire \busy[17]_i_9_n_0 ;
  wire \busy[18]_i_1_n_0 ;
  wire \busy[18]_i_2_n_0 ;
  wire \busy[18]_i_3_n_0 ;
  wire \busy[18]_i_4_n_0 ;
  wire \busy[18]_i_5_n_0 ;
  wire \busy[18]_i_6_n_0 ;
  wire \busy[18]_i_7_n_0 ;
  wire \busy[18]_i_8_n_0 ;
  wire \busy[19]_i_1_n_0 ;
  wire \busy[19]_i_2_n_0 ;
  wire \busy[19]_i_3_n_0 ;
  wire \busy[19]_i_4_n_0 ;
  wire \busy[19]_i_5_n_0 ;
  wire \busy[19]_i_6_n_0 ;
  wire \busy[19]_i_7_n_0 ;
  wire \busy[19]_i_8_n_0 ;
  wire \busy[19]_i_9_n_0 ;
  wire \busy[1]_i_1_n_0 ;
  wire \busy[1]_i_2_n_0 ;
  wire \busy[20]_i_10_n_0 ;
  wire \busy[20]_i_1_n_0 ;
  wire \busy[20]_i_2_n_0 ;
  wire \busy[20]_i_3_n_0 ;
  wire \busy[20]_i_4_n_0 ;
  wire \busy[20]_i_5_n_0 ;
  wire \busy[20]_i_6_n_0 ;
  wire \busy[20]_i_7_n_0 ;
  wire \busy[20]_i_8_n_0 ;
  wire \busy[20]_i_9_n_0 ;
  wire \busy[21]_i_1_n_0 ;
  wire \busy[21]_i_2_n_0 ;
  wire \busy[21]_i_3_n_0 ;
  wire \busy[21]_i_4_n_0 ;
  wire \busy[21]_i_5_n_0 ;
  wire \busy[21]_i_6_n_0 ;
  wire \busy[21]_i_7_n_0 ;
  wire \busy[22]_i_10_n_0 ;
  wire \busy[22]_i_11_n_0 ;
  wire \busy[22]_i_12_n_0 ;
  wire \busy[22]_i_1_n_0 ;
  wire \busy[22]_i_2_n_0 ;
  wire \busy[22]_i_3_n_0 ;
  wire \busy[22]_i_4_n_0 ;
  wire \busy[22]_i_5_n_0 ;
  wire \busy[22]_i_6_n_0 ;
  wire \busy[22]_i_7_n_0 ;
  wire \busy[22]_i_8_n_0 ;
  wire \busy[22]_i_9_n_0 ;
  wire \busy[23]_i_1_n_0 ;
  wire \busy[23]_i_2_n_0 ;
  wire \busy[23]_i_3_n_0 ;
  wire \busy[23]_i_4_n_0 ;
  wire \busy[23]_i_5_n_0 ;
  wire \busy[23]_i_6_n_0 ;
  wire \busy[23]_i_7_n_0 ;
  wire \busy[23]_i_8_n_0 ;
  wire \busy[23]_i_9_n_0 ;
  wire \busy[24]_i_10_n_0 ;
  wire \busy[24]_i_11_n_0 ;
  wire \busy[24]_i_1_n_0 ;
  wire \busy[24]_i_2_n_0 ;
  wire \busy[24]_i_3_n_0 ;
  wire \busy[24]_i_4_n_0 ;
  wire \busy[24]_i_5_n_0 ;
  wire \busy[24]_i_6_n_0 ;
  wire \busy[24]_i_7_n_0 ;
  wire \busy[24]_i_8_n_0 ;
  wire \busy[24]_i_9_n_0 ;
  wire \busy[25]_i_10_n_0 ;
  wire \busy[25]_i_11_n_0 ;
  wire \busy[25]_i_12_n_0 ;
  wire \busy[25]_i_13_n_0 ;
  wire \busy[25]_i_1_n_0 ;
  wire \busy[25]_i_2_n_0 ;
  wire \busy[25]_i_3_n_0 ;
  wire \busy[25]_i_4_n_0 ;
  wire \busy[25]_i_5_n_0 ;
  wire \busy[25]_i_6_n_0 ;
  wire \busy[25]_i_7_n_0 ;
  wire \busy[25]_i_8_n_0 ;
  wire \busy[25]_i_9_n_0 ;
  wire \busy[26]_i_10_n_0 ;
  wire \busy[26]_i_1_n_0 ;
  wire \busy[26]_i_2_n_0 ;
  wire \busy[26]_i_3_n_0 ;
  wire \busy[26]_i_4_n_0 ;
  wire \busy[26]_i_5_n_0 ;
  wire \busy[26]_i_6_n_0 ;
  wire \busy[26]_i_7_n_0 ;
  wire \busy[26]_i_8_n_0 ;
  wire \busy[26]_i_9_n_0 ;
  wire \busy[27]_i_10_n_0 ;
  wire \busy[27]_i_11_n_0 ;
  wire \busy[27]_i_12_n_0 ;
  wire \busy[27]_i_13_n_0 ;
  wire \busy[27]_i_14_n_0 ;
  wire \busy[27]_i_15_n_0 ;
  wire \busy[27]_i_1_n_0 ;
  wire \busy[27]_i_2_n_0 ;
  wire \busy[27]_i_3_n_0 ;
  wire \busy[27]_i_4_n_0 ;
  wire \busy[27]_i_5_n_0 ;
  wire \busy[27]_i_6_n_0 ;
  wire \busy[27]_i_7_n_0 ;
  wire \busy[27]_i_8_n_0 ;
  wire \busy[27]_i_9_n_0 ;
  wire \busy[28]_i_1_n_0 ;
  wire \busy[28]_i_2_n_0 ;
  wire \busy[28]_i_3_n_0 ;
  wire \busy[28]_i_4_n_0 ;
  wire \busy[28]_i_5_n_0 ;
  wire \busy[28]_i_6_n_0 ;
  wire \busy[29]_i_1_n_0 ;
  wire \busy[29]_i_2_n_0 ;
  wire \busy[29]_i_3_n_0 ;
  wire \busy[29]_i_4_n_0 ;
  wire \busy[29]_i_5_n_0 ;
  wire \busy[29]_i_6_n_0 ;
  wire \busy[29]_i_7_n_0 ;
  wire \busy[2]_i_1_n_0 ;
  wire \busy[2]_i_2_n_0 ;
  wire \busy[2]_i_3_n_0 ;
  wire \busy[3]_i_1_n_0 ;
  wire \busy[3]_i_2_n_0 ;
  wire \busy[3]_i_3_n_0 ;
  wire \busy[4]_i_1_n_0 ;
  wire \busy[4]_i_2_n_0 ;
  wire \busy[4]_i_3_n_0 ;
  wire \busy[5]_i_1_n_0 ;
  wire \busy[5]_i_2_n_0 ;
  wire \busy[5]_i_3_n_0 ;
  wire \busy[6]_i_1_n_0 ;
  wire \busy[6]_i_2_n_0 ;
  wire \busy[6]_i_3_n_0 ;
  wire \busy[7]_i_1_n_0 ;
  wire \busy[7]_i_2_n_0 ;
  wire \busy[7]_i_3_n_0 ;
  wire \busy[8]_i_1_n_0 ;
  wire \busy[8]_i_2_n_0 ;
  wire \busy[9]_i_1_n_0 ;
  wire \busy[9]_i_2_n_0 ;
  wire \c_active[0] ;
  wire \c_active[14] ;
  wire \c_active[15] ;
  wire \c_active[16] ;
  wire \c_active[17] ;
  wire \c_active[18] ;
  wire \c_active[19] ;
  wire \c_active[20] ;
  wire \c_active[21] ;
  wire \c_active[22] ;
  wire \c_active[23] ;
  wire \c_active[24] ;
  wire \c_active[25] ;
  wire \c_active[26] ;
  wire \c_active[27] ;
  wire \c_active[28] ;
  wire \c_active[2] ;
  wire \c_active[3] ;
  wire \c_active[4] ;
  wire \c_active[5] ;
  wire \c_active[6] ;
  wire \c_active[7] ;
  wire \c_active[8] ;
  wire \c_active[9] ;
  wire c_busy;
  wire \c_grown[15] ;
  wire \c_grown[18] ;
  wire \c_grown[24] ;
  wire \c_grown[27] ;
  wire \c_grown[28] ;
  wire [1:0]c_growth;
  wire [1:1]c_ptr;
  wire cid;
  wire \cid[0][0]_i_1_n_0 ;
  wire \cid[0][1]_i_1_n_0 ;
  wire \cid[0][2]_i_1_n_0 ;
  wire \cid[0][3]_i_1_n_0 ;
  wire \cid[0][4]_i_1_n_0 ;
  wire \cid[0][5]_i_2_n_0 ;
  wire \cid[0][5]_i_3_n_0 ;
  wire \cid[0][5]_i_4_n_0 ;
  wire \cid[0][5]_i_5_n_0 ;
  wire \cid[0][5]_i_6_n_0 ;
  wire \cid[0][5]_i_7_n_0 ;
  wire \cid[10][0]_i_1_n_0 ;
  wire \cid[10][0]_i_2_n_0 ;
  wire \cid[10][0]_i_3_n_0 ;
  wire \cid[10][0]_i_4_n_0 ;
  wire \cid[10][1]_i_1_n_0 ;
  wire \cid[10][1]_i_2_n_0 ;
  wire \cid[10][1]_i_3_n_0 ;
  wire \cid[10][1]_i_4_n_0 ;
  wire \cid[10][2]_i_1_n_0 ;
  wire \cid[10][2]_i_2_n_0 ;
  wire \cid[10][2]_i_3_n_0 ;
  wire \cid[10][2]_i_4_n_0 ;
  wire \cid[10][3]_i_1_n_0 ;
  wire \cid[10][3]_i_2_n_0 ;
  wire \cid[10][3]_i_3_n_0 ;
  wire \cid[10][3]_i_4_n_0 ;
  wire \cid[10][4]_i_1_n_0 ;
  wire \cid[10][4]_i_2_n_0 ;
  wire \cid[10][4]_i_3_n_0 ;
  wire \cid[10][4]_i_4_n_0 ;
  wire \cid[10][4]_i_5_n_0 ;
  wire \cid[10][4]_i_6_n_0 ;
  wire \cid[10][4]_i_7_n_0 ;
  wire \cid[10][4]_i_8_n_0 ;
  wire \cid[10][5]_i_1_n_0 ;
  wire \cid[10][5]_i_2_n_0 ;
  wire \cid[10][5]_i_3_n_0 ;
  wire \cid[10][5]_i_4_n_0 ;
  wire \cid[10][5]_i_5_n_0 ;
  wire \cid[10][5]_i_6_n_0 ;
  wire \cid[10][5]_i_7_n_0 ;
  wire \cid[11][0]_i_1_n_0 ;
  wire \cid[11][0]_i_2_n_0 ;
  wire \cid[11][0]_i_3_n_0 ;
  wire \cid[11][0]_i_4_n_0 ;
  wire \cid[11][1]_i_1_n_0 ;
  wire \cid[11][1]_i_2_n_0 ;
  wire \cid[11][1]_i_3_n_0 ;
  wire \cid[11][1]_i_4_n_0 ;
  wire \cid[11][2]_i_1_n_0 ;
  wire \cid[11][2]_i_2_n_0 ;
  wire \cid[11][2]_i_3_n_0 ;
  wire \cid[11][2]_i_4_n_0 ;
  wire \cid[11][3]_i_1_n_0 ;
  wire \cid[11][3]_i_2_n_0 ;
  wire \cid[11][3]_i_3_n_0 ;
  wire \cid[11][3]_i_4_n_0 ;
  wire \cid[11][4]_i_10_n_0 ;
  wire \cid[11][4]_i_11_n_0 ;
  wire \cid[11][4]_i_12_n_0 ;
  wire \cid[11][4]_i_13_n_0 ;
  wire \cid[11][4]_i_1_n_0 ;
  wire \cid[11][4]_i_2_n_0 ;
  wire \cid[11][4]_i_3_n_0 ;
  wire \cid[11][4]_i_4_n_0 ;
  wire \cid[11][4]_i_5_n_0 ;
  wire \cid[11][4]_i_6_n_0 ;
  wire \cid[11][4]_i_7_n_0 ;
  wire \cid[11][4]_i_8_n_0 ;
  wire \cid[11][4]_i_9_n_0 ;
  wire \cid[11][5]_i_1_n_0 ;
  wire \cid[11][5]_i_2_n_0 ;
  wire \cid[11][5]_i_3_n_0 ;
  wire \cid[11][5]_i_4_n_0 ;
  wire \cid[11][5]_i_5_n_0 ;
  wire \cid[11][5]_i_6_n_0 ;
  wire \cid[12][0]_i_1_n_0 ;
  wire \cid[12][0]_i_2_n_0 ;
  wire \cid[12][0]_i_3_n_0 ;
  wire \cid[12][0]_i_4_n_0 ;
  wire \cid[12][1]_i_1_n_0 ;
  wire \cid[12][1]_i_2_n_0 ;
  wire \cid[12][1]_i_3_n_0 ;
  wire \cid[12][1]_i_4_n_0 ;
  wire \cid[12][2]_i_1_n_0 ;
  wire \cid[12][2]_i_2_n_0 ;
  wire \cid[12][2]_i_3_n_0 ;
  wire \cid[12][2]_i_4_n_0 ;
  wire \cid[12][3]_i_1_n_0 ;
  wire \cid[12][3]_i_2_n_0 ;
  wire \cid[12][3]_i_3_n_0 ;
  wire \cid[12][3]_i_4_n_0 ;
  wire \cid[12][4]_i_10_n_0 ;
  wire \cid[12][4]_i_11_n_0 ;
  wire \cid[12][4]_i_12_n_0 ;
  wire \cid[12][4]_i_13_n_0 ;
  wire \cid[12][4]_i_1_n_0 ;
  wire \cid[12][4]_i_2_n_0 ;
  wire \cid[12][4]_i_3_n_0 ;
  wire \cid[12][4]_i_4_n_0 ;
  wire \cid[12][4]_i_5_n_0 ;
  wire \cid[12][4]_i_6_n_0 ;
  wire \cid[12][4]_i_7_n_0 ;
  wire \cid[12][4]_i_8_n_0 ;
  wire \cid[12][4]_i_9_n_0 ;
  wire \cid[12][5]_i_1_n_0 ;
  wire \cid[12][5]_i_2_n_0 ;
  wire \cid[12][5]_i_3_n_0 ;
  wire \cid[12][5]_i_4_n_0 ;
  wire \cid[12][5]_i_5_n_0 ;
  wire \cid[12][5]_i_6_n_0 ;
  wire \cid[13][0]_i_1_n_0 ;
  wire \cid[13][0]_i_2_n_0 ;
  wire \cid[13][0]_i_3_n_0 ;
  wire \cid[13][0]_i_4_n_0 ;
  wire \cid[13][1]_i_1_n_0 ;
  wire \cid[13][1]_i_2_n_0 ;
  wire \cid[13][1]_i_3_n_0 ;
  wire \cid[13][1]_i_4_n_0 ;
  wire \cid[13][2]_i_1_n_0 ;
  wire \cid[13][2]_i_2_n_0 ;
  wire \cid[13][2]_i_3_n_0 ;
  wire \cid[13][2]_i_4_n_0 ;
  wire \cid[13][3]_i_1_n_0 ;
  wire \cid[13][3]_i_2_n_0 ;
  wire \cid[13][3]_i_3_n_0 ;
  wire \cid[13][3]_i_4_n_0 ;
  wire \cid[13][4]_i_10_n_0 ;
  wire \cid[13][4]_i_11_n_0 ;
  wire \cid[13][4]_i_12_n_0 ;
  wire \cid[13][4]_i_13_n_0 ;
  wire \cid[13][4]_i_14_n_0 ;
  wire \cid[13][4]_i_15_n_0 ;
  wire \cid[13][4]_i_16_n_0 ;
  wire \cid[13][4]_i_1_n_0 ;
  wire \cid[13][4]_i_2_n_0 ;
  wire \cid[13][4]_i_3_n_0 ;
  wire \cid[13][4]_i_4_n_0 ;
  wire \cid[13][4]_i_5_n_0 ;
  wire \cid[13][4]_i_6_n_0 ;
  wire \cid[13][4]_i_7_n_0 ;
  wire \cid[13][4]_i_8_n_0 ;
  wire \cid[13][4]_i_9_n_0 ;
  wire \cid[13][5]_i_1_n_0 ;
  wire \cid[13][5]_i_2_n_0 ;
  wire \cid[13][5]_i_3_n_0 ;
  wire \cid[13][5]_i_4_n_0 ;
  wire \cid[13][5]_i_5_n_0 ;
  wire \cid[13][5]_i_6_n_0 ;
  wire \cid[13][5]_i_7_n_0 ;
  wire \cid[14][0]_i_1_n_0 ;
  wire \cid[14][0]_i_2_n_0 ;
  wire \cid[14][0]_i_3_n_0 ;
  wire \cid[14][0]_i_4_n_0 ;
  wire \cid[14][0]_i_5_n_0 ;
  wire \cid[14][1]_i_1_n_0 ;
  wire \cid[14][1]_i_2_n_0 ;
  wire \cid[14][1]_i_3_n_0 ;
  wire \cid[14][1]_i_4_n_0 ;
  wire \cid[14][1]_i_5_n_0 ;
  wire \cid[14][1]_i_6_n_0 ;
  wire \cid[14][2]_i_1_n_0 ;
  wire \cid[14][2]_i_2_n_0 ;
  wire \cid[14][2]_i_3_n_0 ;
  wire \cid[14][2]_i_4_n_0 ;
  wire \cid[14][2]_i_5_n_0 ;
  wire \cid[14][2]_i_6_n_0 ;
  wire \cid[14][3]_i_1_n_0 ;
  wire \cid[14][3]_i_2_n_0 ;
  wire \cid[14][3]_i_3_n_0 ;
  wire \cid[14][3]_i_4_n_0 ;
  wire \cid[14][3]_i_5_n_0 ;
  wire \cid[14][3]_i_6_n_0 ;
  wire \cid[14][3]_i_7_n_0 ;
  wire \cid[14][4]_i_10_n_0 ;
  wire \cid[14][4]_i_11_n_0 ;
  wire \cid[14][4]_i_12_n_0 ;
  wire \cid[14][4]_i_13_n_0 ;
  wire \cid[14][4]_i_14_n_0 ;
  wire \cid[14][4]_i_15_n_0 ;
  wire \cid[14][4]_i_16_n_0 ;
  wire \cid[14][4]_i_17_n_0 ;
  wire \cid[14][4]_i_18_n_0 ;
  wire \cid[14][4]_i_19_n_0 ;
  wire \cid[14][4]_i_1_n_0 ;
  wire \cid[14][4]_i_20_n_0 ;
  wire \cid[14][4]_i_21_n_0 ;
  wire \cid[14][4]_i_22_n_0 ;
  wire \cid[14][4]_i_23_n_0 ;
  wire \cid[14][4]_i_24_n_0 ;
  wire \cid[14][4]_i_25_n_0 ;
  wire \cid[14][4]_i_26_n_0 ;
  wire \cid[14][4]_i_2_n_0 ;
  wire \cid[14][4]_i_3_n_0 ;
  wire \cid[14][4]_i_4_n_0 ;
  wire \cid[14][4]_i_5_n_0 ;
  wire \cid[14][4]_i_6_n_0 ;
  wire \cid[14][4]_i_7_n_0 ;
  wire \cid[14][4]_i_8_n_0 ;
  wire \cid[14][4]_i_9_n_0 ;
  wire \cid[14][5]_i_10_n_0 ;
  wire \cid[14][5]_i_11_n_0 ;
  wire \cid[14][5]_i_12_n_0 ;
  wire \cid[14][5]_i_1_n_0 ;
  wire \cid[14][5]_i_2_n_0 ;
  wire \cid[14][5]_i_3_n_0 ;
  wire \cid[14][5]_i_4_n_0 ;
  wire \cid[14][5]_i_5_n_0 ;
  wire \cid[14][5]_i_6_n_0 ;
  wire \cid[14][5]_i_7_n_0 ;
  wire \cid[14][5]_i_8_n_0 ;
  wire \cid[14][5]_i_9_n_0 ;
  wire \cid[15][0]_i_1_n_0 ;
  wire \cid[15][0]_i_2_n_0 ;
  wire \cid[15][0]_i_3_n_0 ;
  wire \cid[15][0]_i_4_n_0 ;
  wire \cid[15][0]_i_5_n_0 ;
  wire \cid[15][1]_i_1_n_0 ;
  wire \cid[15][1]_i_2_n_0 ;
  wire \cid[15][1]_i_3_n_0 ;
  wire \cid[15][1]_i_4_n_0 ;
  wire \cid[15][1]_i_5_n_0 ;
  wire \cid[15][1]_i_6_n_0 ;
  wire \cid[15][2]_i_1_n_0 ;
  wire \cid[15][2]_i_2_n_0 ;
  wire \cid[15][2]_i_3_n_0 ;
  wire \cid[15][2]_i_4_n_0 ;
  wire \cid[15][2]_i_5_n_0 ;
  wire \cid[15][2]_i_6_n_0 ;
  wire \cid[15][3]_i_1_n_0 ;
  wire \cid[15][3]_i_2_n_0 ;
  wire \cid[15][3]_i_3_n_0 ;
  wire \cid[15][3]_i_4_n_0 ;
  wire \cid[15][3]_i_5_n_0 ;
  wire \cid[15][3]_i_6_n_0 ;
  wire \cid[15][3]_i_7_n_0 ;
  wire \cid[15][4]_i_10_n_0 ;
  wire \cid[15][4]_i_11_n_0 ;
  wire \cid[15][4]_i_12_n_0 ;
  wire \cid[15][4]_i_13_n_0 ;
  wire \cid[15][4]_i_14_n_0 ;
  wire \cid[15][4]_i_15_n_0 ;
  wire \cid[15][4]_i_16_n_0 ;
  wire \cid[15][4]_i_17_n_0 ;
  wire \cid[15][4]_i_18_n_0 ;
  wire \cid[15][4]_i_19_n_0 ;
  wire \cid[15][4]_i_1_n_0 ;
  wire \cid[15][4]_i_20_n_0 ;
  wire \cid[15][4]_i_21_n_0 ;
  wire \cid[15][4]_i_22_n_0 ;
  wire \cid[15][4]_i_23_n_0 ;
  wire \cid[15][4]_i_24_n_0 ;
  wire \cid[15][4]_i_25_n_0 ;
  wire \cid[15][4]_i_26_n_0 ;
  wire \cid[15][4]_i_27_n_0 ;
  wire \cid[15][4]_i_28_n_0 ;
  wire \cid[15][4]_i_29_n_0 ;
  wire \cid[15][4]_i_2_n_0 ;
  wire \cid[15][4]_i_3_n_0 ;
  wire \cid[15][4]_i_4_n_0 ;
  wire \cid[15][4]_i_5_n_0 ;
  wire \cid[15][4]_i_6_n_0 ;
  wire \cid[15][4]_i_7_n_0 ;
  wire \cid[15][4]_i_8_n_0 ;
  wire \cid[15][4]_i_9_n_0 ;
  wire \cid[15][5]_i_1_n_0 ;
  wire \cid[15][5]_i_2_n_0 ;
  wire \cid[15][5]_i_3_n_0 ;
  wire \cid[15][5]_i_4_n_0 ;
  wire \cid[15][5]_i_5_n_0 ;
  wire \cid[15][5]_i_6_n_0 ;
  wire \cid[15][5]_i_7_n_0 ;
  wire \cid[15][5]_i_8_n_0 ;
  wire \cid[15][5]_i_9_n_0 ;
  wire \cid[16][0]_i_1_n_0 ;
  wire \cid[16][0]_i_2_n_0 ;
  wire \cid[16][0]_i_3_n_0 ;
  wire \cid[16][0]_i_4_n_0 ;
  wire \cid[16][0]_i_5_n_0 ;
  wire \cid[16][0]_i_6_n_0 ;
  wire \cid[16][1]_i_1_n_0 ;
  wire \cid[16][1]_i_2_n_0 ;
  wire \cid[16][1]_i_3_n_0 ;
  wire \cid[16][1]_i_4_n_0 ;
  wire \cid[16][1]_i_5_n_0 ;
  wire \cid[16][1]_i_6_n_0 ;
  wire \cid[16][1]_i_7_n_0 ;
  wire \cid[16][2]_i_1_n_0 ;
  wire \cid[16][2]_i_2_n_0 ;
  wire \cid[16][2]_i_3_n_0 ;
  wire \cid[16][2]_i_4_n_0 ;
  wire \cid[16][2]_i_5_n_0 ;
  wire \cid[16][2]_i_6_n_0 ;
  wire \cid[16][2]_i_7_n_0 ;
  wire \cid[16][3]_i_10_n_0 ;
  wire \cid[16][3]_i_11_n_0 ;
  wire \cid[16][3]_i_12_n_0 ;
  wire \cid[16][3]_i_13_n_0 ;
  wire \cid[16][3]_i_14_n_0 ;
  wire \cid[16][3]_i_15_n_0 ;
  wire \cid[16][3]_i_16_n_0 ;
  wire \cid[16][3]_i_17_n_0 ;
  wire \cid[16][3]_i_18_n_0 ;
  wire \cid[16][3]_i_19_n_0 ;
  wire \cid[16][3]_i_1_n_0 ;
  wire \cid[16][3]_i_20_n_0 ;
  wire \cid[16][3]_i_21_n_0 ;
  wire \cid[16][3]_i_22_n_0 ;
  wire \cid[16][3]_i_2_n_0 ;
  wire \cid[16][3]_i_3_n_0 ;
  wire \cid[16][3]_i_4_n_0 ;
  wire \cid[16][3]_i_5_n_0 ;
  wire \cid[16][3]_i_6_n_0 ;
  wire \cid[16][3]_i_7_n_0 ;
  wire \cid[16][3]_i_8_n_0 ;
  wire \cid[16][3]_i_9_n_0 ;
  wire \cid[16][4]_i_10_n_0 ;
  wire \cid[16][4]_i_11_n_0 ;
  wire \cid[16][4]_i_12_n_0 ;
  wire \cid[16][4]_i_13_n_0 ;
  wire \cid[16][4]_i_1_n_0 ;
  wire \cid[16][4]_i_2_n_0 ;
  wire \cid[16][4]_i_3_n_0 ;
  wire \cid[16][4]_i_4_n_0 ;
  wire \cid[16][4]_i_5_n_0 ;
  wire \cid[16][4]_i_6_n_0 ;
  wire \cid[16][4]_i_7_n_0 ;
  wire \cid[16][4]_i_8_n_0 ;
  wire \cid[16][4]_i_9_n_0 ;
  wire \cid[16][5]_i_10_n_0 ;
  wire \cid[16][5]_i_11_n_0 ;
  wire \cid[16][5]_i_12_n_0 ;
  wire \cid[16][5]_i_1_n_0 ;
  wire \cid[16][5]_i_2_n_0 ;
  wire \cid[16][5]_i_3_n_0 ;
  wire \cid[16][5]_i_4_n_0 ;
  wire \cid[16][5]_i_5_n_0 ;
  wire \cid[16][5]_i_6_n_0 ;
  wire \cid[16][5]_i_7_n_0 ;
  wire \cid[16][5]_i_8_n_0 ;
  wire \cid[16][5]_i_9_n_0 ;
  wire \cid[17][0]_i_1_n_0 ;
  wire \cid[17][0]_i_2_n_0 ;
  wire \cid[17][0]_i_3_n_0 ;
  wire \cid[17][0]_i_4_n_0 ;
  wire \cid[17][0]_i_5_n_0 ;
  wire \cid[17][1]_i_1_n_0 ;
  wire \cid[17][1]_i_2_n_0 ;
  wire \cid[17][1]_i_3_n_0 ;
  wire \cid[17][1]_i_4_n_0 ;
  wire \cid[17][1]_i_5_n_0 ;
  wire \cid[17][1]_i_6_n_0 ;
  wire \cid[17][2]_i_1_n_0 ;
  wire \cid[17][2]_i_2_n_0 ;
  wire \cid[17][2]_i_3_n_0 ;
  wire \cid[17][2]_i_4_n_0 ;
  wire \cid[17][2]_i_5_n_0 ;
  wire \cid[17][2]_i_6_n_0 ;
  wire \cid[17][3]_i_10_n_0 ;
  wire \cid[17][3]_i_11_n_0 ;
  wire \cid[17][3]_i_12_n_0 ;
  wire \cid[17][3]_i_13_n_0 ;
  wire \cid[17][3]_i_14_n_0 ;
  wire \cid[17][3]_i_15_n_0 ;
  wire \cid[17][3]_i_16_n_0 ;
  wire \cid[17][3]_i_17_n_0 ;
  wire \cid[17][3]_i_18_n_0 ;
  wire \cid[17][3]_i_19_n_0 ;
  wire \cid[17][3]_i_1_n_0 ;
  wire \cid[17][3]_i_20_n_0 ;
  wire \cid[17][3]_i_21_n_0 ;
  wire \cid[17][3]_i_22_n_0 ;
  wire \cid[17][3]_i_23_n_0 ;
  wire \cid[17][3]_i_2_n_0 ;
  wire \cid[17][3]_i_3_n_0 ;
  wire \cid[17][3]_i_4_n_0 ;
  wire \cid[17][3]_i_5_n_0 ;
  wire \cid[17][3]_i_6_n_0 ;
  wire \cid[17][3]_i_7_n_0 ;
  wire \cid[17][3]_i_8_n_0 ;
  wire \cid[17][3]_i_9_n_0 ;
  wire \cid[17][4]_i_10_n_0 ;
  wire \cid[17][4]_i_11_n_0 ;
  wire \cid[17][4]_i_12_n_0 ;
  wire \cid[17][4]_i_1_n_0 ;
  wire \cid[17][4]_i_2_n_0 ;
  wire \cid[17][4]_i_3_n_0 ;
  wire \cid[17][4]_i_4_n_0 ;
  wire \cid[17][4]_i_5_n_0 ;
  wire \cid[17][4]_i_6_n_0 ;
  wire \cid[17][4]_i_7_n_0 ;
  wire \cid[17][4]_i_8_n_0 ;
  wire \cid[17][4]_i_9_n_0 ;
  wire \cid[17][5]_i_10_n_0 ;
  wire \cid[17][5]_i_11_n_0 ;
  wire \cid[17][5]_i_12_n_0 ;
  wire \cid[17][5]_i_1_n_0 ;
  wire \cid[17][5]_i_2_n_0 ;
  wire \cid[17][5]_i_3_n_0 ;
  wire \cid[17][5]_i_4_n_0 ;
  wire \cid[17][5]_i_5_n_0 ;
  wire \cid[17][5]_i_6_n_0 ;
  wire \cid[17][5]_i_7_n_0 ;
  wire \cid[17][5]_i_8_n_0 ;
  wire \cid[17][5]_i_9_n_0 ;
  wire \cid[18][0]_i_1_n_0 ;
  wire \cid[18][0]_i_2_n_0 ;
  wire \cid[18][0]_i_3_n_0 ;
  wire \cid[18][0]_i_4_n_0 ;
  wire \cid[18][0]_i_5_n_0 ;
  wire \cid[18][1]_i_1_n_0 ;
  wire \cid[18][1]_i_2_n_0 ;
  wire \cid[18][1]_i_3_n_0 ;
  wire \cid[18][1]_i_4_n_0 ;
  wire \cid[18][1]_i_5_n_0 ;
  wire \cid[18][1]_i_6_n_0 ;
  wire \cid[18][2]_i_1_n_0 ;
  wire \cid[18][2]_i_2_n_0 ;
  wire \cid[18][2]_i_3_n_0 ;
  wire \cid[18][2]_i_4_n_0 ;
  wire \cid[18][2]_i_5_n_0 ;
  wire \cid[18][2]_i_6_n_0 ;
  wire \cid[18][3]_i_10_n_0 ;
  wire \cid[18][3]_i_11_n_0 ;
  wire \cid[18][3]_i_12_n_0 ;
  wire \cid[18][3]_i_13_n_0 ;
  wire \cid[18][3]_i_14_n_0 ;
  wire \cid[18][3]_i_15_n_0 ;
  wire \cid[18][3]_i_16_n_0 ;
  wire \cid[18][3]_i_17_n_0 ;
  wire \cid[18][3]_i_18_n_0 ;
  wire \cid[18][3]_i_19_n_0 ;
  wire \cid[18][3]_i_1_n_0 ;
  wire \cid[18][3]_i_20_n_0 ;
  wire \cid[18][3]_i_21_n_0 ;
  wire \cid[18][3]_i_2_n_0 ;
  wire \cid[18][3]_i_3_n_0 ;
  wire \cid[18][3]_i_4_n_0 ;
  wire \cid[18][3]_i_5_n_0 ;
  wire \cid[18][3]_i_6_n_0 ;
  wire \cid[18][3]_i_7_n_0 ;
  wire \cid[18][3]_i_8_n_0 ;
  wire \cid[18][3]_i_9_n_0 ;
  wire \cid[18][4]_i_10_n_0 ;
  wire \cid[18][4]_i_11_n_0 ;
  wire \cid[18][4]_i_12_n_0 ;
  wire \cid[18][4]_i_1_n_0 ;
  wire \cid[18][4]_i_2_n_0 ;
  wire \cid[18][4]_i_3_n_0 ;
  wire \cid[18][4]_i_4_n_0 ;
  wire \cid[18][4]_i_5_n_0 ;
  wire \cid[18][4]_i_6_n_0 ;
  wire \cid[18][4]_i_7_n_0 ;
  wire \cid[18][4]_i_8_n_0 ;
  wire \cid[18][4]_i_9_n_0 ;
  wire \cid[18][5]_i_10_n_0 ;
  wire \cid[18][5]_i_11_n_0 ;
  wire \cid[18][5]_i_12_n_0 ;
  wire \cid[18][5]_i_13_n_0 ;
  wire \cid[18][5]_i_1_n_0 ;
  wire \cid[18][5]_i_2_n_0 ;
  wire \cid[18][5]_i_3_n_0 ;
  wire \cid[18][5]_i_4_n_0 ;
  wire \cid[18][5]_i_5_n_0 ;
  wire \cid[18][5]_i_6_n_0 ;
  wire \cid[18][5]_i_7_n_0 ;
  wire \cid[18][5]_i_8_n_0 ;
  wire \cid[18][5]_i_9_n_0 ;
  wire \cid[19][0]_i_1_n_0 ;
  wire \cid[19][0]_i_2_n_0 ;
  wire \cid[19][0]_i_3_n_0 ;
  wire \cid[19][0]_i_4_n_0 ;
  wire \cid[19][0]_i_5_n_0 ;
  wire \cid[19][0]_i_6_n_0 ;
  wire \cid[19][1]_i_1_n_0 ;
  wire \cid[19][1]_i_2_n_0 ;
  wire \cid[19][1]_i_3_n_0 ;
  wire \cid[19][1]_i_4_n_0 ;
  wire \cid[19][1]_i_5_n_0 ;
  wire \cid[19][1]_i_6_n_0 ;
  wire \cid[19][1]_i_7_n_0 ;
  wire \cid[19][2]_i_1_n_0 ;
  wire \cid[19][2]_i_2_n_0 ;
  wire \cid[19][2]_i_3_n_0 ;
  wire \cid[19][2]_i_4_n_0 ;
  wire \cid[19][2]_i_5_n_0 ;
  wire \cid[19][2]_i_6_n_0 ;
  wire \cid[19][2]_i_7_n_0 ;
  wire \cid[19][3]_i_10_n_0 ;
  wire \cid[19][3]_i_11_n_0 ;
  wire \cid[19][3]_i_12_n_0 ;
  wire \cid[19][3]_i_13_n_0 ;
  wire \cid[19][3]_i_14_n_0 ;
  wire \cid[19][3]_i_15_n_0 ;
  wire \cid[19][3]_i_16_n_0 ;
  wire \cid[19][3]_i_17_n_0 ;
  wire \cid[19][3]_i_18_n_0 ;
  wire \cid[19][3]_i_19_n_0 ;
  wire \cid[19][3]_i_1_n_0 ;
  wire \cid[19][3]_i_20_n_0 ;
  wire \cid[19][3]_i_21_n_0 ;
  wire \cid[19][3]_i_22_n_0 ;
  wire \cid[19][3]_i_23_n_0 ;
  wire \cid[19][3]_i_24_n_0 ;
  wire \cid[19][3]_i_25_n_0 ;
  wire \cid[19][3]_i_26_n_0 ;
  wire \cid[19][3]_i_27_n_0 ;
  wire \cid[19][3]_i_2_n_0 ;
  wire \cid[19][3]_i_3_n_0 ;
  wire \cid[19][3]_i_4_n_0 ;
  wire \cid[19][3]_i_5_n_0 ;
  wire \cid[19][3]_i_6_n_0 ;
  wire \cid[19][3]_i_7_n_0 ;
  wire \cid[19][3]_i_8_n_0 ;
  wire \cid[19][3]_i_9_n_0 ;
  wire \cid[19][4]_i_10_n_0 ;
  wire \cid[19][4]_i_11_n_0 ;
  wire \cid[19][4]_i_1_n_0 ;
  wire \cid[19][4]_i_2_n_0 ;
  wire \cid[19][4]_i_3_n_0 ;
  wire \cid[19][4]_i_4_n_0 ;
  wire \cid[19][4]_i_5_n_0 ;
  wire \cid[19][4]_i_6_n_0 ;
  wire \cid[19][4]_i_7_n_0 ;
  wire \cid[19][4]_i_8_n_0 ;
  wire \cid[19][4]_i_9_n_0 ;
  wire \cid[19][5]_i_10_n_0 ;
  wire \cid[19][5]_i_1_n_0 ;
  wire \cid[19][5]_i_2_n_0 ;
  wire \cid[19][5]_i_3_n_0 ;
  wire \cid[19][5]_i_4_n_0 ;
  wire \cid[19][5]_i_5_n_0 ;
  wire \cid[19][5]_i_6_n_0 ;
  wire \cid[19][5]_i_7_n_0 ;
  wire \cid[19][5]_i_8_n_0 ;
  wire \cid[19][5]_i_9_n_0 ;
  wire \cid[1][0]_i_1_n_0 ;
  wire \cid[1][1]_i_1_n_0 ;
  wire \cid[1][2]_i_1_n_0 ;
  wire \cid[1][3]_i_1_n_0 ;
  wire \cid[1][4]_i_1_n_0 ;
  wire \cid[1][5]_i_1_n_0 ;
  wire \cid[1][5]_i_2_n_0 ;
  wire \cid[1][5]_i_3_n_0 ;
  wire \cid[1][5]_i_4_n_0 ;
  wire \cid[1][5]_i_5_n_0 ;
  wire \cid[1][5]_i_6_n_0 ;
  wire \cid[20][0]_i_1_n_0 ;
  wire \cid[20][0]_i_2_n_0 ;
  wire \cid[20][0]_i_3_n_0 ;
  wire \cid[20][0]_i_4_n_0 ;
  wire \cid[20][0]_i_5_n_0 ;
  wire \cid[20][1]_i_1_n_0 ;
  wire \cid[20][1]_i_2_n_0 ;
  wire \cid[20][1]_i_3_n_0 ;
  wire \cid[20][1]_i_4_n_0 ;
  wire \cid[20][1]_i_5_n_0 ;
  wire \cid[20][1]_i_6_n_0 ;
  wire \cid[20][2]_i_1_n_0 ;
  wire \cid[20][2]_i_2_n_0 ;
  wire \cid[20][2]_i_3_n_0 ;
  wire \cid[20][2]_i_4_n_0 ;
  wire \cid[20][2]_i_5_n_0 ;
  wire \cid[20][2]_i_6_n_0 ;
  wire \cid[20][3]_i_10_n_0 ;
  wire \cid[20][3]_i_11_n_0 ;
  wire \cid[20][3]_i_12_n_0 ;
  wire \cid[20][3]_i_13_n_0 ;
  wire \cid[20][3]_i_14_n_0 ;
  wire \cid[20][3]_i_15_n_0 ;
  wire \cid[20][3]_i_16_n_0 ;
  wire \cid[20][3]_i_17_n_0 ;
  wire \cid[20][3]_i_18_n_0 ;
  wire \cid[20][3]_i_19_n_0 ;
  wire \cid[20][3]_i_1_n_0 ;
  wire \cid[20][3]_i_20_n_0 ;
  wire \cid[20][3]_i_21_n_0 ;
  wire \cid[20][3]_i_22_n_0 ;
  wire \cid[20][3]_i_23_n_0 ;
  wire \cid[20][3]_i_24_n_0 ;
  wire \cid[20][3]_i_25_n_0 ;
  wire \cid[20][3]_i_2_n_0 ;
  wire \cid[20][3]_i_3_n_0 ;
  wire \cid[20][3]_i_4_n_0 ;
  wire \cid[20][3]_i_5_n_0 ;
  wire \cid[20][3]_i_6_n_0 ;
  wire \cid[20][3]_i_7_n_0 ;
  wire \cid[20][3]_i_8_n_0 ;
  wire \cid[20][3]_i_9_n_0 ;
  wire \cid[20][4]_i_10_n_0 ;
  wire \cid[20][4]_i_11_n_0 ;
  wire \cid[20][4]_i_12_n_0 ;
  wire \cid[20][4]_i_1_n_0 ;
  wire \cid[20][4]_i_2_n_0 ;
  wire \cid[20][4]_i_3_n_0 ;
  wire \cid[20][4]_i_4_n_0 ;
  wire \cid[20][4]_i_5_n_0 ;
  wire \cid[20][4]_i_6_n_0 ;
  wire \cid[20][4]_i_7_n_0 ;
  wire \cid[20][4]_i_8_n_0 ;
  wire \cid[20][4]_i_9_n_0 ;
  wire \cid[20][5]_i_1_n_0 ;
  wire \cid[20][5]_i_2_n_0 ;
  wire \cid[20][5]_i_3_n_0 ;
  wire \cid[20][5]_i_4_n_0 ;
  wire \cid[20][5]_i_5_n_0 ;
  wire \cid[20][5]_i_6_n_0 ;
  wire \cid[20][5]_i_7_n_0 ;
  wire \cid[20][5]_i_8_n_0 ;
  wire \cid[20][5]_i_9_n_0 ;
  wire \cid[21][0]_i_1_n_0 ;
  wire \cid[21][0]_i_2_n_0 ;
  wire \cid[21][0]_i_3_n_0 ;
  wire \cid[21][0]_i_4_n_0 ;
  wire \cid[21][0]_i_5_n_0 ;
  wire \cid[21][1]_i_1_n_0 ;
  wire \cid[21][1]_i_2_n_0 ;
  wire \cid[21][1]_i_3_n_0 ;
  wire \cid[21][1]_i_4_n_0 ;
  wire \cid[21][1]_i_5_n_0 ;
  wire \cid[21][1]_i_6_n_0 ;
  wire \cid[21][1]_i_7_n_0 ;
  wire \cid[21][1]_i_8_n_0 ;
  wire \cid[21][1]_i_9_n_0 ;
  wire \cid[21][2]_i_1_n_0 ;
  wire \cid[21][2]_i_2_n_0 ;
  wire \cid[21][2]_i_3_n_0 ;
  wire \cid[21][2]_i_4_n_0 ;
  wire \cid[21][2]_i_5_n_0 ;
  wire \cid[21][2]_i_6_n_0 ;
  wire \cid[21][2]_i_7_n_0 ;
  wire \cid[21][2]_i_8_n_0 ;
  wire \cid[21][3]_i_10_n_0 ;
  wire \cid[21][3]_i_11_n_0 ;
  wire \cid[21][3]_i_12_n_0 ;
  wire \cid[21][3]_i_13_n_0 ;
  wire \cid[21][3]_i_14_n_0 ;
  wire \cid[21][3]_i_15_n_0 ;
  wire \cid[21][3]_i_16_n_0 ;
  wire \cid[21][3]_i_17_n_0 ;
  wire \cid[21][3]_i_18_n_0 ;
  wire \cid[21][3]_i_19_n_0 ;
  wire \cid[21][3]_i_1_n_0 ;
  wire \cid[21][3]_i_20_n_0 ;
  wire \cid[21][3]_i_21_n_0 ;
  wire \cid[21][3]_i_2_n_0 ;
  wire \cid[21][3]_i_3_n_0 ;
  wire \cid[21][3]_i_4_n_0 ;
  wire \cid[21][3]_i_5_n_0 ;
  wire \cid[21][3]_i_6_n_0 ;
  wire \cid[21][3]_i_7_n_0 ;
  wire \cid[21][3]_i_8_n_0 ;
  wire \cid[21][3]_i_9_n_0 ;
  wire \cid[21][4]_i_10_n_0 ;
  wire \cid[21][4]_i_11_n_0 ;
  wire \cid[21][4]_i_12_n_0 ;
  wire \cid[21][4]_i_1_n_0 ;
  wire \cid[21][4]_i_2_n_0 ;
  wire \cid[21][4]_i_3_n_0 ;
  wire \cid[21][4]_i_4_n_0 ;
  wire \cid[21][4]_i_5_n_0 ;
  wire \cid[21][4]_i_6_n_0 ;
  wire \cid[21][4]_i_7_n_0 ;
  wire \cid[21][4]_i_8_n_0 ;
  wire \cid[21][4]_i_9_n_0 ;
  wire \cid[21][5]_i_10_n_0 ;
  wire \cid[21][5]_i_11_n_0 ;
  wire \cid[21][5]_i_12_n_0 ;
  wire \cid[21][5]_i_13_n_0 ;
  wire \cid[21][5]_i_1_n_0 ;
  wire \cid[21][5]_i_2_n_0 ;
  wire \cid[21][5]_i_3_n_0 ;
  wire \cid[21][5]_i_4_n_0 ;
  wire \cid[21][5]_i_5_n_0 ;
  wire \cid[21][5]_i_6_n_0 ;
  wire \cid[21][5]_i_7_n_0 ;
  wire \cid[21][5]_i_8_n_0 ;
  wire \cid[21][5]_i_9_n_0 ;
  wire \cid[22][0]_i_1_n_0 ;
  wire \cid[22][0]_i_2_n_0 ;
  wire \cid[22][0]_i_3_n_0 ;
  wire \cid[22][0]_i_4_n_0 ;
  wire \cid[22][0]_i_5_n_0 ;
  wire \cid[22][1]_i_1_n_0 ;
  wire \cid[22][1]_i_2_n_0 ;
  wire \cid[22][1]_i_3_n_0 ;
  wire \cid[22][1]_i_4_n_0 ;
  wire \cid[22][1]_i_5_n_0 ;
  wire \cid[22][1]_i_6_n_0 ;
  wire \cid[22][2]_i_1_n_0 ;
  wire \cid[22][2]_i_2_n_0 ;
  wire \cid[22][2]_i_3_n_0 ;
  wire \cid[22][2]_i_4_n_0 ;
  wire \cid[22][2]_i_5_n_0 ;
  wire \cid[22][2]_i_6_n_0 ;
  wire \cid[22][2]_i_7_n_0 ;
  wire \cid[22][3]_i_10_n_0 ;
  wire \cid[22][3]_i_11_n_0 ;
  wire \cid[22][3]_i_12_n_0 ;
  wire \cid[22][3]_i_13_n_0 ;
  wire \cid[22][3]_i_14_n_0 ;
  wire \cid[22][3]_i_15_n_0 ;
  wire \cid[22][3]_i_16_n_0 ;
  wire \cid[22][3]_i_17_n_0 ;
  wire \cid[22][3]_i_18_n_0 ;
  wire \cid[22][3]_i_19_n_0 ;
  wire \cid[22][3]_i_1_n_0 ;
  wire \cid[22][3]_i_20_n_0 ;
  wire \cid[22][3]_i_21_n_0 ;
  wire \cid[22][3]_i_2_n_0 ;
  wire \cid[22][3]_i_3_n_0 ;
  wire \cid[22][3]_i_4_n_0 ;
  wire \cid[22][3]_i_5_n_0 ;
  wire \cid[22][3]_i_6_n_0 ;
  wire \cid[22][3]_i_7_n_0 ;
  wire \cid[22][3]_i_8_n_0 ;
  wire \cid[22][3]_i_9_n_0 ;
  wire \cid[22][4]_i_10_n_0 ;
  wire \cid[22][4]_i_11_n_0 ;
  wire \cid[22][4]_i_1_n_0 ;
  wire \cid[22][4]_i_2_n_0 ;
  wire \cid[22][4]_i_3_n_0 ;
  wire \cid[22][4]_i_4_n_0 ;
  wire \cid[22][4]_i_5_n_0 ;
  wire \cid[22][4]_i_6_n_0 ;
  wire \cid[22][4]_i_7_n_0 ;
  wire \cid[22][4]_i_8_n_0 ;
  wire \cid[22][4]_i_9_n_0 ;
  wire \cid[22][5]_i_10_n_0 ;
  wire \cid[22][5]_i_11_n_0 ;
  wire \cid[22][5]_i_1_n_0 ;
  wire \cid[22][5]_i_2_n_0 ;
  wire \cid[22][5]_i_3_n_0 ;
  wire \cid[22][5]_i_4_n_0 ;
  wire \cid[22][5]_i_5_n_0 ;
  wire \cid[22][5]_i_6_n_0 ;
  wire \cid[22][5]_i_7_n_0 ;
  wire \cid[22][5]_i_8_n_0 ;
  wire \cid[22][5]_i_9_n_0 ;
  wire \cid[23][0]_i_1_n_0 ;
  wire \cid[23][0]_i_2_n_0 ;
  wire \cid[23][0]_i_3_n_0 ;
  wire \cid[23][0]_i_4_n_0 ;
  wire \cid[23][0]_i_5_n_0 ;
  wire \cid[23][1]_i_1_n_0 ;
  wire \cid[23][1]_i_2_n_0 ;
  wire \cid[23][1]_i_3_n_0 ;
  wire \cid[23][1]_i_4_n_0 ;
  wire \cid[23][1]_i_5_n_0 ;
  wire \cid[23][1]_i_6_n_0 ;
  wire \cid[23][2]_i_1_n_0 ;
  wire \cid[23][2]_i_2_n_0 ;
  wire \cid[23][2]_i_3_n_0 ;
  wire \cid[23][2]_i_4_n_0 ;
  wire \cid[23][2]_i_5_n_0 ;
  wire \cid[23][2]_i_6_n_0 ;
  wire \cid[23][2]_i_7_n_0 ;
  wire \cid[23][3]_i_10_n_0 ;
  wire \cid[23][3]_i_11_n_0 ;
  wire \cid[23][3]_i_12_n_0 ;
  wire \cid[23][3]_i_13_n_0 ;
  wire \cid[23][3]_i_14_n_0 ;
  wire \cid[23][3]_i_15_n_0 ;
  wire \cid[23][3]_i_16_n_0 ;
  wire \cid[23][3]_i_17_n_0 ;
  wire \cid[23][3]_i_18_n_0 ;
  wire \cid[23][3]_i_19_n_0 ;
  wire \cid[23][3]_i_1_n_0 ;
  wire \cid[23][3]_i_20_n_0 ;
  wire \cid[23][3]_i_21_n_0 ;
  wire \cid[23][3]_i_2_n_0 ;
  wire \cid[23][3]_i_3_n_0 ;
  wire \cid[23][3]_i_4_n_0 ;
  wire \cid[23][3]_i_5_n_0 ;
  wire \cid[23][3]_i_6_n_0 ;
  wire \cid[23][3]_i_7_n_0 ;
  wire \cid[23][3]_i_8_n_0 ;
  wire \cid[23][3]_i_9_n_0 ;
  wire \cid[23][4]_i_10_n_0 ;
  wire \cid[23][4]_i_11_n_0 ;
  wire \cid[23][4]_i_1_n_0 ;
  wire \cid[23][4]_i_2_n_0 ;
  wire \cid[23][4]_i_3_n_0 ;
  wire \cid[23][4]_i_4_n_0 ;
  wire \cid[23][4]_i_5_n_0 ;
  wire \cid[23][4]_i_6_n_0 ;
  wire \cid[23][4]_i_7_n_0 ;
  wire \cid[23][4]_i_8_n_0 ;
  wire \cid[23][4]_i_9_n_0 ;
  wire \cid[23][5]_i_10_n_0 ;
  wire \cid[23][5]_i_11_n_0 ;
  wire \cid[23][5]_i_12_n_0 ;
  wire \cid[23][5]_i_13_n_0 ;
  wire \cid[23][5]_i_1_n_0 ;
  wire \cid[23][5]_i_2_n_0 ;
  wire \cid[23][5]_i_3_n_0 ;
  wire \cid[23][5]_i_4_n_0 ;
  wire \cid[23][5]_i_5_n_0 ;
  wire \cid[23][5]_i_6_n_0 ;
  wire \cid[23][5]_i_7_n_0 ;
  wire \cid[23][5]_i_8_n_0 ;
  wire \cid[23][5]_i_9_n_0 ;
  wire \cid[24][0]_i_1_n_0 ;
  wire \cid[24][0]_i_2_n_0 ;
  wire \cid[24][0]_i_3_n_0 ;
  wire \cid[24][0]_i_4_n_0 ;
  wire \cid[24][0]_i_5_n_0 ;
  wire \cid[24][1]_i_1_n_0 ;
  wire \cid[24][1]_i_2_n_0 ;
  wire \cid[24][1]_i_3_n_0 ;
  wire \cid[24][1]_i_4_n_0 ;
  wire \cid[24][1]_i_5_n_0 ;
  wire \cid[24][1]_i_6_n_0 ;
  wire \cid[24][2]_i_10_n_0 ;
  wire \cid[24][2]_i_11_n_0 ;
  wire \cid[24][2]_i_12_n_0 ;
  wire \cid[24][2]_i_13_n_0 ;
  wire \cid[24][2]_i_14_n_0 ;
  wire \cid[24][2]_i_15_n_0 ;
  wire \cid[24][2]_i_16_n_0 ;
  wire \cid[24][2]_i_17_n_0 ;
  wire \cid[24][2]_i_18_n_0 ;
  wire \cid[24][2]_i_19_n_0 ;
  wire \cid[24][2]_i_1_n_0 ;
  wire \cid[24][2]_i_20_n_0 ;
  wire \cid[24][2]_i_21_n_0 ;
  wire \cid[24][2]_i_22_n_0 ;
  wire \cid[24][2]_i_23_n_0 ;
  wire \cid[24][2]_i_24_n_0 ;
  wire \cid[24][2]_i_25_n_0 ;
  wire \cid[24][2]_i_26_n_0 ;
  wire \cid[24][2]_i_27_n_0 ;
  wire \cid[24][2]_i_28_n_0 ;
  wire \cid[24][2]_i_29_n_0 ;
  wire \cid[24][2]_i_2_n_0 ;
  wire \cid[24][2]_i_30_n_0 ;
  wire \cid[24][2]_i_31_n_0 ;
  wire \cid[24][2]_i_32_n_0 ;
  wire \cid[24][2]_i_33_n_0 ;
  wire \cid[24][2]_i_3_n_0 ;
  wire \cid[24][2]_i_4_n_0 ;
  wire \cid[24][2]_i_5_n_0 ;
  wire \cid[24][2]_i_6_n_0 ;
  wire \cid[24][2]_i_7_n_0 ;
  wire \cid[24][2]_i_8_n_0 ;
  wire \cid[24][2]_i_9_n_0 ;
  wire \cid[24][3]_i_1_n_0 ;
  wire \cid[24][3]_i_2_n_0 ;
  wire \cid[24][3]_i_3_n_0 ;
  wire \cid[24][3]_i_4_n_0 ;
  wire \cid[24][3]_i_5_n_0 ;
  wire \cid[24][3]_i_6_n_0 ;
  wire \cid[24][3]_i_7_n_0 ;
  wire \cid[24][4]_i_1_n_0 ;
  wire \cid[24][4]_i_2_n_0 ;
  wire \cid[24][4]_i_3_n_0 ;
  wire \cid[24][4]_i_4_n_0 ;
  wire \cid[24][4]_i_5_n_0 ;
  wire \cid[24][4]_i_6_n_0 ;
  wire \cid[24][4]_i_7_n_0 ;
  wire \cid[24][5]_i_10_n_0 ;
  wire \cid[24][5]_i_11_n_0 ;
  wire \cid[24][5]_i_1_n_0 ;
  wire \cid[24][5]_i_2_n_0 ;
  wire \cid[24][5]_i_3_n_0 ;
  wire \cid[24][5]_i_4_n_0 ;
  wire \cid[24][5]_i_5_n_0 ;
  wire \cid[24][5]_i_6_n_0 ;
  wire \cid[24][5]_i_7_n_0 ;
  wire \cid[24][5]_i_8_n_0 ;
  wire \cid[24][5]_i_9_n_0 ;
  wire \cid[25][0]_i_1_n_0 ;
  wire \cid[25][0]_i_2_n_0 ;
  wire \cid[25][0]_i_3_n_0 ;
  wire \cid[25][0]_i_4_n_0 ;
  wire \cid[25][0]_i_5_n_0 ;
  wire \cid[25][1]_i_1_n_0 ;
  wire \cid[25][1]_i_2_n_0 ;
  wire \cid[25][1]_i_3_n_0 ;
  wire \cid[25][1]_i_4_n_0 ;
  wire \cid[25][1]_i_5_n_0 ;
  wire \cid[25][1]_i_6_n_0 ;
  wire \cid[25][2]_i_10_n_0 ;
  wire \cid[25][2]_i_11_n_0 ;
  wire \cid[25][2]_i_12_n_0 ;
  wire \cid[25][2]_i_13_n_0 ;
  wire \cid[25][2]_i_14_n_0 ;
  wire \cid[25][2]_i_15_n_0 ;
  wire \cid[25][2]_i_16_n_0 ;
  wire \cid[25][2]_i_1_n_0 ;
  wire \cid[25][2]_i_2_n_0 ;
  wire \cid[25][2]_i_3_n_0 ;
  wire \cid[25][2]_i_4_n_0 ;
  wire \cid[25][2]_i_5_n_0 ;
  wire \cid[25][2]_i_6_n_0 ;
  wire \cid[25][2]_i_7_n_0 ;
  wire \cid[25][2]_i_8_n_0 ;
  wire \cid[25][2]_i_9_n_0 ;
  wire \cid[25][3]_i_1_n_0 ;
  wire \cid[25][3]_i_2_n_0 ;
  wire \cid[25][3]_i_3_n_0 ;
  wire \cid[25][3]_i_4_n_0 ;
  wire \cid[25][3]_i_5_n_0 ;
  wire \cid[25][3]_i_6_n_0 ;
  wire \cid[25][4]_i_10_n_0 ;
  wire \cid[25][4]_i_11_n_0 ;
  wire \cid[25][4]_i_12_n_0 ;
  wire \cid[25][4]_i_1_n_0 ;
  wire \cid[25][4]_i_2_n_0 ;
  wire \cid[25][4]_i_3_n_0 ;
  wire \cid[25][4]_i_4_n_0 ;
  wire \cid[25][4]_i_5_n_0 ;
  wire \cid[25][4]_i_6_n_0 ;
  wire \cid[25][4]_i_7_n_0 ;
  wire \cid[25][4]_i_8_n_0 ;
  wire \cid[25][4]_i_9_n_0 ;
  wire \cid[25][5]_i_10_n_0 ;
  wire \cid[25][5]_i_11_n_0 ;
  wire \cid[25][5]_i_12_n_0 ;
  wire \cid[25][5]_i_13_n_0 ;
  wire \cid[25][5]_i_14_n_0 ;
  wire \cid[25][5]_i_15_n_0 ;
  wire \cid[25][5]_i_1_n_0 ;
  wire \cid[25][5]_i_2_n_0 ;
  wire \cid[25][5]_i_3_n_0 ;
  wire \cid[25][5]_i_4_n_0 ;
  wire \cid[25][5]_i_5_n_0 ;
  wire \cid[25][5]_i_6_n_0 ;
  wire \cid[25][5]_i_7_n_0 ;
  wire \cid[25][5]_i_8_n_0 ;
  wire \cid[25][5]_i_9_n_0 ;
  wire \cid[26][0]_i_1_n_0 ;
  wire \cid[26][0]_i_2_n_0 ;
  wire \cid[26][0]_i_3_n_0 ;
  wire \cid[26][0]_i_4_n_0 ;
  wire \cid[26][0]_i_5_n_0 ;
  wire \cid[26][1]_i_1_n_0 ;
  wire \cid[26][1]_i_2_n_0 ;
  wire \cid[26][1]_i_3_n_0 ;
  wire \cid[26][1]_i_4_n_0 ;
  wire \cid[26][1]_i_5_n_0 ;
  wire \cid[26][2]_i_1_n_0 ;
  wire \cid[26][2]_i_2_n_0 ;
  wire \cid[26][2]_i_3_n_0 ;
  wire \cid[26][2]_i_4_n_0 ;
  wire \cid[26][2]_i_5_n_0 ;
  wire \cid[26][2]_i_6_n_0 ;
  wire \cid[26][3]_i_1_n_0 ;
  wire \cid[26][3]_i_2_n_0 ;
  wire \cid[26][3]_i_3_n_0 ;
  wire \cid[26][3]_i_4_n_0 ;
  wire \cid[26][3]_i_5_n_0 ;
  wire \cid[26][3]_i_6_n_0 ;
  wire \cid[26][3]_i_7_n_0 ;
  wire \cid[26][4]_i_10_n_0 ;
  wire \cid[26][4]_i_11_n_0 ;
  wire \cid[26][4]_i_12_n_0 ;
  wire \cid[26][4]_i_13_n_0 ;
  wire \cid[26][4]_i_14_n_0 ;
  wire \cid[26][4]_i_15_n_0 ;
  wire \cid[26][4]_i_16_n_0 ;
  wire \cid[26][4]_i_17_n_0 ;
  wire \cid[26][4]_i_18_n_0 ;
  wire \cid[26][4]_i_19_n_0 ;
  wire \cid[26][4]_i_1_n_0 ;
  wire \cid[26][4]_i_2_n_0 ;
  wire \cid[26][4]_i_3_n_0 ;
  wire \cid[26][4]_i_4_n_0 ;
  wire \cid[26][4]_i_5_n_0 ;
  wire \cid[26][4]_i_6_n_0 ;
  wire \cid[26][4]_i_7_n_0 ;
  wire \cid[26][4]_i_8_n_0 ;
  wire \cid[26][4]_i_9_n_0 ;
  wire \cid[26][5]_i_10_n_0 ;
  wire \cid[26][5]_i_11_n_0 ;
  wire \cid[26][5]_i_1_n_0 ;
  wire \cid[26][5]_i_2_n_0 ;
  wire \cid[26][5]_i_3_n_0 ;
  wire \cid[26][5]_i_4_n_0 ;
  wire \cid[26][5]_i_5_n_0 ;
  wire \cid[26][5]_i_6_n_0 ;
  wire \cid[26][5]_i_7_n_0 ;
  wire \cid[26][5]_i_8_n_0 ;
  wire \cid[26][5]_i_9_n_0 ;
  wire \cid[27][0]_i_1_n_0 ;
  wire \cid[27][0]_i_2_n_0 ;
  wire \cid[27][0]_i_3_n_0 ;
  wire \cid[27][0]_i_4_n_0 ;
  wire \cid[27][1]_i_1_n_0 ;
  wire \cid[27][1]_i_2_n_0 ;
  wire \cid[27][1]_i_3_n_0 ;
  wire \cid[27][1]_i_4_n_0 ;
  wire \cid[27][1]_i_5_n_0 ;
  wire \cid[27][2]_i_10_n_0 ;
  wire \cid[27][2]_i_11_n_0 ;
  wire \cid[27][2]_i_12_n_0 ;
  wire \cid[27][2]_i_13_n_0 ;
  wire \cid[27][2]_i_14_n_0 ;
  wire \cid[27][2]_i_15_n_0 ;
  wire \cid[27][2]_i_16_n_0 ;
  wire \cid[27][2]_i_17_n_0 ;
  wire \cid[27][2]_i_18_n_0 ;
  wire \cid[27][2]_i_19_n_0 ;
  wire \cid[27][2]_i_1_n_0 ;
  wire \cid[27][2]_i_2_n_0 ;
  wire \cid[27][2]_i_3_n_0 ;
  wire \cid[27][2]_i_4_n_0 ;
  wire \cid[27][2]_i_5_n_0 ;
  wire \cid[27][2]_i_6_n_0 ;
  wire \cid[27][2]_i_7_n_0 ;
  wire \cid[27][2]_i_8_n_0 ;
  wire \cid[27][2]_i_9_n_0 ;
  wire \cid[27][3]_i_1_n_0 ;
  wire \cid[27][3]_i_2_n_0 ;
  wire \cid[27][3]_i_3_n_0 ;
  wire \cid[27][3]_i_4_n_0 ;
  wire \cid[27][3]_i_5_n_0 ;
  wire \cid[27][3]_i_6_n_0 ;
  wire \cid[27][4]_i_10_n_0 ;
  wire \cid[27][4]_i_11_n_0 ;
  wire \cid[27][4]_i_12_n_0 ;
  wire \cid[27][4]_i_1_n_0 ;
  wire \cid[27][4]_i_2_n_0 ;
  wire \cid[27][4]_i_3_n_0 ;
  wire \cid[27][4]_i_4_n_0 ;
  wire \cid[27][4]_i_5_n_0 ;
  wire \cid[27][4]_i_6_n_0 ;
  wire \cid[27][4]_i_7_n_0 ;
  wire \cid[27][4]_i_8_n_0 ;
  wire \cid[27][4]_i_9_n_0 ;
  wire \cid[27][5]_i_1_n_0 ;
  wire \cid[27][5]_i_2_n_0 ;
  wire \cid[27][5]_i_3_n_0 ;
  wire \cid[27][5]_i_4_n_0 ;
  wire \cid[27][5]_i_5_n_0 ;
  wire \cid[27][5]_i_6_n_0 ;
  wire \cid[27][5]_i_7_n_0 ;
  wire \cid[28][0]_i_1_n_0 ;
  wire \cid[28][0]_i_2_n_0 ;
  wire \cid[28][0]_i_3_n_0 ;
  wire \cid[28][0]_i_4_n_0 ;
  wire \cid[28][0]_i_5_n_0 ;
  wire \cid[28][1]_i_10_n_0 ;
  wire \cid[28][1]_i_11_n_0 ;
  wire \cid[28][1]_i_12_n_0 ;
  wire \cid[28][1]_i_13_n_0 ;
  wire \cid[28][1]_i_1_n_0 ;
  wire \cid[28][1]_i_2_n_0 ;
  wire \cid[28][1]_i_3_n_0 ;
  wire \cid[28][1]_i_4_n_0 ;
  wire \cid[28][1]_i_5_n_0 ;
  wire \cid[28][1]_i_6_n_0 ;
  wire \cid[28][1]_i_7_n_0 ;
  wire \cid[28][1]_i_8_n_0 ;
  wire \cid[28][1]_i_9_n_0 ;
  wire \cid[28][2]_i_1_n_0 ;
  wire \cid[28][2]_i_2_n_0 ;
  wire \cid[28][2]_i_3_n_0 ;
  wire \cid[28][2]_i_4_n_0 ;
  wire \cid[28][2]_i_5_n_0 ;
  wire \cid[28][3]_i_1_n_0 ;
  wire \cid[28][3]_i_2_n_0 ;
  wire \cid[28][3]_i_3_n_0 ;
  wire \cid[28][3]_i_4_n_0 ;
  wire \cid[28][3]_i_5_n_0 ;
  wire \cid[28][3]_i_6_n_0 ;
  wire \cid[28][3]_i_7_n_0 ;
  wire \cid[28][4]_i_10_n_0 ;
  wire \cid[28][4]_i_11_n_0 ;
  wire \cid[28][4]_i_1_n_0 ;
  wire \cid[28][4]_i_2_n_0 ;
  wire \cid[28][4]_i_3_n_0 ;
  wire \cid[28][4]_i_4_n_0 ;
  wire \cid[28][4]_i_5_n_0 ;
  wire \cid[28][4]_i_6_n_0 ;
  wire \cid[28][4]_i_7_n_0 ;
  wire \cid[28][4]_i_8_n_0 ;
  wire \cid[28][4]_i_9_n_0 ;
  wire \cid[28][5]_i_10_n_0 ;
  wire \cid[28][5]_i_11_n_0 ;
  wire \cid[28][5]_i_1_n_0 ;
  wire \cid[28][5]_i_2_n_0 ;
  wire \cid[28][5]_i_3_n_0 ;
  wire \cid[28][5]_i_4_n_0 ;
  wire \cid[28][5]_i_5_n_0 ;
  wire \cid[28][5]_i_6_n_0 ;
  wire \cid[28][5]_i_7_n_0 ;
  wire \cid[28][5]_i_8_n_0 ;
  wire \cid[28][5]_i_9_n_0 ;
  wire \cid[29][0]_i_1_n_0 ;
  wire \cid[29][0]_i_2_n_0 ;
  wire \cid[29][0]_i_3_n_0 ;
  wire \cid[29][0]_i_4_n_0 ;
  wire \cid[29][1]_i_10_n_0 ;
  wire \cid[29][1]_i_11_n_0 ;
  wire \cid[29][1]_i_12_n_0 ;
  wire \cid[29][1]_i_13_n_0 ;
  wire \cid[29][1]_i_14_n_0 ;
  wire \cid[29][1]_i_15_n_0 ;
  wire \cid[29][1]_i_16_n_0 ;
  wire \cid[29][1]_i_17_n_0 ;
  wire \cid[29][1]_i_1_n_0 ;
  wire \cid[29][1]_i_2_n_0 ;
  wire \cid[29][1]_i_3_n_0 ;
  wire \cid[29][1]_i_4_n_0 ;
  wire \cid[29][1]_i_5_n_0 ;
  wire \cid[29][1]_i_6_n_0 ;
  wire \cid[29][1]_i_7_n_0 ;
  wire \cid[29][1]_i_8_n_0 ;
  wire \cid[29][1]_i_9_n_0 ;
  wire \cid[29][2]_i_1_n_0 ;
  wire \cid[29][2]_i_2_n_0 ;
  wire \cid[29][2]_i_3_n_0 ;
  wire \cid[29][2]_i_4_n_0 ;
  wire \cid[29][2]_i_5_n_0 ;
  wire \cid[29][3]_i_1_n_0 ;
  wire \cid[29][3]_i_2_n_0 ;
  wire \cid[29][3]_i_3_n_0 ;
  wire \cid[29][3]_i_4_n_0 ;
  wire \cid[29][3]_i_5_n_0 ;
  wire \cid[29][3]_i_6_n_0 ;
  wire \cid[29][4]_i_10_n_0 ;
  wire \cid[29][4]_i_11_n_0 ;
  wire \cid[29][4]_i_12_n_0 ;
  wire \cid[29][4]_i_13_n_0 ;
  wire \cid[29][4]_i_1_n_0 ;
  wire \cid[29][4]_i_2_n_0 ;
  wire \cid[29][4]_i_3_n_0 ;
  wire \cid[29][4]_i_4_n_0 ;
  wire \cid[29][4]_i_5_n_0 ;
  wire \cid[29][4]_i_6_n_0 ;
  wire \cid[29][4]_i_7_n_0 ;
  wire \cid[29][4]_i_8_n_0 ;
  wire \cid[29][4]_i_9_n_0 ;
  wire \cid[29][5]_i_1_n_0 ;
  wire \cid[29][5]_i_2_n_0 ;
  wire \cid[29][5]_i_3_n_0 ;
  wire \cid[29][5]_i_4_n_0 ;
  wire \cid[29][5]_i_5_n_0 ;
  wire \cid[29][5]_i_6_n_0 ;
  wire \cid[29][5]_i_7_n_0 ;
  wire \cid[2][0]_i_1_n_0 ;
  wire \cid[2][1]_i_1_n_0 ;
  wire \cid[2][1]_i_2_n_0 ;
  wire \cid[2][2]_i_1_n_0 ;
  wire \cid[2][2]_i_2_n_0 ;
  wire \cid[2][3]_i_1_n_0 ;
  wire \cid[2][3]_i_2_n_0 ;
  wire \cid[2][4]_i_1_n_0 ;
  wire \cid[2][4]_i_2_n_0 ;
  wire \cid[2][4]_i_3_n_0 ;
  wire \cid[2][5]_i_1_n_0 ;
  wire \cid[2][5]_i_2_n_0 ;
  wire \cid[2][5]_i_3_n_0 ;
  wire \cid[2][5]_i_4_n_0 ;
  wire \cid[2][5]_i_5_n_0 ;
  wire \cid[2][5]_i_6_n_0 ;
  wire \cid[2][5]_i_7_n_0 ;
  wire \cid[2][5]_i_8_n_0 ;
  wire \cid[3][0]_i_1_n_0 ;
  wire \cid[3][1]_i_1_n_0 ;
  wire \cid[3][1]_i_2_n_0 ;
  wire \cid[3][2]_i_1_n_0 ;
  wire \cid[3][2]_i_2_n_0 ;
  wire \cid[3][3]_i_1_n_0 ;
  wire \cid[3][3]_i_2_n_0 ;
  wire \cid[3][4]_i_1_n_0 ;
  wire \cid[3][4]_i_2_n_0 ;
  wire \cid[3][4]_i_3_n_0 ;
  wire \cid[3][5]_i_1_n_0 ;
  wire \cid[3][5]_i_2_n_0 ;
  wire \cid[3][5]_i_3_n_0 ;
  wire \cid[3][5]_i_4_n_0 ;
  wire \cid[3][5]_i_5_n_0 ;
  wire \cid[3][5]_i_6_n_0 ;
  wire \cid[3][5]_i_7_n_0 ;
  wire \cid[4][0]_i_1_n_0 ;
  wire \cid[4][1]_i_1_n_0 ;
  wire \cid[4][1]_i_2_n_0 ;
  wire \cid[4][2]_i_1_n_0 ;
  wire \cid[4][2]_i_2_n_0 ;
  wire \cid[4][3]_i_1_n_0 ;
  wire \cid[4][3]_i_2_n_0 ;
  wire \cid[4][4]_i_1_n_0 ;
  wire \cid[4][4]_i_2_n_0 ;
  wire \cid[4][4]_i_3_n_0 ;
  wire \cid[4][5]_i_1_n_0 ;
  wire \cid[4][5]_i_2_n_0 ;
  wire \cid[4][5]_i_3_n_0 ;
  wire \cid[4][5]_i_4_n_0 ;
  wire \cid[4][5]_i_5_n_0 ;
  wire \cid[4][5]_i_6_n_0 ;
  wire \cid[4][5]_i_7_n_0 ;
  wire \cid[4][5]_i_8_n_0 ;
  wire \cid[5][0]_i_1_n_0 ;
  wire \cid[5][1]_i_1_n_0 ;
  wire \cid[5][1]_i_2_n_0 ;
  wire \cid[5][2]_i_1_n_0 ;
  wire \cid[5][2]_i_2_n_0 ;
  wire \cid[5][3]_i_1_n_0 ;
  wire \cid[5][3]_i_2_n_0 ;
  wire \cid[5][4]_i_1_n_0 ;
  wire \cid[5][4]_i_2_n_0 ;
  wire \cid[5][4]_i_3_n_0 ;
  wire \cid[5][5]_i_1_n_0 ;
  wire \cid[5][5]_i_2_n_0 ;
  wire \cid[5][5]_i_3_n_0 ;
  wire \cid[5][5]_i_4_n_0 ;
  wire \cid[5][5]_i_5_n_0 ;
  wire \cid[5][5]_i_6_n_0 ;
  wire \cid[5][5]_i_7_n_0 ;
  wire \cid[6][0]_i_1_n_0 ;
  wire \cid[6][1]_i_1_n_0 ;
  wire \cid[6][1]_i_2_n_0 ;
  wire \cid[6][2]_i_1_n_0 ;
  wire \cid[6][2]_i_2_n_0 ;
  wire \cid[6][3]_i_1_n_0 ;
  wire \cid[6][3]_i_2_n_0 ;
  wire \cid[6][4]_i_1_n_0 ;
  wire \cid[6][4]_i_2_n_0 ;
  wire \cid[6][4]_i_3_n_0 ;
  wire \cid[6][5]_i_1_n_0 ;
  wire \cid[6][5]_i_2_n_0 ;
  wire \cid[6][5]_i_3_n_0 ;
  wire \cid[6][5]_i_4_n_0 ;
  wire \cid[6][5]_i_5_n_0 ;
  wire \cid[6][5]_i_6_n_0 ;
  wire \cid[6][5]_i_7_n_0 ;
  wire \cid[6][5]_i_8_n_0 ;
  wire \cid[7][0]_i_1_n_0 ;
  wire \cid[7][1]_i_1_n_0 ;
  wire \cid[7][1]_i_2_n_0 ;
  wire \cid[7][2]_i_1_n_0 ;
  wire \cid[7][2]_i_2_n_0 ;
  wire \cid[7][3]_i_1_n_0 ;
  wire \cid[7][3]_i_2_n_0 ;
  wire \cid[7][4]_i_1_n_0 ;
  wire \cid[7][4]_i_2_n_0 ;
  wire \cid[7][4]_i_3_n_0 ;
  wire \cid[7][5]_i_1_n_0 ;
  wire \cid[7][5]_i_2_n_0 ;
  wire \cid[7][5]_i_3_n_0 ;
  wire \cid[7][5]_i_4_n_0 ;
  wire \cid[7][5]_i_5_n_0 ;
  wire \cid[7][5]_i_6_n_0 ;
  wire \cid[7][5]_i_7_n_0 ;
  wire \cid[8][0]_i_1_n_0 ;
  wire \cid[8][1]_i_1_n_0 ;
  wire \cid[8][1]_i_2_n_0 ;
  wire \cid[8][2]_i_1_n_0 ;
  wire \cid[8][2]_i_2_n_0 ;
  wire \cid[8][3]_i_1_n_0 ;
  wire \cid[8][3]_i_2_n_0 ;
  wire \cid[8][3]_i_3_n_0 ;
  wire \cid[8][4]_i_1_n_0 ;
  wire \cid[8][4]_i_2_n_0 ;
  wire \cid[8][5]_i_1_n_0 ;
  wire \cid[8][5]_i_2_n_0 ;
  wire \cid[8][5]_i_3_n_0 ;
  wire \cid[8][5]_i_4_n_0 ;
  wire \cid[8][5]_i_5_n_0 ;
  wire \cid[8][5]_i_6_n_0 ;
  wire \cid[8][5]_i_7_n_0 ;
  wire \cid[8][5]_i_8_n_0 ;
  wire \cid[8][5]_i_9_n_0 ;
  wire \cid[9][0]_i_1_n_0 ;
  wire \cid[9][1]_i_1_n_0 ;
  wire \cid[9][1]_i_2_n_0 ;
  wire \cid[9][2]_i_1_n_0 ;
  wire \cid[9][2]_i_2_n_0 ;
  wire \cid[9][3]_i_1_n_0 ;
  wire \cid[9][3]_i_2_n_0 ;
  wire \cid[9][3]_i_3_n_0 ;
  wire \cid[9][4]_i_1_n_0 ;
  wire \cid[9][4]_i_2_n_0 ;
  wire \cid[9][5]_i_1_n_0 ;
  wire \cid[9][5]_i_2_n_0 ;
  wire \cid[9][5]_i_3_n_0 ;
  wire \cid[9][5]_i_4_n_0 ;
  wire \cid[9][5]_i_5_n_0 ;
  wire \cid[9][5]_i_6_n_0 ;
  wire \cid[9][5]_i_7_n_0 ;
  wire \cid[9][5]_i_8_n_0 ;
  wire clk;
  wire [8:0]commit_onehot;
  wire \commit_onehot[0]_i_1_n_0 ;
  wire \commit_onehot[1]_i_1_n_0 ;
  wire \commit_onehot[2]_i_1_n_0 ;
  wire \commit_onehot[3]_i_1_n_0 ;
  wire \commit_onehot[4]_i_1_n_0 ;
  wire \commit_onehot[5]_i_1_n_0 ;
  wire \commit_onehot[6]_i_1_n_0 ;
  wire \commit_onehot[7]_i_1_n_0 ;
  wire \commit_onehot[8]_i_1_n_0 ;
  wire \commit_onehot[8]_i_2_n_0 ;
  wire [2:0]dbg_stage;
  wire \dbg_stage[2]_i_1_n_0 ;
  wire [7:0]dbg_step;
  wire dbg_valid;
  wire \defect[0]_i_1_n_0 ;
  wire \defect[0]_i_2_n_0 ;
  wire \defect[10]_i_1_n_0 ;
  wire \defect[10]_i_2_n_0 ;
  wire \defect[10]_i_3_n_0 ;
  wire \defect[10]_i_4_n_0 ;
  wire \defect[10]_i_5_n_0 ;
  wire \defect[11]_i_1_n_0 ;
  wire \defect[11]_i_2_n_0 ;
  wire \defect[12]_i_1_n_0 ;
  wire \defect[12]_i_2_n_0 ;
  wire \defect[12]_i_3_n_0 ;
  wire \defect[12]_i_4_n_0 ;
  wire \defect[13]_i_1_n_0 ;
  wire \defect[13]_i_2_n_0 ;
  wire \defect[13]_i_3_n_0 ;
  wire \defect[13]_i_4_n_0 ;
  wire \defect[14]_i_10_n_0 ;
  wire \defect[14]_i_11_n_0 ;
  wire \defect[14]_i_12_n_0 ;
  wire \defect[14]_i_13_n_0 ;
  wire \defect[14]_i_1_n_0 ;
  wire \defect[14]_i_2_n_0 ;
  wire \defect[14]_i_3_n_0 ;
  wire \defect[14]_i_4_n_0 ;
  wire \defect[14]_i_5_n_0 ;
  wire \defect[14]_i_6_n_0 ;
  wire \defect[14]_i_7_n_0 ;
  wire \defect[14]_i_8_n_0 ;
  wire \defect[14]_i_9_n_0 ;
  wire \defect[15]_i_10_n_0 ;
  wire \defect[15]_i_11_n_0 ;
  wire \defect[15]_i_1_n_0 ;
  wire \defect[15]_i_2_n_0 ;
  wire \defect[15]_i_3_n_0 ;
  wire \defect[15]_i_4_n_0 ;
  wire \defect[15]_i_5_n_0 ;
  wire \defect[15]_i_6_n_0 ;
  wire \defect[15]_i_7_n_0 ;
  wire \defect[15]_i_8_n_0 ;
  wire \defect[15]_i_9_n_0 ;
  wire \defect[16]_i_1_n_0 ;
  wire \defect[16]_i_2_n_0 ;
  wire \defect[16]_i_3_n_0 ;
  wire \defect[16]_i_4_n_0 ;
  wire \defect[16]_i_5_n_0 ;
  wire \defect[16]_i_6_n_0 ;
  wire \defect[16]_i_7_n_0 ;
  wire \defect[16]_i_8_n_0 ;
  wire \defect[16]_i_9_n_0 ;
  wire \defect[17]_i_10_n_0 ;
  wire \defect[17]_i_11_n_0 ;
  wire \defect[17]_i_12_n_0 ;
  wire \defect[17]_i_13_n_0 ;
  wire \defect[17]_i_14_n_0 ;
  wire \defect[17]_i_1_n_0 ;
  wire \defect[17]_i_2_n_0 ;
  wire \defect[17]_i_3_n_0 ;
  wire \defect[17]_i_4_n_0 ;
  wire \defect[17]_i_5_n_0 ;
  wire \defect[17]_i_6_n_0 ;
  wire \defect[17]_i_7_n_0 ;
  wire \defect[17]_i_8_n_0 ;
  wire \defect[17]_i_9_n_0 ;
  wire \defect[18]_i_1_n_0 ;
  wire \defect[18]_i_2_n_0 ;
  wire \defect[18]_i_3_n_0 ;
  wire \defect[18]_i_4_n_0 ;
  wire \defect[18]_i_5_n_0 ;
  wire \defect[18]_i_6_n_0 ;
  wire \defect[18]_i_7_n_0 ;
  wire \defect[18]_i_8_n_0 ;
  wire \defect[18]_i_9_n_0 ;
  wire \defect[19]_i_1_n_0 ;
  wire \defect[19]_i_2_n_0 ;
  wire \defect[19]_i_3_n_0 ;
  wire \defect[1]_i_1_n_0 ;
  wire \defect[1]_i_2_n_0 ;
  wire \defect[20]_i_1_n_0 ;
  wire \defect[20]_i_2_n_0 ;
  wire \defect[20]_i_3_n_0 ;
  wire \defect[21]_i_1_n_0 ;
  wire \defect[21]_i_2_n_0 ;
  wire \defect[21]_i_3_n_0 ;
  wire \defect[22]_i_1_n_0 ;
  wire \defect[22]_i_2_n_0 ;
  wire \defect[22]_i_3_n_0 ;
  wire \defect[22]_i_4_n_0 ;
  wire \defect[22]_i_5_n_0 ;
  wire \defect[22]_i_6_n_0 ;
  wire \defect[23]_i_1_n_0 ;
  wire \defect[23]_i_2_n_0 ;
  wire \defect[23]_i_3_n_0 ;
  wire \defect[23]_i_4_n_0 ;
  wire \defect[23]_i_5_n_0 ;
  wire \defect[23]_i_6_n_0 ;
  wire \defect[23]_i_7_n_0 ;
  wire \defect[23]_i_8_n_0 ;
  wire \defect[23]_i_9_n_0 ;
  wire \defect[24]_i_10_n_0 ;
  wire \defect[24]_i_1_n_0 ;
  wire \defect[24]_i_2_n_0 ;
  wire \defect[24]_i_3_n_0 ;
  wire \defect[24]_i_4_n_0 ;
  wire \defect[24]_i_5_n_0 ;
  wire \defect[24]_i_6_n_0 ;
  wire \defect[24]_i_7_n_0 ;
  wire \defect[24]_i_8_n_0 ;
  wire \defect[24]_i_9_n_0 ;
  wire \defect[25]_i_1_n_0 ;
  wire \defect[25]_i_2_n_0 ;
  wire \defect[26]_i_10_n_0 ;
  wire \defect[26]_i_11_n_0 ;
  wire \defect[26]_i_1_n_0 ;
  wire \defect[26]_i_2_n_0 ;
  wire \defect[26]_i_3_n_0 ;
  wire \defect[26]_i_4_n_0 ;
  wire \defect[26]_i_5_n_0 ;
  wire \defect[26]_i_6_n_0 ;
  wire \defect[26]_i_7_n_0 ;
  wire \defect[26]_i_8_n_0 ;
  wire \defect[26]_i_9_n_0 ;
  wire \defect[27]_i_1_n_0 ;
  wire \defect[27]_i_2_n_0 ;
  wire \defect[28]_i_1_n_0 ;
  wire \defect[28]_i_2_n_0 ;
  wire \defect[28]_i_3_n_0 ;
  wire \defect[29]_i_1_n_0 ;
  wire \defect[29]_i_2_n_0 ;
  wire \defect[29]_i_3_n_0 ;
  wire \defect[29]_i_4_n_0 ;
  wire \defect[29]_i_5_n_0 ;
  wire \defect[29]_i_6_n_0 ;
  wire \defect[29]_i_7_n_0 ;
  wire \defect[2]_i_1_n_0 ;
  wire \defect[2]_i_2_n_0 ;
  wire \defect[3]_i_1_n_0 ;
  wire \defect[3]_i_2_n_0 ;
  wire \defect[4]_i_1_n_0 ;
  wire \defect[4]_i_2_n_0 ;
  wire \defect[5]_i_1_n_0 ;
  wire \defect[5]_i_2_n_0 ;
  wire \defect[6]_i_1_n_0 ;
  wire \defect[6]_i_2_n_0 ;
  wire \defect[7]_i_1_n_0 ;
  wire \defect[7]_i_2_n_0 ;
  wire \defect[8]_i_1_n_0 ;
  wire \defect[8]_i_2_n_0 ;
  wire \defect[9]_i_1_n_0 ;
  wire \defect[9]_i_2_n_0 ;
  wire done;
  wire done_i_10_n_0;
  wire done_i_11_n_0;
  wire done_i_12_n_0;
  wire done_i_13_n_0;
  wire done_i_14_n_0;
  wire done_i_15_n_0;
  wire done_i_1_n_0;
  wire done_i_2_n_0;
  wire done_i_3_n_0;
  wire done_i_4_n_0;
  wire done_i_5_n_0;
  wire done_i_6_n_0;
  wire done_i_7_n_0;
  wire done_i_8_n_0;
  wire done_i_9_n_0;
  wire \ecorr[0]_i_1_n_0 ;
  wire \ecorr[10]_i_1_n_0 ;
  wire \ecorr[10]_i_2_n_0 ;
  wire \ecorr[10]_i_3_n_0 ;
  wire \ecorr[11]_i_1_n_0 ;
  wire \ecorr[11]_i_2_n_0 ;
  wire \ecorr[11]_i_3_n_0 ;
  wire \ecorr[12]_i_1_n_0 ;
  wire \ecorr[12]_i_2_n_0 ;
  wire \ecorr[12]_i_3_n_0 ;
  wire \ecorr[13]_i_1_n_0 ;
  wire \ecorr[13]_i_2_n_0 ;
  wire \ecorr[13]_i_3_n_0 ;
  wire \ecorr[14]_i_1_n_0 ;
  wire \ecorr[14]_i_2_n_0 ;
  wire \ecorr[14]_i_3_n_0 ;
  wire \ecorr[15]_i_1_n_0 ;
  wire \ecorr[16]_i_1_n_0 ;
  wire \ecorr[16]_i_2_n_0 ;
  wire \ecorr[17]_i_1_n_0 ;
  wire \ecorr[17]_i_2_n_0 ;
  wire \ecorr[17]_i_3_n_0 ;
  wire \ecorr[18]_i_1_n_0 ;
  wire \ecorr[18]_i_2_n_0 ;
  wire \ecorr[18]_i_3_n_0 ;
  wire \ecorr[19]_i_1_n_0 ;
  wire \ecorr[19]_i_2_n_0 ;
  wire \ecorr[19]_i_3_n_0 ;
  wire \ecorr[1]_i_1_n_0 ;
  wire \ecorr[20]_i_1_n_0 ;
  wire \ecorr[20]_i_2_n_0 ;
  wire \ecorr[20]_i_3_n_0 ;
  wire \ecorr[21]_i_1_n_0 ;
  wire \ecorr[21]_i_2_n_0 ;
  wire \ecorr[21]_i_3_n_0 ;
  wire \ecorr[22]_i_1_n_0 ;
  wire \ecorr[22]_i_2_n_0 ;
  wire \ecorr[22]_i_3_n_0 ;
  wire \ecorr[23]_i_1_n_0 ;
  wire \ecorr[24]_i_1_n_0 ;
  wire \ecorr[24]_i_2_n_0 ;
  wire \ecorr[24]_i_3_n_0 ;
  wire \ecorr[25]_i_1_n_0 ;
  wire \ecorr[25]_i_2_n_0 ;
  wire \ecorr[25]_i_3_n_0 ;
  wire \ecorr[26]_i_1_n_0 ;
  wire \ecorr[26]_i_2_n_0 ;
  wire \ecorr[26]_i_3_n_0 ;
  wire \ecorr[27]_i_1_n_0 ;
  wire \ecorr[27]_i_2_n_0 ;
  wire \ecorr[27]_i_3_n_0 ;
  wire \ecorr[28]_i_1_n_0 ;
  wire \ecorr[28]_i_2_n_0 ;
  wire \ecorr[28]_i_3_n_0 ;
  wire \ecorr[29]_i_1_n_0 ;
  wire \ecorr[29]_i_2_n_0 ;
  wire \ecorr[29]_i_3_n_0 ;
  wire \ecorr[2]_i_1_n_0 ;
  wire \ecorr[30]_i_1_n_0 ;
  wire \ecorr[30]_i_2_n_0 ;
  wire \ecorr[30]_i_3_n_0 ;
  wire \ecorr[31]_i_1_n_0 ;
  wire \ecorr[32]_i_1_n_0 ;
  wire \ecorr[32]_i_2_n_0 ;
  wire \ecorr[32]_i_3_n_0 ;
  wire \ecorr[33]_i_1_n_0 ;
  wire \ecorr[33]_i_2_n_0 ;
  wire \ecorr[33]_i_3_n_0 ;
  wire \ecorr[34]_i_1_n_0 ;
  wire \ecorr[34]_i_2_n_0 ;
  wire \ecorr[35]_i_1_n_0 ;
  wire \ecorr[35]_i_2_n_0 ;
  wire \ecorr[35]_i_3_n_0 ;
  wire \ecorr[36]_i_1_n_0 ;
  wire \ecorr[36]_i_2_n_0 ;
  wire \ecorr[36]_i_3_n_0 ;
  wire \ecorr[37]_i_1_n_0 ;
  wire \ecorr[37]_i_2_n_0 ;
  wire \ecorr[37]_i_3_n_0 ;
  wire \ecorr[38]_i_1_n_0 ;
  wire \ecorr[38]_i_2_n_0 ;
  wire \ecorr[38]_i_3_n_0 ;
  wire \ecorr[39]_i_1_n_0 ;
  wire \ecorr[3]_i_1_n_0 ;
  wire \ecorr[40]_i_1_n_0 ;
  wire \ecorr[40]_i_2_n_0 ;
  wire \ecorr[40]_i_3_n_0 ;
  wire \ecorr[4]_i_1_n_0 ;
  wire \ecorr[5]_i_1_n_0 ;
  wire \ecorr[6]_i_1_n_0 ;
  wire \ecorr[6]_i_2_n_0 ;
  wire \ecorr[7]_i_1_n_0 ;
  wire \ecorr[8]_i_1_n_0 ;
  wire \ecorr[9]_i_1_n_0 ;
  wire \ecorr[9]_i_2_n_0 ;
  wire \ecorr[9]_i_3_n_0 ;
  wire grown183_out;
  wire \grown[0]_i_1_n_0 ;
  wire \grown[0]_i_2_n_0 ;
  wire \grown[0]_i_3_n_0 ;
  wire \grown[0]_i_4_n_0 ;
  wire \grown[10]_i_1_n_0 ;
  wire \grown[10]_i_2_n_0 ;
  wire \grown[10]_i_3_n_0 ;
  wire \grown[10]_i_4_n_0 ;
  wire \grown[10]_i_5_n_0 ;
  wire \grown[10]_i_6_n_0 ;
  wire \grown[11]_i_1_n_0 ;
  wire \grown[11]_i_2_n_0 ;
  wire \grown[11]_i_3_n_0 ;
  wire \grown[11]_i_4_n_0 ;
  wire \grown[11]_i_5_n_0 ;
  wire \grown[11]_i_6_n_0 ;
  wire \grown[11]_i_7_n_0 ;
  wire \grown[11]_i_8_n_0 ;
  wire \grown[12]_i_1_n_0 ;
  wire \grown[12]_i_2_n_0 ;
  wire \grown[12]_i_3_n_0 ;
  wire \grown[12]_i_4_n_0 ;
  wire \grown[12]_i_5_n_0 ;
  wire \grown[12]_i_6_n_0 ;
  wire \grown[13]_i_1_n_0 ;
  wire \grown[13]_i_2_n_0 ;
  wire \grown[13]_i_3_n_0 ;
  wire \grown[13]_i_4_n_0 ;
  wire \grown[13]_i_5_n_0 ;
  wire \grown[13]_i_6_n_0 ;
  wire \grown[14]_i_1_n_0 ;
  wire \grown[14]_i_2_n_0 ;
  wire \grown[14]_i_3_n_0 ;
  wire \grown[14]_i_4_n_0 ;
  wire \grown[14]_i_5_n_0 ;
  wire \grown[14]_i_6_n_0 ;
  wire \grown[14]_i_7_n_0 ;
  wire \grown[14]_i_8_n_0 ;
  wire \grown[15]_i_10_n_0 ;
  wire \grown[15]_i_1_n_0 ;
  wire \grown[15]_i_3_n_0 ;
  wire \grown[15]_i_4_n_0 ;
  wire \grown[15]_i_5_n_0 ;
  wire \grown[15]_i_6_n_0 ;
  wire \grown[15]_i_7_n_0 ;
  wire \grown[15]_i_8_n_0 ;
  wire \grown[15]_i_9_n_0 ;
  wire \grown[16]_i_1_n_0 ;
  wire \grown[16]_i_2_n_0 ;
  wire \grown[16]_i_3_n_0 ;
  wire \grown[16]_i_4_n_0 ;
  wire \grown[16]_i_5_n_0 ;
  wire \grown[16]_i_6_n_0 ;
  wire \grown[17]_i_1_n_0 ;
  wire \grown[17]_i_2_n_0 ;
  wire \grown[17]_i_3_n_0 ;
  wire \grown[17]_i_4_n_0 ;
  wire \grown[17]_i_5_n_0 ;
  wire \grown[17]_i_6_n_0 ;
  wire \grown[17]_i_7_n_0 ;
  wire \grown[17]_i_8_n_0 ;
  wire \grown[18]_i_1_n_0 ;
  wire \grown[18]_i_3_n_0 ;
  wire \grown[18]_i_4_n_0 ;
  wire \grown[18]_i_5_n_0 ;
  wire \grown[18]_i_6_n_0 ;
  wire \grown[18]_i_7_n_0 ;
  wire \grown[18]_i_8_n_0 ;
  wire \grown[18]_i_9_n_0 ;
  wire \grown[19]_i_1_n_0 ;
  wire \grown[19]_i_2_n_0 ;
  wire \grown[19]_i_3_n_0 ;
  wire \grown[19]_i_4_n_0 ;
  wire \grown[19]_i_5_n_0 ;
  wire \grown[19]_i_6_n_0 ;
  wire \grown[19]_i_7_n_0 ;
  wire \grown[19]_i_8_n_0 ;
  wire \grown[1]_i_1_n_0 ;
  wire \grown[1]_i_2_n_0 ;
  wire \grown[1]_i_3_n_0 ;
  wire \grown[1]_i_4_n_0 ;
  wire \grown[20]_i_1_n_0 ;
  wire \grown[20]_i_2_n_0 ;
  wire \grown[20]_i_3_n_0 ;
  wire \grown[20]_i_4_n_0 ;
  wire \grown[20]_i_5_n_0 ;
  wire \grown[20]_i_6_n_0 ;
  wire \grown[20]_i_7_n_0 ;
  wire \grown[21]_i_1_n_0 ;
  wire \grown[21]_i_2_n_0 ;
  wire \grown[21]_i_3_n_0 ;
  wire \grown[21]_i_4_n_0 ;
  wire \grown[21]_i_5_n_0 ;
  wire \grown[21]_i_6_n_0 ;
  wire \grown[22]_i_1_n_0 ;
  wire \grown[22]_i_2_n_0 ;
  wire \grown[22]_i_3_n_0 ;
  wire \grown[22]_i_4_n_0 ;
  wire \grown[22]_i_5_n_0 ;
  wire \grown[22]_i_6_n_0 ;
  wire \grown[22]_i_7_n_0 ;
  wire \grown[22]_i_8_n_0 ;
  wire \grown[23]_i_10_n_0 ;
  wire \grown[23]_i_11_n_0 ;
  wire \grown[23]_i_12_n_0 ;
  wire \grown[23]_i_13_n_0 ;
  wire \grown[23]_i_1_n_0 ;
  wire \grown[23]_i_2_n_0 ;
  wire \grown[23]_i_3_n_0 ;
  wire \grown[23]_i_4_n_0 ;
  wire \grown[23]_i_5_n_0 ;
  wire \grown[23]_i_7_n_0 ;
  wire \grown[23]_i_8_n_0 ;
  wire \grown[23]_i_9_n_0 ;
  wire \grown[24]_i_1_n_0 ;
  wire \grown[24]_i_3_n_0 ;
  wire \grown[24]_i_4_n_0 ;
  wire \grown[24]_i_5_n_0 ;
  wire \grown[24]_i_6_n_0 ;
  wire \grown[24]_i_7_n_0 ;
  wire \grown[24]_i_8_n_0 ;
  wire \grown[24]_i_9_n_0 ;
  wire \grown[25]_i_1_n_0 ;
  wire \grown[25]_i_2_n_0 ;
  wire \grown[25]_i_3_n_0 ;
  wire \grown[25]_i_4_n_0 ;
  wire \grown[25]_i_5_n_0 ;
  wire \grown[25]_i_6_n_0 ;
  wire \grown[25]_i_7_n_0 ;
  wire \grown[25]_i_8_n_0 ;
  wire \grown[26]_i_1_n_0 ;
  wire \grown[26]_i_2_n_0 ;
  wire \grown[26]_i_3_n_0 ;
  wire \grown[26]_i_4_n_0 ;
  wire \grown[26]_i_5_n_0 ;
  wire \grown[26]_i_6_n_0 ;
  wire \grown[27]_i_1_n_0 ;
  wire \grown[27]_i_3_n_0 ;
  wire \grown[27]_i_4_n_0 ;
  wire \grown[27]_i_5_n_0 ;
  wire \grown[27]_i_6_n_0 ;
  wire \grown[27]_i_7_n_0 ;
  wire \grown[28]_i_1_n_0 ;
  wire \grown[28]_i_3_n_0 ;
  wire \grown[28]_i_4_n_0 ;
  wire \grown[28]_i_5_n_0 ;
  wire \grown[28]_i_6_n_0 ;
  wire \grown[28]_i_7_n_0 ;
  wire \grown[28]_i_8_n_0 ;
  wire \grown[28]_i_9_n_0 ;
  wire \grown[29]_i_1_n_0 ;
  wire \grown[29]_i_2_n_0 ;
  wire \grown[29]_i_3_n_0 ;
  wire \grown[29]_i_4_n_0 ;
  wire \grown[29]_i_5_n_0 ;
  wire \grown[29]_i_6_n_0 ;
  wire \grown[29]_i_7_n_0 ;
  wire \grown[29]_i_8_n_0 ;
  wire \grown[2]_i_1_n_0 ;
  wire \grown[2]_i_2_n_0 ;
  wire \grown[2]_i_3_n_0 ;
  wire \grown[2]_i_4_n_0 ;
  wire \grown[3]_i_1_n_0 ;
  wire \grown[3]_i_2_n_0 ;
  wire \grown[3]_i_3_n_0 ;
  wire \grown[3]_i_4_n_0 ;
  wire \grown[4]_i_1_n_0 ;
  wire \grown[4]_i_2_n_0 ;
  wire \grown[4]_i_3_n_0 ;
  wire \grown[4]_i_4_n_0 ;
  wire \grown[5]_i_1_n_0 ;
  wire \grown[5]_i_2_n_0 ;
  wire \grown[5]_i_3_n_0 ;
  wire \grown[5]_i_4_n_0 ;
  wire \grown[6]_i_1_n_0 ;
  wire \grown[6]_i_2_n_0 ;
  wire \grown[6]_i_3_n_0 ;
  wire \grown[6]_i_4_n_0 ;
  wire \grown[7]_i_1_n_0 ;
  wire \grown[7]_i_2_n_0 ;
  wire \grown[7]_i_3_n_0 ;
  wire \grown[7]_i_4_n_0 ;
  wire \grown[8]_i_1_n_0 ;
  wire \grown[8]_i_2_n_0 ;
  wire \grown[8]_i_3_n_0 ;
  wire \grown[8]_i_4_n_0 ;
  wire \grown[9]_i_1_n_0 ;
  wire \grown[9]_i_2_n_0 ;
  wire \grown[9]_i_3_n_0 ;
  wire \grown[9]_i_4_n_0 ;
  wire \grown[9]_i_5_n_0 ;
  wire \grown[9]_i_6_n_0 ;
  wire growth;
  wire \growth[0][0]_i_2_n_0 ;
  wire \growth[0][0]_i_3_n_0 ;
  wire \growth[0][1]_i_3_n_0 ;
  wire \growth[0][1]_i_4_n_0 ;
  wire \growth[0][1]_i_5_n_0 ;
  wire \growth[10][0]_i_1_n_0 ;
  wire \growth[10][0]_i_2_n_0 ;
  wire \growth[10][0]_i_3_n_0 ;
  wire \growth[10][1]_i_1_n_0 ;
  wire \growth[10][1]_i_2_n_0 ;
  wire \growth[10][1]_i_3_n_0 ;
  wire \growth[10][1]_i_4_n_0 ;
  wire \growth[11][0]_i_1_n_0 ;
  wire \growth[11][0]_i_2_n_0 ;
  wire \growth[11][1]_i_1_n_0 ;
  wire \growth[11][1]_i_2_n_0 ;
  wire \growth[11][1]_i_3_n_0 ;
  wire \growth[11][1]_i_4_n_0 ;
  wire \growth[11][1]_i_5_n_0 ;
  wire \growth[11][1]_i_6_n_0 ;
  wire \growth[12][0]_i_1_n_0 ;
  wire \growth[12][0]_i_2_n_0 ;
  wire \growth[12][0]_i_3_n_0 ;
  wire \growth[12][1]_i_1_n_0 ;
  wire \growth[12][1]_i_2_n_0 ;
  wire \growth[12][1]_i_3_n_0 ;
  wire \growth[12][1]_i_4_n_0 ;
  wire \growth[13][0]_i_1_n_0 ;
  wire \growth[13][0]_i_2_n_0 ;
  wire \growth[13][0]_i_3_n_0 ;
  wire \growth[13][1]_i_1_n_0 ;
  wire \growth[13][1]_i_2_n_0 ;
  wire \growth[13][1]_i_3_n_0 ;
  wire \growth[13][1]_i_4_n_0 ;
  wire \growth[13][1]_i_5_n_0 ;
  wire \growth[13][1]_i_6_n_0 ;
  wire \growth[14][0]_i_1_n_0 ;
  wire \growth[14][0]_i_2_n_0 ;
  wire \growth[14][0]_i_3_n_0 ;
  wire \growth[14][1]_i_1_n_0 ;
  wire \growth[14][1]_i_2_n_0 ;
  wire \growth[14][1]_i_3_n_0 ;
  wire \growth[14][1]_i_4_n_0 ;
  wire \growth[15][0]_i_1_n_0 ;
  wire \growth[15][0]_i_2_n_0 ;
  wire \growth[15][0]_i_3_n_0 ;
  wire \growth[15][0]_i_4_n_0 ;
  wire \growth[15][1]_i_1_n_0 ;
  wire \growth[15][1]_i_2_n_0 ;
  wire \growth[15][1]_i_3_n_0 ;
  wire \growth[15][1]_i_4_n_0 ;
  wire \growth[16][0]_i_1_n_0 ;
  wire \growth[16][0]_i_2_n_0 ;
  wire \growth[16][0]_i_3_n_0 ;
  wire \growth[16][0]_i_4_n_0 ;
  wire \growth[16][0]_i_5_n_0 ;
  wire \growth[16][1]_i_1_n_0 ;
  wire \growth[16][1]_i_2_n_0 ;
  wire \growth[16][1]_i_3_n_0 ;
  wire \growth[16][1]_i_4_n_0 ;
  wire \growth[17][0]_i_1_n_0 ;
  wire \growth[17][0]_i_2_n_0 ;
  wire \growth[17][0]_i_3_n_0 ;
  wire \growth[17][1]_i_1_n_0 ;
  wire \growth[17][1]_i_2_n_0 ;
  wire \growth[17][1]_i_3_n_0 ;
  wire \growth[17][1]_i_4_n_0 ;
  wire \growth[18][0]_i_1_n_0 ;
  wire \growth[18][0]_i_2_n_0 ;
  wire \growth[18][0]_i_3_n_0 ;
  wire \growth[18][1]_i_1_n_0 ;
  wire \growth[18][1]_i_2_n_0 ;
  wire \growth[18][1]_i_3_n_0 ;
  wire \growth[18][1]_i_4_n_0 ;
  wire \growth[19][0]_i_1_n_0 ;
  wire \growth[19][0]_i_2_n_0 ;
  wire \growth[19][0]_i_3_n_0 ;
  wire \growth[19][1]_i_1_n_0 ;
  wire \growth[19][1]_i_2_n_0 ;
  wire \growth[19][1]_i_3_n_0 ;
  wire \growth[19][1]_i_4_n_0 ;
  wire \growth[1][0]_i_1_n_0 ;
  wire \growth[1][0]_i_2_n_0 ;
  wire \growth[1][0]_i_3_n_0 ;
  wire \growth[1][0]_i_4_n_0 ;
  wire \growth[1][1]_i_1_n_0 ;
  wire \growth[1][1]_i_2_n_0 ;
  wire \growth[1][1]_i_3_n_0 ;
  wire \growth[1][1]_i_4_n_0 ;
  wire \growth[20][0]_i_1_n_0 ;
  wire \growth[20][0]_i_2_n_0 ;
  wire \growth[20][0]_i_3_n_0 ;
  wire \growth[20][1]_i_1_n_0 ;
  wire \growth[20][1]_i_2_n_0 ;
  wire \growth[20][1]_i_3_n_0 ;
  wire \growth[20][1]_i_4_n_0 ;
  wire \growth[21][0]_i_1_n_0 ;
  wire \growth[21][0]_i_2_n_0 ;
  wire \growth[21][0]_i_3_n_0 ;
  wire \growth[21][0]_i_4_n_0 ;
  wire \growth[21][1]_i_1_n_0 ;
  wire \growth[21][1]_i_2_n_0 ;
  wire \growth[21][1]_i_3_n_0 ;
  wire \growth[21][1]_i_4_n_0 ;
  wire \growth[22][0]_i_1_n_0 ;
  wire \growth[22][0]_i_2_n_0 ;
  wire \growth[22][0]_i_3_n_0 ;
  wire \growth[22][1]_i_1_n_0 ;
  wire \growth[22][1]_i_2_n_0 ;
  wire \growth[22][1]_i_3_n_0 ;
  wire \growth[22][1]_i_4_n_0 ;
  wire \growth[23][0]_i_1_n_0 ;
  wire \growth[23][0]_i_2_n_0 ;
  wire \growth[23][0]_i_3_n_0 ;
  wire \growth[23][0]_i_4_n_0 ;
  wire \growth[23][1]_i_1_n_0 ;
  wire \growth[23][1]_i_2_n_0 ;
  wire \growth[23][1]_i_3_n_0 ;
  wire \growth[23][1]_i_4_n_0 ;
  wire \growth[24][0]_i_1_n_0 ;
  wire \growth[24][0]_i_2_n_0 ;
  wire \growth[24][0]_i_3_n_0 ;
  wire \growth[24][0]_i_4_n_0 ;
  wire \growth[24][1]_i_1_n_0 ;
  wire \growth[24][1]_i_2_n_0 ;
  wire \growth[24][1]_i_3_n_0 ;
  wire \growth[24][1]_i_4_n_0 ;
  wire \growth[25][0]_i_1_n_0 ;
  wire \growth[25][0]_i_2_n_0 ;
  wire \growth[25][0]_i_3_n_0 ;
  wire \growth[25][0]_i_4_n_0 ;
  wire \growth[25][0]_i_5_n_0 ;
  wire \growth[25][1]_i_1_n_0 ;
  wire \growth[25][1]_i_2_n_0 ;
  wire \growth[25][1]_i_3_n_0 ;
  wire \growth[25][1]_i_4_n_0 ;
  wire \growth[26][0]_i_1_n_0 ;
  wire \growth[26][0]_i_2_n_0 ;
  wire \growth[26][0]_i_3_n_0 ;
  wire \growth[26][1]_i_1_n_0 ;
  wire \growth[26][1]_i_2_n_0 ;
  wire \growth[26][1]_i_3_n_0 ;
  wire \growth[26][1]_i_4_n_0 ;
  wire \growth[27][0]_i_1_n_0 ;
  wire \growth[27][0]_i_2_n_0 ;
  wire \growth[27][0]_i_3_n_0 ;
  wire \growth[27][0]_i_4_n_0 ;
  wire \growth[27][1]_i_1_n_0 ;
  wire \growth[27][1]_i_2_n_0 ;
  wire \growth[27][1]_i_3_n_0 ;
  wire \growth[27][1]_i_4_n_0 ;
  wire \growth[28][0]_i_1_n_0 ;
  wire \growth[28][0]_i_2_n_0 ;
  wire \growth[28][0]_i_3_n_0 ;
  wire \growth[28][1]_i_1_n_0 ;
  wire \growth[28][1]_i_2_n_0 ;
  wire \growth[28][1]_i_3_n_0 ;
  wire \growth[28][1]_i_4_n_0 ;
  wire \growth[29][0]_i_1_n_0 ;
  wire \growth[29][0]_i_2_n_0 ;
  wire \growth[29][0]_i_3_n_0 ;
  wire \growth[29][0]_i_4_n_0 ;
  wire \growth[29][1]_i_1_n_0 ;
  wire \growth[29][1]_i_2_n_0 ;
  wire \growth[29][1]_i_3_n_0 ;
  wire \growth[29][1]_i_4_n_0 ;
  wire \growth[2][0]_i_1_n_0 ;
  wire \growth[2][0]_i_2_n_0 ;
  wire \growth[2][0]_i_3_n_0 ;
  wire \growth[2][0]_i_4_n_0 ;
  wire \growth[2][1]_i_1_n_0 ;
  wire \growth[2][1]_i_2_n_0 ;
  wire \growth[2][1]_i_3_n_0 ;
  wire \growth[2][1]_i_4_n_0 ;
  wire \growth[30][0]_i_1_n_0 ;
  wire \growth[30][0]_i_2_n_0 ;
  wire \growth[30][0]_i_3_n_0 ;
  wire \growth[30][1]_i_1_n_0 ;
  wire \growth[30][1]_i_2_n_0 ;
  wire \growth[30][1]_i_3_n_0 ;
  wire \growth[30][1]_i_4_n_0 ;
  wire \growth[31][0]_i_1_n_0 ;
  wire \growth[31][0]_i_2_n_0 ;
  wire \growth[31][0]_i_3_n_0 ;
  wire \growth[31][0]_i_4_n_0 ;
  wire \growth[31][1]_i_1_n_0 ;
  wire \growth[31][1]_i_2_n_0 ;
  wire \growth[31][1]_i_3_n_0 ;
  wire \growth[31][1]_i_4_n_0 ;
  wire \growth[32][0]_i_1_n_0 ;
  wire \growth[32][0]_i_2_n_0 ;
  wire \growth[32][0]_i_3_n_0 ;
  wire \growth[32][0]_i_4_n_0 ;
  wire \growth[32][1]_i_1_n_0 ;
  wire \growth[32][1]_i_2_n_0 ;
  wire \growth[32][1]_i_3_n_0 ;
  wire \growth[32][1]_i_4_n_0 ;
  wire \growth[33][0]_i_1_n_0 ;
  wire \growth[33][0]_i_2_n_0 ;
  wire \growth[33][0]_i_3_n_0 ;
  wire \growth[33][0]_i_4_n_0 ;
  wire \growth[33][1]_i_1_n_0 ;
  wire \growth[33][1]_i_2_n_0 ;
  wire \growth[33][1]_i_3_n_0 ;
  wire \growth[33][1]_i_4_n_0 ;
  wire \growth[33][1]_i_5_n_0 ;
  wire \growth[34][0]_i_1_n_0 ;
  wire \growth[34][0]_i_2_n_0 ;
  wire \growth[34][0]_i_3_n_0 ;
  wire \growth[34][0]_i_4_n_0 ;
  wire \growth[34][1]_i_1_n_0 ;
  wire \growth[34][1]_i_2_n_0 ;
  wire \growth[34][1]_i_3_n_0 ;
  wire \growth[34][1]_i_4_n_0 ;
  wire \growth[35][0]_i_1_n_0 ;
  wire \growth[35][0]_i_2_n_0 ;
  wire \growth[35][0]_i_3_n_0 ;
  wire \growth[35][1]_i_1_n_0 ;
  wire \growth[35][1]_i_2_n_0 ;
  wire \growth[35][1]_i_3_n_0 ;
  wire \growth[35][1]_i_4_n_0 ;
  wire \growth[35][1]_i_5_n_0 ;
  wire \growth[36][0]_i_1_n_0 ;
  wire \growth[36][0]_i_2_n_0 ;
  wire \growth[36][0]_i_3_n_0 ;
  wire \growth[36][1]_i_1_n_0 ;
  wire \growth[36][1]_i_2_n_0 ;
  wire \growth[36][1]_i_3_n_0 ;
  wire \growth[36][1]_i_4_n_0 ;
  wire \growth[36][1]_i_5_n_0 ;
  wire \growth[37][0]_i_1_n_0 ;
  wire \growth[37][0]_i_2_n_0 ;
  wire \growth[37][0]_i_3_n_0 ;
  wire \growth[37][1]_i_1_n_0 ;
  wire \growth[37][1]_i_2_n_0 ;
  wire \growth[37][1]_i_3_n_0 ;
  wire \growth[37][1]_i_4_n_0 ;
  wire \growth[37][1]_i_5_n_0 ;
  wire \growth[38][0]_i_1_n_0 ;
  wire \growth[38][0]_i_2_n_0 ;
  wire \growth[38][0]_i_3_n_0 ;
  wire \growth[38][1]_i_1_n_0 ;
  wire \growth[38][1]_i_2_n_0 ;
  wire \growth[38][1]_i_3_n_0 ;
  wire \growth[38][1]_i_4_n_0 ;
  wire \growth[38][1]_i_5_n_0 ;
  wire \growth[39][0]_i_1_n_0 ;
  wire \growth[39][0]_i_2_n_0 ;
  wire \growth[39][0]_i_3_n_0 ;
  wire \growth[39][0]_i_4_n_0 ;
  wire \growth[39][0]_i_5_n_0 ;
  wire \growth[39][1]_i_1_n_0 ;
  wire \growth[39][1]_i_2_n_0 ;
  wire \growth[39][1]_i_3_n_0 ;
  wire \growth[39][1]_i_4_n_0 ;
  wire \growth[3][0]_i_1_n_0 ;
  wire \growth[3][0]_i_2_n_0 ;
  wire \growth[3][0]_i_3_n_0 ;
  wire \growth[3][0]_i_4_n_0 ;
  wire \growth[3][1]_i_1_n_0 ;
  wire \growth[3][1]_i_2_n_0 ;
  wire \growth[3][1]_i_3_n_0 ;
  wire \growth[3][1]_i_4_n_0 ;
  wire \growth[40][0]_i_1_n_0 ;
  wire \growth[40][0]_i_2_n_0 ;
  wire \growth[40][0]_i_3_n_0 ;
  wire \growth[40][0]_i_4_n_0 ;
  wire \growth[40][0]_i_5_n_0 ;
  wire \growth[40][1]_i_1_n_0 ;
  wire \growth[40][1]_i_2_n_0 ;
  wire \growth[40][1]_i_3_n_0 ;
  wire \growth[40][1]_i_4_n_0 ;
  wire \growth[40][1]_i_5_n_0 ;
  wire \growth[4][0]_i_1_n_0 ;
  wire \growth[4][0]_i_2_n_0 ;
  wire \growth[4][0]_i_3_n_0 ;
  wire \growth[4][0]_i_4_n_0 ;
  wire \growth[4][0]_i_5_n_0 ;
  wire \growth[4][1]_i_1_n_0 ;
  wire \growth[4][1]_i_2_n_0 ;
  wire \growth[4][1]_i_3_n_0 ;
  wire \growth[4][1]_i_4_n_0 ;
  wire \growth[5][0]_i_1_n_0 ;
  wire \growth[5][0]_i_2_n_0 ;
  wire \growth[5][1]_i_1_n_0 ;
  wire \growth[5][1]_i_2_n_0 ;
  wire \growth[5][1]_i_3_n_0 ;
  wire \growth[5][1]_i_4_n_0 ;
  wire \growth[6][0]_i_1_n_0 ;
  wire \growth[6][0]_i_2_n_0 ;
  wire \growth[6][0]_i_3_n_0 ;
  wire \growth[6][1]_i_1_n_0 ;
  wire \growth[6][1]_i_2_n_0 ;
  wire \growth[6][1]_i_3_n_0 ;
  wire \growth[6][1]_i_4_n_0 ;
  wire \growth[7][0]_i_1_n_0 ;
  wire \growth[7][0]_i_2_n_0 ;
  wire \growth[7][1]_i_1_n_0 ;
  wire \growth[7][1]_i_2_n_0 ;
  wire \growth[7][1]_i_3_n_0 ;
  wire \growth[7][1]_i_4_n_0 ;
  wire \growth[8][0]_i_1_n_0 ;
  wire \growth[8][0]_i_2_n_0 ;
  wire \growth[8][0]_i_3_n_0 ;
  wire \growth[8][1]_i_1_n_0 ;
  wire \growth[8][1]_i_2_n_0 ;
  wire \growth[8][1]_i_3_n_0 ;
  wire \growth[8][1]_i_4_n_0 ;
  wire \growth[8][1]_i_5_n_0 ;
  wire \growth[9][0]_i_1_n_0 ;
  wire \growth[9][0]_i_2_n_0 ;
  wire \growth[9][0]_i_3_n_0 ;
  wire \growth[9][0]_i_4_n_0 ;
  wire \growth[9][0]_i_5_n_0 ;
  wire \growth[9][1]_i_1_n_0 ;
  wire \growth[9][1]_i_2_n_0 ;
  wire \growth[9][1]_i_3_n_0 ;
  wire \growth[9][1]_i_4_n_0 ;
  wire [29:0]obs_active;
  wire [29:0]obs_busy;
  wire [179:0]obs_cid;
  wire [29:0]obs_defect;
  wire [40:0]obs_ecorr;
  wire [29:0]obs_grown;
  wire [81:0]obs_growth;
  wire [89:1]\^obs_ptr ;
  wire [29:0]obs_unrooted;
  wire [29:0]obs_whole;
  wire \ptr[0][1]_i_1_n_0 ;
  wire \ptr[0][1]_i_2_n_0 ;
  wire \ptr[10][0]_i_10_n_0 ;
  wire \ptr[10][0]_i_11_n_0 ;
  wire \ptr[10][0]_i_12_n_0 ;
  wire \ptr[10][0]_i_13_n_0 ;
  wire \ptr[10][0]_i_14_n_0 ;
  wire \ptr[10][0]_i_1_n_0 ;
  wire \ptr[10][0]_i_2_n_0 ;
  wire \ptr[10][0]_i_3_n_0 ;
  wire \ptr[10][0]_i_4_n_0 ;
  wire \ptr[10][0]_i_5_n_0 ;
  wire \ptr[10][0]_i_6_n_0 ;
  wire \ptr[10][0]_i_7_n_0 ;
  wire \ptr[10][0]_i_8_n_0 ;
  wire \ptr[10][0]_i_9_n_0 ;
  wire \ptr[10][1]_i_1_n_0 ;
  wire \ptr[11][0]_i_1_n_0 ;
  wire \ptr[11][0]_i_2_n_0 ;
  wire \ptr[11][0]_i_3_n_0 ;
  wire \ptr[11][1]_i_1_n_0 ;
  wire \ptr[11][1]_i_2_n_0 ;
  wire \ptr[11][1]_i_3_n_0 ;
  wire \ptr[11][1]_i_4_n_0 ;
  wire \ptr[11][1]_i_5_n_0 ;
  wire \ptr[11][1]_i_6_n_0 ;
  wire \ptr[11][1]_i_7_n_0 ;
  wire \ptr[11][1]_i_8_n_0 ;
  wire \ptr[11][1]_i_9_n_0 ;
  wire \ptr[12][0]_i_10_n_0 ;
  wire \ptr[12][0]_i_1_n_0 ;
  wire \ptr[12][0]_i_2_n_0 ;
  wire \ptr[12][0]_i_3_n_0 ;
  wire \ptr[12][0]_i_4_n_0 ;
  wire \ptr[12][0]_i_5_n_0 ;
  wire \ptr[12][0]_i_6_n_0 ;
  wire \ptr[12][0]_i_7_n_0 ;
  wire \ptr[12][0]_i_8_n_0 ;
  wire \ptr[12][0]_i_9_n_0 ;
  wire \ptr[12][1]_i_1_n_0 ;
  wire \ptr[13][0]_i_1_n_0 ;
  wire \ptr[13][0]_i_2_n_0 ;
  wire \ptr[13][0]_i_3_n_0 ;
  wire \ptr[13][0]_i_4_n_0 ;
  wire \ptr[13][0]_i_5_n_0 ;
  wire \ptr[13][1]_i_1_n_0 ;
  wire \ptr[13][1]_i_2_n_0 ;
  wire \ptr[13][1]_i_3_n_0 ;
  wire \ptr[13][1]_i_4_n_0 ;
  wire \ptr[13][1]_i_5_n_0 ;
  wire \ptr[14][0]_i_1_n_0 ;
  wire \ptr[14][1]_i_1_n_0 ;
  wire \ptr[14][2]_i_1_n_0 ;
  wire \ptr[14][2]_i_2_n_0 ;
  wire \ptr[14][2]_i_3_n_0 ;
  wire \ptr[14][2]_i_4_n_0 ;
  wire \ptr[14][2]_i_5_n_0 ;
  wire \ptr[15][0]_i_1_n_0 ;
  wire \ptr[15][0]_i_2_n_0 ;
  wire \ptr[15][0]_i_3_n_0 ;
  wire \ptr[15][1]_i_1_n_0 ;
  wire \ptr[15][1]_i_2_n_0 ;
  wire \ptr[15][1]_i_3_n_0 ;
  wire \ptr[15][1]_i_4_n_0 ;
  wire \ptr[15][1]_i_5_n_0 ;
  wire \ptr[15][2]_i_1_n_0 ;
  wire \ptr[16][0]_i_1_n_0 ;
  wire \ptr[16][0]_i_2_n_0 ;
  wire \ptr[16][0]_i_3_n_0 ;
  wire \ptr[16][0]_i_4_n_0 ;
  wire \ptr[16][1]_i_1_n_0 ;
  wire \ptr[16][1]_i_2_n_0 ;
  wire \ptr[16][1]_i_3_n_0 ;
  wire \ptr[16][1]_i_4_n_0 ;
  wire \ptr[16][1]_i_5_n_0 ;
  wire \ptr[16][2]_i_1_n_0 ;
  wire \ptr[17][0]_i_1_n_0 ;
  wire \ptr[17][1]_i_1_n_0 ;
  wire \ptr[17][2]_i_1_n_0 ;
  wire \ptr[17][2]_i_2_n_0 ;
  wire \ptr[17][2]_i_3_n_0 ;
  wire \ptr[17][2]_i_4_n_0 ;
  wire \ptr[18][0]_i_1_n_0 ;
  wire \ptr[18][0]_i_2_n_0 ;
  wire \ptr[18][0]_i_3_n_0 ;
  wire \ptr[18][0]_i_4_n_0 ;
  wire \ptr[18][0]_i_5_n_0 ;
  wire \ptr[18][1]_i_1_n_0 ;
  wire \ptr[18][1]_i_2_n_0 ;
  wire \ptr[18][1]_i_3_n_0 ;
  wire \ptr[18][1]_i_4_n_0 ;
  wire \ptr[18][1]_i_5_n_0 ;
  wire \ptr[18][2]_i_1_n_0 ;
  wire \ptr[19][0]_i_1_n_0 ;
  wire \ptr[19][0]_i_2_n_0 ;
  wire \ptr[19][0]_i_3_n_0 ;
  wire \ptr[19][1]_i_1_n_0 ;
  wire \ptr[19][1]_i_2_n_0 ;
  wire \ptr[19][1]_i_3_n_0 ;
  wire \ptr[19][1]_i_4_n_0 ;
  wire \ptr[19][2]_i_1_n_0 ;
  wire \ptr[19][2]_i_2_n_0 ;
  wire \ptr[19][2]_i_3_n_0 ;
  wire \ptr[19][2]_i_4_n_0 ;
  wire \ptr[19][2]_i_5_n_0 ;
  wire \ptr[19][2]_i_6_n_0 ;
  wire \ptr[19][2]_i_7_n_0 ;
  wire \ptr[19][2]_i_8_n_0 ;
  wire \ptr[1][0]_i_1_n_0 ;
  wire \ptr[20][0]_i_1_n_0 ;
  wire \ptr[20][0]_i_2_n_0 ;
  wire \ptr[20][0]_i_3_n_0 ;
  wire \ptr[20][0]_i_4_n_0 ;
  wire \ptr[20][1]_i_1_n_0 ;
  wire \ptr[20][1]_i_2_n_0 ;
  wire \ptr[20][1]_i_3_n_0 ;
  wire \ptr[20][1]_i_4_n_0 ;
  wire \ptr[20][1]_i_5_n_0 ;
  wire \ptr[20][2]_i_1_n_0 ;
  wire \ptr[20][2]_i_2_n_0 ;
  wire \ptr[20][2]_i_3_n_0 ;
  wire \ptr[20][2]_i_4_n_0 ;
  wire \ptr[20][2]_i_5_n_0 ;
  wire \ptr[20][2]_i_6_n_0 ;
  wire \ptr[20][2]_i_7_n_0 ;
  wire \ptr[21][0]_i_1_n_0 ;
  wire \ptr[21][0]_i_2_n_0 ;
  wire \ptr[21][0]_i_3_n_0 ;
  wire \ptr[21][0]_i_4_n_0 ;
  wire \ptr[21][0]_i_5_n_0 ;
  wire \ptr[21][0]_i_6_n_0 ;
  wire \ptr[21][0]_i_7_n_0 ;
  wire \ptr[21][0]_i_8_n_0 ;
  wire \ptr[21][0]_i_9_n_0 ;
  wire \ptr[21][1]_i_1_n_0 ;
  wire \ptr[21][1]_i_2_n_0 ;
  wire \ptr[21][1]_i_3_n_0 ;
  wire \ptr[21][1]_i_4_n_0 ;
  wire \ptr[21][1]_i_5_n_0 ;
  wire \ptr[21][2]_i_1_n_0 ;
  wire \ptr[21][2]_i_2_n_0 ;
  wire \ptr[21][2]_i_3_n_0 ;
  wire \ptr[21][2]_i_4_n_0 ;
  wire \ptr[21][2]_i_5_n_0 ;
  wire \ptr[21][2]_i_6_n_0 ;
  wire \ptr[21][2]_i_7_n_0 ;
  wire \ptr[21][2]_i_8_n_0 ;
  wire \ptr[22][0]_i_1_n_0 ;
  wire \ptr[22][1]_i_1_n_0 ;
  wire \ptr[22][1]_i_2_n_0 ;
  wire \ptr[22][1]_i_3_n_0 ;
  wire \ptr[22][1]_i_4_n_0 ;
  wire \ptr[22][1]_i_5_n_0 ;
  wire \ptr[22][2]_i_1_n_0 ;
  wire \ptr[23][0]_i_1_n_0 ;
  wire \ptr[23][0]_i_2_n_0 ;
  wire \ptr[23][0]_i_3_n_0 ;
  wire \ptr[23][0]_i_4_n_0 ;
  wire \ptr[23][0]_i_5_n_0 ;
  wire \ptr[23][1]_i_1_n_0 ;
  wire \ptr[23][1]_i_2_n_0 ;
  wire \ptr[23][1]_i_3_n_0 ;
  wire \ptr[23][1]_i_4_n_0 ;
  wire \ptr[23][1]_i_5_n_0 ;
  wire \ptr[23][2]_i_1_n_0 ;
  wire \ptr[24][0]_i_1_n_0 ;
  wire \ptr[24][0]_i_2_n_0 ;
  wire \ptr[24][0]_i_3_n_0 ;
  wire \ptr[24][0]_i_4_n_0 ;
  wire \ptr[24][1]_i_1_n_0 ;
  wire \ptr[24][1]_i_2_n_0 ;
  wire \ptr[24][1]_i_3_n_0 ;
  wire \ptr[24][1]_i_4_n_0 ;
  wire \ptr[24][2]_i_1_n_0 ;
  wire \ptr[25][0]_i_1_n_0 ;
  wire \ptr[25][0]_i_2_n_0 ;
  wire \ptr[25][0]_i_3_n_0 ;
  wire \ptr[25][0]_i_4_n_0 ;
  wire \ptr[25][0]_i_5_n_0 ;
  wire \ptr[25][0]_i_6_n_0 ;
  wire \ptr[25][0]_i_7_n_0 ;
  wire \ptr[25][0]_i_8_n_0 ;
  wire \ptr[25][0]_i_9_n_0 ;
  wire \ptr[25][1]_i_1_n_0 ;
  wire \ptr[25][1]_i_2_n_0 ;
  wire \ptr[25][1]_i_3_n_0 ;
  wire \ptr[25][1]_i_4_n_0 ;
  wire \ptr[25][1]_i_5_n_0 ;
  wire \ptr[25][2]_i_1_n_0 ;
  wire \ptr[25][2]_i_2_n_0 ;
  wire \ptr[25][2]_i_3_n_0 ;
  wire \ptr[25][2]_i_4_n_0 ;
  wire \ptr[25][2]_i_5_n_0 ;
  wire \ptr[25][2]_i_6_n_0 ;
  wire \ptr[26][0]_i_1_n_0 ;
  wire \ptr[26][0]_i_2_n_0 ;
  wire \ptr[26][0]_i_3_n_0 ;
  wire \ptr[26][0]_i_4_n_0 ;
  wire \ptr[26][0]_i_5_n_0 ;
  wire \ptr[26][1]_i_1_n_0 ;
  wire \ptr[26][1]_i_2_n_0 ;
  wire \ptr[26][1]_i_3_n_0 ;
  wire \ptr[26][1]_i_4_n_0 ;
  wire \ptr[26][1]_i_5_n_0 ;
  wire \ptr[26][2]_i_1_n_0 ;
  wire \ptr[26][2]_i_2_n_0 ;
  wire \ptr[26][2]_i_3_n_0 ;
  wire \ptr[26][2]_i_4_n_0 ;
  wire \ptr[27][0]_i_1_n_0 ;
  wire \ptr[27][0]_i_2_n_0 ;
  wire \ptr[27][0]_i_3_n_0 ;
  wire \ptr[27][0]_i_4_n_0 ;
  wire \ptr[27][1]_i_1_n_0 ;
  wire \ptr[27][1]_i_2_n_0 ;
  wire \ptr[27][1]_i_3_n_0 ;
  wire \ptr[27][2]_i_1_n_0 ;
  wire \ptr[28][0]_i_1_n_0 ;
  wire \ptr[28][0]_i_2_n_0 ;
  wire \ptr[28][0]_i_3_n_0 ;
  wire \ptr[28][1]_i_1_n_0 ;
  wire \ptr[28][1]_i_2_n_0 ;
  wire \ptr[28][1]_i_3_n_0 ;
  wire \ptr[28][1]_i_4_n_0 ;
  wire \ptr[28][1]_i_5_n_0 ;
  wire \ptr[28][2]_i_1_n_0 ;
  wire \ptr[28][2]_i_2_n_0 ;
  wire \ptr[28][2]_i_3_n_0 ;
  wire \ptr[28][2]_i_4_n_0 ;
  wire \ptr[28][2]_i_5_n_0 ;
  wire \ptr[29][0]_i_1_n_0 ;
  wire \ptr[29][0]_i_2_n_0 ;
  wire \ptr[29][0]_i_3_n_0 ;
  wire \ptr[29][0]_i_4_n_0 ;
  wire \ptr[29][0]_i_5_n_0 ;
  wire \ptr[29][1]_i_1_n_0 ;
  wire \ptr[29][1]_i_2_n_0 ;
  wire \ptr[29][1]_i_3_n_0 ;
  wire \ptr[29][1]_i_4_n_0 ;
  wire \ptr[29][1]_i_5_n_0 ;
  wire \ptr[29][2]_i_1_n_0 ;
  wire \ptr[2][1]_i_2_n_0 ;
  wire \ptr[2][1]_i_3_n_0 ;
  wire \ptr[3][0]_i_1_n_0 ;
  wire \ptr[4][1]_i_1_n_0 ;
  wire \ptr[4][1]_i_2_n_0 ;
  wire \ptr[4][1]_i_3_n_0 ;
  wire \ptr[5][0]_i_1_n_0 ;
  wire \ptr[5][0]_i_2_n_0 ;
  wire \ptr[5][0]_i_3_n_0 ;
  wire \ptr[6][1]_i_1_n_0 ;
  wire \ptr[6][1]_i_2_n_0 ;
  wire \ptr[6][1]_i_3_n_0 ;
  wire \ptr[7][0]_i_1_n_0 ;
  wire \ptr[7][0]_i_2_n_0 ;
  wire \ptr[7][0]_i_3_n_0 ;
  wire \ptr[8][1]_i_1_n_0 ;
  wire \ptr[8][1]_i_2_n_0 ;
  wire \ptr[8][1]_i_3_n_0 ;
  wire \ptr[9][0]_i_1_n_0 ;
  wire \ptr[9][0]_i_2_n_0 ;
  wire reset;
  wire [2:0]stage__0;
  wire [2:0]stage__1;
  wire [1:0]stage_reg;
  wire start;
  wire step_cnt;
  wire \step_cnt[0]_i_1_n_0 ;
  wire \step_cnt[0]_i_2_n_0 ;
  wire \step_cnt[1]_i_1_n_0 ;
  wire \step_cnt[1]_i_2_n_0 ;
  wire \step_cnt[2]_i_1_n_0 ;
  wire \step_cnt[2]_i_2_n_0 ;
  wire \step_cnt[3]_i_1_n_0 ;
  wire \step_cnt[3]_i_2_n_0 ;
  wire \step_cnt[4]_i_1_n_0 ;
  wire \step_cnt[4]_i_2_n_0 ;
  wire \step_cnt[5]_i_1_n_0 ;
  wire \step_cnt[5]_i_2_n_0 ;
  wire \step_cnt[6]_i_1_n_0 ;
  wire \step_cnt[6]_i_2_n_0 ;
  wire \step_cnt[7]_i_2_n_0 ;
  wire \step_cnt[7]_i_3_n_0 ;
  wire \step_cnt[7]_i_4_n_0 ;
  wire \step_cnt_reg_n_0_[0] ;
  wire \step_cnt_reg_n_0_[1] ;
  wire \step_cnt_reg_n_0_[2] ;
  wire \step_cnt_reg_n_0_[3] ;
  wire \step_cnt_reg_n_0_[4] ;
  wire \step_cnt_reg_n_0_[5] ;
  wire \step_cnt_reg_n_0_[6] ;
  wire \step_cnt_reg_n_0_[7] ;
  wire [3:0]syndrome;
  wire \unrooted[0]_i_1_n_0 ;
  wire \unrooted[10]_i_1_n_0 ;
  wire \unrooted[11]_i_1_n_0 ;
  wire \unrooted[12]_i_1_n_0 ;
  wire \unrooted[13]_i_1_n_0 ;
  wire \unrooted[14]_i_1_n_0 ;
  wire \unrooted[15]_i_1_n_0 ;
  wire \unrooted[16]_i_1_n_0 ;
  wire \unrooted[17]_i_1_n_0 ;
  wire \unrooted[18]_i_1_n_0 ;
  wire \unrooted[19]_i_1_n_0 ;
  wire \unrooted[1]_i_1_n_0 ;
  wire \unrooted[20]_i_1_n_0 ;
  wire \unrooted[21]_i_1_n_0 ;
  wire \unrooted[22]_i_1_n_0 ;
  wire \unrooted[23]_i_1_n_0 ;
  wire \unrooted[24]_i_1_n_0 ;
  wire \unrooted[25]_i_1_n_0 ;
  wire \unrooted[26]_i_1_n_0 ;
  wire \unrooted[27]_i_1_n_0 ;
  wire \unrooted[28]_i_1_n_0 ;
  wire \unrooted[29]_i_1_n_0 ;
  wire \unrooted[2]_i_1_n_0 ;
  wire \unrooted[3]_i_1_n_0 ;
  wire \unrooted[4]_i_1_n_0 ;
  wire \unrooted[5]_i_1_n_0 ;
  wire \unrooted[6]_i_1_n_0 ;
  wire \unrooted[7]_i_1_n_0 ;
  wire \unrooted[8]_i_1_n_0 ;
  wire \unrooted[9]_i_1_n_0 ;
  wire whole125_out;
  wire whole129_out;
  wire whole137_out;
  wire whole143_out;
  wire whole151_out;
  wire whole157_out;
  wire whole163_out;
  wire whole169_out;
  wire whole175_out;
  wire whole179_out;
  wire whole185_out;
  wire whole191_out;
  wire whole197_out;
  wire whole201_out;
  wire whole207_out;
  wire whole213_out;
  wire whole219_out;
  wire whole225_out;
  wire whole235_out;
  wire whole239_out;
  wire whole243_out;
  wire whole249_out;
  wire whole259_out;
  wire whole261_out;
  wire \whole[0]_i_1_n_0 ;
  wire \whole[10]_i_1_n_0 ;
  wire \whole[11]_i_1_n_0 ;
  wire \whole[12]_i_1_n_0 ;
  wire \whole[13]_i_1_n_0 ;
  wire \whole[14]_i_1_n_0 ;
  wire \whole[14]_i_2_n_0 ;
  wire \whole[15]_i_1_n_0 ;
  wire \whole[15]_i_2_n_0 ;
  wire \whole[16]_i_1_n_0 ;
  wire \whole[16]_i_2_n_0 ;
  wire \whole[17]_i_1_n_0 ;
  wire \whole[17]_i_2_n_0 ;
  wire \whole[18]_i_1_n_0 ;
  wire \whole[18]_i_2_n_0 ;
  wire \whole[19]_i_1_n_0 ;
  wire \whole[19]_i_2_n_0 ;
  wire \whole[1]_i_1_n_0 ;
  wire \whole[20]_i_1_n_0 ;
  wire \whole[20]_i_2_n_0 ;
  wire \whole[21]_i_1_n_0 ;
  wire \whole[21]_i_2_n_0 ;
  wire \whole[22]_i_1_n_0 ;
  wire \whole[22]_i_2_n_0 ;
  wire \whole[23]_i_1_n_0 ;
  wire \whole[23]_i_2_n_0 ;
  wire \whole[24]_i_1_n_0 ;
  wire \whole[24]_i_2_n_0 ;
  wire \whole[25]_i_1_n_0 ;
  wire \whole[25]_i_2_n_0 ;
  wire \whole[26]_i_1_n_0 ;
  wire \whole[26]_i_2_n_0 ;
  wire \whole[27]_i_1_n_0 ;
  wire \whole[27]_i_2_n_0 ;
  wire \whole[28]_i_1_n_0 ;
  wire \whole[28]_i_2_n_0 ;
  wire \whole[29]_i_1_n_0 ;
  wire \whole[29]_i_2_n_0 ;
  wire \whole[2]_i_1_n_0 ;
  wire \whole[2]_i_2_n_0 ;
  wire \whole[3]_i_1_n_0 ;
  wire \whole[3]_i_2_n_0 ;
  wire \whole[4]_i_1_n_0 ;
  wire \whole[4]_i_2_n_0 ;
  wire \whole[5]_i_1_n_0 ;
  wire \whole[5]_i_2_n_0 ;
  wire \whole[6]_i_1_n_0 ;
  wire \whole[6]_i_2_n_0 ;
  wire \whole[7]_i_1_n_0 ;
  wire \whole[7]_i_2_n_0 ;
  wire \whole[8]_i_1_n_0 ;
  wire \whole[8]_i_2_n_0 ;
  wire \whole[9]_i_1_n_0 ;
  wire \whole[9]_i_2_n_0 ;

  assign obs_ptr[89:42] = \^obs_ptr [89:42];
  assign obs_ptr[41] = \<const0> ;
  assign obs_ptr[40:39] = \^obs_ptr [40:39];
  assign obs_ptr[38] = \<const0> ;
  assign obs_ptr[37:36] = \^obs_ptr [37:36];
  assign obs_ptr[35] = \<const0> ;
  assign obs_ptr[34:33] = \^obs_ptr [34:33];
  assign obs_ptr[32] = \<const0> ;
  assign obs_ptr[31:30] = \^obs_ptr [31:30];
  assign obs_ptr[29] = \<const0> ;
  assign obs_ptr[28] = \<const0> ;
  assign obs_ptr[27] = \^obs_ptr [27];
  assign obs_ptr[26] = \<const0> ;
  assign obs_ptr[25] = \^obs_ptr [25];
  assign obs_ptr[24] = \<const0> ;
  assign obs_ptr[23] = \<const0> ;
  assign obs_ptr[22] = \<const0> ;
  assign obs_ptr[21] = \^obs_ptr [21];
  assign obs_ptr[20] = \<const0> ;
  assign obs_ptr[19] = \^obs_ptr [19];
  assign obs_ptr[18] = \<const0> ;
  assign obs_ptr[17] = \<const0> ;
  assign obs_ptr[16] = \<const0> ;
  assign obs_ptr[15] = \^obs_ptr [15];
  assign obs_ptr[14] = \<const0> ;
  assign obs_ptr[13] = \^obs_ptr [13];
  assign obs_ptr[12] = \<const0> ;
  assign obs_ptr[11] = \<const0> ;
  assign obs_ptr[10] = \<const0> ;
  assign obs_ptr[9] = \^obs_ptr [9];
  assign obs_ptr[8] = \<const0> ;
  assign obs_ptr[7] = \^obs_ptr [7];
  assign obs_ptr[6] = \<const0> ;
  assign obs_ptr[5] = \<const0> ;
  assign obs_ptr[4] = \<const0> ;
  assign obs_ptr[3] = \^obs_ptr [3];
  assign obs_ptr[2] = \<const0> ;
  assign obs_ptr[1] = \^obs_ptr [1];
  assign obs_ptr[0] = \<const0> ;
  (* SOFT_HLUTNM = "soft_lutpair166" *) 
  LUT3 #(
    .INIT(8'h4A)) 
    \FSM_sequential_stage[0]_i_1 
       (.I0(stage__0[2]),
        .I1(stage__0[1]),
        .I2(stage__0[0]),
        .O(stage__1[0]));
  LUT6 #(
    .INIT(64'h5555555455555555)) 
    \FSM_sequential_stage[1]_i_1 
       (.I0(stage__0[1]),
        .I1(done_i_7_n_0),
        .I2(\FSM_sequential_stage[1]_i_2_n_0 ),
        .I3(done_i_4_n_0),
        .I4(done_i_3_n_0),
        .I5(stage__0[0]),
        .O(\FSM_sequential_stage[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFD0)) 
    \FSM_sequential_stage[1]_i_2 
       (.I0(done_i_9_n_0),
        .I1(done_i_8_n_0),
        .I2(\cid[13][5]_i_1_n_0 ),
        .I3(\busy[26]_i_1_n_0 ),
        .I4(\FSM_sequential_stage[1]_i_3_n_0 ),
        .I5(done_i_5_n_0),
        .O(\FSM_sequential_stage[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFBBFAAAAAAAA)) 
    \FSM_sequential_stage[1]_i_3 
       (.I0(\busy[27]_i_1_n_0 ),
        .I1(\defect[28]_i_3_n_0 ),
        .I2(obs_active[28]),
        .I3(\active[28]_i_2_n_0 ),
        .I4(\FSM_sequential_stage[1]_i_4_n_0 ),
        .I5(\cid[13][5]_i_1_n_0 ),
        .O(\FSM_sequential_stage[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF4F4F4F4F4FFF4F4)) 
    \FSM_sequential_stage[1]_i_4 
       (.I0(\defect[28]_i_2_n_0 ),
        .I1(obs_defect[28]),
        .I2(\FSM_sequential_stage[1]_i_5_n_0 ),
        .I3(\cid[28][4]_i_5_n_0 ),
        .I4(\cid[28][5]_i_5_n_0 ),
        .I5(\cid[28][3]_i_4_n_0 ),
        .O(\FSM_sequential_stage[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEEEEEEEFEEEEE)) 
    \FSM_sequential_stage[1]_i_5 
       (.I0(\ptr[28][2]_i_4_n_0 ),
        .I1(\FSM_sequential_stage[1]_i_6_n_0 ),
        .I2(obs_grown[24]),
        .I3(\grown[9]_i_5_n_0 ),
        .I4(\cid[28][5]_i_5_n_0 ),
        .I5(\grown[28]_i_6_n_0 ),
        .O(\FSM_sequential_stage[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFF20FFFFFF20FF20)) 
    \FSM_sequential_stage[1]_i_6 
       (.I0(\cid[28][5]_i_5_n_0 ),
        .I1(obs_unrooted[28]),
        .I2(\cid[28][3]_i_4_n_0 ),
        .I3(\cid[28][3]_i_2_n_0 ),
        .I4(obs_grown[28]),
        .I5(\FSM_sequential_stage[1]_i_7_n_0 ),
        .O(\FSM_sequential_stage[1]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FF080808)) 
    \FSM_sequential_stage[1]_i_7 
       (.I0(obs_grown[27]),
        .I1(obs_growth[73]),
        .I2(obs_growth[72]),
        .I3(\cid[28][5]_i_9_n_0 ),
        .I4(obs_grown[29]),
        .I5(\grown[9]_i_5_n_0 ),
        .O(\FSM_sequential_stage[1]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h5555555455555555)) 
    \FSM_sequential_stage[1]_rep_i_1 
       (.I0(stage__0[1]),
        .I1(done_i_7_n_0),
        .I2(\FSM_sequential_stage[1]_i_2_n_0 ),
        .I3(done_i_4_n_0),
        .I4(done_i_3_n_0),
        .I5(stage__0[0]),
        .O(\FSM_sequential_stage[1]_rep_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h5555555455555555)) 
    \FSM_sequential_stage[1]_rep_i_1__0 
       (.I0(stage__0[1]),
        .I1(done_i_7_n_0),
        .I2(\FSM_sequential_stage[1]_i_2_n_0 ),
        .I3(done_i_4_n_0),
        .I4(done_i_3_n_0),
        .I5(stage__0[0]),
        .O(\FSM_sequential_stage[1]_rep_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h5555555455555555)) 
    \FSM_sequential_stage[1]_rep_i_1__1 
       (.I0(stage__0[1]),
        .I1(done_i_7_n_0),
        .I2(\FSM_sequential_stage[1]_i_2_n_0 ),
        .I3(done_i_4_n_0),
        .I4(done_i_3_n_0),
        .I5(stage__0[0]),
        .O(\FSM_sequential_stage[1]_rep_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h5555555455555555)) 
    \FSM_sequential_stage[1]_rep_i_1__2 
       (.I0(stage__0[1]),
        .I1(done_i_7_n_0),
        .I2(\FSM_sequential_stage[1]_i_2_n_0 ),
        .I3(done_i_4_n_0),
        .I4(done_i_3_n_0),
        .I5(stage__0[0]),
        .O(\FSM_sequential_stage[1]_rep_i_1__2_n_0 ));
  LUT6 #(
    .INIT(64'h5555555455555555)) 
    \FSM_sequential_stage[1]_rep_i_1__3 
       (.I0(stage__0[1]),
        .I1(done_i_7_n_0),
        .I2(\FSM_sequential_stage[1]_i_2_n_0 ),
        .I3(done_i_4_n_0),
        .I4(done_i_3_n_0),
        .I5(stage__0[0]),
        .O(\FSM_sequential_stage[1]_rep_i_1__3_n_0 ));
  LUT6 #(
    .INIT(64'h5555555455555555)) 
    \FSM_sequential_stage[1]_rep_i_1__4 
       (.I0(stage__0[1]),
        .I1(done_i_7_n_0),
        .I2(\FSM_sequential_stage[1]_i_2_n_0 ),
        .I3(done_i_4_n_0),
        .I4(done_i_3_n_0),
        .I5(stage__0[0]),
        .O(\FSM_sequential_stage[1]_rep_i_1__4_n_0 ));
  LUT6 #(
    .INIT(64'hAAAFAAAFBBBFAAAE)) 
    \FSM_sequential_stage[2]_i_1 
       (.I0(stage__0[1]),
        .I1(stage__0[2]),
        .I2(\FSM_sequential_stage[2]_i_3_n_0 ),
        .I3(done_i_7_n_0),
        .I4(start),
        .I5(stage__0[0]),
        .O(\FSM_sequential_stage[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h5555A959AAAAA959)) 
    \FSM_sequential_stage[2]_i_10 
       (.I0(obs_active[23]),
        .I1(\active[23]_i_4_n_0 ),
        .I2(\FSM_sequential_stage[2]_i_18_n_0 ),
        .I3(\active[23]_i_3_n_0 ),
        .I4(\FSM_sequential_stage[2]_i_19_n_0 ),
        .I5(obs_defect[23]),
        .O(\FSM_sequential_stage[2]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hBEBEBFBEEFEFEEEF)) 
    \FSM_sequential_stage[2]_i_11 
       (.I0(\FSM_sequential_stage[2]_i_20_n_0 ),
        .I1(obs_defect[24]),
        .I2(\FSM_sequential_stage[2]_i_21_n_0 ),
        .I3(\active[24]_i_3_n_0 ),
        .I4(\active[24]_i_4_n_0 ),
        .I5(obs_active[24]),
        .O(\FSM_sequential_stage[2]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF6996)) 
    \FSM_sequential_stage[2]_i_12 
       (.I0(\ecorr[19]_i_2_n_0 ),
        .I1(\ecorr[18]_i_2_n_0 ),
        .I2(\ecorr[20]_i_3_n_0 ),
        .I3(\ecorr[27]_i_2_n_0 ),
        .I4(\busy[19]_i_2_n_0 ),
        .O(\FSM_sequential_stage[2]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT5 #(
    .INIT(32'hAA595959)) 
    \FSM_sequential_stage[2]_i_13 
       (.I0(obs_active[20]),
        .I1(\active[20]_i_4_n_0 ),
        .I2(\active[20]_i_3_n_0 ),
        .I3(obs_defect[20]),
        .I4(\defect[20]_i_2_n_0 ),
        .O(\FSM_sequential_stage[2]_i_13_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF6996)) 
    \FSM_sequential_stage[2]_i_14 
       (.I0(\ecorr[21]_i_2_n_0 ),
        .I1(\ecorr[20]_i_2_n_0 ),
        .I2(\ecorr[22]_i_2_n_0 ),
        .I3(\ecorr[29]_i_2_n_0 ),
        .I4(\busy[20]_i_2_n_0 ),
        .O(\FSM_sequential_stage[2]_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair364" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \FSM_sequential_stage[2]_i_15 
       (.I0(\ptr[21][0]_i_2_n_0 ),
        .I1(\ptr[21][2]_i_2_n_0 ),
        .I2(\ptr[21][1]_i_2_n_0 ),
        .O(\FSM_sequential_stage[2]_i_15_n_0 ));
  LUT5 #(
    .INIT(32'hFFEFEEEE)) 
    \FSM_sequential_stage[2]_i_16 
       (.I0(\cid[25][4]_i_2_n_0 ),
        .I1(\busy[21]_i_4_n_0 ),
        .I2(\FSM_sequential_stage[2]_i_22_n_0 ),
        .I3(\cid[21][4]_i_6_n_0 ),
        .I4(\cid[21][5]_i_4_n_0 ),
        .O(\FSM_sequential_stage[2]_i_16_n_0 ));
  LUT4 #(
    .INIT(16'hDFFF)) 
    \FSM_sequential_stage[2]_i_17 
       (.I0(\busy[22]_i_7_n_0 ),
        .I1(\busy[22]_i_6_n_0 ),
        .I2(\busy[22]_i_5_n_0 ),
        .I3(\busy[22]_i_4_n_0 ),
        .O(\FSM_sequential_stage[2]_i_17_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \FSM_sequential_stage[2]_i_18 
       (.I0(\defect[23]_i_4_n_0 ),
        .I1(\ptr[23][1]_i_2_n_0 ),
        .O(\FSM_sequential_stage[2]_i_18_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair236" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \FSM_sequential_stage[2]_i_19 
       (.I0(\ptr[23][1]_i_2_n_0 ),
        .I1(\ptr[23][0]_i_2_n_0 ),
        .I2(\defect[23]_i_4_n_0 ),
        .O(\FSM_sequential_stage[2]_i_19_n_0 ));
  LUT3 #(
    .INIT(8'h61)) 
    \FSM_sequential_stage[2]_i_2 
       (.I0(stage__0[0]),
        .I1(stage__0[1]),
        .I2(stage__0[2]),
        .O(stage__1[2]));
  LUT6 #(
    .INIT(64'hFFFFEAEEFFFFFFFF)) 
    \FSM_sequential_stage[2]_i_20 
       (.I0(\busy[24]_i_5_n_0 ),
        .I1(\cid[24][2]_i_8_n_0 ),
        .I2(\cid[24][2]_i_9_n_0 ),
        .I3(\FSM_sequential_stage[2]_i_23_n_0 ),
        .I4(\busy[24]_i_8_n_0 ),
        .I5(\busy[24]_i_3_n_0 ),
        .O(\FSM_sequential_stage[2]_i_20_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \FSM_sequential_stage[2]_i_21 
       (.I0(\ptr[24][1]_i_2_n_0 ),
        .I1(\ptr[24][0]_i_2_n_0 ),
        .I2(\defect[24]_i_2_n_0 ),
        .O(\FSM_sequential_stage[2]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFFFF7F)) 
    \FSM_sequential_stage[2]_i_22 
       (.I0(\grown[21]_i_4_n_0 ),
        .I1(obs_grown[17]),
        .I2(stage__0[2]),
        .I3(stage__0[0]),
        .I4(\FSM_sequential_stage_reg[1]_rep__4_n_0 ),
        .I5(\cid[21][3]_i_7_n_0 ),
        .O(\FSM_sequential_stage[2]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hA2AAAAAAA2AAA2AA)) 
    \FSM_sequential_stage[2]_i_23 
       (.I0(\grown[24]_i_9_n_0 ),
        .I1(obs_grown[28]),
        .I2(\grown[9]_i_5_n_0 ),
        .I3(\grown[24]_i_8_n_0 ),
        .I4(\grown[24]_i_7_n_0 ),
        .I5(obs_grown[25]),
        .O(\FSM_sequential_stage[2]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \FSM_sequential_stage[2]_i_3 
       (.I0(\FSM_sequential_stage[2]_i_4_n_0 ),
        .I1(\FSM_sequential_stage[2]_i_5_n_0 ),
        .I2(\busy[18]_i_1_n_0 ),
        .I3(\busy[17]_i_1_n_0 ),
        .I4(\FSM_sequential_stage[2]_i_6_n_0 ),
        .I5(\FSM_sequential_stage[1]_i_2_n_0 ),
        .O(\FSM_sequential_stage[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFDDF00000000)) 
    \FSM_sequential_stage[2]_i_4 
       (.I0(\FSM_sequential_stage[2]_i_7_n_0 ),
        .I1(\FSM_sequential_stage[2]_i_8_n_0 ),
        .I2(\active[22]_i_2_n_0 ),
        .I3(obs_active[22]),
        .I4(\FSM_sequential_stage[2]_i_9_n_0 ),
        .I5(\cid[13][5]_i_1_n_0 ),
        .O(\FSM_sequential_stage[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFDFF00000000)) 
    \FSM_sequential_stage[2]_i_5 
       (.I0(\defect[23]_i_2_n_0 ),
        .I1(\FSM_sequential_stage[2]_i_10_n_0 ),
        .I2(\busy[23]_i_2_n_0 ),
        .I3(\defect[24]_i_3_n_0 ),
        .I4(\FSM_sequential_stage[2]_i_11_n_0 ),
        .I5(\cid[13][5]_i_1_n_0 ),
        .O(\FSM_sequential_stage[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF9FF00000000)) 
    \FSM_sequential_stage[2]_i_6 
       (.I0(\active[19]_i_2_n_0 ),
        .I1(obs_active[19]),
        .I2(\FSM_sequential_stage[2]_i_12_n_0 ),
        .I3(\FSM_sequential_stage[2]_i_13_n_0 ),
        .I4(\FSM_sequential_stage[2]_i_14_n_0 ),
        .I5(\cid[13][5]_i_1_n_0 ),
        .O(\FSM_sequential_stage[2]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAAAA999555559995)) 
    \FSM_sequential_stage[2]_i_7 
       (.I0(obs_active[21]),
        .I1(\active[21]_i_3_n_0 ),
        .I2(obs_active[5]),
        .I3(\FSM_sequential_stage[2]_i_15_n_0 ),
        .I4(\defect[21]_i_2_n_0 ),
        .I5(obs_defect[21]),
        .O(\FSM_sequential_stage[2]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFF96FF96FFFFFF96)) 
    \FSM_sequential_stage[2]_i_8 
       (.I0(\ecorr[22]_i_3_n_0 ),
        .I1(\ecorr[24]_i_3_n_0 ),
        .I2(\ecorr[32]_i_3_n_0 ),
        .I3(\FSM_sequential_stage[2]_i_16_n_0 ),
        .I4(obs_defect[21]),
        .I5(\defect[21]_i_2_n_0 ),
        .O(\FSM_sequential_stage[2]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFF96FF96FFFFFF96)) 
    \FSM_sequential_stage[2]_i_9 
       (.I0(\ecorr[25]_i_3_n_0 ),
        .I1(\ecorr[33]_i_2_n_0 ),
        .I2(\ecorr[26]_i_3_n_0 ),
        .I3(\FSM_sequential_stage[2]_i_17_n_0 ),
        .I4(obs_defect[22]),
        .I5(\busy[22]_i_3_n_0 ),
        .O(\FSM_sequential_stage[2]_i_9_n_0 ));
  (* FSM_ENCODED_STATES = "ST_DROP:110,ST_GW:101,ST_MW:100,ST_GH:011,ST_MH:001,ST_IDLE:000,iSTATE:010" *) 
  FDRE \FSM_sequential_stage_reg[0] 
       (.C(clk),
        .CE(\FSM_sequential_stage[2]_i_1_n_0 ),
        .D(stage__1[0]),
        .Q(stage__0[0]),
        .R(reset));
  (* FSM_ENCODED_STATES = "ST_DROP:110,ST_GW:101,ST_MW:100,ST_GH:011,ST_MH:001,ST_IDLE:000,iSTATE:010" *) 
  (* ORIG_CELL_NAME = "FSM_sequential_stage_reg[1]" *) 
  FDRE \FSM_sequential_stage_reg[1] 
       (.C(clk),
        .CE(\FSM_sequential_stage[2]_i_1_n_0 ),
        .D(\FSM_sequential_stage[1]_i_1_n_0 ),
        .Q(stage__0[1]),
        .R(reset));
  (* FSM_ENCODED_STATES = "ST_DROP:110,ST_GW:101,ST_MW:100,ST_GH:011,ST_MH:001,ST_IDLE:000,iSTATE:010" *) 
  (* ORIG_CELL_NAME = "FSM_sequential_stage_reg[1]" *) 
  FDRE \FSM_sequential_stage_reg[1]_rep 
       (.C(clk),
        .CE(\FSM_sequential_stage[2]_i_1_n_0 ),
        .D(\FSM_sequential_stage[1]_rep_i_1_n_0 ),
        .Q(\FSM_sequential_stage_reg[1]_rep_n_0 ),
        .R(reset));
  (* FSM_ENCODED_STATES = "ST_DROP:110,ST_GW:101,ST_MW:100,ST_GH:011,ST_MH:001,ST_IDLE:000,iSTATE:010" *) 
  (* ORIG_CELL_NAME = "FSM_sequential_stage_reg[1]" *) 
  FDRE \FSM_sequential_stage_reg[1]_rep__0 
       (.C(clk),
        .CE(\FSM_sequential_stage[2]_i_1_n_0 ),
        .D(\FSM_sequential_stage[1]_rep_i_1__0_n_0 ),
        .Q(\FSM_sequential_stage_reg[1]_rep__0_n_0 ),
        .R(reset));
  (* FSM_ENCODED_STATES = "ST_DROP:110,ST_GW:101,ST_MW:100,ST_GH:011,ST_MH:001,ST_IDLE:000,iSTATE:010" *) 
  (* ORIG_CELL_NAME = "FSM_sequential_stage_reg[1]" *) 
  FDRE \FSM_sequential_stage_reg[1]_rep__1 
       (.C(clk),
        .CE(\FSM_sequential_stage[2]_i_1_n_0 ),
        .D(\FSM_sequential_stage[1]_rep_i_1__1_n_0 ),
        .Q(\FSM_sequential_stage_reg[1]_rep__1_n_0 ),
        .R(reset));
  (* FSM_ENCODED_STATES = "ST_DROP:110,ST_GW:101,ST_MW:100,ST_GH:011,ST_MH:001,ST_IDLE:000,iSTATE:010" *) 
  (* ORIG_CELL_NAME = "FSM_sequential_stage_reg[1]" *) 
  FDRE \FSM_sequential_stage_reg[1]_rep__2 
       (.C(clk),
        .CE(\FSM_sequential_stage[2]_i_1_n_0 ),
        .D(\FSM_sequential_stage[1]_rep_i_1__2_n_0 ),
        .Q(\FSM_sequential_stage_reg[1]_rep__2_n_0 ),
        .R(reset));
  (* FSM_ENCODED_STATES = "ST_DROP:110,ST_GW:101,ST_MW:100,ST_GH:011,ST_MH:001,ST_IDLE:000,iSTATE:010" *) 
  (* ORIG_CELL_NAME = "FSM_sequential_stage_reg[1]" *) 
  FDRE \FSM_sequential_stage_reg[1]_rep__3 
       (.C(clk),
        .CE(\FSM_sequential_stage[2]_i_1_n_0 ),
        .D(\FSM_sequential_stage[1]_rep_i_1__3_n_0 ),
        .Q(\FSM_sequential_stage_reg[1]_rep__3_n_0 ),
        .R(reset));
  (* FSM_ENCODED_STATES = "ST_DROP:110,ST_GW:101,ST_MW:100,ST_GH:011,ST_MH:001,ST_IDLE:000,iSTATE:010" *) 
  (* ORIG_CELL_NAME = "FSM_sequential_stage_reg[1]" *) 
  FDRE \FSM_sequential_stage_reg[1]_rep__4 
       (.C(clk),
        .CE(\FSM_sequential_stage[2]_i_1_n_0 ),
        .D(\FSM_sequential_stage[1]_rep_i_1__4_n_0 ),
        .Q(\FSM_sequential_stage_reg[1]_rep__4_n_0 ),
        .R(reset));
  (* FSM_ENCODED_STATES = "ST_DROP:110,ST_GW:101,ST_MW:100,ST_GH:011,ST_MH:001,ST_IDLE:000,iSTATE:010" *) 
  FDRE \FSM_sequential_stage_reg[2] 
       (.C(clk),
        .CE(\FSM_sequential_stage[2]_i_1_n_0 ),
        .D(stage__1[2]),
        .Q(stage__0[2]),
        .R(reset));
  GND GND
       (.G(\<const0> ));
  (* SOFT_HLUTNM = "soft_lutpair250" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \active[0]_i_1 
       (.I0(\active[0]_i_2_n_0 ),
        .I1(\FSM_sequential_stage_reg[1]_rep__1_n_0 ),
        .O(\c_active[0] ));
  (* SOFT_HLUTNM = "soft_lutpair394" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \active[0]_i_2 
       (.I0(obs_active[10]),
        .I1(\ptr[0][1]_i_2_n_0 ),
        .O(\active[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair332" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \active[10]_i_1 
       (.I0(\FSM_sequential_stage_reg[1]_rep__1_n_0 ),
        .I1(\active[10]_i_2_n_0 ),
        .O(\active[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0F0033550FFF3355)) 
    \active[10]_i_2 
       (.I0(obs_active[11]),
        .I1(obs_active[14]),
        .I2(obs_active[0]),
        .I3(\ptr[10][0]_i_1_n_0 ),
        .I4(\defect[10]_i_2_n_0 ),
        .I5(obs_defect[10]),
        .O(\active[10]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair385" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \active[11]_i_1 
       (.I0(\FSM_sequential_stage_reg[1]_rep__2_n_0 ),
        .I1(\active[11]_i_2_n_0 ),
        .O(\active[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h05F5303005F53F3F)) 
    \active[11]_i_2 
       (.I0(obs_active[10]),
        .I1(obs_active[12]),
        .I2(\ptr[11][1]_i_1_n_0 ),
        .I3(obs_active[15]),
        .I4(\ptr[11][0]_i_1_n_0 ),
        .I5(obs_defect[11]),
        .O(\active[11]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair392" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \active[12]_i_1 
       (.I0(\FSM_sequential_stage_reg[1]_rep__3_n_0 ),
        .I1(\active[12]_i_2_n_0 ),
        .O(\active[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0434C4F40737C7F7)) 
    \active[12]_i_2 
       (.I0(obs_defect[12]),
        .I1(\defect[12]_i_2_n_0 ),
        .I2(\ptr[12][0]_i_1_n_0 ),
        .I3(obs_active[16]),
        .I4(obs_active[11]),
        .I5(obs_active[13]),
        .O(\active[12]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \active[13]_i_1 
       (.I0(\FSM_sequential_stage_reg[1]_rep__3_n_0 ),
        .I1(\active[13]_i_2_n_0 ),
        .O(\active[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h404C707C434F737F)) 
    \active[13]_i_2 
       (.I0(obs_defect[13]),
        .I1(\ptr[13][1]_i_2_n_0 ),
        .I2(\ptr[13][0]_i_2_n_0 ),
        .I3(obs_active[12]),
        .I4(obs_active[1]),
        .I5(obs_active[17]),
        .O(\active[13]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair331" *) 
  LUT3 #(
    .INIT(8'hC5)) 
    \active[14]_i_1 
       (.I0(\active[14]_i_2_n_0 ),
        .I1(obs_active[10]),
        .I2(\FSM_sequential_stage_reg[1]_rep__1_n_0 ),
        .O(\c_active[14] ));
  LUT6 #(
    .INIT(64'h00020002FDFF0002)) 
    \active[14]_i_2 
       (.I0(\defect[14]_i_3_n_0 ),
        .I1(\ptr[14][2]_i_2_n_0 ),
        .I2(\defect[14]_i_2_n_0 ),
        .I3(obs_defect[14]),
        .I4(\active[14]_i_3_n_0 ),
        .I5(\active[14]_i_4_n_0 ),
        .O(\active[14]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hFF53FFFF)) 
    \active[14]_i_3 
       (.I0(obs_active[15]),
        .I1(obs_active[18]),
        .I2(\defect[14]_i_3_n_0 ),
        .I3(\ptr[14][2]_i_2_n_0 ),
        .I4(\defect[14]_i_2_n_0 ),
        .O(\active[14]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hCCBF0080)) 
    \active[14]_i_4 
       (.I0(obs_active[10]),
        .I1(\ptr[14][2]_i_2_n_0 ),
        .I2(\defect[14]_i_3_n_0 ),
        .I3(\defect[14]_i_2_n_0 ),
        .I4(obs_active[2]),
        .O(\active[14]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair337" *) 
  LUT3 #(
    .INIT(8'hC5)) 
    \active[15]_i_1 
       (.I0(\active[15]_i_2_n_0 ),
        .I1(obs_active[11]),
        .I2(\FSM_sequential_stage_reg[1]_rep__3_n_0 ),
        .O(\c_active[15] ));
  LUT6 #(
    .INIT(64'hCFC5CFF5C0C5C005)) 
    \active[15]_i_2 
       (.I0(obs_defect[15]),
        .I1(\active[15]_i_3_n_0 ),
        .I2(\defect[15]_i_3_n_0 ),
        .I3(\defect[15]_i_2_n_0 ),
        .I4(\active[15]_i_4_n_0 ),
        .I5(\active[15]_i_5_n_0 ),
        .O(\active[15]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'h0014FFD7)) 
    \active[15]_i_3 
       (.I0(obs_active[16]),
        .I1(\defect[15]_i_2_n_0 ),
        .I2(\ptr[15][1]_i_2_n_0 ),
        .I3(\ptr[15][0]_i_2_n_0 ),
        .I4(obs_active[14]),
        .O(\active[15]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \active[15]_i_4 
       (.I0(\ptr[15][1]_i_2_n_0 ),
        .I1(\ptr[15][0]_i_2_n_0 ),
        .O(\active[15]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT5 #(
    .INIT(32'h0014FFD7)) 
    \active[15]_i_5 
       (.I0(obs_active[11]),
        .I1(\defect[15]_i_2_n_0 ),
        .I2(\ptr[15][1]_i_2_n_0 ),
        .I3(\ptr[15][0]_i_2_n_0 ),
        .I4(obs_active[19]),
        .O(\active[15]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair346" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \active[16]_i_1 
       (.I0(obs_active[12]),
        .I1(\FSM_sequential_stage_reg[1]_rep__3_n_0 ),
        .I2(\active[16]_i_2_n_0 ),
        .O(\c_active[16] ));
  LUT6 #(
    .INIT(64'hFFBFF38F0CB00080)) 
    \active[16]_i_2 
       (.I0(obs_defect[16]),
        .I1(\defect[16]_i_2_n_0 ),
        .I2(\ptr[16][1]_i_2_n_0 ),
        .I3(\ptr[16][0]_i_2_n_0 ),
        .I4(\active[16]_i_3_n_0 ),
        .I5(\active[16]_i_4_n_0 ),
        .O(\active[16]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair316" *) 
  LUT4 #(
    .INIT(16'hBA8A)) 
    \active[16]_i_3 
       (.I0(obs_active[12]),
        .I1(\ptr[16][1]_i_2_n_0 ),
        .I2(\defect[16]_i_2_n_0 ),
        .I3(obs_active[20]),
        .O(\active[16]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair317" *) 
  LUT4 #(
    .INIT(16'hBA8A)) 
    \active[16]_i_4 
       (.I0(obs_active[15]),
        .I1(\ptr[16][1]_i_2_n_0 ),
        .I2(\defect[16]_i_2_n_0 ),
        .I3(obs_active[17]),
        .O(\active[16]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair350" *) 
  LUT3 #(
    .INIT(8'hC5)) 
    \active[17]_i_1 
       (.I0(\active[17]_i_2_n_0 ),
        .I1(obs_active[13]),
        .I2(\FSM_sequential_stage_reg[1]_rep__3_n_0 ),
        .O(\c_active[17] ));
  LUT6 #(
    .INIT(64'hFF7FFF70004F0040)) 
    \active[17]_i_2 
       (.I0(obs_defect[17]),
        .I1(\defect[17]_i_3_n_0 ),
        .I2(\defect[17]_i_2_n_0 ),
        .I3(\ptr[17][2]_i_2_n_0 ),
        .I4(\active[17]_i_3_n_0 ),
        .I5(\active[17]_i_4_n_0 ),
        .O(\active[17]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h0014FFD7)) 
    \active[17]_i_3 
       (.I0(obs_active[16]),
        .I1(\defect[17]_i_2_n_0 ),
        .I2(\defect[17]_i_3_n_0 ),
        .I3(\ptr[17][2]_i_2_n_0 ),
        .I4(obs_active[21]),
        .O(\active[17]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h0014FFD7)) 
    \active[17]_i_4 
       (.I0(obs_active[3]),
        .I1(\defect[17]_i_2_n_0 ),
        .I2(\defect[17]_i_3_n_0 ),
        .I3(\ptr[17][2]_i_2_n_0 ),
        .I4(obs_active[13]),
        .O(\active[17]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair357" *) 
  LUT3 #(
    .INIT(8'hC5)) 
    \active[18]_i_1 
       (.I0(\active[18]_i_2_n_0 ),
        .I1(obs_active[14]),
        .I2(\FSM_sequential_stage_reg[1]_rep__3_n_0 ),
        .O(\c_active[18] ));
  LUT6 #(
    .INIT(64'hFF5C005CFFFC000C)) 
    \active[18]_i_2 
       (.I0(obs_defect[18]),
        .I1(\active[18]_i_3_n_0 ),
        .I2(\ptr[18][0]_i_2_n_0 ),
        .I3(\defect[18]_i_2_n_0 ),
        .I4(\active[18]_i_4_n_0 ),
        .I5(\ptr[18][1]_i_2_n_0 ),
        .O(\active[18]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT5 #(
    .INIT(32'h54455775)) 
    \active[18]_i_3 
       (.I0(obs_active[22]),
        .I1(\defect[18]_i_2_n_0 ),
        .I2(\ptr[18][0]_i_2_n_0 ),
        .I3(\ptr[18][1]_i_2_n_0 ),
        .I4(obs_active[4]),
        .O(\active[18]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h54455775)) 
    \active[18]_i_4 
       (.I0(obs_active[14]),
        .I1(\defect[18]_i_2_n_0 ),
        .I2(\ptr[18][0]_i_2_n_0 ),
        .I3(\ptr[18][1]_i_2_n_0 ),
        .I4(obs_active[19]),
        .O(\active[18]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair368" *) 
  LUT3 #(
    .INIT(8'hC5)) 
    \active[19]_i_1 
       (.I0(\active[19]_i_2_n_0 ),
        .I1(obs_active[15]),
        .I2(\FSM_sequential_stage_reg[1]_rep__3_n_0 ),
        .O(\c_active[19] ));
  LUT6 #(
    .INIT(64'hFFFDFCF1030D0001)) 
    \active[19]_i_2 
       (.I0(obs_defect[19]),
        .I1(\ptr[19][0]_i_2_n_0 ),
        .I2(\ptr[19][1]_i_2_n_0 ),
        .I3(\ptr[19][2]_i_2_n_0 ),
        .I4(\active[19]_i_3_n_0 ),
        .I5(\active[19]_i_4_n_0 ),
        .O(\active[19]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT5 #(
    .INIT(32'h0014FFD7)) 
    \active[19]_i_3 
       (.I0(obs_active[18]),
        .I1(\ptr[19][1]_i_2_n_0 ),
        .I2(\ptr[19][0]_i_2_n_0 ),
        .I3(\ptr[19][2]_i_2_n_0 ),
        .I4(obs_active[15]),
        .O(\active[19]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT5 #(
    .INIT(32'h0014FFD7)) 
    \active[19]_i_4 
       (.I0(obs_active[20]),
        .I1(\ptr[19][1]_i_2_n_0 ),
        .I2(\ptr[19][0]_i_2_n_0 ),
        .I3(\ptr[19][2]_i_2_n_0 ),
        .I4(obs_active[23]),
        .O(\active[19]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair393" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \active[1]_i_1 
       (.I0(\active[1]_i_2_n_0 ),
        .I1(obs_active[13]),
        .I2(\FSM_sequential_stage_reg[1]_rep__4_n_0 ),
        .O(\active[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0F000F0F0F4F0F0F)) 
    \active[1]_i_2 
       (.I0(obs_unrooted[1]),
        .I1(\cid[17][4]_i_3_n_0 ),
        .I2(\^obs_ptr [3]),
        .I3(\cid[3][4]_i_2_n_0 ),
        .I4(\active[1]_i_3_n_0 ),
        .I5(\cid[1][5]_i_4_n_0 ),
        .O(\active[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair281" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \active[1]_i_3 
       (.I0(obs_growth[17]),
        .I1(obs_growth[16]),
        .O(\active[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair373" *) 
  LUT3 #(
    .INIT(8'hC5)) 
    \active[20]_i_1 
       (.I0(\active[20]_i_2_n_0 ),
        .I1(obs_active[16]),
        .I2(\FSM_sequential_stage_reg[1]_rep__3_n_0 ),
        .O(\c_active[20] ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT4 #(
    .INIT(16'h7077)) 
    \active[20]_i_2 
       (.I0(\defect[20]_i_2_n_0 ),
        .I1(obs_defect[20]),
        .I2(\active[20]_i_3_n_0 ),
        .I3(\active[20]_i_4_n_0 ),
        .O(\active[20]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT5 #(
    .INIT(32'h02110233)) 
    \active[20]_i_3 
       (.I0(\ptr[20][1]_i_2_n_0 ),
        .I1(\ptr[20][2]_i_2_n_0 ),
        .I2(obs_active[24]),
        .I3(\ptr[20][0]_i_2_n_0 ),
        .I4(obs_active[21]),
        .O(\active[20]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT5 #(
    .INIT(32'hAFAFACAA)) 
    \active[20]_i_4 
       (.I0(obs_active[16]),
        .I1(obs_active[19]),
        .I2(\ptr[20][2]_i_2_n_0 ),
        .I3(\ptr[20][0]_i_2_n_0 ),
        .I4(\ptr[20][1]_i_2_n_0 ),
        .O(\active[20]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair363" *) 
  LUT3 #(
    .INIT(8'hC5)) 
    \active[21]_i_1 
       (.I0(\active[21]_i_2_n_0 ),
        .I1(obs_active[17]),
        .I2(\FSM_sequential_stage_reg[1]_rep__3_n_0 ),
        .O(\c_active[21] ));
  LUT6 #(
    .INIT(64'h01000103FDFFFDFF)) 
    \active[21]_i_2 
       (.I0(obs_defect[21]),
        .I1(\ptr[21][0]_i_2_n_0 ),
        .I2(\ptr[21][2]_i_2_n_0 ),
        .I3(\ptr[21][1]_i_2_n_0 ),
        .I4(obs_active[5]),
        .I5(\active[21]_i_3_n_0 ),
        .O(\active[21]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFCFFAFFF0C00A00F)) 
    \active[21]_i_3 
       (.I0(obs_active[20]),
        .I1(obs_active[17]),
        .I2(\ptr[21][0]_i_2_n_0 ),
        .I3(\ptr[21][1]_i_2_n_0 ),
        .I4(\ptr[21][2]_i_2_n_0 ),
        .I5(obs_active[25]),
        .O(\active[21]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair367" *) 
  LUT3 #(
    .INIT(8'hC5)) 
    \active[22]_i_1 
       (.I0(\active[22]_i_2_n_0 ),
        .I1(obs_active[18]),
        .I2(\FSM_sequential_stage_reg[1]_rep__4_n_0 ),
        .O(\c_active[22] ));
  LUT6 #(
    .INIT(64'h0C0C0C0C0C0C550C)) 
    \active[22]_i_2 
       (.I0(obs_defect[22]),
        .I1(\active[22]_i_3_n_0 ),
        .I2(\active[22]_i_4_n_0 ),
        .I3(\ptr[22][1]_i_2_n_0 ),
        .I4(\defect[22]_i_2_n_0 ),
        .I5(\defect[26]_i_3_n_0 ),
        .O(\active[22]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT5 #(
    .INIT(32'h0343FF7F)) 
    \active[22]_i_3 
       (.I0(obs_active[18]),
        .I1(\ptr[22][1]_i_2_n_0 ),
        .I2(\defect[22]_i_2_n_0 ),
        .I3(\defect[26]_i_3_n_0 ),
        .I4(obs_active[6]),
        .O(\active[22]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT5 #(
    .INIT(32'h000000AC)) 
    \active[22]_i_4 
       (.I0(obs_active[26]),
        .I1(obs_active[23]),
        .I2(\defect[26]_i_3_n_0 ),
        .I3(\ptr[22][1]_i_2_n_0 ),
        .I4(\defect[22]_i_2_n_0 ),
        .O(\active[22]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair377" *) 
  LUT3 #(
    .INIT(8'hC5)) 
    \active[23]_i_1 
       (.I0(\active[23]_i_2_n_0 ),
        .I1(obs_active[19]),
        .I2(\FSM_sequential_stage_reg[1]_rep__4_n_0 ),
        .O(\c_active[23] ));
  LUT6 #(
    .INIT(64'hF707F704F404F704)) 
    \active[23]_i_2 
       (.I0(obs_defect[23]),
        .I1(\defect[23]_i_3_n_0 ),
        .I2(\defect[23]_i_4_n_0 ),
        .I3(\active[23]_i_3_n_0 ),
        .I4(\ptr[23][1]_i_2_n_0 ),
        .I5(\active[23]_i_4_n_0 ),
        .O(\active[23]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair236" *) 
  LUT4 #(
    .INIT(16'h5457)) 
    \active[23]_i_3 
       (.I0(obs_active[19]),
        .I1(\ptr[23][0]_i_2_n_0 ),
        .I2(\defect[23]_i_4_n_0 ),
        .I3(obs_active[22]),
        .O(\active[23]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair237" *) 
  LUT4 #(
    .INIT(16'h5457)) 
    \active[23]_i_4 
       (.I0(obs_active[24]),
        .I1(\ptr[23][0]_i_2_n_0 ),
        .I2(\defect[23]_i_4_n_0 ),
        .I3(obs_active[27]),
        .O(\active[23]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair382" *) 
  LUT3 #(
    .INIT(8'hC5)) 
    \active[24]_i_1 
       (.I0(\active[24]_i_2_n_0 ),
        .I1(obs_active[20]),
        .I2(\FSM_sequential_stage_reg[1]_rep__3_n_0 ),
        .O(\c_active[24] ));
  LUT5 #(
    .INIT(32'h0404F704)) 
    \active[24]_i_2 
       (.I0(obs_defect[24]),
        .I1(\defect[24]_i_4_n_0 ),
        .I2(\defect[24]_i_2_n_0 ),
        .I3(\active[24]_i_3_n_0 ),
        .I4(\active[24]_i_4_n_0 ),
        .O(\active[24]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT5 #(
    .INIT(32'h5555FF53)) 
    \active[24]_i_3 
       (.I0(obs_active[20]),
        .I1(obs_active[23]),
        .I2(\ptr[24][0]_i_2_n_0 ),
        .I3(\ptr[24][1]_i_2_n_0 ),
        .I4(\defect[24]_i_2_n_0 ),
        .O(\active[24]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT5 #(
    .INIT(32'h00E20000)) 
    \active[24]_i_4 
       (.I0(obs_active[28]),
        .I1(\ptr[24][0]_i_2_n_0 ),
        .I2(obs_active[25]),
        .I3(\defect[24]_i_2_n_0 ),
        .I4(\ptr[24][1]_i_2_n_0 ),
        .O(\active[24]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFF00A3A3)) 
    \active[25]_i_1 
       (.I0(obs_defect[25]),
        .I1(\active[25]_i_2_n_0 ),
        .I2(\active[25]_i_3_n_0 ),
        .I3(obs_active[21]),
        .I4(\FSM_sequential_stage_reg[1]_rep__3_n_0 ),
        .O(\c_active[25] ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \active[25]_i_2 
       (.I0(obs_active[21]),
        .I1(obs_active[29]),
        .I2(\active[25]_i_4_n_0 ),
        .I3(obs_active[24]),
        .I4(\active[25]_i_5_n_0 ),
        .I5(obs_active[7]),
        .O(\active[25]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \active[25]_i_3 
       (.I0(\ptr[25][2]_i_2_n_0 ),
        .I1(\ptr[25][0]_i_2_n_0 ),
        .I2(\ptr[25][1]_i_2_n_0 ),
        .O(\active[25]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair229" *) 
  LUT3 #(
    .INIT(8'hBE)) 
    \active[25]_i_4 
       (.I0(\ptr[25][2]_i_2_n_0 ),
        .I1(\ptr[25][1]_i_2_n_0 ),
        .I2(\ptr[25][0]_i_2_n_0 ),
        .O(\active[25]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'h09)) 
    \active[25]_i_5 
       (.I0(\ptr[25][2]_i_2_n_0 ),
        .I1(\ptr[25][0]_i_2_n_0 ),
        .I2(\ptr[25][1]_i_2_n_0 ),
        .O(\active[25]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair381" *) 
  LUT3 #(
    .INIT(8'hC5)) 
    \active[26]_i_1 
       (.I0(\active[26]_i_2_n_0 ),
        .I1(obs_active[22]),
        .I2(\FSM_sequential_stage_reg[1]_rep__4_n_0 ),
        .O(\c_active[26] ));
  LUT6 #(
    .INIT(64'h8888AAAA8AAA8AAA)) 
    \active[26]_i_2 
       (.I0(\active[26]_i_3_n_0 ),
        .I1(\active[26]_i_4_n_0 ),
        .I2(\ptr[26][0]_i_2_n_0 ),
        .I3(obs_active[8]),
        .I4(obs_active[27]),
        .I5(\active[26]_i_5_n_0 ),
        .O(\active[26]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT5 #(
    .INIT(32'hFFF5FFF3)) 
    \active[26]_i_3 
       (.I0(obs_defect[26]),
        .I1(obs_active[22]),
        .I2(\ptr[26][1]_i_2_n_0 ),
        .I3(\ptr[26][0]_i_2_n_0 ),
        .I4(\ptr[26][2]_i_2_n_0 ),
        .O(\active[26]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \active[26]_i_4 
       (.I0(\ptr[26][0]_i_2_n_0 ),
        .I1(\ptr[26][1]_i_2_n_0 ),
        .O(\active[26]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair244" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \active[26]_i_5 
       (.I0(\ptr[26][1]_i_2_n_0 ),
        .I1(\ptr[26][2]_i_2_n_0 ),
        .O(\active[26]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hCCCCCCCCFAEAAAEA)) 
    \active[27]_i_1 
       (.I0(\active[27]_i_2_n_0 ),
        .I1(obs_active[23]),
        .I2(\active[27]_i_3_n_0 ),
        .I3(\active[27]_i_4_n_0 ),
        .I4(obs_defect[27]),
        .I5(\FSM_sequential_stage_reg[1]_rep__4_n_0 ),
        .O(\c_active[27] ));
  LUT6 #(
    .INIT(64'h0F0F00070F0F0707)) 
    \active[27]_i_10 
       (.I0(\cid[27][2]_i_9_n_0 ),
        .I1(\cid[28][3]_i_2_n_0 ),
        .I2(\cid[27][5]_i_4_n_0 ),
        .I3(\cid[27][3]_i_3_n_0 ),
        .I4(obs_unrooted[27]),
        .I5(\cid[27][2]_i_2_n_0 ),
        .O(\active[27]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT5 #(
    .INIT(32'hFF0FFFBF)) 
    \active[27]_i_11 
       (.I0(obs_unrooted[27]),
        .I1(\cid[26][3]_i_2_n_0 ),
        .I2(obs_growth[69]),
        .I3(obs_growth[68]),
        .I4(\cid[27][2]_i_12_n_0 ),
        .O(\active[27]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair325" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    \active[27]_i_12 
       (.I0(obs_unrooted[27]),
        .I1(\cid[28][3]_i_2_n_0 ),
        .I2(obs_growth[72]),
        .I3(obs_growth[73]),
        .O(\active[27]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \active[27]_i_13 
       (.I0(obs_cid[143]),
        .I1(\cid[27][5]_i_6_n_0 ),
        .I2(obs_cid[142]),
        .I3(\cid[27][4]_i_7_n_0 ),
        .O(\active[27]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h0080DDDDFFFFFFFF)) 
    \active[27]_i_14 
       (.I0(\cid[27][2]_i_9_n_0 ),
        .I1(obs_cid[173]),
        .I2(\cid[28][3]_i_2_n_0 ),
        .I3(obs_unrooted[27]),
        .I4(\cid[27][5]_i_7_n_0 ),
        .I5(obs_cid[143]),
        .O(\active[27]_i_14_n_0 ));
  LUT5 #(
    .INIT(32'hCAC0CCC0)) 
    \active[27]_i_2 
       (.I0(obs_active[26]),
        .I1(obs_active[28]),
        .I2(\ptr[27][1]_i_2_n_0 ),
        .I3(\ptr[27][0]_i_2_n_0 ),
        .I4(\active[27]_i_4_n_0 ),
        .O(\active[27]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00003301FF05FF05)) 
    \active[27]_i_3 
       (.I0(\active[27]_i_5_n_0 ),
        .I1(\^obs_ptr [81]),
        .I2(\active[27]_i_6_n_0 ),
        .I3(\active[27]_i_7_n_0 ),
        .I4(\^obs_ptr [82]),
        .I5(\cid[27][5]_i_4_n_0 ),
        .O(\active[27]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h7474747774777477)) 
    \active[27]_i_4 
       (.I0(\^obs_ptr [83]),
        .I1(\cid[27][5]_i_4_n_0 ),
        .I2(\active[27]_i_8_n_0 ),
        .I3(\active[27]_i_9_n_0 ),
        .I4(\cid[27][2]_i_2_n_0 ),
        .I5(\cid[27][4]_i_6_n_0 ),
        .O(\active[27]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h80AA808000000000)) 
    \active[27]_i_5 
       (.I0(\ptr[27][0]_i_3_n_0 ),
        .I1(\cid[26][5]_i_8_n_0 ),
        .I2(\cid[27][2]_i_12_n_0 ),
        .I3(\cid[27][2]_i_7_n_0 ),
        .I4(\^obs_ptr [81]),
        .I5(\active[27]_i_10_n_0 ),
        .O(\active[27]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000100011111111)) 
    \active[27]_i_6 
       (.I0(\active[27]_i_8_n_0 ),
        .I1(\cid[27][5]_i_4_n_0 ),
        .I2(\active[27]_i_11_n_0 ),
        .I3(\^obs_ptr [82]),
        .I4(\active[27]_i_12_n_0 ),
        .I5(\ptr[27][0]_i_3_n_0 ),
        .O(\active[27]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFF51000000000000)) 
    \active[27]_i_7 
       (.I0(\cid[27][4]_i_11_n_0 ),
        .I1(\cid[27][4]_i_10_n_0 ),
        .I2(\cid[27][4]_i_9_n_0 ),
        .I3(\active[27]_i_13_n_0 ),
        .I4(\active[27]_i_14_n_0 ),
        .I5(\cid[27][2]_i_2_n_0 ),
        .O(\active[27]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \active[27]_i_8 
       (.I0(\cid[27][2]_i_2_n_0 ),
        .I1(obs_unrooted[27]),
        .I2(\cid[27][3]_i_3_n_0 ),
        .O(\active[27]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h8808888800000000)) 
    \active[27]_i_9 
       (.I0(\ptr[27][0]_i_3_n_0 ),
        .I1(\^obs_ptr [83]),
        .I2(\cid[28][3]_i_2_n_0 ),
        .I3(obs_unrooted[27]),
        .I4(\cid[27][2]_i_9_n_0 ),
        .I5(\active[27]_i_11_n_0 ),
        .O(\active[27]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair393" *) 
  LUT3 #(
    .INIT(8'hC5)) 
    \active[28]_i_1 
       (.I0(\active[28]_i_2_n_0 ),
        .I1(obs_active[24]),
        .I2(\FSM_sequential_stage_reg[1]_rep__4_n_0 ),
        .O(\c_active[28] ));
  LUT3 #(
    .INIT(8'h07)) 
    \active[28]_i_2 
       (.I0(\defect[28]_i_2_n_0 ),
        .I1(obs_defect[28]),
        .I2(\active[28]_i_3_n_0 ),
        .O(\active[28]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h3083308000830080)) 
    \active[28]_i_3 
       (.I0(obs_active[24]),
        .I1(\ptr[28][2]_i_2_n_0 ),
        .I2(\ptr[28][1]_i_2_n_0 ),
        .I3(\ptr[28][0]_i_2_n_0 ),
        .I4(obs_active[29]),
        .I5(obs_active[27]),
        .O(\active[28]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair389" *) 
  LUT3 #(
    .INIT(8'hC5)) 
    \active[29]_i_1 
       (.I0(\active[29]_i_2_n_0 ),
        .I1(obs_active[25]),
        .I2(\FSM_sequential_stage_reg[1]_rep__4_n_0 ),
        .O(\active[29]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h007F)) 
    \active[29]_i_2 
       (.I0(obs_defect[29]),
        .I1(\defect[29]_i_2_n_0 ),
        .I2(\defect[29]_i_3_n_0 ),
        .I3(\active[29]_i_3_n_0 ),
        .O(\active[29]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFA0CAAAA0A0CAAAA)) 
    \active[29]_i_3 
       (.I0(obs_active[28]),
        .I1(obs_active[25]),
        .I2(\defect[29]_i_2_n_0 ),
        .I3(\ptr[29][1]_i_2_n_0 ),
        .I4(\ptr[29][0]_i_2_n_0 ),
        .I5(obs_active[9]),
        .O(\active[29]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair355" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \active[2]_i_1 
       (.I0(obs_active[0]),
        .I1(\FSM_sequential_stage_reg[1]_rep__4_n_0 ),
        .I2(\active[2]_i_2_n_0 ),
        .O(\c_active[2] ));
  (* SOFT_HLUTNM = "soft_lutpair354" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \active[2]_i_2 
       (.I0(obs_active[14]),
        .I1(\ptr[2][1]_i_2_n_0 ),
        .O(\active[2]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hF022)) 
    \active[3]_i_1 
       (.I0(obs_active[17]),
        .I1(\active[3]_i_2_n_0 ),
        .I2(obs_active[1]),
        .I3(\FSM_sequential_stage_reg[1]_rep__4_n_0 ),
        .O(\c_active[3] ));
  LUT6 #(
    .INIT(64'h0F000F0F0F4F0F0F)) 
    \active[3]_i_2 
       (.I0(obs_unrooted[3]),
        .I1(\cid[21][4]_i_2_n_0 ),
        .I2(\^obs_ptr [9]),
        .I3(\cid[5][4]_i_2_n_0 ),
        .I4(\active[3]_i_3_n_0 ),
        .I5(\cid[3][5]_i_5_n_0 ),
        .O(\active[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \active[3]_i_3 
       (.I0(obs_growth[31]),
        .I1(obs_growth[30]),
        .O(\active[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair367" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \active[4]_i_1 
       (.I0(obs_active[2]),
        .I1(\FSM_sequential_stage_reg[1]_rep__4_n_0 ),
        .I2(\active[4]_i_2_n_0 ),
        .O(\c_active[4] ));
  (* SOFT_HLUTNM = "soft_lutpair366" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \active[4]_i_2 
       (.I0(obs_active[18]),
        .I1(\ptr[4][1]_i_2_n_0 ),
        .O(\active[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair377" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \active[5]_i_1 
       (.I0(obs_active[3]),
        .I1(\FSM_sequential_stage_reg[1]_rep__4_n_0 ),
        .I2(\active[5]_i_2_n_0 ),
        .O(\c_active[5] ));
  LUT2 #(
    .INIT(4'h2)) 
    \active[5]_i_2 
       (.I0(obs_active[21]),
        .I1(\ptr[5][0]_i_2_n_0 ),
        .O(\active[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair383" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \active[6]_i_1 
       (.I0(obs_active[4]),
        .I1(\FSM_sequential_stage_reg[1]_rep__4_n_0 ),
        .I2(\active[6]_i_2_n_0 ),
        .O(\c_active[6] ));
  (* SOFT_HLUTNM = "soft_lutpair381" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \active[6]_i_2 
       (.I0(obs_active[22]),
        .I1(\ptr[6][1]_i_2_n_0 ),
        .O(\active[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair383" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \active[7]_i_1 
       (.I0(obs_active[5]),
        .I1(\FSM_sequential_stage_reg[1]_rep__4_n_0 ),
        .I2(\active[7]_i_2_n_0 ),
        .O(\c_active[7] ));
  (* SOFT_HLUTNM = "soft_lutpair384" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \active[7]_i_2 
       (.I0(obs_active[25]),
        .I1(\ptr[7][0]_i_2_n_0 ),
        .O(\active[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair389" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \active[8]_i_1 
       (.I0(obs_active[6]),
        .I1(\FSM_sequential_stage_reg[1]_rep__4_n_0 ),
        .I2(\active[8]_i_2_n_0 ),
        .O(\c_active[8] ));
  LUT2 #(
    .INIT(4'h2)) 
    \active[8]_i_2 
       (.I0(obs_active[26]),
        .I1(\ptr[8][1]_i_2_n_0 ),
        .O(\active[8]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair392" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \active[9]_i_1 
       (.I0(obs_active[7]),
        .I1(\FSM_sequential_stage_reg[1]_rep__3_n_0 ),
        .I2(\active[9]_i_2_n_0 ),
        .O(\c_active[9] ));
  (* SOFT_HLUTNM = "soft_lutpair412" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \active[9]_i_2 
       (.I0(obs_active[29]),
        .I1(\ptr[9][0]_i_2_n_0 ),
        .O(\active[9]_i_2_n_0 ));
  FDRE \active_reg[0] 
       (.C(clk),
        .CE(\cid[25][5]_i_1_n_0 ),
        .D(\c_active[0] ),
        .Q(obs_active[0]),
        .R(reset));
  FDRE \active_reg[10] 
       (.C(clk),
        .CE(\cid[25][5]_i_1_n_0 ),
        .D(\active[10]_i_1_n_0 ),
        .Q(obs_active[10]),
        .R(reset));
  FDRE \active_reg[11] 
       (.C(clk),
        .CE(\cid[25][5]_i_1_n_0 ),
        .D(\active[11]_i_1_n_0 ),
        .Q(obs_active[11]),
        .R(reset));
  FDRE \active_reg[12] 
       (.C(clk),
        .CE(\cid[25][5]_i_1_n_0 ),
        .D(\active[12]_i_1_n_0 ),
        .Q(obs_active[12]),
        .R(reset));
  FDRE \active_reg[13] 
       (.C(clk),
        .CE(\cid[25][5]_i_1_n_0 ),
        .D(\active[13]_i_1_n_0 ),
        .Q(obs_active[13]),
        .R(reset));
  FDRE \active_reg[14] 
       (.C(clk),
        .CE(\cid[25][5]_i_1_n_0 ),
        .D(\c_active[14] ),
        .Q(obs_active[14]),
        .R(reset));
  FDRE \active_reg[15] 
       (.C(clk),
        .CE(\cid[25][5]_i_1_n_0 ),
        .D(\c_active[15] ),
        .Q(obs_active[15]),
        .R(reset));
  FDRE \active_reg[16] 
       (.C(clk),
        .CE(\cid[25][5]_i_1_n_0 ),
        .D(\c_active[16] ),
        .Q(obs_active[16]),
        .R(reset));
  FDRE \active_reg[17] 
       (.C(clk),
        .CE(\cid[25][5]_i_1_n_0 ),
        .D(\c_active[17] ),
        .Q(obs_active[17]),
        .R(reset));
  FDRE \active_reg[18] 
       (.C(clk),
        .CE(\cid[25][5]_i_1_n_0 ),
        .D(\c_active[18] ),
        .Q(obs_active[18]),
        .R(reset));
  FDRE \active_reg[19] 
       (.C(clk),
        .CE(\cid[25][5]_i_1_n_0 ),
        .D(\c_active[19] ),
        .Q(obs_active[19]),
        .R(reset));
  FDRE \active_reg[1] 
       (.C(clk),
        .CE(\cid[25][5]_i_1_n_0 ),
        .D(\active[1]_i_1_n_0 ),
        .Q(obs_active[1]),
        .R(reset));
  FDRE \active_reg[20] 
       (.C(clk),
        .CE(\cid[25][5]_i_1_n_0 ),
        .D(\c_active[20] ),
        .Q(obs_active[20]),
        .R(reset));
  FDRE \active_reg[21] 
       (.C(clk),
        .CE(\cid[25][5]_i_1_n_0 ),
        .D(\c_active[21] ),
        .Q(obs_active[21]),
        .R(reset));
  FDRE \active_reg[22] 
       (.C(clk),
        .CE(\cid[25][5]_i_1_n_0 ),
        .D(\c_active[22] ),
        .Q(obs_active[22]),
        .R(reset));
  FDRE \active_reg[23] 
       (.C(clk),
        .CE(\cid[25][5]_i_1_n_0 ),
        .D(\c_active[23] ),
        .Q(obs_active[23]),
        .R(reset));
  FDRE \active_reg[24] 
       (.C(clk),
        .CE(\cid[25][5]_i_1_n_0 ),
        .D(\c_active[24] ),
        .Q(obs_active[24]),
        .R(reset));
  FDRE \active_reg[25] 
       (.C(clk),
        .CE(\cid[25][5]_i_1_n_0 ),
        .D(\c_active[25] ),
        .Q(obs_active[25]),
        .R(reset));
  FDRE \active_reg[26] 
       (.C(clk),
        .CE(\cid[25][5]_i_1_n_0 ),
        .D(\c_active[26] ),
        .Q(obs_active[26]),
        .R(reset));
  FDRE \active_reg[27] 
       (.C(clk),
        .CE(\cid[25][5]_i_1_n_0 ),
        .D(\c_active[27] ),
        .Q(obs_active[27]),
        .R(reset));
  FDRE \active_reg[28] 
       (.C(clk),
        .CE(\cid[25][5]_i_1_n_0 ),
        .D(\c_active[28] ),
        .Q(obs_active[28]),
        .R(reset));
  FDRE \active_reg[29] 
       (.C(clk),
        .CE(\cid[25][5]_i_1_n_0 ),
        .D(\active[29]_i_1_n_0 ),
        .Q(obs_active[29]),
        .R(reset));
  FDRE \active_reg[2] 
       (.C(clk),
        .CE(\cid[25][5]_i_1_n_0 ),
        .D(\c_active[2] ),
        .Q(obs_active[2]),
        .R(reset));
  FDRE \active_reg[3] 
       (.C(clk),
        .CE(\cid[25][5]_i_1_n_0 ),
        .D(\c_active[3] ),
        .Q(obs_active[3]),
        .R(reset));
  FDRE \active_reg[4] 
       (.C(clk),
        .CE(\cid[25][5]_i_1_n_0 ),
        .D(\c_active[4] ),
        .Q(obs_active[4]),
        .R(reset));
  FDRE \active_reg[5] 
       (.C(clk),
        .CE(\cid[25][5]_i_1_n_0 ),
        .D(\c_active[5] ),
        .Q(obs_active[5]),
        .R(reset));
  FDRE \active_reg[6] 
       (.C(clk),
        .CE(\cid[25][5]_i_1_n_0 ),
        .D(\c_active[6] ),
        .Q(obs_active[6]),
        .R(reset));
  FDRE \active_reg[7] 
       (.C(clk),
        .CE(\cid[25][5]_i_1_n_0 ),
        .D(\c_active[7] ),
        .Q(obs_active[7]),
        .R(reset));
  FDRE \active_reg[8] 
       (.C(clk),
        .CE(\cid[25][5]_i_1_n_0 ),
        .D(\c_active[8] ),
        .Q(obs_active[8]),
        .R(reset));
  FDRE \active_reg[9] 
       (.C(clk),
        .CE(\cid[25][5]_i_1_n_0 ),
        .D(\c_active[9] ),
        .Q(obs_active[9]),
        .R(reset));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    all_busy_INST_0
       (.I0(all_busy_INST_0_i_1_n_0),
        .I1(all_busy_INST_0_i_2_n_0),
        .I2(all_busy_INST_0_i_3_n_0),
        .I3(all_busy_INST_0_i_4_n_0),
        .I4(all_busy_INST_0_i_5_n_0),
        .O(all_busy));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    all_busy_INST_0_i_1
       (.I0(obs_busy[26]),
        .I1(obs_busy[25]),
        .I2(obs_busy[28]),
        .I3(obs_busy[27]),
        .I4(obs_busy[29]),
        .I5(obs_busy[0]),
        .O(all_busy_INST_0_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    all_busy_INST_0_i_2
       (.I0(obs_busy[8]),
        .I1(obs_busy[7]),
        .I2(obs_busy[10]),
        .I3(obs_busy[9]),
        .I4(obs_busy[11]),
        .I5(obs_busy[12]),
        .O(all_busy_INST_0_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    all_busy_INST_0_i_3
       (.I0(obs_busy[2]),
        .I1(obs_busy[1]),
        .I2(obs_busy[4]),
        .I3(obs_busy[3]),
        .I4(obs_busy[5]),
        .I5(obs_busy[6]),
        .O(all_busy_INST_0_i_3_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    all_busy_INST_0_i_4
       (.I0(obs_busy[14]),
        .I1(obs_busy[13]),
        .I2(obs_busy[16]),
        .I3(obs_busy[15]),
        .I4(obs_busy[17]),
        .I5(obs_busy[18]),
        .O(all_busy_INST_0_i_4_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    all_busy_INST_0_i_5
       (.I0(obs_busy[20]),
        .I1(obs_busy[19]),
        .I2(obs_busy[22]),
        .I3(obs_busy[21]),
        .I4(obs_busy[23]),
        .I5(obs_busy[24]),
        .O(all_busy_INST_0_i_5_n_0));
  LUT6 #(
    .INIT(64'hAAAAAAAA08AAAA08)) 
    \busy[0]_i_1 
       (.I0(\cid[13][5]_i_1_n_0 ),
        .I1(obs_defect[10]),
        .I2(\defect[0]_i_2_n_0 ),
        .I3(\active[0]_i_2_n_0 ),
        .I4(obs_active[0]),
        .I5(\busy[0]_i_2_n_0 ),
        .O(c_busy));
  LUT6 #(
    .INIT(64'h5555555555755555)) 
    \busy[0]_i_2 
       (.I0(\cid[0][5]_i_3_n_0 ),
        .I1(\grown[9]_i_5_n_0 ),
        .I2(obs_grown[10]),
        .I3(obs_grown[0]),
        .I4(obs_growth[1]),
        .I5(obs_growth[0]),
        .O(\busy[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h2888AAAA)) 
    \busy[10]_i_1 
       (.I0(\cid[13][5]_i_1_n_0 ),
        .I1(\busy[10]_i_2_n_0 ),
        .I2(obs_defect[14]),
        .I3(\busy[10]_i_3_n_0 ),
        .I4(\busy[10]_i_4_n_0 ),
        .O(\busy[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair335" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \busy[10]_i_2 
       (.I0(\ptr[11][0]_i_1_n_0 ),
        .I1(obs_defect[11]),
        .I2(\ptr[11][1]_i_1_n_0 ),
        .O(\busy[10]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \busy[10]_i_3 
       (.I0(\ptr[14][2]_i_2_n_0 ),
        .I1(\defect[14]_i_3_n_0 ),
        .I2(\defect[14]_i_2_n_0 ),
        .O(\busy[10]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000020F020F0000)) 
    \busy[10]_i_4 
       (.I0(\defect[10]_i_2_n_0 ),
        .I1(\ptr[10][0]_i_1_n_0 ),
        .I2(\busy[10]_i_5_n_0 ),
        .I3(obs_defect[10]),
        .I4(\active[10]_i_2_n_0 ),
        .I5(obs_active[10]),
        .O(\busy[10]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFE0A0)) 
    \busy[10]_i_5 
       (.I0(\ptr[10][0]_i_3_n_0 ),
        .I1(\grown[2]_i_4_n_0 ),
        .I2(\cid[10][5]_i_2_n_0 ),
        .I3(\grown[10]_i_5_n_0 ),
        .I4(\busy[10]_i_6_n_0 ),
        .I5(\busy[10]_i_7_n_0 ),
        .O(\busy[10]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h55755555FFFFFFFF)) 
    \busy[10]_i_6 
       (.I0(\defect[10]_i_5_n_0 ),
        .I1(\grown[9]_i_5_n_0 ),
        .I2(obs_grown[0]),
        .I3(obs_grown[10]),
        .I4(\ptr[10][0]_i_6_n_0 ),
        .I5(\ptr[10][0]_i_4_n_0 ),
        .O(\busy[10]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h0800AAAA)) 
    \busy[10]_i_7 
       (.I0(\cid[10][5]_i_6_n_0 ),
        .I1(\grown[10]_i_6_n_0 ),
        .I2(\grown[9]_i_5_n_0 ),
        .I3(obs_grown[11]),
        .I4(\ptr[10][0]_i_5_n_0 ),
        .O(\busy[10]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hA8A8A8AAAAAAAAA8)) 
    \busy[11]_i_1 
       (.I0(\cid[13][5]_i_1_n_0 ),
        .I1(\busy[11]_i_2_n_0 ),
        .I2(\busy[11]_i_3_n_0 ),
        .I3(\busy[11]_i_4_n_0 ),
        .I4(\defect[15]_i_3_n_0 ),
        .I5(\busy[11]_i_5_n_0 ),
        .O(\busy[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hDDDD8D88FFFFFFFF)) 
    \busy[11]_i_10 
       (.I0(\cid[15][3]_i_2_n_0 ),
        .I1(\^obs_ptr [34]),
        .I2(\busy[11]_i_18_n_0 ),
        .I3(\ptr[11][1]_i_3_n_0 ),
        .I4(\ptr[11][1]_i_2_n_0 ),
        .I5(obs_active[10]),
        .O(\busy[11]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h0000700000000000)) 
    \busy[11]_i_11 
       (.I0(\busy[11]_i_19_n_0 ),
        .I1(obs_grown[12]),
        .I2(\grown[11]_i_8_n_0 ),
        .I3(obs_grown[15]),
        .I4(\grown[9]_i_5_n_0 ),
        .I5(\cid[11][5]_i_3_n_0 ),
        .O(\busy[11]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hEEFEEEEEEEEEEEEE)) 
    \busy[11]_i_12 
       (.I0(\ptr[11][1]_i_5_n_0 ),
        .I1(\busy[11]_i_20_n_0 ),
        .I2(obs_grown[12]),
        .I3(\grown[9]_i_5_n_0 ),
        .I4(\grown[11]_i_8_n_0 ),
        .I5(\cid[11][4]_i_5_n_0 ),
        .O(\busy[11]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h000000005D00FF5D)) 
    \busy[11]_i_13 
       (.I0(\ptr[11][1]_i_7_n_0 ),
        .I1(\cid[11][4]_i_3_n_0 ),
        .I2(obs_cid[94]),
        .I3(\cid[11][5]_i_2_n_0 ),
        .I4(obs_cid[95]),
        .I5(\busy[11]_i_18_n_0 ),
        .O(\busy[11]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAFFFFAAEA)) 
    \busy[11]_i_14 
       (.I0(\cid[15][3]_i_2_n_0 ),
        .I1(\^obs_ptr [34]),
        .I2(\ptr[11][1]_i_6_n_0 ),
        .I3(\ptr[11][1]_i_5_n_0 ),
        .I4(\busy[11]_i_21_n_0 ),
        .I5(\ptr[11][1]_i_4_n_0 ),
        .O(\busy[11]_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair338" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \busy[11]_i_15 
       (.I0(\cid[15][3]_i_2_n_0 ),
        .I1(\^obs_ptr [34]),
        .O(\busy[11]_i_15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \busy[11]_i_16 
       (.I0(\cid[15][3]_i_2_n_0 ),
        .I1(\^obs_ptr [33]),
        .O(\busy[11]_i_16_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'hBABBBABA)) 
    \busy[11]_i_17 
       (.I0(\cid[15][3]_i_2_n_0 ),
        .I1(\ptr[11][0]_i_3_n_0 ),
        .I2(\ptr[11][1]_i_5_n_0 ),
        .I3(\cid[11][5]_i_6_n_0 ),
        .I4(\^obs_ptr [33]),
        .O(\busy[11]_i_17_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair401" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \busy[11]_i_18 
       (.I0(\cid[19][5]_i_3_n_0 ),
        .I1(\cid[11][5]_i_3_n_0 ),
        .O(\busy[11]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h00F0000000F00070)) 
    \busy[11]_i_19 
       (.I0(\cid[10][5]_i_5_n_0 ),
        .I1(\cid[14][2]_i_2_n_0 ),
        .I2(obs_growth[13]),
        .I3(obs_growth[12]),
        .I4(obs_unrooted[11]),
        .I5(\cid[16][4]_i_3_n_0 ),
        .O(\busy[11]_i_19_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair156" *) 
  LUT4 #(
    .INIT(16'hFFE0)) 
    \busy[11]_i_2 
       (.I0(\ptr[11][1]_i_1_n_0 ),
        .I1(\ptr[11][0]_i_1_n_0 ),
        .I2(obs_defect[11]),
        .I3(\busy[11]_i_6_n_0 ),
        .O(\busy[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFAAAABAAA)) 
    \busy[11]_i_20 
       (.I0(\cid[11][5]_i_6_n_0 ),
        .I1(obs_grown[11]),
        .I2(\cid[10][5]_i_5_n_0 ),
        .I3(obs_grown[10]),
        .I4(\grown[9]_i_5_n_0 ),
        .I5(\cid[15][3]_i_2_n_0 ),
        .O(\busy[11]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000F700)) 
    \busy[11]_i_21 
       (.I0(\cid[10][5]_i_5_n_0 ),
        .I1(\cid[14][2]_i_2_n_0 ),
        .I2(obs_unrooted[11]),
        .I3(obs_growth[13]),
        .I4(obs_growth[12]),
        .I5(\cid[11][4]_i_6_n_0 ),
        .O(\busy[11]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h59556A5559555955)) 
    \busy[11]_i_3 
       (.I0(obs_active[11]),
        .I1(\busy[11]_i_7_n_0 ),
        .I2(obs_defect[11]),
        .I3(\busy[11]_i_8_n_0 ),
        .I4(\busy[11]_i_9_n_0 ),
        .I5(\busy[11]_i_10_n_0 ),
        .O(\busy[11]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \busy[11]_i_4 
       (.I0(obs_defect[15]),
        .I1(\defect[15]_i_2_n_0 ),
        .O(\busy[11]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair326" *) 
  LUT3 #(
    .INIT(8'h1E)) 
    \busy[11]_i_5 
       (.I0(\ecorr[9]_i_2_n_0 ),
        .I1(\ptr[10][0]_i_1_n_0 ),
        .I2(\ecorr[6]_i_2_n_0 ),
        .O(\busy[11]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFF40)) 
    \busy[11]_i_6 
       (.I0(\cid[19][5]_i_3_n_0 ),
        .I1(\cid[11][5]_i_3_n_0 ),
        .I2(\ptr[11][1]_i_3_n_0 ),
        .I3(\busy[11]_i_11_n_0 ),
        .I4(\busy[11]_i_12_n_0 ),
        .I5(\ptr[11][0]_i_3_n_0 ),
        .O(\busy[11]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0050005000500353)) 
    \busy[11]_i_7 
       (.I0(\^obs_ptr [34]),
        .I1(\ptr[11][1]_i_2_n_0 ),
        .I2(\cid[15][3]_i_2_n_0 ),
        .I3(\^obs_ptr [33]),
        .I4(\busy[11]_i_13_n_0 ),
        .I5(\ptr[11][0]_i_2_n_0 ),
        .O(\busy[11]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFCFFFDFFFCFFFFF)) 
    \busy[11]_i_8 
       (.I0(\busy[11]_i_14_n_0 ),
        .I1(\busy[11]_i_15_n_0 ),
        .I2(obs_active[15]),
        .I3(\busy[11]_i_16_n_0 ),
        .I4(\busy[11]_i_13_n_0 ),
        .I5(\busy[11]_i_17_n_0 ),
        .O(\busy[11]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h080808082A082A2A)) 
    \busy[11]_i_9 
       (.I0(obs_active[12]),
        .I1(\cid[15][3]_i_2_n_0 ),
        .I2(\^obs_ptr [33]),
        .I3(\busy[11]_i_18_n_0 ),
        .I4(\ptr[11][1]_i_3_n_0 ),
        .I5(\ptr[11][0]_i_2_n_0 ),
        .O(\busy[11]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAAA8888A888AAAA8)) 
    \busy[12]_i_1 
       (.I0(\cid[13][5]_i_1_n_0 ),
        .I1(\busy[12]_i_2_n_0 ),
        .I2(\busy[12]_i_3_n_0 ),
        .I3(\defect[16]_i_3_n_0 ),
        .I4(\busy[12]_i_4_n_0 ),
        .I5(\busy[12]_i_5_n_0 ),
        .O(\busy[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFAABAAAAA)) 
    \busy[12]_i_10 
       (.I0(\ptr[12][0]_i_10_n_0 ),
        .I1(obs_grown[12]),
        .I2(obs_grown[11]),
        .I3(\grown[9]_i_5_n_0 ),
        .I4(\cid[11][5]_i_5_n_0 ),
        .I5(\cid[12][5]_i_5_n_0 ),
        .O(\busy[12]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEEFEEEFEFFFF)) 
    \busy[12]_i_2 
       (.I0(\busy[12]_i_6_n_0 ),
        .I1(\busy[12]_i_7_n_0 ),
        .I2(obs_defect[12]),
        .I3(\busy[12]_i_8_n_0 ),
        .I4(\active[12]_i_2_n_0 ),
        .I5(obs_active[12]),
        .O(\busy[12]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair317" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \busy[12]_i_3 
       (.I0(\defect[16]_i_2_n_0 ),
        .I1(obs_defect[16]),
        .O(\busy[12]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair345" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    \busy[12]_i_4 
       (.I0(\ptr[13][1]_i_2_n_0 ),
        .I1(\ptr[13][0]_i_2_n_0 ),
        .I2(obs_defect[13]),
        .O(\busy[12]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair335" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \busy[12]_i_5 
       (.I0(obs_defect[11]),
        .I1(\ptr[11][1]_i_1_n_0 ),
        .I2(\ptr[11][0]_i_1_n_0 ),
        .O(\busy[12]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000FFFF000088F8)) 
    \busy[12]_i_6 
       (.I0(\busy[20]_i_5_n_0 ),
        .I1(\grown[12]_i_5_n_0 ),
        .I2(\cid[20][4]_i_2_n_0 ),
        .I3(obs_unrooted[12]),
        .I4(\cid[12][5]_i_2_n_0 ),
        .I5(\ptr[12][0]_i_2_n_0 ),
        .O(\busy[12]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFD00)) 
    \busy[12]_i_7 
       (.I0(\cid[12][4]_i_6_n_0 ),
        .I1(\busy[12]_i_9_n_0 ),
        .I2(\ptr[12][0]_i_9_n_0 ),
        .I3(\cid[12][4]_i_4_n_0 ),
        .I4(\busy[12]_i_10_n_0 ),
        .I5(\cid[16][4]_i_3_n_0 ),
        .O(\busy[12]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair343" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \busy[12]_i_8 
       (.I0(\defect[12]_i_2_n_0 ),
        .I1(\ptr[12][0]_i_1_n_0 ),
        .O(\busy[12]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0000000008AAAAAA)) 
    \busy[12]_i_9 
       (.I0(\busy[17]_i_5_n_0 ),
        .I1(\cid[15][3]_i_2_n_0 ),
        .I2(obs_unrooted[12]),
        .I3(\busy[15]_i_8_n_0 ),
        .I4(\cid[11][5]_i_5_n_0 ),
        .I5(obs_grown[12]),
        .O(\busy[12]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0F060F060F0F0)) 
    \busy[13]_i_1 
       (.I0(\defect[13]_i_2_n_0 ),
        .I1(\defect[13]_i_3_n_0 ),
        .I2(\cid[13][5]_i_1_n_0 ),
        .I3(\busy[13]_i_2_n_0 ),
        .I4(\active[13]_i_2_n_0 ),
        .I5(obs_active[13]),
        .O(\busy[13]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF4F4FFF4)) 
    \busy[13]_i_2 
       (.I0(\defect[13]_i_4_n_0 ),
        .I1(obs_defect[13]),
        .I2(\busy[13]_i_3_n_0 ),
        .I3(\cid[13][5]_i_3_n_0 ),
        .I4(\busy[13]_i_4_n_0 ),
        .O(\busy[13]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFF70FF70FFF0FFFF)) 
    \busy[13]_i_3 
       (.I0(\cid[13][4]_i_6_n_0 ),
        .I1(\busy[13]_i_5_n_0 ),
        .I2(\cid[13][5]_i_7_n_0 ),
        .I3(\busy[13]_i_6_n_0 ),
        .I4(\active[1]_i_3_n_0 ),
        .I5(\busy[13]_i_7_n_0 ),
        .O(\busy[13]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FDDDFFFF)) 
    \busy[13]_i_4 
       (.I0(\grown[13]_i_6_n_0 ),
        .I1(\grown[9]_i_5_n_0 ),
        .I2(obs_grown[1]),
        .I3(\busy[13]_i_8_n_0 ),
        .I4(obs_grown[17]),
        .I5(\cid[13][4]_i_4_n_0 ),
        .O(\busy[13]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFDFDFDFDFFFDFFFF)) 
    \busy[13]_i_5 
       (.I0(obs_grown[1]),
        .I1(\grown[9]_i_5_n_0 ),
        .I2(obs_grown[13]),
        .I3(obs_unrooted[13]),
        .I4(\cid[16][4]_i_3_n_0 ),
        .I5(\busy[13]_i_9_n_0 ),
        .O(\busy[13]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF0200FFFF)) 
    \busy[13]_i_6 
       (.I0(\cid[21][4]_i_2_n_0 ),
        .I1(obs_unrooted[13]),
        .I2(obs_growth[32]),
        .I3(obs_growth[33]),
        .I4(\cid[13][5]_i_5_n_0 ),
        .I5(\cid[17][4]_i_3_n_0 ),
        .O(\busy[13]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h8AAA00AA8AAA8AAA)) 
    \busy[13]_i_7 
       (.I0(\ptr[13][1]_i_5_n_0 ),
        .I1(obs_grown[13]),
        .I2(\busy[16]_i_9_n_0 ),
        .I3(\cid[12][5]_i_4_n_0 ),
        .I4(obs_unrooted[13]),
        .I5(\cid[16][4]_i_3_n_0 ),
        .O(\busy[13]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h00F0000000F00070)) 
    \busy[13]_i_8 
       (.I0(\cid[16][4]_i_3_n_0 ),
        .I1(\cid[12][5]_i_4_n_0 ),
        .I2(obs_growth[17]),
        .I3(obs_growth[16]),
        .I4(obs_unrooted[13]),
        .I5(\cid[3][4]_i_2_n_0 ),
        .O(\busy[13]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFBFFFFFFFFFFFF)) 
    \busy[13]_i_9 
       (.I0(obs_growth[14]),
        .I1(obs_growth[15]),
        .I2(\FSM_sequential_stage_reg[1]_rep__1_n_0 ),
        .I3(stage__0[0]),
        .I4(stage__0[2]),
        .I5(obs_grown[12]),
        .O(\busy[13]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hAAA8A8AA)) 
    \busy[14]_i_1 
       (.I0(\cid[13][5]_i_1_n_0 ),
        .I1(\defect[14]_i_4_n_0 ),
        .I2(\busy[14]_i_2_n_0 ),
        .I3(obs_active[14]),
        .I4(\active[14]_i_2_n_0 ),
        .O(\busy[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hFFFFFD00)) 
    \busy[14]_i_2 
       (.I0(\defect[14]_i_3_n_0 ),
        .I1(\ptr[14][2]_i_2_n_0 ),
        .I2(\defect[14]_i_2_n_0 ),
        .I3(obs_defect[14]),
        .I4(\busy[14]_i_3_n_0 ),
        .O(\busy[14]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFBFBFFFBBBBBBBBB)) 
    \busy[14]_i_3 
       (.I0(\defect[14]_i_11_n_0 ),
        .I1(\busy[14]_i_4_n_0 ),
        .I2(\busy[14]_i_5_n_0 ),
        .I3(\cid[14][4]_i_7_n_0 ),
        .I4(\cid[14][2]_i_2_n_0 ),
        .I5(\cid[14][5]_i_3_n_0 ),
        .O(\busy[14]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000AAAA2AAA)) 
    \busy[14]_i_4 
       (.I0(\ptr[14][2]_i_4_n_0 ),
        .I1(\busy[14]_i_6_n_0 ),
        .I2(\cid[14][5]_i_9_n_0 ),
        .I3(obs_grown[18]),
        .I4(\grown[9]_i_5_n_0 ),
        .I5(\busy[14]_i_7_n_0 ),
        .O(\busy[14]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h10000000)) 
    \busy[14]_i_5 
       (.I0(\FSM_sequential_stage_reg[1]_rep__4_n_0 ),
        .I1(stage__0[0]),
        .I2(stage__0[2]),
        .I3(obs_grown[10]),
        .I4(\grown[14]_i_5_n_0 ),
        .O(\busy[14]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h5555551555555555)) 
    \busy[14]_i_6 
       (.I0(\grown[14]_i_7_n_0 ),
        .I1(obs_grown[15]),
        .I2(stage__0[2]),
        .I3(stage__0[0]),
        .I4(\FSM_sequential_stage_reg[1]_rep__1_n_0 ),
        .I5(\grown[14]_i_6_n_0 ),
        .O(\busy[14]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hF8FAF8F8FAFAFAFA)) 
    \busy[14]_i_7 
       (.I0(\cid[14][5]_i_12_n_0 ),
        .I1(\cid[14][4]_i_9_n_0 ),
        .I2(\busy[14]_i_8_n_0 ),
        .I3(\grown[14]_i_7_n_0 ),
        .I4(\grown[11]_i_5_n_0 ),
        .I5(\grown[14]_i_6_n_0 ),
        .O(\busy[14]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFAAAABAAA)) 
    \busy[14]_i_8 
       (.I0(\ptr[14][2]_i_5_n_0 ),
        .I1(obs_grown[14]),
        .I2(obs_grown[2]),
        .I3(\ptr[2][1]_i_3_n_0 ),
        .I4(\grown[9]_i_5_n_0 ),
        .I5(\busy[14]_i_9_n_0 ),
        .O(\busy[14]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair182" *) 
  LUT4 #(
    .INIT(16'h0040)) 
    \busy[14]_i_9 
       (.I0(obs_growth[2]),
        .I1(obs_growth[3]),
        .I2(\cid[4][4]_i_2_n_0 ),
        .I3(obs_unrooted[14]),
        .O(\busy[14]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hAAA8A8AA)) 
    \busy[15]_i_1 
       (.I0(\cid[13][5]_i_1_n_0 ),
        .I1(\defect[15]_i_4_n_0 ),
        .I2(\busy[15]_i_2_n_0 ),
        .I3(\active[15]_i_2_n_0 ),
        .I4(obs_active[15]),
        .O(\busy[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT5 #(
    .INIT(32'hFFFF0040)) 
    \busy[15]_i_10 
       (.I0(obs_unrooted[15]),
        .I1(\cid[18][4]_i_2_n_0 ),
        .I2(obs_growth[21]),
        .I3(obs_growth[20]),
        .I4(\defect[15]_i_8_n_0 ),
        .O(\busy[15]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFE0FF)) 
    \busy[15]_i_2 
       (.I0(\defect[15]_i_2_n_0 ),
        .I1(\defect[15]_i_3_n_0 ),
        .I2(obs_defect[15]),
        .I3(\busy[15]_i_3_n_0 ),
        .I4(\busy[15]_i_4_n_0 ),
        .I5(\busy[15]_i_5_n_0 ),
        .O(\busy[15]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair340" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    \busy[15]_i_3 
       (.I0(\cid[15][5]_i_3_n_0 ),
        .I1(\cid[15][3]_i_2_n_0 ),
        .I2(\cid[15][4]_i_8_n_0 ),
        .O(\busy[15]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFAFAFAFAF8F8FAF8)) 
    \busy[15]_i_4 
       (.I0(\cid[15][4]_i_5_n_0 ),
        .I1(\cid[15][4]_i_7_n_0 ),
        .I2(\busy[15]_i_6_n_0 ),
        .I3(\grown[23]_i_8_n_0 ),
        .I4(\busy[15]_i_7_n_0 ),
        .I5(\grown[15]_i_10_n_0 ),
        .O(\busy[15]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF80F08080)) 
    \busy[15]_i_5 
       (.I0(\busy[15]_i_8_n_0 ),
        .I1(\grown[15]_i_6_n_0 ),
        .I2(\cid[15][5]_i_3_n_0 ),
        .I3(obs_unrooted[15]),
        .I4(\cid[15][3]_i_2_n_0 ),
        .I5(\cid[19][5]_i_3_n_0 ),
        .O(\busy[15]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEEEEECECCEEEE)) 
    \busy[15]_i_6 
       (.I0(\cid[15][4]_i_10_n_0 ),
        .I1(\busy[15]_i_9_n_0 ),
        .I2(\grown[15]_i_9_n_0 ),
        .I3(\busy[20]_i_5_n_0 ),
        .I4(\grown[15]_i_8_n_0 ),
        .I5(\cid[15][4]_i_11_n_0 ),
        .O(\busy[15]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAEAAAAAAAEAAAEAA)) 
    \busy[15]_i_7 
       (.I0(\grown[15]_i_9_n_0 ),
        .I1(obs_grown[16]),
        .I2(\grown[9]_i_5_n_0 ),
        .I3(\cid[15][4]_i_10_n_0 ),
        .I4(obs_unrooted[15]),
        .I5(\cid[20][4]_i_2_n_0 ),
        .O(\busy[15]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair162" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \busy[15]_i_8 
       (.I0(obs_grown[11]),
        .I1(stage__0[2]),
        .I2(stage__0[0]),
        .I3(\FSM_sequential_stage_reg[1]_rep__1_n_0 ),
        .O(\busy[15]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAABAAAAA)) 
    \busy[15]_i_9 
       (.I0(\busy[15]_i_10_n_0 ),
        .I1(\grown[9]_i_5_n_0 ),
        .I2(obs_grown[14]),
        .I3(obs_growth[20]),
        .I4(obs_growth[21]),
        .I5(obs_grown[15]),
        .O(\busy[15]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hA8AAAAA8)) 
    \busy[16]_i_1 
       (.I0(\cid[13][5]_i_1_n_0 ),
        .I1(\defect[16]_i_4_n_0 ),
        .I2(\busy[16]_i_2_n_0 ),
        .I3(obs_active[16]),
        .I4(\active[16]_i_2_n_0 ),
        .O(\busy[16]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFEEEEFEEE)) 
    \busy[16]_i_10 
       (.I0(\defect[16]_i_6_n_0 ),
        .I1(\cid[20][4]_i_2_n_0 ),
        .I2(\cid[15][5]_i_7_n_0 ),
        .I3(\grown[11]_i_5_n_0 ),
        .I4(obs_grown[16]),
        .I5(\cid[16][5]_i_5_n_0 ),
        .O(\busy[16]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'hEFFFFFFF)) 
    \busy[16]_i_11 
       (.I0(\FSM_sequential_stage_reg[1]_rep__4_n_0 ),
        .I1(stage__0[0]),
        .I2(stage__0[2]),
        .I3(obs_grown[20]),
        .I4(\cid[16][5]_i_9_n_0 ),
        .O(\busy[16]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFD0FFFFFFFFFF)) 
    \busy[16]_i_2 
       (.I0(\defect[16]_i_2_n_0 ),
        .I1(\defect[16]_i_3_n_0 ),
        .I2(obs_defect[16]),
        .I3(\busy[16]_i_3_n_0 ),
        .I4(\busy[16]_i_4_n_0 ),
        .I5(\busy[16]_i_5_n_0 ),
        .O(\busy[16]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FBFFFFFF)) 
    \busy[16]_i_3 
       (.I0(obs_growth[42]),
        .I1(obs_growth[43]),
        .I2(obs_unrooted[16]),
        .I3(\cid[24][4]_i_2_n_0 ),
        .I4(\cid[16][5]_i_7_n_0 ),
        .I5(\ptr[16][1]_i_4_n_0 ),
        .O(\busy[16]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEA0000)) 
    \busy[16]_i_4 
       (.I0(\cid[16][3]_i_9_n_0 ),
        .I1(\grown[3]_i_4_n_0 ),
        .I2(\busy[16]_i_6_n_0 ),
        .I3(\busy[16]_i_7_n_0 ),
        .I4(\cid[16][5]_i_12_n_0 ),
        .I5(\busy[16]_i_8_n_0 ),
        .O(\busy[16]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair348" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    \busy[16]_i_5 
       (.I0(\cid[16][5]_i_3_n_0 ),
        .I1(\cid[16][4]_i_3_n_0 ),
        .I2(\cid[16][4]_i_6_n_0 ),
        .O(\busy[16]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h5155555551555155)) 
    \busy[16]_i_6 
       (.I0(obs_grown[16]),
        .I1(\cid[15][5]_i_7_n_0 ),
        .I2(\grown[9]_i_5_n_0 ),
        .I3(obs_grown[15]),
        .I4(obs_unrooted[16]),
        .I5(\cid[19][5]_i_3_n_0 ),
        .O(\busy[16]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000BAAAFFFFFFFF)) 
    \busy[16]_i_7 
       (.I0(\cid[21][4]_i_2_n_0 ),
        .I1(obs_growth[24]),
        .I2(obs_growth[25]),
        .I3(\cid[19][5]_i_3_n_0 ),
        .I4(obs_unrooted[16]),
        .I5(\cid[17][5]_i_10_n_0 ),
        .O(\busy[16]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hF8F0FFF0)) 
    \busy[16]_i_8 
       (.I0(\busy[16]_i_9_n_0 ),
        .I1(\cid[16][5]_i_3_n_0 ),
        .I2(\busy[16]_i_10_n_0 ),
        .I3(\grown[16]_i_6_n_0 ),
        .I4(\busy[16]_i_11_n_0 ),
        .O(\busy[16]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair163" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \busy[16]_i_9 
       (.I0(obs_grown[12]),
        .I1(stage__0[2]),
        .I2(stage__0[0]),
        .I3(\FSM_sequential_stage_reg[1]_rep__4_n_0 ),
        .O(\busy[16]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hA88AAAAA)) 
    \busy[17]_i_1 
       (.I0(\cid[13][5]_i_1_n_0 ),
        .I1(\busy[17]_i_2_n_0 ),
        .I2(\active[17]_i_2_n_0 ),
        .I3(obs_active[17]),
        .I4(\defect[17]_i_5_n_0 ),
        .O(\busy[17]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h40004040FFFFFFFF)) 
    \busy[17]_i_10 
       (.I0(\grown[9]_i_5_n_0 ),
        .I1(obs_grown[3]),
        .I2(\cid[17][3]_i_9_n_0 ),
        .I3(obs_unrooted[17]),
        .I4(\cid[5][4]_i_2_n_0 ),
        .I5(\grown[17]_i_6_n_0 ),
        .O(\busy[17]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF700)) 
    \busy[17]_i_2 
       (.I0(\defect[17]_i_3_n_0 ),
        .I1(\defect[17]_i_2_n_0 ),
        .I2(\ptr[17][2]_i_2_n_0 ),
        .I3(obs_defect[17]),
        .I4(\busy[17]_i_3_n_0 ),
        .I5(\busy[17]_i_4_n_0 ),
        .O(\busy[17]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF80FF)) 
    \busy[17]_i_3 
       (.I0(\grown[17]_i_5_n_0 ),
        .I1(\busy[17]_i_5_n_0 ),
        .I2(\cid[17][5]_i_2_n_0 ),
        .I3(\busy[17]_i_6_n_0 ),
        .I4(\cid[21][4]_i_2_n_0 ),
        .I5(\cid[17][5]_i_4_n_0 ),
        .O(\busy[17]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair352" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \busy[17]_i_4 
       (.I0(\cid[17][4]_i_6_n_0 ),
        .I1(\cid[17][5]_i_2_n_0 ),
        .I2(\cid[17][4]_i_3_n_0 ),
        .O(\busy[17]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair158" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \busy[17]_i_5 
       (.I0(obs_grown[13]),
        .I1(stage__0[2]),
        .I2(stage__0[0]),
        .I3(\FSM_sequential_stage_reg[1]_rep__1_n_0 ),
        .O(\busy[17]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000044440444)) 
    \busy[17]_i_6 
       (.I0(\busy[17]_i_7_n_0 ),
        .I1(\busy[17]_i_8_n_0 ),
        .I2(\cid[17][5]_i_10_n_0 ),
        .I3(\busy[20]_i_5_n_0 ),
        .I4(obs_grown[17]),
        .I5(\busy[17]_i_9_n_0 ),
        .O(\busy[17]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000400044444444)) 
    \busy[17]_i_7 
       (.I0(obs_growth[30]),
        .I1(obs_growth[31]),
        .I2(\grown[17]_i_6_n_0 ),
        .I3(obs_grown[3]),
        .I4(\grown[9]_i_5_n_0 ),
        .I5(\defect[17]_i_14_n_0 ),
        .O(\busy[17]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT5 #(
    .INIT(32'h0000FFDF)) 
    \busy[17]_i_8 
       (.I0(obs_growth[29]),
        .I1(obs_growth[28]),
        .I2(\cid[20][4]_i_2_n_0 ),
        .I3(obs_unrooted[17]),
        .I4(\defect[17]_i_10_n_0 ),
        .O(\busy[17]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h8A88AAAA8A888A88)) 
    \busy[17]_i_9 
       (.I0(\cid[17][3]_i_5_n_0 ),
        .I1(\cid[17][3]_i_7_n_0 ),
        .I2(obs_unrooted[17]),
        .I3(\cid[25][4]_i_2_n_0 ),
        .I4(\busy[17]_i_10_n_0 ),
        .I5(\grown[5]_i_4_n_0 ),
        .O(\busy[17]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hAAA8A8AA)) 
    \busy[18]_i_1 
       (.I0(\cid[13][5]_i_1_n_0 ),
        .I1(\defect[18]_i_4_n_0 ),
        .I2(\busy[18]_i_2_n_0 ),
        .I3(obs_active[18]),
        .I4(\active[18]_i_2_n_0 ),
        .O(\busy[18]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFF700FFFF)) 
    \busy[18]_i_2 
       (.I0(\ptr[18][1]_i_2_n_0 ),
        .I1(\ptr[18][0]_i_2_n_0 ),
        .I2(\defect[18]_i_2_n_0 ),
        .I3(obs_defect[18]),
        .I4(\busy[18]_i_3_n_0 ),
        .I5(\busy[18]_i_4_n_0 ),
        .O(\busy[18]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair359" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    \busy[18]_i_3 
       (.I0(\cid[18][5]_i_4_n_0 ),
        .I1(\cid[18][4]_i_2_n_0 ),
        .I2(\cid[18][4]_i_6_n_0 ),
        .O(\busy[18]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF0800FFFF)) 
    \busy[18]_i_4 
       (.I0(\grown[18]_i_5_n_0 ),
        .I1(obs_grown[14]),
        .I2(\grown[9]_i_5_n_0 ),
        .I3(\cid[18][5]_i_4_n_0 ),
        .I4(\busy[18]_i_5_n_0 ),
        .I5(\ptr[18][1]_i_5_n_0 ),
        .O(\busy[18]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h000000A2AAAAAAAA)) 
    \busy[18]_i_5 
       (.I0(\busy[18]_i_6_n_0 ),
        .I1(\grown[6]_i_4_n_0 ),
        .I2(\busy[18]_i_7_n_0 ),
        .I3(\grown[18]_i_9_n_0 ),
        .I4(\cid[18][3]_i_6_n_0 ),
        .I5(\cid[18][5]_i_7_n_0 ),
        .O(\busy[18]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000007F55)) 
    \busy[18]_i_6 
       (.I0(\cid[19][3]_i_18_n_0 ),
        .I1(\grown[18]_i_7_n_0 ),
        .I2(\grown[23]_i_8_n_0 ),
        .I3(\grown[18]_i_8_n_0 ),
        .I4(\busy[18]_i_8_n_0 ),
        .I5(\defect[18]_i_9_n_0 ),
        .O(\busy[18]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h00080000FFFFFFFF)) 
    \busy[18]_i_7 
       (.I0(obs_grown[19]),
        .I1(stage__0[2]),
        .I2(stage__0[0]),
        .I3(\FSM_sequential_stage_reg[1]_rep__1_n_0 ),
        .I4(\grown[18]_i_8_n_0 ),
        .I5(\grown[18]_i_7_n_0 ),
        .O(\busy[18]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAABAAAAA)) 
    \busy[18]_i_8 
       (.I0(\defect[18]_i_7_n_0 ),
        .I1(\grown[9]_i_5_n_0 ),
        .I2(obs_growth[5]),
        .I3(obs_growth[4]),
        .I4(obs_grown[4]),
        .I5(obs_grown[18]),
        .O(\busy[18]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hAAA8A8AA)) 
    \busy[19]_i_1 
       (.I0(\cid[13][5]_i_1_n_0 ),
        .I1(\defect[19]_i_2_n_0 ),
        .I2(\busy[19]_i_2_n_0 ),
        .I3(obs_active[19]),
        .I4(\active[19]_i_2_n_0 ),
        .O(\busy[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'hFFFFFE00)) 
    \busy[19]_i_2 
       (.I0(\ptr[19][0]_i_2_n_0 ),
        .I1(\ptr[19][1]_i_2_n_0 ),
        .I2(\ptr[19][2]_i_2_n_0 ),
        .I3(obs_defect[19]),
        .I4(\busy[19]_i_3_n_0 ),
        .O(\busy[19]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFD0FF)) 
    \busy[19]_i_3 
       (.I0(\busy[19]_i_4_n_0 ),
        .I1(\cid[19][4]_i_4_n_0 ),
        .I2(\cid[19][3]_i_4_n_0 ),
        .I3(\busy[19]_i_5_n_0 ),
        .I4(\cid[23][2]_i_3_n_0 ),
        .O(\busy[19]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair141" *) 
  LUT5 #(
    .INIT(32'hBB0BBBBB)) 
    \busy[19]_i_4 
       (.I0(obs_unrooted[19]),
        .I1(\cid[19][5]_i_3_n_0 ),
        .I2(obs_grown[15]),
        .I3(\grown[9]_i_5_n_0 ),
        .I4(\grown[19]_i_5_n_0 ),
        .O(\busy[19]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000002222222)) 
    \busy[19]_i_5 
       (.I0(\ptr[19][2]_i_4_n_0 ),
        .I1(\ptr[19][2]_i_7_n_0 ),
        .I2(\cid[19][3]_i_6_n_0 ),
        .I3(\busy[22]_i_10_n_0 ),
        .I4(\busy[19]_i_6_n_0 ),
        .I5(\busy[19]_i_7_n_0 ),
        .O(\busy[19]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h5555555555554555)) 
    \busy[19]_i_6 
       (.I0(\grown[19]_i_7_n_0 ),
        .I1(\grown[19]_i_6_n_0 ),
        .I2(obs_grown[20]),
        .I3(stage__0[2]),
        .I4(stage__0[0]),
        .I5(\FSM_sequential_stage_reg[1]_rep__4_n_0 ),
        .O(\busy[19]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFAFAFAFAF8F8FAF8)) 
    \busy[19]_i_7 
       (.I0(\cid[19][3]_i_10_n_0 ),
        .I1(\cid[19][3]_i_13_n_0 ),
        .I2(\busy[19]_i_8_n_0 ),
        .I3(\busy[24]_i_9_n_0 ),
        .I4(\grown[19]_i_7_n_0 ),
        .I5(\grown[19]_i_6_n_0 ),
        .O(\busy[19]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAABAAAAA)) 
    \busy[19]_i_8 
       (.I0(\busy[19]_i_9_n_0 ),
        .I1(\grown[9]_i_5_n_0 ),
        .I2(obs_grown[18]),
        .I3(obs_growth[36]),
        .I4(obs_growth[37]),
        .I5(obs_grown[19]),
        .O(\busy[19]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT5 #(
    .INIT(32'hFFFF0040)) 
    \busy[19]_i_9 
       (.I0(obs_unrooted[19]),
        .I1(\cid[22][2]_i_3_n_0 ),
        .I2(obs_growth[37]),
        .I3(obs_growth[36]),
        .I4(\ptr[19][2]_i_5_n_0 ),
        .O(\busy[19]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0F0B0F0F0F040)) 
    \busy[1]_i_1 
       (.I0(\active[1]_i_2_n_0 ),
        .I1(obs_active[13]),
        .I2(\cid[13][5]_i_1_n_0 ),
        .I3(\defect[1]_i_2_n_0 ),
        .I4(\busy[1]_i_2_n_0 ),
        .I5(obs_active[1]),
        .O(\busy[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h5555555555755555)) 
    \busy[1]_i_2 
       (.I0(\cid[1][5]_i_3_n_0 ),
        .I1(\grown[9]_i_5_n_0 ),
        .I2(obs_grown[13]),
        .I3(obs_grown[1]),
        .I4(obs_growth[17]),
        .I5(obs_growth[16]),
        .O(\busy[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAAA8A8AA)) 
    \busy[20]_i_1 
       (.I0(\cid[13][5]_i_1_n_0 ),
        .I1(\defect[20]_i_3_n_0 ),
        .I2(\busy[20]_i_2_n_0 ),
        .I3(obs_active[20]),
        .I4(\active[20]_i_2_n_0 ),
        .O(\busy[20]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEFFFFFFFFFFF)) 
    \busy[20]_i_10 
       (.I0(\FSM_sequential_stage_reg[1]_rep__4_n_0 ),
        .I1(stage__0[0]),
        .I2(stage__0[2]),
        .I3(obs_grown[19]),
        .I4(obs_growth[40]),
        .I5(obs_growth[41]),
        .O(\busy[20]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFE00FFFF)) 
    \busy[20]_i_2 
       (.I0(\ptr[20][2]_i_2_n_0 ),
        .I1(\ptr[20][0]_i_2_n_0 ),
        .I2(\ptr[20][1]_i_2_n_0 ),
        .I3(obs_defect[20]),
        .I4(\busy[20]_i_3_n_0 ),
        .I5(\cid[24][5]_i_3_n_0 ),
        .O(\busy[20]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0015FFFF00000000)) 
    \busy[20]_i_3 
       (.I0(\busy[20]_i_4_n_0 ),
        .I1(\busy[20]_i_5_n_0 ),
        .I2(\grown[20]_i_4_n_0 ),
        .I3(\cid[20][4]_i_6_n_0 ),
        .I4(\cid[20][5]_i_5_n_0 ),
        .I5(\busy[20]_i_6_n_0 ),
        .O(\busy[20]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair186" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \busy[20]_i_4 
       (.I0(\cid[20][4]_i_2_n_0 ),
        .I1(obs_unrooted[20]),
        .O(\busy[20]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair164" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \busy[20]_i_5 
       (.I0(obs_grown[16]),
        .I1(stage__0[2]),
        .I2(stage__0[0]),
        .I3(\FSM_sequential_stage_reg[1]_rep__1_n_0 ),
        .O(\busy[20]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000800080808080)) 
    \busy[20]_i_6 
       (.I0(\busy[20]_i_7_n_0 ),
        .I1(\busy[20]_i_8_n_0 ),
        .I2(\ptr[20][2]_i_5_n_0 ),
        .I3(\busy[20]_i_9_n_0 ),
        .I4(\cid[20][3]_i_7_n_0 ),
        .I5(\cid[20][3]_i_6_n_0 ),
        .O(\busy[20]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT5 #(
    .INIT(32'h0000FFBF)) 
    \busy[20]_i_7 
       (.I0(obs_unrooted[20]),
        .I1(\cid[23][2]_i_3_n_0 ),
        .I2(obs_growth[41]),
        .I3(obs_growth[40]),
        .I4(\ptr[20][2]_i_6_n_0 ),
        .O(\busy[20]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hCEEE)) 
    \busy[20]_i_8 
       (.I0(\busy[20]_i_10_n_0 ),
        .I1(obs_grown[20]),
        .I2(\grown[5]_i_4_n_0 ),
        .I3(\cid[20][3]_i_8_n_0 ),
        .O(\busy[20]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAAA2AAAAAAA2AAA2)) 
    \busy[20]_i_9 
       (.I0(\grown[20]_i_7_n_0 ),
        .I1(obs_grown[24]),
        .I2(\grown[9]_i_5_n_0 ),
        .I3(\grown[20]_i_6_n_0 ),
        .I4(\grown[20]_i_5_n_0 ),
        .I5(obs_grown[21]),
        .O(\busy[20]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hAAA8A8AA)) 
    \busy[21]_i_1 
       (.I0(\cid[13][5]_i_1_n_0 ),
        .I1(\defect[21]_i_3_n_0 ),
        .I2(\busy[21]_i_2_n_0 ),
        .I3(obs_active[21]),
        .I4(\active[21]_i_2_n_0 ),
        .O(\busy[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair160" *) 
  LUT4 #(
    .INIT(16'hFFF4)) 
    \busy[21]_i_2 
       (.I0(\defect[21]_i_2_n_0 ),
        .I1(obs_defect[21]),
        .I2(\busy[21]_i_3_n_0 ),
        .I3(\cid[25][4]_i_2_n_0 ),
        .O(\busy[21]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFAAA8A8A8)) 
    \busy[21]_i_3 
       (.I0(\cid[21][5]_i_4_n_0 ),
        .I1(\cid[21][4]_i_6_n_0 ),
        .I2(\cid[21][3]_i_7_n_0 ),
        .I3(\grown[3]_i_4_n_0 ),
        .I4(\grown[21]_i_4_n_0 ),
        .I5(\busy[21]_i_4_n_0 ),
        .O(\busy[21]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFDDDDDDD)) 
    \busy[21]_i_4 
       (.I0(\ptr[21][2]_i_4_n_0 ),
        .I1(\busy[21]_i_5_n_0 ),
        .I2(\grown[7]_i_4_n_0 ),
        .I3(\cid[21][5]_i_7_n_0 ),
        .I4(\busy[21]_i_6_n_0 ),
        .I5(\busy[21]_i_7_n_0 ),
        .O(\busy[21]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAABAAAAA)) 
    \busy[21]_i_5 
       (.I0(\ptr[21][2]_i_6_n_0 ),
        .I1(obs_growth[44]),
        .I2(obs_growth[45]),
        .I3(\grown[9]_i_5_n_0 ),
        .I4(obs_grown[20]),
        .I5(obs_grown[21]),
        .O(\busy[21]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA20AAAAAA)) 
    \busy[21]_i_6 
       (.I0(\grown[21]_i_5_n_0 ),
        .I1(obs_unrooted[21]),
        .I2(\cid[7][4]_i_2_n_0 ),
        .I3(\cid[21][5]_i_11_n_0 ),
        .I4(obs_grown[5]),
        .I5(\grown[9]_i_5_n_0 ),
        .O(\busy[21]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0040000044444444)) 
    \busy[21]_i_7 
       (.I0(obs_growth[46]),
        .I1(obs_growth[47]),
        .I2(\grown[21]_i_5_n_0 ),
        .I3(\grown[9]_i_5_n_0 ),
        .I4(obs_grown[5]),
        .I5(\ptr[21][2]_i_8_n_0 ),
        .O(\busy[21]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hAAA8A8AA)) 
    \busy[22]_i_1 
       (.I0(\cid[13][5]_i_1_n_0 ),
        .I1(\defect[22]_i_4_n_0 ),
        .I2(\busy[22]_i_2_n_0 ),
        .I3(obs_active[22]),
        .I4(\active[22]_i_2_n_0 ),
        .O(\busy[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair163" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \busy[22]_i_10 
       (.I0(obs_grown[23]),
        .I1(stage__0[2]),
        .I2(stage__0[0]),
        .I3(\FSM_sequential_stage_reg[1]_rep__4_n_0 ),
        .O(\busy[22]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'h10000000)) 
    \busy[22]_i_11 
       (.I0(\FSM_sequential_stage_reg[1]_rep__4_n_0 ),
        .I1(stage__0[0]),
        .I2(stage__0[2]),
        .I3(obs_grown[18]),
        .I4(\cid[22][5]_i_4_n_0 ),
        .O(\busy[22]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAA2AAAAAAAAA)) 
    \busy[22]_i_12 
       (.I0(\grown[22]_i_7_n_0 ),
        .I1(obs_grown[23]),
        .I2(stage__0[2]),
        .I3(stage__0[0]),
        .I4(\FSM_sequential_stage_reg[1]_rep__4_n_0 ),
        .I5(\grown[22]_i_6_n_0 ),
        .O(\busy[22]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF4FFFFFFFFFFF)) 
    \busy[22]_i_2 
       (.I0(\busy[22]_i_3_n_0 ),
        .I1(obs_defect[22]),
        .I2(\busy[22]_i_4_n_0 ),
        .I3(\busy[22]_i_5_n_0 ),
        .I4(\busy[22]_i_6_n_0 ),
        .I5(\busy[22]_i_7_n_0 ),
        .O(\busy[22]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \busy[22]_i_3 
       (.I0(\ptr[22][1]_i_2_n_0 ),
        .I1(\defect[22]_i_2_n_0 ),
        .I2(\defect[26]_i_3_n_0 ),
        .O(\busy[22]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair356" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    \busy[22]_i_4 
       (.I0(\cid[22][5]_i_4_n_0 ),
        .I1(\cid[22][2]_i_3_n_0 ),
        .I2(\cid[22][4]_i_5_n_0 ),
        .O(\busy[22]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair245" *) 
  LUT4 #(
    .INIT(16'h00DF)) 
    \busy[22]_i_5 
       (.I0(\cid[26][3]_i_2_n_0 ),
        .I1(obs_unrooted[22]),
        .I2(\cid[22][5]_i_7_n_0 ),
        .I3(\defect[26]_i_11_n_0 ),
        .O(\busy[22]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFAF8F8F8FAFAFAFA)) 
    \busy[22]_i_6 
       (.I0(\busy[22]_i_8_n_0 ),
        .I1(\cid[22][3]_i_8_n_0 ),
        .I2(\busy[22]_i_9_n_0 ),
        .I3(\busy[22]_i_10_n_0 ),
        .I4(\grown[22]_i_7_n_0 ),
        .I5(\grown[22]_i_6_n_0 ),
        .O(\busy[22]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h000000000FDF5F5F)) 
    \busy[22]_i_7 
       (.I0(\busy[22]_i_11_n_0 ),
        .I1(\grown[22]_i_8_n_0 ),
        .I2(\busy[22]_i_12_n_0 ),
        .I3(\cid[22][5]_i_7_n_0 ),
        .I4(\grown[8]_i_4_n_0 ),
        .I5(\defect[26]_i_7_n_0 ),
        .O(\busy[22]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \busy[22]_i_8 
       (.I0(obs_growth[53]),
        .I1(obs_growth[52]),
        .O(\busy[22]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAABAAAAA)) 
    \busy[22]_i_9 
       (.I0(\defect[22]_i_6_n_0 ),
        .I1(\grown[9]_i_5_n_0 ),
        .I2(obs_growth[7]),
        .I3(obs_growth[6]),
        .I4(obs_grown[6]),
        .I5(obs_grown[22]),
        .O(\busy[22]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hA88AAAAA)) 
    \busy[23]_i_1 
       (.I0(\cid[13][5]_i_1_n_0 ),
        .I1(\busy[23]_i_2_n_0 ),
        .I2(\active[23]_i_2_n_0 ),
        .I3(obs_active[23]),
        .I4(\defect[23]_i_2_n_0 ),
        .O(\busy[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFD0FF)) 
    \busy[23]_i_2 
       (.I0(\defect[23]_i_3_n_0 ),
        .I1(\defect[23]_i_4_n_0 ),
        .I2(obs_defect[23]),
        .I3(\busy[23]_i_3_n_0 ),
        .I4(\busy[23]_i_4_n_0 ),
        .I5(\busy[23]_i_5_n_0 ),
        .O(\busy[23]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair360" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    \busy[23]_i_3 
       (.I0(\cid[23][5]_i_3_n_0 ),
        .I1(\cid[23][2]_i_3_n_0 ),
        .I2(\cid[23][4]_i_5_n_0 ),
        .O(\busy[23]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFAFAF8FAF8FAF8FA)) 
    \busy[23]_i_4 
       (.I0(\cid[23][5]_i_10_n_0 ),
        .I1(\cid[23][3]_i_6_n_0 ),
        .I2(\busy[23]_i_6_n_0 ),
        .I3(\grown[23]_i_13_n_0 ),
        .I4(\busy[23]_i_7_n_0 ),
        .I5(\busy[23]_i_8_n_0 ),
        .O(\busy[23]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFF2F0F0F2F2F0F0)) 
    \busy[23]_i_5 
       (.I0(\cid[23][2]_i_3_n_0 ),
        .I1(obs_unrooted[23]),
        .I2(\cid[27][3]_i_3_n_0 ),
        .I3(\grown[23]_i_8_n_0 ),
        .I4(\cid[23][5]_i_3_n_0 ),
        .I5(\grown[23]_i_7_n_0 ),
        .O(\busy[23]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFEAAA)) 
    \busy[23]_i_6 
       (.I0(\ptr[23][1]_i_4_n_0 ),
        .I1(\cid[23][5]_i_13_n_0 ),
        .I2(\grown[23]_i_12_n_0 ),
        .I3(\busy[28]_i_5_n_0 ),
        .I4(\busy[23]_i_9_n_0 ),
        .I5(\defect[23]_i_6_n_0 ),
        .O(\busy[23]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hA2AAAAAAA2AAA2AA)) 
    \busy[23]_i_7 
       (.I0(\grown[23]_i_12_n_0 ),
        .I1(obs_grown[24]),
        .I2(\grown[9]_i_5_n_0 ),
        .I3(\cid[23][5]_i_13_n_0 ),
        .I4(obs_unrooted[23]),
        .I5(\cid[28][3]_i_4_n_0 ),
        .O(\busy[23]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair165" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \busy[23]_i_8 
       (.I0(obs_grown[27]),
        .I1(stage__0[2]),
        .I2(stage__0[0]),
        .I3(\FSM_sequential_stage_reg[1]_rep__1_n_0 ),
        .O(\busy[23]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h08080808FF080808)) 
    \busy[23]_i_9 
       (.I0(\cid[23][5]_i_13_n_0 ),
        .I1(\cid[28][3]_i_4_n_0 ),
        .I2(obs_unrooted[23]),
        .I3(\grown[6]_i_4_n_0 ),
        .I4(\busy[22]_i_8_n_0 ),
        .I5(obs_grown[23]),
        .O(\busy[23]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hA88AAAAA)) 
    \busy[24]_i_1 
       (.I0(\cid[13][5]_i_1_n_0 ),
        .I1(\busy[24]_i_2_n_0 ),
        .I2(\active[24]_i_2_n_0 ),
        .I3(obs_active[24]),
        .I4(\defect[24]_i_3_n_0 ),
        .O(\busy[24]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAEAAAEAAFFAAAEAA)) 
    \busy[24]_i_10 
       (.I0(\defect[24]_i_8_n_0 ),
        .I1(\cid[27][3]_i_3_n_0 ),
        .I2(obs_unrooted[24]),
        .I3(\cid[24][5]_i_9_n_0 ),
        .I4(\busy[22]_i_10_n_0 ),
        .I5(obs_grown[24]),
        .O(\busy[24]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair227" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \busy[24]_i_11 
       (.I0(\cid[29][3]_i_3_n_0 ),
        .I1(obs_unrooted[24]),
        .O(\busy[24]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFD0FF)) 
    \busy[24]_i_2 
       (.I0(\defect[24]_i_4_n_0 ),
        .I1(\defect[24]_i_2_n_0 ),
        .I2(obs_defect[24]),
        .I3(\busy[24]_i_3_n_0 ),
        .I4(\busy[24]_i_4_n_0 ),
        .I5(\busy[24]_i_5_n_0 ),
        .O(\busy[24]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair387" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    \busy[24]_i_3 
       (.I0(\cid[24][2]_i_3_n_0 ),
        .I1(\cid[24][4]_i_2_n_0 ),
        .I2(\cid[24][2]_i_10_n_0 ),
        .O(\busy[24]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFA888AAAA)) 
    \busy[24]_i_4 
       (.I0(\cid[24][2]_i_8_n_0 ),
        .I1(\cid[24][2]_i_9_n_0 ),
        .I2(\busy[24]_i_6_n_0 ),
        .I3(\busy[24]_i_7_n_0 ),
        .I4(\grown[24]_i_9_n_0 ),
        .I5(\busy[24]_i_8_n_0 ),
        .O(\busy[24]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF8080F080)) 
    \busy[24]_i_5 
       (.I0(\busy[24]_i_9_n_0 ),
        .I1(\grown[24]_i_6_n_0 ),
        .I2(\cid[24][2]_i_3_n_0 ),
        .I3(\cid[24][4]_i_2_n_0 ),
        .I4(obs_unrooted[24]),
        .I5(\cid[28][3]_i_4_n_0 ),
        .O(\busy[24]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA20AAAAAA)) 
    \busy[24]_i_6 
       (.I0(\grown[24]_i_8_n_0 ),
        .I1(obs_unrooted[24]),
        .I2(\cid[29][3]_i_3_n_0 ),
        .I3(\cid[24][2]_i_12_n_0 ),
        .I4(obs_grown[25]),
        .I5(\grown[9]_i_5_n_0 ),
        .O(\busy[24]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair166" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \busy[24]_i_7 
       (.I0(obs_grown[28]),
        .I1(stage__0[2]),
        .I2(stage__0[0]),
        .I3(\FSM_sequential_stage_reg[1]_rep__4_n_0 ),
        .O(\busy[24]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFF00FFF8FF00)) 
    \busy[24]_i_8 
       (.I0(\grown[7]_i_4_n_0 ),
        .I1(\grown[24]_i_8_n_0 ),
        .I2(\cid[24][2]_i_14_n_0 ),
        .I3(\busy[24]_i_10_n_0 ),
        .I4(\cid[24][2]_i_12_n_0 ),
        .I5(\busy[24]_i_11_n_0 ),
        .O(\busy[24]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \busy[24]_i_9 
       (.I0(obs_grown[20]),
        .I1(stage__0[2]),
        .I2(stage__0[0]),
        .I3(\FSM_sequential_stage_reg[1]_rep__4_n_0 ),
        .O(\busy[24]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hAAA8A8AA)) 
    \busy[25]_i_1 
       (.I0(\cid[13][5]_i_1_n_0 ),
        .I1(\defect[25]_i_2_n_0 ),
        .I2(\busy[25]_i_2_n_0 ),
        .I3(obs_active[25]),
        .I4(\busy[25]_i_3_n_0 ),
        .O(\busy[25]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFDDDDFFDF)) 
    \busy[25]_i_10 
       (.I0(obs_grown[7]),
        .I1(\grown[9]_i_5_n_0 ),
        .I2(\cid[28][3]_i_4_n_0 ),
        .I3(obs_unrooted[25]),
        .I4(\busy[25]_i_13_n_0 ),
        .I5(obs_grown[25]),
        .O(\busy[25]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF0FFF8FFF0FF)) 
    \busy[25]_i_11 
       (.I0(\grown[5]_i_4_n_0 ),
        .I1(\grown[25]_i_5_n_0 ),
        .I2(\cid[29][3]_i_3_n_0 ),
        .I3(\cid[25][5]_i_11_n_0 ),
        .I4(\cid[25][5]_i_5_n_0 ),
        .I5(\cid[25][5]_i_4_n_0 ),
        .O(\busy[25]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h5555555555455555)) 
    \busy[25]_i_12 
       (.I0(\ptr[25][2]_i_4_n_0 ),
        .I1(obs_growth[60]),
        .I2(obs_growth[61]),
        .I3(\grown[9]_i_5_n_0 ),
        .I4(obs_grown[24]),
        .I5(obs_grown[25]),
        .O(\busy[25]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFFFBFFFFFFFFFFFF)) 
    \busy[25]_i_13 
       (.I0(obs_growth[60]),
        .I1(obs_growth[61]),
        .I2(\FSM_sequential_stage_reg[1]_rep__1_n_0 ),
        .I3(stage__0[0]),
        .I4(stage__0[2]),
        .I5(obs_grown[24]),
        .O(\busy[25]_i_13_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFF4)) 
    \busy[25]_i_2 
       (.I0(\active[25]_i_3_n_0 ),
        .I1(obs_defect[25]),
        .I2(\busy[25]_i_4_n_0 ),
        .I3(\busy[25]_i_5_n_0 ),
        .I4(\busy[25]_i_6_n_0 ),
        .O(\busy[25]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCFC5CCCFC0C5CCC0)) 
    \busy[25]_i_3 
       (.I0(obs_defect[25]),
        .I1(\busy[25]_i_7_n_0 ),
        .I2(\ptr[25][2]_i_2_n_0 ),
        .I3(\ptr[25][1]_i_2_n_0 ),
        .I4(\ptr[25][0]_i_2_n_0 ),
        .I5(\busy[25]_i_8_n_0 ),
        .O(\busy[25]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hA8A8A8A8AAA8A8A8)) 
    \busy[25]_i_4 
       (.I0(\cid[25][5]_i_8_n_0 ),
        .I1(\cid[25][2]_i_6_n_0 ),
        .I2(\grown[25]_i_8_n_0 ),
        .I3(\busy[25]_i_9_n_0 ),
        .I4(obs_grown[29]),
        .I5(\grown[9]_i_5_n_0 ),
        .O(\busy[25]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFD0FFD0FFF0FFFF)) 
    \busy[25]_i_5 
       (.I0(\busy[25]_i_10_n_0 ),
        .I1(\cid[25][2]_i_8_n_0 ),
        .I2(\cid[25][5]_i_14_n_0 ),
        .I3(\busy[25]_i_11_n_0 ),
        .I4(\ptr[7][0]_i_3_n_0 ),
        .I5(\busy[25]_i_12_n_0 ),
        .O(\busy[25]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \busy[25]_i_6 
       (.I0(\cid[25][4]_i_6_n_0 ),
        .I1(\cid[25][5]_i_5_n_0 ),
        .O(\busy[25]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT5 #(
    .INIT(32'h0041FF7D)) 
    \busy[25]_i_7 
       (.I0(obs_active[21]),
        .I1(\ptr[25][2]_i_2_n_0 ),
        .I2(\ptr[25][0]_i_2_n_0 ),
        .I3(\ptr[25][1]_i_2_n_0 ),
        .I4(obs_active[29]),
        .O(\busy[25]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT5 #(
    .INIT(32'h0041FF7D)) 
    \busy[25]_i_8 
       (.I0(obs_active[24]),
        .I1(\ptr[25][2]_i_2_n_0 ),
        .I2(\ptr[25][0]_i_2_n_0 ),
        .I3(\ptr[25][1]_i_2_n_0 ),
        .I4(obs_active[7]),
        .O(\busy[25]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAAA2AAAAAAAAAAAA)) 
    \busy[25]_i_9 
       (.I0(\grown[25]_i_7_n_0 ),
        .I1(stage__0[2]),
        .I2(stage__0[0]),
        .I3(\FSM_sequential_stage_reg[1]_rep__1_n_0 ),
        .I4(obs_grown[7]),
        .I5(\grown[25]_i_6_n_0 ),
        .O(\busy[25]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hA8AAAAAA8A888888)) 
    \busy[26]_i_1 
       (.I0(\cid[13][5]_i_1_n_0 ),
        .I1(\busy[26]_i_2_n_0 ),
        .I2(\defect[26]_i_2_n_0 ),
        .I3(obs_defect[22]),
        .I4(\defect[26]_i_3_n_0 ),
        .I5(\defect[26]_i_4_n_0 ),
        .O(\busy[26]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \busy[26]_i_10 
       (.I0(obs_unrooted[26]),
        .I1(\cid[8][5]_i_4_n_0 ),
        .O(\busy[26]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAEAEFFAEFFFFAEFF)) 
    \busy[26]_i_2 
       (.I0(\busy[26]_i_3_n_0 ),
        .I1(obs_defect[26]),
        .I2(\active[26]_i_4_n_0 ),
        .I3(\active[26]_i_3_n_0 ),
        .I4(\busy[26]_i_4_n_0 ),
        .I5(obs_active[26]),
        .O(\busy[26]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFF4F)) 
    \busy[26]_i_3 
       (.I0(\ptr[26][2]_i_2_n_0 ),
        .I1(obs_defect[26]),
        .I2(\busy[26]_i_5_n_0 ),
        .I3(\ptr[26][1]_i_4_n_0 ),
        .I4(\busy[26]_i_6_n_0 ),
        .I5(\busy[26]_i_7_n_0 ),
        .O(\busy[26]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT5 #(
    .INIT(32'hCCE4CC00)) 
    \busy[26]_i_4 
       (.I0(\ptr[26][2]_i_2_n_0 ),
        .I1(obs_active[27]),
        .I2(obs_active[8]),
        .I3(\ptr[26][1]_i_2_n_0 ),
        .I4(\ptr[26][0]_i_2_n_0 ),
        .O(\busy[26]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair391" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \busy[26]_i_5 
       (.I0(\cid[26][4]_i_5_n_0 ),
        .I1(\cid[26][5]_i_5_n_0 ),
        .O(\busy[26]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFBA00)) 
    \busy[26]_i_6 
       (.I0(\busy[26]_i_8_n_0 ),
        .I1(\grown[26]_i_6_n_0 ),
        .I2(\busy[23]_i_8_n_0 ),
        .I3(\cid[26][5]_i_8_n_0 ),
        .I4(\busy[26]_i_9_n_0 ),
        .I5(\ptr[26][2]_i_4_n_0 ),
        .O(\busy[26]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h4000400044444000)) 
    \busy[26]_i_7 
       (.I0(obs_growth[66]),
        .I1(obs_growth[67]),
        .I2(\grown[6]_i_4_n_0 ),
        .I3(\grown[26]_i_5_n_0 ),
        .I4(\cid[26][3]_i_4_n_0 ),
        .I5(obs_unrooted[26]),
        .O(\busy[26]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair262" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \busy[26]_i_8 
       (.I0(\cid[27][5]_i_4_n_0 ),
        .I1(obs_unrooted[26]),
        .O(\busy[26]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAEAAEEEEEEEE)) 
    \busy[26]_i_9 
       (.I0(\cid[26][3]_i_2_n_0 ),
        .I1(\ptr[8][1]_i_3_n_0 ),
        .I2(\grown[9]_i_5_n_0 ),
        .I3(obs_grown[8]),
        .I4(obs_grown[26]),
        .I5(\busy[26]_i_10_n_0 ),
        .O(\busy[26]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAA8A0020AAAAAAAA)) 
    \busy[27]_i_1 
       (.I0(\cid[13][5]_i_1_n_0 ),
        .I1(\busy[27]_i_2_n_0 ),
        .I2(\ptr[23][1]_i_2_n_0 ),
        .I3(\ptr[23][0]_i_2_n_0 ),
        .I4(\busy[27]_i_3_n_0 ),
        .I5(\busy[27]_i_4_n_0 ),
        .O(\busy[27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair264" *) 
  LUT4 #(
    .INIT(16'hB080)) 
    \busy[27]_i_10 
       (.I0(obs_defect[27]),
        .I1(\active[27]_i_4_n_0 ),
        .I2(\active[27]_i_3_n_0 ),
        .I3(obs_active[23]),
        .O(\busy[27]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF57FF)) 
    \busy[27]_i_11 
       (.I0(\ptr[26][0]_i_3_n_0 ),
        .I1(\^obs_ptr [78]),
        .I2(\ptr[26][2]_i_4_n_0 ),
        .I3(\ptr[26][0]_i_5_n_0 ),
        .I4(\cid[26][5]_i_11_n_0 ),
        .O(\busy[27]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h0000FF007F7F7F7F)) 
    \busy[27]_i_12 
       (.I0(\^obs_ptr [86]),
        .I1(\ptr[28][1]_i_5_n_0 ),
        .I2(\ptr[28][2]_i_5_n_0 ),
        .I3(\cid[28][3]_i_4_n_0 ),
        .I4(obs_unrooted[28]),
        .I5(\cid[28][5]_i_5_n_0 ),
        .O(\busy[27]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFF75FF00FFFFFFFF)) 
    \busy[27]_i_13 
       (.I0(\cid[27][2]_i_10_n_0 ),
        .I1(\grown[27]_i_7_n_0 ),
        .I2(\busy[24]_i_7_n_0 ),
        .I3(\busy[27]_i_14_n_0 ),
        .I4(\cid[27][2]_i_9_n_0 ),
        .I5(\busy[27]_i_15_n_0 ),
        .O(\busy[27]_i_13_n_0 ));
  LUT5 #(
    .INIT(32'h55555D55)) 
    \busy[27]_i_14 
       (.I0(\active[27]_i_10_n_0 ),
        .I1(\cid[27][2]_i_2_n_0 ),
        .I2(\grown[9]_i_5_n_0 ),
        .I3(obs_grown[23]),
        .I4(\grown[27]_i_5_n_0 ),
        .O(\busy[27]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAA8AAAAA)) 
    \busy[27]_i_15 
       (.I0(\active[27]_i_11_n_0 ),
        .I1(\grown[9]_i_5_n_0 ),
        .I2(obs_grown[26]),
        .I3(obs_growth[68]),
        .I4(obs_growth[69]),
        .I5(obs_grown[27]),
        .O(\busy[27]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hFFF200F2FFFFFFFF)) 
    \busy[27]_i_2 
       (.I0(\cid[23][4]_i_5_n_0 ),
        .I1(\busy[27]_i_5_n_0 ),
        .I2(\defect[23]_i_5_n_0 ),
        .I3(\cid[27][3]_i_3_n_0 ),
        .I4(\^obs_ptr [71]),
        .I5(obs_defect[23]),
        .O(\busy[27]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h40BF404040404040)) 
    \busy[27]_i_3 
       (.I0(\busy[27]_i_6_n_0 ),
        .I1(\ptr[26][1]_i_2_n_0 ),
        .I2(\ptr[26][2]_i_2_n_0 ),
        .I3(\busy[27]_i_7_n_0 ),
        .I4(\ptr[28][0]_i_2_n_0 ),
        .I5(\ptr[28][1]_i_2_n_0 ),
        .O(\busy[27]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h5151510000000051)) 
    \busy[27]_i_4 
       (.I0(\busy[27]_i_8_n_0 ),
        .I1(obs_defect[27]),
        .I2(\busy[27]_i_9_n_0 ),
        .I3(\active[27]_i_2_n_0 ),
        .I4(\busy[27]_i_10_n_0 ),
        .I5(obs_active[27]),
        .O(\busy[27]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair211" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \busy[27]_i_5 
       (.I0(\cid[23][2]_i_3_n_0 ),
        .I1(\cid[23][5]_i_3_n_0 ),
        .O(\busy[27]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFF070707FFFFFFFF)) 
    \busy[27]_i_6 
       (.I0(\cid[26][5]_i_5_n_0 ),
        .I1(\cid[26][4]_i_5_n_0 ),
        .I2(\busy[27]_i_11_n_0 ),
        .I3(\cid[26][3]_i_2_n_0 ),
        .I4(\^obs_ptr [78]),
        .I5(obs_defect[26]),
        .O(\busy[27]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFF001511FFFFFFFF)) 
    \busy[27]_i_7 
       (.I0(\busy[27]_i_12_n_0 ),
        .I1(\cid[28][4]_i_5_n_0 ),
        .I2(\ptr[28][2]_i_4_n_0 ),
        .I3(\^obs_ptr [86]),
        .I4(\cid[28][3]_i_2_n_0 ),
        .I5(obs_defect[28]),
        .O(\busy[27]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hF8)) 
    \busy[27]_i_8 
       (.I0(\cid[27][2]_i_2_n_0 ),
        .I1(\cid[27][4]_i_6_n_0 ),
        .I2(\busy[27]_i_13_n_0 ),
        .O(\busy[27]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \busy[27]_i_9 
       (.I0(\active[27]_i_4_n_0 ),
        .I1(\active[27]_i_3_n_0 ),
        .O(\busy[27]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAAA8A8AAAAAAAAAA)) 
    \busy[28]_i_1 
       (.I0(\cid[13][5]_i_1_n_0 ),
        .I1(\busy[28]_i_2_n_0 ),
        .I2(\busy[28]_i_3_n_0 ),
        .I3(\active[28]_i_2_n_0 ),
        .I4(obs_active[28]),
        .I5(\defect[28]_i_3_n_0 ),
        .O(\busy[28]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFF04)) 
    \busy[28]_i_2 
       (.I0(\cid[28][3]_i_4_n_0 ),
        .I1(\cid[28][5]_i_5_n_0 ),
        .I2(\cid[28][4]_i_5_n_0 ),
        .I3(\busy[28]_i_4_n_0 ),
        .I4(\ptr[28][2]_i_4_n_0 ),
        .O(\busy[28]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair152" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \busy[28]_i_3 
       (.I0(obs_defect[28]),
        .I1(\defect[28]_i_2_n_0 ),
        .O(\busy[28]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFF4FFF0FFF0)) 
    \busy[28]_i_4 
       (.I0(\grown[28]_i_6_n_0 ),
        .I1(\busy[28]_i_5_n_0 ),
        .I2(\busy[28]_i_6_n_0 ),
        .I3(\cid[28][3]_i_2_n_0 ),
        .I4(\cid[28][5]_i_4_n_0 ),
        .I5(\cid[28][5]_i_5_n_0 ),
        .O(\busy[28]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair165" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \busy[28]_i_5 
       (.I0(obs_grown[24]),
        .I1(stage__0[2]),
        .I2(stage__0[0]),
        .I3(\FSM_sequential_stage_reg[1]_rep__1_n_0 ),
        .O(\busy[28]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000055404040)) 
    \busy[28]_i_6 
       (.I0(\grown[9]_i_5_n_0 ),
        .I1(obs_grown[29]),
        .I2(\cid[28][5]_i_9_n_0 ),
        .I3(\cid[27][2]_i_6_n_0 ),
        .I4(obs_grown[27]),
        .I5(obs_grown[28]),
        .O(\busy[28]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \busy[29]_i_1 
       (.I0(\FSM_sequential_stage_reg[1]_rep__4_n_0 ),
        .I1(stage__0[0]),
        .I2(stage__0[2]),
        .O(\busy[29]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAA8A8AA)) 
    \busy[29]_i_2 
       (.I0(\cid[13][5]_i_1_n_0 ),
        .I1(\defect[29]_i_4_n_0 ),
        .I2(\busy[29]_i_3_n_0 ),
        .I3(\active[29]_i_2_n_0 ),
        .I4(obs_active[29]),
        .O(\busy[29]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFF2FFF2FFF2)) 
    \busy[29]_i_3 
       (.I0(obs_defect[29]),
        .I1(\busy[29]_i_4_n_0 ),
        .I2(\busy[29]_i_5_n_0 ),
        .I3(\busy[29]_i_6_n_0 ),
        .I4(\cid[29][4]_i_7_n_0 ),
        .I5(\cid[29][1]_i_2_n_0 ),
        .O(\busy[29]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair328" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \busy[29]_i_4 
       (.I0(\defect[29]_i_2_n_0 ),
        .I1(\ptr[29][1]_i_2_n_0 ),
        .I2(\ptr[29][0]_i_2_n_0 ),
        .O(\busy[29]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h22A22222AAAAAAAA)) 
    \busy[29]_i_5 
       (.I0(\cid[29][1]_i_9_n_0 ),
        .I1(\busy[29]_i_7_n_0 ),
        .I2(\grown[29]_i_7_n_0 ),
        .I3(\grown[9]_i_5_n_0 ),
        .I4(obs_grown[9]),
        .I5(\cid[29][1]_i_10_n_0 ),
        .O(\busy[29]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFF1111111)) 
    \busy[29]_i_6 
       (.I0(\busy[29]_i_7_n_0 ),
        .I1(\cid[29][1]_i_6_n_0 ),
        .I2(\grown[29]_i_6_n_0 ),
        .I3(\cid[29][1]_i_2_n_0 ),
        .I4(\grown[7]_i_4_n_0 ),
        .I5(\ptr[29][1]_i_4_n_0 ),
        .O(\busy[29]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h5555555555455555)) 
    \busy[29]_i_7 
       (.I0(\defect[29]_i_7_n_0 ),
        .I1(obs_growth[76]),
        .I2(obs_growth[77]),
        .I3(\grown[9]_i_5_n_0 ),
        .I4(obs_grown[28]),
        .I5(obs_grown[29]),
        .O(\busy[29]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h0002AAAA)) 
    \busy[2]_i_1 
       (.I0(\cid[13][5]_i_1_n_0 ),
        .I1(\defect[14]_i_3_n_0 ),
        .I2(\defect[14]_i_2_n_0 ),
        .I3(\defect[14]_i_5_n_0 ),
        .I4(\busy[2]_i_2_n_0 ),
        .O(\busy[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0015000000000015)) 
    \busy[2]_i_2 
       (.I0(\cid[4][4]_i_2_n_0 ),
        .I1(\ptr[2][1]_i_3_n_0 ),
        .I2(\busy[2]_i_3_n_0 ),
        .I3(\cid[2][5]_i_3_n_0 ),
        .I4(\active[2]_i_2_n_0 ),
        .I5(obs_active[2]),
        .O(\busy[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h00001000)) 
    \busy[2]_i_3 
       (.I0(\FSM_sequential_stage_reg[1]_rep__1_n_0 ),
        .I1(stage__0[0]),
        .I2(stage__0[2]),
        .I3(obs_grown[14]),
        .I4(obs_grown[2]),
        .O(\busy[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h2000AAAA)) 
    \busy[3]_i_1 
       (.I0(\cid[13][5]_i_1_n_0 ),
        .I1(\defect[17]_i_3_n_0 ),
        .I2(\defect[17]_i_2_n_0 ),
        .I3(\defect[17]_i_4_n_0 ),
        .I4(\busy[3]_i_2_n_0 ),
        .O(\busy[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000002D)) 
    \busy[3]_i_2 
       (.I0(obs_active[17]),
        .I1(\active[3]_i_2_n_0 ),
        .I2(obs_active[3]),
        .I3(\cid[5][4]_i_2_n_0 ),
        .I4(\busy[3]_i_3_n_0 ),
        .I5(\cid[3][5]_i_3_n_0 ),
        .O(\busy[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00040000)) 
    \busy[3]_i_3 
       (.I0(obs_grown[3]),
        .I1(obs_grown[17]),
        .I2(\grown[9]_i_5_n_0 ),
        .I3(obs_growth[30]),
        .I4(obs_growth[31]),
        .O(\busy[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00002000F0F0F0F0)) 
    \busy[4]_i_1 
       (.I0(obs_defect[18]),
        .I1(\defect[18]_i_2_n_0 ),
        .I2(\cid[13][5]_i_1_n_0 ),
        .I3(\ptr[18][1]_i_2_n_0 ),
        .I4(\ptr[18][0]_i_2_n_0 ),
        .I5(\busy[4]_i_2_n_0 ),
        .O(\busy[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0015000000000015)) 
    \busy[4]_i_2 
       (.I0(\cid[4][5]_i_3_n_0 ),
        .I1(\busy[4]_i_3_n_0 ),
        .I2(\ptr[4][1]_i_3_n_0 ),
        .I3(\cid[6][4]_i_2_n_0 ),
        .I4(obs_active[4]),
        .I5(\active[4]_i_2_n_0 ),
        .O(\busy[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'h00001000)) 
    \busy[4]_i_3 
       (.I0(\FSM_sequential_stage_reg[1]_rep__1_n_0 ),
        .I1(stage__0[0]),
        .I2(stage__0[2]),
        .I3(obs_grown[18]),
        .I4(obs_grown[4]),
        .O(\busy[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000020AAAAAAAA)) 
    \busy[5]_i_1 
       (.I0(\cid[13][5]_i_1_n_0 ),
        .I1(\ptr[21][0]_i_2_n_0 ),
        .I2(obs_defect[21]),
        .I3(\ptr[21][1]_i_2_n_0 ),
        .I4(\ptr[21][2]_i_2_n_0 ),
        .I5(\busy[5]_i_2_n_0 ),
        .O(\busy[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0015000000000015)) 
    \busy[5]_i_2 
       (.I0(\cid[5][5]_i_3_n_0 ),
        .I1(\busy[5]_i_3_n_0 ),
        .I2(\ptr[5][0]_i_3_n_0 ),
        .I3(\cid[7][4]_i_2_n_0 ),
        .I4(obs_active[5]),
        .I5(\active[5]_i_2_n_0 ),
        .O(\busy[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'h00001000)) 
    \busy[5]_i_3 
       (.I0(\FSM_sequential_stage_reg[1]_rep__1_n_0 ),
        .I1(stage__0[0]),
        .I2(stage__0[2]),
        .I3(obs_grown[21]),
        .I4(obs_grown[5]),
        .O(\busy[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00800000AAAAAAAA)) 
    \busy[6]_i_1 
       (.I0(\cid[13][5]_i_1_n_0 ),
        .I1(\defect[26]_i_3_n_0 ),
        .I2(\ptr[22][1]_i_2_n_0 ),
        .I3(\defect[22]_i_2_n_0 ),
        .I4(obs_defect[22]),
        .I5(\busy[6]_i_2_n_0 ),
        .O(\busy[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0015000000000015)) 
    \busy[6]_i_2 
       (.I0(\cid[6][5]_i_3_n_0 ),
        .I1(\busy[6]_i_3_n_0 ),
        .I2(\ptr[6][1]_i_3_n_0 ),
        .I3(\cid[8][3]_i_3_n_0 ),
        .I4(obs_active[6]),
        .I5(\active[6]_i_2_n_0 ),
        .O(\busy[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'h00001000)) 
    \busy[6]_i_3 
       (.I0(\FSM_sequential_stage_reg[1]_rep__1_n_0 ),
        .I1(stage__0[0]),
        .I2(stage__0[2]),
        .I3(obs_grown[22]),
        .I4(obs_grown[6]),
        .O(\busy[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00800000AAAAAAAA)) 
    \busy[7]_i_1 
       (.I0(\cid[13][5]_i_1_n_0 ),
        .I1(\ptr[25][0]_i_2_n_0 ),
        .I2(\ptr[25][1]_i_2_n_0 ),
        .I3(\ptr[25][2]_i_2_n_0 ),
        .I4(obs_defect[25]),
        .I5(\busy[7]_i_2_n_0 ),
        .O(\busy[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0015000000000015)) 
    \busy[7]_i_2 
       (.I0(\cid[9][3]_i_3_n_0 ),
        .I1(\ptr[7][0]_i_3_n_0 ),
        .I2(\busy[7]_i_3_n_0 ),
        .I3(\cid[7][5]_i_3_n_0 ),
        .I4(\active[7]_i_2_n_0 ),
        .I5(obs_active[7]),
        .O(\busy[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'h00001000)) 
    \busy[7]_i_3 
       (.I0(\FSM_sequential_stage_reg[1]_rep__1_n_0 ),
        .I1(stage__0[0]),
        .I2(stage__0[2]),
        .I3(obs_grown[25]),
        .I4(obs_grown[7]),
        .O(\busy[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAA80AAAAAAAAAA80)) 
    \busy[8]_i_1 
       (.I0(\cid[13][5]_i_1_n_0 ),
        .I1(\defect[8]_i_2_n_0 ),
        .I2(obs_defect[26]),
        .I3(\busy[8]_i_2_n_0 ),
        .I4(\active[8]_i_2_n_0 ),
        .I5(obs_active[8]),
        .O(\busy[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFAABAAAAA)) 
    \busy[8]_i_2 
       (.I0(\cid[8][5]_i_3_n_0 ),
        .I1(obs_grown[8]),
        .I2(obs_grown[26]),
        .I3(\grown[9]_i_5_n_0 ),
        .I4(\ptr[8][1]_i_3_n_0 ),
        .I5(\cid[8][5]_i_4_n_0 ),
        .O(\busy[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAA8AAAAAAAAAAA8)) 
    \busy[9]_i_1 
       (.I0(\cid[13][5]_i_1_n_0 ),
        .I1(\defect[9]_i_2_n_0 ),
        .I2(\cid[9][5]_i_3_n_0 ),
        .I3(\busy[9]_i_2_n_0 ),
        .I4(\active[9]_i_2_n_0 ),
        .I5(obs_active[9]),
        .O(\busy[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAEAAAA)) 
    \busy[9]_i_2 
       (.I0(\cid[9][5]_i_4_n_0 ),
        .I1(obs_growth[79]),
        .I2(obs_growth[78]),
        .I3(\grown[9]_i_5_n_0 ),
        .I4(obs_grown[29]),
        .I5(obs_grown[9]),
        .O(\busy[9]_i_2_n_0 ));
  FDRE \busy_reg[0] 
       (.C(clk),
        .CE(\busy[29]_i_1_n_0 ),
        .D(c_busy),
        .Q(obs_busy[0]),
        .R(reset));
  FDRE \busy_reg[10] 
       (.C(clk),
        .CE(\busy[29]_i_1_n_0 ),
        .D(\busy[10]_i_1_n_0 ),
        .Q(obs_busy[10]),
        .R(reset));
  FDRE \busy_reg[11] 
       (.C(clk),
        .CE(\busy[29]_i_1_n_0 ),
        .D(\busy[11]_i_1_n_0 ),
        .Q(obs_busy[11]),
        .R(reset));
  FDRE \busy_reg[12] 
       (.C(clk),
        .CE(\busy[29]_i_1_n_0 ),
        .D(\busy[12]_i_1_n_0 ),
        .Q(obs_busy[12]),
        .R(reset));
  FDRE \busy_reg[13] 
       (.C(clk),
        .CE(\busy[29]_i_1_n_0 ),
        .D(\busy[13]_i_1_n_0 ),
        .Q(obs_busy[13]),
        .R(reset));
  FDRE \busy_reg[14] 
       (.C(clk),
        .CE(\busy[29]_i_1_n_0 ),
        .D(\busy[14]_i_1_n_0 ),
        .Q(obs_busy[14]),
        .R(reset));
  FDRE \busy_reg[15] 
       (.C(clk),
        .CE(\busy[29]_i_1_n_0 ),
        .D(\busy[15]_i_1_n_0 ),
        .Q(obs_busy[15]),
        .R(reset));
  FDRE \busy_reg[16] 
       (.C(clk),
        .CE(\busy[29]_i_1_n_0 ),
        .D(\busy[16]_i_1_n_0 ),
        .Q(obs_busy[16]),
        .R(reset));
  FDRE \busy_reg[17] 
       (.C(clk),
        .CE(\busy[29]_i_1_n_0 ),
        .D(\busy[17]_i_1_n_0 ),
        .Q(obs_busy[17]),
        .R(reset));
  FDRE \busy_reg[18] 
       (.C(clk),
        .CE(\busy[29]_i_1_n_0 ),
        .D(\busy[18]_i_1_n_0 ),
        .Q(obs_busy[18]),
        .R(reset));
  FDRE \busy_reg[19] 
       (.C(clk),
        .CE(\busy[29]_i_1_n_0 ),
        .D(\busy[19]_i_1_n_0 ),
        .Q(obs_busy[19]),
        .R(reset));
  FDRE \busy_reg[1] 
       (.C(clk),
        .CE(\busy[29]_i_1_n_0 ),
        .D(\busy[1]_i_1_n_0 ),
        .Q(obs_busy[1]),
        .R(reset));
  FDRE \busy_reg[20] 
       (.C(clk),
        .CE(\busy[29]_i_1_n_0 ),
        .D(\busy[20]_i_1_n_0 ),
        .Q(obs_busy[20]),
        .R(reset));
  FDRE \busy_reg[21] 
       (.C(clk),
        .CE(\busy[29]_i_1_n_0 ),
        .D(\busy[21]_i_1_n_0 ),
        .Q(obs_busy[21]),
        .R(reset));
  FDRE \busy_reg[22] 
       (.C(clk),
        .CE(\busy[29]_i_1_n_0 ),
        .D(\busy[22]_i_1_n_0 ),
        .Q(obs_busy[22]),
        .R(reset));
  FDRE \busy_reg[23] 
       (.C(clk),
        .CE(\busy[29]_i_1_n_0 ),
        .D(\busy[23]_i_1_n_0 ),
        .Q(obs_busy[23]),
        .R(reset));
  FDRE \busy_reg[24] 
       (.C(clk),
        .CE(\busy[29]_i_1_n_0 ),
        .D(\busy[24]_i_1_n_0 ),
        .Q(obs_busy[24]),
        .R(reset));
  FDRE \busy_reg[25] 
       (.C(clk),
        .CE(\busy[29]_i_1_n_0 ),
        .D(\busy[25]_i_1_n_0 ),
        .Q(obs_busy[25]),
        .R(reset));
  FDRE \busy_reg[26] 
       (.C(clk),
        .CE(\busy[29]_i_1_n_0 ),
        .D(\busy[26]_i_1_n_0 ),
        .Q(obs_busy[26]),
        .R(reset));
  FDRE \busy_reg[27] 
       (.C(clk),
        .CE(\busy[29]_i_1_n_0 ),
        .D(\busy[27]_i_1_n_0 ),
        .Q(obs_busy[27]),
        .R(reset));
  FDRE \busy_reg[28] 
       (.C(clk),
        .CE(\busy[29]_i_1_n_0 ),
        .D(\busy[28]_i_1_n_0 ),
        .Q(obs_busy[28]),
        .R(reset));
  FDRE \busy_reg[29] 
       (.C(clk),
        .CE(\busy[29]_i_1_n_0 ),
        .D(\busy[29]_i_2_n_0 ),
        .Q(obs_busy[29]),
        .R(reset));
  FDRE \busy_reg[2] 
       (.C(clk),
        .CE(\busy[29]_i_1_n_0 ),
        .D(\busy[2]_i_1_n_0 ),
        .Q(obs_busy[2]),
        .R(reset));
  FDRE \busy_reg[3] 
       (.C(clk),
        .CE(\busy[29]_i_1_n_0 ),
        .D(\busy[3]_i_1_n_0 ),
        .Q(obs_busy[3]),
        .R(reset));
  FDRE \busy_reg[4] 
       (.C(clk),
        .CE(\busy[29]_i_1_n_0 ),
        .D(\busy[4]_i_1_n_0 ),
        .Q(obs_busy[4]),
        .R(reset));
  FDRE \busy_reg[5] 
       (.C(clk),
        .CE(\busy[29]_i_1_n_0 ),
        .D(\busy[5]_i_1_n_0 ),
        .Q(obs_busy[5]),
        .R(reset));
  FDRE \busy_reg[6] 
       (.C(clk),
        .CE(\busy[29]_i_1_n_0 ),
        .D(\busy[6]_i_1_n_0 ),
        .Q(obs_busy[6]),
        .R(reset));
  FDRE \busy_reg[7] 
       (.C(clk),
        .CE(\busy[29]_i_1_n_0 ),
        .D(\busy[7]_i_1_n_0 ),
        .Q(obs_busy[7]),
        .R(reset));
  FDRE \busy_reg[8] 
       (.C(clk),
        .CE(\busy[29]_i_1_n_0 ),
        .D(\busy[8]_i_1_n_0 ),
        .Q(obs_busy[8]),
        .R(reset));
  FDRE \busy_reg[9] 
       (.C(clk),
        .CE(\busy[29]_i_1_n_0 ),
        .D(\busy[9]_i_1_n_0 ),
        .Q(obs_busy[9]),
        .R(reset));
  (* SOFT_HLUTNM = "soft_lutpair404" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cid[0][0]_i_1 
       (.I0(obs_cid[60]),
        .I1(\cid[2][4]_i_2_n_0 ),
        .O(\cid[0][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair407" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cid[0][1]_i_1 
       (.I0(obs_cid[61]),
        .I1(\cid[2][4]_i_2_n_0 ),
        .O(\cid[0][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair177" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cid[0][2]_i_1 
       (.I0(obs_cid[62]),
        .I1(\cid[2][4]_i_2_n_0 ),
        .O(\cid[0][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair313" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cid[0][3]_i_1 
       (.I0(obs_cid[63]),
        .I1(\cid[2][4]_i_2_n_0 ),
        .O(\cid[0][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair407" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cid[0][4]_i_1 
       (.I0(obs_cid[64]),
        .I1(\cid[2][4]_i_2_n_0 ),
        .O(\cid[0][4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0014)) 
    \cid[0][5]_i_1 
       (.I0(\FSM_sequential_stage_reg[1]_rep__0_n_0 ),
        .I1(stage__0[2]),
        .I2(stage__0[0]),
        .I3(\cid[0][5]_i_3_n_0 ),
        .O(cid));
  (* SOFT_HLUTNM = "soft_lutpair404" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cid[0][5]_i_2 
       (.I0(obs_cid[65]),
        .I1(\cid[2][4]_i_2_n_0 ),
        .O(\cid[0][5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFF45FF)) 
    \cid[0][5]_i_3 
       (.I0(\cid[0][5]_i_4_n_0 ),
        .I1(obs_unrooted[0]),
        .I2(\cid[14][2]_i_2_n_0 ),
        .I3(obs_growth[1]),
        .I4(obs_growth[0]),
        .I5(\cid[2][4]_i_2_n_0 ),
        .O(\cid[0][5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F4FF00F4)) 
    \cid[0][5]_i_4 
       (.I0(obs_cid[64]),
        .I1(obs_cid[4]),
        .I2(\cid[0][5]_i_5_n_0 ),
        .I3(obs_cid[65]),
        .I4(obs_cid[5]),
        .I5(\cid[14][2]_i_2_n_0 ),
        .O(\cid[0][5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00F400FF000000F4)) 
    \cid[0][5]_i_5 
       (.I0(obs_cid[62]),
        .I1(obs_cid[2]),
        .I2(\cid[0][5]_i_6_n_0 ),
        .I3(\cid[0][5]_i_7_n_0 ),
        .I4(obs_cid[63]),
        .I5(obs_cid[3]),
        .O(\cid[0][5]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h2F022F0200002F02)) 
    \cid[0][5]_i_6 
       (.I0(obs_cid[0]),
        .I1(obs_cid[60]),
        .I2(obs_cid[61]),
        .I3(obs_cid[1]),
        .I4(obs_cid[62]),
        .I5(obs_cid[2]),
        .O(\cid[0][5]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \cid[0][5]_i_7 
       (.I0(obs_cid[64]),
        .I1(obs_cid[4]),
        .O(\cid[0][5]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FCFF7400)) 
    \cid[10][0]_i_1 
       (.I0(obs_unrooted[10]),
        .I1(\cid[18][4]_i_2_n_0 ),
        .I2(\cid[10][0]_i_2_n_0 ),
        .I3(\cid[10][5]_i_2_n_0 ),
        .I4(\cid[10][0]_i_3_n_0 ),
        .I5(\cid[14][2]_i_2_n_0 ),
        .O(\cid[10][0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \cid[10][0]_i_2 
       (.I0(obs_cid[84]),
        .I1(\ptr[10][0]_i_3_n_0 ),
        .I2(\cid[10][0]_i_3_n_0 ),
        .O(\cid[10][0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBFAAAEAA8CAAAEAA)) 
    \cid[10][0]_i_3 
       (.I0(\cid[10][0]_i_4_n_0 ),
        .I1(\cid[15][3]_i_2_n_0 ),
        .I2(obs_unrooted[10]),
        .I3(\cid[10][5]_i_6_n_0 ),
        .I4(\cid[10][4]_i_5_n_0 ),
        .I5(obs_cid[66]),
        .O(\cid[10][0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFCFFFFFFF4440000)) 
    \cid[10][0]_i_4 
       (.I0(obs_unrooted[10]),
        .I1(\cid[2][4]_i_2_n_0 ),
        .I2(obs_cid[0]),
        .I3(\ptr[10][0]_i_7_n_0 ),
        .I4(\ptr[10][0]_i_6_n_0 ),
        .I5(obs_cid[60]),
        .O(\cid[10][0]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair333" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \cid[10][1]_i_1 
       (.I0(\cid[14][2]_i_2_n_0 ),
        .I1(\cid[10][1]_i_2_n_0 ),
        .O(\cid[10][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFCF7444FFFF0000)) 
    \cid[10][1]_i_2 
       (.I0(obs_unrooted[10]),
        .I1(\cid[18][4]_i_2_n_0 ),
        .I2(\ptr[10][0]_i_3_n_0 ),
        .I3(obs_cid[85]),
        .I4(\cid[10][1]_i_3_n_0 ),
        .I5(\cid[10][5]_i_2_n_0 ),
        .O(\cid[10][1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBFAAAEAA8CAAAEAA)) 
    \cid[10][1]_i_3 
       (.I0(\cid[10][1]_i_4_n_0 ),
        .I1(\cid[15][3]_i_2_n_0 ),
        .I2(obs_unrooted[10]),
        .I3(\cid[10][5]_i_6_n_0 ),
        .I4(\cid[10][4]_i_5_n_0 ),
        .I5(obs_cid[67]),
        .O(\cid[10][1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFCFFFFFFF4440000)) 
    \cid[10][1]_i_4 
       (.I0(obs_unrooted[10]),
        .I1(\cid[2][4]_i_2_n_0 ),
        .I2(obs_cid[1]),
        .I3(\ptr[10][0]_i_7_n_0 ),
        .I4(\ptr[10][0]_i_6_n_0 ),
        .I5(obs_cid[61]),
        .O(\cid[10][1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FCFF7400)) 
    \cid[10][2]_i_1 
       (.I0(obs_unrooted[10]),
        .I1(\cid[18][4]_i_2_n_0 ),
        .I2(\cid[10][2]_i_2_n_0 ),
        .I3(\cid[10][5]_i_2_n_0 ),
        .I4(\cid[10][2]_i_3_n_0 ),
        .I5(\cid[14][2]_i_2_n_0 ),
        .O(\cid[10][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair153" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \cid[10][2]_i_2 
       (.I0(obs_cid[86]),
        .I1(\ptr[10][0]_i_3_n_0 ),
        .I2(\cid[10][2]_i_3_n_0 ),
        .O(\cid[10][2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBFAAAEAA8CAAAEAA)) 
    \cid[10][2]_i_3 
       (.I0(\cid[10][2]_i_4_n_0 ),
        .I1(\cid[15][3]_i_2_n_0 ),
        .I2(obs_unrooted[10]),
        .I3(\cid[10][5]_i_6_n_0 ),
        .I4(\cid[10][4]_i_5_n_0 ),
        .I5(obs_cid[68]),
        .O(\cid[10][2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFCFFFFFFF4440000)) 
    \cid[10][2]_i_4 
       (.I0(obs_unrooted[10]),
        .I1(\cid[2][4]_i_2_n_0 ),
        .I2(obs_cid[2]),
        .I3(\ptr[10][0]_i_7_n_0 ),
        .I4(\ptr[10][0]_i_6_n_0 ),
        .I5(obs_cid[62]),
        .O(\cid[10][2]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair406" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \cid[10][3]_i_1 
       (.I0(\cid[14][2]_i_2_n_0 ),
        .I1(\cid[10][3]_i_2_n_0 ),
        .O(\cid[10][3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFCF7444FFFF0000)) 
    \cid[10][3]_i_2 
       (.I0(obs_unrooted[10]),
        .I1(\cid[18][4]_i_2_n_0 ),
        .I2(\ptr[10][0]_i_3_n_0 ),
        .I3(obs_cid[87]),
        .I4(\cid[10][3]_i_3_n_0 ),
        .I5(\cid[10][5]_i_2_n_0 ),
        .O(\cid[10][3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBFAAAEAA8CAAAEAA)) 
    \cid[10][3]_i_3 
       (.I0(\cid[10][3]_i_4_n_0 ),
        .I1(\cid[15][3]_i_2_n_0 ),
        .I2(obs_unrooted[10]),
        .I3(\cid[10][5]_i_6_n_0 ),
        .I4(\cid[10][4]_i_5_n_0 ),
        .I5(obs_cid[69]),
        .O(\cid[10][3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFCFFFFFFF4440000)) 
    \cid[10][3]_i_4 
       (.I0(obs_unrooted[10]),
        .I1(\cid[2][4]_i_2_n_0 ),
        .I2(obs_cid[3]),
        .I3(\ptr[10][0]_i_7_n_0 ),
        .I4(\ptr[10][0]_i_6_n_0 ),
        .I5(obs_cid[63]),
        .O(\cid[10][3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FAFF7200)) 
    \cid[10][4]_i_1 
       (.I0(\cid[18][4]_i_2_n_0 ),
        .I1(obs_unrooted[10]),
        .I2(\cid[10][4]_i_2_n_0 ),
        .I3(\cid[10][5]_i_2_n_0 ),
        .I4(\cid[10][4]_i_3_n_0 ),
        .I5(\cid[14][2]_i_2_n_0 ),
        .O(\cid[10][4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair154" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \cid[10][4]_i_2 
       (.I0(obs_cid[88]),
        .I1(\ptr[10][0]_i_3_n_0 ),
        .I2(\cid[10][4]_i_3_n_0 ),
        .O(\cid[10][4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBFAAAEAA8CAAAEAA)) 
    \cid[10][4]_i_3 
       (.I0(\cid[10][4]_i_4_n_0 ),
        .I1(\cid[15][3]_i_2_n_0 ),
        .I2(obs_unrooted[10]),
        .I3(\cid[10][5]_i_6_n_0 ),
        .I4(\cid[10][4]_i_5_n_0 ),
        .I5(obs_cid[70]),
        .O(\cid[10][4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFCFFFFFFF4440000)) 
    \cid[10][4]_i_4 
       (.I0(obs_unrooted[10]),
        .I1(\cid[2][4]_i_2_n_0 ),
        .I2(obs_cid[4]),
        .I3(\ptr[10][0]_i_7_n_0 ),
        .I4(\ptr[10][0]_i_6_n_0 ),
        .I5(obs_cid[64]),
        .O(\cid[10][4]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h71771111)) 
    \cid[10][4]_i_5 
       (.I0(obs_cid[71]),
        .I1(\cid[10][5]_i_7_n_0 ),
        .I2(\cid[10][4]_i_4_n_0 ),
        .I3(obs_cid[70]),
        .I4(\cid[10][4]_i_6_n_0 ),
        .O(\cid[10][4]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFB000FFB0)) 
    \cid[10][4]_i_6 
       (.I0(\cid[10][2]_i_4_n_0 ),
        .I1(obs_cid[68]),
        .I2(\cid[10][4]_i_7_n_0 ),
        .I3(\cid[10][3]_i_4_n_0 ),
        .I4(obs_cid[69]),
        .I5(\cid[10][4]_i_8_n_0 ),
        .O(\cid[10][4]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h20F220F2FFFF20F2)) 
    \cid[10][4]_i_7 
       (.I0(\cid[10][0]_i_4_n_0 ),
        .I1(obs_cid[66]),
        .I2(\cid[10][1]_i_4_n_0 ),
        .I3(obs_cid[67]),
        .I4(\cid[10][2]_i_4_n_0 ),
        .I5(obs_cid[68]),
        .O(\cid[10][4]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cid[10][4]_i_8 
       (.I0(\cid[10][4]_i_4_n_0 ),
        .I1(obs_cid[70]),
        .O(\cid[10][4]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h5555151104000400)) 
    \cid[10][5]_i_1 
       (.I0(\cid[14][2]_i_2_n_0 ),
        .I1(\cid[10][5]_i_2_n_0 ),
        .I2(obs_unrooted[10]),
        .I3(\cid[18][4]_i_2_n_0 ),
        .I4(obs_cid[89]),
        .I5(\cid[10][5]_i_3_n_0 ),
        .O(\cid[10][5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0400040404040404)) 
    \cid[10][5]_i_2 
       (.I0(\cid[10][5]_i_4_n_0 ),
        .I1(obs_growth[19]),
        .I2(obs_growth[18]),
        .I3(obs_unrooted[10]),
        .I4(\cid[15][3]_i_2_n_0 ),
        .I5(\cid[10][5]_i_5_n_0 ),
        .O(\cid[10][5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0B000000BBBBBBBB)) 
    \cid[10][5]_i_3 
       (.I0(obs_cid[71]),
        .I1(\cid[10][5]_i_6_n_0 ),
        .I2(obs_unrooted[10]),
        .I3(\cid[15][3]_i_2_n_0 ),
        .I4(\cid[10][5]_i_5_n_0 ),
        .I5(\cid[10][5]_i_7_n_0 ),
        .O(\cid[10][5]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair140" *) 
  LUT4 #(
    .INIT(16'h0040)) 
    \cid[10][5]_i_4 
       (.I0(obs_growth[0]),
        .I1(obs_growth[1]),
        .I2(\cid[2][4]_i_2_n_0 ),
        .I3(obs_unrooted[10]),
        .O(\cid[10][5]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair157" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cid[10][5]_i_5 
       (.I0(obs_growth[11]),
        .I1(obs_growth[10]),
        .O(\cid[10][5]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h4444444440444444)) 
    \cid[10][5]_i_6 
       (.I0(obs_growth[10]),
        .I1(obs_growth[11]),
        .I2(obs_unrooted[10]),
        .I3(\cid[2][4]_i_2_n_0 ),
        .I4(obs_growth[1]),
        .I5(obs_growth[0]),
        .O(\cid[10][5]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h00000B00FBFFFBFF)) 
    \cid[10][5]_i_7 
       (.I0(obs_unrooted[10]),
        .I1(\cid[2][4]_i_2_n_0 ),
        .I2(obs_growth[0]),
        .I3(obs_growth[1]),
        .I4(obs_cid[5]),
        .I5(obs_cid[65]),
        .O(\cid[10][5]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair396" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \cid[11][0]_i_1 
       (.I0(\cid[15][3]_i_2_n_0 ),
        .I1(\cid[11][0]_i_2_n_0 ),
        .O(\cid[11][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h74440000FFCFFFFF)) 
    \cid[11][0]_i_2 
       (.I0(obs_unrooted[11]),
        .I1(\cid[19][5]_i_3_n_0 ),
        .I2(\ptr[11][1]_i_3_n_0 ),
        .I3(obs_cid[90]),
        .I4(\cid[11][5]_i_3_n_0 ),
        .I5(\cid[11][0]_i_3_n_0 ),
        .O(\cid[11][0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h5155405551557355)) 
    \cid[11][0]_i_3 
       (.I0(\cid[11][0]_i_4_n_0 ),
        .I1(\cid[16][4]_i_3_n_0 ),
        .I2(obs_unrooted[11]),
        .I3(\cid[11][4]_i_5_n_0 ),
        .I4(\cid[11][4]_i_6_n_0 ),
        .I5(obs_cid[72]),
        .O(\cid[11][0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hDFCCDCCCD0CCDCCC)) 
    \cid[11][0]_i_4 
       (.I0(obs_unrooted[11]),
        .I1(obs_cid[66]),
        .I2(\cid[14][2]_i_2_n_0 ),
        .I3(\cid[10][5]_i_5_n_0 ),
        .I4(\cid[11][4]_i_7_n_0 ),
        .I5(obs_cid[60]),
        .O(\cid[11][0]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair408" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \cid[11][1]_i_1 
       (.I0(\cid[15][3]_i_2_n_0 ),
        .I1(\cid[11][1]_i_2_n_0 ),
        .O(\cid[11][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFCF7444FFFF0000)) 
    \cid[11][1]_i_2 
       (.I0(obs_unrooted[11]),
        .I1(\cid[19][5]_i_3_n_0 ),
        .I2(\ptr[11][1]_i_3_n_0 ),
        .I3(obs_cid[91]),
        .I4(\cid[11][1]_i_3_n_0 ),
        .I5(\cid[11][5]_i_3_n_0 ),
        .O(\cid[11][1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAEAABFAAAEAA8CAA)) 
    \cid[11][1]_i_3 
       (.I0(\cid[11][1]_i_4_n_0 ),
        .I1(\cid[16][4]_i_3_n_0 ),
        .I2(obs_unrooted[11]),
        .I3(\cid[11][4]_i_5_n_0 ),
        .I4(\cid[11][4]_i_6_n_0 ),
        .I5(obs_cid[73]),
        .O(\cid[11][1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hDFCCDCCCD0CCDCCC)) 
    \cid[11][1]_i_4 
       (.I0(obs_unrooted[11]),
        .I1(obs_cid[67]),
        .I2(\cid[14][2]_i_2_n_0 ),
        .I3(\cid[10][5]_i_5_n_0 ),
        .I4(\cid[11][4]_i_7_n_0 ),
        .I5(obs_cid[61]),
        .O(\cid[11][1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FCFF7400)) 
    \cid[11][2]_i_1 
       (.I0(obs_unrooted[11]),
        .I1(\cid[19][5]_i_3_n_0 ),
        .I2(\cid[11][2]_i_2_n_0 ),
        .I3(\cid[11][5]_i_3_n_0 ),
        .I4(\cid[11][2]_i_3_n_0 ),
        .I5(\cid[15][3]_i_2_n_0 ),
        .O(\cid[11][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair334" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \cid[11][2]_i_2 
       (.I0(obs_cid[92]),
        .I1(\ptr[11][1]_i_3_n_0 ),
        .I2(\cid[11][2]_i_3_n_0 ),
        .O(\cid[11][2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAEAABFAAAEAA8CAA)) 
    \cid[11][2]_i_3 
       (.I0(\cid[11][2]_i_4_n_0 ),
        .I1(\cid[16][4]_i_3_n_0 ),
        .I2(obs_unrooted[11]),
        .I3(\cid[11][4]_i_5_n_0 ),
        .I4(\cid[11][4]_i_6_n_0 ),
        .I5(obs_cid[74]),
        .O(\cid[11][2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hDFCCDCCCD0CCDCCC)) 
    \cid[11][2]_i_4 
       (.I0(obs_unrooted[11]),
        .I1(obs_cid[68]),
        .I2(\cid[14][2]_i_2_n_0 ),
        .I3(\cid[10][5]_i_5_n_0 ),
        .I4(\cid[11][4]_i_7_n_0 ),
        .I5(obs_cid[62]),
        .O(\cid[11][2]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair408" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \cid[11][3]_i_1 
       (.I0(\cid[15][3]_i_2_n_0 ),
        .I1(\cid[11][3]_i_2_n_0 ),
        .O(\cid[11][3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFCF7444FFFF0000)) 
    \cid[11][3]_i_2 
       (.I0(obs_unrooted[11]),
        .I1(\cid[19][5]_i_3_n_0 ),
        .I2(\ptr[11][1]_i_3_n_0 ),
        .I3(obs_cid[93]),
        .I4(\cid[11][3]_i_3_n_0 ),
        .I5(\cid[11][5]_i_3_n_0 ),
        .O(\cid[11][3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAEAABFAAAEAA8CAA)) 
    \cid[11][3]_i_3 
       (.I0(\cid[11][3]_i_4_n_0 ),
        .I1(\cid[16][4]_i_3_n_0 ),
        .I2(obs_unrooted[11]),
        .I3(\cid[11][4]_i_5_n_0 ),
        .I4(\cid[11][4]_i_6_n_0 ),
        .I5(obs_cid[75]),
        .O(\cid[11][3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hDFCCDCCCD0CCDCCC)) 
    \cid[11][3]_i_4 
       (.I0(obs_unrooted[11]),
        .I1(obs_cid[69]),
        .I2(\cid[14][2]_i_2_n_0 ),
        .I3(\cid[10][5]_i_5_n_0 ),
        .I4(\cid[11][4]_i_7_n_0 ),
        .I5(obs_cid[63]),
        .O(\cid[11][3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FAFF7200)) 
    \cid[11][4]_i_1 
       (.I0(\cid[19][5]_i_3_n_0 ),
        .I1(obs_unrooted[11]),
        .I2(\cid[11][4]_i_2_n_0 ),
        .I3(\cid[11][5]_i_3_n_0 ),
        .I4(\cid[11][4]_i_3_n_0 ),
        .I5(\cid[15][3]_i_2_n_0 ),
        .O(\cid[11][4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h20F220F2FFFF20F2)) 
    \cid[11][4]_i_10 
       (.I0(\cid[11][0]_i_4_n_0 ),
        .I1(obs_cid[72]),
        .I2(\cid[11][1]_i_4_n_0 ),
        .I3(obs_cid[73]),
        .I4(\cid[11][2]_i_4_n_0 ),
        .I5(obs_cid[74]),
        .O(\cid[11][4]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cid[11][4]_i_11 
       (.I0(\cid[11][4]_i_4_n_0 ),
        .I1(obs_cid[76]),
        .O(\cid[11][4]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hBB2BFFFFBB2BBB2B)) 
    \cid[11][4]_i_12 
       (.I0(obs_cid[61]),
        .I1(obs_cid[67]),
        .I2(obs_cid[66]),
        .I3(obs_cid[60]),
        .I4(obs_cid[68]),
        .I5(obs_cid[62]),
        .O(\cid[11][4]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair313" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    \cid[11][4]_i_13 
       (.I0(obs_cid[69]),
        .I1(obs_cid[63]),
        .I2(obs_cid[70]),
        .I3(obs_cid[64]),
        .O(\cid[11][4]_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair334" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \cid[11][4]_i_2 
       (.I0(obs_cid[94]),
        .I1(\ptr[11][1]_i_3_n_0 ),
        .I2(\cid[11][4]_i_3_n_0 ),
        .O(\cid[11][4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAEAABFAAAEAA8CAA)) 
    \cid[11][4]_i_3 
       (.I0(\cid[11][4]_i_4_n_0 ),
        .I1(\cid[16][4]_i_3_n_0 ),
        .I2(obs_unrooted[11]),
        .I3(\cid[11][4]_i_5_n_0 ),
        .I4(\cid[11][4]_i_6_n_0 ),
        .I5(obs_cid[76]),
        .O(\cid[11][4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hDFCCDCCCD0CCDCCC)) 
    \cid[11][4]_i_4 
       (.I0(obs_unrooted[11]),
        .I1(obs_cid[70]),
        .I2(\cid[14][2]_i_2_n_0 ),
        .I3(\cid[10][5]_i_5_n_0 ),
        .I4(\cid[11][4]_i_7_n_0 ),
        .I5(obs_cid[64]),
        .O(\cid[11][4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h4444444440444444)) 
    \cid[11][4]_i_5 
       (.I0(obs_growth[12]),
        .I1(obs_growth[13]),
        .I2(obs_unrooted[11]),
        .I3(\cid[14][2]_i_2_n_0 ),
        .I4(obs_growth[11]),
        .I5(obs_growth[10]),
        .O(\cid[11][4]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'hF440FFF0)) 
    \cid[11][4]_i_6 
       (.I0(\cid[11][4]_i_4_n_0 ),
        .I1(obs_cid[76]),
        .I2(obs_cid[77]),
        .I3(\cid[11][5]_i_4_n_0 ),
        .I4(\cid[11][4]_i_8_n_0 ),
        .O(\cid[11][4]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h4D44DDDD)) 
    \cid[11][4]_i_7 
       (.I0(obs_cid[65]),
        .I1(obs_cid[71]),
        .I2(obs_cid[64]),
        .I3(obs_cid[70]),
        .I4(\cid[11][4]_i_9_n_0 ),
        .O(\cid[11][4]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFB000FFB0)) 
    \cid[11][4]_i_8 
       (.I0(\cid[11][2]_i_4_n_0 ),
        .I1(obs_cid[74]),
        .I2(\cid[11][4]_i_10_n_0 ),
        .I3(\cid[11][3]_i_4_n_0 ),
        .I4(obs_cid[75]),
        .I5(\cid[11][4]_i_11_n_0 ),
        .O(\cid[11][4]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFB0BB0000)) 
    \cid[11][4]_i_9 
       (.I0(obs_cid[63]),
        .I1(obs_cid[69]),
        .I2(obs_cid[62]),
        .I3(obs_cid[68]),
        .I4(\cid[11][4]_i_12_n_0 ),
        .I5(\cid[11][4]_i_13_n_0 ),
        .O(\cid[11][4]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h4044554440444044)) 
    \cid[11][5]_i_1 
       (.I0(\cid[15][3]_i_2_n_0 ),
        .I1(\cid[11][5]_i_2_n_0 ),
        .I2(obs_cid[95]),
        .I3(\cid[11][5]_i_3_n_0 ),
        .I4(obs_unrooted[11]),
        .I5(\cid[19][5]_i_3_n_0 ),
        .O(\cid[11][5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0F0F0F0F2F000F0F)) 
    \cid[11][5]_i_2 
       (.I0(\cid[16][4]_i_3_n_0 ),
        .I1(obs_unrooted[11]),
        .I2(\cid[11][5]_i_4_n_0 ),
        .I3(obs_cid[77]),
        .I4(\cid[11][5]_i_5_n_0 ),
        .I5(\cid[11][5]_i_6_n_0 ),
        .O(\cid[11][5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000BF00000000)) 
    \cid[11][5]_i_3 
       (.I0(obs_unrooted[11]),
        .I1(\cid[16][4]_i_3_n_0 ),
        .I2(\cid[11][5]_i_5_n_0 ),
        .I3(\cid[11][5]_i_6_n_0 ),
        .I4(obs_growth[22]),
        .I5(obs_growth[23]),
        .O(\cid[11][5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0F0F0F0F0DFF0F0F)) 
    \cid[11][5]_i_4 
       (.I0(\cid[14][2]_i_2_n_0 ),
        .I1(obs_unrooted[11]),
        .I2(obs_cid[71]),
        .I3(obs_cid[65]),
        .I4(obs_growth[11]),
        .I5(obs_growth[10]),
        .O(\cid[11][5]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair294" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cid[11][5]_i_5 
       (.I0(obs_growth[13]),
        .I1(obs_growth[12]),
        .O(\cid[11][5]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair157" *) 
  LUT4 #(
    .INIT(16'h0040)) 
    \cid[11][5]_i_6 
       (.I0(obs_growth[10]),
        .I1(obs_growth[11]),
        .I2(\cid[14][2]_i_2_n_0 ),
        .I3(obs_unrooted[11]),
        .O(\cid[11][5]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFA0072)) 
    \cid[12][0]_i_1 
       (.I0(\cid[20][4]_i_2_n_0 ),
        .I1(obs_unrooted[12]),
        .I2(\cid[12][0]_i_2_n_0 ),
        .I3(\cid[12][5]_i_2_n_0 ),
        .I4(\cid[12][0]_i_3_n_0 ),
        .I5(\cid[16][4]_i_3_n_0 ),
        .O(\cid[12][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair341" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \cid[12][0]_i_2 
       (.I0(obs_cid[96]),
        .I1(\ptr[12][0]_i_2_n_0 ),
        .I2(\cid[12][0]_i_3_n_0 ),
        .O(\cid[12][0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFF20FF2AFF20F520)) 
    \cid[12][0]_i_3 
       (.I0(\cid[12][4]_i_4_n_0 ),
        .I1(obs_unrooted[12]),
        .I2(\cid[17][4]_i_3_n_0 ),
        .I3(\cid[12][0]_i_4_n_0 ),
        .I4(\cid[12][4]_i_6_n_0 ),
        .I5(obs_cid[78]),
        .O(\cid[12][0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hDCCCDCCCDFCCD0CC)) 
    \cid[12][0]_i_4 
       (.I0(obs_unrooted[12]),
        .I1(obs_cid[72]),
        .I2(\cid[15][3]_i_2_n_0 ),
        .I3(\cid[11][5]_i_5_n_0 ),
        .I4(obs_cid[66]),
        .I5(\cid[12][4]_i_7_n_0 ),
        .O(\cid[12][0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFA0072)) 
    \cid[12][1]_i_1 
       (.I0(\cid[20][4]_i_2_n_0 ),
        .I1(obs_unrooted[12]),
        .I2(\cid[12][1]_i_2_n_0 ),
        .I3(\cid[12][5]_i_2_n_0 ),
        .I4(\cid[12][1]_i_3_n_0 ),
        .I5(\cid[16][4]_i_3_n_0 ),
        .O(\cid[12][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair341" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \cid[12][1]_i_2 
       (.I0(obs_cid[97]),
        .I1(\ptr[12][0]_i_2_n_0 ),
        .I2(\cid[12][1]_i_3_n_0 ),
        .O(\cid[12][1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFF20FF2AFF20F520)) 
    \cid[12][1]_i_3 
       (.I0(\cid[12][4]_i_4_n_0 ),
        .I1(obs_unrooted[12]),
        .I2(\cid[17][4]_i_3_n_0 ),
        .I3(\cid[12][1]_i_4_n_0 ),
        .I4(\cid[12][4]_i_6_n_0 ),
        .I5(obs_cid[79]),
        .O(\cid[12][1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hDCCCDCCCDFCCD0CC)) 
    \cid[12][1]_i_4 
       (.I0(obs_unrooted[12]),
        .I1(obs_cid[73]),
        .I2(\cid[15][3]_i_2_n_0 ),
        .I3(\cid[11][5]_i_5_n_0 ),
        .I4(obs_cid[67]),
        .I5(\cid[12][4]_i_7_n_0 ),
        .O(\cid[12][1]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair398" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \cid[12][2]_i_1 
       (.I0(\cid[16][4]_i_3_n_0 ),
        .I1(\cid[12][2]_i_2_n_0 ),
        .O(\cid[12][2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000FFAF7222)) 
    \cid[12][2]_i_2 
       (.I0(\cid[20][4]_i_2_n_0 ),
        .I1(obs_unrooted[12]),
        .I2(\ptr[12][0]_i_2_n_0 ),
        .I3(obs_cid[98]),
        .I4(\cid[12][2]_i_3_n_0 ),
        .I5(\cid[12][5]_i_2_n_0 ),
        .O(\cid[12][2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFF20FF2AFF20F520)) 
    \cid[12][2]_i_3 
       (.I0(\cid[12][4]_i_4_n_0 ),
        .I1(obs_unrooted[12]),
        .I2(\cid[17][4]_i_3_n_0 ),
        .I3(\cid[12][2]_i_4_n_0 ),
        .I4(\cid[12][4]_i_6_n_0 ),
        .I5(obs_cid[80]),
        .O(\cid[12][2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hDCCCDCCCDFCCD0CC)) 
    \cid[12][2]_i_4 
       (.I0(obs_unrooted[12]),
        .I1(obs_cid[74]),
        .I2(\cid[15][3]_i_2_n_0 ),
        .I3(\cid[11][5]_i_5_n_0 ),
        .I4(obs_cid[68]),
        .I5(\cid[12][4]_i_7_n_0 ),
        .O(\cid[12][2]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \cid[12][3]_i_1 
       (.I0(\cid[16][4]_i_3_n_0 ),
        .I1(\cid[12][3]_i_2_n_0 ),
        .O(\cid[12][3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000FFAF7222)) 
    \cid[12][3]_i_2 
       (.I0(\cid[20][4]_i_2_n_0 ),
        .I1(obs_unrooted[12]),
        .I2(\ptr[12][0]_i_2_n_0 ),
        .I3(obs_cid[99]),
        .I4(\cid[12][3]_i_3_n_0 ),
        .I5(\cid[12][5]_i_2_n_0 ),
        .O(\cid[12][3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFF20FF2AFF20F520)) 
    \cid[12][3]_i_3 
       (.I0(\cid[12][4]_i_4_n_0 ),
        .I1(obs_unrooted[12]),
        .I2(\cid[17][4]_i_3_n_0 ),
        .I3(\cid[12][3]_i_4_n_0 ),
        .I4(\cid[12][4]_i_6_n_0 ),
        .I5(obs_cid[81]),
        .O(\cid[12][3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hDCCCDCCCDFCCD0CC)) 
    \cid[12][3]_i_4 
       (.I0(obs_unrooted[12]),
        .I1(obs_cid[75]),
        .I2(\cid[15][3]_i_2_n_0 ),
        .I3(\cid[11][5]_i_5_n_0 ),
        .I4(obs_cid[69]),
        .I5(\cid[12][4]_i_7_n_0 ),
        .O(\cid[12][3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFA0072)) 
    \cid[12][4]_i_1 
       (.I0(\cid[20][4]_i_2_n_0 ),
        .I1(obs_unrooted[12]),
        .I2(\cid[12][4]_i_2_n_0 ),
        .I3(\cid[12][5]_i_2_n_0 ),
        .I4(\cid[12][4]_i_3_n_0 ),
        .I5(\cid[16][4]_i_3_n_0 ),
        .O(\cid[12][4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h20F220F2FFFF20F2)) 
    \cid[12][4]_i_10 
       (.I0(\cid[12][0]_i_4_n_0 ),
        .I1(obs_cid[78]),
        .I2(\cid[12][1]_i_4_n_0 ),
        .I3(obs_cid[79]),
        .I4(\cid[12][2]_i_4_n_0 ),
        .I5(obs_cid[80]),
        .O(\cid[12][4]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cid[12][4]_i_11 
       (.I0(\cid[12][4]_i_5_n_0 ),
        .I1(obs_cid[82]),
        .O(\cid[12][4]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hBF0BFFFFBF0BBF0B)) 
    \cid[12][4]_i_12 
       (.I0(obs_cid[66]),
        .I1(obs_cid[72]),
        .I2(obs_cid[73]),
        .I3(obs_cid[67]),
        .I4(obs_cid[74]),
        .I5(obs_cid[68]),
        .O(\cid[12][4]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \cid[12][4]_i_13 
       (.I0(obs_cid[75]),
        .I1(obs_cid[69]),
        .I2(obs_cid[76]),
        .I3(obs_cid[70]),
        .O(\cid[12][4]_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair170" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \cid[12][4]_i_2 
       (.I0(obs_cid[100]),
        .I1(\ptr[12][0]_i_2_n_0 ),
        .I2(\cid[12][4]_i_3_n_0 ),
        .O(\cid[12][4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFF20FF2AFF20F520)) 
    \cid[12][4]_i_3 
       (.I0(\cid[12][4]_i_4_n_0 ),
        .I1(obs_unrooted[12]),
        .I2(\cid[17][4]_i_3_n_0 ),
        .I3(\cid[12][4]_i_5_n_0 ),
        .I4(\cid[12][4]_i_6_n_0 ),
        .I5(obs_cid[82]),
        .O(\cid[12][4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h4444444440444444)) 
    \cid[12][4]_i_4 
       (.I0(obs_growth[14]),
        .I1(obs_growth[15]),
        .I2(obs_unrooted[12]),
        .I3(\cid[15][3]_i_2_n_0 ),
        .I4(obs_growth[13]),
        .I5(obs_growth[12]),
        .O(\cid[12][4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hDCCCDCCCDFCCD0CC)) 
    \cid[12][4]_i_5 
       (.I0(obs_unrooted[12]),
        .I1(obs_cid[76]),
        .I2(\cid[15][3]_i_2_n_0 ),
        .I3(\cid[11][5]_i_5_n_0 ),
        .I4(obs_cid[70]),
        .I5(\cid[12][4]_i_7_n_0 ),
        .O(\cid[12][4]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT5 #(
    .INIT(32'h8E88EEEE)) 
    \cid[12][4]_i_6 
       (.I0(obs_cid[83]),
        .I1(\cid[12][5]_i_6_n_0 ),
        .I2(\cid[12][4]_i_5_n_0 ),
        .I3(obs_cid[82]),
        .I4(\cid[12][4]_i_8_n_0 ),
        .O(\cid[12][4]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hB2BB2222)) 
    \cid[12][4]_i_7 
       (.I0(obs_cid[71]),
        .I1(obs_cid[77]),
        .I2(obs_cid[70]),
        .I3(obs_cid[76]),
        .I4(\cid[12][4]_i_9_n_0 ),
        .O(\cid[12][4]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFB000FFB0)) 
    \cid[12][4]_i_8 
       (.I0(\cid[12][2]_i_4_n_0 ),
        .I1(obs_cid[80]),
        .I2(\cid[12][4]_i_10_n_0 ),
        .I3(\cid[12][3]_i_4_n_0 ),
        .I4(obs_cid[81]),
        .I5(\cid[12][4]_i_11_n_0 ),
        .O(\cid[12][4]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFB0BB0000)) 
    \cid[12][4]_i_9 
       (.I0(obs_cid[69]),
        .I1(obs_cid[75]),
        .I2(obs_cid[68]),
        .I3(obs_cid[74]),
        .I4(\cid[12][4]_i_12_n_0 ),
        .I5(\cid[12][4]_i_13_n_0 ),
        .O(\cid[12][4]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h5555551000100010)) 
    \cid[12][5]_i_1 
       (.I0(\cid[16][4]_i_3_n_0 ),
        .I1(obs_unrooted[12]),
        .I2(\cid[20][4]_i_2_n_0 ),
        .I3(\cid[12][5]_i_2_n_0 ),
        .I4(obs_cid[101]),
        .I5(\cid[12][5]_i_3_n_0 ),
        .O(\cid[12][5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFF40FFFFFFFF)) 
    \cid[12][5]_i_2 
       (.I0(obs_unrooted[12]),
        .I1(\cid[17][4]_i_3_n_0 ),
        .I2(\cid[12][5]_i_4_n_0 ),
        .I3(\cid[12][5]_i_5_n_0 ),
        .I4(obs_growth[26]),
        .I5(obs_growth[27]),
        .O(\cid[12][5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0F0F0F0F2F000F0F)) 
    \cid[12][5]_i_3 
       (.I0(\cid[17][4]_i_3_n_0 ),
        .I1(obs_unrooted[12]),
        .I2(\cid[12][5]_i_6_n_0 ),
        .I3(obs_cid[83]),
        .I4(\cid[12][5]_i_4_n_0 ),
        .I5(\cid[12][5]_i_5_n_0 ),
        .O(\cid[12][5]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair296" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cid[12][5]_i_4 
       (.I0(obs_growth[15]),
        .I1(obs_growth[14]),
        .O(\cid[12][5]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair171" *) 
  LUT4 #(
    .INIT(16'h0040)) 
    \cid[12][5]_i_5 
       (.I0(obs_growth[12]),
        .I1(obs_growth[13]),
        .I2(\cid[15][3]_i_2_n_0 ),
        .I3(obs_unrooted[12]),
        .O(\cid[12][5]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0F0F0F0F0DFF0F0F)) 
    \cid[12][5]_i_6 
       (.I0(\cid[15][3]_i_2_n_0 ),
        .I1(obs_unrooted[12]),
        .I2(obs_cid[77]),
        .I3(obs_cid[71]),
        .I4(obs_growth[13]),
        .I5(obs_growth[12]),
        .O(\cid[12][5]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair409" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \cid[13][0]_i_1 
       (.I0(\cid[17][4]_i_3_n_0 ),
        .I1(\cid[13][0]_i_2_n_0 ),
        .O(\cid[13][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h74440000FFCFFFFF)) 
    \cid[13][0]_i_2 
       (.I0(obs_unrooted[13]),
        .I1(\cid[21][4]_i_2_n_0 ),
        .I2(\cid[13][4]_i_4_n_0 ),
        .I3(obs_cid[102]),
        .I4(\cid[13][5]_i_3_n_0 ),
        .I5(\cid[13][0]_i_3_n_0 ),
        .O(\cid[13][0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hA2AAA2AA80AAB3AA)) 
    \cid[13][0]_i_3 
       (.I0(\cid[13][0]_i_4_n_0 ),
        .I1(\cid[3][4]_i_2_n_0 ),
        .I2(obs_unrooted[13]),
        .I3(\cid[13][5]_i_7_n_0 ),
        .I4(obs_cid[6]),
        .I5(\cid[13][4]_i_6_n_0 ),
        .O(\cid[13][0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00030000B8BBFFFF)) 
    \cid[13][0]_i_4 
       (.I0(obs_unrooted[13]),
        .I1(\cid[16][4]_i_3_n_0 ),
        .I2(\cid[13][4]_i_8_n_0 ),
        .I3(obs_cid[72]),
        .I4(\cid[12][5]_i_4_n_0 ),
        .I5(obs_cid[78]),
        .O(\cid[13][0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FC74FF00)) 
    \cid[13][1]_i_1 
       (.I0(obs_unrooted[13]),
        .I1(\cid[21][4]_i_2_n_0 ),
        .I2(\cid[13][1]_i_2_n_0 ),
        .I3(\cid[13][1]_i_3_n_0 ),
        .I4(\cid[13][5]_i_3_n_0 ),
        .I5(\cid[17][4]_i_3_n_0 ),
        .O(\cid[13][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair172" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \cid[13][1]_i_2 
       (.I0(obs_cid[103]),
        .I1(\cid[13][4]_i_4_n_0 ),
        .I2(\cid[13][1]_i_3_n_0 ),
        .O(\cid[13][1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAEAAAEAABFAA8CAA)) 
    \cid[13][1]_i_3 
       (.I0(\cid[13][1]_i_4_n_0 ),
        .I1(\cid[3][4]_i_2_n_0 ),
        .I2(obs_unrooted[13]),
        .I3(\cid[13][5]_i_7_n_0 ),
        .I4(obs_cid[7]),
        .I5(\cid[13][4]_i_6_n_0 ),
        .O(\cid[13][1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hDCCCDCCCDFCCD0CC)) 
    \cid[13][1]_i_4 
       (.I0(obs_unrooted[13]),
        .I1(obs_cid[79]),
        .I2(\cid[16][4]_i_3_n_0 ),
        .I3(\cid[12][5]_i_4_n_0 ),
        .I4(obs_cid[73]),
        .I5(\cid[13][4]_i_8_n_0 ),
        .O(\cid[13][1]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair409" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \cid[13][2]_i_1 
       (.I0(\cid[17][4]_i_3_n_0 ),
        .I1(\cid[13][2]_i_2_n_0 ),
        .O(\cid[13][2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFCFFFFF74440000)) 
    \cid[13][2]_i_2 
       (.I0(obs_unrooted[13]),
        .I1(\cid[21][4]_i_2_n_0 ),
        .I2(\cid[13][4]_i_4_n_0 ),
        .I3(obs_cid[104]),
        .I4(\cid[13][5]_i_3_n_0 ),
        .I5(\cid[13][2]_i_3_n_0 ),
        .O(\cid[13][2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAEAAAEAABFAA8CAA)) 
    \cid[13][2]_i_3 
       (.I0(\cid[13][2]_i_4_n_0 ),
        .I1(\cid[3][4]_i_2_n_0 ),
        .I2(obs_unrooted[13]),
        .I3(\cid[13][5]_i_7_n_0 ),
        .I4(obs_cid[8]),
        .I5(\cid[13][4]_i_6_n_0 ),
        .O(\cid[13][2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hDCCCDCCCDFCCD0CC)) 
    \cid[13][2]_i_4 
       (.I0(obs_unrooted[13]),
        .I1(obs_cid[80]),
        .I2(\cid[16][4]_i_3_n_0 ),
        .I3(\cid[12][5]_i_4_n_0 ),
        .I4(obs_cid[74]),
        .I5(\cid[13][4]_i_8_n_0 ),
        .O(\cid[13][2]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair410" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \cid[13][3]_i_1 
       (.I0(\cid[17][4]_i_3_n_0 ),
        .I1(\cid[13][3]_i_2_n_0 ),
        .O(\cid[13][3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFCFFFFF74440000)) 
    \cid[13][3]_i_2 
       (.I0(obs_unrooted[13]),
        .I1(\cid[21][4]_i_2_n_0 ),
        .I2(\cid[13][4]_i_4_n_0 ),
        .I3(obs_cid[105]),
        .I4(\cid[13][5]_i_3_n_0 ),
        .I5(\cid[13][3]_i_3_n_0 ),
        .O(\cid[13][3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAEAAAEAABFAA8CAA)) 
    \cid[13][3]_i_3 
       (.I0(\cid[13][3]_i_4_n_0 ),
        .I1(\cid[3][4]_i_2_n_0 ),
        .I2(obs_unrooted[13]),
        .I3(\cid[13][5]_i_7_n_0 ),
        .I4(obs_cid[9]),
        .I5(\cid[13][4]_i_6_n_0 ),
        .O(\cid[13][3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hDCCCDCCCDFCCD0CC)) 
    \cid[13][3]_i_4 
       (.I0(obs_unrooted[13]),
        .I1(obs_cid[81]),
        .I2(\cid[16][4]_i_3_n_0 ),
        .I3(\cid[12][5]_i_4_n_0 ),
        .I4(obs_cid[75]),
        .I5(\cid[13][4]_i_8_n_0 ),
        .O(\cid[13][3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FA72FF00)) 
    \cid[13][4]_i_1 
       (.I0(\cid[21][4]_i_2_n_0 ),
        .I1(obs_unrooted[13]),
        .I2(\cid[13][4]_i_2_n_0 ),
        .I3(\cid[13][4]_i_3_n_0 ),
        .I4(\cid[13][5]_i_3_n_0 ),
        .I5(\cid[17][4]_i_3_n_0 ),
        .O(\cid[13][4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair172" *) 
  LUT4 #(
    .INIT(16'hEF0E)) 
    \cid[13][4]_i_10 
       (.I0(obs_cid[102]),
        .I1(\cid[13][0]_i_3_n_0 ),
        .I2(\cid[13][1]_i_3_n_0 ),
        .I3(obs_cid[103]),
        .O(\cid[13][4]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cid[13][4]_i_11 
       (.I0(obs_cid[106]),
        .I1(\cid[13][4]_i_3_n_0 ),
        .O(\cid[13][4]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFB0BB0000)) 
    \cid[13][4]_i_12 
       (.I0(obs_cid[75]),
        .I1(obs_cid[81]),
        .I2(obs_cid[74]),
        .I3(obs_cid[80]),
        .I4(\cid[13][4]_i_15_n_0 ),
        .I5(\cid[13][4]_i_16_n_0 ),
        .O(\cid[13][4]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h10F110F1FFFF10F1)) 
    \cid[13][4]_i_13 
       (.I0(obs_cid[6]),
        .I1(\cid[13][0]_i_4_n_0 ),
        .I2(\cid[13][1]_i_4_n_0 ),
        .I3(obs_cid[7]),
        .I4(\cid[13][2]_i_4_n_0 ),
        .I5(obs_cid[8]),
        .O(\cid[13][4]_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cid[13][4]_i_14 
       (.I0(\cid[13][4]_i_5_n_0 ),
        .I1(obs_cid[10]),
        .O(\cid[13][4]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hBF0BFFFFBF0BBF0B)) 
    \cid[13][4]_i_15 
       (.I0(obs_cid[72]),
        .I1(obs_cid[78]),
        .I2(obs_cid[79]),
        .I3(obs_cid[73]),
        .I4(obs_cid[80]),
        .I5(obs_cid[74]),
        .O(\cid[13][4]_i_15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair311" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    \cid[13][4]_i_16 
       (.I0(obs_cid[81]),
        .I1(obs_cid[75]),
        .I2(obs_cid[82]),
        .I3(obs_cid[76]),
        .O(\cid[13][4]_i_16_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \cid[13][4]_i_2 
       (.I0(obs_cid[106]),
        .I1(\cid[13][4]_i_4_n_0 ),
        .I2(\cid[13][4]_i_3_n_0 ),
        .O(\cid[13][4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAEAABFAAAEAA8CAA)) 
    \cid[13][4]_i_3 
       (.I0(\cid[13][4]_i_5_n_0 ),
        .I1(\cid[3][4]_i_2_n_0 ),
        .I2(obs_unrooted[13]),
        .I3(\cid[13][5]_i_7_n_0 ),
        .I4(\cid[13][4]_i_6_n_0 ),
        .I5(obs_cid[10]),
        .O(\cid[13][4]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT5 #(
    .INIT(32'h4D44DDDD)) 
    \cid[13][4]_i_4 
       (.I0(obs_cid[107]),
        .I1(\cid[13][5]_i_4_n_0 ),
        .I2(obs_cid[106]),
        .I3(\cid[13][4]_i_3_n_0 ),
        .I4(\cid[13][4]_i_7_n_0 ),
        .O(\cid[13][4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hDCCCDCCCDFCCD0CC)) 
    \cid[13][4]_i_5 
       (.I0(obs_unrooted[13]),
        .I1(obs_cid[82]),
        .I2(\cid[16][4]_i_3_n_0 ),
        .I3(\cid[12][5]_i_4_n_0 ),
        .I4(obs_cid[76]),
        .I5(\cid[13][4]_i_8_n_0 ),
        .O(\cid[13][4]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT5 #(
    .INIT(32'h8E88EEEE)) 
    \cid[13][4]_i_6 
       (.I0(obs_cid[11]),
        .I1(\cid[13][5]_i_6_n_0 ),
        .I2(\cid[13][4]_i_5_n_0 ),
        .I3(obs_cid[10]),
        .I4(\cid[13][4]_i_9_n_0 ),
        .O(\cid[13][4]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFB200FFB2)) 
    \cid[13][4]_i_7 
       (.I0(obs_cid[104]),
        .I1(\cid[13][2]_i_3_n_0 ),
        .I2(\cid[13][4]_i_10_n_0 ),
        .I3(obs_cid[105]),
        .I4(\cid[13][3]_i_3_n_0 ),
        .I5(\cid[13][4]_i_11_n_0 ),
        .O(\cid[13][4]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hB2BB2222)) 
    \cid[13][4]_i_8 
       (.I0(obs_cid[77]),
        .I1(obs_cid[83]),
        .I2(obs_cid[76]),
        .I3(obs_cid[82]),
        .I4(\cid[13][4]_i_12_n_0 ),
        .O(\cid[13][4]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFB000FFB0)) 
    \cid[13][4]_i_9 
       (.I0(\cid[13][2]_i_4_n_0 ),
        .I1(obs_cid[8]),
        .I2(\cid[13][4]_i_13_n_0 ),
        .I3(\cid[13][3]_i_4_n_0 ),
        .I4(obs_cid[9]),
        .I5(\cid[13][4]_i_14_n_0 ),
        .O(\cid[13][4]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'h06)) 
    \cid[13][5]_i_1 
       (.I0(stage__0[0]),
        .I1(stage__0[2]),
        .I2(\FSM_sequential_stage_reg[1]_rep__4_n_0 ),
        .O(\cid[13][5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h5555151104000400)) 
    \cid[13][5]_i_2 
       (.I0(\cid[17][4]_i_3_n_0 ),
        .I1(\cid[13][5]_i_3_n_0 ),
        .I2(obs_unrooted[13]),
        .I3(\cid[21][4]_i_2_n_0 ),
        .I4(obs_cid[107]),
        .I5(\cid[13][5]_i_4_n_0 ),
        .O(\cid[13][5]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h20)) 
    \cid[13][5]_i_3 
       (.I0(\cid[13][5]_i_5_n_0 ),
        .I1(obs_growth[32]),
        .I2(obs_growth[33]),
        .O(\cid[13][5]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT5 #(
    .INIT(32'h4F000F0F)) 
    \cid[13][5]_i_4 
       (.I0(obs_unrooted[13]),
        .I1(\cid[3][4]_i_2_n_0 ),
        .I2(\cid[13][5]_i_6_n_0 ),
        .I3(obs_cid[11]),
        .I4(\cid[13][5]_i_7_n_0 ),
        .O(\cid[13][5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF77077777)) 
    \cid[13][5]_i_5 
       (.I0(\cid[12][5]_i_4_n_0 ),
        .I1(\cid[16][4]_i_3_n_0 ),
        .I2(obs_growth[17]),
        .I3(obs_growth[16]),
        .I4(\cid[3][4]_i_2_n_0 ),
        .I5(obs_unrooted[13]),
        .O(\cid[13][5]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0F0F0F0F0BFF0F0F)) 
    \cid[13][5]_i_6 
       (.I0(obs_unrooted[13]),
        .I1(\cid[16][4]_i_3_n_0 ),
        .I2(obs_cid[83]),
        .I3(obs_cid[77]),
        .I4(obs_growth[15]),
        .I5(obs_growth[14]),
        .O(\cid[13][5]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h4444444444044444)) 
    \cid[13][5]_i_7 
       (.I0(obs_growth[16]),
        .I1(obs_growth[17]),
        .I2(obs_growth[15]),
        .I3(obs_growth[14]),
        .I4(\cid[16][4]_i_3_n_0 ),
        .I5(obs_unrooted[13]),
        .O(\cid[13][5]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hA3A3A0A3A0A0A0A0)) 
    \cid[14][0]_i_1 
       (.I0(obs_cid[60]),
        .I1(\cid[18][4]_i_2_n_0 ),
        .I2(\FSM_sequential_stage_reg[1]_rep__1_n_0 ),
        .I3(\cid[14][0]_i_2_n_0 ),
        .I4(\cid[14][5]_i_3_n_0 ),
        .I5(\cid[14][0]_i_3_n_0 ),
        .O(\cid[14][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hD050D0F0D0FAD0F0)) 
    \cid[14][0]_i_2 
       (.I0(\cid[14][5]_i_9_n_0 ),
        .I1(obs_unrooted[14]),
        .I2(\cid[14][0]_i_4_n_0 ),
        .I3(\cid[22][2]_i_3_n_0 ),
        .I4(\cid[14][4]_i_6_n_0 ),
        .I5(obs_cid[108]),
        .O(\cid[14][0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h08FBFFFFF8FBFFFF)) 
    \cid[14][0]_i_3 
       (.I0(obs_cid[60]),
        .I1(\cid[14][4]_i_7_n_0 ),
        .I2(\cid[14][2]_i_2_n_0 ),
        .I3(\cid[14][0]_i_2_n_0 ),
        .I4(\cid[14][5]_i_3_n_0 ),
        .I5(obs_unrooted[14]),
        .O(\cid[14][0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h80AAA2AAB3AAA2AA)) 
    \cid[14][0]_i_4 
       (.I0(\cid[14][0]_i_5_n_0 ),
        .I1(\cid[19][5]_i_3_n_0 ),
        .I2(obs_unrooted[14]),
        .I3(\cid[14][5]_i_12_n_0 ),
        .I4(\cid[14][4]_i_9_n_0 ),
        .I5(obs_cid[90]),
        .O(\cid[14][0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00110000F0BBFFFF)) 
    \cid[14][0]_i_5 
       (.I0(\cid[14][4]_i_18_n_0 ),
        .I1(obs_cid[12]),
        .I2(obs_unrooted[14]),
        .I3(\cid[4][4]_i_2_n_0 ),
        .I4(\ptr[2][1]_i_3_n_0 ),
        .I5(obs_cid[84]),
        .O(\cid[14][0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hF6F6FFFFF6F6FF00)) 
    \cid[14][1]_i_1 
       (.I0(obs_cid[61]),
        .I1(\cid[14][1]_i_2_n_0 ),
        .I2(\cid[14][2]_i_2_n_0 ),
        .I3(\cid[14][1]_i_3_n_0 ),
        .I4(\FSM_sequential_stage_reg[1]_rep__1_n_0 ),
        .I5(\cid[18][4]_i_2_n_0 ),
        .O(\cid[14][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair128" *) 
  LUT5 #(
    .INIT(32'h00001115)) 
    \cid[14][1]_i_2 
       (.I0(obs_cid[64]),
        .I1(obs_cid[63]),
        .I2(obs_cid[61]),
        .I3(obs_cid[62]),
        .I4(obs_cid[65]),
        .O(\cid[14][1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h4FCF4F0F4F034F0F)) 
    \cid[14][1]_i_3 
       (.I0(obs_unrooted[14]),
        .I1(\cid[14][5]_i_3_n_0 ),
        .I2(\cid[14][1]_i_4_n_0 ),
        .I3(\cid[14][2]_i_2_n_0 ),
        .I4(\cid[14][4]_i_7_n_0 ),
        .I5(obs_cid[61]),
        .O(\cid[14][1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0D050D0F0DAF0D0F)) 
    \cid[14][1]_i_4 
       (.I0(\cid[14][5]_i_9_n_0 ),
        .I1(obs_unrooted[14]),
        .I2(\cid[14][1]_i_5_n_0 ),
        .I3(\cid[22][2]_i_3_n_0 ),
        .I4(\cid[14][4]_i_6_n_0 ),
        .I5(obs_cid[109]),
        .O(\cid[14][1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hBFAAAEAA8CAAAEAA)) 
    \cid[14][1]_i_5 
       (.I0(\cid[14][1]_i_6_n_0 ),
        .I1(\cid[19][5]_i_3_n_0 ),
        .I2(obs_unrooted[14]),
        .I3(\cid[14][5]_i_12_n_0 ),
        .I4(\cid[14][4]_i_9_n_0 ),
        .I5(obs_cid[91]),
        .O(\cid[14][1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hDCCCDCCCDFCCD0CC)) 
    \cid[14][1]_i_6 
       (.I0(obs_unrooted[14]),
        .I1(obs_cid[85]),
        .I2(\cid[4][4]_i_2_n_0 ),
        .I3(\ptr[2][1]_i_3_n_0 ),
        .I4(obs_cid[13]),
        .I5(\cid[14][4]_i_18_n_0 ),
        .O(\cid[14][1]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hF9F9FFFFF9F9FF00)) 
    \cid[14][2]_i_1 
       (.I0(obs_cid[62]),
        .I1(\cid[14][3]_i_3_n_0 ),
        .I2(\cid[14][2]_i_2_n_0 ),
        .I3(\cid[14][2]_i_3_n_0 ),
        .I4(\FSM_sequential_stage_reg[1]_rep__1_n_0 ),
        .I5(\cid[18][4]_i_2_n_0 ),
        .O(\cid[14][2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \cid[14][2]_i_2 
       (.I0(obs_cid[60]),
        .I1(obs_cid[65]),
        .I2(obs_cid[63]),
        .I3(obs_cid[61]),
        .I4(obs_cid[64]),
        .I5(obs_cid[62]),
        .O(\cid[14][2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h4FCF4F0F4F034F0F)) 
    \cid[14][2]_i_3 
       (.I0(obs_unrooted[14]),
        .I1(\cid[14][5]_i_3_n_0 ),
        .I2(\cid[14][2]_i_4_n_0 ),
        .I3(\cid[14][2]_i_2_n_0 ),
        .I4(\cid[14][4]_i_7_n_0 ),
        .I5(obs_cid[62]),
        .O(\cid[14][2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00D500DF0ADF00DF)) 
    \cid[14][2]_i_4 
       (.I0(\cid[14][5]_i_9_n_0 ),
        .I1(obs_unrooted[14]),
        .I2(\cid[22][2]_i_3_n_0 ),
        .I3(\cid[14][2]_i_5_n_0 ),
        .I4(\cid[14][4]_i_6_n_0 ),
        .I5(obs_cid[110]),
        .O(\cid[14][2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hBFAAAEAA8CAAAEAA)) 
    \cid[14][2]_i_5 
       (.I0(\cid[14][2]_i_6_n_0 ),
        .I1(\cid[19][5]_i_3_n_0 ),
        .I2(obs_unrooted[14]),
        .I3(\cid[14][5]_i_12_n_0 ),
        .I4(\cid[14][4]_i_9_n_0 ),
        .I5(obs_cid[92]),
        .O(\cid[14][2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hDCCCDCCCDFCCD0CC)) 
    \cid[14][2]_i_6 
       (.I0(obs_unrooted[14]),
        .I1(obs_cid[86]),
        .I2(\cid[4][4]_i_2_n_0 ),
        .I3(\ptr[2][1]_i_3_n_0 ),
        .I4(obs_cid[14]),
        .I5(\cid[14][4]_i_18_n_0 ),
        .O(\cid[14][2]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hEBEE0000EBEEEBEE)) 
    \cid[14][3]_i_1 
       (.I0(\cid[14][3]_i_2_n_0 ),
        .I1(obs_cid[63]),
        .I2(\cid[14][3]_i_3_n_0 ),
        .I3(obs_cid[62]),
        .I4(\cid[14][3]_i_4_n_0 ),
        .I5(\cid[14][5]_i_5_n_0 ),
        .O(\cid[14][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair406" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \cid[14][3]_i_2 
       (.I0(\cid[14][2]_i_2_n_0 ),
        .I1(\FSM_sequential_stage_reg[1]_rep__1_n_0 ),
        .O(\cid[14][3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair128" *) 
  LUT5 #(
    .INIT(32'h00000015)) 
    \cid[14][3]_i_3 
       (.I0(obs_cid[65]),
        .I1(obs_cid[62]),
        .I2(obs_cid[63]),
        .I3(obs_cid[64]),
        .I4(obs_cid[61]),
        .O(\cid[14][3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h4FCF4F0F4F034F0F)) 
    \cid[14][3]_i_4 
       (.I0(obs_unrooted[14]),
        .I1(\cid[14][5]_i_3_n_0 ),
        .I2(\cid[14][3]_i_5_n_0 ),
        .I3(\cid[14][2]_i_2_n_0 ),
        .I4(\cid[14][4]_i_7_n_0 ),
        .I5(obs_cid[63]),
        .O(\cid[14][3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00D500DF0ADF00DF)) 
    \cid[14][3]_i_5 
       (.I0(\cid[14][5]_i_9_n_0 ),
        .I1(obs_unrooted[14]),
        .I2(\cid[22][2]_i_3_n_0 ),
        .I3(\cid[14][3]_i_6_n_0 ),
        .I4(\cid[14][4]_i_6_n_0 ),
        .I5(obs_cid[111]),
        .O(\cid[14][3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hBFAAAEAA8CAAAEAA)) 
    \cid[14][3]_i_6 
       (.I0(\cid[14][3]_i_7_n_0 ),
        .I1(\cid[19][5]_i_3_n_0 ),
        .I2(obs_unrooted[14]),
        .I3(\cid[14][5]_i_12_n_0 ),
        .I4(\cid[14][4]_i_9_n_0 ),
        .I5(obs_cid[93]),
        .O(\cid[14][3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hDCCCDCCCDFCCD0CC)) 
    \cid[14][3]_i_7 
       (.I0(obs_unrooted[14]),
        .I1(obs_cid[87]),
        .I2(\cid[4][4]_i_2_n_0 ),
        .I3(\ptr[2][1]_i_3_n_0 ),
        .I4(obs_cid[15]),
        .I5(\cid[14][4]_i_18_n_0 ),
        .O(\cid[14][3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h555500CF55550000)) 
    \cid[14][4]_i_1 
       (.I0(\cid[14][4]_i_2_n_0 ),
        .I1(\cid[14][5]_i_3_n_0 ),
        .I2(\cid[14][4]_i_3_n_0 ),
        .I3(\cid[18][4]_i_2_n_0 ),
        .I4(\FSM_sequential_stage_reg[1]_rep__1_n_0 ),
        .I5(\cid[14][4]_i_4_n_0 ),
        .O(\cid[14][4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair179" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cid[14][4]_i_10 
       (.I0(\cid[14][4]_i_5_n_0 ),
        .I1(obs_cid[112]),
        .O(\cid[14][4]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \cid[14][4]_i_11 
       (.I0(obs_cid[111]),
        .I1(\cid[14][3]_i_6_n_0 ),
        .I2(obs_cid[110]),
        .I3(\cid[14][2]_i_5_n_0 ),
        .O(\cid[14][4]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hEEFE00F0FFFFEEFE)) 
    \cid[14][4]_i_12 
       (.I0(obs_cid[108]),
        .I1(\cid[14][0]_i_4_n_0 ),
        .I2(obs_cid[110]),
        .I3(\cid[14][2]_i_5_n_0 ),
        .I4(obs_cid[109]),
        .I5(\cid[14][1]_i_5_n_0 ),
        .O(\cid[14][4]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair179" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    \cid[14][4]_i_13 
       (.I0(\cid[14][3]_i_6_n_0 ),
        .I1(obs_cid[111]),
        .I2(\cid[14][4]_i_5_n_0 ),
        .I3(obs_cid[112]),
        .O(\cid[14][4]_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair178" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cid[14][4]_i_14 
       (.I0(\cid[14][4]_i_3_n_0 ),
        .I1(obs_cid[64]),
        .O(\cid[14][4]_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair177" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \cid[14][4]_i_15 
       (.I0(obs_cid[62]),
        .I1(\cid[14][2]_i_4_n_0 ),
        .I2(obs_cid[63]),
        .I3(\cid[14][3]_i_5_n_0 ),
        .O(\cid[14][4]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h011F011F011FFFFF)) 
    \cid[14][4]_i_16 
       (.I0(obs_cid[60]),
        .I1(\cid[14][0]_i_2_n_0 ),
        .I2(obs_cid[61]),
        .I3(\cid[14][1]_i_4_n_0 ),
        .I4(obs_cid[62]),
        .I5(\cid[14][2]_i_4_n_0 ),
        .O(\cid[14][4]_i_16_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair178" *) 
  LUT4 #(
    .INIT(16'h111F)) 
    \cid[14][4]_i_17 
       (.I0(\cid[14][4]_i_3_n_0 ),
        .I1(obs_cid[64]),
        .I2(\cid[14][3]_i_5_n_0 ),
        .I3(obs_cid[63]),
        .O(\cid[14][4]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h4D4D4D4D0C4D0C0C)) 
    \cid[14][4]_i_18 
       (.I0(\cid[2][5]_i_8_n_0 ),
        .I1(obs_cid[17]),
        .I2(obs_cid[89]),
        .I3(\cid[14][4]_i_24_n_0 ),
        .I4(\cid[14][4]_i_25_n_0 ),
        .I5(\cid[14][4]_i_26_n_0 ),
        .O(\cid[14][4]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h00000B00FBFFFBFF)) 
    \cid[14][4]_i_19 
       (.I0(obs_unrooted[14]),
        .I1(\cid[4][4]_i_2_n_0 ),
        .I2(obs_growth[2]),
        .I3(obs_growth[3]),
        .I4(obs_cid[17]),
        .I5(obs_cid[89]),
        .O(\cid[14][4]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h1933993399339933)) 
    \cid[14][4]_i_2 
       (.I0(obs_cid[62]),
        .I1(obs_cid[64]),
        .I2(obs_cid[61]),
        .I3(obs_cid[63]),
        .I4(obs_cid[65]),
        .I5(obs_cid[60]),
        .O(\cid[14][4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair180" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cid[14][4]_i_20 
       (.I0(obs_cid[94]),
        .I1(\cid[14][4]_i_8_n_0 ),
        .O(\cid[14][4]_i_20_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \cid[14][4]_i_21 
       (.I0(\cid[14][2]_i_6_n_0 ),
        .I1(obs_cid[92]),
        .I2(\cid[14][3]_i_7_n_0 ),
        .I3(obs_cid[93]),
        .O(\cid[14][4]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h10F110F1FFFF10F1)) 
    \cid[14][4]_i_22 
       (.I0(obs_cid[90]),
        .I1(\cid[14][0]_i_5_n_0 ),
        .I2(\cid[14][1]_i_6_n_0 ),
        .I3(obs_cid[91]),
        .I4(\cid[14][2]_i_6_n_0 ),
        .I5(obs_cid[92]),
        .O(\cid[14][4]_i_22_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair180" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    \cid[14][4]_i_23 
       (.I0(obs_cid[94]),
        .I1(\cid[14][4]_i_8_n_0 ),
        .I2(obs_cid[93]),
        .I3(\cid[14][3]_i_7_n_0 ),
        .O(\cid[14][4]_i_23_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair191" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    \cid[14][4]_i_24 
       (.I0(obs_cid[14]),
        .I1(obs_cid[86]),
        .I2(obs_cid[15]),
        .I3(obs_cid[87]),
        .O(\cid[14][4]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hDDFD00F0FFFFDDFD)) 
    \cid[14][4]_i_25 
       (.I0(obs_cid[84]),
        .I1(obs_cid[12]),
        .I2(obs_cid[14]),
        .I3(obs_cid[86]),
        .I4(obs_cid[13]),
        .I5(obs_cid[85]),
        .O(\cid[14][4]_i_25_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair190" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    \cid[14][4]_i_26 
       (.I0(obs_cid[87]),
        .I1(obs_cid[15]),
        .I2(obs_cid[88]),
        .I3(obs_cid[16]),
        .O(\cid[14][4]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'h00D500DF0ADF00DF)) 
    \cid[14][4]_i_3 
       (.I0(\cid[14][5]_i_9_n_0 ),
        .I1(obs_unrooted[14]),
        .I2(\cid[22][2]_i_3_n_0 ),
        .I3(\cid[14][4]_i_5_n_0 ),
        .I4(\cid[14][4]_i_6_n_0 ),
        .I5(obs_cid[112]),
        .O(\cid[14][4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0F8FFF8FFFBFFFBF)) 
    \cid[14][4]_i_4 
       (.I0(obs_cid[64]),
        .I1(\cid[14][4]_i_7_n_0 ),
        .I2(\cid[14][5]_i_3_n_0 ),
        .I3(\cid[14][2]_i_2_n_0 ),
        .I4(obs_unrooted[14]),
        .I5(\cid[14][4]_i_3_n_0 ),
        .O(\cid[14][4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hBFAAAEAA8CAAAEAA)) 
    \cid[14][4]_i_5 
       (.I0(\cid[14][4]_i_8_n_0 ),
        .I1(\cid[19][5]_i_3_n_0 ),
        .I2(obs_unrooted[14]),
        .I3(\cid[14][5]_i_12_n_0 ),
        .I4(\cid[14][4]_i_9_n_0 ),
        .I5(obs_cid[94]),
        .O(\cid[14][4]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hD4D4D4D4DDD4DDDD)) 
    \cid[14][4]_i_6 
       (.I0(obs_cid[113]),
        .I1(\cid[14][5]_i_7_n_0 ),
        .I2(\cid[14][4]_i_10_n_0 ),
        .I3(\cid[14][4]_i_11_n_0 ),
        .I4(\cid[14][4]_i_12_n_0 ),
        .I5(\cid[14][4]_i_13_n_0 ),
        .O(\cid[14][4]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h4D4D4D4D0C4D0C0C)) 
    \cid[14][4]_i_7 
       (.I0(\cid[14][4]_i_14_n_0 ),
        .I1(\cid[14][5]_i_2_n_0 ),
        .I2(obs_cid[65]),
        .I3(\cid[14][4]_i_15_n_0 ),
        .I4(\cid[14][4]_i_16_n_0 ),
        .I5(\cid[14][4]_i_17_n_0 ),
        .O(\cid[14][4]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hDCCCDCCCDFCCD0CC)) 
    \cid[14][4]_i_8 
       (.I0(obs_unrooted[14]),
        .I1(obs_cid[88]),
        .I2(\cid[4][4]_i_2_n_0 ),
        .I3(\ptr[2][1]_i_3_n_0 ),
        .I4(obs_cid[16]),
        .I5(\cid[14][4]_i_18_n_0 ),
        .O(\cid[14][4]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h1717171711171111)) 
    \cid[14][4]_i_9 
       (.I0(obs_cid[95]),
        .I1(\cid[14][4]_i_19_n_0 ),
        .I2(\cid[14][4]_i_20_n_0 ),
        .I3(\cid[14][4]_i_21_n_0 ),
        .I4(\cid[14][4]_i_22_n_0 ),
        .I5(\cid[14][4]_i_23_n_0 ),
        .O(\cid[14][4]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFA20000)) 
    \cid[14][5]_i_1 
       (.I0(\cid[14][5]_i_2_n_0 ),
        .I1(\cid[14][5]_i_3_n_0 ),
        .I2(obs_cid[65]),
        .I3(\cid[14][5]_i_4_n_0 ),
        .I4(\cid[14][5]_i_5_n_0 ),
        .I5(\cid[14][5]_i_6_n_0 ),
        .O(\cid[14][5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF77077777)) 
    \cid[14][5]_i_10 
       (.I0(\cid[4][4]_i_2_n_0 ),
        .I1(\ptr[2][1]_i_3_n_0 ),
        .I2(obs_growth[21]),
        .I3(obs_growth[20]),
        .I4(\cid[19][5]_i_3_n_0 ),
        .I5(obs_unrooted[14]),
        .O(\cid[14][5]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair143" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    \cid[14][5]_i_11 
       (.I0(obs_unrooted[14]),
        .I1(\cid[22][2]_i_3_n_0 ),
        .I2(obs_growth[34]),
        .I3(obs_growth[35]),
        .O(\cid[14][5]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h4440444444444444)) 
    \cid[14][5]_i_12 
       (.I0(obs_growth[20]),
        .I1(obs_growth[21]),
        .I2(obs_unrooted[14]),
        .I3(obs_growth[2]),
        .I4(obs_growth[3]),
        .I5(\cid[4][4]_i_2_n_0 ),
        .O(\cid[14][5]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair181" *) 
  LUT4 #(
    .INIT(16'hE0EE)) 
    \cid[14][5]_i_2 
       (.I0(\cid[14][5]_i_7_n_0 ),
        .I1(\cid[14][5]_i_8_n_0 ),
        .I2(obs_cid[113]),
        .I3(\cid[14][5]_i_9_n_0 ),
        .O(\cid[14][5]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h0008)) 
    \cid[14][5]_i_3 
       (.I0(\cid[14][5]_i_10_n_0 ),
        .I1(obs_growth[19]),
        .I2(obs_growth[18]),
        .I3(\cid[14][5]_i_11_n_0 ),
        .O(\cid[14][5]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair155" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \cid[14][5]_i_4 
       (.I0(\cid[14][5]_i_3_n_0 ),
        .I1(\cid[14][2]_i_2_n_0 ),
        .I2(obs_unrooted[14]),
        .O(\cid[14][5]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair413" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \cid[14][5]_i_5 
       (.I0(\FSM_sequential_stage_reg[1]_rep__1_n_0 ),
        .I1(\cid[18][4]_i_2_n_0 ),
        .O(\cid[14][5]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h8AA8A8A8A8A8A8A8)) 
    \cid[14][5]_i_6 
       (.I0(\FSM_sequential_stage_reg[1]_rep__1_n_0 ),
        .I1(\cid[14][2]_i_2_n_0 ),
        .I2(obs_cid[65]),
        .I3(obs_cid[63]),
        .I4(obs_cid[62]),
        .I5(obs_cid[64]),
        .O(\cid[14][5]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hB000B0B0BBBBBBBB)) 
    \cid[14][5]_i_7 
       (.I0(obs_cid[95]),
        .I1(\cid[14][5]_i_12_n_0 ),
        .I2(obs_cid[89]),
        .I3(obs_cid[17]),
        .I4(\ptr[2][1]_i_3_n_0 ),
        .I5(\cid[14][5]_i_10_n_0 ),
        .O(\cid[14][5]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair143" *) 
  LUT5 #(
    .INIT(32'h00000800)) 
    \cid[14][5]_i_8 
       (.I0(\cid[14][5]_i_10_n_0 ),
        .I1(obs_growth[35]),
        .I2(obs_growth[34]),
        .I3(\cid[22][2]_i_3_n_0 ),
        .I4(obs_unrooted[14]),
        .O(\cid[14][5]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h20)) 
    \cid[14][5]_i_9 
       (.I0(\cid[14][5]_i_10_n_0 ),
        .I1(obs_growth[34]),
        .I2(obs_growth[35]),
        .O(\cid[14][5]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair169" *) 
  LUT4 #(
    .INIT(16'hAFAC)) 
    \cid[15][0]_i_1 
       (.I0(obs_cid[66]),
        .I1(\cid[15][0]_i_2_n_0 ),
        .I2(\FSM_sequential_stage_reg[1]_rep__3_n_0 ),
        .I3(\cid[19][5]_i_3_n_0 ),
        .O(\cid[15][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2FAF2F0F2F052F0F)) 
    \cid[15][0]_i_2 
       (.I0(\cid[15][5]_i_3_n_0 ),
        .I1(obs_unrooted[15]),
        .I2(\cid[15][0]_i_3_n_0 ),
        .I3(\cid[15][3]_i_2_n_0 ),
        .I4(\cid[15][4]_i_8_n_0 ),
        .I5(obs_cid[66]),
        .O(\cid[15][0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hD050D0F0D0FAD0F0)) 
    \cid[15][0]_i_3 
       (.I0(\cid[15][4]_i_5_n_0 ),
        .I1(obs_unrooted[15]),
        .I2(\cid[15][0]_i_4_n_0 ),
        .I3(\cid[23][2]_i_3_n_0 ),
        .I4(\cid[15][4]_i_7_n_0 ),
        .I5(obs_cid[114]),
        .O(\cid[15][0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h80AAA2AAB3AAA2AA)) 
    \cid[15][0]_i_4 
       (.I0(\cid[15][0]_i_5_n_0 ),
        .I1(\cid[20][4]_i_2_n_0 ),
        .I2(obs_unrooted[15]),
        .I3(\cid[15][4]_i_10_n_0 ),
        .I4(\cid[15][4]_i_11_n_0 ),
        .I5(obs_cid[96]),
        .O(\cid[15][0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00440000F077FFFF)) 
    \cid[15][0]_i_5 
       (.I0(obs_cid[84]),
        .I1(\cid[15][4]_i_20_n_0 ),
        .I2(obs_unrooted[15]),
        .I3(\cid[18][4]_i_2_n_0 ),
        .I4(\cid[15][4]_i_21_n_0 ),
        .I5(obs_cid[90]),
        .O(\cid[15][0]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h6F6F6F60)) 
    \cid[15][1]_i_1 
       (.I0(obs_cid[67]),
        .I1(\cid[15][1]_i_2_n_0 ),
        .I2(\FSM_sequential_stage_reg[1]_rep__3_n_0 ),
        .I3(\cid[19][5]_i_3_n_0 ),
        .I4(\cid[15][1]_i_3_n_0 ),
        .O(\cid[15][1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00001115)) 
    \cid[15][1]_i_2 
       (.I0(obs_cid[70]),
        .I1(obs_cid[69]),
        .I2(obs_cid[67]),
        .I3(obs_cid[68]),
        .I4(obs_cid[71]),
        .O(\cid[15][1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h2FAF2F0F2F052F0F)) 
    \cid[15][1]_i_3 
       (.I0(\cid[15][5]_i_3_n_0 ),
        .I1(obs_unrooted[15]),
        .I2(\cid[15][1]_i_4_n_0 ),
        .I3(\cid[15][3]_i_2_n_0 ),
        .I4(\cid[15][4]_i_8_n_0 ),
        .I5(obs_cid[67]),
        .O(\cid[15][1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0D050D0F0DAF0D0F)) 
    \cid[15][1]_i_4 
       (.I0(\cid[15][4]_i_5_n_0 ),
        .I1(obs_unrooted[15]),
        .I2(\cid[15][1]_i_5_n_0 ),
        .I3(\cid[23][2]_i_3_n_0 ),
        .I4(\cid[15][4]_i_7_n_0 ),
        .I5(obs_cid[115]),
        .O(\cid[15][1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h7F555D554C555D55)) 
    \cid[15][1]_i_5 
       (.I0(\cid[15][1]_i_6_n_0 ),
        .I1(\cid[20][4]_i_2_n_0 ),
        .I2(obs_unrooted[15]),
        .I3(\cid[15][4]_i_10_n_0 ),
        .I4(\cid[15][4]_i_11_n_0 ),
        .I5(obs_cid[97]),
        .O(\cid[15][1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h203323332F332333)) 
    \cid[15][1]_i_6 
       (.I0(obs_unrooted[15]),
        .I1(obs_cid[91]),
        .I2(\cid[18][4]_i_2_n_0 ),
        .I3(\cid[15][4]_i_21_n_0 ),
        .I4(\cid[15][4]_i_20_n_0 ),
        .I5(obs_cid[85]),
        .O(\cid[15][1]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hF9F9FFFFF9F9FF00)) 
    \cid[15][2]_i_1 
       (.I0(obs_cid[68]),
        .I1(\cid[15][2]_i_2_n_0 ),
        .I2(\cid[15][3]_i_2_n_0 ),
        .I3(\cid[15][2]_i_3_n_0 ),
        .I4(\FSM_sequential_stage_reg[1]_rep__3_n_0 ),
        .I5(\cid[19][5]_i_3_n_0 ),
        .O(\cid[15][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair129" *) 
  LUT5 #(
    .INIT(32'h00000015)) 
    \cid[15][2]_i_2 
       (.I0(obs_cid[71]),
        .I1(obs_cid[68]),
        .I2(obs_cid[69]),
        .I3(obs_cid[70]),
        .I4(obs_cid[67]),
        .O(\cid[15][2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF2FAF2F0F250F2F0)) 
    \cid[15][2]_i_3 
       (.I0(\cid[15][5]_i_3_n_0 ),
        .I1(obs_unrooted[15]),
        .I2(\cid[15][2]_i_4_n_0 ),
        .I3(\cid[15][3]_i_2_n_0 ),
        .I4(\cid[15][4]_i_8_n_0 ),
        .I5(obs_cid[68]),
        .O(\cid[15][2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h2FAF2F0F2F052F0F)) 
    \cid[15][2]_i_4 
       (.I0(\cid[15][4]_i_5_n_0 ),
        .I1(obs_unrooted[15]),
        .I2(\cid[15][2]_i_5_n_0 ),
        .I3(\cid[23][2]_i_3_n_0 ),
        .I4(\cid[15][4]_i_7_n_0 ),
        .I5(obs_cid[116]),
        .O(\cid[15][2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h80AAA2AAB3AAA2AA)) 
    \cid[15][2]_i_5 
       (.I0(\cid[15][2]_i_6_n_0 ),
        .I1(\cid[20][4]_i_2_n_0 ),
        .I2(obs_unrooted[15]),
        .I3(\cid[15][4]_i_10_n_0 ),
        .I4(\cid[15][4]_i_11_n_0 ),
        .I5(obs_cid[98]),
        .O(\cid[15][2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h203323332F332333)) 
    \cid[15][2]_i_6 
       (.I0(obs_unrooted[15]),
        .I1(obs_cid[92]),
        .I2(\cid[18][4]_i_2_n_0 ),
        .I3(\cid[15][4]_i_21_n_0 ),
        .I4(\cid[15][4]_i_20_n_0 ),
        .I5(obs_cid[86]),
        .O(\cid[15][2]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hEEFFEEF0)) 
    \cid[15][3]_i_1 
       (.I0(\cid[15][3]_i_2_n_0 ),
        .I1(\cid[15][3]_i_3_n_0 ),
        .I2(\cid[15][3]_i_4_n_0 ),
        .I3(\FSM_sequential_stage_reg[1]_rep__3_n_0 ),
        .I4(\cid[19][5]_i_3_n_0 ),
        .O(\cid[15][3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \cid[15][3]_i_2 
       (.I0(obs_cid[67]),
        .I1(obs_cid[69]),
        .I2(obs_cid[71]),
        .I3(obs_cid[66]),
        .I4(obs_cid[70]),
        .I5(obs_cid[68]),
        .O(\cid[15][3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair129" *) 
  LUT5 #(
    .INIT(32'h3C3C3C38)) 
    \cid[15][3]_i_3 
       (.I0(obs_cid[71]),
        .I1(obs_cid[68]),
        .I2(obs_cid[69]),
        .I3(obs_cid[70]),
        .I4(obs_cid[67]),
        .O(\cid[15][3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFF2AFF20F520FF20)) 
    \cid[15][3]_i_4 
       (.I0(\cid[15][5]_i_3_n_0 ),
        .I1(obs_unrooted[15]),
        .I2(\cid[15][3]_i_2_n_0 ),
        .I3(\cid[15][3]_i_5_n_0 ),
        .I4(\cid[15][4]_i_8_n_0 ),
        .I5(obs_cid[69]),
        .O(\cid[15][3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h2FAF2F0F2F052F0F)) 
    \cid[15][3]_i_5 
       (.I0(\cid[15][4]_i_5_n_0 ),
        .I1(obs_unrooted[15]),
        .I2(\cid[15][3]_i_6_n_0 ),
        .I3(\cid[23][2]_i_3_n_0 ),
        .I4(\cid[15][4]_i_7_n_0 ),
        .I5(obs_cid[117]),
        .O(\cid[15][3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h4055515573555155)) 
    \cid[15][3]_i_6 
       (.I0(\cid[15][3]_i_7_n_0 ),
        .I1(\cid[20][4]_i_2_n_0 ),
        .I2(obs_unrooted[15]),
        .I3(\cid[15][4]_i_10_n_0 ),
        .I4(\cid[15][4]_i_11_n_0 ),
        .I5(obs_cid[99]),
        .O(\cid[15][3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hDFCCDCCCD0CCDCCC)) 
    \cid[15][3]_i_7 
       (.I0(obs_unrooted[15]),
        .I1(obs_cid[93]),
        .I2(\cid[18][4]_i_2_n_0 ),
        .I3(\cid[15][4]_i_21_n_0 ),
        .I4(\cid[15][4]_i_20_n_0 ),
        .I5(obs_cid[87]),
        .O(\cid[15][3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h555500CF55550000)) 
    \cid[15][4]_i_1 
       (.I0(\cid[15][4]_i_2_n_0 ),
        .I1(\cid[15][5]_i_3_n_0 ),
        .I2(\cid[15][4]_i_3_n_0 ),
        .I3(\cid[19][5]_i_3_n_0 ),
        .I4(\FSM_sequential_stage_reg[1]_rep__3_n_0 ),
        .I5(\cid[15][4]_i_4_n_0 ),
        .O(\cid[15][4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4444444440444444)) 
    \cid[15][4]_i_10 
       (.I0(obs_growth[24]),
        .I1(obs_growth[25]),
        .I2(obs_unrooted[15]),
        .I3(\cid[18][4]_i_2_n_0 ),
        .I4(obs_growth[21]),
        .I5(obs_growth[20]),
        .O(\cid[15][4]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h1717171703170303)) 
    \cid[15][4]_i_11 
       (.I0(\cid[15][4]_i_22_n_0 ),
        .I1(obs_cid[101]),
        .I2(\cid[15][5]_i_9_n_0 ),
        .I3(\cid[15][4]_i_23_n_0 ),
        .I4(\cid[15][4]_i_24_n_0 ),
        .I5(\cid[15][4]_i_25_n_0 ),
        .O(\cid[15][4]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair188" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cid[15][4]_i_12 
       (.I0(\cid[15][4]_i_6_n_0 ),
        .I1(obs_cid[118]),
        .O(\cid[15][4]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h111F)) 
    \cid[15][4]_i_13 
       (.I0(\cid[15][3]_i_6_n_0 ),
        .I1(obs_cid[117]),
        .I2(\cid[15][2]_i_5_n_0 ),
        .I3(obs_cid[116]),
        .O(\cid[15][4]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hFEEEF000FFFFFEEE)) 
    \cid[15][4]_i_14 
       (.I0(obs_cid[114]),
        .I1(\cid[15][0]_i_4_n_0 ),
        .I2(obs_cid[116]),
        .I3(\cid[15][2]_i_5_n_0 ),
        .I4(obs_cid[115]),
        .I5(\cid[15][1]_i_5_n_0 ),
        .O(\cid[15][4]_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair188" *) 
  LUT4 #(
    .INIT(16'hF444)) 
    \cid[15][4]_i_15 
       (.I0(\cid[15][4]_i_6_n_0 ),
        .I1(obs_cid[118]),
        .I2(obs_cid[117]),
        .I3(\cid[15][3]_i_6_n_0 ),
        .O(\cid[15][4]_i_15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair187" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cid[15][4]_i_16 
       (.I0(\cid[15][4]_i_3_n_0 ),
        .I1(obs_cid[70]),
        .O(\cid[15][4]_i_16_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \cid[15][4]_i_17 
       (.I0(\cid[15][2]_i_4_n_0 ),
        .I1(obs_cid[68]),
        .I2(\cid[15][3]_i_5_n_0 ),
        .I3(obs_cid[69]),
        .O(\cid[15][4]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h011F011FFFFF011F)) 
    \cid[15][4]_i_18 
       (.I0(obs_cid[66]),
        .I1(\cid[15][0]_i_3_n_0 ),
        .I2(obs_cid[67]),
        .I3(\cid[15][1]_i_4_n_0 ),
        .I4(\cid[15][2]_i_4_n_0 ),
        .I5(obs_cid[68]),
        .O(\cid[15][4]_i_18_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair187" *) 
  LUT4 #(
    .INIT(16'h1F11)) 
    \cid[15][4]_i_19 
       (.I0(\cid[15][4]_i_3_n_0 ),
        .I1(obs_cid[70]),
        .I2(obs_cid[69]),
        .I3(\cid[15][3]_i_5_n_0 ),
        .O(\cid[15][4]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h1999333399993333)) 
    \cid[15][4]_i_2 
       (.I0(obs_cid[68]),
        .I1(obs_cid[70]),
        .I2(obs_cid[66]),
        .I3(obs_cid[71]),
        .I4(obs_cid[69]),
        .I5(obs_cid[67]),
        .O(\cid[15][4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB0B0B0B0BBB0BBBB)) 
    \cid[15][4]_i_20 
       (.I0(obs_cid[95]),
        .I1(obs_cid[89]),
        .I2(\cid[15][4]_i_26_n_0 ),
        .I3(\cid[15][4]_i_27_n_0 ),
        .I4(\cid[15][4]_i_28_n_0 ),
        .I5(\cid[15][4]_i_29_n_0 ),
        .O(\cid[15][4]_i_20_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cid[15][4]_i_21 
       (.I0(obs_growth[21]),
        .I1(obs_growth[20]),
        .O(\cid[15][4]_i_21_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair189" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cid[15][4]_i_22 
       (.I0(\cid[15][4]_i_9_n_0 ),
        .I1(obs_cid[100]),
        .O(\cid[15][4]_i_22_n_0 ));
  LUT4 #(
    .INIT(16'h8F88)) 
    \cid[15][4]_i_23 
       (.I0(obs_cid[98]),
        .I1(\cid[15][2]_i_6_n_0 ),
        .I2(\cid[15][3]_i_7_n_0 ),
        .I3(obs_cid[99]),
        .O(\cid[15][4]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'h011F011F011FFFFF)) 
    \cid[15][4]_i_24 
       (.I0(obs_cid[96]),
        .I1(\cid[15][0]_i_5_n_0 ),
        .I2(obs_cid[97]),
        .I3(\cid[15][1]_i_6_n_0 ),
        .I4(obs_cid[98]),
        .I5(\cid[15][2]_i_6_n_0 ),
        .O(\cid[15][4]_i_24_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair189" *) 
  LUT4 #(
    .INIT(16'h1F11)) 
    \cid[15][4]_i_25 
       (.I0(\cid[15][4]_i_9_n_0 ),
        .I1(obs_cid[100]),
        .I2(obs_cid[99]),
        .I3(\cid[15][3]_i_7_n_0 ),
        .O(\cid[15][4]_i_25_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair314" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    \cid[15][4]_i_26 
       (.I0(obs_cid[89]),
        .I1(obs_cid[95]),
        .I2(obs_cid[88]),
        .I3(obs_cid[94]),
        .O(\cid[15][4]_i_26_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \cid[15][4]_i_27 
       (.I0(obs_cid[87]),
        .I1(obs_cid[93]),
        .I2(obs_cid[86]),
        .I3(obs_cid[92]),
        .O(\cid[15][4]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hDDFD00F0FFFFDDFD)) 
    \cid[15][4]_i_28 
       (.I0(obs_cid[90]),
        .I1(obs_cid[84]),
        .I2(obs_cid[86]),
        .I3(obs_cid[92]),
        .I4(obs_cid[85]),
        .I5(obs_cid[91]),
        .O(\cid[15][4]_i_28_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \cid[15][4]_i_29 
       (.I0(obs_cid[93]),
        .I1(obs_cid[87]),
        .I2(obs_cid[94]),
        .I3(obs_cid[88]),
        .O(\cid[15][4]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'h00D500DF0ADF00DF)) 
    \cid[15][4]_i_3 
       (.I0(\cid[15][4]_i_5_n_0 ),
        .I1(obs_unrooted[15]),
        .I2(\cid[23][2]_i_3_n_0 ),
        .I3(\cid[15][4]_i_6_n_0 ),
        .I4(\cid[15][4]_i_7_n_0 ),
        .I5(obs_cid[118]),
        .O(\cid[15][4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0F88FFFFFFBBFFFF)) 
    \cid[15][4]_i_4 
       (.I0(obs_cid[70]),
        .I1(\cid[15][4]_i_8_n_0 ),
        .I2(obs_unrooted[15]),
        .I3(\cid[15][3]_i_2_n_0 ),
        .I4(\cid[15][5]_i_3_n_0 ),
        .I5(\cid[15][4]_i_3_n_0 ),
        .O(\cid[15][4]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \cid[15][4]_i_5 
       (.I0(obs_growth[38]),
        .I1(obs_growth[39]),
        .I2(\cid[15][5]_i_5_n_0 ),
        .O(\cid[15][4]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h7F555D554C555D55)) 
    \cid[15][4]_i_6 
       (.I0(\cid[15][4]_i_9_n_0 ),
        .I1(\cid[20][4]_i_2_n_0 ),
        .I2(obs_unrooted[15]),
        .I3(\cid[15][4]_i_10_n_0 ),
        .I4(\cid[15][4]_i_11_n_0 ),
        .I5(obs_cid[100]),
        .O(\cid[15][4]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hD4D4D4D4DDD4DDDD)) 
    \cid[15][4]_i_7 
       (.I0(obs_cid[119]),
        .I1(\cid[15][5]_i_8_n_0 ),
        .I2(\cid[15][4]_i_12_n_0 ),
        .I3(\cid[15][4]_i_13_n_0 ),
        .I4(\cid[15][4]_i_14_n_0 ),
        .I5(\cid[15][4]_i_15_n_0 ),
        .O(\cid[15][4]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h1717171711171111)) 
    \cid[15][4]_i_8 
       (.I0(obs_cid[71]),
        .I1(\cid[15][5]_i_6_n_0 ),
        .I2(\cid[15][4]_i_16_n_0 ),
        .I3(\cid[15][4]_i_17_n_0 ),
        .I4(\cid[15][4]_i_18_n_0 ),
        .I5(\cid[15][4]_i_19_n_0 ),
        .O(\cid[15][4]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h00440000F077FFFF)) 
    \cid[15][4]_i_9 
       (.I0(obs_cid[88]),
        .I1(\cid[15][4]_i_20_n_0 ),
        .I2(obs_unrooted[15]),
        .I3(\cid[18][4]_i_2_n_0 ),
        .I4(\cid[15][4]_i_21_n_0 ),
        .I5(obs_cid[94]),
        .O(\cid[15][4]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h555500CF55550000)) 
    \cid[15][5]_i_1 
       (.I0(\cid[15][5]_i_2_n_0 ),
        .I1(obs_cid[71]),
        .I2(\cid[15][5]_i_3_n_0 ),
        .I3(\cid[19][5]_i_3_n_0 ),
        .I4(\FSM_sequential_stage_reg[1]_rep__3_n_0 ),
        .I5(\cid[15][5]_i_4_n_0 ),
        .O(\cid[15][5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h087700FF887700FF)) 
    \cid[15][5]_i_2 
       (.I0(obs_cid[68]),
        .I1(obs_cid[70]),
        .I2(obs_cid[66]),
        .I3(obs_cid[71]),
        .I4(obs_cid[69]),
        .I5(obs_cid[67]),
        .O(\cid[15][5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0400040404040404)) 
    \cid[15][5]_i_3 
       (.I0(obs_growth[22]),
        .I1(obs_growth[23]),
        .I2(\cid[15][5]_i_5_n_0 ),
        .I3(obs_unrooted[15]),
        .I4(\cid[23][2]_i_3_n_0 ),
        .I5(\cid[19][5]_i_7_n_0 ),
        .O(\cid[15][5]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h55555D55)) 
    \cid[15][5]_i_4 
       (.I0(\cid[15][5]_i_6_n_0 ),
        .I1(\cid[15][3]_i_2_n_0 ),
        .I2(obs_unrooted[15]),
        .I3(obs_growth[23]),
        .I4(obs_growth[22]),
        .O(\cid[15][5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FF080808)) 
    \cid[15][5]_i_5 
       (.I0(\cid[18][4]_i_2_n_0 ),
        .I1(obs_growth[21]),
        .I2(obs_growth[20]),
        .I3(\cid[15][5]_i_7_n_0 ),
        .I4(\cid[20][4]_i_2_n_0 ),
        .I5(obs_unrooted[15]),
        .O(\cid[15][5]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000450045554555)) 
    \cid[15][5]_i_6 
       (.I0(\cid[15][5]_i_5_n_0 ),
        .I1(obs_unrooted[15]),
        .I2(\cid[23][2]_i_3_n_0 ),
        .I3(\cid[19][5]_i_7_n_0 ),
        .I4(obs_cid[119]),
        .I5(\cid[15][5]_i_8_n_0 ),
        .O(\cid[15][5]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cid[15][5]_i_7 
       (.I0(obs_growth[25]),
        .I1(obs_growth[24]),
        .O(\cid[15][5]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h75005555)) 
    \cid[15][5]_i_8 
       (.I0(\cid[15][5]_i_9_n_0 ),
        .I1(obs_unrooted[15]),
        .I2(\cid[20][4]_i_2_n_0 ),
        .I3(obs_cid[101]),
        .I4(\cid[15][4]_i_10_n_0 ),
        .O(\cid[15][5]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0F0F0F0F0DFF0F0F)) 
    \cid[15][5]_i_9 
       (.I0(\cid[18][4]_i_2_n_0 ),
        .I1(obs_unrooted[15]),
        .I2(obs_cid[95]),
        .I3(obs_cid[89]),
        .I4(obs_growth[21]),
        .I5(obs_growth[20]),
        .O(\cid[15][5]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAAAA00CFAAAA0000)) 
    \cid[16][0]_i_1 
       (.I0(obs_cid[72]),
        .I1(\cid[16][5]_i_3_n_0 ),
        .I2(\cid[16][0]_i_2_n_0 ),
        .I3(\cid[20][4]_i_2_n_0 ),
        .I4(\FSM_sequential_stage_reg[1]_rep__3_n_0 ),
        .I5(\cid[16][0]_i_3_n_0 ),
        .O(\cid[16][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7530773077337730)) 
    \cid[16][0]_i_2 
       (.I0(\cid[16][5]_i_9_n_0 ),
        .I1(\cid[16][0]_i_4_n_0 ),
        .I2(\cid[24][5]_i_3_n_0 ),
        .I3(\cid[16][0]_i_5_n_0 ),
        .I4(\cid[16][3]_i_7_n_0 ),
        .I5(obs_cid[120]),
        .O(\cid[16][0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h08FBF8FBFFFFFFFF)) 
    \cid[16][0]_i_3 
       (.I0(obs_cid[72]),
        .I1(\cid[16][4]_i_6_n_0 ),
        .I2(\cid[16][4]_i_3_n_0 ),
        .I3(\cid[16][0]_i_2_n_0 ),
        .I4(obs_unrooted[16]),
        .I5(\cid[16][5]_i_3_n_0 ),
        .O(\cid[16][0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair201" *) 
  LUT4 #(
    .INIT(16'h7F55)) 
    \cid[16][0]_i_4 
       (.I0(\cid[16][5]_i_9_n_0 ),
        .I1(obs_unrooted[16]),
        .I2(\cid[16][0]_i_5_n_0 ),
        .I3(\cid[24][4]_i_2_n_0 ),
        .O(\cid[16][0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hD050D0F0D0FAD0F0)) 
    \cid[16][0]_i_5 
       (.I0(\cid[16][5]_i_12_n_0 ),
        .I1(obs_unrooted[16]),
        .I2(\cid[16][0]_i_6_n_0 ),
        .I3(\cid[21][4]_i_2_n_0 ),
        .I4(\cid[16][3]_i_9_n_0 ),
        .I5(obs_cid[102]),
        .O(\cid[16][0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00440000F077FFFF)) 
    \cid[16][0]_i_6 
       (.I0(obs_cid[90]),
        .I1(\cid[16][3]_i_14_n_0 ),
        .I2(obs_unrooted[16]),
        .I3(\cid[19][5]_i_3_n_0 ),
        .I4(\cid[15][5]_i_7_n_0 ),
        .I5(obs_cid[96]),
        .O(\cid[16][0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAEFAAAAAAAA)) 
    \cid[16][1]_i_1 
       (.I0(\cid[16][1]_i_2_n_0 ),
        .I1(\cid[16][5]_i_3_n_0 ),
        .I2(\cid[16][1]_i_3_n_0 ),
        .I3(\cid[20][4]_i_2_n_0 ),
        .I4(\FSM_sequential_stage_reg[1]_rep__1_n_0 ),
        .I5(\cid[16][1]_i_4_n_0 ),
        .O(\cid[16][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAA00AA00A802A822)) 
    \cid[16][1]_i_2 
       (.I0(\FSM_sequential_stage_reg[1]_rep__1_n_0 ),
        .I1(obs_cid[76]),
        .I2(obs_cid[75]),
        .I3(obs_cid[73]),
        .I4(obs_cid[74]),
        .I5(obs_cid[77]),
        .O(\cid[16][1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h3075307733773077)) 
    \cid[16][1]_i_3 
       (.I0(\cid[16][5]_i_9_n_0 ),
        .I1(\cid[16][1]_i_5_n_0 ),
        .I2(\cid[24][5]_i_3_n_0 ),
        .I3(\cid[16][1]_i_6_n_0 ),
        .I4(\cid[16][3]_i_7_n_0 ),
        .I5(obs_cid[121]),
        .O(\cid[16][1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h08FBF8FBFFFFFFFF)) 
    \cid[16][1]_i_4 
       (.I0(obs_cid[73]),
        .I1(\cid[16][4]_i_6_n_0 ),
        .I2(\cid[16][4]_i_3_n_0 ),
        .I3(\cid[16][1]_i_3_n_0 ),
        .I4(obs_unrooted[16]),
        .I5(\cid[16][5]_i_3_n_0 ),
        .O(\cid[16][1]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair199" *) 
  LUT4 #(
    .INIT(16'hF755)) 
    \cid[16][1]_i_5 
       (.I0(\cid[16][5]_i_9_n_0 ),
        .I1(obs_unrooted[16]),
        .I2(\cid[16][1]_i_6_n_0 ),
        .I3(\cid[24][4]_i_2_n_0 ),
        .O(\cid[16][1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFF2AFF20F520FF20)) 
    \cid[16][1]_i_6 
       (.I0(\cid[16][5]_i_12_n_0 ),
        .I1(obs_unrooted[16]),
        .I2(\cid[21][4]_i_2_n_0 ),
        .I3(\cid[16][1]_i_7_n_0 ),
        .I4(\cid[16][3]_i_9_n_0 ),
        .I5(obs_cid[103]),
        .O(\cid[16][1]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hDFCCDCCCD0CCDCCC)) 
    \cid[16][1]_i_7 
       (.I0(obs_unrooted[16]),
        .I1(obs_cid[97]),
        .I2(\cid[19][5]_i_3_n_0 ),
        .I3(\cid[15][5]_i_7_n_0 ),
        .I4(\cid[16][3]_i_14_n_0 ),
        .I5(obs_cid[91]),
        .O(\cid[16][1]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h555500CF55550000)) 
    \cid[16][2]_i_1 
       (.I0(\cid[16][2]_i_2_n_0 ),
        .I1(\cid[16][5]_i_3_n_0 ),
        .I2(\cid[16][2]_i_3_n_0 ),
        .I3(\cid[20][4]_i_2_n_0 ),
        .I4(\FSM_sequential_stage_reg[1]_rep__3_n_0 ),
        .I5(\cid[16][2]_i_4_n_0 ),
        .O(\cid[16][2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h70F0F0F0F0F0F3C3)) 
    \cid[16][2]_i_2 
       (.I0(obs_cid[72]),
        .I1(obs_cid[77]),
        .I2(obs_cid[74]),
        .I3(obs_cid[75]),
        .I4(obs_cid[76]),
        .I5(obs_cid[73]),
        .O(\cid[16][2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h3075307733773077)) 
    \cid[16][2]_i_3 
       (.I0(\cid[16][5]_i_9_n_0 ),
        .I1(\cid[16][2]_i_5_n_0 ),
        .I2(\cid[24][5]_i_3_n_0 ),
        .I3(\cid[16][2]_i_6_n_0 ),
        .I4(\cid[16][3]_i_7_n_0 ),
        .I5(obs_cid[122]),
        .O(\cid[16][2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h08FBF8FBFFFFFFFF)) 
    \cid[16][2]_i_4 
       (.I0(obs_cid[74]),
        .I1(\cid[16][4]_i_6_n_0 ),
        .I2(\cid[16][4]_i_3_n_0 ),
        .I3(\cid[16][2]_i_3_n_0 ),
        .I4(obs_unrooted[16]),
        .I5(\cid[16][5]_i_3_n_0 ),
        .O(\cid[16][2]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair199" *) 
  LUT4 #(
    .INIT(16'hF755)) 
    \cid[16][2]_i_5 
       (.I0(\cid[16][5]_i_9_n_0 ),
        .I1(obs_unrooted[16]),
        .I2(\cid[16][2]_i_6_n_0 ),
        .I3(\cid[24][4]_i_2_n_0 ),
        .O(\cid[16][2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFF2AFF20F520FF20)) 
    \cid[16][2]_i_6 
       (.I0(\cid[16][5]_i_12_n_0 ),
        .I1(obs_unrooted[16]),
        .I2(\cid[21][4]_i_2_n_0 ),
        .I3(\cid[16][2]_i_7_n_0 ),
        .I4(\cid[16][3]_i_9_n_0 ),
        .I5(obs_cid[104]),
        .O(\cid[16][2]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hDFCCDCCCD0CCDCCC)) 
    \cid[16][2]_i_7 
       (.I0(obs_unrooted[16]),
        .I1(obs_cid[98]),
        .I2(\cid[19][5]_i_3_n_0 ),
        .I3(\cid[15][5]_i_7_n_0 ),
        .I4(\cid[16][3]_i_14_n_0 ),
        .I5(obs_cid[92]),
        .O(\cid[16][2]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h555500CF55550000)) 
    \cid[16][3]_i_1 
       (.I0(\cid[16][3]_i_2_n_0 ),
        .I1(\cid[16][5]_i_3_n_0 ),
        .I2(\cid[16][3]_i_3_n_0 ),
        .I3(\cid[20][4]_i_2_n_0 ),
        .I4(\FSM_sequential_stage_reg[1]_rep__3_n_0 ),
        .I5(\cid[16][3]_i_4_n_0 ),
        .O(\cid[16][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair198" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cid[16][3]_i_10 
       (.I0(\cid[16][4]_i_8_n_0 ),
        .I1(obs_cid[124]),
        .O(\cid[16][3]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \cid[16][3]_i_11 
       (.I0(obs_cid[123]),
        .I1(\cid[16][3]_i_6_n_0 ),
        .I2(obs_cid[122]),
        .I3(\cid[16][2]_i_6_n_0 ),
        .O(\cid[16][3]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hE0FEE0FEFFFFE0FE)) 
    \cid[16][3]_i_12 
       (.I0(obs_cid[120]),
        .I1(\cid[16][0]_i_5_n_0 ),
        .I2(obs_cid[121]),
        .I3(\cid[16][1]_i_6_n_0 ),
        .I4(obs_cid[122]),
        .I5(\cid[16][2]_i_6_n_0 ),
        .O(\cid[16][3]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair198" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    \cid[16][3]_i_13 
       (.I0(\cid[16][4]_i_8_n_0 ),
        .I1(obs_cid[124]),
        .I2(\cid[16][3]_i_6_n_0 ),
        .I3(obs_cid[123]),
        .O(\cid[16][3]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hB0B0B0B0BBB0BBBB)) 
    \cid[16][3]_i_14 
       (.I0(obs_cid[101]),
        .I1(obs_cid[95]),
        .I2(\cid[16][3]_i_19_n_0 ),
        .I3(\cid[16][3]_i_20_n_0 ),
        .I4(\cid[16][3]_i_21_n_0 ),
        .I5(\cid[16][3]_i_22_n_0 ),
        .O(\cid[16][3]_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair271" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cid[16][3]_i_15 
       (.I0(obs_cid[106]),
        .I1(\cid[16][4]_i_13_n_0 ),
        .O(\cid[16][3]_i_15_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \cid[16][3]_i_16 
       (.I0(\cid[16][2]_i_7_n_0 ),
        .I1(obs_cid[104]),
        .I2(\cid[16][3]_i_8_n_0 ),
        .I3(obs_cid[105]),
        .O(\cid[16][3]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h10F110F1FFFF10F1)) 
    \cid[16][3]_i_17 
       (.I0(obs_cid[102]),
        .I1(\cid[16][0]_i_6_n_0 ),
        .I2(\cid[16][1]_i_7_n_0 ),
        .I3(obs_cid[103]),
        .I4(\cid[16][2]_i_7_n_0 ),
        .I5(obs_cid[104]),
        .O(\cid[16][3]_i_17_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair271" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    \cid[16][3]_i_18 
       (.I0(obs_cid[106]),
        .I1(\cid[16][4]_i_13_n_0 ),
        .I2(obs_cid[105]),
        .I3(\cid[16][3]_i_8_n_0 ),
        .O(\cid[16][3]_i_18_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \cid[16][3]_i_19 
       (.I0(obs_cid[95]),
        .I1(obs_cid[101]),
        .I2(obs_cid[94]),
        .I3(obs_cid[100]),
        .O(\cid[16][3]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h7F0000FFFF0300FF)) 
    \cid[16][3]_i_2 
       (.I0(obs_cid[72]),
        .I1(obs_cid[73]),
        .I2(obs_cid[76]),
        .I3(obs_cid[75]),
        .I4(obs_cid[74]),
        .I5(obs_cid[77]),
        .O(\cid[16][3]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \cid[16][3]_i_20 
       (.I0(obs_cid[93]),
        .I1(obs_cid[99]),
        .I2(obs_cid[92]),
        .I3(obs_cid[98]),
        .O(\cid[16][3]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hD0FDD0FDFFFFD0FD)) 
    \cid[16][3]_i_21 
       (.I0(obs_cid[96]),
        .I1(obs_cid[90]),
        .I2(obs_cid[91]),
        .I3(obs_cid[97]),
        .I4(obs_cid[92]),
        .I5(obs_cid[98]),
        .O(\cid[16][3]_i_21_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \cid[16][3]_i_22 
       (.I0(obs_cid[99]),
        .I1(obs_cid[93]),
        .I2(obs_cid[100]),
        .I3(obs_cid[94]),
        .O(\cid[16][3]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'h3075307733773077)) 
    \cid[16][3]_i_3 
       (.I0(\cid[16][5]_i_9_n_0 ),
        .I1(\cid[16][3]_i_5_n_0 ),
        .I2(\cid[24][5]_i_3_n_0 ),
        .I3(\cid[16][3]_i_6_n_0 ),
        .I4(\cid[16][3]_i_7_n_0 ),
        .I5(obs_cid[123]),
        .O(\cid[16][3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h08FBF8FBFFFFFFFF)) 
    \cid[16][3]_i_4 
       (.I0(obs_cid[75]),
        .I1(\cid[16][4]_i_6_n_0 ),
        .I2(\cid[16][4]_i_3_n_0 ),
        .I3(\cid[16][3]_i_3_n_0 ),
        .I4(obs_unrooted[16]),
        .I5(\cid[16][5]_i_3_n_0 ),
        .O(\cid[16][3]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair196" *) 
  LUT4 #(
    .INIT(16'hF755)) 
    \cid[16][3]_i_5 
       (.I0(\cid[16][5]_i_9_n_0 ),
        .I1(obs_unrooted[16]),
        .I2(\cid[16][3]_i_6_n_0 ),
        .I3(\cid[24][4]_i_2_n_0 ),
        .O(\cid[16][3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFF2AFF20F520FF20)) 
    \cid[16][3]_i_6 
       (.I0(\cid[16][5]_i_12_n_0 ),
        .I1(obs_unrooted[16]),
        .I2(\cid[21][4]_i_2_n_0 ),
        .I3(\cid[16][3]_i_8_n_0 ),
        .I4(\cid[16][3]_i_9_n_0 ),
        .I5(obs_cid[105]),
        .O(\cid[16][3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hD4D4D4D4DDD4DDDD)) 
    \cid[16][3]_i_7 
       (.I0(obs_cid[125]),
        .I1(\cid[16][5]_i_10_n_0 ),
        .I2(\cid[16][3]_i_10_n_0 ),
        .I3(\cid[16][3]_i_11_n_0 ),
        .I4(\cid[16][3]_i_12_n_0 ),
        .I5(\cid[16][3]_i_13_n_0 ),
        .O(\cid[16][3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hDFCCDCCCD0CCDCCC)) 
    \cid[16][3]_i_8 
       (.I0(obs_unrooted[16]),
        .I1(obs_cid[99]),
        .I2(\cid[19][5]_i_3_n_0 ),
        .I3(\cid[15][5]_i_7_n_0 ),
        .I4(\cid[16][3]_i_14_n_0 ),
        .I5(obs_cid[93]),
        .O(\cid[16][3]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h1717171711171111)) 
    \cid[16][3]_i_9 
       (.I0(obs_cid[107]),
        .I1(\cid[16][5]_i_11_n_0 ),
        .I2(\cid[16][3]_i_15_n_0 ),
        .I3(\cid[16][3]_i_16_n_0 ),
        .I4(\cid[16][3]_i_17_n_0 ),
        .I5(\cid[16][3]_i_18_n_0 ),
        .O(\cid[16][3]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hF0EEFFEEFFEEF0EE)) 
    \cid[16][4]_i_1 
       (.I0(\cid[20][4]_i_2_n_0 ),
        .I1(\cid[16][4]_i_2_n_0 ),
        .I2(\cid[16][4]_i_3_n_0 ),
        .I3(\FSM_sequential_stage_reg[1]_rep__3_n_0 ),
        .I4(obs_cid[76]),
        .I5(\cid[16][4]_i_4_n_0 ),
        .O(\cid[16][4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair197" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \cid[16][4]_i_10 
       (.I0(obs_cid[74]),
        .I1(\cid[16][2]_i_3_n_0 ),
        .I2(obs_cid[75]),
        .I3(\cid[16][3]_i_3_n_0 ),
        .O(\cid[16][4]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h011F011F011FFFFF)) 
    \cid[16][4]_i_11 
       (.I0(obs_cid[72]),
        .I1(\cid[16][0]_i_2_n_0 ),
        .I2(obs_cid[73]),
        .I3(\cid[16][1]_i_3_n_0 ),
        .I4(obs_cid[74]),
        .I5(\cid[16][2]_i_3_n_0 ),
        .O(\cid[16][4]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair195" *) 
  LUT4 #(
    .INIT(16'h111F)) 
    \cid[16][4]_i_12 
       (.I0(\cid[16][4]_i_5_n_0 ),
        .I1(obs_cid[76]),
        .I2(\cid[16][3]_i_3_n_0 ),
        .I3(obs_cid[75]),
        .O(\cid[16][4]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hDFCCDCCCD0CCDCCC)) 
    \cid[16][4]_i_13 
       (.I0(obs_unrooted[16]),
        .I1(obs_cid[100]),
        .I2(\cid[19][5]_i_3_n_0 ),
        .I3(\cid[15][5]_i_7_n_0 ),
        .I4(\cid[16][3]_i_14_n_0 ),
        .I5(obs_cid[94]),
        .O(\cid[16][4]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h5DDD55D551D155D5)) 
    \cid[16][4]_i_2 
       (.I0(\cid[16][4]_i_5_n_0 ),
        .I1(\cid[16][5]_i_3_n_0 ),
        .I2(\cid[16][4]_i_3_n_0 ),
        .I3(obs_unrooted[16]),
        .I4(\cid[16][4]_i_6_n_0 ),
        .I5(obs_cid[76]),
        .O(\cid[16][4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \cid[16][4]_i_3 
       (.I0(obs_cid[73]),
        .I1(obs_cid[75]),
        .I2(obs_cid[77]),
        .I3(obs_cid[72]),
        .I4(obs_cid[76]),
        .I5(obs_cid[74]),
        .O(\cid[16][4]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair197" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cid[16][4]_i_4 
       (.I0(obs_cid[75]),
        .I1(obs_cid[74]),
        .O(\cid[16][4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h3075307733773077)) 
    \cid[16][4]_i_5 
       (.I0(\cid[16][5]_i_9_n_0 ),
        .I1(\cid[16][4]_i_7_n_0 ),
        .I2(\cid[24][5]_i_3_n_0 ),
        .I3(\cid[16][4]_i_8_n_0 ),
        .I4(\cid[16][3]_i_7_n_0 ),
        .I5(obs_cid[124]),
        .O(\cid[16][4]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h1717171711171111)) 
    \cid[16][4]_i_6 
       (.I0(obs_cid[77]),
        .I1(\cid[16][5]_i_6_n_0 ),
        .I2(\cid[16][4]_i_9_n_0 ),
        .I3(\cid[16][4]_i_10_n_0 ),
        .I4(\cid[16][4]_i_11_n_0 ),
        .I5(\cid[16][4]_i_12_n_0 ),
        .O(\cid[16][4]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair196" *) 
  LUT4 #(
    .INIT(16'hF755)) 
    \cid[16][4]_i_7 
       (.I0(\cid[16][5]_i_9_n_0 ),
        .I1(obs_unrooted[16]),
        .I2(\cid[16][4]_i_8_n_0 ),
        .I3(\cid[24][4]_i_2_n_0 ),
        .O(\cid[16][4]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFF2AFF20F520FF20)) 
    \cid[16][4]_i_8 
       (.I0(\cid[16][5]_i_12_n_0 ),
        .I1(obs_unrooted[16]),
        .I2(\cid[21][4]_i_2_n_0 ),
        .I3(\cid[16][4]_i_13_n_0 ),
        .I4(\cid[16][3]_i_9_n_0 ),
        .I5(obs_cid[106]),
        .O(\cid[16][4]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair195" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cid[16][4]_i_9 
       (.I0(\cid[16][4]_i_5_n_0 ),
        .I1(obs_cid[76]),
        .O(\cid[16][4]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hEFAAAAAAEFAAEFAA)) 
    \cid[16][5]_i_1 
       (.I0(\cid[16][5]_i_2_n_0 ),
        .I1(obs_cid[77]),
        .I2(\cid[16][5]_i_3_n_0 ),
        .I3(\cid[16][5]_i_4_n_0 ),
        .I4(\cid[16][5]_i_5_n_0 ),
        .I5(\cid[16][5]_i_6_n_0 ),
        .O(\cid[16][5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h75005555)) 
    \cid[16][5]_i_10 
       (.I0(\cid[16][5]_i_11_n_0 ),
        .I1(obs_unrooted[16]),
        .I2(\cid[21][4]_i_2_n_0 ),
        .I3(obs_cid[107]),
        .I4(\cid[16][5]_i_12_n_0 ),
        .O(\cid[16][5]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h0F0F0F0F0DFF0F0F)) 
    \cid[16][5]_i_11 
       (.I0(\cid[19][5]_i_3_n_0 ),
        .I1(obs_unrooted[16]),
        .I2(obs_cid[101]),
        .I3(obs_cid[95]),
        .I4(obs_growth[25]),
        .I5(obs_growth[24]),
        .O(\cid[16][5]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h4444444440444444)) 
    \cid[16][5]_i_12 
       (.I0(obs_growth[28]),
        .I1(obs_growth[29]),
        .I2(obs_unrooted[16]),
        .I3(\cid[19][5]_i_3_n_0 ),
        .I4(obs_growth[25]),
        .I5(obs_growth[24]),
        .O(\cid[16][5]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h8AA8A8A8A8A8A8A8)) 
    \cid[16][5]_i_2 
       (.I0(\FSM_sequential_stage_reg[1]_rep__1_n_0 ),
        .I1(\cid[16][4]_i_3_n_0 ),
        .I2(obs_cid[77]),
        .I3(obs_cid[76]),
        .I4(obs_cid[75]),
        .I5(obs_cid[74]),
        .O(\cid[16][5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000A2AA0000)) 
    \cid[16][5]_i_3 
       (.I0(\cid[16][5]_i_7_n_0 ),
        .I1(\cid[20][5]_i_5_n_0 ),
        .I2(obs_unrooted[16]),
        .I3(\cid[24][4]_i_2_n_0 ),
        .I4(obs_growth[27]),
        .I5(obs_growth[26]),
        .O(\cid[16][5]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair414" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \cid[16][5]_i_4 
       (.I0(\FSM_sequential_stage_reg[1]_rep__1_n_0 ),
        .I1(\cid[20][4]_i_2_n_0 ),
        .O(\cid[16][5]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair348" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \cid[16][5]_i_5 
       (.I0(\cid[16][5]_i_3_n_0 ),
        .I1(obs_unrooted[16]),
        .I2(\cid[16][4]_i_3_n_0 ),
        .O(\cid[16][5]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h0455)) 
    \cid[16][5]_i_6 
       (.I0(\cid[16][5]_i_8_n_0 ),
        .I1(\cid[16][5]_i_9_n_0 ),
        .I2(obs_cid[125]),
        .I3(\cid[16][5]_i_10_n_0 ),
        .O(\cid[16][5]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00F7F7F7)) 
    \cid[16][5]_i_7 
       (.I0(\cid[19][5]_i_3_n_0 ),
        .I1(obs_growth[25]),
        .I2(obs_growth[24]),
        .I3(\cid[17][5]_i_10_n_0 ),
        .I4(\cid[21][4]_i_2_n_0 ),
        .I5(obs_unrooted[16]),
        .O(\cid[16][5]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT5 #(
    .INIT(32'h00000800)) 
    \cid[16][5]_i_8 
       (.I0(\cid[16][5]_i_7_n_0 ),
        .I1(\cid[24][4]_i_2_n_0 ),
        .I2(obs_unrooted[16]),
        .I3(obs_growth[43]),
        .I4(obs_growth[42]),
        .O(\cid[16][5]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \cid[16][5]_i_9 
       (.I0(\cid[16][5]_i_7_n_0 ),
        .I1(obs_growth[42]),
        .I2(obs_growth[43]),
        .O(\cid[16][5]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair176" *) 
  LUT4 #(
    .INIT(16'hAFAC)) 
    \cid[17][0]_i_1 
       (.I0(obs_cid[78]),
        .I1(\cid[17][0]_i_2_n_0 ),
        .I2(\FSM_sequential_stage_reg[1]_rep__3_n_0 ),
        .I3(\cid[21][4]_i_2_n_0 ),
        .O(\cid[17][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4FCF4F0F4F034F0F)) 
    \cid[17][0]_i_2 
       (.I0(obs_unrooted[17]),
        .I1(\cid[17][5]_i_2_n_0 ),
        .I2(\cid[17][0]_i_3_n_0 ),
        .I3(\cid[17][4]_i_3_n_0 ),
        .I4(\cid[17][4]_i_6_n_0 ),
        .I5(obs_cid[78]),
        .O(\cid[17][0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hD050D0F0D0FAD0F0)) 
    \cid[17][0]_i_3 
       (.I0(\cid[17][3]_i_5_n_0 ),
        .I1(obs_unrooted[17]),
        .I2(\cid[17][0]_i_4_n_0 ),
        .I3(\cid[25][4]_i_2_n_0 ),
        .I4(\cid[17][3]_i_7_n_0 ),
        .I5(obs_cid[126]),
        .O(\cid[17][0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h80AAA2AAB3AAA2AA)) 
    \cid[17][0]_i_4 
       (.I0(\cid[17][0]_i_5_n_0 ),
        .I1(\cid[5][4]_i_2_n_0 ),
        .I2(obs_unrooted[17]),
        .I3(\cid[17][3]_i_9_n_0 ),
        .I4(\cid[17][3]_i_10_n_0 ),
        .I5(obs_cid[18]),
        .O(\cid[17][0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h2333233320332F33)) 
    \cid[17][0]_i_5 
       (.I0(obs_unrooted[17]),
        .I1(obs_cid[102]),
        .I2(\cid[20][4]_i_2_n_0 ),
        .I3(\cid[17][5]_i_10_n_0 ),
        .I4(obs_cid[96]),
        .I5(\cid[17][3]_i_15_n_0 ),
        .O(\cid[17][0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAEFAAAAAAAA)) 
    \cid[17][1]_i_1 
       (.I0(\cid[17][1]_i_2_n_0 ),
        .I1(\cid[17][5]_i_2_n_0 ),
        .I2(\cid[17][1]_i_3_n_0 ),
        .I3(\cid[21][4]_i_2_n_0 ),
        .I4(\FSM_sequential_stage_reg[1]_rep__1_n_0 ),
        .I5(\cid[17][1]_i_4_n_0 ),
        .O(\cid[17][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAA00AA00A802A822)) 
    \cid[17][1]_i_2 
       (.I0(\FSM_sequential_stage_reg[1]_rep__1_n_0 ),
        .I1(obs_cid[82]),
        .I2(obs_cid[81]),
        .I3(obs_cid[79]),
        .I4(obs_cid[80]),
        .I5(obs_cid[83]),
        .O(\cid[17][1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0D050D0F0DAF0D0F)) 
    \cid[17][1]_i_3 
       (.I0(\cid[17][3]_i_5_n_0 ),
        .I1(obs_unrooted[17]),
        .I2(\cid[17][1]_i_5_n_0 ),
        .I3(\cid[25][4]_i_2_n_0 ),
        .I4(\cid[17][3]_i_7_n_0 ),
        .I5(obs_cid[127]),
        .O(\cid[17][1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h08FBFFFFF8FBFFFF)) 
    \cid[17][1]_i_4 
       (.I0(obs_cid[79]),
        .I1(\cid[17][4]_i_6_n_0 ),
        .I2(\cid[17][4]_i_3_n_0 ),
        .I3(\cid[17][1]_i_3_n_0 ),
        .I4(\cid[17][5]_i_2_n_0 ),
        .I5(obs_unrooted[17]),
        .O(\cid[17][1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h7F555D554C555D55)) 
    \cid[17][1]_i_5 
       (.I0(\cid[17][1]_i_6_n_0 ),
        .I1(\cid[5][4]_i_2_n_0 ),
        .I2(obs_unrooted[17]),
        .I3(\cid[17][3]_i_9_n_0 ),
        .I4(\cid[17][3]_i_10_n_0 ),
        .I5(obs_cid[19]),
        .O(\cid[17][1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h2333233320332F33)) 
    \cid[17][1]_i_6 
       (.I0(obs_unrooted[17]),
        .I1(obs_cid[103]),
        .I2(\cid[20][4]_i_2_n_0 ),
        .I3(\cid[17][5]_i_10_n_0 ),
        .I4(obs_cid[97]),
        .I5(\cid[17][3]_i_15_n_0 ),
        .O(\cid[17][1]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h555500CF55550000)) 
    \cid[17][2]_i_1 
       (.I0(\cid[17][2]_i_2_n_0 ),
        .I1(\cid[17][5]_i_2_n_0 ),
        .I2(\cid[17][2]_i_3_n_0 ),
        .I3(\cid[21][4]_i_2_n_0 ),
        .I4(\FSM_sequential_stage_reg[1]_rep__3_n_0 ),
        .I5(\cid[17][2]_i_4_n_0 ),
        .O(\cid[17][2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h70F0F0F0F0F0F3C3)) 
    \cid[17][2]_i_2 
       (.I0(obs_cid[78]),
        .I1(obs_cid[83]),
        .I2(obs_cid[80]),
        .I3(obs_cid[81]),
        .I4(obs_cid[82]),
        .I5(obs_cid[79]),
        .O(\cid[17][2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hD050D0F0D0FAD0F0)) 
    \cid[17][2]_i_3 
       (.I0(\cid[17][3]_i_5_n_0 ),
        .I1(obs_unrooted[17]),
        .I2(\cid[17][2]_i_5_n_0 ),
        .I3(\cid[25][4]_i_2_n_0 ),
        .I4(\cid[17][3]_i_7_n_0 ),
        .I5(obs_cid[128]),
        .O(\cid[17][2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h08FBFFFFF8FBFFFF)) 
    \cid[17][2]_i_4 
       (.I0(obs_cid[80]),
        .I1(\cid[17][4]_i_6_n_0 ),
        .I2(\cid[17][4]_i_3_n_0 ),
        .I3(\cid[17][2]_i_3_n_0 ),
        .I4(\cid[17][5]_i_2_n_0 ),
        .I5(obs_unrooted[17]),
        .O(\cid[17][2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h4055515573555155)) 
    \cid[17][2]_i_5 
       (.I0(\cid[17][2]_i_6_n_0 ),
        .I1(\cid[5][4]_i_2_n_0 ),
        .I2(obs_unrooted[17]),
        .I3(\cid[17][3]_i_9_n_0 ),
        .I4(\cid[17][3]_i_10_n_0 ),
        .I5(obs_cid[20]),
        .O(\cid[17][2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hDCCCDCCCDFCCD0CC)) 
    \cid[17][2]_i_6 
       (.I0(obs_unrooted[17]),
        .I1(obs_cid[104]),
        .I2(\cid[20][4]_i_2_n_0 ),
        .I3(\cid[17][5]_i_10_n_0 ),
        .I4(obs_cid[98]),
        .I5(\cid[17][3]_i_15_n_0 ),
        .O(\cid[17][2]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h555500CF55550000)) 
    \cid[17][3]_i_1 
       (.I0(\cid[17][3]_i_2_n_0 ),
        .I1(\cid[17][5]_i_2_n_0 ),
        .I2(\cid[17][3]_i_3_n_0 ),
        .I3(\cid[21][4]_i_2_n_0 ),
        .I4(\FSM_sequential_stage_reg[1]_rep__3_n_0 ),
        .I5(\cid[17][3]_i_4_n_0 ),
        .O(\cid[17][3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1717171711171111)) 
    \cid[17][3]_i_10 
       (.I0(obs_cid[23]),
        .I1(\cid[17][5]_i_11_n_0 ),
        .I2(\cid[17][3]_i_16_n_0 ),
        .I3(\cid[17][3]_i_17_n_0 ),
        .I4(\cid[17][3]_i_18_n_0 ),
        .I5(\cid[17][3]_i_19_n_0 ),
        .O(\cid[17][3]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair194" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cid[17][3]_i_11 
       (.I0(\cid[17][4]_i_7_n_0 ),
        .I1(obs_cid[130]),
        .O(\cid[17][3]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h111F)) 
    \cid[17][3]_i_12 
       (.I0(\cid[17][3]_i_6_n_0 ),
        .I1(obs_cid[129]),
        .I2(\cid[17][2]_i_5_n_0 ),
        .I3(obs_cid[128]),
        .O(\cid[17][3]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFEEEF000FFFFFEEE)) 
    \cid[17][3]_i_13 
       (.I0(obs_cid[126]),
        .I1(\cid[17][0]_i_4_n_0 ),
        .I2(obs_cid[128]),
        .I3(\cid[17][2]_i_5_n_0 ),
        .I4(obs_cid[127]),
        .I5(\cid[17][1]_i_5_n_0 ),
        .O(\cid[17][3]_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair194" *) 
  LUT4 #(
    .INIT(16'hF444)) 
    \cid[17][3]_i_14 
       (.I0(\cid[17][4]_i_7_n_0 ),
        .I1(obs_cid[130]),
        .I2(obs_cid[129]),
        .I3(\cid[17][3]_i_6_n_0 ),
        .O(\cid[17][3]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h4F4F4F4F444F4444)) 
    \cid[17][3]_i_15 
       (.I0(obs_cid[107]),
        .I1(obs_cid[101]),
        .I2(\cid[17][3]_i_20_n_0 ),
        .I3(\cid[17][3]_i_21_n_0 ),
        .I4(\cid[17][3]_i_22_n_0 ),
        .I5(\cid[17][3]_i_23_n_0 ),
        .O(\cid[17][3]_i_15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair273" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cid[17][3]_i_16 
       (.I0(obs_cid[22]),
        .I1(\cid[17][4]_i_12_n_0 ),
        .O(\cid[17][3]_i_16_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair272" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    \cid[17][3]_i_17 
       (.I0(\cid[17][2]_i_6_n_0 ),
        .I1(obs_cid[20]),
        .I2(\cid[17][3]_i_8_n_0 ),
        .I3(obs_cid[21]),
        .O(\cid[17][3]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h011F011FFFFF011F)) 
    \cid[17][3]_i_18 
       (.I0(obs_cid[18]),
        .I1(\cid[17][0]_i_5_n_0 ),
        .I2(obs_cid[19]),
        .I3(\cid[17][1]_i_6_n_0 ),
        .I4(\cid[17][2]_i_6_n_0 ),
        .I5(obs_cid[20]),
        .O(\cid[17][3]_i_18_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair273" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    \cid[17][3]_i_19 
       (.I0(obs_cid[22]),
        .I1(\cid[17][4]_i_12_n_0 ),
        .I2(obs_cid[21]),
        .I3(\cid[17][3]_i_8_n_0 ),
        .O(\cid[17][3]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h7F0000FFFF0300FF)) 
    \cid[17][3]_i_2 
       (.I0(obs_cid[78]),
        .I1(obs_cid[79]),
        .I2(obs_cid[82]),
        .I3(obs_cid[81]),
        .I4(obs_cid[80]),
        .I5(obs_cid[83]),
        .O(\cid[17][3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair312" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    \cid[17][3]_i_20 
       (.I0(obs_cid[101]),
        .I1(obs_cid[107]),
        .I2(obs_cid[100]),
        .I3(obs_cid[106]),
        .O(\cid[17][3]_i_20_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \cid[17][3]_i_21 
       (.I0(obs_cid[99]),
        .I1(obs_cid[105]),
        .I2(obs_cid[98]),
        .I3(obs_cid[104]),
        .O(\cid[17][3]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hDDFD00F0FFFFDDFD)) 
    \cid[17][3]_i_22 
       (.I0(obs_cid[102]),
        .I1(obs_cid[96]),
        .I2(obs_cid[98]),
        .I3(obs_cid[104]),
        .I4(obs_cid[97]),
        .I5(obs_cid[103]),
        .O(\cid[17][3]_i_22_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \cid[17][3]_i_23 
       (.I0(obs_cid[105]),
        .I1(obs_cid[99]),
        .I2(obs_cid[106]),
        .I3(obs_cid[100]),
        .O(\cid[17][3]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hD050D0F0D0FAD0F0)) 
    \cid[17][3]_i_3 
       (.I0(\cid[17][3]_i_5_n_0 ),
        .I1(obs_unrooted[17]),
        .I2(\cid[17][3]_i_6_n_0 ),
        .I3(\cid[25][4]_i_2_n_0 ),
        .I4(\cid[17][3]_i_7_n_0 ),
        .I5(obs_cid[129]),
        .O(\cid[17][3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h08FBFFFFF8FBFFFF)) 
    \cid[17][3]_i_4 
       (.I0(obs_cid[81]),
        .I1(\cid[17][4]_i_6_n_0 ),
        .I2(\cid[17][4]_i_3_n_0 ),
        .I3(\cid[17][3]_i_3_n_0 ),
        .I4(\cid[17][5]_i_2_n_0 ),
        .I5(obs_unrooted[17]),
        .O(\cid[17][3]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \cid[17][3]_i_5 
       (.I0(\cid[17][5]_i_7_n_0 ),
        .I1(obs_growth[48]),
        .I2(obs_growth[49]),
        .O(\cid[17][3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h4055515573555155)) 
    \cid[17][3]_i_6 
       (.I0(\cid[17][3]_i_8_n_0 ),
        .I1(\cid[5][4]_i_2_n_0 ),
        .I2(obs_unrooted[17]),
        .I3(\cid[17][3]_i_9_n_0 ),
        .I4(\cid[17][3]_i_10_n_0 ),
        .I5(obs_cid[21]),
        .O(\cid[17][3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hD4D4D4D4DDD4DDDD)) 
    \cid[17][3]_i_7 
       (.I0(obs_cid[131]),
        .I1(\cid[17][5]_i_9_n_0 ),
        .I2(\cid[17][3]_i_11_n_0 ),
        .I3(\cid[17][3]_i_12_n_0 ),
        .I4(\cid[17][3]_i_13_n_0 ),
        .I5(\cid[17][3]_i_14_n_0 ),
        .O(\cid[17][3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hDCCCDCCCDFCCD0CC)) 
    \cid[17][3]_i_8 
       (.I0(obs_unrooted[17]),
        .I1(obs_cid[105]),
        .I2(\cid[20][4]_i_2_n_0 ),
        .I3(\cid[17][5]_i_10_n_0 ),
        .I4(obs_cid[99]),
        .I5(\cid[17][3]_i_15_n_0 ),
        .O(\cid[17][3]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h4444444444044444)) 
    \cid[17][3]_i_9 
       (.I0(obs_growth[30]),
        .I1(obs_growth[31]),
        .I2(obs_growth[29]),
        .I3(obs_growth[28]),
        .I4(\cid[20][4]_i_2_n_0 ),
        .I5(obs_unrooted[17]),
        .O(\cid[17][3]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hF0EEFFEEFFEEF0EE)) 
    \cid[17][4]_i_1 
       (.I0(\cid[21][4]_i_2_n_0 ),
        .I1(\cid[17][4]_i_2_n_0 ),
        .I2(\cid[17][4]_i_3_n_0 ),
        .I3(\FSM_sequential_stage_reg[1]_rep__3_n_0 ),
        .I4(obs_cid[82]),
        .I5(\cid[17][4]_i_4_n_0 ),
        .O(\cid[17][4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h011F011F011FFFFF)) 
    \cid[17][4]_i_10 
       (.I0(obs_cid[78]),
        .I1(\cid[17][0]_i_3_n_0 ),
        .I2(obs_cid[79]),
        .I3(\cid[17][1]_i_3_n_0 ),
        .I4(obs_cid[80]),
        .I5(\cid[17][2]_i_3_n_0 ),
        .O(\cid[17][4]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair193" *) 
  LUT4 #(
    .INIT(16'h111F)) 
    \cid[17][4]_i_11 
       (.I0(\cid[17][4]_i_5_n_0 ),
        .I1(obs_cid[82]),
        .I2(\cid[17][3]_i_3_n_0 ),
        .I3(obs_cid[81]),
        .O(\cid[17][4]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hDCCCDCCCDFCCD0CC)) 
    \cid[17][4]_i_12 
       (.I0(obs_unrooted[17]),
        .I1(obs_cid[106]),
        .I2(\cid[20][4]_i_2_n_0 ),
        .I3(\cid[17][5]_i_10_n_0 ),
        .I4(obs_cid[100]),
        .I5(\cid[17][3]_i_15_n_0 ),
        .O(\cid[17][4]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h7F55755570557555)) 
    \cid[17][4]_i_2 
       (.I0(\cid[17][4]_i_5_n_0 ),
        .I1(obs_unrooted[17]),
        .I2(\cid[17][4]_i_3_n_0 ),
        .I3(\cid[17][5]_i_2_n_0 ),
        .I4(\cid[17][4]_i_6_n_0 ),
        .I5(obs_cid[82]),
        .O(\cid[17][4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \cid[17][4]_i_3 
       (.I0(obs_cid[79]),
        .I1(obs_cid[81]),
        .I2(obs_cid[83]),
        .I3(obs_cid[78]),
        .I4(obs_cid[82]),
        .I5(obs_cid[80]),
        .O(\cid[17][4]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair192" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cid[17][4]_i_4 
       (.I0(obs_cid[81]),
        .I1(obs_cid[80]),
        .O(\cid[17][4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00D500DF0ADF00DF)) 
    \cid[17][4]_i_5 
       (.I0(\cid[17][3]_i_5_n_0 ),
        .I1(obs_unrooted[17]),
        .I2(\cid[25][4]_i_2_n_0 ),
        .I3(\cid[17][4]_i_7_n_0 ),
        .I4(\cid[17][3]_i_7_n_0 ),
        .I5(obs_cid[130]),
        .O(\cid[17][4]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h1717171711171111)) 
    \cid[17][4]_i_6 
       (.I0(obs_cid[83]),
        .I1(\cid[17][5]_i_3_n_0 ),
        .I2(\cid[17][4]_i_8_n_0 ),
        .I3(\cid[17][4]_i_9_n_0 ),
        .I4(\cid[17][4]_i_10_n_0 ),
        .I5(\cid[17][4]_i_11_n_0 ),
        .O(\cid[17][4]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hBFAAAEAA8CAAAEAA)) 
    \cid[17][4]_i_7 
       (.I0(\cid[17][4]_i_12_n_0 ),
        .I1(\cid[5][4]_i_2_n_0 ),
        .I2(obs_unrooted[17]),
        .I3(\cid[17][3]_i_9_n_0 ),
        .I4(\cid[17][3]_i_10_n_0 ),
        .I5(obs_cid[22]),
        .O(\cid[17][4]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair193" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cid[17][4]_i_8 
       (.I0(\cid[17][4]_i_5_n_0 ),
        .I1(obs_cid[82]),
        .O(\cid[17][4]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair192" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \cid[17][4]_i_9 
       (.I0(obs_cid[80]),
        .I1(\cid[17][2]_i_3_n_0 ),
        .I2(obs_cid[81]),
        .I3(\cid[17][3]_i_3_n_0 ),
        .O(\cid[17][4]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF0D0000)) 
    \cid[17][5]_i_1 
       (.I0(\cid[17][5]_i_2_n_0 ),
        .I1(obs_cid[83]),
        .I2(\cid[17][5]_i_3_n_0 ),
        .I3(\cid[17][5]_i_4_n_0 ),
        .I4(\cid[17][5]_i_5_n_0 ),
        .I5(\cid[17][5]_i_6_n_0 ),
        .O(\cid[17][5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cid[17][5]_i_10 
       (.I0(obs_growth[29]),
        .I1(obs_growth[28]),
        .O(\cid[17][5]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h0F0F0F0F0BFF0F0F)) 
    \cid[17][5]_i_11 
       (.I0(obs_unrooted[17]),
        .I1(\cid[20][4]_i_2_n_0 ),
        .I2(obs_cid[107]),
        .I3(obs_cid[101]),
        .I4(obs_growth[29]),
        .I5(obs_growth[28]),
        .O(\cid[17][5]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    \cid[17][5]_i_12 
       (.I0(obs_unrooted[17]),
        .I1(\cid[20][4]_i_2_n_0 ),
        .I2(obs_growth[28]),
        .I3(obs_growth[29]),
        .O(\cid[17][5]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h0808000808080808)) 
    \cid[17][5]_i_2 
       (.I0(\cid[17][5]_i_7_n_0 ),
        .I1(obs_growth[33]),
        .I2(obs_growth[32]),
        .I3(\cid[17][5]_i_8_n_0 ),
        .I4(obs_growth[48]),
        .I5(obs_growth[49]),
        .O(\cid[17][5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h3307333333333333)) 
    \cid[17][5]_i_3 
       (.I0(obs_cid[131]),
        .I1(\cid[17][5]_i_9_n_0 ),
        .I2(\cid[17][5]_i_8_n_0 ),
        .I3(obs_growth[48]),
        .I4(obs_growth[49]),
        .I5(\cid[17][5]_i_7_n_0 ),
        .O(\cid[17][5]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair352" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \cid[17][5]_i_4 
       (.I0(\cid[17][5]_i_2_n_0 ),
        .I1(\cid[17][4]_i_3_n_0 ),
        .I2(obs_unrooted[17]),
        .O(\cid[17][5]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair202" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \cid[17][5]_i_5 
       (.I0(\FSM_sequential_stage_reg[1]_rep__1_n_0 ),
        .I1(\cid[21][4]_i_2_n_0 ),
        .O(\cid[17][5]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h8AA8A8A8A8A8A8A8)) 
    \cid[17][5]_i_6 
       (.I0(\FSM_sequential_stage_reg[1]_rep__1_n_0 ),
        .I1(\cid[17][4]_i_3_n_0 ),
        .I2(obs_cid[83]),
        .I3(obs_cid[82]),
        .I4(obs_cid[81]),
        .I5(obs_cid[80]),
        .O(\cid[17][5]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF77077777)) 
    \cid[17][5]_i_7 
       (.I0(\cid[17][5]_i_10_n_0 ),
        .I1(\cid[20][4]_i_2_n_0 ),
        .I2(obs_growth[31]),
        .I3(obs_growth[30]),
        .I4(\cid[5][4]_i_2_n_0 ),
        .I5(obs_unrooted[17]),
        .O(\cid[17][5]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair200" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cid[17][5]_i_8 
       (.I0(\cid[25][4]_i_2_n_0 ),
        .I1(obs_unrooted[17]),
        .O(\cid[17][5]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0F0F0F0F2F000F0F)) 
    \cid[17][5]_i_9 
       (.I0(\cid[5][4]_i_2_n_0 ),
        .I1(obs_unrooted[17]),
        .I2(\cid[17][5]_i_11_n_0 ),
        .I3(obs_cid[23]),
        .I4(\active[3]_i_3_n_0 ),
        .I5(\cid[17][5]_i_12_n_0 ),
        .O(\cid[17][5]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hA3A3A0A3A0A0A0A0)) 
    \cid[18][0]_i_1 
       (.I0(obs_cid[84]),
        .I1(\cid[22][2]_i_3_n_0 ),
        .I2(\FSM_sequential_stage_reg[1]_rep__3_n_0 ),
        .I3(\cid[18][0]_i_2_n_0 ),
        .I4(\cid[18][5]_i_4_n_0 ),
        .I5(\cid[18][0]_i_3_n_0 ),
        .O(\cid[18][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hD050D0F0D0FAD0F0)) 
    \cid[18][0]_i_2 
       (.I0(\cid[18][5]_i_7_n_0 ),
        .I1(obs_unrooted[18]),
        .I2(\cid[18][0]_i_4_n_0 ),
        .I3(\cid[26][3]_i_4_n_0 ),
        .I4(\cid[18][3]_i_6_n_0 ),
        .I5(obs_cid[132]),
        .O(\cid[18][0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h08FBFFFFF8FBFFFF)) 
    \cid[18][0]_i_3 
       (.I0(obs_cid[84]),
        .I1(\cid[18][4]_i_6_n_0 ),
        .I2(\cid[18][4]_i_2_n_0 ),
        .I3(\cid[18][0]_i_2_n_0 ),
        .I4(\cid[18][5]_i_4_n_0 ),
        .I5(obs_unrooted[18]),
        .O(\cid[18][0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h80AAA2AAB3AAA2AA)) 
    \cid[18][0]_i_4 
       (.I0(\cid[18][0]_i_5_n_0 ),
        .I1(\cid[23][2]_i_3_n_0 ),
        .I2(obs_unrooted[18]),
        .I3(\cid[18][5]_i_12_n_0 ),
        .I4(\cid[18][3]_i_8_n_0 ),
        .I5(obs_cid[114]),
        .O(\cid[18][0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00110000F0BBFFFF)) 
    \cid[18][0]_i_5 
       (.I0(\cid[18][3]_i_13_n_0 ),
        .I1(obs_cid[24]),
        .I2(obs_unrooted[18]),
        .I3(\cid[6][4]_i_2_n_0 ),
        .I4(\ptr[4][1]_i_3_n_0 ),
        .I5(obs_cid[108]),
        .O(\cid[18][0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hF6F6FFFFF6F6FF00)) 
    \cid[18][1]_i_1 
       (.I0(obs_cid[85]),
        .I1(\cid[18][1]_i_2_n_0 ),
        .I2(\cid[18][4]_i_2_n_0 ),
        .I3(\cid[18][1]_i_3_n_0 ),
        .I4(\FSM_sequential_stage_reg[1]_rep__3_n_0 ),
        .I5(\cid[22][2]_i_3_n_0 ),
        .O(\cid[18][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair147" *) 
  LUT5 #(
    .INIT(32'h00001115)) 
    \cid[18][1]_i_2 
       (.I0(obs_cid[88]),
        .I1(obs_cid[87]),
        .I2(obs_cid[85]),
        .I3(obs_cid[86]),
        .I4(obs_cid[89]),
        .O(\cid[18][1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h4FCF4F0F4F034F0F)) 
    \cid[18][1]_i_3 
       (.I0(obs_unrooted[18]),
        .I1(\cid[18][5]_i_4_n_0 ),
        .I2(\cid[18][1]_i_4_n_0 ),
        .I3(\cid[18][4]_i_2_n_0 ),
        .I4(\cid[18][4]_i_6_n_0 ),
        .I5(obs_cid[85]),
        .O(\cid[18][1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hD050D0F0D0FAD0F0)) 
    \cid[18][1]_i_4 
       (.I0(\cid[18][5]_i_7_n_0 ),
        .I1(obs_unrooted[18]),
        .I2(\cid[18][1]_i_5_n_0 ),
        .I3(\cid[26][3]_i_4_n_0 ),
        .I4(\cid[18][3]_i_6_n_0 ),
        .I5(obs_cid[133]),
        .O(\cid[18][1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h80AAA2AAB3AAA2AA)) 
    \cid[18][1]_i_5 
       (.I0(\cid[18][1]_i_6_n_0 ),
        .I1(\cid[23][2]_i_3_n_0 ),
        .I2(obs_unrooted[18]),
        .I3(\cid[18][5]_i_12_n_0 ),
        .I4(\cid[18][3]_i_8_n_0 ),
        .I5(obs_cid[115]),
        .O(\cid[18][1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h2333233320332F33)) 
    \cid[18][1]_i_6 
       (.I0(obs_unrooted[18]),
        .I1(obs_cid[109]),
        .I2(\cid[6][4]_i_2_n_0 ),
        .I3(\ptr[4][1]_i_3_n_0 ),
        .I4(obs_cid[25]),
        .I5(\cid[18][3]_i_13_n_0 ),
        .O(\cid[18][1]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h555500CF55550000)) 
    \cid[18][2]_i_1 
       (.I0(\cid[18][2]_i_2_n_0 ),
        .I1(\cid[18][5]_i_4_n_0 ),
        .I2(\cid[18][2]_i_3_n_0 ),
        .I3(\cid[22][2]_i_3_n_0 ),
        .I4(\FSM_sequential_stage_reg[1]_rep__3_n_0 ),
        .I5(\cid[18][2]_i_4_n_0 ),
        .O(\cid[18][2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h70F0F0F0F0F0F3C3)) 
    \cid[18][2]_i_2 
       (.I0(obs_cid[84]),
        .I1(obs_cid[89]),
        .I2(obs_cid[86]),
        .I3(obs_cid[87]),
        .I4(obs_cid[88]),
        .I5(obs_cid[85]),
        .O(\cid[18][2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hD050D0F0D0FAD0F0)) 
    \cid[18][2]_i_3 
       (.I0(\cid[18][5]_i_7_n_0 ),
        .I1(obs_unrooted[18]),
        .I2(\cid[18][2]_i_5_n_0 ),
        .I3(\cid[26][3]_i_4_n_0 ),
        .I4(\cid[18][3]_i_6_n_0 ),
        .I5(obs_cid[134]),
        .O(\cid[18][2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h08FBFFFFF8FBFFFF)) 
    \cid[18][2]_i_4 
       (.I0(obs_cid[86]),
        .I1(\cid[18][4]_i_6_n_0 ),
        .I2(\cid[18][4]_i_2_n_0 ),
        .I3(\cid[18][2]_i_3_n_0 ),
        .I4(\cid[18][5]_i_4_n_0 ),
        .I5(obs_unrooted[18]),
        .O(\cid[18][2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h80AAA2AAB3AAA2AA)) 
    \cid[18][2]_i_5 
       (.I0(\cid[18][2]_i_6_n_0 ),
        .I1(\cid[23][2]_i_3_n_0 ),
        .I2(obs_unrooted[18]),
        .I3(\cid[18][5]_i_12_n_0 ),
        .I4(\cid[18][3]_i_8_n_0 ),
        .I5(obs_cid[116]),
        .O(\cid[18][2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h2333233320332F33)) 
    \cid[18][2]_i_6 
       (.I0(obs_unrooted[18]),
        .I1(obs_cid[110]),
        .I2(\cid[6][4]_i_2_n_0 ),
        .I3(\ptr[4][1]_i_3_n_0 ),
        .I4(obs_cid[26]),
        .I5(\cid[18][3]_i_13_n_0 ),
        .O(\cid[18][2]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h555500CF55550000)) 
    \cid[18][3]_i_1 
       (.I0(\cid[18][3]_i_2_n_0 ),
        .I1(\cid[18][5]_i_4_n_0 ),
        .I2(\cid[18][3]_i_3_n_0 ),
        .I3(\cid[22][2]_i_3_n_0 ),
        .I4(\FSM_sequential_stage_reg[1]_rep__3_n_0 ),
        .I5(\cid[18][3]_i_4_n_0 ),
        .O(\cid[18][3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h111F)) 
    \cid[18][3]_i_10 
       (.I0(\cid[18][3]_i_5_n_0 ),
        .I1(obs_cid[135]),
        .I2(\cid[18][2]_i_5_n_0 ),
        .I3(obs_cid[134]),
        .O(\cid[18][3]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEF000)) 
    \cid[18][3]_i_11 
       (.I0(obs_cid[132]),
        .I1(\cid[18][0]_i_4_n_0 ),
        .I2(\cid[18][2]_i_5_n_0 ),
        .I3(obs_cid[134]),
        .I4(\cid[18][1]_i_5_n_0 ),
        .I5(obs_cid[133]),
        .O(\cid[18][3]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair207" *) 
  LUT4 #(
    .INIT(16'h8F88)) 
    \cid[18][3]_i_12 
       (.I0(obs_cid[135]),
        .I1(\cid[18][3]_i_5_n_0 ),
        .I2(\cid[18][4]_i_7_n_0 ),
        .I3(obs_cid[136]),
        .O(\cid[18][3]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h4D4D4D4D0C4D0C0C)) 
    \cid[18][3]_i_13 
       (.I0(\cid[4][5]_i_8_n_0 ),
        .I1(obs_cid[29]),
        .I2(obs_cid[113]),
        .I3(\cid[18][3]_i_19_n_0 ),
        .I4(\cid[18][3]_i_20_n_0 ),
        .I5(\cid[18][3]_i_21_n_0 ),
        .O(\cid[18][3]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h00000B00FBFFFBFF)) 
    \cid[18][3]_i_14 
       (.I0(obs_unrooted[18]),
        .I1(\cid[6][4]_i_2_n_0 ),
        .I2(obs_growth[4]),
        .I3(obs_growth[5]),
        .I4(obs_cid[29]),
        .I5(obs_cid[113]),
        .O(\cid[18][3]_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair208" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cid[18][3]_i_15 
       (.I0(obs_cid[118]),
        .I1(\cid[18][4]_i_12_n_0 ),
        .O(\cid[18][3]_i_15_n_0 ));
  LUT4 #(
    .INIT(16'h8F88)) 
    \cid[18][3]_i_16 
       (.I0(obs_cid[116]),
        .I1(\cid[18][2]_i_6_n_0 ),
        .I2(\cid[18][3]_i_7_n_0 ),
        .I3(obs_cid[117]),
        .O(\cid[18][3]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h011F011F011FFFFF)) 
    \cid[18][3]_i_17 
       (.I0(obs_cid[114]),
        .I1(\cid[18][0]_i_5_n_0 ),
        .I2(obs_cid[115]),
        .I3(\cid[18][1]_i_6_n_0 ),
        .I4(obs_cid[116]),
        .I5(\cid[18][2]_i_6_n_0 ),
        .O(\cid[18][3]_i_17_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair208" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    \cid[18][3]_i_18 
       (.I0(obs_cid[118]),
        .I1(\cid[18][4]_i_12_n_0 ),
        .I2(obs_cid[117]),
        .I3(\cid[18][3]_i_7_n_0 ),
        .O(\cid[18][3]_i_18_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair221" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    \cid[18][3]_i_19 
       (.I0(obs_cid[26]),
        .I1(obs_cid[110]),
        .I2(obs_cid[27]),
        .I3(obs_cid[111]),
        .O(\cid[18][3]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h7F0000FFFF0300FF)) 
    \cid[18][3]_i_2 
       (.I0(obs_cid[84]),
        .I1(obs_cid[85]),
        .I2(obs_cid[88]),
        .I3(obs_cid[87]),
        .I4(obs_cid[86]),
        .I5(obs_cid[89]),
        .O(\cid[18][3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hDDFD00F0FFFFDDFD)) 
    \cid[18][3]_i_20 
       (.I0(obs_cid[108]),
        .I1(obs_cid[24]),
        .I2(obs_cid[26]),
        .I3(obs_cid[110]),
        .I4(obs_cid[25]),
        .I5(obs_cid[109]),
        .O(\cid[18][3]_i_20_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair220" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    \cid[18][3]_i_21 
       (.I0(obs_cid[111]),
        .I1(obs_cid[27]),
        .I2(obs_cid[112]),
        .I3(obs_cid[28]),
        .O(\cid[18][3]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hD050D0F0D0FAD0F0)) 
    \cid[18][3]_i_3 
       (.I0(\cid[18][5]_i_7_n_0 ),
        .I1(obs_unrooted[18]),
        .I2(\cid[18][3]_i_5_n_0 ),
        .I3(\cid[26][3]_i_4_n_0 ),
        .I4(\cid[18][3]_i_6_n_0 ),
        .I5(obs_cid[135]),
        .O(\cid[18][3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h08FBFFFFF8FBFFFF)) 
    \cid[18][3]_i_4 
       (.I0(obs_cid[87]),
        .I1(\cid[18][4]_i_6_n_0 ),
        .I2(\cid[18][4]_i_2_n_0 ),
        .I3(\cid[18][3]_i_3_n_0 ),
        .I4(\cid[18][5]_i_4_n_0 ),
        .I5(obs_unrooted[18]),
        .O(\cid[18][3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h4055515573555155)) 
    \cid[18][3]_i_5 
       (.I0(\cid[18][3]_i_7_n_0 ),
        .I1(\cid[23][2]_i_3_n_0 ),
        .I2(obs_unrooted[18]),
        .I3(\cid[18][5]_i_12_n_0 ),
        .I4(\cid[18][3]_i_8_n_0 ),
        .I5(obs_cid[117]),
        .O(\cid[18][3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hD4D4D4D4DDD4DDDD)) 
    \cid[18][3]_i_6 
       (.I0(obs_cid[137]),
        .I1(\cid[18][5]_i_8_n_0 ),
        .I2(\cid[18][3]_i_9_n_0 ),
        .I3(\cid[18][3]_i_10_n_0 ),
        .I4(\cid[18][3]_i_11_n_0 ),
        .I5(\cid[18][3]_i_12_n_0 ),
        .O(\cid[18][3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hDCCCDCCCDFCCD0CC)) 
    \cid[18][3]_i_7 
       (.I0(obs_unrooted[18]),
        .I1(obs_cid[111]),
        .I2(\cid[6][4]_i_2_n_0 ),
        .I3(\ptr[4][1]_i_3_n_0 ),
        .I4(obs_cid[27]),
        .I5(\cid[18][3]_i_13_n_0 ),
        .O(\cid[18][3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h1717171711171111)) 
    \cid[18][3]_i_8 
       (.I0(obs_cid[119]),
        .I1(\cid[18][3]_i_14_n_0 ),
        .I2(\cid[18][3]_i_15_n_0 ),
        .I3(\cid[18][3]_i_16_n_0 ),
        .I4(\cid[18][3]_i_17_n_0 ),
        .I5(\cid[18][3]_i_18_n_0 ),
        .O(\cid[18][3]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair207" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cid[18][3]_i_9 
       (.I0(\cid[18][4]_i_7_n_0 ),
        .I1(obs_cid[136]),
        .O(\cid[18][3]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hBEBEFFFFBEBEFF00)) 
    \cid[18][4]_i_1 
       (.I0(\cid[18][4]_i_2_n_0 ),
        .I1(obs_cid[88]),
        .I2(\cid[18][4]_i_3_n_0 ),
        .I3(\cid[18][4]_i_4_n_0 ),
        .I4(\FSM_sequential_stage_reg[1]_rep__3_n_0 ),
        .I5(\cid[22][2]_i_3_n_0 ),
        .O(\cid[18][4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h011F011F011FFFFF)) 
    \cid[18][4]_i_10 
       (.I0(obs_cid[84]),
        .I1(\cid[18][0]_i_2_n_0 ),
        .I2(obs_cid[85]),
        .I3(\cid[18][1]_i_4_n_0 ),
        .I4(obs_cid[86]),
        .I5(\cid[18][2]_i_3_n_0 ),
        .O(\cid[18][4]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair206" *) 
  LUT4 #(
    .INIT(16'h111F)) 
    \cid[18][4]_i_11 
       (.I0(\cid[18][4]_i_5_n_0 ),
        .I1(obs_cid[88]),
        .I2(\cid[18][3]_i_3_n_0 ),
        .I3(obs_cid[87]),
        .O(\cid[18][4]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hDCCCDCCCDFCCD0CC)) 
    \cid[18][4]_i_12 
       (.I0(obs_unrooted[18]),
        .I1(obs_cid[112]),
        .I2(\cid[6][4]_i_2_n_0 ),
        .I3(\ptr[4][1]_i_3_n_0 ),
        .I4(obs_cid[28]),
        .I5(\cid[18][3]_i_13_n_0 ),
        .O(\cid[18][4]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \cid[18][4]_i_2 
       (.I0(obs_cid[84]),
        .I1(obs_cid[89]),
        .I2(obs_cid[87]),
        .I3(obs_cid[85]),
        .I4(obs_cid[88]),
        .I5(obs_cid[86]),
        .O(\cid[18][4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair147" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cid[18][4]_i_3 
       (.I0(obs_cid[87]),
        .I1(obs_cid[86]),
        .O(\cid[18][4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h7F55755570557555)) 
    \cid[18][4]_i_4 
       (.I0(\cid[18][4]_i_5_n_0 ),
        .I1(obs_unrooted[18]),
        .I2(\cid[18][4]_i_2_n_0 ),
        .I3(\cid[18][5]_i_4_n_0 ),
        .I4(\cid[18][4]_i_6_n_0 ),
        .I5(obs_cid[88]),
        .O(\cid[18][4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00D500DF0ADF00DF)) 
    \cid[18][4]_i_5 
       (.I0(\cid[18][5]_i_7_n_0 ),
        .I1(obs_unrooted[18]),
        .I2(\cid[26][3]_i_4_n_0 ),
        .I3(\cid[18][4]_i_7_n_0 ),
        .I4(\cid[18][3]_i_6_n_0 ),
        .I5(obs_cid[136]),
        .O(\cid[18][4]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h1717171711171111)) 
    \cid[18][4]_i_6 
       (.I0(obs_cid[89]),
        .I1(\cid[18][5]_i_3_n_0 ),
        .I2(\cid[18][4]_i_8_n_0 ),
        .I3(\cid[18][4]_i_9_n_0 ),
        .I4(\cid[18][4]_i_10_n_0 ),
        .I5(\cid[18][4]_i_11_n_0 ),
        .O(\cid[18][4]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hBFAAAEAA8CAAAEAA)) 
    \cid[18][4]_i_7 
       (.I0(\cid[18][4]_i_12_n_0 ),
        .I1(\cid[23][2]_i_3_n_0 ),
        .I2(obs_unrooted[18]),
        .I3(\cid[18][5]_i_12_n_0 ),
        .I4(\cid[18][3]_i_8_n_0 ),
        .I5(obs_cid[118]),
        .O(\cid[18][4]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair206" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cid[18][4]_i_8 
       (.I0(\cid[18][4]_i_5_n_0 ),
        .I1(obs_cid[88]),
        .O(\cid[18][4]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \cid[18][4]_i_9 
       (.I0(obs_cid[86]),
        .I1(\cid[18][2]_i_3_n_0 ),
        .I2(obs_cid[87]),
        .I3(\cid[18][3]_i_3_n_0 ),
        .O(\cid[18][4]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFBABB0000)) 
    \cid[18][5]_i_1 
       (.I0(\cid[18][5]_i_2_n_0 ),
        .I1(\cid[18][5]_i_3_n_0 ),
        .I2(obs_cid[89]),
        .I3(\cid[18][5]_i_4_n_0 ),
        .I4(\cid[18][5]_i_5_n_0 ),
        .I5(\cid[18][5]_i_6_n_0 ),
        .O(\cid[18][5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FF404040)) 
    \cid[18][5]_i_10 
       (.I0(obs_growth[4]),
        .I1(obs_growth[5]),
        .I2(\cid[6][4]_i_2_n_0 ),
        .I3(\cid[19][3]_i_18_n_0 ),
        .I4(\cid[23][2]_i_3_n_0 ),
        .I5(obs_unrooted[18]),
        .O(\cid[18][5]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair324" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    \cid[18][5]_i_11 
       (.I0(obs_unrooted[18]),
        .I1(\cid[23][2]_i_3_n_0 ),
        .I2(obs_growth[36]),
        .I3(obs_growth[37]),
        .O(\cid[18][5]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h4440444444444444)) 
    \cid[18][5]_i_12 
       (.I0(obs_growth[36]),
        .I1(obs_growth[37]),
        .I2(obs_unrooted[18]),
        .I3(obs_growth[4]),
        .I4(obs_growth[5]),
        .I5(\cid[6][4]_i_2_n_0 ),
        .O(\cid[18][5]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FF080808)) 
    \cid[18][5]_i_13 
       (.I0(\cid[6][4]_i_2_n_0 ),
        .I1(obs_growth[5]),
        .I2(obs_growth[4]),
        .I3(\cid[19][3]_i_18_n_0 ),
        .I4(\cid[23][2]_i_3_n_0 ),
        .I5(obs_unrooted[18]),
        .O(\cid[18][5]_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair185" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \cid[18][5]_i_2 
       (.I0(\cid[18][5]_i_4_n_0 ),
        .I1(\cid[18][4]_i_2_n_0 ),
        .I2(obs_unrooted[18]),
        .O(\cid[18][5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT5 #(
    .INIT(32'h00D0DFDF)) 
    \cid[18][5]_i_3 
       (.I0(\cid[26][3]_i_4_n_0 ),
        .I1(obs_unrooted[18]),
        .I2(\cid[18][5]_i_7_n_0 ),
        .I3(obs_cid[137]),
        .I4(\cid[18][5]_i_8_n_0 ),
        .O(\cid[18][5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000044044444)) 
    \cid[18][5]_i_4 
       (.I0(obs_growth[34]),
        .I1(obs_growth[35]),
        .I2(\cid[18][5]_i_9_n_0 ),
        .I3(obs_growth[50]),
        .I4(obs_growth[51]),
        .I5(\cid[18][5]_i_10_n_0 ),
        .O(\cid[18][5]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair413" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \cid[18][5]_i_5 
       (.I0(\FSM_sequential_stage_reg[1]_rep__1_n_0 ),
        .I1(\cid[22][2]_i_3_n_0 ),
        .O(\cid[18][5]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h8AA8A8A8A8A8A8A8)) 
    \cid[18][5]_i_6 
       (.I0(\FSM_sequential_stage_reg[1]_rep__1_n_0 ),
        .I1(\cid[18][4]_i_2_n_0 ),
        .I2(obs_cid[89]),
        .I3(obs_cid[88]),
        .I4(obs_cid[87]),
        .I5(obs_cid[86]),
        .O(\cid[18][5]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0404040400040404)) 
    \cid[18][5]_i_7 
       (.I0(obs_growth[50]),
        .I1(obs_growth[51]),
        .I2(\cid[18][5]_i_11_n_0 ),
        .I3(\cid[6][4]_i_2_n_0 ),
        .I4(\ptr[4][1]_i_3_n_0 ),
        .I5(obs_unrooted[18]),
        .O(\cid[18][5]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hBBB0B0B0BBB0BBB0)) 
    \cid[18][5]_i_8 
       (.I0(obs_cid[119]),
        .I1(\cid[18][5]_i_12_n_0 ),
        .I2(\cid[18][5]_i_13_n_0 ),
        .I3(obs_cid[113]),
        .I4(obs_cid[29]),
        .I5(\ptr[4][1]_i_3_n_0 ),
        .O(\cid[18][5]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cid[18][5]_i_9 
       (.I0(\cid[26][3]_i_4_n_0 ),
        .I1(obs_unrooted[18]),
        .O(\cid[18][5]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair211" *) 
  LUT4 #(
    .INIT(16'hAFAC)) 
    \cid[19][0]_i_1 
       (.I0(obs_cid[90]),
        .I1(\cid[19][0]_i_2_n_0 ),
        .I2(\FSM_sequential_stage_reg[1]_rep__3_n_0 ),
        .I3(\cid[23][2]_i_3_n_0 ),
        .O(\cid[19][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2FAF2F0F2F052F0F)) 
    \cid[19][0]_i_2 
       (.I0(\cid[19][3]_i_4_n_0 ),
        .I1(obs_unrooted[19]),
        .I2(\cid[19][0]_i_3_n_0 ),
        .I3(\cid[19][5]_i_3_n_0 ),
        .I4(\cid[19][4]_i_4_n_0 ),
        .I5(obs_cid[90]),
        .O(\cid[19][0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB300BF00BF0CBF00)) 
    \cid[19][0]_i_3 
       (.I0(obs_unrooted[19]),
        .I1(\cid[19][3]_i_6_n_0 ),
        .I2(\cid[27][3]_i_3_n_0 ),
        .I3(\cid[19][0]_i_4_n_0 ),
        .I4(\cid[19][3]_i_8_n_0 ),
        .I5(obs_cid[138]),
        .O(\cid[19][0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h7530773077337730)) 
    \cid[19][0]_i_4 
       (.I0(\cid[19][3]_i_10_n_0 ),
        .I1(\cid[19][0]_i_5_n_0 ),
        .I2(\cid[24][5]_i_3_n_0 ),
        .I3(\cid[19][0]_i_6_n_0 ),
        .I4(\cid[19][3]_i_13_n_0 ),
        .I5(obs_cid[120]),
        .O(\cid[19][0]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair210" *) 
  LUT4 #(
    .INIT(16'h7F55)) 
    \cid[19][0]_i_5 
       (.I0(\cid[19][3]_i_10_n_0 ),
        .I1(obs_unrooted[19]),
        .I2(\cid[19][0]_i_6_n_0 ),
        .I3(\cid[24][4]_i_2_n_0 ),
        .O(\cid[19][0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h203323332F332333)) 
    \cid[19][0]_i_6 
       (.I0(obs_unrooted[19]),
        .I1(obs_cid[114]),
        .I2(\cid[22][2]_i_3_n_0 ),
        .I3(\cid[19][3]_i_18_n_0 ),
        .I4(\cid[19][3]_i_19_n_0 ),
        .I5(obs_cid[108]),
        .O(\cid[19][0]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h6F6F6F60)) 
    \cid[19][1]_i_1 
       (.I0(obs_cid[91]),
        .I1(\cid[19][1]_i_2_n_0 ),
        .I2(\FSM_sequential_stage_reg[1]_rep__3_n_0 ),
        .I3(\cid[23][2]_i_3_n_0 ),
        .I4(\cid[19][1]_i_3_n_0 ),
        .O(\cid[19][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair148" *) 
  LUT5 #(
    .INIT(32'h00001115)) 
    \cid[19][1]_i_2 
       (.I0(obs_cid[94]),
        .I1(obs_cid[93]),
        .I2(obs_cid[91]),
        .I3(obs_cid[92]),
        .I4(obs_cid[95]),
        .O(\cid[19][1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h2FAF2F0F2F052F0F)) 
    \cid[19][1]_i_3 
       (.I0(\cid[19][3]_i_4_n_0 ),
        .I1(obs_unrooted[19]),
        .I2(\cid[19][1]_i_4_n_0 ),
        .I3(\cid[19][5]_i_3_n_0 ),
        .I4(\cid[19][4]_i_4_n_0 ),
        .I5(obs_cid[91]),
        .O(\cid[19][1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0B030B0F0BCF0B0F)) 
    \cid[19][1]_i_4 
       (.I0(obs_unrooted[19]),
        .I1(\cid[19][3]_i_6_n_0 ),
        .I2(\cid[19][1]_i_5_n_0 ),
        .I3(\cid[27][3]_i_3_n_0 ),
        .I4(\cid[19][3]_i_8_n_0 ),
        .I5(obs_cid[139]),
        .O(\cid[19][1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h8ACF88CF88CC88CF)) 
    \cid[19][1]_i_5 
       (.I0(\cid[19][3]_i_10_n_0 ),
        .I1(\cid[19][1]_i_6_n_0 ),
        .I2(\cid[24][5]_i_3_n_0 ),
        .I3(\cid[19][1]_i_7_n_0 ),
        .I4(\cid[19][3]_i_13_n_0 ),
        .I5(obs_cid[121]),
        .O(\cid[19][1]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair214" *) 
  LUT4 #(
    .INIT(16'h7F55)) 
    \cid[19][1]_i_6 
       (.I0(\cid[19][3]_i_10_n_0 ),
        .I1(obs_unrooted[19]),
        .I2(\cid[19][1]_i_7_n_0 ),
        .I3(\cid[24][4]_i_2_n_0 ),
        .O(\cid[19][1]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h203323332F332333)) 
    \cid[19][1]_i_7 
       (.I0(obs_unrooted[19]),
        .I1(obs_cid[115]),
        .I2(\cid[22][2]_i_3_n_0 ),
        .I3(\cid[19][3]_i_18_n_0 ),
        .I4(\cid[19][3]_i_19_n_0 ),
        .I5(obs_cid[109]),
        .O(\cid[19][1]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h555500FC55550000)) 
    \cid[19][2]_i_1 
       (.I0(\cid[19][2]_i_2_n_0 ),
        .I1(\cid[19][2]_i_3_n_0 ),
        .I2(\cid[19][3]_i_4_n_0 ),
        .I3(\cid[23][2]_i_3_n_0 ),
        .I4(\FSM_sequential_stage_reg[1]_rep__3_n_0 ),
        .I5(\cid[19][2]_i_4_n_0 ),
        .O(\cid[19][2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h70F0F0F0F0F0F3C3)) 
    \cid[19][2]_i_2 
       (.I0(obs_cid[90]),
        .I1(obs_cid[95]),
        .I2(obs_cid[92]),
        .I3(obs_cid[93]),
        .I4(obs_cid[94]),
        .I5(obs_cid[91]),
        .O(\cid[19][2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h4CFF40FF40F340FF)) 
    \cid[19][2]_i_3 
       (.I0(obs_unrooted[19]),
        .I1(\cid[19][3]_i_6_n_0 ),
        .I2(\cid[27][3]_i_3_n_0 ),
        .I3(\cid[19][2]_i_5_n_0 ),
        .I4(\cid[19][3]_i_8_n_0 ),
        .I5(obs_cid[140]),
        .O(\cid[19][2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFB08FBF8FFFFFFFF)) 
    \cid[19][2]_i_4 
       (.I0(obs_cid[92]),
        .I1(\cid[19][4]_i_4_n_0 ),
        .I2(\cid[19][5]_i_3_n_0 ),
        .I3(\cid[19][2]_i_3_n_0 ),
        .I4(obs_unrooted[19]),
        .I5(\cid[19][3]_i_4_n_0 ),
        .O(\cid[19][2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h3075307733773077)) 
    \cid[19][2]_i_5 
       (.I0(\cid[19][3]_i_10_n_0 ),
        .I1(\cid[19][2]_i_6_n_0 ),
        .I2(\cid[24][5]_i_3_n_0 ),
        .I3(\cid[19][2]_i_7_n_0 ),
        .I4(\cid[19][3]_i_13_n_0 ),
        .I5(obs_cid[122]),
        .O(\cid[19][2]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair214" *) 
  LUT4 #(
    .INIT(16'hF755)) 
    \cid[19][2]_i_6 
       (.I0(\cid[19][3]_i_10_n_0 ),
        .I1(obs_unrooted[19]),
        .I2(\cid[19][2]_i_7_n_0 ),
        .I3(\cid[24][4]_i_2_n_0 ),
        .O(\cid[19][2]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hDFCCDCCCD0CCDCCC)) 
    \cid[19][2]_i_7 
       (.I0(obs_unrooted[19]),
        .I1(obs_cid[116]),
        .I2(\cid[22][2]_i_3_n_0 ),
        .I3(\cid[19][3]_i_18_n_0 ),
        .I4(\cid[19][3]_i_19_n_0 ),
        .I5(obs_cid[110]),
        .O(\cid[19][2]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h555500FC55550000)) 
    \cid[19][3]_i_1 
       (.I0(\cid[19][3]_i_2_n_0 ),
        .I1(\cid[19][3]_i_3_n_0 ),
        .I2(\cid[19][3]_i_4_n_0 ),
        .I3(\cid[23][2]_i_3_n_0 ),
        .I4(\FSM_sequential_stage_reg[1]_rep__3_n_0 ),
        .I5(\cid[19][3]_i_5_n_0 ),
        .O(\cid[19][3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4444444440444444)) 
    \cid[19][3]_i_10 
       (.I0(obs_growth[40]),
        .I1(obs_growth[41]),
        .I2(obs_unrooted[19]),
        .I3(\cid[22][2]_i_3_n_0 ),
        .I4(obs_growth[37]),
        .I5(obs_growth[36]),
        .O(\cid[19][3]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair215" *) 
  LUT4 #(
    .INIT(16'hF755)) 
    \cid[19][3]_i_11 
       (.I0(\cid[19][3]_i_10_n_0 ),
        .I1(obs_unrooted[19]),
        .I2(\cid[19][3]_i_12_n_0 ),
        .I3(\cid[24][4]_i_2_n_0 ),
        .O(\cid[19][3]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hDFCCDCCCD0CCDCCC)) 
    \cid[19][3]_i_12 
       (.I0(obs_unrooted[19]),
        .I1(obs_cid[117]),
        .I2(\cid[22][2]_i_3_n_0 ),
        .I3(\cid[19][3]_i_18_n_0 ),
        .I4(\cid[19][3]_i_19_n_0 ),
        .I5(obs_cid[111]),
        .O(\cid[19][3]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h1717171703170303)) 
    \cid[19][3]_i_13 
       (.I0(\cid[19][3]_i_20_n_0 ),
        .I1(obs_cid[125]),
        .I2(\cid[19][5]_i_10_n_0 ),
        .I3(\cid[19][3]_i_21_n_0 ),
        .I4(\cid[19][3]_i_22_n_0 ),
        .I5(\cid[19][3]_i_23_n_0 ),
        .O(\cid[19][3]_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair213" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cid[19][3]_i_14 
       (.I0(\cid[19][4]_i_5_n_0 ),
        .I1(obs_cid[142]),
        .O(\cid[19][3]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'h111F)) 
    \cid[19][3]_i_15 
       (.I0(\cid[19][3]_i_7_n_0 ),
        .I1(obs_cid[141]),
        .I2(\cid[19][2]_i_5_n_0 ),
        .I3(obs_cid[140]),
        .O(\cid[19][3]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hFEEEF000FFFFFEEE)) 
    \cid[19][3]_i_16 
       (.I0(obs_cid[138]),
        .I1(\cid[19][0]_i_4_n_0 ),
        .I2(obs_cid[140]),
        .I3(\cid[19][2]_i_5_n_0 ),
        .I4(obs_cid[139]),
        .I5(\cid[19][1]_i_5_n_0 ),
        .O(\cid[19][3]_i_16_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair213" *) 
  LUT4 #(
    .INIT(16'h8F88)) 
    \cid[19][3]_i_17 
       (.I0(obs_cid[141]),
        .I1(\cid[19][3]_i_7_n_0 ),
        .I2(\cid[19][4]_i_5_n_0 ),
        .I3(obs_cid[142]),
        .O(\cid[19][3]_i_17_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cid[19][3]_i_18 
       (.I0(obs_growth[37]),
        .I1(obs_growth[36]),
        .O(\cid[19][3]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hD0D0D0D0DDD0DDDD)) 
    \cid[19][3]_i_19 
       (.I0(obs_cid[113]),
        .I1(obs_cid[119]),
        .I2(\cid[19][3]_i_24_n_0 ),
        .I3(\cid[19][3]_i_25_n_0 ),
        .I4(\cid[19][3]_i_26_n_0 ),
        .I5(\cid[19][3]_i_27_n_0 ),
        .O(\cid[19][3]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h7F0000FFFF0300FF)) 
    \cid[19][3]_i_2 
       (.I0(obs_cid[90]),
        .I1(obs_cid[91]),
        .I2(obs_cid[94]),
        .I3(obs_cid[93]),
        .I4(obs_cid[92]),
        .I5(obs_cid[95]),
        .O(\cid[19][3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair216" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cid[19][3]_i_20 
       (.I0(obs_cid[124]),
        .I1(\cid[19][4]_i_11_n_0 ),
        .O(\cid[19][3]_i_20_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \cid[19][3]_i_21 
       (.I0(\cid[19][2]_i_7_n_0 ),
        .I1(obs_cid[122]),
        .I2(\cid[19][3]_i_12_n_0 ),
        .I3(obs_cid[123]),
        .O(\cid[19][3]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h011F011FFFFF011F)) 
    \cid[19][3]_i_22 
       (.I0(obs_cid[120]),
        .I1(\cid[19][0]_i_6_n_0 ),
        .I2(obs_cid[121]),
        .I3(\cid[19][1]_i_7_n_0 ),
        .I4(\cid[19][2]_i_7_n_0 ),
        .I5(obs_cid[122]),
        .O(\cid[19][3]_i_22_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair216" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    \cid[19][3]_i_23 
       (.I0(obs_cid[124]),
        .I1(\cid[19][4]_i_11_n_0 ),
        .I2(obs_cid[123]),
        .I3(\cid[19][3]_i_12_n_0 ),
        .O(\cid[19][3]_i_23_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \cid[19][3]_i_24 
       (.I0(obs_cid[113]),
        .I1(obs_cid[119]),
        .I2(obs_cid[112]),
        .I3(obs_cid[118]),
        .O(\cid[19][3]_i_24_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \cid[19][3]_i_25 
       (.I0(obs_cid[111]),
        .I1(obs_cid[117]),
        .I2(obs_cid[110]),
        .I3(obs_cid[116]),
        .O(\cid[19][3]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hDDFD00F0FFFFDDFD)) 
    \cid[19][3]_i_26 
       (.I0(obs_cid[114]),
        .I1(obs_cid[108]),
        .I2(obs_cid[110]),
        .I3(obs_cid[116]),
        .I4(obs_cid[109]),
        .I5(obs_cid[115]),
        .O(\cid[19][3]_i_26_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \cid[19][3]_i_27 
       (.I0(obs_cid[117]),
        .I1(obs_cid[111]),
        .I2(obs_cid[118]),
        .I3(obs_cid[112]),
        .O(\cid[19][3]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'h4CFF40FF40F340FF)) 
    \cid[19][3]_i_3 
       (.I0(obs_unrooted[19]),
        .I1(\cid[19][3]_i_6_n_0 ),
        .I2(\cid[27][3]_i_3_n_0 ),
        .I3(\cid[19][3]_i_7_n_0 ),
        .I4(\cid[19][3]_i_8_n_0 ),
        .I5(obs_cid[141]),
        .O(\cid[19][3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h2222202222222222)) 
    \cid[19][3]_i_4 
       (.I0(\cid[19][5]_i_7_n_0 ),
        .I1(\cid[19][3]_i_9_n_0 ),
        .I2(obs_unrooted[19]),
        .I3(\cid[27][3]_i_3_n_0 ),
        .I4(obs_growth[54]),
        .I5(obs_growth[55]),
        .O(\cid[19][3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hF0B8FFB8FFFFFFFF)) 
    \cid[19][3]_i_5 
       (.I0(obs_cid[93]),
        .I1(\cid[19][4]_i_4_n_0 ),
        .I2(\cid[19][3]_i_3_n_0 ),
        .I3(\cid[19][5]_i_3_n_0 ),
        .I4(obs_unrooted[19]),
        .I5(\cid[19][3]_i_4_n_0 ),
        .O(\cid[19][3]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \cid[19][3]_i_6 
       (.I0(obs_growth[54]),
        .I1(obs_growth[55]),
        .I2(\cid[19][3]_i_9_n_0 ),
        .O(\cid[19][3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h3075307733773077)) 
    \cid[19][3]_i_7 
       (.I0(\cid[19][3]_i_10_n_0 ),
        .I1(\cid[19][3]_i_11_n_0 ),
        .I2(\cid[24][5]_i_3_n_0 ),
        .I3(\cid[19][3]_i_12_n_0 ),
        .I4(\cid[19][3]_i_13_n_0 ),
        .I5(obs_cid[123]),
        .O(\cid[19][3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hD4D4D4D4DDD4DDDD)) 
    \cid[19][3]_i_8 
       (.I0(obs_cid[143]),
        .I1(\cid[19][5]_i_9_n_0 ),
        .I2(\cid[19][3]_i_14_n_0 ),
        .I3(\cid[19][3]_i_15_n_0 ),
        .I4(\cid[19][3]_i_16_n_0 ),
        .I5(\cid[19][3]_i_17_n_0 ),
        .O(\cid[19][3]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0000000088F88888)) 
    \cid[19][3]_i_9 
       (.I0(\cid[22][2]_i_3_n_0 ),
        .I1(\cid[19][3]_i_18_n_0 ),
        .I2(obs_growth[41]),
        .I3(obs_growth[40]),
        .I4(\cid[24][4]_i_2_n_0 ),
        .I5(obs_unrooted[19]),
        .O(\cid[19][3]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hF0EEFFEEFFEEF0EE)) 
    \cid[19][4]_i_1 
       (.I0(\cid[23][2]_i_3_n_0 ),
        .I1(\cid[19][4]_i_2_n_0 ),
        .I2(\cid[19][5]_i_3_n_0 ),
        .I3(\FSM_sequential_stage_reg[1]_rep__3_n_0 ),
        .I4(obs_cid[94]),
        .I5(\cid[19][5]_i_2_n_0 ),
        .O(\cid[19][4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair215" *) 
  LUT4 #(
    .INIT(16'hF755)) 
    \cid[19][4]_i_10 
       (.I0(\cid[19][3]_i_10_n_0 ),
        .I1(obs_unrooted[19]),
        .I2(\cid[19][4]_i_11_n_0 ),
        .I3(\cid[24][4]_i_2_n_0 ),
        .O(\cid[19][4]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hDFCCDCCCD0CCDCCC)) 
    \cid[19][4]_i_11 
       (.I0(obs_unrooted[19]),
        .I1(obs_cid[118]),
        .I2(\cid[22][2]_i_3_n_0 ),
        .I3(\cid[19][3]_i_18_n_0 ),
        .I4(\cid[19][3]_i_19_n_0 ),
        .I5(obs_cid[112]),
        .O(\cid[19][4]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAEEEAAEAA2E2AAEA)) 
    \cid[19][4]_i_2 
       (.I0(\cid[19][4]_i_3_n_0 ),
        .I1(\cid[19][3]_i_4_n_0 ),
        .I2(\cid[19][5]_i_3_n_0 ),
        .I3(obs_unrooted[19]),
        .I4(\cid[19][4]_i_4_n_0 ),
        .I5(obs_cid[94]),
        .O(\cid[19][4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF4FCF4F0F430F4F0)) 
    \cid[19][4]_i_3 
       (.I0(obs_unrooted[19]),
        .I1(\cid[19][3]_i_6_n_0 ),
        .I2(\cid[19][4]_i_5_n_0 ),
        .I3(\cid[27][3]_i_3_n_0 ),
        .I4(\cid[19][3]_i_8_n_0 ),
        .I5(obs_cid[142]),
        .O(\cid[19][4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h1717171711171111)) 
    \cid[19][4]_i_4 
       (.I0(obs_cid[95]),
        .I1(\cid[19][5]_i_5_n_0 ),
        .I2(\cid[19][4]_i_6_n_0 ),
        .I3(\cid[19][4]_i_7_n_0 ),
        .I4(\cid[19][4]_i_8_n_0 ),
        .I5(\cid[19][4]_i_9_n_0 ),
        .O(\cid[19][4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hCF8ACF88CC88CF88)) 
    \cid[19][4]_i_5 
       (.I0(\cid[19][3]_i_10_n_0 ),
        .I1(\cid[19][4]_i_10_n_0 ),
        .I2(\cid[24][5]_i_3_n_0 ),
        .I3(\cid[19][4]_i_11_n_0 ),
        .I4(\cid[19][3]_i_13_n_0 ),
        .I5(obs_cid[124]),
        .O(\cid[19][4]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair212" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cid[19][4]_i_6 
       (.I0(obs_cid[94]),
        .I1(\cid[19][4]_i_3_n_0 ),
        .O(\cid[19][4]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \cid[19][4]_i_7 
       (.I0(\cid[19][2]_i_3_n_0 ),
        .I1(obs_cid[92]),
        .I2(\cid[19][3]_i_3_n_0 ),
        .I3(obs_cid[93]),
        .O(\cid[19][4]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h011F011FFFFF011F)) 
    \cid[19][4]_i_8 
       (.I0(obs_cid[90]),
        .I1(\cid[19][0]_i_3_n_0 ),
        .I2(obs_cid[91]),
        .I3(\cid[19][1]_i_4_n_0 ),
        .I4(\cid[19][2]_i_3_n_0 ),
        .I5(obs_cid[92]),
        .O(\cid[19][4]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair212" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    \cid[19][4]_i_9 
       (.I0(obs_cid[94]),
        .I1(\cid[19][4]_i_3_n_0 ),
        .I2(obs_cid[93]),
        .I3(\cid[19][3]_i_3_n_0 ),
        .O(\cid[19][4]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF780000)) 
    \cid[19][5]_i_1 
       (.I0(\cid[19][5]_i_2_n_0 ),
        .I1(obs_cid[94]),
        .I2(obs_cid[95]),
        .I3(\cid[19][5]_i_3_n_0 ),
        .I4(\FSM_sequential_stage_reg[1]_rep__3_n_0 ),
        .I5(\cid[19][5]_i_4_n_0 ),
        .O(\cid[19][5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0F0F0F0F0DFF0F0F)) 
    \cid[19][5]_i_10 
       (.I0(\cid[22][2]_i_3_n_0 ),
        .I1(obs_unrooted[19]),
        .I2(obs_cid[119]),
        .I3(obs_cid[113]),
        .I4(obs_growth[37]),
        .I5(obs_growth[36]),
        .O(\cid[19][5]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair148" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cid[19][5]_i_2 
       (.I0(obs_cid[93]),
        .I1(obs_cid[92]),
        .O(\cid[19][5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \cid[19][5]_i_3 
       (.I0(obs_cid[91]),
        .I1(obs_cid[93]),
        .I2(obs_cid[95]),
        .I3(obs_cid[90]),
        .I4(obs_cid[94]),
        .I5(obs_cid[92]),
        .O(\cid[19][5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hD500D5000000D500)) 
    \cid[19][5]_i_4 
       (.I0(\cid[19][5]_i_5_n_0 ),
        .I1(\cid[19][5]_i_6_n_0 ),
        .I2(\cid[19][5]_i_7_n_0 ),
        .I3(\cid[19][5]_i_8_n_0 ),
        .I4(\cid[19][3]_i_4_n_0 ),
        .I5(obs_cid[95]),
        .O(\cid[19][5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000D00FDFFFDFF)) 
    \cid[19][5]_i_5 
       (.I0(\cid[27][3]_i_3_n_0 ),
        .I1(obs_unrooted[19]),
        .I2(\cid[19][3]_i_9_n_0 ),
        .I3(\cid[23][5]_i_7_n_0 ),
        .I4(obs_cid[143]),
        .I5(\cid[19][5]_i_9_n_0 ),
        .O(\cid[19][5]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair141" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cid[19][5]_i_6 
       (.I0(\cid[19][5]_i_3_n_0 ),
        .I1(obs_unrooted[19]),
        .O(\cid[19][5]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cid[19][5]_i_7 
       (.I0(obs_growth[39]),
        .I1(obs_growth[38]),
        .O(\cid[19][5]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair416" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \cid[19][5]_i_8 
       (.I0(\FSM_sequential_stage_reg[1]_rep__1_n_0 ),
        .I1(\cid[23][2]_i_3_n_0 ),
        .O(\cid[19][5]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h75005555)) 
    \cid[19][5]_i_9 
       (.I0(\cid[19][5]_i_10_n_0 ),
        .I1(obs_unrooted[19]),
        .I2(\cid[24][4]_i_2_n_0 ),
        .I3(obs_cid[125]),
        .I4(\cid[19][3]_i_10_n_0 ),
        .O(\cid[19][5]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair176" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \cid[1][0]_i_1 
       (.I0(obs_cid[78]),
        .I1(\cid[3][4]_i_2_n_0 ),
        .O(\cid[1][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair411" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cid[1][1]_i_1 
       (.I0(obs_cid[79]),
        .I1(\cid[3][4]_i_2_n_0 ),
        .O(\cid[1][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair411" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cid[1][2]_i_1 
       (.I0(obs_cid[80]),
        .I1(\cid[3][4]_i_2_n_0 ),
        .O(\cid[1][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair311" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cid[1][3]_i_1 
       (.I0(obs_cid[81]),
        .I1(\cid[3][4]_i_2_n_0 ),
        .O(\cid[1][3]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \cid[1][4]_i_1 
       (.I0(obs_cid[82]),
        .I1(\cid[3][4]_i_2_n_0 ),
        .O(\cid[1][4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0014)) 
    \cid[1][5]_i_1 
       (.I0(\FSM_sequential_stage_reg[1]_rep__0_n_0 ),
        .I1(stage__0[2]),
        .I2(stage__0[0]),
        .I3(\cid[1][5]_i_3_n_0 ),
        .O(\cid[1][5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair353" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cid[1][5]_i_2 
       (.I0(obs_cid[83]),
        .I1(\cid[3][4]_i_2_n_0 ),
        .O(\cid[1][5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h5555555510115555)) 
    \cid[1][5]_i_3 
       (.I0(\cid[3][4]_i_2_n_0 ),
        .I1(\cid[1][5]_i_4_n_0 ),
        .I2(obs_unrooted[1]),
        .I3(\cid[17][4]_i_3_n_0 ),
        .I4(obs_growth[17]),
        .I5(obs_growth[16]),
        .O(\cid[1][5]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair353" *) 
  LUT3 #(
    .INIT(8'h71)) 
    \cid[1][5]_i_4 
       (.I0(\cid[1][5]_i_5_n_0 ),
        .I1(obs_cid[83]),
        .I2(obs_cid[11]),
        .O(\cid[1][5]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h8E00FF8E)) 
    \cid[1][5]_i_5 
       (.I0(\cid[1][5]_i_6_n_0 ),
        .I1(obs_cid[81]),
        .I2(obs_cid[9]),
        .I3(obs_cid[82]),
        .I4(obs_cid[10]),
        .O(\cid[1][5]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hBF0B0000FFFFBF0B)) 
    \cid[1][5]_i_6 
       (.I0(obs_cid[78]),
        .I1(obs_cid[6]),
        .I2(obs_cid[7]),
        .I3(obs_cid[79]),
        .I4(obs_cid[80]),
        .I5(obs_cid[8]),
        .O(\cid[1][5]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAAAA00CFAAAA0000)) 
    \cid[20][0]_i_1 
       (.I0(obs_cid[96]),
        .I1(\cid[20][5]_i_3_n_0 ),
        .I2(\cid[20][0]_i_2_n_0 ),
        .I3(\cid[24][5]_i_3_n_0 ),
        .I4(\FSM_sequential_stage_reg[1]_rep__3_n_0 ),
        .I5(\cid[20][0]_i_3_n_0 ),
        .O(\cid[20][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h80AAA2AAB3AAA2AA)) 
    \cid[20][0]_i_2 
       (.I0(\cid[20][0]_i_4_n_0 ),
        .I1(\cid[28][3]_i_4_n_0 ),
        .I2(obs_unrooted[20]),
        .I3(\cid[20][3]_i_6_n_0 ),
        .I4(\cid[20][3]_i_7_n_0 ),
        .I5(obs_cid[144]),
        .O(\cid[20][0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0FFF8F8FFFFFBFBF)) 
    \cid[20][0]_i_3 
       (.I0(obs_cid[96]),
        .I1(\cid[20][4]_i_6_n_0 ),
        .I2(\cid[20][5]_i_3_n_0 ),
        .I3(obs_unrooted[20]),
        .I4(\cid[20][4]_i_2_n_0 ),
        .I5(\cid[20][0]_i_2_n_0 ),
        .O(\cid[20][0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hD050D0F0D0FAD0F0)) 
    \cid[20][0]_i_4 
       (.I0(\cid[20][3]_i_8_n_0 ),
        .I1(obs_unrooted[20]),
        .I2(\cid[20][0]_i_5_n_0 ),
        .I3(\cid[25][4]_i_2_n_0 ),
        .I4(\cid[20][3]_i_10_n_0 ),
        .I5(obs_cid[126]),
        .O(\cid[20][0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00440000F077FFFF)) 
    \cid[20][0]_i_5 
       (.I0(obs_cid[114]),
        .I1(\cid[20][3]_i_17_n_0 ),
        .I2(obs_unrooted[20]),
        .I3(\cid[23][2]_i_3_n_0 ),
        .I4(\cid[20][3]_i_16_n_0 ),
        .I5(obs_cid[120]),
        .O(\cid[20][0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAEFAAAAAAAA)) 
    \cid[20][1]_i_1 
       (.I0(\cid[20][1]_i_2_n_0 ),
        .I1(\cid[20][5]_i_3_n_0 ),
        .I2(\cid[20][1]_i_3_n_0 ),
        .I3(\cid[24][5]_i_3_n_0 ),
        .I4(\FSM_sequential_stage_reg[1]_rep__1_n_0 ),
        .I5(\cid[20][1]_i_4_n_0 ),
        .O(\cid[20][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAA00AA00A802A822)) 
    \cid[20][1]_i_2 
       (.I0(\FSM_sequential_stage_reg[1]_rep__1_n_0 ),
        .I1(obs_cid[100]),
        .I2(obs_cid[99]),
        .I3(obs_cid[97]),
        .I4(obs_cid[98]),
        .I5(obs_cid[101]),
        .O(\cid[20][1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h4055515573555155)) 
    \cid[20][1]_i_3 
       (.I0(\cid[20][1]_i_5_n_0 ),
        .I1(\cid[28][3]_i_4_n_0 ),
        .I2(obs_unrooted[20]),
        .I3(\cid[20][3]_i_6_n_0 ),
        .I4(\cid[20][3]_i_7_n_0 ),
        .I5(obs_cid[145]),
        .O(\cid[20][1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0FFF8F8FFFFFBFBF)) 
    \cid[20][1]_i_4 
       (.I0(obs_cid[97]),
        .I1(\cid[20][4]_i_6_n_0 ),
        .I2(\cid[20][5]_i_3_n_0 ),
        .I3(obs_unrooted[20]),
        .I4(\cid[20][4]_i_2_n_0 ),
        .I5(\cid[20][1]_i_3_n_0 ),
        .O(\cid[20][1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFF2AFF20F520FF20)) 
    \cid[20][1]_i_5 
       (.I0(\cid[20][3]_i_8_n_0 ),
        .I1(obs_unrooted[20]),
        .I2(\cid[25][4]_i_2_n_0 ),
        .I3(\cid[20][1]_i_6_n_0 ),
        .I4(\cid[20][3]_i_10_n_0 ),
        .I5(obs_cid[127]),
        .O(\cid[20][1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hDFCCDCCCD0CCDCCC)) 
    \cid[20][1]_i_6 
       (.I0(obs_unrooted[20]),
        .I1(obs_cid[121]),
        .I2(\cid[23][2]_i_3_n_0 ),
        .I3(\cid[20][3]_i_16_n_0 ),
        .I4(\cid[20][3]_i_17_n_0 ),
        .I5(obs_cid[115]),
        .O(\cid[20][1]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hF9F9FFFFF9F9FF00)) 
    \cid[20][2]_i_1 
       (.I0(obs_cid[98]),
        .I1(\cid[20][2]_i_2_n_0 ),
        .I2(\cid[20][4]_i_2_n_0 ),
        .I3(\cid[20][2]_i_3_n_0 ),
        .I4(\FSM_sequential_stage_reg[1]_rep__3_n_0 ),
        .I5(\cid[24][5]_i_3_n_0 ),
        .O(\cid[20][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair130" *) 
  LUT5 #(
    .INIT(32'h00000015)) 
    \cid[20][2]_i_2 
       (.I0(obs_cid[101]),
        .I1(obs_cid[98]),
        .I2(obs_cid[99]),
        .I3(obs_cid[100]),
        .I4(obs_cid[97]),
        .O(\cid[20][2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBFAAAEAA8CAAAEAA)) 
    \cid[20][2]_i_3 
       (.I0(\cid[20][2]_i_4_n_0 ),
        .I1(\cid[20][4]_i_2_n_0 ),
        .I2(obs_unrooted[20]),
        .I3(\cid[20][5]_i_3_n_0 ),
        .I4(\cid[20][4]_i_6_n_0 ),
        .I5(obs_cid[98]),
        .O(\cid[20][2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hBFAAAEAA8CAAAEAA)) 
    \cid[20][2]_i_4 
       (.I0(\cid[20][2]_i_5_n_0 ),
        .I1(\cid[28][3]_i_4_n_0 ),
        .I2(obs_unrooted[20]),
        .I3(\cid[20][3]_i_6_n_0 ),
        .I4(\cid[20][3]_i_7_n_0 ),
        .I5(obs_cid[146]),
        .O(\cid[20][2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFF2AFF20F520FF20)) 
    \cid[20][2]_i_5 
       (.I0(\cid[20][3]_i_8_n_0 ),
        .I1(obs_unrooted[20]),
        .I2(\cid[25][4]_i_2_n_0 ),
        .I3(\cid[20][2]_i_6_n_0 ),
        .I4(\cid[20][3]_i_10_n_0 ),
        .I5(obs_cid[128]),
        .O(\cid[20][2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hDFCCDCCCD0CCDCCC)) 
    \cid[20][2]_i_6 
       (.I0(obs_unrooted[20]),
        .I1(obs_cid[122]),
        .I2(\cid[23][2]_i_3_n_0 ),
        .I3(\cid[20][3]_i_16_n_0 ),
        .I4(\cid[20][3]_i_17_n_0 ),
        .I5(obs_cid[116]),
        .O(\cid[20][2]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h555500FC55550000)) 
    \cid[20][3]_i_1 
       (.I0(\cid[20][3]_i_2_n_0 ),
        .I1(\cid[20][5]_i_3_n_0 ),
        .I2(\cid[20][3]_i_3_n_0 ),
        .I3(\cid[24][5]_i_3_n_0 ),
        .I4(\FSM_sequential_stage_reg[1]_rep__3_n_0 ),
        .I5(\cid[20][3]_i_4_n_0 ),
        .O(\cid[20][3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1717171711171111)) 
    \cid[20][3]_i_10 
       (.I0(obs_cid[131]),
        .I1(\cid[20][5]_i_9_n_0 ),
        .I2(\cid[20][3]_i_18_n_0 ),
        .I3(\cid[20][3]_i_19_n_0 ),
        .I4(\cid[20][3]_i_20_n_0 ),
        .I5(\cid[20][3]_i_21_n_0 ),
        .O(\cid[20][3]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT4 #(
    .INIT(16'h0040)) 
    \cid[20][3]_i_11 
       (.I0(obs_growth[40]),
        .I1(obs_growth[41]),
        .I2(\cid[23][2]_i_3_n_0 ),
        .I3(obs_unrooted[20]),
        .O(\cid[20][3]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair226" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cid[20][3]_i_12 
       (.I0(\cid[20][4]_i_7_n_0 ),
        .I1(obs_cid[148]),
        .O(\cid[20][3]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair225" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    \cid[20][3]_i_13 
       (.I0(obs_cid[147]),
        .I1(\cid[20][3]_i_5_n_0 ),
        .I2(obs_cid[146]),
        .I3(\cid[20][2]_i_5_n_0 ),
        .O(\cid[20][3]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hEEFE00F0FFFFEEFE)) 
    \cid[20][3]_i_14 
       (.I0(obs_cid[144]),
        .I1(\cid[20][0]_i_4_n_0 ),
        .I2(obs_cid[146]),
        .I3(\cid[20][2]_i_5_n_0 ),
        .I4(obs_cid[145]),
        .I5(\cid[20][1]_i_5_n_0 ),
        .O(\cid[20][3]_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair226" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    \cid[20][3]_i_15 
       (.I0(\cid[20][3]_i_5_n_0 ),
        .I1(obs_cid[147]),
        .I2(\cid[20][4]_i_7_n_0 ),
        .I3(obs_cid[148]),
        .O(\cid[20][3]_i_15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cid[20][3]_i_16 
       (.I0(obs_growth[41]),
        .I1(obs_growth[40]),
        .O(\cid[20][3]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hB0B0B0B0BBB0BBBB)) 
    \cid[20][3]_i_17 
       (.I0(obs_cid[125]),
        .I1(obs_cid[119]),
        .I2(\cid[20][3]_i_22_n_0 ),
        .I3(\cid[20][3]_i_23_n_0 ),
        .I4(\cid[20][3]_i_24_n_0 ),
        .I5(\cid[20][3]_i_25_n_0 ),
        .O(\cid[20][3]_i_17_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair274" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cid[20][3]_i_18 
       (.I0(\cid[20][4]_i_12_n_0 ),
        .I1(obs_cid[130]),
        .O(\cid[20][3]_i_18_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \cid[20][3]_i_19 
       (.I0(\cid[20][2]_i_6_n_0 ),
        .I1(obs_cid[128]),
        .I2(\cid[20][3]_i_9_n_0 ),
        .I3(obs_cid[129]),
        .O(\cid[20][3]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h7F0000FFFF0300FF)) 
    \cid[20][3]_i_2 
       (.I0(obs_cid[96]),
        .I1(obs_cid[97]),
        .I2(obs_cid[100]),
        .I3(obs_cid[99]),
        .I4(obs_cid[98]),
        .I5(obs_cid[101]),
        .O(\cid[20][3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h10F110F1FFFF10F1)) 
    \cid[20][3]_i_20 
       (.I0(obs_cid[126]),
        .I1(\cid[20][0]_i_5_n_0 ),
        .I2(\cid[20][1]_i_6_n_0 ),
        .I3(obs_cid[127]),
        .I4(\cid[20][2]_i_6_n_0 ),
        .I5(obs_cid[128]),
        .O(\cid[20][3]_i_20_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair274" *) 
  LUT4 #(
    .INIT(16'h1F11)) 
    \cid[20][3]_i_21 
       (.I0(\cid[20][4]_i_12_n_0 ),
        .I1(obs_cid[130]),
        .I2(obs_cid[129]),
        .I3(\cid[20][3]_i_9_n_0 ),
        .O(\cid[20][3]_i_21_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \cid[20][3]_i_22 
       (.I0(obs_cid[119]),
        .I1(obs_cid[125]),
        .I2(obs_cid[118]),
        .I3(obs_cid[124]),
        .O(\cid[20][3]_i_22_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \cid[20][3]_i_23 
       (.I0(obs_cid[117]),
        .I1(obs_cid[123]),
        .I2(obs_cid[116]),
        .I3(obs_cid[122]),
        .O(\cid[20][3]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hD0FDD0FDFFFFD0FD)) 
    \cid[20][3]_i_24 
       (.I0(obs_cid[120]),
        .I1(obs_cid[114]),
        .I2(obs_cid[115]),
        .I3(obs_cid[121]),
        .I4(obs_cid[116]),
        .I5(obs_cid[122]),
        .O(\cid[20][3]_i_24_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \cid[20][3]_i_25 
       (.I0(obs_cid[123]),
        .I1(obs_cid[117]),
        .I2(obs_cid[124]),
        .I3(obs_cid[118]),
        .O(\cid[20][3]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hBFAAAEAA8CAAAEAA)) 
    \cid[20][3]_i_3 
       (.I0(\cid[20][3]_i_5_n_0 ),
        .I1(\cid[28][3]_i_4_n_0 ),
        .I2(obs_unrooted[20]),
        .I3(\cid[20][3]_i_6_n_0 ),
        .I4(\cid[20][3]_i_7_n_0 ),
        .I5(obs_cid[147]),
        .O(\cid[20][3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFBFBF0FFF8F8F)) 
    \cid[20][3]_i_4 
       (.I0(obs_cid[99]),
        .I1(\cid[20][4]_i_6_n_0 ),
        .I2(\cid[20][5]_i_3_n_0 ),
        .I3(obs_unrooted[20]),
        .I4(\cid[20][4]_i_2_n_0 ),
        .I5(\cid[20][3]_i_3_n_0 ),
        .O(\cid[20][3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFF2AFF20F520FF20)) 
    \cid[20][3]_i_5 
       (.I0(\cid[20][3]_i_8_n_0 ),
        .I1(obs_unrooted[20]),
        .I2(\cid[25][4]_i_2_n_0 ),
        .I3(\cid[20][3]_i_9_n_0 ),
        .I4(\cid[20][3]_i_10_n_0 ),
        .I5(obs_cid[129]),
        .O(\cid[20][3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h000000BF00000000)) 
    \cid[20][3]_i_6 
       (.I0(obs_unrooted[20]),
        .I1(\cid[25][4]_i_2_n_0 ),
        .I2(\cid[21][5]_i_13_n_0 ),
        .I3(\cid[20][3]_i_11_n_0 ),
        .I4(obs_growth[58]),
        .I5(obs_growth[59]),
        .O(\cid[20][3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hD4D4D4D4DDD4DDDD)) 
    \cid[20][3]_i_7 
       (.I0(obs_cid[149]),
        .I1(\cid[20][5]_i_8_n_0 ),
        .I2(\cid[20][3]_i_12_n_0 ),
        .I3(\cid[20][3]_i_13_n_0 ),
        .I4(\cid[20][3]_i_14_n_0 ),
        .I5(\cid[20][3]_i_15_n_0 ),
        .O(\cid[20][3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h4444444440444444)) 
    \cid[20][3]_i_8 
       (.I0(obs_growth[44]),
        .I1(obs_growth[45]),
        .I2(obs_unrooted[20]),
        .I3(\cid[23][2]_i_3_n_0 ),
        .I4(obs_growth[41]),
        .I5(obs_growth[40]),
        .O(\cid[20][3]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hDFCCDCCCD0CCDCCC)) 
    \cid[20][3]_i_9 
       (.I0(obs_unrooted[20]),
        .I1(obs_cid[123]),
        .I2(\cid[23][2]_i_3_n_0 ),
        .I3(\cid[20][3]_i_16_n_0 ),
        .I4(\cid[20][3]_i_17_n_0 ),
        .I5(obs_cid[117]),
        .O(\cid[20][3]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hBEBEFFFFBEBEFF00)) 
    \cid[20][4]_i_1 
       (.I0(\cid[20][4]_i_2_n_0 ),
        .I1(obs_cid[100]),
        .I2(\cid[20][4]_i_3_n_0 ),
        .I3(\cid[20][4]_i_4_n_0 ),
        .I4(\FSM_sequential_stage_reg[1]_rep__3_n_0 ),
        .I5(\cid[24][5]_i_3_n_0 ),
        .O(\cid[20][4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h011F011FFFFF011F)) 
    \cid[20][4]_i_10 
       (.I0(obs_cid[96]),
        .I1(\cid[20][0]_i_2_n_0 ),
        .I2(obs_cid[97]),
        .I3(\cid[20][1]_i_3_n_0 ),
        .I4(\cid[20][2]_i_4_n_0 ),
        .I5(obs_cid[98]),
        .O(\cid[20][4]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair224" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    \cid[20][4]_i_11 
       (.I0(obs_cid[100]),
        .I1(\cid[20][4]_i_5_n_0 ),
        .I2(obs_cid[99]),
        .I3(\cid[20][3]_i_3_n_0 ),
        .O(\cid[20][4]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h00440000F077FFFF)) 
    \cid[20][4]_i_12 
       (.I0(obs_cid[118]),
        .I1(\cid[20][3]_i_17_n_0 ),
        .I2(obs_unrooted[20]),
        .I3(\cid[23][2]_i_3_n_0 ),
        .I4(\cid[20][3]_i_16_n_0 ),
        .I5(obs_cid[124]),
        .O(\cid[20][4]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \cid[20][4]_i_2 
       (.I0(obs_cid[97]),
        .I1(obs_cid[99]),
        .I2(obs_cid[101]),
        .I3(obs_cid[96]),
        .I4(obs_cid[100]),
        .I5(obs_cid[98]),
        .O(\cid[20][4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair130" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cid[20][4]_i_3 
       (.I0(obs_cid[99]),
        .I1(obs_cid[98]),
        .O(\cid[20][4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hBFAAAEAA8CAAAEAA)) 
    \cid[20][4]_i_4 
       (.I0(\cid[20][4]_i_5_n_0 ),
        .I1(\cid[20][4]_i_2_n_0 ),
        .I2(obs_unrooted[20]),
        .I3(\cid[20][5]_i_3_n_0 ),
        .I4(\cid[20][4]_i_6_n_0 ),
        .I5(obs_cid[100]),
        .O(\cid[20][4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hBFAAAEAA8CAAAEAA)) 
    \cid[20][4]_i_5 
       (.I0(\cid[20][4]_i_7_n_0 ),
        .I1(\cid[28][3]_i_4_n_0 ),
        .I2(obs_unrooted[20]),
        .I3(\cid[20][3]_i_6_n_0 ),
        .I4(\cid[20][3]_i_7_n_0 ),
        .I5(obs_cid[148]),
        .O(\cid[20][4]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h1717171703170303)) 
    \cid[20][4]_i_6 
       (.I0(\cid[20][4]_i_8_n_0 ),
        .I1(obs_cid[101]),
        .I2(\cid[20][5]_i_7_n_0 ),
        .I3(\cid[20][4]_i_9_n_0 ),
        .I4(\cid[20][4]_i_10_n_0 ),
        .I5(\cid[20][4]_i_11_n_0 ),
        .O(\cid[20][4]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h2FAF2F0F2F052F0F)) 
    \cid[20][4]_i_7 
       (.I0(\cid[20][3]_i_8_n_0 ),
        .I1(obs_unrooted[20]),
        .I2(\cid[20][4]_i_12_n_0 ),
        .I3(\cid[25][4]_i_2_n_0 ),
        .I4(\cid[20][3]_i_10_n_0 ),
        .I5(obs_cid[130]),
        .O(\cid[20][4]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair224" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cid[20][4]_i_8 
       (.I0(obs_cid[100]),
        .I1(\cid[20][4]_i_5_n_0 ),
        .O(\cid[20][4]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \cid[20][4]_i_9 
       (.I0(\cid[20][2]_i_4_n_0 ),
        .I1(obs_cid[98]),
        .I2(\cid[20][3]_i_3_n_0 ),
        .I3(obs_cid[99]),
        .O(\cid[20][4]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h555500CF55550000)) 
    \cid[20][5]_i_1 
       (.I0(\cid[20][5]_i_2_n_0 ),
        .I1(obs_cid[101]),
        .I2(\cid[20][5]_i_3_n_0 ),
        .I3(\cid[24][5]_i_3_n_0 ),
        .I4(\FSM_sequential_stage_reg[1]_rep__3_n_0 ),
        .I5(\cid[20][5]_i_4_n_0 ),
        .O(\cid[20][5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h087700FF887700FF)) 
    \cid[20][5]_i_2 
       (.I0(obs_cid[98]),
        .I1(obs_cid[100]),
        .I2(obs_cid[96]),
        .I3(obs_cid[101]),
        .I4(obs_cid[99]),
        .I5(obs_cid[97]),
        .O(\cid[20][5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAA8AAAAA00000000)) 
    \cid[20][5]_i_3 
       (.I0(\cid[20][5]_i_5_n_0 ),
        .I1(obs_unrooted[20]),
        .I2(\cid[28][3]_i_4_n_0 ),
        .I3(obs_growth[58]),
        .I4(obs_growth[59]),
        .I5(\cid[20][5]_i_6_n_0 ),
        .O(\cid[20][5]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT5 #(
    .INIT(32'h0020FFFF)) 
    \cid[20][5]_i_4 
       (.I0(obs_growth[43]),
        .I1(obs_growth[42]),
        .I2(\cid[20][4]_i_2_n_0 ),
        .I3(obs_unrooted[20]),
        .I4(\cid[20][5]_i_7_n_0 ),
        .O(\cid[20][5]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cid[20][5]_i_5 
       (.I0(obs_growth[43]),
        .I1(obs_growth[42]),
        .O(\cid[20][5]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00F7F7F7)) 
    \cid[20][5]_i_6 
       (.I0(\cid[23][2]_i_3_n_0 ),
        .I1(obs_growth[41]),
        .I2(obs_growth[40]),
        .I3(\cid[21][5]_i_13_n_0 ),
        .I4(\cid[25][4]_i_2_n_0 ),
        .I5(obs_unrooted[20]),
        .O(\cid[20][5]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000D000DFFFDFFF)) 
    \cid[20][5]_i_7 
       (.I0(\cid[28][3]_i_4_n_0 ),
        .I1(obs_unrooted[20]),
        .I2(\cid[20][5]_i_6_n_0 ),
        .I3(\cid[24][2]_i_6_n_0 ),
        .I4(obs_cid[149]),
        .I5(\cid[20][5]_i_8_n_0 ),
        .O(\cid[20][5]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0F0F0F0F2F000F0F)) 
    \cid[20][5]_i_8 
       (.I0(\cid[25][4]_i_2_n_0 ),
        .I1(obs_unrooted[20]),
        .I2(\cid[20][5]_i_9_n_0 ),
        .I3(obs_cid[131]),
        .I4(\cid[21][5]_i_13_n_0 ),
        .I5(\cid[20][3]_i_11_n_0 ),
        .O(\cid[20][5]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0F0F0F0F0DFF0F0F)) 
    \cid[20][5]_i_9 
       (.I0(\cid[23][2]_i_3_n_0 ),
        .I1(obs_unrooted[20]),
        .I2(obs_cid[125]),
        .I3(obs_cid[119]),
        .I4(obs_growth[41]),
        .I5(obs_growth[40]),
        .O(\cid[20][5]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair200" *) 
  LUT4 #(
    .INIT(16'hAFAC)) 
    \cid[21][0]_i_1 
       (.I0(obs_cid[102]),
        .I1(\cid[21][0]_i_2_n_0 ),
        .I2(\FSM_sequential_stage_reg[1]_rep__3_n_0 ),
        .I3(\cid[25][4]_i_2_n_0 ),
        .O(\cid[21][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2FAF2F0F2F052F0F)) 
    \cid[21][0]_i_2 
       (.I0(\cid[21][5]_i_4_n_0 ),
        .I1(obs_unrooted[21]),
        .I2(\cid[21][0]_i_3_n_0 ),
        .I3(\cid[21][4]_i_2_n_0 ),
        .I4(\cid[21][4]_i_6_n_0 ),
        .I5(obs_cid[102]),
        .O(\cid[21][0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hD050D0F0D0FAD0F0)) 
    \cid[21][0]_i_3 
       (.I0(\cid[21][5]_i_7_n_0 ),
        .I1(obs_unrooted[21]),
        .I2(\cid[21][0]_i_4_n_0 ),
        .I3(\cid[29][3]_i_3_n_0 ),
        .I4(\cid[21][3]_i_5_n_0 ),
        .I5(obs_cid[150]),
        .O(\cid[21][0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hD050D0F0D0FAD0F0)) 
    \cid[21][0]_i_4 
       (.I0(\cid[21][5]_i_11_n_0 ),
        .I1(obs_unrooted[21]),
        .I2(\cid[21][0]_i_5_n_0 ),
        .I3(\cid[7][4]_i_2_n_0 ),
        .I4(\cid[21][3]_i_13_n_0 ),
        .I5(obs_cid[30]),
        .O(\cid[21][0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00030000B8BBFFFF)) 
    \cid[21][0]_i_5 
       (.I0(obs_unrooted[21]),
        .I1(\cid[24][5]_i_3_n_0 ),
        .I2(\ptr[21][0]_i_5_n_0 ),
        .I3(obs_cid[120]),
        .I4(\cid[21][5]_i_13_n_0 ),
        .I5(obs_cid[126]),
        .O(\cid[21][0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAEFAAAAAAAA)) 
    \cid[21][1]_i_1 
       (.I0(\cid[21][1]_i_2_n_0 ),
        .I1(\cid[21][5]_i_4_n_0 ),
        .I2(\cid[21][1]_i_3_n_0 ),
        .I3(\cid[25][4]_i_2_n_0 ),
        .I4(\FSM_sequential_stage_reg[1]_rep__1_n_0 ),
        .I5(\cid[21][1]_i_4_n_0 ),
        .O(\cid[21][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAA00AA00A802A822)) 
    \cid[21][1]_i_2 
       (.I0(\FSM_sequential_stage_reg[1]_rep__1_n_0 ),
        .I1(obs_cid[106]),
        .I2(obs_cid[105]),
        .I3(obs_cid[103]),
        .I4(obs_cid[104]),
        .I5(obs_cid[107]),
        .O(\cid[21][1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0D050D0F0DAF0D0F)) 
    \cid[21][1]_i_3 
       (.I0(\cid[21][5]_i_7_n_0 ),
        .I1(obs_unrooted[21]),
        .I2(\cid[21][1]_i_5_n_0 ),
        .I3(\cid[29][3]_i_3_n_0 ),
        .I4(\cid[21][3]_i_5_n_0 ),
        .I5(obs_cid[151]),
        .O(\cid[21][1]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF08FB)) 
    \cid[21][1]_i_4 
       (.I0(obs_cid[103]),
        .I1(\cid[21][4]_i_6_n_0 ),
        .I2(\cid[21][4]_i_2_n_0 ),
        .I3(\cid[21][1]_i_3_n_0 ),
        .I4(\cid[21][3]_i_7_n_0 ),
        .O(\cid[21][1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h4555454545444545)) 
    \cid[21][1]_i_5 
       (.I0(\cid[21][1]_i_6_n_0 ),
        .I1(\cid[21][1]_i_7_n_0 ),
        .I2(\cid[21][1]_i_8_n_0 ),
        .I3(\cid[7][4]_i_2_n_0 ),
        .I4(\cid[21][3]_i_13_n_0 ),
        .I5(obs_cid[31]),
        .O(\cid[21][1]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h15111011)) 
    \cid[21][1]_i_6 
       (.I0(\cid[21][5]_i_11_n_0 ),
        .I1(obs_cid[127]),
        .I2(obs_growth[44]),
        .I3(obs_growth[45]),
        .I4(\cid[21][1]_i_9_n_0 ),
        .O(\cid[21][1]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT3 #(
    .INIT(8'h4F)) 
    \cid[21][1]_i_7 
       (.I0(obs_unrooted[21]),
        .I1(\cid[7][4]_i_2_n_0 ),
        .I2(\cid[21][5]_i_11_n_0 ),
        .O(\cid[21][1]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h00110000F0BBFFFF)) 
    \cid[21][1]_i_8 
       (.I0(\ptr[21][0]_i_5_n_0 ),
        .I1(obs_cid[121]),
        .I2(obs_unrooted[21]),
        .I3(\cid[24][5]_i_3_n_0 ),
        .I4(\cid[21][5]_i_13_n_0 ),
        .I5(obs_cid[127]),
        .O(\cid[21][1]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h00F011BB)) 
    \cid[21][1]_i_9 
       (.I0(\ptr[21][0]_i_5_n_0 ),
        .I1(obs_cid[121]),
        .I2(obs_unrooted[21]),
        .I3(obs_cid[127]),
        .I4(\cid[24][5]_i_3_n_0 ),
        .O(\cid[21][1]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hF9F9FFFFF9F9FF00)) 
    \cid[21][2]_i_1 
       (.I0(obs_cid[104]),
        .I1(\cid[21][2]_i_2_n_0 ),
        .I2(\cid[21][4]_i_2_n_0 ),
        .I3(\cid[21][2]_i_3_n_0 ),
        .I4(\FSM_sequential_stage_reg[1]_rep__3_n_0 ),
        .I5(\cid[25][4]_i_2_n_0 ),
        .O(\cid[21][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair131" *) 
  LUT5 #(
    .INIT(32'h00000015)) 
    \cid[21][2]_i_2 
       (.I0(obs_cid[107]),
        .I1(obs_cid[104]),
        .I2(obs_cid[105]),
        .I3(obs_cid[106]),
        .I4(obs_cid[103]),
        .O(\cid[21][2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h2FAF2F0F2F052F0F)) 
    \cid[21][2]_i_3 
       (.I0(\cid[21][5]_i_4_n_0 ),
        .I1(obs_unrooted[21]),
        .I2(\cid[21][2]_i_4_n_0 ),
        .I3(\cid[21][4]_i_2_n_0 ),
        .I4(\cid[21][4]_i_6_n_0 ),
        .I5(obs_cid[104]),
        .O(\cid[21][2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hD050D0F0D0FAD0F0)) 
    \cid[21][2]_i_4 
       (.I0(\cid[21][5]_i_7_n_0 ),
        .I1(obs_unrooted[21]),
        .I2(\cid[21][2]_i_5_n_0 ),
        .I3(\cid[29][3]_i_3_n_0 ),
        .I4(\cid[21][3]_i_5_n_0 ),
        .I5(obs_cid[152]),
        .O(\cid[21][2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hBAAABABABABBBABA)) 
    \cid[21][2]_i_5 
       (.I0(\cid[21][2]_i_6_n_0 ),
        .I1(\cid[21][1]_i_7_n_0 ),
        .I2(\cid[21][2]_i_7_n_0 ),
        .I3(\cid[7][4]_i_2_n_0 ),
        .I4(\cid[21][3]_i_13_n_0 ),
        .I5(obs_cid[32]),
        .O(\cid[21][2]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h10111511)) 
    \cid[21][2]_i_6 
       (.I0(\cid[21][5]_i_11_n_0 ),
        .I1(obs_cid[128]),
        .I2(obs_growth[44]),
        .I3(obs_growth[45]),
        .I4(\cid[21][2]_i_8_n_0 ),
        .O(\cid[21][2]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h00050000DD8DFFFF)) 
    \cid[21][2]_i_7 
       (.I0(\cid[24][5]_i_3_n_0 ),
        .I1(obs_unrooted[21]),
        .I2(obs_cid[122]),
        .I3(\ptr[21][0]_i_5_n_0 ),
        .I4(\cid[21][5]_i_13_n_0 ),
        .I5(obs_cid[128]),
        .O(\cid[21][2]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hFF0FEE44)) 
    \cid[21][2]_i_8 
       (.I0(\ptr[21][0]_i_5_n_0 ),
        .I1(obs_cid[122]),
        .I2(obs_unrooted[21]),
        .I3(obs_cid[128]),
        .I4(\cid[24][5]_i_3_n_0 ),
        .O(\cid[21][2]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h555500CF55550000)) 
    \cid[21][3]_i_1 
       (.I0(\cid[21][3]_i_2_n_0 ),
        .I1(\cid[21][5]_i_4_n_0 ),
        .I2(\cid[21][3]_i_3_n_0 ),
        .I3(\cid[25][4]_i_2_n_0 ),
        .I4(\FSM_sequential_stage_reg[1]_rep__3_n_0 ),
        .I5(\cid[21][3]_i_4_n_0 ),
        .O(\cid[21][3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFEEEF000FFFFFEEE)) 
    \cid[21][3]_i_10 
       (.I0(obs_cid[150]),
        .I1(\cid[21][0]_i_4_n_0 ),
        .I2(obs_cid[152]),
        .I3(\cid[21][2]_i_5_n_0 ),
        .I4(obs_cid[151]),
        .I5(\cid[21][1]_i_5_n_0 ),
        .O(\cid[21][3]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair233" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    \cid[21][3]_i_11 
       (.I0(\cid[21][3]_i_6_n_0 ),
        .I1(obs_cid[153]),
        .I2(\cid[21][4]_i_7_n_0 ),
        .I3(obs_cid[154]),
        .O(\cid[21][3]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFFEE0F44FFFF0000)) 
    \cid[21][3]_i_12 
       (.I0(\ptr[21][0]_i_5_n_0 ),
        .I1(obs_cid[123]),
        .I2(obs_unrooted[21]),
        .I3(\cid[24][5]_i_3_n_0 ),
        .I4(obs_cid[129]),
        .I5(\cid[21][5]_i_13_n_0 ),
        .O(\cid[21][3]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBBBBBABABABAA)) 
    \cid[21][3]_i_13 
       (.I0(\cid[21][3]_i_14_n_0 ),
        .I1(\cid[21][3]_i_15_n_0 ),
        .I2(\cid[21][3]_i_16_n_0 ),
        .I3(\cid[21][3]_i_17_n_0 ),
        .I4(\cid[21][3]_i_18_n_0 ),
        .I5(\cid[21][3]_i_19_n_0 ),
        .O(\cid[21][3]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h5100514051005100)) 
    \cid[21][3]_i_14 
       (.I0(obs_cid[35]),
        .I1(\cid[21][5]_i_13_n_0 ),
        .I2(obs_cid[125]),
        .I3(obs_cid[131]),
        .I4(obs_unrooted[21]),
        .I5(\cid[24][4]_i_2_n_0 ),
        .O(\cid[21][3]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \cid[21][3]_i_15 
       (.I0(obs_cid[35]),
        .I1(\cid[21][5]_i_10_n_0 ),
        .I2(obs_cid[34]),
        .I3(\cid[21][4]_i_12_n_0 ),
        .O(\cid[21][3]_i_15_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \cid[21][3]_i_16 
       (.I0(\cid[21][3]_i_20_n_0 ),
        .I1(obs_cid[32]),
        .I2(\cid[21][3]_i_12_n_0 ),
        .I3(obs_cid[33]),
        .O(\cid[21][3]_i_16_n_0 ));
  LUT4 #(
    .INIT(16'h1011)) 
    \cid[21][3]_i_17 
       (.I0(\cid[21][0]_i_5_n_0 ),
        .I1(obs_cid[30]),
        .I2(\cid[21][3]_i_21_n_0 ),
        .I3(obs_cid[31]),
        .O(\cid[21][3]_i_17_n_0 ));
  LUT4 #(
    .INIT(16'h111F)) 
    \cid[21][3]_i_18 
       (.I0(\cid[21][2]_i_7_n_0 ),
        .I1(obs_cid[32]),
        .I2(\cid[21][1]_i_8_n_0 ),
        .I3(obs_cid[31]),
        .O(\cid[21][3]_i_18_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair275" *) 
  LUT4 #(
    .INIT(16'h1F11)) 
    \cid[21][3]_i_19 
       (.I0(\cid[21][4]_i_12_n_0 ),
        .I1(obs_cid[34]),
        .I2(obs_cid[33]),
        .I3(\cid[21][3]_i_12_n_0 ),
        .O(\cid[21][3]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h7F0000FFFF0300FF)) 
    \cid[21][3]_i_2 
       (.I0(obs_cid[102]),
        .I1(obs_cid[103]),
        .I2(obs_cid[106]),
        .I3(obs_cid[105]),
        .I4(obs_cid[104]),
        .I5(obs_cid[107]),
        .O(\cid[21][3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFEEFFFF0F440000)) 
    \cid[21][3]_i_20 
       (.I0(\ptr[21][0]_i_5_n_0 ),
        .I1(obs_cid[122]),
        .I2(obs_unrooted[21]),
        .I3(\cid[24][5]_i_3_n_0 ),
        .I4(\cid[21][5]_i_13_n_0 ),
        .I5(obs_cid[128]),
        .O(\cid[21][3]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hFFFAFFFF22720000)) 
    \cid[21][3]_i_21 
       (.I0(\cid[24][5]_i_3_n_0 ),
        .I1(obs_unrooted[21]),
        .I2(obs_cid[121]),
        .I3(\ptr[21][0]_i_5_n_0 ),
        .I4(\cid[21][5]_i_13_n_0 ),
        .I5(obs_cid[127]),
        .O(\cid[21][3]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h000055F7A200F7F7)) 
    \cid[21][3]_i_3 
       (.I0(\cid[21][5]_i_7_n_0 ),
        .I1(\cid[29][3]_i_3_n_0 ),
        .I2(obs_unrooted[21]),
        .I3(\cid[21][3]_i_5_n_0 ),
        .I4(\cid[21][3]_i_6_n_0 ),
        .I5(obs_cid[153]),
        .O(\cid[21][3]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF08FB)) 
    \cid[21][3]_i_4 
       (.I0(obs_cid[105]),
        .I1(\cid[21][4]_i_6_n_0 ),
        .I2(\cid[21][4]_i_2_n_0 ),
        .I3(\cid[21][3]_i_3_n_0 ),
        .I4(\cid[21][3]_i_7_n_0 ),
        .O(\cid[21][3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hD4D4D4D4DDD4DDDD)) 
    \cid[21][3]_i_5 
       (.I0(obs_cid[155]),
        .I1(\cid[21][5]_i_8_n_0 ),
        .I2(\cid[21][3]_i_8_n_0 ),
        .I3(\cid[21][3]_i_9_n_0 ),
        .I4(\cid[21][3]_i_10_n_0 ),
        .I5(\cid[21][3]_i_11_n_0 ),
        .O(\cid[21][3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hF2FAF2F0F250F2F0)) 
    \cid[21][3]_i_6 
       (.I0(\cid[21][5]_i_11_n_0 ),
        .I1(obs_unrooted[21]),
        .I2(\cid[21][3]_i_12_n_0 ),
        .I3(\cid[7][4]_i_2_n_0 ),
        .I4(\cid[21][3]_i_13_n_0 ),
        .I5(obs_cid[33]),
        .O(\cid[21][3]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair399" *) 
  LUT3 #(
    .INIT(8'h4F)) 
    \cid[21][3]_i_7 
       (.I0(obs_unrooted[21]),
        .I1(\cid[21][4]_i_2_n_0 ),
        .I2(\cid[21][5]_i_4_n_0 ),
        .O(\cid[21][3]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair233" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cid[21][3]_i_8 
       (.I0(\cid[21][4]_i_7_n_0 ),
        .I1(obs_cid[154]),
        .O(\cid[21][3]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair232" *) 
  LUT4 #(
    .INIT(16'h444F)) 
    \cid[21][3]_i_9 
       (.I0(obs_cid[153]),
        .I1(\cid[21][3]_i_6_n_0 ),
        .I2(\cid[21][2]_i_5_n_0 ),
        .I3(obs_cid[152]),
        .O(\cid[21][3]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hBEBEFFFFBEBEFF00)) 
    \cid[21][4]_i_1 
       (.I0(\cid[21][4]_i_2_n_0 ),
        .I1(obs_cid[106]),
        .I2(\cid[21][4]_i_3_n_0 ),
        .I3(\cid[21][4]_i_4_n_0 ),
        .I4(\FSM_sequential_stage_reg[1]_rep__3_n_0 ),
        .I5(\cid[25][4]_i_2_n_0 ),
        .O(\cid[21][4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h011F011F011FFFFF)) 
    \cid[21][4]_i_10 
       (.I0(obs_cid[102]),
        .I1(\cid[21][0]_i_3_n_0 ),
        .I2(obs_cid[103]),
        .I3(\cid[21][1]_i_3_n_0 ),
        .I4(obs_cid[104]),
        .I5(\cid[21][2]_i_4_n_0 ),
        .O(\cid[21][4]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair230" *) 
  LUT4 #(
    .INIT(16'h111F)) 
    \cid[21][4]_i_11 
       (.I0(\cid[21][4]_i_5_n_0 ),
        .I1(obs_cid[106]),
        .I2(\cid[21][3]_i_3_n_0 ),
        .I3(obs_cid[105]),
        .O(\cid[21][4]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h00110000F0BBFFFF)) 
    \cid[21][4]_i_12 
       (.I0(\ptr[21][0]_i_5_n_0 ),
        .I1(obs_cid[124]),
        .I2(obs_unrooted[21]),
        .I3(\cid[24][5]_i_3_n_0 ),
        .I4(\cid[21][5]_i_13_n_0 ),
        .I5(obs_cid[130]),
        .O(\cid[21][4]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \cid[21][4]_i_2 
       (.I0(obs_cid[103]),
        .I1(obs_cid[105]),
        .I2(obs_cid[107]),
        .I3(obs_cid[102]),
        .I4(obs_cid[106]),
        .I5(obs_cid[104]),
        .O(\cid[21][4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair131" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cid[21][4]_i_3 
       (.I0(obs_cid[105]),
        .I1(obs_cid[104]),
        .O(\cid[21][4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h2FAF2F0F2F052F0F)) 
    \cid[21][4]_i_4 
       (.I0(\cid[21][5]_i_4_n_0 ),
        .I1(obs_unrooted[21]),
        .I2(\cid[21][4]_i_5_n_0 ),
        .I3(\cid[21][4]_i_2_n_0 ),
        .I4(\cid[21][4]_i_6_n_0 ),
        .I5(obs_cid[106]),
        .O(\cid[21][4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00D500DF0ADF00DF)) 
    \cid[21][4]_i_5 
       (.I0(\cid[21][5]_i_7_n_0 ),
        .I1(obs_unrooted[21]),
        .I2(\cid[29][3]_i_3_n_0 ),
        .I3(\cid[21][4]_i_7_n_0 ),
        .I4(\cid[21][3]_i_5_n_0 ),
        .I5(obs_cid[154]),
        .O(\cid[21][4]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h1717171711171111)) 
    \cid[21][4]_i_6 
       (.I0(obs_cid[107]),
        .I1(\cid[21][5]_i_3_n_0 ),
        .I2(\cid[21][4]_i_8_n_0 ),
        .I3(\cid[21][4]_i_9_n_0 ),
        .I4(\cid[21][4]_i_10_n_0 ),
        .I5(\cid[21][4]_i_11_n_0 ),
        .O(\cid[21][4]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h2FAF2F0F2F052F0F)) 
    \cid[21][4]_i_7 
       (.I0(\cid[21][5]_i_11_n_0 ),
        .I1(obs_unrooted[21]),
        .I2(\cid[21][4]_i_12_n_0 ),
        .I3(\cid[7][4]_i_2_n_0 ),
        .I4(\cid[21][3]_i_13_n_0 ),
        .I5(obs_cid[34]),
        .O(\cid[21][4]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair230" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cid[21][4]_i_8 
       (.I0(\cid[21][4]_i_5_n_0 ),
        .I1(obs_cid[106]),
        .O(\cid[21][4]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \cid[21][4]_i_9 
       (.I0(obs_cid[104]),
        .I1(\cid[21][2]_i_4_n_0 ),
        .I2(obs_cid[105]),
        .I3(\cid[21][3]_i_3_n_0 ),
        .O(\cid[21][4]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFBABB0000)) 
    \cid[21][5]_i_1 
       (.I0(\cid[21][5]_i_2_n_0 ),
        .I1(\cid[21][5]_i_3_n_0 ),
        .I2(obs_cid[107]),
        .I3(\cid[21][5]_i_4_n_0 ),
        .I4(\cid[21][5]_i_5_n_0 ),
        .I5(\cid[21][5]_i_6_n_0 ),
        .O(\cid[21][5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0F0F0F0F0DFF0F0F)) 
    \cid[21][5]_i_10 
       (.I0(\cid[24][4]_i_2_n_0 ),
        .I1(obs_unrooted[21]),
        .I2(obs_cid[131]),
        .I3(obs_cid[125]),
        .I4(obs_growth[45]),
        .I5(obs_growth[44]),
        .O(\cid[21][5]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h4444444440444444)) 
    \cid[21][5]_i_11 
       (.I0(obs_growth[46]),
        .I1(obs_growth[47]),
        .I2(obs_unrooted[21]),
        .I3(\cid[24][4]_i_2_n_0 ),
        .I4(obs_growth[45]),
        .I5(obs_growth[44]),
        .O(\cid[21][5]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \cid[21][5]_i_12 
       (.I0(obs_cid[120]),
        .I1(obs_cid[121]),
        .I2(obs_cid[125]),
        .I3(obs_cid[123]),
        .I4(obs_cid[124]),
        .I5(obs_cid[122]),
        .O(\cid[21][5]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cid[21][5]_i_13 
       (.I0(obs_growth[45]),
        .I1(obs_growth[44]),
        .O(\cid[21][5]_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair399" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \cid[21][5]_i_2 
       (.I0(\cid[21][5]_i_4_n_0 ),
        .I1(obs_unrooted[21]),
        .I2(\cid[21][4]_i_2_n_0 ),
        .O(\cid[21][5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT5 #(
    .INIT(32'h00D0DFDF)) 
    \cid[21][5]_i_3 
       (.I0(\cid[29][3]_i_3_n_0 ),
        .I1(obs_unrooted[21]),
        .I2(\cid[21][5]_i_7_n_0 ),
        .I3(obs_cid[155]),
        .I4(\cid[21][5]_i_8_n_0 ),
        .O(\cid[21][5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0400040404040404)) 
    \cid[21][5]_i_4 
       (.I0(obs_growth[48]),
        .I1(obs_growth[49]),
        .I2(\cid[21][5]_i_9_n_0 ),
        .I3(obs_unrooted[21]),
        .I4(\cid[29][3]_i_3_n_0 ),
        .I5(\cid[25][5]_i_10_n_0 ),
        .O(\cid[21][5]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair321" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \cid[21][5]_i_5 
       (.I0(\FSM_sequential_stage_reg[1]_rep__1_n_0 ),
        .I1(\cid[25][4]_i_2_n_0 ),
        .O(\cid[21][5]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h8AA8A8A8A8A8A8A8)) 
    \cid[21][5]_i_6 
       (.I0(\FSM_sequential_stage_reg[1]_rep__1_n_0 ),
        .I1(\cid[21][4]_i_2_n_0 ),
        .I2(obs_cid[107]),
        .I3(obs_cid[106]),
        .I4(obs_cid[105]),
        .I5(obs_cid[104]),
        .O(\cid[21][5]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \cid[21][5]_i_7 
       (.I0(obs_growth[64]),
        .I1(obs_growth[65]),
        .I2(\cid[21][5]_i_9_n_0 ),
        .O(\cid[21][5]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT5 #(
    .INIT(32'h4F000F0F)) 
    \cid[21][5]_i_8 
       (.I0(obs_unrooted[21]),
        .I1(\cid[7][4]_i_2_n_0 ),
        .I2(\cid[21][5]_i_10_n_0 ),
        .I3(obs_cid[35]),
        .I4(\cid[21][5]_i_11_n_0 ),
        .O(\cid[21][5]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h002000FF00200020)) 
    \cid[21][5]_i_9 
       (.I0(obs_growth[47]),
        .I1(obs_growth[46]),
        .I2(\cid[7][4]_i_2_n_0 ),
        .I3(obs_unrooted[21]),
        .I4(\cid[21][5]_i_12_n_0 ),
        .I5(\cid[21][5]_i_13_n_0 ),
        .O(\cid[21][5]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hA3A3A0A3A0A0A0A0)) 
    \cid[22][0]_i_1 
       (.I0(obs_cid[108]),
        .I1(\cid[26][3]_i_4_n_0 ),
        .I2(\FSM_sequential_stage_reg[1]_rep__3_n_0 ),
        .I3(\cid[22][0]_i_2_n_0 ),
        .I4(\cid[22][5]_i_4_n_0 ),
        .I5(\cid[22][0]_i_3_n_0 ),
        .O(\cid[22][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h80AAA2AAB3AAA2AA)) 
    \cid[22][0]_i_2 
       (.I0(\cid[22][0]_i_4_n_0 ),
        .I1(\cid[26][3]_i_2_n_0 ),
        .I2(obs_unrooted[22]),
        .I3(\cid[22][5]_i_7_n_0 ),
        .I4(\cid[22][3]_i_6_n_0 ),
        .I5(obs_cid[156]),
        .O(\cid[22][0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h08FBF8FBFFFFFFFF)) 
    \cid[22][0]_i_3 
       (.I0(obs_cid[108]),
        .I1(\cid[22][4]_i_5_n_0 ),
        .I2(\cid[22][2]_i_3_n_0 ),
        .I3(\cid[22][0]_i_2_n_0 ),
        .I4(obs_unrooted[22]),
        .I5(\cid[22][5]_i_4_n_0 ),
        .O(\cid[22][0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h80AAA2AAB3AAA2AA)) 
    \cid[22][0]_i_4 
       (.I0(\cid[22][0]_i_5_n_0 ),
        .I1(\cid[27][3]_i_3_n_0 ),
        .I2(obs_unrooted[22]),
        .I3(\cid[22][5]_i_11_n_0 ),
        .I4(\cid[22][3]_i_8_n_0 ),
        .I5(obs_cid[138]),
        .O(\cid[22][0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00110000F0BBFFFF)) 
    \cid[22][0]_i_5 
       (.I0(\cid[22][3]_i_13_n_0 ),
        .I1(obs_cid[36]),
        .I2(obs_unrooted[22]),
        .I3(\cid[8][3]_i_3_n_0 ),
        .I4(\ptr[6][1]_i_3_n_0 ),
        .I5(obs_cid[132]),
        .O(\cid[22][0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hF6F6FFFFF6F6FF00)) 
    \cid[22][1]_i_1 
       (.I0(obs_cid[109]),
        .I1(\cid[22][1]_i_2_n_0 ),
        .I2(\cid[22][2]_i_3_n_0 ),
        .I3(\cid[22][1]_i_3_n_0 ),
        .I4(\FSM_sequential_stage_reg[1]_rep__3_n_0 ),
        .I5(\cid[26][3]_i_4_n_0 ),
        .O(\cid[22][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair132" *) 
  LUT5 #(
    .INIT(32'h00001115)) 
    \cid[22][1]_i_2 
       (.I0(obs_cid[112]),
        .I1(obs_cid[111]),
        .I2(obs_cid[109]),
        .I3(obs_cid[110]),
        .I4(obs_cid[113]),
        .O(\cid[22][1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h2FAF2F0F2F052F0F)) 
    \cid[22][1]_i_3 
       (.I0(\cid[22][5]_i_4_n_0 ),
        .I1(obs_unrooted[22]),
        .I2(\cid[22][1]_i_4_n_0 ),
        .I3(\cid[22][2]_i_3_n_0 ),
        .I4(\cid[22][4]_i_5_n_0 ),
        .I5(obs_cid[109]),
        .O(\cid[22][1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h4055515573555155)) 
    \cid[22][1]_i_4 
       (.I0(\cid[22][1]_i_5_n_0 ),
        .I1(\cid[26][3]_i_2_n_0 ),
        .I2(obs_unrooted[22]),
        .I3(\cid[22][5]_i_7_n_0 ),
        .I4(\cid[22][3]_i_6_n_0 ),
        .I5(obs_cid[157]),
        .O(\cid[22][1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h7F555D554C555D55)) 
    \cid[22][1]_i_5 
       (.I0(\cid[22][1]_i_6_n_0 ),
        .I1(\cid[27][3]_i_3_n_0 ),
        .I2(obs_unrooted[22]),
        .I3(\cid[22][5]_i_11_n_0 ),
        .I4(\cid[22][3]_i_8_n_0 ),
        .I5(obs_cid[139]),
        .O(\cid[22][1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h2333233320332F33)) 
    \cid[22][1]_i_6 
       (.I0(obs_unrooted[22]),
        .I1(obs_cid[133]),
        .I2(\cid[8][3]_i_3_n_0 ),
        .I3(\ptr[6][1]_i_3_n_0 ),
        .I4(obs_cid[37]),
        .I5(\cid[22][3]_i_13_n_0 ),
        .O(\cid[22][1]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hF9F9FFFFF9F9FF00)) 
    \cid[22][2]_i_1 
       (.I0(obs_cid[110]),
        .I1(\cid[22][2]_i_2_n_0 ),
        .I2(\cid[22][2]_i_3_n_0 ),
        .I3(\cid[22][2]_i_4_n_0 ),
        .I4(\FSM_sequential_stage_reg[1]_rep__3_n_0 ),
        .I5(\cid[26][3]_i_4_n_0 ),
        .O(\cid[22][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair132" *) 
  LUT5 #(
    .INIT(32'h00000015)) 
    \cid[22][2]_i_2 
       (.I0(obs_cid[113]),
        .I1(obs_cid[110]),
        .I2(obs_cid[111]),
        .I3(obs_cid[112]),
        .I4(obs_cid[109]),
        .O(\cid[22][2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \cid[22][2]_i_3 
       (.I0(obs_cid[108]),
        .I1(obs_cid[113]),
        .I2(obs_cid[111]),
        .I3(obs_cid[109]),
        .I4(obs_cid[112]),
        .I5(obs_cid[110]),
        .O(\cid[22][2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h2FAF2F0F2F052F0F)) 
    \cid[22][2]_i_4 
       (.I0(\cid[22][5]_i_4_n_0 ),
        .I1(obs_unrooted[22]),
        .I2(\cid[22][2]_i_5_n_0 ),
        .I3(\cid[22][2]_i_3_n_0 ),
        .I4(\cid[22][4]_i_5_n_0 ),
        .I5(obs_cid[110]),
        .O(\cid[22][2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h80AAA2AAB3AAA2AA)) 
    \cid[22][2]_i_5 
       (.I0(\cid[22][2]_i_6_n_0 ),
        .I1(\cid[26][3]_i_2_n_0 ),
        .I2(obs_unrooted[22]),
        .I3(\cid[22][5]_i_7_n_0 ),
        .I4(\cid[22][3]_i_6_n_0 ),
        .I5(obs_cid[158]),
        .O(\cid[22][2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h80AAA2AAB3AAA2AA)) 
    \cid[22][2]_i_6 
       (.I0(\cid[22][2]_i_7_n_0 ),
        .I1(\cid[27][3]_i_3_n_0 ),
        .I2(obs_unrooted[22]),
        .I3(\cid[22][5]_i_11_n_0 ),
        .I4(\cid[22][3]_i_8_n_0 ),
        .I5(obs_cid[140]),
        .O(\cid[22][2]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h2333233320332F33)) 
    \cid[22][2]_i_7 
       (.I0(obs_unrooted[22]),
        .I1(obs_cid[134]),
        .I2(\cid[8][3]_i_3_n_0 ),
        .I3(\ptr[6][1]_i_3_n_0 ),
        .I4(obs_cid[38]),
        .I5(\cid[22][3]_i_13_n_0 ),
        .O(\cid[22][2]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h555500CF55550000)) 
    \cid[22][3]_i_1 
       (.I0(\cid[22][3]_i_2_n_0 ),
        .I1(\cid[22][5]_i_4_n_0 ),
        .I2(\cid[22][3]_i_3_n_0 ),
        .I3(\cid[26][3]_i_4_n_0 ),
        .I4(\FSM_sequential_stage_reg[1]_rep__3_n_0 ),
        .I5(\cid[22][3]_i_4_n_0 ),
        .O(\cid[22][3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h111F)) 
    \cid[22][3]_i_10 
       (.I0(\cid[22][3]_i_5_n_0 ),
        .I1(obs_cid[159]),
        .I2(\cid[22][2]_i_6_n_0 ),
        .I3(obs_cid[158]),
        .O(\cid[22][3]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFEEEF000FFFFFEEE)) 
    \cid[22][3]_i_11 
       (.I0(obs_cid[156]),
        .I1(\cid[22][0]_i_4_n_0 ),
        .I2(obs_cid[158]),
        .I3(\cid[22][2]_i_6_n_0 ),
        .I4(obs_cid[157]),
        .I5(\cid[22][1]_i_5_n_0 ),
        .O(\cid[22][3]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair247" *) 
  LUT4 #(
    .INIT(16'h8F88)) 
    \cid[22][3]_i_12 
       (.I0(obs_cid[159]),
        .I1(\cid[22][3]_i_5_n_0 ),
        .I2(\cid[22][4]_i_6_n_0 ),
        .I3(obs_cid[160]),
        .O(\cid[22][3]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h4D4D4D4D0C4D0C0C)) 
    \cid[22][3]_i_13 
       (.I0(\cid[6][5]_i_8_n_0 ),
        .I1(obs_cid[41]),
        .I2(obs_cid[137]),
        .I3(\cid[22][3]_i_19_n_0 ),
        .I4(\cid[22][3]_i_20_n_0 ),
        .I5(\cid[22][3]_i_21_n_0 ),
        .O(\cid[22][3]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h00000B00FBFFFBFF)) 
    \cid[22][3]_i_14 
       (.I0(obs_unrooted[22]),
        .I1(\cid[8][3]_i_3_n_0 ),
        .I2(obs_growth[6]),
        .I3(obs_growth[7]),
        .I4(obs_cid[41]),
        .I5(obs_cid[137]),
        .O(\cid[22][3]_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair248" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cid[22][3]_i_15 
       (.I0(obs_cid[142]),
        .I1(\cid[22][4]_i_11_n_0 ),
        .O(\cid[22][3]_i_15_n_0 ));
  LUT4 #(
    .INIT(16'h8F88)) 
    \cid[22][3]_i_16 
       (.I0(obs_cid[140]),
        .I1(\cid[22][2]_i_7_n_0 ),
        .I2(\cid[22][3]_i_7_n_0 ),
        .I3(obs_cid[141]),
        .O(\cid[22][3]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h011F011F011FFFFF)) 
    \cid[22][3]_i_17 
       (.I0(obs_cid[138]),
        .I1(\cid[22][0]_i_5_n_0 ),
        .I2(obs_cid[139]),
        .I3(\cid[22][1]_i_6_n_0 ),
        .I4(obs_cid[140]),
        .I5(\cid[22][2]_i_7_n_0 ),
        .O(\cid[22][3]_i_17_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair248" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    \cid[22][3]_i_18 
       (.I0(obs_cid[142]),
        .I1(\cid[22][4]_i_11_n_0 ),
        .I2(obs_cid[141]),
        .I3(\cid[22][3]_i_7_n_0 ),
        .O(\cid[22][3]_i_18_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \cid[22][3]_i_19 
       (.I0(obs_cid[38]),
        .I1(obs_cid[134]),
        .I2(obs_cid[39]),
        .I3(obs_cid[135]),
        .O(\cid[22][3]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h7F0000FFFF0300FF)) 
    \cid[22][3]_i_2 
       (.I0(obs_cid[108]),
        .I1(obs_cid[109]),
        .I2(obs_cid[112]),
        .I3(obs_cid[111]),
        .I4(obs_cid[110]),
        .I5(obs_cid[113]),
        .O(\cid[22][3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hDDFD00F0FFFFDDFD)) 
    \cid[22][3]_i_20 
       (.I0(obs_cid[132]),
        .I1(obs_cid[36]),
        .I2(obs_cid[38]),
        .I3(obs_cid[134]),
        .I4(obs_cid[37]),
        .I5(obs_cid[133]),
        .O(\cid[22][3]_i_20_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair249" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    \cid[22][3]_i_21 
       (.I0(obs_cid[135]),
        .I1(obs_cid[39]),
        .I2(obs_cid[136]),
        .I3(obs_cid[40]),
        .O(\cid[22][3]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h80AAA2AAB3AAA2AA)) 
    \cid[22][3]_i_3 
       (.I0(\cid[22][3]_i_5_n_0 ),
        .I1(\cid[26][3]_i_2_n_0 ),
        .I2(obs_unrooted[22]),
        .I3(\cid[22][5]_i_7_n_0 ),
        .I4(\cid[22][3]_i_6_n_0 ),
        .I5(obs_cid[159]),
        .O(\cid[22][3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h08FBF8FBFFFFFFFF)) 
    \cid[22][3]_i_4 
       (.I0(obs_cid[111]),
        .I1(\cid[22][4]_i_5_n_0 ),
        .I2(\cid[22][2]_i_3_n_0 ),
        .I3(\cid[22][3]_i_3_n_0 ),
        .I4(obs_unrooted[22]),
        .I5(\cid[22][5]_i_4_n_0 ),
        .O(\cid[22][3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h4055515573555155)) 
    \cid[22][3]_i_5 
       (.I0(\cid[22][3]_i_7_n_0 ),
        .I1(\cid[27][3]_i_3_n_0 ),
        .I2(obs_unrooted[22]),
        .I3(\cid[22][5]_i_11_n_0 ),
        .I4(\cid[22][3]_i_8_n_0 ),
        .I5(obs_cid[141]),
        .O(\cid[22][3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hD4D4D4D4DDD4DDDD)) 
    \cid[22][3]_i_6 
       (.I0(obs_cid[161]),
        .I1(\cid[22][5]_i_8_n_0 ),
        .I2(\cid[22][3]_i_9_n_0 ),
        .I3(\cid[22][3]_i_10_n_0 ),
        .I4(\cid[22][3]_i_11_n_0 ),
        .I5(\cid[22][3]_i_12_n_0 ),
        .O(\cid[22][3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hDCCCDCCCDFCCD0CC)) 
    \cid[22][3]_i_7 
       (.I0(obs_unrooted[22]),
        .I1(obs_cid[135]),
        .I2(\cid[8][3]_i_3_n_0 ),
        .I3(\ptr[6][1]_i_3_n_0 ),
        .I4(obs_cid[39]),
        .I5(\cid[22][3]_i_13_n_0 ),
        .O(\cid[22][3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h1717171711171111)) 
    \cid[22][3]_i_8 
       (.I0(obs_cid[143]),
        .I1(\cid[22][3]_i_14_n_0 ),
        .I2(\cid[22][3]_i_15_n_0 ),
        .I3(\cid[22][3]_i_16_n_0 ),
        .I4(\cid[22][3]_i_17_n_0 ),
        .I5(\cid[22][3]_i_18_n_0 ),
        .O(\cid[22][3]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair247" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cid[22][3]_i_9 
       (.I0(\cid[22][4]_i_6_n_0 ),
        .I1(obs_cid[160]),
        .O(\cid[22][3]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hBEEE0000BEEEBEEE)) 
    \cid[22][4]_i_1 
       (.I0(\cid[22][4]_i_2_n_0 ),
        .I1(obs_cid[112]),
        .I2(obs_cid[110]),
        .I3(obs_cid[111]),
        .I4(\cid[22][4]_i_3_n_0 ),
        .I5(\cid[22][5]_i_5_n_0 ),
        .O(\cid[22][4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair246" *) 
  LUT4 #(
    .INIT(16'h111F)) 
    \cid[22][4]_i_10 
       (.I0(\cid[22][4]_i_4_n_0 ),
        .I1(obs_cid[112]),
        .I2(\cid[22][3]_i_3_n_0 ),
        .I3(obs_cid[111]),
        .O(\cid[22][4]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hDCCCDCCCDFCCD0CC)) 
    \cid[22][4]_i_11 
       (.I0(obs_unrooted[22]),
        .I1(obs_cid[136]),
        .I2(\cid[8][3]_i_3_n_0 ),
        .I3(\ptr[6][1]_i_3_n_0 ),
        .I4(obs_cid[40]),
        .I5(\cid[22][3]_i_13_n_0 ),
        .O(\cid[22][4]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair402" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \cid[22][4]_i_2 
       (.I0(\cid[22][2]_i_3_n_0 ),
        .I1(\FSM_sequential_stage_reg[1]_rep__1_n_0 ),
        .O(\cid[22][4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h2FAF2F0F2F052F0F)) 
    \cid[22][4]_i_3 
       (.I0(\cid[22][5]_i_4_n_0 ),
        .I1(obs_unrooted[22]),
        .I2(\cid[22][4]_i_4_n_0 ),
        .I3(\cid[22][2]_i_3_n_0 ),
        .I4(\cid[22][4]_i_5_n_0 ),
        .I5(obs_cid[112]),
        .O(\cid[22][4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h4055515573555155)) 
    \cid[22][4]_i_4 
       (.I0(\cid[22][4]_i_6_n_0 ),
        .I1(\cid[26][3]_i_2_n_0 ),
        .I2(obs_unrooted[22]),
        .I3(\cid[22][5]_i_7_n_0 ),
        .I4(\cid[22][3]_i_6_n_0 ),
        .I5(obs_cid[160]),
        .O(\cid[22][4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h1717171711171111)) 
    \cid[22][4]_i_5 
       (.I0(obs_cid[113]),
        .I1(\cid[22][5]_i_3_n_0 ),
        .I2(\cid[22][4]_i_7_n_0 ),
        .I3(\cid[22][4]_i_8_n_0 ),
        .I4(\cid[22][4]_i_9_n_0 ),
        .I5(\cid[22][4]_i_10_n_0 ),
        .O(\cid[22][4]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hBFAAAEAA8CAAAEAA)) 
    \cid[22][4]_i_6 
       (.I0(\cid[22][4]_i_11_n_0 ),
        .I1(\cid[27][3]_i_3_n_0 ),
        .I2(obs_unrooted[22]),
        .I3(\cid[22][5]_i_11_n_0 ),
        .I4(\cid[22][3]_i_8_n_0 ),
        .I5(obs_cid[142]),
        .O(\cid[22][4]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair246" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cid[22][4]_i_7 
       (.I0(\cid[22][4]_i_4_n_0 ),
        .I1(obs_cid[112]),
        .O(\cid[22][4]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \cid[22][4]_i_8 
       (.I0(obs_cid[110]),
        .I1(\cid[22][2]_i_5_n_0 ),
        .I2(obs_cid[111]),
        .I3(\cid[22][3]_i_3_n_0 ),
        .O(\cid[22][4]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h011F011F011FFFFF)) 
    \cid[22][4]_i_9 
       (.I0(obs_cid[108]),
        .I1(\cid[22][0]_i_2_n_0 ),
        .I2(obs_cid[109]),
        .I3(\cid[22][1]_i_4_n_0 ),
        .I4(obs_cid[110]),
        .I5(\cid[22][2]_i_5_n_0 ),
        .O(\cid[22][4]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFBABB0000)) 
    \cid[22][5]_i_1 
       (.I0(\cid[22][5]_i_2_n_0 ),
        .I1(\cid[22][5]_i_3_n_0 ),
        .I2(obs_cid[113]),
        .I3(\cid[22][5]_i_4_n_0 ),
        .I4(\cid[22][5]_i_5_n_0 ),
        .I5(\cid[22][5]_i_6_n_0 ),
        .O(\cid[22][5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cid[22][5]_i_10 
       (.I0(obs_growth[67]),
        .I1(obs_growth[66]),
        .O(\cid[22][5]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h4444444440444444)) 
    \cid[22][5]_i_11 
       (.I0(obs_growth[52]),
        .I1(obs_growth[53]),
        .I2(obs_unrooted[22]),
        .I3(\cid[8][3]_i_3_n_0 ),
        .I4(obs_growth[7]),
        .I5(obs_growth[6]),
        .O(\cid[22][5]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair219" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \cid[22][5]_i_2 
       (.I0(\cid[22][5]_i_4_n_0 ),
        .I1(obs_unrooted[22]),
        .I2(\cid[22][2]_i_3_n_0 ),
        .O(\cid[22][5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT5 #(
    .INIT(32'h00D0DFDF)) 
    \cid[22][5]_i_3 
       (.I0(\cid[26][3]_i_2_n_0 ),
        .I1(obs_unrooted[22]),
        .I2(\cid[22][5]_i_7_n_0 ),
        .I3(obs_cid[161]),
        .I4(\cid[22][5]_i_8_n_0 ),
        .O(\cid[22][5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0800080808080808)) 
    \cid[22][5]_i_4 
       (.I0(\cid[22][5]_i_9_n_0 ),
        .I1(obs_growth[51]),
        .I2(obs_growth[50]),
        .I3(obs_unrooted[22]),
        .I4(\cid[26][3]_i_2_n_0 ),
        .I5(\cid[22][5]_i_10_n_0 ),
        .O(\cid[22][5]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair414" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \cid[22][5]_i_5 
       (.I0(\FSM_sequential_stage_reg[1]_rep__1_n_0 ),
        .I1(\cid[26][3]_i_4_n_0 ),
        .O(\cid[22][5]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h8AA8A8A8A8A8A8A8)) 
    \cid[22][5]_i_6 
       (.I0(\FSM_sequential_stage_reg[1]_rep__1_n_0 ),
        .I1(\cid[22][2]_i_3_n_0 ),
        .I2(obs_cid[113]),
        .I3(obs_cid[112]),
        .I4(obs_cid[111]),
        .I5(obs_cid[110]),
        .O(\cid[22][5]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h20)) 
    \cid[22][5]_i_7 
       (.I0(\cid[22][5]_i_9_n_0 ),
        .I1(obs_growth[66]),
        .I2(obs_growth[67]),
        .O(\cid[22][5]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hD000D0D0DDDDDDDD)) 
    \cid[22][5]_i_8 
       (.I0(\cid[22][5]_i_11_n_0 ),
        .I1(obs_cid[143]),
        .I2(obs_cid[137]),
        .I3(obs_cid[41]),
        .I4(\ptr[6][1]_i_3_n_0 ),
        .I5(\cid[22][5]_i_9_n_0 ),
        .O(\cid[22][5]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF77077777)) 
    \cid[22][5]_i_9 
       (.I0(\cid[8][3]_i_3_n_0 ),
        .I1(\ptr[6][1]_i_3_n_0 ),
        .I2(obs_growth[53]),
        .I3(obs_growth[52]),
        .I4(\cid[27][3]_i_3_n_0 ),
        .I5(obs_unrooted[22]),
        .O(\cid[22][5]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair239" *) 
  LUT4 #(
    .INIT(16'hAFAC)) 
    \cid[23][0]_i_1 
       (.I0(obs_cid[114]),
        .I1(\cid[23][0]_i_2_n_0 ),
        .I2(\FSM_sequential_stage_reg[1]_rep__3_n_0 ),
        .I3(\cid[27][3]_i_3_n_0 ),
        .O(\cid[23][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4FCF4F0F4F034F0F)) 
    \cid[23][0]_i_2 
       (.I0(obs_unrooted[23]),
        .I1(\cid[23][5]_i_3_n_0 ),
        .I2(\cid[23][0]_i_3_n_0 ),
        .I3(\cid[23][2]_i_3_n_0 ),
        .I4(\cid[23][4]_i_5_n_0 ),
        .I5(obs_cid[114]),
        .O(\cid[23][0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hA222A2AAA2EEA2AA)) 
    \cid[23][0]_i_3 
       (.I0(\cid[23][0]_i_4_n_0 ),
        .I1(\cid[23][5]_i_10_n_0 ),
        .I2(obs_unrooted[23]),
        .I3(\cid[27][5]_i_4_n_0 ),
        .I4(\cid[23][3]_i_6_n_0 ),
        .I5(obs_cid[162]),
        .O(\cid[23][0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h80AAA2AAB3AAA2AA)) 
    \cid[23][0]_i_4 
       (.I0(\cid[23][0]_i_5_n_0 ),
        .I1(\cid[28][3]_i_4_n_0 ),
        .I2(obs_unrooted[23]),
        .I3(\cid[23][5]_i_13_n_0 ),
        .I4(\cid[23][3]_i_8_n_0 ),
        .I5(obs_cid[144]),
        .O(\cid[23][0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00440000F077FFFF)) 
    \cid[23][0]_i_5 
       (.I0(obs_cid[132]),
        .I1(\cid[23][3]_i_13_n_0 ),
        .I2(obs_unrooted[23]),
        .I3(\cid[26][3]_i_4_n_0 ),
        .I4(\busy[22]_i_8_n_0 ),
        .I5(obs_cid[138]),
        .O(\cid[23][0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFDDDD0FF0DDDD)) 
    \cid[23][1]_i_1 
       (.I0(\cid[23][1]_i_2_n_0 ),
        .I1(\cid[27][3]_i_3_n_0 ),
        .I2(obs_cid[115]),
        .I3(\cid[23][1]_i_3_n_0 ),
        .I4(\FSM_sequential_stage_reg[1]_rep__3_n_0 ),
        .I5(\cid[23][2]_i_3_n_0 ),
        .O(\cid[23][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8BBB0030FFFF0000)) 
    \cid[23][1]_i_2 
       (.I0(obs_unrooted[23]),
        .I1(\cid[23][2]_i_3_n_0 ),
        .I2(\cid[23][4]_i_5_n_0 ),
        .I3(obs_cid[115]),
        .I4(\cid[23][1]_i_4_n_0 ),
        .I5(\cid[23][5]_i_3_n_0 ),
        .O(\cid[23][1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair133" *) 
  LUT5 #(
    .INIT(32'h00001115)) 
    \cid[23][1]_i_3 
       (.I0(obs_cid[118]),
        .I1(obs_cid[117]),
        .I2(obs_cid[115]),
        .I3(obs_cid[116]),
        .I4(obs_cid[119]),
        .O(\cid[23][1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h5111515551DD5155)) 
    \cid[23][1]_i_4 
       (.I0(\cid[23][1]_i_5_n_0 ),
        .I1(\cid[23][5]_i_10_n_0 ),
        .I2(obs_unrooted[23]),
        .I3(\cid[27][5]_i_4_n_0 ),
        .I4(\cid[23][3]_i_6_n_0 ),
        .I5(obs_cid[163]),
        .O(\cid[23][1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hBFAAAEAA8CAAAEAA)) 
    \cid[23][1]_i_5 
       (.I0(\cid[23][1]_i_6_n_0 ),
        .I1(\cid[28][3]_i_4_n_0 ),
        .I2(obs_unrooted[23]),
        .I3(\cid[23][5]_i_13_n_0 ),
        .I4(\cid[23][3]_i_8_n_0 ),
        .I5(obs_cid[145]),
        .O(\cid[23][1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hDFCCDCCCD0CCDCCC)) 
    \cid[23][1]_i_6 
       (.I0(obs_unrooted[23]),
        .I1(obs_cid[139]),
        .I2(\cid[26][3]_i_4_n_0 ),
        .I3(\busy[22]_i_8_n_0 ),
        .I4(\cid[23][3]_i_13_n_0 ),
        .I5(obs_cid[133]),
        .O(\cid[23][1]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hF9F9FFFFF9F9FF00)) 
    \cid[23][2]_i_1 
       (.I0(obs_cid[116]),
        .I1(\cid[23][2]_i_2_n_0 ),
        .I2(\cid[23][2]_i_3_n_0 ),
        .I3(\cid[23][2]_i_4_n_0 ),
        .I4(\FSM_sequential_stage_reg[1]_rep__3_n_0 ),
        .I5(\cid[27][3]_i_3_n_0 ),
        .O(\cid[23][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair133" *) 
  LUT5 #(
    .INIT(32'h00000015)) 
    \cid[23][2]_i_2 
       (.I0(obs_cid[119]),
        .I1(obs_cid[116]),
        .I2(obs_cid[117]),
        .I3(obs_cid[118]),
        .I4(obs_cid[115]),
        .O(\cid[23][2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \cid[23][2]_i_3 
       (.I0(obs_cid[115]),
        .I1(obs_cid[117]),
        .I2(obs_cid[119]),
        .I3(obs_cid[114]),
        .I4(obs_cid[118]),
        .I5(obs_cid[116]),
        .O(\cid[23][2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h4FCF4F0F4F034F0F)) 
    \cid[23][2]_i_4 
       (.I0(obs_unrooted[23]),
        .I1(\cid[23][5]_i_3_n_0 ),
        .I2(\cid[23][2]_i_5_n_0 ),
        .I3(\cid[23][2]_i_3_n_0 ),
        .I4(\cid[23][4]_i_5_n_0 ),
        .I5(obs_cid[116]),
        .O(\cid[23][2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h5111515551DD5155)) 
    \cid[23][2]_i_5 
       (.I0(\cid[23][2]_i_6_n_0 ),
        .I1(\cid[23][5]_i_10_n_0 ),
        .I2(obs_unrooted[23]),
        .I3(\cid[27][5]_i_4_n_0 ),
        .I4(\cid[23][3]_i_6_n_0 ),
        .I5(obs_cid[164]),
        .O(\cid[23][2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hBFAAAEAA8CAAAEAA)) 
    \cid[23][2]_i_6 
       (.I0(\cid[23][2]_i_7_n_0 ),
        .I1(\cid[28][3]_i_4_n_0 ),
        .I2(obs_unrooted[23]),
        .I3(\cid[23][5]_i_13_n_0 ),
        .I4(\cid[23][3]_i_8_n_0 ),
        .I5(obs_cid[146]),
        .O(\cid[23][2]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hDFCCDCCCD0CCDCCC)) 
    \cid[23][2]_i_7 
       (.I0(obs_unrooted[23]),
        .I1(obs_cid[140]),
        .I2(\cid[26][3]_i_4_n_0 ),
        .I3(\busy[22]_i_8_n_0 ),
        .I4(\cid[23][3]_i_13_n_0 ),
        .I5(obs_cid[134]),
        .O(\cid[23][2]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h555500FC55550000)) 
    \cid[23][3]_i_1 
       (.I0(\cid[23][3]_i_2_n_0 ),
        .I1(\cid[23][5]_i_3_n_0 ),
        .I2(\cid[23][3]_i_3_n_0 ),
        .I3(\cid[27][3]_i_3_n_0 ),
        .I4(\FSM_sequential_stage_reg[1]_rep__3_n_0 ),
        .I5(\cid[23][3]_i_4_n_0 ),
        .O(\cid[23][3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \cid[23][3]_i_10 
       (.I0(obs_cid[165]),
        .I1(\cid[23][3]_i_5_n_0 ),
        .I2(obs_cid[164]),
        .I3(\cid[23][2]_i_6_n_0 ),
        .O(\cid[23][3]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hEEFE00F0FFFFEEFE)) 
    \cid[23][3]_i_11 
       (.I0(obs_cid[162]),
        .I1(\cid[23][0]_i_4_n_0 ),
        .I2(obs_cid[164]),
        .I3(\cid[23][2]_i_6_n_0 ),
        .I4(obs_cid[163]),
        .I5(\cid[23][1]_i_5_n_0 ),
        .O(\cid[23][3]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair241" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    \cid[23][3]_i_12 
       (.I0(\cid[23][3]_i_5_n_0 ),
        .I1(obs_cid[165]),
        .I2(\cid[23][4]_i_6_n_0 ),
        .I3(obs_cid[166]),
        .O(\cid[23][3]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hB0B0B0B0BBB0BBBB)) 
    \cid[23][3]_i_13 
       (.I0(obs_cid[143]),
        .I1(obs_cid[137]),
        .I2(\cid[23][3]_i_18_n_0 ),
        .I3(\cid[23][3]_i_19_n_0 ),
        .I4(\cid[23][3]_i_20_n_0 ),
        .I5(\cid[23][3]_i_21_n_0 ),
        .O(\cid[23][3]_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair243" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cid[23][3]_i_14 
       (.I0(\cid[23][4]_i_11_n_0 ),
        .I1(obs_cid[148]),
        .O(\cid[23][3]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \cid[23][3]_i_15 
       (.I0(\cid[23][2]_i_7_n_0 ),
        .I1(obs_cid[146]),
        .I2(\cid[23][3]_i_7_n_0 ),
        .I3(obs_cid[147]),
        .O(\cid[23][3]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h10F110F1FFFF10F1)) 
    \cid[23][3]_i_16 
       (.I0(obs_cid[144]),
        .I1(\cid[23][0]_i_5_n_0 ),
        .I2(\cid[23][1]_i_6_n_0 ),
        .I3(obs_cid[145]),
        .I4(\cid[23][2]_i_7_n_0 ),
        .I5(obs_cid[146]),
        .O(\cid[23][3]_i_16_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair243" *) 
  LUT4 #(
    .INIT(16'h1F11)) 
    \cid[23][3]_i_17 
       (.I0(\cid[23][4]_i_11_n_0 ),
        .I1(obs_cid[148]),
        .I2(obs_cid[147]),
        .I3(\cid[23][3]_i_7_n_0 ),
        .O(\cid[23][3]_i_17_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \cid[23][3]_i_18 
       (.I0(obs_cid[137]),
        .I1(obs_cid[143]),
        .I2(obs_cid[136]),
        .I3(obs_cid[142]),
        .O(\cid[23][3]_i_18_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \cid[23][3]_i_19 
       (.I0(obs_cid[135]),
        .I1(obs_cid[141]),
        .I2(obs_cid[134]),
        .I3(obs_cid[140]),
        .O(\cid[23][3]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h7F0000FFFF0300FF)) 
    \cid[23][3]_i_2 
       (.I0(obs_cid[114]),
        .I1(obs_cid[115]),
        .I2(obs_cid[118]),
        .I3(obs_cid[117]),
        .I4(obs_cid[116]),
        .I5(obs_cid[119]),
        .O(\cid[23][3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hDDFD00F0FFFFDDFD)) 
    \cid[23][3]_i_20 
       (.I0(obs_cid[138]),
        .I1(obs_cid[132]),
        .I2(obs_cid[134]),
        .I3(obs_cid[140]),
        .I4(obs_cid[133]),
        .I5(obs_cid[139]),
        .O(\cid[23][3]_i_20_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \cid[23][3]_i_21 
       (.I0(obs_cid[141]),
        .I1(obs_cid[135]),
        .I2(obs_cid[142]),
        .I3(obs_cid[136]),
        .O(\cid[23][3]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hAEEEAEAAAE22AEAA)) 
    \cid[23][3]_i_3 
       (.I0(\cid[23][3]_i_5_n_0 ),
        .I1(\cid[23][5]_i_10_n_0 ),
        .I2(obs_unrooted[23]),
        .I3(\cid[27][5]_i_4_n_0 ),
        .I4(\cid[23][3]_i_6_n_0 ),
        .I5(obs_cid[165]),
        .O(\cid[23][3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF0B8FFFFFFB8FFFF)) 
    \cid[23][3]_i_4 
       (.I0(obs_cid[117]),
        .I1(\cid[23][4]_i_5_n_0 ),
        .I2(\cid[23][3]_i_3_n_0 ),
        .I3(\cid[23][2]_i_3_n_0 ),
        .I4(\cid[23][5]_i_3_n_0 ),
        .I5(obs_unrooted[23]),
        .O(\cid[23][3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hBFAAAEAA8CAAAEAA)) 
    \cid[23][3]_i_5 
       (.I0(\cid[23][3]_i_7_n_0 ),
        .I1(\cid[28][3]_i_4_n_0 ),
        .I2(obs_unrooted[23]),
        .I3(\cid[23][5]_i_13_n_0 ),
        .I4(\cid[23][3]_i_8_n_0 ),
        .I5(obs_cid[147]),
        .O(\cid[23][3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hD4D4D4D4DDD4DDDD)) 
    \cid[23][3]_i_6 
       (.I0(obs_cid[167]),
        .I1(\cid[23][5]_i_11_n_0 ),
        .I2(\cid[23][3]_i_9_n_0 ),
        .I3(\cid[23][3]_i_10_n_0 ),
        .I4(\cid[23][3]_i_11_n_0 ),
        .I5(\cid[23][3]_i_12_n_0 ),
        .O(\cid[23][3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hDFCCDCCCD0CCDCCC)) 
    \cid[23][3]_i_7 
       (.I0(obs_unrooted[23]),
        .I1(obs_cid[141]),
        .I2(\cid[26][3]_i_4_n_0 ),
        .I3(\busy[22]_i_8_n_0 ),
        .I4(\cid[23][3]_i_13_n_0 ),
        .I5(obs_cid[135]),
        .O(\cid[23][3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h1717171703170303)) 
    \cid[23][3]_i_8 
       (.I0(\cid[23][3]_i_14_n_0 ),
        .I1(obs_cid[149]),
        .I2(\cid[23][5]_i_12_n_0 ),
        .I3(\cid[23][3]_i_15_n_0 ),
        .I4(\cid[23][3]_i_16_n_0 ),
        .I5(\cid[23][3]_i_17_n_0 ),
        .O(\cid[23][3]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair241" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cid[23][3]_i_9 
       (.I0(\cid[23][4]_i_6_n_0 ),
        .I1(obs_cid[166]),
        .O(\cid[23][3]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h7DDD00007DDD7DDD)) 
    \cid[23][4]_i_1 
       (.I0(\cid[23][4]_i_2_n_0 ),
        .I1(obs_cid[118]),
        .I2(obs_cid[116]),
        .I3(obs_cid[117]),
        .I4(\cid[23][4]_i_3_n_0 ),
        .I5(\cid[23][5]_i_4_n_0 ),
        .O(\cid[23][4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair240" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    \cid[23][4]_i_10 
       (.I0(obs_cid[118]),
        .I1(\cid[23][4]_i_4_n_0 ),
        .I2(obs_cid[117]),
        .I3(\cid[23][3]_i_3_n_0 ),
        .O(\cid[23][4]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h00440000F077FFFF)) 
    \cid[23][4]_i_11 
       (.I0(obs_cid[136]),
        .I1(\cid[23][3]_i_13_n_0 ),
        .I2(obs_unrooted[23]),
        .I3(\cid[26][3]_i_4_n_0 ),
        .I4(\busy[22]_i_8_n_0 ),
        .I5(obs_cid[142]),
        .O(\cid[23][4]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair259" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cid[23][4]_i_2 
       (.I0(\FSM_sequential_stage_reg[1]_rep__1_n_0 ),
        .I1(\cid[23][2]_i_3_n_0 ),
        .O(\cid[23][4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBFAABAAAB0AABAAA)) 
    \cid[23][4]_i_3 
       (.I0(\cid[23][4]_i_4_n_0 ),
        .I1(obs_unrooted[23]),
        .I2(\cid[23][2]_i_3_n_0 ),
        .I3(\cid[23][5]_i_3_n_0 ),
        .I4(\cid[23][4]_i_5_n_0 ),
        .I5(obs_cid[118]),
        .O(\cid[23][4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAEEEAEAAAE22AEAA)) 
    \cid[23][4]_i_4 
       (.I0(\cid[23][4]_i_6_n_0 ),
        .I1(\cid[23][5]_i_10_n_0 ),
        .I2(obs_unrooted[23]),
        .I3(\cid[27][5]_i_4_n_0 ),
        .I4(\cid[23][3]_i_6_n_0 ),
        .I5(obs_cid[166]),
        .O(\cid[23][4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h1717171711171111)) 
    \cid[23][4]_i_5 
       (.I0(obs_cid[119]),
        .I1(\cid[23][5]_i_6_n_0 ),
        .I2(\cid[23][4]_i_7_n_0 ),
        .I3(\cid[23][4]_i_8_n_0 ),
        .I4(\cid[23][4]_i_9_n_0 ),
        .I5(\cid[23][4]_i_10_n_0 ),
        .O(\cid[23][4]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h7F555D554C555D55)) 
    \cid[23][4]_i_6 
       (.I0(\cid[23][4]_i_11_n_0 ),
        .I1(\cid[28][3]_i_4_n_0 ),
        .I2(obs_unrooted[23]),
        .I3(\cid[23][5]_i_13_n_0 ),
        .I4(\cid[23][3]_i_8_n_0 ),
        .I5(obs_cid[148]),
        .O(\cid[23][4]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair240" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cid[23][4]_i_7 
       (.I0(obs_cid[118]),
        .I1(\cid[23][4]_i_4_n_0 ),
        .O(\cid[23][4]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h8F88)) 
    \cid[23][4]_i_8 
       (.I0(obs_cid[116]),
        .I1(\cid[23][2]_i_5_n_0 ),
        .I2(\cid[23][3]_i_3_n_0 ),
        .I3(obs_cid[117]),
        .O(\cid[23][4]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h011F011F011FFFFF)) 
    \cid[23][4]_i_9 
       (.I0(obs_cid[114]),
        .I1(\cid[23][0]_i_3_n_0 ),
        .I2(obs_cid[115]),
        .I3(\cid[23][1]_i_4_n_0 ),
        .I4(obs_cid[116]),
        .I5(\cid[23][2]_i_5_n_0 ),
        .O(\cid[23][4]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAEAAAEFAAEFAA)) 
    \cid[23][5]_i_1 
       (.I0(\cid[23][5]_i_2_n_0 ),
        .I1(obs_cid[119]),
        .I2(\cid[23][5]_i_3_n_0 ),
        .I3(\cid[23][5]_i_4_n_0 ),
        .I4(\cid[23][5]_i_5_n_0 ),
        .I5(\cid[23][5]_i_6_n_0 ),
        .O(\cid[23][5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \cid[23][5]_i_10 
       (.I0(obs_growth[70]),
        .I1(obs_growth[71]),
        .I2(\cid[23][5]_i_8_n_0 ),
        .O(\cid[23][5]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'h4F000F0F)) 
    \cid[23][5]_i_11 
       (.I0(obs_unrooted[23]),
        .I1(\cid[28][3]_i_4_n_0 ),
        .I2(\cid[23][5]_i_12_n_0 ),
        .I3(obs_cid[149]),
        .I4(\cid[23][5]_i_13_n_0 ),
        .O(\cid[23][5]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h0F0F0F0F0DFF0F0F)) 
    \cid[23][5]_i_12 
       (.I0(\cid[26][3]_i_4_n_0 ),
        .I1(obs_unrooted[23]),
        .I2(obs_cid[143]),
        .I3(obs_cid[137]),
        .I4(obs_growth[53]),
        .I5(obs_growth[52]),
        .O(\cid[23][5]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h4444444440444444)) 
    \cid[23][5]_i_13 
       (.I0(obs_growth[56]),
        .I1(obs_growth[57]),
        .I2(obs_unrooted[23]),
        .I3(\cid[26][3]_i_4_n_0 ),
        .I4(obs_growth[53]),
        .I5(obs_growth[52]),
        .O(\cid[23][5]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h8AA8A8A8A8A8A8A8)) 
    \cid[23][5]_i_2 
       (.I0(\FSM_sequential_stage_reg[1]_rep__1_n_0 ),
        .I1(\cid[23][2]_i_3_n_0 ),
        .I2(obs_cid[119]),
        .I3(obs_cid[118]),
        .I4(obs_cid[117]),
        .I5(obs_cid[116]),
        .O(\cid[23][5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFBF0000)) 
    \cid[23][5]_i_3 
       (.I0(obs_growth[70]),
        .I1(obs_growth[71]),
        .I2(\cid[27][5]_i_4_n_0 ),
        .I3(obs_unrooted[23]),
        .I4(\cid[23][5]_i_7_n_0 ),
        .I5(\cid[23][5]_i_8_n_0 ),
        .O(\cid[23][5]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair323" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \cid[23][5]_i_4 
       (.I0(\FSM_sequential_stage_reg[1]_rep__1_n_0 ),
        .I1(\cid[27][3]_i_3_n_0 ),
        .O(\cid[23][5]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair416" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \cid[23][5]_i_5 
       (.I0(obs_unrooted[23]),
        .I1(\cid[23][2]_i_3_n_0 ),
        .O(\cid[23][5]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair242" *) 
  LUT4 #(
    .INIT(16'h0455)) 
    \cid[23][5]_i_6 
       (.I0(\cid[23][5]_i_9_n_0 ),
        .I1(\cid[23][5]_i_10_n_0 ),
        .I2(obs_cid[167]),
        .I3(\cid[23][5]_i_11_n_0 ),
        .O(\cid[23][5]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cid[23][5]_i_7 
       (.I0(obs_growth[55]),
        .I1(obs_growth[54]),
        .O(\cid[23][5]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FF080808)) 
    \cid[23][5]_i_8 
       (.I0(\cid[26][3]_i_4_n_0 ),
        .I1(obs_growth[53]),
        .I2(obs_growth[52]),
        .I3(\cid[24][5]_i_9_n_0 ),
        .I4(\cid[28][3]_i_4_n_0 ),
        .I5(obs_unrooted[23]),
        .O(\cid[23][5]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT5 #(
    .INIT(32'h00000040)) 
    \cid[23][5]_i_9 
       (.I0(obs_unrooted[23]),
        .I1(\cid[27][5]_i_4_n_0 ),
        .I2(obs_growth[71]),
        .I3(obs_growth[70]),
        .I4(\cid[23][5]_i_8_n_0 ),
        .O(\cid[23][5]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAAAA00CFAAAA0000)) 
    \cid[24][0]_i_1 
       (.I0(obs_cid[120]),
        .I1(\cid[24][2]_i_3_n_0 ),
        .I2(\cid[24][0]_i_2_n_0 ),
        .I3(\cid[28][3]_i_4_n_0 ),
        .I4(\FSM_sequential_stage_reg[1]_rep__3_n_0 ),
        .I5(\cid[24][0]_i_3_n_0 ),
        .O(\cid[24][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h80AAA2AAB3AAA2AA)) 
    \cid[24][0]_i_2 
       (.I0(\cid[24][0]_i_4_n_0 ),
        .I1(\cid[28][3]_i_2_n_0 ),
        .I2(obs_unrooted[24]),
        .I3(\cid[24][2]_i_8_n_0 ),
        .I4(\cid[24][2]_i_9_n_0 ),
        .I5(obs_cid[168]),
        .O(\cid[24][0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF0808FF0B)) 
    \cid[24][0]_i_3 
       (.I0(obs_cid[120]),
        .I1(\cid[24][2]_i_10_n_0 ),
        .I2(\cid[24][5]_i_3_n_0 ),
        .I3(\cid[24][4]_i_2_n_0 ),
        .I4(\cid[24][0]_i_2_n_0 ),
        .I5(\cid[24][2]_i_11_n_0 ),
        .O(\cid[24][0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hD050D0F0D0FAD0F0)) 
    \cid[24][0]_i_4 
       (.I0(\cid[24][2]_i_12_n_0 ),
        .I1(obs_unrooted[24]),
        .I2(\cid[24][0]_i_5_n_0 ),
        .I3(\cid[29][3]_i_3_n_0 ),
        .I4(\cid[24][2]_i_14_n_0 ),
        .I5(obs_cid[150]),
        .O(\cid[24][0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h203323332F332333)) 
    \cid[24][0]_i_5 
       (.I0(obs_unrooted[24]),
        .I1(obs_cid[144]),
        .I2(\cid[27][3]_i_3_n_0 ),
        .I3(\cid[24][5]_i_9_n_0 ),
        .I4(\cid[24][2]_i_25_n_0 ),
        .I5(obs_cid[138]),
        .O(\cid[24][0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAEFAAAAAAAA)) 
    \cid[24][1]_i_1 
       (.I0(\cid[24][1]_i_2_n_0 ),
        .I1(\cid[24][2]_i_3_n_0 ),
        .I2(\cid[24][1]_i_3_n_0 ),
        .I3(\cid[28][3]_i_4_n_0 ),
        .I4(\FSM_sequential_stage_reg[1]_rep__1_n_0 ),
        .I5(\cid[24][1]_i_4_n_0 ),
        .O(\cid[24][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAA00AA00A802A822)) 
    \cid[24][1]_i_2 
       (.I0(\FSM_sequential_stage_reg[1]_rep__1_n_0 ),
        .I1(obs_cid[124]),
        .I2(obs_cid[123]),
        .I3(obs_cid[121]),
        .I4(obs_cid[122]),
        .I5(obs_cid[125]),
        .O(\cid[24][1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h4055515573555155)) 
    \cid[24][1]_i_3 
       (.I0(\cid[24][1]_i_5_n_0 ),
        .I1(\cid[28][3]_i_2_n_0 ),
        .I2(obs_unrooted[24]),
        .I3(\cid[24][2]_i_8_n_0 ),
        .I4(\cid[24][2]_i_9_n_0 ),
        .I5(obs_cid[169]),
        .O(\cid[24][1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF0808FF0B)) 
    \cid[24][1]_i_4 
       (.I0(obs_cid[121]),
        .I1(\cid[24][2]_i_10_n_0 ),
        .I2(\cid[24][5]_i_3_n_0 ),
        .I3(\cid[24][4]_i_2_n_0 ),
        .I4(\cid[24][1]_i_3_n_0 ),
        .I5(\cid[24][2]_i_11_n_0 ),
        .O(\cid[24][1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h2FAF2F0F2F052F0F)) 
    \cid[24][1]_i_5 
       (.I0(\cid[24][2]_i_12_n_0 ),
        .I1(obs_unrooted[24]),
        .I2(\cid[24][1]_i_6_n_0 ),
        .I3(\cid[29][3]_i_3_n_0 ),
        .I4(\cid[24][2]_i_14_n_0 ),
        .I5(obs_cid[151]),
        .O(\cid[24][1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h203323332F332333)) 
    \cid[24][1]_i_6 
       (.I0(obs_unrooted[24]),
        .I1(obs_cid[145]),
        .I2(\cid[27][3]_i_3_n_0 ),
        .I3(\cid[24][5]_i_9_n_0 ),
        .I4(\cid[24][2]_i_25_n_0 ),
        .I5(obs_cid[139]),
        .O(\cid[24][1]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h555500CF55550000)) 
    \cid[24][2]_i_1 
       (.I0(\cid[24][2]_i_2_n_0 ),
        .I1(\cid[24][2]_i_3_n_0 ),
        .I2(\cid[24][2]_i_4_n_0 ),
        .I3(\cid[28][3]_i_4_n_0 ),
        .I4(\FSM_sequential_stage_reg[1]_rep__3_n_0 ),
        .I5(\cid[24][2]_i_5_n_0 ),
        .O(\cid[24][2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1717171711171111)) 
    \cid[24][2]_i_10 
       (.I0(obs_cid[125]),
        .I1(\cid[24][2]_i_20_n_0 ),
        .I2(\cid[24][2]_i_21_n_0 ),
        .I3(\cid[24][2]_i_22_n_0 ),
        .I4(\cid[24][2]_i_23_n_0 ),
        .I5(\cid[24][2]_i_24_n_0 ),
        .O(\cid[24][2]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair387" *) 
  LUT3 #(
    .INIT(8'h5D)) 
    \cid[24][2]_i_11 
       (.I0(\cid[24][2]_i_3_n_0 ),
        .I1(\cid[24][4]_i_2_n_0 ),
        .I2(obs_unrooted[24]),
        .O(\cid[24][2]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h4444444440444444)) 
    \cid[24][2]_i_12 
       (.I0(obs_growth[60]),
        .I1(obs_growth[61]),
        .I2(obs_unrooted[24]),
        .I3(\cid[27][3]_i_3_n_0 ),
        .I4(obs_growth[57]),
        .I5(obs_growth[56]),
        .O(\cid[24][2]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hDFCCDCCCD0CCDCCC)) 
    \cid[24][2]_i_13 
       (.I0(obs_unrooted[24]),
        .I1(obs_cid[146]),
        .I2(\cid[27][3]_i_3_n_0 ),
        .I3(\cid[24][5]_i_9_n_0 ),
        .I4(\cid[24][2]_i_25_n_0 ),
        .I5(obs_cid[140]),
        .O(\cid[24][2]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h1717171711171111)) 
    \cid[24][2]_i_14 
       (.I0(obs_cid[155]),
        .I1(\cid[24][5]_i_11_n_0 ),
        .I2(\cid[24][2]_i_26_n_0 ),
        .I3(\cid[24][2]_i_27_n_0 ),
        .I4(\cid[24][2]_i_28_n_0 ),
        .I5(\cid[24][2]_i_29_n_0 ),
        .O(\cid[24][2]_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair276" *) 
  LUT4 #(
    .INIT(16'h0040)) 
    \cid[24][2]_i_15 
       (.I0(obs_growth[56]),
        .I1(obs_growth[57]),
        .I2(\cid[27][3]_i_3_n_0 ),
        .I3(obs_unrooted[24]),
        .O(\cid[24][2]_i_15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair256" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cid[24][2]_i_16 
       (.I0(\cid[24][4]_i_6_n_0 ),
        .I1(obs_cid[172]),
        .O(\cid[24][2]_i_16_n_0 ));
  LUT4 #(
    .INIT(16'h111F)) 
    \cid[24][2]_i_17 
       (.I0(\cid[24][3]_i_6_n_0 ),
        .I1(obs_cid[171]),
        .I2(\cid[24][2]_i_7_n_0 ),
        .I3(obs_cid[170]),
        .O(\cid[24][2]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFE0FEE0FEE0FE)) 
    \cid[24][2]_i_18 
       (.I0(obs_cid[168]),
        .I1(\cid[24][0]_i_4_n_0 ),
        .I2(obs_cid[169]),
        .I3(\cid[24][1]_i_5_n_0 ),
        .I4(obs_cid[170]),
        .I5(\cid[24][2]_i_7_n_0 ),
        .O(\cid[24][2]_i_18_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair256" *) 
  LUT4 #(
    .INIT(16'hF444)) 
    \cid[24][2]_i_19 
       (.I0(\cid[24][4]_i_6_n_0 ),
        .I1(obs_cid[172]),
        .I2(obs_cid[171]),
        .I3(\cid[24][3]_i_6_n_0 ),
        .O(\cid[24][2]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h70F0F0F0F0F0F3C3)) 
    \cid[24][2]_i_2 
       (.I0(obs_cid[120]),
        .I1(obs_cid[125]),
        .I2(obs_cid[122]),
        .I3(obs_cid[123]),
        .I4(obs_cid[124]),
        .I5(obs_cid[121]),
        .O(\cid[24][2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT5 #(
    .INIT(32'h00D0DFDF)) 
    \cid[24][2]_i_20 
       (.I0(\cid[28][3]_i_2_n_0 ),
        .I1(obs_unrooted[24]),
        .I2(\cid[24][2]_i_8_n_0 ),
        .I3(obs_cid[173]),
        .I4(\cid[24][5]_i_10_n_0 ),
        .O(\cid[24][2]_i_20_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair255" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cid[24][2]_i_21 
       (.I0(\cid[24][4]_i_5_n_0 ),
        .I1(obs_cid[124]),
        .O(\cid[24][2]_i_21_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \cid[24][2]_i_22 
       (.I0(obs_cid[122]),
        .I1(\cid[24][2]_i_4_n_0 ),
        .I2(obs_cid[123]),
        .I3(\cid[24][3]_i_5_n_0 ),
        .O(\cid[24][2]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'h011F011F011FFFFF)) 
    \cid[24][2]_i_23 
       (.I0(obs_cid[120]),
        .I1(\cid[24][0]_i_2_n_0 ),
        .I2(obs_cid[121]),
        .I3(\cid[24][1]_i_3_n_0 ),
        .I4(obs_cid[122]),
        .I5(\cid[24][2]_i_4_n_0 ),
        .O(\cid[24][2]_i_23_n_0 ));
  LUT4 #(
    .INIT(16'h111F)) 
    \cid[24][2]_i_24 
       (.I0(\cid[24][4]_i_5_n_0 ),
        .I1(obs_cid[124]),
        .I2(\cid[24][3]_i_5_n_0 ),
        .I3(obs_cid[123]),
        .O(\cid[24][2]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hB0B0B0B0BBB0BBBB)) 
    \cid[24][2]_i_25 
       (.I0(obs_cid[149]),
        .I1(obs_cid[143]),
        .I2(\cid[24][2]_i_30_n_0 ),
        .I3(\cid[24][2]_i_31_n_0 ),
        .I4(\cid[24][2]_i_32_n_0 ),
        .I5(\cid[24][2]_i_33_n_0 ),
        .O(\cid[24][2]_i_25_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair277" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cid[24][2]_i_26 
       (.I0(obs_cid[154]),
        .I1(\cid[24][4]_i_7_n_0 ),
        .O(\cid[24][2]_i_26_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \cid[24][2]_i_27 
       (.I0(\cid[24][2]_i_13_n_0 ),
        .I1(obs_cid[152]),
        .I2(\cid[24][3]_i_7_n_0 ),
        .I3(obs_cid[153]),
        .O(\cid[24][2]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'h011F011FFFFF011F)) 
    \cid[24][2]_i_28 
       (.I0(obs_cid[150]),
        .I1(\cid[24][0]_i_5_n_0 ),
        .I2(obs_cid[151]),
        .I3(\cid[24][1]_i_6_n_0 ),
        .I4(\cid[24][2]_i_13_n_0 ),
        .I5(obs_cid[152]),
        .O(\cid[24][2]_i_28_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair277" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    \cid[24][2]_i_29 
       (.I0(obs_cid[154]),
        .I1(\cid[24][4]_i_7_n_0 ),
        .I2(obs_cid[153]),
        .I3(\cid[24][3]_i_7_n_0 ),
        .O(\cid[24][2]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'h8888808888888888)) 
    \cid[24][2]_i_3 
       (.I0(\cid[24][5]_i_5_n_0 ),
        .I1(\cid[24][2]_i_6_n_0 ),
        .I2(obs_unrooted[24]),
        .I3(\cid[28][3]_i_2_n_0 ),
        .I4(obs_growth[74]),
        .I5(obs_growth[75]),
        .O(\cid[24][2]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \cid[24][2]_i_30 
       (.I0(obs_cid[143]),
        .I1(obs_cid[149]),
        .I2(obs_cid[142]),
        .I3(obs_cid[148]),
        .O(\cid[24][2]_i_30_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \cid[24][2]_i_31 
       (.I0(obs_cid[141]),
        .I1(obs_cid[147]),
        .I2(obs_cid[140]),
        .I3(obs_cid[146]),
        .O(\cid[24][2]_i_31_n_0 ));
  LUT6 #(
    .INIT(64'hDDFD00F0FFFFDDFD)) 
    \cid[24][2]_i_32 
       (.I0(obs_cid[144]),
        .I1(obs_cid[138]),
        .I2(obs_cid[140]),
        .I3(obs_cid[146]),
        .I4(obs_cid[139]),
        .I5(obs_cid[145]),
        .O(\cid[24][2]_i_32_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \cid[24][2]_i_33 
       (.I0(obs_cid[147]),
        .I1(obs_cid[141]),
        .I2(obs_cid[148]),
        .I3(obs_cid[142]),
        .O(\cid[24][2]_i_33_n_0 ));
  LUT6 #(
    .INIT(64'h80AAA2AAB3AAA2AA)) 
    \cid[24][2]_i_4 
       (.I0(\cid[24][2]_i_7_n_0 ),
        .I1(\cid[28][3]_i_2_n_0 ),
        .I2(obs_unrooted[24]),
        .I3(\cid[24][2]_i_8_n_0 ),
        .I4(\cid[24][2]_i_9_n_0 ),
        .I5(obs_cid[170]),
        .O(\cid[24][2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF0808FF0B)) 
    \cid[24][2]_i_5 
       (.I0(obs_cid[122]),
        .I1(\cid[24][2]_i_10_n_0 ),
        .I2(\cid[24][5]_i_3_n_0 ),
        .I3(\cid[24][4]_i_2_n_0 ),
        .I4(\cid[24][2]_i_4_n_0 ),
        .I5(\cid[24][2]_i_11_n_0 ),
        .O(\cid[24][2]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cid[24][2]_i_6 
       (.I0(obs_growth[59]),
        .I1(obs_growth[58]),
        .O(\cid[24][2]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0D050D0F0DAF0D0F)) 
    \cid[24][2]_i_7 
       (.I0(\cid[24][2]_i_12_n_0 ),
        .I1(obs_unrooted[24]),
        .I2(\cid[24][2]_i_13_n_0 ),
        .I3(\cid[29][3]_i_3_n_0 ),
        .I4(\cid[24][2]_i_14_n_0 ),
        .I5(obs_cid[152]),
        .O(\cid[24][2]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0000515500000000)) 
    \cid[24][2]_i_8 
       (.I0(\cid[24][2]_i_15_n_0 ),
        .I1(\cid[25][5]_i_15_n_0 ),
        .I2(obs_unrooted[24]),
        .I3(\cid[29][3]_i_3_n_0 ),
        .I4(obs_growth[74]),
        .I5(obs_growth[75]),
        .O(\cid[24][2]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hD4D4D4D4DDD4DDDD)) 
    \cid[24][2]_i_9 
       (.I0(obs_cid[173]),
        .I1(\cid[24][5]_i_10_n_0 ),
        .I2(\cid[24][2]_i_16_n_0 ),
        .I3(\cid[24][2]_i_17_n_0 ),
        .I4(\cid[24][2]_i_18_n_0 ),
        .I5(\cid[24][2]_i_19_n_0 ),
        .O(\cid[24][2]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FF9AFFFF)) 
    \cid[24][3]_i_1 
       (.I0(obs_cid[123]),
        .I1(\cid[24][3]_i_2_n_0 ),
        .I2(obs_cid[122]),
        .I3(\cid[24][4]_i_2_n_0 ),
        .I4(\FSM_sequential_stage_reg[1]_rep__3_n_0 ),
        .I5(\cid[24][3]_i_3_n_0 ),
        .O(\cid[24][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair134" *) 
  LUT5 #(
    .INIT(32'h00000015)) 
    \cid[24][3]_i_2 
       (.I0(obs_cid[125]),
        .I1(obs_cid[122]),
        .I2(obs_cid[123]),
        .I3(obs_cid[124]),
        .I4(obs_cid[121]),
        .O(\cid[24][3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8808AA000808AA00)) 
    \cid[24][3]_i_3 
       (.I0(\cid[24][5]_i_8_n_0 ),
        .I1(\cid[24][3]_i_4_n_0 ),
        .I2(\cid[24][4]_i_2_n_0 ),
        .I3(\cid[24][3]_i_5_n_0 ),
        .I4(\cid[24][2]_i_3_n_0 ),
        .I5(obs_unrooted[24]),
        .O(\cid[24][3]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hAEFE)) 
    \cid[24][3]_i_4 
       (.I0(\cid[24][5]_i_3_n_0 ),
        .I1(\cid[24][3]_i_5_n_0 ),
        .I2(\cid[24][2]_i_10_n_0 ),
        .I3(obs_cid[123]),
        .O(\cid[24][3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h80AAA2AAB3AAA2AA)) 
    \cid[24][3]_i_5 
       (.I0(\cid[24][3]_i_6_n_0 ),
        .I1(\cid[28][3]_i_2_n_0 ),
        .I2(obs_unrooted[24]),
        .I3(\cid[24][2]_i_8_n_0 ),
        .I4(\cid[24][2]_i_9_n_0 ),
        .I5(obs_cid[171]),
        .O(\cid[24][3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00D500DF0ADF00DF)) 
    \cid[24][3]_i_6 
       (.I0(\cid[24][2]_i_12_n_0 ),
        .I1(obs_unrooted[24]),
        .I2(\cid[29][3]_i_3_n_0 ),
        .I3(\cid[24][3]_i_7_n_0 ),
        .I4(\cid[24][2]_i_14_n_0 ),
        .I5(obs_cid[153]),
        .O(\cid[24][3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hDFCCDCCCD0CCDCCC)) 
    \cid[24][3]_i_7 
       (.I0(obs_unrooted[24]),
        .I1(obs_cid[147]),
        .I2(\cid[27][3]_i_3_n_0 ),
        .I3(\cid[24][5]_i_9_n_0 ),
        .I4(\cid[24][2]_i_25_n_0 ),
        .I5(obs_cid[141]),
        .O(\cid[24][3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h00000000BFFBFBFB)) 
    \cid[24][4]_i_1 
       (.I0(\cid[24][4]_i_2_n_0 ),
        .I1(\FSM_sequential_stage_reg[1]_rep__3_n_0 ),
        .I2(obs_cid[124]),
        .I3(obs_cid[122]),
        .I4(obs_cid[123]),
        .I5(\cid[24][4]_i_3_n_0 ),
        .O(\cid[24][4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \cid[24][4]_i_2 
       (.I0(obs_cid[121]),
        .I1(obs_cid[123]),
        .I2(obs_cid[125]),
        .I3(obs_cid[120]),
        .I4(obs_cid[124]),
        .I5(obs_cid[122]),
        .O(\cid[24][4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8808AA000808AA00)) 
    \cid[24][4]_i_3 
       (.I0(\cid[24][5]_i_8_n_0 ),
        .I1(\cid[24][4]_i_4_n_0 ),
        .I2(\cid[24][4]_i_2_n_0 ),
        .I3(\cid[24][4]_i_5_n_0 ),
        .I4(\cid[24][2]_i_3_n_0 ),
        .I5(obs_unrooted[24]),
        .O(\cid[24][4]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair255" *) 
  LUT4 #(
    .INIT(16'hAEFE)) 
    \cid[24][4]_i_4 
       (.I0(\cid[24][5]_i_3_n_0 ),
        .I1(\cid[24][4]_i_5_n_0 ),
        .I2(\cid[24][2]_i_10_n_0 ),
        .I3(obs_cid[124]),
        .O(\cid[24][4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h4055515573555155)) 
    \cid[24][4]_i_5 
       (.I0(\cid[24][4]_i_6_n_0 ),
        .I1(\cid[28][3]_i_2_n_0 ),
        .I2(obs_unrooted[24]),
        .I3(\cid[24][2]_i_8_n_0 ),
        .I4(\cid[24][2]_i_9_n_0 ),
        .I5(obs_cid[172]),
        .O(\cid[24][4]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFF2AFF20F520FF20)) 
    \cid[24][4]_i_6 
       (.I0(\cid[24][2]_i_12_n_0 ),
        .I1(obs_unrooted[24]),
        .I2(\cid[29][3]_i_3_n_0 ),
        .I3(\cid[24][4]_i_7_n_0 ),
        .I4(\cid[24][2]_i_14_n_0 ),
        .I5(obs_cid[154]),
        .O(\cid[24][4]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hDFCCDCCCD0CCDCCC)) 
    \cid[24][4]_i_7 
       (.I0(obs_unrooted[24]),
        .I1(obs_cid[148]),
        .I2(\cid[27][3]_i_3_n_0 ),
        .I3(\cid[24][5]_i_9_n_0 ),
        .I4(\cid[24][2]_i_25_n_0 ),
        .I5(obs_cid[142]),
        .O(\cid[24][4]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF780000)) 
    \cid[24][5]_i_1 
       (.I0(\cid[24][5]_i_2_n_0 ),
        .I1(obs_cid[124]),
        .I2(obs_cid[125]),
        .I3(\cid[24][5]_i_3_n_0 ),
        .I4(\FSM_sequential_stage_reg[1]_rep__3_n_0 ),
        .I5(\cid[24][5]_i_4_n_0 ),
        .O(\cid[24][5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0F0F0F0F2F000F0F)) 
    \cid[24][5]_i_10 
       (.I0(\cid[29][3]_i_3_n_0 ),
        .I1(obs_unrooted[24]),
        .I2(\cid[24][5]_i_11_n_0 ),
        .I3(obs_cid[155]),
        .I4(\cid[25][5]_i_15_n_0 ),
        .I5(\cid[24][2]_i_15_n_0 ),
        .O(\cid[24][5]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h0F0F0F0F0DFF0F0F)) 
    \cid[24][5]_i_11 
       (.I0(\cid[27][3]_i_3_n_0 ),
        .I1(obs_unrooted[24]),
        .I2(obs_cid[149]),
        .I3(obs_cid[143]),
        .I4(obs_growth[57]),
        .I5(obs_growth[56]),
        .O(\cid[24][5]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair134" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cid[24][5]_i_2 
       (.I0(obs_cid[123]),
        .I1(obs_cid[122]),
        .O(\cid[24][5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \cid[24][5]_i_3 
       (.I0(obs_cid[121]),
        .I1(obs_cid[120]),
        .I2(obs_cid[122]),
        .I3(obs_cid[124]),
        .I4(obs_cid[125]),
        .I5(obs_cid[123]),
        .O(\cid[24][5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF700F7000000F700)) 
    \cid[24][5]_i_4 
       (.I0(\cid[24][5]_i_5_n_0 ),
        .I1(\cid[24][5]_i_6_n_0 ),
        .I2(\cid[24][5]_i_7_n_0 ),
        .I3(\cid[24][5]_i_8_n_0 ),
        .I4(\cid[24][2]_i_3_n_0 ),
        .I5(obs_cid[125]),
        .O(\cid[24][5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFF00FFF7FFF7FFF7)) 
    \cid[24][5]_i_5 
       (.I0(\cid[29][3]_i_3_n_0 ),
        .I1(obs_growth[61]),
        .I2(obs_growth[60]),
        .I3(obs_unrooted[24]),
        .I4(\cid[27][3]_i_3_n_0 ),
        .I5(\cid[24][5]_i_9_n_0 ),
        .O(\cid[24][5]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFF00FFDFFFDFFFDF)) 
    \cid[24][5]_i_6 
       (.I0(obs_growth[75]),
        .I1(obs_growth[74]),
        .I2(\cid[28][3]_i_2_n_0 ),
        .I3(obs_unrooted[24]),
        .I4(\cid[24][4]_i_2_n_0 ),
        .I5(\cid[24][2]_i_6_n_0 ),
        .O(\cid[24][5]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair388" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \cid[24][5]_i_7 
       (.I0(\cid[24][5]_i_10_n_0 ),
        .I1(obs_cid[173]),
        .I2(\cid[24][2]_i_8_n_0 ),
        .O(\cid[24][5]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \cid[24][5]_i_8 
       (.I0(\FSM_sequential_stage_reg[1]_rep__1_n_0 ),
        .I1(\cid[28][3]_i_4_n_0 ),
        .O(\cid[24][5]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cid[24][5]_i_9 
       (.I0(obs_growth[57]),
        .I1(obs_growth[56]),
        .O(\cid[24][5]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair227" *) 
  LUT4 #(
    .INIT(16'hAFAC)) 
    \cid[25][0]_i_1 
       (.I0(obs_cid[126]),
        .I1(\cid[25][0]_i_2_n_0 ),
        .I2(\FSM_sequential_stage_reg[1]_rep__3_n_0 ),
        .I3(\cid[29][3]_i_3_n_0 ),
        .O(\cid[25][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2FAF2F0F2F052F0F)) 
    \cid[25][0]_i_2 
       (.I0(\cid[25][5]_i_5_n_0 ),
        .I1(obs_unrooted[25]),
        .I2(\cid[25][0]_i_3_n_0 ),
        .I3(\cid[25][4]_i_2_n_0 ),
        .I4(\cid[25][4]_i_6_n_0 ),
        .I5(obs_cid[126]),
        .O(\cid[25][0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hD050D0F0D0FAD0F0)) 
    \cid[25][0]_i_3 
       (.I0(\cid[25][5]_i_8_n_0 ),
        .I1(obs_unrooted[25]),
        .I2(\cid[25][0]_i_4_n_0 ),
        .I3(\cid[29][5]_i_4_n_0 ),
        .I4(\cid[25][2]_i_6_n_0 ),
        .I5(obs_cid[174]),
        .O(\cid[25][0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h80AAA2AAB3AAA2AA)) 
    \cid[25][0]_i_4 
       (.I0(\cid[25][0]_i_5_n_0 ),
        .I1(\cid[9][3]_i_3_n_0 ),
        .I2(obs_unrooted[25]),
        .I3(\cid[25][5]_i_14_n_0 ),
        .I4(\cid[25][2]_i_8_n_0 ),
        .I5(obs_cid[42]),
        .O(\cid[25][0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00110000F0BBFFFF)) 
    \cid[25][0]_i_5 
       (.I0(\ptr[25][0]_i_5_n_0 ),
        .I1(obs_cid[144]),
        .I2(obs_unrooted[25]),
        .I3(\cid[28][3]_i_4_n_0 ),
        .I4(\cid[25][5]_i_15_n_0 ),
        .I5(obs_cid[150]),
        .O(\cid[25][0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAEFAAAAAAAA)) 
    \cid[25][1]_i_1 
       (.I0(\cid[25][1]_i_2_n_0 ),
        .I1(\cid[25][5]_i_5_n_0 ),
        .I2(\cid[25][1]_i_3_n_0 ),
        .I3(\cid[29][3]_i_3_n_0 ),
        .I4(\FSM_sequential_stage_reg[1]_rep__1_n_0 ),
        .I5(\cid[25][1]_i_4_n_0 ),
        .O(\cid[25][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAA00AA00A802A822)) 
    \cid[25][1]_i_2 
       (.I0(\FSM_sequential_stage_reg[1]_rep__1_n_0 ),
        .I1(obs_cid[130]),
        .I2(obs_cid[129]),
        .I3(obs_cid[127]),
        .I4(obs_cid[128]),
        .I5(obs_cid[131]),
        .O(\cid[25][1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0D050D0F0DAF0D0F)) 
    \cid[25][1]_i_3 
       (.I0(\cid[25][5]_i_8_n_0 ),
        .I1(obs_unrooted[25]),
        .I2(\cid[25][1]_i_5_n_0 ),
        .I3(\cid[29][5]_i_4_n_0 ),
        .I4(\cid[25][2]_i_6_n_0 ),
        .I5(obs_cid[175]),
        .O(\cid[25][1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h08FBF8FBFFFFFFFF)) 
    \cid[25][1]_i_4 
       (.I0(obs_cid[127]),
        .I1(\cid[25][4]_i_6_n_0 ),
        .I2(\cid[25][4]_i_2_n_0 ),
        .I3(\cid[25][1]_i_3_n_0 ),
        .I4(obs_unrooted[25]),
        .I5(\cid[25][5]_i_5_n_0 ),
        .O(\cid[25][1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h7F555D554C555D55)) 
    \cid[25][1]_i_5 
       (.I0(\cid[25][1]_i_6_n_0 ),
        .I1(\cid[9][3]_i_3_n_0 ),
        .I2(obs_unrooted[25]),
        .I3(\cid[25][5]_i_14_n_0 ),
        .I4(\cid[25][2]_i_8_n_0 ),
        .I5(obs_cid[43]),
        .O(\cid[25][1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h2333233320332F33)) 
    \cid[25][1]_i_6 
       (.I0(obs_unrooted[25]),
        .I1(obs_cid[151]),
        .I2(\cid[28][3]_i_4_n_0 ),
        .I3(\cid[25][5]_i_15_n_0 ),
        .I4(obs_cid[145]),
        .I5(\ptr[25][0]_i_5_n_0 ),
        .O(\cid[25][1]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h555500FC55550000)) 
    \cid[25][2]_i_1 
       (.I0(\cid[25][2]_i_2_n_0 ),
        .I1(\cid[25][2]_i_3_n_0 ),
        .I2(\cid[25][5]_i_5_n_0 ),
        .I3(\cid[29][3]_i_3_n_0 ),
        .I4(\FSM_sequential_stage_reg[1]_rep__3_n_0 ),
        .I5(\cid[25][2]_i_4_n_0 ),
        .O(\cid[25][2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h111F)) 
    \cid[25][2]_i_10 
       (.I0(\cid[25][3]_i_5_n_0 ),
        .I1(obs_cid[177]),
        .I2(\cid[25][2]_i_5_n_0 ),
        .I3(obs_cid[176]),
        .O(\cid[25][2]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFE0FEE0FEE0FE)) 
    \cid[25][2]_i_11 
       (.I0(obs_cid[174]),
        .I1(\cid[25][0]_i_4_n_0 ),
        .I2(obs_cid[175]),
        .I3(\cid[25][1]_i_5_n_0 ),
        .I4(obs_cid[176]),
        .I5(\cid[25][2]_i_5_n_0 ),
        .O(\cid[25][2]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair252" *) 
  LUT4 #(
    .INIT(16'hF444)) 
    \cid[25][2]_i_12 
       (.I0(\cid[25][4]_i_7_n_0 ),
        .I1(obs_cid[178]),
        .I2(obs_cid[177]),
        .I3(\cid[25][3]_i_5_n_0 ),
        .O(\cid[25][2]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair278" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cid[25][2]_i_13 
       (.I0(obs_cid[46]),
        .I1(\cid[25][4]_i_12_n_0 ),
        .O(\cid[25][2]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'h8F88)) 
    \cid[25][2]_i_14 
       (.I0(obs_cid[44]),
        .I1(\cid[25][2]_i_7_n_0 ),
        .I2(\cid[25][3]_i_6_n_0 ),
        .I3(obs_cid[45]),
        .O(\cid[25][2]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h011F011F011FFFFF)) 
    \cid[25][2]_i_15 
       (.I0(obs_cid[42]),
        .I1(\cid[25][0]_i_5_n_0 ),
        .I2(obs_cid[43]),
        .I3(\cid[25][1]_i_6_n_0 ),
        .I4(obs_cid[44]),
        .I5(\cid[25][2]_i_7_n_0 ),
        .O(\cid[25][2]_i_15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair278" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    \cid[25][2]_i_16 
       (.I0(obs_cid[46]),
        .I1(\cid[25][4]_i_12_n_0 ),
        .I2(obs_cid[45]),
        .I3(\cid[25][3]_i_6_n_0 ),
        .O(\cid[25][2]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h70F0F0F0F0F0F3C3)) 
    \cid[25][2]_i_2 
       (.I0(obs_cid[126]),
        .I1(obs_cid[131]),
        .I2(obs_cid[128]),
        .I3(obs_cid[129]),
        .I4(obs_cid[130]),
        .I5(obs_cid[127]),
        .O(\cid[25][2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h2FAF2F0F2F052F0F)) 
    \cid[25][2]_i_3 
       (.I0(\cid[25][5]_i_8_n_0 ),
        .I1(obs_unrooted[25]),
        .I2(\cid[25][2]_i_5_n_0 ),
        .I3(\cid[29][5]_i_4_n_0 ),
        .I4(\cid[25][2]_i_6_n_0 ),
        .I5(obs_cid[176]),
        .O(\cid[25][2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFB08FBF8FFFFFFFF)) 
    \cid[25][2]_i_4 
       (.I0(obs_cid[128]),
        .I1(\cid[25][4]_i_6_n_0 ),
        .I2(\cid[25][4]_i_2_n_0 ),
        .I3(\cid[25][2]_i_3_n_0 ),
        .I4(obs_unrooted[25]),
        .I5(\cid[25][5]_i_5_n_0 ),
        .O(\cid[25][2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h80AAA2AAB3AAA2AA)) 
    \cid[25][2]_i_5 
       (.I0(\cid[25][2]_i_7_n_0 ),
        .I1(\cid[9][3]_i_3_n_0 ),
        .I2(obs_unrooted[25]),
        .I3(\cid[25][5]_i_14_n_0 ),
        .I4(\cid[25][2]_i_8_n_0 ),
        .I5(obs_cid[44]),
        .O(\cid[25][2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hD4D4D4D4DDD4DDDD)) 
    \cid[25][2]_i_6 
       (.I0(obs_cid[179]),
        .I1(\cid[25][5]_i_9_n_0 ),
        .I2(\cid[25][2]_i_9_n_0 ),
        .I3(\cid[25][2]_i_10_n_0 ),
        .I4(\cid[25][2]_i_11_n_0 ),
        .I5(\cid[25][2]_i_12_n_0 ),
        .O(\cid[25][2]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h2333233320332F33)) 
    \cid[25][2]_i_7 
       (.I0(obs_unrooted[25]),
        .I1(obs_cid[152]),
        .I2(\cid[28][3]_i_4_n_0 ),
        .I3(\cid[25][5]_i_15_n_0 ),
        .I4(obs_cid[146]),
        .I5(\ptr[25][0]_i_5_n_0 ),
        .O(\cid[25][2]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h1717171711171111)) 
    \cid[25][2]_i_8 
       (.I0(obs_cid[47]),
        .I1(\cid[25][5]_i_13_n_0 ),
        .I2(\cid[25][2]_i_13_n_0 ),
        .I3(\cid[25][2]_i_14_n_0 ),
        .I4(\cid[25][2]_i_15_n_0 ),
        .I5(\cid[25][2]_i_16_n_0 ),
        .O(\cid[25][2]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair252" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cid[25][2]_i_9 
       (.I0(\cid[25][4]_i_7_n_0 ),
        .I1(obs_cid[178]),
        .O(\cid[25][2]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hEEFFEEF0)) 
    \cid[25][3]_i_1 
       (.I0(\cid[25][3]_i_2_n_0 ),
        .I1(\cid[25][4]_i_2_n_0 ),
        .I2(\cid[25][3]_i_3_n_0 ),
        .I3(\FSM_sequential_stage_reg[1]_rep__3_n_0 ),
        .I4(\cid[29][3]_i_3_n_0 ),
        .O(\cid[25][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair135" *) 
  LUT5 #(
    .INIT(32'h3C3C3C38)) 
    \cid[25][3]_i_2 
       (.I0(obs_cid[131]),
        .I1(obs_cid[128]),
        .I2(obs_cid[129]),
        .I3(obs_cid[130]),
        .I4(obs_cid[127]),
        .O(\cid[25][3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFF2AFF20F520FF20)) 
    \cid[25][3]_i_3 
       (.I0(\cid[25][5]_i_5_n_0 ),
        .I1(obs_unrooted[25]),
        .I2(\cid[25][4]_i_2_n_0 ),
        .I3(\cid[25][3]_i_4_n_0 ),
        .I4(\cid[25][4]_i_6_n_0 ),
        .I5(obs_cid[129]),
        .O(\cid[25][3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h2FAF2F0F2F052F0F)) 
    \cid[25][3]_i_4 
       (.I0(\cid[25][5]_i_8_n_0 ),
        .I1(obs_unrooted[25]),
        .I2(\cid[25][3]_i_5_n_0 ),
        .I3(\cid[29][5]_i_4_n_0 ),
        .I4(\cid[25][2]_i_6_n_0 ),
        .I5(obs_cid[177]),
        .O(\cid[25][3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h4055515573555155)) 
    \cid[25][3]_i_5 
       (.I0(\cid[25][3]_i_6_n_0 ),
        .I1(\cid[9][3]_i_3_n_0 ),
        .I2(obs_unrooted[25]),
        .I3(\cid[25][5]_i_14_n_0 ),
        .I4(\cid[25][2]_i_8_n_0 ),
        .I5(obs_cid[45]),
        .O(\cid[25][3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hDCCCDCCCDFCCD0CC)) 
    \cid[25][3]_i_6 
       (.I0(obs_unrooted[25]),
        .I1(obs_cid[153]),
        .I2(\cid[28][3]_i_4_n_0 ),
        .I3(\cid[25][5]_i_15_n_0 ),
        .I4(obs_cid[147]),
        .I5(\ptr[25][0]_i_5_n_0 ),
        .O(\cid[25][3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hBEBEFFFFBEBEFF00)) 
    \cid[25][4]_i_1 
       (.I0(\cid[25][4]_i_2_n_0 ),
        .I1(obs_cid[130]),
        .I2(\cid[25][4]_i_3_n_0 ),
        .I3(\cid[25][4]_i_4_n_0 ),
        .I4(\FSM_sequential_stage_reg[1]_rep__3_n_0 ),
        .I5(\cid[29][3]_i_3_n_0 ),
        .O(\cid[25][4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h011F011FFFFF011F)) 
    \cid[25][4]_i_10 
       (.I0(obs_cid[126]),
        .I1(\cid[25][0]_i_3_n_0 ),
        .I2(obs_cid[127]),
        .I3(\cid[25][1]_i_3_n_0 ),
        .I4(\cid[25][2]_i_3_n_0 ),
        .I5(obs_cid[128]),
        .O(\cid[25][4]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair251" *) 
  LUT4 #(
    .INIT(16'h1F11)) 
    \cid[25][4]_i_11 
       (.I0(\cid[25][4]_i_5_n_0 ),
        .I1(obs_cid[130]),
        .I2(obs_cid[129]),
        .I3(\cid[25][3]_i_4_n_0 ),
        .O(\cid[25][4]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hDCCCDCCCDFCCD0CC)) 
    \cid[25][4]_i_12 
       (.I0(obs_unrooted[25]),
        .I1(obs_cid[154]),
        .I2(\cid[28][3]_i_4_n_0 ),
        .I3(\cid[25][5]_i_15_n_0 ),
        .I4(obs_cid[148]),
        .I5(\ptr[25][0]_i_5_n_0 ),
        .O(\cid[25][4]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \cid[25][4]_i_2 
       (.I0(obs_cid[127]),
        .I1(obs_cid[129]),
        .I2(obs_cid[131]),
        .I3(obs_cid[126]),
        .I4(obs_cid[130]),
        .I5(obs_cid[128]),
        .O(\cid[25][4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair135" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cid[25][4]_i_3 
       (.I0(obs_cid[129]),
        .I1(obs_cid[128]),
        .O(\cid[25][4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h2FAF2F0F2F052F0F)) 
    \cid[25][4]_i_4 
       (.I0(\cid[25][5]_i_5_n_0 ),
        .I1(obs_unrooted[25]),
        .I2(\cid[25][4]_i_5_n_0 ),
        .I3(\cid[25][4]_i_2_n_0 ),
        .I4(\cid[25][4]_i_6_n_0 ),
        .I5(obs_cid[130]),
        .O(\cid[25][4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00D500DF0ADF00DF)) 
    \cid[25][4]_i_5 
       (.I0(\cid[25][5]_i_8_n_0 ),
        .I1(obs_unrooted[25]),
        .I2(\cid[29][5]_i_4_n_0 ),
        .I3(\cid[25][4]_i_7_n_0 ),
        .I4(\cid[25][2]_i_6_n_0 ),
        .I5(obs_cid[178]),
        .O(\cid[25][4]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h1717171711171111)) 
    \cid[25][4]_i_6 
       (.I0(obs_cid[131]),
        .I1(\cid[25][5]_i_3_n_0 ),
        .I2(\cid[25][4]_i_8_n_0 ),
        .I3(\cid[25][4]_i_9_n_0 ),
        .I4(\cid[25][4]_i_10_n_0 ),
        .I5(\cid[25][4]_i_11_n_0 ),
        .O(\cid[25][4]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hBFAAAEAA8CAAAEAA)) 
    \cid[25][4]_i_7 
       (.I0(\cid[25][4]_i_12_n_0 ),
        .I1(\cid[9][3]_i_3_n_0 ),
        .I2(obs_unrooted[25]),
        .I3(\cid[25][5]_i_14_n_0 ),
        .I4(\cid[25][2]_i_8_n_0 ),
        .I5(obs_cid[46]),
        .O(\cid[25][4]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair251" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cid[25][4]_i_8 
       (.I0(\cid[25][4]_i_5_n_0 ),
        .I1(obs_cid[130]),
        .O(\cid[25][4]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \cid[25][4]_i_9 
       (.I0(\cid[25][2]_i_3_n_0 ),
        .I1(obs_cid[128]),
        .I2(\cid[25][3]_i_4_n_0 ),
        .I3(obs_cid[129]),
        .O(\cid[25][4]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'h26)) 
    \cid[25][5]_i_1 
       (.I0(stage__0[2]),
        .I1(stage__0[0]),
        .I2(\FSM_sequential_stage_reg[1]_rep__2_n_0 ),
        .O(\cid[25][5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cid[25][5]_i_10 
       (.I0(obs_growth[65]),
        .I1(obs_growth[64]),
        .O(\cid[25][5]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF77077777)) 
    \cid[25][5]_i_11 
       (.I0(\cid[28][3]_i_4_n_0 ),
        .I1(\cid[25][5]_i_15_n_0 ),
        .I2(obs_growth[63]),
        .I3(obs_growth[62]),
        .I4(\cid[9][3]_i_3_n_0 ),
        .I5(obs_unrooted[25]),
        .O(\cid[25][5]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT4 #(
    .INIT(16'h0040)) 
    \cid[25][5]_i_12 
       (.I0(obs_growth[60]),
        .I1(obs_growth[61]),
        .I2(\cid[28][3]_i_4_n_0 ),
        .I3(obs_unrooted[25]),
        .O(\cid[25][5]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h0F0F0F0F0DFF0F0F)) 
    \cid[25][5]_i_13 
       (.I0(\cid[28][3]_i_4_n_0 ),
        .I1(obs_unrooted[25]),
        .I2(obs_cid[155]),
        .I3(obs_cid[149]),
        .I4(obs_growth[61]),
        .I5(obs_growth[60]),
        .O(\cid[25][5]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h4444444440444444)) 
    \cid[25][5]_i_14 
       (.I0(obs_growth[62]),
        .I1(obs_growth[63]),
        .I2(obs_unrooted[25]),
        .I3(\cid[28][3]_i_4_n_0 ),
        .I4(obs_growth[61]),
        .I5(obs_growth[60]),
        .O(\cid[25][5]_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair118" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cid[25][5]_i_15 
       (.I0(obs_growth[61]),
        .I1(obs_growth[60]),
        .O(\cid[25][5]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFF2330000)) 
    \cid[25][5]_i_2 
       (.I0(obs_cid[131]),
        .I1(\cid[25][5]_i_3_n_0 ),
        .I2(\cid[25][5]_i_4_n_0 ),
        .I3(\cid[25][5]_i_5_n_0 ),
        .I4(\cid[25][5]_i_6_n_0 ),
        .I5(\cid[25][5]_i_7_n_0 ),
        .O(\cid[25][5]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00D0DFDF)) 
    \cid[25][5]_i_3 
       (.I0(\cid[29][5]_i_4_n_0 ),
        .I1(obs_unrooted[25]),
        .I2(\cid[25][5]_i_8_n_0 ),
        .I3(obs_cid[179]),
        .I4(\cid[25][5]_i_9_n_0 ),
        .O(\cid[25][5]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair160" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cid[25][5]_i_4 
       (.I0(\cid[25][4]_i_2_n_0 ),
        .I1(obs_unrooted[25]),
        .O(\cid[25][5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h8888808888888888)) 
    \cid[25][5]_i_5 
       (.I0(\cid[25][5]_i_10_n_0 ),
        .I1(\cid[25][5]_i_11_n_0 ),
        .I2(obs_growth[80]),
        .I3(obs_growth[81]),
        .I4(obs_unrooted[25]),
        .I5(\cid[29][5]_i_4_n_0 ),
        .O(\cid[25][5]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair390" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \cid[25][5]_i_6 
       (.I0(\FSM_sequential_stage_reg[1]_rep__1_n_0 ),
        .I1(\cid[29][3]_i_3_n_0 ),
        .O(\cid[25][5]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h8AA8A8A8A8A8A8A8)) 
    \cid[25][5]_i_7 
       (.I0(\FSM_sequential_stage_reg[1]_rep__1_n_0 ),
        .I1(\cid[25][4]_i_2_n_0 ),
        .I2(obs_cid[131]),
        .I3(obs_cid[130]),
        .I4(obs_cid[129]),
        .I5(obs_cid[128]),
        .O(\cid[25][5]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h000000BF00000000)) 
    \cid[25][5]_i_8 
       (.I0(obs_unrooted[25]),
        .I1(\cid[9][3]_i_3_n_0 ),
        .I2(\ptr[7][0]_i_3_n_0 ),
        .I3(\cid[25][5]_i_12_n_0 ),
        .I4(obs_growth[80]),
        .I5(obs_growth[81]),
        .O(\cid[25][5]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h4F000F0F)) 
    \cid[25][5]_i_9 
       (.I0(obs_unrooted[25]),
        .I1(\cid[9][3]_i_3_n_0 ),
        .I2(\cid[25][5]_i_13_n_0 ),
        .I3(obs_cid[47]),
        .I4(\cid[25][5]_i_14_n_0 ),
        .O(\cid[25][5]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \cid[26][0]_i_1 
       (.I0(\cid[26][0]_i_2_n_0 ),
        .I1(\FSM_sequential_stage_reg[1]_rep__4_n_0 ),
        .I2(obs_cid[132]),
        .I3(stage__0[2]),
        .I4(stage__0[0]),
        .O(\cid[26][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFC00FF0074000000)) 
    \cid[26][0]_i_2 
       (.I0(obs_unrooted[26]),
        .I1(\cid[26][3]_i_4_n_0 ),
        .I2(\cid[26][0]_i_3_n_0 ),
        .I3(\cid[26][5]_i_6_n_0 ),
        .I4(\cid[26][5]_i_5_n_0 ),
        .I5(\cid[26][0]_i_4_n_0 ),
        .O(\cid[26][0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair391" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \cid[26][0]_i_3 
       (.I0(obs_cid[132]),
        .I1(\cid[26][4]_i_5_n_0 ),
        .I2(\cid[26][0]_i_4_n_0 ),
        .O(\cid[26][0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h5D555D557F554C55)) 
    \cid[26][0]_i_4 
       (.I0(\cid[26][0]_i_5_n_0 ),
        .I1(\cid[27][5]_i_4_n_0 ),
        .I2(obs_unrooted[26]),
        .I3(\cid[26][5]_i_10_n_0 ),
        .I4(obs_cid[162]),
        .I5(\cid[26][4]_i_12_n_0 ),
        .O(\cid[26][0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00110000F0BBFFFF)) 
    \cid[26][0]_i_5 
       (.I0(\cid[26][4]_i_13_n_0 ),
        .I1(obs_cid[48]),
        .I2(obs_unrooted[26]),
        .I3(\cid[8][5]_i_4_n_0 ),
        .I4(\ptr[8][1]_i_3_n_0 ),
        .I5(obs_cid[156]),
        .O(\cid[26][0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFBAAFBFBFBFBFBAA)) 
    \cid[26][1]_i_1 
       (.I0(\cid[29][4]_i_2_n_0 ),
        .I1(\cid[26][5]_i_6_n_0 ),
        .I2(\cid[26][1]_i_2_n_0 ),
        .I3(\cid[26][4]_i_4_n_0 ),
        .I4(\cid[26][1]_i_3_n_0 ),
        .I5(obs_cid[133]),
        .O(\cid[26][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFCF7444FFFF0000)) 
    \cid[26][1]_i_2 
       (.I0(obs_unrooted[26]),
        .I1(\cid[26][3]_i_4_n_0 ),
        .I2(\cid[26][4]_i_5_n_0 ),
        .I3(obs_cid[133]),
        .I4(\cid[26][1]_i_4_n_0 ),
        .I5(\cid[26][5]_i_5_n_0 ),
        .O(\cid[26][1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair149" *) 
  LUT5 #(
    .INIT(32'h00001115)) 
    \cid[26][1]_i_3 
       (.I0(obs_cid[136]),
        .I1(obs_cid[135]),
        .I2(obs_cid[133]),
        .I3(obs_cid[134]),
        .I4(obs_cid[137]),
        .O(\cid[26][1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAEAABFAAAEAA8CAA)) 
    \cid[26][1]_i_4 
       (.I0(\cid[26][1]_i_5_n_0 ),
        .I1(\cid[27][5]_i_4_n_0 ),
        .I2(obs_unrooted[26]),
        .I3(\cid[26][5]_i_10_n_0 ),
        .I4(\cid[26][4]_i_12_n_0 ),
        .I5(obs_cid[163]),
        .O(\cid[26][1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hDCCCDCCCDFCCD0CC)) 
    \cid[26][1]_i_5 
       (.I0(obs_unrooted[26]),
        .I1(obs_cid[157]),
        .I2(\cid[8][5]_i_4_n_0 ),
        .I3(\ptr[8][1]_i_3_n_0 ),
        .I4(obs_cid[49]),
        .I5(\cid[26][4]_i_13_n_0 ),
        .O(\cid[26][1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFEEEEEAAE)) 
    \cid[26][2]_i_1 
       (.I0(\cid[26][2]_i_2_n_0 ),
        .I1(\FSM_sequential_stage_reg[1]_rep__4_n_0 ),
        .I2(obs_cid[134]),
        .I3(\cid[26][2]_i_3_n_0 ),
        .I4(\cid[26][3]_i_4_n_0 ),
        .I5(\cid[29][4]_i_2_n_0 ),
        .O(\cid[26][2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFC00FF0074000000)) 
    \cid[26][2]_i_2 
       (.I0(obs_unrooted[26]),
        .I1(\cid[26][3]_i_4_n_0 ),
        .I2(\cid[26][2]_i_4_n_0 ),
        .I3(\cid[26][5]_i_6_n_0 ),
        .I4(\cid[26][5]_i_5_n_0 ),
        .I5(\cid[26][2]_i_5_n_0 ),
        .O(\cid[26][2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair136" *) 
  LUT5 #(
    .INIT(32'h00000015)) 
    \cid[26][2]_i_3 
       (.I0(obs_cid[137]),
        .I1(obs_cid[134]),
        .I2(obs_cid[135]),
        .I3(obs_cid[136]),
        .I4(obs_cid[133]),
        .O(\cid[26][2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair260" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \cid[26][2]_i_4 
       (.I0(obs_cid[134]),
        .I1(\cid[26][4]_i_5_n_0 ),
        .I2(\cid[26][2]_i_5_n_0 ),
        .O(\cid[26][2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAEAABFAAAEAA8CAA)) 
    \cid[26][2]_i_5 
       (.I0(\cid[26][2]_i_6_n_0 ),
        .I1(\cid[27][5]_i_4_n_0 ),
        .I2(obs_unrooted[26]),
        .I3(\cid[26][5]_i_10_n_0 ),
        .I4(\cid[26][4]_i_12_n_0 ),
        .I5(obs_cid[164]),
        .O(\cid[26][2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hDCCCDCCCDFCCD0CC)) 
    \cid[26][2]_i_6 
       (.I0(obs_unrooted[26]),
        .I1(obs_cid[158]),
        .I2(\cid[8][5]_i_4_n_0 ),
        .I3(\ptr[8][1]_i_3_n_0 ),
        .I4(obs_cid[50]),
        .I5(\cid[26][4]_i_13_n_0 ),
        .O(\cid[26][2]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFFFEFFFEAFAE)) 
    \cid[26][3]_i_1 
       (.I0(\cid[29][4]_i_2_n_0 ),
        .I1(\cid[26][3]_i_2_n_0 ),
        .I2(\FSM_sequential_stage_reg[1]_rep__0_n_0 ),
        .I3(\cid[26][3]_i_3_n_0 ),
        .I4(\cid[26][3]_i_4_n_0 ),
        .I5(\cid[26][3]_i_5_n_0 ),
        .O(\cid[26][3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \cid[26][3]_i_2 
       (.I0(obs_cid[157]),
        .I1(obs_cid[158]),
        .I2(obs_cid[161]),
        .I3(obs_cid[160]),
        .I4(obs_cid[159]),
        .I5(obs_cid[156]),
        .O(\cid[26][3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFCF7444FFFF0000)) 
    \cid[26][3]_i_3 
       (.I0(obs_unrooted[26]),
        .I1(\cid[26][3]_i_4_n_0 ),
        .I2(\cid[26][4]_i_5_n_0 ),
        .I3(obs_cid[135]),
        .I4(\cid[26][3]_i_6_n_0 ),
        .I5(\cid[26][5]_i_5_n_0 ),
        .O(\cid[26][3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \cid[26][3]_i_4 
       (.I0(obs_cid[132]),
        .I1(obs_cid[137]),
        .I2(obs_cid[135]),
        .I3(obs_cid[133]),
        .I4(obs_cid[136]),
        .I5(obs_cid[134]),
        .O(\cid[26][3]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair136" *) 
  LUT5 #(
    .INIT(32'h3C3C3C38)) 
    \cid[26][3]_i_5 
       (.I0(obs_cid[137]),
        .I1(obs_cid[134]),
        .I2(obs_cid[135]),
        .I3(obs_cid[136]),
        .I4(obs_cid[133]),
        .O(\cid[26][3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAEAABFAAAEAA8CAA)) 
    \cid[26][3]_i_6 
       (.I0(\cid[26][3]_i_7_n_0 ),
        .I1(\cid[27][5]_i_4_n_0 ),
        .I2(obs_unrooted[26]),
        .I3(\cid[26][5]_i_10_n_0 ),
        .I4(\cid[26][4]_i_12_n_0 ),
        .I5(obs_cid[165]),
        .O(\cid[26][3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hDCCCDCCCDFCCD0CC)) 
    \cid[26][3]_i_7 
       (.I0(obs_unrooted[26]),
        .I1(obs_cid[159]),
        .I2(\cid[8][5]_i_4_n_0 ),
        .I3(\ptr[8][1]_i_3_n_0 ),
        .I4(obs_cid[51]),
        .I5(\cid[26][4]_i_13_n_0 ),
        .O(\cid[26][3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFBFBFBFBAAFBFBAA)) 
    \cid[26][4]_i_1 
       (.I0(\cid[29][4]_i_2_n_0 ),
        .I1(\cid[26][5]_i_6_n_0 ),
        .I2(\cid[26][4]_i_2_n_0 ),
        .I3(\cid[26][4]_i_3_n_0 ),
        .I4(obs_cid[136]),
        .I5(\cid[26][4]_i_4_n_0 ),
        .O(\cid[26][4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair261" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    \cid[26][4]_i_10 
       (.I0(\cid[26][3]_i_6_n_0 ),
        .I1(obs_cid[135]),
        .I2(\cid[26][4]_i_6_n_0 ),
        .I3(obs_cid[136]),
        .O(\cid[26][4]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hDCCCDCCCDFCCD0CC)) 
    \cid[26][4]_i_11 
       (.I0(obs_unrooted[26]),
        .I1(obs_cid[160]),
        .I2(\cid[8][5]_i_4_n_0 ),
        .I3(\ptr[8][1]_i_3_n_0 ),
        .I4(obs_cid[52]),
        .I5(\cid[26][4]_i_13_n_0 ),
        .O(\cid[26][4]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT5 #(
    .INIT(32'h8E88EEEE)) 
    \cid[26][4]_i_12 
       (.I0(obs_cid[167]),
        .I1(\cid[26][5]_i_9_n_0 ),
        .I2(\cid[26][4]_i_11_n_0 ),
        .I3(obs_cid[166]),
        .I4(\cid[26][4]_i_14_n_0 ),
        .O(\cid[26][4]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT5 #(
    .INIT(32'hB0FB00F0)) 
    \cid[26][4]_i_13 
       (.I0(obs_cid[52]),
        .I1(obs_cid[160]),
        .I2(obs_cid[53]),
        .I3(obs_cid[161]),
        .I4(\cid[26][4]_i_15_n_0 ),
        .O(\cid[26][4]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFB000FFB0)) 
    \cid[26][4]_i_14 
       (.I0(\cid[26][2]_i_6_n_0 ),
        .I1(obs_cid[164]),
        .I2(\cid[26][4]_i_16_n_0 ),
        .I3(\cid[26][3]_i_7_n_0 ),
        .I4(obs_cid[165]),
        .I5(\cid[26][4]_i_17_n_0 ),
        .O(\cid[26][4]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hFFB0FF00FFFFFFB0)) 
    \cid[26][4]_i_15 
       (.I0(obs_cid[50]),
        .I1(obs_cid[158]),
        .I2(\cid[26][4]_i_18_n_0 ),
        .I3(\cid[26][4]_i_19_n_0 ),
        .I4(obs_cid[51]),
        .I5(obs_cid[159]),
        .O(\cid[26][4]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h10F110F1FFFF10F1)) 
    \cid[26][4]_i_16 
       (.I0(obs_cid[162]),
        .I1(\cid[26][0]_i_5_n_0 ),
        .I2(\cid[26][1]_i_5_n_0 ),
        .I3(obs_cid[163]),
        .I4(\cid[26][2]_i_6_n_0 ),
        .I5(obs_cid[164]),
        .O(\cid[26][4]_i_16_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cid[26][4]_i_17 
       (.I0(\cid[26][4]_i_11_n_0 ),
        .I1(obs_cid[166]),
        .O(\cid[26][4]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hBBFB00F0FFFFBBFB)) 
    \cid[26][4]_i_18 
       (.I0(obs_cid[48]),
        .I1(obs_cid[156]),
        .I2(obs_cid[50]),
        .I3(obs_cid[158]),
        .I4(obs_cid[49]),
        .I5(obs_cid[157]),
        .O(\cid[26][4]_i_18_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cid[26][4]_i_19 
       (.I0(obs_cid[52]),
        .I1(obs_cid[160]),
        .O(\cid[26][4]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hFFCF7444FFFF0000)) 
    \cid[26][4]_i_2 
       (.I0(obs_unrooted[26]),
        .I1(\cid[26][3]_i_4_n_0 ),
        .I2(\cid[26][4]_i_5_n_0 ),
        .I3(obs_cid[136]),
        .I4(\cid[26][4]_i_6_n_0 ),
        .I5(\cid[26][5]_i_5_n_0 ),
        .O(\cid[26][4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair149" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cid[26][4]_i_3 
       (.I0(obs_cid[135]),
        .I1(obs_cid[134]),
        .O(\cid[26][4]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair289" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \cid[26][4]_i_4 
       (.I0(\cid[26][3]_i_4_n_0 ),
        .I1(\FSM_sequential_stage_reg[1]_rep__4_n_0 ),
        .O(\cid[26][4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hD4D4D4D4DDD4DDDD)) 
    \cid[26][4]_i_5 
       (.I0(obs_cid[137]),
        .I1(\cid[26][5]_i_3_n_0 ),
        .I2(\cid[26][4]_i_7_n_0 ),
        .I3(\cid[26][4]_i_8_n_0 ),
        .I4(\cid[26][4]_i_9_n_0 ),
        .I5(\cid[26][4]_i_10_n_0 ),
        .O(\cid[26][4]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAEAABFAAAEAA8CAA)) 
    \cid[26][4]_i_6 
       (.I0(\cid[26][4]_i_11_n_0 ),
        .I1(\cid[27][5]_i_4_n_0 ),
        .I2(obs_unrooted[26]),
        .I3(\cid[26][5]_i_10_n_0 ),
        .I4(\cid[26][4]_i_12_n_0 ),
        .I5(obs_cid[166]),
        .O(\cid[26][4]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair261" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cid[26][4]_i_7 
       (.I0(\cid[26][4]_i_6_n_0 ),
        .I1(obs_cid[136]),
        .O(\cid[26][4]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair260" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    \cid[26][4]_i_8 
       (.I0(obs_cid[135]),
        .I1(\cid[26][3]_i_6_n_0 ),
        .I2(obs_cid[134]),
        .I3(\cid[26][2]_i_5_n_0 ),
        .O(\cid[26][4]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hBB2BFFFFBB2BBB2B)) 
    \cid[26][4]_i_9 
       (.I0(obs_cid[133]),
        .I1(\cid[26][1]_i_4_n_0 ),
        .I2(\cid[26][0]_i_4_n_0 ),
        .I3(obs_cid[132]),
        .I4(\cid[26][2]_i_5_n_0 ),
        .I5(obs_cid[134]),
        .O(\cid[26][4]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAABAAAAAAA)) 
    \cid[26][5]_i_1 
       (.I0(\cid[25][5]_i_1_n_0 ),
        .I1(\^obs_ptr [80]),
        .I2(\^obs_ptr [78]),
        .I3(\^obs_ptr [79]),
        .I4(stage__0[0]),
        .I5(\FSM_sequential_stage_reg[1]_rep__2_n_0 ),
        .O(\cid[26][5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4444444440444444)) 
    \cid[26][5]_i_10 
       (.I0(obs_growth[68]),
        .I1(obs_growth[69]),
        .I2(obs_unrooted[26]),
        .I3(\cid[8][5]_i_4_n_0 ),
        .I4(obs_growth[9]),
        .I5(obs_growth[8]),
        .O(\cid[26][5]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT4 #(
    .INIT(16'h0040)) 
    \cid[26][5]_i_11 
       (.I0(obs_growth[8]),
        .I1(obs_growth[9]),
        .I2(\cid[8][5]_i_4_n_0 ),
        .I3(obs_unrooted[26]),
        .O(\cid[26][5]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFF8AA0000)) 
    \cid[26][5]_i_2 
       (.I0(\cid[26][5]_i_3_n_0 ),
        .I1(obs_cid[137]),
        .I2(\cid[26][5]_i_4_n_0 ),
        .I3(\cid[26][5]_i_5_n_0 ),
        .I4(\cid[26][5]_i_6_n_0 ),
        .I5(\cid[26][5]_i_7_n_0 ),
        .O(\cid[26][5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h40FF000040FF40FF)) 
    \cid[26][5]_i_3 
       (.I0(obs_unrooted[26]),
        .I1(\cid[27][5]_i_4_n_0 ),
        .I2(\cid[26][5]_i_8_n_0 ),
        .I3(\cid[26][5]_i_9_n_0 ),
        .I4(obs_cid[167]),
        .I5(\cid[26][5]_i_10_n_0 ),
        .O(\cid[26][5]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair400" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cid[26][5]_i_4 
       (.I0(\cid[26][3]_i_4_n_0 ),
        .I1(obs_unrooted[26]),
        .O(\cid[26][5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0400040404040404)) 
    \cid[26][5]_i_5 
       (.I0(obs_growth[66]),
        .I1(obs_growth[67]),
        .I2(\cid[26][5]_i_11_n_0 ),
        .I3(obs_unrooted[26]),
        .I4(\cid[27][5]_i_4_n_0 ),
        .I5(\cid[26][5]_i_8_n_0 ),
        .O(\cid[26][5]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair290" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \cid[26][5]_i_6 
       (.I0(\FSM_sequential_stage_reg[1]_rep__4_n_0 ),
        .I1(\cid[26][3]_i_2_n_0 ),
        .O(\cid[26][5]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFBFEAAAAAAAAA)) 
    \cid[26][5]_i_7 
       (.I0(\cid[29][4]_i_2_n_0 ),
        .I1(\cid[26][4]_i_3_n_0 ),
        .I2(obs_cid[136]),
        .I3(obs_cid[137]),
        .I4(\cid[26][3]_i_4_n_0 ),
        .I5(\FSM_sequential_stage_reg[1]_rep__4_n_0 ),
        .O(\cid[26][5]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair119" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cid[26][5]_i_8 
       (.I0(obs_growth[69]),
        .I1(obs_growth[68]),
        .O(\cid[26][5]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h00000B00FBFFFBFF)) 
    \cid[26][5]_i_9 
       (.I0(obs_unrooted[26]),
        .I1(\cid[8][5]_i_4_n_0 ),
        .I2(obs_growth[8]),
        .I3(obs_growth[9]),
        .I4(obs_cid[53]),
        .I5(obs_cid[161]),
        .O(\cid[26][5]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFF888FF88F8)) 
    \cid[27][0]_i_1 
       (.I0(stage__0[0]),
        .I1(stage__0[2]),
        .I2(\cid[27][5]_i_4_n_0 ),
        .I3(\FSM_sequential_stage_reg[1]_rep__0_n_0 ),
        .I4(\cid[27][0]_i_2_n_0 ),
        .I5(obs_cid[138]),
        .O(\cid[27][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h72220000FFAFFFFF)) 
    \cid[27][0]_i_2 
       (.I0(\cid[27][3]_i_3_n_0 ),
        .I1(obs_unrooted[27]),
        .I2(\cid[27][4]_i_6_n_0 ),
        .I3(obs_cid[138]),
        .I4(\cid[27][2]_i_2_n_0 ),
        .I5(\cid[27][0]_i_3_n_0 ),
        .O(\cid[27][0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hA2AAA2AA80AAB3AA)) 
    \cid[27][0]_i_3 
       (.I0(\cid[27][0]_i_4_n_0 ),
        .I1(\cid[28][3]_i_2_n_0 ),
        .I2(obs_unrooted[27]),
        .I3(\cid[27][2]_i_9_n_0 ),
        .I4(obs_cid[168]),
        .I5(\cid[27][2]_i_10_n_0 ),
        .O(\cid[27][0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h030000008BBBFFFF)) 
    \cid[27][0]_i_4 
       (.I0(obs_unrooted[27]),
        .I1(\cid[26][3]_i_2_n_0 ),
        .I2(obs_cid[156]),
        .I3(\cid[27][2]_i_12_n_0 ),
        .I4(\cid[26][5]_i_8_n_0 ),
        .I5(obs_cid[162]),
        .O(\cid[27][0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFBAAFBFBFBFBFBAA)) 
    \cid[27][1]_i_1 
       (.I0(\cid[29][4]_i_2_n_0 ),
        .I1(\cid[27][4]_i_2_n_0 ),
        .I2(\cid[27][1]_i_2_n_0 ),
        .I3(\cid[27][4]_i_5_n_0 ),
        .I4(\cid[27][1]_i_3_n_0 ),
        .I5(obs_cid[139]),
        .O(\cid[27][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFAF7222FFFF0000)) 
    \cid[27][1]_i_2 
       (.I0(\cid[27][3]_i_3_n_0 ),
        .I1(obs_unrooted[27]),
        .I2(\cid[27][4]_i_6_n_0 ),
        .I3(obs_cid[139]),
        .I4(\cid[27][1]_i_4_n_0 ),
        .I5(\cid[27][2]_i_2_n_0 ),
        .O(\cid[27][1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair150" *) 
  LUT5 #(
    .INIT(32'h00001115)) 
    \cid[27][1]_i_3 
       (.I0(obs_cid[142]),
        .I1(obs_cid[141]),
        .I2(obs_cid[139]),
        .I3(obs_cid[140]),
        .I4(obs_cid[143]),
        .O(\cid[27][1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAEAABFAAAEAA8CAA)) 
    \cid[27][1]_i_4 
       (.I0(\cid[27][1]_i_5_n_0 ),
        .I1(\cid[28][3]_i_2_n_0 ),
        .I2(obs_unrooted[27]),
        .I3(\cid[27][2]_i_9_n_0 ),
        .I4(\cid[27][2]_i_10_n_0 ),
        .I5(obs_cid[169]),
        .O(\cid[27][1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hDFCCDCCCD0CCDCCC)) 
    \cid[27][1]_i_5 
       (.I0(obs_unrooted[27]),
        .I1(obs_cid[163]),
        .I2(\cid[26][3]_i_2_n_0 ),
        .I3(\cid[26][5]_i_8_n_0 ),
        .I4(\cid[27][2]_i_12_n_0 ),
        .I5(obs_cid[157]),
        .O(\cid[27][1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF11100000)) 
    \cid[27][2]_i_1 
       (.I0(\cid[27][5]_i_4_n_0 ),
        .I1(\FSM_sequential_stage_reg[1]_rep_n_0 ),
        .I2(\cid[27][2]_i_2_n_0 ),
        .I3(\cid[27][2]_i_3_n_0 ),
        .I4(\cid[27][2]_i_4_n_0 ),
        .I5(\cid[27][2]_i_5_n_0 ),
        .O(\cid[27][2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hE8E8E8E8FCE8FCFC)) 
    \cid[27][2]_i_10 
       (.I0(\cid[27][2]_i_13_n_0 ),
        .I1(obs_cid[173]),
        .I2(\cid[27][5]_i_7_n_0 ),
        .I3(\cid[27][2]_i_14_n_0 ),
        .I4(\cid[27][2]_i_15_n_0 ),
        .I5(\cid[27][2]_i_16_n_0 ),
        .O(\cid[27][2]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair137" *) 
  LUT5 #(
    .INIT(32'h00000015)) 
    \cid[27][2]_i_11 
       (.I0(obs_cid[143]),
        .I1(obs_cid[140]),
        .I2(obs_cid[141]),
        .I3(obs_cid[142]),
        .I4(obs_cid[139]),
        .O(\cid[27][2]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'h4D44DDDD)) 
    \cid[27][2]_i_12 
       (.I0(obs_cid[161]),
        .I1(obs_cid[167]),
        .I2(obs_cid[160]),
        .I3(obs_cid[166]),
        .I4(\cid[27][2]_i_17_n_0 ),
        .O(\cid[27][2]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair266" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cid[27][2]_i_13 
       (.I0(obs_cid[172]),
        .I1(\cid[27][4]_i_12_n_0 ),
        .O(\cid[27][2]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \cid[27][2]_i_14 
       (.I0(\cid[27][2]_i_8_n_0 ),
        .I1(obs_cid[170]),
        .I2(\cid[27][3]_i_6_n_0 ),
        .I3(obs_cid[171]),
        .O(\cid[27][2]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h10F110F1FFFF10F1)) 
    \cid[27][2]_i_15 
       (.I0(obs_cid[168]),
        .I1(\cid[27][0]_i_4_n_0 ),
        .I2(\cid[27][1]_i_5_n_0 ),
        .I3(obs_cid[169]),
        .I4(\cid[27][2]_i_8_n_0 ),
        .I5(obs_cid[170]),
        .O(\cid[27][2]_i_15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair266" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    \cid[27][2]_i_16 
       (.I0(obs_cid[172]),
        .I1(\cid[27][4]_i_12_n_0 ),
        .I2(obs_cid[171]),
        .I3(\cid[27][3]_i_6_n_0 ),
        .O(\cid[27][2]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFB0BB0000)) 
    \cid[27][2]_i_17 
       (.I0(obs_cid[159]),
        .I1(obs_cid[165]),
        .I2(obs_cid[158]),
        .I3(obs_cid[164]),
        .I4(\cid[27][2]_i_18_n_0 ),
        .I5(\cid[27][2]_i_19_n_0 ),
        .O(\cid[27][2]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hBB2BFFFFBB2BBB2B)) 
    \cid[27][2]_i_18 
       (.I0(obs_cid[157]),
        .I1(obs_cid[163]),
        .I2(obs_cid[162]),
        .I3(obs_cid[156]),
        .I4(obs_cid[164]),
        .I5(obs_cid[158]),
        .O(\cid[27][2]_i_18_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair315" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    \cid[27][2]_i_19 
       (.I0(obs_cid[165]),
        .I1(obs_cid[159]),
        .I2(obs_cid[166]),
        .I3(obs_cid[160]),
        .O(\cid[27][2]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h0000000040444444)) 
    \cid[27][2]_i_2 
       (.I0(obs_growth[70]),
        .I1(obs_growth[71]),
        .I2(obs_unrooted[27]),
        .I3(\cid[28][3]_i_2_n_0 ),
        .I4(\cid[27][2]_i_6_n_0 ),
        .I5(\cid[27][2]_i_7_n_0 ),
        .O(\cid[27][2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAEAABFAAAEAA8CAA)) 
    \cid[27][2]_i_3 
       (.I0(\cid[27][2]_i_8_n_0 ),
        .I1(\cid[28][3]_i_2_n_0 ),
        .I2(obs_unrooted[27]),
        .I3(\cid[27][2]_i_9_n_0 ),
        .I4(\cid[27][2]_i_10_n_0 ),
        .I5(obs_cid[170]),
        .O(\cid[27][2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFBFBF0FFF8F8F)) 
    \cid[27][2]_i_4 
       (.I0(obs_cid[140]),
        .I1(\cid[27][4]_i_6_n_0 ),
        .I2(\cid[27][2]_i_2_n_0 ),
        .I3(obs_unrooted[27]),
        .I4(\cid[27][3]_i_3_n_0 ),
        .I5(\cid[27][2]_i_3_n_0 ),
        .O(\cid[27][2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFF8F8FF88888888)) 
    \cid[27][2]_i_5 
       (.I0(stage__0[0]),
        .I1(stage__0[2]),
        .I2(\cid[27][3]_i_3_n_0 ),
        .I3(\cid[27][2]_i_11_n_0 ),
        .I4(obs_cid[140]),
        .I5(\FSM_sequential_stage_reg[1]_rep_n_0 ),
        .O(\cid[27][2]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair120" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cid[27][2]_i_6 
       (.I0(obs_growth[73]),
        .I1(obs_growth[72]),
        .O(\cid[27][2]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT4 #(
    .INIT(16'h0040)) 
    \cid[27][2]_i_7 
       (.I0(obs_growth[68]),
        .I1(obs_growth[69]),
        .I2(\cid[26][3]_i_2_n_0 ),
        .I3(obs_unrooted[27]),
        .O(\cid[27][2]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hDFCCDCCCD0CCDCCC)) 
    \cid[27][2]_i_8 
       (.I0(obs_unrooted[27]),
        .I1(obs_cid[164]),
        .I2(\cid[26][3]_i_2_n_0 ),
        .I3(\cid[26][5]_i_8_n_0 ),
        .I4(\cid[27][2]_i_12_n_0 ),
        .I5(obs_cid[158]),
        .O(\cid[27][2]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h4444444440444444)) 
    \cid[27][2]_i_9 
       (.I0(obs_growth[72]),
        .I1(obs_growth[73]),
        .I2(obs_unrooted[27]),
        .I3(\cid[26][3]_i_2_n_0 ),
        .I4(obs_growth[69]),
        .I5(obs_growth[68]),
        .O(\cid[27][2]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFFFEFFFEAFAE)) 
    \cid[27][3]_i_1 
       (.I0(\cid[29][4]_i_2_n_0 ),
        .I1(\cid[27][5]_i_4_n_0 ),
        .I2(\FSM_sequential_stage_reg[1]_rep__0_n_0 ),
        .I3(\cid[27][3]_i_2_n_0 ),
        .I4(\cid[27][3]_i_3_n_0 ),
        .I5(\cid[27][3]_i_4_n_0 ),
        .O(\cid[27][3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFAF7222FFFF0000)) 
    \cid[27][3]_i_2 
       (.I0(\cid[27][3]_i_3_n_0 ),
        .I1(obs_unrooted[27]),
        .I2(\cid[27][4]_i_6_n_0 ),
        .I3(obs_cid[141]),
        .I4(\cid[27][3]_i_5_n_0 ),
        .I5(\cid[27][2]_i_2_n_0 ),
        .O(\cid[27][3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \cid[27][3]_i_3 
       (.I0(obs_cid[138]),
        .I1(obs_cid[143]),
        .I2(obs_cid[141]),
        .I3(obs_cid[139]),
        .I4(obs_cid[142]),
        .I5(obs_cid[140]),
        .O(\cid[27][3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair137" *) 
  LUT5 #(
    .INIT(32'h3C3C3C38)) 
    \cid[27][3]_i_4 
       (.I0(obs_cid[143]),
        .I1(obs_cid[140]),
        .I2(obs_cid[141]),
        .I3(obs_cid[142]),
        .I4(obs_cid[139]),
        .O(\cid[27][3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAEAABFAAAEAA8CAA)) 
    \cid[27][3]_i_5 
       (.I0(\cid[27][3]_i_6_n_0 ),
        .I1(\cid[28][3]_i_2_n_0 ),
        .I2(obs_unrooted[27]),
        .I3(\cid[27][2]_i_9_n_0 ),
        .I4(\cid[27][2]_i_10_n_0 ),
        .I5(obs_cid[171]),
        .O(\cid[27][3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hDFCCDCCCD0CCDCCC)) 
    \cid[27][3]_i_6 
       (.I0(obs_unrooted[27]),
        .I1(obs_cid[165]),
        .I2(\cid[26][3]_i_2_n_0 ),
        .I3(\cid[26][5]_i_8_n_0 ),
        .I4(\cid[27][2]_i_12_n_0 ),
        .I5(obs_cid[159]),
        .O(\cid[27][3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFBFBFBFBAAFBFBAA)) 
    \cid[27][4]_i_1 
       (.I0(\cid[29][4]_i_2_n_0 ),
        .I1(\cid[27][4]_i_2_n_0 ),
        .I2(\cid[27][4]_i_3_n_0 ),
        .I3(\cid[27][4]_i_4_n_0 ),
        .I4(obs_cid[142]),
        .I5(\cid[27][4]_i_5_n_0 ),
        .O(\cid[27][4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBBB2FFFFBBB2BBB2)) 
    \cid[27][4]_i_10 
       (.I0(obs_cid[139]),
        .I1(\cid[27][1]_i_4_n_0 ),
        .I2(\cid[27][0]_i_3_n_0 ),
        .I3(obs_cid[138]),
        .I4(\cid[27][2]_i_3_n_0 ),
        .I5(obs_cid[140]),
        .O(\cid[27][4]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair265" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    \cid[27][4]_i_11 
       (.I0(\cid[27][3]_i_5_n_0 ),
        .I1(obs_cid[141]),
        .I2(\cid[27][4]_i_7_n_0 ),
        .I3(obs_cid[142]),
        .O(\cid[27][4]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hDFCCDCCCD0CCDCCC)) 
    \cid[27][4]_i_12 
       (.I0(obs_unrooted[27]),
        .I1(obs_cid[166]),
        .I2(\cid[26][3]_i_2_n_0 ),
        .I3(\cid[26][5]_i_8_n_0 ),
        .I4(\cid[27][2]_i_12_n_0 ),
        .I5(obs_cid[160]),
        .O(\cid[27][4]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair380" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \cid[27][4]_i_2 
       (.I0(\FSM_sequential_stage_reg[1]_rep_n_0 ),
        .I1(\cid[27][5]_i_4_n_0 ),
        .O(\cid[27][4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFAF7222FFFF0000)) 
    \cid[27][4]_i_3 
       (.I0(\cid[27][3]_i_3_n_0 ),
        .I1(obs_unrooted[27]),
        .I2(\cid[27][4]_i_6_n_0 ),
        .I3(obs_cid[142]),
        .I4(\cid[27][4]_i_7_n_0 ),
        .I5(\cid[27][2]_i_2_n_0 ),
        .O(\cid[27][4]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair150" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cid[27][4]_i_4 
       (.I0(obs_cid[141]),
        .I1(obs_cid[140]),
        .O(\cid[27][4]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair239" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \cid[27][4]_i_5 
       (.I0(\cid[27][3]_i_3_n_0 ),
        .I1(\FSM_sequential_stage_reg[1]_rep_n_0 ),
        .O(\cid[27][4]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hD4D4D4D4DDD4DDDD)) 
    \cid[27][4]_i_6 
       (.I0(obs_cid[143]),
        .I1(\cid[27][5]_i_6_n_0 ),
        .I2(\cid[27][4]_i_8_n_0 ),
        .I3(\cid[27][4]_i_9_n_0 ),
        .I4(\cid[27][4]_i_10_n_0 ),
        .I5(\cid[27][4]_i_11_n_0 ),
        .O(\cid[27][4]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAEAABFAAAEAA8CAA)) 
    \cid[27][4]_i_7 
       (.I0(\cid[27][4]_i_12_n_0 ),
        .I1(\cid[28][3]_i_2_n_0 ),
        .I2(obs_unrooted[27]),
        .I3(\cid[27][2]_i_9_n_0 ),
        .I4(\cid[27][2]_i_10_n_0 ),
        .I5(obs_cid[172]),
        .O(\cid[27][4]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair265" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cid[27][4]_i_8 
       (.I0(\cid[27][4]_i_7_n_0 ),
        .I1(obs_cid[142]),
        .O(\cid[27][4]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \cid[27][4]_i_9 
       (.I0(obs_cid[141]),
        .I1(\cid[27][3]_i_5_n_0 ),
        .I2(obs_cid[140]),
        .I3(\cid[27][2]_i_3_n_0 ),
        .O(\cid[27][4]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAEAAAAAA)) 
    \cid[27][5]_i_1 
       (.I0(\cid[25][5]_i_1_n_0 ),
        .I1(\^obs_ptr [81]),
        .I2(\^obs_ptr [83]),
        .I3(\^obs_ptr [82]),
        .I4(stage__0[0]),
        .I5(\FSM_sequential_stage_reg[1]_rep__2_n_0 ),
        .O(\cid[27][5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF01F101F101F1)) 
    \cid[27][5]_i_2 
       (.I0(\cid[27][5]_i_3_n_0 ),
        .I1(\cid[27][5]_i_4_n_0 ),
        .I2(\FSM_sequential_stage_reg[1]_rep__0_n_0 ),
        .I3(\cid[27][5]_i_5_n_0 ),
        .I4(stage__0[2]),
        .I5(stage__0[0]),
        .O(\cid[27][5]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00D0DFDF)) 
    \cid[27][5]_i_3 
       (.I0(\cid[27][3]_i_3_n_0 ),
        .I1(obs_unrooted[27]),
        .I2(\cid[27][2]_i_2_n_0 ),
        .I3(obs_cid[143]),
        .I4(\cid[27][5]_i_6_n_0 ),
        .O(\cid[27][5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \cid[27][5]_i_4 
       (.I0(obs_cid[163]),
        .I1(obs_cid[164]),
        .I2(obs_cid[167]),
        .I3(obs_cid[166]),
        .I4(obs_cid[165]),
        .I5(obs_cid[162]),
        .O(\cid[27][5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h080077FF880077FF)) 
    \cid[27][5]_i_5 
       (.I0(obs_cid[140]),
        .I1(obs_cid[142]),
        .I2(obs_cid[139]),
        .I3(obs_cid[141]),
        .I4(obs_cid[143]),
        .I5(obs_cid[138]),
        .O(\cid[27][5]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h75005555)) 
    \cid[27][5]_i_6 
       (.I0(\cid[27][5]_i_7_n_0 ),
        .I1(obs_unrooted[27]),
        .I2(\cid[28][3]_i_2_n_0 ),
        .I3(obs_cid[173]),
        .I4(\cid[27][2]_i_9_n_0 ),
        .O(\cid[27][5]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0F0F0F0F0DFF0F0F)) 
    \cid[27][5]_i_7 
       (.I0(\cid[26][3]_i_2_n_0 ),
        .I1(obs_unrooted[27]),
        .I2(obs_cid[167]),
        .I3(obs_cid[161]),
        .I4(obs_growth[69]),
        .I5(obs_growth[68]),
        .O(\cid[27][5]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF000E0000)) 
    \cid[28][0]_i_1 
       (.I0(\cid[28][0]_i_2_n_0 ),
        .I1(\cid[28][5]_i_5_n_0 ),
        .I2(\cid[28][3]_i_2_n_0 ),
        .I3(\FSM_sequential_stage_reg[1]_rep_n_0 ),
        .I4(\cid[28][0]_i_3_n_0 ),
        .I5(\cid[28][0]_i_4_n_0 ),
        .O(\cid[28][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2FAF2F0F2F052F0F)) 
    \cid[28][0]_i_2 
       (.I0(\cid[28][5]_i_9_n_0 ),
        .I1(obs_unrooted[28]),
        .I2(\cid[28][0]_i_5_n_0 ),
        .I3(\cid[29][5]_i_4_n_0 ),
        .I4(\cid[28][1]_i_6_n_0 ),
        .I5(obs_cid[174]),
        .O(\cid[28][0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEFEF0FFF4F4F)) 
    \cid[28][0]_i_3 
       (.I0(\cid[28][4]_i_5_n_0 ),
        .I1(obs_cid[144]),
        .I2(\cid[28][5]_i_5_n_0 ),
        .I3(obs_unrooted[28]),
        .I4(\cid[28][3]_i_4_n_0 ),
        .I5(\cid[28][0]_i_2_n_0 ),
        .O(\cid[28][0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair291" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \cid[28][0]_i_4 
       (.I0(stage__0[0]),
        .I1(stage__0[2]),
        .I2(obs_cid[144]),
        .I3(\FSM_sequential_stage_reg[1]_rep_n_0 ),
        .O(\cid[28][0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00440000F077FFFF)) 
    \cid[28][0]_i_5 
       (.I0(obs_cid[162]),
        .I1(\cid[28][1]_i_7_n_0 ),
        .I2(obs_unrooted[28]),
        .I3(\cid[27][5]_i_4_n_0 ),
        .I4(\cid[27][2]_i_6_n_0 ),
        .I5(obs_cid[168]),
        .O(\cid[28][0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFE000)) 
    \cid[28][1]_i_1 
       (.I0(\cid[28][1]_i_2_n_0 ),
        .I1(\cid[28][5]_i_5_n_0 ),
        .I2(\cid[28][5]_i_6_n_0 ),
        .I3(\cid[28][1]_i_3_n_0 ),
        .I4(\cid[28][1]_i_4_n_0 ),
        .I5(\cid[29][4]_i_2_n_0 ),
        .O(\cid[28][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h011F011F011FFFFF)) 
    \cid[28][1]_i_10 
       (.I0(obs_cid[174]),
        .I1(\cid[28][0]_i_5_n_0 ),
        .I2(obs_cid[175]),
        .I3(\cid[28][1]_i_5_n_0 ),
        .I4(obs_cid[176]),
        .I5(\cid[28][2]_i_5_n_0 ),
        .O(\cid[28][1]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \cid[28][1]_i_11 
       (.I0(obs_cid[178]),
        .I1(\cid[28][4]_i_11_n_0 ),
        .O(\cid[28][1]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hBB2BFFFFBB2BBB2B)) 
    \cid[28][1]_i_12 
       (.I0(obs_cid[163]),
        .I1(obs_cid[169]),
        .I2(obs_cid[168]),
        .I3(obs_cid[162]),
        .I4(obs_cid[170]),
        .I5(obs_cid[164]),
        .O(\cid[28][1]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \cid[28][1]_i_13 
       (.I0(obs_cid[171]),
        .I1(obs_cid[165]),
        .I2(obs_cid[172]),
        .I3(obs_cid[166]),
        .O(\cid[28][1]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h2FAF2F0F2F052F0F)) 
    \cid[28][1]_i_2 
       (.I0(\cid[28][5]_i_9_n_0 ),
        .I1(obs_unrooted[28]),
        .I2(\cid[28][1]_i_5_n_0 ),
        .I3(\cid[29][5]_i_4_n_0 ),
        .I4(\cid[28][1]_i_6_n_0 ),
        .I5(obs_cid[175]),
        .O(\cid[28][1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEFEF0FFF4F4F)) 
    \cid[28][1]_i_3 
       (.I0(\cid[28][4]_i_5_n_0 ),
        .I1(obs_cid[145]),
        .I2(\cid[28][5]_i_5_n_0 ),
        .I3(obs_unrooted[28]),
        .I4(\cid[28][3]_i_4_n_0 ),
        .I5(\cid[28][1]_i_2_n_0 ),
        .O(\cid[28][1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAA00AA00A802A822)) 
    \cid[28][1]_i_4 
       (.I0(\FSM_sequential_stage_reg[1]_rep_n_0 ),
        .I1(obs_cid[148]),
        .I2(obs_cid[147]),
        .I3(obs_cid[145]),
        .I4(obs_cid[146]),
        .I5(obs_cid[149]),
        .O(\cid[28][1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00440000F077FFFF)) 
    \cid[28][1]_i_5 
       (.I0(obs_cid[163]),
        .I1(\cid[28][1]_i_7_n_0 ),
        .I2(obs_unrooted[28]),
        .I3(\cid[27][5]_i_4_n_0 ),
        .I4(\cid[27][2]_i_6_n_0 ),
        .I5(obs_cid[169]),
        .O(\cid[28][1]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT5 #(
    .INIT(32'h17771111)) 
    \cid[28][1]_i_6 
       (.I0(obs_cid[179]),
        .I1(\cid[28][5]_i_8_n_0 ),
        .I2(obs_cid[178]),
        .I3(\cid[28][4]_i_11_n_0 ),
        .I4(\cid[28][1]_i_8_n_0 ),
        .O(\cid[28][1]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h4D44DDDD)) 
    \cid[28][1]_i_7 
       (.I0(obs_cid[167]),
        .I1(obs_cid[173]),
        .I2(obs_cid[166]),
        .I3(obs_cid[172]),
        .I4(\cid[28][1]_i_9_n_0 ),
        .O(\cid[28][1]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF007070FF)) 
    \cid[28][1]_i_8 
       (.I0(obs_cid[176]),
        .I1(\cid[28][2]_i_5_n_0 ),
        .I2(\cid[28][1]_i_10_n_0 ),
        .I3(obs_cid[177]),
        .I4(\cid[28][3]_i_7_n_0 ),
        .I5(\cid[28][1]_i_11_n_0 ),
        .O(\cid[28][1]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFB0BB0000)) 
    \cid[28][1]_i_9 
       (.I0(obs_cid[165]),
        .I1(obs_cid[171]),
        .I2(obs_cid[164]),
        .I3(obs_cid[170]),
        .I4(\cid[28][1]_i_12_n_0 ),
        .I5(\cid[28][1]_i_13_n_0 ),
        .O(\cid[28][1]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFBFBFBAAFBAAFBFB)) 
    \cid[28][2]_i_1 
       (.I0(\cid[29][4]_i_2_n_0 ),
        .I1(\cid[28][5]_i_6_n_0 ),
        .I2(\cid[28][2]_i_2_n_0 ),
        .I3(\cid[28][4]_i_4_n_0 ),
        .I4(\cid[28][2]_i_3_n_0 ),
        .I5(obs_cid[146]),
        .O(\cid[28][2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFA2272FFFF0000)) 
    \cid[28][2]_i_2 
       (.I0(\cid[28][3]_i_4_n_0 ),
        .I1(obs_unrooted[28]),
        .I2(obs_cid[146]),
        .I3(\cid[28][4]_i_5_n_0 ),
        .I4(\cid[28][2]_i_4_n_0 ),
        .I5(\cid[28][5]_i_5_n_0 ),
        .O(\cid[28][2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair138" *) 
  LUT5 #(
    .INIT(32'h00000015)) 
    \cid[28][2]_i_3 
       (.I0(obs_cid[149]),
        .I1(obs_cid[146]),
        .I2(obs_cid[147]),
        .I3(obs_cid[148]),
        .I4(obs_cid[145]),
        .O(\cid[28][2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h2FAF2F0F2F052F0F)) 
    \cid[28][2]_i_4 
       (.I0(\cid[28][5]_i_9_n_0 ),
        .I1(obs_unrooted[28]),
        .I2(\cid[28][2]_i_5_n_0 ),
        .I3(\cid[29][5]_i_4_n_0 ),
        .I4(\cid[28][1]_i_6_n_0 ),
        .I5(obs_cid[176]),
        .O(\cid[28][2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00440000F077FFFF)) 
    \cid[28][2]_i_5 
       (.I0(obs_cid[164]),
        .I1(\cid[28][1]_i_7_n_0 ),
        .I2(obs_unrooted[28]),
        .I3(\cid[27][5]_i_4_n_0 ),
        .I4(\cid[27][2]_i_6_n_0 ),
        .I5(obs_cid[170]),
        .O(\cid[28][2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFFFEFFFEAFAE)) 
    \cid[28][3]_i_1 
       (.I0(\cid[29][4]_i_2_n_0 ),
        .I1(\cid[28][3]_i_2_n_0 ),
        .I2(\FSM_sequential_stage_reg[1]_rep__0_n_0 ),
        .I3(\cid[28][3]_i_3_n_0 ),
        .I4(\cid[28][3]_i_4_n_0 ),
        .I5(\cid[28][3]_i_5_n_0 ),
        .O(\cid[28][3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \cid[28][3]_i_2 
       (.I0(obs_cid[169]),
        .I1(obs_cid[170]),
        .I2(obs_cid[173]),
        .I3(obs_cid[172]),
        .I4(obs_cid[171]),
        .I5(obs_cid[168]),
        .O(\cid[28][3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFA2272FFFF0000)) 
    \cid[28][3]_i_3 
       (.I0(\cid[28][3]_i_4_n_0 ),
        .I1(obs_unrooted[28]),
        .I2(obs_cid[147]),
        .I3(\cid[28][4]_i_5_n_0 ),
        .I4(\cid[28][3]_i_6_n_0 ),
        .I5(\cid[28][5]_i_5_n_0 ),
        .O(\cid[28][3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \cid[28][3]_i_4 
       (.I0(obs_cid[144]),
        .I1(obs_cid[149]),
        .I2(obs_cid[147]),
        .I3(obs_cid[145]),
        .I4(obs_cid[148]),
        .I5(obs_cid[146]),
        .O(\cid[28][3]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair138" *) 
  LUT5 #(
    .INIT(32'h3C3C3C38)) 
    \cid[28][3]_i_5 
       (.I0(obs_cid[149]),
        .I1(obs_cid[146]),
        .I2(obs_cid[147]),
        .I3(obs_cid[148]),
        .I4(obs_cid[145]),
        .O(\cid[28][3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h2FAF2F0F2F052F0F)) 
    \cid[28][3]_i_6 
       (.I0(\cid[28][5]_i_9_n_0 ),
        .I1(obs_unrooted[28]),
        .I2(\cid[28][3]_i_7_n_0 ),
        .I3(\cid[29][5]_i_4_n_0 ),
        .I4(\cid[28][1]_i_6_n_0 ),
        .I5(obs_cid[177]),
        .O(\cid[28][3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h00440000F077FFFF)) 
    \cid[28][3]_i_7 
       (.I0(obs_cid[165]),
        .I1(\cid[28][1]_i_7_n_0 ),
        .I2(obs_unrooted[28]),
        .I3(\cid[27][5]_i_4_n_0 ),
        .I4(\cid[27][2]_i_6_n_0 ),
        .I5(obs_cid[171]),
        .O(\cid[28][3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFBFBFBFBAAFBFBAA)) 
    \cid[28][4]_i_1 
       (.I0(\cid[29][4]_i_2_n_0 ),
        .I1(\cid[28][5]_i_6_n_0 ),
        .I2(\cid[28][4]_i_2_n_0 ),
        .I3(\cid[28][4]_i_3_n_0 ),
        .I4(obs_cid[148]),
        .I5(\cid[28][4]_i_4_n_0 ),
        .O(\cid[28][4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \cid[28][4]_i_10 
       (.I0(obs_cid[147]),
        .I1(\cid[28][3]_i_6_n_0 ),
        .I2(obs_cid[146]),
        .I3(\cid[28][2]_i_4_n_0 ),
        .O(\cid[28][4]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h00440000F077FFFF)) 
    \cid[28][4]_i_11 
       (.I0(obs_cid[166]),
        .I1(\cid[28][1]_i_7_n_0 ),
        .I2(obs_unrooted[28]),
        .I3(\cid[27][5]_i_4_n_0 ),
        .I4(\cid[27][2]_i_6_n_0 ),
        .I5(obs_cid[172]),
        .O(\cid[28][4]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFFFA2272FFFF0000)) 
    \cid[28][4]_i_2 
       (.I0(\cid[28][3]_i_4_n_0 ),
        .I1(obs_unrooted[28]),
        .I2(obs_cid[148]),
        .I3(\cid[28][4]_i_5_n_0 ),
        .I4(\cid[28][4]_i_6_n_0 ),
        .I5(\cid[28][5]_i_5_n_0 ),
        .O(\cid[28][4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair225" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cid[28][4]_i_3 
       (.I0(obs_cid[147]),
        .I1(obs_cid[146]),
        .O(\cid[28][4]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair415" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \cid[28][4]_i_4 
       (.I0(\cid[28][3]_i_4_n_0 ),
        .I1(\FSM_sequential_stage_reg[1]_rep_n_0 ),
        .O(\cid[28][4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h2B222B222B222B2B)) 
    \cid[28][4]_i_5 
       (.I0(obs_cid[149]),
        .I1(\cid[28][5]_i_3_n_0 ),
        .I2(\cid[28][4]_i_7_n_0 ),
        .I3(\cid[28][4]_i_8_n_0 ),
        .I4(\cid[28][4]_i_9_n_0 ),
        .I5(\cid[28][4]_i_10_n_0 ),
        .O(\cid[28][4]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h2FAF2F0F2F052F0F)) 
    \cid[28][4]_i_6 
       (.I0(\cid[28][5]_i_9_n_0 ),
        .I1(obs_unrooted[28]),
        .I2(\cid[28][4]_i_11_n_0 ),
        .I3(\cid[29][5]_i_4_n_0 ),
        .I4(\cid[28][1]_i_6_n_0 ),
        .I5(obs_cid[178]),
        .O(\cid[28][4]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair270" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cid[28][4]_i_7 
       (.I0(\cid[28][4]_i_6_n_0 ),
        .I1(obs_cid[148]),
        .O(\cid[28][4]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair270" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    \cid[28][4]_i_8 
       (.I0(\cid[28][3]_i_6_n_0 ),
        .I1(obs_cid[147]),
        .I2(\cid[28][4]_i_6_n_0 ),
        .I3(obs_cid[148]),
        .O(\cid[28][4]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h44D4000044D444D4)) 
    \cid[28][4]_i_9 
       (.I0(obs_cid[145]),
        .I1(\cid[28][1]_i_2_n_0 ),
        .I2(\cid[28][0]_i_2_n_0 ),
        .I3(obs_cid[144]),
        .I4(\cid[28][2]_i_4_n_0 ),
        .I5(obs_cid[146]),
        .O(\cid[28][4]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAEAAAAAA)) 
    \cid[28][5]_i_1 
       (.I0(\cid[25][5]_i_1_n_0 ),
        .I1(\^obs_ptr [85]),
        .I2(\^obs_ptr [86]),
        .I3(\^obs_ptr [84]),
        .I4(stage__0[0]),
        .I5(\FSM_sequential_stage_reg[1]_rep__2_n_0 ),
        .O(\cid[28][5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair121" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cid[28][5]_i_10 
       (.I0(obs_growth[77]),
        .I1(obs_growth[76]),
        .O(\cid[28][5]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT4 #(
    .INIT(16'h0040)) 
    \cid[28][5]_i_11 
       (.I0(obs_growth[72]),
        .I1(obs_growth[73]),
        .I2(\cid[27][5]_i_4_n_0 ),
        .I3(obs_unrooted[28]),
        .O(\cid[28][5]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFF8AA0000)) 
    \cid[28][5]_i_2 
       (.I0(\cid[28][5]_i_3_n_0 ),
        .I1(obs_cid[149]),
        .I2(\cid[28][5]_i_4_n_0 ),
        .I3(\cid[28][5]_i_5_n_0 ),
        .I4(\cid[28][5]_i_6_n_0 ),
        .I5(\cid[28][5]_i_7_n_0 ),
        .O(\cid[28][5]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h4F000F0F)) 
    \cid[28][5]_i_3 
       (.I0(obs_unrooted[28]),
        .I1(\cid[29][5]_i_4_n_0 ),
        .I2(\cid[28][5]_i_8_n_0 ),
        .I3(obs_cid[179]),
        .I4(\cid[28][5]_i_9_n_0 ),
        .O(\cid[28][5]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair238" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cid[28][5]_i_4 
       (.I0(\cid[28][3]_i_4_n_0 ),
        .I1(obs_unrooted[28]),
        .O(\cid[28][5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000040444444)) 
    \cid[28][5]_i_5 
       (.I0(obs_growth[74]),
        .I1(obs_growth[75]),
        .I2(obs_unrooted[28]),
        .I3(\cid[29][5]_i_4_n_0 ),
        .I4(\cid[28][5]_i_10_n_0 ),
        .I5(\cid[28][5]_i_11_n_0 ),
        .O(\cid[28][5]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair325" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \cid[28][5]_i_6 
       (.I0(\FSM_sequential_stage_reg[1]_rep_n_0 ),
        .I1(\cid[28][3]_i_2_n_0 ),
        .O(\cid[28][5]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFBFEAAAAAAAAA)) 
    \cid[28][5]_i_7 
       (.I0(\cid[29][4]_i_2_n_0 ),
        .I1(\cid[28][4]_i_3_n_0 ),
        .I2(obs_cid[148]),
        .I3(obs_cid[149]),
        .I4(\cid[28][3]_i_4_n_0 ),
        .I5(\FSM_sequential_stage_reg[1]_rep_n_0 ),
        .O(\cid[28][5]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0F0F0F0F0DFF0F0F)) 
    \cid[28][5]_i_8 
       (.I0(\cid[27][5]_i_4_n_0 ),
        .I1(obs_unrooted[28]),
        .I2(obs_cid[173]),
        .I3(obs_cid[167]),
        .I4(obs_growth[73]),
        .I5(obs_growth[72]),
        .O(\cid[28][5]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h4444444440444444)) 
    \cid[28][5]_i_9 
       (.I0(obs_growth[76]),
        .I1(obs_growth[77]),
        .I2(obs_unrooted[28]),
        .I3(\cid[27][5]_i_4_n_0 ),
        .I4(obs_growth[73]),
        .I5(obs_growth[72]),
        .O(\cid[28][5]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFF888FF88F8)) 
    \cid[29][0]_i_1 
       (.I0(stage__0[0]),
        .I1(stage__0[2]),
        .I2(\cid[29][5]_i_4_n_0 ),
        .I3(\FSM_sequential_stage_reg[1]_rep__0_n_0 ),
        .I4(\cid[29][0]_i_2_n_0 ),
        .I5(obs_cid[150]),
        .O(\cid[29][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h74440000FFCFFFFF)) 
    \cid[29][0]_i_2 
       (.I0(obs_unrooted[29]),
        .I1(\cid[29][3]_i_3_n_0 ),
        .I2(\cid[29][4]_i_7_n_0 ),
        .I3(obs_cid[150]),
        .I4(\cid[29][1]_i_2_n_0 ),
        .I5(\cid[29][0]_i_3_n_0 ),
        .O(\cid[29][0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h5155405551557355)) 
    \cid[29][0]_i_3 
       (.I0(\cid[29][0]_i_4_n_0 ),
        .I1(\cid[9][5]_i_4_n_0 ),
        .I2(obs_unrooted[29]),
        .I3(\cid[29][1]_i_9_n_0 ),
        .I4(\cid[29][1]_i_10_n_0 ),
        .I5(obs_cid[54]),
        .O(\cid[29][0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hDCCCDCCCDFCCD0CC)) 
    \cid[29][0]_i_4 
       (.I0(obs_unrooted[29]),
        .I1(obs_cid[174]),
        .I2(\cid[28][3]_i_2_n_0 ),
        .I3(\cid[28][5]_i_10_n_0 ),
        .I4(obs_cid[168]),
        .I5(\cid[29][1]_i_11_n_0 ),
        .O(\cid[29][0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFA800)) 
    \cid[29][1]_i_1 
       (.I0(\cid[29][4]_i_3_n_0 ),
        .I1(\cid[29][1]_i_2_n_0 ),
        .I2(\cid[29][1]_i_3_n_0 ),
        .I3(\cid[29][1]_i_4_n_0 ),
        .I4(\cid[29][1]_i_5_n_0 ),
        .I5(\cid[29][4]_i_2_n_0 ),
        .O(\cid[29][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT5 #(
    .INIT(32'h8E88EEEE)) 
    \cid[29][1]_i_10 
       (.I0(obs_cid[59]),
        .I1(\cid[29][5]_i_7_n_0 ),
        .I2(\cid[29][4]_i_13_n_0 ),
        .I3(obs_cid[58]),
        .I4(\cid[29][1]_i_12_n_0 ),
        .O(\cid[29][1]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'hB2BB2222)) 
    \cid[29][1]_i_11 
       (.I0(obs_cid[173]),
        .I1(obs_cid[179]),
        .I2(obs_cid[172]),
        .I3(obs_cid[178]),
        .I4(\cid[29][1]_i_13_n_0 ),
        .O(\cid[29][1]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFB000FFB0)) 
    \cid[29][1]_i_12 
       (.I0(\cid[29][2]_i_5_n_0 ),
        .I1(obs_cid[56]),
        .I2(\cid[29][1]_i_14_n_0 ),
        .I3(\cid[29][3]_i_6_n_0 ),
        .I4(obs_cid[57]),
        .I5(\cid[29][1]_i_15_n_0 ),
        .O(\cid[29][1]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFB0BB0000)) 
    \cid[29][1]_i_13 
       (.I0(obs_cid[171]),
        .I1(obs_cid[177]),
        .I2(obs_cid[170]),
        .I3(obs_cid[176]),
        .I4(\cid[29][1]_i_16_n_0 ),
        .I5(\cid[29][1]_i_17_n_0 ),
        .O(\cid[29][1]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h20F220F2FFFF20F2)) 
    \cid[29][1]_i_14 
       (.I0(\cid[29][0]_i_4_n_0 ),
        .I1(obs_cid[54]),
        .I2(\cid[29][1]_i_8_n_0 ),
        .I3(obs_cid[55]),
        .I4(\cid[29][2]_i_5_n_0 ),
        .I5(obs_cid[56]),
        .O(\cid[29][1]_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cid[29][1]_i_15 
       (.I0(\cid[29][4]_i_13_n_0 ),
        .I1(obs_cid[58]),
        .O(\cid[29][1]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hBF0BFFFFBF0BBF0B)) 
    \cid[29][1]_i_16 
       (.I0(obs_cid[168]),
        .I1(obs_cid[174]),
        .I2(obs_cid[175]),
        .I3(obs_cid[169]),
        .I4(obs_cid[176]),
        .I5(obs_cid[170]),
        .O(\cid[29][1]_i_16_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \cid[29][1]_i_17 
       (.I0(obs_cid[177]),
        .I1(obs_cid[171]),
        .I2(obs_cid[178]),
        .I3(obs_cid[172]),
        .O(\cid[29][1]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h0000000040444444)) 
    \cid[29][1]_i_2 
       (.I0(obs_growth[80]),
        .I1(obs_growth[81]),
        .I2(obs_unrooted[29]),
        .I3(\cid[9][5]_i_4_n_0 ),
        .I4(\cid[29][1]_i_6_n_0 ),
        .I5(\cid[29][1]_i_7_n_0 ),
        .O(\cid[29][1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAEAABFAAAEAA8CAA)) 
    \cid[29][1]_i_3 
       (.I0(\cid[29][1]_i_8_n_0 ),
        .I1(\cid[9][5]_i_4_n_0 ),
        .I2(obs_unrooted[29]),
        .I3(\cid[29][1]_i_9_n_0 ),
        .I4(\cid[29][1]_i_10_n_0 ),
        .I5(obs_cid[55]),
        .O(\cid[29][1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF0B8FFB8FFFFFFFF)) 
    \cid[29][1]_i_4 
       (.I0(obs_cid[151]),
        .I1(\cid[29][4]_i_7_n_0 ),
        .I2(\cid[29][1]_i_3_n_0 ),
        .I3(\cid[29][3]_i_3_n_0 ),
        .I4(obs_unrooted[29]),
        .I5(\cid[29][1]_i_2_n_0 ),
        .O(\cid[29][1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAA00AA00A802A822)) 
    \cid[29][1]_i_5 
       (.I0(\FSM_sequential_stage_reg[1]_rep_n_0 ),
        .I1(obs_cid[154]),
        .I2(obs_cid[153]),
        .I3(obs_cid[151]),
        .I4(obs_cid[152]),
        .I5(obs_cid[155]),
        .O(\cid[29][1]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cid[29][1]_i_6 
       (.I0(obs_growth[79]),
        .I1(obs_growth[78]),
        .O(\cid[29][1]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT4 #(
    .INIT(16'h0040)) 
    \cid[29][1]_i_7 
       (.I0(obs_growth[76]),
        .I1(obs_growth[77]),
        .I2(\cid[28][3]_i_2_n_0 ),
        .I3(obs_unrooted[29]),
        .O(\cid[29][1]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hDCCCDCCCDFCCD0CC)) 
    \cid[29][1]_i_8 
       (.I0(obs_unrooted[29]),
        .I1(obs_cid[175]),
        .I2(\cid[28][3]_i_2_n_0 ),
        .I3(\cid[28][5]_i_10_n_0 ),
        .I4(obs_cid[169]),
        .I5(\cid[29][1]_i_11_n_0 ),
        .O(\cid[29][1]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h4444444440444444)) 
    \cid[29][1]_i_9 
       (.I0(obs_growth[78]),
        .I1(obs_growth[79]),
        .I2(obs_unrooted[29]),
        .I3(\cid[28][3]_i_2_n_0 ),
        .I4(obs_growth[77]),
        .I5(obs_growth[76]),
        .O(\cid[29][1]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFBFBFBAAFBAAFBFB)) 
    \cid[29][2]_i_1 
       (.I0(\cid[29][4]_i_2_n_0 ),
        .I1(\cid[29][4]_i_3_n_0 ),
        .I2(\cid[29][2]_i_2_n_0 ),
        .I3(\cid[29][4]_i_6_n_0 ),
        .I4(\cid[29][2]_i_3_n_0 ),
        .I5(obs_cid[152]),
        .O(\cid[29][2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFCF7444FFFF0000)) 
    \cid[29][2]_i_2 
       (.I0(obs_unrooted[29]),
        .I1(\cid[29][3]_i_3_n_0 ),
        .I2(\cid[29][4]_i_7_n_0 ),
        .I3(obs_cid[152]),
        .I4(\cid[29][2]_i_4_n_0 ),
        .I5(\cid[29][1]_i_2_n_0 ),
        .O(\cid[29][2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair139" *) 
  LUT5 #(
    .INIT(32'h00000015)) 
    \cid[29][2]_i_3 
       (.I0(obs_cid[155]),
        .I1(obs_cid[152]),
        .I2(obs_cid[153]),
        .I3(obs_cid[154]),
        .I4(obs_cid[151]),
        .O(\cid[29][2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAEAAAEAABFAA8CAA)) 
    \cid[29][2]_i_4 
       (.I0(\cid[29][2]_i_5_n_0 ),
        .I1(\cid[9][5]_i_4_n_0 ),
        .I2(obs_unrooted[29]),
        .I3(\cid[29][1]_i_9_n_0 ),
        .I4(obs_cid[56]),
        .I5(\cid[29][1]_i_10_n_0 ),
        .O(\cid[29][2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hDCCCDCCCDFCCD0CC)) 
    \cid[29][2]_i_5 
       (.I0(obs_unrooted[29]),
        .I1(obs_cid[176]),
        .I2(\cid[28][3]_i_2_n_0 ),
        .I3(\cid[28][5]_i_10_n_0 ),
        .I4(obs_cid[170]),
        .I5(\cid[29][1]_i_11_n_0 ),
        .O(\cid[29][2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFFFEFFFEAFAE)) 
    \cid[29][3]_i_1 
       (.I0(\cid[29][4]_i_2_n_0 ),
        .I1(\cid[29][5]_i_4_n_0 ),
        .I2(\FSM_sequential_stage_reg[1]_rep__0_n_0 ),
        .I3(\cid[29][3]_i_2_n_0 ),
        .I4(\cid[29][3]_i_3_n_0 ),
        .I5(\cid[29][3]_i_4_n_0 ),
        .O(\cid[29][3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFCF7444FFFF0000)) 
    \cid[29][3]_i_2 
       (.I0(obs_unrooted[29]),
        .I1(\cid[29][3]_i_3_n_0 ),
        .I2(\cid[29][4]_i_7_n_0 ),
        .I3(obs_cid[153]),
        .I4(\cid[29][3]_i_5_n_0 ),
        .I5(\cid[29][1]_i_2_n_0 ),
        .O(\cid[29][3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \cid[29][3]_i_3 
       (.I0(obs_cid[150]),
        .I1(obs_cid[155]),
        .I2(obs_cid[153]),
        .I3(obs_cid[151]),
        .I4(obs_cid[154]),
        .I5(obs_cid[152]),
        .O(\cid[29][3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair139" *) 
  LUT5 #(
    .INIT(32'h3C3C3C38)) 
    \cid[29][3]_i_4 
       (.I0(obs_cid[155]),
        .I1(obs_cid[152]),
        .I2(obs_cid[153]),
        .I3(obs_cid[154]),
        .I4(obs_cid[151]),
        .O(\cid[29][3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAEAABFAAAEAA8CAA)) 
    \cid[29][3]_i_5 
       (.I0(\cid[29][3]_i_6_n_0 ),
        .I1(\cid[9][5]_i_4_n_0 ),
        .I2(obs_unrooted[29]),
        .I3(\cid[29][1]_i_9_n_0 ),
        .I4(\cid[29][1]_i_10_n_0 ),
        .I5(obs_cid[57]),
        .O(\cid[29][3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hDCCCDCCCDFCCD0CC)) 
    \cid[29][3]_i_6 
       (.I0(obs_unrooted[29]),
        .I1(obs_cid[177]),
        .I2(\cid[28][3]_i_2_n_0 ),
        .I3(\cid[28][5]_i_10_n_0 ),
        .I4(obs_cid[171]),
        .I5(\cid[29][1]_i_11_n_0 ),
        .O(\cid[29][3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFBFBFBFBAAFBFBAA)) 
    \cid[29][4]_i_1 
       (.I0(\cid[29][4]_i_2_n_0 ),
        .I1(\cid[29][4]_i_3_n_0 ),
        .I2(\cid[29][4]_i_4_n_0 ),
        .I3(\cid[29][4]_i_5_n_0 ),
        .I4(obs_cid[154]),
        .I5(\cid[29][4]_i_6_n_0 ),
        .O(\cid[29][4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \cid[29][4]_i_10 
       (.I0(obs_cid[153]),
        .I1(\cid[29][3]_i_5_n_0 ),
        .I2(obs_cid[152]),
        .I3(\cid[29][2]_i_4_n_0 ),
        .O(\cid[29][4]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hBBB2FFFFBBB2BBB2)) 
    \cid[29][4]_i_11 
       (.I0(obs_cid[151]),
        .I1(\cid[29][1]_i_3_n_0 ),
        .I2(\cid[29][0]_i_3_n_0 ),
        .I3(obs_cid[150]),
        .I4(\cid[29][2]_i_4_n_0 ),
        .I5(obs_cid[152]),
        .O(\cid[29][4]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair267" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    \cid[29][4]_i_12 
       (.I0(\cid[29][4]_i_8_n_0 ),
        .I1(obs_cid[154]),
        .I2(\cid[29][3]_i_5_n_0 ),
        .I3(obs_cid[153]),
        .O(\cid[29][4]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hDCCCDCCCDFCCD0CC)) 
    \cid[29][4]_i_13 
       (.I0(obs_unrooted[29]),
        .I1(obs_cid[178]),
        .I2(\cid[28][3]_i_2_n_0 ),
        .I3(\cid[28][5]_i_10_n_0 ),
        .I4(obs_cid[172]),
        .I5(\cid[29][1]_i_11_n_0 ),
        .O(\cid[29][4]_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cid[29][4]_i_2 
       (.I0(stage__0[2]),
        .I1(stage__0[0]),
        .O(\cid[29][4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair415" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \cid[29][4]_i_3 
       (.I0(\FSM_sequential_stage_reg[1]_rep_n_0 ),
        .I1(\cid[29][5]_i_4_n_0 ),
        .O(\cid[29][4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFCF7444FFFF0000)) 
    \cid[29][4]_i_4 
       (.I0(obs_unrooted[29]),
        .I1(\cid[29][3]_i_3_n_0 ),
        .I2(\cid[29][4]_i_7_n_0 ),
        .I3(obs_cid[154]),
        .I4(\cid[29][4]_i_8_n_0 ),
        .I5(\cid[29][1]_i_2_n_0 ),
        .O(\cid[29][4]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair232" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cid[29][4]_i_5 
       (.I0(obs_cid[153]),
        .I1(obs_cid[152]),
        .O(\cid[29][4]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair257" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \cid[29][4]_i_6 
       (.I0(\cid[29][3]_i_3_n_0 ),
        .I1(\FSM_sequential_stage_reg[1]_rep_n_0 ),
        .O(\cid[29][4]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hD4D4D4D4DDD4DDDD)) 
    \cid[29][4]_i_7 
       (.I0(obs_cid[155]),
        .I1(\cid[29][5]_i_6_n_0 ),
        .I2(\cid[29][4]_i_9_n_0 ),
        .I3(\cid[29][4]_i_10_n_0 ),
        .I4(\cid[29][4]_i_11_n_0 ),
        .I5(\cid[29][4]_i_12_n_0 ),
        .O(\cid[29][4]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAEAABFAAAEAA8CAA)) 
    \cid[29][4]_i_8 
       (.I0(\cid[29][4]_i_13_n_0 ),
        .I1(\cid[9][5]_i_4_n_0 ),
        .I2(obs_unrooted[29]),
        .I3(\cid[29][1]_i_9_n_0 ),
        .I4(\cid[29][1]_i_10_n_0 ),
        .I5(obs_cid[58]),
        .O(\cid[29][4]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair267" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cid[29][4]_i_9 
       (.I0(\cid[29][4]_i_8_n_0 ),
        .I1(obs_cid[154]),
        .O(\cid[29][4]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAEAAAAAA)) 
    \cid[29][5]_i_1 
       (.I0(\cid[25][5]_i_1_n_0 ),
        .I1(\^obs_ptr [88]),
        .I2(\^obs_ptr [89]),
        .I3(\^obs_ptr [87]),
        .I4(stage__0[0]),
        .I5(\FSM_sequential_stage_reg[1]_rep__2_n_0 ),
        .O(\cid[29][5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF01F101F101F1)) 
    \cid[29][5]_i_2 
       (.I0(\cid[29][5]_i_3_n_0 ),
        .I1(\cid[29][5]_i_4_n_0 ),
        .I2(\FSM_sequential_stage_reg[1]_rep__0_n_0 ),
        .I3(\cid[29][5]_i_5_n_0 ),
        .I4(stage__0[2]),
        .I5(stage__0[0]),
        .O(\cid[29][5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT5 #(
    .INIT(32'h77075555)) 
    \cid[29][5]_i_3 
       (.I0(\cid[29][5]_i_6_n_0 ),
        .I1(obs_cid[155]),
        .I2(\cid[29][3]_i_3_n_0 ),
        .I3(obs_unrooted[29]),
        .I4(\cid[29][1]_i_2_n_0 ),
        .O(\cid[29][5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \cid[29][5]_i_4 
       (.I0(obs_cid[175]),
        .I1(obs_cid[176]),
        .I2(obs_cid[179]),
        .I3(obs_cid[178]),
        .I4(obs_cid[177]),
        .I5(obs_cid[174]),
        .O(\cid[29][5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h080077FF880077FF)) 
    \cid[29][5]_i_5 
       (.I0(obs_cid[152]),
        .I1(obs_cid[154]),
        .I2(obs_cid[151]),
        .I3(obs_cid[153]),
        .I4(obs_cid[155]),
        .I5(obs_cid[150]),
        .O(\cid[29][5]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h4F000F0F)) 
    \cid[29][5]_i_6 
       (.I0(obs_unrooted[29]),
        .I1(\cid[9][5]_i_4_n_0 ),
        .I2(\cid[29][5]_i_7_n_0 ),
        .I3(obs_cid[59]),
        .I4(\cid[29][1]_i_9_n_0 ),
        .O(\cid[29][5]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0F0F0F0F0DFF0F0F)) 
    \cid[29][5]_i_7 
       (.I0(\cid[28][3]_i_2_n_0 ),
        .I1(obs_unrooted[29]),
        .I2(obs_cid[179]),
        .I3(obs_cid[173]),
        .I4(obs_growth[77]),
        .I5(obs_growth[76]),
        .O(\cid[29][5]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h88B8)) 
    \cid[2][0]_i_1 
       (.I0(obs_cid[0]),
        .I1(\FSM_sequential_stage_reg[1]_rep__0_n_0 ),
        .I2(obs_cid[84]),
        .I3(\cid[4][4]_i_2_n_0 ),
        .O(\cid[2][0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h6F6F6F60)) 
    \cid[2][1]_i_1 
       (.I0(obs_cid[1]),
        .I1(\cid[2][1]_i_2_n_0 ),
        .I2(\FSM_sequential_stage_reg[1]_rep__0_n_0 ),
        .I3(obs_cid[85]),
        .I4(\cid[4][4]_i_2_n_0 ),
        .O(\cid[2][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair122" *) 
  LUT5 #(
    .INIT(32'h00001115)) 
    \cid[2][1]_i_2 
       (.I0(obs_cid[4]),
        .I1(obs_cid[3]),
        .I2(obs_cid[1]),
        .I3(obs_cid[2]),
        .I4(obs_cid[5]),
        .O(\cid[2][1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEB00EB00EBFFEB00)) 
    \cid[2][2]_i_1 
       (.I0(\cid[2][4]_i_2_n_0 ),
        .I1(\cid[2][2]_i_2_n_0 ),
        .I2(obs_cid[2]),
        .I3(\FSM_sequential_stage_reg[1]_rep__0_n_0 ),
        .I4(obs_cid[86]),
        .I5(\cid[4][4]_i_2_n_0 ),
        .O(\cid[2][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair122" *) 
  LUT5 #(
    .INIT(32'h00000015)) 
    \cid[2][2]_i_2 
       (.I0(obs_cid[5]),
        .I1(obs_cid[2]),
        .I2(obs_cid[3]),
        .I3(obs_cid[4]),
        .I4(obs_cid[1]),
        .O(\cid[2][2]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h88B8)) 
    \cid[2][3]_i_1 
       (.I0(\cid[2][3]_i_2_n_0 ),
        .I1(\FSM_sequential_stage_reg[1]_rep__0_n_0 ),
        .I2(obs_cid[87]),
        .I3(\cid[4][4]_i_2_n_0 ),
        .O(\cid[2][3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h80FFFF0000FCFF00)) 
    \cid[2][3]_i_2 
       (.I0(obs_cid[0]),
        .I1(obs_cid[1]),
        .I2(obs_cid[4]),
        .I3(obs_cid[3]),
        .I4(obs_cid[2]),
        .I5(obs_cid[5]),
        .O(\cid[2][3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBE00BE00BEFFBE00)) 
    \cid[2][4]_i_1 
       (.I0(\cid[2][4]_i_2_n_0 ),
        .I1(\cid[2][4]_i_3_n_0 ),
        .I2(obs_cid[4]),
        .I3(\FSM_sequential_stage_reg[1]_rep__0_n_0 ),
        .I4(obs_cid[88]),
        .I5(\cid[4][4]_i_2_n_0 ),
        .O(\cid[2][4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \cid[2][4]_i_2 
       (.I0(obs_cid[3]),
        .I1(obs_cid[1]),
        .I2(obs_cid[5]),
        .I3(obs_cid[0]),
        .I4(obs_cid[4]),
        .I5(obs_cid[2]),
        .O(\cid[2][4]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cid[2][4]_i_3 
       (.I0(obs_cid[2]),
        .I1(obs_cid[3]),
        .O(\cid[2][4]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hAAA8)) 
    \cid[2][5]_i_1 
       (.I0(\cid[25][5]_i_1_n_0 ),
        .I1(\cid[2][5]_i_3_n_0 ),
        .I2(\FSM_sequential_stage_reg[1]_rep__2_n_0 ),
        .I3(\cid[4][4]_i_2_n_0 ),
        .O(\cid[2][5]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h88B8)) 
    \cid[2][5]_i_2 
       (.I0(\cid[2][5]_i_4_n_0 ),
        .I1(\FSM_sequential_stage_reg[1]_rep__0_n_0 ),
        .I2(obs_cid[89]),
        .I3(\cid[4][4]_i_2_n_0 ),
        .O(\cid[2][5]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00F20000)) 
    \cid[2][5]_i_3 
       (.I0(\cid[18][4]_i_2_n_0 ),
        .I1(obs_unrooted[2]),
        .I2(\cid[2][5]_i_5_n_0 ),
        .I3(obs_growth[2]),
        .I4(obs_growth[3]),
        .O(\cid[2][5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8FFFFFFFF0000000)) 
    \cid[2][5]_i_4 
       (.I0(obs_cid[0]),
        .I1(obs_cid[1]),
        .I2(obs_cid[4]),
        .I3(obs_cid[3]),
        .I4(obs_cid[2]),
        .I5(obs_cid[5]),
        .O(\cid[2][5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F4FF00F4)) 
    \cid[2][5]_i_5 
       (.I0(obs_cid[88]),
        .I1(obs_cid[16]),
        .I2(\cid[2][5]_i_6_n_0 ),
        .I3(obs_cid[89]),
        .I4(obs_cid[17]),
        .I5(\cid[18][4]_i_2_n_0 ),
        .O(\cid[2][5]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00F400FF000000F4)) 
    \cid[2][5]_i_6 
       (.I0(obs_cid[86]),
        .I1(obs_cid[14]),
        .I2(\cid[2][5]_i_7_n_0 ),
        .I3(\cid[2][5]_i_8_n_0 ),
        .I4(obs_cid[87]),
        .I5(obs_cid[15]),
        .O(\cid[2][5]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h20F220F2000020F2)) 
    \cid[2][5]_i_7 
       (.I0(obs_cid[12]),
        .I1(obs_cid[84]),
        .I2(obs_cid[13]),
        .I3(obs_cid[85]),
        .I4(obs_cid[86]),
        .I5(obs_cid[14]),
        .O(\cid[2][5]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair190" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cid[2][5]_i_8 
       (.I0(obs_cid[88]),
        .I1(obs_cid[16]),
        .O(\cid[2][5]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hBBB8)) 
    \cid[3][0]_i_1 
       (.I0(obs_cid[6]),
        .I1(\FSM_sequential_stage_reg[1]_rep__0_n_0 ),
        .I2(obs_cid[102]),
        .I3(\cid[5][4]_i_2_n_0 ),
        .O(\cid[3][0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h6F6F6F60)) 
    \cid[3][1]_i_1 
       (.I0(obs_cid[7]),
        .I1(\cid[3][1]_i_2_n_0 ),
        .I2(\FSM_sequential_stage_reg[1]_rep__0_n_0 ),
        .I3(obs_cid[103]),
        .I4(\cid[5][4]_i_2_n_0 ),
        .O(\cid[3][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair123" *) 
  LUT5 #(
    .INIT(32'h00001115)) 
    \cid[3][1]_i_2 
       (.I0(obs_cid[10]),
        .I1(obs_cid[9]),
        .I2(obs_cid[7]),
        .I3(obs_cid[8]),
        .I4(obs_cid[11]),
        .O(\cid[3][1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEB00EB00EBFFEB00)) 
    \cid[3][2]_i_1 
       (.I0(\cid[3][4]_i_2_n_0 ),
        .I1(\cid[3][2]_i_2_n_0 ),
        .I2(obs_cid[8]),
        .I3(\FSM_sequential_stage_reg[1]_rep__0_n_0 ),
        .I4(obs_cid[104]),
        .I5(\cid[5][4]_i_2_n_0 ),
        .O(\cid[3][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair123" *) 
  LUT5 #(
    .INIT(32'h00000015)) 
    \cid[3][2]_i_2 
       (.I0(obs_cid[11]),
        .I1(obs_cid[8]),
        .I2(obs_cid[9]),
        .I3(obs_cid[10]),
        .I4(obs_cid[7]),
        .O(\cid[3][2]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h88B8)) 
    \cid[3][3]_i_1 
       (.I0(\cid[3][3]_i_2_n_0 ),
        .I1(\FSM_sequential_stage_reg[1]_rep__0_n_0 ),
        .I2(obs_cid[105]),
        .I3(\cid[5][4]_i_2_n_0 ),
        .O(\cid[3][3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h80FFFF0000FCFF00)) 
    \cid[3][3]_i_2 
       (.I0(obs_cid[6]),
        .I1(obs_cid[7]),
        .I2(obs_cid[10]),
        .I3(obs_cid[9]),
        .I4(obs_cid[8]),
        .I5(obs_cid[11]),
        .O(\cid[3][3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBE00BE00BEFFBE00)) 
    \cid[3][4]_i_1 
       (.I0(\cid[3][4]_i_2_n_0 ),
        .I1(\cid[3][4]_i_3_n_0 ),
        .I2(obs_cid[10]),
        .I3(\FSM_sequential_stage_reg[1]_rep__0_n_0 ),
        .I4(obs_cid[106]),
        .I5(\cid[5][4]_i_2_n_0 ),
        .O(\cid[3][4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \cid[3][4]_i_2 
       (.I0(obs_cid[9]),
        .I1(obs_cid[7]),
        .I2(obs_cid[11]),
        .I3(obs_cid[10]),
        .I4(obs_cid[8]),
        .I5(obs_cid[6]),
        .O(\cid[3][4]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cid[3][4]_i_3 
       (.I0(obs_cid[8]),
        .I1(obs_cid[9]),
        .O(\cid[3][4]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hAAA8)) 
    \cid[3][5]_i_1 
       (.I0(\cid[25][5]_i_1_n_0 ),
        .I1(\cid[3][5]_i_3_n_0 ),
        .I2(\FSM_sequential_stage_reg[1]_rep__2_n_0 ),
        .I3(\cid[5][4]_i_2_n_0 ),
        .O(\cid[3][5]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h88B8)) 
    \cid[3][5]_i_2 
       (.I0(\cid[3][5]_i_4_n_0 ),
        .I1(\FSM_sequential_stage_reg[1]_rep__0_n_0 ),
        .I2(obs_cid[107]),
        .I3(\cid[5][4]_i_2_n_0 ),
        .O(\cid[3][5]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00F20000)) 
    \cid[3][5]_i_3 
       (.I0(\cid[21][4]_i_2_n_0 ),
        .I1(obs_unrooted[3]),
        .I2(\cid[3][5]_i_5_n_0 ),
        .I3(obs_growth[30]),
        .I4(obs_growth[31]),
        .O(\cid[3][5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8FFFFFFFF0000000)) 
    \cid[3][5]_i_4 
       (.I0(obs_cid[6]),
        .I1(obs_cid[7]),
        .I2(obs_cid[9]),
        .I3(obs_cid[8]),
        .I4(obs_cid[10]),
        .I5(obs_cid[11]),
        .O(\cid[3][5]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h71)) 
    \cid[3][5]_i_5 
       (.I0(\cid[3][5]_i_6_n_0 ),
        .I1(obs_cid[107]),
        .I2(obs_cid[23]),
        .O(\cid[3][5]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h8E00FF8E)) 
    \cid[3][5]_i_6 
       (.I0(\cid[3][5]_i_7_n_0 ),
        .I1(obs_cid[105]),
        .I2(obs_cid[21]),
        .I3(obs_cid[106]),
        .I4(obs_cid[22]),
        .O(\cid[3][5]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hBF0B0000FFFFBF0B)) 
    \cid[3][5]_i_7 
       (.I0(obs_cid[102]),
        .I1(obs_cid[18]),
        .I2(obs_cid[19]),
        .I3(obs_cid[103]),
        .I4(obs_cid[104]),
        .I5(obs_cid[20]),
        .O(\cid[3][5]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h88B8)) 
    \cid[4][0]_i_1 
       (.I0(obs_cid[12]),
        .I1(\FSM_sequential_stage_reg[1]_rep__0_n_0 ),
        .I2(obs_cid[108]),
        .I3(\cid[6][4]_i_2_n_0 ),
        .O(\cid[4][0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h60606F60)) 
    \cid[4][1]_i_1 
       (.I0(obs_cid[13]),
        .I1(\cid[4][1]_i_2_n_0 ),
        .I2(\FSM_sequential_stage_reg[1]_rep__0_n_0 ),
        .I3(obs_cid[109]),
        .I4(\cid[6][4]_i_2_n_0 ),
        .O(\cid[4][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair124" *) 
  LUT5 #(
    .INIT(32'h00001115)) 
    \cid[4][1]_i_2 
       (.I0(obs_cid[16]),
        .I1(obs_cid[15]),
        .I2(obs_cid[13]),
        .I3(obs_cid[14]),
        .I4(obs_cid[17]),
        .O(\cid[4][1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFEEF0EEF0EEFFEE)) 
    \cid[4][2]_i_1 
       (.I0(\cid[6][4]_i_2_n_0 ),
        .I1(obs_cid[110]),
        .I2(\cid[4][4]_i_2_n_0 ),
        .I3(\FSM_sequential_stage_reg[1]_rep__0_n_0 ),
        .I4(obs_cid[14]),
        .I5(\cid[4][2]_i_2_n_0 ),
        .O(\cid[4][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair124" *) 
  LUT5 #(
    .INIT(32'h00000015)) 
    \cid[4][2]_i_2 
       (.I0(obs_cid[17]),
        .I1(obs_cid[14]),
        .I2(obs_cid[15]),
        .I3(obs_cid[16]),
        .I4(obs_cid[13]),
        .O(\cid[4][2]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h88B8)) 
    \cid[4][3]_i_1 
       (.I0(\cid[4][3]_i_2_n_0 ),
        .I1(\FSM_sequential_stage_reg[1]_rep__0_n_0 ),
        .I2(obs_cid[111]),
        .I3(\cid[6][4]_i_2_n_0 ),
        .O(\cid[4][3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h80FFFF0000FCFF00)) 
    \cid[4][3]_i_2 
       (.I0(obs_cid[12]),
        .I1(obs_cid[13]),
        .I2(obs_cid[16]),
        .I3(obs_cid[15]),
        .I4(obs_cid[14]),
        .I5(obs_cid[17]),
        .O(\cid[4][3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBE00BE00BEFFBE00)) 
    \cid[4][4]_i_1 
       (.I0(\cid[4][4]_i_2_n_0 ),
        .I1(\cid[4][4]_i_3_n_0 ),
        .I2(obs_cid[16]),
        .I3(\FSM_sequential_stage_reg[1]_rep__0_n_0 ),
        .I4(obs_cid[112]),
        .I5(\cid[6][4]_i_2_n_0 ),
        .O(\cid[4][4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \cid[4][4]_i_2 
       (.I0(obs_cid[12]),
        .I1(obs_cid[17]),
        .I2(obs_cid[13]),
        .I3(obs_cid[15]),
        .I4(obs_cid[16]),
        .I5(obs_cid[14]),
        .O(\cid[4][4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair191" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cid[4][4]_i_3 
       (.I0(obs_cid[14]),
        .I1(obs_cid[15]),
        .O(\cid[4][4]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hAAA8)) 
    \cid[4][5]_i_1 
       (.I0(\cid[25][5]_i_1_n_0 ),
        .I1(\cid[4][5]_i_3_n_0 ),
        .I2(\FSM_sequential_stage_reg[1]_rep__2_n_0 ),
        .I3(\cid[6][4]_i_2_n_0 ),
        .O(\cid[4][5]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h88B8)) 
    \cid[4][5]_i_2 
       (.I0(\cid[4][5]_i_4_n_0 ),
        .I1(\FSM_sequential_stage_reg[1]_rep__0_n_0 ),
        .I2(obs_cid[113]),
        .I3(\cid[6][4]_i_2_n_0 ),
        .O(\cid[4][5]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00F20000)) 
    \cid[4][5]_i_3 
       (.I0(\cid[22][2]_i_3_n_0 ),
        .I1(obs_unrooted[4]),
        .I2(\cid[4][5]_i_5_n_0 ),
        .I3(obs_growth[4]),
        .I4(obs_growth[5]),
        .O(\cid[4][5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8FFFFFFFF0000000)) 
    \cid[4][5]_i_4 
       (.I0(obs_cid[13]),
        .I1(obs_cid[12]),
        .I2(obs_cid[15]),
        .I3(obs_cid[14]),
        .I4(obs_cid[16]),
        .I5(obs_cid[17]),
        .O(\cid[4][5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F4FF00F4)) 
    \cid[4][5]_i_5 
       (.I0(obs_cid[112]),
        .I1(obs_cid[28]),
        .I2(\cid[4][5]_i_6_n_0 ),
        .I3(obs_cid[113]),
        .I4(obs_cid[29]),
        .I5(\cid[22][2]_i_3_n_0 ),
        .O(\cid[4][5]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00F400FF000000F4)) 
    \cid[4][5]_i_6 
       (.I0(obs_cid[110]),
        .I1(obs_cid[26]),
        .I2(\cid[4][5]_i_7_n_0 ),
        .I3(\cid[4][5]_i_8_n_0 ),
        .I4(obs_cid[111]),
        .I5(obs_cid[27]),
        .O(\cid[4][5]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h20F220F2000020F2)) 
    \cid[4][5]_i_7 
       (.I0(obs_cid[24]),
        .I1(obs_cid[108]),
        .I2(obs_cid[25]),
        .I3(obs_cid[109]),
        .I4(obs_cid[110]),
        .I5(obs_cid[26]),
        .O(\cid[4][5]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair220" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cid[4][5]_i_8 
       (.I0(obs_cid[112]),
        .I1(obs_cid[28]),
        .O(\cid[4][5]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hBBB8)) 
    \cid[5][0]_i_1 
       (.I0(obs_cid[18]),
        .I1(\FSM_sequential_stage_reg[1]_rep__0_n_0 ),
        .I2(obs_cid[126]),
        .I3(\cid[7][4]_i_2_n_0 ),
        .O(\cid[5][0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h60606F60)) 
    \cid[5][1]_i_1 
       (.I0(obs_cid[19]),
        .I1(\cid[5][1]_i_2_n_0 ),
        .I2(\FSM_sequential_stage_reg[1]_rep__0_n_0 ),
        .I3(obs_cid[127]),
        .I4(\cid[7][4]_i_2_n_0 ),
        .O(\cid[5][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair125" *) 
  LUT5 #(
    .INIT(32'h00001115)) 
    \cid[5][1]_i_2 
       (.I0(obs_cid[22]),
        .I1(obs_cid[21]),
        .I2(obs_cid[19]),
        .I3(obs_cid[20]),
        .I4(obs_cid[23]),
        .O(\cid[5][1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFEEF0EEF0EEFFEE)) 
    \cid[5][2]_i_1 
       (.I0(\cid[7][4]_i_2_n_0 ),
        .I1(obs_cid[128]),
        .I2(\cid[5][4]_i_2_n_0 ),
        .I3(\FSM_sequential_stage_reg[1]_rep__0_n_0 ),
        .I4(obs_cid[20]),
        .I5(\cid[5][2]_i_2_n_0 ),
        .O(\cid[5][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair125" *) 
  LUT5 #(
    .INIT(32'h00000015)) 
    \cid[5][2]_i_2 
       (.I0(obs_cid[23]),
        .I1(obs_cid[20]),
        .I2(obs_cid[21]),
        .I3(obs_cid[22]),
        .I4(obs_cid[19]),
        .O(\cid[5][2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair205" *) 
  LUT4 #(
    .INIT(16'h88B8)) 
    \cid[5][3]_i_1 
       (.I0(\cid[5][3]_i_2_n_0 ),
        .I1(\FSM_sequential_stage_reg[1]_rep__0_n_0 ),
        .I2(obs_cid[129]),
        .I3(\cid[7][4]_i_2_n_0 ),
        .O(\cid[5][3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h80FFFF0000FCFF00)) 
    \cid[5][3]_i_2 
       (.I0(obs_cid[18]),
        .I1(obs_cid[19]),
        .I2(obs_cid[22]),
        .I3(obs_cid[21]),
        .I4(obs_cid[20]),
        .I5(obs_cid[23]),
        .O(\cid[5][3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBE00BE00BEFFBE00)) 
    \cid[5][4]_i_1 
       (.I0(\cid[5][4]_i_2_n_0 ),
        .I1(\cid[5][4]_i_3_n_0 ),
        .I2(obs_cid[22]),
        .I3(\FSM_sequential_stage_reg[1]_rep__0_n_0 ),
        .I4(obs_cid[130]),
        .I5(\cid[7][4]_i_2_n_0 ),
        .O(\cid[5][4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \cid[5][4]_i_2 
       (.I0(obs_cid[18]),
        .I1(obs_cid[23]),
        .I2(obs_cid[19]),
        .I3(obs_cid[21]),
        .I4(obs_cid[22]),
        .I5(obs_cid[20]),
        .O(\cid[5][4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair272" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cid[5][4]_i_3 
       (.I0(obs_cid[20]),
        .I1(obs_cid[21]),
        .O(\cid[5][4]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hAAA8)) 
    \cid[5][5]_i_1 
       (.I0(\cid[25][5]_i_1_n_0 ),
        .I1(\cid[5][5]_i_3_n_0 ),
        .I2(\FSM_sequential_stage_reg[1]_rep__2_n_0 ),
        .I3(\cid[7][4]_i_2_n_0 ),
        .O(\cid[5][5]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h88B8)) 
    \cid[5][5]_i_2 
       (.I0(\cid[5][5]_i_4_n_0 ),
        .I1(\FSM_sequential_stage_reg[1]_rep__0_n_0 ),
        .I2(obs_cid[131]),
        .I3(\cid[7][4]_i_2_n_0 ),
        .O(\cid[5][5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT5 #(
    .INIT(32'h44440040)) 
    \cid[5][5]_i_3 
       (.I0(obs_growth[46]),
        .I1(obs_growth[47]),
        .I2(\cid[25][4]_i_2_n_0 ),
        .I3(obs_unrooted[5]),
        .I4(\cid[5][5]_i_5_n_0 ),
        .O(\cid[5][5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8FFFFFFFF0000000)) 
    \cid[5][5]_i_4 
       (.I0(obs_cid[19]),
        .I1(obs_cid[18]),
        .I2(obs_cid[21]),
        .I3(obs_cid[20]),
        .I4(obs_cid[22]),
        .I5(obs_cid[23]),
        .O(\cid[5][5]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h71)) 
    \cid[5][5]_i_5 
       (.I0(\cid[5][5]_i_6_n_0 ),
        .I1(obs_cid[131]),
        .I2(obs_cid[35]),
        .O(\cid[5][5]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h8E00FF8E)) 
    \cid[5][5]_i_6 
       (.I0(\cid[5][5]_i_7_n_0 ),
        .I1(obs_cid[129]),
        .I2(obs_cid[33]),
        .I3(obs_cid[130]),
        .I4(obs_cid[34]),
        .O(\cid[5][5]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hBF0B0000FFFFBF0B)) 
    \cid[5][5]_i_7 
       (.I0(obs_cid[126]),
        .I1(obs_cid[30]),
        .I2(obs_cid[31]),
        .I3(obs_cid[127]),
        .I4(obs_cid[128]),
        .I5(obs_cid[32]),
        .O(\cid[5][5]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair250" *) 
  LUT4 #(
    .INIT(16'h88B8)) 
    \cid[6][0]_i_1 
       (.I0(obs_cid[24]),
        .I1(\FSM_sequential_stage_reg[1]_rep__1_n_0 ),
        .I2(obs_cid[132]),
        .I3(\cid[8][3]_i_3_n_0 ),
        .O(\cid[6][0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h6F6F6F60)) 
    \cid[6][1]_i_1 
       (.I0(obs_cid[25]),
        .I1(\cid[6][1]_i_2_n_0 ),
        .I2(\FSM_sequential_stage_reg[1]_rep__1_n_0 ),
        .I3(obs_cid[133]),
        .I4(\cid[8][3]_i_3_n_0 ),
        .O(\cid[6][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair126" *) 
  LUT5 #(
    .INIT(32'h00001115)) 
    \cid[6][1]_i_2 
       (.I0(obs_cid[28]),
        .I1(obs_cid[27]),
        .I2(obs_cid[25]),
        .I3(obs_cid[26]),
        .I4(obs_cid[29]),
        .O(\cid[6][1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFEEF0EEF0EEFFEE)) 
    \cid[6][2]_i_1 
       (.I0(\cid[8][3]_i_3_n_0 ),
        .I1(obs_cid[134]),
        .I2(\cid[6][4]_i_2_n_0 ),
        .I3(\FSM_sequential_stage_reg[1]_rep__0_n_0 ),
        .I4(obs_cid[26]),
        .I5(\cid[6][2]_i_2_n_0 ),
        .O(\cid[6][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair126" *) 
  LUT5 #(
    .INIT(32'h00000015)) 
    \cid[6][2]_i_2 
       (.I0(obs_cid[29]),
        .I1(obs_cid[26]),
        .I2(obs_cid[27]),
        .I3(obs_cid[28]),
        .I4(obs_cid[25]),
        .O(\cid[6][2]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h88B8)) 
    \cid[6][3]_i_1 
       (.I0(\cid[6][3]_i_2_n_0 ),
        .I1(\FSM_sequential_stage_reg[1]_rep__0_n_0 ),
        .I2(obs_cid[135]),
        .I3(\cid[8][3]_i_3_n_0 ),
        .O(\cid[6][3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h80FFFF0000FCFF00)) 
    \cid[6][3]_i_2 
       (.I0(obs_cid[24]),
        .I1(obs_cid[25]),
        .I2(obs_cid[28]),
        .I3(obs_cid[27]),
        .I4(obs_cid[26]),
        .I5(obs_cid[29]),
        .O(\cid[6][3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBE00BE00BEFFBE00)) 
    \cid[6][4]_i_1 
       (.I0(\cid[6][4]_i_2_n_0 ),
        .I1(\cid[6][4]_i_3_n_0 ),
        .I2(obs_cid[28]),
        .I3(\FSM_sequential_stage_reg[1]_rep__0_n_0 ),
        .I4(obs_cid[136]),
        .I5(\cid[8][3]_i_3_n_0 ),
        .O(\cid[6][4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \cid[6][4]_i_2 
       (.I0(obs_cid[27]),
        .I1(obs_cid[25]),
        .I2(obs_cid[29]),
        .I3(obs_cid[24]),
        .I4(obs_cid[28]),
        .I5(obs_cid[26]),
        .O(\cid[6][4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair221" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cid[6][4]_i_3 
       (.I0(obs_cid[26]),
        .I1(obs_cid[27]),
        .O(\cid[6][4]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hAAA8)) 
    \cid[6][5]_i_1 
       (.I0(\cid[25][5]_i_1_n_0 ),
        .I1(\cid[6][5]_i_3_n_0 ),
        .I2(\FSM_sequential_stage_reg[1]_rep__2_n_0 ),
        .I3(\cid[8][3]_i_3_n_0 ),
        .O(\cid[6][5]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h88B8)) 
    \cid[6][5]_i_2 
       (.I0(\cid[6][5]_i_4_n_0 ),
        .I1(\FSM_sequential_stage_reg[1]_rep__0_n_0 ),
        .I2(obs_cid[137]),
        .I3(\cid[8][3]_i_3_n_0 ),
        .O(\cid[6][5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT5 #(
    .INIT(32'h44440040)) 
    \cid[6][5]_i_3 
       (.I0(obs_growth[6]),
        .I1(obs_growth[7]),
        .I2(\cid[26][3]_i_4_n_0 ),
        .I3(obs_unrooted[6]),
        .I4(\cid[6][5]_i_5_n_0 ),
        .O(\cid[6][5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8FFFFFFFF0000000)) 
    \cid[6][5]_i_4 
       (.I0(obs_cid[24]),
        .I1(obs_cid[25]),
        .I2(obs_cid[27]),
        .I3(obs_cid[26]),
        .I4(obs_cid[28]),
        .I5(obs_cid[29]),
        .O(\cid[6][5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00F400FF000000F4)) 
    \cid[6][5]_i_5 
       (.I0(obs_cid[136]),
        .I1(obs_cid[40]),
        .I2(\cid[6][5]_i_6_n_0 ),
        .I3(\cid[26][3]_i_4_n_0 ),
        .I4(obs_cid[137]),
        .I5(obs_cid[41]),
        .O(\cid[6][5]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00F400FF000000F4)) 
    \cid[6][5]_i_6 
       (.I0(obs_cid[134]),
        .I1(obs_cid[38]),
        .I2(\cid[6][5]_i_7_n_0 ),
        .I3(\cid[6][5]_i_8_n_0 ),
        .I4(obs_cid[135]),
        .I5(obs_cid[39]),
        .O(\cid[6][5]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h40F440F4000040F4)) 
    \cid[6][5]_i_7 
       (.I0(obs_cid[132]),
        .I1(obs_cid[36]),
        .I2(obs_cid[37]),
        .I3(obs_cid[133]),
        .I4(obs_cid[134]),
        .I5(obs_cid[38]),
        .O(\cid[6][5]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair249" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cid[6][5]_i_8 
       (.I0(obs_cid[136]),
        .I1(obs_cid[40]),
        .O(\cid[6][5]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair259" *) 
  LUT4 #(
    .INIT(16'hBBB8)) 
    \cid[7][0]_i_1 
       (.I0(obs_cid[30]),
        .I1(\FSM_sequential_stage_reg[1]_rep__1_n_0 ),
        .I2(obs_cid[150]),
        .I3(\cid[9][3]_i_3_n_0 ),
        .O(\cid[7][0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h6F6F6F60)) 
    \cid[7][1]_i_1 
       (.I0(obs_cid[31]),
        .I1(\cid[7][1]_i_2_n_0 ),
        .I2(\FSM_sequential_stage_reg[1]_rep__1_n_0 ),
        .I3(obs_cid[151]),
        .I4(\cid[9][3]_i_3_n_0 ),
        .O(\cid[7][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair127" *) 
  LUT5 #(
    .INIT(32'h00001115)) 
    \cid[7][1]_i_2 
       (.I0(obs_cid[34]),
        .I1(obs_cid[33]),
        .I2(obs_cid[31]),
        .I3(obs_cid[32]),
        .I4(obs_cid[35]),
        .O(\cid[7][1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFEEF0EEF0EEFFEE)) 
    \cid[7][2]_i_1 
       (.I0(\cid[9][3]_i_3_n_0 ),
        .I1(obs_cid[152]),
        .I2(\cid[7][4]_i_2_n_0 ),
        .I3(\FSM_sequential_stage_reg[1]_rep__0_n_0 ),
        .I4(obs_cid[32]),
        .I5(\cid[7][2]_i_2_n_0 ),
        .O(\cid[7][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair127" *) 
  LUT5 #(
    .INIT(32'h00000015)) 
    \cid[7][2]_i_2 
       (.I0(obs_cid[35]),
        .I1(obs_cid[32]),
        .I2(obs_cid[33]),
        .I3(obs_cid[34]),
        .I4(obs_cid[31]),
        .O(\cid[7][2]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h88B8)) 
    \cid[7][3]_i_1 
       (.I0(\cid[7][3]_i_2_n_0 ),
        .I1(\FSM_sequential_stage_reg[1]_rep__0_n_0 ),
        .I2(obs_cid[153]),
        .I3(\cid[9][3]_i_3_n_0 ),
        .O(\cid[7][3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h80FFFF0000FCFF00)) 
    \cid[7][3]_i_2 
       (.I0(obs_cid[30]),
        .I1(obs_cid[31]),
        .I2(obs_cid[34]),
        .I3(obs_cid[33]),
        .I4(obs_cid[32]),
        .I5(obs_cid[35]),
        .O(\cid[7][3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBE00BE00BEFFBE00)) 
    \cid[7][4]_i_1 
       (.I0(\cid[7][4]_i_2_n_0 ),
        .I1(\cid[7][4]_i_3_n_0 ),
        .I2(obs_cid[34]),
        .I3(\FSM_sequential_stage_reg[1]_rep__0_n_0 ),
        .I4(obs_cid[154]),
        .I5(\cid[9][3]_i_3_n_0 ),
        .O(\cid[7][4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \cid[7][4]_i_2 
       (.I0(obs_cid[33]),
        .I1(obs_cid[31]),
        .I2(obs_cid[35]),
        .I3(obs_cid[30]),
        .I4(obs_cid[34]),
        .I5(obs_cid[32]),
        .O(\cid[7][4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair275" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cid[7][4]_i_3 
       (.I0(obs_cid[32]),
        .I1(obs_cid[33]),
        .O(\cid[7][4]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hAAA8)) 
    \cid[7][5]_i_1 
       (.I0(\cid[25][5]_i_1_n_0 ),
        .I1(\cid[7][5]_i_3_n_0 ),
        .I2(\FSM_sequential_stage_reg[1]_rep__2_n_0 ),
        .I3(\cid[9][3]_i_3_n_0 ),
        .O(\cid[7][5]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h88B8)) 
    \cid[7][5]_i_2 
       (.I0(\cid[7][5]_i_4_n_0 ),
        .I1(\FSM_sequential_stage_reg[1]_rep__0_n_0 ),
        .I2(obs_cid[155]),
        .I3(\cid[9][3]_i_3_n_0 ),
        .O(\cid[7][5]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00F20000)) 
    \cid[7][5]_i_3 
       (.I0(\cid[29][3]_i_3_n_0 ),
        .I1(obs_unrooted[7]),
        .I2(\cid[7][5]_i_5_n_0 ),
        .I3(obs_growth[62]),
        .I4(obs_growth[63]),
        .O(\cid[7][5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8FFFFFFFF0000000)) 
    \cid[7][5]_i_4 
       (.I0(obs_cid[30]),
        .I1(obs_cid[31]),
        .I2(obs_cid[33]),
        .I3(obs_cid[32]),
        .I4(obs_cid[34]),
        .I5(obs_cid[35]),
        .O(\cid[7][5]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h71)) 
    \cid[7][5]_i_5 
       (.I0(\cid[7][5]_i_6_n_0 ),
        .I1(obs_cid[155]),
        .I2(obs_cid[47]),
        .O(\cid[7][5]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h8E00FF8E)) 
    \cid[7][5]_i_6 
       (.I0(\cid[7][5]_i_7_n_0 ),
        .I1(obs_cid[153]),
        .I2(obs_cid[45]),
        .I3(obs_cid[154]),
        .I4(obs_cid[46]),
        .O(\cid[7][5]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hBF0B0000FFFFBF0B)) 
    \cid[7][5]_i_7 
       (.I0(obs_cid[150]),
        .I1(obs_cid[42]),
        .I2(obs_cid[43]),
        .I3(obs_cid[151]),
        .I4(obs_cid[152]),
        .I5(obs_cid[44]),
        .O(\cid[7][5]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF202F202F202)) 
    \cid[8][0]_i_1 
       (.I0(obs_cid[156]),
        .I1(\cid[8][5]_i_4_n_0 ),
        .I2(\FSM_sequential_stage_reg[1]_rep__1_n_0 ),
        .I3(obs_cid[36]),
        .I4(stage__0[2]),
        .I5(stage__0[0]),
        .O(\cid[8][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAABAFFBAFFBAAABA)) 
    \cid[8][1]_i_1 
       (.I0(\cid[29][4]_i_2_n_0 ),
        .I1(\cid[8][5]_i_4_n_0 ),
        .I2(obs_cid[157]),
        .I3(\FSM_sequential_stage_reg[1]_rep__1_n_0 ),
        .I4(\cid[8][1]_i_2_n_0 ),
        .I5(obs_cid[37]),
        .O(\cid[8][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair145" *) 
  LUT5 #(
    .INIT(32'h00001115)) 
    \cid[8][1]_i_2 
       (.I0(obs_cid[40]),
        .I1(obs_cid[39]),
        .I2(obs_cid[37]),
        .I3(obs_cid[38]),
        .I4(obs_cid[41]),
        .O(\cid[8][1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF535053505350)) 
    \cid[8][2]_i_1 
       (.I0(\cid[8][2]_i_2_n_0 ),
        .I1(\cid[8][5]_i_4_n_0 ),
        .I2(\FSM_sequential_stage_reg[1]_rep__1_n_0 ),
        .I3(obs_cid[158]),
        .I4(stage__0[2]),
        .I5(stage__0[0]),
        .O(\cid[8][2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h70F0F0F0F0F0F3C3)) 
    \cid[8][2]_i_2 
       (.I0(obs_cid[36]),
        .I1(obs_cid[41]),
        .I2(obs_cid[38]),
        .I3(obs_cid[39]),
        .I4(obs_cid[40]),
        .I5(obs_cid[37]),
        .O(\cid[8][2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFBFFFBFFFBFFABA)) 
    \cid[8][3]_i_1 
       (.I0(\cid[29][4]_i_2_n_0 ),
        .I1(\cid[8][3]_i_2_n_0 ),
        .I2(\FSM_sequential_stage_reg[1]_rep__1_n_0 ),
        .I3(\cid[8][3]_i_3_n_0 ),
        .I4(obs_cid[159]),
        .I5(\cid[8][5]_i_4_n_0 ),
        .O(\cid[8][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair145" *) 
  LUT5 #(
    .INIT(32'hC3C3C3C7)) 
    \cid[8][3]_i_2 
       (.I0(obs_cid[41]),
        .I1(obs_cid[38]),
        .I2(obs_cid[39]),
        .I3(obs_cid[40]),
        .I4(obs_cid[37]),
        .O(\cid[8][3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \cid[8][3]_i_3 
       (.I0(obs_cid[39]),
        .I1(obs_cid[37]),
        .I2(obs_cid[41]),
        .I3(obs_cid[36]),
        .I4(obs_cid[40]),
        .I5(obs_cid[38]),
        .O(\cid[8][3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF8F8888888F88)) 
    \cid[8][4]_i_1 
       (.I0(stage__0[0]),
        .I1(stage__0[2]),
        .I2(\cid[8][5]_i_4_n_0 ),
        .I3(obs_cid[160]),
        .I4(\FSM_sequential_stage_reg[1]_rep__1_n_0 ),
        .I5(\cid[8][4]_i_2_n_0 ),
        .O(\cid[8][4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h80FFFFFFFF000000)) 
    \cid[8][4]_i_2 
       (.I0(obs_cid[36]),
        .I1(obs_cid[41]),
        .I2(obs_cid[37]),
        .I3(obs_cid[38]),
        .I4(obs_cid[39]),
        .I5(obs_cid[40]),
        .O(\cid[8][4]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hAAA8)) 
    \cid[8][5]_i_1 
       (.I0(\cid[25][5]_i_1_n_0 ),
        .I1(\cid[8][5]_i_3_n_0 ),
        .I2(\FSM_sequential_stage_reg[1]_rep__2_n_0 ),
        .I3(\cid[8][5]_i_4_n_0 ),
        .O(\cid[8][5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF8F8888888F88)) 
    \cid[8][5]_i_2 
       (.I0(stage__0[0]),
        .I1(stage__0[2]),
        .I2(\cid[8][5]_i_4_n_0 ),
        .I3(obs_cid[161]),
        .I4(\FSM_sequential_stage_reg[1]_rep__1_n_0 ),
        .I5(\cid[8][5]_i_5_n_0 ),
        .O(\cid[8][5]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00F20000)) 
    \cid[8][5]_i_3 
       (.I0(\cid[26][3]_i_2_n_0 ),
        .I1(obs_unrooted[8]),
        .I2(\cid[8][5]_i_6_n_0 ),
        .I3(obs_growth[8]),
        .I4(obs_growth[9]),
        .O(\cid[8][5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \cid[8][5]_i_4 
       (.I0(obs_cid[53]),
        .I1(obs_cid[52]),
        .I2(obs_cid[48]),
        .I3(obs_cid[51]),
        .I4(obs_cid[49]),
        .I5(obs_cid[50]),
        .O(\cid[8][5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h8FFFFFFFF0000000)) 
    \cid[8][5]_i_5 
       (.I0(obs_cid[36]),
        .I1(obs_cid[37]),
        .I2(obs_cid[39]),
        .I3(obs_cid[38]),
        .I4(obs_cid[40]),
        .I5(obs_cid[41]),
        .O(\cid[8][5]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F4FF00F4)) 
    \cid[8][5]_i_6 
       (.I0(obs_cid[160]),
        .I1(obs_cid[52]),
        .I2(\cid[8][5]_i_7_n_0 ),
        .I3(obs_cid[161]),
        .I4(obs_cid[53]),
        .I5(\cid[26][3]_i_2_n_0 ),
        .O(\cid[8][5]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h00F400FF000000F4)) 
    \cid[8][5]_i_7 
       (.I0(obs_cid[158]),
        .I1(obs_cid[50]),
        .I2(\cid[8][5]_i_8_n_0 ),
        .I3(\cid[8][5]_i_9_n_0 ),
        .I4(obs_cid[159]),
        .I5(obs_cid[51]),
        .O(\cid[8][5]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h2F022F0200002F02)) 
    \cid[8][5]_i_8 
       (.I0(obs_cid[48]),
        .I1(obs_cid[156]),
        .I2(obs_cid[157]),
        .I3(obs_cid[49]),
        .I4(obs_cid[158]),
        .I5(obs_cid[50]),
        .O(\cid[8][5]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair315" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cid[8][5]_i_9 
       (.I0(obs_cid[160]),
        .I1(obs_cid[52]),
        .O(\cid[8][5]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFF88888FFF8)) 
    \cid[9][0]_i_1 
       (.I0(stage__0[0]),
        .I1(stage__0[2]),
        .I2(\cid[9][5]_i_4_n_0 ),
        .I3(obs_cid[174]),
        .I4(\FSM_sequential_stage_reg[1]_rep__1_n_0 ),
        .I5(obs_cid[42]),
        .O(\cid[9][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAABAFFBAFFBAAABA)) 
    \cid[9][1]_i_1 
       (.I0(\cid[29][4]_i_2_n_0 ),
        .I1(\cid[9][5]_i_4_n_0 ),
        .I2(obs_cid[175]),
        .I3(\FSM_sequential_stage_reg[1]_rep__1_n_0 ),
        .I4(\cid[9][1]_i_2_n_0 ),
        .I5(obs_cid[43]),
        .O(\cid[9][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair146" *) 
  LUT5 #(
    .INIT(32'h00001115)) 
    \cid[9][1]_i_2 
       (.I0(obs_cid[46]),
        .I1(obs_cid[45]),
        .I2(obs_cid[43]),
        .I3(obs_cid[44]),
        .I4(obs_cid[47]),
        .O(\cid[9][1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF535053505350)) 
    \cid[9][2]_i_1 
       (.I0(\cid[9][2]_i_2_n_0 ),
        .I1(\cid[9][5]_i_4_n_0 ),
        .I2(\FSM_sequential_stage_reg[1]_rep__0_n_0 ),
        .I3(obs_cid[176]),
        .I4(stage__0[2]),
        .I5(stage__0[0]),
        .O(\cid[9][2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2AAAAABBAAAAAA99)) 
    \cid[9][2]_i_2 
       (.I0(obs_cid[44]),
        .I1(obs_cid[46]),
        .I2(obs_cid[42]),
        .I3(obs_cid[47]),
        .I4(obs_cid[43]),
        .I5(obs_cid[45]),
        .O(\cid[9][2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFBFFFBFFFBFFABA)) 
    \cid[9][3]_i_1 
       (.I0(\cid[29][4]_i_2_n_0 ),
        .I1(\cid[9][3]_i_2_n_0 ),
        .I2(\FSM_sequential_stage_reg[1]_rep__0_n_0 ),
        .I3(\cid[9][3]_i_3_n_0 ),
        .I4(obs_cid[177]),
        .I5(\cid[9][5]_i_4_n_0 ),
        .O(\cid[9][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair146" *) 
  LUT5 #(
    .INIT(32'hC3C3C3C7)) 
    \cid[9][3]_i_2 
       (.I0(obs_cid[47]),
        .I1(obs_cid[44]),
        .I2(obs_cid[45]),
        .I3(obs_cid[46]),
        .I4(obs_cid[43]),
        .O(\cid[9][3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \cid[9][3]_i_3 
       (.I0(obs_cid[45]),
        .I1(obs_cid[43]),
        .I2(obs_cid[47]),
        .I3(obs_cid[42]),
        .I4(obs_cid[46]),
        .I5(obs_cid[44]),
        .O(\cid[9][3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF8F8888888F88)) 
    \cid[9][4]_i_1 
       (.I0(stage__0[0]),
        .I1(stage__0[2]),
        .I2(\cid[9][5]_i_4_n_0 ),
        .I3(obs_cid[178]),
        .I4(\FSM_sequential_stage_reg[1]_rep__0_n_0 ),
        .I5(\cid[9][4]_i_2_n_0 ),
        .O(\cid[9][4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h80FFFFFFFF000000)) 
    \cid[9][4]_i_2 
       (.I0(obs_cid[42]),
        .I1(obs_cid[47]),
        .I2(obs_cid[43]),
        .I3(obs_cid[44]),
        .I4(obs_cid[45]),
        .I5(obs_cid[46]),
        .O(\cid[9][4]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hAAA8)) 
    \cid[9][5]_i_1 
       (.I0(\cid[25][5]_i_1_n_0 ),
        .I1(\cid[9][5]_i_3_n_0 ),
        .I2(\FSM_sequential_stage_reg[1]_rep__2_n_0 ),
        .I3(\cid[9][5]_i_4_n_0 ),
        .O(\cid[9][5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF8F8888888F88)) 
    \cid[9][5]_i_2 
       (.I0(stage__0[0]),
        .I1(stage__0[2]),
        .I2(\cid[9][5]_i_4_n_0 ),
        .I3(obs_cid[179]),
        .I4(\FSM_sequential_stage_reg[1]_rep__0_n_0 ),
        .I5(\cid[9][5]_i_5_n_0 ),
        .O(\cid[9][5]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00F20000)) 
    \cid[9][5]_i_3 
       (.I0(\cid[29][5]_i_4_n_0 ),
        .I1(obs_unrooted[9]),
        .I2(\cid[9][5]_i_6_n_0 ),
        .I3(obs_growth[78]),
        .I4(obs_growth[79]),
        .O(\cid[9][5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \cid[9][5]_i_4 
       (.I0(obs_cid[58]),
        .I1(obs_cid[57]),
        .I2(obs_cid[55]),
        .I3(obs_cid[59]),
        .I4(obs_cid[54]),
        .I5(obs_cid[56]),
        .O(\cid[9][5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h8FFFFFFFF0000000)) 
    \cid[9][5]_i_5 
       (.I0(obs_cid[42]),
        .I1(obs_cid[43]),
        .I2(obs_cid[45]),
        .I3(obs_cid[44]),
        .I4(obs_cid[46]),
        .I5(obs_cid[47]),
        .O(\cid[9][5]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h71)) 
    \cid[9][5]_i_6 
       (.I0(\cid[9][5]_i_7_n_0 ),
        .I1(obs_cid[179]),
        .I2(obs_cid[59]),
        .O(\cid[9][5]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h8E00FF8E)) 
    \cid[9][5]_i_7 
       (.I0(\cid[9][5]_i_8_n_0 ),
        .I1(obs_cid[177]),
        .I2(obs_cid[57]),
        .I3(obs_cid[178]),
        .I4(obs_cid[58]),
        .O(\cid[9][5]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hBF0B0000FFFFBF0B)) 
    \cid[9][5]_i_8 
       (.I0(obs_cid[174]),
        .I1(obs_cid[54]),
        .I2(obs_cid[55]),
        .I3(obs_cid[175]),
        .I4(obs_cid[176]),
        .I5(obs_cid[56]),
        .O(\cid[9][5]_i_8_n_0 ));
  FDRE \cid_reg[0][0] 
       (.C(clk),
        .CE(cid),
        .D(\cid[0][0]_i_1_n_0 ),
        .Q(obs_cid[0]),
        .R(reset));
  FDRE \cid_reg[0][1] 
       (.C(clk),
        .CE(cid),
        .D(\cid[0][1]_i_1_n_0 ),
        .Q(obs_cid[1]),
        .R(reset));
  FDRE \cid_reg[0][2] 
       (.C(clk),
        .CE(cid),
        .D(\cid[0][2]_i_1_n_0 ),
        .Q(obs_cid[2]),
        .R(reset));
  FDRE \cid_reg[0][3] 
       (.C(clk),
        .CE(cid),
        .D(\cid[0][3]_i_1_n_0 ),
        .Q(obs_cid[3]),
        .R(reset));
  FDRE \cid_reg[0][4] 
       (.C(clk),
        .CE(cid),
        .D(\cid[0][4]_i_1_n_0 ),
        .Q(obs_cid[4]),
        .R(reset));
  FDRE \cid_reg[0][5] 
       (.C(clk),
        .CE(cid),
        .D(\cid[0][5]_i_2_n_0 ),
        .Q(obs_cid[5]),
        .R(reset));
  FDRE \cid_reg[10][0] 
       (.C(clk),
        .CE(\cid[13][5]_i_1_n_0 ),
        .D(\cid[10][0]_i_1_n_0 ),
        .Q(obs_cid[60]),
        .R(reset));
  FDSE \cid_reg[10][1] 
       (.C(clk),
        .CE(\cid[13][5]_i_1_n_0 ),
        .D(\cid[10][1]_i_1_n_0 ),
        .Q(obs_cid[61]),
        .S(reset));
  FDRE \cid_reg[10][2] 
       (.C(clk),
        .CE(\cid[13][5]_i_1_n_0 ),
        .D(\cid[10][2]_i_1_n_0 ),
        .Q(obs_cid[62]),
        .R(reset));
  FDSE \cid_reg[10][3] 
       (.C(clk),
        .CE(\cid[13][5]_i_1_n_0 ),
        .D(\cid[10][3]_i_1_n_0 ),
        .Q(obs_cid[63]),
        .S(reset));
  FDRE \cid_reg[10][4] 
       (.C(clk),
        .CE(\cid[13][5]_i_1_n_0 ),
        .D(\cid[10][4]_i_1_n_0 ),
        .Q(obs_cid[64]),
        .R(reset));
  FDRE \cid_reg[10][5] 
       (.C(clk),
        .CE(\cid[13][5]_i_1_n_0 ),
        .D(\cid[10][5]_i_1_n_0 ),
        .Q(obs_cid[65]),
        .R(reset));
  FDSE \cid_reg[11][0] 
       (.C(clk),
        .CE(\cid[13][5]_i_1_n_0 ),
        .D(\cid[11][0]_i_1_n_0 ),
        .Q(obs_cid[66]),
        .S(reset));
  FDSE \cid_reg[11][1] 
       (.C(clk),
        .CE(\cid[13][5]_i_1_n_0 ),
        .D(\cid[11][1]_i_1_n_0 ),
        .Q(obs_cid[67]),
        .S(reset));
  FDRE \cid_reg[11][2] 
       (.C(clk),
        .CE(\cid[13][5]_i_1_n_0 ),
        .D(\cid[11][2]_i_1_n_0 ),
        .Q(obs_cid[68]),
        .R(reset));
  FDSE \cid_reg[11][3] 
       (.C(clk),
        .CE(\cid[13][5]_i_1_n_0 ),
        .D(\cid[11][3]_i_1_n_0 ),
        .Q(obs_cid[69]),
        .S(reset));
  FDRE \cid_reg[11][4] 
       (.C(clk),
        .CE(\cid[13][5]_i_1_n_0 ),
        .D(\cid[11][4]_i_1_n_0 ),
        .Q(obs_cid[70]),
        .R(reset));
  FDRE \cid_reg[11][5] 
       (.C(clk),
        .CE(\cid[13][5]_i_1_n_0 ),
        .D(\cid[11][5]_i_1_n_0 ),
        .Q(obs_cid[71]),
        .R(reset));
  FDRE \cid_reg[12][0] 
       (.C(clk),
        .CE(\cid[13][5]_i_1_n_0 ),
        .D(\cid[12][0]_i_1_n_0 ),
        .Q(obs_cid[72]),
        .R(reset));
  FDRE \cid_reg[12][1] 
       (.C(clk),
        .CE(\cid[13][5]_i_1_n_0 ),
        .D(\cid[12][1]_i_1_n_0 ),
        .Q(obs_cid[73]),
        .R(reset));
  FDSE \cid_reg[12][2] 
       (.C(clk),
        .CE(\cid[13][5]_i_1_n_0 ),
        .D(\cid[12][2]_i_1_n_0 ),
        .Q(obs_cid[74]),
        .S(reset));
  FDSE \cid_reg[12][3] 
       (.C(clk),
        .CE(\cid[13][5]_i_1_n_0 ),
        .D(\cid[12][3]_i_1_n_0 ),
        .Q(obs_cid[75]),
        .S(reset));
  FDRE \cid_reg[12][4] 
       (.C(clk),
        .CE(\cid[13][5]_i_1_n_0 ),
        .D(\cid[12][4]_i_1_n_0 ),
        .Q(obs_cid[76]),
        .R(reset));
  FDRE \cid_reg[12][5] 
       (.C(clk),
        .CE(\cid[13][5]_i_1_n_0 ),
        .D(\cid[12][5]_i_1_n_0 ),
        .Q(obs_cid[77]),
        .R(reset));
  FDSE \cid_reg[13][0] 
       (.C(clk),
        .CE(\cid[13][5]_i_1_n_0 ),
        .D(\cid[13][0]_i_1_n_0 ),
        .Q(obs_cid[78]),
        .S(reset));
  FDRE \cid_reg[13][1] 
       (.C(clk),
        .CE(\cid[13][5]_i_1_n_0 ),
        .D(\cid[13][1]_i_1_n_0 ),
        .Q(obs_cid[79]),
        .R(reset));
  FDSE \cid_reg[13][2] 
       (.C(clk),
        .CE(\cid[13][5]_i_1_n_0 ),
        .D(\cid[13][2]_i_1_n_0 ),
        .Q(obs_cid[80]),
        .S(reset));
  FDSE \cid_reg[13][3] 
       (.C(clk),
        .CE(\cid[13][5]_i_1_n_0 ),
        .D(\cid[13][3]_i_1_n_0 ),
        .Q(obs_cid[81]),
        .S(reset));
  FDRE \cid_reg[13][4] 
       (.C(clk),
        .CE(\cid[13][5]_i_1_n_0 ),
        .D(\cid[13][4]_i_1_n_0 ),
        .Q(obs_cid[82]),
        .R(reset));
  FDRE \cid_reg[13][5] 
       (.C(clk),
        .CE(\cid[13][5]_i_1_n_0 ),
        .D(\cid[13][5]_i_2_n_0 ),
        .Q(obs_cid[83]),
        .R(reset));
  FDRE \cid_reg[14][0] 
       (.C(clk),
        .CE(\cid[25][5]_i_1_n_0 ),
        .D(\cid[14][0]_i_1_n_0 ),
        .Q(obs_cid[84]),
        .R(reset));
  FDSE \cid_reg[14][1] 
       (.C(clk),
        .CE(\cid[25][5]_i_1_n_0 ),
        .D(\cid[14][1]_i_1_n_0 ),
        .Q(obs_cid[85]),
        .S(reset));
  FDSE \cid_reg[14][2] 
       (.C(clk),
        .CE(\cid[25][5]_i_1_n_0 ),
        .D(\cid[14][2]_i_1_n_0 ),
        .Q(obs_cid[86]),
        .S(reset));
  FDSE \cid_reg[14][3] 
       (.C(clk),
        .CE(\cid[25][5]_i_1_n_0 ),
        .D(\cid[14][3]_i_1_n_0 ),
        .Q(obs_cid[87]),
        .S(reset));
  FDRE \cid_reg[14][4] 
       (.C(clk),
        .CE(\cid[25][5]_i_1_n_0 ),
        .D(\cid[14][4]_i_1_n_0 ),
        .Q(obs_cid[88]),
        .R(reset));
  FDRE \cid_reg[14][5] 
       (.C(clk),
        .CE(\cid[25][5]_i_1_n_0 ),
        .D(\cid[14][5]_i_1_n_0 ),
        .Q(obs_cid[89]),
        .R(reset));
  FDSE \cid_reg[15][0] 
       (.C(clk),
        .CE(\cid[25][5]_i_1_n_0 ),
        .D(\cid[15][0]_i_1_n_0 ),
        .Q(obs_cid[90]),
        .S(reset));
  FDSE \cid_reg[15][1] 
       (.C(clk),
        .CE(\cid[25][5]_i_1_n_0 ),
        .D(\cid[15][1]_i_1_n_0 ),
        .Q(obs_cid[91]),
        .S(reset));
  FDSE \cid_reg[15][2] 
       (.C(clk),
        .CE(\cid[25][5]_i_1_n_0 ),
        .D(\cid[15][2]_i_1_n_0 ),
        .Q(obs_cid[92]),
        .S(reset));
  FDSE \cid_reg[15][3] 
       (.C(clk),
        .CE(\cid[25][5]_i_1_n_0 ),
        .D(\cid[15][3]_i_1_n_0 ),
        .Q(obs_cid[93]),
        .S(reset));
  FDRE \cid_reg[15][4] 
       (.C(clk),
        .CE(\cid[25][5]_i_1_n_0 ),
        .D(\cid[15][4]_i_1_n_0 ),
        .Q(obs_cid[94]),
        .R(reset));
  FDRE \cid_reg[15][5] 
       (.C(clk),
        .CE(\cid[25][5]_i_1_n_0 ),
        .D(\cid[15][5]_i_1_n_0 ),
        .Q(obs_cid[95]),
        .R(reset));
  FDRE \cid_reg[16][0] 
       (.C(clk),
        .CE(\cid[25][5]_i_1_n_0 ),
        .D(\cid[16][0]_i_1_n_0 ),
        .Q(obs_cid[96]),
        .R(reset));
  FDRE \cid_reg[16][1] 
       (.C(clk),
        .CE(\cid[25][5]_i_1_n_0 ),
        .D(\cid[16][1]_i_1_n_0 ),
        .Q(obs_cid[97]),
        .R(reset));
  FDRE \cid_reg[16][2] 
       (.C(clk),
        .CE(\cid[25][5]_i_1_n_0 ),
        .D(\cid[16][2]_i_1_n_0 ),
        .Q(obs_cid[98]),
        .R(reset));
  FDRE \cid_reg[16][3] 
       (.C(clk),
        .CE(\cid[25][5]_i_1_n_0 ),
        .D(\cid[16][3]_i_1_n_0 ),
        .Q(obs_cid[99]),
        .R(reset));
  FDSE \cid_reg[16][4] 
       (.C(clk),
        .CE(\cid[25][5]_i_1_n_0 ),
        .D(\cid[16][4]_i_1_n_0 ),
        .Q(obs_cid[100]),
        .S(reset));
  FDRE \cid_reg[16][5] 
       (.C(clk),
        .CE(\cid[25][5]_i_1_n_0 ),
        .D(\cid[16][5]_i_1_n_0 ),
        .Q(obs_cid[101]),
        .R(reset));
  FDSE \cid_reg[17][0] 
       (.C(clk),
        .CE(\cid[25][5]_i_1_n_0 ),
        .D(\cid[17][0]_i_1_n_0 ),
        .Q(obs_cid[102]),
        .S(reset));
  FDRE \cid_reg[17][1] 
       (.C(clk),
        .CE(\cid[25][5]_i_1_n_0 ),
        .D(\cid[17][1]_i_1_n_0 ),
        .Q(obs_cid[103]),
        .R(reset));
  FDRE \cid_reg[17][2] 
       (.C(clk),
        .CE(\cid[25][5]_i_1_n_0 ),
        .D(\cid[17][2]_i_1_n_0 ),
        .Q(obs_cid[104]),
        .R(reset));
  FDRE \cid_reg[17][3] 
       (.C(clk),
        .CE(\cid[25][5]_i_1_n_0 ),
        .D(\cid[17][3]_i_1_n_0 ),
        .Q(obs_cid[105]),
        .R(reset));
  FDSE \cid_reg[17][4] 
       (.C(clk),
        .CE(\cid[25][5]_i_1_n_0 ),
        .D(\cid[17][4]_i_1_n_0 ),
        .Q(obs_cid[106]),
        .S(reset));
  FDRE \cid_reg[17][5] 
       (.C(clk),
        .CE(\cid[25][5]_i_1_n_0 ),
        .D(\cid[17][5]_i_1_n_0 ),
        .Q(obs_cid[107]),
        .R(reset));
  FDRE \cid_reg[18][0] 
       (.C(clk),
        .CE(\cid[25][5]_i_1_n_0 ),
        .D(\cid[18][0]_i_1_n_0 ),
        .Q(obs_cid[108]),
        .R(reset));
  FDSE \cid_reg[18][1] 
       (.C(clk),
        .CE(\cid[25][5]_i_1_n_0 ),
        .D(\cid[18][1]_i_1_n_0 ),
        .Q(obs_cid[109]),
        .S(reset));
  FDRE \cid_reg[18][2] 
       (.C(clk),
        .CE(\cid[25][5]_i_1_n_0 ),
        .D(\cid[18][2]_i_1_n_0 ),
        .Q(obs_cid[110]),
        .R(reset));
  FDRE \cid_reg[18][3] 
       (.C(clk),
        .CE(\cid[25][5]_i_1_n_0 ),
        .D(\cid[18][3]_i_1_n_0 ),
        .Q(obs_cid[111]),
        .R(reset));
  FDSE \cid_reg[18][4] 
       (.C(clk),
        .CE(\cid[25][5]_i_1_n_0 ),
        .D(\cid[18][4]_i_1_n_0 ),
        .Q(obs_cid[112]),
        .S(reset));
  FDRE \cid_reg[18][5] 
       (.C(clk),
        .CE(\cid[25][5]_i_1_n_0 ),
        .D(\cid[18][5]_i_1_n_0 ),
        .Q(obs_cid[113]),
        .R(reset));
  FDSE \cid_reg[19][0] 
       (.C(clk),
        .CE(\cid[25][5]_i_1_n_0 ),
        .D(\cid[19][0]_i_1_n_0 ),
        .Q(obs_cid[114]),
        .S(reset));
  FDSE \cid_reg[19][1] 
       (.C(clk),
        .CE(\cid[25][5]_i_1_n_0 ),
        .D(\cid[19][1]_i_1_n_0 ),
        .Q(obs_cid[115]),
        .S(reset));
  FDRE \cid_reg[19][2] 
       (.C(clk),
        .CE(\cid[25][5]_i_1_n_0 ),
        .D(\cid[19][2]_i_1_n_0 ),
        .Q(obs_cid[116]),
        .R(reset));
  FDRE \cid_reg[19][3] 
       (.C(clk),
        .CE(\cid[25][5]_i_1_n_0 ),
        .D(\cid[19][3]_i_1_n_0 ),
        .Q(obs_cid[117]),
        .R(reset));
  FDSE \cid_reg[19][4] 
       (.C(clk),
        .CE(\cid[25][5]_i_1_n_0 ),
        .D(\cid[19][4]_i_1_n_0 ),
        .Q(obs_cid[118]),
        .S(reset));
  FDRE \cid_reg[19][5] 
       (.C(clk),
        .CE(\cid[25][5]_i_1_n_0 ),
        .D(\cid[19][5]_i_1_n_0 ),
        .Q(obs_cid[119]),
        .R(reset));
  FDSE \cid_reg[1][0] 
       (.C(clk),
        .CE(\cid[1][5]_i_1_n_0 ),
        .D(\cid[1][0]_i_1_n_0 ),
        .Q(obs_cid[6]),
        .S(reset));
  FDRE \cid_reg[1][1] 
       (.C(clk),
        .CE(\cid[1][5]_i_1_n_0 ),
        .D(\cid[1][1]_i_1_n_0 ),
        .Q(obs_cid[7]),
        .R(reset));
  FDRE \cid_reg[1][2] 
       (.C(clk),
        .CE(\cid[1][5]_i_1_n_0 ),
        .D(\cid[1][2]_i_1_n_0 ),
        .Q(obs_cid[8]),
        .R(reset));
  FDRE \cid_reg[1][3] 
       (.C(clk),
        .CE(\cid[1][5]_i_1_n_0 ),
        .D(\cid[1][3]_i_1_n_0 ),
        .Q(obs_cid[9]),
        .R(reset));
  FDRE \cid_reg[1][4] 
       (.C(clk),
        .CE(\cid[1][5]_i_1_n_0 ),
        .D(\cid[1][4]_i_1_n_0 ),
        .Q(obs_cid[10]),
        .R(reset));
  FDRE \cid_reg[1][5] 
       (.C(clk),
        .CE(\cid[1][5]_i_1_n_0 ),
        .D(\cid[1][5]_i_2_n_0 ),
        .Q(obs_cid[11]),
        .R(reset));
  FDRE \cid_reg[20][0] 
       (.C(clk),
        .CE(\cid[25][5]_i_1_n_0 ),
        .D(\cid[20][0]_i_1_n_0 ),
        .Q(obs_cid[120]),
        .R(reset));
  FDRE \cid_reg[20][1] 
       (.C(clk),
        .CE(\cid[25][5]_i_1_n_0 ),
        .D(\cid[20][1]_i_1_n_0 ),
        .Q(obs_cid[121]),
        .R(reset));
  FDSE \cid_reg[20][2] 
       (.C(clk),
        .CE(\cid[25][5]_i_1_n_0 ),
        .D(\cid[20][2]_i_1_n_0 ),
        .Q(obs_cid[122]),
        .S(reset));
  FDRE \cid_reg[20][3] 
       (.C(clk),
        .CE(\cid[25][5]_i_1_n_0 ),
        .D(\cid[20][3]_i_1_n_0 ),
        .Q(obs_cid[123]),
        .R(reset));
  FDSE \cid_reg[20][4] 
       (.C(clk),
        .CE(\cid[25][5]_i_1_n_0 ),
        .D(\cid[20][4]_i_1_n_0 ),
        .Q(obs_cid[124]),
        .S(reset));
  FDRE \cid_reg[20][5] 
       (.C(clk),
        .CE(\cid[25][5]_i_1_n_0 ),
        .D(\cid[20][5]_i_1_n_0 ),
        .Q(obs_cid[125]),
        .R(reset));
  FDSE \cid_reg[21][0] 
       (.C(clk),
        .CE(\cid[25][5]_i_1_n_0 ),
        .D(\cid[21][0]_i_1_n_0 ),
        .Q(obs_cid[126]),
        .S(reset));
  FDRE \cid_reg[21][1] 
       (.C(clk),
        .CE(\cid[25][5]_i_1_n_0 ),
        .D(\cid[21][1]_i_1_n_0 ),
        .Q(obs_cid[127]),
        .R(reset));
  FDSE \cid_reg[21][2] 
       (.C(clk),
        .CE(\cid[25][5]_i_1_n_0 ),
        .D(\cid[21][2]_i_1_n_0 ),
        .Q(obs_cid[128]),
        .S(reset));
  FDRE \cid_reg[21][3] 
       (.C(clk),
        .CE(\cid[25][5]_i_1_n_0 ),
        .D(\cid[21][3]_i_1_n_0 ),
        .Q(obs_cid[129]),
        .R(reset));
  FDSE \cid_reg[21][4] 
       (.C(clk),
        .CE(\cid[25][5]_i_1_n_0 ),
        .D(\cid[21][4]_i_1_n_0 ),
        .Q(obs_cid[130]),
        .S(reset));
  FDRE \cid_reg[21][5] 
       (.C(clk),
        .CE(\cid[25][5]_i_1_n_0 ),
        .D(\cid[21][5]_i_1_n_0 ),
        .Q(obs_cid[131]),
        .R(reset));
  FDRE \cid_reg[22][0] 
       (.C(clk),
        .CE(\cid[25][5]_i_1_n_0 ),
        .D(\cid[22][0]_i_1_n_0 ),
        .Q(obs_cid[132]),
        .R(reset));
  FDSE \cid_reg[22][1] 
       (.C(clk),
        .CE(\cid[25][5]_i_1_n_0 ),
        .D(\cid[22][1]_i_1_n_0 ),
        .Q(obs_cid[133]),
        .S(reset));
  FDSE \cid_reg[22][2] 
       (.C(clk),
        .CE(\cid[25][5]_i_1_n_0 ),
        .D(\cid[22][2]_i_1_n_0 ),
        .Q(obs_cid[134]),
        .S(reset));
  FDRE \cid_reg[22][3] 
       (.C(clk),
        .CE(\cid[25][5]_i_1_n_0 ),
        .D(\cid[22][3]_i_1_n_0 ),
        .Q(obs_cid[135]),
        .R(reset));
  FDSE \cid_reg[22][4] 
       (.C(clk),
        .CE(\cid[25][5]_i_1_n_0 ),
        .D(\cid[22][4]_i_1_n_0 ),
        .Q(obs_cid[136]),
        .S(reset));
  FDRE \cid_reg[22][5] 
       (.C(clk),
        .CE(\cid[25][5]_i_1_n_0 ),
        .D(\cid[22][5]_i_1_n_0 ),
        .Q(obs_cid[137]),
        .R(reset));
  FDSE \cid_reg[23][0] 
       (.C(clk),
        .CE(\cid[25][5]_i_1_n_0 ),
        .D(\cid[23][0]_i_1_n_0 ),
        .Q(obs_cid[138]),
        .S(reset));
  FDSE \cid_reg[23][1] 
       (.C(clk),
        .CE(\cid[25][5]_i_1_n_0 ),
        .D(\cid[23][1]_i_1_n_0 ),
        .Q(obs_cid[139]),
        .S(reset));
  FDSE \cid_reg[23][2] 
       (.C(clk),
        .CE(\cid[25][5]_i_1_n_0 ),
        .D(\cid[23][2]_i_1_n_0 ),
        .Q(obs_cid[140]),
        .S(reset));
  FDRE \cid_reg[23][3] 
       (.C(clk),
        .CE(\cid[25][5]_i_1_n_0 ),
        .D(\cid[23][3]_i_1_n_0 ),
        .Q(obs_cid[141]),
        .R(reset));
  FDSE \cid_reg[23][4] 
       (.C(clk),
        .CE(\cid[25][5]_i_1_n_0 ),
        .D(\cid[23][4]_i_1_n_0 ),
        .Q(obs_cid[142]),
        .S(reset));
  FDRE \cid_reg[23][5] 
       (.C(clk),
        .CE(\cid[25][5]_i_1_n_0 ),
        .D(\cid[23][5]_i_1_n_0 ),
        .Q(obs_cid[143]),
        .R(reset));
  FDRE \cid_reg[24][0] 
       (.C(clk),
        .CE(\cid[25][5]_i_1_n_0 ),
        .D(\cid[24][0]_i_1_n_0 ),
        .Q(obs_cid[144]),
        .R(reset));
  FDRE \cid_reg[24][1] 
       (.C(clk),
        .CE(\cid[25][5]_i_1_n_0 ),
        .D(\cid[24][1]_i_1_n_0 ),
        .Q(obs_cid[145]),
        .R(reset));
  FDRE \cid_reg[24][2] 
       (.C(clk),
        .CE(\cid[25][5]_i_1_n_0 ),
        .D(\cid[24][2]_i_1_n_0 ),
        .Q(obs_cid[146]),
        .R(reset));
  FDSE \cid_reg[24][3] 
       (.C(clk),
        .CE(\cid[25][5]_i_1_n_0 ),
        .D(\cid[24][3]_i_1_n_0 ),
        .Q(obs_cid[147]),
        .S(reset));
  FDSE \cid_reg[24][4] 
       (.C(clk),
        .CE(\cid[25][5]_i_1_n_0 ),
        .D(\cid[24][4]_i_1_n_0 ),
        .Q(obs_cid[148]),
        .S(reset));
  FDRE \cid_reg[24][5] 
       (.C(clk),
        .CE(\cid[25][5]_i_1_n_0 ),
        .D(\cid[24][5]_i_1_n_0 ),
        .Q(obs_cid[149]),
        .R(reset));
  FDSE \cid_reg[25][0] 
       (.C(clk),
        .CE(\cid[25][5]_i_1_n_0 ),
        .D(\cid[25][0]_i_1_n_0 ),
        .Q(obs_cid[150]),
        .S(reset));
  FDRE \cid_reg[25][1] 
       (.C(clk),
        .CE(\cid[25][5]_i_1_n_0 ),
        .D(\cid[25][1]_i_1_n_0 ),
        .Q(obs_cid[151]),
        .R(reset));
  FDRE \cid_reg[25][2] 
       (.C(clk),
        .CE(\cid[25][5]_i_1_n_0 ),
        .D(\cid[25][2]_i_1_n_0 ),
        .Q(obs_cid[152]),
        .R(reset));
  FDSE \cid_reg[25][3] 
       (.C(clk),
        .CE(\cid[25][5]_i_1_n_0 ),
        .D(\cid[25][3]_i_1_n_0 ),
        .Q(obs_cid[153]),
        .S(reset));
  FDSE \cid_reg[25][4] 
       (.C(clk),
        .CE(\cid[25][5]_i_1_n_0 ),
        .D(\cid[25][4]_i_1_n_0 ),
        .Q(obs_cid[154]),
        .S(reset));
  FDRE \cid_reg[25][5] 
       (.C(clk),
        .CE(\cid[25][5]_i_1_n_0 ),
        .D(\cid[25][5]_i_2_n_0 ),
        .Q(obs_cid[155]),
        .R(reset));
  FDRE \cid_reg[26][0] 
       (.C(clk),
        .CE(\cid[26][5]_i_1_n_0 ),
        .D(\cid[26][0]_i_1_n_0 ),
        .Q(obs_cid[156]),
        .R(reset));
  FDSE \cid_reg[26][1] 
       (.C(clk),
        .CE(\cid[26][5]_i_1_n_0 ),
        .D(\cid[26][1]_i_1_n_0 ),
        .Q(obs_cid[157]),
        .S(reset));
  FDRE \cid_reg[26][2] 
       (.C(clk),
        .CE(\cid[26][5]_i_1_n_0 ),
        .D(\cid[26][2]_i_1_n_0 ),
        .Q(obs_cid[158]),
        .R(reset));
  FDSE \cid_reg[26][3] 
       (.C(clk),
        .CE(\cid[26][5]_i_1_n_0 ),
        .D(\cid[26][3]_i_1_n_0 ),
        .Q(obs_cid[159]),
        .S(reset));
  FDSE \cid_reg[26][4] 
       (.C(clk),
        .CE(\cid[26][5]_i_1_n_0 ),
        .D(\cid[26][4]_i_1_n_0 ),
        .Q(obs_cid[160]),
        .S(reset));
  FDRE \cid_reg[26][5] 
       (.C(clk),
        .CE(\cid[26][5]_i_1_n_0 ),
        .D(\cid[26][5]_i_2_n_0 ),
        .Q(obs_cid[161]),
        .R(reset));
  FDSE \cid_reg[27][0] 
       (.C(clk),
        .CE(\cid[27][5]_i_1_n_0 ),
        .D(\cid[27][0]_i_1_n_0 ),
        .Q(obs_cid[162]),
        .S(reset));
  FDSE \cid_reg[27][1] 
       (.C(clk),
        .CE(\cid[27][5]_i_1_n_0 ),
        .D(\cid[27][1]_i_1_n_0 ),
        .Q(obs_cid[163]),
        .S(reset));
  FDRE \cid_reg[27][2] 
       (.C(clk),
        .CE(\cid[27][5]_i_1_n_0 ),
        .D(\cid[27][2]_i_1_n_0 ),
        .Q(obs_cid[164]),
        .R(reset));
  FDSE \cid_reg[27][3] 
       (.C(clk),
        .CE(\cid[27][5]_i_1_n_0 ),
        .D(\cid[27][3]_i_1_n_0 ),
        .Q(obs_cid[165]),
        .S(reset));
  FDSE \cid_reg[27][4] 
       (.C(clk),
        .CE(\cid[27][5]_i_1_n_0 ),
        .D(\cid[27][4]_i_1_n_0 ),
        .Q(obs_cid[166]),
        .S(reset));
  FDRE \cid_reg[27][5] 
       (.C(clk),
        .CE(\cid[27][5]_i_1_n_0 ),
        .D(\cid[27][5]_i_2_n_0 ),
        .Q(obs_cid[167]),
        .R(reset));
  FDRE \cid_reg[28][0] 
       (.C(clk),
        .CE(\cid[28][5]_i_1_n_0 ),
        .D(\cid[28][0]_i_1_n_0 ),
        .Q(obs_cid[168]),
        .R(reset));
  FDRE \cid_reg[28][1] 
       (.C(clk),
        .CE(\cid[28][5]_i_1_n_0 ),
        .D(\cid[28][1]_i_1_n_0 ),
        .Q(obs_cid[169]),
        .R(reset));
  FDSE \cid_reg[28][2] 
       (.C(clk),
        .CE(\cid[28][5]_i_1_n_0 ),
        .D(\cid[28][2]_i_1_n_0 ),
        .Q(obs_cid[170]),
        .S(reset));
  FDSE \cid_reg[28][3] 
       (.C(clk),
        .CE(\cid[28][5]_i_1_n_0 ),
        .D(\cid[28][3]_i_1_n_0 ),
        .Q(obs_cid[171]),
        .S(reset));
  FDSE \cid_reg[28][4] 
       (.C(clk),
        .CE(\cid[28][5]_i_1_n_0 ),
        .D(\cid[28][4]_i_1_n_0 ),
        .Q(obs_cid[172]),
        .S(reset));
  FDRE \cid_reg[28][5] 
       (.C(clk),
        .CE(\cid[28][5]_i_1_n_0 ),
        .D(\cid[28][5]_i_2_n_0 ),
        .Q(obs_cid[173]),
        .R(reset));
  FDSE \cid_reg[29][0] 
       (.C(clk),
        .CE(\cid[29][5]_i_1_n_0 ),
        .D(\cid[29][0]_i_1_n_0 ),
        .Q(obs_cid[174]),
        .S(reset));
  FDRE \cid_reg[29][1] 
       (.C(clk),
        .CE(\cid[29][5]_i_1_n_0 ),
        .D(\cid[29][1]_i_1_n_0 ),
        .Q(obs_cid[175]),
        .R(reset));
  FDSE \cid_reg[29][2] 
       (.C(clk),
        .CE(\cid[29][5]_i_1_n_0 ),
        .D(\cid[29][2]_i_1_n_0 ),
        .Q(obs_cid[176]),
        .S(reset));
  FDSE \cid_reg[29][3] 
       (.C(clk),
        .CE(\cid[29][5]_i_1_n_0 ),
        .D(\cid[29][3]_i_1_n_0 ),
        .Q(obs_cid[177]),
        .S(reset));
  FDSE \cid_reg[29][4] 
       (.C(clk),
        .CE(\cid[29][5]_i_1_n_0 ),
        .D(\cid[29][4]_i_1_n_0 ),
        .Q(obs_cid[178]),
        .S(reset));
  FDRE \cid_reg[29][5] 
       (.C(clk),
        .CE(\cid[29][5]_i_1_n_0 ),
        .D(\cid[29][5]_i_2_n_0 ),
        .Q(obs_cid[179]),
        .R(reset));
  FDRE \cid_reg[2][0] 
       (.C(clk),
        .CE(\cid[2][5]_i_1_n_0 ),
        .D(\cid[2][0]_i_1_n_0 ),
        .Q(obs_cid[12]),
        .R(reset));
  FDSE \cid_reg[2][1] 
       (.C(clk),
        .CE(\cid[2][5]_i_1_n_0 ),
        .D(\cid[2][1]_i_1_n_0 ),
        .Q(obs_cid[13]),
        .S(reset));
  FDRE \cid_reg[2][2] 
       (.C(clk),
        .CE(\cid[2][5]_i_1_n_0 ),
        .D(\cid[2][2]_i_1_n_0 ),
        .Q(obs_cid[14]),
        .R(reset));
  FDRE \cid_reg[2][3] 
       (.C(clk),
        .CE(\cid[2][5]_i_1_n_0 ),
        .D(\cid[2][3]_i_1_n_0 ),
        .Q(obs_cid[15]),
        .R(reset));
  FDRE \cid_reg[2][4] 
       (.C(clk),
        .CE(\cid[2][5]_i_1_n_0 ),
        .D(\cid[2][4]_i_1_n_0 ),
        .Q(obs_cid[16]),
        .R(reset));
  FDRE \cid_reg[2][5] 
       (.C(clk),
        .CE(\cid[2][5]_i_1_n_0 ),
        .D(\cid[2][5]_i_2_n_0 ),
        .Q(obs_cid[17]),
        .R(reset));
  FDSE \cid_reg[3][0] 
       (.C(clk),
        .CE(\cid[3][5]_i_1_n_0 ),
        .D(\cid[3][0]_i_1_n_0 ),
        .Q(obs_cid[18]),
        .S(reset));
  FDSE \cid_reg[3][1] 
       (.C(clk),
        .CE(\cid[3][5]_i_1_n_0 ),
        .D(\cid[3][1]_i_1_n_0 ),
        .Q(obs_cid[19]),
        .S(reset));
  FDRE \cid_reg[3][2] 
       (.C(clk),
        .CE(\cid[3][5]_i_1_n_0 ),
        .D(\cid[3][2]_i_1_n_0 ),
        .Q(obs_cid[20]),
        .R(reset));
  FDRE \cid_reg[3][3] 
       (.C(clk),
        .CE(\cid[3][5]_i_1_n_0 ),
        .D(\cid[3][3]_i_1_n_0 ),
        .Q(obs_cid[21]),
        .R(reset));
  FDRE \cid_reg[3][4] 
       (.C(clk),
        .CE(\cid[3][5]_i_1_n_0 ),
        .D(\cid[3][4]_i_1_n_0 ),
        .Q(obs_cid[22]),
        .R(reset));
  FDRE \cid_reg[3][5] 
       (.C(clk),
        .CE(\cid[3][5]_i_1_n_0 ),
        .D(\cid[3][5]_i_2_n_0 ),
        .Q(obs_cid[23]),
        .R(reset));
  FDRE \cid_reg[4][0] 
       (.C(clk),
        .CE(\cid[4][5]_i_1_n_0 ),
        .D(\cid[4][0]_i_1_n_0 ),
        .Q(obs_cid[24]),
        .R(reset));
  FDRE \cid_reg[4][1] 
       (.C(clk),
        .CE(\cid[4][5]_i_1_n_0 ),
        .D(\cid[4][1]_i_1_n_0 ),
        .Q(obs_cid[25]),
        .R(reset));
  FDSE \cid_reg[4][2] 
       (.C(clk),
        .CE(\cid[4][5]_i_1_n_0 ),
        .D(\cid[4][2]_i_1_n_0 ),
        .Q(obs_cid[26]),
        .S(reset));
  FDRE \cid_reg[4][3] 
       (.C(clk),
        .CE(\cid[4][5]_i_1_n_0 ),
        .D(\cid[4][3]_i_1_n_0 ),
        .Q(obs_cid[27]),
        .R(reset));
  FDRE \cid_reg[4][4] 
       (.C(clk),
        .CE(\cid[4][5]_i_1_n_0 ),
        .D(\cid[4][4]_i_1_n_0 ),
        .Q(obs_cid[28]),
        .R(reset));
  FDRE \cid_reg[4][5] 
       (.C(clk),
        .CE(\cid[4][5]_i_1_n_0 ),
        .D(\cid[4][5]_i_2_n_0 ),
        .Q(obs_cid[29]),
        .R(reset));
  FDSE \cid_reg[5][0] 
       (.C(clk),
        .CE(\cid[5][5]_i_1_n_0 ),
        .D(\cid[5][0]_i_1_n_0 ),
        .Q(obs_cid[30]),
        .S(reset));
  FDRE \cid_reg[5][1] 
       (.C(clk),
        .CE(\cid[5][5]_i_1_n_0 ),
        .D(\cid[5][1]_i_1_n_0 ),
        .Q(obs_cid[31]),
        .R(reset));
  FDSE \cid_reg[5][2] 
       (.C(clk),
        .CE(\cid[5][5]_i_1_n_0 ),
        .D(\cid[5][2]_i_1_n_0 ),
        .Q(obs_cid[32]),
        .S(reset));
  FDRE \cid_reg[5][3] 
       (.C(clk),
        .CE(\cid[5][5]_i_1_n_0 ),
        .D(\cid[5][3]_i_1_n_0 ),
        .Q(obs_cid[33]),
        .R(reset));
  FDRE \cid_reg[5][4] 
       (.C(clk),
        .CE(\cid[5][5]_i_1_n_0 ),
        .D(\cid[5][4]_i_1_n_0 ),
        .Q(obs_cid[34]),
        .R(reset));
  FDRE \cid_reg[5][5] 
       (.C(clk),
        .CE(\cid[5][5]_i_1_n_0 ),
        .D(\cid[5][5]_i_2_n_0 ),
        .Q(obs_cid[35]),
        .R(reset));
  FDRE \cid_reg[6][0] 
       (.C(clk),
        .CE(\cid[6][5]_i_1_n_0 ),
        .D(\cid[6][0]_i_1_n_0 ),
        .Q(obs_cid[36]),
        .R(reset));
  FDSE \cid_reg[6][1] 
       (.C(clk),
        .CE(\cid[6][5]_i_1_n_0 ),
        .D(\cid[6][1]_i_1_n_0 ),
        .Q(obs_cid[37]),
        .S(reset));
  FDSE \cid_reg[6][2] 
       (.C(clk),
        .CE(\cid[6][5]_i_1_n_0 ),
        .D(\cid[6][2]_i_1_n_0 ),
        .Q(obs_cid[38]),
        .S(reset));
  FDRE \cid_reg[6][3] 
       (.C(clk),
        .CE(\cid[6][5]_i_1_n_0 ),
        .D(\cid[6][3]_i_1_n_0 ),
        .Q(obs_cid[39]),
        .R(reset));
  FDRE \cid_reg[6][4] 
       (.C(clk),
        .CE(\cid[6][5]_i_1_n_0 ),
        .D(\cid[6][4]_i_1_n_0 ),
        .Q(obs_cid[40]),
        .R(reset));
  FDRE \cid_reg[6][5] 
       (.C(clk),
        .CE(\cid[6][5]_i_1_n_0 ),
        .D(\cid[6][5]_i_2_n_0 ),
        .Q(obs_cid[41]),
        .R(reset));
  FDSE \cid_reg[7][0] 
       (.C(clk),
        .CE(\cid[7][5]_i_1_n_0 ),
        .D(\cid[7][0]_i_1_n_0 ),
        .Q(obs_cid[42]),
        .S(reset));
  FDSE \cid_reg[7][1] 
       (.C(clk),
        .CE(\cid[7][5]_i_1_n_0 ),
        .D(\cid[7][1]_i_1_n_0 ),
        .Q(obs_cid[43]),
        .S(reset));
  FDSE \cid_reg[7][2] 
       (.C(clk),
        .CE(\cid[7][5]_i_1_n_0 ),
        .D(\cid[7][2]_i_1_n_0 ),
        .Q(obs_cid[44]),
        .S(reset));
  FDRE \cid_reg[7][3] 
       (.C(clk),
        .CE(\cid[7][5]_i_1_n_0 ),
        .D(\cid[7][3]_i_1_n_0 ),
        .Q(obs_cid[45]),
        .R(reset));
  FDRE \cid_reg[7][4] 
       (.C(clk),
        .CE(\cid[7][5]_i_1_n_0 ),
        .D(\cid[7][4]_i_1_n_0 ),
        .Q(obs_cid[46]),
        .R(reset));
  FDRE \cid_reg[7][5] 
       (.C(clk),
        .CE(\cid[7][5]_i_1_n_0 ),
        .D(\cid[7][5]_i_2_n_0 ),
        .Q(obs_cid[47]),
        .R(reset));
  FDRE \cid_reg[8][0] 
       (.C(clk),
        .CE(\cid[8][5]_i_1_n_0 ),
        .D(\cid[8][0]_i_1_n_0 ),
        .Q(obs_cid[48]),
        .R(reset));
  FDRE \cid_reg[8][1] 
       (.C(clk),
        .CE(\cid[8][5]_i_1_n_0 ),
        .D(\cid[8][1]_i_1_n_0 ),
        .Q(obs_cid[49]),
        .R(reset));
  FDRE \cid_reg[8][2] 
       (.C(clk),
        .CE(\cid[8][5]_i_1_n_0 ),
        .D(\cid[8][2]_i_1_n_0 ),
        .Q(obs_cid[50]),
        .R(reset));
  FDSE \cid_reg[8][3] 
       (.C(clk),
        .CE(\cid[8][5]_i_1_n_0 ),
        .D(\cid[8][3]_i_1_n_0 ),
        .Q(obs_cid[51]),
        .S(reset));
  FDRE \cid_reg[8][4] 
       (.C(clk),
        .CE(\cid[8][5]_i_1_n_0 ),
        .D(\cid[8][4]_i_1_n_0 ),
        .Q(obs_cid[52]),
        .R(reset));
  FDRE \cid_reg[8][5] 
       (.C(clk),
        .CE(\cid[8][5]_i_1_n_0 ),
        .D(\cid[8][5]_i_2_n_0 ),
        .Q(obs_cid[53]),
        .R(reset));
  FDSE \cid_reg[9][0] 
       (.C(clk),
        .CE(\cid[9][5]_i_1_n_0 ),
        .D(\cid[9][0]_i_1_n_0 ),
        .Q(obs_cid[54]),
        .S(reset));
  FDRE \cid_reg[9][1] 
       (.C(clk),
        .CE(\cid[9][5]_i_1_n_0 ),
        .D(\cid[9][1]_i_1_n_0 ),
        .Q(obs_cid[55]),
        .R(reset));
  FDRE \cid_reg[9][2] 
       (.C(clk),
        .CE(\cid[9][5]_i_1_n_0 ),
        .D(\cid[9][2]_i_1_n_0 ),
        .Q(obs_cid[56]),
        .R(reset));
  FDSE \cid_reg[9][3] 
       (.C(clk),
        .CE(\cid[9][5]_i_1_n_0 ),
        .D(\cid[9][3]_i_1_n_0 ),
        .Q(obs_cid[57]),
        .S(reset));
  FDRE \cid_reg[9][4] 
       (.C(clk),
        .CE(\cid[9][5]_i_1_n_0 ),
        .D(\cid[9][4]_i_1_n_0 ),
        .Q(obs_cid[58]),
        .R(reset));
  FDRE \cid_reg[9][5] 
       (.C(clk),
        .CE(\cid[9][5]_i_1_n_0 ),
        .D(\cid[9][5]_i_2_n_0 ),
        .Q(obs_cid[59]),
        .R(reset));
  LUT2 #(
    .INIT(4'h2)) 
    \commit_onehot[0]_i_1 
       (.I0(obs_ecorr[4]),
        .I1(reset),
        .O(\commit_onehot[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair420" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \commit_onehot[1]_i_1 
       (.I0(obs_ecorr[33]),
        .I1(reset),
        .O(\commit_onehot[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair420" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \commit_onehot[2]_i_1 
       (.I0(obs_ecorr[34]),
        .I1(reset),
        .O(\commit_onehot[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair419" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \commit_onehot[3]_i_1 
       (.I0(obs_ecorr[35]),
        .I1(reset),
        .O(\commit_onehot[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair419" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \commit_onehot[4]_i_1 
       (.I0(obs_ecorr[36]),
        .I1(reset),
        .O(\commit_onehot[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair418" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \commit_onehot[5]_i_1 
       (.I0(obs_ecorr[37]),
        .I1(reset),
        .O(\commit_onehot[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair418" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \commit_onehot[6]_i_1 
       (.I0(obs_ecorr[38]),
        .I1(reset),
        .O(\commit_onehot[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair417" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \commit_onehot[7]_i_1 
       (.I0(obs_ecorr[39]),
        .I1(reset),
        .O(\commit_onehot[7]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hF7)) 
    \commit_onehot[8]_i_1 
       (.I0(stage__0[1]),
        .I1(stage__0[2]),
        .I2(stage__0[0]),
        .O(\commit_onehot[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair417" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \commit_onehot[8]_i_2 
       (.I0(obs_ecorr[40]),
        .I1(reset),
        .O(\commit_onehot[8]_i_2_n_0 ));
  FDRE \commit_onehot_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\commit_onehot[0]_i_1_n_0 ),
        .Q(commit_onehot[0]),
        .R(\commit_onehot[8]_i_1_n_0 ));
  FDRE \commit_onehot_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\commit_onehot[1]_i_1_n_0 ),
        .Q(commit_onehot[1]),
        .R(\commit_onehot[8]_i_1_n_0 ));
  FDRE \commit_onehot_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\commit_onehot[2]_i_1_n_0 ),
        .Q(commit_onehot[2]),
        .R(\commit_onehot[8]_i_1_n_0 ));
  FDRE \commit_onehot_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\commit_onehot[3]_i_1_n_0 ),
        .Q(commit_onehot[3]),
        .R(\commit_onehot[8]_i_1_n_0 ));
  FDRE \commit_onehot_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\commit_onehot[4]_i_1_n_0 ),
        .Q(commit_onehot[4]),
        .R(\commit_onehot[8]_i_1_n_0 ));
  FDRE \commit_onehot_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\commit_onehot[5]_i_1_n_0 ),
        .Q(commit_onehot[5]),
        .R(\commit_onehot[8]_i_1_n_0 ));
  FDRE \commit_onehot_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\commit_onehot[6]_i_1_n_0 ),
        .Q(commit_onehot[6]),
        .R(\commit_onehot[8]_i_1_n_0 ));
  FDRE \commit_onehot_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\commit_onehot[7]_i_1_n_0 ),
        .Q(commit_onehot[7]),
        .R(\commit_onehot[8]_i_1_n_0 ));
  FDRE \commit_onehot_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\commit_onehot[8]_i_2_n_0 ),
        .Q(commit_onehot[8]),
        .R(\commit_onehot[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'h1E)) 
    \dbg_stage[0]_i_1 
       (.I0(\FSM_sequential_stage_reg[1]_rep__4_n_0 ),
        .I1(stage__0[2]),
        .I2(stage__0[0]),
        .O(stage_reg[0]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h34)) 
    \dbg_stage[1]_i_1 
       (.I0(stage__0[0]),
        .I1(\FSM_sequential_stage_reg[1]_rep__4_n_0 ),
        .I2(stage__0[2]),
        .O(stage_reg[1]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'h54)) 
    \dbg_stage[2]_i_1 
       (.I0(stage__0[2]),
        .I1(stage__0[0]),
        .I2(\FSM_sequential_stage_reg[1]_rep__4_n_0 ),
        .O(\dbg_stage[2]_i_1_n_0 ));
  FDRE \dbg_stage_reg[0] 
       (.C(clk),
        .CE(\busy[29]_i_1_n_0 ),
        .D(stage_reg[0]),
        .Q(dbg_stage[0]),
        .R(reset));
  FDRE \dbg_stage_reg[1] 
       (.C(clk),
        .CE(\busy[29]_i_1_n_0 ),
        .D(stage_reg[1]),
        .Q(dbg_stage[1]),
        .R(reset));
  FDRE \dbg_stage_reg[2] 
       (.C(clk),
        .CE(\busy[29]_i_1_n_0 ),
        .D(\dbg_stage[2]_i_1_n_0 ),
        .Q(dbg_stage[2]),
        .R(reset));
  FDRE \dbg_step_reg[0] 
       (.C(clk),
        .CE(\busy[29]_i_1_n_0 ),
        .D(\step_cnt_reg_n_0_[0] ),
        .Q(dbg_step[0]),
        .R(reset));
  FDRE \dbg_step_reg[1] 
       (.C(clk),
        .CE(\busy[29]_i_1_n_0 ),
        .D(\step_cnt_reg_n_0_[1] ),
        .Q(dbg_step[1]),
        .R(reset));
  FDRE \dbg_step_reg[2] 
       (.C(clk),
        .CE(\busy[29]_i_1_n_0 ),
        .D(\step_cnt_reg_n_0_[2] ),
        .Q(dbg_step[2]),
        .R(reset));
  FDRE \dbg_step_reg[3] 
       (.C(clk),
        .CE(\busy[29]_i_1_n_0 ),
        .D(\step_cnt_reg_n_0_[3] ),
        .Q(dbg_step[3]),
        .R(reset));
  FDRE \dbg_step_reg[4] 
       (.C(clk),
        .CE(\busy[29]_i_1_n_0 ),
        .D(\step_cnt_reg_n_0_[4] ),
        .Q(dbg_step[4]),
        .R(reset));
  FDRE \dbg_step_reg[5] 
       (.C(clk),
        .CE(\busy[29]_i_1_n_0 ),
        .D(\step_cnt_reg_n_0_[5] ),
        .Q(dbg_step[5]),
        .R(reset));
  FDRE \dbg_step_reg[6] 
       (.C(clk),
        .CE(\busy[29]_i_1_n_0 ),
        .D(\step_cnt_reg_n_0_[6] ),
        .Q(dbg_step[6]),
        .R(reset));
  FDRE \dbg_step_reg[7] 
       (.C(clk),
        .CE(\busy[29]_i_1_n_0 ),
        .D(\step_cnt_reg_n_0_[7] ),
        .Q(dbg_step[7]),
        .R(reset));
  FDRE dbg_valid_reg
       (.C(clk),
        .CE(1'b1),
        .D(\busy[29]_i_1_n_0 ),
        .Q(dbg_valid),
        .R(reset));
  LUT5 #(
    .INIT(32'h0FDF0020)) 
    \defect[0]_i_1 
       (.I0(obs_defect[10]),
        .I1(\defect[0]_i_2_n_0 ),
        .I2(\cid[25][5]_i_1_n_0 ),
        .I3(\FSM_sequential_stage_reg[1]_rep__2_n_0 ),
        .I4(obs_defect[0]),
        .O(\defect[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair405" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \defect[0]_i_2 
       (.I0(\defect[10]_i_2_n_0 ),
        .I1(\ptr[10][0]_i_1_n_0 ),
        .O(\defect[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFF00DFDFFF002020)) 
    \defect[10]_i_1 
       (.I0(obs_defect[10]),
        .I1(\ptr[10][0]_i_1_n_0 ),
        .I2(\defect[10]_i_2_n_0 ),
        .I3(syndrome[0]),
        .I4(\FSM_sequential_stage_reg[1]_rep__3_n_0 ),
        .I5(\defect[10]_i_3_n_0 ),
        .O(\defect[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0007070777777777)) 
    \defect[10]_i_2 
       (.I0(\^obs_ptr [31]),
        .I1(\cid[14][2]_i_2_n_0 ),
        .I2(\defect[10]_i_4_n_0 ),
        .I3(\cid[10][5]_i_2_n_0 ),
        .I4(\ptr[10][0]_i_3_n_0 ),
        .I5(\ptr[10][0]_i_4_n_0 ),
        .O(\defect[10]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \defect[10]_i_3 
       (.I0(\busy[10]_i_2_n_0 ),
        .I1(obs_defect[14]),
        .I2(\busy[10]_i_3_n_0 ),
        .O(\defect[10]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF000D000F000)) 
    \defect[10]_i_4 
       (.I0(\cid[15][3]_i_2_n_0 ),
        .I1(obs_unrooted[10]),
        .I2(\^obs_ptr [31]),
        .I3(\defect[10]_i_5_n_0 ),
        .I4(\cid[10][5]_i_6_n_0 ),
        .I5(\cid[10][4]_i_5_n_0 ),
        .O(\defect[10]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair140" *) 
  LUT5 #(
    .INIT(32'hFF0FFFBF)) 
    \defect[10]_i_5 
       (.I0(obs_unrooted[10]),
        .I1(\cid[2][4]_i_2_n_0 ),
        .I2(obs_growth[1]),
        .I3(obs_growth[0]),
        .I4(\ptr[10][0]_i_7_n_0 ),
        .O(\defect[10]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFF000202FF00FDFD)) 
    \defect[11]_i_1 
       (.I0(obs_defect[11]),
        .I1(\ptr[11][0]_i_1_n_0 ),
        .I2(\ptr[11][1]_i_1_n_0 ),
        .I3(syndrome[1]),
        .I4(\FSM_sequential_stage_reg[1]_rep__3_n_0 ),
        .I5(\defect[11]_i_2_n_0 ),
        .O(\defect[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1111E111EEEE1EEE)) 
    \defect[11]_i_2 
       (.I0(\ptr[10][0]_i_1_n_0 ),
        .I1(\ecorr[9]_i_2_n_0 ),
        .I2(obs_defect[15]),
        .I3(\defect[15]_i_2_n_0 ),
        .I4(\defect[15]_i_3_n_0 ),
        .I5(\ecorr[6]_i_2_n_0 ),
        .O(\defect[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h88B88888BB8BBBBB)) 
    \defect[12]_i_1 
       (.I0(syndrome[2]),
        .I1(\FSM_sequential_stage_reg[1]_rep__2_n_0 ),
        .I2(\defect[12]_i_2_n_0 ),
        .I3(\ptr[12][0]_i_1_n_0 ),
        .I4(obs_defect[12]),
        .I5(\defect[12]_i_3_n_0 ),
        .O(\defect[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h55550FFF555500F3)) 
    \defect[12]_i_2 
       (.I0(\^obs_ptr [37]),
        .I1(\ptr[12][0]_i_2_n_0 ),
        .I2(\cid[12][5]_i_2_n_0 ),
        .I3(\defect[12]_i_4_n_0 ),
        .I4(\cid[16][4]_i_3_n_0 ),
        .I5(\ptr[12][0]_i_3_n_0 ),
        .O(\defect[12]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h04FBFB04)) 
    \defect[12]_i_3 
       (.I0(\defect[16]_i_2_n_0 ),
        .I1(obs_defect[16]),
        .I2(\defect[16]_i_3_n_0 ),
        .I3(\busy[12]_i_4_n_0 ),
        .I4(\busy[12]_i_5_n_0 ),
        .O(\defect[12]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000055753030)) 
    \defect[12]_i_4 
       (.I0(\cid[12][4]_i_6_n_0 ),
        .I1(\ptr[12][0]_i_10_n_0 ),
        .I2(\^obs_ptr [37]),
        .I3(\ptr[12][0]_i_9_n_0 ),
        .I4(\cid[12][5]_i_4_n_0 ),
        .I5(\cid[12][5]_i_5_n_0 ),
        .O(\defect[12]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hF099F066F066F066)) 
    \defect[13]_i_1 
       (.I0(\defect[13]_i_2_n_0 ),
        .I1(\defect[13]_i_3_n_0 ),
        .I2(syndrome[3]),
        .I3(\FSM_sequential_stage_reg[1]_rep__3_n_0 ),
        .I4(obs_defect[13]),
        .I5(\defect[13]_i_4_n_0 ),
        .O(\defect[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair343" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \defect[13]_i_2 
       (.I0(\defect[12]_i_2_n_0 ),
        .I1(obs_defect[12]),
        .I2(\ptr[12][0]_i_1_n_0 ),
        .O(\defect[13]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair174" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \defect[13]_i_3 
       (.I0(\ptr[17][2]_i_2_n_0 ),
        .I1(obs_defect[17]),
        .I2(\defect[17]_i_2_n_0 ),
        .I3(\defect[17]_i_3_n_0 ),
        .O(\defect[13]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair397" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \defect[13]_i_4 
       (.I0(\ptr[13][1]_i_2_n_0 ),
        .I1(\ptr[13][0]_i_2_n_0 ),
        .O(\defect[13]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hF0FFF000F0BBF044)) 
    \defect[14]_i_1 
       (.I0(\defect[14]_i_2_n_0 ),
        .I1(\defect[14]_i_3_n_0 ),
        .I2(obs_defect[10]),
        .I3(\FSM_sequential_stage_reg[1]_rep__3_n_0 ),
        .I4(\defect[14]_i_4_n_0 ),
        .I5(\defect[14]_i_5_n_0 ),
        .O(\defect[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBBAAABAAABAAA)) 
    \defect[14]_i_10 
       (.I0(\ptr[14][2]_i_5_n_0 ),
        .I1(obs_unrooted[14]),
        .I2(\cid[19][5]_i_3_n_0 ),
        .I3(\cid[15][4]_i_21_n_0 ),
        .I4(\ptr[2][1]_i_3_n_0 ),
        .I5(\cid[4][4]_i_2_n_0 ),
        .O(\defect[14]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair155" *) 
  LUT4 #(
    .INIT(16'hBAAA)) 
    \defect[14]_i_11 
       (.I0(\cid[18][4]_i_2_n_0 ),
        .I1(obs_unrooted[14]),
        .I2(\cid[14][2]_i_2_n_0 ),
        .I3(\cid[14][5]_i_3_n_0 ),
        .O(\defect[14]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h0000C000EEEECEEE)) 
    \defect[14]_i_12 
       (.I0(\^obs_ptr [42]),
        .I1(\ptr[14][2]_i_5_n_0 ),
        .I2(\ptr[2][1]_i_3_n_0 ),
        .I3(\cid[4][4]_i_2_n_0 ),
        .I4(obs_unrooted[14]),
        .I5(\defect[14]_i_13_n_0 ),
        .O(\defect[14]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h0000000088F88888)) 
    \defect[14]_i_13 
       (.I0(\cid[15][4]_i_21_n_0 ),
        .I1(\cid[19][5]_i_3_n_0 ),
        .I2(obs_growth[35]),
        .I3(obs_growth[34]),
        .I4(\cid[22][2]_i_3_n_0 ),
        .I5(obs_unrooted[14]),
        .O(\defect[14]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF515551555155)) 
    \defect[14]_i_2 
       (.I0(\defect[14]_i_6_n_0 ),
        .I1(\cid[14][5]_i_3_n_0 ),
        .I2(\cid[14][2]_i_2_n_0 ),
        .I3(\cid[14][4]_i_7_n_0 ),
        .I4(\cid[18][4]_i_2_n_0 ),
        .I5(\^obs_ptr [43]),
        .O(\defect[14]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h7070777070707070)) 
    \defect[14]_i_3 
       (.I0(\cid[18][4]_i_2_n_0 ),
        .I1(\^obs_ptr [42]),
        .I2(\defect[14]_i_7_n_0 ),
        .I3(\cid[14][5]_i_3_n_0 ),
        .I4(\cid[14][2]_i_2_n_0 ),
        .I5(\cid[14][4]_i_7_n_0 ),
        .O(\defect[14]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair326" *) 
  LUT4 #(
    .INIT(16'h2DD2)) 
    \defect[14]_i_4 
       (.I0(\ptr[10][0]_i_1_n_0 ),
        .I1(\ecorr[9]_i_2_n_0 ),
        .I2(\ecorr[17]_i_2_n_0 ),
        .I3(\ecorr[10]_i_3_n_0 ),
        .O(\defect[14]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair319" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \defect[14]_i_5 
       (.I0(\ptr[14][2]_i_2_n_0 ),
        .I1(obs_defect[14]),
        .O(\defect[14]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF1011)) 
    \defect[14]_i_6 
       (.I0(\defect[14]_i_8_n_0 ),
        .I1(\defect[14]_i_9_n_0 ),
        .I2(\defect[14]_i_10_n_0 ),
        .I3(\^obs_ptr [43]),
        .I4(\defect[14]_i_11_n_0 ),
        .I5(\cid[14][5]_i_8_n_0 ),
        .O(\defect[14]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hAAFB)) 
    \defect[14]_i_7 
       (.I0(\defect[14]_i_11_n_0 ),
        .I1(\defect[14]_i_12_n_0 ),
        .I2(\defect[14]_i_9_n_0 ),
        .I3(\defect[14]_i_8_n_0 ),
        .O(\defect[14]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair181" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \defect[14]_i_8 
       (.I0(\cid[14][4]_i_6_n_0 ),
        .I1(\cid[14][5]_i_9_n_0 ),
        .O(\defect[14]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h00000000AA2A0000)) 
    \defect[14]_i_9 
       (.I0(\cid[14][4]_i_9_n_0 ),
        .I1(\cid[4][4]_i_2_n_0 ),
        .I2(\ptr[2][1]_i_3_n_0 ),
        .I3(obs_unrooted[14]),
        .I4(obs_growth[21]),
        .I5(obs_growth[20]),
        .O(\defect[14]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFF00FDFDFF000202)) 
    \defect[15]_i_1 
       (.I0(obs_defect[15]),
        .I1(\defect[15]_i_2_n_0 ),
        .I2(\defect[15]_i_3_n_0 ),
        .I3(obs_defect[11]),
        .I4(\FSM_sequential_stage_reg[1]_rep__3_n_0 ),
        .I5(\defect[15]_i_4_n_0 ),
        .O(\defect[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h008F008800880088)) 
    \defect[15]_i_10 
       (.I0(\cid[15][3]_i_2_n_0 ),
        .I1(\cid[15][5]_i_3_n_0 ),
        .I2(\cid[15][5]_i_5_n_0 ),
        .I3(obs_unrooted[15]),
        .I4(\cid[23][2]_i_3_n_0 ),
        .I5(\cid[19][5]_i_7_n_0 ),
        .O(\defect[15]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair186" *) 
  LUT4 #(
    .INIT(16'h00F7)) 
    \defect[15]_i_11 
       (.I0(\cid[15][4]_i_10_n_0 ),
        .I1(\cid[20][4]_i_2_n_0 ),
        .I2(obs_unrooted[15]),
        .I3(\ptr[15][1]_i_4_n_0 ),
        .O(\defect[15]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hCCCCCCCC88F88888)) 
    \defect[15]_i_2 
       (.I0(\defect[15]_i_5_n_0 ),
        .I1(\^obs_ptr [47]),
        .I2(\cid[15][5]_i_3_n_0 ),
        .I3(\cid[15][3]_i_2_n_0 ),
        .I4(\cid[15][4]_i_8_n_0 ),
        .I5(\cid[19][5]_i_3_n_0 ),
        .O(\defect[15]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \defect[15]_i_3 
       (.I0(\ptr[15][0]_i_2_n_0 ),
        .I1(\ptr[15][1]_i_2_n_0 ),
        .O(\defect[15]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h7F80807F807F7F80)) 
    \defect[15]_i_4 
       (.I0(obs_defect[19]),
        .I1(\defect[15]_i_6_n_0 ),
        .I2(\ptr[19][2]_i_2_n_0 ),
        .I3(\ecorr[12]_i_3_n_0 ),
        .I4(\ecorr[11]_i_2_n_0 ),
        .I5(\ecorr[10]_i_2_n_0 ),
        .O(\defect[15]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h00020000)) 
    \defect[15]_i_5 
       (.I0(\defect[15]_i_7_n_0 ),
        .I1(\defect[15]_i_8_n_0 ),
        .I2(\defect[15]_i_9_n_0 ),
        .I3(\defect[15]_i_10_n_0 ),
        .I4(\defect[15]_i_11_n_0 ),
        .O(\defect[15]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \defect[15]_i_6 
       (.I0(\ptr[19][1]_i_2_n_0 ),
        .I1(\ptr[19][0]_i_2_n_0 ),
        .O(\defect[15]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \defect[15]_i_7 
       (.I0(\cid[15][4]_i_5_n_0 ),
        .I1(\cid[15][4]_i_7_n_0 ),
        .O(\defect[15]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h20)) 
    \defect[15]_i_8 
       (.I0(\cid[15][4]_i_20_n_0 ),
        .I1(obs_growth[20]),
        .I2(obs_growth[21]),
        .O(\defect[15]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT4 #(
    .INIT(16'h0040)) 
    \defect[15]_i_9 
       (.I0(obs_growth[20]),
        .I1(obs_growth[21]),
        .I2(\cid[18][4]_i_2_n_0 ),
        .I3(obs_unrooted[15]),
        .O(\defect[15]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hF0FFF077F000F088)) 
    \defect[16]_i_1 
       (.I0(\defect[16]_i_2_n_0 ),
        .I1(obs_defect[16]),
        .I2(obs_defect[12]),
        .I3(\FSM_sequential_stage_reg[1]_rep__3_n_0 ),
        .I4(\defect[16]_i_3_n_0 ),
        .I5(\defect[16]_i_4_n_0 ),
        .O(\defect[16]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000FFFF51555155)) 
    \defect[16]_i_2 
       (.I0(\defect[16]_i_5_n_0 ),
        .I1(\cid[16][5]_i_3_n_0 ),
        .I2(\cid[16][4]_i_3_n_0 ),
        .I3(\cid[16][4]_i_6_n_0 ),
        .I4(\^obs_ptr [50]),
        .I5(\cid[20][4]_i_2_n_0 ),
        .O(\defect[16]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair316" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \defect[16]_i_3 
       (.I0(\ptr[16][0]_i_2_n_0 ),
        .I1(\ptr[16][1]_i_2_n_0 ),
        .O(\defect[16]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \defect[16]_i_4 
       (.I0(\ecorr[21]_i_3_n_0 ),
        .I1(\ecorr[12]_i_2_n_0 ),
        .I2(\ecorr[13]_i_2_n_0 ),
        .I3(\ecorr[14]_i_2_n_0 ),
        .O(\defect[16]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h00200000)) 
    \defect[16]_i_5 
       (.I0(\busy[16]_i_3_n_0 ),
        .I1(\defect[16]_i_6_n_0 ),
        .I2(\^obs_ptr [50]),
        .I3(\cid[16][5]_i_5_n_0 ),
        .I4(\defect[16]_i_7_n_0 ),
        .O(\defect[16]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT5 #(
    .INIT(32'hFFFF0040)) 
    \defect[16]_i_6 
       (.I0(obs_unrooted[16]),
        .I1(\cid[19][5]_i_3_n_0 ),
        .I2(obs_growth[25]),
        .I3(obs_growth[24]),
        .I4(\defect[16]_i_8_n_0 ),
        .O(\defect[16]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair202" *) 
  LUT4 #(
    .INIT(16'h00DF)) 
    \defect[16]_i_7 
       (.I0(\cid[21][4]_i_2_n_0 ),
        .I1(obs_unrooted[16]),
        .I2(\cid[16][5]_i_12_n_0 ),
        .I3(\defect[16]_i_9_n_0 ),
        .O(\defect[16]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h20)) 
    \defect[16]_i_8 
       (.I0(\cid[16][3]_i_14_n_0 ),
        .I1(obs_growth[24]),
        .I2(obs_growth[25]),
        .O(\defect[16]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAAAA8AAA00000000)) 
    \defect[16]_i_9 
       (.I0(\cid[16][3]_i_9_n_0 ),
        .I1(obs_growth[24]),
        .I2(obs_growth[25]),
        .I3(\cid[19][5]_i_3_n_0 ),
        .I4(obs_unrooted[16]),
        .I5(\cid[17][5]_i_10_n_0 ),
        .O(\defect[16]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hF088F000F077F0FF)) 
    \defect[17]_i_1 
       (.I0(\defect[17]_i_2_n_0 ),
        .I1(\defect[17]_i_3_n_0 ),
        .I2(obs_defect[13]),
        .I3(\FSM_sequential_stage_reg[1]_rep__3_n_0 ),
        .I4(\defect[17]_i_4_n_0 ),
        .I5(\defect[17]_i_5_n_0 ),
        .O(\defect[17]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \defect[17]_i_10 
       (.I0(obs_growth[28]),
        .I1(obs_growth[29]),
        .I2(\cid[17][3]_i_15_n_0 ),
        .O(\defect[17]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT5 #(
    .INIT(32'hFFFFAAEA)) 
    \defect[17]_i_11 
       (.I0(\cid[21][4]_i_2_n_0 ),
        .I1(\cid[17][5]_i_2_n_0 ),
        .I2(\cid[17][4]_i_3_n_0 ),
        .I3(obs_unrooted[17]),
        .I4(\defect[17]_i_13_n_0 ),
        .O(\defect[17]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'h70777777)) 
    \defect[17]_i_12 
       (.I0(\cid[17][3]_i_10_n_0 ),
        .I1(\cid[17][3]_i_9_n_0 ),
        .I2(\defect[17]_i_10_n_0 ),
        .I3(\^obs_ptr [52]),
        .I4(\cid[17][5]_i_7_n_0 ),
        .O(\defect[17]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT5 #(
    .INIT(32'h00000800)) 
    \defect[17]_i_13 
       (.I0(\cid[17][5]_i_7_n_0 ),
        .I1(obs_growth[49]),
        .I2(obs_growth[48]),
        .I3(\cid[25][4]_i_2_n_0 ),
        .I4(obs_unrooted[17]),
        .O(\defect[17]_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair361" *) 
  LUT3 #(
    .INIT(8'h0B)) 
    \defect[17]_i_14 
       (.I0(obs_unrooted[17]),
        .I1(\cid[5][4]_i_2_n_0 ),
        .I2(\cid[17][3]_i_10_n_0 ),
        .O(\defect[17]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h0000700077777777)) 
    \defect[17]_i_2 
       (.I0(\cid[21][4]_i_2_n_0 ),
        .I1(\^obs_ptr [51]),
        .I2(\cid[17][4]_i_6_n_0 ),
        .I3(\cid[17][5]_i_2_n_0 ),
        .I4(\cid[17][4]_i_3_n_0 ),
        .I5(\defect[17]_i_6_n_0 ),
        .O(\defect[17]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000AAEAAAEAAAEA)) 
    \defect[17]_i_3 
       (.I0(\defect[17]_i_7_n_0 ),
        .I1(\cid[17][4]_i_6_n_0 ),
        .I2(\cid[17][5]_i_2_n_0 ),
        .I3(\cid[17][4]_i_3_n_0 ),
        .I4(\cid[21][4]_i_2_n_0 ),
        .I5(\^obs_ptr [52]),
        .O(\defect[17]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair175" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \defect[17]_i_4 
       (.I0(obs_defect[17]),
        .I1(\ptr[17][2]_i_2_n_0 ),
        .O(\defect[17]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0FF00FF00FF08778)) 
    \defect[17]_i_5 
       (.I0(\defect[16]_i_2_n_0 ),
        .I1(obs_defect[16]),
        .I2(\ecorr[16]_i_2_n_0 ),
        .I3(\ecorr[24]_i_2_n_0 ),
        .I4(\ptr[16][0]_i_2_n_0 ),
        .I5(\ptr[16][1]_i_2_n_0 ),
        .O(\defect[17]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00000000BABBBABA)) 
    \defect[17]_i_6 
       (.I0(\defect[17]_i_8_n_0 ),
        .I1(\defect[17]_i_9_n_0 ),
        .I2(\defect[17]_i_10_n_0 ),
        .I3(\cid[17][5]_i_12_n_0 ),
        .I4(\^obs_ptr [51]),
        .I5(\defect[17]_i_11_n_0 ),
        .O(\defect[17]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hFFF0FFFE)) 
    \defect[17]_i_7 
       (.I0(\defect[17]_i_12_n_0 ),
        .I1(\defect[17]_i_13_n_0 ),
        .I2(\cid[21][4]_i_2_n_0 ),
        .I3(\cid[17][5]_i_4_n_0 ),
        .I4(\defect[17]_i_8_n_0 ),
        .O(\defect[17]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \defect[17]_i_8 
       (.I0(\cid[17][3]_i_7_n_0 ),
        .I1(\cid[17][3]_i_5_n_0 ),
        .O(\defect[17]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000BF00)) 
    \defect[17]_i_9 
       (.I0(obs_unrooted[17]),
        .I1(\cid[20][4]_i_2_n_0 ),
        .I2(\cid[17][5]_i_10_n_0 ),
        .I3(obs_growth[31]),
        .I4(obs_growth[30]),
        .I5(\defect[17]_i_14_n_0 ),
        .O(\defect[17]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFF00DFDFFF002020)) 
    \defect[18]_i_1 
       (.I0(obs_defect[18]),
        .I1(\defect[18]_i_2_n_0 ),
        .I2(\defect[18]_i_3_n_0 ),
        .I3(obs_defect[14]),
        .I4(\FSM_sequential_stage_reg[1]_rep__3_n_0 ),
        .I5(\defect[18]_i_4_n_0 ),
        .O(\defect[18]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCCCCCCC88F88888)) 
    \defect[18]_i_2 
       (.I0(\defect[18]_i_5_n_0 ),
        .I1(\^obs_ptr [56]),
        .I2(\cid[18][5]_i_4_n_0 ),
        .I3(\cid[18][4]_i_2_n_0 ),
        .I4(\cid[18][4]_i_6_n_0 ),
        .I5(\cid[22][2]_i_3_n_0 ),
        .O(\defect[18]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \defect[18]_i_3 
       (.I0(\ptr[18][1]_i_2_n_0 ),
        .I1(\ptr[18][0]_i_2_n_0 ),
        .O(\defect[18]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0FF04BB40FF00FF0)) 
    \defect[18]_i_4 
       (.I0(\ptr[14][2]_i_2_n_0 ),
        .I1(\defect[14]_i_2_n_0 ),
        .I2(\ecorr[25]_i_2_n_0 ),
        .I3(\ecorr[18]_i_3_n_0 ),
        .I4(\defect[14]_i_3_n_0 ),
        .I5(obs_defect[14]),
        .O(\defect[18]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \defect[18]_i_5 
       (.I0(\defect[18]_i_6_n_0 ),
        .I1(\defect[18]_i_7_n_0 ),
        .I2(\cid[18][5]_i_11_n_0 ),
        .I3(\cid[18][5]_i_2_n_0 ),
        .I4(\defect[18]_i_8_n_0 ),
        .I5(\defect[18]_i_9_n_0 ),
        .O(\defect[18]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \defect[18]_i_6 
       (.I0(\cid[18][3]_i_6_n_0 ),
        .I1(\cid[18][5]_i_7_n_0 ),
        .O(\defect[18]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT5 #(
    .INIT(32'h00004F00)) 
    \defect[18]_i_7 
       (.I0(obs_unrooted[18]),
        .I1(\cid[6][4]_i_2_n_0 ),
        .I2(\cid[18][3]_i_13_n_0 ),
        .I3(obs_growth[5]),
        .I4(obs_growth[4]),
        .O(\defect[18]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \defect[18]_i_8 
       (.I0(\cid[18][5]_i_7_n_0 ),
        .I1(obs_unrooted[18]),
        .I2(\cid[26][3]_i_4_n_0 ),
        .O(\defect[18]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair324" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \defect[18]_i_9 
       (.I0(\cid[18][3]_i_8_n_0 ),
        .I1(obs_growth[36]),
        .I2(obs_growth[37]),
        .O(\defect[18]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h8BB8B8B8)) 
    \defect[19]_i_1 
       (.I0(obs_defect[15]),
        .I1(\FSM_sequential_stage_reg[1]_rep__3_n_0 ),
        .I2(\defect[19]_i_2_n_0 ),
        .I3(obs_defect[19]),
        .I4(\defect[19]_i_3_n_0 ),
        .O(\defect[19]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h9AAA655565559AAA)) 
    \defect[19]_i_2 
       (.I0(\ecorr[27]_i_2_n_0 ),
        .I1(\ptr[20][1]_i_2_n_0 ),
        .I2(\defect[24]_i_6_n_0 ),
        .I3(obs_defect[20]),
        .I4(\ecorr[18]_i_2_n_0 ),
        .I5(\ecorr[19]_i_2_n_0 ),
        .O(\defect[19]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \defect[19]_i_3 
       (.I0(\ptr[19][0]_i_2_n_0 ),
        .I1(\ptr[19][1]_i_2_n_0 ),
        .I2(\ptr[19][2]_i_2_n_0 ),
        .O(\defect[19]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair327" *) 
  LUT4 #(
    .INIT(16'h5708)) 
    \defect[1]_i_1 
       (.I0(\cid[25][5]_i_1_n_0 ),
        .I1(\defect[1]_i_2_n_0 ),
        .I2(\FSM_sequential_stage_reg[1]_rep__2_n_0 ),
        .I3(obs_defect[1]),
        .O(\defect[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair397" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \defect[1]_i_2 
       (.I0(\ptr[13][1]_i_2_n_0 ),
        .I1(obs_defect[13]),
        .I2(\ptr[13][0]_i_2_n_0 ),
        .O(\defect[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hF077F088)) 
    \defect[20]_i_1 
       (.I0(obs_defect[20]),
        .I1(\defect[20]_i_2_n_0 ),
        .I2(obs_defect[16]),
        .I3(\FSM_sequential_stage_reg[1]_rep__3_n_0 ),
        .I4(\defect[20]_i_3_n_0 ),
        .O(\defect[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \defect[20]_i_2 
       (.I0(\ptr[20][2]_i_2_n_0 ),
        .I1(\ptr[20][0]_i_2_n_0 ),
        .I2(\ptr[20][1]_i_2_n_0 ),
        .O(\defect[20]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h7F80807F807F7F80)) 
    \defect[20]_i_3 
       (.I0(\defect[24]_i_4_n_0 ),
        .I1(\defect[24]_i_2_n_0 ),
        .I2(obs_defect[24]),
        .I3(\ecorr[22]_i_2_n_0 ),
        .I4(\ecorr[20]_i_2_n_0 ),
        .I5(\ecorr[21]_i_2_n_0 ),
        .O(\defect[20]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hF077F088)) 
    \defect[21]_i_1 
       (.I0(\defect[21]_i_2_n_0 ),
        .I1(obs_defect[21]),
        .I2(obs_defect[17]),
        .I3(\FSM_sequential_stage_reg[1]_rep__3_n_0 ),
        .I4(\defect[21]_i_3_n_0 ),
        .O(\defect[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair364" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \defect[21]_i_2 
       (.I0(\ptr[21][0]_i_2_n_0 ),
        .I1(\ptr[21][1]_i_2_n_0 ),
        .I2(\ptr[21][2]_i_2_n_0 ),
        .O(\defect[21]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0200FDFFFDFF0200)) 
    \defect[21]_i_3 
       (.I0(obs_defect[20]),
        .I1(\ptr[20][0]_i_2_n_0 ),
        .I2(\ptr[20][2]_i_2_n_0 ),
        .I3(\ptr[20][1]_i_2_n_0 ),
        .I4(\ecorr[32]_i_3_n_0 ),
        .I5(\ecorr[24]_i_3_n_0 ),
        .O(\defect[21]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFF00DFDFFF002020)) 
    \defect[22]_i_1 
       (.I0(obs_defect[22]),
        .I1(\defect[22]_i_2_n_0 ),
        .I2(\defect[22]_i_3_n_0 ),
        .I3(obs_defect[18]),
        .I4(\FSM_sequential_stage_reg[1]_rep__4_n_0 ),
        .I5(\defect[22]_i_4_n_0 ),
        .O(\defect[22]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCCCCCCC88F88888)) 
    \defect[22]_i_2 
       (.I0(\defect[22]_i_5_n_0 ),
        .I1(\^obs_ptr [68]),
        .I2(\cid[22][5]_i_4_n_0 ),
        .I3(\cid[22][2]_i_3_n_0 ),
        .I4(\cid[22][4]_i_5_n_0 ),
        .I5(\cid[26][3]_i_4_n_0 ),
        .O(\defect[22]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \defect[22]_i_3 
       (.I0(\ptr[22][1]_i_2_n_0 ),
        .I1(\defect[26]_i_3_n_0 ),
        .O(\defect[22]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0010FFEFFFEF0010)) 
    \defect[22]_i_4 
       (.I0(\ptr[23][0]_i_2_n_0 ),
        .I1(\defect[23]_i_4_n_0 ),
        .I2(obs_defect[23]),
        .I3(\ptr[23][1]_i_2_n_0 ),
        .I4(\ecorr[33]_i_2_n_0 ),
        .I5(\ecorr[25]_i_3_n_0 ),
        .O(\defect[22]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000022022222)) 
    \defect[22]_i_5 
       (.I0(\busy[22]_i_5_n_0 ),
        .I1(\defect[22]_i_6_n_0 ),
        .I2(\cid[22][2]_i_3_n_0 ),
        .I3(obs_unrooted[22]),
        .I4(\cid[22][5]_i_4_n_0 ),
        .I5(\defect[26]_i_10_n_0 ),
        .O(\defect[22]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF0040)) 
    \defect[22]_i_6 
       (.I0(obs_unrooted[22]),
        .I1(\cid[8][3]_i_3_n_0 ),
        .I2(obs_growth[7]),
        .I3(obs_growth[6]),
        .I4(\defect[26]_i_8_n_0 ),
        .O(\defect[22]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h8B8BB88B8B8B8B8B)) 
    \defect[23]_i_1 
       (.I0(obs_defect[19]),
        .I1(\FSM_sequential_stage_reg[1]_rep__4_n_0 ),
        .I2(\defect[23]_i_2_n_0 ),
        .I3(\defect[23]_i_3_n_0 ),
        .I4(\defect[23]_i_4_n_0 ),
        .I5(obs_defect[23]),
        .O(\defect[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h9669)) 
    \defect[23]_i_2 
       (.I0(\ecorr[35]_i_3_n_0 ),
        .I1(\ecorr[28]_i_3_n_0 ),
        .I2(\ecorr[27]_i_3_n_0 ),
        .I3(\ecorr[26]_i_2_n_0 ),
        .O(\defect[23]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair237" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \defect[23]_i_3 
       (.I0(\ptr[23][0]_i_2_n_0 ),
        .I1(\ptr[23][1]_i_2_n_0 ),
        .O(\defect[23]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8BBB8B8B8B8B8)) 
    \defect[23]_i_4 
       (.I0(\^obs_ptr [71]),
        .I1(\cid[27][3]_i_3_n_0 ),
        .I2(\defect[23]_i_5_n_0 ),
        .I3(\cid[23][5]_i_3_n_0 ),
        .I4(\cid[23][2]_i_3_n_0 ),
        .I5(\cid[23][4]_i_5_n_0 ),
        .O(\defect[23]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \defect[23]_i_5 
       (.I0(\defect[23]_i_6_n_0 ),
        .I1(\cid[23][5]_i_9_n_0 ),
        .I2(\^obs_ptr [71]),
        .I3(\defect[23]_i_7_n_0 ),
        .I4(\defect[23]_i_8_n_0 ),
        .I5(\defect[23]_i_9_n_0 ),
        .O(\defect[23]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT5 #(
    .INIT(32'hFFFF0040)) 
    \defect[23]_i_6 
       (.I0(obs_unrooted[23]),
        .I1(\cid[26][3]_i_4_n_0 ),
        .I2(obs_growth[53]),
        .I3(obs_growth[52]),
        .I4(\ptr[23][1]_i_5_n_0 ),
        .O(\defect[23]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair379" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \defect[23]_i_7 
       (.I0(\cid[23][5]_i_3_n_0 ),
        .I1(\cid[23][2]_i_3_n_0 ),
        .I2(obs_unrooted[23]),
        .O(\defect[23]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair238" *) 
  LUT4 #(
    .INIT(16'hFF08)) 
    \defect[23]_i_8 
       (.I0(\cid[23][5]_i_13_n_0 ),
        .I1(\cid[28][3]_i_4_n_0 ),
        .I2(obs_unrooted[23]),
        .I3(\ptr[23][1]_i_4_n_0 ),
        .O(\defect[23]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair242" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \defect[23]_i_9 
       (.I0(\cid[23][3]_i_6_n_0 ),
        .I1(\cid[23][5]_i_10_n_0 ),
        .O(\defect[23]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hF044F0BBF000F0FF)) 
    \defect[24]_i_1 
       (.I0(\defect[24]_i_2_n_0 ),
        .I1(obs_defect[24]),
        .I2(obs_defect[20]),
        .I3(\FSM_sequential_stage_reg[1]_rep__4_n_0 ),
        .I4(\defect[24]_i_3_n_0 ),
        .I5(\defect[24]_i_4_n_0 ),
        .O(\defect[24]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000AA2A0000)) 
    \defect[24]_i_10 
       (.I0(\cid[24][2]_i_14_n_0 ),
        .I1(\cid[24][5]_i_9_n_0 ),
        .I2(\cid[27][3]_i_3_n_0 ),
        .I3(obs_unrooted[24]),
        .I4(obs_growth[61]),
        .I5(obs_growth[60]),
        .O(\defect[24]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hCCCCCCCC88F88888)) 
    \defect[24]_i_2 
       (.I0(\defect[24]_i_5_n_0 ),
        .I1(\^obs_ptr [74]),
        .I2(\cid[24][2]_i_3_n_0 ),
        .I3(\cid[24][4]_i_2_n_0 ),
        .I4(\cid[24][2]_i_10_n_0 ),
        .I5(\cid[28][3]_i_4_n_0 ),
        .O(\defect[24]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h7F80807F807F7F80)) 
    \defect[24]_i_3 
       (.I0(obs_defect[20]),
        .I1(\defect[24]_i_6_n_0 ),
        .I2(\ptr[20][1]_i_2_n_0 ),
        .I3(\ecorr[28]_i_2_n_0 ),
        .I4(\ecorr[30]_i_3_n_0 ),
        .I5(\ecorr[37]_i_3_n_0 ),
        .O(\defect[24]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \defect[24]_i_4 
       (.I0(\ptr[24][0]_i_2_n_0 ),
        .I1(\ptr[24][1]_i_2_n_0 ),
        .O(\defect[24]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000002000000)) 
    \defect[24]_i_5 
       (.I0(\defect[24]_i_7_n_0 ),
        .I1(\defect[24]_i_8_n_0 ),
        .I2(\cid[24][2]_i_15_n_0 ),
        .I3(\cid[24][5]_i_6_n_0 ),
        .I4(\defect[24]_i_9_n_0 ),
        .I5(\defect[24]_i_10_n_0 ),
        .O(\defect[24]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \defect[24]_i_6 
       (.I0(\ptr[20][0]_i_2_n_0 ),
        .I1(\ptr[20][2]_i_2_n_0 ),
        .O(\defect[24]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair388" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \defect[24]_i_7 
       (.I0(\cid[24][2]_i_8_n_0 ),
        .I1(\cid[24][2]_i_9_n_0 ),
        .O(\defect[24]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair276" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \defect[24]_i_8 
       (.I0(\cid[24][2]_i_25_n_0 ),
        .I1(obs_growth[56]),
        .I2(obs_growth[57]),
        .O(\defect[24]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair257" *) 
  LUT4 #(
    .INIT(16'hFBFF)) 
    \defect[24]_i_9 
       (.I0(obs_growth[60]),
        .I1(obs_growth[61]),
        .I2(obs_unrooted[24]),
        .I3(\cid[29][3]_i_3_n_0 ),
        .O(\defect[24]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hF077F088)) 
    \defect[25]_i_1 
       (.I0(obs_defect[25]),
        .I1(\active[25]_i_3_n_0 ),
        .I2(obs_defect[21]),
        .I3(\FSM_sequential_stage_reg[1]_rep__3_n_0 ),
        .I4(\defect[25]_i_2_n_0 ),
        .O(\defect[25]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB4F0F0F04B0F0F0F)) 
    \defect[25]_i_2 
       (.I0(\defect[24]_i_2_n_0 ),
        .I1(\ptr[24][1]_i_2_n_0 ),
        .I2(\ecorr[32]_i_2_n_0 ),
        .I3(obs_defect[24]),
        .I4(\ptr[24][0]_i_2_n_0 ),
        .I5(\ecorr[40]_i_2_n_0 ),
        .O(\defect[25]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCCCCBF40CCCC40BF)) 
    \defect[26]_i_1 
       (.I0(\defect[26]_i_2_n_0 ),
        .I1(obs_defect[22]),
        .I2(\defect[26]_i_3_n_0 ),
        .I3(\defect[26]_i_4_n_0 ),
        .I4(\FSM_sequential_stage_reg[1]_rep__4_n_0 ),
        .I5(\defect[26]_i_5_n_0 ),
        .O(\defect[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair323" *) 
  LUT4 #(
    .INIT(16'h88A8)) 
    \defect[26]_i_10 
       (.I0(\cid[22][5]_i_11_n_0 ),
        .I1(\cid[22][3]_i_8_n_0 ),
        .I2(\cid[27][3]_i_3_n_0 ),
        .I3(obs_unrooted[22]),
        .O(\defect[26]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \defect[26]_i_11 
       (.I0(\cid[22][3]_i_6_n_0 ),
        .I1(\cid[22][5]_i_7_n_0 ),
        .O(\defect[26]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair218" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \defect[26]_i_2 
       (.I0(\ptr[22][1]_i_2_n_0 ),
        .I1(\defect[22]_i_2_n_0 ),
        .O(\defect[26]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8F8F888F8F8F8F8F)) 
    \defect[26]_i_3 
       (.I0(\^obs_ptr [66]),
        .I1(\cid[26][3]_i_4_n_0 ),
        .I2(\defect[26]_i_6_n_0 ),
        .I3(\cid[22][5]_i_4_n_0 ),
        .I4(\cid[22][2]_i_3_n_0 ),
        .I5(\cid[22][4]_i_5_n_0 ),
        .O(\defect[26]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair263" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \defect[26]_i_4 
       (.I0(\active[27]_i_4_n_0 ),
        .I1(\ptr[27][0]_i_2_n_0 ),
        .I2(\ptr[27][1]_i_2_n_0 ),
        .I3(obs_defect[27]),
        .O(\defect[26]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair244" *) 
  LUT4 #(
    .INIT(16'hFFDF)) 
    \defect[26]_i_5 
       (.I0(\ptr[26][2]_i_2_n_0 ),
        .I1(\ptr[26][1]_i_2_n_0 ),
        .I2(obs_defect[26]),
        .I3(\ptr[26][0]_i_2_n_0 ),
        .O(\defect[26]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAFFFFABFF)) 
    \defect[26]_i_6 
       (.I0(\defect[26]_i_7_n_0 ),
        .I1(\^obs_ptr [66]),
        .I2(\defect[26]_i_8_n_0 ),
        .I3(\defect[26]_i_9_n_0 ),
        .I4(\defect[26]_i_10_n_0 ),
        .I5(\defect[26]_i_11_n_0 ),
        .O(\defect[26]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair219" *) 
  LUT4 #(
    .INIT(16'hAEAA)) 
    \defect[26]_i_7 
       (.I0(\cid[26][3]_i_4_n_0 ),
        .I1(\cid[22][2]_i_3_n_0 ),
        .I2(obs_unrooted[22]),
        .I3(\cid[22][5]_i_4_n_0 ),
        .O(\defect[26]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \defect[26]_i_8 
       (.I0(obs_growth[6]),
        .I1(obs_growth[7]),
        .I2(\cid[22][3]_i_13_n_0 ),
        .O(\defect[26]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF00F7FFFFF7F7)) 
    \defect[26]_i_9 
       (.I0(\cid[8][3]_i_3_n_0 ),
        .I1(obs_growth[7]),
        .I2(obs_growth[6]),
        .I3(\cid[26][3]_i_2_n_0 ),
        .I4(obs_unrooted[22]),
        .I5(\cid[22][5]_i_7_n_0 ),
        .O(\defect[26]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFF007F7FFF008080)) 
    \defect[27]_i_1 
       (.I0(\active[27]_i_3_n_0 ),
        .I1(\active[27]_i_4_n_0 ),
        .I2(obs_defect[27]),
        .I3(obs_defect[23]),
        .I4(\FSM_sequential_stage_reg[1]_rep__4_n_0 ),
        .I5(\defect[27]_i_2_n_0 ),
        .O(\defect[27]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0040FFBFFFBF0040)) 
    \defect[27]_i_2 
       (.I0(\defect[23]_i_4_n_0 ),
        .I1(obs_defect[23]),
        .I2(\ptr[23][1]_i_2_n_0 ),
        .I3(\ptr[23][0]_i_2_n_0 ),
        .I4(\ecorr[36]_i_3_n_0 ),
        .I5(\ecorr[34]_i_2_n_0 ),
        .O(\defect[27]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair152" *) 
  LUT5 #(
    .INIT(32'hF088F077)) 
    \defect[28]_i_1 
       (.I0(obs_defect[28]),
        .I1(\defect[28]_i_2_n_0 ),
        .I2(obs_defect[24]),
        .I3(\FSM_sequential_stage_reg[1]_rep__4_n_0 ),
        .I4(\defect[28]_i_3_n_0 ),
        .O(\defect[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair329" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \defect[28]_i_2 
       (.I0(\ptr[28][0]_i_2_n_0 ),
        .I1(\ptr[28][1]_i_2_n_0 ),
        .I2(\ptr[28][2]_i_2_n_0 ),
        .O(\defect[28]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0008FFF7FFF70008)) 
    \defect[28]_i_3 
       (.I0(obs_defect[24]),
        .I1(\ptr[24][1]_i_2_n_0 ),
        .I2(\ptr[24][0]_i_2_n_0 ),
        .I3(\defect[24]_i_2_n_0 ),
        .I4(\ecorr[38]_i_2_n_0 ),
        .I5(\ecorr[36]_i_2_n_0 ),
        .O(\defect[28]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF077F0FFF088F000)) 
    \defect[29]_i_1 
       (.I0(obs_defect[29]),
        .I1(\defect[29]_i_2_n_0 ),
        .I2(obs_defect[25]),
        .I3(\FSM_sequential_stage_reg[1]_rep__3_n_0 ),
        .I4(\defect[29]_i_3_n_0 ),
        .I5(\defect[29]_i_4_n_0 ),
        .O(\defect[29]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h5555FFFF5555003F)) 
    \defect[29]_i_2 
       (.I0(\^obs_ptr [89]),
        .I1(\cid[29][1]_i_2_n_0 ),
        .I2(\cid[29][4]_i_7_n_0 ),
        .I3(\defect[29]_i_5_n_0 ),
        .I4(\cid[29][5]_i_4_n_0 ),
        .I5(\defect[29]_i_6_n_0 ),
        .O(\defect[29]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \defect[29]_i_3 
       (.I0(\ptr[29][0]_i_2_n_0 ),
        .I1(\ptr[29][1]_i_2_n_0 ),
        .O(\defect[29]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT5 #(
    .INIT(32'hAAAAAA6A)) 
    \defect[29]_i_4 
       (.I0(\ecorr[38]_i_3_n_0 ),
        .I1(obs_defect[25]),
        .I2(\ptr[25][1]_i_2_n_0 ),
        .I3(\ptr[25][0]_i_2_n_0 ),
        .I4(\ptr[25][2]_i_2_n_0 ),
        .O(\defect[29]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000D5DD0000)) 
    \defect[29]_i_5 
       (.I0(\cid[29][1]_i_6_n_0 ),
        .I1(\cid[29][1]_i_10_n_0 ),
        .I2(obs_unrooted[29]),
        .I3(\cid[9][5]_i_4_n_0 ),
        .I4(\^obs_ptr [89]),
        .I5(\defect[29]_i_7_n_0 ),
        .O(\defect[29]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair390" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \defect[29]_i_6 
       (.I0(\cid[29][1]_i_2_n_0 ),
        .I1(obs_unrooted[29]),
        .I2(\cid[29][3]_i_3_n_0 ),
        .O(\defect[29]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT5 #(
    .INIT(32'h00004F00)) 
    \defect[29]_i_7 
       (.I0(obs_unrooted[29]),
        .I1(\cid[28][3]_i_2_n_0 ),
        .I2(\cid[29][1]_i_11_n_0 ),
        .I3(obs_growth[77]),
        .I4(obs_growth[76]),
        .O(\defect[29]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hF757A808)) 
    \defect[2]_i_1 
       (.I0(\cid[25][5]_i_1_n_0 ),
        .I1(\defect[2]_i_2_n_0 ),
        .I2(\FSM_sequential_stage_reg[1]_rep__2_n_0 ),
        .I3(obs_defect[0]),
        .I4(obs_defect[2]),
        .O(\defect[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \defect[2]_i_2 
       (.I0(\defect[14]_i_3_n_0 ),
        .I1(\defect[14]_i_2_n_0 ),
        .I2(\defect[14]_i_5_n_0 ),
        .O(\defect[2]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hF757A808)) 
    \defect[3]_i_1 
       (.I0(\cid[25][5]_i_1_n_0 ),
        .I1(\defect[3]_i_2_n_0 ),
        .I2(\FSM_sequential_stage_reg[1]_rep__2_n_0 ),
        .I3(obs_defect[1]),
        .I4(obs_defect[3]),
        .O(\defect[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \defect[3]_i_2 
       (.I0(\defect[17]_i_3_n_0 ),
        .I1(\defect[17]_i_2_n_0 ),
        .I2(\defect[17]_i_4_n_0 ),
        .O(\defect[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hF757A808)) 
    \defect[4]_i_1 
       (.I0(\cid[25][5]_i_1_n_0 ),
        .I1(\defect[4]_i_2_n_0 ),
        .I2(\FSM_sequential_stage_reg[1]_rep__2_n_0 ),
        .I3(obs_defect[2]),
        .I4(obs_defect[4]),
        .O(\defect[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair184" *) 
  LUT4 #(
    .INIT(16'h0020)) 
    \defect[4]_i_2 
       (.I0(obs_defect[18]),
        .I1(\defect[18]_i_2_n_0 ),
        .I2(\ptr[18][1]_i_2_n_0 ),
        .I3(\ptr[18][0]_i_2_n_0 ),
        .O(\defect[4]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hF757A808)) 
    \defect[5]_i_1 
       (.I0(\cid[25][5]_i_1_n_0 ),
        .I1(\defect[5]_i_2_n_0 ),
        .I2(\FSM_sequential_stage_reg[1]_rep__2_n_0 ),
        .I3(obs_defect[3]),
        .I4(obs_defect[5]),
        .O(\defect[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair204" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \defect[5]_i_2 
       (.I0(\ptr[21][0]_i_2_n_0 ),
        .I1(obs_defect[21]),
        .I2(\ptr[21][1]_i_2_n_0 ),
        .I3(\ptr[21][2]_i_2_n_0 ),
        .O(\defect[5]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hF757A808)) 
    \defect[6]_i_1 
       (.I0(\cid[25][5]_i_1_n_0 ),
        .I1(\defect[6]_i_2_n_0 ),
        .I2(\FSM_sequential_stage_reg[1]_rep__2_n_0 ),
        .I3(obs_defect[4]),
        .I4(obs_defect[6]),
        .O(\defect[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair218" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \defect[6]_i_2 
       (.I0(\defect[26]_i_3_n_0 ),
        .I1(\ptr[22][1]_i_2_n_0 ),
        .I2(\defect[22]_i_2_n_0 ),
        .I3(obs_defect[22]),
        .O(\defect[6]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hF757A808)) 
    \defect[7]_i_1 
       (.I0(\cid[25][5]_i_1_n_0 ),
        .I1(\defect[7]_i_2_n_0 ),
        .I2(\FSM_sequential_stage_reg[1]_rep__2_n_0 ),
        .I3(obs_defect[5]),
        .I4(obs_defect[7]),
        .O(\defect[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair229" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \defect[7]_i_2 
       (.I0(\ptr[25][0]_i_2_n_0 ),
        .I1(\ptr[25][1]_i_2_n_0 ),
        .I2(\ptr[25][2]_i_2_n_0 ),
        .I3(obs_defect[25]),
        .O(\defect[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFF7F0F7FF0800080)) 
    \defect[8]_i_1 
       (.I0(\defect[8]_i_2_n_0 ),
        .I1(obs_defect[26]),
        .I2(\cid[25][5]_i_1_n_0 ),
        .I3(\FSM_sequential_stage_reg[1]_rep__2_n_0 ),
        .I4(obs_defect[6]),
        .I5(obs_defect[8]),
        .O(\defect[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \defect[8]_i_2 
       (.I0(\ptr[26][0]_i_2_n_0 ),
        .I1(\ptr[26][2]_i_2_n_0 ),
        .I2(\ptr[26][1]_i_2_n_0 ),
        .O(\defect[8]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hF757A808)) 
    \defect[9]_i_1 
       (.I0(\cid[25][5]_i_1_n_0 ),
        .I1(\defect[9]_i_2_n_0 ),
        .I2(\FSM_sequential_stage_reg[1]_rep__2_n_0 ),
        .I3(obs_defect[7]),
        .I4(obs_defect[9]),
        .O(\defect[9]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair328" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \defect[9]_i_2 
       (.I0(\ptr[29][0]_i_2_n_0 ),
        .I1(\ptr[29][1]_i_2_n_0 ),
        .I2(obs_defect[29]),
        .I3(\defect[29]_i_2_n_0 ),
        .O(\defect[9]_i_2_n_0 ));
  FDRE \defect_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\defect[0]_i_1_n_0 ),
        .Q(obs_defect[0]),
        .R(reset));
  FDRE \defect_reg[10] 
       (.C(clk),
        .CE(\cid[25][5]_i_1_n_0 ),
        .D(\defect[10]_i_1_n_0 ),
        .Q(obs_defect[10]),
        .R(reset));
  FDRE \defect_reg[11] 
       (.C(clk),
        .CE(\cid[25][5]_i_1_n_0 ),
        .D(\defect[11]_i_1_n_0 ),
        .Q(obs_defect[11]),
        .R(reset));
  FDRE \defect_reg[12] 
       (.C(clk),
        .CE(\cid[25][5]_i_1_n_0 ),
        .D(\defect[12]_i_1_n_0 ),
        .Q(obs_defect[12]),
        .R(reset));
  FDRE \defect_reg[13] 
       (.C(clk),
        .CE(\cid[25][5]_i_1_n_0 ),
        .D(\defect[13]_i_1_n_0 ),
        .Q(obs_defect[13]),
        .R(reset));
  FDRE \defect_reg[14] 
       (.C(clk),
        .CE(\cid[25][5]_i_1_n_0 ),
        .D(\defect[14]_i_1_n_0 ),
        .Q(obs_defect[14]),
        .R(reset));
  FDRE \defect_reg[15] 
       (.C(clk),
        .CE(\cid[25][5]_i_1_n_0 ),
        .D(\defect[15]_i_1_n_0 ),
        .Q(obs_defect[15]),
        .R(reset));
  FDRE \defect_reg[16] 
       (.C(clk),
        .CE(\cid[25][5]_i_1_n_0 ),
        .D(\defect[16]_i_1_n_0 ),
        .Q(obs_defect[16]),
        .R(reset));
  FDRE \defect_reg[17] 
       (.C(clk),
        .CE(\cid[25][5]_i_1_n_0 ),
        .D(\defect[17]_i_1_n_0 ),
        .Q(obs_defect[17]),
        .R(reset));
  FDRE \defect_reg[18] 
       (.C(clk),
        .CE(\cid[25][5]_i_1_n_0 ),
        .D(\defect[18]_i_1_n_0 ),
        .Q(obs_defect[18]),
        .R(reset));
  FDRE \defect_reg[19] 
       (.C(clk),
        .CE(\cid[25][5]_i_1_n_0 ),
        .D(\defect[19]_i_1_n_0 ),
        .Q(obs_defect[19]),
        .R(reset));
  FDRE \defect_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\defect[1]_i_1_n_0 ),
        .Q(obs_defect[1]),
        .R(reset));
  FDRE \defect_reg[20] 
       (.C(clk),
        .CE(\cid[25][5]_i_1_n_0 ),
        .D(\defect[20]_i_1_n_0 ),
        .Q(obs_defect[20]),
        .R(reset));
  FDRE \defect_reg[21] 
       (.C(clk),
        .CE(\cid[25][5]_i_1_n_0 ),
        .D(\defect[21]_i_1_n_0 ),
        .Q(obs_defect[21]),
        .R(reset));
  FDRE \defect_reg[22] 
       (.C(clk),
        .CE(\cid[25][5]_i_1_n_0 ),
        .D(\defect[22]_i_1_n_0 ),
        .Q(obs_defect[22]),
        .R(reset));
  FDRE \defect_reg[23] 
       (.C(clk),
        .CE(\cid[25][5]_i_1_n_0 ),
        .D(\defect[23]_i_1_n_0 ),
        .Q(obs_defect[23]),
        .R(reset));
  FDRE \defect_reg[24] 
       (.C(clk),
        .CE(\cid[25][5]_i_1_n_0 ),
        .D(\defect[24]_i_1_n_0 ),
        .Q(obs_defect[24]),
        .R(reset));
  FDRE \defect_reg[25] 
       (.C(clk),
        .CE(\cid[25][5]_i_1_n_0 ),
        .D(\defect[25]_i_1_n_0 ),
        .Q(obs_defect[25]),
        .R(reset));
  FDRE \defect_reg[26] 
       (.C(clk),
        .CE(\cid[25][5]_i_1_n_0 ),
        .D(\defect[26]_i_1_n_0 ),
        .Q(obs_defect[26]),
        .R(reset));
  FDRE \defect_reg[27] 
       (.C(clk),
        .CE(\cid[25][5]_i_1_n_0 ),
        .D(\defect[27]_i_1_n_0 ),
        .Q(obs_defect[27]),
        .R(reset));
  FDRE \defect_reg[28] 
       (.C(clk),
        .CE(\cid[25][5]_i_1_n_0 ),
        .D(\defect[28]_i_1_n_0 ),
        .Q(obs_defect[28]),
        .R(reset));
  FDRE \defect_reg[29] 
       (.C(clk),
        .CE(\cid[25][5]_i_1_n_0 ),
        .D(\defect[29]_i_1_n_0 ),
        .Q(obs_defect[29]),
        .R(reset));
  FDRE \defect_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\defect[2]_i_1_n_0 ),
        .Q(obs_defect[2]),
        .R(reset));
  FDRE \defect_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\defect[3]_i_1_n_0 ),
        .Q(obs_defect[3]),
        .R(reset));
  FDRE \defect_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\defect[4]_i_1_n_0 ),
        .Q(obs_defect[4]),
        .R(reset));
  FDRE \defect_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\defect[5]_i_1_n_0 ),
        .Q(obs_defect[5]),
        .R(reset));
  FDRE \defect_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\defect[6]_i_1_n_0 ),
        .Q(obs_defect[6]),
        .R(reset));
  FDRE \defect_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\defect[7]_i_1_n_0 ),
        .Q(obs_defect[7]),
        .R(reset));
  FDRE \defect_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\defect[8]_i_1_n_0 ),
        .Q(obs_defect[8]),
        .R(reset));
  FDRE \defect_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\defect[9]_i_1_n_0 ),
        .Q(obs_defect[9]),
        .R(reset));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    done_i_1
       (.I0(done_i_2_n_0),
        .I1(done_i_3_n_0),
        .I2(done_i_4_n_0),
        .I3(done_i_5_n_0),
        .I4(done_i_6_n_0),
        .I5(done_i_7_n_0),
        .O(done_i_1_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    done_i_10
       (.I0(\busy[1]_i_1_n_0 ),
        .I1(\busy[2]_i_1_n_0 ),
        .I2(\busy[3]_i_1_n_0 ),
        .I3(\busy[4]_i_1_n_0 ),
        .I4(done_i_13_n_0),
        .O(done_i_10_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFAE)) 
    done_i_11
       (.I0(\busy[12]_i_1_n_0 ),
        .I1(\cid[13][5]_i_1_n_0 ),
        .I2(done_i_14_n_0),
        .I3(\busy[10]_i_1_n_0 ),
        .I4(\busy[9]_i_1_n_0 ),
        .O(done_i_11_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFEFEFEFF)) 
    done_i_12
       (.I0(\busy[25]_i_6_n_0 ),
        .I1(done_i_15_n_0),
        .I2(\busy[25]_i_11_n_0 ),
        .I3(\ptr[7][0]_i_3_n_0 ),
        .I4(\busy[25]_i_12_n_0 ),
        .I5(\busy[25]_i_4_n_0 ),
        .O(done_i_12_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    done_i_13
       (.I0(\busy[6]_i_1_n_0 ),
        .I1(\busy[5]_i_1_n_0 ),
        .I2(\busy[8]_i_1_n_0 ),
        .I3(\busy[7]_i_1_n_0 ),
        .O(done_i_13_n_0));
  LUT6 #(
    .INIT(64'h0000000000A9A900)) 
    done_i_14
       (.I0(\busy[11]_i_5_n_0 ),
        .I1(\defect[15]_i_3_n_0 ),
        .I2(\busy[11]_i_4_n_0 ),
        .I3(obs_active[11]),
        .I4(\active[11]_i_2_n_0 ),
        .I5(\busy[11]_i_2_n_0 ),
        .O(done_i_14_n_0));
  LUT6 #(
    .INIT(64'h88A88888AAAAAAAA)) 
    done_i_15
       (.I0(\cid[25][5]_i_14_n_0 ),
        .I1(\cid[25][2]_i_8_n_0 ),
        .I2(\grown[25]_i_7_n_0 ),
        .I3(\grown[9]_i_5_n_0 ),
        .I4(obs_grown[7]),
        .I5(\busy[25]_i_12_n_0 ),
        .O(done_i_15_n_0));
  (* SOFT_HLUTNM = "soft_lutpair291" *) 
  LUT3 #(
    .INIT(8'h04)) 
    done_i_2
       (.I0(stage__0[1]),
        .I1(stage__0[0]),
        .I2(stage__0[2]),
        .O(done_i_2_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    done_i_3
       (.I0(\busy[22]_i_1_n_0 ),
        .I1(\busy[21]_i_1_n_0 ),
        .I2(\busy[24]_i_1_n_0 ),
        .I3(\busy[23]_i_1_n_0 ),
        .O(done_i_3_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    done_i_4
       (.I0(\busy[18]_i_1_n_0 ),
        .I1(\busy[17]_i_1_n_0 ),
        .I2(\busy[20]_i_1_n_0 ),
        .I3(\busy[19]_i_1_n_0 ),
        .O(done_i_4_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFF90000)) 
    done_i_5
       (.I0(obs_active[29]),
        .I1(\active[29]_i_2_n_0 ),
        .I2(\busy[29]_i_3_n_0 ),
        .I3(\defect[29]_i_4_n_0 ),
        .I4(\cid[13][5]_i_1_n_0 ),
        .I5(c_busy),
        .O(done_i_5_n_0));
  LUT6 #(
    .INIT(64'hFFFEFEFEFFFEFFFE)) 
    done_i_6
       (.I0(\busy[28]_i_1_n_0 ),
        .I1(\busy[27]_i_1_n_0 ),
        .I2(\busy[26]_i_1_n_0 ),
        .I3(\cid[13][5]_i_1_n_0 ),
        .I4(done_i_8_n_0),
        .I5(done_i_9_n_0),
        .O(done_i_6_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    done_i_7
       (.I0(done_i_10_n_0),
        .I1(\busy[14]_i_1_n_0 ),
        .I2(\busy[13]_i_1_n_0 ),
        .I3(\busy[16]_i_1_n_0 ),
        .I4(\busy[15]_i_1_n_0 ),
        .I5(done_i_11_n_0),
        .O(done_i_7_n_0));
  LUT6 #(
    .INIT(64'hFF96FF96FFFFFF96)) 
    done_i_8
       (.I0(\ecorr[40]_i_2_n_0 ),
        .I1(\ecorr[30]_i_2_n_0 ),
        .I2(\ecorr[32]_i_2_n_0 ),
        .I3(done_i_12_n_0),
        .I4(obs_defect[25]),
        .I5(\active[25]_i_3_n_0 ),
        .O(done_i_8_n_0));
  LUT6 #(
    .INIT(64'h999AAA9A55566656)) 
    done_i_9
       (.I0(obs_active[25]),
        .I1(\active[25]_i_3_n_0 ),
        .I2(\busy[25]_i_8_n_0 ),
        .I3(\active[25]_i_4_n_0 ),
        .I4(\busy[25]_i_7_n_0 ),
        .I5(obs_defect[25]),
        .O(done_i_9_n_0));
  FDRE done_reg
       (.C(clk),
        .CE(1'b1),
        .D(done_i_1_n_0),
        .Q(done),
        .R(reset));
  LUT5 #(
    .INIT(32'h0FDF0020)) 
    \ecorr[0]_i_1 
       (.I0(obs_defect[10]),
        .I1(\defect[0]_i_2_n_0 ),
        .I2(\cid[25][5]_i_1_n_0 ),
        .I3(\FSM_sequential_stage_reg[1]_rep__2_n_0 ),
        .I4(obs_ecorr[0]),
        .O(\ecorr[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBF33F88880CC0)) 
    \ecorr[10]_i_1 
       (.I0(obs_ecorr[5]),
        .I1(\cid[25][5]_i_1_n_0 ),
        .I2(\ecorr[10]_i_2_n_0 ),
        .I3(\ecorr[10]_i_3_n_0 ),
        .I4(\FSM_sequential_stage_reg[1]_rep__2_n_0 ),
        .I5(obs_ecorr[10]),
        .O(\ecorr[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \ecorr[10]_i_2 
       (.I0(obs_defect[14]),
        .I1(\defect[14]_i_2_n_0 ),
        .I2(\defect[14]_i_3_n_0 ),
        .I3(\ptr[14][2]_i_2_n_0 ),
        .O(\ecorr[10]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair168" *) 
  LUT4 #(
    .INIT(16'h0040)) 
    \ecorr[10]_i_3 
       (.I0(\defect[15]_i_2_n_0 ),
        .I1(obs_defect[15]),
        .I2(\ptr[15][0]_i_2_n_0 ),
        .I3(\ptr[15][1]_i_2_n_0 ),
        .O(\ecorr[10]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h55D70028)) 
    \ecorr[11]_i_1 
       (.I0(\cid[25][5]_i_1_n_0 ),
        .I1(\ecorr[11]_i_2_n_0 ),
        .I2(\ecorr[11]_i_3_n_0 ),
        .I3(\FSM_sequential_stage_reg[1]_rep__2_n_0 ),
        .I4(obs_ecorr[11]),
        .O(\ecorr[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair156" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \ecorr[11]_i_2 
       (.I0(\ptr[11][1]_i_1_n_0 ),
        .I1(\ptr[11][0]_i_1_n_0 ),
        .I2(obs_defect[11]),
        .O(\ecorr[11]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair168" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \ecorr[11]_i_3 
       (.I0(\defect[15]_i_3_n_0 ),
        .I1(\defect[15]_i_2_n_0 ),
        .I2(obs_defect[15]),
        .O(\ecorr[11]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBF33F88880CC0)) 
    \ecorr[12]_i_1 
       (.I0(obs_ecorr[6]),
        .I1(\cid[25][5]_i_1_n_0 ),
        .I2(\ecorr[12]_i_2_n_0 ),
        .I3(\ecorr[12]_i_3_n_0 ),
        .I4(\FSM_sequential_stage_reg[1]_rep__2_n_0 ),
        .I5(obs_ecorr[12]),
        .O(\ecorr[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair167" *) 
  LUT4 #(
    .INIT(16'h0020)) 
    \ecorr[12]_i_2 
       (.I0(obs_defect[15]),
        .I1(\ptr[15][0]_i_2_n_0 ),
        .I2(\ptr[15][1]_i_2_n_0 ),
        .I3(\defect[15]_i_2_n_0 ),
        .O(\ecorr[12]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair173" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \ecorr[12]_i_3 
       (.I0(obs_defect[16]),
        .I1(\defect[16]_i_2_n_0 ),
        .I2(\ptr[16][0]_i_2_n_0 ),
        .I3(\ptr[16][1]_i_2_n_0 ),
        .O(\ecorr[12]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h55D70028)) 
    \ecorr[13]_i_1 
       (.I0(\cid[25][5]_i_1_n_0 ),
        .I1(\ecorr[13]_i_2_n_0 ),
        .I2(\ecorr[13]_i_3_n_0 ),
        .I3(\FSM_sequential_stage_reg[1]_rep__2_n_0 ),
        .I4(obs_ecorr[13]),
        .O(\ecorr[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair342" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \ecorr[13]_i_2 
       (.I0(\ptr[12][0]_i_1_n_0 ),
        .I1(obs_defect[12]),
        .I2(\defect[12]_i_2_n_0 ),
        .O(\ecorr[13]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \ecorr[13]_i_3 
       (.I0(\defect[16]_i_3_n_0 ),
        .I1(obs_defect[16]),
        .I2(\defect[16]_i_2_n_0 ),
        .O(\ecorr[13]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBF33F88880CC0)) 
    \ecorr[14]_i_1 
       (.I0(obs_ecorr[7]),
        .I1(\cid[25][5]_i_1_n_0 ),
        .I2(\ecorr[14]_i_2_n_0 ),
        .I3(\ecorr[14]_i_3_n_0 ),
        .I4(\FSM_sequential_stage_reg[1]_rep__2_n_0 ),
        .I5(obs_ecorr[14]),
        .O(\ecorr[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair175" *) 
  LUT4 #(
    .INIT(16'h0020)) 
    \ecorr[14]_i_2 
       (.I0(obs_defect[17]),
        .I1(\ptr[17][2]_i_2_n_0 ),
        .I2(\defect[17]_i_3_n_0 ),
        .I3(\defect[17]_i_2_n_0 ),
        .O(\ecorr[14]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair330" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \ecorr[14]_i_3 
       (.I0(\defect[16]_i_2_n_0 ),
        .I1(obs_defect[16]),
        .I2(\ptr[16][0]_i_2_n_0 ),
        .I3(\ptr[16][1]_i_2_n_0 ),
        .O(\ecorr[14]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hF757A808)) 
    \ecorr[15]_i_1 
       (.I0(\cid[25][5]_i_1_n_0 ),
        .I1(\defect[3]_i_2_n_0 ),
        .I2(\FSM_sequential_stage_reg[1]_rep__2_n_0 ),
        .I3(obs_ecorr[8]),
        .I4(obs_ecorr[15]),
        .O(\ecorr[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h55D70028)) 
    \ecorr[16]_i_1 
       (.I0(\cid[25][5]_i_1_n_0 ),
        .I1(\defect[13]_i_3_n_0 ),
        .I2(\ecorr[16]_i_2_n_0 ),
        .I3(\FSM_sequential_stage_reg[1]_rep__2_n_0 ),
        .I4(obs_ecorr[16]),
        .O(\ecorr[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair345" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \ecorr[16]_i_2 
       (.I0(\ptr[13][1]_i_2_n_0 ),
        .I1(obs_defect[13]),
        .I2(\ptr[13][0]_i_2_n_0 ),
        .O(\ecorr[16]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBF33F88880CC0)) 
    \ecorr[17]_i_1 
       (.I0(obs_ecorr[9]),
        .I1(\cid[25][5]_i_1_n_0 ),
        .I2(\ecorr[17]_i_2_n_0 ),
        .I3(\ecorr[17]_i_3_n_0 ),
        .I4(\FSM_sequential_stage_reg[1]_rep__2_n_0 ),
        .I5(obs_ecorr[17]),
        .O(\ecorr[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair183" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \ecorr[17]_i_2 
       (.I0(\ptr[18][0]_i_2_n_0 ),
        .I1(\ptr[18][1]_i_2_n_0 ),
        .I2(\defect[18]_i_2_n_0 ),
        .I3(obs_defect[18]),
        .O(\ecorr[17]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair319" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    \ecorr[17]_i_3 
       (.I0(\ptr[14][2]_i_2_n_0 ),
        .I1(\defect[14]_i_2_n_0 ),
        .I2(\defect[14]_i_3_n_0 ),
        .I3(obs_defect[14]),
        .O(\ecorr[17]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hB3BFBFB38C80808C)) 
    \ecorr[18]_i_1 
       (.I0(obs_ecorr[10]),
        .I1(\cid[25][5]_i_1_n_0 ),
        .I2(\FSM_sequential_stage_reg[1]_rep__2_n_0 ),
        .I3(\ecorr[18]_i_2_n_0 ),
        .I4(\ecorr[18]_i_3_n_0 ),
        .I5(obs_ecorr[18]),
        .O(\ecorr[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair183" *) 
  LUT4 #(
    .INIT(16'h0020)) 
    \ecorr[18]_i_2 
       (.I0(obs_defect[18]),
        .I1(\defect[18]_i_2_n_0 ),
        .I2(\ptr[18][0]_i_2_n_0 ),
        .I3(\ptr[18][1]_i_2_n_0 ),
        .O(\ecorr[18]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFBFF)) 
    \ecorr[18]_i_3 
       (.I0(\ptr[19][2]_i_2_n_0 ),
        .I1(\ptr[19][0]_i_2_n_0 ),
        .I2(\ptr[19][1]_i_2_n_0 ),
        .I3(obs_defect[19]),
        .O(\ecorr[18]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBF33F88880CC0)) 
    \ecorr[19]_i_1 
       (.I0(obs_ecorr[11]),
        .I1(\cid[25][5]_i_1_n_0 ),
        .I2(\ecorr[19]_i_2_n_0 ),
        .I3(\ecorr[19]_i_3_n_0 ),
        .I4(\FSM_sequential_stage_reg[1]_rep__2_n_0 ),
        .I5(obs_ecorr[19]),
        .O(\ecorr[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair167" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \ecorr[19]_i_2 
       (.I0(\defect[15]_i_2_n_0 ),
        .I1(obs_defect[15]),
        .I2(\ptr[15][0]_i_2_n_0 ),
        .I3(\ptr[15][1]_i_2_n_0 ),
        .O(\ecorr[19]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair209" *) 
  LUT4 #(
    .INIT(16'h0200)) 
    \ecorr[19]_i_3 
       (.I0(obs_defect[19]),
        .I1(\ptr[19][1]_i_2_n_0 ),
        .I2(\ptr[19][0]_i_2_n_0 ),
        .I3(\ptr[19][2]_i_2_n_0 ),
        .O(\ecorr[19]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hF757A808)) 
    \ecorr[1]_i_1 
       (.I0(\cid[25][5]_i_1_n_0 ),
        .I1(\defect[2]_i_2_n_0 ),
        .I2(\FSM_sequential_stage_reg[1]_rep__2_n_0 ),
        .I3(obs_ecorr[0]),
        .I4(obs_ecorr[1]),
        .O(\ecorr[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBF33F88880CC0)) 
    \ecorr[20]_i_1 
       (.I0(obs_ecorr[12]),
        .I1(\cid[25][5]_i_1_n_0 ),
        .I2(\ecorr[20]_i_2_n_0 ),
        .I3(\ecorr[20]_i_3_n_0 ),
        .I4(\FSM_sequential_stage_reg[1]_rep__2_n_0 ),
        .I5(obs_ecorr[20]),
        .O(\ecorr[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair209" *) 
  LUT4 #(
    .INIT(16'h0040)) 
    \ecorr[20]_i_2 
       (.I0(\ptr[19][2]_i_2_n_0 ),
        .I1(\ptr[19][1]_i_2_n_0 ),
        .I2(obs_defect[19]),
        .I3(\ptr[19][0]_i_2_n_0 ),
        .O(\ecorr[20]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair223" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    \ecorr[20]_i_3 
       (.I0(\ptr[20][1]_i_2_n_0 ),
        .I1(\ptr[20][0]_i_2_n_0 ),
        .I2(\ptr[20][2]_i_2_n_0 ),
        .I3(obs_defect[20]),
        .O(\ecorr[20]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBF33F88880CC0)) 
    \ecorr[21]_i_1 
       (.I0(obs_ecorr[13]),
        .I1(\cid[25][5]_i_1_n_0 ),
        .I2(\ecorr[21]_i_2_n_0 ),
        .I3(\ecorr[21]_i_3_n_0 ),
        .I4(\FSM_sequential_stage_reg[1]_rep__2_n_0 ),
        .I5(obs_ecorr[21]),
        .O(\ecorr[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair173" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \ecorr[21]_i_2 
       (.I0(obs_defect[16]),
        .I1(\defect[16]_i_2_n_0 ),
        .I2(\ptr[16][0]_i_2_n_0 ),
        .I3(\ptr[16][1]_i_2_n_0 ),
        .O(\ecorr[21]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair223" *) 
  LUT4 #(
    .INIT(16'h0040)) 
    \ecorr[21]_i_3 
       (.I0(\ptr[20][0]_i_2_n_0 ),
        .I1(obs_defect[20]),
        .I2(\ptr[20][2]_i_2_n_0 ),
        .I3(\ptr[20][1]_i_2_n_0 ),
        .O(\ecorr[21]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBF33F88880CC0)) 
    \ecorr[22]_i_1 
       (.I0(obs_ecorr[14]),
        .I1(\cid[25][5]_i_1_n_0 ),
        .I2(\ecorr[22]_i_2_n_0 ),
        .I3(\ecorr[22]_i_3_n_0 ),
        .I4(\FSM_sequential_stage_reg[1]_rep__2_n_0 ),
        .I5(obs_ecorr[22]),
        .O(\ecorr[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair203" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \ecorr[22]_i_2 
       (.I0(obs_defect[21]),
        .I1(\ptr[21][0]_i_2_n_0 ),
        .I2(\ptr[21][2]_i_2_n_0 ),
        .I3(\ptr[21][1]_i_2_n_0 ),
        .O(\ecorr[22]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair222" *) 
  LUT4 #(
    .INIT(16'h0040)) 
    \ecorr[22]_i_3 
       (.I0(\ptr[20][0]_i_2_n_0 ),
        .I1(obs_defect[20]),
        .I2(\ptr[20][1]_i_2_n_0 ),
        .I3(\ptr[20][2]_i_2_n_0 ),
        .O(\ecorr[22]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hF757A808)) 
    \ecorr[23]_i_1 
       (.I0(\cid[25][5]_i_1_n_0 ),
        .I1(\defect[5]_i_2_n_0 ),
        .I2(\FSM_sequential_stage_reg[1]_rep__2_n_0 ),
        .I3(obs_ecorr[15]),
        .I4(obs_ecorr[23]),
        .O(\ecorr[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBBBB3FF38888C00C)) 
    \ecorr[24]_i_1 
       (.I0(obs_ecorr[16]),
        .I1(\cid[25][5]_i_1_n_0 ),
        .I2(\ecorr[24]_i_2_n_0 ),
        .I3(\ecorr[24]_i_3_n_0 ),
        .I4(\FSM_sequential_stage_reg[1]_rep__2_n_0 ),
        .I5(obs_ecorr[24]),
        .O(\ecorr[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair204" *) 
  LUT4 #(
    .INIT(16'hDFFF)) 
    \ecorr[24]_i_2 
       (.I0(\ptr[21][2]_i_2_n_0 ),
        .I1(\ptr[21][0]_i_2_n_0 ),
        .I2(\ptr[21][1]_i_2_n_0 ),
        .I3(obs_defect[21]),
        .O(\ecorr[24]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair174" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \ecorr[24]_i_3 
       (.I0(\ptr[17][2]_i_2_n_0 ),
        .I1(obs_defect[17]),
        .I2(\defect[17]_i_3_n_0 ),
        .I3(\defect[17]_i_2_n_0 ),
        .O(\ecorr[24]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hBBBB3FF38888C00C)) 
    \ecorr[25]_i_1 
       (.I0(obs_ecorr[17]),
        .I1(\cid[25][5]_i_1_n_0 ),
        .I2(\ecorr[25]_i_2_n_0 ),
        .I3(\ecorr[25]_i_3_n_0 ),
        .I4(\FSM_sequential_stage_reg[1]_rep__2_n_0 ),
        .I5(obs_ecorr[25]),
        .O(\ecorr[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair217" *) 
  LUT4 #(
    .INIT(16'hF7FF)) 
    \ecorr[25]_i_2 
       (.I0(\defect[22]_i_2_n_0 ),
        .I1(obs_defect[22]),
        .I2(\defect[26]_i_3_n_0 ),
        .I3(\ptr[22][1]_i_2_n_0 ),
        .O(\ecorr[25]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair184" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \ecorr[25]_i_3 
       (.I0(\defect[18]_i_2_n_0 ),
        .I1(obs_defect[18]),
        .I2(\ptr[18][0]_i_2_n_0 ),
        .I3(\ptr[18][1]_i_2_n_0 ),
        .O(\ecorr[25]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBF33F88880CC0)) 
    \ecorr[26]_i_1 
       (.I0(obs_ecorr[18]),
        .I1(\cid[25][5]_i_1_n_0 ),
        .I2(\ecorr[26]_i_2_n_0 ),
        .I3(\ecorr[26]_i_3_n_0 ),
        .I4(\FSM_sequential_stage_reg[1]_rep__2_n_0 ),
        .I5(obs_ecorr[26]),
        .O(\ecorr[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair217" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \ecorr[26]_i_2 
       (.I0(\defect[22]_i_2_n_0 ),
        .I1(obs_defect[22]),
        .I2(\defect[26]_i_3_n_0 ),
        .I3(\ptr[22][1]_i_2_n_0 ),
        .O(\ecorr[26]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair235" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \ecorr[26]_i_3 
       (.I0(\ptr[23][1]_i_2_n_0 ),
        .I1(obs_defect[23]),
        .I2(\ptr[23][0]_i_2_n_0 ),
        .I3(\defect[23]_i_4_n_0 ),
        .O(\ecorr[26]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBF33F88880CC0)) 
    \ecorr[27]_i_1 
       (.I0(obs_ecorr[19]),
        .I1(\cid[25][5]_i_1_n_0 ),
        .I2(\ecorr[27]_i_2_n_0 ),
        .I3(\ecorr[27]_i_3_n_0 ),
        .I4(\FSM_sequential_stage_reg[1]_rep__2_n_0 ),
        .I5(obs_ecorr[27]),
        .O(\ecorr[27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair235" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \ecorr[27]_i_2 
       (.I0(\ptr[23][1]_i_2_n_0 ),
        .I1(\ptr[23][0]_i_2_n_0 ),
        .I2(\defect[23]_i_4_n_0 ),
        .I3(obs_defect[23]),
        .O(\ecorr[27]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \ecorr[27]_i_3 
       (.I0(\ptr[19][0]_i_2_n_0 ),
        .I1(\ptr[19][1]_i_2_n_0 ),
        .I2(obs_defect[19]),
        .I3(\ptr[19][2]_i_2_n_0 ),
        .O(\ecorr[27]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hBBBB3FF38888C00C)) 
    \ecorr[28]_i_1 
       (.I0(obs_ecorr[20]),
        .I1(\cid[25][5]_i_1_n_0 ),
        .I2(\ecorr[28]_i_2_n_0 ),
        .I3(\ecorr[28]_i_3_n_0 ),
        .I4(\FSM_sequential_stage_reg[1]_rep__2_n_0 ),
        .I5(obs_ecorr[28]),
        .O(\ecorr[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair234" *) 
  LUT4 #(
    .INIT(16'hDFFF)) 
    \ecorr[28]_i_2 
       (.I0(\ptr[23][1]_i_2_n_0 ),
        .I1(\defect[23]_i_4_n_0 ),
        .I2(\ptr[23][0]_i_2_n_0 ),
        .I3(obs_defect[23]),
        .O(\ecorr[28]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair254" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    \ecorr[28]_i_3 
       (.I0(\ptr[24][1]_i_2_n_0 ),
        .I1(\ptr[24][0]_i_2_n_0 ),
        .I2(obs_defect[24]),
        .I3(\defect[24]_i_2_n_0 ),
        .O(\ecorr[28]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBF33F88880CC0)) 
    \ecorr[29]_i_1 
       (.I0(obs_ecorr[21]),
        .I1(\cid[25][5]_i_1_n_0 ),
        .I2(\ecorr[29]_i_2_n_0 ),
        .I3(\ecorr[29]_i_3_n_0 ),
        .I4(\FSM_sequential_stage_reg[1]_rep__2_n_0 ),
        .I5(obs_ecorr[29]),
        .O(\ecorr[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair253" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \ecorr[29]_i_2 
       (.I0(\ptr[24][1]_i_2_n_0 ),
        .I1(\ptr[24][0]_i_2_n_0 ),
        .I2(\defect[24]_i_2_n_0 ),
        .I3(obs_defect[24]),
        .O(\ecorr[29]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair222" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \ecorr[29]_i_3 
       (.I0(\ptr[20][1]_i_2_n_0 ),
        .I1(\ptr[20][0]_i_2_n_0 ),
        .I2(\ptr[20][2]_i_2_n_0 ),
        .I3(obs_defect[20]),
        .O(\ecorr[29]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hF757A808)) 
    \ecorr[2]_i_1 
       (.I0(\cid[25][5]_i_1_n_0 ),
        .I1(\defect[4]_i_2_n_0 ),
        .I2(\FSM_sequential_stage_reg[1]_rep__2_n_0 ),
        .I3(obs_ecorr[1]),
        .I4(obs_ecorr[2]),
        .O(\ecorr[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBBBB3FF38888C00C)) 
    \ecorr[30]_i_1 
       (.I0(obs_ecorr[22]),
        .I1(\cid[25][5]_i_1_n_0 ),
        .I2(\ecorr[30]_i_2_n_0 ),
        .I3(\ecorr[30]_i_3_n_0 ),
        .I4(\FSM_sequential_stage_reg[1]_rep__2_n_0 ),
        .I5(obs_ecorr[30]),
        .O(\ecorr[30]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair254" *) 
  LUT4 #(
    .INIT(16'hDFFF)) 
    \ecorr[30]_i_2 
       (.I0(obs_defect[24]),
        .I1(\defect[24]_i_2_n_0 ),
        .I2(\ptr[24][1]_i_2_n_0 ),
        .I3(\ptr[24][0]_i_2_n_0 ),
        .O(\ecorr[30]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair228" *) 
  LUT4 #(
    .INIT(16'h0100)) 
    \ecorr[30]_i_3 
       (.I0(\ptr[25][2]_i_2_n_0 ),
        .I1(\ptr[25][1]_i_2_n_0 ),
        .I2(\ptr[25][0]_i_2_n_0 ),
        .I3(obs_defect[25]),
        .O(\ecorr[30]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hF757A808)) 
    \ecorr[31]_i_1 
       (.I0(\cid[25][5]_i_1_n_0 ),
        .I1(\defect[7]_i_2_n_0 ),
        .I2(\FSM_sequential_stage_reg[1]_rep__2_n_0 ),
        .I3(obs_ecorr[23]),
        .I4(obs_ecorr[31]),
        .O(\ecorr[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB3BFBFB38C80808C)) 
    \ecorr[32]_i_1 
       (.I0(obs_ecorr[24]),
        .I1(\cid[25][5]_i_1_n_0 ),
        .I2(\FSM_sequential_stage_reg[1]_rep__2_n_0 ),
        .I3(\ecorr[32]_i_2_n_0 ),
        .I4(\ecorr[32]_i_3_n_0 ),
        .I5(obs_ecorr[32]),
        .O(\ecorr[32]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair203" *) 
  LUT4 #(
    .INIT(16'hEFFF)) 
    \ecorr[32]_i_2 
       (.I0(\ptr[21][2]_i_2_n_0 ),
        .I1(\ptr[21][1]_i_2_n_0 ),
        .I2(\ptr[21][0]_i_2_n_0 ),
        .I3(obs_defect[21]),
        .O(\ecorr[32]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair228" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \ecorr[32]_i_3 
       (.I0(\ptr[25][2]_i_2_n_0 ),
        .I1(\ptr[25][0]_i_2_n_0 ),
        .I2(\ptr[25][1]_i_2_n_0 ),
        .I3(obs_defect[25]),
        .O(\ecorr[32]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBF33F88880CC0)) 
    \ecorr[33]_i_1 
       (.I0(obs_ecorr[25]),
        .I1(\cid[25][5]_i_1_n_0 ),
        .I2(\ecorr[33]_i_2_n_0 ),
        .I3(\ecorr[33]_i_3_n_0 ),
        .I4(\FSM_sequential_stage_reg[1]_rep__2_n_0 ),
        .I5(obs_ecorr[33]),
        .O(\ecorr[33]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h40)) 
    \ecorr[33]_i_2 
       (.I0(\ptr[26][2]_i_2_n_0 ),
        .I1(\active[26]_i_4_n_0 ),
        .I2(obs_defect[26]),
        .O(\ecorr[33]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair371" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \ecorr[33]_i_3 
       (.I0(\defect[26]_i_3_n_0 ),
        .I1(obs_defect[22]),
        .I2(\defect[26]_i_2_n_0 ),
        .O(\ecorr[33]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBF33F88880CC0)) 
    \ecorr[34]_i_1 
       (.I0(obs_ecorr[26]),
        .I1(\cid[25][5]_i_1_n_0 ),
        .I2(\ecorr[34]_i_2_n_0 ),
        .I3(\defect[26]_i_4_n_0 ),
        .I4(\FSM_sequential_stage_reg[1]_rep__2_n_0 ),
        .I5(obs_ecorr[34]),
        .O(\ecorr[34]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \ecorr[34]_i_2 
       (.I0(\ptr[26][2]_i_2_n_0 ),
        .I1(\ptr[26][1]_i_2_n_0 ),
        .I2(\ptr[26][0]_i_2_n_0 ),
        .I3(obs_defect[26]),
        .O(\ecorr[34]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBF33F88880CC0)) 
    \ecorr[35]_i_1 
       (.I0(obs_ecorr[27]),
        .I1(\cid[25][5]_i_1_n_0 ),
        .I2(\ecorr[35]_i_2_n_0 ),
        .I3(\ecorr[35]_i_3_n_0 ),
        .I4(\FSM_sequential_stage_reg[1]_rep__2_n_0 ),
        .I5(obs_ecorr[35]),
        .O(\ecorr[35]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair234" *) 
  LUT4 #(
    .INIT(16'h0040)) 
    \ecorr[35]_i_2 
       (.I0(\ptr[23][0]_i_2_n_0 ),
        .I1(\ptr[23][1]_i_2_n_0 ),
        .I2(obs_defect[23]),
        .I3(\defect[23]_i_4_n_0 ),
        .O(\ecorr[35]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair264" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \ecorr[35]_i_3 
       (.I0(\active[27]_i_4_n_0 ),
        .I1(\active[27]_i_3_n_0 ),
        .I2(obs_defect[27]),
        .O(\ecorr[35]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBF33F88880CC0)) 
    \ecorr[36]_i_1 
       (.I0(obs_ecorr[28]),
        .I1(\cid[25][5]_i_1_n_0 ),
        .I2(\ecorr[36]_i_2_n_0 ),
        .I3(\ecorr[36]_i_3_n_0 ),
        .I4(\FSM_sequential_stage_reg[1]_rep__2_n_0 ),
        .I5(obs_ecorr[36]),
        .O(\ecorr[36]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair263" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \ecorr[36]_i_2 
       (.I0(obs_defect[27]),
        .I1(\active[27]_i_4_n_0 ),
        .I2(\ptr[27][1]_i_2_n_0 ),
        .I3(\ptr[27][0]_i_2_n_0 ),
        .O(\ecorr[36]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair268" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \ecorr[36]_i_3 
       (.I0(\ptr[28][1]_i_2_n_0 ),
        .I1(\ptr[28][0]_i_2_n_0 ),
        .I2(obs_defect[28]),
        .I3(\ptr[28][2]_i_2_n_0 ),
        .O(\ecorr[36]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBF33F88880CC0)) 
    \ecorr[37]_i_1 
       (.I0(obs_ecorr[29]),
        .I1(\cid[25][5]_i_1_n_0 ),
        .I2(\ecorr[37]_i_2_n_0 ),
        .I3(\ecorr[37]_i_3_n_0 ),
        .I4(\FSM_sequential_stage_reg[1]_rep__2_n_0 ),
        .I5(obs_ecorr[37]),
        .O(\ecorr[37]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair253" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \ecorr[37]_i_2 
       (.I0(\defect[24]_i_2_n_0 ),
        .I1(\ptr[24][0]_i_2_n_0 ),
        .I2(\ptr[24][1]_i_2_n_0 ),
        .I3(obs_defect[24]),
        .O(\ecorr[37]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair329" *) 
  LUT4 #(
    .INIT(16'h2000)) 
    \ecorr[37]_i_3 
       (.I0(\ptr[28][1]_i_2_n_0 ),
        .I1(\ptr[28][0]_i_2_n_0 ),
        .I2(\ptr[28][2]_i_2_n_0 ),
        .I3(obs_defect[28]),
        .O(\ecorr[37]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hBBBB3FF38888C00C)) 
    \ecorr[38]_i_1 
       (.I0(obs_ecorr[30]),
        .I1(\cid[25][5]_i_1_n_0 ),
        .I2(\ecorr[38]_i_2_n_0 ),
        .I3(\ecorr[38]_i_3_n_0 ),
        .I4(\FSM_sequential_stage_reg[1]_rep__2_n_0 ),
        .I5(obs_ecorr[38]),
        .O(\ecorr[38]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair258" *) 
  LUT4 #(
    .INIT(16'hEFFF)) 
    \ecorr[38]_i_2 
       (.I0(\ptr[29][0]_i_2_n_0 ),
        .I1(\ptr[29][1]_i_2_n_0 ),
        .I2(\defect[29]_i_2_n_0 ),
        .I3(obs_defect[29]),
        .O(\ecorr[38]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair268" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \ecorr[38]_i_3 
       (.I0(obs_defect[28]),
        .I1(\ptr[28][2]_i_2_n_0 ),
        .I2(\ptr[28][1]_i_2_n_0 ),
        .I3(\ptr[28][0]_i_2_n_0 ),
        .O(\ecorr[38]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hF757A808)) 
    \ecorr[39]_i_1 
       (.I0(\cid[25][5]_i_1_n_0 ),
        .I1(\defect[9]_i_2_n_0 ),
        .I2(\FSM_sequential_stage_reg[1]_rep__2_n_0 ),
        .I3(obs_ecorr[31]),
        .I4(obs_ecorr[39]),
        .O(\ecorr[39]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF757A808)) 
    \ecorr[3]_i_1 
       (.I0(\cid[25][5]_i_1_n_0 ),
        .I1(\defect[6]_i_2_n_0 ),
        .I2(\FSM_sequential_stage_reg[1]_rep__2_n_0 ),
        .I3(obs_ecorr[2]),
        .I4(obs_ecorr[3]),
        .O(\ecorr[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBF33F88880CC0)) 
    \ecorr[40]_i_1 
       (.I0(obs_ecorr[32]),
        .I1(\cid[25][5]_i_1_n_0 ),
        .I2(\ecorr[40]_i_2_n_0 ),
        .I3(\ecorr[40]_i_3_n_0 ),
        .I4(\FSM_sequential_stage_reg[1]_rep__2_n_0 ),
        .I5(obs_ecorr[40]),
        .O(\ecorr[40]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair258" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    \ecorr[40]_i_2 
       (.I0(\defect[29]_i_2_n_0 ),
        .I1(\ptr[29][0]_i_2_n_0 ),
        .I2(\ptr[29][1]_i_2_n_0 ),
        .I3(obs_defect[29]),
        .O(\ecorr[40]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \ecorr[40]_i_3 
       (.I0(\ptr[25][2]_i_2_n_0 ),
        .I1(\ptr[25][0]_i_2_n_0 ),
        .I2(\ptr[25][1]_i_2_n_0 ),
        .I3(obs_defect[25]),
        .O(\ecorr[40]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFF7F0F7FF0800080)) 
    \ecorr[4]_i_1 
       (.I0(\defect[8]_i_2_n_0 ),
        .I1(obs_defect[26]),
        .I2(\cid[25][5]_i_1_n_0 ),
        .I3(\FSM_sequential_stage_reg[1]_rep__2_n_0 ),
        .I4(obs_ecorr[3]),
        .I5(obs_ecorr[4]),
        .O(\ecorr[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0F0F1FEF0000E010)) 
    \ecorr[5]_i_1 
       (.I0(\ptr[10][0]_i_1_n_0 ),
        .I1(\ecorr[9]_i_2_n_0 ),
        .I2(\cid[25][5]_i_1_n_0 ),
        .I3(\busy[10]_i_2_n_0 ),
        .I4(\FSM_sequential_stage_reg[1]_rep__2_n_0 ),
        .I5(obs_ecorr[5]),
        .O(\ecorr[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h55D70028)) 
    \ecorr[6]_i_1 
       (.I0(\cid[25][5]_i_1_n_0 ),
        .I1(\busy[12]_i_5_n_0 ),
        .I2(\ecorr[6]_i_2_n_0 ),
        .I3(\FSM_sequential_stage_reg[1]_rep__2_n_0 ),
        .I4(obs_ecorr[6]),
        .O(\ecorr[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair342" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \ecorr[6]_i_2 
       (.I0(obs_defect[12]),
        .I1(\ptr[12][0]_i_1_n_0 ),
        .I2(\defect[12]_i_2_n_0 ),
        .O(\ecorr[6]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h557D0082)) 
    \ecorr[7]_i_1 
       (.I0(\cid[25][5]_i_1_n_0 ),
        .I1(\busy[12]_i_4_n_0 ),
        .I2(\defect[13]_i_2_n_0 ),
        .I3(\FSM_sequential_stage_reg[1]_rep__2_n_0 ),
        .I4(obs_ecorr[7]),
        .O(\ecorr[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair327" *) 
  LUT4 #(
    .INIT(16'h5708)) 
    \ecorr[8]_i_1 
       (.I0(\cid[25][5]_i_1_n_0 ),
        .I1(\defect[1]_i_2_n_0 ),
        .I2(\FSM_sequential_stage_reg[1]_rep__2_n_0 ),
        .I3(obs_ecorr[8]),
        .O(\ecorr[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0F0F2FDF0000D020)) 
    \ecorr[9]_i_1 
       (.I0(\ptr[10][0]_i_1_n_0 ),
        .I1(\ecorr[9]_i_2_n_0 ),
        .I2(\cid[25][5]_i_1_n_0 ),
        .I3(\ecorr[9]_i_3_n_0 ),
        .I4(\FSM_sequential_stage_reg[1]_rep__2_n_0 ),
        .I5(obs_ecorr[9]),
        .O(\ecorr[9]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \ecorr[9]_i_2 
       (.I0(\defect[10]_i_2_n_0 ),
        .I1(obs_defect[10]),
        .O(\ecorr[9]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \ecorr[9]_i_3 
       (.I0(\busy[10]_i_3_n_0 ),
        .I1(obs_defect[14]),
        .O(\ecorr[9]_i_3_n_0 ));
  FDRE \ecorr_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\ecorr[0]_i_1_n_0 ),
        .Q(obs_ecorr[0]),
        .R(reset));
  FDRE \ecorr_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\ecorr[10]_i_1_n_0 ),
        .Q(obs_ecorr[10]),
        .R(reset));
  FDRE \ecorr_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(\ecorr[11]_i_1_n_0 ),
        .Q(obs_ecorr[11]),
        .R(reset));
  FDRE \ecorr_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(\ecorr[12]_i_1_n_0 ),
        .Q(obs_ecorr[12]),
        .R(reset));
  FDRE \ecorr_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(\ecorr[13]_i_1_n_0 ),
        .Q(obs_ecorr[13]),
        .R(reset));
  FDRE \ecorr_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(\ecorr[14]_i_1_n_0 ),
        .Q(obs_ecorr[14]),
        .R(reset));
  FDRE \ecorr_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(\ecorr[15]_i_1_n_0 ),
        .Q(obs_ecorr[15]),
        .R(reset));
  FDRE \ecorr_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(\ecorr[16]_i_1_n_0 ),
        .Q(obs_ecorr[16]),
        .R(reset));
  FDRE \ecorr_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(\ecorr[17]_i_1_n_0 ),
        .Q(obs_ecorr[17]),
        .R(reset));
  FDRE \ecorr_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(\ecorr[18]_i_1_n_0 ),
        .Q(obs_ecorr[18]),
        .R(reset));
  FDRE \ecorr_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(\ecorr[19]_i_1_n_0 ),
        .Q(obs_ecorr[19]),
        .R(reset));
  FDRE \ecorr_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\ecorr[1]_i_1_n_0 ),
        .Q(obs_ecorr[1]),
        .R(reset));
  FDRE \ecorr_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .D(\ecorr[20]_i_1_n_0 ),
        .Q(obs_ecorr[20]),
        .R(reset));
  FDRE \ecorr_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .D(\ecorr[21]_i_1_n_0 ),
        .Q(obs_ecorr[21]),
        .R(reset));
  FDRE \ecorr_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .D(\ecorr[22]_i_1_n_0 ),
        .Q(obs_ecorr[22]),
        .R(reset));
  FDRE \ecorr_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .D(\ecorr[23]_i_1_n_0 ),
        .Q(obs_ecorr[23]),
        .R(reset));
  FDRE \ecorr_reg[24] 
       (.C(clk),
        .CE(1'b1),
        .D(\ecorr[24]_i_1_n_0 ),
        .Q(obs_ecorr[24]),
        .R(reset));
  FDRE \ecorr_reg[25] 
       (.C(clk),
        .CE(1'b1),
        .D(\ecorr[25]_i_1_n_0 ),
        .Q(obs_ecorr[25]),
        .R(reset));
  FDRE \ecorr_reg[26] 
       (.C(clk),
        .CE(1'b1),
        .D(\ecorr[26]_i_1_n_0 ),
        .Q(obs_ecorr[26]),
        .R(reset));
  FDRE \ecorr_reg[27] 
       (.C(clk),
        .CE(1'b1),
        .D(\ecorr[27]_i_1_n_0 ),
        .Q(obs_ecorr[27]),
        .R(reset));
  FDRE \ecorr_reg[28] 
       (.C(clk),
        .CE(1'b1),
        .D(\ecorr[28]_i_1_n_0 ),
        .Q(obs_ecorr[28]),
        .R(reset));
  FDRE \ecorr_reg[29] 
       (.C(clk),
        .CE(1'b1),
        .D(\ecorr[29]_i_1_n_0 ),
        .Q(obs_ecorr[29]),
        .R(reset));
  FDRE \ecorr_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\ecorr[2]_i_1_n_0 ),
        .Q(obs_ecorr[2]),
        .R(reset));
  FDRE \ecorr_reg[30] 
       (.C(clk),
        .CE(1'b1),
        .D(\ecorr[30]_i_1_n_0 ),
        .Q(obs_ecorr[30]),
        .R(reset));
  FDRE \ecorr_reg[31] 
       (.C(clk),
        .CE(1'b1),
        .D(\ecorr[31]_i_1_n_0 ),
        .Q(obs_ecorr[31]),
        .R(reset));
  FDRE \ecorr_reg[32] 
       (.C(clk),
        .CE(1'b1),
        .D(\ecorr[32]_i_1_n_0 ),
        .Q(obs_ecorr[32]),
        .R(reset));
  FDRE \ecorr_reg[33] 
       (.C(clk),
        .CE(1'b1),
        .D(\ecorr[33]_i_1_n_0 ),
        .Q(obs_ecorr[33]),
        .R(reset));
  FDRE \ecorr_reg[34] 
       (.C(clk),
        .CE(1'b1),
        .D(\ecorr[34]_i_1_n_0 ),
        .Q(obs_ecorr[34]),
        .R(reset));
  FDRE \ecorr_reg[35] 
       (.C(clk),
        .CE(1'b1),
        .D(\ecorr[35]_i_1_n_0 ),
        .Q(obs_ecorr[35]),
        .R(reset));
  FDRE \ecorr_reg[36] 
       (.C(clk),
        .CE(1'b1),
        .D(\ecorr[36]_i_1_n_0 ),
        .Q(obs_ecorr[36]),
        .R(reset));
  FDRE \ecorr_reg[37] 
       (.C(clk),
        .CE(1'b1),
        .D(\ecorr[37]_i_1_n_0 ),
        .Q(obs_ecorr[37]),
        .R(reset));
  FDRE \ecorr_reg[38] 
       (.C(clk),
        .CE(1'b1),
        .D(\ecorr[38]_i_1_n_0 ),
        .Q(obs_ecorr[38]),
        .R(reset));
  FDRE \ecorr_reg[39] 
       (.C(clk),
        .CE(1'b1),
        .D(\ecorr[39]_i_1_n_0 ),
        .Q(obs_ecorr[39]),
        .R(reset));
  FDRE \ecorr_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\ecorr[3]_i_1_n_0 ),
        .Q(obs_ecorr[3]),
        .R(reset));
  FDRE \ecorr_reg[40] 
       (.C(clk),
        .CE(1'b1),
        .D(\ecorr[40]_i_1_n_0 ),
        .Q(obs_ecorr[40]),
        .R(reset));
  FDRE \ecorr_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\ecorr[4]_i_1_n_0 ),
        .Q(obs_ecorr[4]),
        .R(reset));
  FDRE \ecorr_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\ecorr[5]_i_1_n_0 ),
        .Q(obs_ecorr[5]),
        .R(reset));
  FDRE \ecorr_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\ecorr[6]_i_1_n_0 ),
        .Q(obs_ecorr[6]),
        .R(reset));
  FDRE \ecorr_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\ecorr[7]_i_1_n_0 ),
        .Q(obs_ecorr[7]),
        .R(reset));
  FDRE \ecorr_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\ecorr[8]_i_1_n_0 ),
        .Q(obs_ecorr[8]),
        .R(reset));
  FDRE \ecorr_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\ecorr[9]_i_1_n_0 ),
        .Q(obs_ecorr[9]),
        .R(reset));
  LUT6 #(
    .INIT(64'hCCCFFFFFCECCCCCC)) 
    \grown[0]_i_1 
       (.I0(obs_grown[10]),
        .I1(\grown[0]_i_2_n_0 ),
        .I2(\FSM_sequential_stage_reg[1]_rep__4_n_0 ),
        .I3(\grown[0]_i_3_n_0 ),
        .I4(\grown[9]_i_4_n_0 ),
        .I5(obs_grown[0]),
        .O(\grown[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h40000000)) 
    \grown[0]_i_2 
       (.I0(\FSM_sequential_stage_reg[1]_rep__4_n_0 ),
        .I1(stage__0[0]),
        .I2(obs_whole[0]),
        .I3(obs_active[0]),
        .I4(stage__0[2]),
        .O(\grown[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000D00000)) 
    \grown[0]_i_3 
       (.I0(\cid[14][2]_i_2_n_0 ),
        .I1(obs_unrooted[0]),
        .I2(\grown[0]_i_4_n_0 ),
        .I3(obs_grown[0]),
        .I4(\ptr[10][0]_i_6_n_0 ),
        .I5(\cid[2][4]_i_2_n_0 ),
        .O(\grown[0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \grown[0]_i_4 
       (.I0(obs_grown[10]),
        .I1(stage__0[2]),
        .I2(stage__0[0]),
        .I3(\FSM_sequential_stage_reg[1]_rep__4_n_0 ),
        .O(\grown[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hEFEEEFEFECEEECEC)) 
    \grown[10]_i_1 
       (.I0(\grown[10]_i_2_n_0 ),
        .I1(\grown[10]_i_3_n_0 ),
        .I2(\grown[29]_i_4_n_0 ),
        .I3(\cid[14][2]_i_2_n_0 ),
        .I4(\cid[25][5]_i_1_n_0 ),
        .I5(obs_grown[10]),
        .O(\grown[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000004F0F0F0F0F)) 
    \grown[10]_i_2 
       (.I0(\grown[10]_i_4_n_0 ),
        .I1(obs_grown[14]),
        .I2(\grown[10]_i_5_n_0 ),
        .I3(\FSM_sequential_stage_reg[1]_rep__1_n_0 ),
        .I4(stage__0[0]),
        .I5(stage__0[2]),
        .O(\grown[10]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT5 #(
    .INIT(32'h40000000)) 
    \grown[10]_i_3 
       (.I0(\FSM_sequential_stage_reg[1]_rep__2_n_0 ),
        .I1(stage__0[2]),
        .I2(stage__0[0]),
        .I3(obs_active[10]),
        .I4(obs_whole[10]),
        .O(\grown[10]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair318" *) 
  LUT3 #(
    .INIT(8'h4F)) 
    \grown[10]_i_4 
       (.I0(obs_unrooted[10]),
        .I1(\cid[18][4]_i_2_n_0 ),
        .I2(\cid[10][5]_i_2_n_0 ),
        .O(\grown[10]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hA2AAAAAAA2AAA2AA)) 
    \grown[10]_i_5 
       (.I0(\grown[10]_i_6_n_0 ),
        .I1(obs_grown[11]),
        .I2(\grown[9]_i_5_n_0 ),
        .I3(\cid[10][5]_i_6_n_0 ),
        .I4(obs_unrooted[10]),
        .I5(\cid[15][3]_i_2_n_0 ),
        .O(\grown[10]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00000000BFFFBFBF)) 
    \grown[10]_i_6 
       (.I0(\grown[9]_i_5_n_0 ),
        .I1(obs_grown[0]),
        .I2(\ptr[10][0]_i_6_n_0 ),
        .I3(obs_unrooted[10]),
        .I4(\cid[2][4]_i_2_n_0 ),
        .I5(obs_grown[10]),
        .O(\grown[10]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hEFEEEFEFECEEECEC)) 
    \grown[11]_i_1 
       (.I0(\grown[11]_i_2_n_0 ),
        .I1(\grown[11]_i_3_n_0 ),
        .I2(\grown[29]_i_4_n_0 ),
        .I3(\cid[15][3]_i_2_n_0 ),
        .I4(\cid[25][5]_i_1_n_0 ),
        .I5(obs_grown[11]),
        .O(\grown[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000D500D5D5D5D5)) 
    \grown[11]_i_2 
       (.I0(\grown[23]_i_2_n_0 ),
        .I1(\grown[23]_i_3_n_0 ),
        .I2(\grown[11]_i_4_n_0 ),
        .I3(\grown[11]_i_5_n_0 ),
        .I4(\grown[11]_i_6_n_0 ),
        .I5(\grown[11]_i_7_n_0 ),
        .O(\grown[11]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair144" *) 
  LUT5 #(
    .INIT(32'h00800000)) 
    \grown[11]_i_3 
       (.I0(obs_whole[11]),
        .I1(obs_active[11]),
        .I2(stage__0[2]),
        .I3(\FSM_sequential_stage_reg[1]_rep__2_n_0 ),
        .I4(stage__0[0]),
        .O(\grown[11]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair144" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \grown[11]_i_4 
       (.I0(obs_whole[11]),
        .I1(obs_active[11]),
        .O(\grown[11]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair162" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \grown[11]_i_5 
       (.I0(obs_grown[15]),
        .I1(stage__0[2]),
        .I2(stage__0[0]),
        .I3(\FSM_sequential_stage_reg[1]_rep__1_n_0 ),
        .O(\grown[11]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair336" *) 
  LUT3 #(
    .INIT(8'h4F)) 
    \grown[11]_i_6 
       (.I0(obs_unrooted[11]),
        .I1(\cid[19][5]_i_3_n_0 ),
        .I2(\cid[11][5]_i_3_n_0 ),
        .O(\grown[11]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hA2AAAAAAA2AAA2AA)) 
    \grown[11]_i_7 
       (.I0(\grown[11]_i_8_n_0 ),
        .I1(obs_grown[12]),
        .I2(\grown[9]_i_5_n_0 ),
        .I3(\cid[11][4]_i_5_n_0 ),
        .I4(obs_unrooted[11]),
        .I5(\cid[16][4]_i_3_n_0 ),
        .O(\grown[11]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F4FFFFFF)) 
    \grown[11]_i_8 
       (.I0(obs_unrooted[11]),
        .I1(\cid[14][2]_i_2_n_0 ),
        .I2(\grown[9]_i_5_n_0 ),
        .I3(obs_grown[10]),
        .I4(\cid[10][5]_i_5_n_0 ),
        .I5(obs_grown[11]),
        .O(\grown[11]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hEFEEEFEFECEEECEC)) 
    \grown[12]_i_1 
       (.I0(\grown[12]_i_2_n_0 ),
        .I1(\grown[12]_i_3_n_0 ),
        .I2(\grown[29]_i_4_n_0 ),
        .I3(\cid[16][4]_i_3_n_0 ),
        .I4(\cid[25][5]_i_1_n_0 ),
        .I5(obs_grown[12]),
        .O(\grown[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0200000003FF03FF)) 
    \grown[12]_i_2 
       (.I0(\grown[12]_i_4_n_0 ),
        .I1(\FSM_sequential_stage_reg[1]_rep__2_n_0 ),
        .I2(stage__0[0]),
        .I3(stage__0[2]),
        .I4(obs_grown[16]),
        .I5(\grown[12]_i_5_n_0 ),
        .O(\grown[12]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT5 #(
    .INIT(32'h40000000)) 
    \grown[12]_i_3 
       (.I0(\FSM_sequential_stage_reg[1]_rep__2_n_0 ),
        .I1(stage__0[2]),
        .I2(stage__0[0]),
        .I3(obs_active[12]),
        .I4(obs_whole[12]),
        .O(\grown[12]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair344" *) 
  LUT3 #(
    .INIT(8'h45)) 
    \grown[12]_i_4 
       (.I0(\cid[12][5]_i_2_n_0 ),
        .I1(obs_unrooted[12]),
        .I2(\cid[20][4]_i_2_n_0 ),
        .O(\grown[12]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA20AAAAAA)) 
    \grown[12]_i_5 
       (.I0(\grown[12]_i_6_n_0 ),
        .I1(obs_unrooted[12]),
        .I2(\cid[17][4]_i_3_n_0 ),
        .I3(\cid[12][4]_i_4_n_0 ),
        .I4(obs_grown[13]),
        .I5(\grown[9]_i_5_n_0 ),
        .O(\grown[12]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h5155555551555155)) 
    \grown[12]_i_6 
       (.I0(obs_grown[12]),
        .I1(\cid[11][5]_i_5_n_0 ),
        .I2(\grown[9]_i_5_n_0 ),
        .I3(obs_grown[11]),
        .I4(obs_unrooted[12]),
        .I5(\cid[15][3]_i_2_n_0 ),
        .O(\grown[12]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hEFEEEFEFECEEECEC)) 
    \grown[13]_i_1 
       (.I0(\grown[13]_i_2_n_0 ),
        .I1(\grown[13]_i_3_n_0 ),
        .I2(\grown[29]_i_4_n_0 ),
        .I3(\cid[17][4]_i_3_n_0 ),
        .I4(\cid[25][5]_i_1_n_0 ),
        .I5(obs_grown[13]),
        .O(\grown[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000010001F1F1F1F)) 
    \grown[13]_i_2 
       (.I0(\FSM_sequential_stage_reg[1]_rep__2_n_0 ),
        .I1(stage__0[0]),
        .I2(stage__0[2]),
        .I3(obs_grown[17]),
        .I4(\grown[13]_i_4_n_0 ),
        .I5(\grown[13]_i_5_n_0 ),
        .O(\grown[13]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT5 #(
    .INIT(32'h40000000)) 
    \grown[13]_i_3 
       (.I0(\FSM_sequential_stage_reg[1]_rep__2_n_0 ),
        .I1(stage__0[2]),
        .I2(stage__0[0]),
        .I3(obs_active[13]),
        .I4(obs_whole[13]),
        .O(\grown[13]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair349" *) 
  LUT3 #(
    .INIT(8'h4F)) 
    \grown[13]_i_4 
       (.I0(obs_unrooted[13]),
        .I1(\cid[21][4]_i_2_n_0 ),
        .I2(\cid[13][5]_i_3_n_0 ),
        .O(\grown[13]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h8AAAAAAA8AAA8AAA)) 
    \grown[13]_i_5 
       (.I0(\grown[13]_i_6_n_0 ),
        .I1(\grown[9]_i_5_n_0 ),
        .I2(obs_grown[1]),
        .I3(\cid[13][5]_i_7_n_0 ),
        .I4(obs_unrooted[13]),
        .I5(\cid[3][4]_i_2_n_0 ),
        .O(\grown[13]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00000000DFDFFFDF)) 
    \grown[13]_i_6 
       (.I0(\cid[12][5]_i_4_n_0 ),
        .I1(\grown[9]_i_5_n_0 ),
        .I2(obs_grown[12]),
        .I3(\cid[16][4]_i_3_n_0 ),
        .I4(obs_unrooted[13]),
        .I5(obs_grown[13]),
        .O(\grown[13]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hEFEEEFEFECEEECEC)) 
    \grown[14]_i_1 
       (.I0(\grown[14]_i_2_n_0 ),
        .I1(\grown[14]_i_3_n_0 ),
        .I2(\grown[29]_i_4_n_0 ),
        .I3(\cid[18][4]_i_2_n_0 ),
        .I4(\cid[25][5]_i_1_n_0 ),
        .I5(obs_grown[14]),
        .O(\grown[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000010001F1F1F1F)) 
    \grown[14]_i_2 
       (.I0(\FSM_sequential_stage_reg[1]_rep__1_n_0 ),
        .I1(stage__0[0]),
        .I2(stage__0[2]),
        .I3(obs_grown[10]),
        .I4(\grown[14]_i_4_n_0 ),
        .I5(\grown[14]_i_5_n_0 ),
        .O(\grown[14]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT5 #(
    .INIT(32'h40000000)) 
    \grown[14]_i_3 
       (.I0(\FSM_sequential_stage_reg[1]_rep__2_n_0 ),
        .I1(stage__0[0]),
        .I2(obs_whole[14]),
        .I3(obs_active[14]),
        .I4(stage__0[2]),
        .O(\grown[14]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair333" *) 
  LUT3 #(
    .INIT(8'h5D)) 
    \grown[14]_i_4 
       (.I0(\cid[14][5]_i_3_n_0 ),
        .I1(\cid[14][2]_i_2_n_0 ),
        .I2(obs_unrooted[14]),
        .O(\grown[14]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0F0F0F0F07000707)) 
    \grown[14]_i_5 
       (.I0(\grown[14]_i_6_n_0 ),
        .I1(obs_grown[15]),
        .I2(\grown[14]_i_7_n_0 ),
        .I3(\grown[14]_i_8_n_0 ),
        .I4(obs_grown[18]),
        .I5(\grown[9]_i_5_n_0 ),
        .O(\grown[14]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00F0000000F00070)) 
    \grown[14]_i_6 
       (.I0(\cid[4][4]_i_2_n_0 ),
        .I1(\ptr[2][1]_i_3_n_0 ),
        .I2(obs_growth[21]),
        .I3(obs_growth[20]),
        .I4(obs_unrooted[14]),
        .I5(\cid[19][5]_i_3_n_0 ),
        .O(\grown[14]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hBAAAAAAABAAABAAA)) 
    \grown[14]_i_7 
       (.I0(obs_grown[14]),
        .I1(\grown[9]_i_5_n_0 ),
        .I2(\ptr[2][1]_i_3_n_0 ),
        .I3(obs_grown[2]),
        .I4(obs_unrooted[14]),
        .I5(\cid[4][4]_i_2_n_0 ),
        .O(\grown[14]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair356" *) 
  LUT3 #(
    .INIT(8'h4F)) 
    \grown[14]_i_8 
       (.I0(obs_unrooted[14]),
        .I1(\cid[22][2]_i_3_n_0 ),
        .I2(\cid[14][5]_i_9_n_0 ),
        .O(\grown[14]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hABAAABABA8AAA8A8)) 
    \grown[15]_i_1 
       (.I0(\c_grown[15] ),
        .I1(\grown[15]_i_3_n_0 ),
        .I2(\grown[29]_i_4_n_0 ),
        .I3(\cid[19][5]_i_3_n_0 ),
        .I4(\cid[25][5]_i_1_n_0 ),
        .I5(obs_grown[15]),
        .O(\grown[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair360" *) 
  LUT3 #(
    .INIT(8'h4F)) 
    \grown[15]_i_10 
       (.I0(obs_unrooted[15]),
        .I1(\cid[23][2]_i_3_n_0 ),
        .I2(\cid[15][4]_i_5_n_0 ),
        .O(\grown[15]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h55DF008055DF55DF)) 
    \grown[15]_i_2 
       (.I0(stage__0[2]),
        .I1(\grown[15]_i_4_n_0 ),
        .I2(stage__0[0]),
        .I3(\FSM_sequential_stage_reg[1]_rep__4_n_0 ),
        .I4(\grown[15]_i_5_n_0 ),
        .I5(\grown[15]_i_6_n_0 ),
        .O(\c_grown[15] ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT5 #(
    .INIT(32'h40000000)) 
    \grown[15]_i_3 
       (.I0(\FSM_sequential_stage_reg[1]_rep__2_n_0 ),
        .I1(stage__0[0]),
        .I2(obs_whole[15]),
        .I3(obs_active[15]),
        .I4(stage__0[2]),
        .O(\grown[15]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \grown[15]_i_4 
       (.I0(obs_whole[15]),
        .I1(obs_active[15]),
        .O(\grown[15]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'h00001000)) 
    \grown[15]_i_5 
       (.I0(\FSM_sequential_stage_reg[1]_rep__4_n_0 ),
        .I1(stage__0[0]),
        .I2(stage__0[2]),
        .I3(obs_grown[11]),
        .I4(\grown[15]_i_7_n_0 ),
        .O(\grown[15]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0F0F0F0F07000707)) 
    \grown[15]_i_6 
       (.I0(\grown[15]_i_8_n_0 ),
        .I1(obs_grown[16]),
        .I2(\grown[15]_i_9_n_0 ),
        .I3(\grown[15]_i_10_n_0 ),
        .I4(obs_grown[19]),
        .I5(\grown[9]_i_5_n_0 ),
        .O(\grown[15]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair340" *) 
  LUT3 #(
    .INIT(8'h4F)) 
    \grown[15]_i_7 
       (.I0(obs_unrooted[15]),
        .I1(\cid[15][3]_i_2_n_0 ),
        .I2(\cid[15][5]_i_3_n_0 ),
        .O(\grown[15]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFF000000FF00BF00)) 
    \grown[15]_i_8 
       (.I0(obs_growth[20]),
        .I1(obs_growth[21]),
        .I2(\cid[18][4]_i_2_n_0 ),
        .I3(\cid[15][5]_i_7_n_0 ),
        .I4(obs_unrooted[15]),
        .I5(\cid[20][4]_i_2_n_0 ),
        .O(\grown[15]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hBAAAAAAABAAABAAA)) 
    \grown[15]_i_9 
       (.I0(obs_grown[15]),
        .I1(\grown[9]_i_5_n_0 ),
        .I2(obs_grown[14]),
        .I3(\cid[15][4]_i_21_n_0 ),
        .I4(obs_unrooted[15]),
        .I5(\cid[18][4]_i_2_n_0 ),
        .O(\grown[15]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hEFEEEFEFECEEECEC)) 
    \grown[16]_i_1 
       (.I0(\grown[16]_i_2_n_0 ),
        .I1(\grown[16]_i_3_n_0 ),
        .I2(\grown[29]_i_4_n_0 ),
        .I3(\cid[20][4]_i_2_n_0 ),
        .I4(\cid[25][5]_i_1_n_0 ),
        .I5(obs_grown[16]),
        .O(\grown[16]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000010001F1F1F1F)) 
    \grown[16]_i_2 
       (.I0(\FSM_sequential_stage_reg[1]_rep__2_n_0 ),
        .I1(stage__0[0]),
        .I2(stage__0[2]),
        .I3(obs_grown[12]),
        .I4(\grown[16]_i_4_n_0 ),
        .I5(\grown[16]_i_5_n_0 ),
        .O(\grown[16]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT5 #(
    .INIT(32'h40000000)) 
    \grown[16]_i_3 
       (.I0(\FSM_sequential_stage_reg[1]_rep__2_n_0 ),
        .I1(stage__0[0]),
        .I2(obs_whole[16]),
        .I3(obs_active[16]),
        .I4(stage__0[2]),
        .O(\grown[16]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair398" *) 
  LUT3 #(
    .INIT(8'h4F)) 
    \grown[16]_i_4 
       (.I0(obs_unrooted[16]),
        .I1(\cid[16][4]_i_3_n_0 ),
        .I2(\cid[16][5]_i_3_n_0 ),
        .O(\grown[16]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h8AAA8AAAAAAA8AAA)) 
    \grown[16]_i_5 
       (.I0(\grown[16]_i_6_n_0 ),
        .I1(\grown[9]_i_5_n_0 ),
        .I2(obs_grown[20]),
        .I3(\cid[16][5]_i_9_n_0 ),
        .I4(\cid[24][4]_i_2_n_0 ),
        .I5(obs_unrooted[16]),
        .O(\grown[16]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA20AAAAAA)) 
    \grown[16]_i_6 
       (.I0(\busy[16]_i_6_n_0 ),
        .I1(obs_unrooted[16]),
        .I2(\cid[21][4]_i_2_n_0 ),
        .I3(\cid[16][5]_i_12_n_0 ),
        .I4(obs_grown[17]),
        .I5(\grown[9]_i_5_n_0 ),
        .O(\grown[16]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hEFEEEFEFECEEECEC)) 
    \grown[17]_i_1 
       (.I0(\grown[17]_i_2_n_0 ),
        .I1(\grown[17]_i_3_n_0 ),
        .I2(\grown[29]_i_4_n_0 ),
        .I3(\cid[21][4]_i_2_n_0 ),
        .I4(\cid[25][5]_i_1_n_0 ),
        .I5(obs_grown[17]),
        .O(\grown[17]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000010001F1F1F1F)) 
    \grown[17]_i_2 
       (.I0(\FSM_sequential_stage_reg[1]_rep__2_n_0 ),
        .I1(stage__0[0]),
        .I2(stage__0[2]),
        .I3(obs_grown[13]),
        .I4(\grown[17]_i_4_n_0 ),
        .I5(\grown[17]_i_5_n_0 ),
        .O(\grown[17]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT5 #(
    .INIT(32'h40000000)) 
    \grown[17]_i_3 
       (.I0(\FSM_sequential_stage_reg[1]_rep__2_n_0 ),
        .I1(stage__0[0]),
        .I2(obs_whole[17]),
        .I3(obs_active[17]),
        .I4(stage__0[2]),
        .O(\grown[17]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'h5D)) 
    \grown[17]_i_4 
       (.I0(\cid[17][5]_i_2_n_0 ),
        .I1(\cid[17][4]_i_3_n_0 ),
        .I2(obs_unrooted[17]),
        .O(\grown[17]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA2A002A2A)) 
    \grown[17]_i_5 
       (.I0(\grown[17]_i_6_n_0 ),
        .I1(\grown[17]_i_7_n_0 ),
        .I2(obs_grown[3]),
        .I3(\grown[17]_i_8_n_0 ),
        .I4(obs_grown[21]),
        .I5(\grown[9]_i_5_n_0 ),
        .O(\grown[17]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h5155515555555155)) 
    \grown[17]_i_6 
       (.I0(obs_grown[17]),
        .I1(\cid[17][5]_i_10_n_0 ),
        .I2(\grown[9]_i_5_n_0 ),
        .I3(obs_grown[16]),
        .I4(\cid[20][4]_i_2_n_0 ),
        .I5(obs_unrooted[17]),
        .O(\grown[17]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h00F0000000F00070)) 
    \grown[17]_i_7 
       (.I0(\cid[20][4]_i_2_n_0 ),
        .I1(\cid[17][5]_i_10_n_0 ),
        .I2(obs_growth[31]),
        .I3(obs_growth[30]),
        .I4(obs_unrooted[17]),
        .I5(\cid[5][4]_i_2_n_0 ),
        .O(\grown[17]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair361" *) 
  LUT3 #(
    .INIT(8'h4F)) 
    \grown[17]_i_8 
       (.I0(obs_unrooted[17]),
        .I1(\cid[25][4]_i_2_n_0 ),
        .I2(\cid[17][3]_i_5_n_0 ),
        .O(\grown[17]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hABAAABABA8AAA8A8)) 
    \grown[18]_i_1 
       (.I0(\c_grown[18] ),
        .I1(\grown[18]_i_3_n_0 ),
        .I2(\grown[29]_i_4_n_0 ),
        .I3(\cid[22][2]_i_3_n_0 ),
        .I4(\cid[25][5]_i_1_n_0 ),
        .I5(obs_grown[18]),
        .O(\grown[18]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h400000005111FFFF)) 
    \grown[18]_i_2 
       (.I0(\FSM_sequential_stage_reg[1]_rep__4_n_0 ),
        .I1(stage__0[0]),
        .I2(obs_whole[18]),
        .I3(obs_active[18]),
        .I4(stage__0[2]),
        .I5(\grown[18]_i_4_n_0 ),
        .O(\c_grown[18] ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT5 #(
    .INIT(32'h40000000)) 
    \grown[18]_i_3 
       (.I0(\FSM_sequential_stage_reg[1]_rep__2_n_0 ),
        .I1(stage__0[0]),
        .I2(obs_whole[18]),
        .I3(obs_active[18]),
        .I4(stage__0[2]),
        .O(\grown[18]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAA8AAA)) 
    \grown[18]_i_4 
       (.I0(\grown[18]_i_5_n_0 ),
        .I1(\grown[18]_i_6_n_0 ),
        .I2(obs_grown[14]),
        .I3(stage__0[2]),
        .I4(stage__0[0]),
        .I5(\FSM_sequential_stage_reg[1]_rep__4_n_0 ),
        .O(\grown[18]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA2A002A2A)) 
    \grown[18]_i_5 
       (.I0(\grown[18]_i_7_n_0 ),
        .I1(\grown[18]_i_8_n_0 ),
        .I2(obs_grown[19]),
        .I3(\grown[18]_i_9_n_0 ),
        .I4(obs_grown[22]),
        .I5(\grown[9]_i_5_n_0 ),
        .O(\grown[18]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair359" *) 
  LUT3 #(
    .INIT(8'h5D)) 
    \grown[18]_i_6 
       (.I0(\cid[18][5]_i_4_n_0 ),
        .I1(\cid[18][4]_i_2_n_0 ),
        .I2(obs_unrooted[18]),
        .O(\grown[18]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h4555555545554555)) 
    \grown[18]_i_7 
       (.I0(obs_grown[18]),
        .I1(\grown[9]_i_5_n_0 ),
        .I2(\ptr[4][1]_i_3_n_0 ),
        .I3(obs_grown[4]),
        .I4(obs_unrooted[18]),
        .I5(\cid[6][4]_i_2_n_0 ),
        .O(\grown[18]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFF000000FF00F700)) 
    \grown[18]_i_8 
       (.I0(\cid[6][4]_i_2_n_0 ),
        .I1(obs_growth[5]),
        .I2(obs_growth[4]),
        .I3(\cid[19][3]_i_18_n_0 ),
        .I4(obs_unrooted[18]),
        .I5(\cid[23][2]_i_3_n_0 ),
        .O(\grown[18]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair400" *) 
  LUT3 #(
    .INIT(8'h4F)) 
    \grown[18]_i_9 
       (.I0(obs_unrooted[18]),
        .I1(\cid[26][3]_i_4_n_0 ),
        .I2(\cid[18][5]_i_7_n_0 ),
        .O(\grown[18]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hEEFEFFFFEECECCCC)) 
    \grown[19]_i_1 
       (.I0(\grown[19]_i_2_n_0 ),
        .I1(\grown[19]_i_3_n_0 ),
        .I2(\cid[23][2]_i_3_n_0 ),
        .I3(\grown[29]_i_4_n_0 ),
        .I4(\cid[25][5]_i_1_n_0 ),
        .I5(obs_grown[19]),
        .O(\grown[19]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000010001F1F1F1F)) 
    \grown[19]_i_2 
       (.I0(\FSM_sequential_stage_reg[1]_rep__2_n_0 ),
        .I1(stage__0[0]),
        .I2(stage__0[2]),
        .I3(obs_grown[15]),
        .I4(\grown[19]_i_4_n_0 ),
        .I5(\grown[19]_i_5_n_0 ),
        .O(\grown[19]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h40000000)) 
    \grown[19]_i_3 
       (.I0(\FSM_sequential_stage_reg[1]_rep__2_n_0 ),
        .I1(stage__0[0]),
        .I2(obs_whole[19]),
        .I3(obs_active[19]),
        .I4(stage__0[2]),
        .O(\grown[19]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair401" *) 
  LUT3 #(
    .INIT(8'h4F)) 
    \grown[19]_i_4 
       (.I0(obs_unrooted[19]),
        .I1(\cid[19][5]_i_3_n_0 ),
        .I2(\cid[19][3]_i_4_n_0 ),
        .O(\grown[19]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0F0F000D0F0F0D0D)) 
    \grown[19]_i_5 
       (.I0(obs_grown[20]),
        .I1(\grown[19]_i_6_n_0 ),
        .I2(\grown[19]_i_7_n_0 ),
        .I3(obs_grown[23]),
        .I4(\grown[9]_i_5_n_0 ),
        .I5(\grown[19]_i_8_n_0 ),
        .O(\grown[19]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00EAFFFF)) 
    \grown[19]_i_6 
       (.I0(\cid[24][4]_i_2_n_0 ),
        .I1(\cid[19][3]_i_18_n_0 ),
        .I2(\cid[22][2]_i_3_n_0 ),
        .I3(obs_unrooted[19]),
        .I4(obs_growth[41]),
        .I5(obs_growth[40]),
        .O(\grown[19]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hBAAAAAAABAAABAAA)) 
    \grown[19]_i_7 
       (.I0(obs_grown[19]),
        .I1(\grown[9]_i_5_n_0 ),
        .I2(obs_grown[18]),
        .I3(\cid[19][3]_i_18_n_0 ),
        .I4(obs_unrooted[19]),
        .I5(\cid[22][2]_i_3_n_0 ),
        .O(\grown[19]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair370" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \grown[19]_i_8 
       (.I0(\cid[19][3]_i_6_n_0 ),
        .I1(obs_unrooted[19]),
        .I2(\cid[27][3]_i_3_n_0 ),
        .O(\grown[19]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hCCCFFFFFCECCCCCC)) 
    \grown[1]_i_1 
       (.I0(obs_grown[13]),
        .I1(\grown[1]_i_2_n_0 ),
        .I2(\FSM_sequential_stage_reg[1]_rep__4_n_0 ),
        .I3(\grown[1]_i_3_n_0 ),
        .I4(\grown[9]_i_4_n_0 ),
        .I5(obs_grown[1]),
        .O(\grown[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h40000000)) 
    \grown[1]_i_2 
       (.I0(\FSM_sequential_stage_reg[1]_rep__4_n_0 ),
        .I1(stage__0[0]),
        .I2(obs_whole[1]),
        .I3(obs_active[1]),
        .I4(stage__0[2]),
        .O(\grown[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000D000)) 
    \grown[1]_i_3 
       (.I0(\cid[17][4]_i_3_n_0 ),
        .I1(obs_unrooted[1]),
        .I2(\grown[1]_i_4_n_0 ),
        .I3(obs_growth[17]),
        .I4(obs_growth[16]),
        .I5(\cid[3][4]_i_2_n_0 ),
        .O(\grown[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h00001000)) 
    \grown[1]_i_4 
       (.I0(\FSM_sequential_stage_reg[1]_rep__4_n_0 ),
        .I1(stage__0[0]),
        .I2(stage__0[2]),
        .I3(obs_grown[13]),
        .I4(obs_grown[1]),
        .O(\grown[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hEFEEEFEFECEEECEC)) 
    \grown[20]_i_1 
       (.I0(\grown[20]_i_2_n_0 ),
        .I1(\grown[20]_i_3_n_0 ),
        .I2(\grown[29]_i_4_n_0 ),
        .I3(\cid[24][4]_i_2_n_0 ),
        .I4(\cid[25][5]_i_1_n_0 ),
        .I5(obs_grown[20]),
        .O(\grown[20]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0200000003FF03FF)) 
    \grown[20]_i_2 
       (.I0(\ptr[20][1]_i_3_n_0 ),
        .I1(\FSM_sequential_stage_reg[1]_rep__2_n_0 ),
        .I2(stage__0[0]),
        .I3(stage__0[2]),
        .I4(obs_grown[16]),
        .I5(\grown[20]_i_4_n_0 ),
        .O(\grown[20]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT5 #(
    .INIT(32'h40000000)) 
    \grown[20]_i_3 
       (.I0(\FSM_sequential_stage_reg[1]_rep__2_n_0 ),
        .I1(stage__0[0]),
        .I2(obs_whole[20]),
        .I3(obs_active[20]),
        .I4(stage__0[2]),
        .O(\grown[20]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0F0F000D0F0F0D0D)) 
    \grown[20]_i_4 
       (.I0(obs_grown[21]),
        .I1(\grown[20]_i_5_n_0 ),
        .I2(\grown[20]_i_6_n_0 ),
        .I3(obs_grown[24]),
        .I4(\grown[9]_i_5_n_0 ),
        .I5(\grown[20]_i_7_n_0 ),
        .O(\grown[20]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000BAAAFFFFFFFF)) 
    \grown[20]_i_5 
       (.I0(\cid[25][4]_i_2_n_0 ),
        .I1(obs_growth[40]),
        .I2(obs_growth[41]),
        .I3(\cid[23][2]_i_3_n_0 ),
        .I4(obs_unrooted[20]),
        .I5(\cid[21][5]_i_13_n_0 ),
        .O(\grown[20]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hBAAAAAAABAAABAAA)) 
    \grown[20]_i_6 
       (.I0(obs_grown[20]),
        .I1(\grown[9]_i_5_n_0 ),
        .I2(obs_grown[19]),
        .I3(\cid[20][3]_i_16_n_0 ),
        .I4(obs_unrooted[20]),
        .I5(\cid[23][2]_i_3_n_0 ),
        .O(\grown[20]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \grown[20]_i_7 
       (.I0(\cid[20][3]_i_6_n_0 ),
        .I1(obs_unrooted[20]),
        .I2(\cid[28][3]_i_4_n_0 ),
        .O(\grown[20]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hEFEEEFEFECEEECEC)) 
    \grown[21]_i_1 
       (.I0(\grown[21]_i_2_n_0 ),
        .I1(\grown[21]_i_3_n_0 ),
        .I2(\grown[29]_i_4_n_0 ),
        .I3(\cid[25][4]_i_2_n_0 ),
        .I4(\cid[25][5]_i_1_n_0 ),
        .I5(obs_grown[21]),
        .O(\grown[21]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000010001F1F1F1F)) 
    \grown[21]_i_2 
       (.I0(\FSM_sequential_stage_reg[1]_rep__2_n_0 ),
        .I1(stage__0[0]),
        .I2(stage__0[2]),
        .I3(obs_grown[17]),
        .I4(\cid[21][3]_i_7_n_0 ),
        .I5(\grown[21]_i_4_n_0 ),
        .O(\grown[21]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT5 #(
    .INIT(32'h40000000)) 
    \grown[21]_i_3 
       (.I0(\FSM_sequential_stage_reg[1]_rep__2_n_0 ),
        .I1(stage__0[0]),
        .I2(obs_whole[21]),
        .I3(obs_active[21]),
        .I4(stage__0[2]),
        .O(\grown[21]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0F0F0D000D0D0)) 
    \grown[21]_i_4 
       (.I0(obs_grown[5]),
        .I1(\cid[21][1]_i_7_n_0 ),
        .I2(\grown[21]_i_5_n_0 ),
        .I3(\grown[21]_i_6_n_0 ),
        .I4(obs_grown[25]),
        .I5(\grown[9]_i_5_n_0 ),
        .O(\grown[21]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h5155555551555155)) 
    \grown[21]_i_5 
       (.I0(obs_grown[21]),
        .I1(\cid[21][5]_i_13_n_0 ),
        .I2(\grown[9]_i_5_n_0 ),
        .I3(obs_grown[20]),
        .I4(obs_unrooted[21]),
        .I5(\cid[24][4]_i_2_n_0 ),
        .O(\grown[21]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT3 #(
    .INIT(8'h4F)) 
    \grown[21]_i_6 
       (.I0(obs_unrooted[21]),
        .I1(\cid[29][3]_i_3_n_0 ),
        .I2(\cid[21][5]_i_7_n_0 ),
        .O(\grown[21]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hEFEEEFEFECEEECEC)) 
    \grown[22]_i_1 
       (.I0(\grown[22]_i_2_n_0 ),
        .I1(\grown[22]_i_3_n_0 ),
        .I2(\grown[29]_i_4_n_0 ),
        .I3(\cid[26][3]_i_4_n_0 ),
        .I4(\cid[25][5]_i_1_n_0 ),
        .I5(obs_grown[22]),
        .O(\grown[22]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000010001F1F1F1F)) 
    \grown[22]_i_2 
       (.I0(\FSM_sequential_stage_reg[1]_rep__2_n_0 ),
        .I1(stage__0[0]),
        .I2(stage__0[2]),
        .I3(obs_grown[18]),
        .I4(\grown[22]_i_4_n_0 ),
        .I5(\grown[22]_i_5_n_0 ),
        .O(\grown[22]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT5 #(
    .INIT(32'h40000000)) 
    \grown[22]_i_3 
       (.I0(\FSM_sequential_stage_reg[1]_rep__2_n_0 ),
        .I1(stage__0[0]),
        .I2(obs_whole[22]),
        .I3(obs_active[22]),
        .I4(stage__0[2]),
        .O(\grown[22]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair402" *) 
  LUT3 #(
    .INIT(8'h4F)) 
    \grown[22]_i_4 
       (.I0(obs_unrooted[22]),
        .I1(\cid[22][2]_i_3_n_0 ),
        .I2(\cid[22][5]_i_4_n_0 ),
        .O(\grown[22]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0F0F000707070)) 
    \grown[22]_i_5 
       (.I0(\grown[22]_i_6_n_0 ),
        .I1(obs_grown[23]),
        .I2(\grown[22]_i_7_n_0 ),
        .I3(\grown[22]_i_8_n_0 ),
        .I4(obs_grown[26]),
        .I5(\grown[9]_i_5_n_0 ),
        .O(\grown[22]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00F0000000F00070)) 
    \grown[22]_i_6 
       (.I0(\ptr[6][1]_i_3_n_0 ),
        .I1(\cid[8][3]_i_3_n_0 ),
        .I2(obs_growth[53]),
        .I3(obs_growth[52]),
        .I4(obs_unrooted[22]),
        .I5(\cid[27][3]_i_3_n_0 ),
        .O(\grown[22]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h4555555545554555)) 
    \grown[22]_i_7 
       (.I0(obs_grown[22]),
        .I1(\grown[9]_i_5_n_0 ),
        .I2(\ptr[6][1]_i_3_n_0 ),
        .I3(obs_grown[6]),
        .I4(obs_unrooted[22]),
        .I5(\cid[8][3]_i_3_n_0 ),
        .O(\grown[22]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \grown[22]_i_8 
       (.I0(\cid[22][5]_i_7_n_0 ),
        .I1(obs_unrooted[22]),
        .I2(\cid[26][3]_i_2_n_0 ),
        .O(\grown[22]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h00D5FFFF00D50000)) 
    \grown[23]_i_1 
       (.I0(\grown[23]_i_2_n_0 ),
        .I1(\grown[23]_i_3_n_0 ),
        .I2(\grown[23]_i_4_n_0 ),
        .I3(\grown[23]_i_5_n_0 ),
        .I4(grown183_out),
        .I5(obs_grown[23]),
        .O(\grown[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \grown[23]_i_10 
       (.I0(stage__0[0]),
        .I1(\FSM_sequential_stage_reg[1]_rep__1_n_0 ),
        .O(\grown[23]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFF000000FF00BF00)) 
    \grown[23]_i_11 
       (.I0(obs_growth[52]),
        .I1(obs_growth[53]),
        .I2(\cid[26][3]_i_4_n_0 ),
        .I3(\cid[24][5]_i_9_n_0 ),
        .I4(obs_unrooted[23]),
        .I5(\cid[28][3]_i_4_n_0 ),
        .O(\grown[23]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h4555555545554555)) 
    \grown[23]_i_12 
       (.I0(obs_grown[23]),
        .I1(\grown[9]_i_5_n_0 ),
        .I2(obs_grown[22]),
        .I3(\busy[22]_i_8_n_0 ),
        .I4(obs_unrooted[23]),
        .I5(\cid[26][3]_i_4_n_0 ),
        .O(\grown[23]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair380" *) 
  LUT3 #(
    .INIT(8'hD0)) 
    \grown[23]_i_13 
       (.I0(\cid[27][5]_i_4_n_0 ),
        .I1(obs_unrooted[23]),
        .I2(\cid[23][5]_i_10_n_0 ),
        .O(\grown[23]_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \grown[23]_i_2 
       (.I0(stage__0[2]),
        .I1(stage__0[0]),
        .I2(\FSM_sequential_stage_reg[1]_rep__1_n_0 ),
        .O(\grown[23]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \grown[23]_i_3 
       (.I0(stage__0[2]),
        .I1(\FSM_sequential_stage_reg[1]_rep__1_n_0 ),
        .O(\grown[23]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \grown[23]_i_4 
       (.I0(obs_whole[23]),
        .I1(obs_active[23]),
        .O(\grown[23]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00A2A2A2A2A2A2A2)) 
    \grown[23]_i_5 
       (.I0(\grown[23]_i_7_n_0 ),
        .I1(\grown[23]_i_8_n_0 ),
        .I2(\grown[23]_i_9_n_0 ),
        .I3(\grown[23]_i_10_n_0 ),
        .I4(\grown[23]_i_4_n_0 ),
        .I5(stage__0[2]),
        .O(\grown[23]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h3B33F3330A000000)) 
    \grown[23]_i_6 
       (.I0(\grown[23]_i_4_n_0 ),
        .I1(\cid[27][3]_i_3_n_0 ),
        .I2(\FSM_sequential_stage_reg[1]_rep__2_n_0 ),
        .I3(stage__0[2]),
        .I4(stage__0[0]),
        .I5(\cid[25][5]_i_1_n_0 ),
        .O(grown183_out));
  LUT6 #(
    .INIT(64'hF0F00070F0F07070)) 
    \grown[23]_i_7 
       (.I0(\grown[23]_i_11_n_0 ),
        .I1(obs_grown[24]),
        .I2(\grown[23]_i_12_n_0 ),
        .I3(obs_grown[27]),
        .I4(\grown[9]_i_5_n_0 ),
        .I5(\grown[23]_i_13_n_0 ),
        .O(\grown[23]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair164" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \grown[23]_i_8 
       (.I0(obs_grown[19]),
        .I1(stage__0[2]),
        .I2(stage__0[0]),
        .I3(\FSM_sequential_stage_reg[1]_rep__1_n_0 ),
        .O(\grown[23]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair379" *) 
  LUT3 #(
    .INIT(8'h5D)) 
    \grown[23]_i_9 
       (.I0(\cid[23][5]_i_3_n_0 ),
        .I1(\cid[23][2]_i_3_n_0 ),
        .I2(obs_unrooted[23]),
        .O(\grown[23]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAABABBBBAA8A8888)) 
    \grown[24]_i_1 
       (.I0(\c_grown[24] ),
        .I1(\grown[24]_i_3_n_0 ),
        .I2(\cid[28][3]_i_4_n_0 ),
        .I3(\grown[29]_i_4_n_0 ),
        .I4(\cid[25][5]_i_1_n_0 ),
        .I5(obs_grown[24]),
        .O(\grown[24]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h55DF008055DF55DF)) 
    \grown[24]_i_2 
       (.I0(stage__0[2]),
        .I1(\grown[24]_i_4_n_0 ),
        .I2(stage__0[0]),
        .I3(\FSM_sequential_stage_reg[1]_rep__1_n_0 ),
        .I4(\grown[24]_i_5_n_0 ),
        .I5(\grown[24]_i_6_n_0 ),
        .O(\c_grown[24] ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT5 #(
    .INIT(32'h40000000)) 
    \grown[24]_i_3 
       (.I0(\FSM_sequential_stage_reg[1]_rep__2_n_0 ),
        .I1(stage__0[0]),
        .I2(obs_whole[24]),
        .I3(obs_active[24]),
        .I4(stage__0[2]),
        .O(\grown[24]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \grown[24]_i_4 
       (.I0(obs_whole[24]),
        .I1(obs_active[24]),
        .O(\grown[24]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'h00001000)) 
    \grown[24]_i_5 
       (.I0(\FSM_sequential_stage_reg[1]_rep__1_n_0 ),
        .I1(stage__0[0]),
        .I2(stage__0[2]),
        .I3(obs_grown[20]),
        .I4(\cid[24][2]_i_11_n_0 ),
        .O(\grown[24]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hF0F000D0F0F0D0D0)) 
    \grown[24]_i_6 
       (.I0(obs_grown[25]),
        .I1(\grown[24]_i_7_n_0 ),
        .I2(\grown[24]_i_8_n_0 ),
        .I3(obs_grown[28]),
        .I4(\grown[9]_i_5_n_0 ),
        .I5(\grown[24]_i_9_n_0 ),
        .O(\grown[24]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00EAFFFF)) 
    \grown[24]_i_7 
       (.I0(\cid[29][3]_i_3_n_0 ),
        .I1(\cid[24][5]_i_9_n_0 ),
        .I2(\cid[27][3]_i_3_n_0 ),
        .I3(obs_unrooted[24]),
        .I4(obs_growth[61]),
        .I5(obs_growth[60]),
        .O(\grown[24]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h5155555551555155)) 
    \grown[24]_i_8 
       (.I0(obs_grown[24]),
        .I1(\cid[24][5]_i_9_n_0 ),
        .I2(\grown[9]_i_5_n_0 ),
        .I3(obs_grown[23]),
        .I4(obs_unrooted[24]),
        .I5(\cid[27][3]_i_3_n_0 ),
        .O(\grown[24]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \grown[24]_i_9 
       (.I0(\cid[24][2]_i_8_n_0 ),
        .I1(obs_unrooted[24]),
        .I2(\cid[28][3]_i_2_n_0 ),
        .O(\grown[24]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hEEFEFFFFEECECCCC)) 
    \grown[25]_i_1 
       (.I0(\grown[25]_i_2_n_0 ),
        .I1(\grown[25]_i_3_n_0 ),
        .I2(\cid[29][3]_i_3_n_0 ),
        .I3(\grown[29]_i_4_n_0 ),
        .I4(\cid[25][5]_i_1_n_0 ),
        .I5(obs_grown[25]),
        .O(\grown[25]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000010001F1F1F1F)) 
    \grown[25]_i_2 
       (.I0(\FSM_sequential_stage_reg[1]_rep__2_n_0 ),
        .I1(stage__0[0]),
        .I2(stage__0[2]),
        .I3(obs_grown[21]),
        .I4(\grown[25]_i_4_n_0 ),
        .I5(\grown[25]_i_5_n_0 ),
        .O(\grown[25]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT5 #(
    .INIT(32'h40000000)) 
    \grown[25]_i_3 
       (.I0(\FSM_sequential_stage_reg[1]_rep__2_n_0 ),
        .I1(stage__0[0]),
        .I2(obs_whole[25]),
        .I3(obs_active[25]),
        .I4(stage__0[2]),
        .O(\grown[25]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h4F)) 
    \grown[25]_i_4 
       (.I0(obs_unrooted[25]),
        .I1(\cid[25][4]_i_2_n_0 ),
        .I2(\cid[25][5]_i_5_n_0 ),
        .O(\grown[25]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0F0F070007070)) 
    \grown[25]_i_5 
       (.I0(\grown[25]_i_6_n_0 ),
        .I1(obs_grown[7]),
        .I2(\grown[25]_i_7_n_0 ),
        .I3(\grown[25]_i_8_n_0 ),
        .I4(obs_grown[29]),
        .I5(\grown[9]_i_5_n_0 ),
        .O(\grown[25]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00F0000000F00070)) 
    \grown[25]_i_6 
       (.I0(\cid[25][5]_i_15_n_0 ),
        .I1(\cid[28][3]_i_4_n_0 ),
        .I2(obs_growth[63]),
        .I3(obs_growth[62]),
        .I4(obs_unrooted[25]),
        .I5(\cid[9][3]_i_3_n_0 ),
        .O(\grown[25]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h5155555551555155)) 
    \grown[25]_i_7 
       (.I0(obs_grown[25]),
        .I1(\cid[25][5]_i_15_n_0 ),
        .I2(\grown[9]_i_5_n_0 ),
        .I3(obs_grown[24]),
        .I4(obs_unrooted[25]),
        .I5(\cid[28][3]_i_4_n_0 ),
        .O(\grown[25]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'h4F)) 
    \grown[25]_i_8 
       (.I0(obs_unrooted[25]),
        .I1(\cid[29][5]_i_4_n_0 ),
        .I2(\cid[25][5]_i_8_n_0 ),
        .O(\grown[25]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hEFEEEFEFECEEECEC)) 
    \grown[26]_i_1 
       (.I0(\grown[26]_i_2_n_0 ),
        .I1(\grown[26]_i_3_n_0 ),
        .I2(\grown[29]_i_4_n_0 ),
        .I3(\cid[26][3]_i_2_n_0 ),
        .I4(\cid[25][5]_i_1_n_0 ),
        .I5(obs_grown[26]),
        .O(\grown[26]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000010001F1F1F1F)) 
    \grown[26]_i_2 
       (.I0(\FSM_sequential_stage_reg[1]_rep__2_n_0 ),
        .I1(stage__0[0]),
        .I2(stage__0[2]),
        .I3(obs_grown[22]),
        .I4(\grown[26]_i_4_n_0 ),
        .I5(\grown[26]_i_5_n_0 ),
        .O(\grown[26]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT5 #(
    .INIT(32'h40000000)) 
    \grown[26]_i_3 
       (.I0(\FSM_sequential_stage_reg[1]_rep__2_n_0 ),
        .I1(stage__0[0]),
        .I2(obs_whole[26]),
        .I3(obs_active[26]),
        .I4(stage__0[2]),
        .O(\grown[26]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair322" *) 
  LUT3 #(
    .INIT(8'h4F)) 
    \grown[26]_i_4 
       (.I0(obs_unrooted[26]),
        .I1(\cid[26][3]_i_4_n_0 ),
        .I2(\cid[26][5]_i_5_n_0 ),
        .O(\grown[26]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h5155555551555155)) 
    \grown[26]_i_5 
       (.I0(\grown[26]_i_6_n_0 ),
        .I1(obs_grown[27]),
        .I2(\grown[9]_i_5_n_0 ),
        .I3(\cid[26][5]_i_10_n_0 ),
        .I4(obs_unrooted[26]),
        .I5(\cid[27][5]_i_4_n_0 ),
        .O(\grown[26]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAEAAAAAAAEAAAEAA)) 
    \grown[26]_i_6 
       (.I0(obs_grown[26]),
        .I1(obs_grown[8]),
        .I2(\grown[9]_i_5_n_0 ),
        .I3(\ptr[8][1]_i_3_n_0 ),
        .I4(obs_unrooted[26]),
        .I5(\cid[8][5]_i_4_n_0 ),
        .O(\grown[26]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hABAAABABA8AAA8A8)) 
    \grown[27]_i_1 
       (.I0(\c_grown[27] ),
        .I1(\grown[27]_i_3_n_0 ),
        .I2(\grown[29]_i_4_n_0 ),
        .I3(\cid[27][5]_i_4_n_0 ),
        .I4(\cid[25][5]_i_1_n_0 ),
        .I5(obs_grown[27]),
        .O(\grown[27]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h55DF008055DF55DF)) 
    \grown[27]_i_2 
       (.I0(stage__0[2]),
        .I1(\grown[27]_i_4_n_0 ),
        .I2(stage__0[0]),
        .I3(\FSM_sequential_stage_reg[1]_rep__2_n_0 ),
        .I4(\grown[27]_i_5_n_0 ),
        .I5(\grown[27]_i_6_n_0 ),
        .O(\c_grown[27] ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT5 #(
    .INIT(32'h40000000)) 
    \grown[27]_i_3 
       (.I0(\FSM_sequential_stage_reg[1]_rep__2_n_0 ),
        .I1(stage__0[0]),
        .I2(obs_whole[27]),
        .I3(obs_active[27]),
        .I4(stage__0[2]),
        .O(\grown[27]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \grown[27]_i_4 
       (.I0(obs_whole[27]),
        .I1(obs_active[27]),
        .O(\grown[27]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAEAAAAAAAEAAAEAA)) 
    \grown[27]_i_5 
       (.I0(\grown[27]_i_7_n_0 ),
        .I1(obs_grown[28]),
        .I2(\grown[9]_i_5_n_0 ),
        .I3(\cid[27][2]_i_9_n_0 ),
        .I4(obs_unrooted[27]),
        .I5(\cid[28][3]_i_2_n_0 ),
        .O(\grown[27]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'hFF2FFFFF)) 
    \grown[27]_i_6 
       (.I0(\cid[27][3]_i_3_n_0 ),
        .I1(obs_unrooted[27]),
        .I2(\cid[27][2]_i_2_n_0 ),
        .I3(\grown[9]_i_5_n_0 ),
        .I4(obs_grown[23]),
        .O(\grown[27]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hBAAAAAAABAAABAAA)) 
    \grown[27]_i_7 
       (.I0(obs_grown[27]),
        .I1(\grown[9]_i_5_n_0 ),
        .I2(obs_grown[26]),
        .I3(\cid[26][5]_i_8_n_0 ),
        .I4(obs_unrooted[27]),
        .I5(\cid[26][3]_i_2_n_0 ),
        .O(\grown[27]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hABAAABABA8AAA8A8)) 
    \grown[28]_i_1 
       (.I0(\c_grown[28] ),
        .I1(\grown[28]_i_3_n_0 ),
        .I2(\grown[29]_i_4_n_0 ),
        .I3(\cid[28][3]_i_2_n_0 ),
        .I4(\cid[25][5]_i_1_n_0 ),
        .I5(obs_grown[28]),
        .O(\grown[28]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h55DF55DF55DF0080)) 
    \grown[28]_i_2 
       (.I0(stage__0[2]),
        .I1(\grown[28]_i_4_n_0 ),
        .I2(stage__0[0]),
        .I3(\FSM_sequential_stage_reg[1]_rep__2_n_0 ),
        .I4(\grown[28]_i_5_n_0 ),
        .I5(\grown[28]_i_6_n_0 ),
        .O(\c_grown[28] ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT5 #(
    .INIT(32'h40000000)) 
    \grown[28]_i_3 
       (.I0(\FSM_sequential_stage_reg[1]_rep__2_n_0 ),
        .I1(stage__0[0]),
        .I2(obs_whole[28]),
        .I3(obs_active[28]),
        .I4(stage__0[2]),
        .O(\grown[28]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \grown[28]_i_4 
       (.I0(obs_whole[28]),
        .I1(obs_active[28]),
        .O(\grown[28]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair142" *) 
  LUT5 #(
    .INIT(32'h00D00000)) 
    \grown[28]_i_5 
       (.I0(\cid[28][3]_i_4_n_0 ),
        .I1(obs_unrooted[28]),
        .I2(\cid[28][5]_i_5_n_0 ),
        .I3(\grown[9]_i_5_n_0 ),
        .I4(obs_grown[24]),
        .O(\grown[28]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFF0DFFFFFF0DFF0D)) 
    \grown[28]_i_6 
       (.I0(\cid[27][5]_i_4_n_0 ),
        .I1(obs_unrooted[28]),
        .I2(\grown[28]_i_7_n_0 ),
        .I3(obs_grown[28]),
        .I4(\grown[28]_i_8_n_0 ),
        .I5(\grown[28]_i_9_n_0 ),
        .O(\grown[28]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFBFFFFFFFFFFFF)) 
    \grown[28]_i_7 
       (.I0(obs_growth[72]),
        .I1(obs_growth[73]),
        .I2(\FSM_sequential_stage_reg[1]_rep__1_n_0 ),
        .I3(stage__0[0]),
        .I4(stage__0[2]),
        .I5(obs_grown[27]),
        .O(\grown[28]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0000BAAAFFFFFFFF)) 
    \grown[28]_i_8 
       (.I0(\cid[29][5]_i_4_n_0 ),
        .I1(obs_growth[72]),
        .I2(obs_growth[73]),
        .I3(\cid[27][5]_i_4_n_0 ),
        .I4(obs_unrooted[28]),
        .I5(\cid[28][5]_i_10_n_0 ),
        .O(\grown[28]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair158" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \grown[28]_i_9 
       (.I0(obs_grown[29]),
        .I1(stage__0[2]),
        .I2(stage__0[0]),
        .I3(\FSM_sequential_stage_reg[1]_rep__1_n_0 ),
        .O(\grown[28]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hEFEEEFEFECEEECEC)) 
    \grown[29]_i_1 
       (.I0(\grown[29]_i_2_n_0 ),
        .I1(\grown[29]_i_3_n_0 ),
        .I2(\grown[29]_i_4_n_0 ),
        .I3(\cid[29][5]_i_4_n_0 ),
        .I4(\cid[25][5]_i_1_n_0 ),
        .I5(obs_grown[29]),
        .O(\grown[29]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000010001F1F1F1F)) 
    \grown[29]_i_2 
       (.I0(\FSM_sequential_stage_reg[1]_rep__1_n_0 ),
        .I1(stage__0[0]),
        .I2(stage__0[2]),
        .I3(obs_grown[25]),
        .I4(\grown[29]_i_5_n_0 ),
        .I5(\grown[29]_i_6_n_0 ),
        .O(\grown[29]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT5 #(
    .INIT(32'h40000000)) 
    \grown[29]_i_3 
       (.I0(\FSM_sequential_stage_reg[1]_rep__2_n_0 ),
        .I1(stage__0[0]),
        .I2(obs_whole[29]),
        .I3(obs_active[29]),
        .I4(stage__0[2]),
        .O(\grown[29]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \grown[29]_i_4 
       (.I0(stage__0[0]),
        .I1(stage__0[2]),
        .I2(\FSM_sequential_stage_reg[1]_rep__2_n_0 ),
        .O(\grown[29]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT3 #(
    .INIT(8'h4F)) 
    \grown[29]_i_5 
       (.I0(obs_unrooted[29]),
        .I1(\cid[29][3]_i_3_n_0 ),
        .I2(\cid[29][1]_i_2_n_0 ),
        .O(\grown[29]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAAA2AAAAAAAAAAAA)) 
    \grown[29]_i_6 
       (.I0(\grown[29]_i_7_n_0 ),
        .I1(stage__0[2]),
        .I2(stage__0[0]),
        .I3(\FSM_sequential_stage_reg[1]_rep__1_n_0 ),
        .I4(obs_grown[9]),
        .I5(\grown[29]_i_8_n_0 ),
        .O(\grown[29]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h5155555551555155)) 
    \grown[29]_i_7 
       (.I0(obs_grown[29]),
        .I1(\cid[28][5]_i_10_n_0 ),
        .I2(\grown[9]_i_5_n_0 ),
        .I3(obs_grown[28]),
        .I4(obs_unrooted[29]),
        .I5(\cid[28][3]_i_2_n_0 ),
        .O(\grown[29]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h00F0000000F00070)) 
    \grown[29]_i_8 
       (.I0(\cid[28][5]_i_10_n_0 ),
        .I1(\cid[28][3]_i_2_n_0 ),
        .I2(obs_growth[79]),
        .I3(obs_growth[78]),
        .I4(obs_unrooted[29]),
        .I5(\cid[9][5]_i_4_n_0 ),
        .O(\grown[29]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hCCCFFFFFCECCCCCC)) 
    \grown[2]_i_1 
       (.I0(obs_grown[14]),
        .I1(\grown[2]_i_2_n_0 ),
        .I2(\FSM_sequential_stage_reg[1]_rep_n_0 ),
        .I3(\grown[2]_i_3_n_0 ),
        .I4(\grown[9]_i_4_n_0 ),
        .I5(obs_grown[2]),
        .O(\grown[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h40000000)) 
    \grown[2]_i_2 
       (.I0(\FSM_sequential_stage_reg[1]_rep_n_0 ),
        .I1(stage__0[0]),
        .I2(obs_whole[2]),
        .I3(obs_active[2]),
        .I4(stage__0[2]),
        .O(\grown[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000D00000)) 
    \grown[2]_i_3 
       (.I0(\cid[18][4]_i_2_n_0 ),
        .I1(obs_unrooted[2]),
        .I2(\grown[2]_i_4_n_0 ),
        .I3(obs_grown[2]),
        .I4(\ptr[2][1]_i_3_n_0 ),
        .I5(\cid[4][4]_i_2_n_0 ),
        .O(\grown[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair159" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \grown[2]_i_4 
       (.I0(obs_grown[14]),
        .I1(stage__0[2]),
        .I2(stage__0[0]),
        .I3(\FSM_sequential_stage_reg[1]_rep__4_n_0 ),
        .O(\grown[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hCCCFFFFFCECCCCCC)) 
    \grown[3]_i_1 
       (.I0(obs_grown[17]),
        .I1(\grown[3]_i_2_n_0 ),
        .I2(\FSM_sequential_stage_reg[1]_rep_n_0 ),
        .I3(\grown[3]_i_3_n_0 ),
        .I4(\grown[9]_i_4_n_0 ),
        .I5(obs_grown[3]),
        .O(\grown[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h40000000)) 
    \grown[3]_i_2 
       (.I0(\FSM_sequential_stage_reg[1]_rep_n_0 ),
        .I1(stage__0[0]),
        .I2(obs_whole[3]),
        .I3(obs_active[3]),
        .I4(stage__0[2]),
        .O(\grown[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0008000800000008)) 
    \grown[3]_i_3 
       (.I0(\active[3]_i_3_n_0 ),
        .I1(\grown[3]_i_4_n_0 ),
        .I2(obs_grown[3]),
        .I3(\cid[5][4]_i_2_n_0 ),
        .I4(\cid[21][4]_i_2_n_0 ),
        .I5(obs_unrooted[3]),
        .O(\grown[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair159" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \grown[3]_i_4 
       (.I0(obs_grown[17]),
        .I1(stage__0[2]),
        .I2(stage__0[0]),
        .I3(\FSM_sequential_stage_reg[1]_rep__4_n_0 ),
        .O(\grown[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hCCCFFFFFCECCCCCC)) 
    \grown[4]_i_1 
       (.I0(obs_grown[18]),
        .I1(\grown[4]_i_2_n_0 ),
        .I2(\FSM_sequential_stage_reg[1]_rep__4_n_0 ),
        .I3(\grown[4]_i_3_n_0 ),
        .I4(\grown[9]_i_4_n_0 ),
        .I5(obs_grown[4]),
        .O(\grown[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h40000000)) 
    \grown[4]_i_2 
       (.I0(\FSM_sequential_stage_reg[1]_rep__4_n_0 ),
        .I1(stage__0[0]),
        .I2(obs_whole[4]),
        .I3(obs_active[4]),
        .I4(stage__0[2]),
        .O(\grown[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000D00000)) 
    \grown[4]_i_3 
       (.I0(\cid[22][2]_i_3_n_0 ),
        .I1(obs_unrooted[4]),
        .I2(\grown[4]_i_4_n_0 ),
        .I3(obs_grown[4]),
        .I4(\ptr[4][1]_i_3_n_0 ),
        .I5(\cid[6][4]_i_2_n_0 ),
        .O(\grown[4]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \grown[4]_i_4 
       (.I0(obs_grown[18]),
        .I1(stage__0[2]),
        .I2(stage__0[0]),
        .I3(\FSM_sequential_stage_reg[1]_rep__4_n_0 ),
        .O(\grown[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hCCCFFFFFCECCCCCC)) 
    \grown[5]_i_1 
       (.I0(obs_grown[21]),
        .I1(\grown[5]_i_2_n_0 ),
        .I2(\FSM_sequential_stage_reg[1]_rep_n_0 ),
        .I3(\grown[5]_i_3_n_0 ),
        .I4(\grown[9]_i_4_n_0 ),
        .I5(obs_grown[5]),
        .O(\grown[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h40000000)) 
    \grown[5]_i_2 
       (.I0(\FSM_sequential_stage_reg[1]_rep_n_0 ),
        .I1(stage__0[0]),
        .I2(obs_whole[5]),
        .I3(obs_active[5]),
        .I4(stage__0[2]),
        .O(\grown[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000D00000)) 
    \grown[5]_i_3 
       (.I0(\cid[25][4]_i_2_n_0 ),
        .I1(obs_unrooted[5]),
        .I2(\grown[5]_i_4_n_0 ),
        .I3(obs_grown[5]),
        .I4(\ptr[5][0]_i_3_n_0 ),
        .I5(\cid[7][4]_i_2_n_0 ),
        .O(\grown[5]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair161" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \grown[5]_i_4 
       (.I0(obs_grown[21]),
        .I1(stage__0[2]),
        .I2(stage__0[0]),
        .I3(\FSM_sequential_stage_reg[1]_rep__4_n_0 ),
        .O(\grown[5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hCCCFFFFFCECCCCCC)) 
    \grown[6]_i_1 
       (.I0(obs_grown[22]),
        .I1(\grown[6]_i_2_n_0 ),
        .I2(\FSM_sequential_stage_reg[1]_rep_n_0 ),
        .I3(\grown[6]_i_3_n_0 ),
        .I4(\grown[9]_i_4_n_0 ),
        .I5(obs_grown[6]),
        .O(\grown[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h40000000)) 
    \grown[6]_i_2 
       (.I0(\FSM_sequential_stage_reg[1]_rep_n_0 ),
        .I1(stage__0[0]),
        .I2(obs_whole[6]),
        .I3(obs_active[6]),
        .I4(stage__0[2]),
        .O(\grown[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000D00000)) 
    \grown[6]_i_3 
       (.I0(\cid[26][3]_i_4_n_0 ),
        .I1(obs_unrooted[6]),
        .I2(\grown[6]_i_4_n_0 ),
        .I3(obs_grown[6]),
        .I4(\ptr[6][1]_i_3_n_0 ),
        .I5(\cid[8][3]_i_3_n_0 ),
        .O(\grown[6]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \grown[6]_i_4 
       (.I0(obs_grown[22]),
        .I1(stage__0[2]),
        .I2(stage__0[0]),
        .I3(\FSM_sequential_stage_reg[1]_rep__1_n_0 ),
        .O(\grown[6]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hCCCFFFFFCECCCCCC)) 
    \grown[7]_i_1 
       (.I0(obs_grown[25]),
        .I1(\grown[7]_i_2_n_0 ),
        .I2(\FSM_sequential_stage_reg[1]_rep_n_0 ),
        .I3(\grown[7]_i_3_n_0 ),
        .I4(\grown[9]_i_4_n_0 ),
        .I5(obs_grown[7]),
        .O(\grown[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h40000000)) 
    \grown[7]_i_2 
       (.I0(\FSM_sequential_stage_reg[1]_rep_n_0 ),
        .I1(stage__0[0]),
        .I2(obs_whole[7]),
        .I3(obs_active[7]),
        .I4(stage__0[2]),
        .O(\grown[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000D00000)) 
    \grown[7]_i_3 
       (.I0(\cid[29][3]_i_3_n_0 ),
        .I1(obs_unrooted[7]),
        .I2(\grown[7]_i_4_n_0 ),
        .I3(obs_grown[7]),
        .I4(\ptr[7][0]_i_3_n_0 ),
        .I5(\cid[9][3]_i_3_n_0 ),
        .O(\grown[7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \grown[7]_i_4 
       (.I0(obs_grown[25]),
        .I1(stage__0[2]),
        .I2(stage__0[0]),
        .I3(\FSM_sequential_stage_reg[1]_rep__1_n_0 ),
        .O(\grown[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hCCCFFFFFCECCCCCC)) 
    \grown[8]_i_1 
       (.I0(obs_grown[26]),
        .I1(\grown[8]_i_2_n_0 ),
        .I2(\FSM_sequential_stage_reg[1]_rep_n_0 ),
        .I3(\grown[8]_i_3_n_0 ),
        .I4(\grown[9]_i_4_n_0 ),
        .I5(obs_grown[8]),
        .O(\grown[8]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h40000000)) 
    \grown[8]_i_2 
       (.I0(\FSM_sequential_stage_reg[1]_rep_n_0 ),
        .I1(stage__0[0]),
        .I2(obs_whole[8]),
        .I3(obs_active[8]),
        .I4(stage__0[2]),
        .O(\grown[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000D00000)) 
    \grown[8]_i_3 
       (.I0(\cid[26][3]_i_2_n_0 ),
        .I1(obs_unrooted[8]),
        .I2(\grown[8]_i_4_n_0 ),
        .I3(obs_grown[8]),
        .I4(\ptr[8][1]_i_3_n_0 ),
        .I5(\cid[8][5]_i_4_n_0 ),
        .O(\grown[8]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair161" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \grown[8]_i_4 
       (.I0(obs_grown[26]),
        .I1(stage__0[2]),
        .I2(stage__0[0]),
        .I3(\FSM_sequential_stage_reg[1]_rep__4_n_0 ),
        .O(\grown[8]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hCCCFFFFFCECCCCCC)) 
    \grown[9]_i_1 
       (.I0(obs_grown[29]),
        .I1(\grown[9]_i_2_n_0 ),
        .I2(\FSM_sequential_stage_reg[1]_rep__4_n_0 ),
        .I3(\grown[9]_i_3_n_0 ),
        .I4(\grown[9]_i_4_n_0 ),
        .I5(obs_grown[9]),
        .O(\grown[9]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT5 #(
    .INIT(32'h40000000)) 
    \grown[9]_i_2 
       (.I0(\FSM_sequential_stage_reg[1]_rep__4_n_0 ),
        .I1(stage__0[0]),
        .I2(obs_whole[9]),
        .I3(obs_active[9]),
        .I4(stage__0[2]),
        .O(\grown[9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000D00)) 
    \grown[9]_i_3 
       (.I0(\cid[29][5]_i_4_n_0 ),
        .I1(obs_unrooted[9]),
        .I2(\grown[9]_i_5_n_0 ),
        .I3(obs_grown[29]),
        .I4(obs_grown[9]),
        .I5(\grown[9]_i_6_n_0 ),
        .O(\grown[9]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \grown[9]_i_4 
       (.I0(stage__0[2]),
        .I1(stage__0[0]),
        .O(\grown[9]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hEF)) 
    \grown[9]_i_5 
       (.I0(\FSM_sequential_stage_reg[1]_rep__1_n_0 ),
        .I1(stage__0[0]),
        .I2(stage__0[2]),
        .O(\grown[9]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    \grown[9]_i_6 
       (.I0(\cid[9][5]_i_4_n_0 ),
        .I1(obs_growth[78]),
        .I2(obs_growth[79]),
        .O(\grown[9]_i_6_n_0 ));
  FDRE \grown_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\grown[0]_i_1_n_0 ),
        .Q(obs_grown[0]),
        .R(reset));
  FDRE \grown_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\grown[10]_i_1_n_0 ),
        .Q(obs_grown[10]),
        .R(reset));
  FDRE \grown_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(\grown[11]_i_1_n_0 ),
        .Q(obs_grown[11]),
        .R(reset));
  FDRE \grown_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(\grown[12]_i_1_n_0 ),
        .Q(obs_grown[12]),
        .R(reset));
  FDRE \grown_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(\grown[13]_i_1_n_0 ),
        .Q(obs_grown[13]),
        .R(reset));
  FDRE \grown_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(\grown[14]_i_1_n_0 ),
        .Q(obs_grown[14]),
        .R(reset));
  FDRE \grown_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(\grown[15]_i_1_n_0 ),
        .Q(obs_grown[15]),
        .R(reset));
  FDRE \grown_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(\grown[16]_i_1_n_0 ),
        .Q(obs_grown[16]),
        .R(reset));
  FDRE \grown_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(\grown[17]_i_1_n_0 ),
        .Q(obs_grown[17]),
        .R(reset));
  FDRE \grown_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(\grown[18]_i_1_n_0 ),
        .Q(obs_grown[18]),
        .R(reset));
  FDRE \grown_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(\grown[19]_i_1_n_0 ),
        .Q(obs_grown[19]),
        .R(reset));
  FDRE \grown_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\grown[1]_i_1_n_0 ),
        .Q(obs_grown[1]),
        .R(reset));
  FDRE \grown_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .D(\grown[20]_i_1_n_0 ),
        .Q(obs_grown[20]),
        .R(reset));
  FDRE \grown_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .D(\grown[21]_i_1_n_0 ),
        .Q(obs_grown[21]),
        .R(reset));
  FDRE \grown_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .D(\grown[22]_i_1_n_0 ),
        .Q(obs_grown[22]),
        .R(reset));
  FDRE \grown_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .D(\grown[23]_i_1_n_0 ),
        .Q(obs_grown[23]),
        .R(reset));
  FDRE \grown_reg[24] 
       (.C(clk),
        .CE(1'b1),
        .D(\grown[24]_i_1_n_0 ),
        .Q(obs_grown[24]),
        .R(reset));
  FDRE \grown_reg[25] 
       (.C(clk),
        .CE(1'b1),
        .D(\grown[25]_i_1_n_0 ),
        .Q(obs_grown[25]),
        .R(reset));
  FDRE \grown_reg[26] 
       (.C(clk),
        .CE(1'b1),
        .D(\grown[26]_i_1_n_0 ),
        .Q(obs_grown[26]),
        .R(reset));
  FDRE \grown_reg[27] 
       (.C(clk),
        .CE(1'b1),
        .D(\grown[27]_i_1_n_0 ),
        .Q(obs_grown[27]),
        .R(reset));
  FDRE \grown_reg[28] 
       (.C(clk),
        .CE(1'b1),
        .D(\grown[28]_i_1_n_0 ),
        .Q(obs_grown[28]),
        .R(reset));
  FDRE \grown_reg[29] 
       (.C(clk),
        .CE(1'b1),
        .D(\grown[29]_i_1_n_0 ),
        .Q(obs_grown[29]),
        .R(reset));
  FDRE \grown_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\grown[2]_i_1_n_0 ),
        .Q(obs_grown[2]),
        .R(reset));
  FDRE \grown_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\grown[3]_i_1_n_0 ),
        .Q(obs_grown[3]),
        .R(reset));
  FDRE \grown_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\grown[4]_i_1_n_0 ),
        .Q(obs_grown[4]),
        .R(reset));
  FDRE \grown_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\grown[5]_i_1_n_0 ),
        .Q(obs_grown[5]),
        .R(reset));
  FDRE \grown_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\grown[6]_i_1_n_0 ),
        .Q(obs_grown[6]),
        .R(reset));
  FDRE \grown_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\grown[7]_i_1_n_0 ),
        .Q(obs_grown[7]),
        .R(reset));
  FDRE \grown_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\grown[8]_i_1_n_0 ),
        .Q(obs_grown[8]),
        .R(reset));
  FDRE \grown_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\grown[9]_i_1_n_0 ),
        .Q(obs_grown[9]),
        .R(reset));
  LUT6 #(
    .INIT(64'hFFFFFFFF00000114)) 
    \growth[0][0]_i_1 
       (.I0(stage__0[2]),
        .I1(\growth[0][1]_i_4_n_0 ),
        .I2(\growth[9][0]_i_2_n_0 ),
        .I3(obs_growth[0]),
        .I4(obs_growth[1]),
        .I5(\growth[0][0]_i_2_n_0 ),
        .O(c_growth[0]));
  LUT6 #(
    .INIT(64'h000000000000156A)) 
    \growth[0][0]_i_2 
       (.I0(obs_growth[0]),
        .I1(obs_active[0]),
        .I2(obs_whole[0]),
        .I3(\growth[0][0]_i_3_n_0 ),
        .I4(obs_growth[1]),
        .I5(\FSM_sequential_stage_reg[1]_rep__4_n_0 ),
        .O(\growth[0][0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \growth[0][0]_i_3 
       (.I0(obs_whole[10]),
        .I1(obs_active[10]),
        .O(\growth[0][0]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h3440)) 
    \growth[0][1]_i_1 
       (.I0(obs_growth[1]),
        .I1(stage__0[0]),
        .I2(stage__0[2]),
        .I3(\FSM_sequential_stage_reg[1]_rep__4_n_0 ),
        .O(growth));
  LUT6 #(
    .INIT(64'h00D500D500D5FFFF)) 
    \growth[0][1]_i_2 
       (.I0(\growth[0][1]_i_3_n_0 ),
        .I1(\growth[9][0]_i_2_n_0 ),
        .I2(\growth[0][1]_i_4_n_0 ),
        .I3(stage__0[2]),
        .I4(\growth[0][1]_i_5_n_0 ),
        .I5(\FSM_sequential_stage_reg[1]_rep__4_n_0 ),
        .O(c_growth[1]));
  LUT6 #(
    .INIT(64'h0000554555555555)) 
    \growth[0][1]_i_3 
       (.I0(obs_growth[1]),
        .I1(obs_grown[0]),
        .I2(obs_active[0]),
        .I3(obs_whole[0]),
        .I4(\growth[9][0]_i_2_n_0 ),
        .I5(obs_growth[0]),
        .O(\growth[0][1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair355" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \growth[0][1]_i_4 
       (.I0(obs_whole[0]),
        .I1(obs_active[0]),
        .I2(obs_grown[0]),
        .O(\growth[0][1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000157F7F7F)) 
    \growth[0][1]_i_5 
       (.I0(obs_growth[0]),
        .I1(obs_active[0]),
        .I2(obs_whole[0]),
        .I3(obs_active[10]),
        .I4(obs_whole[10]),
        .I5(obs_growth[1]),
        .O(\growth[0][1]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFAE)) 
    \growth[10][0]_i_1 
       (.I0(\growth[10][0]_i_2_n_0 ),
        .I1(obs_growth[10]),
        .I2(stage__0[0]),
        .I3(\growth[10][0]_i_3_n_0 ),
        .O(\growth[10][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT5 #(
    .INIT(32'h00000114)) 
    \growth[10][0]_i_2 
       (.I0(obs_growth[21]),
        .I1(\growth[11][1]_i_4_n_0 ),
        .I2(\growth[9][0]_i_3_n_0 ),
        .I3(obs_growth[20]),
        .I4(stage__0[2]),
        .O(\growth[10][0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000001111444)) 
    \growth[10][0]_i_3 
       (.I0(obs_growth[21]),
        .I1(\grown[15]_i_4_n_0 ),
        .I2(obs_whole[14]),
        .I3(obs_active[14]),
        .I4(obs_growth[20]),
        .I5(\FSM_sequential_stage_reg[1]_rep_n_0 ),
        .O(\growth[10][0]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h3440)) 
    \growth[10][1]_i_1 
       (.I0(obs_growth[21]),
        .I1(stage__0[0]),
        .I2(stage__0[2]),
        .I3(\FSM_sequential_stage_reg[1]_rep_n_0 ),
        .O(\growth[10][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h11F111F111F1FFFF)) 
    \growth[10][1]_i_2 
       (.I0(\growth[10][1]_i_3_n_0 ),
        .I1(stage__0[2]),
        .I2(obs_growth[11]),
        .I3(stage__0[0]),
        .I4(\FSM_sequential_stage_reg[1]_rep_n_0 ),
        .I5(\growth[10][1]_i_4_n_0 ),
        .O(\growth[10][1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000005545FFDF)) 
    \growth[10][1]_i_3 
       (.I0(obs_growth[20]),
        .I1(obs_grown[14]),
        .I2(obs_active[14]),
        .I3(obs_whole[14]),
        .I4(\growth[11][1]_i_4_n_0 ),
        .I5(obs_growth[21]),
        .O(\growth[10][1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000157F7F7F)) 
    \growth[10][1]_i_4 
       (.I0(obs_growth[20]),
        .I1(obs_active[14]),
        .I2(obs_whole[14]),
        .I3(obs_active[15]),
        .I4(obs_whole[15]),
        .I5(obs_growth[21]),
        .O(\growth[10][1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00000114)) 
    \growth[11][0]_i_1 
       (.I0(stage__0[2]),
        .I1(\growth[11][1]_i_5_n_0 ),
        .I2(\growth[11][1]_i_4_n_0 ),
        .I3(obs_growth[22]),
        .I4(obs_growth[23]),
        .I5(\growth[11][0]_i_2_n_0 ),
        .O(\growth[11][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000156A)) 
    \growth[11][0]_i_2 
       (.I0(obs_growth[22]),
        .I1(obs_active[11]),
        .I2(obs_whole[11]),
        .I3(\grown[15]_i_4_n_0 ),
        .I4(obs_growth[23]),
        .I5(\FSM_sequential_stage_reg[1]_rep__4_n_0 ),
        .O(\growth[11][0]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h3440)) 
    \growth[11][1]_i_1 
       (.I0(obs_growth[23]),
        .I1(stage__0[0]),
        .I2(stage__0[2]),
        .I3(\FSM_sequential_stage_reg[1]_rep__4_n_0 ),
        .O(\growth[11][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00D500D500D5FFFF)) 
    \growth[11][1]_i_2 
       (.I0(\growth[11][1]_i_3_n_0 ),
        .I1(\growth[11][1]_i_4_n_0 ),
        .I2(\growth[11][1]_i_5_n_0 ),
        .I3(stage__0[2]),
        .I4(\growth[11][1]_i_6_n_0 ),
        .I5(\FSM_sequential_stage_reg[1]_rep__4_n_0 ),
        .O(\growth[11][1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000554555555555)) 
    \growth[11][1]_i_3 
       (.I0(obs_growth[23]),
        .I1(obs_grown[11]),
        .I2(obs_active[11]),
        .I3(obs_whole[11]),
        .I4(\growth[11][1]_i_4_n_0 ),
        .I5(obs_growth[22]),
        .O(\growth[11][1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair295" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \growth[11][1]_i_4 
       (.I0(obs_whole[15]),
        .I1(obs_active[15]),
        .I2(obs_grown[15]),
        .O(\growth[11][1]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair337" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \growth[11][1]_i_5 
       (.I0(obs_whole[11]),
        .I1(obs_active[11]),
        .I2(obs_grown[11]),
        .O(\growth[11][1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00000000157F7F7F)) 
    \growth[11][1]_i_6 
       (.I0(obs_growth[22]),
        .I1(obs_active[11]),
        .I2(obs_whole[11]),
        .I3(obs_active[15]),
        .I4(obs_whole[15]),
        .I5(obs_growth[23]),
        .O(\growth[11][1]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair294" *) 
  LUT4 #(
    .INIT(16'hFFAE)) 
    \growth[12][0]_i_1 
       (.I0(\growth[12][0]_i_2_n_0 ),
        .I1(obs_growth[12]),
        .I2(stage__0[0]),
        .I3(\growth[12][0]_i_3_n_0 ),
        .O(\growth[12][0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000114)) 
    \growth[12][0]_i_2 
       (.I0(obs_growth[25]),
        .I1(\growth[13][1]_i_4_n_0 ),
        .I2(\growth[11][1]_i_4_n_0 ),
        .I3(obs_growth[24]),
        .I4(stage__0[2]),
        .O(\growth[12][0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000151540)) 
    \growth[12][0]_i_3 
       (.I0(obs_growth[25]),
        .I1(obs_whole[16]),
        .I2(obs_active[16]),
        .I3(\grown[15]_i_4_n_0 ),
        .I4(obs_growth[24]),
        .I5(\FSM_sequential_stage_reg[1]_rep_n_0 ),
        .O(\growth[12][0]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h3440)) 
    \growth[12][1]_i_1 
       (.I0(obs_growth[25]),
        .I1(stage__0[0]),
        .I2(stage__0[2]),
        .I3(\FSM_sequential_stage_reg[1]_rep_n_0 ),
        .O(\growth[12][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h11F111F111F1FFFF)) 
    \growth[12][1]_i_2 
       (.I0(\growth[12][1]_i_3_n_0 ),
        .I1(stage__0[2]),
        .I2(obs_growth[13]),
        .I3(stage__0[0]),
        .I4(\FSM_sequential_stage_reg[1]_rep_n_0 ),
        .I5(\growth[12][1]_i_4_n_0 ),
        .O(\growth[12][1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000005545FFDF)) 
    \growth[12][1]_i_3 
       (.I0(obs_growth[24]),
        .I1(obs_grown[15]),
        .I2(obs_active[15]),
        .I3(obs_whole[15]),
        .I4(\growth[13][1]_i_4_n_0 ),
        .I5(obs_growth[25]),
        .O(\growth[12][1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000157F7F7F)) 
    \growth[12][1]_i_4 
       (.I0(obs_growth[24]),
        .I1(obs_active[15]),
        .I2(obs_whole[15]),
        .I3(obs_active[16]),
        .I4(obs_whole[16]),
        .I5(obs_growth[25]),
        .O(\growth[12][1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00000114)) 
    \growth[13][0]_i_1 
       (.I0(stage__0[2]),
        .I1(\growth[13][1]_i_5_n_0 ),
        .I2(\growth[13][1]_i_4_n_0 ),
        .I3(obs_growth[26]),
        .I4(obs_growth[27]),
        .I5(\growth[13][0]_i_2_n_0 ),
        .O(\growth[13][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000156A)) 
    \growth[13][0]_i_2 
       (.I0(obs_growth[26]),
        .I1(obs_active[12]),
        .I2(obs_whole[12]),
        .I3(\growth[13][0]_i_3_n_0 ),
        .I4(obs_growth[27]),
        .I5(\FSM_sequential_stage_reg[1]_rep__4_n_0 ),
        .O(\growth[13][0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \growth[13][0]_i_3 
       (.I0(obs_whole[16]),
        .I1(obs_active[16]),
        .O(\growth[13][0]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h3440)) 
    \growth[13][1]_i_1 
       (.I0(obs_growth[27]),
        .I1(stage__0[0]),
        .I2(stage__0[2]),
        .I3(\FSM_sequential_stage_reg[1]_rep__4_n_0 ),
        .O(\growth[13][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00D500D500D5FFFF)) 
    \growth[13][1]_i_2 
       (.I0(\growth[13][1]_i_3_n_0 ),
        .I1(\growth[13][1]_i_4_n_0 ),
        .I2(\growth[13][1]_i_5_n_0 ),
        .I3(stage__0[2]),
        .I4(\growth[13][1]_i_6_n_0 ),
        .I5(\FSM_sequential_stage_reg[1]_rep__4_n_0 ),
        .O(\growth[13][1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000554555555555)) 
    \growth[13][1]_i_3 
       (.I0(obs_growth[27]),
        .I1(obs_grown[12]),
        .I2(obs_active[12]),
        .I3(obs_whole[12]),
        .I4(\growth[13][1]_i_4_n_0 ),
        .I5(obs_growth[26]),
        .O(\growth[13][1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair297" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \growth[13][1]_i_4 
       (.I0(obs_whole[16]),
        .I1(obs_active[16]),
        .I2(obs_grown[16]),
        .O(\growth[13][1]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair346" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \growth[13][1]_i_5 
       (.I0(obs_whole[12]),
        .I1(obs_active[12]),
        .I2(obs_grown[12]),
        .O(\growth[13][1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00000000157F7F7F)) 
    \growth[13][1]_i_6 
       (.I0(obs_growth[26]),
        .I1(obs_active[12]),
        .I2(obs_whole[12]),
        .I3(obs_active[16]),
        .I4(obs_whole[16]),
        .I5(obs_growth[27]),
        .O(\growth[13][1]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair296" *) 
  LUT4 #(
    .INIT(16'hFFAE)) 
    \growth[14][0]_i_1 
       (.I0(\growth[14][0]_i_2_n_0 ),
        .I1(obs_growth[14]),
        .I2(stage__0[0]),
        .I3(\growth[14][0]_i_3_n_0 ),
        .O(\growth[14][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT5 #(
    .INIT(32'h00000114)) 
    \growth[14][0]_i_2 
       (.I0(obs_growth[29]),
        .I1(\growth[16][0]_i_3_n_0 ),
        .I2(\growth[13][1]_i_4_n_0 ),
        .I3(obs_growth[28]),
        .I4(stage__0[2]),
        .O(\growth[14][0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000001111444)) 
    \growth[14][0]_i_3 
       (.I0(obs_growth[29]),
        .I1(\growth[16][0]_i_5_n_0 ),
        .I2(obs_whole[16]),
        .I3(obs_active[16]),
        .I4(obs_growth[28]),
        .I5(\FSM_sequential_stage_reg[1]_rep_n_0 ),
        .O(\growth[14][0]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h3440)) 
    \growth[14][1]_i_1 
       (.I0(obs_growth[29]),
        .I1(stage__0[0]),
        .I2(stage__0[2]),
        .I3(\FSM_sequential_stage_reg[1]_rep_n_0 ),
        .O(\growth[14][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h11F111F111F1FFFF)) 
    \growth[14][1]_i_2 
       (.I0(\growth[14][1]_i_3_n_0 ),
        .I1(stage__0[2]),
        .I2(obs_growth[15]),
        .I3(stage__0[0]),
        .I4(\FSM_sequential_stage_reg[1]_rep_n_0 ),
        .I5(\growth[14][1]_i_4_n_0 ),
        .O(\growth[14][1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000077777177)) 
    \growth[14][1]_i_3 
       (.I0(obs_growth[28]),
        .I1(\growth[13][1]_i_4_n_0 ),
        .I2(obs_grown[17]),
        .I3(obs_active[17]),
        .I4(obs_whole[17]),
        .I5(obs_growth[29]),
        .O(\growth[14][1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000157F7F7F)) 
    \growth[14][1]_i_4 
       (.I0(obs_growth[28]),
        .I1(obs_active[16]),
        .I2(obs_whole[16]),
        .I3(obs_active[17]),
        .I4(obs_whole[17]),
        .I5(obs_growth[29]),
        .O(\growth[14][1]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair281" *) 
  LUT4 #(
    .INIT(16'hFFAE)) 
    \growth[15][0]_i_1 
       (.I0(\growth[15][0]_i_2_n_0 ),
        .I1(obs_growth[16]),
        .I2(stage__0[0]),
        .I3(\growth[15][0]_i_3_n_0 ),
        .O(\growth[15][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT5 #(
    .INIT(32'h00000114)) 
    \growth[15][0]_i_2 
       (.I0(obs_growth[31]),
        .I1(\growth[15][0]_i_4_n_0 ),
        .I2(\growth[16][0]_i_3_n_0 ),
        .I3(obs_growth[30]),
        .I4(stage__0[2]),
        .O(\growth[15][0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000156A)) 
    \growth[15][0]_i_3 
       (.I0(obs_growth[30]),
        .I1(obs_active[3]),
        .I2(obs_whole[3]),
        .I3(\growth[16][0]_i_5_n_0 ),
        .I4(obs_growth[31]),
        .I5(\FSM_sequential_stage_reg[1]_rep_n_0 ),
        .O(\growth[15][0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair282" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \growth[15][0]_i_4 
       (.I0(obs_whole[3]),
        .I1(obs_active[3]),
        .I2(obs_grown[3]),
        .O(\growth[15][0]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h3440)) 
    \growth[15][1]_i_1 
       (.I0(obs_growth[31]),
        .I1(stage__0[0]),
        .I2(stage__0[2]),
        .I3(\FSM_sequential_stage_reg[1]_rep_n_0 ),
        .O(\growth[15][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h11F111F111F1FFFF)) 
    \growth[15][1]_i_2 
       (.I0(\growth[15][1]_i_3_n_0 ),
        .I1(stage__0[2]),
        .I2(obs_growth[17]),
        .I3(stage__0[0]),
        .I4(\FSM_sequential_stage_reg[1]_rep_n_0 ),
        .I5(\growth[15][1]_i_4_n_0 ),
        .O(\growth[15][1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000077777177)) 
    \growth[15][1]_i_3 
       (.I0(obs_growth[30]),
        .I1(\growth[16][0]_i_3_n_0 ),
        .I2(obs_whole[3]),
        .I3(obs_active[3]),
        .I4(obs_grown[3]),
        .I5(obs_growth[31]),
        .O(\growth[15][1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000157F7F7F)) 
    \growth[15][1]_i_4 
       (.I0(obs_growth[30]),
        .I1(obs_active[3]),
        .I2(obs_whole[3]),
        .I3(obs_active[17]),
        .I4(obs_whole[17]),
        .I5(obs_growth[31]),
        .O(\growth[15][1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00000114)) 
    \growth[16][0]_i_1 
       (.I0(stage__0[2]),
        .I1(obs_growth[32]),
        .I2(\growth[16][0]_i_2_n_0 ),
        .I3(\growth[16][0]_i_3_n_0 ),
        .I4(obs_growth[33]),
        .I5(\growth[16][0]_i_4_n_0 ),
        .O(\growth[16][0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \growth[16][0]_i_2 
       (.I0(obs_whole[13]),
        .I1(obs_active[13]),
        .I2(obs_grown[13]),
        .O(\growth[16][0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair298" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \growth[16][0]_i_3 
       (.I0(obs_whole[17]),
        .I1(obs_active[17]),
        .I2(obs_grown[17]),
        .O(\growth[16][0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000156A)) 
    \growth[16][0]_i_4 
       (.I0(obs_growth[32]),
        .I1(obs_active[13]),
        .I2(obs_whole[13]),
        .I3(\growth[16][0]_i_5_n_0 ),
        .I4(obs_growth[33]),
        .I5(\FSM_sequential_stage_reg[1]_rep__1_n_0 ),
        .O(\growth[16][0]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \growth[16][0]_i_5 
       (.I0(obs_whole[17]),
        .I1(obs_active[17]),
        .O(\growth[16][0]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h3440)) 
    \growth[16][1]_i_1 
       (.I0(obs_growth[33]),
        .I1(stage__0[0]),
        .I2(stage__0[2]),
        .I3(\FSM_sequential_stage_reg[1]_rep__1_n_0 ),
        .O(\growth[16][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair292" *) 
  LUT4 #(
    .INIT(16'h111F)) 
    \growth[16][1]_i_2 
       (.I0(\growth[16][1]_i_3_n_0 ),
        .I1(stage__0[2]),
        .I2(\growth[16][1]_i_4_n_0 ),
        .I3(\FSM_sequential_stage_reg[1]_rep__1_n_0 ),
        .O(\growth[16][1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000005545FFDF)) 
    \growth[16][1]_i_3 
       (.I0(obs_growth[32]),
        .I1(obs_grown[13]),
        .I2(obs_active[13]),
        .I3(obs_whole[13]),
        .I4(\growth[16][0]_i_3_n_0 ),
        .I5(obs_growth[33]),
        .O(\growth[16][1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000157F7F7F)) 
    \growth[16][1]_i_4 
       (.I0(obs_growth[32]),
        .I1(obs_active[13]),
        .I2(obs_whole[13]),
        .I3(obs_active[17]),
        .I4(obs_whole[17]),
        .I5(obs_growth[33]),
        .O(\growth[16][1]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFAE)) 
    \growth[17][0]_i_1 
       (.I0(\growth[17][0]_i_2_n_0 ),
        .I1(obs_growth[18]),
        .I2(stage__0[0]),
        .I3(\growth[17][0]_i_3_n_0 ),
        .O(\growth[17][0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000114)) 
    \growth[17][0]_i_2 
       (.I0(obs_growth[35]),
        .I1(\growth[25][0]_i_4_n_0 ),
        .I2(\growth[9][0]_i_3_n_0 ),
        .I3(obs_growth[34]),
        .I4(stage__0[2]),
        .O(\growth[17][0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000001111444)) 
    \growth[17][0]_i_3 
       (.I0(obs_growth[35]),
        .I1(\growth[25][0]_i_5_n_0 ),
        .I2(obs_whole[14]),
        .I3(obs_active[14]),
        .I4(obs_growth[34]),
        .I5(\FSM_sequential_stage_reg[1]_rep_n_0 ),
        .O(\growth[17][0]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h3440)) 
    \growth[17][1]_i_1 
       (.I0(obs_growth[35]),
        .I1(stage__0[0]),
        .I2(stage__0[2]),
        .I3(\FSM_sequential_stage_reg[1]_rep_n_0 ),
        .O(\growth[17][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h11F111F111F1FFFF)) 
    \growth[17][1]_i_2 
       (.I0(\growth[17][1]_i_3_n_0 ),
        .I1(stage__0[2]),
        .I2(obs_growth[19]),
        .I3(stage__0[0]),
        .I4(\FSM_sequential_stage_reg[1]_rep_n_0 ),
        .I5(\growth[17][1]_i_4_n_0 ),
        .O(\growth[17][1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000005545FFDF)) 
    \growth[17][1]_i_3 
       (.I0(obs_growth[34]),
        .I1(obs_grown[14]),
        .I2(obs_active[14]),
        .I3(obs_whole[14]),
        .I4(\growth[25][0]_i_4_n_0 ),
        .I5(obs_growth[35]),
        .O(\growth[17][1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000157F7F7F)) 
    \growth[17][1]_i_4 
       (.I0(obs_growth[34]),
        .I1(obs_active[14]),
        .I2(obs_whole[14]),
        .I3(obs_active[18]),
        .I4(obs_whole[18]),
        .I5(obs_growth[35]),
        .O(\growth[17][1]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFAE)) 
    \growth[18][0]_i_1 
       (.I0(\growth[18][0]_i_2_n_0 ),
        .I1(obs_growth[20]),
        .I2(stage__0[0]),
        .I3(\growth[18][0]_i_3_n_0 ),
        .O(\growth[18][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT5 #(
    .INIT(32'h00000114)) 
    \growth[18][0]_i_2 
       (.I0(obs_growth[37]),
        .I1(\growth[27][0]_i_4_n_0 ),
        .I2(\growth[25][0]_i_4_n_0 ),
        .I3(obs_growth[36]),
        .I4(stage__0[2]),
        .O(\growth[18][0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000151540)) 
    \growth[18][0]_i_3 
       (.I0(obs_growth[37]),
        .I1(obs_whole[19]),
        .I2(obs_active[19]),
        .I3(\growth[25][0]_i_5_n_0 ),
        .I4(obs_growth[36]),
        .I5(\FSM_sequential_stage_reg[1]_rep_n_0 ),
        .O(\growth[18][0]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h3440)) 
    \growth[18][1]_i_1 
       (.I0(obs_growth[37]),
        .I1(stage__0[0]),
        .I2(stage__0[2]),
        .I3(\FSM_sequential_stage_reg[1]_rep_n_0 ),
        .O(\growth[18][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h11F111F111F1FFFF)) 
    \growth[18][1]_i_2 
       (.I0(\growth[18][1]_i_3_n_0 ),
        .I1(stage__0[2]),
        .I2(obs_growth[21]),
        .I3(stage__0[0]),
        .I4(\FSM_sequential_stage_reg[1]_rep_n_0 ),
        .I5(\growth[18][1]_i_4_n_0 ),
        .O(\growth[18][1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000005545FFDF)) 
    \growth[18][1]_i_3 
       (.I0(obs_growth[36]),
        .I1(obs_grown[18]),
        .I2(obs_active[18]),
        .I3(obs_whole[18]),
        .I4(\growth[27][0]_i_4_n_0 ),
        .I5(obs_growth[37]),
        .O(\growth[18][1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000157F7F7F)) 
    \growth[18][1]_i_4 
       (.I0(obs_growth[36]),
        .I1(obs_active[18]),
        .I2(obs_whole[18]),
        .I3(obs_active[19]),
        .I4(obs_whole[19]),
        .I5(obs_growth[37]),
        .O(\growth[18][1]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFAE)) 
    \growth[19][0]_i_1 
       (.I0(\growth[19][0]_i_2_n_0 ),
        .I1(obs_growth[22]),
        .I2(stage__0[0]),
        .I3(\growth[19][0]_i_3_n_0 ),
        .O(\growth[19][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT5 #(
    .INIT(32'h00000114)) 
    \growth[19][0]_i_2 
       (.I0(obs_growth[39]),
        .I1(\growth[11][1]_i_4_n_0 ),
        .I2(\growth[27][0]_i_4_n_0 ),
        .I3(obs_growth[38]),
        .I4(stage__0[2]),
        .O(\growth[19][0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000001666)) 
    \growth[19][0]_i_3 
       (.I0(obs_growth[38]),
        .I1(\grown[15]_i_4_n_0 ),
        .I2(obs_active[19]),
        .I3(obs_whole[19]),
        .I4(obs_growth[39]),
        .I5(\FSM_sequential_stage_reg[1]_rep_n_0 ),
        .O(\growth[19][0]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h3440)) 
    \growth[19][1]_i_1 
       (.I0(obs_growth[39]),
        .I1(stage__0[0]),
        .I2(stage__0[2]),
        .I3(\FSM_sequential_stage_reg[1]_rep_n_0 ),
        .O(\growth[19][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h11F111F111F1FFFF)) 
    \growth[19][1]_i_2 
       (.I0(\growth[19][1]_i_3_n_0 ),
        .I1(stage__0[2]),
        .I2(obs_growth[23]),
        .I3(stage__0[0]),
        .I4(\FSM_sequential_stage_reg[1]_rep_n_0 ),
        .I5(\growth[19][1]_i_4_n_0 ),
        .O(\growth[19][1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000077777177)) 
    \growth[19][1]_i_3 
       (.I0(obs_growth[38]),
        .I1(\growth[27][0]_i_4_n_0 ),
        .I2(obs_whole[15]),
        .I3(obs_active[15]),
        .I4(obs_grown[15]),
        .I5(obs_growth[39]),
        .O(\growth[19][1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000157F7F7F)) 
    \growth[19][1]_i_4 
       (.I0(obs_growth[38]),
        .I1(obs_active[15]),
        .I2(obs_whole[15]),
        .I3(obs_active[19]),
        .I4(obs_whole[19]),
        .I5(obs_growth[39]),
        .O(\growth[19][1]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair279" *) 
  LUT4 #(
    .INIT(16'hFFAE)) 
    \growth[1][0]_i_1 
       (.I0(\growth[1][0]_i_2_n_0 ),
        .I1(obs_growth[0]),
        .I2(stage__0[0]),
        .I3(\growth[1][0]_i_3_n_0 ),
        .O(\growth[1][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT5 #(
    .INIT(32'h00000114)) 
    \growth[1][0]_i_2 
       (.I0(obs_growth[3]),
        .I1(\growth[1][0]_i_4_n_0 ),
        .I2(\growth[9][0]_i_3_n_0 ),
        .I3(obs_growth[2]),
        .I4(stage__0[2]),
        .O(\growth[1][0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000156A)) 
    \growth[1][0]_i_3 
       (.I0(obs_growth[2]),
        .I1(obs_active[2]),
        .I2(obs_whole[2]),
        .I3(\growth[9][0]_i_5_n_0 ),
        .I4(obs_growth[3]),
        .I5(\FSM_sequential_stage_reg[1]_rep_n_0 ),
        .O(\growth[1][0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair280" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \growth[1][0]_i_4 
       (.I0(obs_whole[2]),
        .I1(obs_active[2]),
        .I2(obs_grown[2]),
        .O(\growth[1][0]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h3440)) 
    \growth[1][1]_i_1 
       (.I0(obs_growth[3]),
        .I1(stage__0[0]),
        .I2(stage__0[2]),
        .I3(\FSM_sequential_stage_reg[1]_rep_n_0 ),
        .O(\growth[1][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h11F111F111F1FFFF)) 
    \growth[1][1]_i_2 
       (.I0(\growth[1][1]_i_3_n_0 ),
        .I1(stage__0[2]),
        .I2(obs_growth[1]),
        .I3(stage__0[0]),
        .I4(\FSM_sequential_stage_reg[1]_rep_n_0 ),
        .I5(\growth[1][1]_i_4_n_0 ),
        .O(\growth[1][1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000077777177)) 
    \growth[1][1]_i_3 
       (.I0(obs_growth[2]),
        .I1(\growth[9][0]_i_3_n_0 ),
        .I2(obs_whole[2]),
        .I3(obs_active[2]),
        .I4(obs_grown[2]),
        .I5(obs_growth[3]),
        .O(\growth[1][1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000157F7F7F)) 
    \growth[1][1]_i_4 
       (.I0(obs_growth[2]),
        .I1(obs_active[2]),
        .I2(obs_whole[2]),
        .I3(obs_active[14]),
        .I4(obs_whole[14]),
        .I5(obs_growth[3]),
        .O(\growth[1][1]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFAE)) 
    \growth[20][0]_i_1 
       (.I0(\growth[20][0]_i_2_n_0 ),
        .I1(obs_growth[24]),
        .I2(stage__0[0]),
        .I3(\growth[20][0]_i_3_n_0 ),
        .O(\growth[20][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT5 #(
    .INIT(32'h00000114)) 
    \growth[20][0]_i_2 
       (.I0(obs_growth[41]),
        .I1(\growth[29][0]_i_4_n_0 ),
        .I2(\growth[27][0]_i_4_n_0 ),
        .I3(obs_growth[40]),
        .I4(stage__0[2]),
        .O(\growth[20][0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000001111444)) 
    \growth[20][0]_i_3 
       (.I0(obs_growth[41]),
        .I1(\growth[21][0]_i_4_n_0 ),
        .I2(obs_whole[19]),
        .I3(obs_active[19]),
        .I4(obs_growth[40]),
        .I5(\FSM_sequential_stage_reg[1]_rep_n_0 ),
        .O(\growth[20][0]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h3440)) 
    \growth[20][1]_i_1 
       (.I0(obs_growth[41]),
        .I1(stage__0[0]),
        .I2(stage__0[2]),
        .I3(\FSM_sequential_stage_reg[1]_rep_n_0 ),
        .O(\growth[20][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h11F111F111F1FFFF)) 
    \growth[20][1]_i_2 
       (.I0(\growth[20][1]_i_3_n_0 ),
        .I1(stage__0[2]),
        .I2(obs_growth[25]),
        .I3(stage__0[0]),
        .I4(\FSM_sequential_stage_reg[1]_rep_n_0 ),
        .I5(\growth[20][1]_i_4_n_0 ),
        .O(\growth[20][1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000005545FFDF)) 
    \growth[20][1]_i_3 
       (.I0(obs_growth[40]),
        .I1(obs_grown[19]),
        .I2(obs_active[19]),
        .I3(obs_whole[19]),
        .I4(\growth[29][0]_i_4_n_0 ),
        .I5(obs_growth[41]),
        .O(\growth[20][1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000157F7F7F)) 
    \growth[20][1]_i_4 
       (.I0(obs_growth[40]),
        .I1(obs_active[19]),
        .I2(obs_whole[19]),
        .I3(obs_active[20]),
        .I4(obs_whole[20]),
        .I5(obs_growth[41]),
        .O(\growth[20][1]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFAE)) 
    \growth[21][0]_i_1 
       (.I0(\growth[21][0]_i_2_n_0 ),
        .I1(obs_growth[26]),
        .I2(stage__0[0]),
        .I3(\growth[21][0]_i_3_n_0 ),
        .O(\growth[21][0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000114)) 
    \growth[21][0]_i_2 
       (.I0(obs_growth[43]),
        .I1(\growth[13][1]_i_4_n_0 ),
        .I2(\growth[29][0]_i_4_n_0 ),
        .I3(obs_growth[42]),
        .I4(stage__0[2]),
        .O(\growth[21][0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000156A)) 
    \growth[21][0]_i_3 
       (.I0(obs_growth[42]),
        .I1(obs_active[16]),
        .I2(obs_whole[16]),
        .I3(\growth[21][0]_i_4_n_0 ),
        .I4(obs_growth[43]),
        .I5(\FSM_sequential_stage_reg[1]_rep_n_0 ),
        .O(\growth[21][0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \growth[21][0]_i_4 
       (.I0(obs_whole[20]),
        .I1(obs_active[20]),
        .O(\growth[21][0]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h3440)) 
    \growth[21][1]_i_1 
       (.I0(obs_growth[43]),
        .I1(stage__0[0]),
        .I2(stage__0[2]),
        .I3(\FSM_sequential_stage_reg[1]_rep_n_0 ),
        .O(\growth[21][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h11F111F111F1FFFF)) 
    \growth[21][1]_i_2 
       (.I0(\growth[21][1]_i_3_n_0 ),
        .I1(stage__0[2]),
        .I2(obs_growth[27]),
        .I3(stage__0[0]),
        .I4(\FSM_sequential_stage_reg[1]_rep_n_0 ),
        .I5(\growth[21][1]_i_4_n_0 ),
        .O(\growth[21][1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000077777177)) 
    \growth[21][1]_i_3 
       (.I0(obs_growth[42]),
        .I1(\growth[29][0]_i_4_n_0 ),
        .I2(obs_whole[16]),
        .I3(obs_active[16]),
        .I4(obs_grown[16]),
        .I5(obs_growth[43]),
        .O(\growth[21][1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000157F7F7F)) 
    \growth[21][1]_i_4 
       (.I0(obs_growth[42]),
        .I1(obs_active[16]),
        .I2(obs_whole[16]),
        .I3(obs_active[20]),
        .I4(obs_whole[20]),
        .I5(obs_growth[43]),
        .O(\growth[21][1]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFAE)) 
    \growth[22][0]_i_1 
       (.I0(\growth[22][0]_i_2_n_0 ),
        .I1(obs_growth[28]),
        .I2(stage__0[0]),
        .I3(\growth[22][0]_i_3_n_0 ),
        .O(\growth[22][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT5 #(
    .INIT(32'h00000114)) 
    \growth[22][0]_i_2 
       (.I0(obs_growth[45]),
        .I1(\growth[32][0]_i_4_n_0 ),
        .I2(\growth[29][0]_i_4_n_0 ),
        .I3(obs_growth[44]),
        .I4(stage__0[2]),
        .O(\growth[22][0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000001111444)) 
    \growth[22][0]_i_3 
       (.I0(obs_growth[45]),
        .I1(\growth[24][0]_i_4_n_0 ),
        .I2(obs_whole[20]),
        .I3(obs_active[20]),
        .I4(obs_growth[44]),
        .I5(\FSM_sequential_stage_reg[1]_rep_n_0 ),
        .O(\growth[22][0]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h3440)) 
    \growth[22][1]_i_1 
       (.I0(obs_growth[45]),
        .I1(stage__0[0]),
        .I2(stage__0[2]),
        .I3(\FSM_sequential_stage_reg[1]_rep_n_0 ),
        .O(\growth[22][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h11F111F111F1FFFF)) 
    \growth[22][1]_i_2 
       (.I0(\growth[22][1]_i_3_n_0 ),
        .I1(stage__0[2]),
        .I2(obs_growth[29]),
        .I3(stage__0[0]),
        .I4(\FSM_sequential_stage_reg[1]_rep_n_0 ),
        .I5(\growth[22][1]_i_4_n_0 ),
        .O(\growth[22][1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000077777177)) 
    \growth[22][1]_i_3 
       (.I0(obs_growth[44]),
        .I1(\growth[29][0]_i_4_n_0 ),
        .I2(obs_grown[21]),
        .I3(obs_active[21]),
        .I4(obs_whole[21]),
        .I5(obs_growth[45]),
        .O(\growth[22][1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000157F7F7F)) 
    \growth[22][1]_i_4 
       (.I0(obs_growth[44]),
        .I1(obs_active[20]),
        .I2(obs_whole[20]),
        .I3(obs_active[21]),
        .I4(obs_whole[21]),
        .I5(obs_growth[45]),
        .O(\growth[22][1]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFAE)) 
    \growth[23][0]_i_1 
       (.I0(\growth[23][0]_i_2_n_0 ),
        .I1(obs_growth[30]),
        .I2(stage__0[0]),
        .I3(\growth[23][0]_i_3_n_0 ),
        .O(\growth[23][0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000114)) 
    \growth[23][0]_i_2 
       (.I0(obs_growth[47]),
        .I1(\growth[23][0]_i_4_n_0 ),
        .I2(\growth[32][0]_i_4_n_0 ),
        .I3(obs_growth[46]),
        .I4(stage__0[2]),
        .O(\growth[23][0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000156A)) 
    \growth[23][0]_i_3 
       (.I0(obs_growth[46]),
        .I1(obs_active[5]),
        .I2(obs_whole[5]),
        .I3(\growth[24][0]_i_4_n_0 ),
        .I4(obs_growth[47]),
        .I5(\FSM_sequential_stage_reg[1]_rep_n_0 ),
        .O(\growth[23][0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair284" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \growth[23][0]_i_4 
       (.I0(obs_whole[5]),
        .I1(obs_active[5]),
        .I2(obs_grown[5]),
        .O(\growth[23][0]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h3440)) 
    \growth[23][1]_i_1 
       (.I0(obs_growth[47]),
        .I1(stage__0[0]),
        .I2(stage__0[2]),
        .I3(\FSM_sequential_stage_reg[1]_rep_n_0 ),
        .O(\growth[23][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h11F111F111F1FFFF)) 
    \growth[23][1]_i_2 
       (.I0(\growth[23][1]_i_3_n_0 ),
        .I1(stage__0[2]),
        .I2(obs_growth[31]),
        .I3(stage__0[0]),
        .I4(\FSM_sequential_stage_reg[1]_rep_n_0 ),
        .I5(\growth[23][1]_i_4_n_0 ),
        .O(\growth[23][1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000077777177)) 
    \growth[23][1]_i_3 
       (.I0(obs_growth[46]),
        .I1(\growth[32][0]_i_4_n_0 ),
        .I2(obs_whole[5]),
        .I3(obs_active[5]),
        .I4(obs_grown[5]),
        .I5(obs_growth[47]),
        .O(\growth[23][1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000157F7F7F)) 
    \growth[23][1]_i_4 
       (.I0(obs_growth[46]),
        .I1(obs_active[5]),
        .I2(obs_whole[5]),
        .I3(obs_active[21]),
        .I4(obs_whole[21]),
        .I5(obs_growth[47]),
        .O(\growth[23][1]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFAE)) 
    \growth[24][0]_i_1 
       (.I0(\growth[24][0]_i_2_n_0 ),
        .I1(obs_growth[32]),
        .I2(stage__0[0]),
        .I3(\growth[24][0]_i_3_n_0 ),
        .O(\growth[24][0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000114)) 
    \growth[24][0]_i_2 
       (.I0(obs_growth[49]),
        .I1(\growth[32][0]_i_4_n_0 ),
        .I2(\growth[16][0]_i_3_n_0 ),
        .I3(obs_growth[48]),
        .I4(stage__0[2]),
        .O(\growth[24][0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000001111444)) 
    \growth[24][0]_i_3 
       (.I0(obs_growth[49]),
        .I1(\growth[24][0]_i_4_n_0 ),
        .I2(obs_whole[17]),
        .I3(obs_active[17]),
        .I4(obs_growth[48]),
        .I5(\FSM_sequential_stage_reg[1]_rep_n_0 ),
        .O(\growth[24][0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \growth[24][0]_i_4 
       (.I0(obs_whole[21]),
        .I1(obs_active[21]),
        .O(\growth[24][0]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h3440)) 
    \growth[24][1]_i_1 
       (.I0(obs_growth[49]),
        .I1(stage__0[0]),
        .I2(stage__0[2]),
        .I3(\FSM_sequential_stage_reg[1]_rep_n_0 ),
        .O(\growth[24][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h11F111F111F1FFFF)) 
    \growth[24][1]_i_2 
       (.I0(\growth[24][1]_i_3_n_0 ),
        .I1(stage__0[2]),
        .I2(obs_growth[33]),
        .I3(stage__0[0]),
        .I4(\FSM_sequential_stage_reg[1]_rep_n_0 ),
        .I5(\growth[24][1]_i_4_n_0 ),
        .O(\growth[24][1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000005545FFDF)) 
    \growth[24][1]_i_3 
       (.I0(obs_growth[48]),
        .I1(obs_grown[17]),
        .I2(obs_active[17]),
        .I3(obs_whole[17]),
        .I4(\growth[32][0]_i_4_n_0 ),
        .I5(obs_growth[49]),
        .O(\growth[24][1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000157F7F7F)) 
    \growth[24][1]_i_4 
       (.I0(obs_growth[48]),
        .I1(obs_active[17]),
        .I2(obs_whole[17]),
        .I3(obs_active[21]),
        .I4(obs_whole[21]),
        .I5(obs_growth[49]),
        .O(\growth[24][1]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFAE)) 
    \growth[25][0]_i_1 
       (.I0(\growth[25][0]_i_2_n_0 ),
        .I1(obs_growth[34]),
        .I2(stage__0[0]),
        .I3(\growth[25][0]_i_3_n_0 ),
        .O(\growth[25][0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000114)) 
    \growth[25][0]_i_2 
       (.I0(obs_growth[51]),
        .I1(\growth[33][1]_i_5_n_0 ),
        .I2(\growth[25][0]_i_4_n_0 ),
        .I3(obs_growth[50]),
        .I4(stage__0[2]),
        .O(\growth[25][0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000151540)) 
    \growth[25][0]_i_3 
       (.I0(obs_growth[51]),
        .I1(obs_whole[22]),
        .I2(obs_active[22]),
        .I3(\growth[25][0]_i_5_n_0 ),
        .I4(obs_growth[50]),
        .I5(\FSM_sequential_stage_reg[1]_rep_n_0 ),
        .O(\growth[25][0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair299" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \growth[25][0]_i_4 
       (.I0(obs_whole[18]),
        .I1(obs_active[18]),
        .I2(obs_grown[18]),
        .O(\growth[25][0]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \growth[25][0]_i_5 
       (.I0(obs_whole[18]),
        .I1(obs_active[18]),
        .O(\growth[25][0]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h3440)) 
    \growth[25][1]_i_1 
       (.I0(obs_growth[51]),
        .I1(stage__0[0]),
        .I2(stage__0[2]),
        .I3(\FSM_sequential_stage_reg[1]_rep_n_0 ),
        .O(\growth[25][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h11F111F111F1FFFF)) 
    \growth[25][1]_i_2 
       (.I0(\growth[25][1]_i_3_n_0 ),
        .I1(stage__0[2]),
        .I2(obs_growth[35]),
        .I3(stage__0[0]),
        .I4(\FSM_sequential_stage_reg[1]_rep_n_0 ),
        .I5(\growth[25][1]_i_4_n_0 ),
        .O(\growth[25][1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000005545FFDF)) 
    \growth[25][1]_i_3 
       (.I0(obs_growth[50]),
        .I1(obs_grown[18]),
        .I2(obs_active[18]),
        .I3(obs_whole[18]),
        .I4(\growth[33][1]_i_5_n_0 ),
        .I5(obs_growth[51]),
        .O(\growth[25][1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000157F7F7F)) 
    \growth[25][1]_i_4 
       (.I0(obs_growth[50]),
        .I1(obs_active[18]),
        .I2(obs_whole[18]),
        .I3(obs_active[22]),
        .I4(obs_whole[22]),
        .I5(obs_growth[51]),
        .O(\growth[25][1]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFAE)) 
    \growth[26][0]_i_1 
       (.I0(\growth[26][0]_i_2_n_0 ),
        .I1(obs_growth[36]),
        .I2(stage__0[0]),
        .I3(\growth[26][0]_i_3_n_0 ),
        .O(\growth[26][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT5 #(
    .INIT(32'h00000114)) 
    \growth[26][0]_i_2 
       (.I0(obs_growth[53]),
        .I1(\growth[35][1]_i_5_n_0 ),
        .I2(\growth[33][1]_i_5_n_0 ),
        .I3(obs_growth[52]),
        .I4(stage__0[2]),
        .O(\growth[26][0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000001111444)) 
    \growth[26][0]_i_3 
       (.I0(obs_growth[53]),
        .I1(\grown[23]_i_4_n_0 ),
        .I2(obs_whole[22]),
        .I3(obs_active[22]),
        .I4(obs_growth[52]),
        .I5(\FSM_sequential_stage_reg[1]_rep__0_n_0 ),
        .O(\growth[26][0]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h3440)) 
    \growth[26][1]_i_1 
       (.I0(obs_growth[53]),
        .I1(stage__0[0]),
        .I2(stage__0[2]),
        .I3(\FSM_sequential_stage_reg[1]_rep__0_n_0 ),
        .O(\growth[26][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h11F111F111F1FFFF)) 
    \growth[26][1]_i_2 
       (.I0(\growth[26][1]_i_3_n_0 ),
        .I1(stage__0[2]),
        .I2(obs_growth[37]),
        .I3(stage__0[0]),
        .I4(\FSM_sequential_stage_reg[1]_rep__0_n_0 ),
        .I5(\growth[26][1]_i_4_n_0 ),
        .O(\growth[26][1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000005545FFDF)) 
    \growth[26][1]_i_3 
       (.I0(obs_growth[52]),
        .I1(obs_grown[22]),
        .I2(obs_active[22]),
        .I3(obs_whole[22]),
        .I4(\growth[35][1]_i_5_n_0 ),
        .I5(obs_growth[53]),
        .O(\growth[26][1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000157F7F7F)) 
    \growth[26][1]_i_4 
       (.I0(obs_growth[52]),
        .I1(obs_active[22]),
        .I2(obs_whole[22]),
        .I3(obs_active[23]),
        .I4(obs_whole[23]),
        .I5(obs_growth[53]),
        .O(\growth[26][1]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFAE)) 
    \growth[27][0]_i_1 
       (.I0(\growth[27][0]_i_2_n_0 ),
        .I1(obs_growth[38]),
        .I2(stage__0[0]),
        .I3(\growth[27][0]_i_3_n_0 ),
        .O(\growth[27][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT5 #(
    .INIT(32'h00000114)) 
    \growth[27][0]_i_2 
       (.I0(obs_growth[55]),
        .I1(\growth[27][0]_i_4_n_0 ),
        .I2(\growth[35][1]_i_5_n_0 ),
        .I3(obs_growth[54]),
        .I4(stage__0[2]),
        .O(\growth[27][0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000156A)) 
    \growth[27][0]_i_3 
       (.I0(obs_growth[54]),
        .I1(obs_active[19]),
        .I2(obs_whole[19]),
        .I3(\grown[23]_i_4_n_0 ),
        .I4(obs_growth[55]),
        .I5(\FSM_sequential_stage_reg[1]_rep_n_0 ),
        .O(\growth[27][0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair300" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \growth[27][0]_i_4 
       (.I0(obs_whole[19]),
        .I1(obs_active[19]),
        .I2(obs_grown[19]),
        .O(\growth[27][0]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h3440)) 
    \growth[27][1]_i_1 
       (.I0(obs_growth[55]),
        .I1(stage__0[0]),
        .I2(stage__0[2]),
        .I3(\FSM_sequential_stage_reg[1]_rep_n_0 ),
        .O(\growth[27][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h11F111F111F1FFFF)) 
    \growth[27][1]_i_2 
       (.I0(\growth[27][1]_i_3_n_0 ),
        .I1(stage__0[2]),
        .I2(obs_growth[39]),
        .I3(stage__0[0]),
        .I4(\FSM_sequential_stage_reg[1]_rep_n_0 ),
        .I5(\growth[27][1]_i_4_n_0 ),
        .O(\growth[27][1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000077777177)) 
    \growth[27][1]_i_3 
       (.I0(obs_growth[54]),
        .I1(\growth[35][1]_i_5_n_0 ),
        .I2(obs_whole[19]),
        .I3(obs_active[19]),
        .I4(obs_grown[19]),
        .I5(obs_growth[55]),
        .O(\growth[27][1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000157F7F7F)) 
    \growth[27][1]_i_4 
       (.I0(obs_growth[54]),
        .I1(obs_active[19]),
        .I2(obs_whole[19]),
        .I3(obs_active[23]),
        .I4(obs_whole[23]),
        .I5(obs_growth[55]),
        .O(\growth[27][1]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFAE)) 
    \growth[28][0]_i_1 
       (.I0(\growth[28][0]_i_2_n_0 ),
        .I1(obs_growth[40]),
        .I2(stage__0[0]),
        .I3(\growth[28][0]_i_3_n_0 ),
        .O(\growth[28][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT5 #(
    .INIT(32'h00000114)) 
    \growth[28][0]_i_2 
       (.I0(obs_growth[57]),
        .I1(\growth[37][1]_i_5_n_0 ),
        .I2(\growth[35][1]_i_5_n_0 ),
        .I3(obs_growth[56]),
        .I4(stage__0[2]),
        .O(\growth[28][0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000001111444)) 
    \growth[28][0]_i_3 
       (.I0(obs_growth[57]),
        .I1(\grown[24]_i_4_n_0 ),
        .I2(obs_whole[23]),
        .I3(obs_active[23]),
        .I4(obs_growth[56]),
        .I5(\FSM_sequential_stage_reg[1]_rep__0_n_0 ),
        .O(\growth[28][0]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h3440)) 
    \growth[28][1]_i_1 
       (.I0(obs_growth[57]),
        .I1(stage__0[0]),
        .I2(stage__0[2]),
        .I3(\FSM_sequential_stage_reg[1]_rep__0_n_0 ),
        .O(\growth[28][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h11F111F111F1FFFF)) 
    \growth[28][1]_i_2 
       (.I0(\growth[28][1]_i_3_n_0 ),
        .I1(stage__0[2]),
        .I2(obs_growth[41]),
        .I3(stage__0[0]),
        .I4(\FSM_sequential_stage_reg[1]_rep__0_n_0 ),
        .I5(\growth[28][1]_i_4_n_0 ),
        .O(\growth[28][1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000005545FFDF)) 
    \growth[28][1]_i_3 
       (.I0(obs_growth[56]),
        .I1(obs_grown[23]),
        .I2(obs_active[23]),
        .I3(obs_whole[23]),
        .I4(\growth[37][1]_i_5_n_0 ),
        .I5(obs_growth[57]),
        .O(\growth[28][1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000157F7F7F)) 
    \growth[28][1]_i_4 
       (.I0(obs_growth[56]),
        .I1(obs_active[23]),
        .I2(obs_whole[23]),
        .I3(obs_active[24]),
        .I4(obs_whole[24]),
        .I5(obs_growth[57]),
        .O(\growth[28][1]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFAE)) 
    \growth[29][0]_i_1 
       (.I0(\growth[29][0]_i_2_n_0 ),
        .I1(obs_growth[42]),
        .I2(stage__0[0]),
        .I3(\growth[29][0]_i_3_n_0 ),
        .O(\growth[29][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT5 #(
    .INIT(32'h00000114)) 
    \growth[29][0]_i_2 
       (.I0(obs_growth[59]),
        .I1(\growth[29][0]_i_4_n_0 ),
        .I2(\growth[37][1]_i_5_n_0 ),
        .I3(obs_growth[58]),
        .I4(stage__0[2]),
        .O(\growth[29][0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000156A)) 
    \growth[29][0]_i_3 
       (.I0(obs_growth[58]),
        .I1(obs_active[20]),
        .I2(obs_whole[20]),
        .I3(\grown[24]_i_4_n_0 ),
        .I4(obs_growth[59]),
        .I5(\FSM_sequential_stage_reg[1]_rep_n_0 ),
        .O(\growth[29][0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair301" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \growth[29][0]_i_4 
       (.I0(obs_whole[20]),
        .I1(obs_active[20]),
        .I2(obs_grown[20]),
        .O(\growth[29][0]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h3440)) 
    \growth[29][1]_i_1 
       (.I0(obs_growth[59]),
        .I1(stage__0[0]),
        .I2(stage__0[2]),
        .I3(\FSM_sequential_stage_reg[1]_rep_n_0 ),
        .O(\growth[29][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h11F111F111F1FFFF)) 
    \growth[29][1]_i_2 
       (.I0(\growth[29][1]_i_3_n_0 ),
        .I1(stage__0[2]),
        .I2(obs_growth[43]),
        .I3(stage__0[0]),
        .I4(\FSM_sequential_stage_reg[1]_rep_n_0 ),
        .I5(\growth[29][1]_i_4_n_0 ),
        .O(\growth[29][1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000077777177)) 
    \growth[29][1]_i_3 
       (.I0(obs_growth[58]),
        .I1(\growth[37][1]_i_5_n_0 ),
        .I2(obs_whole[20]),
        .I3(obs_active[20]),
        .I4(obs_grown[20]),
        .I5(obs_growth[59]),
        .O(\growth[29][1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000157F7F7F)) 
    \growth[29][1]_i_4 
       (.I0(obs_growth[58]),
        .I1(obs_active[20]),
        .I2(obs_whole[20]),
        .I3(obs_active[24]),
        .I4(obs_whole[24]),
        .I5(obs_growth[59]),
        .O(\growth[29][1]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFAE)) 
    \growth[2][0]_i_1 
       (.I0(\growth[2][0]_i_2_n_0 ),
        .I1(obs_growth[2]),
        .I2(stage__0[0]),
        .I3(\growth[2][0]_i_3_n_0 ),
        .O(\growth[2][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT5 #(
    .INIT(32'h00000114)) 
    \growth[2][0]_i_2 
       (.I0(obs_growth[5]),
        .I1(\growth[2][0]_i_4_n_0 ),
        .I2(\growth[25][0]_i_4_n_0 ),
        .I3(obs_growth[4]),
        .I4(stage__0[2]),
        .O(\growth[2][0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000156A)) 
    \growth[2][0]_i_3 
       (.I0(obs_growth[4]),
        .I1(obs_active[4]),
        .I2(obs_whole[4]),
        .I3(\growth[25][0]_i_5_n_0 ),
        .I4(obs_growth[5]),
        .I5(\FSM_sequential_stage_reg[1]_rep_n_0 ),
        .O(\growth[2][0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair283" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \growth[2][0]_i_4 
       (.I0(obs_whole[4]),
        .I1(obs_active[4]),
        .I2(obs_grown[4]),
        .O(\growth[2][0]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h3440)) 
    \growth[2][1]_i_1 
       (.I0(obs_growth[5]),
        .I1(stage__0[0]),
        .I2(stage__0[2]),
        .I3(\FSM_sequential_stage_reg[1]_rep_n_0 ),
        .O(\growth[2][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h11F111F111F1FFFF)) 
    \growth[2][1]_i_2 
       (.I0(\growth[2][1]_i_3_n_0 ),
        .I1(stage__0[2]),
        .I2(obs_growth[3]),
        .I3(stage__0[0]),
        .I4(\FSM_sequential_stage_reg[1]_rep_n_0 ),
        .I5(\growth[2][1]_i_4_n_0 ),
        .O(\growth[2][1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000077777177)) 
    \growth[2][1]_i_3 
       (.I0(obs_growth[4]),
        .I1(\growth[25][0]_i_4_n_0 ),
        .I2(obs_whole[4]),
        .I3(obs_active[4]),
        .I4(obs_grown[4]),
        .I5(obs_growth[5]),
        .O(\growth[2][1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000157F7F7F)) 
    \growth[2][1]_i_4 
       (.I0(obs_growth[4]),
        .I1(obs_active[4]),
        .I2(obs_whole[4]),
        .I3(obs_active[18]),
        .I4(obs_whole[18]),
        .I5(obs_growth[5]),
        .O(\growth[2][1]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFAE)) 
    \growth[30][0]_i_1 
       (.I0(\growth[30][0]_i_2_n_0 ),
        .I1(obs_growth[44]),
        .I2(stage__0[0]),
        .I3(\growth[30][0]_i_3_n_0 ),
        .O(\growth[30][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair118" *) 
  LUT5 #(
    .INIT(32'h00000114)) 
    \growth[30][0]_i_2 
       (.I0(obs_growth[61]),
        .I1(\growth[40][1]_i_5_n_0 ),
        .I2(\growth[37][1]_i_5_n_0 ),
        .I3(obs_growth[60]),
        .I4(stage__0[2]),
        .O(\growth[30][0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000151540)) 
    \growth[30][0]_i_3 
       (.I0(obs_growth[61]),
        .I1(obs_whole[25]),
        .I2(obs_active[25]),
        .I3(\grown[24]_i_4_n_0 ),
        .I4(obs_growth[60]),
        .I5(\FSM_sequential_stage_reg[1]_rep__0_n_0 ),
        .O(\growth[30][0]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h3440)) 
    \growth[30][1]_i_1 
       (.I0(obs_growth[61]),
        .I1(stage__0[0]),
        .I2(stage__0[2]),
        .I3(\FSM_sequential_stage_reg[1]_rep__0_n_0 ),
        .O(\growth[30][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h11F111F111F1FFFF)) 
    \growth[30][1]_i_2 
       (.I0(\growth[30][1]_i_3_n_0 ),
        .I1(stage__0[2]),
        .I2(obs_growth[45]),
        .I3(stage__0[0]),
        .I4(\FSM_sequential_stage_reg[1]_rep__0_n_0 ),
        .I5(\growth[30][1]_i_4_n_0 ),
        .O(\growth[30][1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000077777177)) 
    \growth[30][1]_i_3 
       (.I0(obs_growth[60]),
        .I1(\growth[37][1]_i_5_n_0 ),
        .I2(obs_grown[25]),
        .I3(obs_active[25]),
        .I4(obs_whole[25]),
        .I5(obs_growth[61]),
        .O(\growth[30][1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000157F7F7F)) 
    \growth[30][1]_i_4 
       (.I0(obs_growth[60]),
        .I1(obs_active[24]),
        .I2(obs_whole[24]),
        .I3(obs_active[25]),
        .I4(obs_whole[25]),
        .I5(obs_growth[61]),
        .O(\growth[30][1]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFAE)) 
    \growth[31][0]_i_1 
       (.I0(\growth[31][0]_i_2_n_0 ),
        .I1(obs_growth[46]),
        .I2(stage__0[0]),
        .I3(\growth[31][0]_i_3_n_0 ),
        .O(\growth[31][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT5 #(
    .INIT(32'h00000114)) 
    \growth[31][0]_i_2 
       (.I0(obs_growth[63]),
        .I1(\growth[31][0]_i_4_n_0 ),
        .I2(\growth[40][1]_i_5_n_0 ),
        .I3(obs_growth[62]),
        .I4(stage__0[2]),
        .O(\growth[31][0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000156A)) 
    \growth[31][0]_i_3 
       (.I0(obs_growth[62]),
        .I1(obs_active[7]),
        .I2(obs_whole[7]),
        .I3(\growth[40][0]_i_5_n_0 ),
        .I4(obs_growth[63]),
        .I5(\FSM_sequential_stage_reg[1]_rep_n_0 ),
        .O(\growth[31][0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair286" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \growth[31][0]_i_4 
       (.I0(obs_whole[7]),
        .I1(obs_active[7]),
        .I2(obs_grown[7]),
        .O(\growth[31][0]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h3440)) 
    \growth[31][1]_i_1 
       (.I0(obs_growth[63]),
        .I1(stage__0[0]),
        .I2(stage__0[2]),
        .I3(\FSM_sequential_stage_reg[1]_rep_n_0 ),
        .O(\growth[31][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h11F111F111F1FFFF)) 
    \growth[31][1]_i_2 
       (.I0(\growth[31][1]_i_3_n_0 ),
        .I1(stage__0[2]),
        .I2(obs_growth[47]),
        .I3(stage__0[0]),
        .I4(\FSM_sequential_stage_reg[1]_rep_n_0 ),
        .I5(\growth[31][1]_i_4_n_0 ),
        .O(\growth[31][1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000077777177)) 
    \growth[31][1]_i_3 
       (.I0(obs_growth[62]),
        .I1(\growth[40][1]_i_5_n_0 ),
        .I2(obs_whole[7]),
        .I3(obs_active[7]),
        .I4(obs_grown[7]),
        .I5(obs_growth[63]),
        .O(\growth[31][1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000157F7F7F)) 
    \growth[31][1]_i_4 
       (.I0(obs_growth[62]),
        .I1(obs_active[7]),
        .I2(obs_whole[7]),
        .I3(obs_active[25]),
        .I4(obs_whole[25]),
        .I5(obs_growth[63]),
        .O(\growth[31][1]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFAE)) 
    \growth[32][0]_i_1 
       (.I0(\growth[32][0]_i_2_n_0 ),
        .I1(obs_growth[48]),
        .I2(stage__0[0]),
        .I3(\growth[32][0]_i_3_n_0 ),
        .O(\growth[32][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT5 #(
    .INIT(32'h00000114)) 
    \growth[32][0]_i_2 
       (.I0(obs_growth[65]),
        .I1(\growth[40][1]_i_5_n_0 ),
        .I2(\growth[32][0]_i_4_n_0 ),
        .I3(obs_growth[64]),
        .I4(stage__0[2]),
        .O(\growth[32][0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000001111444)) 
    \growth[32][0]_i_3 
       (.I0(obs_growth[65]),
        .I1(\growth[40][0]_i_5_n_0 ),
        .I2(obs_whole[21]),
        .I3(obs_active[21]),
        .I4(obs_growth[64]),
        .I5(\FSM_sequential_stage_reg[1]_rep__0_n_0 ),
        .O(\growth[32][0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair302" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \growth[32][0]_i_4 
       (.I0(obs_whole[21]),
        .I1(obs_active[21]),
        .I2(obs_grown[21]),
        .O(\growth[32][0]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h3440)) 
    \growth[32][1]_i_1 
       (.I0(obs_growth[65]),
        .I1(stage__0[0]),
        .I2(stage__0[2]),
        .I3(\FSM_sequential_stage_reg[1]_rep__0_n_0 ),
        .O(\growth[32][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h11F111F111F1FFFF)) 
    \growth[32][1]_i_2 
       (.I0(\growth[32][1]_i_3_n_0 ),
        .I1(stage__0[2]),
        .I2(obs_growth[49]),
        .I3(stage__0[0]),
        .I4(\FSM_sequential_stage_reg[1]_rep__0_n_0 ),
        .I5(\growth[32][1]_i_4_n_0 ),
        .O(\growth[32][1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000005545FFDF)) 
    \growth[32][1]_i_3 
       (.I0(obs_growth[64]),
        .I1(obs_grown[21]),
        .I2(obs_active[21]),
        .I3(obs_whole[21]),
        .I4(\growth[40][1]_i_5_n_0 ),
        .I5(obs_growth[65]),
        .O(\growth[32][1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000157F7F7F)) 
    \growth[32][1]_i_4 
       (.I0(obs_growth[64]),
        .I1(obs_active[21]),
        .I2(obs_whole[21]),
        .I3(obs_active[25]),
        .I4(obs_whole[25]),
        .I5(obs_growth[65]),
        .O(\growth[32][1]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFAE)) 
    \growth[33][0]_i_1 
       (.I0(\growth[33][0]_i_2_n_0 ),
        .I1(obs_growth[50]),
        .I2(stage__0[0]),
        .I3(\growth[33][0]_i_3_n_0 ),
        .O(\growth[33][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT5 #(
    .INIT(32'h00000114)) 
    \growth[33][0]_i_2 
       (.I0(obs_growth[67]),
        .I1(\growth[34][0]_i_4_n_0 ),
        .I2(\growth[33][1]_i_5_n_0 ),
        .I3(obs_growth[66]),
        .I4(stage__0[2]),
        .O(\growth[33][0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000151540)) 
    \growth[33][0]_i_3 
       (.I0(obs_growth[67]),
        .I1(obs_whole[26]),
        .I2(obs_active[26]),
        .I3(\growth[33][0]_i_4_n_0 ),
        .I4(obs_growth[66]),
        .I5(\FSM_sequential_stage_reg[1]_rep__0_n_0 ),
        .O(\growth[33][0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \growth[33][0]_i_4 
       (.I0(obs_whole[22]),
        .I1(obs_active[22]),
        .O(\growth[33][0]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h3440)) 
    \growth[33][1]_i_1 
       (.I0(obs_growth[67]),
        .I1(stage__0[0]),
        .I2(stage__0[2]),
        .I3(\FSM_sequential_stage_reg[1]_rep__0_n_0 ),
        .O(\growth[33][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h11F111F111F1FFFF)) 
    \growth[33][1]_i_2 
       (.I0(\growth[33][1]_i_3_n_0 ),
        .I1(stage__0[2]),
        .I2(obs_growth[51]),
        .I3(stage__0[0]),
        .I4(\FSM_sequential_stage_reg[1]_rep__0_n_0 ),
        .I5(\growth[33][1]_i_4_n_0 ),
        .O(\growth[33][1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000077777177)) 
    \growth[33][1]_i_3 
       (.I0(obs_growth[66]),
        .I1(\growth[33][1]_i_5_n_0 ),
        .I2(obs_grown[26]),
        .I3(obs_active[26]),
        .I4(obs_whole[26]),
        .I5(obs_growth[67]),
        .O(\growth[33][1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000157F7F7F)) 
    \growth[33][1]_i_4 
       (.I0(obs_growth[66]),
        .I1(obs_active[22]),
        .I2(obs_whole[22]),
        .I3(obs_active[26]),
        .I4(obs_whole[26]),
        .I5(obs_growth[67]),
        .O(\growth[33][1]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair303" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \growth[33][1]_i_5 
       (.I0(obs_whole[22]),
        .I1(obs_active[22]),
        .I2(obs_grown[22]),
        .O(\growth[33][1]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFAE)) 
    \growth[34][0]_i_1 
       (.I0(\growth[34][0]_i_2_n_0 ),
        .I1(obs_growth[52]),
        .I2(stage__0[0]),
        .I3(\growth[34][0]_i_3_n_0 ),
        .O(\growth[34][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair119" *) 
  LUT5 #(
    .INIT(32'h00000114)) 
    \growth[34][0]_i_2 
       (.I0(obs_growth[69]),
        .I1(\growth[34][0]_i_4_n_0 ),
        .I2(\growth[36][1]_i_5_n_0 ),
        .I3(obs_growth[68]),
        .I4(stage__0[2]),
        .O(\growth[34][0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000156A)) 
    \growth[34][0]_i_3 
       (.I0(obs_growth[68]),
        .I1(obs_active[26]),
        .I2(obs_whole[26]),
        .I3(\grown[27]_i_4_n_0 ),
        .I4(obs_growth[69]),
        .I5(\FSM_sequential_stage_reg[1]_rep__0_n_0 ),
        .O(\growth[34][0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair307" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \growth[34][0]_i_4 
       (.I0(obs_whole[26]),
        .I1(obs_active[26]),
        .I2(obs_grown[26]),
        .O(\growth[34][0]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h3440)) 
    \growth[34][1]_i_1 
       (.I0(obs_growth[69]),
        .I1(stage__0[0]),
        .I2(stage__0[2]),
        .I3(\FSM_sequential_stage_reg[1]_rep__0_n_0 ),
        .O(\growth[34][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h11F111F111F1FFFF)) 
    \growth[34][1]_i_2 
       (.I0(\growth[34][1]_i_3_n_0 ),
        .I1(stage__0[2]),
        .I2(obs_growth[53]),
        .I3(stage__0[0]),
        .I4(\FSM_sequential_stage_reg[1]_rep__0_n_0 ),
        .I5(\growth[34][1]_i_4_n_0 ),
        .O(\growth[34][1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000077777177)) 
    \growth[34][1]_i_3 
       (.I0(obs_growth[68]),
        .I1(\growth[36][1]_i_5_n_0 ),
        .I2(obs_whole[26]),
        .I3(obs_active[26]),
        .I4(obs_grown[26]),
        .I5(obs_growth[69]),
        .O(\growth[34][1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000157F7F7F)) 
    \growth[34][1]_i_4 
       (.I0(obs_growth[68]),
        .I1(obs_active[26]),
        .I2(obs_whole[26]),
        .I3(obs_active[27]),
        .I4(obs_whole[27]),
        .I5(obs_growth[69]),
        .O(\growth[34][1]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFAE)) 
    \growth[35][0]_i_1 
       (.I0(\growth[35][0]_i_2_n_0 ),
        .I1(obs_growth[54]),
        .I2(stage__0[0]),
        .I3(\growth[35][0]_i_3_n_0 ),
        .O(\growth[35][0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000114)) 
    \growth[35][0]_i_2 
       (.I0(obs_growth[71]),
        .I1(\growth[35][1]_i_5_n_0 ),
        .I2(\growth[36][1]_i_5_n_0 ),
        .I3(obs_growth[70]),
        .I4(stage__0[2]),
        .O(\growth[35][0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000001666)) 
    \growth[35][0]_i_3 
       (.I0(obs_growth[70]),
        .I1(\grown[23]_i_4_n_0 ),
        .I2(obs_active[27]),
        .I3(obs_whole[27]),
        .I4(obs_growth[71]),
        .I5(\FSM_sequential_stage_reg[1]_rep__0_n_0 ),
        .O(\growth[35][0]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h3440)) 
    \growth[35][1]_i_1 
       (.I0(obs_growth[71]),
        .I1(stage__0[0]),
        .I2(stage__0[2]),
        .I3(\FSM_sequential_stage_reg[1]_rep__0_n_0 ),
        .O(\growth[35][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h11F111F111F1FFFF)) 
    \growth[35][1]_i_2 
       (.I0(\growth[35][1]_i_3_n_0 ),
        .I1(stage__0[2]),
        .I2(obs_growth[55]),
        .I3(stage__0[0]),
        .I4(\FSM_sequential_stage_reg[1]_rep__0_n_0 ),
        .I5(\growth[35][1]_i_4_n_0 ),
        .O(\growth[35][1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000005545FFDF)) 
    \growth[35][1]_i_3 
       (.I0(obs_growth[70]),
        .I1(obs_whole[27]),
        .I2(obs_active[27]),
        .I3(obs_grown[27]),
        .I4(\growth[35][1]_i_5_n_0 ),
        .I5(obs_growth[71]),
        .O(\growth[35][1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000157F7F7F)) 
    \growth[35][1]_i_4 
       (.I0(obs_growth[70]),
        .I1(obs_active[23]),
        .I2(obs_whole[23]),
        .I3(obs_active[27]),
        .I4(obs_whole[27]),
        .I5(obs_growth[71]),
        .O(\growth[35][1]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair304" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \growth[35][1]_i_5 
       (.I0(obs_whole[23]),
        .I1(obs_active[23]),
        .I2(obs_grown[23]),
        .O(\growth[35][1]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFAE)) 
    \growth[36][0]_i_1 
       (.I0(\growth[36][0]_i_2_n_0 ),
        .I1(obs_growth[56]),
        .I2(stage__0[0]),
        .I3(\growth[36][0]_i_3_n_0 ),
        .O(\growth[36][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair120" *) 
  LUT5 #(
    .INIT(32'h00000114)) 
    \growth[36][0]_i_2 
       (.I0(obs_growth[73]),
        .I1(\growth[36][1]_i_5_n_0 ),
        .I2(\growth[38][1]_i_5_n_0 ),
        .I3(obs_growth[72]),
        .I4(stage__0[2]),
        .O(\growth[36][0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000156A)) 
    \growth[36][0]_i_3 
       (.I0(obs_growth[72]),
        .I1(obs_active[27]),
        .I2(obs_whole[27]),
        .I3(\grown[28]_i_4_n_0 ),
        .I4(obs_growth[73]),
        .I5(\FSM_sequential_stage_reg[1]_rep__0_n_0 ),
        .O(\growth[36][0]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h3440)) 
    \growth[36][1]_i_1 
       (.I0(obs_growth[73]),
        .I1(stage__0[0]),
        .I2(stage__0[2]),
        .I3(\FSM_sequential_stage_reg[1]_rep__0_n_0 ),
        .O(\growth[36][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h11F111F111F1FFFF)) 
    \growth[36][1]_i_2 
       (.I0(\growth[36][1]_i_3_n_0 ),
        .I1(stage__0[2]),
        .I2(obs_growth[57]),
        .I3(stage__0[0]),
        .I4(\FSM_sequential_stage_reg[1]_rep__0_n_0 ),
        .I5(\growth[36][1]_i_4_n_0 ),
        .O(\growth[36][1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000005545FFDF)) 
    \growth[36][1]_i_3 
       (.I0(obs_growth[72]),
        .I1(obs_whole[28]),
        .I2(obs_active[28]),
        .I3(obs_grown[28]),
        .I4(\growth[36][1]_i_5_n_0 ),
        .I5(obs_growth[73]),
        .O(\growth[36][1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000157F7F7F)) 
    \growth[36][1]_i_4 
       (.I0(obs_growth[72]),
        .I1(obs_active[27]),
        .I2(obs_whole[27]),
        .I3(obs_active[28]),
        .I4(obs_whole[28]),
        .I5(obs_growth[73]),
        .O(\growth[36][1]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair308" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \growth[36][1]_i_5 
       (.I0(obs_whole[27]),
        .I1(obs_active[27]),
        .I2(obs_grown[27]),
        .O(\growth[36][1]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFAE)) 
    \growth[37][0]_i_1 
       (.I0(\growth[37][0]_i_2_n_0 ),
        .I1(obs_growth[58]),
        .I2(stage__0[0]),
        .I3(\growth[37][0]_i_3_n_0 ),
        .O(\growth[37][0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000114)) 
    \growth[37][0]_i_2 
       (.I0(obs_growth[75]),
        .I1(\growth[37][1]_i_5_n_0 ),
        .I2(\growth[38][1]_i_5_n_0 ),
        .I3(obs_growth[74]),
        .I4(stage__0[2]),
        .O(\growth[37][0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000001666)) 
    \growth[37][0]_i_3 
       (.I0(obs_growth[74]),
        .I1(\grown[24]_i_4_n_0 ),
        .I2(obs_active[28]),
        .I3(obs_whole[28]),
        .I4(obs_growth[75]),
        .I5(\FSM_sequential_stage_reg[1]_rep__0_n_0 ),
        .O(\growth[37][0]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h3440)) 
    \growth[37][1]_i_1 
       (.I0(obs_growth[75]),
        .I1(stage__0[0]),
        .I2(stage__0[2]),
        .I3(\FSM_sequential_stage_reg[1]_rep__0_n_0 ),
        .O(\growth[37][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h11F111F111F1FFFF)) 
    \growth[37][1]_i_2 
       (.I0(\growth[37][1]_i_3_n_0 ),
        .I1(stage__0[2]),
        .I2(obs_growth[59]),
        .I3(stage__0[0]),
        .I4(\FSM_sequential_stage_reg[1]_rep__0_n_0 ),
        .I5(\growth[37][1]_i_4_n_0 ),
        .O(\growth[37][1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000005545FFDF)) 
    \growth[37][1]_i_3 
       (.I0(obs_growth[74]),
        .I1(obs_whole[28]),
        .I2(obs_active[28]),
        .I3(obs_grown[28]),
        .I4(\growth[37][1]_i_5_n_0 ),
        .I5(obs_growth[75]),
        .O(\growth[37][1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000157F7F7F)) 
    \growth[37][1]_i_4 
       (.I0(obs_growth[74]),
        .I1(obs_active[24]),
        .I2(obs_whole[24]),
        .I3(obs_active[28]),
        .I4(obs_whole[28]),
        .I5(obs_growth[75]),
        .O(\growth[37][1]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair305" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \growth[37][1]_i_5 
       (.I0(obs_whole[24]),
        .I1(obs_active[24]),
        .I2(obs_grown[24]),
        .O(\growth[37][1]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFAE)) 
    \growth[38][0]_i_1 
       (.I0(\growth[38][0]_i_2_n_0 ),
        .I1(obs_growth[60]),
        .I2(stage__0[0]),
        .I3(\growth[38][0]_i_3_n_0 ),
        .O(\growth[38][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair121" *) 
  LUT5 #(
    .INIT(32'h00000114)) 
    \growth[38][0]_i_2 
       (.I0(obs_growth[77]),
        .I1(\growth[40][0]_i_4_n_0 ),
        .I2(\growth[38][1]_i_5_n_0 ),
        .I3(obs_growth[76]),
        .I4(stage__0[2]),
        .O(\growth[38][0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000151540)) 
    \growth[38][0]_i_3 
       (.I0(obs_growth[77]),
        .I1(obs_whole[29]),
        .I2(obs_active[29]),
        .I3(\grown[28]_i_4_n_0 ),
        .I4(obs_growth[76]),
        .I5(\FSM_sequential_stage_reg[1]_rep__0_n_0 ),
        .O(\growth[38][0]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h3440)) 
    \growth[38][1]_i_1 
       (.I0(obs_growth[77]),
        .I1(stage__0[0]),
        .I2(stage__0[2]),
        .I3(\FSM_sequential_stage_reg[1]_rep__0_n_0 ),
        .O(\growth[38][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h11F111F111F1FFFF)) 
    \growth[38][1]_i_2 
       (.I0(\growth[38][1]_i_3_n_0 ),
        .I1(stage__0[2]),
        .I2(obs_growth[61]),
        .I3(stage__0[0]),
        .I4(\FSM_sequential_stage_reg[1]_rep__0_n_0 ),
        .I5(\growth[38][1]_i_4_n_0 ),
        .O(\growth[38][1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000077777177)) 
    \growth[38][1]_i_3 
       (.I0(obs_growth[76]),
        .I1(\growth[38][1]_i_5_n_0 ),
        .I2(obs_grown[29]),
        .I3(obs_active[29]),
        .I4(obs_whole[29]),
        .I5(obs_growth[77]),
        .O(\growth[38][1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000157F7F7F)) 
    \growth[38][1]_i_4 
       (.I0(obs_growth[76]),
        .I1(obs_active[28]),
        .I2(obs_whole[28]),
        .I3(obs_active[29]),
        .I4(obs_whole[29]),
        .I5(obs_growth[77]),
        .O(\growth[38][1]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair309" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \growth[38][1]_i_5 
       (.I0(obs_whole[28]),
        .I1(obs_active[28]),
        .I2(obs_grown[28]),
        .O(\growth[38][1]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFAE)) 
    \growth[39][0]_i_1 
       (.I0(\growth[39][0]_i_2_n_0 ),
        .I1(obs_growth[62]),
        .I2(stage__0[0]),
        .I3(\growth[39][0]_i_3_n_0 ),
        .O(\growth[39][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT5 #(
    .INIT(32'h00000114)) 
    \growth[39][0]_i_2 
       (.I0(obs_growth[79]),
        .I1(\growth[39][0]_i_4_n_0 ),
        .I2(\growth[40][0]_i_4_n_0 ),
        .I3(obs_growth[78]),
        .I4(stage__0[2]),
        .O(\growth[39][0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000156A)) 
    \growth[39][0]_i_3 
       (.I0(obs_growth[78]),
        .I1(obs_active[9]),
        .I2(obs_whole[9]),
        .I3(\growth[39][0]_i_5_n_0 ),
        .I4(obs_growth[79]),
        .I5(\FSM_sequential_stage_reg[1]_rep_n_0 ),
        .O(\growth[39][0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair288" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \growth[39][0]_i_4 
       (.I0(obs_whole[9]),
        .I1(obs_active[9]),
        .I2(obs_grown[9]),
        .O(\growth[39][0]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair412" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \growth[39][0]_i_5 
       (.I0(obs_whole[29]),
        .I1(obs_active[29]),
        .O(\growth[39][0]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h3440)) 
    \growth[39][1]_i_1 
       (.I0(obs_growth[79]),
        .I1(stage__0[0]),
        .I2(stage__0[2]),
        .I3(\FSM_sequential_stage_reg[1]_rep_n_0 ),
        .O(\growth[39][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h11F111F111F1FFFF)) 
    \growth[39][1]_i_2 
       (.I0(\growth[39][1]_i_3_n_0 ),
        .I1(stage__0[2]),
        .I2(obs_growth[63]),
        .I3(stage__0[0]),
        .I4(\FSM_sequential_stage_reg[1]_rep_n_0 ),
        .I5(\growth[39][1]_i_4_n_0 ),
        .O(\growth[39][1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000077777177)) 
    \growth[39][1]_i_3 
       (.I0(obs_growth[78]),
        .I1(\growth[40][0]_i_4_n_0 ),
        .I2(obs_whole[9]),
        .I3(obs_active[9]),
        .I4(obs_grown[9]),
        .I5(obs_growth[79]),
        .O(\growth[39][1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000157F7F7F)) 
    \growth[39][1]_i_4 
       (.I0(obs_growth[78]),
        .I1(obs_active[9]),
        .I2(obs_whole[9]),
        .I3(obs_active[29]),
        .I4(obs_whole[29]),
        .I5(obs_growth[79]),
        .O(\growth[39][1]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFAE)) 
    \growth[3][0]_i_1 
       (.I0(\growth[3][0]_i_2_n_0 ),
        .I1(obs_growth[4]),
        .I2(stage__0[0]),
        .I3(\growth[3][0]_i_3_n_0 ),
        .O(\growth[3][0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000114)) 
    \growth[3][0]_i_2 
       (.I0(obs_growth[7]),
        .I1(\growth[3][0]_i_4_n_0 ),
        .I2(\growth[33][1]_i_5_n_0 ),
        .I3(obs_growth[6]),
        .I4(stage__0[2]),
        .O(\growth[3][0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000156A)) 
    \growth[3][0]_i_3 
       (.I0(obs_growth[6]),
        .I1(obs_active[6]),
        .I2(obs_whole[6]),
        .I3(\growth[33][0]_i_4_n_0 ),
        .I4(obs_growth[7]),
        .I5(\FSM_sequential_stage_reg[1]_rep_n_0 ),
        .O(\growth[3][0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair285" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \growth[3][0]_i_4 
       (.I0(obs_whole[6]),
        .I1(obs_active[6]),
        .I2(obs_grown[6]),
        .O(\growth[3][0]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h3440)) 
    \growth[3][1]_i_1 
       (.I0(obs_growth[7]),
        .I1(stage__0[0]),
        .I2(stage__0[2]),
        .I3(\FSM_sequential_stage_reg[1]_rep_n_0 ),
        .O(\growth[3][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h11F111F111F1FFFF)) 
    \growth[3][1]_i_2 
       (.I0(\growth[3][1]_i_3_n_0 ),
        .I1(stage__0[2]),
        .I2(obs_growth[5]),
        .I3(stage__0[0]),
        .I4(\FSM_sequential_stage_reg[1]_rep_n_0 ),
        .I5(\growth[3][1]_i_4_n_0 ),
        .O(\growth[3][1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000077777177)) 
    \growth[3][1]_i_3 
       (.I0(obs_growth[6]),
        .I1(\growth[33][1]_i_5_n_0 ),
        .I2(obs_whole[6]),
        .I3(obs_active[6]),
        .I4(obs_grown[6]),
        .I5(obs_growth[7]),
        .O(\growth[3][1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000157F7F7F)) 
    \growth[3][1]_i_4 
       (.I0(obs_growth[6]),
        .I1(obs_active[6]),
        .I2(obs_whole[6]),
        .I3(obs_active[22]),
        .I4(obs_whole[22]),
        .I5(obs_growth[7]),
        .O(\growth[3][1]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFAE)) 
    \growth[40][0]_i_1 
       (.I0(\growth[40][0]_i_2_n_0 ),
        .I1(obs_growth[64]),
        .I2(stage__0[0]),
        .I3(\growth[40][0]_i_3_n_0 ),
        .O(\growth[40][0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000114)) 
    \growth[40][0]_i_2 
       (.I0(obs_growth[81]),
        .I1(\growth[40][0]_i_4_n_0 ),
        .I2(\growth[40][1]_i_5_n_0 ),
        .I3(obs_growth[80]),
        .I4(stage__0[2]),
        .O(\growth[40][0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000151540)) 
    \growth[40][0]_i_3 
       (.I0(obs_growth[81]),
        .I1(obs_whole[29]),
        .I2(obs_active[29]),
        .I3(\growth[40][0]_i_5_n_0 ),
        .I4(obs_growth[80]),
        .I5(\FSM_sequential_stage_reg[1]_rep__0_n_0 ),
        .O(\growth[40][0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair310" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \growth[40][0]_i_4 
       (.I0(obs_whole[29]),
        .I1(obs_active[29]),
        .I2(obs_grown[29]),
        .O(\growth[40][0]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \growth[40][0]_i_5 
       (.I0(obs_whole[25]),
        .I1(obs_active[25]),
        .O(\growth[40][0]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h3440)) 
    \growth[40][1]_i_1 
       (.I0(obs_growth[81]),
        .I1(stage__0[0]),
        .I2(stage__0[2]),
        .I3(\FSM_sequential_stage_reg[1]_rep__0_n_0 ),
        .O(\growth[40][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h11F111F111F1FFFF)) 
    \growth[40][1]_i_2 
       (.I0(\growth[40][1]_i_3_n_0 ),
        .I1(stage__0[2]),
        .I2(obs_growth[65]),
        .I3(stage__0[0]),
        .I4(\FSM_sequential_stage_reg[1]_rep__0_n_0 ),
        .I5(\growth[40][1]_i_4_n_0 ),
        .O(\growth[40][1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000077777177)) 
    \growth[40][1]_i_3 
       (.I0(obs_growth[80]),
        .I1(\growth[40][1]_i_5_n_0 ),
        .I2(obs_grown[29]),
        .I3(obs_active[29]),
        .I4(obs_whole[29]),
        .I5(obs_growth[81]),
        .O(\growth[40][1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000157F7F7F)) 
    \growth[40][1]_i_4 
       (.I0(obs_growth[80]),
        .I1(obs_active[25]),
        .I2(obs_whole[25]),
        .I3(obs_active[29]),
        .I4(obs_whole[29]),
        .I5(obs_growth[81]),
        .O(\growth[40][1]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair306" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \growth[40][1]_i_5 
       (.I0(obs_whole[25]),
        .I1(obs_active[25]),
        .I2(obs_grown[25]),
        .O(\growth[40][1]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFAE)) 
    \growth[4][0]_i_1 
       (.I0(\growth[4][0]_i_2_n_0 ),
        .I1(obs_growth[6]),
        .I2(stage__0[0]),
        .I3(\growth[4][0]_i_3_n_0 ),
        .O(\growth[4][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT5 #(
    .INIT(32'h00000114)) 
    \growth[4][0]_i_2 
       (.I0(obs_growth[9]),
        .I1(\growth[4][0]_i_4_n_0 ),
        .I2(\growth[34][0]_i_4_n_0 ),
        .I3(obs_growth[8]),
        .I4(stage__0[2]),
        .O(\growth[4][0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000156A)) 
    \growth[4][0]_i_3 
       (.I0(obs_growth[8]),
        .I1(obs_active[8]),
        .I2(obs_whole[8]),
        .I3(\growth[4][0]_i_5_n_0 ),
        .I4(obs_growth[9]),
        .I5(\FSM_sequential_stage_reg[1]_rep_n_0 ),
        .O(\growth[4][0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair287" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \growth[4][0]_i_4 
       (.I0(obs_whole[8]),
        .I1(obs_active[8]),
        .I2(obs_grown[8]),
        .O(\growth[4][0]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \growth[4][0]_i_5 
       (.I0(obs_whole[26]),
        .I1(obs_active[26]),
        .O(\growth[4][0]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h3440)) 
    \growth[4][1]_i_1 
       (.I0(obs_growth[9]),
        .I1(stage__0[0]),
        .I2(stage__0[2]),
        .I3(\FSM_sequential_stage_reg[1]_rep_n_0 ),
        .O(\growth[4][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h11F111F111F1FFFF)) 
    \growth[4][1]_i_2 
       (.I0(\growth[4][1]_i_3_n_0 ),
        .I1(stage__0[2]),
        .I2(obs_growth[7]),
        .I3(stage__0[0]),
        .I4(\FSM_sequential_stage_reg[1]_rep_n_0 ),
        .I5(\growth[4][1]_i_4_n_0 ),
        .O(\growth[4][1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000077777177)) 
    \growth[4][1]_i_3 
       (.I0(obs_growth[8]),
        .I1(\growth[34][0]_i_4_n_0 ),
        .I2(obs_whole[8]),
        .I3(obs_active[8]),
        .I4(obs_grown[8]),
        .I5(obs_growth[9]),
        .O(\growth[4][1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000157F7F7F)) 
    \growth[4][1]_i_4 
       (.I0(obs_growth[8]),
        .I1(obs_active[8]),
        .I2(obs_whole[8]),
        .I3(obs_active[26]),
        .I4(obs_whole[26]),
        .I5(obs_growth[9]),
        .O(\growth[4][1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00000114)) 
    \growth[5][0]_i_1 
       (.I0(stage__0[2]),
        .I1(obs_growth[10]),
        .I2(\growth[9][0]_i_2_n_0 ),
        .I3(\growth[11][1]_i_5_n_0 ),
        .I4(obs_growth[11]),
        .I5(\growth[5][0]_i_2_n_0 ),
        .O(\growth[5][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000156A)) 
    \growth[5][0]_i_2 
       (.I0(obs_growth[10]),
        .I1(obs_active[10]),
        .I2(obs_whole[10]),
        .I3(\grown[11]_i_4_n_0 ),
        .I4(obs_growth[11]),
        .I5(\FSM_sequential_stage_reg[1]_rep__4_n_0 ),
        .O(\growth[5][0]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h3440)) 
    \growth[5][1]_i_1 
       (.I0(obs_growth[11]),
        .I1(stage__0[0]),
        .I2(stage__0[2]),
        .I3(\FSM_sequential_stage_reg[1]_rep__4_n_0 ),
        .O(\growth[5][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair290" *) 
  LUT4 #(
    .INIT(16'h111F)) 
    \growth[5][1]_i_2 
       (.I0(\growth[5][1]_i_3_n_0 ),
        .I1(stage__0[2]),
        .I2(\growth[5][1]_i_4_n_0 ),
        .I3(\FSM_sequential_stage_reg[1]_rep__4_n_0 ),
        .O(\growth[5][1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000005545FFDF)) 
    \growth[5][1]_i_3 
       (.I0(obs_growth[10]),
        .I1(obs_grown[10]),
        .I2(obs_active[10]),
        .I3(obs_whole[10]),
        .I4(\growth[11][1]_i_5_n_0 ),
        .I5(obs_growth[11]),
        .O(\growth[5][1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000157F7F7F)) 
    \growth[5][1]_i_4 
       (.I0(obs_growth[10]),
        .I1(obs_active[10]),
        .I2(obs_whole[10]),
        .I3(obs_active[11]),
        .I4(obs_whole[11]),
        .I5(obs_growth[11]),
        .O(\growth[5][1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00000114)) 
    \growth[6][0]_i_1 
       (.I0(stage__0[2]),
        .I1(obs_growth[12]),
        .I2(\growth[11][1]_i_5_n_0 ),
        .I3(\growth[13][1]_i_5_n_0 ),
        .I4(obs_growth[13]),
        .I5(\growth[6][0]_i_2_n_0 ),
        .O(\growth[6][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000156A)) 
    \growth[6][0]_i_2 
       (.I0(obs_growth[12]),
        .I1(obs_active[11]),
        .I2(obs_whole[11]),
        .I3(\growth[6][0]_i_3_n_0 ),
        .I4(obs_growth[13]),
        .I5(\FSM_sequential_stage_reg[1]_rep__4_n_0 ),
        .O(\growth[6][0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \growth[6][0]_i_3 
       (.I0(obs_whole[12]),
        .I1(obs_active[12]),
        .O(\growth[6][0]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h3440)) 
    \growth[6][1]_i_1 
       (.I0(obs_growth[13]),
        .I1(stage__0[0]),
        .I2(stage__0[2]),
        .I3(\FSM_sequential_stage_reg[1]_rep__4_n_0 ),
        .O(\growth[6][1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h111F)) 
    \growth[6][1]_i_2 
       (.I0(\growth[6][1]_i_3_n_0 ),
        .I1(stage__0[2]),
        .I2(\growth[6][1]_i_4_n_0 ),
        .I3(\FSM_sequential_stage_reg[1]_rep__4_n_0 ),
        .O(\growth[6][1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000005545FFDF)) 
    \growth[6][1]_i_3 
       (.I0(obs_growth[12]),
        .I1(obs_grown[11]),
        .I2(obs_active[11]),
        .I3(obs_whole[11]),
        .I4(\growth[13][1]_i_5_n_0 ),
        .I5(obs_growth[13]),
        .O(\growth[6][1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000157F7F7F)) 
    \growth[6][1]_i_4 
       (.I0(obs_growth[12]),
        .I1(obs_active[11]),
        .I2(obs_whole[11]),
        .I3(obs_active[12]),
        .I4(obs_whole[12]),
        .I5(obs_growth[13]),
        .O(\growth[6][1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00000114)) 
    \growth[7][0]_i_1 
       (.I0(stage__0[2]),
        .I1(obs_growth[14]),
        .I2(\growth[13][1]_i_5_n_0 ),
        .I3(\growth[16][0]_i_2_n_0 ),
        .I4(obs_growth[15]),
        .I5(\growth[7][0]_i_2_n_0 ),
        .O(\growth[7][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000156A)) 
    \growth[7][0]_i_2 
       (.I0(obs_growth[14]),
        .I1(obs_active[12]),
        .I2(obs_whole[12]),
        .I3(\growth[8][0]_i_3_n_0 ),
        .I4(obs_growth[15]),
        .I5(\FSM_sequential_stage_reg[1]_rep__4_n_0 ),
        .O(\growth[7][0]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h3440)) 
    \growth[7][1]_i_1 
       (.I0(obs_growth[15]),
        .I1(stage__0[0]),
        .I2(stage__0[2]),
        .I3(\FSM_sequential_stage_reg[1]_rep__4_n_0 ),
        .O(\growth[7][1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h111F)) 
    \growth[7][1]_i_2 
       (.I0(\growth[7][1]_i_3_n_0 ),
        .I1(stage__0[2]),
        .I2(\growth[7][1]_i_4_n_0 ),
        .I3(\FSM_sequential_stage_reg[1]_rep__4_n_0 ),
        .O(\growth[7][1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000005545FFDF)) 
    \growth[7][1]_i_3 
       (.I0(obs_growth[14]),
        .I1(obs_grown[12]),
        .I2(obs_active[12]),
        .I3(obs_whole[12]),
        .I4(\growth[16][0]_i_2_n_0 ),
        .I5(obs_growth[15]),
        .O(\growth[7][1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000157F7F7F)) 
    \growth[7][1]_i_4 
       (.I0(obs_growth[14]),
        .I1(obs_active[12]),
        .I2(obs_whole[12]),
        .I3(obs_active[13]),
        .I4(obs_whole[13]),
        .I5(obs_growth[15]),
        .O(\growth[7][1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00000114)) 
    \growth[8][0]_i_1 
       (.I0(stage__0[2]),
        .I1(\growth[8][1]_i_4_n_0 ),
        .I2(\growth[16][0]_i_2_n_0 ),
        .I3(obs_growth[16]),
        .I4(obs_growth[17]),
        .I5(\growth[8][0]_i_2_n_0 ),
        .O(\growth[8][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000156A)) 
    \growth[8][0]_i_2 
       (.I0(obs_growth[16]),
        .I1(obs_active[1]),
        .I2(obs_whole[1]),
        .I3(\growth[8][0]_i_3_n_0 ),
        .I4(obs_growth[17]),
        .I5(\FSM_sequential_stage_reg[1]_rep__4_n_0 ),
        .O(\growth[8][0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \growth[8][0]_i_3 
       (.I0(obs_whole[13]),
        .I1(obs_active[13]),
        .O(\growth[8][0]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h3440)) 
    \growth[8][1]_i_1 
       (.I0(obs_growth[17]),
        .I1(stage__0[0]),
        .I2(stage__0[2]),
        .I3(\FSM_sequential_stage_reg[1]_rep__4_n_0 ),
        .O(\growth[8][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00D500D500D5FFFF)) 
    \growth[8][1]_i_2 
       (.I0(\growth[8][1]_i_3_n_0 ),
        .I1(\growth[16][0]_i_2_n_0 ),
        .I2(\growth[8][1]_i_4_n_0 ),
        .I3(stage__0[2]),
        .I4(\growth[8][1]_i_5_n_0 ),
        .I5(\FSM_sequential_stage_reg[1]_rep__4_n_0 ),
        .O(\growth[8][1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000554555555555)) 
    \growth[8][1]_i_3 
       (.I0(obs_growth[17]),
        .I1(obs_grown[1]),
        .I2(obs_active[1]),
        .I3(obs_whole[1]),
        .I4(\growth[16][0]_i_2_n_0 ),
        .I5(obs_growth[16]),
        .O(\growth[8][1]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \growth[8][1]_i_4 
       (.I0(obs_whole[1]),
        .I1(obs_active[1]),
        .I2(obs_grown[1]),
        .O(\growth[8][1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000157F7F7F)) 
    \growth[8][1]_i_5 
       (.I0(obs_growth[16]),
        .I1(obs_active[1]),
        .I2(obs_whole[1]),
        .I3(obs_active[13]),
        .I4(obs_whole[13]),
        .I5(obs_growth[17]),
        .O(\growth[8][1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00000114)) 
    \growth[9][0]_i_1 
       (.I0(stage__0[2]),
        .I1(obs_growth[18]),
        .I2(\growth[9][0]_i_2_n_0 ),
        .I3(\growth[9][0]_i_3_n_0 ),
        .I4(obs_growth[19]),
        .I5(\growth[9][0]_i_4_n_0 ),
        .O(\growth[9][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair394" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \growth[9][0]_i_2 
       (.I0(obs_whole[10]),
        .I1(obs_active[10]),
        .I2(obs_grown[10]),
        .O(\growth[9][0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair293" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \growth[9][0]_i_3 
       (.I0(obs_whole[14]),
        .I1(obs_active[14]),
        .I2(obs_grown[14]),
        .O(\growth[9][0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000156A)) 
    \growth[9][0]_i_4 
       (.I0(obs_growth[18]),
        .I1(obs_active[10]),
        .I2(obs_whole[10]),
        .I3(\growth[9][0]_i_5_n_0 ),
        .I4(obs_growth[19]),
        .I5(\FSM_sequential_stage_reg[1]_rep__4_n_0 ),
        .O(\growth[9][0]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \growth[9][0]_i_5 
       (.I0(obs_whole[14]),
        .I1(obs_active[14]),
        .O(\growth[9][0]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h3440)) 
    \growth[9][1]_i_1 
       (.I0(obs_growth[19]),
        .I1(stage__0[0]),
        .I2(stage__0[2]),
        .I3(\FSM_sequential_stage_reg[1]_rep__4_n_0 ),
        .O(\growth[9][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair289" *) 
  LUT4 #(
    .INIT(16'h111F)) 
    \growth[9][1]_i_2 
       (.I0(\growth[9][1]_i_3_n_0 ),
        .I1(stage__0[2]),
        .I2(\growth[9][1]_i_4_n_0 ),
        .I3(\FSM_sequential_stage_reg[1]_rep__4_n_0 ),
        .O(\growth[9][1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000005545FFDF)) 
    \growth[9][1]_i_3 
       (.I0(obs_growth[18]),
        .I1(obs_grown[10]),
        .I2(obs_active[10]),
        .I3(obs_whole[10]),
        .I4(\growth[9][0]_i_3_n_0 ),
        .I5(obs_growth[19]),
        .O(\growth[9][1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000157F7F7F)) 
    \growth[9][1]_i_4 
       (.I0(obs_growth[18]),
        .I1(obs_active[10]),
        .I2(obs_whole[10]),
        .I3(obs_active[14]),
        .I4(obs_whole[14]),
        .I5(obs_growth[19]),
        .O(\growth[9][1]_i_4_n_0 ));
  FDRE \growth_reg[0][0] 
       (.C(clk),
        .CE(growth),
        .D(c_growth[0]),
        .Q(obs_growth[0]),
        .R(reset));
  FDRE \growth_reg[0][1] 
       (.C(clk),
        .CE(growth),
        .D(c_growth[1]),
        .Q(obs_growth[1]),
        .R(reset));
  FDRE \growth_reg[10][0] 
       (.C(clk),
        .CE(\growth[10][1]_i_1_n_0 ),
        .D(\growth[10][0]_i_1_n_0 ),
        .Q(obs_growth[20]),
        .R(reset));
  FDRE \growth_reg[10][1] 
       (.C(clk),
        .CE(\growth[10][1]_i_1_n_0 ),
        .D(\growth[10][1]_i_2_n_0 ),
        .Q(obs_growth[21]),
        .R(reset));
  FDRE \growth_reg[11][0] 
       (.C(clk),
        .CE(\growth[11][1]_i_1_n_0 ),
        .D(\growth[11][0]_i_1_n_0 ),
        .Q(obs_growth[22]),
        .R(reset));
  FDRE \growth_reg[11][1] 
       (.C(clk),
        .CE(\growth[11][1]_i_1_n_0 ),
        .D(\growth[11][1]_i_2_n_0 ),
        .Q(obs_growth[23]),
        .R(reset));
  FDRE \growth_reg[12][0] 
       (.C(clk),
        .CE(\growth[12][1]_i_1_n_0 ),
        .D(\growth[12][0]_i_1_n_0 ),
        .Q(obs_growth[24]),
        .R(reset));
  FDRE \growth_reg[12][1] 
       (.C(clk),
        .CE(\growth[12][1]_i_1_n_0 ),
        .D(\growth[12][1]_i_2_n_0 ),
        .Q(obs_growth[25]),
        .R(reset));
  FDRE \growth_reg[13][0] 
       (.C(clk),
        .CE(\growth[13][1]_i_1_n_0 ),
        .D(\growth[13][0]_i_1_n_0 ),
        .Q(obs_growth[26]),
        .R(reset));
  FDRE \growth_reg[13][1] 
       (.C(clk),
        .CE(\growth[13][1]_i_1_n_0 ),
        .D(\growth[13][1]_i_2_n_0 ),
        .Q(obs_growth[27]),
        .R(reset));
  FDRE \growth_reg[14][0] 
       (.C(clk),
        .CE(\growth[14][1]_i_1_n_0 ),
        .D(\growth[14][0]_i_1_n_0 ),
        .Q(obs_growth[28]),
        .R(reset));
  FDRE \growth_reg[14][1] 
       (.C(clk),
        .CE(\growth[14][1]_i_1_n_0 ),
        .D(\growth[14][1]_i_2_n_0 ),
        .Q(obs_growth[29]),
        .R(reset));
  FDRE \growth_reg[15][0] 
       (.C(clk),
        .CE(\growth[15][1]_i_1_n_0 ),
        .D(\growth[15][0]_i_1_n_0 ),
        .Q(obs_growth[30]),
        .R(reset));
  FDRE \growth_reg[15][1] 
       (.C(clk),
        .CE(\growth[15][1]_i_1_n_0 ),
        .D(\growth[15][1]_i_2_n_0 ),
        .Q(obs_growth[31]),
        .R(reset));
  FDRE \growth_reg[16][0] 
       (.C(clk),
        .CE(\growth[16][1]_i_1_n_0 ),
        .D(\growth[16][0]_i_1_n_0 ),
        .Q(obs_growth[32]),
        .R(reset));
  FDRE \growth_reg[16][1] 
       (.C(clk),
        .CE(\growth[16][1]_i_1_n_0 ),
        .D(\growth[16][1]_i_2_n_0 ),
        .Q(obs_growth[33]),
        .R(reset));
  FDRE \growth_reg[17][0] 
       (.C(clk),
        .CE(\growth[17][1]_i_1_n_0 ),
        .D(\growth[17][0]_i_1_n_0 ),
        .Q(obs_growth[34]),
        .R(reset));
  FDRE \growth_reg[17][1] 
       (.C(clk),
        .CE(\growth[17][1]_i_1_n_0 ),
        .D(\growth[17][1]_i_2_n_0 ),
        .Q(obs_growth[35]),
        .R(reset));
  FDRE \growth_reg[18][0] 
       (.C(clk),
        .CE(\growth[18][1]_i_1_n_0 ),
        .D(\growth[18][0]_i_1_n_0 ),
        .Q(obs_growth[36]),
        .R(reset));
  FDRE \growth_reg[18][1] 
       (.C(clk),
        .CE(\growth[18][1]_i_1_n_0 ),
        .D(\growth[18][1]_i_2_n_0 ),
        .Q(obs_growth[37]),
        .R(reset));
  FDRE \growth_reg[19][0] 
       (.C(clk),
        .CE(\growth[19][1]_i_1_n_0 ),
        .D(\growth[19][0]_i_1_n_0 ),
        .Q(obs_growth[38]),
        .R(reset));
  FDRE \growth_reg[19][1] 
       (.C(clk),
        .CE(\growth[19][1]_i_1_n_0 ),
        .D(\growth[19][1]_i_2_n_0 ),
        .Q(obs_growth[39]),
        .R(reset));
  FDRE \growth_reg[1][0] 
       (.C(clk),
        .CE(\growth[1][1]_i_1_n_0 ),
        .D(\growth[1][0]_i_1_n_0 ),
        .Q(obs_growth[2]),
        .R(reset));
  FDRE \growth_reg[1][1] 
       (.C(clk),
        .CE(\growth[1][1]_i_1_n_0 ),
        .D(\growth[1][1]_i_2_n_0 ),
        .Q(obs_growth[3]),
        .R(reset));
  FDRE \growth_reg[20][0] 
       (.C(clk),
        .CE(\growth[20][1]_i_1_n_0 ),
        .D(\growth[20][0]_i_1_n_0 ),
        .Q(obs_growth[40]),
        .R(reset));
  FDRE \growth_reg[20][1] 
       (.C(clk),
        .CE(\growth[20][1]_i_1_n_0 ),
        .D(\growth[20][1]_i_2_n_0 ),
        .Q(obs_growth[41]),
        .R(reset));
  FDRE \growth_reg[21][0] 
       (.C(clk),
        .CE(\growth[21][1]_i_1_n_0 ),
        .D(\growth[21][0]_i_1_n_0 ),
        .Q(obs_growth[42]),
        .R(reset));
  FDRE \growth_reg[21][1] 
       (.C(clk),
        .CE(\growth[21][1]_i_1_n_0 ),
        .D(\growth[21][1]_i_2_n_0 ),
        .Q(obs_growth[43]),
        .R(reset));
  FDRE \growth_reg[22][0] 
       (.C(clk),
        .CE(\growth[22][1]_i_1_n_0 ),
        .D(\growth[22][0]_i_1_n_0 ),
        .Q(obs_growth[44]),
        .R(reset));
  FDRE \growth_reg[22][1] 
       (.C(clk),
        .CE(\growth[22][1]_i_1_n_0 ),
        .D(\growth[22][1]_i_2_n_0 ),
        .Q(obs_growth[45]),
        .R(reset));
  FDRE \growth_reg[23][0] 
       (.C(clk),
        .CE(\growth[23][1]_i_1_n_0 ),
        .D(\growth[23][0]_i_1_n_0 ),
        .Q(obs_growth[46]),
        .R(reset));
  FDRE \growth_reg[23][1] 
       (.C(clk),
        .CE(\growth[23][1]_i_1_n_0 ),
        .D(\growth[23][1]_i_2_n_0 ),
        .Q(obs_growth[47]),
        .R(reset));
  FDRE \growth_reg[24][0] 
       (.C(clk),
        .CE(\growth[24][1]_i_1_n_0 ),
        .D(\growth[24][0]_i_1_n_0 ),
        .Q(obs_growth[48]),
        .R(reset));
  FDRE \growth_reg[24][1] 
       (.C(clk),
        .CE(\growth[24][1]_i_1_n_0 ),
        .D(\growth[24][1]_i_2_n_0 ),
        .Q(obs_growth[49]),
        .R(reset));
  FDRE \growth_reg[25][0] 
       (.C(clk),
        .CE(\growth[25][1]_i_1_n_0 ),
        .D(\growth[25][0]_i_1_n_0 ),
        .Q(obs_growth[50]),
        .R(reset));
  FDRE \growth_reg[25][1] 
       (.C(clk),
        .CE(\growth[25][1]_i_1_n_0 ),
        .D(\growth[25][1]_i_2_n_0 ),
        .Q(obs_growth[51]),
        .R(reset));
  FDRE \growth_reg[26][0] 
       (.C(clk),
        .CE(\growth[26][1]_i_1_n_0 ),
        .D(\growth[26][0]_i_1_n_0 ),
        .Q(obs_growth[52]),
        .R(reset));
  FDRE \growth_reg[26][1] 
       (.C(clk),
        .CE(\growth[26][1]_i_1_n_0 ),
        .D(\growth[26][1]_i_2_n_0 ),
        .Q(obs_growth[53]),
        .R(reset));
  FDRE \growth_reg[27][0] 
       (.C(clk),
        .CE(\growth[27][1]_i_1_n_0 ),
        .D(\growth[27][0]_i_1_n_0 ),
        .Q(obs_growth[54]),
        .R(reset));
  FDRE \growth_reg[27][1] 
       (.C(clk),
        .CE(\growth[27][1]_i_1_n_0 ),
        .D(\growth[27][1]_i_2_n_0 ),
        .Q(obs_growth[55]),
        .R(reset));
  FDRE \growth_reg[28][0] 
       (.C(clk),
        .CE(\growth[28][1]_i_1_n_0 ),
        .D(\growth[28][0]_i_1_n_0 ),
        .Q(obs_growth[56]),
        .R(reset));
  FDRE \growth_reg[28][1] 
       (.C(clk),
        .CE(\growth[28][1]_i_1_n_0 ),
        .D(\growth[28][1]_i_2_n_0 ),
        .Q(obs_growth[57]),
        .R(reset));
  FDRE \growth_reg[29][0] 
       (.C(clk),
        .CE(\growth[29][1]_i_1_n_0 ),
        .D(\growth[29][0]_i_1_n_0 ),
        .Q(obs_growth[58]),
        .R(reset));
  FDRE \growth_reg[29][1] 
       (.C(clk),
        .CE(\growth[29][1]_i_1_n_0 ),
        .D(\growth[29][1]_i_2_n_0 ),
        .Q(obs_growth[59]),
        .R(reset));
  FDRE \growth_reg[2][0] 
       (.C(clk),
        .CE(\growth[2][1]_i_1_n_0 ),
        .D(\growth[2][0]_i_1_n_0 ),
        .Q(obs_growth[4]),
        .R(reset));
  FDRE \growth_reg[2][1] 
       (.C(clk),
        .CE(\growth[2][1]_i_1_n_0 ),
        .D(\growth[2][1]_i_2_n_0 ),
        .Q(obs_growth[5]),
        .R(reset));
  FDRE \growth_reg[30][0] 
       (.C(clk),
        .CE(\growth[30][1]_i_1_n_0 ),
        .D(\growth[30][0]_i_1_n_0 ),
        .Q(obs_growth[60]),
        .R(reset));
  FDRE \growth_reg[30][1] 
       (.C(clk),
        .CE(\growth[30][1]_i_1_n_0 ),
        .D(\growth[30][1]_i_2_n_0 ),
        .Q(obs_growth[61]),
        .R(reset));
  FDRE \growth_reg[31][0] 
       (.C(clk),
        .CE(\growth[31][1]_i_1_n_0 ),
        .D(\growth[31][0]_i_1_n_0 ),
        .Q(obs_growth[62]),
        .R(reset));
  FDRE \growth_reg[31][1] 
       (.C(clk),
        .CE(\growth[31][1]_i_1_n_0 ),
        .D(\growth[31][1]_i_2_n_0 ),
        .Q(obs_growth[63]),
        .R(reset));
  FDRE \growth_reg[32][0] 
       (.C(clk),
        .CE(\growth[32][1]_i_1_n_0 ),
        .D(\growth[32][0]_i_1_n_0 ),
        .Q(obs_growth[64]),
        .R(reset));
  FDRE \growth_reg[32][1] 
       (.C(clk),
        .CE(\growth[32][1]_i_1_n_0 ),
        .D(\growth[32][1]_i_2_n_0 ),
        .Q(obs_growth[65]),
        .R(reset));
  FDRE \growth_reg[33][0] 
       (.C(clk),
        .CE(\growth[33][1]_i_1_n_0 ),
        .D(\growth[33][0]_i_1_n_0 ),
        .Q(obs_growth[66]),
        .R(reset));
  FDRE \growth_reg[33][1] 
       (.C(clk),
        .CE(\growth[33][1]_i_1_n_0 ),
        .D(\growth[33][1]_i_2_n_0 ),
        .Q(obs_growth[67]),
        .R(reset));
  FDRE \growth_reg[34][0] 
       (.C(clk),
        .CE(\growth[34][1]_i_1_n_0 ),
        .D(\growth[34][0]_i_1_n_0 ),
        .Q(obs_growth[68]),
        .R(reset));
  FDRE \growth_reg[34][1] 
       (.C(clk),
        .CE(\growth[34][1]_i_1_n_0 ),
        .D(\growth[34][1]_i_2_n_0 ),
        .Q(obs_growth[69]),
        .R(reset));
  FDRE \growth_reg[35][0] 
       (.C(clk),
        .CE(\growth[35][1]_i_1_n_0 ),
        .D(\growth[35][0]_i_1_n_0 ),
        .Q(obs_growth[70]),
        .R(reset));
  FDRE \growth_reg[35][1] 
       (.C(clk),
        .CE(\growth[35][1]_i_1_n_0 ),
        .D(\growth[35][1]_i_2_n_0 ),
        .Q(obs_growth[71]),
        .R(reset));
  FDRE \growth_reg[36][0] 
       (.C(clk),
        .CE(\growth[36][1]_i_1_n_0 ),
        .D(\growth[36][0]_i_1_n_0 ),
        .Q(obs_growth[72]),
        .R(reset));
  FDRE \growth_reg[36][1] 
       (.C(clk),
        .CE(\growth[36][1]_i_1_n_0 ),
        .D(\growth[36][1]_i_2_n_0 ),
        .Q(obs_growth[73]),
        .R(reset));
  FDRE \growth_reg[37][0] 
       (.C(clk),
        .CE(\growth[37][1]_i_1_n_0 ),
        .D(\growth[37][0]_i_1_n_0 ),
        .Q(obs_growth[74]),
        .R(reset));
  FDRE \growth_reg[37][1] 
       (.C(clk),
        .CE(\growth[37][1]_i_1_n_0 ),
        .D(\growth[37][1]_i_2_n_0 ),
        .Q(obs_growth[75]),
        .R(reset));
  FDRE \growth_reg[38][0] 
       (.C(clk),
        .CE(\growth[38][1]_i_1_n_0 ),
        .D(\growth[38][0]_i_1_n_0 ),
        .Q(obs_growth[76]),
        .R(reset));
  FDRE \growth_reg[38][1] 
       (.C(clk),
        .CE(\growth[38][1]_i_1_n_0 ),
        .D(\growth[38][1]_i_2_n_0 ),
        .Q(obs_growth[77]),
        .R(reset));
  FDRE \growth_reg[39][0] 
       (.C(clk),
        .CE(\growth[39][1]_i_1_n_0 ),
        .D(\growth[39][0]_i_1_n_0 ),
        .Q(obs_growth[78]),
        .R(reset));
  FDRE \growth_reg[39][1] 
       (.C(clk),
        .CE(\growth[39][1]_i_1_n_0 ),
        .D(\growth[39][1]_i_2_n_0 ),
        .Q(obs_growth[79]),
        .R(reset));
  FDRE \growth_reg[3][0] 
       (.C(clk),
        .CE(\growth[3][1]_i_1_n_0 ),
        .D(\growth[3][0]_i_1_n_0 ),
        .Q(obs_growth[6]),
        .R(reset));
  FDRE \growth_reg[3][1] 
       (.C(clk),
        .CE(\growth[3][1]_i_1_n_0 ),
        .D(\growth[3][1]_i_2_n_0 ),
        .Q(obs_growth[7]),
        .R(reset));
  FDRE \growth_reg[40][0] 
       (.C(clk),
        .CE(\growth[40][1]_i_1_n_0 ),
        .D(\growth[40][0]_i_1_n_0 ),
        .Q(obs_growth[80]),
        .R(reset));
  FDRE \growth_reg[40][1] 
       (.C(clk),
        .CE(\growth[40][1]_i_1_n_0 ),
        .D(\growth[40][1]_i_2_n_0 ),
        .Q(obs_growth[81]),
        .R(reset));
  FDRE \growth_reg[4][0] 
       (.C(clk),
        .CE(\growth[4][1]_i_1_n_0 ),
        .D(\growth[4][0]_i_1_n_0 ),
        .Q(obs_growth[8]),
        .R(reset));
  FDRE \growth_reg[4][1] 
       (.C(clk),
        .CE(\growth[4][1]_i_1_n_0 ),
        .D(\growth[4][1]_i_2_n_0 ),
        .Q(obs_growth[9]),
        .R(reset));
  FDRE \growth_reg[5][0] 
       (.C(clk),
        .CE(\growth[5][1]_i_1_n_0 ),
        .D(\growth[5][0]_i_1_n_0 ),
        .Q(obs_growth[10]),
        .R(reset));
  FDRE \growth_reg[5][1] 
       (.C(clk),
        .CE(\growth[5][1]_i_1_n_0 ),
        .D(\growth[5][1]_i_2_n_0 ),
        .Q(obs_growth[11]),
        .R(reset));
  FDRE \growth_reg[6][0] 
       (.C(clk),
        .CE(\growth[6][1]_i_1_n_0 ),
        .D(\growth[6][0]_i_1_n_0 ),
        .Q(obs_growth[12]),
        .R(reset));
  FDRE \growth_reg[6][1] 
       (.C(clk),
        .CE(\growth[6][1]_i_1_n_0 ),
        .D(\growth[6][1]_i_2_n_0 ),
        .Q(obs_growth[13]),
        .R(reset));
  FDRE \growth_reg[7][0] 
       (.C(clk),
        .CE(\growth[7][1]_i_1_n_0 ),
        .D(\growth[7][0]_i_1_n_0 ),
        .Q(obs_growth[14]),
        .R(reset));
  FDRE \growth_reg[7][1] 
       (.C(clk),
        .CE(\growth[7][1]_i_1_n_0 ),
        .D(\growth[7][1]_i_2_n_0 ),
        .Q(obs_growth[15]),
        .R(reset));
  FDRE \growth_reg[8][0] 
       (.C(clk),
        .CE(\growth[8][1]_i_1_n_0 ),
        .D(\growth[8][0]_i_1_n_0 ),
        .Q(obs_growth[16]),
        .R(reset));
  FDRE \growth_reg[8][1] 
       (.C(clk),
        .CE(\growth[8][1]_i_1_n_0 ),
        .D(\growth[8][1]_i_2_n_0 ),
        .Q(obs_growth[17]),
        .R(reset));
  FDRE \growth_reg[9][0] 
       (.C(clk),
        .CE(\growth[9][1]_i_1_n_0 ),
        .D(\growth[9][0]_i_1_n_0 ),
        .Q(obs_growth[18]),
        .R(reset));
  FDRE \growth_reg[9][1] 
       (.C(clk),
        .CE(\growth[9][1]_i_1_n_0 ),
        .D(\growth[9][1]_i_2_n_0 ),
        .Q(obs_growth[19]),
        .R(reset));
  LUT1 #(
    .INIT(2'h1)) 
    \ptr[0][1]_i_1 
       (.I0(\ptr[0][1]_i_2_n_0 ),
        .O(\ptr[0][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0F000F0F0F4F0F0F)) 
    \ptr[0][1]_i_2 
       (.I0(obs_unrooted[0]),
        .I1(\cid[14][2]_i_2_n_0 ),
        .I2(\^obs_ptr [1]),
        .I3(\cid[2][4]_i_2_n_0 ),
        .I4(\ptr[10][0]_i_6_n_0 ),
        .I5(\cid[0][5]_i_4_n_0 ),
        .O(\ptr[0][1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFF8F8F8F88888888)) 
    \ptr[10][0]_i_1 
       (.I0(\^obs_ptr [30]),
        .I1(\cid[14][2]_i_2_n_0 ),
        .I2(\ptr[10][0]_i_2_n_0 ),
        .I3(\cid[10][5]_i_2_n_0 ),
        .I4(\ptr[10][0]_i_3_n_0 ),
        .I5(\ptr[10][0]_i_4_n_0 ),
        .O(\ptr[10][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBB2BFFFFBB2BBB2B)) 
    \ptr[10][0]_i_10 
       (.I0(obs_cid[85]),
        .I1(\cid[10][1]_i_3_n_0 ),
        .I2(\cid[10][0]_i_3_n_0 ),
        .I3(obs_cid[84]),
        .I4(\cid[10][2]_i_3_n_0 ),
        .I5(obs_cid[86]),
        .O(\ptr[10][0]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair154" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    \ptr[10][0]_i_11 
       (.I0(\cid[10][3]_i_3_n_0 ),
        .I1(obs_cid[87]),
        .I2(\cid[10][4]_i_3_n_0 ),
        .I3(obs_cid[88]),
        .O(\ptr[10][0]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFFB0FF00FFFFFFB0)) 
    \ptr[10][0]_i_12 
       (.I0(obs_cid[2]),
        .I1(obs_cid[62]),
        .I2(\ptr[10][0]_i_13_n_0 ),
        .I3(\ptr[10][0]_i_14_n_0 ),
        .I4(obs_cid[3]),
        .I5(obs_cid[63]),
        .O(\ptr[10][0]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hBBFB00F0FFFFBBFB)) 
    \ptr[10][0]_i_13 
       (.I0(obs_cid[0]),
        .I1(obs_cid[60]),
        .I2(obs_cid[2]),
        .I3(obs_cid[62]),
        .I4(obs_cid[1]),
        .I5(obs_cid[61]),
        .O(\ptr[10][0]_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ptr[10][0]_i_14 
       (.I0(obs_cid[4]),
        .I1(obs_cid[64]),
        .O(\ptr[10][0]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF444F4F4F)) 
    \ptr[10][0]_i_2 
       (.I0(\ptr[10][0]_i_5_n_0 ),
        .I1(\cid[10][5]_i_5_n_0 ),
        .I2(\^obs_ptr [30]),
        .I3(\ptr[10][0]_i_6_n_0 ),
        .I4(\ptr[10][0]_i_7_n_0 ),
        .I5(\cid[10][5]_i_4_n_0 ),
        .O(\ptr[10][0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hD4D4D4D4DDD4DDDD)) 
    \ptr[10][0]_i_3 
       (.I0(obs_cid[89]),
        .I1(\cid[10][5]_i_3_n_0 ),
        .I2(\ptr[10][0]_i_8_n_0 ),
        .I3(\ptr[10][0]_i_9_n_0 ),
        .I4(\ptr[10][0]_i_10_n_0 ),
        .I5(\ptr[10][0]_i_11_n_0 ),
        .O(\ptr[10][0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair318" *) 
  LUT4 #(
    .INIT(16'h5155)) 
    \ptr[10][0]_i_4 
       (.I0(\cid[14][2]_i_2_n_0 ),
        .I1(\cid[18][4]_i_2_n_0 ),
        .I2(obs_unrooted[10]),
        .I3(\cid[10][5]_i_2_n_0 ),
        .O(\ptr[10][0]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair396" *) 
  LUT3 #(
    .INIT(8'h0B)) 
    \ptr[10][0]_i_5 
       (.I0(obs_unrooted[10]),
        .I1(\cid[15][3]_i_2_n_0 ),
        .I2(\cid[10][4]_i_5_n_0 ),
        .O(\ptr[10][0]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair279" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ptr[10][0]_i_6 
       (.I0(obs_growth[1]),
        .I1(obs_growth[0]),
        .O(\ptr[10][0]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h4F04FF0F)) 
    \ptr[10][0]_i_7 
       (.I0(obs_cid[4]),
        .I1(obs_cid[64]),
        .I2(obs_cid[5]),
        .I3(obs_cid[65]),
        .I4(\ptr[10][0]_i_12_n_0 ),
        .O(\ptr[10][0]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair314" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ptr[10][0]_i_8 
       (.I0(\cid[10][4]_i_3_n_0 ),
        .I1(obs_cid[88]),
        .O(\ptr[10][0]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair153" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    \ptr[10][0]_i_9 
       (.I0(obs_cid[87]),
        .I1(\cid[10][3]_i_3_n_0 ),
        .I2(obs_cid[86]),
        .I3(\cid[10][2]_i_3_n_0 ),
        .O(\ptr[10][0]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair405" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \ptr[10][1]_i_1 
       (.I0(\defect[10]_i_2_n_0 ),
        .O(\ptr[10][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000AAEAAAEA)) 
    \ptr[11][0]_i_1 
       (.I0(\ptr[11][0]_i_2_n_0 ),
        .I1(\ptr[11][1]_i_3_n_0 ),
        .I2(\cid[11][5]_i_3_n_0 ),
        .I3(\cid[19][5]_i_3_n_0 ),
        .I4(\^obs_ptr [33]),
        .I5(\cid[15][3]_i_2_n_0 ),
        .O(\ptr[11][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFF8AAA)) 
    \ptr[11][0]_i_2 
       (.I0(\^obs_ptr [33]),
        .I1(obs_unrooted[11]),
        .I2(\cid[14][2]_i_2_n_0 ),
        .I3(\cid[10][5]_i_5_n_0 ),
        .I4(\ptr[11][1]_i_5_n_0 ),
        .I5(\ptr[11][0]_i_3_n_0 ),
        .O(\ptr[11][0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h7733750075007500)) 
    \ptr[11][0]_i_3 
       (.I0(\cid[11][4]_i_6_n_0 ),
        .I1(obs_unrooted[11]),
        .I2(\cid[16][4]_i_3_n_0 ),
        .I3(\cid[11][4]_i_5_n_0 ),
        .I4(\cid[11][5]_i_3_n_0 ),
        .I5(\cid[19][5]_i_3_n_0 ),
        .O(\ptr[11][0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000AAEAAAEA)) 
    \ptr[11][1]_i_1 
       (.I0(\ptr[11][1]_i_2_n_0 ),
        .I1(\ptr[11][1]_i_3_n_0 ),
        .I2(\cid[11][5]_i_3_n_0 ),
        .I3(\cid[19][5]_i_3_n_0 ),
        .I4(\^obs_ptr [34]),
        .I5(\cid[15][3]_i_2_n_0 ),
        .O(\ptr[11][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0455040404040404)) 
    \ptr[11][1]_i_2 
       (.I0(\ptr[11][1]_i_4_n_0 ),
        .I1(\cid[11][4]_i_5_n_0 ),
        .I2(\cid[11][4]_i_6_n_0 ),
        .I3(\ptr[11][1]_i_5_n_0 ),
        .I4(\ptr[11][1]_i_6_n_0 ),
        .I5(\^obs_ptr [34]),
        .O(\ptr[11][1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h4D44DDDD)) 
    \ptr[11][1]_i_3 
       (.I0(obs_cid[95]),
        .I1(\cid[11][5]_i_2_n_0 ),
        .I2(obs_cid[94]),
        .I3(\cid[11][4]_i_3_n_0 ),
        .I4(\ptr[11][1]_i_7_n_0 ),
        .O(\ptr[11][1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair336" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \ptr[11][1]_i_4 
       (.I0(\cid[11][5]_i_3_n_0 ),
        .I1(obs_unrooted[11]),
        .I2(\cid[19][5]_i_3_n_0 ),
        .O(\ptr[11][1]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h20)) 
    \ptr[11][1]_i_5 
       (.I0(\cid[11][4]_i_7_n_0 ),
        .I1(obs_growth[10]),
        .I2(obs_growth[11]),
        .O(\ptr[11][1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF77077777)) 
    \ptr[11][1]_i_6 
       (.I0(\cid[14][2]_i_2_n_0 ),
        .I1(\cid[10][5]_i_5_n_0 ),
        .I2(obs_growth[13]),
        .I3(obs_growth[12]),
        .I4(\cid[16][4]_i_3_n_0 ),
        .I5(obs_unrooted[11]),
        .O(\ptr[11][1]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFB200FFB2)) 
    \ptr[11][1]_i_7 
       (.I0(obs_cid[92]),
        .I1(\cid[11][2]_i_3_n_0 ),
        .I2(\ptr[11][1]_i_8_n_0 ),
        .I3(obs_cid[93]),
        .I4(\cid[11][3]_i_3_n_0 ),
        .I5(\ptr[11][1]_i_9_n_0 ),
        .O(\ptr[11][1]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hEF0E)) 
    \ptr[11][1]_i_8 
       (.I0(obs_cid[90]),
        .I1(\cid[11][0]_i_3_n_0 ),
        .I2(\cid[11][1]_i_3_n_0 ),
        .I3(obs_cid[91]),
        .O(\ptr[11][1]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ptr[11][1]_i_9 
       (.I0(obs_cid[94]),
        .I1(\cid[11][4]_i_3_n_0 ),
        .O(\ptr[11][1]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h888888B8BBBB88BB)) 
    \ptr[12][0]_i_1 
       (.I0(\^obs_ptr [36]),
        .I1(\cid[16][4]_i_3_n_0 ),
        .I2(\ptr[12][0]_i_2_n_0 ),
        .I3(\ptr[12][0]_i_3_n_0 ),
        .I4(\cid[12][5]_i_2_n_0 ),
        .I5(\ptr[12][0]_i_4_n_0 ),
        .O(\ptr[12][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair171" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \ptr[12][0]_i_10 
       (.I0(obs_growth[12]),
        .I1(obs_growth[13]),
        .I2(\cid[12][4]_i_7_n_0 ),
        .O(\ptr[12][0]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hD4D4D4D4DDD4DDDD)) 
    \ptr[12][0]_i_2 
       (.I0(obs_cid[101]),
        .I1(\cid[12][5]_i_3_n_0 ),
        .I2(\ptr[12][0]_i_5_n_0 ),
        .I3(\ptr[12][0]_i_6_n_0 ),
        .I4(\ptr[12][0]_i_7_n_0 ),
        .I5(\ptr[12][0]_i_8_n_0 ),
        .O(\ptr[12][0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair344" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ptr[12][0]_i_3 
       (.I0(\cid[20][4]_i_2_n_0 ),
        .I1(obs_unrooted[12]),
        .O(\ptr[12][0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00C400C4FFC4FFFF)) 
    \ptr[12][0]_i_4 
       (.I0(\cid[12][4]_i_6_n_0 ),
        .I1(\cid[12][5]_i_4_n_0 ),
        .I2(\ptr[12][0]_i_9_n_0 ),
        .I3(\cid[12][5]_i_5_n_0 ),
        .I4(\^obs_ptr [36]),
        .I5(\ptr[12][0]_i_10_n_0 ),
        .O(\ptr[12][0]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair312" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ptr[12][0]_i_5 
       (.I0(\cid[12][4]_i_3_n_0 ),
        .I1(obs_cid[100]),
        .O(\ptr[12][0]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \ptr[12][0]_i_6 
       (.I0(obs_cid[99]),
        .I1(\cid[12][3]_i_3_n_0 ),
        .I2(obs_cid[98]),
        .I3(\cid[12][2]_i_3_n_0 ),
        .O(\ptr[12][0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hBB2BFFFFBB2BBB2B)) 
    \ptr[12][0]_i_7 
       (.I0(obs_cid[97]),
        .I1(\cid[12][1]_i_3_n_0 ),
        .I2(\cid[12][0]_i_3_n_0 ),
        .I3(obs_cid[96]),
        .I4(\cid[12][2]_i_3_n_0 ),
        .I5(obs_cid[98]),
        .O(\ptr[12][0]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair170" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    \ptr[12][0]_i_8 
       (.I0(\cid[12][4]_i_3_n_0 ),
        .I1(obs_cid[100]),
        .I2(\cid[12][3]_i_3_n_0 ),
        .I3(obs_cid[99]),
        .O(\ptr[12][0]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair410" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ptr[12][0]_i_9 
       (.I0(\cid[17][4]_i_3_n_0 ),
        .I1(obs_unrooted[12]),
        .O(\ptr[12][0]_i_9_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \ptr[12][1]_i_1 
       (.I0(\defect[12]_i_2_n_0 ),
        .O(\ptr[12][1]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \ptr[13][0]_i_1 
       (.I0(\ptr[13][0]_i_2_n_0 ),
        .O(\ptr[13][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h5555FFFF55550CCC)) 
    \ptr[13][0]_i_2 
       (.I0(\^obs_ptr [39]),
        .I1(\ptr[13][0]_i_3_n_0 ),
        .I2(\cid[13][5]_i_3_n_0 ),
        .I3(\cid[13][4]_i_4_n_0 ),
        .I4(\cid[17][4]_i_3_n_0 ),
        .I5(\ptr[13][1]_i_4_n_0 ),
        .O(\ptr[13][0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFC0CCD5DDC0CC)) 
    \ptr[13][0]_i_3 
       (.I0(\cid[13][4]_i_6_n_0 ),
        .I1(\ptr[13][1]_i_5_n_0 ),
        .I2(\ptr[13][0]_i_4_n_0 ),
        .I3(\^obs_ptr [39]),
        .I4(\cid[13][5]_i_7_n_0 ),
        .I5(\ptr[13][0]_i_5_n_0 ),
        .O(\ptr[13][0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair320" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    \ptr[13][0]_i_4 
       (.I0(obs_unrooted[13]),
        .I1(\cid[16][4]_i_3_n_0 ),
        .I2(obs_growth[14]),
        .I3(obs_growth[15]),
        .O(\ptr[13][0]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ptr[13][0]_i_5 
       (.I0(\cid[3][4]_i_2_n_0 ),
        .I1(obs_unrooted[13]),
        .O(\ptr[13][0]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \ptr[13][1]_i_1 
       (.I0(\ptr[13][1]_i_2_n_0 ),
        .O(\ptr[13][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h5555FFFF55550333)) 
    \ptr[13][1]_i_2 
       (.I0(\^obs_ptr [40]),
        .I1(\ptr[13][1]_i_3_n_0 ),
        .I2(\cid[13][5]_i_3_n_0 ),
        .I3(\cid[13][4]_i_4_n_0 ),
        .I4(\cid[17][4]_i_3_n_0 ),
        .I5(\ptr[13][1]_i_4_n_0 ),
        .O(\ptr[13][1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hF4444444)) 
    \ptr[13][1]_i_3 
       (.I0(\cid[13][4]_i_6_n_0 ),
        .I1(\cid[13][5]_i_7_n_0 ),
        .I2(\^obs_ptr [40]),
        .I3(\cid[13][5]_i_5_n_0 ),
        .I4(\ptr[13][1]_i_5_n_0 ),
        .O(\ptr[13][1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair349" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \ptr[13][1]_i_4 
       (.I0(\cid[13][5]_i_3_n_0 ),
        .I1(obs_unrooted[13]),
        .I2(\cid[21][4]_i_2_n_0 ),
        .O(\ptr[13][1]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair320" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    \ptr[13][1]_i_5 
       (.I0(\cid[13][4]_i_8_n_0 ),
        .I1(obs_growth[14]),
        .I2(obs_growth[15]),
        .O(\ptr[13][1]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair332" *) 
  LUT3 #(
    .INIT(8'h8B)) 
    \ptr[14][0]_i_1 
       (.I0(\^obs_ptr [30]),
        .I1(\FSM_sequential_stage_reg[1]_rep__1_n_0 ),
        .I2(\defect[14]_i_3_n_0 ),
        .O(\ptr[14][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair331" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ptr[14][1]_i_1 
       (.I0(\^obs_ptr [31]),
        .I1(\FSM_sequential_stage_reg[1]_rep__1_n_0 ),
        .I2(\defect[14]_i_2_n_0 ),
        .O(\ptr[14][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair292" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ptr[14][2]_i_1 
       (.I0(\ptr[14][2]_i_2_n_0 ),
        .I1(\FSM_sequential_stage_reg[1]_rep__1_n_0 ),
        .O(\ptr[14][2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000FF20FF20)) 
    \ptr[14][2]_i_2 
       (.I0(\cid[14][5]_i_3_n_0 ),
        .I1(\cid[14][2]_i_2_n_0 ),
        .I2(\cid[14][4]_i_7_n_0 ),
        .I3(\ptr[14][2]_i_3_n_0 ),
        .I4(\^obs_ptr [44]),
        .I5(\cid[18][4]_i_2_n_0 ),
        .O(\ptr[14][2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000800)) 
    \ptr[14][2]_i_3 
       (.I0(\ptr[14][2]_i_4_n_0 ),
        .I1(\cid[14][5]_i_10_n_0 ),
        .I2(\ptr[14][2]_i_5_n_0 ),
        .I3(\^obs_ptr [44]),
        .I4(\cid[14][5]_i_4_n_0 ),
        .I5(\defect[14]_i_9_n_0 ),
        .O(\ptr[14][2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FBFFFFFF)) 
    \ptr[14][2]_i_4 
       (.I0(obs_unrooted[14]),
        .I1(\cid[22][2]_i_3_n_0 ),
        .I2(obs_growth[34]),
        .I3(obs_growth[35]),
        .I4(\cid[14][5]_i_10_n_0 ),
        .I5(\defect[14]_i_8_n_0 ),
        .O(\ptr[14][2]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair182" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \ptr[14][2]_i_5 
       (.I0(obs_growth[2]),
        .I1(obs_growth[3]),
        .I2(\cid[14][4]_i_18_n_0 ),
        .O(\ptr[14][2]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair339" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ptr[15][0]_i_1 
       (.I0(\^obs_ptr [33]),
        .I1(\FSM_sequential_stage_reg[1]_rep__3_n_0 ),
        .I2(\ptr[15][0]_i_2_n_0 ),
        .O(\ptr[15][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8F8F888F8F8F8F8F)) 
    \ptr[15][0]_i_2 
       (.I0(\cid[19][5]_i_3_n_0 ),
        .I1(\^obs_ptr [45]),
        .I2(\ptr[15][0]_i_3_n_0 ),
        .I3(\cid[15][5]_i_3_n_0 ),
        .I4(\cid[15][3]_i_2_n_0 ),
        .I5(\cid[15][4]_i_8_n_0 ),
        .O(\ptr[15][0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBFBBBFBFAAAAAAAA)) 
    \ptr[15][0]_i_3 
       (.I0(\ptr[15][1]_i_5_n_0 ),
        .I1(\defect[15]_i_11_n_0 ),
        .I2(\defect[15]_i_8_n_0 ),
        .I3(\defect[15]_i_9_n_0 ),
        .I4(\^obs_ptr [45]),
        .I5(\defect[15]_i_7_n_0 ),
        .O(\ptr[15][0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair338" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ptr[15][1]_i_1 
       (.I0(\^obs_ptr [34]),
        .I1(\FSM_sequential_stage_reg[1]_rep__3_n_0 ),
        .I2(\ptr[15][1]_i_2_n_0 ),
        .O(\ptr[15][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8F8F888F8F8F8F8F)) 
    \ptr[15][1]_i_2 
       (.I0(\cid[19][5]_i_3_n_0 ),
        .I1(\^obs_ptr [46]),
        .I2(\ptr[15][1]_i_3_n_0 ),
        .I3(\cid[15][5]_i_3_n_0 ),
        .I4(\cid[15][3]_i_2_n_0 ),
        .I5(\cid[15][4]_i_8_n_0 ),
        .O(\ptr[15][1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF55450000)) 
    \ptr[15][1]_i_3 
       (.I0(\ptr[15][1]_i_4_n_0 ),
        .I1(\defect[15]_i_8_n_0 ),
        .I2(\^obs_ptr [46]),
        .I3(\cid[15][5]_i_5_n_0 ),
        .I4(\defect[15]_i_7_n_0 ),
        .I5(\ptr[15][1]_i_5_n_0 ),
        .O(\ptr[15][1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAA8AAA00000000)) 
    \ptr[15][1]_i_4 
       (.I0(\cid[15][4]_i_11_n_0 ),
        .I1(obs_growth[20]),
        .I2(obs_growth[21]),
        .I3(\cid[18][4]_i_2_n_0 ),
        .I4(obs_unrooted[15]),
        .I5(\cid[15][5]_i_7_n_0 ),
        .O(\ptr[15][1]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair169" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \ptr[15][1]_i_5 
       (.I0(\cid[19][5]_i_3_n_0 ),
        .I1(\defect[15]_i_10_n_0 ),
        .O(\ptr[15][1]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair339" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ptr[15][2]_i_1 
       (.I0(\defect[15]_i_2_n_0 ),
        .I1(\FSM_sequential_stage_reg[1]_rep__3_n_0 ),
        .O(\ptr[15][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair347" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ptr[16][0]_i_1 
       (.I0(\^obs_ptr [36]),
        .I1(\FSM_sequential_stage_reg[1]_rep__3_n_0 ),
        .I2(\ptr[16][0]_i_2_n_0 ),
        .O(\ptr[16][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8F8F888F8F8F8F8F)) 
    \ptr[16][0]_i_2 
       (.I0(\cid[20][4]_i_2_n_0 ),
        .I1(\^obs_ptr [48]),
        .I2(\ptr[16][0]_i_3_n_0 ),
        .I3(\cid[16][5]_i_3_n_0 ),
        .I4(\cid[16][4]_i_3_n_0 ),
        .I5(\cid[16][4]_i_6_n_0 ),
        .O(\ptr[16][0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFF45)) 
    \ptr[16][0]_i_3 
       (.I0(\ptr[16][1]_i_4_n_0 ),
        .I1(\ptr[16][0]_i_4_n_0 ),
        .I2(\defect[16]_i_7_n_0 ),
        .I3(\cid[20][4]_i_2_n_0 ),
        .I4(\cid[16][5]_i_8_n_0 ),
        .I5(\cid[16][5]_i_5_n_0 ),
        .O(\ptr[16][0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000055557555)) 
    \ptr[16][0]_i_4 
       (.I0(\^obs_ptr [48]),
        .I1(obs_growth[24]),
        .I2(obs_growth[25]),
        .I3(\cid[19][5]_i_3_n_0 ),
        .I4(obs_unrooted[16]),
        .I5(\defect[16]_i_8_n_0 ),
        .O(\ptr[16][0]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair347" *) 
  LUT3 #(
    .INIT(8'hC5)) 
    \ptr[16][1]_i_1 
       (.I0(\ptr[16][1]_i_2_n_0 ),
        .I1(\^obs_ptr [37]),
        .I2(\FSM_sequential_stage_reg[1]_rep__3_n_0 ),
        .O(\ptr[16][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7070777070707070)) 
    \ptr[16][1]_i_2 
       (.I0(\^obs_ptr [49]),
        .I1(\cid[20][4]_i_2_n_0 ),
        .I2(\ptr[16][1]_i_3_n_0 ),
        .I3(\cid[16][5]_i_3_n_0 ),
        .I4(\cid[16][4]_i_3_n_0 ),
        .I5(\cid[16][4]_i_6_n_0 ),
        .O(\ptr[16][1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF44F44444)) 
    \ptr[16][1]_i_3 
       (.I0(\ptr[16][1]_i_4_n_0 ),
        .I1(\ptr[16][1]_i_5_n_0 ),
        .I2(\cid[16][5]_i_3_n_0 ),
        .I3(obs_unrooted[16]),
        .I4(\cid[16][4]_i_3_n_0 ),
        .I5(\cid[20][4]_i_2_n_0 ),
        .O(\ptr[16][1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair201" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \ptr[16][1]_i_4 
       (.I0(\cid[16][3]_i_7_n_0 ),
        .I1(\cid[16][5]_i_9_n_0 ),
        .O(\ptr[16][1]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAFFBF)) 
    \ptr[16][1]_i_5 
       (.I0(\cid[16][5]_i_8_n_0 ),
        .I1(\^obs_ptr [49]),
        .I2(\cid[16][5]_i_7_n_0 ),
        .I3(\defect[16]_i_8_n_0 ),
        .I4(\defect[16]_i_9_n_0 ),
        .O(\ptr[16][1]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair330" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \ptr[16][2]_i_1 
       (.I0(\FSM_sequential_stage_reg[1]_rep__3_n_0 ),
        .I1(\defect[16]_i_2_n_0 ),
        .O(\ptr[16][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair350" *) 
  LUT3 #(
    .INIT(8'hC5)) 
    \ptr[17][0]_i_1 
       (.I0(\defect[17]_i_2_n_0 ),
        .I1(\^obs_ptr [39]),
        .I2(\FSM_sequential_stage_reg[1]_rep__3_n_0 ),
        .O(\ptr[17][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair351" *) 
  LUT3 #(
    .INIT(8'hC5)) 
    \ptr[17][1]_i_1 
       (.I0(\defect[17]_i_3_n_0 ),
        .I1(\^obs_ptr [40]),
        .I2(\FSM_sequential_stage_reg[1]_rep__3_n_0 ),
        .O(\ptr[17][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair351" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ptr[17][2]_i_1 
       (.I0(\ptr[17][2]_i_2_n_0 ),
        .I1(\FSM_sequential_stage_reg[1]_rep__3_n_0 ),
        .O(\ptr[17][2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000AAEAAAEA)) 
    \ptr[17][2]_i_2 
       (.I0(\ptr[17][2]_i_3_n_0 ),
        .I1(\cid[17][4]_i_6_n_0 ),
        .I2(\cid[17][5]_i_2_n_0 ),
        .I3(\cid[17][4]_i_3_n_0 ),
        .I4(\^obs_ptr [53]),
        .I5(\cid[21][4]_i_2_n_0 ),
        .O(\ptr[17][2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000100)) 
    \ptr[17][2]_i_3 
       (.I0(\ptr[17][2]_i_4_n_0 ),
        .I1(\cid[17][5]_i_12_n_0 ),
        .I2(\defect[17]_i_10_n_0 ),
        .I3(\^obs_ptr [53]),
        .I4(\defect[17]_i_9_n_0 ),
        .I5(\defect[17]_i_8_n_0 ),
        .O(\ptr[17][2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF04000000)) 
    \ptr[17][2]_i_4 
       (.I0(obs_unrooted[17]),
        .I1(\cid[25][4]_i_2_n_0 ),
        .I2(obs_growth[48]),
        .I3(obs_growth[49]),
        .I4(\cid[17][5]_i_7_n_0 ),
        .I5(\cid[17][5]_i_4_n_0 ),
        .O(\ptr[17][2]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair358" *) 
  LUT3 #(
    .INIT(8'h8B)) 
    \ptr[18][0]_i_1 
       (.I0(\^obs_ptr [42]),
        .I1(\FSM_sequential_stage_reg[1]_rep__3_n_0 ),
        .I2(\ptr[18][0]_i_2_n_0 ),
        .O(\ptr[18][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7070777070707070)) 
    \ptr[18][0]_i_2 
       (.I0(\^obs_ptr [54]),
        .I1(\cid[22][2]_i_3_n_0 ),
        .I2(\ptr[18][0]_i_3_n_0 ),
        .I3(\cid[18][5]_i_4_n_0 ),
        .I4(\cid[18][4]_i_2_n_0 ),
        .I5(\cid[18][4]_i_6_n_0 ),
        .O(\ptr[18][0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFF10000)) 
    \ptr[18][0]_i_3 
       (.I0(\^obs_ptr [54]),
        .I1(\ptr[18][0]_i_4_n_0 ),
        .I2(\cid[18][5]_i_13_n_0 ),
        .I3(\defect[18]_i_9_n_0 ),
        .I4(\defect[18]_i_6_n_0 ),
        .I5(\ptr[18][0]_i_5_n_0 ),
        .O(\ptr[18][0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \ptr[18][0]_i_4 
       (.I0(obs_growth[4]),
        .I1(obs_growth[5]),
        .I2(\cid[18][3]_i_13_n_0 ),
        .O(\ptr[18][0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF0000F888)) 
    \ptr[18][0]_i_5 
       (.I0(\cid[26][3]_i_4_n_0 ),
        .I1(\cid[18][5]_i_7_n_0 ),
        .I2(\cid[18][5]_i_4_n_0 ),
        .I3(\cid[18][4]_i_2_n_0 ),
        .I4(obs_unrooted[18]),
        .I5(\cid[22][2]_i_3_n_0 ),
        .O(\ptr[18][0]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair358" *) 
  LUT3 #(
    .INIT(8'hC5)) 
    \ptr[18][1]_i_1 
       (.I0(\ptr[18][1]_i_2_n_0 ),
        .I1(\^obs_ptr [43]),
        .I2(\FSM_sequential_stage_reg[1]_rep__3_n_0 ),
        .O(\ptr[18][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7070777070707070)) 
    \ptr[18][1]_i_2 
       (.I0(\cid[22][2]_i_3_n_0 ),
        .I1(\^obs_ptr [55]),
        .I2(\ptr[18][1]_i_3_n_0 ),
        .I3(\cid[18][5]_i_4_n_0 ),
        .I4(\cid[18][4]_i_2_n_0 ),
        .I5(\cid[18][4]_i_6_n_0 ),
        .O(\ptr[18][1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF0D0000)) 
    \ptr[18][1]_i_3 
       (.I0(\^obs_ptr [55]),
        .I1(\defect[18]_i_7_n_0 ),
        .I2(\defect[18]_i_9_n_0 ),
        .I3(\ptr[18][1]_i_4_n_0 ),
        .I4(\defect[18]_i_6_n_0 ),
        .I5(\ptr[18][1]_i_5_n_0 ),
        .O(\ptr[18][1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT5 #(
    .INIT(32'hAAAAAEAA)) 
    \ptr[18][1]_i_4 
       (.I0(\cid[18][5]_i_13_n_0 ),
        .I1(obs_growth[51]),
        .I2(obs_growth[50]),
        .I3(\cid[26][3]_i_4_n_0 ),
        .I4(obs_unrooted[18]),
        .O(\ptr[18][1]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair185" *) 
  LUT4 #(
    .INIT(16'hBAAA)) 
    \ptr[18][1]_i_5 
       (.I0(\cid[22][2]_i_3_n_0 ),
        .I1(obs_unrooted[18]),
        .I2(\cid[18][4]_i_2_n_0 ),
        .I3(\cid[18][5]_i_4_n_0 ),
        .O(\ptr[18][1]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair357" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ptr[18][2]_i_1 
       (.I0(\^obs_ptr [44]),
        .I1(\FSM_sequential_stage_reg[1]_rep__3_n_0 ),
        .I2(\defect[18]_i_2_n_0 ),
        .O(\ptr[18][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair369" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ptr[19][0]_i_1 
       (.I0(\^obs_ptr [45]),
        .I1(\FSM_sequential_stage_reg[1]_rep__3_n_0 ),
        .I2(\ptr[19][0]_i_2_n_0 ),
        .O(\ptr[19][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h888BBBBB88888888)) 
    \ptr[19][0]_i_2 
       (.I0(\^obs_ptr [57]),
        .I1(\cid[23][2]_i_3_n_0 ),
        .I2(\cid[19][4]_i_4_n_0 ),
        .I3(\cid[19][5]_i_6_n_0 ),
        .I4(\cid[19][5]_i_7_n_0 ),
        .I5(\ptr[19][0]_i_3_n_0 ),
        .O(\ptr[19][0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h4044404055555555)) 
    \ptr[19][0]_i_3 
       (.I0(\ptr[19][2]_i_7_n_0 ),
        .I1(\ptr[19][2]_i_8_n_0 ),
        .I2(\ptr[19][2]_i_5_n_0 ),
        .I3(\ptr[19][2]_i_6_n_0 ),
        .I4(\^obs_ptr [57]),
        .I5(\ptr[19][2]_i_4_n_0 ),
        .O(\ptr[19][0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair369" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ptr[19][1]_i_1 
       (.I0(\^obs_ptr [46]),
        .I1(\FSM_sequential_stage_reg[1]_rep__3_n_0 ),
        .I2(\ptr[19][1]_i_2_n_0 ),
        .O(\ptr[19][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h888BBBBB88888888)) 
    \ptr[19][1]_i_2 
       (.I0(\^obs_ptr [58]),
        .I1(\cid[23][2]_i_3_n_0 ),
        .I2(\cid[19][4]_i_4_n_0 ),
        .I3(\cid[19][5]_i_6_n_0 ),
        .I4(\cid[19][5]_i_7_n_0 ),
        .I5(\ptr[19][1]_i_3_n_0 ),
        .O(\ptr[19][1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h4444454455555555)) 
    \ptr[19][1]_i_3 
       (.I0(\ptr[19][2]_i_7_n_0 ),
        .I1(\ptr[19][1]_i_4_n_0 ),
        .I2(\ptr[19][2]_i_5_n_0 ),
        .I3(\^obs_ptr [58]),
        .I4(\cid[19][3]_i_9_n_0 ),
        .I5(\ptr[19][2]_i_4_n_0 ),
        .O(\ptr[19][1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000AA2A0000)) 
    \ptr[19][1]_i_4 
       (.I0(\cid[19][3]_i_13_n_0 ),
        .I1(\cid[19][3]_i_18_n_0 ),
        .I2(\cid[22][2]_i_3_n_0 ),
        .I3(obs_unrooted[19]),
        .I4(obs_growth[41]),
        .I5(obs_growth[40]),
        .O(\ptr[19][1]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair368" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ptr[19][2]_i_1 
       (.I0(\^obs_ptr [47]),
        .I1(\FSM_sequential_stage_reg[1]_rep__3_n_0 ),
        .I2(\ptr[19][2]_i_2_n_0 ),
        .O(\ptr[19][2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBBB888B8BBB8B8B8)) 
    \ptr[19][2]_i_2 
       (.I0(\^obs_ptr [59]),
        .I1(\cid[23][2]_i_3_n_0 ),
        .I2(\ptr[19][2]_i_3_n_0 ),
        .I3(\cid[19][3]_i_4_n_0 ),
        .I4(\cid[19][4]_i_4_n_0 ),
        .I5(\cid[19][5]_i_6_n_0 ),
        .O(\ptr[19][2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000020000000000)) 
    \ptr[19][2]_i_3 
       (.I0(\ptr[19][2]_i_4_n_0 ),
        .I1(\ptr[19][2]_i_5_n_0 ),
        .I2(\ptr[19][2]_i_6_n_0 ),
        .I3(\^obs_ptr [59]),
        .I4(\ptr[19][2]_i_7_n_0 ),
        .I5(\ptr[19][2]_i_8_n_0 ),
        .O(\ptr[19][2]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \ptr[19][2]_i_4 
       (.I0(\cid[19][3]_i_6_n_0 ),
        .I1(\cid[19][3]_i_8_n_0 ),
        .O(\ptr[19][2]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h20)) 
    \ptr[19][2]_i_5 
       (.I0(\cid[19][3]_i_19_n_0 ),
        .I1(obs_growth[36]),
        .I2(obs_growth[37]),
        .O(\ptr[19][2]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT4 #(
    .INIT(16'h0040)) 
    \ptr[19][2]_i_6 
       (.I0(obs_growth[36]),
        .I1(obs_growth[37]),
        .I2(\cid[22][2]_i_3_n_0 ),
        .I3(obs_unrooted[19]),
        .O(\ptr[19][2]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair370" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \ptr[19][2]_i_7 
       (.I0(obs_unrooted[19]),
        .I1(\cid[27][3]_i_3_n_0 ),
        .I2(\cid[19][3]_i_6_n_0 ),
        .O(\ptr[19][2]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair210" *) 
  LUT4 #(
    .INIT(16'h00F7)) 
    \ptr[19][2]_i_8 
       (.I0(\cid[19][3]_i_10_n_0 ),
        .I1(\cid[24][4]_i_2_n_0 ),
        .I2(obs_unrooted[19]),
        .I3(\ptr[19][1]_i_4_n_0 ),
        .O(\ptr[19][2]_i_8_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \ptr[1][0]_i_1 
       (.I0(\active[1]_i_2_n_0 ),
        .O(\ptr[1][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair374" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ptr[20][0]_i_1 
       (.I0(\^obs_ptr [48]),
        .I1(\FSM_sequential_stage_reg[1]_rep__3_n_0 ),
        .I2(\ptr[20][0]_i_2_n_0 ),
        .O(\ptr[20][0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h888F8F8F)) 
    \ptr[20][0]_i_2 
       (.I0(\cid[24][5]_i_3_n_0 ),
        .I1(\^obs_ptr [60]),
        .I2(\ptr[20][0]_i_3_n_0 ),
        .I3(\cid[20][4]_i_6_n_0 ),
        .I4(\cid[20][5]_i_3_n_0 ),
        .O(\ptr[20][0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF75770000)) 
    \ptr[20][0]_i_3 
       (.I0(\ptr[20][2]_i_5_n_0 ),
        .I1(\ptr[20][2]_i_6_n_0 ),
        .I2(\cid[20][3]_i_11_n_0 ),
        .I3(\^obs_ptr [60]),
        .I4(\ptr[20][2]_i_4_n_0 ),
        .I5(\ptr[20][0]_i_4_n_0 ),
        .O(\ptr[20][0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFAFAEAAAEAAAEAA)) 
    \ptr[20][0]_i_4 
       (.I0(\cid[24][4]_i_2_n_0 ),
        .I1(\cid[20][5]_i_3_n_0 ),
        .I2(obs_unrooted[20]),
        .I3(\cid[20][4]_i_2_n_0 ),
        .I4(\cid[20][3]_i_6_n_0 ),
        .I5(\cid[28][3]_i_4_n_0 ),
        .O(\ptr[20][0]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair373" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ptr[20][1]_i_1 
       (.I0(\^obs_ptr [49]),
        .I1(\FSM_sequential_stage_reg[1]_rep__3_n_0 ),
        .I2(\ptr[20][1]_i_2_n_0 ),
        .O(\ptr[20][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h888888B88888BBBB)) 
    \ptr[20][1]_i_2 
       (.I0(\^obs_ptr [61]),
        .I1(\cid[24][5]_i_3_n_0 ),
        .I2(\ptr[20][1]_i_3_n_0 ),
        .I3(\cid[20][4]_i_6_n_0 ),
        .I4(\ptr[20][1]_i_4_n_0 ),
        .I5(\cid[20][5]_i_5_n_0 ),
        .O(\ptr[20][1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \ptr[20][1]_i_3 
       (.I0(\cid[20][5]_i_3_n_0 ),
        .I1(obs_unrooted[20]),
        .I2(\cid[20][4]_i_2_n_0 ),
        .O(\ptr[20][1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT5 #(
    .INIT(32'h88A88888)) 
    \ptr[20][1]_i_4 
       (.I0(\ptr[20][2]_i_4_n_0 ),
        .I1(\ptr[20][1]_i_5_n_0 ),
        .I2(\cid[20][3]_i_6_n_0 ),
        .I3(obs_unrooted[20]),
        .I4(\cid[28][3]_i_4_n_0 ),
        .O(\ptr[20][1]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h70777777)) 
    \ptr[20][1]_i_5 
       (.I0(\cid[20][3]_i_10_n_0 ),
        .I1(\cid[20][3]_i_8_n_0 ),
        .I2(\ptr[20][2]_i_6_n_0 ),
        .I3(\^obs_ptr [61]),
        .I4(\cid[20][5]_i_6_n_0 ),
        .O(\ptr[20][1]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair374" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ptr[20][2]_i_1 
       (.I0(\^obs_ptr [50]),
        .I1(\FSM_sequential_stage_reg[1]_rep__3_n_0 ),
        .I2(\ptr[20][2]_i_2_n_0 ),
        .O(\ptr[20][2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFF00EAEA)) 
    \ptr[20][2]_i_2 
       (.I0(\ptr[20][2]_i_3_n_0 ),
        .I1(\cid[20][4]_i_6_n_0 ),
        .I2(\cid[20][5]_i_3_n_0 ),
        .I3(\^obs_ptr [62]),
        .I4(\cid[24][4]_i_2_n_0 ),
        .O(\ptr[20][2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000080000)) 
    \ptr[20][2]_i_3 
       (.I0(\ptr[20][2]_i_4_n_0 ),
        .I1(\ptr[20][2]_i_5_n_0 ),
        .I2(\cid[20][3]_i_11_n_0 ),
        .I3(\ptr[20][2]_i_6_n_0 ),
        .I4(\^obs_ptr [62]),
        .I5(\ptr[20][2]_i_7_n_0 ),
        .O(\ptr[20][2]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \ptr[20][2]_i_4 
       (.I0(\cid[20][3]_i_6_n_0 ),
        .I1(\cid[20][3]_i_7_n_0 ),
        .O(\ptr[20][2]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair321" *) 
  LUT4 #(
    .INIT(16'h51FF)) 
    \ptr[20][2]_i_5 
       (.I0(\cid[20][3]_i_10_n_0 ),
        .I1(\cid[25][4]_i_2_n_0 ),
        .I2(obs_unrooted[20]),
        .I3(\cid[20][3]_i_8_n_0 ),
        .O(\ptr[20][2]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h20)) 
    \ptr[20][2]_i_6 
       (.I0(\cid[20][3]_i_17_n_0 ),
        .I1(obs_growth[40]),
        .I2(obs_growth[41]),
        .O(\ptr[20][2]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT5 #(
    .INIT(32'h00F80088)) 
    \ptr[20][2]_i_7 
       (.I0(\cid[28][3]_i_4_n_0 ),
        .I1(\cid[20][3]_i_6_n_0 ),
        .I2(\cid[20][4]_i_2_n_0 ),
        .I3(obs_unrooted[20]),
        .I4(\cid[20][5]_i_3_n_0 ),
        .O(\ptr[20][2]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair365" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ptr[21][0]_i_1 
       (.I0(\^obs_ptr [51]),
        .I1(\FSM_sequential_stage_reg[1]_rep__3_n_0 ),
        .I2(\ptr[21][0]_i_2_n_0 ),
        .O(\ptr[21][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8888888F888F888F)) 
    \ptr[21][0]_i_2 
       (.I0(\cid[25][4]_i_2_n_0 ),
        .I1(\^obs_ptr [63]),
        .I2(\ptr[21][0]_i_3_n_0 ),
        .I3(\ptr[21][1]_i_3_n_0 ),
        .I4(\cid[21][5]_i_4_n_0 ),
        .I5(\cid[21][4]_i_6_n_0 ),
        .O(\ptr[21][0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FBAAFBFB)) 
    \ptr[21][0]_i_3 
       (.I0(\ptr[21][2]_i_5_n_0 ),
        .I1(\^obs_ptr [63]),
        .I2(\ptr[21][0]_i_4_n_0 ),
        .I3(\ptr[21][0]_i_5_n_0 ),
        .I4(\cid[21][5]_i_13_n_0 ),
        .I5(\ptr[21][2]_i_7_n_0 ),
        .O(\ptr[21][0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT4 #(
    .INIT(16'h0040)) 
    \ptr[21][0]_i_4 
       (.I0(obs_growth[44]),
        .I1(obs_growth[45]),
        .I2(\cid[24][4]_i_2_n_0 ),
        .I3(obs_unrooted[21]),
        .O(\ptr[21][0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h4F4F4F4F444F4444)) 
    \ptr[21][0]_i_5 
       (.I0(obs_cid[131]),
        .I1(obs_cid[125]),
        .I2(\ptr[21][0]_i_6_n_0 ),
        .I3(\ptr[21][0]_i_7_n_0 ),
        .I4(\ptr[21][0]_i_8_n_0 ),
        .I5(\ptr[21][0]_i_9_n_0 ),
        .O(\ptr[21][0]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \ptr[21][0]_i_6 
       (.I0(obs_cid[125]),
        .I1(obs_cid[131]),
        .I2(obs_cid[124]),
        .I3(obs_cid[130]),
        .O(\ptr[21][0]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \ptr[21][0]_i_7 
       (.I0(obs_cid[123]),
        .I1(obs_cid[129]),
        .I2(obs_cid[122]),
        .I3(obs_cid[128]),
        .O(\ptr[21][0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hD0FDD0FDFFFFD0FD)) 
    \ptr[21][0]_i_8 
       (.I0(obs_cid[126]),
        .I1(obs_cid[120]),
        .I2(obs_cid[121]),
        .I3(obs_cid[127]),
        .I4(obs_cid[122]),
        .I5(obs_cid[128]),
        .O(\ptr[21][0]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \ptr[21][0]_i_9 
       (.I0(obs_cid[129]),
        .I1(obs_cid[123]),
        .I2(obs_cid[130]),
        .I3(obs_cid[124]),
        .O(\ptr[21][0]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair365" *) 
  LUT3 #(
    .INIT(8'h8B)) 
    \ptr[21][1]_i_1 
       (.I0(\^obs_ptr [52]),
        .I1(\FSM_sequential_stage_reg[1]_rep__3_n_0 ),
        .I2(\ptr[21][1]_i_2_n_0 ),
        .O(\ptr[21][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000FFF8FFF8FFF8)) 
    \ptr[21][1]_i_2 
       (.I0(\cid[21][5]_i_4_n_0 ),
        .I1(\cid[21][4]_i_6_n_0 ),
        .I2(\ptr[21][1]_i_3_n_0 ),
        .I3(\ptr[21][1]_i_4_n_0 ),
        .I4(\cid[25][4]_i_2_n_0 ),
        .I5(\^obs_ptr [64]),
        .O(\ptr[21][1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFAFAEAAAEAAAEAA)) 
    \ptr[21][1]_i_3 
       (.I0(\cid[25][4]_i_2_n_0 ),
        .I1(\cid[21][5]_i_4_n_0 ),
        .I2(obs_unrooted[21]),
        .I3(\cid[21][4]_i_2_n_0 ),
        .I4(\cid[29][3]_i_3_n_0 ),
        .I5(\cid[21][5]_i_7_n_0 ),
        .O(\ptr[21][1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h000000005505FF8F)) 
    \ptr[21][1]_i_4 
       (.I0(\cid[21][5]_i_11_n_0 ),
        .I1(\ptr[21][1]_i_5_n_0 ),
        .I2(\^obs_ptr [64]),
        .I3(\ptr[21][2]_i_6_n_0 ),
        .I4(\cid[21][3]_i_13_n_0 ),
        .I5(\ptr[21][2]_i_7_n_0 ),
        .O(\ptr[21][1]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair205" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ptr[21][1]_i_5 
       (.I0(\cid[7][4]_i_2_n_0 ),
        .I1(obs_unrooted[21]),
        .O(\ptr[21][1]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair363" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ptr[21][2]_i_1 
       (.I0(\^obs_ptr [53]),
        .I1(\FSM_sequential_stage_reg[1]_rep__3_n_0 ),
        .I2(\ptr[21][2]_i_2_n_0 ),
        .O(\ptr[21][2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF00008F888F88)) 
    \ptr[21][2]_i_2 
       (.I0(\cid[21][5]_i_4_n_0 ),
        .I1(\cid[21][4]_i_6_n_0 ),
        .I2(\ptr[21][2]_i_3_n_0 ),
        .I3(\ptr[21][2]_i_4_n_0 ),
        .I4(\^obs_ptr [65]),
        .I5(\cid[25][4]_i_2_n_0 ),
        .O(\ptr[21][2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFAEAAFFFF)) 
    \ptr[21][2]_i_3 
       (.I0(\ptr[21][2]_i_5_n_0 ),
        .I1(\cid[21][4]_i_2_n_0 ),
        .I2(obs_unrooted[21]),
        .I3(\cid[21][5]_i_4_n_0 ),
        .I4(\^obs_ptr [65]),
        .I5(\ptr[21][2]_i_6_n_0 ),
        .O(\ptr[21][2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair231" *) 
  LUT4 #(
    .INIT(16'h00F7)) 
    \ptr[21][2]_i_4 
       (.I0(\cid[21][5]_i_7_n_0 ),
        .I1(\cid[29][3]_i_3_n_0 ),
        .I2(obs_unrooted[21]),
        .I3(\ptr[21][2]_i_7_n_0 ),
        .O(\ptr[21][2]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \ptr[21][2]_i_5 
       (.I0(\cid[21][5]_i_11_n_0 ),
        .I1(\ptr[21][2]_i_8_n_0 ),
        .O(\ptr[21][2]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT5 #(
    .INIT(32'h00004F00)) 
    \ptr[21][2]_i_6 
       (.I0(obs_unrooted[21]),
        .I1(\cid[24][4]_i_2_n_0 ),
        .I2(\ptr[21][0]_i_5_n_0 ),
        .I3(obs_growth[45]),
        .I4(obs_growth[44]),
        .O(\ptr[21][2]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair231" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \ptr[21][2]_i_7 
       (.I0(\cid[21][3]_i_5_n_0 ),
        .I1(\cid[21][5]_i_7_n_0 ),
        .O(\ptr[21][2]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h0B)) 
    \ptr[21][2]_i_8 
       (.I0(obs_unrooted[21]),
        .I1(\cid[7][4]_i_2_n_0 ),
        .I2(\cid[21][3]_i_13_n_0 ),
        .O(\ptr[21][2]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair371" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ptr[22][0]_i_1 
       (.I0(\^obs_ptr [54]),
        .I1(\FSM_sequential_stage_reg[1]_rep__2_n_0 ),
        .I2(\defect[26]_i_3_n_0 ),
        .O(\ptr[22][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair372" *) 
  LUT3 #(
    .INIT(8'h8B)) 
    \ptr[22][1]_i_1 
       (.I0(\^obs_ptr [55]),
        .I1(\FSM_sequential_stage_reg[1]_rep__2_n_0 ),
        .I2(\ptr[22][1]_i_2_n_0 ),
        .O(\ptr[22][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000FF20FF20FF20)) 
    \ptr[22][1]_i_2 
       (.I0(\cid[22][5]_i_4_n_0 ),
        .I1(\cid[22][2]_i_3_n_0 ),
        .I2(\cid[22][4]_i_5_n_0 ),
        .I3(\ptr[22][1]_i_3_n_0 ),
        .I4(\cid[26][3]_i_4_n_0 ),
        .I5(\^obs_ptr [67]),
        .O(\ptr[22][1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFEEFEEEEE)) 
    \ptr[22][1]_i_3 
       (.I0(\ptr[22][1]_i_4_n_0 ),
        .I1(\cid[26][3]_i_4_n_0 ),
        .I2(\cid[22][2]_i_3_n_0 ),
        .I3(obs_unrooted[22]),
        .I4(\cid[22][5]_i_4_n_0 ),
        .I5(\ptr[22][1]_i_5_n_0 ),
        .O(\ptr[22][1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000077770777)) 
    \ptr[22][1]_i_4 
       (.I0(\cid[22][3]_i_8_n_0 ),
        .I1(\cid[22][5]_i_11_n_0 ),
        .I2(\cid[22][5]_i_9_n_0 ),
        .I3(\^obs_ptr [67]),
        .I4(\defect[26]_i_8_n_0 ),
        .I5(\defect[26]_i_11_n_0 ),
        .O(\ptr[22][1]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair245" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \ptr[22][1]_i_5 
       (.I0(\cid[22][5]_i_7_n_0 ),
        .I1(obs_unrooted[22]),
        .I2(\cid[26][3]_i_2_n_0 ),
        .O(\ptr[22][1]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair362" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ptr[22][2]_i_1 
       (.I0(\^obs_ptr [56]),
        .I1(\FSM_sequential_stage_reg[1]_rep__2_n_0 ),
        .I2(\defect[22]_i_2_n_0 ),
        .O(\ptr[22][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair376" *) 
  LUT3 #(
    .INIT(8'hC5)) 
    \ptr[23][0]_i_1 
       (.I0(\ptr[23][0]_i_2_n_0 ),
        .I1(\^obs_ptr [57]),
        .I2(\FSM_sequential_stage_reg[1]_rep__3_n_0 ),
        .O(\ptr[23][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7070777070707070)) 
    \ptr[23][0]_i_2 
       (.I0(\cid[27][3]_i_3_n_0 ),
        .I1(\^obs_ptr [69]),
        .I2(\ptr[23][0]_i_3_n_0 ),
        .I3(\cid[23][5]_i_3_n_0 ),
        .I4(\cid[23][2]_i_3_n_0 ),
        .I5(\cid[23][4]_i_5_n_0 ),
        .O(\ptr[23][0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFF08FFFFFF08FF08)) 
    \ptr[23][0]_i_3 
       (.I0(\cid[23][5]_i_3_n_0 ),
        .I1(\cid[23][2]_i_3_n_0 ),
        .I2(obs_unrooted[23]),
        .I3(\cid[27][3]_i_3_n_0 ),
        .I4(\defect[23]_i_9_n_0 ),
        .I5(\ptr[23][0]_i_4_n_0 ),
        .O(\ptr[23][0]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFAAFB)) 
    \ptr[23][0]_i_4 
       (.I0(\defect[23]_i_8_n_0 ),
        .I1(\^obs_ptr [69]),
        .I2(\ptr[23][0]_i_5_n_0 ),
        .I3(\ptr[23][1]_i_5_n_0 ),
        .I4(\cid[23][5]_i_9_n_0 ),
        .O(\ptr[23][0]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT4 #(
    .INIT(16'h0040)) 
    \ptr[23][0]_i_5 
       (.I0(obs_growth[52]),
        .I1(obs_growth[53]),
        .I2(\cid[26][3]_i_4_n_0 ),
        .I3(obs_unrooted[23]),
        .O(\ptr[23][0]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair378" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ptr[23][1]_i_1 
       (.I0(\^obs_ptr [58]),
        .I1(\FSM_sequential_stage_reg[1]_rep__3_n_0 ),
        .I2(\ptr[23][1]_i_2_n_0 ),
        .O(\ptr[23][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h88B8BBBB88888888)) 
    \ptr[23][1]_i_2 
       (.I0(\^obs_ptr [70]),
        .I1(\cid[27][3]_i_3_n_0 ),
        .I2(\cid[23][5]_i_5_n_0 ),
        .I3(\cid[23][4]_i_5_n_0 ),
        .I4(\cid[23][5]_i_7_n_0 ),
        .I5(\ptr[23][1]_i_3_n_0 ),
        .O(\ptr[23][1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAEEEEEFEE)) 
    \ptr[23][1]_i_3 
       (.I0(\defect[23]_i_9_n_0 ),
        .I1(\ptr[23][1]_i_4_n_0 ),
        .I2(\ptr[23][1]_i_5_n_0 ),
        .I3(\^obs_ptr [70]),
        .I4(\cid[23][5]_i_8_n_0 ),
        .I5(\cid[23][5]_i_9_n_0 ),
        .O(\ptr[23][1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAA8AAA00000000)) 
    \ptr[23][1]_i_4 
       (.I0(\cid[23][3]_i_8_n_0 ),
        .I1(obs_growth[52]),
        .I2(obs_growth[53]),
        .I3(\cid[26][3]_i_4_n_0 ),
        .I4(obs_unrooted[23]),
        .I5(\cid[24][5]_i_9_n_0 ),
        .O(\ptr[23][1]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h20)) 
    \ptr[23][1]_i_5 
       (.I0(\cid[23][3]_i_13_n_0 ),
        .I1(obs_growth[52]),
        .I2(obs_growth[53]),
        .O(\ptr[23][1]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair378" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ptr[23][2]_i_1 
       (.I0(\^obs_ptr [59]),
        .I1(\FSM_sequential_stage_reg[1]_rep__3_n_0 ),
        .I2(\defect[23]_i_4_n_0 ),
        .O(\ptr[23][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair385" *) 
  LUT3 #(
    .INIT(8'h8B)) 
    \ptr[24][0]_i_1 
       (.I0(\^obs_ptr [60]),
        .I1(\FSM_sequential_stage_reg[1]_rep__2_n_0 ),
        .I2(\ptr[24][0]_i_2_n_0 ),
        .O(\ptr[24][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7070777070707070)) 
    \ptr[24][0]_i_2 
       (.I0(\cid[28][3]_i_4_n_0 ),
        .I1(\^obs_ptr [72]),
        .I2(\ptr[24][0]_i_3_n_0 ),
        .I3(\cid[24][2]_i_3_n_0 ),
        .I4(\cid[24][4]_i_2_n_0 ),
        .I5(\cid[24][2]_i_10_n_0 ),
        .O(\ptr[24][0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF75770000)) 
    \ptr[24][0]_i_3 
       (.I0(\ptr[24][0]_i_4_n_0 ),
        .I1(\defect[24]_i_8_n_0 ),
        .I2(\cid[24][2]_i_15_n_0 ),
        .I3(\^obs_ptr [72]),
        .I4(\defect[24]_i_7_n_0 ),
        .I5(\ptr[24][1]_i_4_n_0 ),
        .O(\ptr[24][0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F8FFFFFF)) 
    \ptr[24][0]_i_4 
       (.I0(\cid[24][5]_i_9_n_0 ),
        .I1(\cid[27][3]_i_3_n_0 ),
        .I2(obs_unrooted[24]),
        .I3(\cid[25][5]_i_15_n_0 ),
        .I4(\cid[29][3]_i_3_n_0 ),
        .I5(\defect[24]_i_10_n_0 ),
        .O(\ptr[24][0]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair386" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ptr[24][1]_i_1 
       (.I0(\^obs_ptr [61]),
        .I1(\FSM_sequential_stage_reg[1]_rep__3_n_0 ),
        .I2(\ptr[24][1]_i_2_n_0 ),
        .O(\ptr[24][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8F8F888F8F8F8F8F)) 
    \ptr[24][1]_i_2 
       (.I0(\cid[28][3]_i_4_n_0 ),
        .I1(\^obs_ptr [73]),
        .I2(\ptr[24][1]_i_3_n_0 ),
        .I3(\cid[24][2]_i_3_n_0 ),
        .I4(\cid[24][4]_i_2_n_0 ),
        .I5(\cid[24][2]_i_10_n_0 ),
        .O(\ptr[24][1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBABBBBBBAAAAAAAA)) 
    \ptr[24][1]_i_3 
       (.I0(\ptr[24][1]_i_4_n_0 ),
        .I1(\defect[24]_i_10_n_0 ),
        .I2(\defect[24]_i_8_n_0 ),
        .I3(\^obs_ptr [73]),
        .I4(\cid[24][5]_i_5_n_0 ),
        .I5(\defect[24]_i_7_n_0 ),
        .O(\ptr[24][1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAFFAAEAAAEAAAEA)) 
    \ptr[24][1]_i_4 
       (.I0(\cid[28][3]_i_4_n_0 ),
        .I1(\cid[24][2]_i_3_n_0 ),
        .I2(\cid[24][4]_i_2_n_0 ),
        .I3(obs_unrooted[24]),
        .I4(\cid[28][3]_i_2_n_0 ),
        .I5(\cid[24][2]_i_8_n_0 ),
        .O(\ptr[24][1]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair386" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ptr[24][2]_i_1 
       (.I0(\^obs_ptr [62]),
        .I1(\FSM_sequential_stage_reg[1]_rep__3_n_0 ),
        .I2(\defect[24]_i_2_n_0 ),
        .O(\ptr[24][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair375" *) 
  LUT3 #(
    .INIT(8'hC5)) 
    \ptr[25][0]_i_1 
       (.I0(\ptr[25][0]_i_2_n_0 ),
        .I1(\^obs_ptr [63]),
        .I2(\FSM_sequential_stage_reg[1]_rep__3_n_0 ),
        .O(\ptr[25][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h55555555FFFFFFC0)) 
    \ptr[25][0]_i_2 
       (.I0(\^obs_ptr [75]),
        .I1(\cid[25][4]_i_6_n_0 ),
        .I2(\cid[25][5]_i_5_n_0 ),
        .I3(\ptr[25][0]_i_3_n_0 ),
        .I4(\ptr[25][0]_i_4_n_0 ),
        .I5(\cid[29][3]_i_3_n_0 ),
        .O(\ptr[25][0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FBAAFBFB)) 
    \ptr[25][0]_i_3 
       (.I0(\ptr[25][2]_i_5_n_0 ),
        .I1(\^obs_ptr [75]),
        .I2(\cid[25][5]_i_12_n_0 ),
        .I3(\ptr[25][0]_i_5_n_0 ),
        .I4(\cid[25][5]_i_15_n_0 ),
        .I5(\ptr[25][2]_i_6_n_0 ),
        .O(\ptr[25][0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT5 #(
    .INIT(32'h00F80088)) 
    \ptr[25][0]_i_4 
       (.I0(\cid[25][5]_i_8_n_0 ),
        .I1(\cid[29][5]_i_4_n_0 ),
        .I2(\cid[25][4]_i_2_n_0 ),
        .I3(obs_unrooted[25]),
        .I4(\cid[25][5]_i_5_n_0 ),
        .O(\ptr[25][0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h4F4F4F4F444F4444)) 
    \ptr[25][0]_i_5 
       (.I0(obs_cid[155]),
        .I1(obs_cid[149]),
        .I2(\ptr[25][0]_i_6_n_0 ),
        .I3(\ptr[25][0]_i_7_n_0 ),
        .I4(\ptr[25][0]_i_8_n_0 ),
        .I5(\ptr[25][0]_i_9_n_0 ),
        .O(\ptr[25][0]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \ptr[25][0]_i_6 
       (.I0(obs_cid[149]),
        .I1(obs_cid[155]),
        .I2(obs_cid[148]),
        .I3(obs_cid[154]),
        .O(\ptr[25][0]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \ptr[25][0]_i_7 
       (.I0(obs_cid[147]),
        .I1(obs_cid[153]),
        .I2(obs_cid[146]),
        .I3(obs_cid[152]),
        .O(\ptr[25][0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hD0FDD0FDFFFFD0FD)) 
    \ptr[25][0]_i_8 
       (.I0(obs_cid[150]),
        .I1(obs_cid[144]),
        .I2(obs_cid[145]),
        .I3(obs_cid[151]),
        .I4(obs_cid[146]),
        .I5(obs_cid[152]),
        .O(\ptr[25][0]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \ptr[25][0]_i_9 
       (.I0(obs_cid[153]),
        .I1(obs_cid[147]),
        .I2(obs_cid[154]),
        .I3(obs_cid[148]),
        .O(\ptr[25][0]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair376" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ptr[25][1]_i_1 
       (.I0(\^obs_ptr [64]),
        .I1(\FSM_sequential_stage_reg[1]_rep__3_n_0 ),
        .I2(\ptr[25][1]_i_2_n_0 ),
        .O(\ptr[25][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF000011151115)) 
    \ptr[25][1]_i_2 
       (.I0(\ptr[25][1]_i_3_n_0 ),
        .I1(\cid[25][5]_i_10_n_0 ),
        .I2(\cid[25][4]_i_6_n_0 ),
        .I3(\cid[25][5]_i_4_n_0 ),
        .I4(\^obs_ptr [76]),
        .I5(\cid[29][3]_i_3_n_0 ),
        .O(\ptr[25][1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h0000FF0D)) 
    \ptr[25][1]_i_3 
       (.I0(\^obs_ptr [76]),
        .I1(\ptr[25][2]_i_4_n_0 ),
        .I2(\ptr[25][1]_i_4_n_0 ),
        .I3(\ptr[25][1]_i_5_n_0 ),
        .I4(\ptr[25][2]_i_6_n_0 ),
        .O(\ptr[25][1]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h20)) 
    \ptr[25][1]_i_4 
       (.I0(\cid[25][2]_i_8_n_0 ),
        .I1(obs_growth[62]),
        .I2(obs_growth[63]),
        .O(\ptr[25][1]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h0020FFFF)) 
    \ptr[25][1]_i_5 
       (.I0(\cid[29][5]_i_4_n_0 ),
        .I1(obs_unrooted[25]),
        .I2(obs_growth[81]),
        .I3(obs_growth[80]),
        .I4(\cid[25][5]_i_11_n_0 ),
        .O(\ptr[25][1]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair375" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ptr[25][2]_i_1 
       (.I0(\^obs_ptr [65]),
        .I1(\FSM_sequential_stage_reg[1]_rep__3_n_0 ),
        .I2(\ptr[25][2]_i_2_n_0 ),
        .O(\ptr[25][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT5 #(
    .INIT(32'hFF00EAEA)) 
    \ptr[25][2]_i_2 
       (.I0(\ptr[25][2]_i_3_n_0 ),
        .I1(\cid[25][4]_i_6_n_0 ),
        .I2(\cid[25][5]_i_5_n_0 ),
        .I3(\^obs_ptr [77]),
        .I4(\cid[29][3]_i_3_n_0 ),
        .O(\ptr[25][2]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00000004)) 
    \ptr[25][2]_i_3 
       (.I0(\ptr[25][0]_i_4_n_0 ),
        .I1(\^obs_ptr [77]),
        .I2(\ptr[25][2]_i_4_n_0 ),
        .I3(\ptr[25][2]_i_5_n_0 ),
        .I4(\ptr[25][2]_i_6_n_0 ),
        .O(\ptr[25][2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT5 #(
    .INIT(32'h00004F00)) 
    \ptr[25][2]_i_4 
       (.I0(obs_unrooted[25]),
        .I1(\cid[28][3]_i_4_n_0 ),
        .I2(\ptr[25][0]_i_5_n_0 ),
        .I3(obs_growth[61]),
        .I4(obs_growth[60]),
        .O(\ptr[25][2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000AABAAAAA)) 
    \ptr[25][2]_i_5 
       (.I0(\ptr[25][1]_i_4_n_0 ),
        .I1(obs_unrooted[25]),
        .I2(\cid[9][3]_i_3_n_0 ),
        .I3(obs_growth[62]),
        .I4(obs_growth[63]),
        .I5(\cid[25][5]_i_12_n_0 ),
        .O(\ptr[25][2]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \ptr[25][2]_i_6 
       (.I0(\cid[25][2]_i_6_n_0 ),
        .I1(\cid[25][5]_i_8_n_0 ),
        .O(\ptr[25][2]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h00E2E2E2)) 
    \ptr[26][0]_i_1 
       (.I0(\ptr[26][0]_i_2_n_0 ),
        .I1(\FSM_sequential_stage_reg[1]_rep__1_n_0 ),
        .I2(\^obs_ptr [66]),
        .I3(stage__0[0]),
        .I4(stage__0[2]),
        .O(\ptr[26][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8888F888F888F888)) 
    \ptr[26][0]_i_2 
       (.I0(\^obs_ptr [78]),
        .I1(\cid[26][3]_i_2_n_0 ),
        .I2(\ptr[26][0]_i_3_n_0 ),
        .I3(\ptr[26][0]_i_4_n_0 ),
        .I4(\cid[26][4]_i_5_n_0 ),
        .I5(\cid[26][5]_i_5_n_0 ),
        .O(\ptr[26][0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair262" *) 
  LUT4 #(
    .INIT(16'h00F7)) 
    \ptr[26][0]_i_3 
       (.I0(\cid[26][5]_i_10_n_0 ),
        .I1(\cid[27][5]_i_4_n_0 ),
        .I2(obs_unrooted[26]),
        .I3(\ptr[26][1]_i_4_n_0 ),
        .O(\ptr[26][0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF700F700F7000000)) 
    \ptr[26][0]_i_4 
       (.I0(\ptr[8][1]_i_3_n_0 ),
        .I1(\cid[8][5]_i_4_n_0 ),
        .I2(obs_unrooted[26]),
        .I3(\ptr[26][0]_i_5_n_0 ),
        .I4(\ptr[26][2]_i_4_n_0 ),
        .I5(\^obs_ptr [78]),
        .O(\ptr[26][0]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair322" *) 
  LUT4 #(
    .INIT(16'h5155)) 
    \ptr[26][0]_i_5 
       (.I0(\cid[26][3]_i_2_n_0 ),
        .I1(\cid[26][3]_i_4_n_0 ),
        .I2(obs_unrooted[26]),
        .I3(\cid[26][5]_i_5_n_0 ),
        .O(\ptr[26][0]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h00E2E2E2)) 
    \ptr[26][1]_i_1 
       (.I0(\ptr[26][1]_i_2_n_0 ),
        .I1(\FSM_sequential_stage_reg[1]_rep__1_n_0 ),
        .I2(\^obs_ptr [67]),
        .I3(stage__0[0]),
        .I4(stage__0[2]),
        .O(\ptr[26][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAA0F3FAAAA0000)) 
    \ptr[26][1]_i_2 
       (.I0(\^obs_ptr [79]),
        .I1(\cid[26][4]_i_5_n_0 ),
        .I2(\cid[26][5]_i_5_n_0 ),
        .I3(\cid[26][5]_i_4_n_0 ),
        .I4(\cid[26][3]_i_2_n_0 ),
        .I5(\ptr[26][1]_i_3_n_0 ),
        .O(\ptr[26][1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBABABABAAABABABA)) 
    \ptr[26][1]_i_3 
       (.I0(\ptr[26][1]_i_4_n_0 ),
        .I1(\ptr[26][1]_i_5_n_0 ),
        .I2(\^obs_ptr [79]),
        .I3(\cid[26][5]_i_8_n_0 ),
        .I4(\cid[27][5]_i_4_n_0 ),
        .I5(obs_unrooted[26]),
        .O(\ptr[26][1]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \ptr[26][1]_i_4 
       (.I0(\cid[26][5]_i_10_n_0 ),
        .I1(\cid[26][4]_i_12_n_0 ),
        .O(\ptr[26][1]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT5 #(
    .INIT(32'hFFFF0040)) 
    \ptr[26][1]_i_5 
       (.I0(obs_unrooted[26]),
        .I1(\cid[8][5]_i_4_n_0 ),
        .I2(obs_growth[9]),
        .I3(obs_growth[8]),
        .I4(\ptr[26][2]_i_4_n_0 ),
        .O(\ptr[26][1]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT5 #(
    .INIT(32'h00D1D1D1)) 
    \ptr[26][2]_i_1 
       (.I0(\ptr[26][2]_i_2_n_0 ),
        .I1(\FSM_sequential_stage_reg[1]_rep__1_n_0 ),
        .I2(\^obs_ptr [68]),
        .I3(stage__0[2]),
        .I4(stage__0[0]),
        .O(\ptr[26][2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h5555CCFF5555003F)) 
    \ptr[26][2]_i_2 
       (.I0(\^obs_ptr [80]),
        .I1(\cid[26][5]_i_5_n_0 ),
        .I2(\cid[26][4]_i_5_n_0 ),
        .I3(\ptr[26][2]_i_3_n_0 ),
        .I4(\cid[26][3]_i_2_n_0 ),
        .I5(\cid[26][5]_i_4_n_0 ),
        .O(\ptr[26][2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000080888888)) 
    \ptr[26][2]_i_3 
       (.I0(\ptr[26][0]_i_3_n_0 ),
        .I1(\^obs_ptr [80]),
        .I2(obs_unrooted[26]),
        .I3(\cid[8][5]_i_4_n_0 ),
        .I4(\ptr[8][1]_i_3_n_0 ),
        .I5(\ptr[26][2]_i_4_n_0 ),
        .O(\ptr[26][2]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \ptr[26][2]_i_4 
       (.I0(obs_growth[8]),
        .I1(obs_growth[9]),
        .I2(\cid[26][4]_i_13_n_0 ),
        .O(\ptr[26][2]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h00E2E2E2)) 
    \ptr[27][0]_i_1 
       (.I0(\ptr[27][0]_i_2_n_0 ),
        .I1(\FSM_sequential_stage_reg[1]_rep__1_n_0 ),
        .I2(\^obs_ptr [69]),
        .I3(stage__0[0]),
        .I4(stage__0[2]),
        .O(\ptr[27][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8FFF888888888888)) 
    \ptr[27][0]_i_2 
       (.I0(\cid[27][5]_i_4_n_0 ),
        .I1(\^obs_ptr [81]),
        .I2(\cid[27][4]_i_6_n_0 ),
        .I3(\cid[27][2]_i_2_n_0 ),
        .I4(\ptr[27][0]_i_3_n_0 ),
        .I5(\ptr[27][0]_i_4_n_0 ),
        .O(\ptr[27][0]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \ptr[27][0]_i_3 
       (.I0(\cid[27][2]_i_10_n_0 ),
        .I1(\cid[27][2]_i_9_n_0 ),
        .O(\ptr[27][0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAA888880888888)) 
    \ptr[27][0]_i_4 
       (.I0(\active[27]_i_10_n_0 ),
        .I1(\^obs_ptr [81]),
        .I2(obs_unrooted[27]),
        .I3(\cid[26][3]_i_2_n_0 ),
        .I4(\cid[26][5]_i_8_n_0 ),
        .I5(\cid[27][2]_i_12_n_0 ),
        .O(\ptr[27][0]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h00E2E2E2)) 
    \ptr[27][1]_i_1 
       (.I0(\ptr[27][1]_i_2_n_0 ),
        .I1(\FSM_sequential_stage_reg[1]_rep__1_n_0 ),
        .I2(\^obs_ptr [70]),
        .I3(stage__0[0]),
        .I4(stage__0[2]),
        .O(\ptr[27][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAA0000AAAA003F)) 
    \ptr[27][1]_i_2 
       (.I0(\^obs_ptr [82]),
        .I1(\cid[27][4]_i_6_n_0 ),
        .I2(\cid[27][2]_i_2_n_0 ),
        .I3(\active[27]_i_8_n_0 ),
        .I4(\cid[27][5]_i_4_n_0 ),
        .I5(\ptr[27][1]_i_3_n_0 ),
        .O(\ptr[27][1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0080AAAAAAAAAAAA)) 
    \ptr[27][1]_i_3 
       (.I0(\ptr[27][0]_i_3_n_0 ),
        .I1(\cid[27][2]_i_6_n_0 ),
        .I2(\cid[28][3]_i_2_n_0 ),
        .I3(obs_unrooted[27]),
        .I4(\^obs_ptr [82]),
        .I5(\active[27]_i_11_n_0 ),
        .O(\ptr[27][1]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00D1D1D1)) 
    \ptr[27][2]_i_1 
       (.I0(\active[27]_i_4_n_0 ),
        .I1(\FSM_sequential_stage_reg[1]_rep__1_n_0 ),
        .I2(\^obs_ptr [71]),
        .I3(stage__0[2]),
        .I4(stage__0[0]),
        .O(\ptr[27][2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00E2E2E2)) 
    \ptr[28][0]_i_1 
       (.I0(\ptr[28][0]_i_2_n_0 ),
        .I1(\FSM_sequential_stage_reg[1]_rep__1_n_0 ),
        .I2(\^obs_ptr [72]),
        .I3(stage__0[0]),
        .I4(stage__0[2]),
        .O(\ptr[28][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8888B888B8B8B8B8)) 
    \ptr[28][0]_i_2 
       (.I0(\^obs_ptr [84]),
        .I1(\cid[28][3]_i_2_n_0 ),
        .I2(\ptr[28][0]_i_3_n_0 ),
        .I3(\cid[28][4]_i_5_n_0 ),
        .I4(\cid[28][5]_i_4_n_0 ),
        .I5(\cid[28][5]_i_5_n_0 ),
        .O(\ptr[28][0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAA8AAAAA80808080)) 
    \ptr[28][0]_i_3 
       (.I0(\ptr[28][2]_i_5_n_0 ),
        .I1(\cid[28][1]_i_7_n_0 ),
        .I2(\cid[27][2]_i_6_n_0 ),
        .I3(obs_unrooted[28]),
        .I4(\cid[27][5]_i_4_n_0 ),
        .I5(\^obs_ptr [84]),
        .O(\ptr[28][0]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00D1D1D1)) 
    \ptr[28][1]_i_1 
       (.I0(\ptr[28][1]_i_2_n_0 ),
        .I1(\FSM_sequential_stage_reg[1]_rep__1_n_0 ),
        .I2(\^obs_ptr [73]),
        .I3(stage__0[2]),
        .I4(stage__0[0]),
        .O(\ptr[28][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7777777777474444)) 
    \ptr[28][1]_i_2 
       (.I0(\^obs_ptr [85]),
        .I1(\cid[28][3]_i_2_n_0 ),
        .I2(\cid[28][4]_i_5_n_0 ),
        .I3(\cid[28][5]_i_4_n_0 ),
        .I4(\cid[28][5]_i_5_n_0 ),
        .I5(\ptr[28][1]_i_3_n_0 ),
        .O(\ptr[28][1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0080AAAAAAAAAAAA)) 
    \ptr[28][1]_i_3 
       (.I0(\ptr[28][1]_i_4_n_0 ),
        .I1(\cid[28][5]_i_10_n_0 ),
        .I2(\cid[29][5]_i_4_n_0 ),
        .I3(obs_unrooted[28]),
        .I4(\^obs_ptr [85]),
        .I5(\ptr[28][1]_i_5_n_0 ),
        .O(\ptr[28][1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair269" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    \ptr[28][1]_i_4 
       (.I0(\cid[28][5]_i_9_n_0 ),
        .I1(\cid[29][5]_i_4_n_0 ),
        .I2(\cid[28][1]_i_6_n_0 ),
        .O(\ptr[28][1]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT5 #(
    .INIT(32'hFF0FFFBF)) 
    \ptr[28][1]_i_5 
       (.I0(obs_unrooted[28]),
        .I1(\cid[27][5]_i_4_n_0 ),
        .I2(obs_growth[73]),
        .I3(obs_growth[72]),
        .I4(\cid[28][1]_i_7_n_0 ),
        .O(\ptr[28][1]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h00E2E2E2)) 
    \ptr[28][2]_i_1 
       (.I0(\ptr[28][2]_i_2_n_0 ),
        .I1(\FSM_sequential_stage_reg[1]_rep__1_n_0 ),
        .I2(\^obs_ptr [74]),
        .I3(stage__0[0]),
        .I4(stage__0[2]),
        .O(\ptr[28][2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBABAFAFF10101010)) 
    \ptr[28][2]_i_2 
       (.I0(\cid[28][3]_i_2_n_0 ),
        .I1(\cid[28][4]_i_5_n_0 ),
        .I2(\ptr[28][2]_i_3_n_0 ),
        .I3(\cid[28][5]_i_5_n_0 ),
        .I4(\ptr[28][2]_i_4_n_0 ),
        .I5(\^obs_ptr [86]),
        .O(\ptr[28][2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair142" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \ptr[28][2]_i_3 
       (.I0(\cid[28][5]_i_5_n_0 ),
        .I1(obs_unrooted[28]),
        .I2(\cid[28][3]_i_4_n_0 ),
        .O(\ptr[28][2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h5D555D555F555D55)) 
    \ptr[28][2]_i_4 
       (.I0(\ptr[28][2]_i_5_n_0 ),
        .I1(\cid[28][1]_i_7_n_0 ),
        .I2(obs_growth[72]),
        .I3(obs_growth[73]),
        .I4(\cid[27][5]_i_4_n_0 ),
        .I5(obs_unrooted[28]),
        .O(\ptr[28][2]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair269" *) 
  LUT4 #(
    .INIT(16'hA2AA)) 
    \ptr[28][2]_i_5 
       (.I0(\ptr[28][1]_i_4_n_0 ),
        .I1(\cid[29][5]_i_4_n_0 ),
        .I2(obs_unrooted[28]),
        .I3(\cid[28][5]_i_9_n_0 ),
        .O(\ptr[28][2]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h00D1D1D1)) 
    \ptr[29][0]_i_1 
       (.I0(\ptr[29][0]_i_2_n_0 ),
        .I1(\FSM_sequential_stage_reg[1]_rep__1_n_0 ),
        .I2(\^obs_ptr [75]),
        .I3(stage__0[0]),
        .I4(stage__0[2]),
        .O(\ptr[29][0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h77707070)) 
    \ptr[29][0]_i_2 
       (.I0(\^obs_ptr [87]),
        .I1(\cid[29][5]_i_4_n_0 ),
        .I2(\ptr[29][0]_i_3_n_0 ),
        .I3(\cid[29][4]_i_7_n_0 ),
        .I4(\cid[29][1]_i_2_n_0 ),
        .O(\ptr[29][0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFCFCFDFDFFFFFDFF)) 
    \ptr[29][0]_i_3 
       (.I0(\ptr[29][0]_i_4_n_0 ),
        .I1(\cid[29][5]_i_4_n_0 ),
        .I2(\defect[29]_i_6_n_0 ),
        .I3(\^obs_ptr [87]),
        .I4(\cid[29][1]_i_7_n_0 ),
        .I5(\ptr[29][0]_i_5_n_0 ),
        .O(\ptr[29][0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT5 #(
    .INIT(32'hFFFFD0FF)) 
    \ptr[29][0]_i_4 
       (.I0(\cid[9][5]_i_4_n_0 ),
        .I1(obs_unrooted[29]),
        .I2(\cid[29][1]_i_10_n_0 ),
        .I3(obs_growth[79]),
        .I4(obs_growth[78]),
        .O(\ptr[29][0]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \ptr[29][0]_i_5 
       (.I0(obs_growth[76]),
        .I1(obs_growth[77]),
        .I2(\cid[29][1]_i_11_n_0 ),
        .O(\ptr[29][0]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h00E2E2E2)) 
    \ptr[29][1]_i_1 
       (.I0(\ptr[29][1]_i_2_n_0 ),
        .I1(\FSM_sequential_stage_reg[1]_rep__1_n_0 ),
        .I2(\^obs_ptr [76]),
        .I3(stage__0[0]),
        .I4(stage__0[2]),
        .O(\ptr[29][1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h888F8F8F)) 
    \ptr[29][1]_i_2 
       (.I0(\cid[29][5]_i_4_n_0 ),
        .I1(\^obs_ptr [88]),
        .I2(\ptr[29][1]_i_3_n_0 ),
        .I3(\cid[29][4]_i_7_n_0 ),
        .I4(\cid[29][1]_i_2_n_0 ),
        .O(\ptr[29][1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFB00FBFB)) 
    \ptr[29][1]_i_3 
       (.I0(obs_growth[78]),
        .I1(obs_growth[79]),
        .I2(\cid[29][1]_i_10_n_0 ),
        .I3(\defect[29]_i_7_n_0 ),
        .I4(\^obs_ptr [88]),
        .I5(\ptr[29][1]_i_4_n_0 ),
        .O(\ptr[29][1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF0200)) 
    \ptr[29][1]_i_4 
       (.I0(\cid[29][3]_i_3_n_0 ),
        .I1(obs_unrooted[29]),
        .I2(obs_growth[80]),
        .I3(obs_growth[81]),
        .I4(\ptr[29][1]_i_5_n_0 ),
        .I5(\cid[29][5]_i_4_n_0 ),
        .O(\ptr[29][1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000088F88888)) 
    \ptr[29][1]_i_5 
       (.I0(\cid[28][3]_i_2_n_0 ),
        .I1(\cid[28][5]_i_10_n_0 ),
        .I2(obs_growth[79]),
        .I3(obs_growth[78]),
        .I4(\cid[9][5]_i_4_n_0 ),
        .I5(obs_unrooted[29]),
        .O(\ptr[29][1]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h00D1D1D1)) 
    \ptr[29][2]_i_1 
       (.I0(\defect[29]_i_2_n_0 ),
        .I1(\FSM_sequential_stage_reg[1]_rep__1_n_0 ),
        .I2(\^obs_ptr [77]),
        .I3(stage__0[2]),
        .I4(stage__0[0]),
        .O(\ptr[29][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair354" *) 
  LUT3 #(
    .INIT(8'hC5)) 
    \ptr[2][1]_i_1 
       (.I0(\ptr[2][1]_i_2_n_0 ),
        .I1(\^obs_ptr [1]),
        .I2(\FSM_sequential_stage_reg[1]_rep__3_n_0 ),
        .O(c_ptr));
  LUT6 #(
    .INIT(64'h0F000F0F0F4F0F0F)) 
    \ptr[2][1]_i_2 
       (.I0(obs_unrooted[2]),
        .I1(\cid[18][4]_i_2_n_0 ),
        .I2(\^obs_ptr [7]),
        .I3(\cid[4][4]_i_2_n_0 ),
        .I4(\ptr[2][1]_i_3_n_0 ),
        .I5(\cid[2][5]_i_5_n_0 ),
        .O(\ptr[2][1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ptr[2][1]_i_3 
       (.I0(obs_growth[3]),
        .I1(obs_growth[2]),
        .O(\ptr[2][1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair362" *) 
  LUT3 #(
    .INIT(8'hC5)) 
    \ptr[3][0]_i_1 
       (.I0(\active[3]_i_2_n_0 ),
        .I1(\^obs_ptr [3]),
        .I2(\FSM_sequential_stage_reg[1]_rep__2_n_0 ),
        .O(\ptr[3][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair366" *) 
  LUT3 #(
    .INIT(8'hC5)) 
    \ptr[4][1]_i_1 
       (.I0(\ptr[4][1]_i_2_n_0 ),
        .I1(\^obs_ptr [7]),
        .I2(\FSM_sequential_stage_reg[1]_rep__3_n_0 ),
        .O(\ptr[4][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0F000F0F0F4F0F0F)) 
    \ptr[4][1]_i_2 
       (.I0(obs_unrooted[4]),
        .I1(\cid[22][2]_i_3_n_0 ),
        .I2(\^obs_ptr [13]),
        .I3(\cid[6][4]_i_2_n_0 ),
        .I4(\ptr[4][1]_i_3_n_0 ),
        .I5(\cid[4][5]_i_5_n_0 ),
        .O(\ptr[4][1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ptr[4][1]_i_3 
       (.I0(obs_growth[5]),
        .I1(obs_growth[4]),
        .O(\ptr[4][1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair372" *) 
  LUT3 #(
    .INIT(8'hC5)) 
    \ptr[5][0]_i_1 
       (.I0(\ptr[5][0]_i_2_n_0 ),
        .I1(\^obs_ptr [9]),
        .I2(\FSM_sequential_stage_reg[1]_rep__2_n_0 ),
        .O(\ptr[5][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0F000F0F0F4F0F0F)) 
    \ptr[5][0]_i_2 
       (.I0(obs_unrooted[5]),
        .I1(\cid[25][4]_i_2_n_0 ),
        .I2(\^obs_ptr [15]),
        .I3(\cid[7][4]_i_2_n_0 ),
        .I4(\ptr[5][0]_i_3_n_0 ),
        .I5(\cid[5][5]_i_5_n_0 ),
        .O(\ptr[5][0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ptr[5][0]_i_3 
       (.I0(obs_growth[47]),
        .I1(obs_growth[46]),
        .O(\ptr[5][0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair382" *) 
  LUT3 #(
    .INIT(8'hC5)) 
    \ptr[6][1]_i_1 
       (.I0(\ptr[6][1]_i_2_n_0 ),
        .I1(\^obs_ptr [13]),
        .I2(\FSM_sequential_stage_reg[1]_rep__3_n_0 ),
        .O(\ptr[6][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0F000F0F0F4F0F0F)) 
    \ptr[6][1]_i_2 
       (.I0(obs_unrooted[6]),
        .I1(\cid[26][3]_i_4_n_0 ),
        .I2(\^obs_ptr [19]),
        .I3(\cid[8][3]_i_3_n_0 ),
        .I4(\ptr[6][1]_i_3_n_0 ),
        .I5(\cid[6][5]_i_5_n_0 ),
        .O(\ptr[6][1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ptr[6][1]_i_3 
       (.I0(obs_growth[7]),
        .I1(obs_growth[6]),
        .O(\ptr[6][1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair384" *) 
  LUT3 #(
    .INIT(8'hC5)) 
    \ptr[7][0]_i_1 
       (.I0(\ptr[7][0]_i_2_n_0 ),
        .I1(\^obs_ptr [15]),
        .I2(\FSM_sequential_stage_reg[1]_rep__2_n_0 ),
        .O(\ptr[7][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0F000F0F0F4F0F0F)) 
    \ptr[7][0]_i_2 
       (.I0(obs_unrooted[7]),
        .I1(\cid[29][3]_i_3_n_0 ),
        .I2(\^obs_ptr [21]),
        .I3(\cid[9][3]_i_3_n_0 ),
        .I4(\ptr[7][0]_i_3_n_0 ),
        .I5(\cid[7][5]_i_5_n_0 ),
        .O(\ptr[7][0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ptr[7][0]_i_3 
       (.I0(obs_growth[63]),
        .I1(obs_growth[62]),
        .O(\ptr[7][0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00D1FFFF00D10000)) 
    \ptr[8][1]_i_1 
       (.I0(\ptr[8][1]_i_2_n_0 ),
        .I1(\FSM_sequential_stage_reg[1]_rep__2_n_0 ),
        .I2(\^obs_ptr [19]),
        .I3(\cid[29][4]_i_2_n_0 ),
        .I4(\cid[25][5]_i_1_n_0 ),
        .I5(\^obs_ptr [25]),
        .O(\ptr[8][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0F000F0F0F4F0F0F)) 
    \ptr[8][1]_i_2 
       (.I0(obs_unrooted[8]),
        .I1(\cid[26][3]_i_2_n_0 ),
        .I2(\^obs_ptr [25]),
        .I3(\cid[8][5]_i_4_n_0 ),
        .I4(\ptr[8][1]_i_3_n_0 ),
        .I5(\cid[8][5]_i_6_n_0 ),
        .O(\ptr[8][1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ptr[8][1]_i_3 
       (.I0(obs_growth[9]),
        .I1(obs_growth[8]),
        .O(\ptr[8][1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00D1FFFF00D10000)) 
    \ptr[9][0]_i_1 
       (.I0(\ptr[9][0]_i_2_n_0 ),
        .I1(\FSM_sequential_stage_reg[1]_rep__2_n_0 ),
        .I2(\^obs_ptr [21]),
        .I3(\cid[29][4]_i_2_n_0 ),
        .I4(\cid[25][5]_i_1_n_0 ),
        .I5(\^obs_ptr [27]),
        .O(\ptr[9][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0F000F0F0F4F0F0F)) 
    \ptr[9][0]_i_2 
       (.I0(obs_unrooted[9]),
        .I1(\cid[29][5]_i_4_n_0 ),
        .I2(\^obs_ptr [27]),
        .I3(\cid[9][5]_i_4_n_0 ),
        .I4(\cid[29][1]_i_6_n_0 ),
        .I5(\cid[9][5]_i_6_n_0 ),
        .O(\ptr[9][0]_i_2_n_0 ));
  FDRE \ptr_reg[0][1] 
       (.C(clk),
        .CE(\cid[13][5]_i_1_n_0 ),
        .D(\ptr[0][1]_i_1_n_0 ),
        .Q(\^obs_ptr [1]),
        .R(reset));
  FDRE \ptr_reg[10][0] 
       (.C(clk),
        .CE(\cid[13][5]_i_1_n_0 ),
        .D(\ptr[10][0]_i_1_n_0 ),
        .Q(\^obs_ptr [30]),
        .R(reset));
  FDRE \ptr_reg[10][1] 
       (.C(clk),
        .CE(\cid[13][5]_i_1_n_0 ),
        .D(\ptr[10][1]_i_1_n_0 ),
        .Q(\^obs_ptr [31]),
        .R(reset));
  FDRE \ptr_reg[11][0] 
       (.C(clk),
        .CE(\cid[13][5]_i_1_n_0 ),
        .D(\ptr[11][0]_i_1_n_0 ),
        .Q(\^obs_ptr [33]),
        .R(reset));
  FDRE \ptr_reg[11][1] 
       (.C(clk),
        .CE(\cid[13][5]_i_1_n_0 ),
        .D(\ptr[11][1]_i_1_n_0 ),
        .Q(\^obs_ptr [34]),
        .R(reset));
  FDRE \ptr_reg[12][0] 
       (.C(clk),
        .CE(\cid[13][5]_i_1_n_0 ),
        .D(\ptr[12][0]_i_1_n_0 ),
        .Q(\^obs_ptr [36]),
        .R(reset));
  FDRE \ptr_reg[12][1] 
       (.C(clk),
        .CE(\cid[13][5]_i_1_n_0 ),
        .D(\ptr[12][1]_i_1_n_0 ),
        .Q(\^obs_ptr [37]),
        .R(reset));
  FDRE \ptr_reg[13][0] 
       (.C(clk),
        .CE(\cid[13][5]_i_1_n_0 ),
        .D(\ptr[13][0]_i_1_n_0 ),
        .Q(\^obs_ptr [39]),
        .R(reset));
  FDRE \ptr_reg[13][1] 
       (.C(clk),
        .CE(\cid[13][5]_i_1_n_0 ),
        .D(\ptr[13][1]_i_1_n_0 ),
        .Q(\^obs_ptr [40]),
        .R(reset));
  FDRE \ptr_reg[14][0] 
       (.C(clk),
        .CE(\cid[25][5]_i_1_n_0 ),
        .D(\ptr[14][0]_i_1_n_0 ),
        .Q(\^obs_ptr [42]),
        .R(reset));
  FDRE \ptr_reg[14][1] 
       (.C(clk),
        .CE(\cid[25][5]_i_1_n_0 ),
        .D(\ptr[14][1]_i_1_n_0 ),
        .Q(\^obs_ptr [43]),
        .R(reset));
  FDRE \ptr_reg[14][2] 
       (.C(clk),
        .CE(\cid[25][5]_i_1_n_0 ),
        .D(\ptr[14][2]_i_1_n_0 ),
        .Q(\^obs_ptr [44]),
        .R(reset));
  FDRE \ptr_reg[15][0] 
       (.C(clk),
        .CE(\cid[25][5]_i_1_n_0 ),
        .D(\ptr[15][0]_i_1_n_0 ),
        .Q(\^obs_ptr [45]),
        .R(reset));
  FDRE \ptr_reg[15][1] 
       (.C(clk),
        .CE(\cid[25][5]_i_1_n_0 ),
        .D(\ptr[15][1]_i_1_n_0 ),
        .Q(\^obs_ptr [46]),
        .R(reset));
  FDRE \ptr_reg[15][2] 
       (.C(clk),
        .CE(\cid[25][5]_i_1_n_0 ),
        .D(\ptr[15][2]_i_1_n_0 ),
        .Q(\^obs_ptr [47]),
        .R(reset));
  FDRE \ptr_reg[16][0] 
       (.C(clk),
        .CE(\cid[25][5]_i_1_n_0 ),
        .D(\ptr[16][0]_i_1_n_0 ),
        .Q(\^obs_ptr [48]),
        .R(reset));
  FDRE \ptr_reg[16][1] 
       (.C(clk),
        .CE(\cid[25][5]_i_1_n_0 ),
        .D(\ptr[16][1]_i_1_n_0 ),
        .Q(\^obs_ptr [49]),
        .R(reset));
  FDRE \ptr_reg[16][2] 
       (.C(clk),
        .CE(\cid[25][5]_i_1_n_0 ),
        .D(\ptr[16][2]_i_1_n_0 ),
        .Q(\^obs_ptr [50]),
        .R(reset));
  FDRE \ptr_reg[17][0] 
       (.C(clk),
        .CE(\cid[25][5]_i_1_n_0 ),
        .D(\ptr[17][0]_i_1_n_0 ),
        .Q(\^obs_ptr [51]),
        .R(reset));
  FDRE \ptr_reg[17][1] 
       (.C(clk),
        .CE(\cid[25][5]_i_1_n_0 ),
        .D(\ptr[17][1]_i_1_n_0 ),
        .Q(\^obs_ptr [52]),
        .R(reset));
  FDRE \ptr_reg[17][2] 
       (.C(clk),
        .CE(\cid[25][5]_i_1_n_0 ),
        .D(\ptr[17][2]_i_1_n_0 ),
        .Q(\^obs_ptr [53]),
        .R(reset));
  FDRE \ptr_reg[18][0] 
       (.C(clk),
        .CE(\cid[25][5]_i_1_n_0 ),
        .D(\ptr[18][0]_i_1_n_0 ),
        .Q(\^obs_ptr [54]),
        .R(reset));
  FDRE \ptr_reg[18][1] 
       (.C(clk),
        .CE(\cid[25][5]_i_1_n_0 ),
        .D(\ptr[18][1]_i_1_n_0 ),
        .Q(\^obs_ptr [55]),
        .R(reset));
  FDRE \ptr_reg[18][2] 
       (.C(clk),
        .CE(\cid[25][5]_i_1_n_0 ),
        .D(\ptr[18][2]_i_1_n_0 ),
        .Q(\^obs_ptr [56]),
        .R(reset));
  FDRE \ptr_reg[19][0] 
       (.C(clk),
        .CE(\cid[25][5]_i_1_n_0 ),
        .D(\ptr[19][0]_i_1_n_0 ),
        .Q(\^obs_ptr [57]),
        .R(reset));
  FDRE \ptr_reg[19][1] 
       (.C(clk),
        .CE(\cid[25][5]_i_1_n_0 ),
        .D(\ptr[19][1]_i_1_n_0 ),
        .Q(\^obs_ptr [58]),
        .R(reset));
  FDRE \ptr_reg[19][2] 
       (.C(clk),
        .CE(\cid[25][5]_i_1_n_0 ),
        .D(\ptr[19][2]_i_1_n_0 ),
        .Q(\^obs_ptr [59]),
        .R(reset));
  FDRE \ptr_reg[1][0] 
       (.C(clk),
        .CE(\cid[13][5]_i_1_n_0 ),
        .D(\ptr[1][0]_i_1_n_0 ),
        .Q(\^obs_ptr [3]),
        .R(reset));
  FDRE \ptr_reg[20][0] 
       (.C(clk),
        .CE(\cid[25][5]_i_1_n_0 ),
        .D(\ptr[20][0]_i_1_n_0 ),
        .Q(\^obs_ptr [60]),
        .R(reset));
  FDRE \ptr_reg[20][1] 
       (.C(clk),
        .CE(\cid[25][5]_i_1_n_0 ),
        .D(\ptr[20][1]_i_1_n_0 ),
        .Q(\^obs_ptr [61]),
        .R(reset));
  FDRE \ptr_reg[20][2] 
       (.C(clk),
        .CE(\cid[25][5]_i_1_n_0 ),
        .D(\ptr[20][2]_i_1_n_0 ),
        .Q(\^obs_ptr [62]),
        .R(reset));
  FDRE \ptr_reg[21][0] 
       (.C(clk),
        .CE(\cid[25][5]_i_1_n_0 ),
        .D(\ptr[21][0]_i_1_n_0 ),
        .Q(\^obs_ptr [63]),
        .R(reset));
  FDRE \ptr_reg[21][1] 
       (.C(clk),
        .CE(\cid[25][5]_i_1_n_0 ),
        .D(\ptr[21][1]_i_1_n_0 ),
        .Q(\^obs_ptr [64]),
        .R(reset));
  FDRE \ptr_reg[21][2] 
       (.C(clk),
        .CE(\cid[25][5]_i_1_n_0 ),
        .D(\ptr[21][2]_i_1_n_0 ),
        .Q(\^obs_ptr [65]),
        .R(reset));
  FDRE \ptr_reg[22][0] 
       (.C(clk),
        .CE(\cid[25][5]_i_1_n_0 ),
        .D(\ptr[22][0]_i_1_n_0 ),
        .Q(\^obs_ptr [66]),
        .R(reset));
  FDRE \ptr_reg[22][1] 
       (.C(clk),
        .CE(\cid[25][5]_i_1_n_0 ),
        .D(\ptr[22][1]_i_1_n_0 ),
        .Q(\^obs_ptr [67]),
        .R(reset));
  FDRE \ptr_reg[22][2] 
       (.C(clk),
        .CE(\cid[25][5]_i_1_n_0 ),
        .D(\ptr[22][2]_i_1_n_0 ),
        .Q(\^obs_ptr [68]),
        .R(reset));
  FDRE \ptr_reg[23][0] 
       (.C(clk),
        .CE(\cid[25][5]_i_1_n_0 ),
        .D(\ptr[23][0]_i_1_n_0 ),
        .Q(\^obs_ptr [69]),
        .R(reset));
  FDRE \ptr_reg[23][1] 
       (.C(clk),
        .CE(\cid[25][5]_i_1_n_0 ),
        .D(\ptr[23][1]_i_1_n_0 ),
        .Q(\^obs_ptr [70]),
        .R(reset));
  FDRE \ptr_reg[23][2] 
       (.C(clk),
        .CE(\cid[25][5]_i_1_n_0 ),
        .D(\ptr[23][2]_i_1_n_0 ),
        .Q(\^obs_ptr [71]),
        .R(reset));
  FDRE \ptr_reg[24][0] 
       (.C(clk),
        .CE(\cid[25][5]_i_1_n_0 ),
        .D(\ptr[24][0]_i_1_n_0 ),
        .Q(\^obs_ptr [72]),
        .R(reset));
  FDRE \ptr_reg[24][1] 
       (.C(clk),
        .CE(\cid[25][5]_i_1_n_0 ),
        .D(\ptr[24][1]_i_1_n_0 ),
        .Q(\^obs_ptr [73]),
        .R(reset));
  FDRE \ptr_reg[24][2] 
       (.C(clk),
        .CE(\cid[25][5]_i_1_n_0 ),
        .D(\ptr[24][2]_i_1_n_0 ),
        .Q(\^obs_ptr [74]),
        .R(reset));
  FDRE \ptr_reg[25][0] 
       (.C(clk),
        .CE(\cid[25][5]_i_1_n_0 ),
        .D(\ptr[25][0]_i_1_n_0 ),
        .Q(\^obs_ptr [75]),
        .R(reset));
  FDRE \ptr_reg[25][1] 
       (.C(clk),
        .CE(\cid[25][5]_i_1_n_0 ),
        .D(\ptr[25][1]_i_1_n_0 ),
        .Q(\^obs_ptr [76]),
        .R(reset));
  FDRE \ptr_reg[25][2] 
       (.C(clk),
        .CE(\cid[25][5]_i_1_n_0 ),
        .D(\ptr[25][2]_i_1_n_0 ),
        .Q(\^obs_ptr [77]),
        .R(reset));
  FDRE \ptr_reg[26][0] 
       (.C(clk),
        .CE(\cid[26][5]_i_1_n_0 ),
        .D(\ptr[26][0]_i_1_n_0 ),
        .Q(\^obs_ptr [78]),
        .R(reset));
  FDRE \ptr_reg[26][1] 
       (.C(clk),
        .CE(\cid[26][5]_i_1_n_0 ),
        .D(\ptr[26][1]_i_1_n_0 ),
        .Q(\^obs_ptr [79]),
        .R(reset));
  FDRE \ptr_reg[26][2] 
       (.C(clk),
        .CE(\cid[26][5]_i_1_n_0 ),
        .D(\ptr[26][2]_i_1_n_0 ),
        .Q(\^obs_ptr [80]),
        .R(reset));
  FDRE \ptr_reg[27][0] 
       (.C(clk),
        .CE(\cid[27][5]_i_1_n_0 ),
        .D(\ptr[27][0]_i_1_n_0 ),
        .Q(\^obs_ptr [81]),
        .R(reset));
  FDRE \ptr_reg[27][1] 
       (.C(clk),
        .CE(\cid[27][5]_i_1_n_0 ),
        .D(\ptr[27][1]_i_1_n_0 ),
        .Q(\^obs_ptr [82]),
        .R(reset));
  FDRE \ptr_reg[27][2] 
       (.C(clk),
        .CE(\cid[27][5]_i_1_n_0 ),
        .D(\ptr[27][2]_i_1_n_0 ),
        .Q(\^obs_ptr [83]),
        .R(reset));
  FDRE \ptr_reg[28][0] 
       (.C(clk),
        .CE(\cid[28][5]_i_1_n_0 ),
        .D(\ptr[28][0]_i_1_n_0 ),
        .Q(\^obs_ptr [84]),
        .R(reset));
  FDRE \ptr_reg[28][1] 
       (.C(clk),
        .CE(\cid[28][5]_i_1_n_0 ),
        .D(\ptr[28][1]_i_1_n_0 ),
        .Q(\^obs_ptr [85]),
        .R(reset));
  FDRE \ptr_reg[28][2] 
       (.C(clk),
        .CE(\cid[28][5]_i_1_n_0 ),
        .D(\ptr[28][2]_i_1_n_0 ),
        .Q(\^obs_ptr [86]),
        .R(reset));
  FDRE \ptr_reg[29][0] 
       (.C(clk),
        .CE(\cid[29][5]_i_1_n_0 ),
        .D(\ptr[29][0]_i_1_n_0 ),
        .Q(\^obs_ptr [87]),
        .R(reset));
  FDRE \ptr_reg[29][1] 
       (.C(clk),
        .CE(\cid[29][5]_i_1_n_0 ),
        .D(\ptr[29][1]_i_1_n_0 ),
        .Q(\^obs_ptr [88]),
        .R(reset));
  FDRE \ptr_reg[29][2] 
       (.C(clk),
        .CE(\cid[29][5]_i_1_n_0 ),
        .D(\ptr[29][2]_i_1_n_0 ),
        .Q(\^obs_ptr [89]),
        .R(reset));
  FDRE \ptr_reg[2][1] 
       (.C(clk),
        .CE(\cid[25][5]_i_1_n_0 ),
        .D(c_ptr),
        .Q(\^obs_ptr [7]),
        .R(reset));
  FDRE \ptr_reg[3][0] 
       (.C(clk),
        .CE(\cid[25][5]_i_1_n_0 ),
        .D(\ptr[3][0]_i_1_n_0 ),
        .Q(\^obs_ptr [9]),
        .R(reset));
  FDRE \ptr_reg[4][1] 
       (.C(clk),
        .CE(\cid[25][5]_i_1_n_0 ),
        .D(\ptr[4][1]_i_1_n_0 ),
        .Q(\^obs_ptr [13]),
        .R(reset));
  FDRE \ptr_reg[5][0] 
       (.C(clk),
        .CE(\cid[25][5]_i_1_n_0 ),
        .D(\ptr[5][0]_i_1_n_0 ),
        .Q(\^obs_ptr [15]),
        .R(reset));
  FDRE \ptr_reg[6][1] 
       (.C(clk),
        .CE(\cid[25][5]_i_1_n_0 ),
        .D(\ptr[6][1]_i_1_n_0 ),
        .Q(\^obs_ptr [19]),
        .R(reset));
  FDRE \ptr_reg[7][0] 
       (.C(clk),
        .CE(\cid[25][5]_i_1_n_0 ),
        .D(\ptr[7][0]_i_1_n_0 ),
        .Q(\^obs_ptr [21]),
        .R(reset));
  FDRE \ptr_reg[8][1] 
       (.C(clk),
        .CE(1'b1),
        .D(\ptr[8][1]_i_1_n_0 ),
        .Q(\^obs_ptr [25]),
        .R(reset));
  FDRE \ptr_reg[9][0] 
       (.C(clk),
        .CE(1'b1),
        .D(\ptr[9][0]_i_1_n_0 ),
        .Q(\^obs_ptr [27]),
        .R(reset));
  LUT6 #(
    .INIT(64'h3333333BFFFFFFFB)) 
    \step_cnt[0]_i_1 
       (.I0(stage__0[2]),
        .I1(\cid[13][5]_i_1_n_0 ),
        .I2(\step_cnt[0]_i_2_n_0 ),
        .I3(\FSM_sequential_stage[1]_i_2_n_0 ),
        .I4(done_i_7_n_0),
        .I5(\step_cnt_reg_n_0_[0] ),
        .O(\step_cnt[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \step_cnt[0]_i_2 
       (.I0(\busy[19]_i_1_n_0 ),
        .I1(\busy[20]_i_1_n_0 ),
        .I2(\busy[17]_i_1_n_0 ),
        .I3(\busy[18]_i_1_n_0 ),
        .I4(\FSM_sequential_stage[2]_i_5_n_0 ),
        .I5(\FSM_sequential_stage[2]_i_4_n_0 ),
        .O(\step_cnt[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \step_cnt[1]_i_1 
       (.I0(done_i_3_n_0),
        .I1(done_i_4_n_0),
        .I2(done_i_5_n_0),
        .I3(done_i_6_n_0),
        .I4(done_i_7_n_0),
        .I5(\step_cnt[1]_i_2_n_0 ),
        .O(\step_cnt[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair403" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \step_cnt[1]_i_2 
       (.I0(\step_cnt_reg_n_0_[0] ),
        .I1(\step_cnt_reg_n_0_[1] ),
        .O(\step_cnt[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFFFFFE)) 
    \step_cnt[2]_i_1 
       (.I0(done_i_3_n_0),
        .I1(done_i_4_n_0),
        .I2(done_i_5_n_0),
        .I3(done_i_6_n_0),
        .I4(done_i_7_n_0),
        .I5(\step_cnt[2]_i_2_n_0 ),
        .O(\step_cnt[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair403" *) 
  LUT3 #(
    .INIT(8'h95)) 
    \step_cnt[2]_i_2 
       (.I0(\step_cnt_reg_n_0_[2] ),
        .I1(\step_cnt_reg_n_0_[1] ),
        .I2(\step_cnt_reg_n_0_[0] ),
        .O(\step_cnt[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFFFFFE)) 
    \step_cnt[3]_i_1 
       (.I0(done_i_3_n_0),
        .I1(done_i_4_n_0),
        .I2(done_i_5_n_0),
        .I3(done_i_6_n_0),
        .I4(done_i_7_n_0),
        .I5(\step_cnt[3]_i_2_n_0 ),
        .O(\step_cnt[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair151" *) 
  LUT4 #(
    .INIT(16'h9555)) 
    \step_cnt[3]_i_2 
       (.I0(\step_cnt_reg_n_0_[3] ),
        .I1(\step_cnt_reg_n_0_[2] ),
        .I2(\step_cnt_reg_n_0_[0] ),
        .I3(\step_cnt_reg_n_0_[1] ),
        .O(\step_cnt[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFFFFFE)) 
    \step_cnt[4]_i_1 
       (.I0(done_i_3_n_0),
        .I1(done_i_4_n_0),
        .I2(done_i_5_n_0),
        .I3(done_i_6_n_0),
        .I4(done_i_7_n_0),
        .I5(\step_cnt[4]_i_2_n_0 ),
        .O(\step_cnt[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair151" *) 
  LUT5 #(
    .INIT(32'h95555555)) 
    \step_cnt[4]_i_2 
       (.I0(\step_cnt_reg_n_0_[4] ),
        .I1(\step_cnt_reg_n_0_[3] ),
        .I2(\step_cnt_reg_n_0_[1] ),
        .I3(\step_cnt_reg_n_0_[0] ),
        .I4(\step_cnt_reg_n_0_[2] ),
        .O(\step_cnt[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFFFFFE)) 
    \step_cnt[5]_i_1 
       (.I0(done_i_3_n_0),
        .I1(done_i_4_n_0),
        .I2(done_i_5_n_0),
        .I3(done_i_6_n_0),
        .I4(done_i_7_n_0),
        .I5(\step_cnt[5]_i_2_n_0 ),
        .O(\step_cnt[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h9555555555555555)) 
    \step_cnt[5]_i_2 
       (.I0(\step_cnt_reg_n_0_[5] ),
        .I1(\step_cnt_reg_n_0_[4] ),
        .I2(\step_cnt_reg_n_0_[2] ),
        .I3(\step_cnt_reg_n_0_[0] ),
        .I4(\step_cnt_reg_n_0_[1] ),
        .I5(\step_cnt_reg_n_0_[3] ),
        .O(\step_cnt[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \step_cnt[6]_i_1 
       (.I0(done_i_3_n_0),
        .I1(done_i_4_n_0),
        .I2(done_i_5_n_0),
        .I3(done_i_6_n_0),
        .I4(done_i_7_n_0),
        .I5(\step_cnt[6]_i_2_n_0 ),
        .O(\step_cnt[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair395" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \step_cnt[6]_i_2 
       (.I0(\step_cnt_reg_n_0_[6] ),
        .I1(\step_cnt[7]_i_4_n_0 ),
        .O(\step_cnt[6]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h66FE)) 
    \step_cnt[7]_i_1 
       (.I0(stage__0[2]),
        .I1(stage__0[0]),
        .I2(start),
        .I3(\FSM_sequential_stage_reg[1]_rep__1_n_0 ),
        .O(step_cnt));
  LUT6 #(
    .INIT(64'h00000000FFFFFFFE)) 
    \step_cnt[7]_i_2 
       (.I0(done_i_3_n_0),
        .I1(done_i_4_n_0),
        .I2(done_i_5_n_0),
        .I3(done_i_6_n_0),
        .I4(done_i_7_n_0),
        .I5(\step_cnt[7]_i_3_n_0 ),
        .O(\step_cnt[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair395" *) 
  LUT3 #(
    .INIT(8'h95)) 
    \step_cnt[7]_i_3 
       (.I0(\step_cnt_reg_n_0_[7] ),
        .I1(\step_cnt[7]_i_4_n_0 ),
        .I2(\step_cnt_reg_n_0_[6] ),
        .O(\step_cnt[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \step_cnt[7]_i_4 
       (.I0(\step_cnt_reg_n_0_[4] ),
        .I1(\step_cnt_reg_n_0_[2] ),
        .I2(\step_cnt_reg_n_0_[0] ),
        .I3(\step_cnt_reg_n_0_[1] ),
        .I4(\step_cnt_reg_n_0_[3] ),
        .I5(\step_cnt_reg_n_0_[5] ),
        .O(\step_cnt[7]_i_4_n_0 ));
  FDRE \step_cnt_reg[0] 
       (.C(clk),
        .CE(step_cnt),
        .D(\step_cnt[0]_i_1_n_0 ),
        .Q(\step_cnt_reg_n_0_[0] ),
        .R(reset));
  FDRE \step_cnt_reg[1] 
       (.C(clk),
        .CE(step_cnt),
        .D(\step_cnt[1]_i_1_n_0 ),
        .Q(\step_cnt_reg_n_0_[1] ),
        .R(reset));
  FDRE \step_cnt_reg[2] 
       (.C(clk),
        .CE(step_cnt),
        .D(\step_cnt[2]_i_1_n_0 ),
        .Q(\step_cnt_reg_n_0_[2] ),
        .R(reset));
  FDRE \step_cnt_reg[3] 
       (.C(clk),
        .CE(step_cnt),
        .D(\step_cnt[3]_i_1_n_0 ),
        .Q(\step_cnt_reg_n_0_[3] ),
        .R(reset));
  FDRE \step_cnt_reg[4] 
       (.C(clk),
        .CE(step_cnt),
        .D(\step_cnt[4]_i_1_n_0 ),
        .Q(\step_cnt_reg_n_0_[4] ),
        .R(reset));
  FDRE \step_cnt_reg[5] 
       (.C(clk),
        .CE(step_cnt),
        .D(\step_cnt[5]_i_1_n_0 ),
        .Q(\step_cnt_reg_n_0_[5] ),
        .R(reset));
  FDRE \step_cnt_reg[6] 
       (.C(clk),
        .CE(step_cnt),
        .D(\step_cnt[6]_i_1_n_0 ),
        .Q(\step_cnt_reg_n_0_[6] ),
        .R(reset));
  FDRE \step_cnt_reg[7] 
       (.C(clk),
        .CE(step_cnt),
        .D(\step_cnt[7]_i_2_n_0 ),
        .Q(\step_cnt_reg_n_0_[7] ),
        .R(reset));
  LUT5 #(
    .INIT(32'h99FF0060)) 
    \unrooted[0]_i_1 
       (.I0(stage__0[0]),
        .I1(stage__0[2]),
        .I2(\cid[2][4]_i_2_n_0 ),
        .I3(\FSM_sequential_stage_reg[1]_rep__0_n_0 ),
        .I4(obs_unrooted[0]),
        .O(\unrooted[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h99FF0060)) 
    \unrooted[10]_i_1 
       (.I0(stage__0[0]),
        .I1(stage__0[2]),
        .I2(\cid[14][2]_i_2_n_0 ),
        .I3(\FSM_sequential_stage_reg[1]_rep__0_n_0 ),
        .I4(obs_unrooted[10]),
        .O(\unrooted[10]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h99FF0060)) 
    \unrooted[11]_i_1 
       (.I0(stage__0[0]),
        .I1(stage__0[2]),
        .I2(\cid[15][3]_i_2_n_0 ),
        .I3(\FSM_sequential_stage_reg[1]_rep__0_n_0 ),
        .I4(obs_unrooted[11]),
        .O(\unrooted[11]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h99FF0060)) 
    \unrooted[12]_i_1 
       (.I0(stage__0[0]),
        .I1(stage__0[2]),
        .I2(\cid[16][4]_i_3_n_0 ),
        .I3(\FSM_sequential_stage_reg[1]_rep__0_n_0 ),
        .I4(obs_unrooted[12]),
        .O(\unrooted[12]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h99FF0060)) 
    \unrooted[13]_i_1 
       (.I0(stage__0[0]),
        .I1(stage__0[2]),
        .I2(\cid[17][4]_i_3_n_0 ),
        .I3(\FSM_sequential_stage_reg[1]_rep__0_n_0 ),
        .I4(obs_unrooted[13]),
        .O(\unrooted[13]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h99FF0060)) 
    \unrooted[14]_i_1 
       (.I0(stage__0[0]),
        .I1(stage__0[2]),
        .I2(\cid[18][4]_i_2_n_0 ),
        .I3(\FSM_sequential_stage_reg[1]_rep__0_n_0 ),
        .I4(obs_unrooted[14]),
        .O(\unrooted[14]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h99FF0060)) 
    \unrooted[15]_i_1 
       (.I0(stage__0[0]),
        .I1(stage__0[2]),
        .I2(\cid[19][5]_i_3_n_0 ),
        .I3(\FSM_sequential_stage_reg[1]_rep__0_n_0 ),
        .I4(obs_unrooted[15]),
        .O(\unrooted[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h99FF0060)) 
    \unrooted[16]_i_1 
       (.I0(stage__0[0]),
        .I1(stage__0[2]),
        .I2(\cid[20][4]_i_2_n_0 ),
        .I3(\FSM_sequential_stage_reg[1]_rep__0_n_0 ),
        .I4(obs_unrooted[16]),
        .O(\unrooted[16]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h99FF0060)) 
    \unrooted[17]_i_1 
       (.I0(stage__0[0]),
        .I1(stage__0[2]),
        .I2(\cid[21][4]_i_2_n_0 ),
        .I3(\FSM_sequential_stage_reg[1]_rep__0_n_0 ),
        .I4(obs_unrooted[17]),
        .O(\unrooted[17]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h99FF0060)) 
    \unrooted[18]_i_1 
       (.I0(stage__0[0]),
        .I1(stage__0[2]),
        .I2(\cid[22][2]_i_3_n_0 ),
        .I3(\FSM_sequential_stage_reg[1]_rep__0_n_0 ),
        .I4(obs_unrooted[18]),
        .O(\unrooted[18]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h99FF0060)) 
    \unrooted[19]_i_1 
       (.I0(stage__0[0]),
        .I1(stage__0[2]),
        .I2(\cid[23][2]_i_3_n_0 ),
        .I3(\FSM_sequential_stage_reg[1]_rep__0_n_0 ),
        .I4(obs_unrooted[19]),
        .O(\unrooted[19]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h99FF0060)) 
    \unrooted[1]_i_1 
       (.I0(stage__0[0]),
        .I1(stage__0[2]),
        .I2(\cid[3][4]_i_2_n_0 ),
        .I3(\FSM_sequential_stage_reg[1]_rep__0_n_0 ),
        .I4(obs_unrooted[1]),
        .O(\unrooted[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h99FF0060)) 
    \unrooted[20]_i_1 
       (.I0(stage__0[0]),
        .I1(stage__0[2]),
        .I2(\cid[24][5]_i_3_n_0 ),
        .I3(\FSM_sequential_stage_reg[1]_rep__0_n_0 ),
        .I4(obs_unrooted[20]),
        .O(\unrooted[20]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h99FF0060)) 
    \unrooted[21]_i_1 
       (.I0(stage__0[0]),
        .I1(stage__0[2]),
        .I2(\cid[25][4]_i_2_n_0 ),
        .I3(\FSM_sequential_stage_reg[1]_rep__0_n_0 ),
        .I4(obs_unrooted[21]),
        .O(\unrooted[21]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h99FF0060)) 
    \unrooted[22]_i_1 
       (.I0(stage__0[0]),
        .I1(stage__0[2]),
        .I2(\cid[26][3]_i_4_n_0 ),
        .I3(\FSM_sequential_stage_reg[1]_rep__0_n_0 ),
        .I4(obs_unrooted[22]),
        .O(\unrooted[22]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h99FF0060)) 
    \unrooted[23]_i_1 
       (.I0(stage__0[0]),
        .I1(stage__0[2]),
        .I2(\cid[27][3]_i_3_n_0 ),
        .I3(\FSM_sequential_stage_reg[1]_rep__0_n_0 ),
        .I4(obs_unrooted[23]),
        .O(\unrooted[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h99FF0060)) 
    \unrooted[24]_i_1 
       (.I0(stage__0[0]),
        .I1(stage__0[2]),
        .I2(\cid[28][3]_i_4_n_0 ),
        .I3(\FSM_sequential_stage_reg[1]_rep__0_n_0 ),
        .I4(obs_unrooted[24]),
        .O(\unrooted[24]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h99FF0060)) 
    \unrooted[25]_i_1 
       (.I0(stage__0[0]),
        .I1(stage__0[2]),
        .I2(\cid[29][3]_i_3_n_0 ),
        .I3(\FSM_sequential_stage_reg[1]_rep__0_n_0 ),
        .I4(obs_unrooted[25]),
        .O(\unrooted[25]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h99FF0060)) 
    \unrooted[26]_i_1 
       (.I0(stage__0[0]),
        .I1(stage__0[2]),
        .I2(\cid[26][3]_i_2_n_0 ),
        .I3(\FSM_sequential_stage_reg[1]_rep__0_n_0 ),
        .I4(obs_unrooted[26]),
        .O(\unrooted[26]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h99FF0060)) 
    \unrooted[27]_i_1 
       (.I0(stage__0[0]),
        .I1(stage__0[2]),
        .I2(\cid[27][5]_i_4_n_0 ),
        .I3(\FSM_sequential_stage_reg[1]_rep__0_n_0 ),
        .I4(obs_unrooted[27]),
        .O(\unrooted[27]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h99FF0060)) 
    \unrooted[28]_i_1 
       (.I0(stage__0[0]),
        .I1(stage__0[2]),
        .I2(\cid[28][3]_i_2_n_0 ),
        .I3(\FSM_sequential_stage_reg[1]_rep__0_n_0 ),
        .I4(obs_unrooted[28]),
        .O(\unrooted[28]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h99FF0060)) 
    \unrooted[29]_i_1 
       (.I0(stage__0[0]),
        .I1(stage__0[2]),
        .I2(\cid[29][5]_i_4_n_0 ),
        .I3(\FSM_sequential_stage_reg[1]_rep__0_n_0 ),
        .I4(obs_unrooted[29]),
        .O(\unrooted[29]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h99FF0060)) 
    \unrooted[2]_i_1 
       (.I0(stage__0[0]),
        .I1(stage__0[2]),
        .I2(\cid[4][4]_i_2_n_0 ),
        .I3(\FSM_sequential_stage_reg[1]_rep__0_n_0 ),
        .I4(obs_unrooted[2]),
        .O(\unrooted[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h99FF0060)) 
    \unrooted[3]_i_1 
       (.I0(stage__0[0]),
        .I1(stage__0[2]),
        .I2(\cid[5][4]_i_2_n_0 ),
        .I3(\FSM_sequential_stage_reg[1]_rep__0_n_0 ),
        .I4(obs_unrooted[3]),
        .O(\unrooted[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h99FF0060)) 
    \unrooted[4]_i_1 
       (.I0(stage__0[0]),
        .I1(stage__0[2]),
        .I2(\cid[6][4]_i_2_n_0 ),
        .I3(\FSM_sequential_stage_reg[1]_rep__4_n_0 ),
        .I4(obs_unrooted[4]),
        .O(\unrooted[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h99FF0060)) 
    \unrooted[5]_i_1 
       (.I0(stage__0[0]),
        .I1(stage__0[2]),
        .I2(\cid[7][4]_i_2_n_0 ),
        .I3(\FSM_sequential_stage_reg[1]_rep__0_n_0 ),
        .I4(obs_unrooted[5]),
        .O(\unrooted[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h99FF0060)) 
    \unrooted[6]_i_1 
       (.I0(stage__0[0]),
        .I1(stage__0[2]),
        .I2(\cid[8][3]_i_3_n_0 ),
        .I3(\FSM_sequential_stage_reg[1]_rep__0_n_0 ),
        .I4(obs_unrooted[6]),
        .O(\unrooted[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h99FF0060)) 
    \unrooted[7]_i_1 
       (.I0(stage__0[0]),
        .I1(stage__0[2]),
        .I2(\cid[9][3]_i_3_n_0 ),
        .I3(\FSM_sequential_stage_reg[1]_rep__0_n_0 ),
        .I4(obs_unrooted[7]),
        .O(\unrooted[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h99FF0060)) 
    \unrooted[8]_i_1 
       (.I0(stage__0[0]),
        .I1(stage__0[2]),
        .I2(\cid[8][5]_i_4_n_0 ),
        .I3(\FSM_sequential_stage_reg[1]_rep__0_n_0 ),
        .I4(obs_unrooted[8]),
        .O(\unrooted[8]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h99FF0060)) 
    \unrooted[9]_i_1 
       (.I0(stage__0[0]),
        .I1(stage__0[2]),
        .I2(\cid[9][5]_i_4_n_0 ),
        .I3(\FSM_sequential_stage_reg[1]_rep__0_n_0 ),
        .I4(obs_unrooted[9]),
        .O(\unrooted[9]_i_1_n_0 ));
  FDRE \unrooted_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\unrooted[0]_i_1_n_0 ),
        .Q(obs_unrooted[0]),
        .R(reset));
  FDRE \unrooted_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\unrooted[10]_i_1_n_0 ),
        .Q(obs_unrooted[10]),
        .R(reset));
  FDRE \unrooted_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(\unrooted[11]_i_1_n_0 ),
        .Q(obs_unrooted[11]),
        .R(reset));
  FDRE \unrooted_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(\unrooted[12]_i_1_n_0 ),
        .Q(obs_unrooted[12]),
        .R(reset));
  FDRE \unrooted_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(\unrooted[13]_i_1_n_0 ),
        .Q(obs_unrooted[13]),
        .R(reset));
  FDRE \unrooted_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(\unrooted[14]_i_1_n_0 ),
        .Q(obs_unrooted[14]),
        .R(reset));
  FDRE \unrooted_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(\unrooted[15]_i_1_n_0 ),
        .Q(obs_unrooted[15]),
        .R(reset));
  FDRE \unrooted_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(\unrooted[16]_i_1_n_0 ),
        .Q(obs_unrooted[16]),
        .R(reset));
  FDRE \unrooted_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(\unrooted[17]_i_1_n_0 ),
        .Q(obs_unrooted[17]),
        .R(reset));
  FDRE \unrooted_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(\unrooted[18]_i_1_n_0 ),
        .Q(obs_unrooted[18]),
        .R(reset));
  FDRE \unrooted_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(\unrooted[19]_i_1_n_0 ),
        .Q(obs_unrooted[19]),
        .R(reset));
  FDRE \unrooted_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\unrooted[1]_i_1_n_0 ),
        .Q(obs_unrooted[1]),
        .R(reset));
  FDRE \unrooted_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .D(\unrooted[20]_i_1_n_0 ),
        .Q(obs_unrooted[20]),
        .R(reset));
  FDRE \unrooted_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .D(\unrooted[21]_i_1_n_0 ),
        .Q(obs_unrooted[21]),
        .R(reset));
  FDRE \unrooted_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .D(\unrooted[22]_i_1_n_0 ),
        .Q(obs_unrooted[22]),
        .R(reset));
  FDRE \unrooted_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .D(\unrooted[23]_i_1_n_0 ),
        .Q(obs_unrooted[23]),
        .R(reset));
  FDRE \unrooted_reg[24] 
       (.C(clk),
        .CE(1'b1),
        .D(\unrooted[24]_i_1_n_0 ),
        .Q(obs_unrooted[24]),
        .R(reset));
  FDRE \unrooted_reg[25] 
       (.C(clk),
        .CE(1'b1),
        .D(\unrooted[25]_i_1_n_0 ),
        .Q(obs_unrooted[25]),
        .R(reset));
  FDRE \unrooted_reg[26] 
       (.C(clk),
        .CE(1'b1),
        .D(\unrooted[26]_i_1_n_0 ),
        .Q(obs_unrooted[26]),
        .R(reset));
  FDRE \unrooted_reg[27] 
       (.C(clk),
        .CE(1'b1),
        .D(\unrooted[27]_i_1_n_0 ),
        .Q(obs_unrooted[27]),
        .R(reset));
  FDRE \unrooted_reg[28] 
       (.C(clk),
        .CE(1'b1),
        .D(\unrooted[28]_i_1_n_0 ),
        .Q(obs_unrooted[28]),
        .R(reset));
  FDRE \unrooted_reg[29] 
       (.C(clk),
        .CE(1'b1),
        .D(\unrooted[29]_i_1_n_0 ),
        .Q(obs_unrooted[29]),
        .R(reset));
  FDRE \unrooted_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\unrooted[2]_i_1_n_0 ),
        .Q(obs_unrooted[2]),
        .R(reset));
  FDRE \unrooted_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\unrooted[3]_i_1_n_0 ),
        .Q(obs_unrooted[3]),
        .R(reset));
  FDRE \unrooted_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\unrooted[4]_i_1_n_0 ),
        .Q(obs_unrooted[4]),
        .R(reset));
  FDRE \unrooted_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\unrooted[5]_i_1_n_0 ),
        .Q(obs_unrooted[5]),
        .R(reset));
  FDRE \unrooted_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\unrooted[6]_i_1_n_0 ),
        .Q(obs_unrooted[6]),
        .R(reset));
  FDRE \unrooted_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\unrooted[7]_i_1_n_0 ),
        .Q(obs_unrooted[7]),
        .R(reset));
  FDRE \unrooted_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\unrooted[8]_i_1_n_0 ),
        .Q(obs_unrooted[8]),
        .R(reset));
  FDRE \unrooted_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\unrooted[9]_i_1_n_0 ),
        .Q(obs_unrooted[9]),
        .R(reset));
  LUT6 #(
    .INIT(64'hBBFF0000FFFF0800)) 
    \whole[0]_i_1 
       (.I0(\FSM_sequential_stage_reg[1]_rep__1_n_0 ),
        .I1(stage__0[0]),
        .I2(obs_grown[0]),
        .I3(obs_active[0]),
        .I4(obs_whole[0]),
        .I5(stage__0[2]),
        .O(\whole[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBBFF0000FFFF0800)) 
    \whole[10]_i_1 
       (.I0(\FSM_sequential_stage_reg[1]_rep__1_n_0 ),
        .I1(stage__0[0]),
        .I2(obs_grown[10]),
        .I3(obs_active[10]),
        .I4(obs_whole[10]),
        .I5(stage__0[2]),
        .O(\whole[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBBFF0000FFFF0800)) 
    \whole[11]_i_1 
       (.I0(\FSM_sequential_stage_reg[1]_rep__1_n_0 ),
        .I1(stage__0[0]),
        .I2(obs_grown[11]),
        .I3(obs_active[11]),
        .I4(obs_whole[11]),
        .I5(stage__0[2]),
        .O(\whole[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBBFF0000FFFF0800)) 
    \whole[12]_i_1 
       (.I0(\FSM_sequential_stage_reg[1]_rep__1_n_0 ),
        .I1(stage__0[0]),
        .I2(obs_grown[12]),
        .I3(obs_active[12]),
        .I4(obs_whole[12]),
        .I5(stage__0[2]),
        .O(\whole[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBBFF0000FFFF0800)) 
    \whole[13]_i_1 
       (.I0(\FSM_sequential_stage_reg[1]_rep__1_n_0 ),
        .I1(stage__0[0]),
        .I2(obs_grown[13]),
        .I3(obs_active[13]),
        .I4(obs_whole[13]),
        .I5(stage__0[2]),
        .O(\whole[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAFAFFFFBBFB0000)) 
    \whole[14]_i_1 
       (.I0(\whole[14]_i_2_n_0 ),
        .I1(\FSM_sequential_stage_reg[1]_rep__4_n_0 ),
        .I2(obs_whole[10]),
        .I3(stage__0[0]),
        .I4(whole261_out),
        .I5(obs_whole[14]),
        .O(\whole[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair293" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \whole[14]_i_2 
       (.I0(obs_grown[14]),
        .I1(obs_active[14]),
        .I2(obs_whole[14]),
        .I3(stage__0[2]),
        .O(\whole[14]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0010AAAA80800000)) 
    \whole[14]_i_3 
       (.I0(stage__0[2]),
        .I1(obs_whole[14]),
        .I2(obs_active[14]),
        .I3(obs_grown[14]),
        .I4(stage__0[0]),
        .I5(\FSM_sequential_stage_reg[1]_rep__4_n_0 ),
        .O(whole261_out));
  LUT6 #(
    .INIT(64'hAEAEFFFFAEFF0000)) 
    \whole[15]_i_1 
       (.I0(\whole[15]_i_2_n_0 ),
        .I1(obs_whole[11]),
        .I2(stage__0[0]),
        .I3(\FSM_sequential_stage_reg[1]_rep__4_n_0 ),
        .I4(whole249_out),
        .I5(obs_whole[15]),
        .O(\whole[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair295" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \whole[15]_i_2 
       (.I0(obs_grown[15]),
        .I1(obs_active[15]),
        .I2(obs_whole[15]),
        .I3(stage__0[2]),
        .O(\whole[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0010AAAA80800000)) 
    \whole[15]_i_3 
       (.I0(stage__0[2]),
        .I1(obs_whole[15]),
        .I2(obs_active[15]),
        .I3(obs_grown[15]),
        .I4(stage__0[0]),
        .I5(\FSM_sequential_stage_reg[1]_rep__4_n_0 ),
        .O(whole249_out));
  LUT6 #(
    .INIT(64'hAEAEFFFFAEFF0000)) 
    \whole[16]_i_1 
       (.I0(\whole[16]_i_2_n_0 ),
        .I1(obs_whole[12]),
        .I2(stage__0[0]),
        .I3(\FSM_sequential_stage_reg[1]_rep__4_n_0 ),
        .I4(whole243_out),
        .I5(obs_whole[16]),
        .O(\whole[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair297" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \whole[16]_i_2 
       (.I0(obs_grown[16]),
        .I1(obs_active[16]),
        .I2(obs_whole[16]),
        .I3(stage__0[2]),
        .O(\whole[16]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0010AAAA80800000)) 
    \whole[16]_i_3 
       (.I0(stage__0[2]),
        .I1(obs_whole[16]),
        .I2(obs_active[16]),
        .I3(obs_grown[16]),
        .I4(stage__0[0]),
        .I5(\FSM_sequential_stage_reg[1]_rep__4_n_0 ),
        .O(whole243_out));
  LUT6 #(
    .INIT(64'hAAFAFFFFBBFB0000)) 
    \whole[17]_i_1 
       (.I0(\whole[17]_i_2_n_0 ),
        .I1(\FSM_sequential_stage_reg[1]_rep__4_n_0 ),
        .I2(obs_whole[13]),
        .I3(stage__0[0]),
        .I4(whole239_out),
        .I5(obs_whole[17]),
        .O(\whole[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair298" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \whole[17]_i_2 
       (.I0(obs_grown[17]),
        .I1(obs_active[17]),
        .I2(obs_whole[17]),
        .I3(stage__0[2]),
        .O(\whole[17]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0010AAAA80800000)) 
    \whole[17]_i_3 
       (.I0(stage__0[2]),
        .I1(obs_whole[17]),
        .I2(obs_active[17]),
        .I3(obs_grown[17]),
        .I4(stage__0[0]),
        .I5(\FSM_sequential_stage_reg[1]_rep__4_n_0 ),
        .O(whole239_out));
  LUT6 #(
    .INIT(64'hAEAEFFFFAEFF0000)) 
    \whole[18]_i_1 
       (.I0(\whole[18]_i_2_n_0 ),
        .I1(obs_whole[14]),
        .I2(stage__0[0]),
        .I3(\FSM_sequential_stage_reg[1]_rep_n_0 ),
        .I4(whole225_out),
        .I5(obs_whole[18]),
        .O(\whole[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair299" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \whole[18]_i_2 
       (.I0(obs_grown[18]),
        .I1(obs_active[18]),
        .I2(obs_whole[18]),
        .I3(stage__0[2]),
        .O(\whole[18]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0010AAAA80800000)) 
    \whole[18]_i_3 
       (.I0(stage__0[2]),
        .I1(obs_whole[18]),
        .I2(obs_active[18]),
        .I3(obs_grown[18]),
        .I4(stage__0[0]),
        .I5(\FSM_sequential_stage_reg[1]_rep_n_0 ),
        .O(whole225_out));
  LUT6 #(
    .INIT(64'hAAFAFFFFBBFB0000)) 
    \whole[19]_i_1 
       (.I0(\whole[19]_i_2_n_0 ),
        .I1(\FSM_sequential_stage_reg[1]_rep_n_0 ),
        .I2(obs_whole[15]),
        .I3(stage__0[0]),
        .I4(whole213_out),
        .I5(obs_whole[19]),
        .O(\whole[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair300" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \whole[19]_i_2 
       (.I0(obs_grown[19]),
        .I1(obs_active[19]),
        .I2(obs_whole[19]),
        .I3(stage__0[2]),
        .O(\whole[19]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0010AAAA80800000)) 
    \whole[19]_i_3 
       (.I0(stage__0[2]),
        .I1(obs_whole[19]),
        .I2(obs_active[19]),
        .I3(obs_grown[19]),
        .I4(stage__0[0]),
        .I5(\FSM_sequential_stage_reg[1]_rep_n_0 ),
        .O(whole213_out));
  LUT6 #(
    .INIT(64'hBBFF0000FFFF0800)) 
    \whole[1]_i_1 
       (.I0(\FSM_sequential_stage_reg[1]_rep__1_n_0 ),
        .I1(stage__0[0]),
        .I2(obs_grown[1]),
        .I3(obs_active[1]),
        .I4(obs_whole[1]),
        .I5(stage__0[2]),
        .O(\whole[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAEAEFFFFAEFF0000)) 
    \whole[20]_i_1 
       (.I0(\whole[20]_i_2_n_0 ),
        .I1(obs_whole[16]),
        .I2(stage__0[0]),
        .I3(\FSM_sequential_stage_reg[1]_rep_n_0 ),
        .I4(whole207_out),
        .I5(obs_whole[20]),
        .O(\whole[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair301" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \whole[20]_i_2 
       (.I0(obs_grown[20]),
        .I1(obs_active[20]),
        .I2(obs_whole[20]),
        .I3(stage__0[2]),
        .O(\whole[20]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0010AAAA80800000)) 
    \whole[20]_i_3 
       (.I0(stage__0[2]),
        .I1(obs_whole[20]),
        .I2(obs_active[20]),
        .I3(obs_grown[20]),
        .I4(stage__0[0]),
        .I5(\FSM_sequential_stage_reg[1]_rep_n_0 ),
        .O(whole207_out));
  LUT6 #(
    .INIT(64'hAEAEFFFFAEFF0000)) 
    \whole[21]_i_1 
       (.I0(\whole[21]_i_2_n_0 ),
        .I1(obs_whole[17]),
        .I2(stage__0[0]),
        .I3(\FSM_sequential_stage_reg[1]_rep_n_0 ),
        .I4(whole201_out),
        .I5(obs_whole[21]),
        .O(\whole[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair302" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \whole[21]_i_2 
       (.I0(obs_grown[21]),
        .I1(obs_active[21]),
        .I2(obs_whole[21]),
        .I3(stage__0[2]),
        .O(\whole[21]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0010AAAA80800000)) 
    \whole[21]_i_3 
       (.I0(stage__0[2]),
        .I1(obs_whole[21]),
        .I2(obs_active[21]),
        .I3(obs_grown[21]),
        .I4(stage__0[0]),
        .I5(\FSM_sequential_stage_reg[1]_rep_n_0 ),
        .O(whole201_out));
  LUT6 #(
    .INIT(64'hAEAEFFFFAEFF0000)) 
    \whole[22]_i_1 
       (.I0(\whole[22]_i_2_n_0 ),
        .I1(obs_whole[18]),
        .I2(stage__0[0]),
        .I3(\FSM_sequential_stage_reg[1]_rep__4_n_0 ),
        .I4(whole197_out),
        .I5(obs_whole[22]),
        .O(\whole[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair303" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \whole[22]_i_2 
       (.I0(obs_grown[22]),
        .I1(obs_active[22]),
        .I2(obs_whole[22]),
        .I3(stage__0[2]),
        .O(\whole[22]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0010AAAA80800000)) 
    \whole[22]_i_3 
       (.I0(stage__0[2]),
        .I1(obs_whole[22]),
        .I2(obs_active[22]),
        .I3(obs_grown[22]),
        .I4(stage__0[0]),
        .I5(\FSM_sequential_stage_reg[1]_rep__4_n_0 ),
        .O(whole197_out));
  LUT6 #(
    .INIT(64'hAEAEFFFFAEFF0000)) 
    \whole[23]_i_1 
       (.I0(\whole[23]_i_2_n_0 ),
        .I1(obs_whole[19]),
        .I2(stage__0[0]),
        .I3(stage__0[1]),
        .I4(whole185_out),
        .I5(obs_whole[23]),
        .O(\whole[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair304" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \whole[23]_i_2 
       (.I0(obs_grown[23]),
        .I1(obs_active[23]),
        .I2(obs_whole[23]),
        .I3(stage__0[2]),
        .O(\whole[23]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0010AAAA80800000)) 
    \whole[23]_i_3 
       (.I0(stage__0[2]),
        .I1(obs_whole[23]),
        .I2(obs_active[23]),
        .I3(obs_grown[23]),
        .I4(stage__0[0]),
        .I5(\FSM_sequential_stage_reg[1]_rep__4_n_0 ),
        .O(whole185_out));
  LUT6 #(
    .INIT(64'hAAFAFFFFBBFB0000)) 
    \whole[24]_i_1 
       (.I0(\whole[24]_i_2_n_0 ),
        .I1(stage__0[1]),
        .I2(obs_whole[20]),
        .I3(stage__0[0]),
        .I4(whole179_out),
        .I5(obs_whole[24]),
        .O(\whole[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair305" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \whole[24]_i_2 
       (.I0(obs_grown[24]),
        .I1(obs_active[24]),
        .I2(obs_whole[24]),
        .I3(stage__0[2]),
        .O(\whole[24]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0010AAAA80800000)) 
    \whole[24]_i_3 
       (.I0(stage__0[2]),
        .I1(obs_whole[24]),
        .I2(obs_active[24]),
        .I3(obs_grown[24]),
        .I4(stage__0[0]),
        .I5(stage__0[1]),
        .O(whole179_out));
  LUT6 #(
    .INIT(64'hAAFAFFFFBBFB0000)) 
    \whole[25]_i_1 
       (.I0(\whole[25]_i_2_n_0 ),
        .I1(stage__0[1]),
        .I2(obs_whole[21]),
        .I3(stage__0[0]),
        .I4(whole129_out),
        .I5(obs_whole[25]),
        .O(\whole[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair306" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \whole[25]_i_2 
       (.I0(obs_grown[25]),
        .I1(obs_active[25]),
        .I2(obs_whole[25]),
        .I3(stage__0[2]),
        .O(\whole[25]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0010AAAA80800000)) 
    \whole[25]_i_3 
       (.I0(stage__0[2]),
        .I1(obs_whole[25]),
        .I2(obs_active[25]),
        .I3(obs_grown[25]),
        .I4(stage__0[0]),
        .I5(stage__0[1]),
        .O(whole129_out));
  LUT6 #(
    .INIT(64'hAAFAFFFFBBFB0000)) 
    \whole[26]_i_1 
       (.I0(\whole[26]_i_2_n_0 ),
        .I1(\FSM_sequential_stage_reg[1]_rep_n_0 ),
        .I2(obs_whole[22]),
        .I3(stage__0[0]),
        .I4(whole175_out),
        .I5(obs_whole[26]),
        .O(\whole[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair307" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \whole[26]_i_2 
       (.I0(obs_grown[26]),
        .I1(obs_active[26]),
        .I2(obs_whole[26]),
        .I3(stage__0[2]),
        .O(\whole[26]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0010AAAA80800000)) 
    \whole[26]_i_3 
       (.I0(stage__0[2]),
        .I1(obs_whole[26]),
        .I2(obs_active[26]),
        .I3(obs_grown[26]),
        .I4(stage__0[0]),
        .I5(\FSM_sequential_stage_reg[1]_rep_n_0 ),
        .O(whole175_out));
  LUT6 #(
    .INIT(64'hAEAEFFFFAEFF0000)) 
    \whole[27]_i_1 
       (.I0(\whole[27]_i_2_n_0 ),
        .I1(obs_whole[23]),
        .I2(stage__0[0]),
        .I3(\FSM_sequential_stage_reg[1]_rep_n_0 ),
        .I4(whole163_out),
        .I5(obs_whole[27]),
        .O(\whole[27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair308" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \whole[27]_i_2 
       (.I0(obs_grown[27]),
        .I1(obs_active[27]),
        .I2(obs_whole[27]),
        .I3(stage__0[2]),
        .O(\whole[27]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0010AAAA80800000)) 
    \whole[27]_i_3 
       (.I0(stage__0[2]),
        .I1(obs_whole[27]),
        .I2(obs_active[27]),
        .I3(obs_grown[27]),
        .I4(stage__0[0]),
        .I5(\FSM_sequential_stage_reg[1]_rep_n_0 ),
        .O(whole163_out));
  LUT6 #(
    .INIT(64'hAEAEFFFFAEFF0000)) 
    \whole[28]_i_1 
       (.I0(\whole[28]_i_2_n_0 ),
        .I1(obs_whole[24]),
        .I2(stage__0[0]),
        .I3(\FSM_sequential_stage_reg[1]_rep_n_0 ),
        .I4(whole157_out),
        .I5(obs_whole[28]),
        .O(\whole[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair309" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \whole[28]_i_2 
       (.I0(obs_grown[28]),
        .I1(obs_active[28]),
        .I2(obs_whole[28]),
        .I3(stage__0[2]),
        .O(\whole[28]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0010AAAA80800000)) 
    \whole[28]_i_3 
       (.I0(stage__0[2]),
        .I1(obs_whole[28]),
        .I2(obs_active[28]),
        .I3(obs_grown[28]),
        .I4(stage__0[0]),
        .I5(\FSM_sequential_stage_reg[1]_rep_n_0 ),
        .O(whole157_out));
  LUT6 #(
    .INIT(64'hAEAEFFFFAEFF0000)) 
    \whole[29]_i_1 
       (.I0(\whole[29]_i_2_n_0 ),
        .I1(obs_whole[25]),
        .I2(stage__0[0]),
        .I3(\FSM_sequential_stage_reg[1]_rep_n_0 ),
        .I4(whole151_out),
        .I5(obs_whole[29]),
        .O(\whole[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair310" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \whole[29]_i_2 
       (.I0(obs_grown[29]),
        .I1(obs_active[29]),
        .I2(obs_whole[29]),
        .I3(stage__0[2]),
        .O(\whole[29]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0010AAAA80800000)) 
    \whole[29]_i_3 
       (.I0(stage__0[2]),
        .I1(obs_whole[29]),
        .I2(obs_active[29]),
        .I3(obs_grown[29]),
        .I4(stage__0[0]),
        .I5(\FSM_sequential_stage_reg[1]_rep_n_0 ),
        .O(whole151_out));
  LUT6 #(
    .INIT(64'hAEAEFFFFAEFF0000)) 
    \whole[2]_i_1 
       (.I0(\whole[2]_i_2_n_0 ),
        .I1(obs_whole[0]),
        .I2(stage__0[0]),
        .I3(\FSM_sequential_stage_reg[1]_rep__4_n_0 ),
        .I4(whole259_out),
        .I5(obs_whole[2]),
        .O(\whole[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair280" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \whole[2]_i_2 
       (.I0(obs_grown[2]),
        .I1(obs_active[2]),
        .I2(obs_whole[2]),
        .I3(stage__0[2]),
        .O(\whole[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0010AAAA80800000)) 
    \whole[2]_i_3 
       (.I0(stage__0[2]),
        .I1(obs_whole[2]),
        .I2(obs_active[2]),
        .I3(obs_grown[2]),
        .I4(stage__0[0]),
        .I5(\FSM_sequential_stage_reg[1]_rep__4_n_0 ),
        .O(whole259_out));
  LUT6 #(
    .INIT(64'hAEAEFFFFAEFF0000)) 
    \whole[3]_i_1 
       (.I0(\whole[3]_i_2_n_0 ),
        .I1(obs_whole[1]),
        .I2(stage__0[0]),
        .I3(\FSM_sequential_stage_reg[1]_rep__4_n_0 ),
        .I4(whole235_out),
        .I5(obs_whole[3]),
        .O(\whole[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair282" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \whole[3]_i_2 
       (.I0(obs_grown[3]),
        .I1(obs_active[3]),
        .I2(obs_whole[3]),
        .I3(stage__0[2]),
        .O(\whole[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0010AAAA80800000)) 
    \whole[3]_i_3 
       (.I0(stage__0[2]),
        .I1(obs_whole[3]),
        .I2(obs_active[3]),
        .I3(obs_grown[3]),
        .I4(stage__0[0]),
        .I5(\FSM_sequential_stage_reg[1]_rep__4_n_0 ),
        .O(whole235_out));
  LUT6 #(
    .INIT(64'hAAFAFFFFBBFB0000)) 
    \whole[4]_i_1 
       (.I0(\whole[4]_i_2_n_0 ),
        .I1(\FSM_sequential_stage_reg[1]_rep_n_0 ),
        .I2(obs_whole[2]),
        .I3(stage__0[0]),
        .I4(whole219_out),
        .I5(obs_whole[4]),
        .O(\whole[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair283" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \whole[4]_i_2 
       (.I0(obs_grown[4]),
        .I1(obs_active[4]),
        .I2(obs_whole[4]),
        .I3(stage__0[2]),
        .O(\whole[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0010AAAA80800000)) 
    \whole[4]_i_3 
       (.I0(stage__0[2]),
        .I1(obs_whole[4]),
        .I2(obs_active[4]),
        .I3(obs_grown[4]),
        .I4(stage__0[0]),
        .I5(\FSM_sequential_stage_reg[1]_rep_n_0 ),
        .O(whole219_out));
  LUT6 #(
    .INIT(64'hAAFAFFFFBBFB0000)) 
    \whole[5]_i_1 
       (.I0(\whole[5]_i_2_n_0 ),
        .I1(\FSM_sequential_stage_reg[1]_rep__4_n_0 ),
        .I2(obs_whole[3]),
        .I3(stage__0[0]),
        .I4(whole143_out),
        .I5(obs_whole[5]),
        .O(\whole[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair284" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \whole[5]_i_2 
       (.I0(obs_grown[5]),
        .I1(obs_active[5]),
        .I2(obs_whole[5]),
        .I3(stage__0[2]),
        .O(\whole[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0010AAAA80800000)) 
    \whole[5]_i_3 
       (.I0(stage__0[2]),
        .I1(obs_whole[5]),
        .I2(obs_active[5]),
        .I3(obs_grown[5]),
        .I4(stage__0[0]),
        .I5(\FSM_sequential_stage_reg[1]_rep__4_n_0 ),
        .O(whole143_out));
  LUT6 #(
    .INIT(64'hAEAEFFFFAEFF0000)) 
    \whole[6]_i_1 
       (.I0(\whole[6]_i_2_n_0 ),
        .I1(obs_whole[4]),
        .I2(stage__0[0]),
        .I3(\FSM_sequential_stage_reg[1]_rep__4_n_0 ),
        .I4(whole191_out),
        .I5(obs_whole[6]),
        .O(\whole[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair285" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \whole[6]_i_2 
       (.I0(obs_grown[6]),
        .I1(obs_active[6]),
        .I2(obs_whole[6]),
        .I3(stage__0[2]),
        .O(\whole[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0010AAAA80800000)) 
    \whole[6]_i_3 
       (.I0(stage__0[2]),
        .I1(obs_whole[6]),
        .I2(obs_active[6]),
        .I3(obs_grown[6]),
        .I4(stage__0[0]),
        .I5(\FSM_sequential_stage_reg[1]_rep__4_n_0 ),
        .O(whole191_out));
  LUT6 #(
    .INIT(64'hAEAEFFFFAEFF0000)) 
    \whole[7]_i_1 
       (.I0(\whole[7]_i_2_n_0 ),
        .I1(obs_whole[5]),
        .I2(stage__0[0]),
        .I3(\FSM_sequential_stage_reg[1]_rep__4_n_0 ),
        .I4(whole137_out),
        .I5(obs_whole[7]),
        .O(\whole[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair286" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \whole[7]_i_2 
       (.I0(obs_grown[7]),
        .I1(obs_active[7]),
        .I2(obs_whole[7]),
        .I3(stage__0[2]),
        .O(\whole[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0010AAAA80800000)) 
    \whole[7]_i_3 
       (.I0(stage__0[2]),
        .I1(obs_whole[7]),
        .I2(obs_active[7]),
        .I3(obs_grown[7]),
        .I4(stage__0[0]),
        .I5(\FSM_sequential_stage_reg[1]_rep__4_n_0 ),
        .O(whole137_out));
  LUT6 #(
    .INIT(64'hAAFAFFFFBBFB0000)) 
    \whole[8]_i_1 
       (.I0(\whole[8]_i_2_n_0 ),
        .I1(\FSM_sequential_stage_reg[1]_rep__4_n_0 ),
        .I2(obs_whole[6]),
        .I3(stage__0[0]),
        .I4(whole169_out),
        .I5(obs_whole[8]),
        .O(\whole[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair287" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \whole[8]_i_2 
       (.I0(obs_grown[8]),
        .I1(obs_active[8]),
        .I2(obs_whole[8]),
        .I3(stage__0[2]),
        .O(\whole[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0010AAAA80800000)) 
    \whole[8]_i_3 
       (.I0(stage__0[2]),
        .I1(obs_whole[8]),
        .I2(obs_active[8]),
        .I3(obs_grown[8]),
        .I4(stage__0[0]),
        .I5(\FSM_sequential_stage_reg[1]_rep__4_n_0 ),
        .O(whole169_out));
  LUT6 #(
    .INIT(64'hAAFAFFFFBBFB0000)) 
    \whole[9]_i_1 
       (.I0(\whole[9]_i_2_n_0 ),
        .I1(\FSM_sequential_stage_reg[1]_rep_n_0 ),
        .I2(obs_whole[7]),
        .I3(stage__0[0]),
        .I4(whole125_out),
        .I5(obs_whole[9]),
        .O(\whole[9]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair288" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \whole[9]_i_2 
       (.I0(obs_grown[9]),
        .I1(obs_active[9]),
        .I2(obs_whole[9]),
        .I3(stage__0[2]),
        .O(\whole[9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0010AAAA80800000)) 
    \whole[9]_i_3 
       (.I0(stage__0[2]),
        .I1(obs_whole[9]),
        .I2(obs_active[9]),
        .I3(obs_grown[9]),
        .I4(stage__0[0]),
        .I5(\FSM_sequential_stage_reg[1]_rep_n_0 ),
        .O(whole125_out));
  FDSE \whole_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\whole[0]_i_1_n_0 ),
        .Q(obs_whole[0]),
        .S(reset));
  FDSE \whole_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\whole[10]_i_1_n_0 ),
        .Q(obs_whole[10]),
        .S(reset));
  FDSE \whole_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(\whole[11]_i_1_n_0 ),
        .Q(obs_whole[11]),
        .S(reset));
  FDSE \whole_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(\whole[12]_i_1_n_0 ),
        .Q(obs_whole[12]),
        .S(reset));
  FDSE \whole_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(\whole[13]_i_1_n_0 ),
        .Q(obs_whole[13]),
        .S(reset));
  FDSE \whole_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(\whole[14]_i_1_n_0 ),
        .Q(obs_whole[14]),
        .S(reset));
  FDSE \whole_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(\whole[15]_i_1_n_0 ),
        .Q(obs_whole[15]),
        .S(reset));
  FDSE \whole_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(\whole[16]_i_1_n_0 ),
        .Q(obs_whole[16]),
        .S(reset));
  FDSE \whole_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(\whole[17]_i_1_n_0 ),
        .Q(obs_whole[17]),
        .S(reset));
  FDSE \whole_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(\whole[18]_i_1_n_0 ),
        .Q(obs_whole[18]),
        .S(reset));
  FDSE \whole_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(\whole[19]_i_1_n_0 ),
        .Q(obs_whole[19]),
        .S(reset));
  FDSE \whole_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\whole[1]_i_1_n_0 ),
        .Q(obs_whole[1]),
        .S(reset));
  FDSE \whole_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .D(\whole[20]_i_1_n_0 ),
        .Q(obs_whole[20]),
        .S(reset));
  FDSE \whole_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .D(\whole[21]_i_1_n_0 ),
        .Q(obs_whole[21]),
        .S(reset));
  FDSE \whole_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .D(\whole[22]_i_1_n_0 ),
        .Q(obs_whole[22]),
        .S(reset));
  FDSE \whole_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .D(\whole[23]_i_1_n_0 ),
        .Q(obs_whole[23]),
        .S(reset));
  FDSE \whole_reg[24] 
       (.C(clk),
        .CE(1'b1),
        .D(\whole[24]_i_1_n_0 ),
        .Q(obs_whole[24]),
        .S(reset));
  FDSE \whole_reg[25] 
       (.C(clk),
        .CE(1'b1),
        .D(\whole[25]_i_1_n_0 ),
        .Q(obs_whole[25]),
        .S(reset));
  FDSE \whole_reg[26] 
       (.C(clk),
        .CE(1'b1),
        .D(\whole[26]_i_1_n_0 ),
        .Q(obs_whole[26]),
        .S(reset));
  FDSE \whole_reg[27] 
       (.C(clk),
        .CE(1'b1),
        .D(\whole[27]_i_1_n_0 ),
        .Q(obs_whole[27]),
        .S(reset));
  FDSE \whole_reg[28] 
       (.C(clk),
        .CE(1'b1),
        .D(\whole[28]_i_1_n_0 ),
        .Q(obs_whole[28]),
        .S(reset));
  FDSE \whole_reg[29] 
       (.C(clk),
        .CE(1'b1),
        .D(\whole[29]_i_1_n_0 ),
        .Q(obs_whole[29]),
        .S(reset));
  FDSE \whole_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\whole[2]_i_1_n_0 ),
        .Q(obs_whole[2]),
        .S(reset));
  FDSE \whole_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\whole[3]_i_1_n_0 ),
        .Q(obs_whole[3]),
        .S(reset));
  FDSE \whole_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\whole[4]_i_1_n_0 ),
        .Q(obs_whole[4]),
        .S(reset));
  FDSE \whole_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\whole[5]_i_1_n_0 ),
        .Q(obs_whole[5]),
        .S(reset));
  FDSE \whole_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\whole[6]_i_1_n_0 ),
        .Q(obs_whole[6]),
        .S(reset));
  FDSE \whole_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\whole[7]_i_1_n_0 ),
        .Q(obs_whole[7]),
        .S(reset));
  FDSE \whole_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\whole[8]_i_1_n_0 ),
        .Q(obs_whole[8]),
        .S(reset));
  FDSE \whole_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\whole[9]_i_1_n_0 ),
        .Q(obs_whole[9]),
        .S(reset));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
