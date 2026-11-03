// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Wed Sep 16 01:51:27 2026
// Host        : DESKTOP-TO7M6OH running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               {D:\ycz\doc\deepseek_workzone\decoder\fpga_flow\logs/netlist_rep_d3_2to1_netlist.v}
// Design      : snowflake_core
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcvu9p-flga2104-2L-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CW = "5" *) (* DEBUG_OBS = "1" *) (* NDIR = "4" *) 
(* NE = "13" *) (* NN = "12" *) (* ONE_ONE = "0" *) 
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
  input [1:0]syndrome;
  output done;
  output all_busy;
  output [4:0]commit_onehot;
  output [59:0]obs_cid;
  output [11:0]obs_active;
  output [11:0]obs_whole;
  output [11:0]obs_defect;
  output [35:0]obs_ptr;
  output [11:0]obs_grown;
  output [11:0]obs_unrooted;
  output [11:0]obs_busy;
  output [25:0]obs_growth;
  output [12:0]obs_ecorr;
  output [2:0]dbg_stage;
  output [7:0]dbg_step;
  output dbg_valid;

  wire \<const0> ;
  wire \FSM_sequential_stage[1]_i_1_n_0 ;
  wire \FSM_sequential_stage[1]_rep_i_1__0_n_0 ;
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
  wire \FSM_sequential_stage[2]_i_1_n_0 ;
  wire \FSM_sequential_stage[2]_i_3_n_0 ;
  wire \FSM_sequential_stage[2]_i_4_n_0 ;
  wire \FSM_sequential_stage[2]_i_5_n_0 ;
  wire \FSM_sequential_stage[2]_i_6_n_0 ;
  wire \FSM_sequential_stage[2]_i_7_n_0 ;
  wire \FSM_sequential_stage[2]_i_8_n_0 ;
  wire \FSM_sequential_stage[2]_i_9_n_0 ;
  wire \FSM_sequential_stage_reg[1]_rep__0_n_0 ;
  wire \FSM_sequential_stage_reg[1]_rep_n_0 ;
  wire \active[0]_i_2_n_0 ;
  wire \active[10]_i_2_n_0 ;
  wire \active[10]_i_3_n_0 ;
  wire \active[10]_i_4_n_0 ;
  wire \active[10]_i_5_n_0 ;
  wire \active[10]_i_6_n_0 ;
  wire \active[10]_i_7_n_0 ;
  wire \active[11]_i_1_n_0 ;
  wire \active[11]_i_2_n_0 ;
  wire \active[11]_i_3_n_0 ;
  wire \active[11]_i_4_n_0 ;
  wire \active[1]_i_1_n_0 ;
  wire \active[1]_i_2_n_0 ;
  wire \active[2]_i_2_n_0 ;
  wire \active[3]_i_2_n_0 ;
  wire \active[3]_i_3_n_0 ;
  wire \active[4]_i_2_n_0 ;
  wire \active[5]_i_2_n_0 ;
  wire \active[6]_i_1_n_0 ;
  wire \active[6]_i_2_n_0 ;
  wire \active[7]_i_1_n_0 ;
  wire \active[7]_i_2_n_0 ;
  wire \active[8]_i_2_n_0 ;
  wire \active[8]_i_3_n_0 ;
  wire \active[8]_i_4_n_0 ;
  wire \active[8]_i_5_n_0 ;
  wire \active[9]_i_2_n_0 ;
  wire \active[9]_i_3_n_0 ;
  wire \active[9]_i_4_n_0 ;
  wire all_busy;
  wire all_busy_INST_0_i_1_n_0;
  wire all_busy_INST_0_i_2_n_0;
  wire \busy[0]_i_2_n_0 ;
  wire \busy[10]_i_1_n_0 ;
  wire \busy[10]_i_2_n_0 ;
  wire \busy[10]_i_3_n_0 ;
  wire \busy[10]_i_4_n_0 ;
  wire \busy[10]_i_5_n_0 ;
  wire \busy[10]_i_6_n_0 ;
  wire \busy[11]_i_1_n_0 ;
  wire \busy[11]_i_2_n_0 ;
  wire \busy[11]_i_3_n_0 ;
  wire \busy[11]_i_4_n_0 ;
  wire \busy[11]_i_5_n_0 ;
  wire \busy[11]_i_6_n_0 ;
  wire \busy[11]_i_7_n_0 ;
  wire \busy[11]_i_8_n_0 ;
  wire \busy[1]_i_1_n_0 ;
  wire \busy[1]_i_2_n_0 ;
  wire \busy[1]_i_3_n_0 ;
  wire \busy[2]_i_1_n_0 ;
  wire \busy[2]_i_2_n_0 ;
  wire \busy[2]_i_3_n_0 ;
  wire \busy[2]_i_4_n_0 ;
  wire \busy[2]_i_5_n_0 ;
  wire \busy[2]_i_6_n_0 ;
  wire \busy[2]_i_7_n_0 ;
  wire \busy[3]_i_10_n_0 ;
  wire \busy[3]_i_11_n_0 ;
  wire \busy[3]_i_12_n_0 ;
  wire \busy[3]_i_13_n_0 ;
  wire \busy[3]_i_14_n_0 ;
  wire \busy[3]_i_15_n_0 ;
  wire \busy[3]_i_16_n_0 ;
  wire \busy[3]_i_17_n_0 ;
  wire \busy[3]_i_1_n_0 ;
  wire \busy[3]_i_2_n_0 ;
  wire \busy[3]_i_3_n_0 ;
  wire \busy[3]_i_4_n_0 ;
  wire \busy[3]_i_5_n_0 ;
  wire \busy[3]_i_6_n_0 ;
  wire \busy[3]_i_7_n_0 ;
  wire \busy[3]_i_8_n_0 ;
  wire \busy[3]_i_9_n_0 ;
  wire \busy[4]_i_1_n_0 ;
  wire \busy[4]_i_2_n_0 ;
  wire \busy[4]_i_3_n_0 ;
  wire \busy[5]_i_1_n_0 ;
  wire \busy[5]_i_2_n_0 ;
  wire \busy[5]_i_3_n_0 ;
  wire \busy[5]_i_4_n_0 ;
  wire \busy[6]_i_1_n_0 ;
  wire \busy[6]_i_2_n_0 ;
  wire \busy[6]_i_3_n_0 ;
  wire \busy[6]_i_4_n_0 ;
  wire \busy[6]_i_5_n_0 ;
  wire \busy[6]_i_6_n_0 ;
  wire \busy[6]_i_7_n_0 ;
  wire \busy[6]_i_8_n_0 ;
  wire \busy[7]_i_1_n_0 ;
  wire \busy[7]_i_2_n_0 ;
  wire \busy[7]_i_3_n_0 ;
  wire \busy[7]_i_4_n_0 ;
  wire \busy[7]_i_5_n_0 ;
  wire \busy[7]_i_6_n_0 ;
  wire \busy[8]_i_10_n_0 ;
  wire \busy[8]_i_1_n_0 ;
  wire \busy[8]_i_2_n_0 ;
  wire \busy[8]_i_3_n_0 ;
  wire \busy[8]_i_4_n_0 ;
  wire \busy[8]_i_5_n_0 ;
  wire \busy[8]_i_6_n_0 ;
  wire \busy[8]_i_7_n_0 ;
  wire \busy[8]_i_8_n_0 ;
  wire \busy[8]_i_9_n_0 ;
  wire \busy[9]_i_10_n_0 ;
  wire \busy[9]_i_11_n_0 ;
  wire \busy[9]_i_1_n_0 ;
  wire \busy[9]_i_2_n_0 ;
  wire \busy[9]_i_3_n_0 ;
  wire \busy[9]_i_4_n_0 ;
  wire \busy[9]_i_5_n_0 ;
  wire \busy[9]_i_6_n_0 ;
  wire \busy[9]_i_7_n_0 ;
  wire \busy[9]_i_8_n_0 ;
  wire \busy[9]_i_9_n_0 ;
  wire \c_active[0] ;
  wire \c_active[10] ;
  wire \c_active[2] ;
  wire \c_active[3] ;
  wire \c_active[4] ;
  wire \c_active[5] ;
  wire \c_active[8] ;
  wire \c_active[9] ;
  wire c_busy;
  wire \c_grown[10] ;
  wire \c_grown[6] ;
  wire \c_grown[7] ;
  wire \c_grown[8] ;
  wire [1:0]c_growth;
  wire [1:1]c_ptr;
  wire \cid[0][0]_i_1_n_0 ;
  wire \cid[0][1]_i_1_n_0 ;
  wire \cid[0][2]_i_1_n_0 ;
  wire \cid[0][3]_i_1_n_0 ;
  wire \cid[0][4]_i_1_n_0 ;
  wire \cid[0][4]_i_2_n_0 ;
  wire \cid[0][4]_i_3_n_0 ;
  wire \cid[0][4]_i_4_n_0 ;
  wire \cid[0][4]_i_5_n_0 ;
  wire \cid[0][4]_i_6_n_0 ;
  wire \cid[10][0]_i_1_n_0 ;
  wire \cid[10][0]_i_2_n_0 ;
  wire \cid[10][0]_i_3_n_0 ;
  wire \cid[10][0]_i_4_n_0 ;
  wire \cid[10][0]_i_5_n_0 ;
  wire \cid[10][1]_i_1_n_0 ;
  wire \cid[10][1]_i_2_n_0 ;
  wire \cid[10][1]_i_3_n_0 ;
  wire \cid[10][1]_i_4_n_0 ;
  wire \cid[10][1]_i_5_n_0 ;
  wire \cid[10][1]_i_6_n_0 ;
  wire \cid[10][2]_i_10_n_0 ;
  wire \cid[10][2]_i_11_n_0 ;
  wire \cid[10][2]_i_12_n_0 ;
  wire \cid[10][2]_i_13_n_0 ;
  wire \cid[10][2]_i_14_n_0 ;
  wire \cid[10][2]_i_15_n_0 ;
  wire \cid[10][2]_i_1_n_0 ;
  wire \cid[10][2]_i_2_n_0 ;
  wire \cid[10][2]_i_3_n_0 ;
  wire \cid[10][2]_i_4_n_0 ;
  wire \cid[10][2]_i_5_n_0 ;
  wire \cid[10][2]_i_6_n_0 ;
  wire \cid[10][2]_i_7_n_0 ;
  wire \cid[10][2]_i_8_n_0 ;
  wire \cid[10][2]_i_9_n_0 ;
  wire \cid[10][3]_i_1_n_0 ;
  wire \cid[10][3]_i_2_n_0 ;
  wire \cid[10][3]_i_3_n_0 ;
  wire \cid[10][3]_i_4_n_0 ;
  wire \cid[10][3]_i_5_n_0 ;
  wire \cid[10][3]_i_6_n_0 ;
  wire \cid[10][3]_i_7_n_0 ;
  wire \cid[10][3]_i_8_n_0 ;
  wire \cid[10][3]_i_9_n_0 ;
  wire \cid[10][4]_i_1_n_0 ;
  wire \cid[10][4]_i_2_n_0 ;
  wire \cid[10][4]_i_3_n_0 ;
  wire \cid[10][4]_i_4_n_0 ;
  wire \cid[10][4]_i_5_n_0 ;
  wire \cid[10][4]_i_6_n_0 ;
  wire \cid[10][4]_i_7_n_0 ;
  wire \cid[11][0]_i_1_n_0 ;
  wire \cid[11][0]_i_2_n_0 ;
  wire \cid[11][0]_i_3_n_0 ;
  wire \cid[11][0]_i_4_n_0 ;
  wire \cid[11][1]_i_1_n_0 ;
  wire \cid[11][1]_i_2_n_0 ;
  wire \cid[11][1]_i_3_n_0 ;
  wire \cid[11][1]_i_4_n_0 ;
  wire \cid[11][1]_i_5_n_0 ;
  wire \cid[11][2]_i_1_n_0 ;
  wire \cid[11][2]_i_2_n_0 ;
  wire \cid[11][2]_i_3_n_0 ;
  wire \cid[11][2]_i_4_n_0 ;
  wire \cid[11][2]_i_5_n_0 ;
  wire \cid[11][2]_i_6_n_0 ;
  wire \cid[11][3]_i_10_n_0 ;
  wire \cid[11][3]_i_11_n_0 ;
  wire \cid[11][3]_i_12_n_0 ;
  wire \cid[11][3]_i_13_n_0 ;
  wire \cid[11][3]_i_14_n_0 ;
  wire \cid[11][3]_i_15_n_0 ;
  wire \cid[11][3]_i_16_n_0 ;
  wire \cid[11][3]_i_17_n_0 ;
  wire \cid[11][3]_i_18_n_0 ;
  wire \cid[11][3]_i_1_n_0 ;
  wire \cid[11][3]_i_2_n_0 ;
  wire \cid[11][3]_i_3_n_0 ;
  wire \cid[11][3]_i_4_n_0 ;
  wire \cid[11][3]_i_5_n_0 ;
  wire \cid[11][3]_i_6_n_0 ;
  wire \cid[11][3]_i_7_n_0 ;
  wire \cid[11][3]_i_8_n_0 ;
  wire \cid[11][3]_i_9_n_0 ;
  wire \cid[11][4]_i_1_n_0 ;
  wire \cid[11][4]_i_2_n_0 ;
  wire \cid[11][4]_i_3_n_0 ;
  wire \cid[11][4]_i_4_n_0 ;
  wire \cid[11][4]_i_5_n_0 ;
  wire \cid[11][4]_i_6_n_0 ;
  wire \cid[11][4]_i_7_n_0 ;
  wire \cid[11][4]_i_8_n_0 ;
  wire \cid[1][0]_i_1_n_0 ;
  wire \cid[1][1]_i_1_n_0 ;
  wire \cid[1][2]_i_1_n_0 ;
  wire \cid[1][3]_i_1_n_0 ;
  wire \cid[1][4]_i_1_n_0 ;
  wire \cid[1][4]_i_2_n_0 ;
  wire \cid[1][4]_i_3_n_0 ;
  wire \cid[1][4]_i_4_n_0 ;
  wire \cid[1][4]_i_5_n_0 ;
  wire \cid[1][4]_i_6_n_0 ;
  wire \cid[2][0]_i_1_n_0 ;
  wire \cid[2][1]_i_1_n_0 ;
  wire \cid[2][2]_i_1_n_0 ;
  wire \cid[2][3]_i_1_n_0 ;
  wire \cid[2][3]_i_2_n_0 ;
  wire \cid[2][3]_i_3_n_0 ;
  wire \cid[2][4]_i_1_n_0 ;
  wire \cid[2][4]_i_2_n_0 ;
  wire \cid[2][4]_i_3_n_0 ;
  wire \cid[2][4]_i_4_n_0 ;
  wire \cid[2][4]_i_5_n_0 ;
  wire \cid[2][4]_i_6_n_0 ;
  wire \cid[2][4]_i_7_n_0 ;
  wire \cid[3][0]_i_1_n_0 ;
  wire \cid[3][1]_i_1_n_0 ;
  wire \cid[3][2]_i_1_n_0 ;
  wire \cid[3][3]_i_1_n_0 ;
  wire \cid[3][3]_i_2_n_0 ;
  wire \cid[3][3]_i_3_n_0 ;
  wire \cid[3][4]_i_1_n_0 ;
  wire \cid[3][4]_i_2_n_0 ;
  wire \cid[3][4]_i_3_n_0 ;
  wire \cid[3][4]_i_4_n_0 ;
  wire \cid[3][4]_i_5_n_0 ;
  wire \cid[3][4]_i_6_n_0 ;
  wire \cid[3][4]_i_7_n_0 ;
  wire \cid[4][0]_i_1_n_0 ;
  wire \cid[4][1]_i_1_n_0 ;
  wire \cid[4][2]_i_1_n_0 ;
  wire \cid[4][2]_i_2_n_0 ;
  wire \cid[4][2]_i_3_n_0 ;
  wire \cid[4][3]_i_1_n_0 ;
  wire \cid[4][3]_i_2_n_0 ;
  wire \cid[4][4]_i_1_n_0 ;
  wire \cid[4][4]_i_2_n_0 ;
  wire \cid[4][4]_i_3_n_0 ;
  wire \cid[4][4]_i_4_n_0 ;
  wire \cid[4][4]_i_5_n_0 ;
  wire \cid[4][4]_i_6_n_0 ;
  wire \cid[4][4]_i_7_n_0 ;
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
  wire \cid[5][4]_i_4_n_0 ;
  wire \cid[5][4]_i_5_n_0 ;
  wire \cid[5][4]_i_6_n_0 ;
  wire \cid[5][4]_i_7_n_0 ;
  wire \cid[5][4]_i_8_n_0 ;
  wire \cid[6][0]_i_1_n_0 ;
  wire \cid[6][0]_i_2_n_0 ;
  wire \cid[6][0]_i_3_n_0 ;
  wire \cid[6][0]_i_4_n_0 ;
  wire \cid[6][1]_i_1_n_0 ;
  wire \cid[6][1]_i_2_n_0 ;
  wire \cid[6][1]_i_3_n_0 ;
  wire \cid[6][1]_i_4_n_0 ;
  wire \cid[6][2]_i_1_n_0 ;
  wire \cid[6][2]_i_2_n_0 ;
  wire \cid[6][2]_i_3_n_0 ;
  wire \cid[6][2]_i_4_n_0 ;
  wire \cid[6][3]_i_10_n_0 ;
  wire \cid[6][3]_i_11_n_0 ;
  wire \cid[6][3]_i_12_n_0 ;
  wire \cid[6][3]_i_13_n_0 ;
  wire \cid[6][3]_i_14_n_0 ;
  wire \cid[6][3]_i_1_n_0 ;
  wire \cid[6][3]_i_2_n_0 ;
  wire \cid[6][3]_i_3_n_0 ;
  wire \cid[6][3]_i_4_n_0 ;
  wire \cid[6][3]_i_5_n_0 ;
  wire \cid[6][3]_i_6_n_0 ;
  wire \cid[6][3]_i_7_n_0 ;
  wire \cid[6][3]_i_8_n_0 ;
  wire \cid[6][3]_i_9_n_0 ;
  wire \cid[6][4]_i_1_n_0 ;
  wire \cid[6][4]_i_2_n_0 ;
  wire \cid[6][4]_i_3_n_0 ;
  wire \cid[6][4]_i_4_n_0 ;
  wire \cid[6][4]_i_5_n_0 ;
  wire \cid[6][4]_i_6_n_0 ;
  wire \cid[7][0]_i_1_n_0 ;
  wire \cid[7][0]_i_2_n_0 ;
  wire \cid[7][0]_i_3_n_0 ;
  wire \cid[7][0]_i_4_n_0 ;
  wire \cid[7][1]_i_1_n_0 ;
  wire \cid[7][1]_i_2_n_0 ;
  wire \cid[7][1]_i_3_n_0 ;
  wire \cid[7][1]_i_4_n_0 ;
  wire \cid[7][2]_i_1_n_0 ;
  wire \cid[7][2]_i_2_n_0 ;
  wire \cid[7][2]_i_3_n_0 ;
  wire \cid[7][2]_i_4_n_0 ;
  wire \cid[7][3]_i_10_n_0 ;
  wire \cid[7][3]_i_11_n_0 ;
  wire \cid[7][3]_i_12_n_0 ;
  wire \cid[7][3]_i_1_n_0 ;
  wire \cid[7][3]_i_2_n_0 ;
  wire \cid[7][3]_i_3_n_0 ;
  wire \cid[7][3]_i_4_n_0 ;
  wire \cid[7][3]_i_5_n_0 ;
  wire \cid[7][3]_i_6_n_0 ;
  wire \cid[7][3]_i_7_n_0 ;
  wire \cid[7][3]_i_8_n_0 ;
  wire \cid[7][3]_i_9_n_0 ;
  wire \cid[7][4]_i_1_n_0 ;
  wire \cid[7][4]_i_2_n_0 ;
  wire \cid[7][4]_i_3_n_0 ;
  wire \cid[7][4]_i_4_n_0 ;
  wire \cid[7][4]_i_5_n_0 ;
  wire \cid[7][4]_i_6_n_0 ;
  wire \cid[7][4]_i_7_n_0 ;
  wire \cid[8][0]_i_1_n_0 ;
  wire \cid[8][0]_i_2_n_0 ;
  wire \cid[8][0]_i_3_n_0 ;
  wire \cid[8][0]_i_4_n_0 ;
  wire \cid[8][0]_i_5_n_0 ;
  wire \cid[8][1]_i_1_n_0 ;
  wire \cid[8][1]_i_2_n_0 ;
  wire \cid[8][1]_i_3_n_0 ;
  wire \cid[8][1]_i_4_n_0 ;
  wire \cid[8][1]_i_5_n_0 ;
  wire \cid[8][2]_i_1_n_0 ;
  wire \cid[8][2]_i_2_n_0 ;
  wire \cid[8][2]_i_3_n_0 ;
  wire \cid[8][2]_i_4_n_0 ;
  wire \cid[8][2]_i_5_n_0 ;
  wire \cid[8][3]_i_10_n_0 ;
  wire \cid[8][3]_i_11_n_0 ;
  wire \cid[8][3]_i_12_n_0 ;
  wire \cid[8][3]_i_13_n_0 ;
  wire \cid[8][3]_i_14_n_0 ;
  wire \cid[8][3]_i_15_n_0 ;
  wire \cid[8][3]_i_16_n_0 ;
  wire \cid[8][3]_i_17_n_0 ;
  wire \cid[8][3]_i_18_n_0 ;
  wire \cid[8][3]_i_19_n_0 ;
  wire \cid[8][3]_i_1_n_0 ;
  wire \cid[8][3]_i_20_n_0 ;
  wire \cid[8][3]_i_21_n_0 ;
  wire \cid[8][3]_i_22_n_0 ;
  wire \cid[8][3]_i_23_n_0 ;
  wire \cid[8][3]_i_24_n_0 ;
  wire \cid[8][3]_i_25_n_0 ;
  wire \cid[8][3]_i_26_n_0 ;
  wire \cid[8][3]_i_27_n_0 ;
  wire \cid[8][3]_i_28_n_0 ;
  wire \cid[8][3]_i_29_n_0 ;
  wire \cid[8][3]_i_2_n_0 ;
  wire \cid[8][3]_i_30_n_0 ;
  wire \cid[8][3]_i_31_n_0 ;
  wire \cid[8][3]_i_32_n_0 ;
  wire \cid[8][3]_i_3_n_0 ;
  wire \cid[8][3]_i_4_n_0 ;
  wire \cid[8][3]_i_5_n_0 ;
  wire \cid[8][3]_i_6_n_0 ;
  wire \cid[8][3]_i_7_n_0 ;
  wire \cid[8][3]_i_8_n_0 ;
  wire \cid[8][3]_i_9_n_0 ;
  wire \cid[8][4]_i_10_n_0 ;
  wire \cid[8][4]_i_11_n_0 ;
  wire \cid[8][4]_i_12_n_0 ;
  wire \cid[8][4]_i_13_n_0 ;
  wire \cid[8][4]_i_14_n_0 ;
  wire \cid[8][4]_i_1_n_0 ;
  wire \cid[8][4]_i_2_n_0 ;
  wire \cid[8][4]_i_3_n_0 ;
  wire \cid[8][4]_i_4_n_0 ;
  wire \cid[8][4]_i_5_n_0 ;
  wire \cid[8][4]_i_6_n_0 ;
  wire \cid[8][4]_i_7_n_0 ;
  wire \cid[8][4]_i_8_n_0 ;
  wire \cid[8][4]_i_9_n_0 ;
  wire \cid[9][0]_i_1_n_0 ;
  wire \cid[9][0]_i_2_n_0 ;
  wire \cid[9][0]_i_3_n_0 ;
  wire \cid[9][0]_i_4_n_0 ;
  wire \cid[9][0]_i_5_n_0 ;
  wire \cid[9][1]_i_1_n_0 ;
  wire \cid[9][1]_i_2_n_0 ;
  wire \cid[9][1]_i_3_n_0 ;
  wire \cid[9][1]_i_4_n_0 ;
  wire \cid[9][1]_i_5_n_0 ;
  wire \cid[9][2]_i_1_n_0 ;
  wire \cid[9][2]_i_2_n_0 ;
  wire \cid[9][2]_i_3_n_0 ;
  wire \cid[9][2]_i_4_n_0 ;
  wire \cid[9][2]_i_5_n_0 ;
  wire \cid[9][3]_i_10_n_0 ;
  wire \cid[9][3]_i_11_n_0 ;
  wire \cid[9][3]_i_12_n_0 ;
  wire \cid[9][3]_i_13_n_0 ;
  wire \cid[9][3]_i_14_n_0 ;
  wire \cid[9][3]_i_15_n_0 ;
  wire \cid[9][3]_i_16_n_0 ;
  wire \cid[9][3]_i_17_n_0 ;
  wire \cid[9][3]_i_18_n_0 ;
  wire \cid[9][3]_i_19_n_0 ;
  wire \cid[9][3]_i_1_n_0 ;
  wire \cid[9][3]_i_20_n_0 ;
  wire \cid[9][3]_i_21_n_0 ;
  wire \cid[9][3]_i_22_n_0 ;
  wire \cid[9][3]_i_23_n_0 ;
  wire \cid[9][3]_i_24_n_0 ;
  wire \cid[9][3]_i_25_n_0 ;
  wire \cid[9][3]_i_26_n_0 ;
  wire \cid[9][3]_i_27_n_0 ;
  wire \cid[9][3]_i_28_n_0 ;
  wire \cid[9][3]_i_29_n_0 ;
  wire \cid[9][3]_i_2_n_0 ;
  wire \cid[9][3]_i_30_n_0 ;
  wire \cid[9][3]_i_31_n_0 ;
  wire \cid[9][3]_i_32_n_0 ;
  wire \cid[9][3]_i_33_n_0 ;
  wire \cid[9][3]_i_34_n_0 ;
  wire \cid[9][3]_i_35_n_0 ;
  wire \cid[9][3]_i_36_n_0 ;
  wire \cid[9][3]_i_3_n_0 ;
  wire \cid[9][3]_i_4_n_0 ;
  wire \cid[9][3]_i_5_n_0 ;
  wire \cid[9][3]_i_6_n_0 ;
  wire \cid[9][3]_i_7_n_0 ;
  wire \cid[9][3]_i_8_n_0 ;
  wire \cid[9][3]_i_9_n_0 ;
  wire \cid[9][4]_i_1_n_0 ;
  wire \cid[9][4]_i_2_n_0 ;
  wire \cid[9][4]_i_3_n_0 ;
  wire \cid[9][4]_i_4_n_0 ;
  wire \cid[9][4]_i_5_n_0 ;
  wire \cid[9][4]_i_6_n_0 ;
  wire \cid[9][4]_i_7_n_0 ;
  wire \cid[9][4]_i_8_n_0 ;
  wire clk;
  wire [4:0]commit_onehot;
  wire \commit_onehot[0]_i_1_n_0 ;
  wire \commit_onehot[1]_i_1_n_0 ;
  wire \commit_onehot[2]_i_1_n_0 ;
  wire \commit_onehot[3]_i_1_n_0 ;
  wire \commit_onehot[4]_i_1_n_0 ;
  wire \commit_onehot[4]_i_2_n_0 ;
  wire [2:0]dbg_stage;
  wire \dbg_stage[2]_i_1_n_0 ;
  wire [7:0]dbg_step;
  wire dbg_valid;
  wire \defect[0]_i_1_n_0 ;
  wire \defect[0]_i_2_n_0 ;
  wire \defect[10]_i_1_n_0 ;
  wire \defect[10]_i_2_n_0 ;
  wire \defect[11]_i_1_n_0 ;
  wire \defect[11]_i_2_n_0 ;
  wire \defect[1]_i_1_n_0 ;
  wire \defect[1]_i_2_n_0 ;
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
  wire \defect[6]_i_3_n_0 ;
  wire \defect[6]_i_4_n_0 ;
  wire \defect[6]_i_5_n_0 ;
  wire \defect[6]_i_6_n_0 ;
  wire \defect[6]_i_7_n_0 ;
  wire \defect[6]_i_8_n_0 ;
  wire \defect[7]_i_1_n_0 ;
  wire \defect[7]_i_2_n_0 ;
  wire \defect[7]_i_3_n_0 ;
  wire \defect[7]_i_4_n_0 ;
  wire \defect[7]_i_5_n_0 ;
  wire \defect[8]_i_10_n_0 ;
  wire \defect[8]_i_11_n_0 ;
  wire \defect[8]_i_12_n_0 ;
  wire \defect[8]_i_1_n_0 ;
  wire \defect[8]_i_2_n_0 ;
  wire \defect[8]_i_3_n_0 ;
  wire \defect[8]_i_4_n_0 ;
  wire \defect[8]_i_5_n_0 ;
  wire \defect[8]_i_6_n_0 ;
  wire \defect[8]_i_7_n_0 ;
  wire \defect[8]_i_8_n_0 ;
  wire \defect[8]_i_9_n_0 ;
  wire \defect[9]_i_1_n_0 ;
  wire \defect[9]_i_2_n_0 ;
  wire \defect[9]_i_3_n_0 ;
  wire done;
  wire done_i_1_n_0;
  wire done_i_2_n_0;
  wire done_i_3_n_0;
  wire done_i_4_n_0;
  wire \ecorr[0]_i_1_n_0 ;
  wire \ecorr[10]_i_1_n_0 ;
  wire \ecorr[10]_i_2_n_0 ;
  wire \ecorr[10]_i_3_n_0 ;
  wire \ecorr[11]_i_1_n_0 ;
  wire \ecorr[12]_i_1_n_0 ;
  wire \ecorr[12]_i_2_n_0 ;
  wire \ecorr[12]_i_3_n_0 ;
  wire \ecorr[1]_i_1_n_0 ;
  wire \ecorr[2]_i_1_n_0 ;
  wire \ecorr[3]_i_1_n_0 ;
  wire \ecorr[3]_i_2_n_0 ;
  wire \ecorr[3]_i_3_n_0 ;
  wire \ecorr[4]_i_1_n_0 ;
  wire \ecorr[5]_i_1_n_0 ;
  wire \ecorr[5]_i_2_n_0 ;
  wire \ecorr[5]_i_3_n_0 ;
  wire \ecorr[6]_i_1_n_0 ;
  wire \ecorr[6]_i_2_n_0 ;
  wire \ecorr[6]_i_3_n_0 ;
  wire \ecorr[7]_i_1_n_0 ;
  wire \ecorr[8]_i_1_n_0 ;
  wire \ecorr[8]_i_2_n_0 ;
  wire \ecorr[8]_i_3_n_0 ;
  wire \ecorr[9]_i_1_n_0 ;
  wire \ecorr[9]_i_2_n_0 ;
  wire \ecorr[9]_i_3_n_0 ;
  wire \grown[0]_i_1_n_0 ;
  wire \grown[0]_i_2_n_0 ;
  wire \grown[0]_i_3_n_0 ;
  wire \grown[0]_i_4_n_0 ;
  wire \grown[10]_i_1_n_0 ;
  wire \grown[10]_i_3_n_0 ;
  wire \grown[10]_i_4_n_0 ;
  wire \grown[10]_i_5_n_0 ;
  wire \grown[10]_i_6_n_0 ;
  wire \grown[10]_i_7_n_0 ;
  wire \grown[10]_i_8_n_0 ;
  wire \grown[11]_i_1_n_0 ;
  wire \grown[11]_i_2_n_0 ;
  wire \grown[11]_i_3_n_0 ;
  wire \grown[11]_i_4_n_0 ;
  wire \grown[11]_i_5_n_0 ;
  wire \grown[11]_i_6_n_0 ;
  wire \grown[11]_i_7_n_0 ;
  wire \grown[11]_i_8_n_0 ;
  wire \grown[11]_i_9_n_0 ;
  wire \grown[1]_i_1_n_0 ;
  wire \grown[1]_i_2_n_0 ;
  wire \grown[1]_i_3_n_0 ;
  wire \grown[1]_i_4_n_0 ;
  wire \grown[2]_i_1_n_0 ;
  wire \grown[2]_i_2_n_0 ;
  wire \grown[2]_i_3_n_0 ;
  wire \grown[3]_i_1_n_0 ;
  wire \grown[3]_i_2_n_0 ;
  wire \grown[3]_i_3_n_0 ;
  wire \grown[4]_i_1_n_0 ;
  wire \grown[4]_i_2_n_0 ;
  wire \grown[4]_i_3_n_0 ;
  wire \grown[4]_i_4_n_0 ;
  wire \grown[4]_i_5_n_0 ;
  wire \grown[5]_i_1_n_0 ;
  wire \grown[5]_i_2_n_0 ;
  wire \grown[5]_i_3_n_0 ;
  wire \grown[5]_i_4_n_0 ;
  wire \grown[5]_i_5_n_0 ;
  wire \grown[6]_i_1_n_0 ;
  wire \grown[6]_i_3_n_0 ;
  wire \grown[6]_i_4_n_0 ;
  wire \grown[6]_i_5_n_0 ;
  wire \grown[6]_i_6_n_0 ;
  wire \grown[6]_i_7_n_0 ;
  wire \grown[6]_i_8_n_0 ;
  wire \grown[6]_i_9_n_0 ;
  wire \grown[7]_i_1_n_0 ;
  wire \grown[7]_i_3_n_0 ;
  wire \grown[7]_i_4_n_0 ;
  wire \grown[7]_i_5_n_0 ;
  wire \grown[7]_i_6_n_0 ;
  wire \grown[7]_i_7_n_0 ;
  wire \grown[7]_i_8_n_0 ;
  wire \grown[8]_i_1_n_0 ;
  wire \grown[8]_i_3_n_0 ;
  wire \grown[8]_i_4_n_0 ;
  wire \grown[8]_i_5_n_0 ;
  wire \grown[8]_i_6_n_0 ;
  wire \grown[8]_i_7_n_0 ;
  wire \grown[8]_i_8_n_0 ;
  wire \grown[8]_i_9_n_0 ;
  wire \grown[9]_i_1_n_0 ;
  wire \grown[9]_i_2_n_0 ;
  wire \grown[9]_i_3_n_0 ;
  wire \grown[9]_i_4_n_0 ;
  wire \grown[9]_i_5_n_0 ;
  wire \grown[9]_i_6_n_0 ;
  wire \grown[9]_i_7_n_0 ;
  wire \grown[9]_i_8_n_0 ;
  wire growth;
  wire \growth[0][0]_i_2_n_0 ;
  wire \growth[0][1]_i_3_n_0 ;
  wire \growth[0][1]_i_4_n_0 ;
  wire \growth[0][1]_i_5_n_0 ;
  wire \growth[10][0]_i_1_n_0 ;
  wire \growth[10][0]_i_2_n_0 ;
  wire \growth[10][0]_i_3_n_0 ;
  wire \growth[10][0]_i_4_n_0 ;
  wire \growth[10][1]_i_1_n_0 ;
  wire \growth[10][1]_i_2_n_0 ;
  wire \growth[10][1]_i_3_n_0 ;
  wire \growth[10][1]_i_4_n_0 ;
  wire \growth[11][0]_i_1_n_0 ;
  wire \growth[11][0]_i_2_n_0 ;
  wire \growth[11][0]_i_3_n_0 ;
  wire \growth[11][0]_i_4_n_0 ;
  wire \growth[11][0]_i_5_n_0 ;
  wire \growth[11][1]_i_1_n_0 ;
  wire \growth[11][1]_i_2_n_0 ;
  wire \growth[11][1]_i_3_n_0 ;
  wire \growth[11][1]_i_4_n_0 ;
  wire \growth[12][0]_i_1_n_0 ;
  wire \growth[12][0]_i_2_n_0 ;
  wire \growth[12][0]_i_3_n_0 ;
  wire \growth[12][0]_i_4_n_0 ;
  wire \growth[12][0]_i_5_n_0 ;
  wire \growth[12][1]_i_1_n_0 ;
  wire \growth[12][1]_i_2_n_0 ;
  wire \growth[12][1]_i_3_n_0 ;
  wire \growth[12][1]_i_4_n_0 ;
  wire \growth[1][0]_i_1_n_0 ;
  wire \growth[1][0]_i_2_n_0 ;
  wire \growth[1][0]_i_3_n_0 ;
  wire \growth[1][0]_i_4_n_0 ;
  wire \growth[1][1]_i_1_n_0 ;
  wire \growth[1][1]_i_2_n_0 ;
  wire \growth[1][1]_i_3_n_0 ;
  wire \growth[1][1]_i_4_n_0 ;
  wire \growth[2][0]_i_1_n_0 ;
  wire \growth[2][0]_i_2_n_0 ;
  wire \growth[2][0]_i_3_n_0 ;
  wire \growth[2][0]_i_4_n_0 ;
  wire \growth[2][1]_i_1_n_0 ;
  wire \growth[2][1]_i_2_n_0 ;
  wire \growth[2][1]_i_3_n_0 ;
  wire \growth[2][1]_i_4_n_0 ;
  wire \growth[3][0]_i_1_n_0 ;
  wire \growth[3][0]_i_2_n_0 ;
  wire \growth[3][0]_i_3_n_0 ;
  wire \growth[3][1]_i_1_n_0 ;
  wire \growth[3][1]_i_2_n_0 ;
  wire \growth[3][1]_i_3_n_0 ;
  wire \growth[3][1]_i_4_n_0 ;
  wire \growth[4][0]_i_1_n_0 ;
  wire \growth[4][0]_i_2_n_0 ;
  wire \growth[4][1]_i_1_n_0 ;
  wire \growth[4][1]_i_2_n_0 ;
  wire \growth[4][1]_i_3_n_0 ;
  wire \growth[4][1]_i_4_n_0 ;
  wire \growth[4][1]_i_5_n_0 ;
  wire \growth[5][0]_i_1_n_0 ;
  wire \growth[5][0]_i_2_n_0 ;
  wire \growth[5][0]_i_3_n_0 ;
  wire \growth[5][0]_i_4_n_0 ;
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
  wire \growth[7][0]_i_3_n_0 ;
  wire \growth[7][0]_i_4_n_0 ;
  wire \growth[7][1]_i_1_n_0 ;
  wire \growth[7][1]_i_2_n_0 ;
  wire \growth[7][1]_i_3_n_0 ;
  wire \growth[7][1]_i_4_n_0 ;
  wire \growth[8][0]_i_1_n_0 ;
  wire \growth[8][0]_i_2_n_0 ;
  wire \growth[8][0]_i_3_n_0 ;
  wire \growth[8][0]_i_4_n_0 ;
  wire \growth[8][1]_i_1_n_0 ;
  wire \growth[8][1]_i_2_n_0 ;
  wire \growth[8][1]_i_3_n_0 ;
  wire \growth[8][1]_i_4_n_0 ;
  wire \growth[9][0]_i_1_n_0 ;
  wire \growth[9][0]_i_2_n_0 ;
  wire \growth[9][0]_i_3_n_0 ;
  wire \growth[9][1]_i_1_n_0 ;
  wire \growth[9][1]_i_2_n_0 ;
  wire \growth[9][1]_i_3_n_0 ;
  wire \growth[9][1]_i_4_n_0 ;
  wire [11:0]obs_active;
  wire [11:0]obs_busy;
  wire [59:0]obs_cid;
  wire [11:0]obs_defect;
  wire [12:0]obs_ecorr;
  wire [11:0]obs_grown;
  wire [25:0]obs_growth;
  wire [35:1]\^obs_ptr ;
  wire [11:0]obs_unrooted;
  wire [11:0]obs_whole;
  wire \ptr[0][1]_i_1_n_0 ;
  wire \ptr[0][1]_i_2_n_0 ;
  wire \ptr[10][0]_i_1_n_0 ;
  wire \ptr[10][1]_i_1_n_0 ;
  wire \ptr[10][1]_i_2_n_0 ;
  wire \ptr[10][1]_i_3_n_0 ;
  wire \ptr[10][2]_i_1_n_0 ;
  wire \ptr[10][2]_i_2_n_0 ;
  wire \ptr[10][2]_i_3_n_0 ;
  wire \ptr[10][2]_i_4_n_0 ;
  wire \ptr[11][0]_i_1_n_0 ;
  wire \ptr[11][0]_i_2_n_0 ;
  wire \ptr[11][0]_i_3_n_0 ;
  wire \ptr[11][0]_i_4_n_0 ;
  wire \ptr[11][0]_i_5_n_0 ;
  wire \ptr[11][1]_i_10_n_0 ;
  wire \ptr[11][1]_i_11_n_0 ;
  wire \ptr[11][1]_i_12_n_0 ;
  wire \ptr[11][1]_i_13_n_0 ;
  wire \ptr[11][1]_i_14_n_0 ;
  wire \ptr[11][1]_i_1_n_0 ;
  wire \ptr[11][1]_i_2_n_0 ;
  wire \ptr[11][1]_i_3_n_0 ;
  wire \ptr[11][1]_i_4_n_0 ;
  wire \ptr[11][1]_i_5_n_0 ;
  wire \ptr[11][1]_i_6_n_0 ;
  wire \ptr[11][1]_i_7_n_0 ;
  wire \ptr[11][1]_i_8_n_0 ;
  wire \ptr[11][1]_i_9_n_0 ;
  wire \ptr[11][2]_i_1_n_0 ;
  wire \ptr[11][2]_i_2_n_0 ;
  wire \ptr[11][2]_i_3_n_0 ;
  wire \ptr[11][2]_i_4_n_0 ;
  wire \ptr[11][2]_i_5_n_0 ;
  wire \ptr[11][2]_i_6_n_0 ;
  wire \ptr[11][2]_i_7_n_0 ;
  wire \ptr[11][2]_i_8_n_0 ;
  wire \ptr[11][2]_i_9_n_0 ;
  wire \ptr[1][0]_i_1_n_0 ;
  wire \ptr[1][0]_i_2_n_0 ;
  wire \ptr[2][1]_i_2_n_0 ;
  wire \ptr[2][1]_i_3_n_0 ;
  wire \ptr[3][0]_i_1_n_0 ;
  wire \ptr[4][1]_i_1_n_0 ;
  wire \ptr[4][1]_i_2_n_0 ;
  wire \ptr[4][1]_i_3_n_0 ;
  wire \ptr[5][0]_i_1_n_0 ;
  wire \ptr[5][0]_i_2_n_0 ;
  wire \ptr[5][0]_i_3_n_0 ;
  wire \ptr[6][0]_i_1_n_0 ;
  wire \ptr[6][1]_i_1_n_0 ;
  wire \ptr[7][0]_i_1_n_0 ;
  wire \ptr[7][1]_i_1_n_0 ;
  wire \ptr[7][1]_i_2_n_0 ;
  wire \ptr[7][1]_i_3_n_0 ;
  wire \ptr[7][1]_i_4_n_0 ;
  wire \ptr[7][1]_i_5_n_0 ;
  wire \ptr[7][1]_i_6_n_0 ;
  wire \ptr[7][1]_i_7_n_0 ;
  wire \ptr[7][1]_i_8_n_0 ;
  wire \ptr[8][0]_i_1_n_0 ;
  wire \ptr[8][0]_i_2_n_0 ;
  wire \ptr[8][1]_i_1_n_0 ;
  wire \ptr[8][1]_i_2_n_0 ;
  wire \ptr[8][1]_i_3_n_0 ;
  wire \ptr[8][1]_i_4_n_0 ;
  wire \ptr[8][1]_i_5_n_0 ;
  wire \ptr[8][1]_i_6_n_0 ;
  wire \ptr[8][1]_i_7_n_0 ;
  wire \ptr[8][2]_i_10_n_0 ;
  wire \ptr[8][2]_i_11_n_0 ;
  wire \ptr[8][2]_i_12_n_0 ;
  wire \ptr[8][2]_i_13_n_0 ;
  wire \ptr[8][2]_i_14_n_0 ;
  wire \ptr[8][2]_i_15_n_0 ;
  wire \ptr[8][2]_i_16_n_0 ;
  wire \ptr[8][2]_i_17_n_0 ;
  wire \ptr[8][2]_i_18_n_0 ;
  wire \ptr[8][2]_i_1_n_0 ;
  wire \ptr[8][2]_i_2_n_0 ;
  wire \ptr[8][2]_i_3_n_0 ;
  wire \ptr[8][2]_i_4_n_0 ;
  wire \ptr[8][2]_i_5_n_0 ;
  wire \ptr[8][2]_i_6_n_0 ;
  wire \ptr[8][2]_i_7_n_0 ;
  wire \ptr[8][2]_i_8_n_0 ;
  wire \ptr[8][2]_i_9_n_0 ;
  wire \ptr[9][0]_i_1_n_0 ;
  wire \ptr[9][0]_i_2_n_0 ;
  wire \ptr[9][0]_i_3_n_0 ;
  wire \ptr[9][1]_i_1_n_0 ;
  wire \ptr[9][1]_i_2_n_0 ;
  wire \ptr[9][1]_i_3_n_0 ;
  wire \ptr[9][1]_i_4_n_0 ;
  wire \ptr[9][1]_i_5_n_0 ;
  wire \ptr[9][2]_i_10_n_0 ;
  wire \ptr[9][2]_i_11_n_0 ;
  wire \ptr[9][2]_i_12_n_0 ;
  wire \ptr[9][2]_i_13_n_0 ;
  wire \ptr[9][2]_i_14_n_0 ;
  wire \ptr[9][2]_i_15_n_0 ;
  wire \ptr[9][2]_i_16_n_0 ;
  wire \ptr[9][2]_i_17_n_0 ;
  wire \ptr[9][2]_i_18_n_0 ;
  wire \ptr[9][2]_i_19_n_0 ;
  wire \ptr[9][2]_i_1_n_0 ;
  wire \ptr[9][2]_i_20_n_0 ;
  wire \ptr[9][2]_i_21_n_0 ;
  wire \ptr[9][2]_i_22_n_0 ;
  wire \ptr[9][2]_i_2_n_0 ;
  wire \ptr[9][2]_i_3_n_0 ;
  wire \ptr[9][2]_i_4_n_0 ;
  wire \ptr[9][2]_i_5_n_0 ;
  wire \ptr[9][2]_i_6_n_0 ;
  wire \ptr[9][2]_i_7_n_0 ;
  wire \ptr[9][2]_i_8_n_0 ;
  wire \ptr[9][2]_i_9_n_0 ;
  wire reset;
  wire [2:0]stage__0;
  wire [2:0]stage__1;
  wire [1:0]stage_reg;
  wire start;
  wire step_cnt;
  wire \step_cnt[0]_i_1_n_0 ;
  wire \step_cnt[1]_i_1_n_0 ;
  wire \step_cnt[2]_i_1_n_0 ;
  wire \step_cnt[3]_i_1_n_0 ;
  wire \step_cnt[3]_i_2_n_0 ;
  wire \step_cnt[4]_i_1_n_0 ;
  wire \step_cnt[4]_i_2_n_0 ;
  wire \step_cnt[5]_i_1_n_0 ;
  wire \step_cnt[5]_i_2_n_0 ;
  wire \step_cnt[6]_i_1_n_0 ;
  wire \step_cnt[7]_i_2_n_0 ;
  wire \step_cnt[7]_i_3_n_0 ;
  wire \step_cnt_reg_n_0_[0] ;
  wire \step_cnt_reg_n_0_[1] ;
  wire \step_cnt_reg_n_0_[2] ;
  wire \step_cnt_reg_n_0_[3] ;
  wire \step_cnt_reg_n_0_[4] ;
  wire \step_cnt_reg_n_0_[5] ;
  wire \step_cnt_reg_n_0_[6] ;
  wire \step_cnt_reg_n_0_[7] ;
  wire [1:0]syndrome;
  wire \unrooted[0]_i_1_n_0 ;
  wire \unrooted[10]_i_1_n_0 ;
  wire \unrooted[11]_i_1_n_0 ;
  wire \unrooted[1]_i_1_n_0 ;
  wire \unrooted[2]_i_1_n_0 ;
  wire \unrooted[3]_i_1_n_0 ;
  wire \unrooted[4]_i_1_n_0 ;
  wire \unrooted[5]_i_1_n_0 ;
  wire \unrooted[6]_i_1_n_0 ;
  wire \unrooted[7]_i_1_n_0 ;
  wire \unrooted[8]_i_1_n_0 ;
  wire \unrooted[9]_i_1_n_0 ;
  wire whole45_out;
  wire whole51_out;
  wire whole57_out;
  wire whole63_out;
  wire whole73_out;
  wire whole77_out;
  wire whole87_out;
  wire whole89_out;
  wire \whole[0]_i_1_n_0 ;
  wire \whole[10]_i_1_n_0 ;
  wire \whole[10]_i_2_n_0 ;
  wire \whole[11]_i_1_n_0 ;
  wire \whole[11]_i_2_n_0 ;
  wire \whole[1]_i_1_n_0 ;
  wire \whole[2]_i_1_n_0 ;
  wire \whole[2]_i_2_n_0 ;
  wire \whole[3]_i_1_n_0 ;
  wire \whole[3]_i_2_n_0 ;
  wire \whole[4]_i_1_n_0 ;
  wire \whole[4]_i_2_n_0 ;
  wire \whole[5]_i_1_n_0 ;
  wire \whole[5]_i_2_n_0 ;
  wire \whole[6]_i_1_n_0 ;
  wire \whole[7]_i_1_n_0 ;
  wire \whole[8]_i_1_n_0 ;
  wire \whole[8]_i_2_n_0 ;
  wire \whole[9]_i_1_n_0 ;
  wire \whole[9]_i_2_n_0 ;

  assign obs_ptr[35:24] = \^obs_ptr [35:24];
  assign obs_ptr[23] = \<const0> ;
  assign obs_ptr[22:21] = \^obs_ptr [22:21];
  assign obs_ptr[20] = \<const0> ;
  assign obs_ptr[19:18] = \^obs_ptr [19:18];
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
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h4A)) 
    \FSM_sequential_stage[0]_i_1 
       (.I0(stage__0[2]),
        .I1(\FSM_sequential_stage_reg[1]_rep__0_n_0 ),
        .I2(stage__0[0]),
        .O(stage__1[0]));
  LUT5 #(
    .INIT(32'h55545555)) 
    \FSM_sequential_stage[1]_i_1 
       (.I0(stage__0[1]),
        .I1(\busy[8]_i_1_n_0 ),
        .I2(done_i_2_n_0),
        .I3(\busy[9]_i_1_n_0 ),
        .I4(stage__0[0]),
        .O(\FSM_sequential_stage[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h55545555)) 
    \FSM_sequential_stage[1]_rep_i_1 
       (.I0(stage__0[1]),
        .I1(\busy[8]_i_1_n_0 ),
        .I2(done_i_2_n_0),
        .I3(\busy[9]_i_1_n_0 ),
        .I4(stage__0[0]),
        .O(\FSM_sequential_stage[1]_rep_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h55545555)) 
    \FSM_sequential_stage[1]_rep_i_1__0 
       (.I0(stage__0[1]),
        .I1(\busy[8]_i_1_n_0 ),
        .I2(done_i_2_n_0),
        .I3(\busy[9]_i_1_n_0 ),
        .I4(stage__0[0]),
        .O(\FSM_sequential_stage[1]_rep_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hAAAFAAAFBBBFAAAE)) 
    \FSM_sequential_stage[2]_i_1 
       (.I0(\FSM_sequential_stage_reg[1]_rep__0_n_0 ),
        .I1(stage__0[2]),
        .I2(\FSM_sequential_stage[2]_i_3_n_0 ),
        .I3(\busy[8]_i_1_n_0 ),
        .I4(start),
        .I5(stage__0[0]),
        .O(\FSM_sequential_stage[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF77FFFFFF00FFFFF)) 
    \FSM_sequential_stage[2]_i_10 
       (.I0(\defect[6]_i_2_n_0 ),
        .I1(\defect[6]_i_3_n_0 ),
        .I2(\active[6]_i_2_n_0 ),
        .I3(obs_active[6]),
        .I4(\FSM_sequential_stage[2]_i_15_n_0 ),
        .I5(obs_defect[6]),
        .O(\FSM_sequential_stage[2]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFF4FFF4FFFF)) 
    \FSM_sequential_stage[2]_i_11 
       (.I0(\defect[7]_i_2_n_0 ),
        .I1(obs_defect[7]),
        .I2(\FSM_sequential_stage[2]_i_16_n_0 ),
        .I3(\busy[7]_i_3_n_0 ),
        .I4(\active[7]_i_2_n_0 ),
        .I5(obs_active[7]),
        .O(\FSM_sequential_stage[2]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hF4)) 
    \FSM_sequential_stage[2]_i_12 
       (.I0(\cid[11][3]_i_7_n_0 ),
        .I1(\cid[11][3]_i_5_n_0 ),
        .I2(\busy[11]_i_5_n_0 ),
        .O(\FSM_sequential_stage[2]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \FSM_sequential_stage[2]_i_13 
       (.I0(obs_defect[10]),
        .I1(\active[10]_i_2_n_0 ),
        .O(\FSM_sequential_stage[2]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h0000000090999999)) 
    \FSM_sequential_stage[2]_i_14 
       (.I0(\active[0]_i_2_n_0 ),
        .I1(obs_active[0]),
        .I2(obs_grown[0]),
        .I3(\grown[0]_i_4_n_0 ),
        .I4(\cid[6][4]_i_6_n_0 ),
        .I5(\cid[0][4]_i_3_n_0 ),
        .O(\FSM_sequential_stage[2]_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT3 #(
    .INIT(8'h0D)) 
    \FSM_sequential_stage[2]_i_15 
       (.I0(\cid[6][4]_i_2_n_0 ),
        .I1(\cid[6][3]_i_4_n_0 ),
        .I2(\busy[6]_i_3_n_0 ),
        .O(\FSM_sequential_stage[2]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFE0A0)) 
    \FSM_sequential_stage[2]_i_16 
       (.I0(\ptr[7][1]_i_3_n_0 ),
        .I1(\grown[11]_i_6_n_0 ),
        .I2(\cid[7][4]_i_4_n_0 ),
        .I3(\grown[7]_i_5_n_0 ),
        .I4(\FSM_sequential_stage[2]_i_17_n_0 ),
        .I5(\FSM_sequential_stage[2]_i_18_n_0 ),
        .O(\FSM_sequential_stage[2]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFDDDDFDDD)) 
    \FSM_sequential_stage[2]_i_17 
       (.I0(\ptr[7][1]_i_4_n_0 ),
        .I1(\cid[7][4]_i_7_n_0 ),
        .I2(\grown[0]_i_4_n_0 ),
        .I3(\cid[7][3]_i_7_n_0 ),
        .I4(obs_grown[7]),
        .I5(\ptr[7][1]_i_5_n_0 ),
        .O(\FSM_sequential_stage[2]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA8A888888)) 
    \FSM_sequential_stage[2]_i_18 
       (.I0(\cid[7][4]_i_6_n_0 ),
        .I1(\ptr[7][1]_i_6_n_0 ),
        .I2(\grown[4]_i_4_n_0 ),
        .I3(obs_grown[1]),
        .I4(\grown[7]_i_7_n_0 ),
        .I5(\cid[7][3]_i_6_n_0 ),
        .O(\FSM_sequential_stage[2]_i_18_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h61)) 
    \FSM_sequential_stage[2]_i_2 
       (.I0(stage__0[0]),
        .I1(\FSM_sequential_stage_reg[1]_rep__0_n_0 ),
        .I2(stage__0[2]),
        .O(stage__1[2]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFD0)) 
    \FSM_sequential_stage[2]_i_3 
       (.I0(\defect[9]_i_2_n_0 ),
        .I1(\FSM_sequential_stage[2]_i_4_n_0 ),
        .I2(\cid[7][4]_i_1_n_0 ),
        .I3(\FSM_sequential_stage[2]_i_5_n_0 ),
        .I4(\FSM_sequential_stage[2]_i_6_n_0 ),
        .I5(\FSM_sequential_stage[2]_i_7_n_0 ),
        .O(\FSM_sequential_stage[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hBEBEBFBEEFEFEEEF)) 
    \FSM_sequential_stage[2]_i_4 
       (.I0(\busy[9]_i_2_n_0 ),
        .I1(obs_defect[9]),
        .I2(\defect[9]_i_3_n_0 ),
        .I3(\active[9]_i_3_n_0 ),
        .I4(\active[9]_i_4_n_0 ),
        .I5(obs_active[9]),
        .O(\FSM_sequential_stage[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFD0)) 
    \FSM_sequential_stage[2]_i_5 
       (.I0(\defect[11]_i_2_n_0 ),
        .I1(\FSM_sequential_stage[2]_i_8_n_0 ),
        .I2(\cid[7][4]_i_1_n_0 ),
        .I3(\busy[5]_i_1_n_0 ),
        .I4(\FSM_sequential_stage[2]_i_9_n_0 ),
        .I5(\busy[3]_i_1_n_0 ),
        .O(\FSM_sequential_stage[2]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFFDF0000)) 
    \FSM_sequential_stage[2]_i_6 
       (.I0(\defect[6]_i_4_n_0 ),
        .I1(\FSM_sequential_stage[2]_i_10_n_0 ),
        .I2(\defect[7]_i_3_n_0 ),
        .I3(\FSM_sequential_stage[2]_i_11_n_0 ),
        .I4(\cid[7][4]_i_1_n_0 ),
        .O(\FSM_sequential_stage[2]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFFFFFD0)) 
    \FSM_sequential_stage[2]_i_7 
       (.I0(\defect[10]_i_2_n_0 ),
        .I1(\busy[10]_i_2_n_0 ),
        .I2(\cid[7][4]_i_1_n_0 ),
        .I3(\busy[2]_i_1_n_0 ),
        .I4(\busy[1]_i_1_n_0 ),
        .O(\FSM_sequential_stage[2]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAEAEFFAEFFFFAEFF)) 
    \FSM_sequential_stage[2]_i_8 
       (.I0(\FSM_sequential_stage[2]_i_12_n_0 ),
        .I1(obs_defect[11]),
        .I2(\busy[11]_i_4_n_0 ),
        .I3(\active[11]_i_2_n_0 ),
        .I4(\active[11]_i_3_n_0 ),
        .I5(obs_active[11]),
        .O(\FSM_sequential_stage[2]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF75FF00000000)) 
    \FSM_sequential_stage[2]_i_9 
       (.I0(\busy[4]_i_2_n_0 ),
        .I1(\FSM_sequential_stage[2]_i_13_n_0 ),
        .I2(\active[10]_i_3_n_0 ),
        .I3(\FSM_sequential_stage[2]_i_14_n_0 ),
        .I4(\defect[0]_i_2_n_0 ),
        .I5(\cid[7][4]_i_1_n_0 ),
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
  FDRE \FSM_sequential_stage_reg[2] 
       (.C(clk),
        .CE(\FSM_sequential_stage[2]_i_1_n_0 ),
        .D(stage__1[2]),
        .Q(stage__0[2]),
        .R(reset));
  GND GND
       (.G(\<const0> ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \active[0]_i_1 
       (.I0(\active[0]_i_2_n_0 ),
        .I1(\FSM_sequential_stage_reg[1]_rep__0_n_0 ),
        .O(\c_active[0] ));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \active[0]_i_2 
       (.I0(obs_active[6]),
        .I1(\ptr[0][1]_i_2_n_0 ),
        .O(\active[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF000020FF20FF)) 
    \active[10]_i_1 
       (.I0(obs_defect[10]),
        .I1(\active[10]_i_2_n_0 ),
        .I2(\active[10]_i_3_n_0 ),
        .I3(\active[10]_i_4_n_0 ),
        .I4(obs_active[8]),
        .I5(\FSM_sequential_stage_reg[1]_rep__0_n_0 ),
        .O(\c_active[10] ));
  LUT6 #(
    .INIT(64'h8888888888888BBB)) 
    \active[10]_i_2 
       (.I0(\^obs_ptr [30]),
        .I1(\cid[10][3]_i_2_n_0 ),
        .I2(\cid[10][3]_i_5_n_0 ),
        .I3(\cid[10][2]_i_3_n_0 ),
        .I4(\active[10]_i_5_n_0 ),
        .I5(\active[10]_i_6_n_0 ),
        .O(\active[10]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \active[10]_i_3 
       (.I0(\ptr[10][1]_i_2_n_0 ),
        .I1(\ptr[10][2]_i_2_n_0 ),
        .O(\active[10]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h01010333FDFDCFFF)) 
    \active[10]_i_4 
       (.I0(obs_active[4]),
        .I1(\ptr[10][1]_i_2_n_0 ),
        .I2(\ptr[10][2]_i_2_n_0 ),
        .I3(obs_active[8]),
        .I4(\active[10]_i_2_n_0 ),
        .I5(obs_active[11]),
        .O(\active[10]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \active[10]_i_5 
       (.I0(\cid[10][2]_i_3_n_0 ),
        .I1(\cid[10][1]_i_3_n_0 ),
        .I2(obs_unrooted[10]),
        .O(\active[10]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF0000AE00)) 
    \active[10]_i_6 
       (.I0(\cid[10][2]_i_8_n_0 ),
        .I1(\cid[11][2]_i_3_n_0 ),
        .I2(obs_unrooted[10]),
        .I3(obs_growth[21]),
        .I4(obs_growth[20]),
        .I5(\active[10]_i_7_n_0 ),
        .O(\active[10]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h555555555D005555)) 
    \active[10]_i_7 
       (.I0(\^obs_ptr [30]),
        .I1(\cid[4][4]_i_4_n_0 ),
        .I2(obs_unrooted[10]),
        .I3(\cid[10][2]_i_11_n_0 ),
        .I4(obs_growth[5]),
        .I5(obs_growth[4]),
        .O(\active[10]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT4 #(
    .INIT(16'hF0DD)) 
    \active[11]_i_1 
       (.I0(\active[11]_i_2_n_0 ),
        .I1(\active[11]_i_3_n_0 ),
        .I2(obs_active[9]),
        .I3(\FSM_sequential_stage_reg[1]_rep__0_n_0 ),
        .O(\active[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    \active[11]_i_2 
       (.I0(obs_defect[11]),
        .I1(\ptr[11][2]_i_2_n_0 ),
        .I2(\active[11]_i_4_n_0 ),
        .O(\active[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCC00AAAAAAF0AAAA)) 
    \active[11]_i_3 
       (.I0(obs_active[10]),
        .I1(obs_active[9]),
        .I2(obs_active[5]),
        .I3(\ptr[11][2]_i_2_n_0 ),
        .I4(\ptr[11][0]_i_2_n_0 ),
        .I5(\ptr[11][1]_i_2_n_0 ),
        .O(\active[11]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000FF053301FF05)) 
    \active[11]_i_4 
       (.I0(\ptr[11][1]_i_7_n_0 ),
        .I1(\^obs_ptr [34]),
        .I2(\ptr[11][0]_i_4_n_0 ),
        .I3(\ptr[11][2]_i_5_n_0 ),
        .I4(\cid[11][2]_i_3_n_0 ),
        .I5(\^obs_ptr [33]),
        .O(\active[11]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \active[1]_i_1 
       (.I0(\FSM_sequential_stage_reg[1]_rep__0_n_0 ),
        .I1(\active[1]_i_2_n_0 ),
        .O(\active[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair121" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \active[1]_i_2 
       (.I0(\ptr[1][0]_i_2_n_0 ),
        .I1(obs_active[7]),
        .O(\active[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \active[2]_i_1 
       (.I0(obs_active[0]),
        .I1(\FSM_sequential_stage_reg[1]_rep__0_n_0 ),
        .I2(\active[2]_i_2_n_0 ),
        .O(\c_active[2] ));
  LUT2 #(
    .INIT(4'h2)) 
    \active[2]_i_2 
       (.I0(obs_active[8]),
        .I1(\ptr[2][1]_i_2_n_0 ),
        .O(\active[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT4 #(
    .INIT(16'hF022)) 
    \active[3]_i_1 
       (.I0(obs_active[9]),
        .I1(\active[3]_i_2_n_0 ),
        .I2(obs_active[1]),
        .I3(\FSM_sequential_stage_reg[1]_rep__0_n_0 ),
        .O(\c_active[3] ));
  LUT6 #(
    .INIT(64'h0F000F0F0F4F0F0F)) 
    \active[3]_i_2 
       (.I0(obs_unrooted[3]),
        .I1(\cid[11][1]_i_3_n_0 ),
        .I2(\^obs_ptr [9]),
        .I3(\cid[5][1]_i_2_n_0 ),
        .I4(\active[3]_i_3_n_0 ),
        .I5(\cid[3][4]_i_5_n_0 ),
        .O(\active[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \active[3]_i_3 
       (.I0(obs_growth[15]),
        .I1(obs_growth[14]),
        .O(\active[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \active[4]_i_1 
       (.I0(obs_active[2]),
        .I1(\FSM_sequential_stage_reg[1]_rep__0_n_0 ),
        .I2(\active[4]_i_2_n_0 ),
        .O(\c_active[4] ));
  (* SOFT_HLUTNM = "soft_lutpair120" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \active[4]_i_2 
       (.I0(obs_active[10]),
        .I1(\ptr[4][1]_i_2_n_0 ),
        .O(\active[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \active[5]_i_1 
       (.I0(obs_active[3]),
        .I1(\FSM_sequential_stage_reg[1]_rep__0_n_0 ),
        .I2(\active[5]_i_2_n_0 ),
        .O(\c_active[5] ));
  LUT2 #(
    .INIT(4'h2)) 
    \active[5]_i_2 
       (.I0(obs_active[11]),
        .I1(\ptr[5][0]_i_2_n_0 ),
        .O(\active[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \active[6]_i_1 
       (.I0(\FSM_sequential_stage_reg[1]_rep__0_n_0 ),
        .I1(\active[6]_i_2_n_0 ),
        .O(\active[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h40434C4F70737C7F)) 
    \active[6]_i_2 
       (.I0(obs_defect[6]),
        .I1(\defect[6]_i_2_n_0 ),
        .I2(\defect[6]_i_3_n_0 ),
        .I3(obs_active[8]),
        .I4(obs_active[7]),
        .I5(obs_active[0]),
        .O(\active[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \active[7]_i_1 
       (.I0(\FSM_sequential_stage_reg[1]_rep__0_n_0 ),
        .I1(\active[7]_i_2_n_0 ),
        .O(\active[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0434C4F40737C7F7)) 
    \active[7]_i_2 
       (.I0(obs_defect[7]),
        .I1(\defect[7]_i_2_n_0 ),
        .I2(\ptr[7][1]_i_1_n_0 ),
        .I3(obs_active[9]),
        .I4(obs_active[1]),
        .I5(obs_active[6]),
        .O(\active[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT3 #(
    .INIT(8'hC5)) 
    \active[8]_i_1 
       (.I0(\active[8]_i_2_n_0 ),
        .I1(obs_active[6]),
        .I2(\FSM_sequential_stage_reg[1]_rep__0_n_0 ),
        .O(\c_active[8] ));
  LUT5 #(
    .INIT(32'h77770070)) 
    \active[8]_i_2 
       (.I0(\defect[8]_i_3_n_0 ),
        .I1(\defect[8]_i_2_n_0 ),
        .I2(\active[8]_i_3_n_0 ),
        .I3(\active[8]_i_4_n_0 ),
        .I4(\active[8]_i_5_n_0 ),
        .O(\active[8]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h100FDFFF)) 
    \active[8]_i_3 
       (.I0(obs_active[6]),
        .I1(\ptr[8][0]_i_2_n_0 ),
        .I2(\busy[2]_i_3_n_0 ),
        .I3(\ptr[8][1]_i_2_n_0 ),
        .I4(obs_active[2]),
        .O(\active[8]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h000000AC)) 
    \active[8]_i_4 
       (.I0(obs_active[10]),
        .I1(obs_active[9]),
        .I2(\ptr[8][0]_i_2_n_0 ),
        .I3(\ptr[8][1]_i_2_n_0 ),
        .I4(\busy[2]_i_3_n_0 ),
        .O(\active[8]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \active[8]_i_5 
       (.I0(\busy[2]_i_3_n_0 ),
        .I1(\ptr[8][0]_i_2_n_0 ),
        .I2(\ptr[8][1]_i_2_n_0 ),
        .O(\active[8]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT3 #(
    .INIT(8'hC5)) 
    \active[9]_i_1 
       (.I0(\active[9]_i_2_n_0 ),
        .I1(obs_active[7]),
        .I2(\FSM_sequential_stage_reg[1]_rep__0_n_0 ),
        .O(\c_active[9] ));
  LUT4 #(
    .INIT(16'h4474)) 
    \active[9]_i_2 
       (.I0(obs_defect[9]),
        .I1(\defect[9]_i_3_n_0 ),
        .I2(\active[9]_i_3_n_0 ),
        .I3(\active[9]_i_4_n_0 ),
        .O(\active[9]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFDFCFDFF)) 
    \active[9]_i_3 
       (.I0(obs_active[11]),
        .I1(\busy[3]_i_4_n_0 ),
        .I2(\busy[3]_i_5_n_0 ),
        .I3(\busy[3]_i_3_n_0 ),
        .I4(obs_active[8]),
        .O(\active[9]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hEFF02000)) 
    \active[9]_i_4 
       (.I0(obs_active[7]),
        .I1(\busy[3]_i_3_n_0 ),
        .I2(\busy[3]_i_5_n_0 ),
        .I3(\busy[3]_i_4_n_0 ),
        .I4(obs_active[3]),
        .O(\active[9]_i_4_n_0 ));
  FDRE \active_reg[0] 
       (.C(clk),
        .CE(\cid[9][4]_i_1_n_0 ),
        .D(\c_active[0] ),
        .Q(obs_active[0]),
        .R(reset));
  FDRE \active_reg[10] 
       (.C(clk),
        .CE(\cid[9][4]_i_1_n_0 ),
        .D(\c_active[10] ),
        .Q(obs_active[10]),
        .R(reset));
  FDRE \active_reg[11] 
       (.C(clk),
        .CE(\cid[9][4]_i_1_n_0 ),
        .D(\active[11]_i_1_n_0 ),
        .Q(obs_active[11]),
        .R(reset));
  FDRE \active_reg[1] 
       (.C(clk),
        .CE(\cid[9][4]_i_1_n_0 ),
        .D(\active[1]_i_1_n_0 ),
        .Q(obs_active[1]),
        .R(reset));
  FDRE \active_reg[2] 
       (.C(clk),
        .CE(\cid[9][4]_i_1_n_0 ),
        .D(\c_active[2] ),
        .Q(obs_active[2]),
        .R(reset));
  FDRE \active_reg[3] 
       (.C(clk),
        .CE(\cid[9][4]_i_1_n_0 ),
        .D(\c_active[3] ),
        .Q(obs_active[3]),
        .R(reset));
  FDRE \active_reg[4] 
       (.C(clk),
        .CE(\cid[9][4]_i_1_n_0 ),
        .D(\c_active[4] ),
        .Q(obs_active[4]),
        .R(reset));
  FDRE \active_reg[5] 
       (.C(clk),
        .CE(\cid[9][4]_i_1_n_0 ),
        .D(\c_active[5] ),
        .Q(obs_active[5]),
        .R(reset));
  FDRE \active_reg[6] 
       (.C(clk),
        .CE(\cid[9][4]_i_1_n_0 ),
        .D(\active[6]_i_1_n_0 ),
        .Q(obs_active[6]),
        .R(reset));
  FDRE \active_reg[7] 
       (.C(clk),
        .CE(\cid[9][4]_i_1_n_0 ),
        .D(\active[7]_i_1_n_0 ),
        .Q(obs_active[7]),
        .R(reset));
  FDRE \active_reg[8] 
       (.C(clk),
        .CE(\cid[9][4]_i_1_n_0 ),
        .D(\c_active[8] ),
        .Q(obs_active[8]),
        .R(reset));
  FDRE \active_reg[9] 
       (.C(clk),
        .CE(\cid[9][4]_i_1_n_0 ),
        .D(\c_active[9] ),
        .Q(obs_active[9]),
        .R(reset));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    all_busy_INST_0
       (.I0(obs_busy[10]),
        .I1(obs_busy[9]),
        .I2(obs_busy[0]),
        .I3(obs_busy[11]),
        .I4(all_busy_INST_0_i_1_n_0),
        .I5(all_busy_INST_0_i_2_n_0),
        .O(all_busy));
  LUT4 #(
    .INIT(16'hFFFE)) 
    all_busy_INST_0_i_1
       (.I0(obs_busy[3]),
        .I1(obs_busy[4]),
        .I2(obs_busy[1]),
        .I3(obs_busy[2]),
        .O(all_busy_INST_0_i_1_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    all_busy_INST_0_i_2
       (.I0(obs_busy[7]),
        .I1(obs_busy[8]),
        .I2(obs_busy[5]),
        .I3(obs_busy[6]),
        .O(all_busy_INST_0_i_2_n_0));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAA8AA8)) 
    \busy[0]_i_1 
       (.I0(\cid[7][4]_i_1_n_0 ),
        .I1(\defect[0]_i_2_n_0 ),
        .I2(\active[0]_i_2_n_0 ),
        .I3(obs_active[0]),
        .I4(\busy[0]_i_2_n_0 ),
        .I5(\cid[0][4]_i_3_n_0 ),
        .O(c_busy));
  LUT6 #(
    .INIT(64'h0000004000000000)) 
    \busy[0]_i_2 
       (.I0(obs_grown[0]),
        .I1(obs_grown[6]),
        .I2(stage__0[2]),
        .I3(stage__0[0]),
        .I4(\FSM_sequential_stage_reg[1]_rep__0_n_0 ),
        .I5(\cid[6][4]_i_6_n_0 ),
        .O(\busy[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h14001414)) 
    \busy[10]_i_1 
       (.I0(\FSM_sequential_stage_reg[1]_rep_n_0 ),
        .I1(stage__0[2]),
        .I2(stage__0[0]),
        .I3(\busy[10]_i_2_n_0 ),
        .I4(\defect[10]_i_2_n_0 ),
        .O(\busy[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFBFFEAEEEEEEFFFF)) 
    \busy[10]_i_2 
       (.I0(\busy[10]_i_3_n_0 ),
        .I1(obs_defect[10]),
        .I2(\active[10]_i_2_n_0 ),
        .I3(\active[10]_i_3_n_0 ),
        .I4(\active[10]_i_4_n_0 ),
        .I5(obs_active[10]),
        .O(\busy[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFECCEECC)) 
    \busy[10]_i_3 
       (.I0(\cid[10][3]_i_5_n_0 ),
        .I1(\busy[10]_i_4_n_0 ),
        .I2(\grown[6]_i_7_n_0 ),
        .I3(\cid[10][2]_i_3_n_0 ),
        .I4(\grown[10]_i_5_n_0 ),
        .I5(\busy[10]_i_5_n_0 ),
        .O(\busy[10]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hBAAA)) 
    \busy[10]_i_4 
       (.I0(\cid[10][3]_i_2_n_0 ),
        .I1(obs_unrooted[10]),
        .I2(\cid[10][1]_i_3_n_0 ),
        .I3(\cid[10][2]_i_3_n_0 ),
        .O(\busy[10]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEEEEEEEEECCEC)) 
    \busy[10]_i_5 
       (.I0(\cid[10][2]_i_9_n_0 ),
        .I1(\busy[10]_i_6_n_0 ),
        .I2(\busy[9]_i_5_n_0 ),
        .I3(\grown[10]_i_7_n_0 ),
        .I4(\grown[10]_i_8_n_0 ),
        .I5(\cid[10][2]_i_8_n_0 ),
        .O(\busy[10]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAABAAAAA)) 
    \busy[10]_i_6 
       (.I0(\ptr[10][2]_i_4_n_0 ),
        .I1(obs_growth[4]),
        .I2(obs_growth[5]),
        .I3(obs_grown[10]),
        .I4(obs_grown[4]),
        .I5(\grown[4]_i_4_n_0 ),
        .O(\busy[10]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \busy[11]_i_1 
       (.I0(\FSM_sequential_stage_reg[1]_rep_n_0 ),
        .I1(stage__0[0]),
        .I2(stage__0[2]),
        .O(\busy[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h88A8AA8AAAAAAAAA)) 
    \busy[11]_i_2 
       (.I0(\cid[7][4]_i_1_n_0 ),
        .I1(\busy[11]_i_3_n_0 ),
        .I2(\active[11]_i_2_n_0 ),
        .I3(\active[11]_i_3_n_0 ),
        .I4(obs_active[11]),
        .I5(\defect[11]_i_2_n_0 ),
        .O(\busy[11]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'hF4F4FFF4)) 
    \busy[11]_i_3 
       (.I0(\busy[11]_i_4_n_0 ),
        .I1(obs_defect[11]),
        .I2(\busy[11]_i_5_n_0 ),
        .I3(\cid[11][3]_i_5_n_0 ),
        .I4(\cid[11][3]_i_7_n_0 ),
        .O(\busy[11]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \busy[11]_i_4 
       (.I0(\ptr[11][1]_i_2_n_0 ),
        .I1(\ptr[11][0]_i_2_n_0 ),
        .I2(\ptr[11][2]_i_2_n_0 ),
        .O(\busy[11]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFD0FFD0FFF0FFFF)) 
    \busy[11]_i_5 
       (.I0(\busy[11]_i_6_n_0 ),
        .I1(\cid[11][3]_i_10_n_0 ),
        .I2(\cid[11][3]_i_9_n_0 ),
        .I3(\busy[11]_i_7_n_0 ),
        .I4(\ptr[5][0]_i_3_n_0 ),
        .I5(\busy[11]_i_8_n_0 ),
        .O(\busy[11]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'hFDFFFFFF)) 
    \busy[11]_i_6 
       (.I0(obs_grown[5]),
        .I1(\FSM_sequential_stage_reg[1]_rep__0_n_0 ),
        .I2(stage__0[0]),
        .I3(stage__0[2]),
        .I4(\grown[11]_i_8_n_0 ),
        .O(\busy[11]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF0800FFFF)) 
    \busy[11]_i_7 
       (.I0(\grown[11]_i_6_n_0 ),
        .I1(obs_growth[25]),
        .I2(obs_growth[24]),
        .I3(\grown[11]_i_7_n_0 ),
        .I4(\ptr[11][2]_i_6_n_0 ),
        .I5(\cid[11][3]_i_11_n_0 ),
        .O(\busy[11]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0000000055554555)) 
    \busy[11]_i_8 
       (.I0(\ptr[11][2]_i_7_n_0 ),
        .I1(obs_grown[11]),
        .I2(\cid[10][2]_i_9_n_0 ),
        .I3(obs_grown[10]),
        .I4(\grown[4]_i_4_n_0 ),
        .I5(\cid[11][4]_i_8_n_0 ),
        .O(\busy[11]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAA08AA08AAAA)) 
    \busy[1]_i_1 
       (.I0(\cid[7][4]_i_1_n_0 ),
        .I1(\busy[7]_i_3_n_0 ),
        .I2(\busy[1]_i_2_n_0 ),
        .I3(\busy[1]_i_3_n_0 ),
        .I4(obs_active[1]),
        .I5(\active[1]_i_2_n_0 ),
        .O(\busy[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \busy[1]_i_2 
       (.I0(obs_defect[7]),
        .I1(\defect[7]_i_2_n_0 ),
        .O(\busy[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAEAAAA)) 
    \busy[1]_i_3 
       (.I0(\cid[1][4]_i_3_n_0 ),
        .I1(obs_growth[9]),
        .I2(obs_growth[8]),
        .I3(\grown[4]_i_4_n_0 ),
        .I4(obs_grown[7]),
        .I5(obs_grown[1]),
        .O(\busy[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h88A8888888888888)) 
    \busy[2]_i_1 
       (.I0(\cid[7][4]_i_1_n_0 ),
        .I1(\busy[2]_i_2_n_0 ),
        .I2(obs_defect[8]),
        .I3(\busy[2]_i_3_n_0 ),
        .I4(\ptr[8][0]_i_2_n_0 ),
        .I5(\ptr[8][1]_i_2_n_0 ),
        .O(\busy[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF8FF8)) 
    \busy[2]_i_2 
       (.I0(\ptr[2][1]_i_3_n_0 ),
        .I1(\busy[2]_i_4_n_0 ),
        .I2(obs_active[2]),
        .I3(\active[2]_i_2_n_0 ),
        .I4(\cid[2][4]_i_3_n_0 ),
        .I5(\cid[4][2]_i_3_n_0 ),
        .O(\busy[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFF0D00)) 
    \busy[2]_i_3 
       (.I0(\ptr[8][1]_i_3_n_0 ),
        .I1(\ptr[8][1]_i_4_n_0 ),
        .I2(\ptr[8][1]_i_5_n_0 ),
        .I3(\cid[8][4]_i_4_n_0 ),
        .I4(\busy[2]_i_5_n_0 ),
        .I5(\busy[2]_i_6_n_0 ),
        .O(\busy[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h00001000)) 
    \busy[2]_i_4 
       (.I0(\FSM_sequential_stage_reg[1]_rep__0_n_0 ),
        .I1(stage__0[0]),
        .I2(stage__0[2]),
        .I3(obs_grown[8]),
        .I4(obs_grown[2]),
        .O(\busy[2]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hAAABAAAA)) 
    \busy[2]_i_5 
       (.I0(\cid[10][1]_i_3_n_0 ),
        .I1(\ptr[8][2]_i_8_n_0 ),
        .I2(\busy[2]_i_7_n_0 ),
        .I3(\ptr[8][2]_i_5_n_0 ),
        .I4(\ptr[8][2]_i_4_n_0 ),
        .O(\busy[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \busy[2]_i_6 
       (.I0(obs_cid[43]),
        .I1(obs_cid[42]),
        .I2(obs_cid[41]),
        .I3(obs_cid[44]),
        .I4(obs_cid[40]),
        .I5(\^obs_ptr [26]),
        .O(\busy[2]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hEFFFEFEFEFEFEFEF)) 
    \busy[2]_i_7 
       (.I0(\defect[8]_i_11_n_0 ),
        .I1(\cid[8][4]_i_12_n_0 ),
        .I2(\^obs_ptr [26]),
        .I3(obs_unrooted[8]),
        .I4(\cid[11][1]_i_3_n_0 ),
        .I5(\cid[8][4]_i_14_n_0 ),
        .O(\busy[2]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h88888888A8888888)) 
    \busy[3]_i_1 
       (.I0(\cid[7][4]_i_1_n_0 ),
        .I1(\busy[3]_i_2_n_0 ),
        .I2(\busy[3]_i_3_n_0 ),
        .I3(\busy[3]_i_4_n_0 ),
        .I4(obs_defect[9]),
        .I5(\busy[3]_i_5_n_0 ),
        .O(\busy[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF570000)) 
    \busy[3]_i_10 
       (.I0(\ptr[9][2]_i_9_n_0 ),
        .I1(\^obs_ptr [27]),
        .I2(\ptr[9][2]_i_7_n_0 ),
        .I3(\ptr[9][2]_i_6_n_0 ),
        .I4(\ptr[9][2]_i_5_n_0 ),
        .I5(\busy[3]_i_16_n_0 ),
        .O(\busy[3]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \busy[3]_i_11 
       (.I0(\^obs_ptr [27]),
        .I1(obs_cid[49]),
        .I2(obs_cid[48]),
        .I3(obs_cid[47]),
        .I4(obs_cid[46]),
        .I5(obs_cid[45]),
        .O(\busy[3]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'hEAAA)) 
    \busy[3]_i_12 
       (.I0(\cid[11][1]_i_3_n_0 ),
        .I1(\ptr[9][2]_i_9_n_0 ),
        .I2(\busy[3]_i_17_n_0 ),
        .I3(\ptr[9][2]_i_5_n_0 ),
        .O(\busy[3]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \busy[3]_i_13 
       (.I0(obs_cid[49]),
        .I1(obs_cid[48]),
        .I2(obs_cid[47]),
        .I3(obs_cid[46]),
        .I4(obs_cid[45]),
        .I5(\^obs_ptr [29]),
        .O(\busy[3]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAEAEEEEEAEFEAEFE)) 
    \busy[3]_i_14 
       (.I0(obs_cid[35]),
        .I1(\cid[9][0]_i_4_n_0 ),
        .I2(\cid[9][4]_i_7_n_0 ),
        .I3(obs_cid[55]),
        .I4(\grown[9]_i_6_n_0 ),
        .I5(\cid[9][3]_i_7_n_0 ),
        .O(\busy[3]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h020A020A02028A8A)) 
    \busy[3]_i_15 
       (.I0(obs_cid[38]),
        .I1(\cid[9][4]_i_7_n_0 ),
        .I2(\cid[9][3]_i_8_n_0 ),
        .I3(\grown[9]_i_6_n_0 ),
        .I4(obs_cid[58]),
        .I5(\cid[9][3]_i_7_n_0 ),
        .O(\busy[3]_i_15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT4 #(
    .INIT(16'hAEAA)) 
    \busy[3]_i_16 
       (.I0(\cid[11][1]_i_3_n_0 ),
        .I1(\cid[9][3]_i_3_n_0 ),
        .I2(obs_unrooted[9]),
        .I3(\ptr[9][2]_i_3_n_0 ),
        .O(\busy[3]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h1010001010101010)) 
    \busy[3]_i_17 
       (.I0(\ptr[9][2]_i_6_n_0 ),
        .I1(\ptr[9][2]_i_7_n_0 ),
        .I2(\^obs_ptr [29]),
        .I3(\ptr[9][2]_i_3_n_0 ),
        .I4(obs_unrooted[9]),
        .I5(\cid[9][3]_i_3_n_0 ),
        .O(\busy[3]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFDFFFFFFF2)) 
    \busy[3]_i_2 
       (.I0(obs_active[9]),
        .I1(\active[3]_i_2_n_0 ),
        .I2(\cid[5][1]_i_2_n_0 ),
        .I3(\busy[3]_i_6_n_0 ),
        .I4(\cid[3][4]_i_3_n_0 ),
        .I5(obs_active[3]),
        .O(\busy[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBAABABBBBBBBB)) 
    \busy[3]_i_3 
       (.I0(\ptr[9][1]_i_2_n_0 ),
        .I1(\ptr[9][1]_i_3_n_0 ),
        .I2(\busy[3]_i_7_n_0 ),
        .I3(\busy[3]_i_8_n_0 ),
        .I4(\busy[3]_i_9_n_0 ),
        .I5(\ptr[9][2]_i_3_n_0 ),
        .O(\busy[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFF0D00)) 
    \busy[3]_i_4 
       (.I0(\busy[3]_i_7_n_0 ),
        .I1(\busy[3]_i_8_n_0 ),
        .I2(\busy[3]_i_9_n_0 ),
        .I3(\ptr[9][2]_i_3_n_0 ),
        .I4(\busy[3]_i_10_n_0 ),
        .I5(\busy[3]_i_11_n_0 ),
        .O(\busy[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFF0D00)) 
    \busy[3]_i_5 
       (.I0(\busy[3]_i_7_n_0 ),
        .I1(\busy[3]_i_8_n_0 ),
        .I2(\busy[3]_i_9_n_0 ),
        .I3(\ptr[9][2]_i_3_n_0 ),
        .I4(\busy[3]_i_12_n_0 ),
        .I5(\busy[3]_i_13_n_0 ),
        .O(\busy[3]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h00040000)) 
    \busy[3]_i_6 
       (.I0(obs_grown[3]),
        .I1(obs_grown[9]),
        .I2(\grown[4]_i_4_n_0 ),
        .I3(obs_growth[14]),
        .I4(obs_growth[15]),
        .O(\busy[3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFE8FF00FFFFFFE8)) 
    \busy[3]_i_7 
       (.I0(\cid[9][1]_i_3_n_0 ),
        .I1(obs_cid[36]),
        .I2(\busy[3]_i_14_n_0 ),
        .I3(\busy[3]_i_15_n_0 ),
        .I4(obs_cid[37]),
        .I5(\cid[9][2]_i_3_n_0 ),
        .O(\busy[3]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    \busy[3]_i_8 
       (.I0(obs_cid[39]),
        .I1(\cid[9][4]_i_5_n_0 ),
        .I2(obs_cid[38]),
        .I3(\cid[9][3]_i_5_n_0 ),
        .O(\busy[3]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \busy[3]_i_9 
       (.I0(obs_cid[39]),
        .I1(\cid[9][4]_i_5_n_0 ),
        .O(\busy[3]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h8000AAAA)) 
    \busy[4]_i_1 
       (.I0(\cid[7][4]_i_1_n_0 ),
        .I1(\active[10]_i_3_n_0 ),
        .I2(\active[10]_i_2_n_0 ),
        .I3(obs_defect[10]),
        .I4(\busy[4]_i_2_n_0 ),
        .O(\busy[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000007000007)) 
    \busy[4]_i_2 
       (.I0(\busy[4]_i_3_n_0 ),
        .I1(\ptr[4][1]_i_3_n_0 ),
        .I2(\cid[4][4]_i_4_n_0 ),
        .I3(obs_active[4]),
        .I4(\active[4]_i_2_n_0 ),
        .I5(\cid[4][4]_i_3_n_0 ),
        .O(\busy[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'h00001000)) 
    \busy[4]_i_3 
       (.I0(\FSM_sequential_stage_reg[1]_rep__0_n_0 ),
        .I1(stage__0[0]),
        .I2(stage__0[2]),
        .I3(obs_grown[10]),
        .I4(obs_grown[4]),
        .O(\busy[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAA08AAAAAAAAAA08)) 
    \busy[5]_i_1 
       (.I0(\cid[7][4]_i_1_n_0 ),
        .I1(\busy[5]_i_2_n_0 ),
        .I2(\busy[5]_i_3_n_0 ),
        .I3(\busy[5]_i_4_n_0 ),
        .I4(\active[5]_i_2_n_0 ),
        .I5(obs_active[5]),
        .O(\busy[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h3311001000500050)) 
    \busy[5]_i_2 
       (.I0(\ptr[11][0]_i_4_n_0 ),
        .I1(\^obs_ptr [33]),
        .I2(\ptr[11][1]_i_7_n_0 ),
        .I3(\ptr[11][2]_i_5_n_0 ),
        .I4(\^obs_ptr [34]),
        .I5(\cid[11][2]_i_3_n_0 ),
        .O(\busy[5]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \busy[5]_i_3 
       (.I0(\ptr[11][2]_i_2_n_0 ),
        .I1(obs_defect[11]),
        .O(\busy[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAEAAAA)) 
    \busy[5]_i_4 
       (.I0(\cid[5][4]_i_3_n_0 ),
        .I1(obs_growth[23]),
        .I2(obs_growth[22]),
        .I3(\grown[4]_i_4_n_0 ),
        .I4(obs_grown[11]),
        .I5(obs_grown[5]),
        .O(\busy[5]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hAA82AAAA)) 
    \busy[6]_i_1 
       (.I0(\cid[7][4]_i_1_n_0 ),
        .I1(\active[6]_i_2_n_0 ),
        .I2(obs_active[6]),
        .I3(\busy[6]_i_2_n_0 ),
        .I4(\defect[6]_i_4_n_0 ),
        .O(\busy[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF70FFFFFF70FF70)) 
    \busy[6]_i_2 
       (.I0(\defect[6]_i_2_n_0 ),
        .I1(\defect[6]_i_3_n_0 ),
        .I2(obs_defect[6]),
        .I3(\busy[6]_i_3_n_0 ),
        .I4(\cid[6][3]_i_4_n_0 ),
        .I5(\cid[6][4]_i_2_n_0 ),
        .O(\busy[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFEF0F0)) 
    \busy[6]_i_3 
       (.I0(\busy[6]_i_4_n_0 ),
        .I1(\cid[6][3]_i_6_n_0 ),
        .I2(\busy[6]_i_5_n_0 ),
        .I3(\busy[6]_i_6_n_0 ),
        .I4(\cid[6][4]_i_5_n_0 ),
        .I5(\busy[6]_i_7_n_0 ),
        .O(\busy[6]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h00001000)) 
    \busy[6]_i_4 
       (.I0(\FSM_sequential_stage_reg[1]_rep__0_n_0 ),
        .I1(stage__0[0]),
        .I2(stage__0[2]),
        .I3(obs_grown[7]),
        .I4(\grown[6]_i_8_n_0 ),
        .O(\busy[6]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFF0F4F0F4F0F4F0)) 
    \busy[6]_i_5 
       (.I0(obs_unrooted[6]),
        .I1(\cid[10][1]_i_3_n_0 ),
        .I2(\cid[8][3]_i_3_n_0 ),
        .I3(\cid[6][4]_i_2_n_0 ),
        .I4(\grown[6]_i_7_n_0 ),
        .I5(\grown[6]_i_5_n_0 ),
        .O(\busy[6]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \busy[6]_i_6 
       (.I0(obs_cid[39]),
        .I1(obs_cid[38]),
        .I2(obs_cid[37]),
        .I3(obs_cid[36]),
        .I4(obs_cid[35]),
        .I5(obs_unrooted[6]),
        .O(\busy[6]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFAABA0000)) 
    \busy[6]_i_7 
       (.I0(\cid[6][3]_i_9_n_0 ),
        .I1(\grown[4]_i_4_n_0 ),
        .I2(obs_grown[0]),
        .I3(obs_grown[6]),
        .I4(\cid[6][4]_i_6_n_0 ),
        .I5(\busy[6]_i_8_n_0 ),
        .O(\busy[6]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT4 #(
    .INIT(16'h0040)) 
    \busy[6]_i_8 
       (.I0(obs_growth[0]),
        .I1(obs_growth[1]),
        .I2(\cid[2][3]_i_2_n_0 ),
        .I3(obs_unrooted[6]),
        .O(\busy[6]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAAA8A8AAAAAAAAAA)) 
    \busy[7]_i_1 
       (.I0(\cid[7][4]_i_1_n_0 ),
        .I1(\busy[7]_i_2_n_0 ),
        .I2(\busy[7]_i_3_n_0 ),
        .I3(\active[7]_i_2_n_0 ),
        .I4(obs_active[7]),
        .I5(\defect[7]_i_3_n_0 ),
        .O(\busy[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFBAFFBAFFBA)) 
    \busy[7]_i_2 
       (.I0(\busy[1]_i_2_n_0 ),
        .I1(\busy[7]_i_4_n_0 ),
        .I2(\cid[7][4]_i_6_n_0 ),
        .I3(\busy[7]_i_5_n_0 ),
        .I4(\ptr[7][1]_i_3_n_0 ),
        .I5(\cid[7][4]_i_4_n_0 ),
        .O(\busy[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \busy[7]_i_3 
       (.I0(\ptr[7][1]_i_1_n_0 ),
        .I1(obs_defect[7]),
        .O(\busy[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h5515551500005515)) 
    \busy[7]_i_4 
       (.I0(\cid[7][3]_i_6_n_0 ),
        .I1(\grown[7]_i_7_n_0 ),
        .I2(obs_grown[1]),
        .I3(\grown[4]_i_4_n_0 ),
        .I4(\cid[3][3]_i_2_n_0 ),
        .I5(obs_unrooted[7]),
        .O(\busy[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFF80FFFFFFFF)) 
    \busy[7]_i_5 
       (.I0(\grown[11]_i_6_n_0 ),
        .I1(\cid[7][4]_i_4_n_0 ),
        .I2(\grown[7]_i_5_n_0 ),
        .I3(\ptr[7][1]_i_5_n_0 ),
        .I4(\busy[7]_i_6_n_0 ),
        .I5(\ptr[7][1]_i_4_n_0 ),
        .O(\busy[7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h444400004F440000)) 
    \busy[7]_i_6 
       (.I0(obs_unrooted[7]),
        .I1(\cid[8][3]_i_3_n_0 ),
        .I2(\grown[4]_i_4_n_0 ),
        .I3(obs_grown[6]),
        .I4(\cid[7][3]_i_7_n_0 ),
        .I5(obs_grown[7]),
        .O(\busy[7]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAA8AAA8AAAA)) 
    \busy[8]_i_1 
       (.I0(\cid[7][4]_i_1_n_0 ),
        .I1(\busy[8]_i_2_n_0 ),
        .I2(\busy[8]_i_3_n_0 ),
        .I3(\defect[8]_i_4_n_0 ),
        .I4(obs_active[8]),
        .I5(\active[8]_i_2_n_0 ),
        .O(\busy[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAABAAAAAA)) 
    \busy[8]_i_10 
       (.I0(\ptr[8][2]_i_7_n_0 ),
        .I1(\grown[4]_i_4_n_0 ),
        .I2(obs_growth[2]),
        .I3(obs_growth[3]),
        .I4(obs_grown[2]),
        .I5(obs_grown[8]),
        .O(\busy[8]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \busy[8]_i_2 
       (.I0(obs_defect[8]),
        .I1(\active[8]_i_5_n_0 ),
        .O(\busy[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFAFAFAFAFFFFFFFB)) 
    \busy[8]_i_3 
       (.I0(\cid[10][1]_i_3_n_0 ),
        .I1(\ptr[8][2]_i_3_n_0 ),
        .I2(\busy[8]_i_4_n_0 ),
        .I3(\cid[8][4]_i_3_n_0 ),
        .I4(\busy[8]_i_5_n_0 ),
        .I5(\busy[8]_i_6_n_0 ),
        .O(\busy[8]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    \busy[8]_i_4 
       (.I0(\busy[8]_i_7_n_0 ),
        .I1(\ptr[8][2]_i_8_n_0 ),
        .I2(\ptr[8][2]_i_4_n_0 ),
        .O(\busy[8]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h10000000)) 
    \busy[8]_i_5 
       (.I0(\FSM_sequential_stage_reg[1]_rep__0_n_0 ),
        .I1(stage__0[0]),
        .I2(stage__0[2]),
        .I3(obs_grown[6]),
        .I4(\grown[8]_i_6_n_0 ),
        .O(\busy[8]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \busy[8]_i_6 
       (.I0(obs_growth[10]),
        .I1(obs_growth[11]),
        .O(\busy[8]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFF2F0F0)) 
    \busy[8]_i_7 
       (.I0(\grown[11]_i_6_n_0 ),
        .I1(\grown[8]_i_9_n_0 ),
        .I2(\busy[8]_i_8_n_0 ),
        .I3(\busy[8]_i_9_n_0 ),
        .I4(\cid[8][4]_i_14_n_0 ),
        .I5(\busy[8]_i_10_n_0 ),
        .O(\busy[8]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h2F22000022220000)) 
    \busy[8]_i_8 
       (.I0(\cid[10][3]_i_2_n_0 ),
        .I1(obs_unrooted[8]),
        .I2(\grown[4]_i_4_n_0 ),
        .I3(obs_grown[10]),
        .I4(\cid[8][4]_i_7_n_0 ),
        .I5(\grown[8]_i_7_n_0 ),
        .O(\busy[8]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \busy[8]_i_9 
       (.I0(obs_cid[49]),
        .I1(obs_cid[48]),
        .I2(obs_cid[47]),
        .I3(obs_cid[46]),
        .I4(obs_cid[45]),
        .I5(obs_unrooted[8]),
        .O(\busy[8]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAAA8A8AAAAAAAAAA)) 
    \busy[9]_i_1 
       (.I0(\cid[7][4]_i_1_n_0 ),
        .I1(\busy[9]_i_2_n_0 ),
        .I2(\busy[9]_i_3_n_0 ),
        .I3(\active[9]_i_2_n_0 ),
        .I4(obs_active[9]),
        .I5(\defect[9]_i_2_n_0 ),
        .O(\busy[9]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'h0020)) 
    \busy[9]_i_10 
       (.I0(\cid[10][1]_i_3_n_0 ),
        .I1(obs_unrooted[9]),
        .I2(obs_growth[13]),
        .I3(obs_growth[12]),
        .O(\busy[9]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \busy[9]_i_11 
       (.I0(obs_cid[19]),
        .I1(obs_cid[16]),
        .I2(obs_cid[17]),
        .I3(obs_cid[18]),
        .I4(obs_cid[15]),
        .I5(obs_unrooted[9]),
        .O(\busy[9]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF8F0000)) 
    \busy[9]_i_2 
       (.I0(\grown[1]_i_4_n_0 ),
        .I1(\grown[9]_i_4_n_0 ),
        .I2(\cid[9][3]_i_4_n_0 ),
        .I3(\ptr[9][2]_i_4_n_0 ),
        .I4(\ptr[9][2]_i_3_n_0 ),
        .I5(\busy[9]_i_4_n_0 ),
        .O(\busy[9]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT4 #(
    .INIT(16'hA8AA)) 
    \busy[9]_i_3 
       (.I0(obs_defect[9]),
        .I1(\busy[3]_i_3_n_0 ),
        .I2(\busy[3]_i_5_n_0 ),
        .I3(\busy[3]_i_4_n_0 ),
        .O(\busy[9]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFD555FFFFFFFF)) 
    \busy[9]_i_4 
       (.I0(\ptr[9][2]_i_5_n_0 ),
        .I1(\busy[9]_i_5_n_0 ),
        .I2(\cid[9][4]_i_7_n_0 ),
        .I3(\grown[9]_i_5_n_0 ),
        .I4(\busy[9]_i_6_n_0 ),
        .I5(\busy[9]_i_7_n_0 ),
        .O(\busy[9]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \busy[9]_i_5 
       (.I0(obs_grown[11]),
        .I1(stage__0[2]),
        .I2(stage__0[0]),
        .I3(\FSM_sequential_stage_reg[1]_rep__0_n_0 ),
        .O(\busy[9]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFAB)) 
    \busy[9]_i_6 
       (.I0(\busy[9]_i_8_n_0 ),
        .I1(\busy[9]_i_9_n_0 ),
        .I2(obs_grown[9]),
        .I3(\busy[9]_i_10_n_0 ),
        .I4(\cid[11][1]_i_3_n_0 ),
        .I5(\ptr[9][2]_i_7_n_0 ),
        .O(\busy[9]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h45550000FFFFFFFF)) 
    \busy[9]_i_7 
       (.I0(\busy[9]_i_11_n_0 ),
        .I1(\grown[4]_i_4_n_0 ),
        .I2(obs_grown[3]),
        .I3(\grown[9]_i_7_n_0 ),
        .I4(\ptr[9][2]_i_18_n_0 ),
        .I5(\active[3]_i_3_n_0 ),
        .O(\busy[9]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \busy[9]_i_8 
       (.I0(obs_unrooted[9]),
        .I1(\cid[11][2]_i_3_n_0 ),
        .I2(\cid[9][4]_i_7_n_0 ),
        .O(\busy[9]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEFFFFFFFFFFF)) 
    \busy[9]_i_9 
       (.I0(\FSM_sequential_stage_reg[1]_rep__0_n_0 ),
        .I1(stage__0[0]),
        .I2(stage__0[2]),
        .I3(obs_grown[8]),
        .I4(obs_growth[12]),
        .I5(obs_growth[13]),
        .O(\busy[9]_i_9_n_0 ));
  FDRE \busy_reg[0] 
       (.C(clk),
        .CE(\busy[11]_i_1_n_0 ),
        .D(c_busy),
        .Q(obs_busy[0]),
        .R(reset));
  FDRE \busy_reg[10] 
       (.C(clk),
        .CE(\busy[11]_i_1_n_0 ),
        .D(\busy[10]_i_1_n_0 ),
        .Q(obs_busy[10]),
        .R(reset));
  FDRE \busy_reg[11] 
       (.C(clk),
        .CE(\busy[11]_i_1_n_0 ),
        .D(\busy[11]_i_2_n_0 ),
        .Q(obs_busy[11]),
        .R(reset));
  FDRE \busy_reg[1] 
       (.C(clk),
        .CE(\busy[11]_i_1_n_0 ),
        .D(\busy[1]_i_1_n_0 ),
        .Q(obs_busy[1]),
        .R(reset));
  FDRE \busy_reg[2] 
       (.C(clk),
        .CE(\busy[11]_i_1_n_0 ),
        .D(\busy[2]_i_1_n_0 ),
        .Q(obs_busy[2]),
        .R(reset));
  FDRE \busy_reg[3] 
       (.C(clk),
        .CE(\busy[11]_i_1_n_0 ),
        .D(\busy[3]_i_1_n_0 ),
        .Q(obs_busy[3]),
        .R(reset));
  FDRE \busy_reg[4] 
       (.C(clk),
        .CE(\busy[11]_i_1_n_0 ),
        .D(\busy[4]_i_1_n_0 ),
        .Q(obs_busy[4]),
        .R(reset));
  FDRE \busy_reg[5] 
       (.C(clk),
        .CE(\busy[11]_i_1_n_0 ),
        .D(\busy[5]_i_1_n_0 ),
        .Q(obs_busy[5]),
        .R(reset));
  FDRE \busy_reg[6] 
       (.C(clk),
        .CE(\busy[11]_i_1_n_0 ),
        .D(\busy[6]_i_1_n_0 ),
        .Q(obs_busy[6]),
        .R(reset));
  FDRE \busy_reg[7] 
       (.C(clk),
        .CE(\busy[11]_i_1_n_0 ),
        .D(\busy[7]_i_1_n_0 ),
        .Q(obs_busy[7]),
        .R(reset));
  FDRE \busy_reg[8] 
       (.C(clk),
        .CE(\busy[11]_i_1_n_0 ),
        .D(\busy[8]_i_1_n_0 ),
        .Q(obs_busy[8]),
        .R(reset));
  FDRE \busy_reg[9] 
       (.C(clk),
        .CE(\busy[11]_i_1_n_0 ),
        .D(\busy[9]_i_1_n_0 ),
        .Q(obs_busy[9]),
        .R(reset));
  LUT6 #(
    .INIT(64'h2AAAAAAAAAAAAAAA)) 
    \cid[0][0]_i_1 
       (.I0(obs_cid[30]),
        .I1(obs_cid[0]),
        .I2(obs_cid[4]),
        .I3(obs_cid[3]),
        .I4(obs_cid[2]),
        .I5(obs_cid[1]),
        .O(\cid[0][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2AAAAAAAAAAAAAAA)) 
    \cid[0][1]_i_1 
       (.I0(obs_cid[31]),
        .I1(obs_cid[0]),
        .I2(obs_cid[4]),
        .I3(obs_cid[3]),
        .I4(obs_cid[2]),
        .I5(obs_cid[1]),
        .O(\cid[0][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2AAAAAAAAAAAAAAA)) 
    \cid[0][2]_i_1 
       (.I0(obs_cid[32]),
        .I1(obs_cid[0]),
        .I2(obs_cid[4]),
        .I3(obs_cid[3]),
        .I4(obs_cid[2]),
        .I5(obs_cid[1]),
        .O(\cid[0][2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2AAAAAAAAAAAAAAA)) 
    \cid[0][3]_i_1 
       (.I0(obs_cid[33]),
        .I1(obs_cid[0]),
        .I2(obs_cid[4]),
        .I3(obs_cid[3]),
        .I4(obs_cid[2]),
        .I5(obs_cid[1]),
        .O(\cid[0][3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0220)) 
    \cid[0][4]_i_1 
       (.I0(\cid[0][4]_i_3_n_0 ),
        .I1(\FSM_sequential_stage_reg[1]_rep_n_0 ),
        .I2(stage__0[2]),
        .I3(stage__0[0]),
        .O(\cid[0][4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2AAAAAAAAAAAAAAA)) 
    \cid[0][4]_i_2 
       (.I0(obs_cid[34]),
        .I1(obs_cid[0]),
        .I2(obs_cid[4]),
        .I3(obs_cid[3]),
        .I4(obs_cid[2]),
        .I5(obs_cid[1]),
        .O(\cid[0][4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF0F2F0F0F2F2F2F2)) 
    \cid[0][4]_i_3 
       (.I0(obs_growth[1]),
        .I1(obs_growth[0]),
        .I2(\cid[2][3]_i_2_n_0 ),
        .I3(obs_unrooted[0]),
        .I4(\cid[8][3]_i_3_n_0 ),
        .I5(\cid[0][4]_i_4_n_0 ),
        .O(\cid[0][4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h4F044F044F04DF0D)) 
    \cid[0][4]_i_4 
       (.I0(obs_cid[3]),
        .I1(obs_cid[33]),
        .I2(obs_cid[4]),
        .I3(obs_cid[34]),
        .I4(\cid[0][4]_i_5_n_0 ),
        .I5(\cid[0][4]_i_6_n_0 ),
        .O(\cid[0][4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h2F022F0200002F02)) 
    \cid[0][4]_i_5 
       (.I0(obs_cid[0]),
        .I1(obs_cid[30]),
        .I2(obs_cid[31]),
        .I3(obs_cid[1]),
        .I4(obs_cid[32]),
        .I5(obs_cid[2]),
        .O(\cid[0][4]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cid[0][4]_i_6 
       (.I0(obs_cid[2]),
        .I1(obs_cid[32]),
        .O(\cid[0][4]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \cid[10][0]_i_1 
       (.I0(\cid[10][0]_i_2_n_0 ),
        .I1(\FSM_sequential_stage_reg[1]_rep_n_0 ),
        .I2(obs_cid[40]),
        .I3(stage__0[2]),
        .I4(stage__0[0]),
        .O(\cid[10][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4700CF000000FF00)) 
    \cid[10][0]_i_2 
       (.I0(obs_unrooted[10]),
        .I1(\cid[10][1]_i_3_n_0 ),
        .I2(\cid[10][0]_i_3_n_0 ),
        .I3(\cid[10][4]_i_5_n_0 ),
        .I4(\cid[10][0]_i_4_n_0 ),
        .I5(\cid[10][2]_i_3_n_0 ),
        .O(\cid[10][0]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h74)) 
    \cid[10][0]_i_3 
       (.I0(obs_cid[40]),
        .I1(\cid[10][3]_i_5_n_0 ),
        .I2(\cid[10][0]_i_4_n_0 ),
        .O(\cid[10][0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hD050D0F0D0FAD0F0)) 
    \cid[10][0]_i_4 
       (.I0(\cid[10][2]_i_6_n_0 ),
        .I1(obs_unrooted[10]),
        .I2(\cid[10][0]_i_5_n_0 ),
        .I3(\cid[11][2]_i_3_n_0 ),
        .I4(\cid[10][2]_i_8_n_0 ),
        .I5(obs_cid[55]),
        .O(\cid[10][0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00030000BB8BFFFF)) 
    \cid[10][0]_i_5 
       (.I0(obs_unrooted[10]),
        .I1(\cid[4][4]_i_4_n_0 ),
        .I2(obs_cid[20]),
        .I3(\cid[10][2]_i_11_n_0 ),
        .I4(\ptr[4][1]_i_3_n_0 ),
        .I5(obs_cid[50]),
        .O(\cid[10][0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h8F8F888F8F8F8F8F)) 
    \cid[10][1]_i_1 
       (.I0(stage__0[0]),
        .I1(stage__0[2]),
        .I2(\cid[10][1]_i_2_n_0 ),
        .I3(\FSM_sequential_stage_reg[1]_rep_n_0 ),
        .I4(\cid[10][1]_i_3_n_0 ),
        .I5(obs_cid[41]),
        .O(\cid[10][1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02030200)) 
    \cid[10][1]_i_2 
       (.I0(\cid[10][1]_i_4_n_0 ),
        .I1(\FSM_sequential_stage_reg[1]_rep_n_0 ),
        .I2(\cid[10][3]_i_2_n_0 ),
        .I3(\cid[10][2]_i_3_n_0 ),
        .I4(\cid[10][1]_i_5_n_0 ),
        .O(\cid[10][1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \cid[10][1]_i_3 
       (.I0(obs_cid[40]),
        .I1(obs_cid[44]),
        .I2(obs_cid[41]),
        .I3(obs_cid[42]),
        .I4(obs_cid[43]),
        .O(\cid[10][1]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h8BBB0300)) 
    \cid[10][1]_i_4 
       (.I0(obs_unrooted[10]),
        .I1(\cid[10][1]_i_3_n_0 ),
        .I2(obs_cid[41]),
        .I3(\cid[10][3]_i_5_n_0 ),
        .I4(\cid[10][1]_i_5_n_0 ),
        .O(\cid[10][1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00D500DF0ADF00DF)) 
    \cid[10][1]_i_5 
       (.I0(\cid[10][2]_i_6_n_0 ),
        .I1(obs_unrooted[10]),
        .I2(\cid[11][2]_i_3_n_0 ),
        .I3(\cid[10][1]_i_6_n_0 ),
        .I4(\cid[10][2]_i_8_n_0 ),
        .I5(obs_cid[56]),
        .O(\cid[10][1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFF44FFC4FB00FBC0)) 
    \cid[10][1]_i_6 
       (.I0(\cid[10][2]_i_11_n_0 ),
        .I1(\ptr[4][1]_i_3_n_0 ),
        .I2(\cid[4][4]_i_4_n_0 ),
        .I3(obs_cid[51]),
        .I4(obs_unrooted[10]),
        .I5(obs_cid[21]),
        .O(\cid[10][1]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF000E0000)) 
    \cid[10][2]_i_1 
       (.I0(\cid[10][2]_i_2_n_0 ),
        .I1(\cid[10][2]_i_3_n_0 ),
        .I2(\cid[10][3]_i_2_n_0 ),
        .I3(\FSM_sequential_stage_reg[1]_rep_n_0 ),
        .I4(\cid[10][2]_i_4_n_0 ),
        .I5(\cid[10][2]_i_5_n_0 ),
        .O(\cid[10][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT4 #(
    .INIT(16'h0020)) 
    \cid[10][2]_i_10 
       (.I0(\cid[4][4]_i_4_n_0 ),
        .I1(obs_unrooted[10]),
        .I2(obs_growth[5]),
        .I3(obs_growth[4]),
        .O(\cid[10][2]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h4D444D444D44DD4D)) 
    \cid[10][2]_i_11 
       (.I0(obs_cid[54]),
        .I1(obs_cid[24]),
        .I2(obs_cid[53]),
        .I3(obs_cid[23]),
        .I4(\cid[10][2]_i_14_n_0 ),
        .I5(\cid[10][2]_i_15_n_0 ),
        .O(\cid[10][2]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hEF0EEF0EEF0E0000)) 
    \cid[10][2]_i_12 
       (.I0(obs_cid[55]),
        .I1(\cid[10][0]_i_5_n_0 ),
        .I2(\cid[10][1]_i_6_n_0 ),
        .I3(obs_cid[56]),
        .I4(obs_cid[57]),
        .I5(\cid[10][2]_i_7_n_0 ),
        .O(\cid[10][2]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cid[10][2]_i_13 
       (.I0(\cid[10][2]_i_7_n_0 ),
        .I1(obs_cid[57]),
        .O(\cid[10][2]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h00D0DDDD000000D0)) 
    \cid[10][2]_i_14 
       (.I0(obs_cid[22]),
        .I1(obs_cid[52]),
        .I2(obs_cid[50]),
        .I3(obs_cid[20]),
        .I4(obs_cid[21]),
        .I5(obs_cid[51]),
        .O(\cid[10][2]_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cid[10][2]_i_15 
       (.I0(obs_cid[52]),
        .I1(obs_cid[22]),
        .O(\cid[10][2]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h2FAF2F0F2F052F0F)) 
    \cid[10][2]_i_2 
       (.I0(\cid[10][2]_i_6_n_0 ),
        .I1(obs_unrooted[10]),
        .I2(\cid[10][2]_i_7_n_0 ),
        .I3(\cid[11][2]_i_3_n_0 ),
        .I4(\cid[10][2]_i_8_n_0 ),
        .I5(obs_cid[57]),
        .O(\cid[10][2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000040444444)) 
    \cid[10][2]_i_3 
       (.I0(obs_growth[18]),
        .I1(obs_growth[19]),
        .I2(obs_unrooted[10]),
        .I3(\cid[11][2]_i_3_n_0 ),
        .I4(\cid[10][2]_i_9_n_0 ),
        .I5(\cid[10][2]_i_10_n_0 ),
        .O(\cid[10][2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFBFFFBF0F8FFF8F)) 
    \cid[10][2]_i_4 
       (.I0(obs_cid[42]),
        .I1(\cid[10][3]_i_5_n_0 ),
        .I2(\cid[10][2]_i_3_n_0 ),
        .I3(\cid[10][1]_i_3_n_0 ),
        .I4(obs_unrooted[10]),
        .I5(\cid[10][2]_i_2_n_0 ),
        .O(\cid[10][2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF8FF888888888)) 
    \cid[10][2]_i_5 
       (.I0(stage__0[0]),
        .I1(stage__0[2]),
        .I2(obs_cid[41]),
        .I3(obs_cid[42]),
        .I4(\cid[10][1]_i_3_n_0 ),
        .I5(\FSM_sequential_stage_reg[1]_rep_n_0 ),
        .O(\cid[10][2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h4444404444444444)) 
    \cid[10][2]_i_6 
       (.I0(obs_growth[20]),
        .I1(obs_growth[21]),
        .I2(obs_growth[4]),
        .I3(obs_growth[5]),
        .I4(obs_unrooted[10]),
        .I5(\cid[4][4]_i_4_n_0 ),
        .O(\cid[10][2]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h00030000BB8BFFFF)) 
    \cid[10][2]_i_7 
       (.I0(obs_unrooted[10]),
        .I1(\cid[4][4]_i_4_n_0 ),
        .I2(obs_cid[22]),
        .I3(\cid[10][2]_i_11_n_0 ),
        .I4(\ptr[4][1]_i_3_n_0 ),
        .I5(obs_cid[52]),
        .O(\cid[10][2]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h1711171117117717)) 
    \cid[10][2]_i_8 
       (.I0(\cid[10][4]_i_7_n_0 ),
        .I1(obs_cid[59]),
        .I2(obs_cid[58]),
        .I3(\cid[10][3]_i_9_n_0 ),
        .I4(\cid[10][2]_i_12_n_0 ),
        .I5(\cid[10][2]_i_13_n_0 ),
        .O(\cid[10][2]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cid[10][2]_i_9 
       (.I0(obs_growth[21]),
        .I1(obs_growth[20]),
        .O(\cid[10][2]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFF888888888)) 
    \cid[10][3]_i_1 
       (.I0(stage__0[0]),
        .I1(stage__0[2]),
        .I2(\cid[10][3]_i_2_n_0 ),
        .I3(\FSM_sequential_stage_reg[1]_rep_n_0 ),
        .I4(\cid[10][3]_i_3_n_0 ),
        .I5(\cid[10][3]_i_4_n_0 ),
        .O(\cid[10][3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \cid[10][3]_i_2 
       (.I0(obs_cid[53]),
        .I1(obs_cid[54]),
        .I2(obs_cid[52]),
        .I3(obs_cid[51]),
        .I4(obs_cid[50]),
        .O(\cid[10][3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFCF7444FFFF0000)) 
    \cid[10][3]_i_3 
       (.I0(obs_unrooted[10]),
        .I1(\cid[10][1]_i_3_n_0 ),
        .I2(\cid[10][3]_i_5_n_0 ),
        .I3(obs_cid[43]),
        .I4(\cid[10][3]_i_6_n_0 ),
        .I5(\cid[10][2]_i_3_n_0 ),
        .O(\cid[10][3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hD5FFFFFFFF555555)) 
    \cid[10][3]_i_4 
       (.I0(\FSM_sequential_stage_reg[1]_rep_n_0 ),
        .I1(obs_cid[40]),
        .I2(obs_cid[44]),
        .I3(obs_cid[41]),
        .I4(obs_cid[42]),
        .I5(obs_cid[43]),
        .O(\cid[10][3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hB2BBB2BBB2BB22B2)) 
    \cid[10][3]_i_5 
       (.I0(\cid[10][4]_i_6_n_0 ),
        .I1(obs_cid[44]),
        .I2(\cid[10][3]_i_6_n_0 ),
        .I3(obs_cid[43]),
        .I4(\cid[10][3]_i_7_n_0 ),
        .I5(\cid[10][3]_i_8_n_0 ),
        .O(\cid[10][3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFF2AFF20F520FF20)) 
    \cid[10][3]_i_6 
       (.I0(\cid[10][2]_i_6_n_0 ),
        .I1(obs_unrooted[10]),
        .I2(\cid[11][2]_i_3_n_0 ),
        .I3(\cid[10][3]_i_9_n_0 ),
        .I4(\cid[10][2]_i_8_n_0 ),
        .I5(obs_cid[58]),
        .O(\cid[10][3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h000011011101FF0F)) 
    \cid[10][3]_i_7 
       (.I0(obs_cid[40]),
        .I1(\cid[10][0]_i_4_n_0 ),
        .I2(obs_cid[42]),
        .I3(\cid[10][2]_i_2_n_0 ),
        .I4(\cid[10][1]_i_5_n_0 ),
        .I5(obs_cid[41]),
        .O(\cid[10][3]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair119" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cid[10][3]_i_8 
       (.I0(\cid[10][2]_i_2_n_0 ),
        .I1(obs_cid[42]),
        .O(\cid[10][3]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFF44FFC4FB00FBC0)) 
    \cid[10][3]_i_9 
       (.I0(\cid[10][2]_i_11_n_0 ),
        .I1(\ptr[4][1]_i_3_n_0 ),
        .I2(\cid[4][4]_i_4_n_0 ),
        .I3(obs_cid[53]),
        .I4(obs_unrooted[10]),
        .I5(obs_cid[23]),
        .O(\cid[10][3]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h0000AAAA7555AAAA)) 
    \cid[10][4]_i_1 
       (.I0(stage__0[2]),
        .I1(\^obs_ptr [32]),
        .I2(\^obs_ptr [30]),
        .I3(\^obs_ptr [31]),
        .I4(stage__0[0]),
        .I5(\FSM_sequential_stage_reg[1]_rep_n_0 ),
        .O(\cid[10][4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFEEAAEAEE)) 
    \cid[10][4]_i_2 
       (.I0(\cid[10][4]_i_3_n_0 ),
        .I1(\FSM_sequential_stage_reg[1]_rep_n_0 ),
        .I2(obs_cid[40]),
        .I3(obs_cid[44]),
        .I4(\cid[10][4]_i_4_n_0 ),
        .I5(\cid[11][4]_i_5_n_0 ),
        .O(\cid[10][4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h80888088AA888088)) 
    \cid[10][4]_i_3 
       (.I0(\cid[10][4]_i_5_n_0 ),
        .I1(\cid[10][4]_i_6_n_0 ),
        .I2(obs_cid[44]),
        .I3(\cid[10][2]_i_3_n_0 ),
        .I4(\cid[10][1]_i_3_n_0 ),
        .I5(obs_unrooted[10]),
        .O(\cid[10][4]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \cid[10][4]_i_4 
       (.I0(obs_cid[41]),
        .I1(obs_cid[42]),
        .I2(obs_cid[43]),
        .O(\cid[10][4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h1555555555555555)) 
    \cid[10][4]_i_5 
       (.I0(\FSM_sequential_stage_reg[1]_rep_n_0 ),
        .I1(obs_cid[50]),
        .I2(obs_cid[51]),
        .I3(obs_cid[52]),
        .I4(obs_cid[54]),
        .I5(obs_cid[53]),
        .O(\cid[10][4]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0F0F0F0F2F000F0F)) 
    \cid[10][4]_i_6 
       (.I0(\cid[11][2]_i_3_n_0 ),
        .I1(obs_unrooted[10]),
        .I2(\cid[10][4]_i_7_n_0 ),
        .I3(obs_cid[59]),
        .I4(\cid[10][2]_i_9_n_0 ),
        .I5(\cid[10][2]_i_10_n_0 ),
        .O(\cid[10][4]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h3333303333337733)) 
    \cid[10][4]_i_7 
       (.I0(obs_cid[24]),
        .I1(obs_cid[54]),
        .I2(obs_unrooted[10]),
        .I3(obs_growth[5]),
        .I4(obs_growth[4]),
        .I5(\cid[4][4]_i_4_n_0 ),
        .O(\cid[10][4]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFF888FF88F8)) 
    \cid[11][0]_i_1 
       (.I0(stage__0[0]),
        .I1(stage__0[2]),
        .I2(\cid[11][2]_i_3_n_0 ),
        .I3(\FSM_sequential_stage_reg[1]_rep_n_0 ),
        .I4(\cid[11][0]_i_2_n_0 ),
        .I5(obs_cid[45]),
        .O(\cid[11][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h44740000FFFCFFFF)) 
    \cid[11][0]_i_2 
       (.I0(obs_unrooted[11]),
        .I1(\cid[11][1]_i_3_n_0 ),
        .I2(obs_cid[45]),
        .I3(\cid[11][3]_i_7_n_0 ),
        .I4(\cid[11][3]_i_5_n_0 ),
        .I5(\cid[11][0]_i_3_n_0 ),
        .O(\cid[11][0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h80AAA2AAB3AAA2AA)) 
    \cid[11][0]_i_3 
       (.I0(\cid[11][0]_i_4_n_0 ),
        .I1(\cid[5][4]_i_4_n_0 ),
        .I2(obs_unrooted[11]),
        .I3(\cid[11][3]_i_9_n_0 ),
        .I4(\cid[11][3]_i_10_n_0 ),
        .I5(obs_cid[25]),
        .O(\cid[11][0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00440000F077FFFF)) 
    \cid[11][0]_i_4 
       (.I0(obs_cid[50]),
        .I1(\cid[11][3]_i_14_n_0 ),
        .I2(obs_unrooted[11]),
        .I3(\cid[10][3]_i_2_n_0 ),
        .I4(\cid[10][2]_i_9_n_0 ),
        .I5(obs_cid[55]),
        .O(\cid[11][0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEAFAEFFFEFFFE)) 
    \cid[11][1]_i_1 
       (.I0(\cid[11][4]_i_5_n_0 ),
        .I1(\cid[11][2]_i_3_n_0 ),
        .I2(\FSM_sequential_stage_reg[1]_rep_n_0 ),
        .I3(\cid[11][1]_i_2_n_0 ),
        .I4(\cid[11][1]_i_3_n_0 ),
        .I5(obs_cid[46]),
        .O(\cid[11][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFC4474FFFF0000)) 
    \cid[11][1]_i_2 
       (.I0(obs_unrooted[11]),
        .I1(\cid[11][1]_i_3_n_0 ),
        .I2(obs_cid[46]),
        .I3(\cid[11][3]_i_7_n_0 ),
        .I4(\cid[11][1]_i_4_n_0 ),
        .I5(\cid[11][3]_i_5_n_0 ),
        .O(\cid[11][1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \cid[11][1]_i_3 
       (.I0(obs_cid[45]),
        .I1(obs_cid[46]),
        .I2(obs_cid[47]),
        .I3(obs_cid[48]),
        .I4(obs_cid[49]),
        .O(\cid[11][1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hBFAAAEAA8CAAAEAA)) 
    \cid[11][1]_i_4 
       (.I0(\cid[11][1]_i_5_n_0 ),
        .I1(\cid[5][4]_i_4_n_0 ),
        .I2(obs_unrooted[11]),
        .I3(\cid[11][3]_i_9_n_0 ),
        .I4(\cid[11][3]_i_10_n_0 ),
        .I5(obs_cid[26]),
        .O(\cid[11][1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hDFCCDCCCD0CCDCCC)) 
    \cid[11][1]_i_5 
       (.I0(obs_unrooted[11]),
        .I1(obs_cid[56]),
        .I2(\cid[10][3]_i_2_n_0 ),
        .I3(\cid[10][2]_i_9_n_0 ),
        .I4(\cid[11][3]_i_14_n_0 ),
        .I5(obs_cid[51]),
        .O(\cid[11][1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF000E0000)) 
    \cid[11][2]_i_1 
       (.I0(\cid[11][2]_i_2_n_0 ),
        .I1(\cid[11][3]_i_5_n_0 ),
        .I2(\cid[11][2]_i_3_n_0 ),
        .I3(\FSM_sequential_stage_reg[1]_rep_n_0 ),
        .I4(\cid[11][2]_i_4_n_0 ),
        .I5(\cid[11][2]_i_5_n_0 ),
        .O(\cid[11][2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBFAAAEAA8CAAAEAA)) 
    \cid[11][2]_i_2 
       (.I0(\cid[11][2]_i_6_n_0 ),
        .I1(\cid[5][4]_i_4_n_0 ),
        .I2(obs_unrooted[11]),
        .I3(\cid[11][3]_i_9_n_0 ),
        .I4(\cid[11][3]_i_10_n_0 ),
        .I5(obs_cid[27]),
        .O(\cid[11][2]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \cid[11][2]_i_3 
       (.I0(obs_cid[58]),
        .I1(obs_cid[59]),
        .I2(obs_cid[57]),
        .I3(obs_cid[56]),
        .I4(obs_cid[55]),
        .O(\cid[11][2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF0E4FFE4FFFFFFFF)) 
    \cid[11][2]_i_4 
       (.I0(\cid[11][3]_i_7_n_0 ),
        .I1(obs_cid[47]),
        .I2(\cid[11][2]_i_2_n_0 ),
        .I3(\cid[11][1]_i_3_n_0 ),
        .I4(obs_unrooted[11]),
        .I5(\cid[11][3]_i_5_n_0 ),
        .O(\cid[11][2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF8FF888888888)) 
    \cid[11][2]_i_5 
       (.I0(stage__0[0]),
        .I1(stage__0[2]),
        .I2(obs_cid[46]),
        .I3(obs_cid[47]),
        .I4(\cid[11][1]_i_3_n_0 ),
        .I5(\FSM_sequential_stage_reg[1]_rep_n_0 ),
        .O(\cid[11][2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hDFCCDCCCD0CCDCCC)) 
    \cid[11][2]_i_6 
       (.I0(obs_unrooted[11]),
        .I1(obs_cid[57]),
        .I2(\cid[10][3]_i_2_n_0 ),
        .I3(\cid[10][2]_i_9_n_0 ),
        .I4(\cid[11][3]_i_14_n_0 ),
        .I5(obs_cid[52]),
        .O(\cid[11][2]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hBFBFFFAFAAAAAAAA)) 
    \cid[11][3]_i_1 
       (.I0(\cid[11][4]_i_5_n_0 ),
        .I1(\cid[11][3]_i_2_n_0 ),
        .I2(\cid[11][3]_i_3_n_0 ),
        .I3(\cid[11][3]_i_4_n_0 ),
        .I4(\cid[11][3]_i_5_n_0 ),
        .I5(\cid[11][3]_i_6_n_0 ),
        .O(\cid[11][3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4D444D444D44DD4D)) 
    \cid[11][3]_i_10 
       (.I0(obs_cid[29]),
        .I1(\cid[11][4]_i_7_n_0 ),
        .I2(obs_cid[28]),
        .I3(\cid[11][3]_i_8_n_0 ),
        .I4(\cid[11][3]_i_15_n_0 ),
        .I5(\cid[11][3]_i_16_n_0 ),
        .O(\cid[11][3]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h0000000088F88888)) 
    \cid[11][3]_i_11 
       (.I0(\cid[10][3]_i_2_n_0 ),
        .I1(\cid[10][2]_i_9_n_0 ),
        .I2(obs_growth[23]),
        .I3(obs_growth[22]),
        .I4(\cid[5][4]_i_4_n_0 ),
        .I5(obs_unrooted[11]),
        .O(\cid[11][3]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h444D0000444D444D)) 
    \cid[11][3]_i_12 
       (.I0(obs_cid[46]),
        .I1(\cid[11][1]_i_4_n_0 ),
        .I2(\cid[11][0]_i_3_n_0 ),
        .I3(obs_cid[45]),
        .I4(\cid[11][2]_i_2_n_0 ),
        .I5(obs_cid[47]),
        .O(\cid[11][3]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cid[11][3]_i_13 
       (.I0(\cid[11][2]_i_2_n_0 ),
        .I1(obs_cid[47]),
        .O(\cid[11][3]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hB0FBB0FBB0FB00F0)) 
    \cid[11][3]_i_14 
       (.I0(obs_cid[58]),
        .I1(obs_cid[53]),
        .I2(obs_cid[59]),
        .I3(obs_cid[54]),
        .I4(\cid[11][3]_i_17_n_0 ),
        .I5(\cid[11][3]_i_18_n_0 ),
        .O(\cid[11][3]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hEF0EEF0E0000EF0E)) 
    \cid[11][3]_i_15 
       (.I0(obs_cid[25]),
        .I1(\cid[11][0]_i_4_n_0 ),
        .I2(\cid[11][1]_i_5_n_0 ),
        .I3(obs_cid[26]),
        .I4(\cid[11][2]_i_6_n_0 ),
        .I5(obs_cid[27]),
        .O(\cid[11][3]_i_15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cid[11][3]_i_16 
       (.I0(obs_cid[27]),
        .I1(\cid[11][2]_i_6_n_0 ),
        .O(\cid[11][3]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h44D4000044D444D4)) 
    \cid[11][3]_i_17 
       (.I0(obs_cid[51]),
        .I1(obs_cid[56]),
        .I2(obs_cid[55]),
        .I3(obs_cid[50]),
        .I4(obs_cid[57]),
        .I5(obs_cid[52]),
        .O(\cid[11][3]_i_17_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    \cid[11][3]_i_18 
       (.I0(obs_cid[53]),
        .I1(obs_cid[58]),
        .I2(obs_cid[52]),
        .I3(obs_cid[57]),
        .O(\cid[11][3]_i_18_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT5 #(
    .INIT(32'h0B080B3B)) 
    \cid[11][3]_i_2 
       (.I0(obs_unrooted[11]),
        .I1(\cid[11][1]_i_3_n_0 ),
        .I2(\cid[11][3]_i_4_n_0 ),
        .I3(\cid[11][3]_i_7_n_0 ),
        .I4(obs_cid[48]),
        .O(\cid[11][3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h1555555555555555)) 
    \cid[11][3]_i_3 
       (.I0(\FSM_sequential_stage_reg[1]_rep_n_0 ),
        .I1(obs_cid[55]),
        .I2(obs_cid[56]),
        .I3(obs_cid[57]),
        .I4(obs_cid[59]),
        .I5(obs_cid[58]),
        .O(\cid[11][3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hBFAAAEAA8CAAAEAA)) 
    \cid[11][3]_i_4 
       (.I0(\cid[11][3]_i_8_n_0 ),
        .I1(\cid[5][4]_i_4_n_0 ),
        .I2(obs_unrooted[11]),
        .I3(\cid[11][3]_i_9_n_0 ),
        .I4(\cid[11][3]_i_10_n_0 ),
        .I5(obs_cid[28]),
        .O(\cid[11][3]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \cid[11][3]_i_5 
       (.I0(obs_growth[24]),
        .I1(obs_growth[25]),
        .I2(\cid[11][3]_i_11_n_0 ),
        .O(\cid[11][3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hDFFFF5555FFFF555)) 
    \cid[11][3]_i_6 
       (.I0(\FSM_sequential_stage_reg[1]_rep_n_0 ),
        .I1(obs_cid[45]),
        .I2(obs_cid[46]),
        .I3(obs_cid[47]),
        .I4(obs_cid[48]),
        .I5(obs_cid[49]),
        .O(\cid[11][3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h4F044F044F04DF0D)) 
    \cid[11][3]_i_7 
       (.I0(\cid[11][3]_i_4_n_0 ),
        .I1(obs_cid[48]),
        .I2(\cid[11][4]_i_6_n_0 ),
        .I3(obs_cid[49]),
        .I4(\cid[11][3]_i_12_n_0 ),
        .I5(\cid[11][3]_i_13_n_0 ),
        .O(\cid[11][3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hDFCCDCCCD0CCDCCC)) 
    \cid[11][3]_i_8 
       (.I0(obs_unrooted[11]),
        .I1(obs_cid[58]),
        .I2(\cid[10][3]_i_2_n_0 ),
        .I3(\cid[10][2]_i_9_n_0 ),
        .I4(\cid[11][3]_i_14_n_0 ),
        .I5(obs_cid[53]),
        .O(\cid[11][3]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h4444444440444444)) 
    \cid[11][3]_i_9 
       (.I0(obs_growth[22]),
        .I1(obs_growth[23]),
        .I2(obs_unrooted[11]),
        .I3(\cid[10][3]_i_2_n_0 ),
        .I4(obs_growth[21]),
        .I5(obs_growth[20]),
        .O(\cid[11][3]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h0000AAAA5D55AAAA)) 
    \cid[11][4]_i_1 
       (.I0(stage__0[2]),
        .I1(\^obs_ptr [34]),
        .I2(\^obs_ptr [35]),
        .I3(\^obs_ptr [33]),
        .I4(stage__0[0]),
        .I5(\FSM_sequential_stage_reg[1]_rep_n_0 ),
        .O(\cid[11][4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFEAEEEEAA)) 
    \cid[11][4]_i_2 
       (.I0(\cid[11][4]_i_3_n_0 ),
        .I1(\FSM_sequential_stage_reg[1]_rep_n_0 ),
        .I2(obs_cid[45]),
        .I3(\cid[11][4]_i_4_n_0 ),
        .I4(obs_cid[49]),
        .I5(\cid[11][4]_i_5_n_0 ),
        .O(\cid[11][4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF400F0000000F000)) 
    \cid[11][4]_i_3 
       (.I0(obs_unrooted[11]),
        .I1(\cid[11][1]_i_3_n_0 ),
        .I2(\cid[11][4]_i_6_n_0 ),
        .I3(\cid[11][3]_i_3_n_0 ),
        .I4(\cid[11][3]_i_5_n_0 ),
        .I5(obs_cid[49]),
        .O(\cid[11][4]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \cid[11][4]_i_4 
       (.I0(obs_cid[46]),
        .I1(obs_cid[47]),
        .I2(obs_cid[48]),
        .O(\cid[11][4]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cid[11][4]_i_5 
       (.I0(stage__0[2]),
        .I1(stage__0[0]),
        .O(\cid[11][4]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0F0F0F200F0F0)) 
    \cid[11][4]_i_6 
       (.I0(\cid[5][4]_i_4_n_0 ),
        .I1(obs_unrooted[11]),
        .I2(\cid[11][4]_i_7_n_0 ),
        .I3(obs_cid[29]),
        .I4(\ptr[5][0]_i_3_n_0 ),
        .I5(\cid[11][4]_i_8_n_0 ),
        .O(\cid[11][4]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0F0F0F200F0F0)) 
    \cid[11][4]_i_7 
       (.I0(\cid[10][3]_i_2_n_0 ),
        .I1(obs_unrooted[11]),
        .I2(obs_cid[59]),
        .I3(obs_cid[54]),
        .I4(obs_growth[21]),
        .I5(obs_growth[20]),
        .O(\cid[11][4]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT4 #(
    .INIT(16'h0040)) 
    \cid[11][4]_i_8 
       (.I0(obs_growth[20]),
        .I1(obs_growth[21]),
        .I2(\cid[10][3]_i_2_n_0 ),
        .I3(obs_unrooted[11]),
        .O(\cid[11][4]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hEAAAAAAAAAAAAAAA)) 
    \cid[1][0]_i_1 
       (.I0(obs_cid[35]),
        .I1(obs_cid[5]),
        .I2(obs_cid[9]),
        .I3(obs_cid[7]),
        .I4(obs_cid[6]),
        .I5(obs_cid[8]),
        .O(\cid[1][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2AAAAAAAAAAAAAAA)) 
    \cid[1][1]_i_1 
       (.I0(obs_cid[36]),
        .I1(obs_cid[5]),
        .I2(obs_cid[9]),
        .I3(obs_cid[7]),
        .I4(obs_cid[6]),
        .I5(obs_cid[8]),
        .O(\cid[1][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2AAAAAAAAAAAAAAA)) 
    \cid[1][2]_i_1 
       (.I0(obs_cid[37]),
        .I1(obs_cid[5]),
        .I2(obs_cid[9]),
        .I3(obs_cid[7]),
        .I4(obs_cid[6]),
        .I5(obs_cid[8]),
        .O(\cid[1][2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2AAAAAAAAAAAAAAA)) 
    \cid[1][3]_i_1 
       (.I0(obs_cid[38]),
        .I1(obs_cid[5]),
        .I2(obs_cid[9]),
        .I3(obs_cid[7]),
        .I4(obs_cid[6]),
        .I5(obs_cid[8]),
        .O(\cid[1][3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0220)) 
    \cid[1][4]_i_1 
       (.I0(\cid[1][4]_i_3_n_0 ),
        .I1(\FSM_sequential_stage_reg[1]_rep_n_0 ),
        .I2(stage__0[2]),
        .I3(stage__0[0]),
        .O(\cid[1][4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2AAAAAAAAAAAAAAA)) 
    \cid[1][4]_i_2 
       (.I0(obs_cid[39]),
        .I1(obs_cid[5]),
        .I2(obs_cid[9]),
        .I3(obs_cid[7]),
        .I4(obs_cid[6]),
        .I5(obs_cid[8]),
        .O(\cid[1][4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF0F2F0F0F2F2F2F2)) 
    \cid[1][4]_i_3 
       (.I0(obs_growth[9]),
        .I1(obs_growth[8]),
        .I2(\cid[3][3]_i_2_n_0 ),
        .I3(obs_unrooted[1]),
        .I4(\cid[9][3]_i_3_n_0 ),
        .I5(\cid[1][4]_i_4_n_0 ),
        .O(\cid[1][4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h4F044F044F04FF0F)) 
    \cid[1][4]_i_4 
       (.I0(obs_cid[8]),
        .I1(obs_cid[38]),
        .I2(obs_cid[9]),
        .I3(obs_cid[39]),
        .I4(\cid[1][4]_i_5_n_0 ),
        .I5(\cid[1][4]_i_6_n_0 ),
        .O(\cid[1][4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h44D4000044D444D4)) 
    \cid[1][4]_i_5 
       (.I0(obs_cid[36]),
        .I1(obs_cid[6]),
        .I2(obs_cid[5]),
        .I3(obs_cid[35]),
        .I4(obs_cid[7]),
        .I5(obs_cid[37]),
        .O(\cid[1][4]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    \cid[1][4]_i_6 
       (.I0(obs_cid[38]),
        .I1(obs_cid[8]),
        .I2(obs_cid[37]),
        .I3(obs_cid[7]),
        .O(\cid[1][4]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h88B8)) 
    \cid[2][0]_i_1 
       (.I0(obs_cid[0]),
        .I1(\FSM_sequential_stage_reg[1]_rep_n_0 ),
        .I2(obs_cid[40]),
        .I3(\cid[4][2]_i_3_n_0 ),
        .O(\cid[2][0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBFBFBFB0)) 
    \cid[2][1]_i_1 
       (.I0(\cid[2][3]_i_2_n_0 ),
        .I1(obs_cid[1]),
        .I2(\FSM_sequential_stage_reg[1]_rep_n_0 ),
        .I3(obs_cid[41]),
        .I4(\cid[4][2]_i_3_n_0 ),
        .O(\cid[2][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBE00BE00BEFFBE00)) 
    \cid[2][2]_i_1 
       (.I0(\cid[2][3]_i_2_n_0 ),
        .I1(obs_cid[2]),
        .I2(obs_cid[1]),
        .I3(\FSM_sequential_stage_reg[1]_rep_n_0 ),
        .I4(obs_cid[42]),
        .I5(\cid[4][2]_i_3_n_0 ),
        .O(\cid[2][2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBE00BE00BEFFBE00)) 
    \cid[2][3]_i_1 
       (.I0(\cid[2][3]_i_2_n_0 ),
        .I1(\cid[2][3]_i_3_n_0 ),
        .I2(obs_cid[3]),
        .I3(\FSM_sequential_stage_reg[1]_rep_n_0 ),
        .I4(obs_cid[43]),
        .I5(\cid[4][2]_i_3_n_0 ),
        .O(\cid[2][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \cid[2][3]_i_2 
       (.I0(obs_cid[1]),
        .I1(obs_cid[2]),
        .I2(obs_cid[3]),
        .I3(obs_cid[4]),
        .I4(obs_cid[0]),
        .O(\cid[2][3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cid[2][3]_i_3 
       (.I0(obs_cid[1]),
        .I1(obs_cid[2]),
        .O(\cid[2][3]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h44664460)) 
    \cid[2][4]_i_1 
       (.I0(stage__0[0]),
        .I1(stage__0[2]),
        .I2(\cid[2][4]_i_3_n_0 ),
        .I3(\FSM_sequential_stage_reg[1]_rep_n_0 ),
        .I4(\cid[4][2]_i_3_n_0 ),
        .O(\cid[2][4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBC00BC00BCFFBC00)) 
    \cid[2][4]_i_2 
       (.I0(obs_cid[0]),
        .I1(\cid[2][4]_i_4_n_0 ),
        .I2(obs_cid[4]),
        .I3(\FSM_sequential_stage_reg[1]_rep_n_0 ),
        .I4(obs_cid[44]),
        .I5(\cid[4][2]_i_3_n_0 ),
        .O(\cid[2][4]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00F20000)) 
    \cid[2][4]_i_3 
       (.I0(\cid[10][1]_i_3_n_0 ),
        .I1(obs_unrooted[2]),
        .I2(\cid[2][4]_i_5_n_0 ),
        .I3(obs_growth[2]),
        .I4(obs_growth[3]),
        .O(\cid[2][4]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \cid[2][4]_i_4 
       (.I0(obs_cid[3]),
        .I1(obs_cid[2]),
        .I2(obs_cid[1]),
        .O(\cid[2][4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hDDD44444DDDDDDD4)) 
    \cid[2][4]_i_5 
       (.I0(obs_cid[44]),
        .I1(obs_cid[14]),
        .I2(\cid[2][4]_i_6_n_0 ),
        .I3(\cid[2][4]_i_7_n_0 ),
        .I4(obs_cid[13]),
        .I5(obs_cid[43]),
        .O(\cid[2][4]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cid[2][4]_i_6 
       (.I0(obs_cid[12]),
        .I1(obs_cid[42]),
        .O(\cid[2][4]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h2F022F0200002F02)) 
    \cid[2][4]_i_7 
       (.I0(obs_cid[10]),
        .I1(obs_cid[40]),
        .I2(obs_cid[41]),
        .I3(obs_cid[11]),
        .I4(obs_cid[42]),
        .I5(obs_cid[12]),
        .O(\cid[2][4]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hBBB8)) 
    \cid[3][0]_i_1 
       (.I0(obs_cid[5]),
        .I1(\FSM_sequential_stage_reg[1]_rep_n_0 ),
        .I2(obs_cid[45]),
        .I3(\cid[5][1]_i_2_n_0 ),
        .O(\cid[3][0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBFBFBFB0)) 
    \cid[3][1]_i_1 
       (.I0(\cid[3][3]_i_2_n_0 ),
        .I1(obs_cid[6]),
        .I2(\FSM_sequential_stage_reg[1]_rep_n_0 ),
        .I3(obs_cid[46]),
        .I4(\cid[5][1]_i_2_n_0 ),
        .O(\cid[3][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBE00BE00BEFFBE00)) 
    \cid[3][2]_i_1 
       (.I0(\cid[3][3]_i_2_n_0 ),
        .I1(obs_cid[7]),
        .I2(obs_cid[6]),
        .I3(\FSM_sequential_stage_reg[1]_rep_n_0 ),
        .I4(obs_cid[47]),
        .I5(\cid[5][1]_i_2_n_0 ),
        .O(\cid[3][2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBE00BE00BEFFBE00)) 
    \cid[3][3]_i_1 
       (.I0(\cid[3][3]_i_2_n_0 ),
        .I1(\cid[3][3]_i_3_n_0 ),
        .I2(obs_cid[8]),
        .I3(\FSM_sequential_stage_reg[1]_rep_n_0 ),
        .I4(obs_cid[48]),
        .I5(\cid[5][1]_i_2_n_0 ),
        .O(\cid[3][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \cid[3][3]_i_2 
       (.I0(obs_cid[8]),
        .I1(obs_cid[6]),
        .I2(obs_cid[7]),
        .I3(obs_cid[9]),
        .I4(obs_cid[5]),
        .O(\cid[3][3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cid[3][3]_i_3 
       (.I0(obs_cid[6]),
        .I1(obs_cid[7]),
        .O(\cid[3][3]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h44664460)) 
    \cid[3][4]_i_1 
       (.I0(stage__0[0]),
        .I1(stage__0[2]),
        .I2(\cid[3][4]_i_3_n_0 ),
        .I3(\FSM_sequential_stage_reg[1]_rep_n_0 ),
        .I4(\cid[5][1]_i_2_n_0 ),
        .O(\cid[3][4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBC00BC00BCFFBC00)) 
    \cid[3][4]_i_2 
       (.I0(obs_cid[5]),
        .I1(\cid[3][4]_i_4_n_0 ),
        .I2(obs_cid[9]),
        .I3(\FSM_sequential_stage_reg[1]_rep_n_0 ),
        .I4(obs_cid[49]),
        .I5(\cid[5][1]_i_2_n_0 ),
        .O(\cid[3][4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT5 #(
    .INIT(32'h44440040)) 
    \cid[3][4]_i_3 
       (.I0(obs_growth[14]),
        .I1(obs_growth[15]),
        .I2(\cid[11][1]_i_3_n_0 ),
        .I3(obs_unrooted[3]),
        .I4(\cid[3][4]_i_5_n_0 ),
        .O(\cid[3][4]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \cid[3][4]_i_4 
       (.I0(obs_cid[7]),
        .I1(obs_cid[6]),
        .I2(obs_cid[8]),
        .O(\cid[3][4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hB0FBB0FBB0FB00F0)) 
    \cid[3][4]_i_5 
       (.I0(obs_cid[18]),
        .I1(obs_cid[48]),
        .I2(obs_cid[19]),
        .I3(obs_cid[49]),
        .I4(\cid[3][4]_i_6_n_0 ),
        .I5(\cid[3][4]_i_7_n_0 ),
        .O(\cid[3][4]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h44D4000044D444D4)) 
    \cid[3][4]_i_6 
       (.I0(obs_cid[46]),
        .I1(obs_cid[16]),
        .I2(obs_cid[15]),
        .I3(obs_cid[45]),
        .I4(obs_cid[17]),
        .I5(obs_cid[47]),
        .O(\cid[3][4]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    \cid[3][4]_i_7 
       (.I0(obs_cid[48]),
        .I1(obs_cid[18]),
        .I2(obs_cid[47]),
        .I3(obs_cid[17]),
        .O(\cid[3][4]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF202F202F202)) 
    \cid[4][0]_i_1 
       (.I0(obs_cid[50]),
        .I1(\cid[4][4]_i_4_n_0 ),
        .I2(\FSM_sequential_stage_reg[1]_rep_n_0 ),
        .I3(obs_cid[10]),
        .I4(stage__0[2]),
        .I5(stage__0[0]),
        .O(\cid[4][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFBAFFBAAABAFFBA)) 
    \cid[4][1]_i_1 
       (.I0(\cid[11][4]_i_5_n_0 ),
        .I1(\cid[4][4]_i_4_n_0 ),
        .I2(obs_cid[51]),
        .I3(\FSM_sequential_stage_reg[1]_rep_n_0 ),
        .I4(obs_cid[11]),
        .I5(\cid[4][2]_i_3_n_0 ),
        .O(\cid[4][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFEFEFEFEAEFEFEAE)) 
    \cid[4][2]_i_1 
       (.I0(\cid[11][4]_i_5_n_0 ),
        .I1(\cid[4][2]_i_2_n_0 ),
        .I2(\FSM_sequential_stage_reg[1]_rep_n_0 ),
        .I3(obs_cid[11]),
        .I4(obs_cid[12]),
        .I5(\cid[4][2]_i_3_n_0 ),
        .O(\cid[4][2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEAAAAAAAAAAAAAAA)) 
    \cid[4][2]_i_2 
       (.I0(obs_cid[52]),
        .I1(obs_cid[24]),
        .I2(obs_cid[21]),
        .I3(obs_cid[20]),
        .I4(obs_cid[22]),
        .I5(obs_cid[23]),
        .O(\cid[4][2]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \cid[4][2]_i_3 
       (.I0(obs_cid[11]),
        .I1(obs_cid[12]),
        .I2(obs_cid[13]),
        .I3(obs_cid[14]),
        .I4(obs_cid[10]),
        .O(\cid[4][2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFF02FF02FF02)) 
    \cid[4][3]_i_1 
       (.I0(obs_cid[53]),
        .I1(\FSM_sequential_stage_reg[1]_rep_n_0 ),
        .I2(\cid[4][4]_i_4_n_0 ),
        .I3(\cid[4][3]_i_2_n_0 ),
        .I4(stage__0[2]),
        .I5(stage__0[0]),
        .O(\cid[4][3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAA802A802A802A80)) 
    \cid[4][3]_i_2 
       (.I0(\FSM_sequential_stage_reg[1]_rep_n_0 ),
        .I1(obs_cid[11]),
        .I2(obs_cid[12]),
        .I3(obs_cid[13]),
        .I4(obs_cid[14]),
        .I5(obs_cid[10]),
        .O(\cid[4][3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h03F002E0)) 
    \cid[4][4]_i_1 
       (.I0(\cid[4][4]_i_3_n_0 ),
        .I1(\FSM_sequential_stage_reg[1]_rep_n_0 ),
        .I2(stage__0[2]),
        .I3(stage__0[0]),
        .I4(\cid[4][4]_i_4_n_0 ),
        .O(\cid[4][4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFF02FF02FF02)) 
    \cid[4][4]_i_2 
       (.I0(obs_cid[54]),
        .I1(\FSM_sequential_stage_reg[1]_rep_n_0 ),
        .I2(\cid[4][4]_i_4_n_0 ),
        .I3(\cid[4][4]_i_5_n_0 ),
        .I4(stage__0[2]),
        .I5(stage__0[0]),
        .O(\cid[4][4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT5 #(
    .INIT(32'h44440040)) 
    \cid[4][4]_i_3 
       (.I0(obs_growth[4]),
        .I1(obs_growth[5]),
        .I2(\cid[10][3]_i_2_n_0 ),
        .I3(obs_unrooted[4]),
        .I4(\cid[4][4]_i_6_n_0 ),
        .O(\cid[4][4]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \cid[4][4]_i_4 
       (.I0(obs_cid[23]),
        .I1(obs_cid[22]),
        .I2(obs_cid[20]),
        .I3(obs_cid[21]),
        .I4(obs_cid[24]),
        .O(\cid[4][4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hA888888828888888)) 
    \cid[4][4]_i_5 
       (.I0(\FSM_sequential_stage_reg[1]_rep_n_0 ),
        .I1(obs_cid[14]),
        .I2(obs_cid[11]),
        .I3(obs_cid[12]),
        .I4(obs_cid[13]),
        .I5(obs_cid[10]),
        .O(\cid[4][4]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hD444DDD4)) 
    \cid[4][4]_i_6 
       (.I0(obs_cid[54]),
        .I1(obs_cid[24]),
        .I2(\cid[4][4]_i_7_n_0 ),
        .I3(obs_cid[23]),
        .I4(obs_cid[53]),
        .O(\cid[4][4]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h2B220000FFFF2B22)) 
    \cid[4][4]_i_7 
       (.I0(obs_cid[21]),
        .I1(obs_cid[51]),
        .I2(obs_cid[50]),
        .I3(obs_cid[20]),
        .I4(obs_cid[22]),
        .I5(obs_cid[52]),
        .O(\cid[4][4]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFF88888FFF8)) 
    \cid[5][0]_i_1 
       (.I0(stage__0[0]),
        .I1(stage__0[2]),
        .I2(\cid[5][4]_i_4_n_0 ),
        .I3(obs_cid[55]),
        .I4(\FSM_sequential_stage_reg[1]_rep_n_0 ),
        .I5(obs_cid[15]),
        .O(\cid[5][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFBB0FBB00)) 
    \cid[5][1]_i_1 
       (.I0(\cid[5][1]_i_2_n_0 ),
        .I1(obs_cid[16]),
        .I2(\cid[5][4]_i_4_n_0 ),
        .I3(\FSM_sequential_stage_reg[1]_rep_n_0 ),
        .I4(obs_cid[56]),
        .I5(\cid[11][4]_i_5_n_0 ),
        .O(\cid[5][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \cid[5][1]_i_2 
       (.I0(obs_cid[15]),
        .I1(obs_cid[18]),
        .I2(obs_cid[17]),
        .I3(obs_cid[16]),
        .I4(obs_cid[19]),
        .O(\cid[5][1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8F8F8F8F8F8F8F88)) 
    \cid[5][2]_i_1 
       (.I0(stage__0[0]),
        .I1(stage__0[2]),
        .I2(\cid[5][2]_i_2_n_0 ),
        .I3(obs_cid[57]),
        .I4(\cid[5][4]_i_4_n_0 ),
        .I5(\FSM_sequential_stage_reg[1]_rep_n_0 ),
        .O(\cid[5][2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h200AA00AA00AA00A)) 
    \cid[5][2]_i_2 
       (.I0(\FSM_sequential_stage_reg[1]_rep_n_0 ),
        .I1(obs_cid[19]),
        .I2(obs_cid[16]),
        .I3(obs_cid[17]),
        .I4(obs_cid[18]),
        .I5(obs_cid[15]),
        .O(\cid[5][2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFABAAABAAABAA)) 
    \cid[5][3]_i_1 
       (.I0(\cid[5][3]_i_2_n_0 ),
        .I1(\cid[5][4]_i_4_n_0 ),
        .I2(\FSM_sequential_stage_reg[1]_rep_n_0 ),
        .I3(obs_cid[58]),
        .I4(stage__0[2]),
        .I5(stage__0[0]),
        .O(\cid[5][3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEA6A6A6A00000000)) 
    \cid[5][3]_i_2 
       (.I0(obs_cid[18]),
        .I1(obs_cid[17]),
        .I2(obs_cid[16]),
        .I3(obs_cid[15]),
        .I4(obs_cid[19]),
        .I5(\FSM_sequential_stage_reg[1]_rep_n_0 ),
        .O(\cid[5][3]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h4460)) 
    \cid[5][4]_i_1 
       (.I0(stage__0[0]),
        .I1(stage__0[2]),
        .I2(\cid[5][4]_i_3_n_0 ),
        .I3(\FSM_sequential_stage_reg[1]_rep_n_0 ),
        .O(\cid[5][4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF8F8888888F88)) 
    \cid[5][4]_i_2 
       (.I0(stage__0[0]),
        .I1(stage__0[2]),
        .I2(\cid[5][4]_i_4_n_0 ),
        .I3(obs_cid[59]),
        .I4(\FSM_sequential_stage_reg[1]_rep_n_0 ),
        .I5(\cid[5][4]_i_5_n_0 ),
        .O(\cid[5][4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF20222020)) 
    \cid[5][4]_i_3 
       (.I0(obs_growth[23]),
        .I1(obs_growth[22]),
        .I2(\cid[5][4]_i_6_n_0 ),
        .I3(obs_unrooted[5]),
        .I4(\cid[11][2]_i_3_n_0 ),
        .I5(\cid[5][4]_i_4_n_0 ),
        .O(\cid[5][4]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \cid[5][4]_i_4 
       (.I0(obs_cid[29]),
        .I1(obs_cid[28]),
        .I2(obs_cid[27]),
        .I3(obs_cid[26]),
        .I4(obs_cid[25]),
        .O(\cid[5][4]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT5 #(
    .INIT(32'hBFFFC000)) 
    \cid[5][4]_i_5 
       (.I0(obs_cid[15]),
        .I1(obs_cid[18]),
        .I2(obs_cid[17]),
        .I3(obs_cid[16]),
        .I4(obs_cid[19]),
        .O(\cid[5][4]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hB0FBB0FBB0FB00F0)) 
    \cid[5][4]_i_6 
       (.I0(obs_cid[28]),
        .I1(obs_cid[58]),
        .I2(obs_cid[29]),
        .I3(obs_cid[59]),
        .I4(\cid[5][4]_i_7_n_0 ),
        .I5(\cid[5][4]_i_8_n_0 ),
        .O(\cid[5][4]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h44D4000044D444D4)) 
    \cid[5][4]_i_7 
       (.I0(obs_cid[56]),
        .I1(obs_cid[26]),
        .I2(obs_cid[25]),
        .I3(obs_cid[55]),
        .I4(obs_cid[27]),
        .I5(obs_cid[57]),
        .O(\cid[5][4]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    \cid[5][4]_i_8 
       (.I0(obs_cid[58]),
        .I1(obs_cid[28]),
        .I2(obs_cid[57]),
        .I3(obs_cid[27]),
        .O(\cid[5][4]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FCFF7400)) 
    \cid[6][0]_i_1 
       (.I0(obs_unrooted[6]),
        .I1(\cid[10][1]_i_3_n_0 ),
        .I2(\cid[6][0]_i_2_n_0 ),
        .I3(\cid[6][4]_i_2_n_0 ),
        .I4(\cid[6][0]_i_3_n_0 ),
        .I5(\cid[8][3]_i_3_n_0 ),
        .O(\cid[6][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \cid[6][0]_i_2 
       (.I0(\cid[6][0]_i_3_n_0 ),
        .I1(\cid[6][3]_i_4_n_0 ),
        .I2(obs_cid[40]),
        .O(\cid[6][0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFF2AFF20F520FF20)) 
    \cid[6][0]_i_3 
       (.I0(\cid[6][4]_i_5_n_0 ),
        .I1(obs_unrooted[6]),
        .I2(\cid[9][3]_i_3_n_0 ),
        .I3(\cid[6][0]_i_4_n_0 ),
        .I4(\cid[6][3]_i_6_n_0 ),
        .I5(obs_cid[35]),
        .O(\cid[6][0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFCFFFFFFF4440000)) 
    \cid[6][0]_i_4 
       (.I0(obs_unrooted[6]),
        .I1(\cid[2][3]_i_2_n_0 ),
        .I2(obs_cid[0]),
        .I3(\cid[6][3]_i_9_n_0 ),
        .I4(\cid[6][4]_i_6_n_0 ),
        .I5(obs_cid[30]),
        .O(\cid[6][0]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFF5C)) 
    \cid[6][1]_i_1 
       (.I0(\cid[6][1]_i_2_n_0 ),
        .I1(\cid[6][1]_i_3_n_0 ),
        .I2(\cid[6][4]_i_2_n_0 ),
        .I3(\cid[8][3]_i_3_n_0 ),
        .O(\cid[6][1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0B080B3B)) 
    \cid[6][1]_i_2 
       (.I0(obs_unrooted[6]),
        .I1(\cid[10][1]_i_3_n_0 ),
        .I2(\cid[6][1]_i_3_n_0 ),
        .I3(\cid[6][3]_i_4_n_0 ),
        .I4(obs_cid[41]),
        .O(\cid[6][1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFF2AFF20F520FF20)) 
    \cid[6][1]_i_3 
       (.I0(\cid[6][4]_i_5_n_0 ),
        .I1(obs_unrooted[6]),
        .I2(\cid[9][3]_i_3_n_0 ),
        .I3(\cid[6][1]_i_4_n_0 ),
        .I4(\cid[6][3]_i_6_n_0 ),
        .I5(obs_cid[36]),
        .O(\cid[6][1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFCFFFFFFF4440000)) 
    \cid[6][1]_i_4 
       (.I0(obs_unrooted[6]),
        .I1(\cid[2][3]_i_2_n_0 ),
        .I2(obs_cid[1]),
        .I3(\cid[6][3]_i_9_n_0 ),
        .I4(\cid[6][4]_i_6_n_0 ),
        .I5(obs_cid[31]),
        .O(\cid[6][1]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFF5C)) 
    \cid[6][2]_i_1 
       (.I0(\cid[6][2]_i_2_n_0 ),
        .I1(\cid[6][2]_i_3_n_0 ),
        .I2(\cid[6][4]_i_2_n_0 ),
        .I3(\cid[8][3]_i_3_n_0 ),
        .O(\cid[6][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h0B080B3B)) 
    \cid[6][2]_i_2 
       (.I0(obs_unrooted[6]),
        .I1(\cid[10][1]_i_3_n_0 ),
        .I2(\cid[6][2]_i_3_n_0 ),
        .I3(\cid[6][3]_i_4_n_0 ),
        .I4(obs_cid[42]),
        .O(\cid[6][2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFF2AFF20F520FF20)) 
    \cid[6][2]_i_3 
       (.I0(\cid[6][4]_i_5_n_0 ),
        .I1(obs_unrooted[6]),
        .I2(\cid[9][3]_i_3_n_0 ),
        .I3(\cid[6][2]_i_4_n_0 ),
        .I4(\cid[6][3]_i_6_n_0 ),
        .I5(obs_cid[37]),
        .O(\cid[6][2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFCFFFFFFF4440000)) 
    \cid[6][2]_i_4 
       (.I0(obs_unrooted[6]),
        .I1(\cid[2][3]_i_2_n_0 ),
        .I2(obs_cid[2]),
        .I3(\cid[6][3]_i_9_n_0 ),
        .I4(\cid[6][4]_i_6_n_0 ),
        .I5(obs_cid[32]),
        .O(\cid[6][2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FAFF7200)) 
    \cid[6][3]_i_1 
       (.I0(\cid[10][1]_i_3_n_0 ),
        .I1(obs_unrooted[6]),
        .I2(\cid[6][3]_i_2_n_0 ),
        .I3(\cid[6][4]_i_2_n_0 ),
        .I4(\cid[6][3]_i_3_n_0 ),
        .I5(\cid[8][3]_i_3_n_0 ),
        .O(\cid[6][3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000B00FBFFFBFF)) 
    \cid[6][3]_i_10 
       (.I0(obs_unrooted[6]),
        .I1(\cid[2][3]_i_2_n_0 ),
        .I2(obs_growth[0]),
        .I3(obs_growth[1]),
        .I4(obs_cid[4]),
        .I5(obs_cid[34]),
        .O(\cid[6][3]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hBF0BBF0B0000BF0B)) 
    \cid[6][3]_i_11 
       (.I0(obs_cid[35]),
        .I1(\cid[6][0]_i_4_n_0 ),
        .I2(\cid[6][1]_i_4_n_0 ),
        .I3(obs_cid[36]),
        .I4(\cid[6][2]_i_4_n_0 ),
        .I5(obs_cid[37]),
        .O(\cid[6][3]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cid[6][3]_i_12 
       (.I0(obs_cid[37]),
        .I1(\cid[6][2]_i_4_n_0 ),
        .O(\cid[6][3]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h2202FF0F00002202)) 
    \cid[6][3]_i_13 
       (.I0(obs_cid[30]),
        .I1(obs_cid[0]),
        .I2(obs_cid[2]),
        .I3(obs_cid[32]),
        .I4(obs_cid[1]),
        .I5(obs_cid[31]),
        .O(\cid[6][3]_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cid[6][3]_i_14 
       (.I0(obs_cid[32]),
        .I1(obs_cid[2]),
        .O(\cid[6][3]_i_14_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \cid[6][3]_i_2 
       (.I0(\cid[6][3]_i_3_n_0 ),
        .I1(\cid[6][3]_i_4_n_0 ),
        .I2(obs_cid[43]),
        .O(\cid[6][3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFF2AFF20F520FF20)) 
    \cid[6][3]_i_3 
       (.I0(\cid[6][4]_i_5_n_0 ),
        .I1(obs_unrooted[6]),
        .I2(\cid[9][3]_i_3_n_0 ),
        .I3(\cid[6][3]_i_5_n_0 ),
        .I4(\cid[6][3]_i_6_n_0 ),
        .I5(obs_cid[38]),
        .O(\cid[6][3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h4D444D444D44DD4D)) 
    \cid[6][3]_i_4 
       (.I0(\cid[6][4]_i_3_n_0 ),
        .I1(obs_cid[44]),
        .I2(\cid[6][3]_i_3_n_0 ),
        .I3(obs_cid[43]),
        .I4(\cid[6][3]_i_7_n_0 ),
        .I5(\cid[6][3]_i_8_n_0 ),
        .O(\cid[6][3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFCFFFFFFF4440000)) 
    \cid[6][3]_i_5 
       (.I0(obs_unrooted[6]),
        .I1(\cid[2][3]_i_2_n_0 ),
        .I2(obs_cid[3]),
        .I3(\cid[6][3]_i_9_n_0 ),
        .I4(\cid[6][4]_i_6_n_0 ),
        .I5(obs_cid[33]),
        .O(\cid[6][3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h1711171117117717)) 
    \cid[6][3]_i_6 
       (.I0(\cid[6][3]_i_10_n_0 ),
        .I1(obs_cid[39]),
        .I2(obs_cid[38]),
        .I3(\cid[6][3]_i_5_n_0 ),
        .I4(\cid[6][3]_i_11_n_0 ),
        .I5(\cid[6][3]_i_12_n_0 ),
        .O(\cid[6][3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h44D4000044D444D4)) 
    \cid[6][3]_i_7 
       (.I0(obs_cid[41]),
        .I1(\cid[6][1]_i_3_n_0 ),
        .I2(\cid[6][0]_i_3_n_0 ),
        .I3(obs_cid[40]),
        .I4(\cid[6][2]_i_3_n_0 ),
        .I5(obs_cid[42]),
        .O(\cid[6][3]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cid[6][3]_i_8 
       (.I0(\cid[6][2]_i_3_n_0 ),
        .I1(obs_cid[42]),
        .O(\cid[6][3]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hB2BBB2BBB2BB22B2)) 
    \cid[6][3]_i_9 
       (.I0(obs_cid[34]),
        .I1(obs_cid[4]),
        .I2(obs_cid[33]),
        .I3(obs_cid[3]),
        .I4(\cid[6][3]_i_13_n_0 ),
        .I5(\cid[6][3]_i_14_n_0 ),
        .O(\cid[6][3]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h5555151104000400)) 
    \cid[6][4]_i_1 
       (.I0(\cid[8][3]_i_3_n_0 ),
        .I1(\cid[6][4]_i_2_n_0 ),
        .I2(obs_unrooted[6]),
        .I3(\cid[10][1]_i_3_n_0 ),
        .I4(obs_cid[44]),
        .I5(\cid[6][4]_i_3_n_0 ),
        .O(\cid[6][4]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \cid[6][4]_i_2 
       (.I0(\cid[6][4]_i_4_n_0 ),
        .I1(obs_growth[11]),
        .I2(obs_growth[10]),
        .O(\cid[6][4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB000B0B0BBBBBBBB)) 
    \cid[6][4]_i_3 
       (.I0(obs_cid[39]),
        .I1(\cid[6][4]_i_5_n_0 ),
        .I2(obs_cid[34]),
        .I3(obs_cid[4]),
        .I4(\cid[6][4]_i_6_n_0 ),
        .I5(\cid[6][4]_i_4_n_0 ),
        .O(\cid[6][4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFF00FFDFFFDFFFDF)) 
    \cid[6][4]_i_4 
       (.I0(obs_growth[7]),
        .I1(obs_growth[6]),
        .I2(\cid[9][3]_i_3_n_0 ),
        .I3(obs_unrooted[6]),
        .I4(\cid[2][3]_i_2_n_0 ),
        .I5(\cid[6][4]_i_6_n_0 ),
        .O(\cid[6][4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h4444444440444444)) 
    \cid[6][4]_i_5 
       (.I0(obs_growth[6]),
        .I1(obs_growth[7]),
        .I2(obs_unrooted[6]),
        .I3(\cid[2][3]_i_2_n_0 ),
        .I4(obs_growth[1]),
        .I5(obs_growth[0]),
        .O(\cid[6][4]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cid[6][4]_i_6 
       (.I0(obs_growth[1]),
        .I1(obs_growth[0]),
        .O(\cid[6][4]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFF47)) 
    \cid[7][0]_i_1 
       (.I0(\cid[7][0]_i_2_n_0 ),
        .I1(\cid[7][4]_i_4_n_0 ),
        .I2(\cid[7][0]_i_3_n_0 ),
        .I3(\cid[9][3]_i_3_n_0 ),
        .O(\cid[7][0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h8BBB0300)) 
    \cid[7][0]_i_2 
       (.I0(obs_unrooted[7]),
        .I1(\cid[11][1]_i_3_n_0 ),
        .I2(obs_cid[45]),
        .I3(\ptr[7][1]_i_3_n_0 ),
        .I4(\cid[7][0]_i_3_n_0 ),
        .O(\cid[7][0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h80AAA2AAB3AAA2AA)) 
    \cid[7][0]_i_3 
       (.I0(\cid[7][0]_i_4_n_0 ),
        .I1(\cid[3][3]_i_2_n_0 ),
        .I2(obs_unrooted[7]),
        .I3(\cid[7][3]_i_5_n_0 ),
        .I4(\cid[7][3]_i_6_n_0 ),
        .I5(obs_cid[5]),
        .O(\cid[7][0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00030000B8BBFFFF)) 
    \cid[7][0]_i_4 
       (.I0(obs_unrooted[7]),
        .I1(\cid[8][3]_i_3_n_0 ),
        .I2(\cid[7][3]_i_8_n_0 ),
        .I3(obs_cid[30]),
        .I4(\cid[7][3]_i_7_n_0 ),
        .I5(obs_cid[35]),
        .O(\cid[7][0]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFF5C)) 
    \cid[7][1]_i_1 
       (.I0(\cid[7][1]_i_2_n_0 ),
        .I1(\cid[7][1]_i_3_n_0 ),
        .I2(\cid[7][4]_i_4_n_0 ),
        .I3(\cid[9][3]_i_3_n_0 ),
        .O(\cid[7][1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h083B0B0B)) 
    \cid[7][1]_i_2 
       (.I0(obs_unrooted[7]),
        .I1(\cid[11][1]_i_3_n_0 ),
        .I2(\cid[7][1]_i_3_n_0 ),
        .I3(obs_cid[46]),
        .I4(\ptr[7][1]_i_3_n_0 ),
        .O(\cid[7][1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBFAAAEAA8CAAAEAA)) 
    \cid[7][1]_i_3 
       (.I0(\cid[7][1]_i_4_n_0 ),
        .I1(\cid[3][3]_i_2_n_0 ),
        .I2(obs_unrooted[7]),
        .I3(\cid[7][3]_i_5_n_0 ),
        .I4(\cid[7][3]_i_6_n_0 ),
        .I5(obs_cid[6]),
        .O(\cid[7][1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hDCCCDCCCDFCCD0CC)) 
    \cid[7][1]_i_4 
       (.I0(obs_unrooted[7]),
        .I1(obs_cid[36]),
        .I2(\cid[8][3]_i_3_n_0 ),
        .I3(\cid[7][3]_i_7_n_0 ),
        .I4(obs_cid[31]),
        .I5(\cid[7][3]_i_8_n_0 ),
        .O(\cid[7][1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF80000000)) 
    \cid[7][2]_i_1 
       (.I0(obs_cid[39]),
        .I1(obs_cid[38]),
        .I2(obs_cid[37]),
        .I3(obs_cid[36]),
        .I4(obs_cid[35]),
        .I5(\cid[7][2]_i_2_n_0 ),
        .O(\cid[7][2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFCF7444FFFF0000)) 
    \cid[7][2]_i_2 
       (.I0(obs_unrooted[7]),
        .I1(\cid[11][1]_i_3_n_0 ),
        .I2(\ptr[7][1]_i_3_n_0 ),
        .I3(obs_cid[47]),
        .I4(\cid[7][2]_i_3_n_0 ),
        .I5(\cid[7][4]_i_4_n_0 ),
        .O(\cid[7][2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h7F555D554C555D55)) 
    \cid[7][2]_i_3 
       (.I0(\cid[7][2]_i_4_n_0 ),
        .I1(\cid[3][3]_i_2_n_0 ),
        .I2(obs_unrooted[7]),
        .I3(\cid[7][3]_i_5_n_0 ),
        .I4(\cid[7][3]_i_6_n_0 ),
        .I5(obs_cid[7]),
        .O(\cid[7][2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00110000F0BBFFFF)) 
    \cid[7][2]_i_4 
       (.I0(\cid[7][3]_i_8_n_0 ),
        .I1(obs_cid[32]),
        .I2(obs_unrooted[7]),
        .I3(\cid[8][3]_i_3_n_0 ),
        .I4(\cid[7][3]_i_7_n_0 ),
        .I5(obs_cid[37]),
        .O(\cid[7][2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FAFF7200)) 
    \cid[7][3]_i_1 
       (.I0(\cid[11][1]_i_3_n_0 ),
        .I1(obs_unrooted[7]),
        .I2(\cid[7][3]_i_2_n_0 ),
        .I3(\cid[7][4]_i_4_n_0 ),
        .I4(\cid[7][3]_i_3_n_0 ),
        .I5(\cid[9][3]_i_3_n_0 ),
        .O(\cid[7][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cid[7][3]_i_10 
       (.I0(\cid[7][2]_i_4_n_0 ),
        .I1(obs_cid[7]),
        .O(\cid[7][3]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h40F4000040F440F4)) 
    \cid[7][3]_i_11 
       (.I0(obs_cid[30]),
        .I1(obs_cid[35]),
        .I2(obs_cid[36]),
        .I3(obs_cid[31]),
        .I4(obs_cid[37]),
        .I5(obs_cid[32]),
        .O(\cid[7][3]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    \cid[7][3]_i_12 
       (.I0(obs_cid[33]),
        .I1(obs_cid[38]),
        .I2(obs_cid[32]),
        .I3(obs_cid[37]),
        .O(\cid[7][3]_i_12_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \cid[7][3]_i_2 
       (.I0(obs_cid[48]),
        .I1(\ptr[7][1]_i_3_n_0 ),
        .I2(\cid[7][3]_i_3_n_0 ),
        .O(\cid[7][3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBFAAAEAA8CAAAEAA)) 
    \cid[7][3]_i_3 
       (.I0(\cid[7][3]_i_4_n_0 ),
        .I1(\cid[3][3]_i_2_n_0 ),
        .I2(obs_unrooted[7]),
        .I3(\cid[7][3]_i_5_n_0 ),
        .I4(\cid[7][3]_i_6_n_0 ),
        .I5(obs_cid[8]),
        .O(\cid[7][3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hDCCCDCCCDFCCD0CC)) 
    \cid[7][3]_i_4 
       (.I0(obs_unrooted[7]),
        .I1(obs_cid[38]),
        .I2(\cid[8][3]_i_3_n_0 ),
        .I3(\cid[7][3]_i_7_n_0 ),
        .I4(obs_cid[33]),
        .I5(\cid[7][3]_i_8_n_0 ),
        .O(\cid[7][3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h4444444440444444)) 
    \cid[7][3]_i_5 
       (.I0(obs_growth[8]),
        .I1(obs_growth[9]),
        .I2(obs_unrooted[7]),
        .I3(\cid[8][3]_i_3_n_0 ),
        .I4(obs_growth[7]),
        .I5(obs_growth[6]),
        .O(\cid[7][3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h4D444D444D44DD4D)) 
    \cid[7][3]_i_6 
       (.I0(obs_cid[9]),
        .I1(\cid[7][4]_i_5_n_0 ),
        .I2(obs_cid[8]),
        .I3(\cid[7][3]_i_4_n_0 ),
        .I4(\cid[7][3]_i_9_n_0 ),
        .I5(\cid[7][3]_i_10_n_0 ),
        .O(\cid[7][3]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cid[7][3]_i_7 
       (.I0(obs_growth[7]),
        .I1(obs_growth[6]),
        .O(\cid[7][3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h4F044F044F04FF0F)) 
    \cid[7][3]_i_8 
       (.I0(obs_cid[38]),
        .I1(obs_cid[33]),
        .I2(obs_cid[39]),
        .I3(obs_cid[34]),
        .I4(\cid[7][3]_i_11_n_0 ),
        .I5(\cid[7][3]_i_12_n_0 ),
        .O(\cid[7][3]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hEF0EEF0EEF0E0000)) 
    \cid[7][3]_i_9 
       (.I0(obs_cid[5]),
        .I1(\cid[7][0]_i_4_n_0 ),
        .I2(\cid[7][1]_i_4_n_0 ),
        .I3(obs_cid[6]),
        .I4(obs_cid[7]),
        .I5(\cid[7][2]_i_4_n_0 ),
        .O(\cid[7][3]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'h06)) 
    \cid[7][4]_i_1 
       (.I0(stage__0[0]),
        .I1(stage__0[2]),
        .I2(\FSM_sequential_stage_reg[1]_rep__0_n_0 ),
        .O(\cid[7][4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F4F000F0)) 
    \cid[7][4]_i_2 
       (.I0(obs_unrooted[7]),
        .I1(\cid[11][1]_i_3_n_0 ),
        .I2(\cid[7][4]_i_3_n_0 ),
        .I3(\cid[7][4]_i_4_n_0 ),
        .I4(obs_cid[49]),
        .I5(\cid[9][3]_i_3_n_0 ),
        .O(\cid[7][4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0F0F0F200F0F0)) 
    \cid[7][4]_i_3 
       (.I0(\cid[3][3]_i_2_n_0 ),
        .I1(obs_unrooted[7]),
        .I2(\cid[7][4]_i_5_n_0 ),
        .I3(obs_cid[9]),
        .I4(\cid[7][4]_i_6_n_0 ),
        .I5(\cid[7][4]_i_7_n_0 ),
        .O(\cid[7][4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h000000BF00000000)) 
    \cid[7][4]_i_4 
       (.I0(obs_unrooted[7]),
        .I1(\cid[3][3]_i_2_n_0 ),
        .I2(\cid[7][4]_i_6_n_0 ),
        .I3(\cid[7][4]_i_7_n_0 ),
        .I4(obs_growth[16]),
        .I5(obs_growth[17]),
        .O(\cid[7][4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0F0F0F200F0F0)) 
    \cid[7][4]_i_5 
       (.I0(\cid[8][3]_i_3_n_0 ),
        .I1(obs_unrooted[7]),
        .I2(obs_cid[39]),
        .I3(obs_cid[34]),
        .I4(obs_growth[7]),
        .I5(obs_growth[6]),
        .O(\cid[7][4]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cid[7][4]_i_6 
       (.I0(obs_growth[9]),
        .I1(obs_growth[8]),
        .O(\cid[7][4]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT4 #(
    .INIT(16'h0040)) 
    \cid[7][4]_i_7 
       (.I0(obs_growth[6]),
        .I1(obs_growth[7]),
        .I2(\cid[8][3]_i_3_n_0 ),
        .I3(obs_unrooted[7]),
        .O(\cid[7][4]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \cid[8][0]_i_1 
       (.I0(obs_cid[30]),
        .I1(\FSM_sequential_stage_reg[1]_rep__0_n_0 ),
        .I2(\cid[8][0]_i_2_n_0 ),
        .O(\cid[8][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF400FE000000FE00)) 
    \cid[8][0]_i_2 
       (.I0(\ptr[8][2]_i_3_n_0 ),
        .I1(obs_cid[30]),
        .I2(\cid[8][3]_i_5_n_0 ),
        .I3(\cid[8][4]_i_5_n_0 ),
        .I4(\cid[8][0]_i_3_n_0 ),
        .I5(\cid[8][4]_i_4_n_0 ),
        .O(\cid[8][0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h55DFDFDF008A0000)) 
    \cid[8][0]_i_3 
       (.I0(\cid[8][4]_i_7_n_0 ),
        .I1(obs_unrooted[8]),
        .I2(\cid[10][3]_i_2_n_0 ),
        .I3(obs_cid[50]),
        .I4(\cid[8][3]_i_6_n_0 ),
        .I5(\cid[8][0]_i_4_n_0 ),
        .O(\cid[8][0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h55DFDFDF008A0000)) 
    \cid[8][0]_i_4 
       (.I0(\cid[8][4]_i_14_n_0 ),
        .I1(obs_unrooted[8]),
        .I2(\cid[11][1]_i_3_n_0 ),
        .I3(obs_cid[45]),
        .I4(\ptr[8][2]_i_13_n_0 ),
        .I5(\cid[8][0]_i_5_n_0 ),
        .O(\cid[8][0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00110000F0BBFFFF)) 
    \cid[8][0]_i_5 
       (.I0(\ptr[8][2]_i_12_n_0 ),
        .I1(obs_cid[10]),
        .I2(obs_unrooted[8]),
        .I3(\cid[4][2]_i_3_n_0 ),
        .I4(\ptr[2][1]_i_3_n_0 ),
        .I5(obs_cid[40]),
        .O(\cid[8][0]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT4 #(
    .INIT(16'hFFD0)) 
    \cid[8][1]_i_1 
       (.I0(obs_cid[31]),
        .I1(\cid[8][3]_i_3_n_0 ),
        .I2(\FSM_sequential_stage_reg[1]_rep__0_n_0 ),
        .I3(\cid[8][1]_i_2_n_0 ),
        .O(\cid[8][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBA00FE000000FE00)) 
    \cid[8][1]_i_2 
       (.I0(\cid[8][3]_i_5_n_0 ),
        .I1(\ptr[8][2]_i_3_n_0 ),
        .I2(obs_cid[31]),
        .I3(\cid[8][4]_i_5_n_0 ),
        .I4(\cid[8][1]_i_3_n_0 ),
        .I5(\cid[8][4]_i_4_n_0 ),
        .O(\cid[8][1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h11013333BB0B3333)) 
    \cid[8][1]_i_3 
       (.I0(\cid[8][3]_i_6_n_0 ),
        .I1(\cid[8][1]_i_4_n_0 ),
        .I2(\cid[10][3]_i_2_n_0 ),
        .I3(obs_unrooted[8]),
        .I4(\cid[8][4]_i_7_n_0 ),
        .I5(obs_cid[51]),
        .O(\cid[8][1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hEEFECCCC44F4CCCC)) 
    \cid[8][1]_i_4 
       (.I0(\ptr[8][2]_i_13_n_0 ),
        .I1(\cid[8][1]_i_5_n_0 ),
        .I2(\cid[11][1]_i_3_n_0 ),
        .I3(obs_unrooted[8]),
        .I4(\cid[8][4]_i_14_n_0 ),
        .I5(obs_cid[46]),
        .O(\cid[8][1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFCFFFF55300000)) 
    \cid[8][1]_i_5 
       (.I0(obs_unrooted[8]),
        .I1(\ptr[8][2]_i_12_n_0 ),
        .I2(obs_cid[11]),
        .I3(\cid[4][2]_i_3_n_0 ),
        .I4(\ptr[2][1]_i_3_n_0 ),
        .I5(obs_cid[41]),
        .O(\cid[8][1]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF600)) 
    \cid[8][2]_i_1 
       (.I0(obs_cid[31]),
        .I1(obs_cid[32]),
        .I2(\cid[8][3]_i_3_n_0 ),
        .I3(\FSM_sequential_stage_reg[1]_rep__0_n_0 ),
        .I4(\cid[8][2]_i_2_n_0 ),
        .O(\cid[8][2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF400FE000000FE00)) 
    \cid[8][2]_i_2 
       (.I0(\ptr[8][2]_i_3_n_0 ),
        .I1(obs_cid[32]),
        .I2(\cid[8][3]_i_5_n_0 ),
        .I3(\cid[8][4]_i_5_n_0 ),
        .I4(\cid[8][2]_i_3_n_0 ),
        .I5(\cid[8][4]_i_4_n_0 ),
        .O(\cid[8][2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h470F000F470F470F)) 
    \cid[8][2]_i_3 
       (.I0(obs_cid[52]),
        .I1(\cid[8][3]_i_6_n_0 ),
        .I2(\cid[8][2]_i_4_n_0 ),
        .I3(\cid[8][4]_i_7_n_0 ),
        .I4(obs_unrooted[8]),
        .I5(\cid[10][3]_i_2_n_0 ),
        .O(\cid[8][2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hEEFECCCC44F4CCCC)) 
    \cid[8][2]_i_4 
       (.I0(\ptr[8][2]_i_13_n_0 ),
        .I1(\cid[8][2]_i_5_n_0 ),
        .I2(\cid[11][1]_i_3_n_0 ),
        .I3(obs_unrooted[8]),
        .I4(\cid[8][4]_i_14_n_0 ),
        .I5(obs_cid[47]),
        .O(\cid[8][2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFCFFFF55300000)) 
    \cid[8][2]_i_5 
       (.I0(obs_unrooted[8]),
        .I1(\ptr[8][2]_i_12_n_0 ),
        .I2(obs_cid[12]),
        .I3(\cid[4][2]_i_3_n_0 ),
        .I4(\ptr[2][1]_i_3_n_0 ),
        .I5(obs_cid[42]),
        .O(\cid[8][2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h8AAAAAAAAA8A8A8A)) 
    \cid[8][3]_i_1 
       (.I0(\cid[8][3]_i_2_n_0 ),
        .I1(\cid[8][3]_i_3_n_0 ),
        .I2(\FSM_sequential_stage_reg[1]_rep__0_n_0 ),
        .I3(obs_cid[32]),
        .I4(obs_cid[31]),
        .I5(obs_cid[33]),
        .O(\cid[8][3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFE0E0E0E0E0)) 
    \cid[8][3]_i_10 
       (.I0(\cid[8][3]_i_18_n_0 ),
        .I1(\cid[8][3]_i_19_n_0 ),
        .I2(obs_cid[51]),
        .I3(\cid[8][3]_i_20_n_0 ),
        .I4(\cid[8][3]_i_21_n_0 ),
        .I5(obs_cid[52]),
        .O(\cid[8][3]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h00000000BBF3B0F0)) 
    \cid[8][3]_i_11 
       (.I0(obs_cid[46]),
        .I1(\cid[8][3]_i_17_n_0 ),
        .I2(\cid[8][1]_i_5_n_0 ),
        .I3(\ptr[8][2]_i_13_n_0 ),
        .I4(\cid[8][4]_i_14_n_0 ),
        .I5(obs_cid[51]),
        .O(\cid[8][3]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h5101555511011111)) 
    \cid[8][3]_i_12 
       (.I0(obs_cid[50]),
        .I1(\cid[8][0]_i_5_n_0 ),
        .I2(\ptr[8][2]_i_13_n_0 ),
        .I3(obs_cid[45]),
        .I4(\cid[8][3]_i_17_n_0 ),
        .I5(\cid[8][4]_i_14_n_0 ),
        .O(\cid[8][3]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h01010101010101FF)) 
    \cid[8][3]_i_13 
       (.I0(obs_cid[53]),
        .I1(\cid[8][3]_i_15_n_0 ),
        .I2(\cid[8][3]_i_22_n_0 ),
        .I3(obs_cid[52]),
        .I4(\cid[8][3]_i_20_n_0 ),
        .I5(\cid[8][3]_i_21_n_0 ),
        .O(\cid[8][3]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hFFFCFFFF55300000)) 
    \cid[8][3]_i_14 
       (.I0(obs_unrooted[8]),
        .I1(\ptr[8][2]_i_12_n_0 ),
        .I2(obs_cid[13]),
        .I3(\cid[4][2]_i_3_n_0 ),
        .I4(\ptr[2][1]_i_3_n_0 ),
        .I5(obs_cid[43]),
        .O(\cid[8][3]_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \cid[8][3]_i_15 
       (.I0(\cid[8][4]_i_14_n_0 ),
        .I1(\cid[8][3]_i_14_n_0 ),
        .O(\cid[8][3]_i_15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT4 #(
    .INIT(16'hF810)) 
    \cid[8][3]_i_16 
       (.I0(\cid[8][4]_i_13_n_0 ),
        .I1(obs_cid[49]),
        .I2(obs_cid[48]),
        .I3(\cid[8][3]_i_14_n_0 ),
        .O(\cid[8][3]_i_16_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \cid[8][3]_i_17 
       (.I0(\cid[8][4]_i_14_n_0 ),
        .I1(obs_unrooted[8]),
        .I2(\cid[11][1]_i_3_n_0 ),
        .O(\cid[8][3]_i_17_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \cid[8][3]_i_18 
       (.I0(\cid[8][4]_i_14_n_0 ),
        .I1(\cid[8][1]_i_5_n_0 ),
        .O(\cid[8][3]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h0C0C0C0C44440C44)) 
    \cid[8][3]_i_19 
       (.I0(obs_cid[46]),
        .I1(\cid[8][3]_i_17_n_0 ),
        .I2(\cid[8][1]_i_5_n_0 ),
        .I3(\cid[8][3]_i_23_n_0 ),
        .I4(\cid[8][3]_i_24_n_0 ),
        .I5(\cid[8][3]_i_25_n_0 ),
        .O(\cid[8][3]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hFFE2F0E0FFFFFFFF)) 
    \cid[8][3]_i_2 
       (.I0(obs_cid[33]),
        .I1(\ptr[8][2]_i_3_n_0 ),
        .I2(\cid[8][3]_i_4_n_0 ),
        .I3(\cid[8][3]_i_5_n_0 ),
        .I4(\cid[8][4]_i_4_n_0 ),
        .I5(\cid[8][4]_i_5_n_0 ),
        .O(\cid[8][3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair122" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \cid[8][3]_i_20 
       (.I0(\cid[8][4]_i_14_n_0 ),
        .I1(\cid[8][2]_i_5_n_0 ),
        .O(\cid[8][3]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h0C0C0C0C44440C44)) 
    \cid[8][3]_i_21 
       (.I0(obs_cid[47]),
        .I1(\cid[8][3]_i_17_n_0 ),
        .I2(\cid[8][2]_i_5_n_0 ),
        .I3(\cid[8][3]_i_23_n_0 ),
        .I4(\cid[8][3]_i_24_n_0 ),
        .I5(\cid[8][3]_i_25_n_0 ),
        .O(\cid[8][3]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h0A0A08AA08AA00AA)) 
    \cid[8][3]_i_22 
       (.I0(\cid[8][3]_i_17_n_0 ),
        .I1(\cid[8][3]_i_23_n_0 ),
        .I2(\cid[8][3]_i_14_n_0 ),
        .I3(obs_cid[48]),
        .I4(obs_cid[49]),
        .I5(\cid[8][4]_i_13_n_0 ),
        .O(\cid[8][3]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hFFB2FF00FFFFFFB2)) 
    \cid[8][3]_i_23 
       (.I0(obs_cid[46]),
        .I1(\cid[8][1]_i_5_n_0 ),
        .I2(\cid[8][3]_i_26_n_0 ),
        .I3(\cid[8][3]_i_27_n_0 ),
        .I4(obs_cid[47]),
        .I5(\cid[8][2]_i_5_n_0 ),
        .O(\cid[8][3]_i_23_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT4 #(
    .INIT(16'h1F11)) 
    \cid[8][3]_i_24 
       (.I0(\cid[8][4]_i_13_n_0 ),
        .I1(obs_cid[49]),
        .I2(obs_cid[48]),
        .I3(\cid[8][3]_i_14_n_0 ),
        .O(\cid[8][3]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'h7575057500000000)) 
    \cid[8][3]_i_25 
       (.I0(obs_cid[44]),
        .I1(obs_cid[14]),
        .I2(\ptr[2][1]_i_3_n_0 ),
        .I3(\cid[4][2]_i_3_n_0 ),
        .I4(obs_unrooted[8]),
        .I5(obs_cid[49]),
        .O(\cid[8][3]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hBBABABABBBFBABFB)) 
    \cid[8][3]_i_26 
       (.I0(obs_cid[45]),
        .I1(obs_cid[40]),
        .I2(\ptr[2][1]_i_3_n_0 ),
        .I3(\cid[4][2]_i_3_n_0 ),
        .I4(obs_unrooted[8]),
        .I5(\cid[8][3]_i_28_n_0 ),
        .O(\cid[8][3]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'h220222A2020202A2)) 
    \cid[8][3]_i_27 
       (.I0(obs_cid[48]),
        .I1(obs_cid[43]),
        .I2(\ptr[2][1]_i_3_n_0 ),
        .I3(\cid[4][2]_i_3_n_0 ),
        .I4(\cid[8][3]_i_29_n_0 ),
        .I5(obs_unrooted[8]),
        .O(\cid[8][3]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hBFBFBFBB80808088)) 
    \cid[8][3]_i_28 
       (.I0(obs_cid[40]),
        .I1(\cid[8][3]_i_30_n_0 ),
        .I2(\cid[8][3]_i_31_n_0 ),
        .I3(\ptr[8][2]_i_15_n_0 ),
        .I4(\cid[8][3]_i_32_n_0 ),
        .I5(obs_cid[10]),
        .O(\cid[8][3]_i_28_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT4 #(
    .INIT(16'hF240)) 
    \cid[8][3]_i_29 
       (.I0(obs_cid[44]),
        .I1(obs_cid[14]),
        .I2(obs_cid[43]),
        .I3(obs_cid[13]),
        .O(\cid[8][3]_i_29_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \cid[8][3]_i_3 
       (.I0(obs_cid[30]),
        .I1(obs_cid[31]),
        .I2(obs_cid[32]),
        .I3(obs_cid[33]),
        .I4(obs_cid[34]),
        .O(\cid[8][3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \cid[8][3]_i_30 
       (.I0(obs_cid[14]),
        .I1(obs_cid[44]),
        .O(\cid[8][3]_i_30_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    \cid[8][3]_i_31 
       (.I0(obs_cid[44]),
        .I1(obs_cid[14]),
        .I2(obs_cid[43]),
        .I3(obs_cid[13]),
        .O(\cid[8][3]_i_31_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    \cid[8][3]_i_32 
       (.I0(obs_cid[12]),
        .I1(obs_cid[42]),
        .I2(obs_cid[13]),
        .I3(obs_cid[43]),
        .O(\cid[8][3]_i_32_n_0 ));
  LUT6 #(
    .INIT(64'hB8F0FFF0B8F0B8F0)) 
    \cid[8][3]_i_4 
       (.I0(obs_cid[53]),
        .I1(\cid[8][3]_i_6_n_0 ),
        .I2(\cid[8][3]_i_7_n_0 ),
        .I3(\cid[8][4]_i_7_n_0 ),
        .I4(obs_unrooted[8]),
        .I5(\cid[10][3]_i_2_n_0 ),
        .O(\cid[8][3]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT3 #(
    .INIT(8'h4F)) 
    \cid[8][3]_i_5 
       (.I0(obs_unrooted[8]),
        .I1(\cid[8][3]_i_3_n_0 ),
        .I2(\cid[8][4]_i_4_n_0 ),
        .O(\cid[8][3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBBBBBABABABAA)) 
    \cid[8][3]_i_6 
       (.I0(\cid[8][3]_i_8_n_0 ),
        .I1(\cid[8][3]_i_9_n_0 ),
        .I2(\cid[8][3]_i_10_n_0 ),
        .I3(\cid[8][3]_i_11_n_0 ),
        .I4(\cid[8][3]_i_12_n_0 ),
        .I5(\cid[8][3]_i_13_n_0 ),
        .O(\cid[8][3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hB8F0FFF0B8F0B8F0)) 
    \cid[8][3]_i_7 
       (.I0(obs_cid[48]),
        .I1(\ptr[8][2]_i_13_n_0 ),
        .I2(\cid[8][3]_i_14_n_0 ),
        .I3(\cid[8][4]_i_14_n_0 ),
        .I4(obs_unrooted[8]),
        .I5(\cid[11][1]_i_3_n_0 ),
        .O(\cid[8][3]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cid[8][3]_i_8 
       (.I0(\cid[8][4]_i_8_n_0 ),
        .I1(obs_cid[54]),
        .O(\cid[8][3]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hF4FFF4F444444444)) 
    \cid[8][3]_i_9 
       (.I0(\cid[8][4]_i_8_n_0 ),
        .I1(obs_cid[54]),
        .I2(\cid[8][3]_i_15_n_0 ),
        .I3(\cid[8][3]_i_16_n_0 ),
        .I4(\cid[8][3]_i_17_n_0 ),
        .I5(obs_cid[53]),
        .O(\cid[8][3]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFF2330000)) 
    \cid[8][4]_i_1 
       (.I0(obs_cid[34]),
        .I1(\cid[8][4]_i_2_n_0 ),
        .I2(\cid[8][4]_i_3_n_0 ),
        .I3(\cid[8][4]_i_4_n_0 ),
        .I4(\cid[8][4]_i_5_n_0 ),
        .I5(\cid[8][4]_i_6_n_0 ),
        .O(\cid[8][4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \cid[8][4]_i_10 
       (.I0(obs_cid[50]),
        .I1(obs_cid[51]),
        .I2(obs_cid[52]),
        .I3(obs_cid[54]),
        .I4(obs_cid[53]),
        .I5(obs_unrooted[8]),
        .O(\cid[8][4]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cid[8][4]_i_11 
       (.I0(obs_growth[13]),
        .I1(obs_growth[12]),
        .O(\cid[8][4]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'h0040)) 
    \cid[8][4]_i_12 
       (.I0(obs_growth[2]),
        .I1(obs_growth[3]),
        .I2(\cid[4][2]_i_3_n_0 ),
        .I3(obs_unrooted[8]),
        .O(\cid[8][4]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h00000B00FBFFFBFF)) 
    \cid[8][4]_i_13 
       (.I0(obs_unrooted[8]),
        .I1(\cid[4][2]_i_3_n_0 ),
        .I2(obs_growth[2]),
        .I3(obs_growth[3]),
        .I4(obs_cid[14]),
        .I5(obs_cid[44]),
        .O(\cid[8][4]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h4444444440444444)) 
    \cid[8][4]_i_14 
       (.I0(obs_growth[12]),
        .I1(obs_growth[13]),
        .I2(obs_unrooted[8]),
        .I3(\cid[4][2]_i_3_n_0 ),
        .I4(obs_growth[3]),
        .I5(obs_growth[2]),
        .O(\cid[8][4]_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT5 #(
    .INIT(32'h00D0DFDF)) 
    \cid[8][4]_i_2 
       (.I0(\cid[10][3]_i_2_n_0 ),
        .I1(obs_unrooted[8]),
        .I2(\cid[8][4]_i_7_n_0 ),
        .I3(obs_cid[54]),
        .I4(\cid[8][4]_i_8_n_0 ),
        .O(\cid[8][4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \cid[8][4]_i_3 
       (.I0(obs_cid[34]),
        .I1(obs_cid[33]),
        .I2(obs_cid[32]),
        .I3(obs_cid[31]),
        .I4(obs_cid[30]),
        .I5(obs_unrooted[8]),
        .O(\cid[8][4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000515500000000)) 
    \cid[8][4]_i_4 
       (.I0(\cid[8][4]_i_9_n_0 ),
        .I1(\cid[8][4]_i_10_n_0 ),
        .I2(obs_growth[18]),
        .I3(obs_growth[19]),
        .I4(obs_growth[10]),
        .I5(obs_growth[11]),
        .O(\cid[8][4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h1555555555555555)) 
    \cid[8][4]_i_5 
       (.I0(\FSM_sequential_stage_reg[1]_rep__0_n_0 ),
        .I1(obs_cid[43]),
        .I2(obs_cid[42]),
        .I3(obs_cid[41]),
        .I4(obs_cid[44]),
        .I5(obs_cid[40]),
        .O(\cid[8][4]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h8AAAAAAAA0000000)) 
    \cid[8][4]_i_6 
       (.I0(\FSM_sequential_stage_reg[1]_rep__0_n_0 ),
        .I1(obs_cid[30]),
        .I2(obs_cid[31]),
        .I3(obs_cid[32]),
        .I4(obs_cid[33]),
        .I5(obs_cid[34]),
        .O(\cid[8][4]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000000040444444)) 
    \cid[8][4]_i_7 
       (.I0(obs_growth[18]),
        .I1(obs_growth[19]),
        .I2(obs_unrooted[8]),
        .I3(\cid[11][1]_i_3_n_0 ),
        .I4(\cid[8][4]_i_11_n_0 ),
        .I5(\cid[8][4]_i_12_n_0 ),
        .O(\cid[8][4]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h40FF000040FF40FF)) 
    \cid[8][4]_i_8 
       (.I0(obs_unrooted[8]),
        .I1(\cid[11][1]_i_3_n_0 ),
        .I2(\cid[8][4]_i_11_n_0 ),
        .I3(\cid[8][4]_i_13_n_0 ),
        .I4(obs_cid[49]),
        .I5(\cid[8][4]_i_14_n_0 ),
        .O(\cid[8][4]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0000000088F88888)) 
    \cid[8][4]_i_9 
       (.I0(\cid[4][2]_i_3_n_0 ),
        .I1(\ptr[2][1]_i_3_n_0 ),
        .I2(obs_growth[13]),
        .I3(obs_growth[12]),
        .I4(\cid[11][1]_i_3_n_0 ),
        .I5(obs_unrooted[8]),
        .O(\cid[8][4]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'hF0EE)) 
    \cid[9][0]_i_1 
       (.I0(\cid[11][1]_i_3_n_0 ),
        .I1(\cid[9][0]_i_2_n_0 ),
        .I2(obs_cid[35]),
        .I3(\FSM_sequential_stage_reg[1]_rep__0_n_0 ),
        .O(\cid[9][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAA202020FF75FFFF)) 
    \cid[9][0]_i_2 
       (.I0(\ptr[9][2]_i_3_n_0 ),
        .I1(obs_unrooted[9]),
        .I2(\cid[9][3]_i_3_n_0 ),
        .I3(obs_cid[35]),
        .I4(\ptr[9][2]_i_4_n_0 ),
        .I5(\cid[9][0]_i_3_n_0 ),
        .O(\cid[9][0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8ADFFFFF00550000)) 
    \cid[9][0]_i_3 
       (.I0(\cid[9][3]_i_7_n_0 ),
        .I1(obs_unrooted[9]),
        .I2(\cid[11][2]_i_3_n_0 ),
        .I3(obs_cid[55]),
        .I4(\cid[9][4]_i_7_n_0 ),
        .I5(\cid[9][0]_i_4_n_0 ),
        .O(\cid[9][0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h4755005547554755)) 
    \cid[9][0]_i_4 
       (.I0(\cid[9][0]_i_5_n_0 ),
        .I1(\ptr[9][2]_i_18_n_0 ),
        .I2(obs_cid[15]),
        .I3(\ptr[9][2]_i_19_n_0 ),
        .I4(obs_unrooted[9]),
        .I5(\cid[5][1]_i_2_n_0 ),
        .O(\cid[9][0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFC4744FFFF0000)) 
    \cid[9][0]_i_5 
       (.I0(obs_unrooted[9]),
        .I1(\cid[10][1]_i_3_n_0 ),
        .I2(\cid[9][3]_i_24_n_0 ),
        .I3(obs_cid[40]),
        .I4(obs_cid[45]),
        .I5(\cid[8][4]_i_11_n_0 ),
        .O(\cid[9][0]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT4 #(
    .INIT(16'hFFD0)) 
    \cid[9][1]_i_1 
       (.I0(obs_cid[36]),
        .I1(\cid[9][3]_i_3_n_0 ),
        .I2(\FSM_sequential_stage_reg[1]_rep__0_n_0 ),
        .I3(\cid[9][1]_i_2_n_0 ),
        .O(\cid[9][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB300F7000000F700)) 
    \cid[9][1]_i_2 
       (.I0(\ptr[9][2]_i_4_n_0 ),
        .I1(\cid[9][3]_i_4_n_0 ),
        .I2(obs_cid[36]),
        .I3(\cid[9][3]_i_6_n_0 ),
        .I4(\cid[9][1]_i_3_n_0 ),
        .I5(\ptr[9][2]_i_3_n_0 ),
        .O(\cid[9][1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h11110000B1BBFFFF)) 
    \cid[9][1]_i_3 
       (.I0(\cid[9][3]_i_7_n_0 ),
        .I1(obs_cid[56]),
        .I2(obs_unrooted[9]),
        .I3(\cid[11][2]_i_3_n_0 ),
        .I4(\cid[9][4]_i_7_n_0 ),
        .I5(\cid[9][1]_i_4_n_0 ),
        .O(\cid[9][1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h2020F020FFFFFF2F)) 
    \cid[9][1]_i_4 
       (.I0(\cid[5][1]_i_2_n_0 ),
        .I1(obs_unrooted[9]),
        .I2(\ptr[9][2]_i_19_n_0 ),
        .I3(obs_cid[16]),
        .I4(\ptr[9][2]_i_18_n_0 ),
        .I5(\cid[9][1]_i_5_n_0 ),
        .O(\cid[9][1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0003B8BB0000FFFF)) 
    \cid[9][1]_i_5 
       (.I0(obs_unrooted[9]),
        .I1(\cid[10][1]_i_3_n_0 ),
        .I2(\cid[9][3]_i_24_n_0 ),
        .I3(obs_cid[41]),
        .I4(obs_cid[46]),
        .I5(\cid[8][4]_i_11_n_0 ),
        .O(\cid[9][1]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF600)) 
    \cid[9][2]_i_1 
       (.I0(obs_cid[36]),
        .I1(obs_cid[37]),
        .I2(\cid[9][3]_i_3_n_0 ),
        .I3(\FSM_sequential_stage_reg[1]_rep__0_n_0 ),
        .I4(\cid[9][2]_i_2_n_0 ),
        .O(\cid[9][2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF700B300F7000000)) 
    \cid[9][2]_i_2 
       (.I0(\ptr[9][2]_i_4_n_0 ),
        .I1(\cid[9][3]_i_4_n_0 ),
        .I2(obs_cid[37]),
        .I3(\cid[9][3]_i_6_n_0 ),
        .I4(\cid[9][2]_i_3_n_0 ),
        .I5(\ptr[9][2]_i_3_n_0 ),
        .O(\cid[9][2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h4E440000EEEEFFFF)) 
    \cid[9][2]_i_3 
       (.I0(\cid[9][3]_i_7_n_0 ),
        .I1(obs_cid[57]),
        .I2(obs_unrooted[9]),
        .I3(\cid[11][2]_i_3_n_0 ),
        .I4(\cid[9][4]_i_7_n_0 ),
        .I5(\cid[9][2]_i_4_n_0 ),
        .O(\cid[9][2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h000000D0DFDF0FDF)) 
    \cid[9][2]_i_4 
       (.I0(\cid[5][1]_i_2_n_0 ),
        .I1(obs_unrooted[9]),
        .I2(\ptr[9][2]_i_19_n_0 ),
        .I3(obs_cid[17]),
        .I4(\ptr[9][2]_i_18_n_0 ),
        .I5(\cid[9][2]_i_5_n_0 ),
        .O(\cid[9][2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hF0FFF0F0E4E4F0F0)) 
    \cid[9][2]_i_5 
       (.I0(\cid[9][3]_i_24_n_0 ),
        .I1(obs_cid[42]),
        .I2(obs_cid[47]),
        .I3(obs_unrooted[9]),
        .I4(\cid[8][4]_i_11_n_0 ),
        .I5(\cid[10][1]_i_3_n_0 ),
        .O(\cid[9][2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h8AAAAAAAAA8A8A8A)) 
    \cid[9][3]_i_1 
       (.I0(\cid[9][3]_i_2_n_0 ),
        .I1(\cid[9][3]_i_3_n_0 ),
        .I2(\FSM_sequential_stage_reg[1]_rep__0_n_0 ),
        .I3(obs_cid[37]),
        .I4(obs_cid[36]),
        .I5(obs_cid[38]),
        .O(\cid[9][3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF1F110000)) 
    \cid[9][3]_i_10 
       (.I0(\cid[9][3]_i_15_n_0 ),
        .I1(\ptr[9][2]_i_19_n_0 ),
        .I2(\cid[9][3]_i_16_n_0 ),
        .I3(\grown[9]_i_8_n_0 ),
        .I4(obs_cid[58]),
        .I5(\cid[9][3]_i_17_n_0 ),
        .O(\cid[9][3]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hE0FFE0E0E0E0E0E0)) 
    \cid[9][3]_i_11 
       (.I0(\cid[9][3]_i_18_n_0 ),
        .I1(\cid[9][3]_i_19_n_0 ),
        .I2(obs_cid[57]),
        .I3(\cid[9][3]_i_20_n_0 ),
        .I4(\cid[9][3]_i_21_n_0 ),
        .I5(obs_cid[56]),
        .O(\cid[9][3]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h000000007544F5F5)) 
    \cid[9][3]_i_12 
       (.I0(\cid[9][1]_i_5_n_0 ),
        .I1(\ptr[9][2]_i_18_n_0 ),
        .I2(\ptr[9][2]_i_19_n_0 ),
        .I3(obs_cid[16]),
        .I4(\grown[9]_i_8_n_0 ),
        .I5(obs_cid[56]),
        .O(\cid[9][3]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h5551115155510000)) 
    \cid[9][3]_i_13 
       (.I0(obs_cid[55]),
        .I1(\grown[9]_i_8_n_0 ),
        .I2(obs_cid[15]),
        .I3(\ptr[9][2]_i_18_n_0 ),
        .I4(\cid[9][0]_i_5_n_0 ),
        .I5(\ptr[9][2]_i_19_n_0 ),
        .O(\cid[9][3]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h01010101010101FF)) 
    \cid[9][3]_i_14 
       (.I0(obs_cid[58]),
        .I1(\cid[9][3]_i_22_n_0 ),
        .I2(\cid[9][3]_i_23_n_0 ),
        .I3(\cid[9][3]_i_18_n_0 ),
        .I4(\cid[9][3]_i_19_n_0 ),
        .I5(obs_cid[57]),
        .O(\cid[9][3]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hFFFC4744FFFF0000)) 
    \cid[9][3]_i_15 
       (.I0(obs_unrooted[9]),
        .I1(\cid[10][1]_i_3_n_0 ),
        .I2(\cid[9][3]_i_24_n_0 ),
        .I3(obs_cid[43]),
        .I4(obs_cid[48]),
        .I5(\cid[8][4]_i_11_n_0 ),
        .O(\cid[9][3]_i_15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT4 #(
    .INIT(16'hF240)) 
    \cid[9][3]_i_16 
       (.I0(obs_cid[19]),
        .I1(\cid[9][4]_i_8_n_0 ),
        .I2(obs_cid[18]),
        .I3(\cid[9][3]_i_15_n_0 ),
        .O(\cid[9][3]_i_16_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair118" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cid[9][3]_i_17 
       (.I0(obs_cid[59]),
        .I1(\cid[9][4]_i_6_n_0 ),
        .O(\cid[9][3]_i_17_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair123" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \cid[9][3]_i_18 
       (.I0(\ptr[9][2]_i_19_n_0 ),
        .I1(\cid[9][2]_i_5_n_0 ),
        .O(\cid[9][3]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h550455F700000000)) 
    \cid[9][3]_i_19 
       (.I0(\cid[9][2]_i_5_n_0 ),
        .I1(\cid[9][3]_i_25_n_0 ),
        .I2(\cid[9][3]_i_26_n_0 ),
        .I3(\cid[9][3]_i_27_n_0 ),
        .I4(obs_cid[17]),
        .I5(\grown[9]_i_8_n_0 ),
        .O(\cid[9][3]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hFD5DCC4CFFFFFFFF)) 
    \cid[9][3]_i_2 
       (.I0(\cid[9][3]_i_4_n_0 ),
        .I1(\cid[9][3]_i_5_n_0 ),
        .I2(\ptr[9][2]_i_4_n_0 ),
        .I3(obs_cid[38]),
        .I4(\ptr[9][2]_i_3_n_0 ),
        .I5(\cid[9][3]_i_6_n_0 ),
        .O(\cid[9][3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00008808AAAAAAAA)) 
    \cid[9][3]_i_20 
       (.I0(\cid[9][3]_i_28_n_0 ),
        .I1(obs_cid[16]),
        .I2(\cid[9][3]_i_25_n_0 ),
        .I3(\cid[9][3]_i_26_n_0 ),
        .I4(\cid[9][3]_i_27_n_0 ),
        .I5(\grown[9]_i_8_n_0 ),
        .O(\cid[9][3]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hFFABAAAAFFFFFFAB)) 
    \cid[9][3]_i_21 
       (.I0(\cid[9][1]_i_5_n_0 ),
        .I1(\cid[9][3]_i_29_n_0 ),
        .I2(\ptr[9][2]_i_21_n_0 ),
        .I3(\cid[9][3]_i_30_n_0 ),
        .I4(\cid[9][4]_i_8_n_0 ),
        .I5(obs_cid[19]),
        .O(\cid[9][3]_i_21_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \cid[9][3]_i_22 
       (.I0(\ptr[9][2]_i_19_n_0 ),
        .I1(\cid[9][3]_i_15_n_0 ),
        .O(\cid[9][3]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'h08AA0A0A00AA08AA)) 
    \cid[9][3]_i_23 
       (.I0(\grown[9]_i_8_n_0 ),
        .I1(\cid[9][3]_i_25_n_0 ),
        .I2(\cid[9][3]_i_15_n_0 ),
        .I3(obs_cid[18]),
        .I4(\cid[9][4]_i_8_n_0 ),
        .I5(obs_cid[19]),
        .O(\cid[9][3]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'h4F044F044F04FF0F)) 
    \cid[9][3]_i_24 
       (.I0(obs_cid[48]),
        .I1(obs_cid[43]),
        .I2(obs_cid[49]),
        .I3(obs_cid[44]),
        .I4(\ptr[9][2]_i_16_n_0 ),
        .I5(\ptr[9][2]_i_15_n_0 ),
        .O(\cid[9][3]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hFFE8FF00FFFFFFE8)) 
    \cid[9][3]_i_25 
       (.I0(\cid[9][1]_i_5_n_0 ),
        .I1(obs_cid[16]),
        .I2(\cid[9][3]_i_31_n_0 ),
        .I3(\cid[9][3]_i_32_n_0 ),
        .I4(obs_cid[17]),
        .I5(\cid[9][2]_i_5_n_0 ),
        .O(\cid[9][3]_i_25_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    \cid[9][3]_i_26 
       (.I0(obs_cid[19]),
        .I1(\cid[9][4]_i_8_n_0 ),
        .I2(obs_cid[18]),
        .I3(\cid[9][3]_i_15_n_0 ),
        .O(\cid[9][3]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'h08AA082A08AA08AA)) 
    \cid[9][3]_i_27 
       (.I0(obs_cid[19]),
        .I1(\cid[8][4]_i_11_n_0 ),
        .I2(obs_cid[44]),
        .I3(obs_cid[49]),
        .I4(obs_unrooted[9]),
        .I5(\cid[10][1]_i_3_n_0 ),
        .O(\cid[9][3]_i_27_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair123" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \cid[9][3]_i_28 
       (.I0(\ptr[9][2]_i_19_n_0 ),
        .I1(\cid[9][1]_i_5_n_0 ),
        .O(\cid[9][3]_i_28_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    \cid[9][3]_i_29 
       (.I0(\cid[9][2]_i_5_n_0 ),
        .I1(obs_cid[17]),
        .I2(\cid[9][3]_i_15_n_0 ),
        .I3(obs_cid[18]),
        .O(\cid[9][3]_i_29_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \cid[9][3]_i_3 
       (.I0(obs_cid[35]),
        .I1(obs_cid[36]),
        .I2(obs_cid[37]),
        .I3(obs_cid[38]),
        .I4(obs_cid[39]),
        .O(\cid[9][3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cid[9][3]_i_30 
       (.I0(\cid[9][3]_i_15_n_0 ),
        .I1(obs_cid[18]),
        .O(\cid[9][3]_i_30_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAFFFFFFAB)) 
    \cid[9][3]_i_31 
       (.I0(obs_cid[15]),
        .I1(\ptr[9][2]_i_7_n_0 ),
        .I2(obs_cid[45]),
        .I3(\cid[9][3]_i_33_n_0 ),
        .I4(\cid[10][1]_i_3_n_0 ),
        .I5(\cid[9][3]_i_34_n_0 ),
        .O(\cid[9][3]_i_31_n_0 ));
  LUT6 #(
    .INIT(64'h00000000AAAAAA02)) 
    \cid[9][3]_i_32 
       (.I0(obs_cid[18]),
        .I1(\ptr[9][2]_i_7_n_0 ),
        .I2(obs_cid[48]),
        .I3(\cid[9][3]_i_35_n_0 ),
        .I4(\cid[10][1]_i_3_n_0 ),
        .I5(\cid[9][3]_i_36_n_0 ),
        .O(\cid[9][3]_i_32_n_0 ));
  LUT6 #(
    .INIT(64'h0054555500540054)) 
    \cid[9][3]_i_33 
       (.I0(obs_cid[40]),
        .I1(\ptr[9][2]_i_15_n_0 ),
        .I2(\ptr[9][2]_i_16_n_0 ),
        .I3(\ptr[9][2]_i_17_n_0 ),
        .I4(obs_cid[44]),
        .I5(obs_cid[49]),
        .O(\cid[9][3]_i_33_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT5 #(
    .INIT(32'hCCCCD0CC)) 
    \cid[9][3]_i_34 
       (.I0(obs_unrooted[9]),
        .I1(obs_cid[45]),
        .I2(\cid[10][1]_i_3_n_0 ),
        .I3(obs_growth[13]),
        .I4(obs_growth[12]),
        .O(\cid[9][3]_i_34_n_0 ));
  LUT5 #(
    .INIT(32'h0000EF0E)) 
    \cid[9][3]_i_35 
       (.I0(\ptr[9][2]_i_15_n_0 ),
        .I1(\ptr[9][2]_i_16_n_0 ),
        .I2(obs_cid[44]),
        .I3(obs_cid[49]),
        .I4(obs_cid[43]),
        .O(\cid[9][3]_i_35_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT5 #(
    .INIT(32'hCCCCD0CC)) 
    \cid[9][3]_i_36 
       (.I0(obs_unrooted[9]),
        .I1(obs_cid[48]),
        .I2(\cid[10][1]_i_3_n_0 ),
        .I3(obs_growth[13]),
        .I4(obs_growth[12]),
        .O(\cid[9][3]_i_36_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \cid[9][3]_i_4 
       (.I0(\ptr[9][2]_i_3_n_0 ),
        .I1(obs_unrooted[9]),
        .I2(\cid[9][3]_i_3_n_0 ),
        .O(\cid[9][3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hEEEE4E44FFFF0000)) 
    \cid[9][3]_i_5 
       (.I0(\cid[9][3]_i_7_n_0 ),
        .I1(obs_cid[58]),
        .I2(obs_unrooted[9]),
        .I3(\cid[11][2]_i_3_n_0 ),
        .I4(\cid[9][3]_i_8_n_0 ),
        .I5(\cid[9][4]_i_7_n_0 ),
        .O(\cid[9][3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h1555555555555555)) 
    \cid[9][3]_i_6 
       (.I0(\FSM_sequential_stage_reg[1]_rep__0_n_0 ),
        .I1(obs_cid[49]),
        .I2(obs_cid[48]),
        .I3(obs_cid[47]),
        .I4(obs_cid[46]),
        .I5(obs_cid[45]),
        .O(\cid[9][3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h88888888A8A8A8AA)) 
    \cid[9][3]_i_7 
       (.I0(\cid[9][3]_i_9_n_0 ),
        .I1(\cid[9][3]_i_10_n_0 ),
        .I2(\cid[9][3]_i_11_n_0 ),
        .I3(\cid[9][3]_i_12_n_0 ),
        .I4(\cid[9][3]_i_13_n_0 ),
        .I5(\cid[9][3]_i_14_n_0 ),
        .O(\cid[9][3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hB8AAFFAAB8AAB8AA)) 
    \cid[9][3]_i_8 
       (.I0(\cid[9][3]_i_15_n_0 ),
        .I1(\ptr[9][2]_i_18_n_0 ),
        .I2(obs_cid[18]),
        .I3(\ptr[9][2]_i_19_n_0 ),
        .I4(obs_unrooted[9]),
        .I5(\cid[5][1]_i_2_n_0 ),
        .O(\cid[9][3]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair118" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \cid[9][3]_i_9 
       (.I0(obs_cid[59]),
        .I1(\cid[9][4]_i_6_n_0 ),
        .O(\cid[9][3]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'h26)) 
    \cid[9][4]_i_1 
       (.I0(stage__0[2]),
        .I1(stage__0[0]),
        .I2(\FSM_sequential_stage_reg[1]_rep__0_n_0 ),
        .O(\cid[9][4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFF00FF011111111)) 
    \cid[9][4]_i_2 
       (.I0(\cid[9][4]_i_3_n_0 ),
        .I1(\cid[11][1]_i_3_n_0 ),
        .I2(obs_cid[39]),
        .I3(\cid[9][4]_i_4_n_0 ),
        .I4(obs_cid[35]),
        .I5(\FSM_sequential_stage_reg[1]_rep__0_n_0 ),
        .O(\cid[9][4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'h00D0DFDF)) 
    \cid[9][4]_i_3 
       (.I0(\cid[9][3]_i_3_n_0 ),
        .I1(obs_unrooted[9]),
        .I2(\ptr[9][2]_i_3_n_0 ),
        .I3(obs_cid[39]),
        .I4(\cid[9][4]_i_5_n_0 ),
        .O(\cid[9][4]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \cid[9][4]_i_4 
       (.I0(obs_cid[36]),
        .I1(obs_cid[37]),
        .I2(obs_cid[38]),
        .O(\cid[9][4]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT5 #(
    .INIT(32'hF400F0F0)) 
    \cid[9][4]_i_5 
       (.I0(obs_unrooted[9]),
        .I1(\cid[11][2]_i_3_n_0 ),
        .I2(\cid[9][4]_i_6_n_0 ),
        .I3(obs_cid[59]),
        .I4(\cid[9][4]_i_7_n_0 ),
        .O(\cid[9][4]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT5 #(
    .INIT(32'hF400F0F0)) 
    \cid[9][4]_i_6 
       (.I0(obs_unrooted[9]),
        .I1(\cid[5][1]_i_2_n_0 ),
        .I2(\cid[9][4]_i_8_n_0 ),
        .I3(obs_cid[19]),
        .I4(\ptr[9][2]_i_19_n_0 ),
        .O(\cid[9][4]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \cid[9][4]_i_7 
       (.I0(\ptr[9][2]_i_10_n_0 ),
        .I1(obs_growth[24]),
        .I2(obs_growth[25]),
        .O(\cid[9][4]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0F0F0F200F0F0)) 
    \cid[9][4]_i_8 
       (.I0(\cid[10][1]_i_3_n_0 ),
        .I1(obs_unrooted[9]),
        .I2(obs_cid[49]),
        .I3(obs_cid[44]),
        .I4(obs_growth[13]),
        .I5(obs_growth[12]),
        .O(\cid[9][4]_i_8_n_0 ));
  FDRE \cid_reg[0][0] 
       (.C(clk),
        .CE(\cid[0][4]_i_1_n_0 ),
        .D(\cid[0][0]_i_1_n_0 ),
        .Q(obs_cid[0]),
        .R(reset));
  FDRE \cid_reg[0][1] 
       (.C(clk),
        .CE(\cid[0][4]_i_1_n_0 ),
        .D(\cid[0][1]_i_1_n_0 ),
        .Q(obs_cid[1]),
        .R(reset));
  FDRE \cid_reg[0][2] 
       (.C(clk),
        .CE(\cid[0][4]_i_1_n_0 ),
        .D(\cid[0][2]_i_1_n_0 ),
        .Q(obs_cid[2]),
        .R(reset));
  FDRE \cid_reg[0][3] 
       (.C(clk),
        .CE(\cid[0][4]_i_1_n_0 ),
        .D(\cid[0][3]_i_1_n_0 ),
        .Q(obs_cid[3]),
        .R(reset));
  FDRE \cid_reg[0][4] 
       (.C(clk),
        .CE(\cid[0][4]_i_1_n_0 ),
        .D(\cid[0][4]_i_2_n_0 ),
        .Q(obs_cid[4]),
        .R(reset));
  FDRE \cid_reg[10][0] 
       (.C(clk),
        .CE(\cid[10][4]_i_1_n_0 ),
        .D(\cid[10][0]_i_1_n_0 ),
        .Q(obs_cid[50]),
        .R(reset));
  FDSE \cid_reg[10][1] 
       (.C(clk),
        .CE(\cid[10][4]_i_1_n_0 ),
        .D(\cid[10][1]_i_1_n_0 ),
        .Q(obs_cid[51]),
        .S(reset));
  FDRE \cid_reg[10][2] 
       (.C(clk),
        .CE(\cid[10][4]_i_1_n_0 ),
        .D(\cid[10][2]_i_1_n_0 ),
        .Q(obs_cid[52]),
        .R(reset));
  FDSE \cid_reg[10][3] 
       (.C(clk),
        .CE(\cid[10][4]_i_1_n_0 ),
        .D(\cid[10][3]_i_1_n_0 ),
        .Q(obs_cid[53]),
        .S(reset));
  FDRE \cid_reg[10][4] 
       (.C(clk),
        .CE(\cid[10][4]_i_1_n_0 ),
        .D(\cid[10][4]_i_2_n_0 ),
        .Q(obs_cid[54]),
        .R(reset));
  FDSE \cid_reg[11][0] 
       (.C(clk),
        .CE(\cid[11][4]_i_1_n_0 ),
        .D(\cid[11][0]_i_1_n_0 ),
        .Q(obs_cid[55]),
        .S(reset));
  FDSE \cid_reg[11][1] 
       (.C(clk),
        .CE(\cid[11][4]_i_1_n_0 ),
        .D(\cid[11][1]_i_1_n_0 ),
        .Q(obs_cid[56]),
        .S(reset));
  FDRE \cid_reg[11][2] 
       (.C(clk),
        .CE(\cid[11][4]_i_1_n_0 ),
        .D(\cid[11][2]_i_1_n_0 ),
        .Q(obs_cid[57]),
        .R(reset));
  FDSE \cid_reg[11][3] 
       (.C(clk),
        .CE(\cid[11][4]_i_1_n_0 ),
        .D(\cid[11][3]_i_1_n_0 ),
        .Q(obs_cid[58]),
        .S(reset));
  FDRE \cid_reg[11][4] 
       (.C(clk),
        .CE(\cid[11][4]_i_1_n_0 ),
        .D(\cid[11][4]_i_2_n_0 ),
        .Q(obs_cid[59]),
        .R(reset));
  FDSE \cid_reg[1][0] 
       (.C(clk),
        .CE(\cid[1][4]_i_1_n_0 ),
        .D(\cid[1][0]_i_1_n_0 ),
        .Q(obs_cid[5]),
        .S(reset));
  FDRE \cid_reg[1][1] 
       (.C(clk),
        .CE(\cid[1][4]_i_1_n_0 ),
        .D(\cid[1][1]_i_1_n_0 ),
        .Q(obs_cid[6]),
        .R(reset));
  FDRE \cid_reg[1][2] 
       (.C(clk),
        .CE(\cid[1][4]_i_1_n_0 ),
        .D(\cid[1][2]_i_1_n_0 ),
        .Q(obs_cid[7]),
        .R(reset));
  FDRE \cid_reg[1][3] 
       (.C(clk),
        .CE(\cid[1][4]_i_1_n_0 ),
        .D(\cid[1][3]_i_1_n_0 ),
        .Q(obs_cid[8]),
        .R(reset));
  FDRE \cid_reg[1][4] 
       (.C(clk),
        .CE(\cid[1][4]_i_1_n_0 ),
        .D(\cid[1][4]_i_2_n_0 ),
        .Q(obs_cid[9]),
        .R(reset));
  FDRE \cid_reg[2][0] 
       (.C(clk),
        .CE(\cid[2][4]_i_1_n_0 ),
        .D(\cid[2][0]_i_1_n_0 ),
        .Q(obs_cid[10]),
        .R(reset));
  FDSE \cid_reg[2][1] 
       (.C(clk),
        .CE(\cid[2][4]_i_1_n_0 ),
        .D(\cid[2][1]_i_1_n_0 ),
        .Q(obs_cid[11]),
        .S(reset));
  FDRE \cid_reg[2][2] 
       (.C(clk),
        .CE(\cid[2][4]_i_1_n_0 ),
        .D(\cid[2][2]_i_1_n_0 ),
        .Q(obs_cid[12]),
        .R(reset));
  FDRE \cid_reg[2][3] 
       (.C(clk),
        .CE(\cid[2][4]_i_1_n_0 ),
        .D(\cid[2][3]_i_1_n_0 ),
        .Q(obs_cid[13]),
        .R(reset));
  FDRE \cid_reg[2][4] 
       (.C(clk),
        .CE(\cid[2][4]_i_1_n_0 ),
        .D(\cid[2][4]_i_2_n_0 ),
        .Q(obs_cid[14]),
        .R(reset));
  FDSE \cid_reg[3][0] 
       (.C(clk),
        .CE(\cid[3][4]_i_1_n_0 ),
        .D(\cid[3][0]_i_1_n_0 ),
        .Q(obs_cid[15]),
        .S(reset));
  FDSE \cid_reg[3][1] 
       (.C(clk),
        .CE(\cid[3][4]_i_1_n_0 ),
        .D(\cid[3][1]_i_1_n_0 ),
        .Q(obs_cid[16]),
        .S(reset));
  FDRE \cid_reg[3][2] 
       (.C(clk),
        .CE(\cid[3][4]_i_1_n_0 ),
        .D(\cid[3][2]_i_1_n_0 ),
        .Q(obs_cid[17]),
        .R(reset));
  FDRE \cid_reg[3][3] 
       (.C(clk),
        .CE(\cid[3][4]_i_1_n_0 ),
        .D(\cid[3][3]_i_1_n_0 ),
        .Q(obs_cid[18]),
        .R(reset));
  FDRE \cid_reg[3][4] 
       (.C(clk),
        .CE(\cid[3][4]_i_1_n_0 ),
        .D(\cid[3][4]_i_2_n_0 ),
        .Q(obs_cid[19]),
        .R(reset));
  FDRE \cid_reg[4][0] 
       (.C(clk),
        .CE(\cid[4][4]_i_1_n_0 ),
        .D(\cid[4][0]_i_1_n_0 ),
        .Q(obs_cid[20]),
        .R(reset));
  FDRE \cid_reg[4][1] 
       (.C(clk),
        .CE(\cid[4][4]_i_1_n_0 ),
        .D(\cid[4][1]_i_1_n_0 ),
        .Q(obs_cid[21]),
        .R(reset));
  FDSE \cid_reg[4][2] 
       (.C(clk),
        .CE(\cid[4][4]_i_1_n_0 ),
        .D(\cid[4][2]_i_1_n_0 ),
        .Q(obs_cid[22]),
        .S(reset));
  FDRE \cid_reg[4][3] 
       (.C(clk),
        .CE(\cid[4][4]_i_1_n_0 ),
        .D(\cid[4][3]_i_1_n_0 ),
        .Q(obs_cid[23]),
        .R(reset));
  FDRE \cid_reg[4][4] 
       (.C(clk),
        .CE(\cid[4][4]_i_1_n_0 ),
        .D(\cid[4][4]_i_2_n_0 ),
        .Q(obs_cid[24]),
        .R(reset));
  FDSE \cid_reg[5][0] 
       (.C(clk),
        .CE(\cid[5][4]_i_1_n_0 ),
        .D(\cid[5][0]_i_1_n_0 ),
        .Q(obs_cid[25]),
        .S(reset));
  FDRE \cid_reg[5][1] 
       (.C(clk),
        .CE(\cid[5][4]_i_1_n_0 ),
        .D(\cid[5][1]_i_1_n_0 ),
        .Q(obs_cid[26]),
        .R(reset));
  FDSE \cid_reg[5][2] 
       (.C(clk),
        .CE(\cid[5][4]_i_1_n_0 ),
        .D(\cid[5][2]_i_1_n_0 ),
        .Q(obs_cid[27]),
        .S(reset));
  FDRE \cid_reg[5][3] 
       (.C(clk),
        .CE(\cid[5][4]_i_1_n_0 ),
        .D(\cid[5][3]_i_1_n_0 ),
        .Q(obs_cid[28]),
        .R(reset));
  FDRE \cid_reg[5][4] 
       (.C(clk),
        .CE(\cid[5][4]_i_1_n_0 ),
        .D(\cid[5][4]_i_2_n_0 ),
        .Q(obs_cid[29]),
        .R(reset));
  FDRE \cid_reg[6][0] 
       (.C(clk),
        .CE(\cid[7][4]_i_1_n_0 ),
        .D(\cid[6][0]_i_1_n_0 ),
        .Q(obs_cid[30]),
        .R(reset));
  FDSE \cid_reg[6][1] 
       (.C(clk),
        .CE(\cid[7][4]_i_1_n_0 ),
        .D(\cid[6][1]_i_1_n_0 ),
        .Q(obs_cid[31]),
        .S(reset));
  FDSE \cid_reg[6][2] 
       (.C(clk),
        .CE(\cid[7][4]_i_1_n_0 ),
        .D(\cid[6][2]_i_1_n_0 ),
        .Q(obs_cid[32]),
        .S(reset));
  FDRE \cid_reg[6][3] 
       (.C(clk),
        .CE(\cid[7][4]_i_1_n_0 ),
        .D(\cid[6][3]_i_1_n_0 ),
        .Q(obs_cid[33]),
        .R(reset));
  FDRE \cid_reg[6][4] 
       (.C(clk),
        .CE(\cid[7][4]_i_1_n_0 ),
        .D(\cid[6][4]_i_1_n_0 ),
        .Q(obs_cid[34]),
        .R(reset));
  FDSE \cid_reg[7][0] 
       (.C(clk),
        .CE(\cid[7][4]_i_1_n_0 ),
        .D(\cid[7][0]_i_1_n_0 ),
        .Q(obs_cid[35]),
        .S(reset));
  FDSE \cid_reg[7][1] 
       (.C(clk),
        .CE(\cid[7][4]_i_1_n_0 ),
        .D(\cid[7][1]_i_1_n_0 ),
        .Q(obs_cid[36]),
        .S(reset));
  FDSE \cid_reg[7][2] 
       (.C(clk),
        .CE(\cid[7][4]_i_1_n_0 ),
        .D(\cid[7][2]_i_1_n_0 ),
        .Q(obs_cid[37]),
        .S(reset));
  FDRE \cid_reg[7][3] 
       (.C(clk),
        .CE(\cid[7][4]_i_1_n_0 ),
        .D(\cid[7][3]_i_1_n_0 ),
        .Q(obs_cid[38]),
        .R(reset));
  FDRE \cid_reg[7][4] 
       (.C(clk),
        .CE(\cid[7][4]_i_1_n_0 ),
        .D(\cid[7][4]_i_2_n_0 ),
        .Q(obs_cid[39]),
        .R(reset));
  FDRE \cid_reg[8][0] 
       (.C(clk),
        .CE(\cid[9][4]_i_1_n_0 ),
        .D(\cid[8][0]_i_1_n_0 ),
        .Q(obs_cid[40]),
        .R(reset));
  FDRE \cid_reg[8][1] 
       (.C(clk),
        .CE(\cid[9][4]_i_1_n_0 ),
        .D(\cid[8][1]_i_1_n_0 ),
        .Q(obs_cid[41]),
        .R(reset));
  FDRE \cid_reg[8][2] 
       (.C(clk),
        .CE(\cid[9][4]_i_1_n_0 ),
        .D(\cid[8][2]_i_1_n_0 ),
        .Q(obs_cid[42]),
        .R(reset));
  FDSE \cid_reg[8][3] 
       (.C(clk),
        .CE(\cid[9][4]_i_1_n_0 ),
        .D(\cid[8][3]_i_1_n_0 ),
        .Q(obs_cid[43]),
        .S(reset));
  FDRE \cid_reg[8][4] 
       (.C(clk),
        .CE(\cid[9][4]_i_1_n_0 ),
        .D(\cid[8][4]_i_1_n_0 ),
        .Q(obs_cid[44]),
        .R(reset));
  FDSE \cid_reg[9][0] 
       (.C(clk),
        .CE(\cid[9][4]_i_1_n_0 ),
        .D(\cid[9][0]_i_1_n_0 ),
        .Q(obs_cid[45]),
        .S(reset));
  FDRE \cid_reg[9][1] 
       (.C(clk),
        .CE(\cid[9][4]_i_1_n_0 ),
        .D(\cid[9][1]_i_1_n_0 ),
        .Q(obs_cid[46]),
        .R(reset));
  FDRE \cid_reg[9][2] 
       (.C(clk),
        .CE(\cid[9][4]_i_1_n_0 ),
        .D(\cid[9][2]_i_1_n_0 ),
        .Q(obs_cid[47]),
        .R(reset));
  FDSE \cid_reg[9][3] 
       (.C(clk),
        .CE(\cid[9][4]_i_1_n_0 ),
        .D(\cid[9][3]_i_1_n_0 ),
        .Q(obs_cid[48]),
        .S(reset));
  FDRE \cid_reg[9][4] 
       (.C(clk),
        .CE(\cid[9][4]_i_1_n_0 ),
        .D(\cid[9][4]_i_2_n_0 ),
        .Q(obs_cid[49]),
        .R(reset));
  LUT2 #(
    .INIT(4'h2)) 
    \commit_onehot[0]_i_1 
       (.I0(obs_ecorr[2]),
        .I1(reset),
        .O(\commit_onehot[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair125" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \commit_onehot[1]_i_1 
       (.I0(obs_ecorr[9]),
        .I1(reset),
        .O(\commit_onehot[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair125" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \commit_onehot[2]_i_1 
       (.I0(obs_ecorr[10]),
        .I1(reset),
        .O(\commit_onehot[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair124" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \commit_onehot[3]_i_1 
       (.I0(obs_ecorr[11]),
        .I1(reset),
        .O(\commit_onehot[3]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hF7)) 
    \commit_onehot[4]_i_1 
       (.I0(stage__0[1]),
        .I1(stage__0[2]),
        .I2(stage__0[0]),
        .O(\commit_onehot[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair124" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \commit_onehot[4]_i_2 
       (.I0(obs_ecorr[12]),
        .I1(reset),
        .O(\commit_onehot[4]_i_2_n_0 ));
  FDRE \commit_onehot_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\commit_onehot[0]_i_1_n_0 ),
        .Q(commit_onehot[0]),
        .R(\commit_onehot[4]_i_1_n_0 ));
  FDRE \commit_onehot_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\commit_onehot[1]_i_1_n_0 ),
        .Q(commit_onehot[1]),
        .R(\commit_onehot[4]_i_1_n_0 ));
  FDRE \commit_onehot_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\commit_onehot[2]_i_1_n_0 ),
        .Q(commit_onehot[2]),
        .R(\commit_onehot[4]_i_1_n_0 ));
  FDRE \commit_onehot_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\commit_onehot[3]_i_1_n_0 ),
        .Q(commit_onehot[3]),
        .R(\commit_onehot[4]_i_1_n_0 ));
  FDRE \commit_onehot_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\commit_onehot[4]_i_2_n_0 ),
        .Q(commit_onehot[4]),
        .R(\commit_onehot[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h1E)) 
    \dbg_stage[0]_i_1 
       (.I0(\FSM_sequential_stage_reg[1]_rep_n_0 ),
        .I1(stage__0[2]),
        .I2(stage__0[0]),
        .O(stage_reg[0]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h34)) 
    \dbg_stage[1]_i_1 
       (.I0(stage__0[0]),
        .I1(\FSM_sequential_stage_reg[1]_rep_n_0 ),
        .I2(stage__0[2]),
        .O(stage_reg[1]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'h54)) 
    \dbg_stage[2]_i_1 
       (.I0(stage__0[2]),
        .I1(stage__0[0]),
        .I2(\FSM_sequential_stage_reg[1]_rep_n_0 ),
        .O(\dbg_stage[2]_i_1_n_0 ));
  FDRE \dbg_stage_reg[0] 
       (.C(clk),
        .CE(\busy[11]_i_1_n_0 ),
        .D(stage_reg[0]),
        .Q(dbg_stage[0]),
        .R(reset));
  FDRE \dbg_stage_reg[1] 
       (.C(clk),
        .CE(\busy[11]_i_1_n_0 ),
        .D(stage_reg[1]),
        .Q(dbg_stage[1]),
        .R(reset));
  FDRE \dbg_stage_reg[2] 
       (.C(clk),
        .CE(\busy[11]_i_1_n_0 ),
        .D(\dbg_stage[2]_i_1_n_0 ),
        .Q(dbg_stage[2]),
        .R(reset));
  FDRE \dbg_step_reg[0] 
       (.C(clk),
        .CE(\busy[11]_i_1_n_0 ),
        .D(\step_cnt_reg_n_0_[0] ),
        .Q(dbg_step[0]),
        .R(reset));
  FDRE \dbg_step_reg[1] 
       (.C(clk),
        .CE(\busy[11]_i_1_n_0 ),
        .D(\step_cnt_reg_n_0_[1] ),
        .Q(dbg_step[1]),
        .R(reset));
  FDRE \dbg_step_reg[2] 
       (.C(clk),
        .CE(\busy[11]_i_1_n_0 ),
        .D(\step_cnt_reg_n_0_[2] ),
        .Q(dbg_step[2]),
        .R(reset));
  FDRE \dbg_step_reg[3] 
       (.C(clk),
        .CE(\busy[11]_i_1_n_0 ),
        .D(\step_cnt_reg_n_0_[3] ),
        .Q(dbg_step[3]),
        .R(reset));
  FDRE \dbg_step_reg[4] 
       (.C(clk),
        .CE(\busy[11]_i_1_n_0 ),
        .D(\step_cnt_reg_n_0_[4] ),
        .Q(dbg_step[4]),
        .R(reset));
  FDRE \dbg_step_reg[5] 
       (.C(clk),
        .CE(\busy[11]_i_1_n_0 ),
        .D(\step_cnt_reg_n_0_[5] ),
        .Q(dbg_step[5]),
        .R(reset));
  FDRE \dbg_step_reg[6] 
       (.C(clk),
        .CE(\busy[11]_i_1_n_0 ),
        .D(\step_cnt_reg_n_0_[6] ),
        .Q(dbg_step[6]),
        .R(reset));
  FDRE \dbg_step_reg[7] 
       (.C(clk),
        .CE(\busy[11]_i_1_n_0 ),
        .D(\step_cnt_reg_n_0_[7] ),
        .Q(dbg_step[7]),
        .R(reset));
  FDRE dbg_valid_reg
       (.C(clk),
        .CE(1'b1),
        .D(\busy[11]_i_1_n_0 ),
        .Q(dbg_valid),
        .R(reset));
  LUT5 #(
    .INIT(32'hBB9F0060)) 
    \defect[0]_i_1 
       (.I0(stage__0[0]),
        .I1(stage__0[2]),
        .I2(\defect[0]_i_2_n_0 ),
        .I3(stage__0[1]),
        .I4(obs_defect[0]),
        .O(\defect[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \defect[0]_i_2 
       (.I0(\defect[6]_i_2_n_0 ),
        .I1(\defect[6]_i_3_n_0 ),
        .I2(obs_defect[6]),
        .O(\defect[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF022F0DDF000F0FF)) 
    \defect[10]_i_1 
       (.I0(obs_defect[10]),
        .I1(\active[10]_i_2_n_0 ),
        .I2(obs_defect[8]),
        .I3(\FSM_sequential_stage_reg[1]_rep__0_n_0 ),
        .I4(\defect[10]_i_2_n_0 ),
        .I5(\active[10]_i_3_n_0 ),
        .O(\defect[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h0020FFDF)) 
    \defect[10]_i_2 
       (.I0(\ptr[8][0]_i_2_n_0 ),
        .I1(\busy[2]_i_3_n_0 ),
        .I2(obs_defect[8]),
        .I3(\ptr[8][1]_i_2_n_0 ),
        .I4(\ecorr[10]_i_2_n_0 ),
        .O(\defect[10]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT4 #(
    .INIT(16'h8BB8)) 
    \defect[11]_i_1 
       (.I0(obs_defect[9]),
        .I1(\FSM_sequential_stage_reg[1]_rep__0_n_0 ),
        .I2(\active[11]_i_2_n_0 ),
        .I3(\defect[11]_i_2_n_0 ),
        .O(\defect[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT5 #(
    .INIT(32'h56555555)) 
    \defect[11]_i_2 
       (.I0(\ecorr[10]_i_3_n_0 ),
        .I1(\busy[3]_i_5_n_0 ),
        .I2(\busy[3]_i_4_n_0 ),
        .I3(\busy[3]_i_3_n_0 ),
        .I4(obs_defect[9]),
        .O(\defect[11]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hBB9F0060)) 
    \defect[1]_i_1 
       (.I0(stage__0[0]),
        .I1(stage__0[2]),
        .I2(\defect[1]_i_2_n_0 ),
        .I3(stage__0[1]),
        .I4(obs_defect[1]),
        .O(\defect[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \defect[1]_i_2 
       (.I0(\busy[7]_i_3_n_0 ),
        .I1(\defect[7]_i_2_n_0 ),
        .I2(obs_defect[7]),
        .O(\defect[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFF9BFB940460006)) 
    \defect[2]_i_1 
       (.I0(stage__0[0]),
        .I1(stage__0[2]),
        .I2(stage__0[1]),
        .I3(\defect[2]_i_2_n_0 ),
        .I4(obs_defect[0]),
        .I5(obs_defect[2]),
        .O(\defect[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT4 #(
    .INIT(16'hDFFF)) 
    \defect[2]_i_2 
       (.I0(obs_defect[8]),
        .I1(\busy[2]_i_3_n_0 ),
        .I2(\ptr[8][0]_i_2_n_0 ),
        .I3(\ptr[8][1]_i_2_n_0 ),
        .O(\defect[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFF9BFB940460006)) 
    \defect[3]_i_1 
       (.I0(stage__0[0]),
        .I1(stage__0[2]),
        .I2(stage__0[1]),
        .I3(\defect[3]_i_2_n_0 ),
        .I4(obs_defect[1]),
        .I5(obs_defect[3]),
        .O(\defect[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFF7F)) 
    \defect[3]_i_2 
       (.I0(\busy[3]_i_3_n_0 ),
        .I1(\busy[3]_i_4_n_0 ),
        .I2(obs_defect[9]),
        .I3(\busy[3]_i_5_n_0 ),
        .O(\defect[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFF9FBB9F44600060)) 
    \defect[4]_i_1 
       (.I0(stage__0[0]),
        .I1(stage__0[2]),
        .I2(\defect[4]_i_2_n_0 ),
        .I3(stage__0[1]),
        .I4(obs_defect[2]),
        .I5(obs_defect[4]),
        .O(\defect[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \defect[4]_i_2 
       (.I0(\active[10]_i_3_n_0 ),
        .I1(\active[10]_i_2_n_0 ),
        .I2(obs_defect[10]),
        .O(\defect[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFF9FBB9F44600060)) 
    \defect[5]_i_1 
       (.I0(stage__0[0]),
        .I1(stage__0[2]),
        .I2(\defect[5]_i_2_n_0 ),
        .I3(stage__0[1]),
        .I4(obs_defect[3]),
        .I5(obs_defect[5]),
        .O(\defect[5]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \defect[5]_i_2 
       (.I0(\busy[5]_i_2_n_0 ),
        .I1(\busy[5]_i_3_n_0 ),
        .O(\defect[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF088F077F000F0FF)) 
    \defect[6]_i_1 
       (.I0(\defect[6]_i_2_n_0 ),
        .I1(\defect[6]_i_3_n_0 ),
        .I2(syndrome[0]),
        .I3(\FSM_sequential_stage_reg[1]_rep__0_n_0 ),
        .I4(\defect[6]_i_4_n_0 ),
        .I5(obs_defect[6]),
        .O(\defect[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000770777777777)) 
    \defect[6]_i_2 
       (.I0(\^obs_ptr [18]),
        .I1(\cid[8][3]_i_3_n_0 ),
        .I2(\cid[6][4]_i_2_n_0 ),
        .I3(\cid[6][3]_i_4_n_0 ),
        .I4(\defect[6]_i_5_n_0 ),
        .I5(\defect[6]_i_6_n_0 ),
        .O(\defect[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000770777777777)) 
    \defect[6]_i_3 
       (.I0(\^obs_ptr [19]),
        .I1(\cid[8][3]_i_3_n_0 ),
        .I2(\cid[6][4]_i_2_n_0 ),
        .I3(\cid[6][3]_i_4_n_0 ),
        .I4(\defect[6]_i_7_n_0 ),
        .I5(\defect[6]_i_6_n_0 ),
        .O(\defect[6]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT5 #(
    .INIT(32'h55559555)) 
    \defect[6]_i_4 
       (.I0(\ecorr[3]_i_2_n_0 ),
        .I1(obs_defect[8]),
        .I2(\busy[2]_i_3_n_0 ),
        .I3(\ptr[8][1]_i_2_n_0 ),
        .I4(\ptr[8][0]_i_2_n_0 ),
        .O(\defect[6]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h00E0E0E0)) 
    \defect[6]_i_5 
       (.I0(\^obs_ptr [18]),
        .I1(\defect[6]_i_8_n_0 ),
        .I2(\cid[6][4]_i_4_n_0 ),
        .I3(\cid[6][4]_i_5_n_0 ),
        .I4(\cid[6][3]_i_6_n_0 ),
        .O(\defect[6]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT4 #(
    .INIT(16'h5155)) 
    \defect[6]_i_6 
       (.I0(\cid[8][3]_i_3_n_0 ),
        .I1(\cid[10][1]_i_3_n_0 ),
        .I2(obs_unrooted[6]),
        .I3(\cid[6][4]_i_2_n_0 ),
        .O(\defect[6]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h8F888888)) 
    \defect[6]_i_7 
       (.I0(\cid[6][4]_i_5_n_0 ),
        .I1(\cid[6][3]_i_6_n_0 ),
        .I2(\defect[6]_i_8_n_0 ),
        .I3(\cid[6][4]_i_4_n_0 ),
        .I4(\^obs_ptr [19]),
        .O(\defect[6]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h20)) 
    \defect[6]_i_8 
       (.I0(\cid[6][3]_i_9_n_0 ),
        .I1(obs_growth[0]),
        .I2(obs_growth[1]),
        .O(\defect[6]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hF022F000F0DDF0FF)) 
    \defect[7]_i_1 
       (.I0(\defect[7]_i_2_n_0 ),
        .I1(\ptr[7][1]_i_1_n_0 ),
        .I2(syndrome[1]),
        .I3(\FSM_sequential_stage_reg[1]_rep__0_n_0 ),
        .I4(obs_defect[7]),
        .I5(\defect[7]_i_3_n_0 ),
        .O(\defect[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0070707077777777)) 
    \defect[7]_i_2 
       (.I0(\cid[9][3]_i_3_n_0 ),
        .I1(\^obs_ptr [21]),
        .I2(\defect[7]_i_4_n_0 ),
        .I3(\cid[7][4]_i_4_n_0 ),
        .I4(\ptr[7][1]_i_3_n_0 ),
        .I5(\ptr[7][1]_i_4_n_0 ),
        .O(\defect[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBB4BBBBBBBBBBBBB)) 
    \defect[7]_i_3 
       (.I0(\defect[7]_i_5_n_0 ),
        .I1(\defect[6]_i_2_n_0 ),
        .I2(\busy[3]_i_4_n_0 ),
        .I3(\busy[3]_i_3_n_0 ),
        .I4(\busy[3]_i_5_n_0 ),
        .I5(obs_defect[9]),
        .O(\defect[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0FFF00F30AFB00F3)) 
    \defect[7]_i_4 
       (.I0(\cid[7][3]_i_6_n_0 ),
        .I1(\^obs_ptr [21]),
        .I2(\cid[7][4]_i_7_n_0 ),
        .I3(\ptr[7][1]_i_5_n_0 ),
        .I4(\cid[7][4]_i_6_n_0 ),
        .I5(\ptr[7][1]_i_6_n_0 ),
        .O(\defect[7]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \defect[7]_i_5 
       (.I0(\defect[6]_i_3_n_0 ),
        .I1(obs_defect[6]),
        .O(\defect[7]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hF077F088)) 
    \defect[8]_i_1 
       (.I0(\defect[8]_i_2_n_0 ),
        .I1(\defect[8]_i_3_n_0 ),
        .I2(obs_defect[6]),
        .I3(\FSM_sequential_stage_reg[1]_rep__0_n_0 ),
        .I4(\defect[8]_i_4_n_0 ),
        .O(\defect[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFAFAEAAAEAAAEAA)) 
    \defect[8]_i_10 
       (.I0(\cid[10][1]_i_3_n_0 ),
        .I1(\cid[8][4]_i_4_n_0 ),
        .I2(obs_unrooted[8]),
        .I3(\cid[8][3]_i_3_n_0 ),
        .I4(\cid[10][3]_i_2_n_0 ),
        .I5(\cid[8][4]_i_7_n_0 ),
        .O(\defect[8]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \defect[8]_i_11 
       (.I0(obs_growth[2]),
        .I1(obs_growth[3]),
        .I2(\ptr[8][2]_i_12_n_0 ),
        .O(\defect[8]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hF7F7F7F70000F700)) 
    \defect[8]_i_12 
       (.I0(\cid[8][4]_i_14_n_0 ),
        .I1(\cid[11][1]_i_3_n_0 ),
        .I2(obs_unrooted[8]),
        .I3(\^obs_ptr [24]),
        .I4(\cid[8][4]_i_12_n_0 ),
        .I5(\defect[8]_i_11_n_0 ),
        .O(\defect[8]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h082A082A0808082A)) 
    \defect[8]_i_2 
       (.I0(obs_defect[8]),
        .I1(\cid[10][1]_i_3_n_0 ),
        .I2(\^obs_ptr [26]),
        .I3(\ptr[8][2]_i_2_n_0 ),
        .I4(\cid[8][4]_i_4_n_0 ),
        .I5(\ptr[8][2]_i_3_n_0 ),
        .O(\defect[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000022320030)) 
    \defect[8]_i_3 
       (.I0(\defect[8]_i_5_n_0 ),
        .I1(\defect[8]_i_6_n_0 ),
        .I2(\cid[8][4]_i_4_n_0 ),
        .I3(\ptr[8][2]_i_3_n_0 ),
        .I4(\defect[8]_i_7_n_0 ),
        .I5(\defect[8]_i_8_n_0 ),
        .O(\defect[8]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT4 #(
    .INIT(16'h4BB4)) 
    \defect[8]_i_4 
       (.I0(\defect[8]_i_9_n_0 ),
        .I1(obs_defect[9]),
        .I2(\ecorr[9]_i_2_n_0 ),
        .I3(\ecorr[5]_i_3_n_0 ),
        .O(\defect[8]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBBABBAAAAAAAA)) 
    \defect[8]_i_5 
       (.I0(\defect[8]_i_10_n_0 ),
        .I1(\ptr[8][2]_i_8_n_0 ),
        .I2(\cid[8][4]_i_9_n_0 ),
        .I3(\^obs_ptr [25]),
        .I4(\defect[8]_i_11_n_0 ),
        .I5(\ptr[8][2]_i_4_n_0 ),
        .O(\defect[8]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \defect[8]_i_6 
       (.I0(\^obs_ptr [25]),
        .I1(obs_cid[43]),
        .I2(obs_cid[42]),
        .I3(obs_cid[41]),
        .I4(obs_cid[44]),
        .I5(obs_cid[40]),
        .O(\defect[8]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT4 #(
    .INIT(16'hFBAA)) 
    \defect[8]_i_7 
       (.I0(\defect[8]_i_10_n_0 ),
        .I1(\defect[8]_i_12_n_0 ),
        .I2(\ptr[8][2]_i_8_n_0 ),
        .I3(\ptr[8][2]_i_4_n_0 ),
        .O(\defect[8]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \defect[8]_i_8 
       (.I0(\^obs_ptr [24]),
        .I1(obs_cid[43]),
        .I2(obs_cid[42]),
        .I3(obs_cid[41]),
        .I4(obs_cid[44]),
        .I5(obs_cid[40]),
        .O(\defect[8]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFEFEFEFFFEFFFEFF)) 
    \defect[8]_i_9 
       (.I0(\busy[3]_i_4_n_0 ),
        .I1(\busy[3]_i_5_n_0 ),
        .I2(\ptr[9][1]_i_2_n_0 ),
        .I3(\ptr[9][1]_i_3_n_0 ),
        .I4(\ptr[9][2]_i_4_n_0 ),
        .I5(\ptr[9][2]_i_3_n_0 ),
        .O(\defect[8]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hB88B8B8B)) 
    \defect[9]_i_1 
       (.I0(obs_defect[7]),
        .I1(\FSM_sequential_stage_reg[1]_rep__0_n_0 ),
        .I2(\defect[9]_i_2_n_0 ),
        .I3(\defect[9]_i_3_n_0 ),
        .I4(obs_defect[9]),
        .O(\defect[9]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hEF1010EF)) 
    \defect[9]_i_2 
       (.I0(\ptr[8][1]_i_2_n_0 ),
        .I1(\ptr[8][0]_i_2_n_0 ),
        .I2(\defect[8]_i_2_n_0 ),
        .I3(\ecorr[12]_i_2_n_0 ),
        .I4(\ecorr[8]_i_3_n_0 ),
        .O(\defect[9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0202020002000200)) 
    \defect[9]_i_3 
       (.I0(\busy[3]_i_4_n_0 ),
        .I1(\busy[3]_i_5_n_0 ),
        .I2(\ptr[9][1]_i_2_n_0 ),
        .I3(\ptr[9][1]_i_3_n_0 ),
        .I4(\ptr[9][2]_i_4_n_0 ),
        .I5(\ptr[9][2]_i_3_n_0 ),
        .O(\defect[9]_i_3_n_0 ));
  FDRE \defect_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\defect[0]_i_1_n_0 ),
        .Q(obs_defect[0]),
        .R(reset));
  FDRE \defect_reg[10] 
       (.C(clk),
        .CE(\cid[9][4]_i_1_n_0 ),
        .D(\defect[10]_i_1_n_0 ),
        .Q(obs_defect[10]),
        .R(reset));
  FDRE \defect_reg[11] 
       (.C(clk),
        .CE(\cid[9][4]_i_1_n_0 ),
        .D(\defect[11]_i_1_n_0 ),
        .Q(obs_defect[11]),
        .R(reset));
  FDRE \defect_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\defect[1]_i_1_n_0 ),
        .Q(obs_defect[1]),
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
        .CE(\cid[9][4]_i_1_n_0 ),
        .D(\defect[6]_i_1_n_0 ),
        .Q(obs_defect[6]),
        .R(reset));
  FDRE \defect_reg[7] 
       (.C(clk),
        .CE(\cid[9][4]_i_1_n_0 ),
        .D(\defect[7]_i_1_n_0 ),
        .Q(obs_defect[7]),
        .R(reset));
  FDRE \defect_reg[8] 
       (.C(clk),
        .CE(\cid[9][4]_i_1_n_0 ),
        .D(\defect[8]_i_1_n_0 ),
        .Q(obs_defect[8]),
        .R(reset));
  FDRE \defect_reg[9] 
       (.C(clk),
        .CE(\cid[9][4]_i_1_n_0 ),
        .D(\defect[9]_i_1_n_0 ),
        .Q(obs_defect[9]),
        .R(reset));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    done_i_1
       (.I0(stage__0[2]),
        .I1(stage__0[0]),
        .I2(\FSM_sequential_stage_reg[1]_rep__0_n_0 ),
        .I3(\busy[9]_i_1_n_0 ),
        .I4(done_i_2_n_0),
        .I5(\busy[8]_i_1_n_0 ),
        .O(done_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    done_i_2
       (.I0(done_i_3_n_0),
        .I1(\busy[10]_i_1_n_0 ),
        .I2(\busy[6]_i_1_n_0 ),
        .I3(\busy[7]_i_1_n_0 ),
        .I4(\busy[11]_i_2_n_0 ),
        .I5(done_i_4_n_0),
        .O(done_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'hE)) 
    done_i_3
       (.I0(\busy[1]_i_1_n_0 ),
        .I1(\busy[2]_i_1_n_0 ),
        .O(done_i_3_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    done_i_4
       (.I0(\busy[3]_i_1_n_0 ),
        .I1(\busy[4]_i_1_n_0 ),
        .I2(c_busy),
        .I3(\busy[5]_i_1_n_0 ),
        .O(done_i_4_n_0));
  FDRE done_reg
       (.C(clk),
        .CE(1'b1),
        .D(done_i_1_n_0),
        .Q(done),
        .R(reset));
  LUT5 #(
    .INIT(32'hBB9F0060)) 
    \ecorr[0]_i_1 
       (.I0(stage__0[0]),
        .I1(stage__0[2]),
        .I2(\defect[0]_i_2_n_0 ),
        .I3(stage__0[1]),
        .I4(obs_ecorr[0]),
        .O(\ecorr[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBF33F88880CC0)) 
    \ecorr[10]_i_1 
       (.I0(obs_ecorr[6]),
        .I1(\cid[9][4]_i_1_n_0 ),
        .I2(\ecorr[10]_i_2_n_0 ),
        .I3(\ecorr[10]_i_3_n_0 ),
        .I4(\FSM_sequential_stage_reg[1]_rep__0_n_0 ),
        .I5(obs_ecorr[10]),
        .O(\ecorr[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT4 #(
    .INIT(16'h0020)) 
    \ecorr[10]_i_2 
       (.I0(obs_defect[11]),
        .I1(\ptr[11][0]_i_2_n_0 ),
        .I2(\ptr[11][1]_i_2_n_0 ),
        .I3(\ptr[11][2]_i_2_n_0 ),
        .O(\ecorr[10]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT4 #(
    .INIT(16'h0040)) 
    \ecorr[10]_i_3 
       (.I0(\active[10]_i_2_n_0 ),
        .I1(obs_defect[10]),
        .I2(\ptr[10][1]_i_2_n_0 ),
        .I3(\ptr[10][2]_i_2_n_0 ),
        .O(\ecorr[10]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFF9FBB9F44600060)) 
    \ecorr[11]_i_1 
       (.I0(stage__0[0]),
        .I1(stage__0[2]),
        .I2(\defect[5]_i_2_n_0 ),
        .I3(stage__0[1]),
        .I4(obs_ecorr[7]),
        .I5(obs_ecorr[11]),
        .O(\ecorr[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBF33F88880CC0)) 
    \ecorr[12]_i_1 
       (.I0(obs_ecorr[8]),
        .I1(\cid[9][4]_i_1_n_0 ),
        .I2(\ecorr[12]_i_2_n_0 ),
        .I3(\ecorr[12]_i_3_n_0 ),
        .I4(\FSM_sequential_stage_reg[1]_rep__0_n_0 ),
        .I5(obs_ecorr[12]),
        .O(\ecorr[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \ecorr[12]_i_2 
       (.I0(\ptr[11][2]_i_2_n_0 ),
        .I1(obs_defect[11]),
        .I2(\ptr[11][1]_i_2_n_0 ),
        .I3(\ptr[11][0]_i_2_n_0 ),
        .O(\ecorr[12]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \ecorr[12]_i_3 
       (.I0(obs_defect[9]),
        .I1(\busy[3]_i_3_n_0 ),
        .I2(\busy[3]_i_4_n_0 ),
        .I3(\busy[3]_i_5_n_0 ),
        .O(\ecorr[12]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFF9BFB940460006)) 
    \ecorr[1]_i_1 
       (.I0(stage__0[0]),
        .I1(stage__0[2]),
        .I2(stage__0[1]),
        .I3(\defect[2]_i_2_n_0 ),
        .I4(obs_ecorr[0]),
        .I5(obs_ecorr[1]),
        .O(\ecorr[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF9FBB9F44600060)) 
    \ecorr[2]_i_1 
       (.I0(stage__0[0]),
        .I1(stage__0[2]),
        .I2(\defect[4]_i_2_n_0 ),
        .I3(stage__0[1]),
        .I4(obs_ecorr[1]),
        .I5(obs_ecorr[2]),
        .O(\ecorr[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBF99F00000660)) 
    \ecorr[3]_i_1 
       (.I0(stage__0[0]),
        .I1(stage__0[2]),
        .I2(\ecorr[3]_i_2_n_0 ),
        .I3(\ecorr[3]_i_3_n_0 ),
        .I4(\FSM_sequential_stage_reg[1]_rep__0_n_0 ),
        .I5(obs_ecorr[3]),
        .O(\ecorr[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \ecorr[3]_i_2 
       (.I0(obs_defect[7]),
        .I1(\defect[7]_i_2_n_0 ),
        .I2(\ptr[7][1]_i_1_n_0 ),
        .O(\ecorr[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ecorr[3]_i_3 
       (.I0(\defect[6]_i_2_n_0 ),
        .I1(\defect[7]_i_5_n_0 ),
        .O(\ecorr[3]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hBB9F0060)) 
    \ecorr[4]_i_1 
       (.I0(stage__0[0]),
        .I1(stage__0[2]),
        .I2(\defect[1]_i_2_n_0 ),
        .I3(stage__0[1]),
        .I4(obs_ecorr[4]),
        .O(\ecorr[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBF99F00000660)) 
    \ecorr[5]_i_1 
       (.I0(stage__0[0]),
        .I1(stage__0[2]),
        .I2(\ecorr[5]_i_2_n_0 ),
        .I3(\ecorr[5]_i_3_n_0 ),
        .I4(\FSM_sequential_stage_reg[1]_rep__0_n_0 ),
        .I5(obs_ecorr[5]),
        .O(\ecorr[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \ecorr[5]_i_2 
       (.I0(\ptr[8][0]_i_2_n_0 ),
        .I1(\ptr[8][1]_i_2_n_0 ),
        .I2(\busy[2]_i_3_n_0 ),
        .I3(obs_defect[8]),
        .O(\ecorr[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \ecorr[5]_i_3 
       (.I0(\defect[6]_i_2_n_0 ),
        .I1(\defect[7]_i_5_n_0 ),
        .O(\ecorr[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBF33F88880CC0)) 
    \ecorr[6]_i_1 
       (.I0(obs_ecorr[3]),
        .I1(\cid[9][4]_i_1_n_0 ),
        .I2(\ecorr[6]_i_2_n_0 ),
        .I3(\ecorr[6]_i_3_n_0 ),
        .I4(\FSM_sequential_stage_reg[1]_rep__0_n_0 ),
        .I5(obs_ecorr[6]),
        .O(\ecorr[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ecorr[6]_i_2 
       (.I0(obs_defect[9]),
        .I1(\defect[8]_i_9_n_0 ),
        .O(\ecorr[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \ecorr[6]_i_3 
       (.I0(\defect[8]_i_2_n_0 ),
        .I1(\ptr[8][0]_i_2_n_0 ),
        .I2(\ptr[8][1]_i_2_n_0 ),
        .O(\ecorr[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFF9BFB940460006)) 
    \ecorr[7]_i_1 
       (.I0(stage__0[0]),
        .I1(stage__0[2]),
        .I2(stage__0[1]),
        .I3(\defect[3]_i_2_n_0 ),
        .I4(obs_ecorr[4]),
        .I5(obs_ecorr[7]),
        .O(\ecorr[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB9BFBFB906000006)) 
    \ecorr[8]_i_1 
       (.I0(stage__0[0]),
        .I1(stage__0[2]),
        .I2(\FSM_sequential_stage_reg[1]_rep__0_n_0 ),
        .I3(\ecorr[8]_i_2_n_0 ),
        .I4(\ecorr[8]_i_3_n_0 ),
        .I5(obs_ecorr[8]),
        .O(\ecorr[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT4 #(
    .INIT(16'hF7FF)) 
    \ecorr[8]_i_2 
       (.I0(obs_defect[9]),
        .I1(\busy[3]_i_5_n_0 ),
        .I2(\busy[3]_i_3_n_0 ),
        .I3(\busy[3]_i_4_n_0 ),
        .O(\ecorr[8]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ecorr[8]_i_3 
       (.I0(\busy[7]_i_3_n_0 ),
        .I1(\defect[7]_i_2_n_0 ),
        .O(\ecorr[8]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hB3BFBFB38C80808C)) 
    \ecorr[9]_i_1 
       (.I0(obs_ecorr[5]),
        .I1(\cid[9][4]_i_1_n_0 ),
        .I2(\FSM_sequential_stage_reg[1]_rep__0_n_0 ),
        .I3(\ecorr[9]_i_2_n_0 ),
        .I4(\ecorr[9]_i_3_n_0 ),
        .I5(obs_ecorr[9]),
        .O(\ecorr[9]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT4 #(
    .INIT(16'h0020)) 
    \ecorr[9]_i_2 
       (.I0(obs_defect[10]),
        .I1(\active[10]_i_2_n_0 ),
        .I2(\ptr[10][2]_i_2_n_0 ),
        .I3(\ptr[10][1]_i_2_n_0 ),
        .O(\ecorr[9]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT4 #(
    .INIT(16'hFBFF)) 
    \ecorr[9]_i_3 
       (.I0(\ptr[8][1]_i_2_n_0 ),
        .I1(obs_defect[8]),
        .I2(\busy[2]_i_3_n_0 ),
        .I3(\ptr[8][0]_i_2_n_0 ),
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
  FDRE \ecorr_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\ecorr[1]_i_1_n_0 ),
        .Q(obs_ecorr[1]),
        .R(reset));
  FDRE \ecorr_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\ecorr[2]_i_1_n_0 ),
        .Q(obs_ecorr[2]),
        .R(reset));
  FDRE \ecorr_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\ecorr[3]_i_1_n_0 ),
        .Q(obs_ecorr[3]),
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
       (.I0(obs_grown[6]),
        .I1(\grown[0]_i_2_n_0 ),
        .I2(\FSM_sequential_stage_reg[1]_rep__0_n_0 ),
        .I3(\grown[0]_i_3_n_0 ),
        .I4(\grown[5]_i_4_n_0 ),
        .I5(obs_grown[0]),
        .O(\grown[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h40000000)) 
    \grown[0]_i_2 
       (.I0(\FSM_sequential_stage_reg[1]_rep__0_n_0 ),
        .I1(stage__0[0]),
        .I2(obs_whole[0]),
        .I3(obs_active[0]),
        .I4(stage__0[2]),
        .O(\grown[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000000D000000)) 
    \grown[0]_i_3 
       (.I0(\cid[8][3]_i_3_n_0 ),
        .I1(obs_unrooted[0]),
        .I2(\cid[2][3]_i_2_n_0 ),
        .I3(\cid[6][4]_i_6_n_0 ),
        .I4(\grown[0]_i_4_n_0 ),
        .I5(obs_grown[0]),
        .O(\grown[0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \grown[0]_i_4 
       (.I0(obs_grown[6]),
        .I1(stage__0[2]),
        .I2(stage__0[0]),
        .I3(\FSM_sequential_stage_reg[1]_rep__0_n_0 ),
        .O(\grown[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAABABBBBAA8A8888)) 
    \grown[10]_i_1 
       (.I0(\c_grown[10] ),
        .I1(\grown[10]_i_3_n_0 ),
        .I2(\cid[10][3]_i_2_n_0 ),
        .I3(\grown[11]_i_4_n_0 ),
        .I4(\cid[9][4]_i_1_n_0 ),
        .I5(obs_grown[10]),
        .O(\grown[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0B0B0B0BFB0BBBBB)) 
    \grown[10]_i_2 
       (.I0(\grown[10]_i_4_n_0 ),
        .I1(\grown[10]_i_5_n_0 ),
        .I2(stage__0[2]),
        .I3(\grown[10]_i_6_n_0 ),
        .I4(stage__0[0]),
        .I5(\FSM_sequential_stage_reg[1]_rep__0_n_0 ),
        .O(\c_grown[10] ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'h40000000)) 
    \grown[10]_i_3 
       (.I0(\FSM_sequential_stage_reg[1]_rep__0_n_0 ),
        .I1(stage__0[0]),
        .I2(obs_whole[10]),
        .I3(obs_active[10]),
        .I4(stage__0[2]),
        .O(\grown[10]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h40440000)) 
    \grown[10]_i_4 
       (.I0(\grown[4]_i_4_n_0 ),
        .I1(obs_grown[8]),
        .I2(obs_unrooted[10]),
        .I3(\cid[10][1]_i_3_n_0 ),
        .I4(\cid[10][2]_i_3_n_0 ),
        .O(\grown[10]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h5555555555554555)) 
    \grown[10]_i_5 
       (.I0(\grown[10]_i_7_n_0 ),
        .I1(\grown[10]_i_8_n_0 ),
        .I2(obs_grown[11]),
        .I3(stage__0[2]),
        .I4(stage__0[0]),
        .I5(\FSM_sequential_stage_reg[1]_rep__0_n_0 ),
        .O(\grown[10]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair120" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \grown[10]_i_6 
       (.I0(obs_whole[10]),
        .I1(obs_active[10]),
        .O(\grown[10]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0D00FFFF0000)) 
    \grown[10]_i_7 
       (.I0(\cid[4][4]_i_4_n_0 ),
        .I1(obs_unrooted[10]),
        .I2(\grown[4]_i_4_n_0 ),
        .I3(obs_grown[4]),
        .I4(obs_grown[10]),
        .I5(\ptr[4][1]_i_3_n_0 ),
        .O(\grown[10]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT3 #(
    .INIT(8'h4F)) 
    \grown[10]_i_8 
       (.I0(obs_unrooted[10]),
        .I1(\cid[11][2]_i_3_n_0 ),
        .I2(\cid[10][2]_i_6_n_0 ),
        .O(\grown[10]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hEFEEEFEFECEEECEC)) 
    \grown[11]_i_1 
       (.I0(\grown[11]_i_2_n_0 ),
        .I1(\grown[11]_i_3_n_0 ),
        .I2(\grown[11]_i_4_n_0 ),
        .I3(\cid[11][2]_i_3_n_0 ),
        .I4(\cid[9][4]_i_1_n_0 ),
        .I5(obs_grown[11]),
        .O(\grown[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h80800080AAAAAAAA)) 
    \grown[11]_i_2 
       (.I0(\grown[11]_i_5_n_0 ),
        .I1(\grown[11]_i_6_n_0 ),
        .I2(\cid[11][3]_i_5_n_0 ),
        .I3(\cid[11][1]_i_3_n_0 ),
        .I4(obs_unrooted[11]),
        .I5(\grown[11]_i_7_n_0 ),
        .O(\grown[11]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'h40000000)) 
    \grown[11]_i_3 
       (.I0(\FSM_sequential_stage_reg[1]_rep__0_n_0 ),
        .I1(stage__0[0]),
        .I2(obs_whole[11]),
        .I3(obs_active[11]),
        .I4(stage__0[2]),
        .O(\grown[11]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \grown[11]_i_4 
       (.I0(stage__0[0]),
        .I1(stage__0[2]),
        .I2(\FSM_sequential_stage_reg[1]_rep__0_n_0 ),
        .O(\grown[11]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'h1F)) 
    \grown[11]_i_5 
       (.I0(stage__0[0]),
        .I1(\FSM_sequential_stage_reg[1]_rep__0_n_0 ),
        .I2(stage__0[2]),
        .O(\grown[11]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \grown[11]_i_6 
       (.I0(obs_grown[9]),
        .I1(stage__0[2]),
        .I2(stage__0[0]),
        .I3(\FSM_sequential_stage_reg[1]_rep__0_n_0 ),
        .O(\grown[11]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAAA2AAAAAAAAAAAA)) 
    \grown[11]_i_7 
       (.I0(\grown[11]_i_8_n_0 ),
        .I1(stage__0[2]),
        .I2(stage__0[0]),
        .I3(\FSM_sequential_stage_reg[1]_rep__0_n_0 ),
        .I4(obs_grown[5]),
        .I5(\grown[11]_i_9_n_0 ),
        .O(\grown[11]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h4555555545554555)) 
    \grown[11]_i_8 
       (.I0(obs_grown[11]),
        .I1(\grown[4]_i_4_n_0 ),
        .I2(obs_grown[10]),
        .I3(\cid[10][2]_i_9_n_0 ),
        .I4(obs_unrooted[11]),
        .I5(\cid[10][3]_i_2_n_0 ),
        .O(\grown[11]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h00F0000000F00070)) 
    \grown[11]_i_9 
       (.I0(\cid[10][2]_i_9_n_0 ),
        .I1(\cid[10][3]_i_2_n_0 ),
        .I2(obs_growth[23]),
        .I3(obs_growth[22]),
        .I4(obs_unrooted[11]),
        .I5(\cid[5][4]_i_4_n_0 ),
        .O(\grown[11]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hCCCFFFFFCECCCCCC)) 
    \grown[1]_i_1 
       (.I0(obs_grown[7]),
        .I1(\grown[1]_i_2_n_0 ),
        .I2(\FSM_sequential_stage_reg[1]_rep__0_n_0 ),
        .I3(\grown[1]_i_3_n_0 ),
        .I4(\grown[5]_i_4_n_0 ),
        .I5(obs_grown[1]),
        .O(\grown[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h40000000)) 
    \grown[1]_i_2 
       (.I0(\FSM_sequential_stage_reg[1]_rep__0_n_0 ),
        .I1(stage__0[0]),
        .I2(obs_whole[1]),
        .I3(obs_active[1]),
        .I4(stage__0[2]),
        .O(\grown[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000000D000000)) 
    \grown[1]_i_3 
       (.I0(\cid[9][3]_i_3_n_0 ),
        .I1(obs_unrooted[1]),
        .I2(\cid[3][3]_i_2_n_0 ),
        .I3(\cid[7][4]_i_6_n_0 ),
        .I4(\grown[1]_i_4_n_0 ),
        .I5(obs_grown[1]),
        .O(\grown[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \grown[1]_i_4 
       (.I0(obs_grown[7]),
        .I1(stage__0[2]),
        .I2(stage__0[0]),
        .I3(\FSM_sequential_stage_reg[1]_rep__0_n_0 ),
        .O(\grown[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hCCCFFFFFCECCCCCC)) 
    \grown[2]_i_1 
       (.I0(obs_grown[8]),
        .I1(\grown[2]_i_2_n_0 ),
        .I2(\FSM_sequential_stage_reg[1]_rep_n_0 ),
        .I3(\grown[2]_i_3_n_0 ),
        .I4(\grown[5]_i_4_n_0 ),
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
    .INIT(64'h0040000000400040)) 
    \grown[2]_i_3 
       (.I0(\cid[4][2]_i_3_n_0 ),
        .I1(\ptr[2][1]_i_3_n_0 ),
        .I2(\grown[6]_i_7_n_0 ),
        .I3(obs_grown[2]),
        .I4(obs_unrooted[2]),
        .I5(\cid[10][1]_i_3_n_0 ),
        .O(\grown[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hCCCFFFFFCECCCCCC)) 
    \grown[3]_i_1 
       (.I0(obs_grown[9]),
        .I1(\grown[3]_i_2_n_0 ),
        .I2(\FSM_sequential_stage_reg[1]_rep_n_0 ),
        .I3(\grown[3]_i_3_n_0 ),
        .I4(\grown[5]_i_4_n_0 ),
        .I5(obs_grown[3]),
        .O(\grown[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
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
    .INIT(64'h000000000B000000)) 
    \grown[3]_i_3 
       (.I0(obs_unrooted[3]),
        .I1(\cid[11][1]_i_3_n_0 ),
        .I2(obs_grown[3]),
        .I3(\grown[11]_i_6_n_0 ),
        .I4(\active[3]_i_3_n_0 ),
        .I5(\cid[5][1]_i_2_n_0 ),
        .O(\grown[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hCCCFFFFFCECCCCCC)) 
    \grown[4]_i_1 
       (.I0(obs_grown[10]),
        .I1(\grown[4]_i_2_n_0 ),
        .I2(\FSM_sequential_stage_reg[1]_rep__0_n_0 ),
        .I3(\grown[4]_i_3_n_0 ),
        .I4(\grown[5]_i_4_n_0 ),
        .I5(obs_grown[4]),
        .O(\grown[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT5 #(
    .INIT(32'h40000000)) 
    \grown[4]_i_2 
       (.I0(\FSM_sequential_stage_reg[1]_rep__0_n_0 ),
        .I1(stage__0[0]),
        .I2(obs_whole[4]),
        .I3(obs_active[4]),
        .I4(stage__0[2]),
        .O(\grown[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000D00)) 
    \grown[4]_i_3 
       (.I0(\cid[10][3]_i_2_n_0 ),
        .I1(obs_unrooted[4]),
        .I2(\grown[4]_i_4_n_0 ),
        .I3(obs_grown[10]),
        .I4(obs_grown[4]),
        .I5(\grown[4]_i_5_n_0 ),
        .O(\grown[4]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    \grown[4]_i_4 
       (.I0(\FSM_sequential_stage_reg[1]_rep__0_n_0 ),
        .I1(stage__0[0]),
        .I2(stage__0[2]),
        .O(\grown[4]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hEF)) 
    \grown[4]_i_5 
       (.I0(\cid[4][4]_i_4_n_0 ),
        .I1(obs_growth[4]),
        .I2(obs_growth[5]),
        .O(\grown[4]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hCCCFFFFFCECCCCCC)) 
    \grown[5]_i_1 
       (.I0(obs_grown[11]),
        .I1(\grown[5]_i_2_n_0 ),
        .I2(\FSM_sequential_stage_reg[1]_rep_n_0 ),
        .I3(\grown[5]_i_3_n_0 ),
        .I4(\grown[5]_i_4_n_0 ),
        .I5(obs_grown[5]),
        .O(\grown[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
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
    .INIT(64'h000000000000D000)) 
    \grown[5]_i_3 
       (.I0(\cid[11][2]_i_3_n_0 ),
        .I1(obs_unrooted[5]),
        .I2(\grown[5]_i_5_n_0 ),
        .I3(obs_growth[23]),
        .I4(obs_growth[22]),
        .I5(\cid[5][4]_i_4_n_0 ),
        .O(\grown[5]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \grown[5]_i_4 
       (.I0(stage__0[2]),
        .I1(stage__0[0]),
        .O(\grown[5]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'h00001000)) 
    \grown[5]_i_5 
       (.I0(\FSM_sequential_stage_reg[1]_rep_n_0 ),
        .I1(stage__0[0]),
        .I2(stage__0[2]),
        .I3(obs_grown[11]),
        .I4(obs_grown[5]),
        .O(\grown[5]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAABABBBBAA8A8888)) 
    \grown[6]_i_1 
       (.I0(\c_grown[6] ),
        .I1(\grown[6]_i_3_n_0 ),
        .I2(\cid[8][3]_i_3_n_0 ),
        .I3(\grown[11]_i_4_n_0 ),
        .I4(\cid[9][4]_i_1_n_0 ),
        .I5(obs_grown[6]),
        .O(\grown[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hC0FAFAFAC0FAC0FA)) 
    \grown[6]_i_2 
       (.I0(\grown[11]_i_5_n_0 ),
        .I1(stage__0[0]),
        .I2(\grown[6]_i_4_n_0 ),
        .I3(\grown[6]_i_5_n_0 ),
        .I4(\grown[6]_i_6_n_0 ),
        .I5(\grown[6]_i_7_n_0 ),
        .O(\c_grown[6] ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT5 #(
    .INIT(32'h00800000)) 
    \grown[6]_i_3 
       (.I0(obs_whole[6]),
        .I1(obs_active[6]),
        .I2(stage__0[2]),
        .I3(\FSM_sequential_stage_reg[1]_rep__0_n_0 ),
        .I4(stage__0[0]),
        .O(\grown[6]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \grown[6]_i_4 
       (.I0(\FSM_sequential_stage_reg[1]_rep__0_n_0 ),
        .I1(stage__0[2]),
        .I2(obs_active[6]),
        .I3(obs_whole[6]),
        .O(\grown[6]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h5555555555554555)) 
    \grown[6]_i_5 
       (.I0(\grown[6]_i_8_n_0 ),
        .I1(\grown[6]_i_9_n_0 ),
        .I2(obs_grown[7]),
        .I3(stage__0[2]),
        .I4(stage__0[0]),
        .I5(\FSM_sequential_stage_reg[1]_rep__0_n_0 ),
        .O(\grown[6]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT3 #(
    .INIT(8'h4F)) 
    \grown[6]_i_6 
       (.I0(obs_unrooted[6]),
        .I1(\cid[10][1]_i_3_n_0 ),
        .I2(\cid[6][4]_i_2_n_0 ),
        .O(\grown[6]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \grown[6]_i_7 
       (.I0(obs_grown[8]),
        .I1(stage__0[2]),
        .I2(stage__0[0]),
        .I3(\FSM_sequential_stage_reg[1]_rep__0_n_0 ),
        .O(\grown[6]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hF4F0F0F0F4F0F4F0)) 
    \grown[6]_i_8 
       (.I0(\grown[4]_i_4_n_0 ),
        .I1(obs_grown[0]),
        .I2(obs_grown[6]),
        .I3(\cid[6][4]_i_6_n_0 ),
        .I4(obs_unrooted[6]),
        .I5(\cid[2][3]_i_2_n_0 ),
        .O(\grown[6]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h4F)) 
    \grown[6]_i_9 
       (.I0(obs_unrooted[6]),
        .I1(\cid[9][3]_i_3_n_0 ),
        .I2(\cid[6][4]_i_5_n_0 ),
        .O(\grown[6]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAABABBBBAA8A8888)) 
    \grown[7]_i_1 
       (.I0(\c_grown[7] ),
        .I1(\grown[7]_i_3_n_0 ),
        .I2(\cid[9][3]_i_3_n_0 ),
        .I3(\grown[11]_i_4_n_0 ),
        .I4(\cid[9][4]_i_1_n_0 ),
        .I5(obs_grown[7]),
        .O(\grown[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00FBBBBB000BBBBB)) 
    \grown[7]_i_2 
       (.I0(\grown[7]_i_4_n_0 ),
        .I1(\grown[7]_i_5_n_0 ),
        .I2(stage__0[0]),
        .I3(\FSM_sequential_stage_reg[1]_rep__0_n_0 ),
        .I4(stage__0[2]),
        .I5(\grown[7]_i_6_n_0 ),
        .O(\c_grown[7] ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT5 #(
    .INIT(32'h00800000)) 
    \grown[7]_i_3 
       (.I0(obs_whole[7]),
        .I1(obs_active[7]),
        .I2(stage__0[2]),
        .I3(\FSM_sequential_stage_reg[1]_rep__0_n_0 ),
        .I4(stage__0[0]),
        .O(\grown[7]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h40400040)) 
    \grown[7]_i_4 
       (.I0(\grown[4]_i_4_n_0 ),
        .I1(obs_grown[9]),
        .I2(\cid[7][4]_i_4_n_0 ),
        .I3(\cid[11][1]_i_3_n_0 ),
        .I4(obs_unrooted[7]),
        .O(\grown[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAAA2AAAAAAAAAAAA)) 
    \grown[7]_i_5 
       (.I0(\grown[7]_i_7_n_0 ),
        .I1(stage__0[2]),
        .I2(stage__0[0]),
        .I3(\FSM_sequential_stage_reg[1]_rep__0_n_0 ),
        .I4(obs_grown[1]),
        .I5(\grown[7]_i_8_n_0 ),
        .O(\grown[7]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \grown[7]_i_6 
       (.I0(obs_whole[7]),
        .I1(obs_active[7]),
        .O(\grown[7]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F4FFFFFF)) 
    \grown[7]_i_7 
       (.I0(obs_unrooted[7]),
        .I1(\cid[8][3]_i_3_n_0 ),
        .I2(\grown[4]_i_4_n_0 ),
        .I3(obs_grown[6]),
        .I4(\cid[7][3]_i_7_n_0 ),
        .I5(obs_grown[7]),
        .O(\grown[7]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h00F0000000F00070)) 
    \grown[7]_i_8 
       (.I0(\cid[7][3]_i_7_n_0 ),
        .I1(\cid[8][3]_i_3_n_0 ),
        .I2(obs_growth[9]),
        .I3(obs_growth[8]),
        .I4(obs_unrooted[7]),
        .I5(\cid[3][3]_i_2_n_0 ),
        .O(\grown[7]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hABAAABABA8AAA8A8)) 
    \grown[8]_i_1 
       (.I0(\c_grown[8] ),
        .I1(\grown[8]_i_3_n_0 ),
        .I2(\grown[11]_i_4_n_0 ),
        .I3(\cid[10][1]_i_3_n_0 ),
        .I4(\cid[9][4]_i_1_n_0 ),
        .I5(obs_grown[8]),
        .O(\grown[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h55DF008055DF55DF)) 
    \grown[8]_i_2 
       (.I0(stage__0[2]),
        .I1(\grown[8]_i_4_n_0 ),
        .I2(stage__0[0]),
        .I3(\FSM_sequential_stage_reg[1]_rep__0_n_0 ),
        .I4(\grown[8]_i_5_n_0 ),
        .I5(\grown[8]_i_6_n_0 ),
        .O(\c_grown[8] ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'h40000000)) 
    \grown[8]_i_3 
       (.I0(\FSM_sequential_stage_reg[1]_rep__0_n_0 ),
        .I1(stage__0[0]),
        .I2(obs_whole[8]),
        .I3(obs_active[8]),
        .I4(stage__0[2]),
        .O(\grown[8]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \grown[8]_i_4 
       (.I0(obs_whole[8]),
        .I1(obs_active[8]),
        .O(\grown[8]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h00001000)) 
    \grown[8]_i_5 
       (.I0(\FSM_sequential_stage_reg[1]_rep__0_n_0 ),
        .I1(stage__0[0]),
        .I2(stage__0[2]),
        .I3(obs_grown[6]),
        .I4(\cid[8][3]_i_5_n_0 ),
        .O(\grown[8]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAA2AAA)) 
    \grown[8]_i_6 
       (.I0(\grown[8]_i_7_n_0 ),
        .I1(\grown[8]_i_8_n_0 ),
        .I2(obs_grown[10]),
        .I3(stage__0[2]),
        .I4(stage__0[0]),
        .I5(\FSM_sequential_stage_reg[1]_rep__0_n_0 ),
        .O(\grown[8]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h5155555551555155)) 
    \grown[8]_i_7 
       (.I0(\grown[8]_i_9_n_0 ),
        .I1(obs_grown[9]),
        .I2(\grown[4]_i_4_n_0 ),
        .I3(\cid[8][4]_i_14_n_0 ),
        .I4(obs_unrooted[8]),
        .I5(\cid[11][1]_i_3_n_0 ),
        .O(\grown[8]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \grown[8]_i_8 
       (.I0(\cid[8][4]_i_7_n_0 ),
        .I1(obs_unrooted[8]),
        .I2(\cid[10][3]_i_2_n_0 ),
        .O(\grown[8]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAAEAAAAAAAEAAAEA)) 
    \grown[8]_i_9 
       (.I0(obs_grown[8]),
        .I1(obs_grown[2]),
        .I2(\ptr[2][1]_i_3_n_0 ),
        .I3(\grown[4]_i_4_n_0 ),
        .I4(obs_unrooted[8]),
        .I5(\cid[4][2]_i_3_n_0 ),
        .O(\grown[8]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hEFEEEFEFECEEECEC)) 
    \grown[9]_i_1 
       (.I0(\grown[9]_i_2_n_0 ),
        .I1(\grown[9]_i_3_n_0 ),
        .I2(\grown[11]_i_4_n_0 ),
        .I3(\cid[11][1]_i_3_n_0 ),
        .I4(\cid[9][4]_i_1_n_0 ),
        .I5(obs_grown[9]),
        .O(\grown[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h100000001F1F1F1F)) 
    \grown[9]_i_2 
       (.I0(\FSM_sequential_stage_reg[1]_rep__0_n_0 ),
        .I1(stage__0[0]),
        .I2(stage__0[2]),
        .I3(obs_grown[7]),
        .I4(\cid[9][3]_i_4_n_0 ),
        .I5(\grown[9]_i_4_n_0 ),
        .O(\grown[9]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'h40000000)) 
    \grown[9]_i_3 
       (.I0(\FSM_sequential_stage_reg[1]_rep__0_n_0 ),
        .I1(stage__0[0]),
        .I2(obs_whole[9]),
        .I3(obs_active[9]),
        .I4(stage__0[2]),
        .O(\grown[9]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAA8AAA)) 
    \grown[9]_i_4 
       (.I0(\grown[9]_i_5_n_0 ),
        .I1(\grown[9]_i_6_n_0 ),
        .I2(obs_grown[11]),
        .I3(stage__0[2]),
        .I4(stage__0[0]),
        .I5(\FSM_sequential_stage_reg[1]_rep__0_n_0 ),
        .O(\grown[9]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAAA2AAAAAAAAAAAA)) 
    \grown[9]_i_5 
       (.I0(\grown[9]_i_7_n_0 ),
        .I1(stage__0[2]),
        .I2(stage__0[0]),
        .I3(\FSM_sequential_stage_reg[1]_rep__0_n_0 ),
        .I4(obs_grown[3]),
        .I5(\grown[9]_i_8_n_0 ),
        .O(\grown[9]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'h4F)) 
    \grown[9]_i_6 
       (.I0(obs_unrooted[9]),
        .I1(\cid[11][2]_i_3_n_0 ),
        .I2(\cid[9][4]_i_7_n_0 ),
        .O(\grown[9]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FF4FFFFF)) 
    \grown[9]_i_7 
       (.I0(obs_unrooted[9]),
        .I1(\cid[10][1]_i_3_n_0 ),
        .I2(\grown[6]_i_7_n_0 ),
        .I3(obs_growth[12]),
        .I4(obs_growth[13]),
        .I5(obs_grown[9]),
        .O(\grown[9]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \grown[9]_i_8 
       (.I0(\ptr[9][2]_i_19_n_0 ),
        .I1(obs_unrooted[9]),
        .I2(\cid[5][1]_i_2_n_0 ),
        .O(\grown[9]_i_8_n_0 ));
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
  FDRE \grown_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\grown[1]_i_1_n_0 ),
        .Q(obs_grown[1]),
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
        .I2(\growth[5][0]_i_2_n_0 ),
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
        .I3(\growth[3][0]_i_3_n_0 ),
        .I4(obs_growth[1]),
        .I5(\FSM_sequential_stage_reg[1]_rep__0_n_0 ),
        .O(\growth[0][0]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h3440)) 
    \growth[0][1]_i_1 
       (.I0(obs_growth[1]),
        .I1(stage__0[0]),
        .I2(stage__0[2]),
        .I3(\FSM_sequential_stage_reg[1]_rep__0_n_0 ),
        .O(growth));
  LUT6 #(
    .INIT(64'h00D500D500D5FFFF)) 
    \growth[0][1]_i_2 
       (.I0(\growth[0][1]_i_3_n_0 ),
        .I1(\growth[5][0]_i_2_n_0 ),
        .I2(\growth[0][1]_i_4_n_0 ),
        .I3(stage__0[2]),
        .I4(\growth[0][1]_i_5_n_0 ),
        .I5(\FSM_sequential_stage_reg[1]_rep__0_n_0 ),
        .O(c_growth[1]));
  LUT6 #(
    .INIT(64'h0000554555555555)) 
    \growth[0][1]_i_3 
       (.I0(obs_growth[1]),
        .I1(obs_grown[0]),
        .I2(obs_active[0]),
        .I3(obs_whole[0]),
        .I4(\growth[5][0]_i_2_n_0 ),
        .I5(obs_growth[0]),
        .O(\growth[0][1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
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
        .I3(obs_active[6]),
        .I4(obs_whole[6]),
        .I5(obs_growth[1]),
        .O(\growth[0][1]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFAE)) 
    \growth[10][0]_i_1 
       (.I0(\growth[10][0]_i_2_n_0 ),
        .I1(obs_growth[12]),
        .I2(stage__0[0]),
        .I3(\growth[10][0]_i_3_n_0 ),
        .O(\growth[10][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT5 #(
    .INIT(32'h00000114)) 
    \growth[10][0]_i_2 
       (.I0(obs_growth[21]),
        .I1(\growth[12][0]_i_2_n_0 ),
        .I2(\growth[10][0]_i_4_n_0 ),
        .I3(obs_growth[20]),
        .I4(stage__0[2]),
        .O(\growth[10][0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000001111444)) 
    \growth[10][0]_i_3 
       (.I0(obs_growth[21]),
        .I1(\grown[10]_i_6_n_0 ),
        .I2(obs_active[11]),
        .I3(obs_whole[11]),
        .I4(obs_growth[20]),
        .I5(\FSM_sequential_stage_reg[1]_rep_n_0 ),
        .O(\growth[10][0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \growth[10][0]_i_4 
       (.I0(obs_whole[10]),
        .I1(obs_active[10]),
        .I2(obs_grown[10]),
        .O(\growth[10][0]_i_4_n_0 ));
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
        .I2(obs_growth[13]),
        .I3(stage__0[0]),
        .I4(\FSM_sequential_stage_reg[1]_rep_n_0 ),
        .I5(\growth[10][1]_i_4_n_0 ),
        .O(\growth[10][1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000005545FFDF)) 
    \growth[10][1]_i_3 
       (.I0(obs_growth[20]),
        .I1(obs_grown[10]),
        .I2(obs_active[10]),
        .I3(obs_whole[10]),
        .I4(\growth[12][0]_i_2_n_0 ),
        .I5(obs_growth[21]),
        .O(\growth[10][1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000157F7F7F)) 
    \growth[10][1]_i_4 
       (.I0(obs_growth[20]),
        .I1(obs_active[10]),
        .I2(obs_whole[10]),
        .I3(obs_active[11]),
        .I4(obs_whole[11]),
        .I5(obs_growth[21]),
        .O(\growth[10][1]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFAE)) 
    \growth[11][0]_i_1 
       (.I0(\growth[11][0]_i_2_n_0 ),
        .I1(obs_growth[14]),
        .I2(stage__0[0]),
        .I3(\growth[11][0]_i_3_n_0 ),
        .O(\growth[11][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT5 #(
    .INIT(32'h00000114)) 
    \growth[11][0]_i_2 
       (.I0(obs_growth[23]),
        .I1(\growth[11][0]_i_4_n_0 ),
        .I2(\growth[12][0]_i_2_n_0 ),
        .I3(obs_growth[22]),
        .I4(stage__0[2]),
        .O(\growth[11][0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000156A)) 
    \growth[11][0]_i_3 
       (.I0(obs_growth[22]),
        .I1(obs_active[5]),
        .I2(obs_whole[5]),
        .I3(\growth[11][0]_i_5_n_0 ),
        .I4(obs_growth[23]),
        .I5(\FSM_sequential_stage_reg[1]_rep_n_0 ),
        .O(\growth[11][0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \growth[11][0]_i_4 
       (.I0(obs_whole[5]),
        .I1(obs_active[5]),
        .I2(obs_grown[5]),
        .O(\growth[11][0]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \growth[11][0]_i_5 
       (.I0(obs_whole[11]),
        .I1(obs_active[11]),
        .O(\growth[11][0]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h3440)) 
    \growth[11][1]_i_1 
       (.I0(obs_growth[23]),
        .I1(stage__0[0]),
        .I2(stage__0[2]),
        .I3(\FSM_sequential_stage_reg[1]_rep_n_0 ),
        .O(\growth[11][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h11F111F111F1FFFF)) 
    \growth[11][1]_i_2 
       (.I0(\growth[11][1]_i_3_n_0 ),
        .I1(stage__0[2]),
        .I2(obs_growth[15]),
        .I3(stage__0[0]),
        .I4(\FSM_sequential_stage_reg[1]_rep_n_0 ),
        .I5(\growth[11][1]_i_4_n_0 ),
        .O(\growth[11][1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000077777177)) 
    \growth[11][1]_i_3 
       (.I0(obs_growth[22]),
        .I1(\growth[12][0]_i_2_n_0 ),
        .I2(obs_whole[5]),
        .I3(obs_active[5]),
        .I4(obs_grown[5]),
        .I5(obs_growth[23]),
        .O(\growth[11][1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000157F7F7F)) 
    \growth[11][1]_i_4 
       (.I0(obs_growth[22]),
        .I1(obs_active[5]),
        .I2(obs_whole[5]),
        .I3(obs_active[11]),
        .I4(obs_whole[11]),
        .I5(obs_growth[23]),
        .O(\growth[11][1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00000016)) 
    \growth[12][0]_i_1 
       (.I0(obs_growth[24]),
        .I1(\growth[12][0]_i_2_n_0 ),
        .I2(\growth[12][0]_i_3_n_0 ),
        .I3(obs_growth[25]),
        .I4(stage__0[2]),
        .I5(\growth[12][0]_i_4_n_0 ),
        .O(\growth[12][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \growth[12][0]_i_2 
       (.I0(obs_whole[11]),
        .I1(obs_active[11]),
        .I2(obs_grown[11]),
        .O(\growth[12][0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \growth[12][0]_i_3 
       (.I0(obs_whole[9]),
        .I1(obs_active[9]),
        .I2(obs_grown[9]),
        .O(\growth[12][0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h4500FFFF45004500)) 
    \growth[12][0]_i_4 
       (.I0(\FSM_sequential_stage_reg[1]_rep_n_0 ),
        .I1(obs_growth[24]),
        .I2(\growth[12][0]_i_5_n_0 ),
        .I3(\growth[12][1]_i_4_n_0 ),
        .I4(stage__0[0]),
        .I5(obs_growth[16]),
        .O(\growth[12][0]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT4 #(
    .INIT(16'h0777)) 
    \growth[12][0]_i_5 
       (.I0(obs_active[9]),
        .I1(obs_whole[9]),
        .I2(obs_active[11]),
        .I3(obs_whole[11]),
        .O(\growth[12][0]_i_5_n_0 ));
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
        .I2(obs_growth[17]),
        .I3(stage__0[0]),
        .I4(\FSM_sequential_stage_reg[1]_rep_n_0 ),
        .I5(\growth[12][1]_i_4_n_0 ),
        .O(\growth[12][1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h1111101155555155)) 
    \growth[12][1]_i_3 
       (.I0(obs_growth[25]),
        .I1(\growth[12][0]_i_3_n_0 ),
        .I2(obs_grown[11]),
        .I3(obs_active[11]),
        .I4(obs_whole[11]),
        .I5(obs_growth[24]),
        .O(\growth[12][1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000157F7F7F)) 
    \growth[12][1]_i_4 
       (.I0(obs_growth[24]),
        .I1(obs_active[9]),
        .I2(obs_whole[9]),
        .I3(obs_active[11]),
        .I4(obs_whole[11]),
        .I5(obs_growth[25]),
        .O(\growth[12][1]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFAE)) 
    \growth[1][0]_i_1 
       (.I0(\growth[1][0]_i_2_n_0 ),
        .I1(obs_growth[0]),
        .I2(stage__0[0]),
        .I3(\growth[1][0]_i_3_n_0 ),
        .O(\growth[1][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT5 #(
    .INIT(32'h00000114)) 
    \growth[1][0]_i_2 
       (.I0(obs_growth[3]),
        .I1(\growth[1][0]_i_4_n_0 ),
        .I2(\growth[5][0]_i_3_n_0 ),
        .I3(obs_growth[2]),
        .I4(stage__0[2]),
        .O(\growth[1][0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000156A)) 
    \growth[1][0]_i_3 
       (.I0(obs_growth[2]),
        .I1(obs_active[2]),
        .I2(obs_whole[2]),
        .I3(\grown[8]_i_4_n_0 ),
        .I4(obs_growth[3]),
        .I5(\FSM_sequential_stage_reg[1]_rep_n_0 ),
        .O(\growth[1][0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
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
        .I1(\growth[5][0]_i_3_n_0 ),
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
        .I3(obs_active[8]),
        .I4(obs_whole[8]),
        .I5(obs_growth[3]),
        .O(\growth[1][1]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFAE)) 
    \growth[2][0]_i_1 
       (.I0(\growth[2][0]_i_2_n_0 ),
        .I1(obs_growth[2]),
        .I2(stage__0[0]),
        .I3(\growth[2][0]_i_3_n_0 ),
        .O(\growth[2][0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000114)) 
    \growth[2][0]_i_2 
       (.I0(obs_growth[5]),
        .I1(\growth[2][0]_i_4_n_0 ),
        .I2(\growth[10][0]_i_4_n_0 ),
        .I3(obs_growth[4]),
        .I4(stage__0[2]),
        .O(\growth[2][0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000156A)) 
    \growth[2][0]_i_3 
       (.I0(obs_growth[4]),
        .I1(obs_active[4]),
        .I2(obs_whole[4]),
        .I3(\grown[10]_i_6_n_0 ),
        .I4(obs_growth[5]),
        .I5(\FSM_sequential_stage_reg[1]_rep_n_0 ),
        .O(\growth[2][0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
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
        .I1(\growth[10][0]_i_4_n_0 ),
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
        .I3(obs_active[10]),
        .I4(obs_whole[10]),
        .I5(obs_growth[5]),
        .O(\growth[2][1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00000114)) 
    \growth[3][0]_i_1 
       (.I0(stage__0[2]),
        .I1(obs_growth[6]),
        .I2(\growth[5][0]_i_2_n_0 ),
        .I3(\growth[8][0]_i_2_n_0 ),
        .I4(obs_growth[7]),
        .I5(\growth[3][0]_i_2_n_0 ),
        .O(\growth[3][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000001666)) 
    \growth[3][0]_i_2 
       (.I0(obs_growth[6]),
        .I1(\growth[3][0]_i_3_n_0 ),
        .I2(obs_active[7]),
        .I3(obs_whole[7]),
        .I4(obs_growth[7]),
        .I5(\FSM_sequential_stage_reg[1]_rep__0_n_0 ),
        .O(\growth[3][0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \growth[3][0]_i_3 
       (.I0(obs_whole[6]),
        .I1(obs_active[6]),
        .O(\growth[3][0]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h3440)) 
    \growth[3][1]_i_1 
       (.I0(obs_growth[7]),
        .I1(stage__0[0]),
        .I2(stage__0[2]),
        .I3(\FSM_sequential_stage_reg[1]_rep__0_n_0 ),
        .O(\growth[3][1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h111F)) 
    \growth[3][1]_i_2 
       (.I0(\growth[3][1]_i_3_n_0 ),
        .I1(stage__0[2]),
        .I2(\growth[3][1]_i_4_n_0 ),
        .I3(\FSM_sequential_stage_reg[1]_rep__0_n_0 ),
        .O(\growth[3][1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000005545FFDF)) 
    \growth[3][1]_i_3 
       (.I0(obs_growth[6]),
        .I1(obs_grown[6]),
        .I2(obs_active[6]),
        .I3(obs_whole[6]),
        .I4(\growth[8][0]_i_2_n_0 ),
        .I5(obs_growth[7]),
        .O(\growth[3][1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000157F7F7F)) 
    \growth[3][1]_i_4 
       (.I0(obs_growth[6]),
        .I1(obs_active[6]),
        .I2(obs_whole[6]),
        .I3(obs_active[7]),
        .I4(obs_whole[7]),
        .I5(obs_growth[7]),
        .O(\growth[3][1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00000114)) 
    \growth[4][0]_i_1 
       (.I0(stage__0[2]),
        .I1(\growth[4][1]_i_4_n_0 ),
        .I2(\growth[8][0]_i_2_n_0 ),
        .I3(obs_growth[8]),
        .I4(obs_growth[9]),
        .I5(\growth[4][0]_i_2_n_0 ),
        .O(\growth[4][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000156A)) 
    \growth[4][0]_i_2 
       (.I0(obs_growth[8]),
        .I1(obs_active[1]),
        .I2(obs_whole[1]),
        .I3(\grown[7]_i_6_n_0 ),
        .I4(obs_growth[9]),
        .I5(\FSM_sequential_stage_reg[1]_rep__0_n_0 ),
        .O(\growth[4][0]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h3440)) 
    \growth[4][1]_i_1 
       (.I0(obs_growth[9]),
        .I1(stage__0[0]),
        .I2(stage__0[2]),
        .I3(\FSM_sequential_stage_reg[1]_rep__0_n_0 ),
        .O(\growth[4][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00D500D500D5FFFF)) 
    \growth[4][1]_i_2 
       (.I0(\growth[4][1]_i_3_n_0 ),
        .I1(\growth[8][0]_i_2_n_0 ),
        .I2(\growth[4][1]_i_4_n_0 ),
        .I3(stage__0[2]),
        .I4(\growth[4][1]_i_5_n_0 ),
        .I5(\FSM_sequential_stage_reg[1]_rep__0_n_0 ),
        .O(\growth[4][1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000554555555555)) 
    \growth[4][1]_i_3 
       (.I0(obs_growth[9]),
        .I1(obs_grown[1]),
        .I2(obs_active[1]),
        .I3(obs_whole[1]),
        .I4(\growth[8][0]_i_2_n_0 ),
        .I5(obs_growth[8]),
        .O(\growth[4][1]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \growth[4][1]_i_4 
       (.I0(obs_whole[1]),
        .I1(obs_active[1]),
        .I2(obs_grown[1]),
        .O(\growth[4][1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000157F7F7F)) 
    \growth[4][1]_i_5 
       (.I0(obs_growth[8]),
        .I1(obs_active[1]),
        .I2(obs_whole[1]),
        .I3(obs_active[7]),
        .I4(obs_whole[7]),
        .I5(obs_growth[9]),
        .O(\growth[4][1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00000114)) 
    \growth[5][0]_i_1 
       (.I0(stage__0[2]),
        .I1(obs_growth[10]),
        .I2(\growth[5][0]_i_2_n_0 ),
        .I3(\growth[5][0]_i_3_n_0 ),
        .I4(obs_growth[11]),
        .I5(\growth[5][0]_i_4_n_0 ),
        .O(\growth[5][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \growth[5][0]_i_2 
       (.I0(obs_whole[6]),
        .I1(obs_active[6]),
        .I2(obs_grown[6]),
        .O(\growth[5][0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \growth[5][0]_i_3 
       (.I0(obs_whole[8]),
        .I1(obs_active[8]),
        .I2(obs_grown[8]),
        .O(\growth[5][0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000156A)) 
    \growth[5][0]_i_4 
       (.I0(obs_growth[10]),
        .I1(obs_active[6]),
        .I2(obs_whole[6]),
        .I3(\grown[8]_i_4_n_0 ),
        .I4(obs_growth[11]),
        .I5(\FSM_sequential_stage_reg[1]_rep__0_n_0 ),
        .O(\growth[5][0]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h3440)) 
    \growth[5][1]_i_1 
       (.I0(obs_growth[11]),
        .I1(stage__0[0]),
        .I2(stage__0[2]),
        .I3(\FSM_sequential_stage_reg[1]_rep__0_n_0 ),
        .O(\growth[5][1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h111F)) 
    \growth[5][1]_i_2 
       (.I0(\growth[5][1]_i_3_n_0 ),
        .I1(stage__0[2]),
        .I2(\growth[5][1]_i_4_n_0 ),
        .I3(\FSM_sequential_stage_reg[1]_rep__0_n_0 ),
        .O(\growth[5][1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000005545FFDF)) 
    \growth[5][1]_i_3 
       (.I0(obs_growth[10]),
        .I1(obs_grown[6]),
        .I2(obs_active[6]),
        .I3(obs_whole[6]),
        .I4(\growth[5][0]_i_3_n_0 ),
        .I5(obs_growth[11]),
        .O(\growth[5][1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000157F7F7F)) 
    \growth[5][1]_i_4 
       (.I0(obs_growth[10]),
        .I1(obs_active[6]),
        .I2(obs_whole[6]),
        .I3(obs_active[8]),
        .I4(obs_whole[8]),
        .I5(obs_growth[11]),
        .O(\growth[5][1]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT4 #(
    .INIT(16'hFFAE)) 
    \growth[6][0]_i_1 
       (.I0(\growth[6][0]_i_2_n_0 ),
        .I1(obs_growth[6]),
        .I2(stage__0[0]),
        .I3(\growth[6][0]_i_3_n_0 ),
        .O(\growth[6][0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000114)) 
    \growth[6][0]_i_2 
       (.I0(obs_growth[13]),
        .I1(\growth[12][0]_i_3_n_0 ),
        .I2(\growth[5][0]_i_3_n_0 ),
        .I3(obs_growth[12]),
        .I4(stage__0[2]),
        .O(\growth[6][0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000151540)) 
    \growth[6][0]_i_3 
       (.I0(obs_growth[13]),
        .I1(obs_whole[9]),
        .I2(obs_active[9]),
        .I3(\grown[8]_i_4_n_0 ),
        .I4(obs_growth[12]),
        .I5(\FSM_sequential_stage_reg[1]_rep_n_0 ),
        .O(\growth[6][0]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h3440)) 
    \growth[6][1]_i_1 
       (.I0(obs_growth[13]),
        .I1(stage__0[0]),
        .I2(stage__0[2]),
        .I3(\FSM_sequential_stage_reg[1]_rep_n_0 ),
        .O(\growth[6][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h11F111F111F1FFFF)) 
    \growth[6][1]_i_2 
       (.I0(\growth[6][1]_i_3_n_0 ),
        .I1(stage__0[2]),
        .I2(obs_growth[7]),
        .I3(stage__0[0]),
        .I4(\FSM_sequential_stage_reg[1]_rep_n_0 ),
        .I5(\growth[6][1]_i_4_n_0 ),
        .O(\growth[6][1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000005545FFDF)) 
    \growth[6][1]_i_3 
       (.I0(obs_growth[12]),
        .I1(obs_grown[8]),
        .I2(obs_active[8]),
        .I3(obs_whole[8]),
        .I4(\growth[12][0]_i_3_n_0 ),
        .I5(obs_growth[13]),
        .O(\growth[6][1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000157F7F7F)) 
    \growth[6][1]_i_4 
       (.I0(obs_growth[12]),
        .I1(obs_active[8]),
        .I2(obs_whole[8]),
        .I3(obs_active[9]),
        .I4(obs_whole[9]),
        .I5(obs_growth[13]),
        .O(\growth[6][1]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT4 #(
    .INIT(16'hFFAE)) 
    \growth[7][0]_i_1 
       (.I0(\growth[7][0]_i_2_n_0 ),
        .I1(obs_growth[8]),
        .I2(stage__0[0]),
        .I3(\growth[7][0]_i_3_n_0 ),
        .O(\growth[7][0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000114)) 
    \growth[7][0]_i_2 
       (.I0(obs_growth[15]),
        .I1(\growth[7][0]_i_4_n_0 ),
        .I2(\growth[12][0]_i_3_n_0 ),
        .I3(obs_growth[14]),
        .I4(stage__0[2]),
        .O(\growth[7][0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000156A)) 
    \growth[7][0]_i_3 
       (.I0(obs_growth[14]),
        .I1(obs_active[3]),
        .I2(obs_whole[3]),
        .I3(\growth[8][0]_i_4_n_0 ),
        .I4(obs_growth[15]),
        .I5(\FSM_sequential_stage_reg[1]_rep_n_0 ),
        .O(\growth[7][0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \growth[7][0]_i_4 
       (.I0(obs_whole[3]),
        .I1(obs_active[3]),
        .I2(obs_grown[3]),
        .O(\growth[7][0]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h3440)) 
    \growth[7][1]_i_1 
       (.I0(obs_growth[15]),
        .I1(stage__0[0]),
        .I2(stage__0[2]),
        .I3(\FSM_sequential_stage_reg[1]_rep_n_0 ),
        .O(\growth[7][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h11F111F111F1FFFF)) 
    \growth[7][1]_i_2 
       (.I0(\growth[7][1]_i_3_n_0 ),
        .I1(stage__0[2]),
        .I2(obs_growth[9]),
        .I3(stage__0[0]),
        .I4(\FSM_sequential_stage_reg[1]_rep_n_0 ),
        .I5(\growth[7][1]_i_4_n_0 ),
        .O(\growth[7][1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000077777177)) 
    \growth[7][1]_i_3 
       (.I0(obs_growth[14]),
        .I1(\growth[12][0]_i_3_n_0 ),
        .I2(obs_whole[3]),
        .I3(obs_active[3]),
        .I4(obs_grown[3]),
        .I5(obs_growth[15]),
        .O(\growth[7][1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000157F7F7F)) 
    \growth[7][1]_i_4 
       (.I0(obs_growth[14]),
        .I1(obs_active[3]),
        .I2(obs_whole[3]),
        .I3(obs_active[9]),
        .I4(obs_whole[9]),
        .I5(obs_growth[15]),
        .O(\growth[7][1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00000114)) 
    \growth[8][0]_i_1 
       (.I0(stage__0[2]),
        .I1(obs_growth[16]),
        .I2(\growth[8][0]_i_2_n_0 ),
        .I3(\growth[12][0]_i_3_n_0 ),
        .I4(obs_growth[17]),
        .I5(\growth[8][0]_i_3_n_0 ),
        .O(\growth[8][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \growth[8][0]_i_2 
       (.I0(obs_whole[7]),
        .I1(obs_active[7]),
        .I2(obs_grown[7]),
        .O(\growth[8][0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000151540)) 
    \growth[8][0]_i_3 
       (.I0(obs_growth[17]),
        .I1(obs_active[7]),
        .I2(obs_whole[7]),
        .I3(\growth[8][0]_i_4_n_0 ),
        .I4(obs_growth[16]),
        .I5(\FSM_sequential_stage_reg[1]_rep__0_n_0 ),
        .O(\growth[8][0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \growth[8][0]_i_4 
       (.I0(obs_whole[9]),
        .I1(obs_active[9]),
        .O(\growth[8][0]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h3440)) 
    \growth[8][1]_i_1 
       (.I0(obs_growth[17]),
        .I1(stage__0[0]),
        .I2(stage__0[2]),
        .I3(\FSM_sequential_stage_reg[1]_rep__0_n_0 ),
        .O(\growth[8][1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h111F)) 
    \growth[8][1]_i_2 
       (.I0(\growth[8][1]_i_3_n_0 ),
        .I1(stage__0[2]),
        .I2(\growth[8][1]_i_4_n_0 ),
        .I3(\FSM_sequential_stage_reg[1]_rep__0_n_0 ),
        .O(\growth[8][1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000005545FFDF)) 
    \growth[8][1]_i_3 
       (.I0(obs_growth[16]),
        .I1(obs_grown[7]),
        .I2(obs_active[7]),
        .I3(obs_whole[7]),
        .I4(\growth[12][0]_i_3_n_0 ),
        .I5(obs_growth[17]),
        .O(\growth[8][1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000157F7F7F)) 
    \growth[8][1]_i_4 
       (.I0(obs_growth[16]),
        .I1(obs_active[7]),
        .I2(obs_whole[7]),
        .I3(obs_active[9]),
        .I4(obs_whole[9]),
        .I5(obs_growth[17]),
        .O(\growth[8][1]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT4 #(
    .INIT(16'hFFAE)) 
    \growth[9][0]_i_1 
       (.I0(\growth[9][0]_i_2_n_0 ),
        .I1(obs_growth[10]),
        .I2(stage__0[0]),
        .I3(\growth[9][0]_i_3_n_0 ),
        .O(\growth[9][0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000114)) 
    \growth[9][0]_i_2 
       (.I0(obs_growth[19]),
        .I1(\growth[10][0]_i_4_n_0 ),
        .I2(\growth[5][0]_i_3_n_0 ),
        .I3(obs_growth[18]),
        .I4(stage__0[2]),
        .O(\growth[9][0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000151540)) 
    \growth[9][0]_i_3 
       (.I0(obs_growth[19]),
        .I1(obs_whole[10]),
        .I2(obs_active[10]),
        .I3(\grown[8]_i_4_n_0 ),
        .I4(obs_growth[18]),
        .I5(\FSM_sequential_stage_reg[1]_rep_n_0 ),
        .O(\growth[9][0]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h3440)) 
    \growth[9][1]_i_1 
       (.I0(obs_growth[19]),
        .I1(stage__0[0]),
        .I2(stage__0[2]),
        .I3(\FSM_sequential_stage_reg[1]_rep_n_0 ),
        .O(\growth[9][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h11F111F111F1FFFF)) 
    \growth[9][1]_i_2 
       (.I0(\growth[9][1]_i_3_n_0 ),
        .I1(stage__0[2]),
        .I2(obs_growth[11]),
        .I3(stage__0[0]),
        .I4(\FSM_sequential_stage_reg[1]_rep_n_0 ),
        .I5(\growth[9][1]_i_4_n_0 ),
        .O(\growth[9][1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000077777177)) 
    \growth[9][1]_i_3 
       (.I0(obs_growth[18]),
        .I1(\growth[5][0]_i_3_n_0 ),
        .I2(obs_grown[10]),
        .I3(obs_active[10]),
        .I4(obs_whole[10]),
        .I5(obs_growth[19]),
        .O(\growth[9][1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000157F7F7F)) 
    \growth[9][1]_i_4 
       (.I0(obs_growth[18]),
        .I1(obs_active[8]),
        .I2(obs_whole[8]),
        .I3(obs_active[10]),
        .I4(obs_whole[10]),
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
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \ptr[0][1]_i_1 
       (.I0(\ptr[0][1]_i_2_n_0 ),
        .O(\ptr[0][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0F4F0F0F0F000F0F)) 
    \ptr[0][1]_i_2 
       (.I0(obs_unrooted[0]),
        .I1(\cid[8][3]_i_3_n_0 ),
        .I2(\^obs_ptr [1]),
        .I3(\cid[2][3]_i_2_n_0 ),
        .I4(\cid[6][4]_i_6_n_0 ),
        .I5(\cid[0][4]_i_4_n_0 ),
        .O(\ptr[0][1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00E2E2E2)) 
    \ptr[10][0]_i_1 
       (.I0(\active[10]_i_2_n_0 ),
        .I1(\FSM_sequential_stage_reg[1]_rep_n_0 ),
        .I2(\^obs_ptr [24]),
        .I3(stage__0[0]),
        .I4(stage__0[2]),
        .O(\ptr[10][0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00E2E2E2)) 
    \ptr[10][1]_i_1 
       (.I0(\ptr[10][1]_i_2_n_0 ),
        .I1(\FSM_sequential_stage_reg[1]_rep_n_0 ),
        .I2(\^obs_ptr [25]),
        .I3(stage__0[0]),
        .I4(stage__0[2]),
        .O(\ptr[10][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8888888888888BBB)) 
    \ptr[10][1]_i_2 
       (.I0(\^obs_ptr [31]),
        .I1(\cid[10][3]_i_2_n_0 ),
        .I2(\cid[10][3]_i_5_n_0 ),
        .I3(\cid[10][2]_i_3_n_0 ),
        .I4(\active[10]_i_5_n_0 ),
        .I5(\ptr[10][1]_i_3_n_0 ),
        .O(\ptr[10][1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0F0F020FFFFF00FF)) 
    \ptr[10][1]_i_3 
       (.I0(\cid[11][2]_i_3_n_0 ),
        .I1(obs_unrooted[10]),
        .I2(\cid[10][2]_i_8_n_0 ),
        .I3(\^obs_ptr [31]),
        .I4(\ptr[10][2]_i_4_n_0 ),
        .I5(\cid[10][2]_i_6_n_0 ),
        .O(\ptr[10][1]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00E2E2E2)) 
    \ptr[10][2]_i_1 
       (.I0(\ptr[10][2]_i_2_n_0 ),
        .I1(\FSM_sequential_stage_reg[1]_rep_n_0 ),
        .I2(\^obs_ptr [26]),
        .I3(stage__0[0]),
        .I4(stage__0[2]),
        .O(\ptr[10][2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8B8888888B8B8B8B)) 
    \ptr[10][2]_i_2 
       (.I0(\^obs_ptr [32]),
        .I1(\cid[10][3]_i_2_n_0 ),
        .I2(\active[10]_i_5_n_0 ),
        .I3(\cid[10][2]_i_3_n_0 ),
        .I4(\cid[10][3]_i_5_n_0 ),
        .I5(\ptr[10][2]_i_3_n_0 ),
        .O(\ptr[10][2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFF400FFFF)) 
    \ptr[10][2]_i_3 
       (.I0(obs_unrooted[10]),
        .I1(\cid[11][2]_i_3_n_0 ),
        .I2(\cid[10][2]_i_8_n_0 ),
        .I3(\cid[10][2]_i_6_n_0 ),
        .I4(\^obs_ptr [32]),
        .I5(\ptr[10][2]_i_4_n_0 ),
        .O(\ptr[10][2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT5 #(
    .INIT(32'h00004F00)) 
    \ptr[10][2]_i_4 
       (.I0(obs_unrooted[10]),
        .I1(\cid[4][4]_i_4_n_0 ),
        .I2(\cid[10][2]_i_11_n_0 ),
        .I3(obs_growth[5]),
        .I4(obs_growth[4]),
        .O(\ptr[10][2]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h00D1D1D1)) 
    \ptr[11][0]_i_1 
       (.I0(\ptr[11][0]_i_2_n_0 ),
        .I1(\FSM_sequential_stage_reg[1]_rep_n_0 ),
        .I2(\^obs_ptr [27]),
        .I3(stage__0[0]),
        .I4(stage__0[2]),
        .O(\ptr[11][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4444004055555555)) 
    \ptr[11][0]_i_2 
       (.I0(\ptr[11][0]_i_3_n_0 ),
        .I1(\cid[11][3]_i_5_n_0 ),
        .I2(\ptr[11][1]_i_4_n_0 ),
        .I3(\ptr[11][1]_i_5_n_0 ),
        .I4(\ptr[11][1]_i_6_n_0 ),
        .I5(\ptr[11][0]_i_4_n_0 ),
        .O(\ptr[11][0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \ptr[11][0]_i_3 
       (.I0(obs_cid[55]),
        .I1(obs_cid[56]),
        .I2(obs_cid[57]),
        .I3(obs_cid[59]),
        .I4(obs_cid[58]),
        .I5(\^obs_ptr [33]),
        .O(\ptr[11][0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hA022A02000000000)) 
    \ptr[11][0]_i_4 
       (.I0(\ptr[11][2]_i_3_n_0 ),
        .I1(\ptr[11][0]_i_5_n_0 ),
        .I2(\ptr[11][2]_i_7_n_0 ),
        .I3(\cid[11][4]_i_8_n_0 ),
        .I4(\^obs_ptr [33]),
        .I5(\ptr[11][2]_i_6_n_0 ),
        .O(\ptr[11][0]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h0400)) 
    \ptr[11][0]_i_5 
       (.I0(obs_unrooted[11]),
        .I1(\cid[5][4]_i_4_n_0 ),
        .I2(obs_growth[22]),
        .I3(obs_growth[23]),
        .O(\ptr[11][0]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h00D1D1D1)) 
    \ptr[11][1]_i_1 
       (.I0(\ptr[11][1]_i_2_n_0 ),
        .I1(\FSM_sequential_stage_reg[1]_rep_n_0 ),
        .I2(\^obs_ptr [28]),
        .I3(stage__0[2]),
        .I4(stage__0[0]),
        .O(\ptr[11][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA3AAA3AAA3AAA3A3)) 
    \ptr[11][1]_i_10 
       (.I0(\cid[11][0]_i_4_n_0 ),
        .I1(obs_cid[25]),
        .I2(\ptr[11][1]_i_12_n_0 ),
        .I3(\ptr[11][1]_i_13_n_0 ),
        .I4(\cid[11][3]_i_15_n_0 ),
        .I5(\ptr[11][1]_i_14_n_0 ),
        .O(\ptr[11][1]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT4 #(
    .INIT(16'h51DF)) 
    \ptr[11][1]_i_11 
       (.I0(obs_cid[28]),
        .I1(obs_cid[29]),
        .I2(\cid[11][4]_i_7_n_0 ),
        .I3(\cid[11][3]_i_8_n_0 ),
        .O(\ptr[11][1]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h08AA082A08AA08AA)) 
    \ptr[11][1]_i_12 
       (.I0(obs_cid[29]),
        .I1(\cid[10][2]_i_9_n_0 ),
        .I2(obs_cid[54]),
        .I3(obs_cid[59]),
        .I4(obs_unrooted[11]),
        .I5(\cid[10][3]_i_2_n_0 ),
        .O(\ptr[11][1]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    \ptr[11][1]_i_13 
       (.I0(obs_cid[29]),
        .I1(\cid[11][4]_i_7_n_0 ),
        .I2(obs_cid[28]),
        .I3(\cid[11][3]_i_8_n_0 ),
        .O(\ptr[11][1]_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    \ptr[11][1]_i_14 
       (.I0(\cid[11][2]_i_6_n_0 ),
        .I1(obs_cid[27]),
        .I2(\cid[11][3]_i_8_n_0 ),
        .I3(obs_cid[28]),
        .O(\ptr[11][1]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h4444004055555555)) 
    \ptr[11][1]_i_2 
       (.I0(\ptr[11][1]_i_3_n_0 ),
        .I1(\cid[11][3]_i_5_n_0 ),
        .I2(\ptr[11][1]_i_4_n_0 ),
        .I3(\ptr[11][1]_i_5_n_0 ),
        .I4(\ptr[11][1]_i_6_n_0 ),
        .I5(\ptr[11][1]_i_7_n_0 ),
        .O(\ptr[11][1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \ptr[11][1]_i_3 
       (.I0(\^obs_ptr [34]),
        .I1(obs_cid[55]),
        .I2(obs_cid[56]),
        .I3(obs_cid[57]),
        .I4(obs_cid[59]),
        .I5(obs_cid[58]),
        .O(\ptr[11][1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF4D00FF4D)) 
    \ptr[11][1]_i_4 
       (.I0(\ptr[11][1]_i_8_n_0 ),
        .I1(\cid[11][1]_i_4_n_0 ),
        .I2(obs_cid[46]),
        .I3(\cid[11][2]_i_2_n_0 ),
        .I4(obs_cid[47]),
        .I5(\ptr[11][1]_i_9_n_0 ),
        .O(\ptr[11][1]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    \ptr[11][1]_i_5 
       (.I0(\cid[11][3]_i_4_n_0 ),
        .I1(obs_cid[48]),
        .I2(\cid[11][4]_i_6_n_0 ),
        .I3(obs_cid[49]),
        .O(\ptr[11][1]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ptr[11][1]_i_6 
       (.I0(\cid[11][4]_i_6_n_0 ),
        .I1(obs_cid[49]),
        .O(\ptr[11][1]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h08AA)) 
    \ptr[11][1]_i_7 
       (.I0(\ptr[11][2]_i_6_n_0 ),
        .I1(\^obs_ptr [34]),
        .I2(\ptr[11][2]_i_4_n_0 ),
        .I3(\ptr[11][2]_i_3_n_0 ),
        .O(\ptr[11][1]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFAFEFEFAAAAEAEA)) 
    \ptr[11][1]_i_8 
       (.I0(obs_cid[45]),
        .I1(\ptr[11][1]_i_10_n_0 ),
        .I2(\cid[11][3]_i_9_n_0 ),
        .I3(obs_unrooted[11]),
        .I4(\cid[5][4]_i_4_n_0 ),
        .I5(\cid[11][0]_i_4_n_0 ),
        .O(\ptr[11][1]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FF770C44)) 
    \ptr[11][1]_i_9 
       (.I0(\ptr[11][1]_i_11_n_0 ),
        .I1(\cid[11][3]_i_9_n_0 ),
        .I2(obs_unrooted[11]),
        .I3(\cid[5][4]_i_4_n_0 ),
        .I4(\cid[11][3]_i_8_n_0 ),
        .I5(obs_cid[48]),
        .O(\ptr[11][1]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h00E2E2E2)) 
    \ptr[11][2]_i_1 
       (.I0(\ptr[11][2]_i_2_n_0 ),
        .I1(\FSM_sequential_stage_reg[1]_rep_n_0 ),
        .I2(\^obs_ptr [29]),
        .I3(stage__0[0]),
        .I4(stage__0[2]),
        .O(\ptr[11][2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFAE00AA00AA00)) 
    \ptr[11][2]_i_2 
       (.I0(\cid[11][2]_i_3_n_0 ),
        .I1(\ptr[11][2]_i_3_n_0 ),
        .I2(\ptr[11][2]_i_4_n_0 ),
        .I3(\^obs_ptr [35]),
        .I4(\ptr[11][2]_i_5_n_0 ),
        .I5(\ptr[11][2]_i_6_n_0 ),
        .O(\ptr[11][2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF08FFFFFFFFFF)) 
    \ptr[11][2]_i_3 
       (.I0(\cid[10][2]_i_9_n_0 ),
        .I1(\cid[10][3]_i_2_n_0 ),
        .I2(obs_unrooted[11]),
        .I3(obs_growth[23]),
        .I4(obs_growth[22]),
        .I5(\cid[11][3]_i_10_n_0 ),
        .O(\ptr[11][2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF0400)) 
    \ptr[11][2]_i_4 
       (.I0(obs_unrooted[11]),
        .I1(\cid[5][4]_i_4_n_0 ),
        .I2(obs_growth[22]),
        .I3(obs_growth[23]),
        .I4(\cid[11][4]_i_8_n_0 ),
        .I5(\ptr[11][2]_i_7_n_0 ),
        .O(\ptr[11][2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00AA0000A8AA00A8)) 
    \ptr[11][2]_i_5 
       (.I0(\cid[11][3]_i_5_n_0 ),
        .I1(\ptr[11][2]_i_8_n_0 ),
        .I2(\cid[11][3]_i_12_n_0 ),
        .I3(obs_cid[49]),
        .I4(\cid[11][4]_i_6_n_0 ),
        .I5(\ptr[11][2]_i_9_n_0 ),
        .O(\ptr[11][2]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h5155)) 
    \ptr[11][2]_i_6 
       (.I0(\cid[11][2]_i_3_n_0 ),
        .I1(\cid[11][1]_i_3_n_0 ),
        .I2(obs_unrooted[11]),
        .I3(\cid[11][3]_i_5_n_0 ),
        .O(\ptr[11][2]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \ptr[11][2]_i_7 
       (.I0(\cid[11][3]_i_14_n_0 ),
        .I1(obs_growth[20]),
        .I2(obs_growth[21]),
        .O(\ptr[11][2]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    \ptr[11][2]_i_8 
       (.I0(obs_cid[48]),
        .I1(\cid[11][3]_i_4_n_0 ),
        .I2(obs_cid[47]),
        .I3(\cid[11][2]_i_2_n_0 ),
        .O(\ptr[11][2]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ptr[11][2]_i_9 
       (.I0(obs_cid[48]),
        .I1(\cid[11][3]_i_4_n_0 ),
        .O(\ptr[11][2]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair121" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \ptr[1][0]_i_1 
       (.I0(\ptr[1][0]_i_2_n_0 ),
        .O(\ptr[1][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0F4F0F0F0F000F0F)) 
    \ptr[1][0]_i_2 
       (.I0(obs_unrooted[1]),
        .I1(\cid[9][3]_i_3_n_0 ),
        .I2(\^obs_ptr [3]),
        .I3(\cid[3][3]_i_2_n_0 ),
        .I4(\cid[7][4]_i_6_n_0 ),
        .I5(\cid[1][4]_i_4_n_0 ),
        .O(\ptr[1][0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT3 #(
    .INIT(8'hC5)) 
    \ptr[2][1]_i_1 
       (.I0(\ptr[2][1]_i_2_n_0 ),
        .I1(\^obs_ptr [1]),
        .I2(\FSM_sequential_stage_reg[1]_rep__0_n_0 ),
        .O(c_ptr));
  LUT6 #(
    .INIT(64'h0F000F0F0F4F0F0F)) 
    \ptr[2][1]_i_2 
       (.I0(obs_unrooted[2]),
        .I1(\cid[10][1]_i_3_n_0 ),
        .I2(\^obs_ptr [7]),
        .I3(\cid[4][2]_i_3_n_0 ),
        .I4(\ptr[2][1]_i_3_n_0 ),
        .I5(\cid[2][4]_i_5_n_0 ),
        .O(\ptr[2][1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ptr[2][1]_i_3 
       (.I0(obs_growth[3]),
        .I1(obs_growth[2]),
        .O(\ptr[2][1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT3 #(
    .INIT(8'hC5)) 
    \ptr[3][0]_i_1 
       (.I0(\active[3]_i_2_n_0 ),
        .I1(\^obs_ptr [3]),
        .I2(\FSM_sequential_stage_reg[1]_rep__0_n_0 ),
        .O(\ptr[3][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFCFF55F00C00550)) 
    \ptr[4][1]_i_1 
       (.I0(\ptr[4][1]_i_2_n_0 ),
        .I1(\^obs_ptr [7]),
        .I2(stage__0[2]),
        .I3(stage__0[0]),
        .I4(\FSM_sequential_stage_reg[1]_rep_n_0 ),
        .I5(\^obs_ptr [13]),
        .O(\ptr[4][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0F000F0F0F4F0F0F)) 
    \ptr[4][1]_i_2 
       (.I0(obs_unrooted[4]),
        .I1(\cid[10][3]_i_2_n_0 ),
        .I2(\^obs_ptr [13]),
        .I3(\cid[4][4]_i_4_n_0 ),
        .I4(\ptr[4][1]_i_3_n_0 ),
        .I5(\cid[4][4]_i_6_n_0 ),
        .O(\ptr[4][1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ptr[4][1]_i_3 
       (.I0(obs_growth[5]),
        .I1(obs_growth[4]),
        .O(\ptr[4][1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFCFF55F00C00550)) 
    \ptr[5][0]_i_1 
       (.I0(\ptr[5][0]_i_2_n_0 ),
        .I1(\^obs_ptr [9]),
        .I2(stage__0[2]),
        .I3(stage__0[0]),
        .I4(\FSM_sequential_stage_reg[1]_rep_n_0 ),
        .I5(\^obs_ptr [15]),
        .O(\ptr[5][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0F000F0F0F4F0F0F)) 
    \ptr[5][0]_i_2 
       (.I0(obs_unrooted[5]),
        .I1(\cid[11][2]_i_3_n_0 ),
        .I2(\^obs_ptr [15]),
        .I3(\cid[5][4]_i_4_n_0 ),
        .I4(\ptr[5][0]_i_3_n_0 ),
        .I5(\cid[5][4]_i_6_n_0 ),
        .O(\ptr[5][0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ptr[5][0]_i_3 
       (.I0(obs_growth[23]),
        .I1(obs_growth[22]),
        .O(\ptr[5][0]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \ptr[6][0]_i_1 
       (.I0(\defect[6]_i_2_n_0 ),
        .O(\ptr[6][0]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \ptr[6][1]_i_1 
       (.I0(\defect[6]_i_3_n_0 ),
        .O(\ptr[6][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \ptr[7][0]_i_1 
       (.I0(\defect[7]_i_2_n_0 ),
        .O(\ptr[7][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFF8F8F888888888)) 
    \ptr[7][1]_i_1 
       (.I0(\^obs_ptr [22]),
        .I1(\cid[9][3]_i_3_n_0 ),
        .I2(\ptr[7][1]_i_2_n_0 ),
        .I3(\cid[7][4]_i_4_n_0 ),
        .I4(\ptr[7][1]_i_3_n_0 ),
        .I5(\ptr[7][1]_i_4_n_0 ),
        .O(\ptr[7][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000AB330000AA00)) 
    \ptr[7][1]_i_2 
       (.I0(\cid[7][3]_i_6_n_0 ),
        .I1(\ptr[7][1]_i_5_n_0 ),
        .I2(\ptr[7][1]_i_6_n_0 ),
        .I3(\cid[7][4]_i_6_n_0 ),
        .I4(\cid[7][4]_i_7_n_0 ),
        .I5(\^obs_ptr [22]),
        .O(\ptr[7][1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB0FBB0FBB0FB20F2)) 
    \ptr[7][1]_i_3 
       (.I0(\cid[7][3]_i_3_n_0 ),
        .I1(obs_cid[48]),
        .I2(\cid[7][4]_i_3_n_0 ),
        .I3(obs_cid[49]),
        .I4(\ptr[7][1]_i_7_n_0 ),
        .I5(\ptr[7][1]_i_8_n_0 ),
        .O(\ptr[7][1]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h5155)) 
    \ptr[7][1]_i_4 
       (.I0(\cid[9][3]_i_3_n_0 ),
        .I1(\cid[11][1]_i_3_n_0 ),
        .I2(obs_unrooted[7]),
        .I3(\cid[7][4]_i_4_n_0 ),
        .O(\ptr[7][1]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \ptr[7][1]_i_5 
       (.I0(obs_growth[6]),
        .I1(obs_growth[7]),
        .I2(\cid[7][3]_i_8_n_0 ),
        .O(\ptr[7][1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \ptr[7][1]_i_6 
       (.I0(obs_cid[5]),
        .I1(obs_cid[9]),
        .I2(obs_cid[7]),
        .I3(obs_cid[6]),
        .I4(obs_cid[8]),
        .I5(obs_unrooted[7]),
        .O(\ptr[7][1]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h444D0000444D444D)) 
    \ptr[7][1]_i_7 
       (.I0(obs_cid[46]),
        .I1(\cid[7][1]_i_3_n_0 ),
        .I2(\cid[7][0]_i_3_n_0 ),
        .I3(obs_cid[45]),
        .I4(\cid[7][2]_i_3_n_0 ),
        .I5(obs_cid[47]),
        .O(\ptr[7][1]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ptr[7][1]_i_8 
       (.I0(\cid[7][2]_i_3_n_0 ),
        .I1(obs_cid[47]),
        .O(\ptr[7][1]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ptr[8][0]_i_1 
       (.I0(\^obs_ptr [18]),
        .I1(\FSM_sequential_stage_reg[1]_rep__0_n_0 ),
        .I2(\ptr[8][0]_i_2_n_0 ),
        .O(\ptr[8][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBAABABBBBBBBB)) 
    \ptr[8][0]_i_2 
       (.I0(\defect[8]_i_8_n_0 ),
        .I1(\defect[8]_i_7_n_0 ),
        .I2(\ptr[8][1]_i_3_n_0 ),
        .I3(\ptr[8][1]_i_4_n_0 ),
        .I4(\ptr[8][1]_i_5_n_0 ),
        .I5(\cid[8][4]_i_4_n_0 ),
        .O(\ptr[8][0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT3 #(
    .INIT(8'h8B)) 
    \ptr[8][1]_i_1 
       (.I0(\^obs_ptr [19]),
        .I1(\FSM_sequential_stage_reg[1]_rep__0_n_0 ),
        .I2(\ptr[8][1]_i_2_n_0 ),
        .O(\ptr[8][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4444554544444444)) 
    \ptr[8][1]_i_2 
       (.I0(\defect[8]_i_6_n_0 ),
        .I1(\defect[8]_i_5_n_0 ),
        .I2(\ptr[8][1]_i_3_n_0 ),
        .I3(\ptr[8][1]_i_4_n_0 ),
        .I4(\ptr[8][1]_i_5_n_0 ),
        .I5(\cid[8][4]_i_4_n_0 ),
        .O(\ptr[8][1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFE8FFE8FF00)) 
    \ptr[8][1]_i_3 
       (.I0(\cid[8][1]_i_3_n_0 ),
        .I1(obs_cid[31]),
        .I2(\ptr[8][1]_i_6_n_0 ),
        .I3(\ptr[8][1]_i_7_n_0 ),
        .I4(\cid[8][2]_i_3_n_0 ),
        .I5(obs_cid[32]),
        .O(\ptr[8][1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT4 #(
    .INIT(16'h1F11)) 
    \ptr[8][1]_i_4 
       (.I0(\cid[8][4]_i_2_n_0 ),
        .I1(obs_cid[34]),
        .I2(obs_cid[33]),
        .I3(\cid[8][3]_i_4_n_0 ),
        .O(\ptr[8][1]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \ptr[8][1]_i_5 
       (.I0(\cid[8][4]_i_2_n_0 ),
        .I1(obs_cid[34]),
        .O(\ptr[8][1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAEFEAAAAEEFEEEEE)) 
    \ptr[8][1]_i_6 
       (.I0(obs_cid[30]),
        .I1(\cid[8][0]_i_4_n_0 ),
        .I2(\cid[8][3]_i_6_n_0 ),
        .I3(obs_cid[50]),
        .I4(\grown[8]_i_8_n_0 ),
        .I5(\cid[8][4]_i_7_n_0 ),
        .O(\ptr[8][1]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h000888080A0A8A0A)) 
    \ptr[8][1]_i_7 
       (.I0(obs_cid[33]),
        .I1(\grown[8]_i_8_n_0 ),
        .I2(\cid[8][3]_i_7_n_0 ),
        .I3(\cid[8][3]_i_6_n_0 ),
        .I4(obs_cid[53]),
        .I5(\cid[8][4]_i_7_n_0 ),
        .O(\ptr[8][1]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h00000000D8D8DDD8)) 
    \ptr[8][2]_i_1 
       (.I0(\cid[10][1]_i_3_n_0 ),
        .I1(\^obs_ptr [26]),
        .I2(\ptr[8][2]_i_2_n_0 ),
        .I3(\cid[8][4]_i_4_n_0 ),
        .I4(\ptr[8][2]_i_3_n_0 ),
        .I5(\FSM_sequential_stage_reg[1]_rep__0_n_0 ),
        .O(\ptr[8][2]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \ptr[8][2]_i_10 
       (.I0(\cid[8][2]_i_3_n_0 ),
        .I1(obs_cid[32]),
        .O(\ptr[8][2]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFB200FFB2)) 
    \ptr[8][2]_i_11 
       (.I0(\cid[8][1]_i_4_n_0 ),
        .I1(obs_cid[51]),
        .I2(\cid[8][3]_i_12_n_0 ),
        .I3(\cid[8][2]_i_4_n_0 ),
        .I4(obs_cid[52]),
        .I5(\ptr[8][2]_i_14_n_0 ),
        .O(\ptr[8][2]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h4D444D444D44DD4D)) 
    \ptr[8][2]_i_12 
       (.I0(obs_cid[44]),
        .I1(obs_cid[14]),
        .I2(obs_cid[43]),
        .I3(obs_cid[13]),
        .I4(\ptr[8][2]_i_15_n_0 ),
        .I5(\ptr[8][2]_i_16_n_0 ),
        .O(\ptr[8][2]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h1711171117117717)) 
    \ptr[8][2]_i_13 
       (.I0(\cid[8][4]_i_13_n_0 ),
        .I1(obs_cid[49]),
        .I2(obs_cid[48]),
        .I3(\cid[8][3]_i_14_n_0 ),
        .I4(\ptr[8][2]_i_17_n_0 ),
        .I5(\ptr[8][2]_i_18_n_0 ),
        .O(\ptr[8][2]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FD5DCC4C)) 
    \ptr[8][2]_i_14 
       (.I0(\cid[8][3]_i_17_n_0 ),
        .I1(\cid[8][3]_i_14_n_0 ),
        .I2(\ptr[8][2]_i_13_n_0 ),
        .I3(obs_cid[48]),
        .I4(\cid[8][4]_i_14_n_0 ),
        .I5(obs_cid[53]),
        .O(\ptr[8][2]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h2202FF0F00002202)) 
    \ptr[8][2]_i_15 
       (.I0(obs_cid[40]),
        .I1(obs_cid[10]),
        .I2(obs_cid[12]),
        .I3(obs_cid[42]),
        .I4(obs_cid[11]),
        .I5(obs_cid[41]),
        .O(\ptr[8][2]_i_15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair119" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ptr[8][2]_i_16 
       (.I0(obs_cid[42]),
        .I1(obs_cid[12]),
        .O(\ptr[8][2]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hEF0EEF0E0000EF0E)) 
    \ptr[8][2]_i_17 
       (.I0(obs_cid[45]),
        .I1(\cid[8][0]_i_5_n_0 ),
        .I2(\cid[8][1]_i_5_n_0 ),
        .I3(obs_cid[46]),
        .I4(\cid[8][2]_i_5_n_0 ),
        .I5(obs_cid[47]),
        .O(\ptr[8][2]_i_17_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ptr[8][2]_i_18 
       (.I0(obs_cid[47]),
        .I1(\cid[8][2]_i_5_n_0 ),
        .O(\ptr[8][2]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000200)) 
    \ptr[8][2]_i_2 
       (.I0(\ptr[8][2]_i_4_n_0 ),
        .I1(\ptr[8][2]_i_5_n_0 ),
        .I2(\ptr[8][2]_i_6_n_0 ),
        .I3(\^obs_ptr [26]),
        .I4(\ptr[8][2]_i_7_n_0 ),
        .I5(\ptr[8][2]_i_8_n_0 ),
        .O(\ptr[8][2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hE8EEE8EEE8EE88E8)) 
    \ptr[8][2]_i_3 
       (.I0(\cid[8][4]_i_2_n_0 ),
        .I1(obs_cid[34]),
        .I2(obs_cid[33]),
        .I3(\cid[8][3]_i_4_n_0 ),
        .I4(\ptr[8][2]_i_9_n_0 ),
        .I5(\ptr[8][2]_i_10_n_0 ),
        .O(\ptr[8][2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h77F75555FFFF77F7)) 
    \ptr[8][2]_i_4 
       (.I0(\cid[8][4]_i_7_n_0 ),
        .I1(\ptr[8][2]_i_11_n_0 ),
        .I2(obs_cid[53]),
        .I3(\cid[8][3]_i_7_n_0 ),
        .I4(obs_cid[54]),
        .I5(\cid[8][4]_i_8_n_0 ),
        .O(\ptr[8][2]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h00F80088)) 
    \ptr[8][2]_i_5 
       (.I0(\cid[8][4]_i_7_n_0 ),
        .I1(\cid[10][3]_i_2_n_0 ),
        .I2(\cid[8][3]_i_3_n_0 ),
        .I3(obs_unrooted[8]),
        .I4(\cid[8][4]_i_4_n_0 ),
        .O(\ptr[8][2]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \ptr[8][2]_i_6 
       (.I0(obs_unrooted[8]),
        .I1(\cid[11][1]_i_3_n_0 ),
        .I2(\cid[8][4]_i_14_n_0 ),
        .O(\ptr[8][2]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT5 #(
    .INIT(32'h00004F00)) 
    \ptr[8][2]_i_7 
       (.I0(obs_unrooted[8]),
        .I1(\cid[4][2]_i_3_n_0 ),
        .I2(\ptr[8][2]_i_12_n_0 ),
        .I3(obs_growth[3]),
        .I4(obs_growth[2]),
        .O(\ptr[8][2]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair122" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \ptr[8][2]_i_8 
       (.I0(\ptr[8][2]_i_13_n_0 ),
        .I1(\cid[8][4]_i_14_n_0 ),
        .O(\ptr[8][2]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFEE0FEE0FEE00000)) 
    \ptr[8][2]_i_9 
       (.I0(obs_cid[30]),
        .I1(\cid[8][0]_i_3_n_0 ),
        .I2(obs_cid[31]),
        .I3(\cid[8][1]_i_3_n_0 ),
        .I4(obs_cid[32]),
        .I5(\cid[8][2]_i_3_n_0 ),
        .O(\ptr[8][2]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ptr[9][0]_i_1 
       (.I0(\^obs_ptr [21]),
        .I1(\FSM_sequential_stage_reg[1]_rep__0_n_0 ),
        .I2(\ptr[9][0]_i_2_n_0 ),
        .O(\ptr[9][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8888888B888B888B)) 
    \ptr[9][0]_i_2 
       (.I0(\^obs_ptr [27]),
        .I1(\cid[11][1]_i_3_n_0 ),
        .I2(\ptr[9][2]_i_8_n_0 ),
        .I3(\ptr[9][0]_i_3_n_0 ),
        .I4(\ptr[9][2]_i_3_n_0 ),
        .I5(\ptr[9][2]_i_4_n_0 ),
        .O(\ptr[9][0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h888AAAAA)) 
    \ptr[9][0]_i_3 
       (.I0(\ptr[9][2]_i_5_n_0 ),
        .I1(\ptr[9][2]_i_6_n_0 ),
        .I2(\ptr[9][2]_i_7_n_0 ),
        .I3(\^obs_ptr [27]),
        .I4(\ptr[9][2]_i_9_n_0 ),
        .O(\ptr[9][0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8BBB8BBB8BB)) 
    \ptr[9][1]_i_1 
       (.I0(\^obs_ptr [22]),
        .I1(\FSM_sequential_stage_reg[1]_rep__0_n_0 ),
        .I2(\ptr[9][1]_i_2_n_0 ),
        .I3(\ptr[9][1]_i_3_n_0 ),
        .I4(\ptr[9][2]_i_4_n_0 ),
        .I5(\ptr[9][2]_i_3_n_0 ),
        .O(\ptr[9][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \ptr[9][1]_i_2 
       (.I0(\^obs_ptr [28]),
        .I1(obs_cid[49]),
        .I2(obs_cid[48]),
        .I3(obs_cid[47]),
        .I4(obs_cid[46]),
        .I5(obs_cid[45]),
        .O(\ptr[9][1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF45550000)) 
    \ptr[9][1]_i_3 
       (.I0(\ptr[9][1]_i_4_n_0 ),
        .I1(\ptr[9][2]_i_7_n_0 ),
        .I2(\^obs_ptr [28]),
        .I3(\ptr[9][2]_i_10_n_0 ),
        .I4(\ptr[9][2]_i_5_n_0 ),
        .I5(\ptr[9][1]_i_5_n_0 ),
        .O(\ptr[9][1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ptr[9][1]_i_4 
       (.I0(\ptr[9][2]_i_19_n_0 ),
        .I1(\ptr[9][2]_i_18_n_0 ),
        .O(\ptr[9][1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00F80088)) 
    \ptr[9][1]_i_5 
       (.I0(\cid[9][4]_i_7_n_0 ),
        .I1(\cid[11][2]_i_3_n_0 ),
        .I2(\ptr[9][2]_i_3_n_0 ),
        .I3(obs_unrooted[9]),
        .I4(\cid[9][3]_i_3_n_0 ),
        .I5(\cid[11][1]_i_3_n_0 ),
        .O(\ptr[9][1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00000000DDD8D8D8)) 
    \ptr[9][2]_i_1 
       (.I0(\cid[11][1]_i_3_n_0 ),
        .I1(\^obs_ptr [29]),
        .I2(\ptr[9][2]_i_2_n_0 ),
        .I3(\ptr[9][2]_i_3_n_0 ),
        .I4(\ptr[9][2]_i_4_n_0 ),
        .I5(\FSM_sequential_stage_reg[1]_rep__0_n_0 ),
        .O(\ptr[9][2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF77077777)) 
    \ptr[9][2]_i_10 
       (.I0(\cid[8][4]_i_11_n_0 ),
        .I1(\cid[10][1]_i_3_n_0 ),
        .I2(obs_growth[15]),
        .I3(obs_growth[14]),
        .I4(\cid[5][1]_i_2_n_0 ),
        .I5(obs_unrooted[9]),
        .O(\ptr[9][2]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \ptr[9][2]_i_11 
       (.I0(obs_cid[55]),
        .I1(obs_cid[56]),
        .I2(obs_cid[57]),
        .I3(obs_cid[59]),
        .I4(obs_cid[58]),
        .I5(obs_unrooted[9]),
        .O(\ptr[9][2]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFEE0FEE00000FEE0)) 
    \ptr[9][2]_i_12 
       (.I0(obs_cid[35]),
        .I1(\cid[9][0]_i_3_n_0 ),
        .I2(obs_cid[36]),
        .I3(\cid[9][1]_i_3_n_0 ),
        .I4(\cid[9][2]_i_3_n_0 ),
        .I5(obs_cid[37]),
        .O(\ptr[9][2]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \ptr[9][2]_i_13 
       (.I0(obs_cid[37]),
        .I1(\cid[9][2]_i_3_n_0 ),
        .O(\ptr[9][2]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00B2B2FF)) 
    \ptr[9][2]_i_14 
       (.I0(\cid[9][1]_i_4_n_0 ),
        .I1(obs_cid[56]),
        .I2(\cid[9][3]_i_13_n_0 ),
        .I3(obs_cid[57]),
        .I4(\cid[9][2]_i_4_n_0 ),
        .I5(\ptr[9][2]_i_20_n_0 ),
        .O(\ptr[9][2]_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    \ptr[9][2]_i_15 
       (.I0(obs_cid[43]),
        .I1(obs_cid[48]),
        .I2(obs_cid[42]),
        .I3(obs_cid[47]),
        .O(\ptr[9][2]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h2202FF0F00002202)) 
    \ptr[9][2]_i_16 
       (.I0(obs_cid[45]),
        .I1(obs_cid[40]),
        .I2(obs_cid[42]),
        .I3(obs_cid[47]),
        .I4(obs_cid[41]),
        .I5(obs_cid[46]),
        .O(\ptr[9][2]_i_16_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    \ptr[9][2]_i_17 
       (.I0(obs_cid[48]),
        .I1(obs_cid[43]),
        .I2(obs_cid[49]),
        .I3(obs_cid[44]),
        .O(\ptr[9][2]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hB2BBB2BBB2BB22B2)) 
    \ptr[9][2]_i_18 
       (.I0(obs_cid[19]),
        .I1(\cid[9][4]_i_8_n_0 ),
        .I2(obs_cid[18]),
        .I3(\cid[9][3]_i_15_n_0 ),
        .I4(\ptr[9][2]_i_21_n_0 ),
        .I5(\ptr[9][2]_i_22_n_0 ),
        .O(\ptr[9][2]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h4444404444444444)) 
    \ptr[9][2]_i_19 
       (.I0(obs_growth[14]),
        .I1(obs_growth[15]),
        .I2(obs_growth[12]),
        .I3(obs_growth[13]),
        .I4(obs_unrooted[9]),
        .I5(\cid[10][1]_i_3_n_0 ),
        .O(\ptr[9][2]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h0000020000000000)) 
    \ptr[9][2]_i_2 
       (.I0(\ptr[9][2]_i_5_n_0 ),
        .I1(\ptr[9][2]_i_6_n_0 ),
        .I2(\ptr[9][2]_i_7_n_0 ),
        .I3(\^obs_ptr [29]),
        .I4(\ptr[9][2]_i_8_n_0 ),
        .I5(\ptr[9][2]_i_9_n_0 ),
        .O(\ptr[9][2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FD5DFD00)) 
    \ptr[9][2]_i_20 
       (.I0(\grown[9]_i_8_n_0 ),
        .I1(obs_cid[18]),
        .I2(\ptr[9][2]_i_18_n_0 ),
        .I3(\cid[9][3]_i_15_n_0 ),
        .I4(\ptr[9][2]_i_19_n_0 ),
        .I5(obs_cid[58]),
        .O(\ptr[9][2]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hFBB0FBB00000FBB0)) 
    \ptr[9][2]_i_21 
       (.I0(obs_cid[15]),
        .I1(\cid[9][0]_i_5_n_0 ),
        .I2(obs_cid[16]),
        .I3(\cid[9][1]_i_5_n_0 ),
        .I4(\cid[9][2]_i_5_n_0 ),
        .I5(obs_cid[17]),
        .O(\ptr[9][2]_i_21_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ptr[9][2]_i_22 
       (.I0(obs_cid[17]),
        .I1(\cid[9][2]_i_5_n_0 ),
        .O(\ptr[9][2]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'h00000000A2AA0000)) 
    \ptr[9][2]_i_3 
       (.I0(\ptr[9][2]_i_10_n_0 ),
        .I1(\ptr[9][2]_i_11_n_0 ),
        .I2(obs_growth[24]),
        .I3(obs_growth[25]),
        .I4(obs_growth[17]),
        .I5(obs_growth[16]),
        .O(\ptr[9][2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h4D444D444D44DD4D)) 
    \ptr[9][2]_i_4 
       (.I0(obs_cid[39]),
        .I1(\cid[9][4]_i_5_n_0 ),
        .I2(obs_cid[38]),
        .I3(\cid[9][3]_i_5_n_0 ),
        .I4(\ptr[9][2]_i_12_n_0 ),
        .I5(\ptr[9][2]_i_13_n_0 ),
        .O(\ptr[9][2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h4D4DCF4DFFFFFFFF)) 
    \ptr[9][2]_i_5 
       (.I0(\ptr[9][2]_i_14_n_0 ),
        .I1(obs_cid[59]),
        .I2(\cid[9][4]_i_6_n_0 ),
        .I3(obs_cid[58]),
        .I4(\cid[9][3]_i_8_n_0 ),
        .I5(\cid[9][4]_i_7_n_0 ),
        .O(\ptr[9][2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FF404040)) 
    \ptr[9][2]_i_6 
       (.I0(obs_growth[12]),
        .I1(obs_growth[13]),
        .I2(\cid[10][1]_i_3_n_0 ),
        .I3(\cid[9][4]_i_7_n_0 ),
        .I4(\cid[11][2]_i_3_n_0 ),
        .I5(obs_unrooted[9]),
        .O(\ptr[9][2]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h00A8AAAA00A800A8)) 
    \ptr[9][2]_i_7 
       (.I0(\cid[8][4]_i_11_n_0 ),
        .I1(\ptr[9][2]_i_15_n_0 ),
        .I2(\ptr[9][2]_i_16_n_0 ),
        .I3(\ptr[9][2]_i_17_n_0 ),
        .I4(obs_cid[44]),
        .I5(obs_cid[49]),
        .O(\ptr[9][2]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \ptr[9][2]_i_8 
       (.I0(\ptr[9][2]_i_3_n_0 ),
        .I1(obs_unrooted[9]),
        .I2(\cid[9][3]_i_3_n_0 ),
        .O(\ptr[9][2]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT4 #(
    .INIT(16'hD0FF)) 
    \ptr[9][2]_i_9 
       (.I0(\cid[5][1]_i_2_n_0 ),
        .I1(obs_unrooted[9]),
        .I2(\ptr[9][2]_i_18_n_0 ),
        .I3(\ptr[9][2]_i_19_n_0 ),
        .O(\ptr[9][2]_i_9_n_0 ));
  FDRE \ptr_reg[0][1] 
       (.C(clk),
        .CE(\cid[7][4]_i_1_n_0 ),
        .D(\ptr[0][1]_i_1_n_0 ),
        .Q(\^obs_ptr [1]),
        .R(reset));
  FDRE \ptr_reg[10][0] 
       (.C(clk),
        .CE(\cid[10][4]_i_1_n_0 ),
        .D(\ptr[10][0]_i_1_n_0 ),
        .Q(\^obs_ptr [30]),
        .R(reset));
  FDRE \ptr_reg[10][1] 
       (.C(clk),
        .CE(\cid[10][4]_i_1_n_0 ),
        .D(\ptr[10][1]_i_1_n_0 ),
        .Q(\^obs_ptr [31]),
        .R(reset));
  FDRE \ptr_reg[10][2] 
       (.C(clk),
        .CE(\cid[10][4]_i_1_n_0 ),
        .D(\ptr[10][2]_i_1_n_0 ),
        .Q(\^obs_ptr [32]),
        .R(reset));
  FDRE \ptr_reg[11][0] 
       (.C(clk),
        .CE(\cid[11][4]_i_1_n_0 ),
        .D(\ptr[11][0]_i_1_n_0 ),
        .Q(\^obs_ptr [33]),
        .R(reset));
  FDRE \ptr_reg[11][1] 
       (.C(clk),
        .CE(\cid[11][4]_i_1_n_0 ),
        .D(\ptr[11][1]_i_1_n_0 ),
        .Q(\^obs_ptr [34]),
        .R(reset));
  FDRE \ptr_reg[11][2] 
       (.C(clk),
        .CE(\cid[11][4]_i_1_n_0 ),
        .D(\ptr[11][2]_i_1_n_0 ),
        .Q(\^obs_ptr [35]),
        .R(reset));
  FDRE \ptr_reg[1][0] 
       (.C(clk),
        .CE(\cid[7][4]_i_1_n_0 ),
        .D(\ptr[1][0]_i_1_n_0 ),
        .Q(\^obs_ptr [3]),
        .R(reset));
  FDRE \ptr_reg[2][1] 
       (.C(clk),
        .CE(\cid[9][4]_i_1_n_0 ),
        .D(c_ptr),
        .Q(\^obs_ptr [7]),
        .R(reset));
  FDRE \ptr_reg[3][0] 
       (.C(clk),
        .CE(\cid[9][4]_i_1_n_0 ),
        .D(\ptr[3][0]_i_1_n_0 ),
        .Q(\^obs_ptr [9]),
        .R(reset));
  FDRE \ptr_reg[4][1] 
       (.C(clk),
        .CE(1'b1),
        .D(\ptr[4][1]_i_1_n_0 ),
        .Q(\^obs_ptr [13]),
        .R(reset));
  FDRE \ptr_reg[5][0] 
       (.C(clk),
        .CE(1'b1),
        .D(\ptr[5][0]_i_1_n_0 ),
        .Q(\^obs_ptr [15]),
        .R(reset));
  FDRE \ptr_reg[6][0] 
       (.C(clk),
        .CE(\cid[7][4]_i_1_n_0 ),
        .D(\ptr[6][0]_i_1_n_0 ),
        .Q(\^obs_ptr [18]),
        .R(reset));
  FDRE \ptr_reg[6][1] 
       (.C(clk),
        .CE(\cid[7][4]_i_1_n_0 ),
        .D(\ptr[6][1]_i_1_n_0 ),
        .Q(\^obs_ptr [19]),
        .R(reset));
  FDRE \ptr_reg[7][0] 
       (.C(clk),
        .CE(\cid[7][4]_i_1_n_0 ),
        .D(\ptr[7][0]_i_1_n_0 ),
        .Q(\^obs_ptr [21]),
        .R(reset));
  FDRE \ptr_reg[7][1] 
       (.C(clk),
        .CE(\cid[7][4]_i_1_n_0 ),
        .D(\ptr[7][1]_i_1_n_0 ),
        .Q(\^obs_ptr [22]),
        .R(reset));
  FDRE \ptr_reg[8][0] 
       (.C(clk),
        .CE(\cid[9][4]_i_1_n_0 ),
        .D(\ptr[8][0]_i_1_n_0 ),
        .Q(\^obs_ptr [24]),
        .R(reset));
  FDRE \ptr_reg[8][1] 
       (.C(clk),
        .CE(\cid[9][4]_i_1_n_0 ),
        .D(\ptr[8][1]_i_1_n_0 ),
        .Q(\^obs_ptr [25]),
        .R(reset));
  FDRE \ptr_reg[8][2] 
       (.C(clk),
        .CE(\cid[9][4]_i_1_n_0 ),
        .D(\ptr[8][2]_i_1_n_0 ),
        .Q(\^obs_ptr [26]),
        .R(reset));
  FDRE \ptr_reg[9][0] 
       (.C(clk),
        .CE(\cid[9][4]_i_1_n_0 ),
        .D(\ptr[9][0]_i_1_n_0 ),
        .Q(\^obs_ptr [27]),
        .R(reset));
  FDRE \ptr_reg[9][1] 
       (.C(clk),
        .CE(\cid[9][4]_i_1_n_0 ),
        .D(\ptr[9][1]_i_1_n_0 ),
        .Q(\^obs_ptr [28]),
        .R(reset));
  FDRE \ptr_reg[9][2] 
       (.C(clk),
        .CE(\cid[9][4]_i_1_n_0 ),
        .D(\ptr[9][2]_i_1_n_0 ),
        .Q(\^obs_ptr [29]),
        .R(reset));
  LUT6 #(
    .INIT(64'h77777777777777F3)) 
    \step_cnt[0]_i_1 
       (.I0(\step_cnt_reg_n_0_[0] ),
        .I1(\cid[7][4]_i_1_n_0 ),
        .I2(stage__0[2]),
        .I3(\busy[9]_i_1_n_0 ),
        .I4(done_i_2_n_0),
        .I5(\busy[8]_i_1_n_0 ),
        .O(\step_cnt[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00FEFE00)) 
    \step_cnt[1]_i_1 
       (.I0(\busy[9]_i_1_n_0 ),
        .I1(done_i_2_n_0),
        .I2(\busy[8]_i_1_n_0 ),
        .I3(\step_cnt_reg_n_0_[1] ),
        .I4(\step_cnt_reg_n_0_[0] ),
        .O(\step_cnt[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00FEFEFEFE000000)) 
    \step_cnt[2]_i_1 
       (.I0(\busy[9]_i_1_n_0 ),
        .I1(done_i_2_n_0),
        .I2(\busy[8]_i_1_n_0 ),
        .I3(\step_cnt_reg_n_0_[0] ),
        .I4(\step_cnt_reg_n_0_[1] ),
        .I5(\step_cnt_reg_n_0_[2] ),
        .O(\step_cnt[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00FEFE00)) 
    \step_cnt[3]_i_1 
       (.I0(\busy[9]_i_1_n_0 ),
        .I1(done_i_2_n_0),
        .I2(\busy[8]_i_1_n_0 ),
        .I3(\step_cnt[3]_i_2_n_0 ),
        .I4(\step_cnt_reg_n_0_[3] ),
        .O(\step_cnt[3]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \step_cnt[3]_i_2 
       (.I0(\step_cnt_reg_n_0_[1] ),
        .I1(\step_cnt_reg_n_0_[0] ),
        .I2(\step_cnt_reg_n_0_[2] ),
        .O(\step_cnt[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00FEFE00)) 
    \step_cnt[4]_i_1 
       (.I0(\busy[9]_i_1_n_0 ),
        .I1(done_i_2_n_0),
        .I2(\busy[8]_i_1_n_0 ),
        .I3(\step_cnt[4]_i_2_n_0 ),
        .I4(\step_cnt_reg_n_0_[4] ),
        .O(\step_cnt[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \step_cnt[4]_i_2 
       (.I0(\step_cnt_reg_n_0_[2] ),
        .I1(\step_cnt_reg_n_0_[0] ),
        .I2(\step_cnt_reg_n_0_[1] ),
        .I3(\step_cnt_reg_n_0_[3] ),
        .O(\step_cnt[4]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00FEFE00)) 
    \step_cnt[5]_i_1 
       (.I0(\busy[9]_i_1_n_0 ),
        .I1(done_i_2_n_0),
        .I2(\busy[8]_i_1_n_0 ),
        .I3(\step_cnt[5]_i_2_n_0 ),
        .I4(\step_cnt_reg_n_0_[5] ),
        .O(\step_cnt[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \step_cnt[5]_i_2 
       (.I0(\step_cnt_reg_n_0_[3] ),
        .I1(\step_cnt_reg_n_0_[1] ),
        .I2(\step_cnt_reg_n_0_[0] ),
        .I3(\step_cnt_reg_n_0_[2] ),
        .I4(\step_cnt_reg_n_0_[4] ),
        .O(\step_cnt[5]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00FEFE00)) 
    \step_cnt[6]_i_1 
       (.I0(\busy[9]_i_1_n_0 ),
        .I1(done_i_2_n_0),
        .I2(\busy[8]_i_1_n_0 ),
        .I3(\step_cnt[7]_i_3_n_0 ),
        .I4(\step_cnt_reg_n_0_[6] ),
        .O(\step_cnt[6]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h66FE)) 
    \step_cnt[7]_i_1 
       (.I0(stage__0[2]),
        .I1(stage__0[0]),
        .I2(start),
        .I3(\FSM_sequential_stage_reg[1]_rep_n_0 ),
        .O(step_cnt));
  LUT6 #(
    .INIT(64'h00FEFEFEFE000000)) 
    \step_cnt[7]_i_2 
       (.I0(\busy[9]_i_1_n_0 ),
        .I1(done_i_2_n_0),
        .I2(\busy[8]_i_1_n_0 ),
        .I3(\step_cnt_reg_n_0_[6] ),
        .I4(\step_cnt[7]_i_3_n_0 ),
        .I5(\step_cnt_reg_n_0_[7] ),
        .O(\step_cnt[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \step_cnt[7]_i_3 
       (.I0(\step_cnt_reg_n_0_[4] ),
        .I1(\step_cnt_reg_n_0_[2] ),
        .I2(\step_cnt_reg_n_0_[0] ),
        .I3(\step_cnt_reg_n_0_[1] ),
        .I4(\step_cnt_reg_n_0_[3] ),
        .I5(\step_cnt_reg_n_0_[5] ),
        .O(\step_cnt[7]_i_3_n_0 ));
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
        .I2(\cid[2][3]_i_2_n_0 ),
        .I3(\FSM_sequential_stage_reg[1]_rep_n_0 ),
        .I4(obs_unrooted[0]),
        .O(\unrooted[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h99FF0060)) 
    \unrooted[10]_i_1 
       (.I0(stage__0[0]),
        .I1(stage__0[2]),
        .I2(\cid[10][3]_i_2_n_0 ),
        .I3(\FSM_sequential_stage_reg[1]_rep_n_0 ),
        .I4(obs_unrooted[10]),
        .O(\unrooted[10]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h99FF0060)) 
    \unrooted[11]_i_1 
       (.I0(stage__0[0]),
        .I1(stage__0[2]),
        .I2(\cid[11][2]_i_3_n_0 ),
        .I3(\FSM_sequential_stage_reg[1]_rep_n_0 ),
        .I4(obs_unrooted[11]),
        .O(\unrooted[11]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h99FF0060)) 
    \unrooted[1]_i_1 
       (.I0(stage__0[0]),
        .I1(stage__0[2]),
        .I2(\cid[3][3]_i_2_n_0 ),
        .I3(\FSM_sequential_stage_reg[1]_rep_n_0 ),
        .I4(obs_unrooted[1]),
        .O(\unrooted[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h99FF0060)) 
    \unrooted[2]_i_1 
       (.I0(stage__0[0]),
        .I1(stage__0[2]),
        .I2(\cid[4][2]_i_3_n_0 ),
        .I3(\FSM_sequential_stage_reg[1]_rep_n_0 ),
        .I4(obs_unrooted[2]),
        .O(\unrooted[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h99FF0060)) 
    \unrooted[3]_i_1 
       (.I0(stage__0[0]),
        .I1(stage__0[2]),
        .I2(\cid[5][1]_i_2_n_0 ),
        .I3(\FSM_sequential_stage_reg[1]_rep_n_0 ),
        .I4(obs_unrooted[3]),
        .O(\unrooted[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h99FF0060)) 
    \unrooted[4]_i_1 
       (.I0(stage__0[0]),
        .I1(stage__0[2]),
        .I2(\cid[4][4]_i_4_n_0 ),
        .I3(\FSM_sequential_stage_reg[1]_rep_n_0 ),
        .I4(obs_unrooted[4]),
        .O(\unrooted[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h99FF0060)) 
    \unrooted[5]_i_1 
       (.I0(stage__0[0]),
        .I1(stage__0[2]),
        .I2(\cid[5][4]_i_4_n_0 ),
        .I3(\FSM_sequential_stage_reg[1]_rep_n_0 ),
        .I4(obs_unrooted[5]),
        .O(\unrooted[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h99FF0060)) 
    \unrooted[6]_i_1 
       (.I0(stage__0[0]),
        .I1(stage__0[2]),
        .I2(\cid[8][3]_i_3_n_0 ),
        .I3(\FSM_sequential_stage_reg[1]_rep_n_0 ),
        .I4(obs_unrooted[6]),
        .O(\unrooted[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h99FF0060)) 
    \unrooted[7]_i_1 
       (.I0(stage__0[0]),
        .I1(stage__0[2]),
        .I2(\cid[9][3]_i_3_n_0 ),
        .I3(\FSM_sequential_stage_reg[1]_rep_n_0 ),
        .I4(obs_unrooted[7]),
        .O(\unrooted[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h99FF0060)) 
    \unrooted[8]_i_1 
       (.I0(stage__0[0]),
        .I1(stage__0[2]),
        .I2(\cid[10][1]_i_3_n_0 ),
        .I3(\FSM_sequential_stage_reg[1]_rep_n_0 ),
        .I4(obs_unrooted[8]),
        .O(\unrooted[8]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h99FF0060)) 
    \unrooted[9]_i_1 
       (.I0(stage__0[0]),
        .I1(stage__0[2]),
        .I2(\cid[11][1]_i_3_n_0 ),
        .I3(\FSM_sequential_stage_reg[1]_rep_n_0 ),
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
  FDRE \unrooted_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\unrooted[1]_i_1_n_0 ),
        .Q(obs_unrooted[1]),
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
       (.I0(\FSM_sequential_stage_reg[1]_rep_n_0 ),
        .I1(stage__0[0]),
        .I2(obs_grown[0]),
        .I3(obs_active[0]),
        .I4(obs_whole[0]),
        .I5(stage__0[2]),
        .O(\whole[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAEAEFFFFAEFF0000)) 
    \whole[10]_i_1 
       (.I0(\whole[10]_i_2_n_0 ),
        .I1(obs_whole[8]),
        .I2(stage__0[0]),
        .I3(\FSM_sequential_stage_reg[1]_rep_n_0 ),
        .I4(whole63_out),
        .I5(obs_whole[10]),
        .O(\whole[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \whole[10]_i_2 
       (.I0(obs_grown[10]),
        .I1(obs_active[10]),
        .I2(obs_whole[10]),
        .I3(stage__0[2]),
        .O(\whole[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0010AAAA80800000)) 
    \whole[10]_i_3 
       (.I0(stage__0[2]),
        .I1(obs_whole[10]),
        .I2(obs_active[10]),
        .I3(obs_grown[10]),
        .I4(stage__0[0]),
        .I5(\FSM_sequential_stage_reg[1]_rep_n_0 ),
        .O(whole63_out));
  LUT6 #(
    .INIT(64'hAEAEFFFFAEFF0000)) 
    \whole[11]_i_1 
       (.I0(\whole[11]_i_2_n_0 ),
        .I1(obs_whole[9]),
        .I2(stage__0[0]),
        .I3(\FSM_sequential_stage_reg[1]_rep_n_0 ),
        .I4(whole51_out),
        .I5(obs_whole[11]),
        .O(\whole[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \whole[11]_i_2 
       (.I0(obs_grown[11]),
        .I1(obs_active[11]),
        .I2(obs_whole[11]),
        .I3(stage__0[2]),
        .O(\whole[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0010AAAA80800000)) 
    \whole[11]_i_3 
       (.I0(stage__0[2]),
        .I1(obs_whole[11]),
        .I2(obs_active[11]),
        .I3(obs_grown[11]),
        .I4(stage__0[0]),
        .I5(\FSM_sequential_stage_reg[1]_rep_n_0 ),
        .O(whole51_out));
  LUT6 #(
    .INIT(64'hBBFF0000FFFF0800)) 
    \whole[1]_i_1 
       (.I0(\FSM_sequential_stage_reg[1]_rep_n_0 ),
        .I1(stage__0[0]),
        .I2(obs_grown[1]),
        .I3(obs_active[1]),
        .I4(obs_whole[1]),
        .I5(stage__0[2]),
        .O(\whole[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAEAEFFFFAEFF0000)) 
    \whole[2]_i_1 
       (.I0(\whole[2]_i_2_n_0 ),
        .I1(obs_whole[0]),
        .I2(stage__0[0]),
        .I3(\FSM_sequential_stage_reg[1]_rep__0_n_0 ),
        .I4(whole87_out),
        .I5(obs_whole[2]),
        .O(\whole[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
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
        .I5(\FSM_sequential_stage_reg[1]_rep__0_n_0 ),
        .O(whole87_out));
  LUT6 #(
    .INIT(64'hAAFAFFFFBBFB0000)) 
    \whole[3]_i_1 
       (.I0(\whole[3]_i_2_n_0 ),
        .I1(\FSM_sequential_stage_reg[1]_rep__0_n_0 ),
        .I2(obs_whole[1]),
        .I3(stage__0[0]),
        .I4(whole73_out),
        .I5(obs_whole[3]),
        .O(\whole[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
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
        .I5(\FSM_sequential_stage_reg[1]_rep__0_n_0 ),
        .O(whole73_out));
  LUT6 #(
    .INIT(64'hAAFAFFFFBBFB0000)) 
    \whole[4]_i_1 
       (.I0(\whole[4]_i_2_n_0 ),
        .I1(\FSM_sequential_stage_reg[1]_rep_n_0 ),
        .I2(obs_whole[2]),
        .I3(stage__0[0]),
        .I4(whole57_out),
        .I5(obs_whole[4]),
        .O(\whole[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
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
        .O(whole57_out));
  LUT6 #(
    .INIT(64'hAAFAFFFFBBFB0000)) 
    \whole[5]_i_1 
       (.I0(\whole[5]_i_2_n_0 ),
        .I1(\FSM_sequential_stage_reg[1]_rep_n_0 ),
        .I2(obs_whole[3]),
        .I3(stage__0[0]),
        .I4(whole45_out),
        .I5(obs_whole[5]),
        .O(\whole[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
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
        .I5(\FSM_sequential_stage_reg[1]_rep_n_0 ),
        .O(whole45_out));
  LUT6 #(
    .INIT(64'hBBFF0000FFFF0800)) 
    \whole[6]_i_1 
       (.I0(\FSM_sequential_stage_reg[1]_rep_n_0 ),
        .I1(stage__0[0]),
        .I2(obs_grown[6]),
        .I3(obs_active[6]),
        .I4(obs_whole[6]),
        .I5(stage__0[2]),
        .O(\whole[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBBFF0000FFFF0800)) 
    \whole[7]_i_1 
       (.I0(\FSM_sequential_stage_reg[1]_rep__0_n_0 ),
        .I1(stage__0[0]),
        .I2(obs_grown[7]),
        .I3(obs_active[7]),
        .I4(obs_whole[7]),
        .I5(stage__0[2]),
        .O(\whole[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAFAFFFFBBFB0000)) 
    \whole[8]_i_1 
       (.I0(\whole[8]_i_2_n_0 ),
        .I1(\FSM_sequential_stage_reg[1]_rep__0_n_0 ),
        .I2(obs_whole[6]),
        .I3(stage__0[0]),
        .I4(whole89_out),
        .I5(obs_whole[8]),
        .O(\whole[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
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
        .I5(\FSM_sequential_stage_reg[1]_rep__0_n_0 ),
        .O(whole89_out));
  LUT6 #(
    .INIT(64'hAAFAFFFFBBFB0000)) 
    \whole[9]_i_1 
       (.I0(\whole[9]_i_2_n_0 ),
        .I1(\FSM_sequential_stage_reg[1]_rep__0_n_0 ),
        .I2(obs_whole[7]),
        .I3(stage__0[0]),
        .I4(whole77_out),
        .I5(obs_whole[9]),
        .O(\whole[9]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
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
        .I5(\FSM_sequential_stage_reg[1]_rep__0_n_0 ),
        .O(whole77_out));
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
  FDSE \whole_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\whole[1]_i_1_n_0 ),
        .Q(obs_whole[1]),
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
