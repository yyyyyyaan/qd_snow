// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Sun Sep 20 20:54:38 2026
// Host        : DESKTOP-TO7M6OH running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               {D:\ycz\doc\deepseek_workzone\decoder\fpga_flow\logs/netlist_lat1_rep_d3_s3_netlist.v}
// Design      : snowflake_pe_array_lat1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcvu9p-flga2104-2L-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* ST_DROP = "3'b001" *) (* ST_GH = "3'b100" *) (* ST_GW = "3'b010" *) 
(* ST_MH = "3'b101" *) (* ST_MW = "3'b011" *) (* ZZZ_ANCHOR = "0" *) 
module snowflake_edge
   (clk,
    reset,
    stage,
    u_pulse,
    v_pulse,
    flip_u,
    flip_v,
    above_growth,
    above_ecorr,
    st_in,
    st_out);
  input clk;
  input reset;
  input [2:0]stage;
  input u_pulse;
  input v_pulse;
  input flip_u;
  input flip_v;
  input [1:0]above_growth;
  input above_ecorr;
  input [2:0]st_in;
  output [2:0]st_out;

  wire above_ecorr;
  wire [1:0]above_growth;
  wire flip_u;
  wire flip_v;
  wire [1:1]grown_n;
  wire n_growth_w3;
  wire reset;
  wire [2:0]st_in;
  wire [2:0]st_out;
  wire \st_out[0]_INST_0_i_1_n_0 ;
  wire \st_out[1]_INST_0_i_3_n_0 ;
  wire \st_out[2]_INST_0_i_1_n_0 ;
  wire [2:0]stage;
  wire u_pulse;
  wire v_pulse;

  LUT6 #(
    .INIT(64'h00000000FFE200E2)) 
    \st_out[0]_INST_0 
       (.I0(st_in[0]),
        .I1(n_growth_w3),
        .I2(\st_out[0]_INST_0_i_1_n_0 ),
        .I3(\st_out[1]_INST_0_i_3_n_0 ),
        .I4(above_growth[0]),
        .I5(reset),
        .O(st_out[0]));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT4 #(
    .INIT(16'h8016)) 
    \st_out[0]_INST_0_i_1 
       (.I0(st_in[0]),
        .I1(v_pulse),
        .I2(u_pulse),
        .I3(st_in[1]),
        .O(\st_out[0]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFE200E2)) 
    \st_out[1]_INST_0 
       (.I0(st_in[1]),
        .I1(n_growth_w3),
        .I2(grown_n),
        .I3(\st_out[1]_INST_0_i_3_n_0 ),
        .I4(above_growth[1]),
        .I5(reset),
        .O(st_out[1]));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT4 #(
    .INIT(16'h0006)) 
    \st_out[1]_INST_0_i_1 
       (.I0(stage[1]),
        .I1(stage[2]),
        .I2(stage[0]),
        .I3(st_in[1]),
        .O(n_growth_w3));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT4 #(
    .INIT(16'h566A)) 
    \st_out[1]_INST_0_i_2 
       (.I0(st_in[1]),
        .I1(v_pulse),
        .I2(u_pulse),
        .I3(st_in[0]),
        .O(grown_n));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \st_out[1]_INST_0_i_3 
       (.I0(stage[0]),
        .I1(stage[2]),
        .I2(stage[1]),
        .O(\st_out[1]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000AAAEAAAA)) 
    \st_out[2]_INST_0 
       (.I0(\st_out[2]_INST_0_i_1_n_0 ),
        .I1(above_ecorr),
        .I2(stage[1]),
        .I3(stage[2]),
        .I4(stage[0]),
        .I5(reset),
        .O(st_out[2]));
  LUT6 #(
    .INIT(64'hAA969600AAAAAAAA)) 
    \st_out[2]_INST_0_i_1 
       (.I0(st_in[2]),
        .I1(flip_u),
        .I2(flip_v),
        .I3(stage[1]),
        .I4(stage[2]),
        .I5(stage[0]),
        .O(\st_out[2]_INST_0_i_1_n_0 ));
endmodule

(* ORIG_REF_NAME = "snowflake_edge" *) (* ST_DROP = "3'b001" *) (* ST_GH = "3'b100" *) 
(* ST_GW = "3'b010" *) (* ST_MH = "3'b101" *) (* ST_MW = "3'b011" *) 
(* ZZZ_ANCHOR = "0" *) 
module snowflake_edge__1
   (clk,
    reset,
    stage,
    u_pulse,
    v_pulse,
    flip_u,
    flip_v,
    above_growth,
    above_ecorr,
    st_in,
    st_out);
  input clk;
  input reset;
  input [2:0]stage;
  input u_pulse;
  input v_pulse;
  input flip_u;
  input flip_v;
  input [1:0]above_growth;
  input above_ecorr;
  input [2:0]st_in;
  output [2:0]st_out;

  wire above_ecorr;
  wire [1:0]above_growth;
  wire flip_u;
  wire flip_v;
  wire [1:1]grown_n;
  wire n_growth_w3;
  wire reset;
  wire [2:0]st_in;
  wire [2:0]st_out;
  wire \st_out[0]_INST_0_i_1_n_0 ;
  wire \st_out[1]_INST_0_i_3_n_0 ;
  wire \st_out[2]_INST_0_i_1_n_0 ;
  wire [2:0]stage;
  wire u_pulse;
  wire v_pulse;

  LUT6 #(
    .INIT(64'h00000000FFE200E2)) 
    \st_out[0]_INST_0 
       (.I0(st_in[0]),
        .I1(n_growth_w3),
        .I2(\st_out[0]_INST_0_i_1_n_0 ),
        .I3(\st_out[1]_INST_0_i_3_n_0 ),
        .I4(above_growth[0]),
        .I5(reset),
        .O(st_out[0]));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT4 #(
    .INIT(16'h8016)) 
    \st_out[0]_INST_0_i_1 
       (.I0(st_in[0]),
        .I1(v_pulse),
        .I2(u_pulse),
        .I3(st_in[1]),
        .O(\st_out[0]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFE200E2)) 
    \st_out[1]_INST_0 
       (.I0(st_in[1]),
        .I1(n_growth_w3),
        .I2(grown_n),
        .I3(\st_out[1]_INST_0_i_3_n_0 ),
        .I4(above_growth[1]),
        .I5(reset),
        .O(st_out[1]));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT4 #(
    .INIT(16'h0006)) 
    \st_out[1]_INST_0_i_1 
       (.I0(stage[1]),
        .I1(stage[2]),
        .I2(stage[0]),
        .I3(st_in[1]),
        .O(n_growth_w3));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT4 #(
    .INIT(16'h566A)) 
    \st_out[1]_INST_0_i_2 
       (.I0(st_in[1]),
        .I1(v_pulse),
        .I2(u_pulse),
        .I3(st_in[0]),
        .O(grown_n));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \st_out[1]_INST_0_i_3 
       (.I0(stage[0]),
        .I1(stage[2]),
        .I2(stage[1]),
        .O(\st_out[1]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000AAAEAAAA)) 
    \st_out[2]_INST_0 
       (.I0(\st_out[2]_INST_0_i_1_n_0 ),
        .I1(above_ecorr),
        .I2(stage[1]),
        .I3(stage[2]),
        .I4(stage[0]),
        .I5(reset),
        .O(st_out[2]));
  LUT6 #(
    .INIT(64'hAA969600AAAAAAAA)) 
    \st_out[2]_INST_0_i_1 
       (.I0(st_in[2]),
        .I1(flip_u),
        .I2(flip_v),
        .I3(stage[1]),
        .I4(stage[2]),
        .I5(stage[0]),
        .O(\st_out[2]_INST_0_i_1_n_0 ));
endmodule

(* ORIG_REF_NAME = "snowflake_edge" *) (* ST_DROP = "3'b001" *) (* ST_GH = "3'b100" *) 
(* ST_GW = "3'b010" *) (* ST_MH = "3'b101" *) (* ST_MW = "3'b011" *) 
(* ZZZ_ANCHOR = "0" *) 
module snowflake_edge__2
   (clk,
    reset,
    stage,
    u_pulse,
    v_pulse,
    flip_u,
    flip_v,
    above_growth,
    above_ecorr,
    st_in,
    st_out);
  input clk;
  input reset;
  input [2:0]stage;
  input u_pulse;
  input v_pulse;
  input flip_u;
  input flip_v;
  input [1:0]above_growth;
  input above_ecorr;
  input [2:0]st_in;
  output [2:0]st_out;

  wire above_ecorr;
  wire [1:0]above_growth;
  wire flip_u;
  wire flip_v;
  wire [1:1]grown_n;
  wire n_growth_w3;
  wire reset;
  wire [2:0]st_in;
  wire [2:0]st_out;
  wire \st_out[0]_INST_0_i_1_n_0 ;
  wire \st_out[1]_INST_0_i_3_n_0 ;
  wire \st_out[2]_INST_0_i_1_n_0 ;
  wire [2:0]stage;
  wire u_pulse;
  wire v_pulse;

  LUT6 #(
    .INIT(64'h00000000FFE200E2)) 
    \st_out[0]_INST_0 
       (.I0(st_in[0]),
        .I1(n_growth_w3),
        .I2(\st_out[0]_INST_0_i_1_n_0 ),
        .I3(\st_out[1]_INST_0_i_3_n_0 ),
        .I4(above_growth[0]),
        .I5(reset),
        .O(st_out[0]));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT4 #(
    .INIT(16'h8016)) 
    \st_out[0]_INST_0_i_1 
       (.I0(st_in[0]),
        .I1(v_pulse),
        .I2(u_pulse),
        .I3(st_in[1]),
        .O(\st_out[0]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFE200E2)) 
    \st_out[1]_INST_0 
       (.I0(st_in[1]),
        .I1(n_growth_w3),
        .I2(grown_n),
        .I3(\st_out[1]_INST_0_i_3_n_0 ),
        .I4(above_growth[1]),
        .I5(reset),
        .O(st_out[1]));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT4 #(
    .INIT(16'h0006)) 
    \st_out[1]_INST_0_i_1 
       (.I0(stage[1]),
        .I1(stage[2]),
        .I2(stage[0]),
        .I3(st_in[1]),
        .O(n_growth_w3));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT4 #(
    .INIT(16'h566A)) 
    \st_out[1]_INST_0_i_2 
       (.I0(st_in[1]),
        .I1(v_pulse),
        .I2(u_pulse),
        .I3(st_in[0]),
        .O(grown_n));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \st_out[1]_INST_0_i_3 
       (.I0(stage[0]),
        .I1(stage[2]),
        .I2(stage[1]),
        .O(\st_out[1]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000AAAEAAAA)) 
    \st_out[2]_INST_0 
       (.I0(\st_out[2]_INST_0_i_1_n_0 ),
        .I1(above_ecorr),
        .I2(stage[1]),
        .I3(stage[2]),
        .I4(stage[0]),
        .I5(reset),
        .O(st_out[2]));
  LUT6 #(
    .INIT(64'hAA969600AAAAAAAA)) 
    \st_out[2]_INST_0_i_1 
       (.I0(st_in[2]),
        .I1(flip_u),
        .I2(flip_v),
        .I3(stage[1]),
        .I4(stage[2]),
        .I5(stage[0]),
        .O(\st_out[2]_INST_0_i_1_n_0 ));
endmodule

(* ORIG_REF_NAME = "snowflake_edge" *) (* ST_DROP = "3'b001" *) (* ST_GH = "3'b100" *) 
(* ST_GW = "3'b010" *) (* ST_MH = "3'b101" *) (* ST_MW = "3'b011" *) 
(* ZZZ_ANCHOR = "0" *) 
module snowflake_edge__3
   (clk,
    reset,
    stage,
    u_pulse,
    v_pulse,
    flip_u,
    flip_v,
    above_growth,
    above_ecorr,
    st_in,
    st_out);
  input clk;
  input reset;
  input [2:0]stage;
  input u_pulse;
  input v_pulse;
  input flip_u;
  input flip_v;
  input [1:0]above_growth;
  input above_ecorr;
  input [2:0]st_in;
  output [2:0]st_out;

  wire above_ecorr;
  wire [1:0]above_growth;
  wire flip_u;
  wire flip_v;
  wire [1:1]grown_n;
  wire n_growth_w3;
  wire reset;
  wire [2:0]st_in;
  wire [2:0]st_out;
  wire \st_out[0]_INST_0_i_1_n_0 ;
  wire \st_out[1]_INST_0_i_3_n_0 ;
  wire \st_out[2]_INST_0_i_1_n_0 ;
  wire [2:0]stage;
  wire u_pulse;
  wire v_pulse;

  LUT6 #(
    .INIT(64'h00000000FFE200E2)) 
    \st_out[0]_INST_0 
       (.I0(st_in[0]),
        .I1(n_growth_w3),
        .I2(\st_out[0]_INST_0_i_1_n_0 ),
        .I3(\st_out[1]_INST_0_i_3_n_0 ),
        .I4(above_growth[0]),
        .I5(reset),
        .O(st_out[0]));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT4 #(
    .INIT(16'h8016)) 
    \st_out[0]_INST_0_i_1 
       (.I0(st_in[0]),
        .I1(v_pulse),
        .I2(u_pulse),
        .I3(st_in[1]),
        .O(\st_out[0]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFE200E2)) 
    \st_out[1]_INST_0 
       (.I0(st_in[1]),
        .I1(n_growth_w3),
        .I2(grown_n),
        .I3(\st_out[1]_INST_0_i_3_n_0 ),
        .I4(above_growth[1]),
        .I5(reset),
        .O(st_out[1]));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT4 #(
    .INIT(16'h0006)) 
    \st_out[1]_INST_0_i_1 
       (.I0(stage[1]),
        .I1(stage[2]),
        .I2(stage[0]),
        .I3(st_in[1]),
        .O(n_growth_w3));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT4 #(
    .INIT(16'h566A)) 
    \st_out[1]_INST_0_i_2 
       (.I0(st_in[1]),
        .I1(v_pulse),
        .I2(u_pulse),
        .I3(st_in[0]),
        .O(grown_n));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \st_out[1]_INST_0_i_3 
       (.I0(stage[0]),
        .I1(stage[2]),
        .I2(stage[1]),
        .O(\st_out[1]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000AAAEAAAA)) 
    \st_out[2]_INST_0 
       (.I0(\st_out[2]_INST_0_i_1_n_0 ),
        .I1(above_ecorr),
        .I2(stage[1]),
        .I3(stage[2]),
        .I4(stage[0]),
        .I5(reset),
        .O(st_out[2]));
  LUT6 #(
    .INIT(64'hAA969600AAAAAAAA)) 
    \st_out[2]_INST_0_i_1 
       (.I0(st_in[2]),
        .I1(flip_u),
        .I2(flip_v),
        .I3(stage[1]),
        .I4(stage[2]),
        .I5(stage[0]),
        .O(\st_out[2]_INST_0_i_1_n_0 ));
endmodule

(* ORIG_REF_NAME = "snowflake_edge" *) (* ST_DROP = "3'b001" *) (* ST_GH = "3'b100" *) 
(* ST_GW = "3'b010" *) (* ST_MH = "3'b101" *) (* ST_MW = "3'b011" *) 
(* ZZZ_ANCHOR = "0" *) 
module snowflake_edge__4
   (clk,
    reset,
    stage,
    u_pulse,
    v_pulse,
    flip_u,
    flip_v,
    above_growth,
    above_ecorr,
    st_in,
    st_out);
  input clk;
  input reset;
  input [2:0]stage;
  input u_pulse;
  input v_pulse;
  input flip_u;
  input flip_v;
  input [1:0]above_growth;
  input above_ecorr;
  input [2:0]st_in;
  output [2:0]st_out;

  wire above_ecorr;
  wire [1:0]above_growth;
  wire flip_u;
  wire flip_v;
  wire [1:1]grown_n;
  wire n_growth_w3;
  wire reset;
  wire [2:0]st_in;
  wire [2:0]st_out;
  wire \st_out[0]_INST_0_i_1_n_0 ;
  wire \st_out[1]_INST_0_i_3_n_0 ;
  wire \st_out[2]_INST_0_i_1_n_0 ;
  wire [2:0]stage;
  wire u_pulse;
  wire v_pulse;

  LUT6 #(
    .INIT(64'h00000000FFE200E2)) 
    \st_out[0]_INST_0 
       (.I0(st_in[0]),
        .I1(n_growth_w3),
        .I2(\st_out[0]_INST_0_i_1_n_0 ),
        .I3(\st_out[1]_INST_0_i_3_n_0 ),
        .I4(above_growth[0]),
        .I5(reset),
        .O(st_out[0]));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT4 #(
    .INIT(16'h8016)) 
    \st_out[0]_INST_0_i_1 
       (.I0(st_in[0]),
        .I1(v_pulse),
        .I2(u_pulse),
        .I3(st_in[1]),
        .O(\st_out[0]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFE200E2)) 
    \st_out[1]_INST_0 
       (.I0(st_in[1]),
        .I1(n_growth_w3),
        .I2(grown_n),
        .I3(\st_out[1]_INST_0_i_3_n_0 ),
        .I4(above_growth[1]),
        .I5(reset),
        .O(st_out[1]));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT4 #(
    .INIT(16'h0006)) 
    \st_out[1]_INST_0_i_1 
       (.I0(stage[1]),
        .I1(stage[2]),
        .I2(stage[0]),
        .I3(st_in[1]),
        .O(n_growth_w3));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT4 #(
    .INIT(16'h566A)) 
    \st_out[1]_INST_0_i_2 
       (.I0(st_in[1]),
        .I1(v_pulse),
        .I2(u_pulse),
        .I3(st_in[0]),
        .O(grown_n));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \st_out[1]_INST_0_i_3 
       (.I0(stage[0]),
        .I1(stage[2]),
        .I2(stage[1]),
        .O(\st_out[1]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000AAAEAAAA)) 
    \st_out[2]_INST_0 
       (.I0(\st_out[2]_INST_0_i_1_n_0 ),
        .I1(above_ecorr),
        .I2(stage[1]),
        .I3(stage[2]),
        .I4(stage[0]),
        .I5(reset),
        .O(st_out[2]));
  LUT6 #(
    .INIT(64'hAA969600AAAAAAAA)) 
    \st_out[2]_INST_0_i_1 
       (.I0(st_in[2]),
        .I1(flip_u),
        .I2(flip_v),
        .I3(stage[1]),
        .I4(stage[2]),
        .I5(stage[0]),
        .O(\st_out[2]_INST_0_i_1_n_0 ));
endmodule

(* HAS_ABOVE = "0" *) (* ID = "0" *) (* IS_BND = "0" *) 
(* IS_BOT = "0" *) (* IS_TOP = "0" *) (* OFF_ACT = "8" *) 
(* OFF_BUSY = "0" *) (* OFF_CID = "9" *) (* OFF_DEF = "6" *) 
(* OFF_GRW = "2" *) (* OFF_PB = "14" *) (* OFF_PTR = "3" *) 
(* OFF_UNR = "1" *) (* OFF_WHL = "7" *) (* ONE_ONE = "0" *) 
(* STW = "15" *) (* ST_DROP = "3'b001" *) (* ST_GH = "3'b100" *) 
(* ST_GW = "3'b010" *) (* ST_IDLE = "3'b000" *) (* ST_MH = "3'b101" *) 
(* ST_MW = "3'b011" *) (* SYN_IDX = "-1" *) (* ZZZ_ANCHOR = "0" *) 
module snowflake_pe
   (clk,
    reset,
    stage,
    syn_bit,
    ab_cid,
    ab_active,
    ab_whole,
    ab_defect,
    ab_ptr,
    e_grown,
    nb_valid,
    nb_cid,
    nb_active,
    nb_grown,
    nb_push,
    m_pass,
    st_in,
    st_out,
    o_busy_c,
    o_pulse,
    o_push,
    p_id,
    p_has_above,
    p_is_bnd,
    p_is_top,
    p_is_bot,
    p_is_syn,
    zzz_never_used);
  input clk;
  input reset;
  input [2:0]stage;
  input syn_bit;
  input [4:0]ab_cid;
  input ab_active;
  input ab_whole;
  input ab_defect;
  input [2:0]ab_ptr;
  input [3:0]e_grown;
  input [3:0]nb_valid;
  input [19:0]nb_cid;
  input [3:0]nb_active;
  input [3:0]nb_grown;
  input [3:0]nb_push;
  input [1:0]m_pass;
  input [14:0]st_in;
  output [14:0]st_out;
  output o_busy_c;
  output o_pulse;
  output [3:0]o_push;
  input [4:0]p_id;
  input p_has_above;
  input p_is_bnd;
  input p_is_top;
  input p_is_bot;
  input p_is_syn;
  input zzz_never_used;

  wire \<const0> ;
  wire ab_active;
  wire [4:0]ab_cid;
  wire ab_defect;
  wire [2:0]ab_ptr;
  wire ab_whole;
  wire [3:0]e_grown;
  wire [1:0]m_pass;
  wire [3:0]nb_active;
  wire [19:0]nb_cid;
  wire [3:0]nb_grown;
  wire [3:0]nb_push;
  wire p_has_above;
  wire [4:0]p_id;
  wire p_is_bnd;
  wire p_is_bot;
  wire p_is_top;
  wire [14:0]st_in;
  wire [14:0]st_out;
  wire \st_out[0]_INST_0_i_1_n_0 ;
  wire \st_out[0]_INST_0_i_2_n_0 ;
  wire \st_out[0]_INST_0_i_3_n_0 ;
  wire \st_out[0]_INST_0_i_4_n_0 ;
  wire \st_out[0]_INST_0_i_5_n_0 ;
  wire \st_out[10]_INST_0_i_1_n_0 ;
  wire \st_out[10]_INST_0_i_2_n_0 ;
  wire \st_out[10]_INST_0_i_3_n_0 ;
  wire \st_out[10]_INST_0_i_4_n_0 ;
  wire \st_out[11]_INST_0_i_1_n_0 ;
  wire \st_out[11]_INST_0_i_2_n_0 ;
  wire \st_out[11]_INST_0_i_3_n_0 ;
  wire \st_out[11]_INST_0_i_4_n_0 ;
  wire \st_out[11]_INST_0_i_5_n_0 ;
  wire \st_out[11]_INST_0_i_6_n_0 ;
  wire \st_out[12]_INST_0_i_1_n_0 ;
  wire \st_out[12]_INST_0_i_2_n_0 ;
  wire \st_out[12]_INST_0_i_3_n_0 ;
  wire \st_out[12]_INST_0_i_4_n_0 ;
  wire \st_out[12]_INST_0_i_5_n_0 ;
  wire \st_out[13]_INST_0_i_10_n_0 ;
  wire \st_out[13]_INST_0_i_1_n_0 ;
  wire \st_out[13]_INST_0_i_2_n_0 ;
  wire \st_out[13]_INST_0_i_3_n_0 ;
  wire \st_out[13]_INST_0_i_4_n_0 ;
  wire \st_out[13]_INST_0_i_5_n_0 ;
  wire \st_out[13]_INST_0_i_6_n_0 ;
  wire \st_out[13]_INST_0_i_7_n_0 ;
  wire \st_out[13]_INST_0_i_8_n_0 ;
  wire \st_out[13]_INST_0_i_9_n_0 ;
  wire \st_out[14]_INST_0_i_1_n_0 ;
  wire \st_out[14]_INST_0_i_2_n_0 ;
  wire \st_out[14]_INST_0_i_3_n_0 ;
  wire \st_out[2]_INST_0_i_1_n_0 ;
  wire \st_out[2]_INST_0_i_2_n_0 ;
  wire \st_out[2]_INST_0_i_3_n_0 ;
  wire \st_out[2]_INST_0_i_4_n_0 ;
  wire \st_out[3]_INST_0_i_1_n_0 ;
  wire \st_out[3]_INST_0_i_2_n_0 ;
  wire \st_out[4]_INST_0_i_1_n_0 ;
  wire \st_out[4]_INST_0_i_2_n_0 ;
  wire \st_out[5]_INST_0_i_1_n_0 ;
  wire \st_out[5]_INST_0_i_2_n_0 ;
  wire \st_out[6]_INST_0_i_1_n_0 ;
  wire \st_out[6]_INST_0_i_2_n_0 ;
  wire \st_out[6]_INST_0_i_3_n_0 ;
  wire \st_out[7]_INST_0_i_1_n_0 ;
  wire \st_out[7]_INST_0_i_2_n_0 ;
  wire \st_out[8]_INST_0_i_1_n_0 ;
  wire \st_out[8]_INST_0_i_2_n_0 ;
  wire \st_out[8]_INST_0_i_3_n_0 ;
  wire \st_out[8]_INST_0_i_4_n_0 ;
  wire \st_out[8]_INST_0_i_5_n_0 ;
  wire \st_out[8]_INST_0_i_6_n_0 ;
  wire \st_out[9]_INST_0_i_1_n_0 ;
  wire \st_out[9]_INST_0_i_2_n_0 ;
  wire \st_out[9]_INST_0_i_3_n_0 ;
  wire \st_out[9]_INST_0_i_4_n_0 ;
  wire \st_out[9]_INST_0_i_5_n_0 ;
  wire \st_out[9]_INST_0_i_6_n_0 ;
  wire [2:0]stage;

  assign o_busy_c = \<const0> ;
  assign o_pulse = \<const0> ;
  assign o_push[3] = \<const0> ;
  assign o_push[2] = \<const0> ;
  assign o_push[1] = \<const0> ;
  assign o_push[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  LUT6 #(
    .INIT(64'hFFFFFFFF55555514)) 
    \st_out[0]_INST_0 
       (.I0(\st_out[0]_INST_0_i_1_n_0 ),
        .I1(\st_out[8]_INST_0_i_1_n_0 ),
        .I2(st_in[8]),
        .I3(\st_out[6]_INST_0_i_2_n_0 ),
        .I4(nb_push[0]),
        .I5(\st_out[0]_INST_0_i_2_n_0 ),
        .O(st_out[0]));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT5 #(
    .INIT(32'hF44FFFFF)) 
    \st_out[0]_INST_0_i_1 
       (.I0(m_pass[1]),
        .I1(m_pass[0]),
        .I2(stage[1]),
        .I3(stage[2]),
        .I4(stage[0]),
        .O(\st_out[0]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hD000D0D0D000D000)) 
    \st_out[0]_INST_0_i_2 
       (.I0(m_pass[1]),
        .I1(m_pass[0]),
        .I2(\st_out[14]_INST_0_i_2_n_0 ),
        .I3(\st_out[11]_INST_0_i_1_n_0 ),
        .I4(\st_out[0]_INST_0_i_3_n_0 ),
        .I5(e_grown[0]),
        .O(\st_out[0]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h3030303020002020)) 
    \st_out[0]_INST_0_i_3 
       (.I0(\st_out[0]_INST_0_i_4_n_0 ),
        .I1(\st_out[0]_INST_0_i_5_n_0 ),
        .I2(\st_out[2]_INST_0_i_1_n_0 ),
        .I3(nb_cid[0]),
        .I4(nb_cid[2]),
        .I5(\st_out[11]_INST_0_i_4_n_0 ),
        .O(\st_out[0]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \st_out[0]_INST_0_i_4 
       (.I0(nb_cid[2]),
        .I1(nb_cid[4]),
        .I2(nb_cid[1]),
        .I3(nb_cid[3]),
        .O(\st_out[0]_INST_0_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT5 #(
    .INIT(32'h00400000)) 
    \st_out[0]_INST_0_i_5 
       (.I0(stage[2]),
        .I1(stage[0]),
        .I2(stage[1]),
        .I3(st_in[2]),
        .I4(nb_grown[0]),
        .O(\st_out[0]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF0B000000)) 
    \st_out[10]_INST_0 
       (.I0(p_id[1]),
        .I1(\st_out[11]_INST_0_i_1_n_0 ),
        .I2(\st_out[14]_INST_0_i_3_n_0 ),
        .I3(\st_out[14]_INST_0_i_2_n_0 ),
        .I4(\st_out[10]_INST_0_i_1_n_0 ),
        .I5(\st_out[10]_INST_0_i_2_n_0 ),
        .O(st_out[10]));
  LUT5 #(
    .INIT(32'hFCFEFCAA)) 
    \st_out[10]_INST_0_i_1 
       (.I0(nb_cid[1]),
        .I1(st_in[10]),
        .I2(\st_out[13]_INST_0_i_1_n_0 ),
        .I3(\st_out[13]_INST_0_i_3_n_0 ),
        .I4(\st_out[11]_INST_0_i_1_n_0 ),
        .O(\st_out[10]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFDFD00000)) 
    \st_out[10]_INST_0_i_2 
       (.I0(ab_cid[1]),
        .I1(\st_out[10]_INST_0_i_3_n_0 ),
        .I2(p_has_above),
        .I3(st_in[10]),
        .I4(\st_out[12]_INST_0_i_3_n_0 ),
        .I5(\st_out[10]_INST_0_i_4_n_0 ),
        .O(\st_out[10]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \st_out[10]_INST_0_i_3 
       (.I0(ab_cid[0]),
        .I1(ab_cid[3]),
        .I2(ab_cid[2]),
        .I3(ab_cid[1]),
        .I4(ab_cid[4]),
        .O(\st_out[10]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hEEE0EEEEE000EEEE)) 
    \st_out[10]_INST_0_i_4 
       (.I0(\st_out[9]_INST_0_i_2_n_0 ),
        .I1(st_in[10]),
        .I2(stage[1]),
        .I3(stage[2]),
        .I4(stage[0]),
        .I5(\st_out[14]_INST_0_i_3_n_0 ),
        .O(\st_out[10]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF0B000000)) 
    \st_out[11]_INST_0 
       (.I0(p_is_bot),
        .I1(\st_out[11]_INST_0_i_1_n_0 ),
        .I2(\st_out[14]_INST_0_i_3_n_0 ),
        .I3(\st_out[14]_INST_0_i_2_n_0 ),
        .I4(\st_out[11]_INST_0_i_2_n_0 ),
        .I5(\st_out[11]_INST_0_i_3_n_0 ),
        .O(st_out[11]));
  LUT5 #(
    .INIT(32'h80000000)) 
    \st_out[11]_INST_0_i_1 
       (.I0(st_in[12]),
        .I1(st_in[11]),
        .I2(st_in[13]),
        .I3(st_in[9]),
        .I4(st_in[10]),
        .O(\st_out[11]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFCFCFEFCFCFCAAFC)) 
    \st_out[11]_INST_0_i_2 
       (.I0(nb_cid[2]),
        .I1(st_in[11]),
        .I2(\st_out[13]_INST_0_i_1_n_0 ),
        .I3(e_grown[0]),
        .I4(\st_out[11]_INST_0_i_4_n_0 ),
        .I5(\st_out[11]_INST_0_i_1_n_0 ),
        .O(\st_out[11]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFB080FF80)) 
    \st_out[11]_INST_0_i_3 
       (.I0(\st_out[11]_INST_0_i_5_n_0 ),
        .I1(p_has_above),
        .I2(\st_out[12]_INST_0_i_3_n_0 ),
        .I3(st_in[11]),
        .I4(\st_out[11]_INST_0_i_6_n_0 ),
        .I5(\st_out[9]_INST_0_i_2_n_0 ),
        .O(\st_out[11]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h4F044F044F04FF0F)) 
    \st_out[11]_INST_0_i_4 
       (.I0(st_in[12]),
        .I1(nb_cid[3]),
        .I2(st_in[13]),
        .I3(nb_cid[4]),
        .I4(\st_out[13]_INST_0_i_6_n_0 ),
        .I5(\st_out[13]_INST_0_i_5_n_0 ),
        .O(\st_out[11]_INST_0_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT5 #(
    .INIT(32'h80FFFF00)) 
    \st_out[11]_INST_0_i_5 
       (.I0(ab_cid[4]),
        .I1(ab_cid[3]),
        .I2(ab_cid[0]),
        .I3(ab_cid[2]),
        .I4(ab_cid[1]),
        .O(\st_out[11]_INST_0_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT5 #(
    .INIT(32'h00D0D0F0)) 
    \st_out[11]_INST_0_i_6 
       (.I0(m_pass[1]),
        .I1(m_pass[0]),
        .I2(stage[0]),
        .I3(stage[2]),
        .I4(stage[1]),
        .O(\st_out[11]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEFEEEFEFEFEEE)) 
    \st_out[12]_INST_0 
       (.I0(\st_out[12]_INST_0_i_1_n_0 ),
        .I1(\st_out[12]_INST_0_i_2_n_0 ),
        .I2(\st_out[12]_INST_0_i_3_n_0 ),
        .I3(st_in[12]),
        .I4(p_has_above),
        .I5(\st_out[12]_INST_0_i_4_n_0 ),
        .O(st_out[12]));
  LUT6 #(
    .INIT(64'h00000000FAFAFC00)) 
    \st_out[12]_INST_0_i_1 
       (.I0(\st_out[13]_INST_0_i_1_n_0 ),
        .I1(\st_out[12]_INST_0_i_5_n_0 ),
        .I2(st_in[12]),
        .I3(nb_cid[3]),
        .I4(\st_out[13]_INST_0_i_3_n_0 ),
        .I5(\st_out[13]_INST_0_i_2_n_0 ),
        .O(\st_out[12]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hECC0EEEEE000EEEE)) 
    \st_out[12]_INST_0_i_2 
       (.I0(\st_out[9]_INST_0_i_2_n_0 ),
        .I1(st_in[12]),
        .I2(stage[1]),
        .I3(stage[2]),
        .I4(stage[0]),
        .I5(\st_out[14]_INST_0_i_3_n_0 ),
        .O(\st_out[12]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \st_out[12]_INST_0_i_3 
       (.I0(stage[2]),
        .I1(stage[1]),
        .I2(stage[0]),
        .O(\st_out[12]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT5 #(
    .INIT(32'h70000FFF)) 
    \st_out[12]_INST_0_i_4 
       (.I0(ab_cid[4]),
        .I1(ab_cid[0]),
        .I2(ab_cid[1]),
        .I3(ab_cid[2]),
        .I4(ab_cid[3]),
        .O(\st_out[12]_INST_0_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \st_out[12]_INST_0_i_5 
       (.I0(nb_cid[2]),
        .I1(nb_cid[4]),
        .I2(nb_cid[1]),
        .I3(nb_cid[0]),
        .O(\st_out[12]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF0E0E0C00)) 
    \st_out[13]_INST_0 
       (.I0(\st_out[13]_INST_0_i_1_n_0 ),
        .I1(st_in[13]),
        .I2(\st_out[13]_INST_0_i_2_n_0 ),
        .I3(nb_cid[4]),
        .I4(\st_out[13]_INST_0_i_3_n_0 ),
        .I5(\st_out[13]_INST_0_i_4_n_0 ),
        .O(st_out[13]));
  LUT2 #(
    .INIT(4'h2)) 
    \st_out[13]_INST_0_i_1 
       (.I0(e_grown[0]),
        .I1(\st_out[2]_INST_0_i_1_n_0 ),
        .O(\st_out[13]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT5 #(
    .INIT(32'h00600000)) 
    \st_out[13]_INST_0_i_10 
       (.I0(stage[1]),
        .I1(stage[2]),
        .I2(stage[0]),
        .I3(m_pass[0]),
        .I4(m_pass[1]),
        .O(\st_out[13]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFF9FFF9FFFFFFF9F)) 
    \st_out[13]_INST_0_i_2 
       (.I0(stage[1]),
        .I1(stage[2]),
        .I2(stage[0]),
        .I3(\st_out[11]_INST_0_i_1_n_0 ),
        .I4(m_pass[1]),
        .I5(m_pass[0]),
        .O(\st_out[13]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF100F1F1FFFFFFFF)) 
    \st_out[13]_INST_0_i_3 
       (.I0(\st_out[13]_INST_0_i_5_n_0 ),
        .I1(\st_out[13]_INST_0_i_6_n_0 ),
        .I2(\st_out[13]_INST_0_i_7_n_0 ),
        .I3(nb_cid[4]),
        .I4(st_in[13]),
        .I5(e_grown[0]),
        .O(\st_out[13]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFE0006000)) 
    \st_out[13]_INST_0_i_4 
       (.I0(\st_out[13]_INST_0_i_8_n_0 ),
        .I1(ab_cid[4]),
        .I2(\st_out[12]_INST_0_i_3_n_0 ),
        .I3(p_has_above),
        .I4(ab_cid[0]),
        .I5(\st_out[13]_INST_0_i_9_n_0 ),
        .O(\st_out[13]_INST_0_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \st_out[13]_INST_0_i_5 
       (.I0(nb_cid[3]),
        .I1(st_in[12]),
        .I2(nb_cid[2]),
        .I3(st_in[11]),
        .O(\st_out[13]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h2202FF0F00002202)) 
    \st_out[13]_INST_0_i_6 
       (.I0(st_in[9]),
        .I1(nb_cid[0]),
        .I2(nb_cid[2]),
        .I3(st_in[11]),
        .I4(nb_cid[1]),
        .I5(st_in[10]),
        .O(\st_out[13]_INST_0_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \st_out[13]_INST_0_i_7 
       (.I0(st_in[12]),
        .I1(nb_cid[3]),
        .I2(st_in[13]),
        .I3(nb_cid[4]),
        .O(\st_out[13]_INST_0_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \st_out[13]_INST_0_i_8 
       (.I0(ab_cid[3]),
        .I1(ab_cid[2]),
        .I2(ab_cid[1]),
        .O(\st_out[13]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF8C88FFFFCCCC)) 
    \st_out[13]_INST_0_i_9 
       (.I0(\st_out[13]_INST_0_i_10_n_0 ),
        .I1(st_in[13]),
        .I2(p_has_above),
        .I3(\st_out[12]_INST_0_i_3_n_0 ),
        .I4(\st_out[9]_INST_0_i_2_n_0 ),
        .I5(\st_out[8]_INST_0_i_6_n_0 ),
        .O(\st_out[13]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF04FF00000400)) 
    \st_out[14]_INST_0 
       (.I0(p_is_bnd),
        .I1(st_in[6]),
        .I2(\st_out[14]_INST_0_i_1_n_0 ),
        .I3(\st_out[14]_INST_0_i_2_n_0 ),
        .I4(\st_out[14]_INST_0_i_3_n_0 ),
        .I5(st_in[14]),
        .O(st_out[14]));
  LUT6 #(
    .INIT(64'h00050005CCCC0004)) 
    \st_out[14]_INST_0_i_1 
       (.I0(st_in[3]),
        .I1(\st_out[13]_INST_0_i_3_n_0 ),
        .I2(st_in[4]),
        .I3(st_in[5]),
        .I4(\st_out[13]_INST_0_i_1_n_0 ),
        .I5(\st_out[11]_INST_0_i_1_n_0 ),
        .O(\st_out[14]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \st_out[14]_INST_0_i_2 
       (.I0(stage[0]),
        .I1(stage[2]),
        .I2(stage[1]),
        .O(\st_out[14]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \st_out[14]_INST_0_i_3 
       (.I0(m_pass[1]),
        .I1(m_pass[0]),
        .O(\st_out[14]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAABAAABA0000AA)) 
    \st_out[1]_INST_0 
       (.I0(st_in[1]),
        .I1(\st_out[14]_INST_0_i_3_n_0 ),
        .I2(\st_out[11]_INST_0_i_1_n_0 ),
        .I3(stage[0]),
        .I4(stage[2]),
        .I5(stage[1]),
        .O(st_out[1]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF800000)) 
    \st_out[2]_INST_0 
       (.I0(\st_out[2]_INST_0_i_1_n_0 ),
        .I1(\st_out[2]_INST_0_i_2_n_0 ),
        .I2(\st_out[2]_INST_0_i_3_n_0 ),
        .I3(st_in[2]),
        .I4(\st_out[14]_INST_0_i_2_n_0 ),
        .I5(\st_out[2]_INST_0_i_4_n_0 ),
        .O(st_out[2]));
  LUT6 #(
    .INIT(64'hDFFFFFFFFFFFFFFF)) 
    \st_out[2]_INST_0_i_1 
       (.I0(nb_cid[0]),
        .I1(st_in[1]),
        .I2(nb_cid[3]),
        .I3(nb_cid[1]),
        .I4(nb_cid[4]),
        .I5(nb_cid[2]),
        .O(\st_out[2]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT3 #(
    .INIT(8'h0B)) 
    \st_out[2]_INST_0_i_2 
       (.I0(m_pass[0]),
        .I1(m_pass[1]),
        .I2(\st_out[11]_INST_0_i_1_n_0 ),
        .O(\st_out[2]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000200000000000)) 
    \st_out[2]_INST_0_i_3 
       (.I0(nb_grown[0]),
        .I1(st_in[2]),
        .I2(stage[1]),
        .I3(stage[0]),
        .I4(stage[2]),
        .I5(e_grown[0]),
        .O(\st_out[2]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF0000000F0F0F8F0)) 
    \st_out[2]_INST_0_i_4 
       (.I0(st_in[8]),
        .I1(st_in[7]),
        .I2(st_in[2]),
        .I3(stage[1]),
        .I4(stage[2]),
        .I5(stage[0]),
        .O(\st_out[2]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFF4F4F4F4F4F4F4)) 
    \st_out[3]_INST_0 
       (.I0(\st_out[3]_INST_0_i_1_n_0 ),
        .I1(\st_out[14]_INST_0_i_2_n_0 ),
        .I2(\st_out[3]_INST_0_i_2_n_0 ),
        .I3(\st_out[12]_INST_0_i_3_n_0 ),
        .I4(ab_ptr[0]),
        .I5(p_has_above),
        .O(st_out[3]));
  LUT6 #(
    .INIT(64'h0000D000FFFFF2F2)) 
    \st_out[3]_INST_0_i_1 
       (.I0(m_pass[1]),
        .I1(m_pass[0]),
        .I2(\st_out[13]_INST_0_i_3_n_0 ),
        .I3(\st_out[13]_INST_0_i_1_n_0 ),
        .I4(\st_out[11]_INST_0_i_1_n_0 ),
        .I5(st_in[3]),
        .O(\st_out[3]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAA0202222222AA)) 
    \st_out[3]_INST_0_i_2 
       (.I0(st_in[3]),
        .I1(stage[0]),
        .I2(\st_out[4]_INST_0_i_2_n_0 ),
        .I3(p_has_above),
        .I4(stage[2]),
        .I5(stage[1]),
        .O(\st_out[3]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hF4444444)) 
    \st_out[4]_INST_0 
       (.I0(\st_out[4]_INST_0_i_1_n_0 ),
        .I1(st_in[4]),
        .I2(p_has_above),
        .I3(ab_ptr[1]),
        .I4(\st_out[12]_INST_0_i_3_n_0 ),
        .O(st_out[4]));
  LUT6 #(
    .INIT(64'h0000F0AAF000CC00)) 
    \st_out[4]_INST_0_i_1 
       (.I0(\st_out[4]_INST_0_i_2_n_0 ),
        .I1(p_has_above),
        .I2(\st_out[5]_INST_0_i_1_n_0 ),
        .I3(stage[0]),
        .I4(stage[2]),
        .I5(stage[1]),
        .O(\st_out[4]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \st_out[4]_INST_0_i_2 
       (.I0(st_in[5]),
        .I1(st_in[3]),
        .I2(p_is_bot),
        .I3(st_in[4]),
        .O(\st_out[4]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00002800)) 
    \st_out[5]_INST_0 
       (.I0(stage[0]),
        .I1(stage[2]),
        .I2(stage[1]),
        .I3(st_in[5]),
        .I4(\st_out[5]_INST_0_i_1_n_0 ),
        .I5(\st_out[5]_INST_0_i_2_n_0 ),
        .O(st_out[5]));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT5 #(
    .INIT(32'h51005151)) 
    \st_out[5]_INST_0_i_1 
       (.I0(\st_out[11]_INST_0_i_1_n_0 ),
        .I1(m_pass[1]),
        .I2(m_pass[0]),
        .I3(\st_out[13]_INST_0_i_1_n_0 ),
        .I4(\st_out[13]_INST_0_i_3_n_0 ),
        .O(\st_out[5]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF00000B8F0F0F0F0)) 
    \st_out[5]_INST_0_i_2 
       (.I0(ab_ptr[2]),
        .I1(p_has_above),
        .I2(st_in[5]),
        .I3(stage[2]),
        .I4(stage[1]),
        .I5(stage[0]),
        .O(\st_out[5]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFE1B40000)) 
    \st_out[6]_INST_0 
       (.I0(\st_out[6]_INST_0_i_1_n_0 ),
        .I1(nb_push[0]),
        .I2(st_in[6]),
        .I3(\st_out[6]_INST_0_i_2_n_0 ),
        .I4(\st_out[14]_INST_0_i_2_n_0 ),
        .I5(\st_out[6]_INST_0_i_3_n_0 ),
        .O(st_out[6]));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \st_out[6]_INST_0_i_1 
       (.I0(m_pass[0]),
        .I1(m_pass[1]),
        .O(\st_out[6]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0044004044444444)) 
    \st_out[6]_INST_0_i_2 
       (.I0(p_is_bnd),
        .I1(st_in[6]),
        .I2(st_in[4]),
        .I3(\st_out[5]_INST_0_i_1_n_0 ),
        .I4(st_in[5]),
        .I5(\st_out[3]_INST_0_i_1_n_0 ),
        .O(\st_out[6]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h5100FFFF40004000)) 
    \st_out[6]_INST_0_i_3 
       (.I0(p_is_top),
        .I1(p_has_above),
        .I2(ab_defect),
        .I3(\st_out[12]_INST_0_i_3_n_0 ),
        .I4(\st_out[8]_INST_0_i_6_n_0 ),
        .I5(st_in[6]),
        .O(\st_out[6]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFEAAA)) 
    \st_out[7]_INST_0 
       (.I0(\st_out[7]_INST_0_i_1_n_0 ),
        .I1(\st_out[12]_INST_0_i_3_n_0 ),
        .I2(ab_whole),
        .I3(p_has_above),
        .I4(\st_out[7]_INST_0_i_2_n_0 ),
        .O(st_out[7]));
  LUT6 #(
    .INIT(64'hAAA2A0AAAAA2AAAA)) 
    \st_out[7]_INST_0_i_1 
       (.I0(st_in[7]),
        .I1(p_has_above),
        .I2(stage[2]),
        .I3(stage[1]),
        .I4(stage[0]),
        .I5(st_in[8]),
        .O(\st_out[7]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT5 #(
    .INIT(32'h00100000)) 
    \st_out[7]_INST_0_i_2 
       (.I0(stage[0]),
        .I1(stage[1]),
        .I2(stage[2]),
        .I3(st_in[2]),
        .I4(st_in[8]),
        .O(\st_out[7]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFAA8A0080)) 
    \st_out[8]_INST_0 
       (.I0(\st_out[14]_INST_0_i_2_n_0 ),
        .I1(st_in[8]),
        .I2(m_pass[0]),
        .I3(m_pass[1]),
        .I4(\st_out[8]_INST_0_i_1_n_0 ),
        .I5(\st_out[8]_INST_0_i_2_n_0 ),
        .O(st_out[8]));
  LUT6 #(
    .INIT(64'hFFFB003BFFC80008)) 
    \st_out[8]_INST_0_i_1 
       (.I0(\st_out[8]_INST_0_i_3_n_0 ),
        .I1(\st_out[3]_INST_0_i_1_n_0 ),
        .I2(\st_out[8]_INST_0_i_4_n_0 ),
        .I3(\st_out[8]_INST_0_i_5_n_0 ),
        .I4(nb_active[2]),
        .I5(nb_active[0]),
        .O(\st_out[8]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7370507050505050)) 
    \st_out[8]_INST_0_i_2 
       (.I0(\st_out[8]_INST_0_i_6_n_0 ),
        .I1(p_is_top),
        .I2(st_in[8]),
        .I3(p_has_above),
        .I4(ab_active),
        .I5(\st_out[12]_INST_0_i_3_n_0 ),
        .O(\st_out[8]_INST_0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \st_out[8]_INST_0_i_3 
       (.I0(st_in[6]),
        .I1(p_is_bnd),
        .O(\st_out[8]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA08AA0808)) 
    \st_out[8]_INST_0_i_4 
       (.I0(st_in[5]),
        .I1(\st_out[13]_INST_0_i_3_n_0 ),
        .I2(\st_out[13]_INST_0_i_1_n_0 ),
        .I3(m_pass[0]),
        .I4(m_pass[1]),
        .I5(\st_out[11]_INST_0_i_1_n_0 ),
        .O(\st_out[8]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA08AA0808)) 
    \st_out[8]_INST_0_i_5 
       (.I0(st_in[4]),
        .I1(\st_out[13]_INST_0_i_3_n_0 ),
        .I2(\st_out[13]_INST_0_i_1_n_0 ),
        .I3(m_pass[0]),
        .I4(m_pass[1]),
        .I5(\st_out[11]_INST_0_i_1_n_0 ),
        .O(\st_out[8]_INST_0_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \st_out[8]_INST_0_i_6 
       (.I0(stage[0]),
        .I1(stage[2]),
        .I2(stage[1]),
        .O(\st_out[8]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFF4FFF4FFFFFFF4)) 
    \st_out[9]_INST_0 
       (.I0(\st_out[9]_INST_0_i_1_n_0 ),
        .I1(\st_out[14]_INST_0_i_2_n_0 ),
        .I2(\st_out[9]_INST_0_i_2_n_0 ),
        .I3(\st_out[9]_INST_0_i_3_n_0 ),
        .I4(st_in[9]),
        .I5(\st_out[9]_INST_0_i_4_n_0 ),
        .O(st_out[9]));
  LUT6 #(
    .INIT(64'h353500353535FF35)) 
    \st_out[9]_INST_0_i_1 
       (.I0(\st_out[9]_INST_0_i_5_n_0 ),
        .I1(p_is_bnd),
        .I2(\st_out[11]_INST_0_i_1_n_0 ),
        .I3(m_pass[1]),
        .I4(m_pass[0]),
        .I5(st_in[9]),
        .O(\st_out[9]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT5 #(
    .INIT(32'h00008000)) 
    \st_out[9]_INST_0_i_2 
       (.I0(\st_out[9]_INST_0_i_6_n_0 ),
        .I1(st_in[4]),
        .I2(p_is_bot),
        .I3(st_in[3]),
        .I4(st_in[5]),
        .O(\st_out[9]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000C000AA0000)) 
    \st_out[9]_INST_0_i_3 
       (.I0(st_in[9]),
        .I1(p_has_above),
        .I2(ab_cid[0]),
        .I3(stage[2]),
        .I4(stage[1]),
        .I5(stage[0]),
        .O(\st_out[9]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT4 #(
    .INIT(16'h3E30)) 
    \st_out[9]_INST_0_i_4 
       (.I0(p_has_above),
        .I1(stage[2]),
        .I2(stage[1]),
        .I3(stage[0]),
        .O(\st_out[9]_INST_0_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hEFE0)) 
    \st_out[9]_INST_0_i_5 
       (.I0(st_in[9]),
        .I1(\st_out[13]_INST_0_i_1_n_0 ),
        .I2(\st_out[13]_INST_0_i_3_n_0 ),
        .I3(nb_cid[0]),
        .O(\st_out[9]_INST_0_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \st_out[9]_INST_0_i_6 
       (.I0(stage[1]),
        .I1(stage[2]),
        .I2(stage[0]),
        .O(\st_out[9]_INST_0_i_6_n_0 ));
endmodule

(* HAS_ABOVE = "0" *) (* ID = "0" *) (* IS_BND = "0" *) 
(* IS_BOT = "0" *) (* IS_TOP = "0" *) (* OFF_ACT = "8" *) 
(* OFF_BUSY = "0" *) (* OFF_CID = "9" *) (* OFF_DEF = "6" *) 
(* OFF_GRW = "2" *) (* OFF_PB = "14" *) (* OFF_PTR = "3" *) 
(* OFF_UNR = "1" *) (* OFF_WHL = "7" *) (* ONE_ONE = "0" *) 
(* ORIG_REF_NAME = "snowflake_pe" *) (* STW = "15" *) (* ST_DROP = "3'b001" *) 
(* ST_GH = "3'b100" *) (* ST_GW = "3'b010" *) (* ST_IDLE = "3'b000" *) 
(* ST_MH = "3'b101" *) (* ST_MW = "3'b011" *) (* SYN_IDX = "-1" *) 
(* ZZZ_ANCHOR = "0" *) 
module snowflake_pe__1
   (clk,
    reset,
    stage,
    syn_bit,
    ab_cid,
    ab_active,
    ab_whole,
    ab_defect,
    ab_ptr,
    e_grown,
    nb_valid,
    nb_cid,
    nb_active,
    nb_grown,
    nb_push,
    m_pass,
    st_in,
    st_out,
    o_busy_c,
    o_pulse,
    o_push,
    p_id,
    p_has_above,
    p_is_bnd,
    p_is_top,
    p_is_bot,
    p_is_syn,
    zzz_never_used);
  input clk;
  input reset;
  input [2:0]stage;
  input syn_bit;
  input [4:0]ab_cid;
  input ab_active;
  input ab_whole;
  input ab_defect;
  input [2:0]ab_ptr;
  input [3:0]e_grown;
  input [3:0]nb_valid;
  input [19:0]nb_cid;
  input [3:0]nb_active;
  input [3:0]nb_grown;
  input [3:0]nb_push;
  input [1:0]m_pass;
  input [14:0]st_in;
  output [14:0]st_out;
  output o_busy_c;
  output o_pulse;
  output [3:0]o_push;
  input [4:0]p_id;
  input p_has_above;
  input p_is_bnd;
  input p_is_top;
  input p_is_bot;
  input p_is_syn;
  input zzz_never_used;

  wire \<const0> ;
  wire ab_active;
  wire [4:0]ab_cid;
  wire ab_defect;
  wire [2:0]ab_ptr;
  wire ab_whole;
  wire [3:0]e_grown;
  wire [1:0]m_pass;
  wire [3:0]nb_active;
  wire [19:0]nb_cid;
  wire [3:0]nb_grown;
  wire [3:0]nb_push;
  wire p_has_above;
  wire [4:0]p_id;
  wire p_is_bnd;
  wire p_is_bot;
  wire p_is_top;
  wire [14:0]st_in;
  wire [14:0]st_out;
  wire \st_out[0]_INST_0_i_1_n_0 ;
  wire \st_out[0]_INST_0_i_2_n_0 ;
  wire \st_out[0]_INST_0_i_3_n_0 ;
  wire \st_out[0]_INST_0_i_4_n_0 ;
  wire \st_out[10]_INST_0_i_1_n_0 ;
  wire \st_out[10]_INST_0_i_2_n_0 ;
  wire \st_out[10]_INST_0_i_3_n_0 ;
  wire \st_out[10]_INST_0_i_4_n_0 ;
  wire \st_out[11]_INST_0_i_1_n_0 ;
  wire \st_out[11]_INST_0_i_2_n_0 ;
  wire \st_out[11]_INST_0_i_3_n_0 ;
  wire \st_out[11]_INST_0_i_4_n_0 ;
  wire \st_out[11]_INST_0_i_5_n_0 ;
  wire \st_out[12]_INST_0_i_1_n_0 ;
  wire \st_out[12]_INST_0_i_2_n_0 ;
  wire \st_out[12]_INST_0_i_3_n_0 ;
  wire \st_out[12]_INST_0_i_4_n_0 ;
  wire \st_out[12]_INST_0_i_5_n_0 ;
  wire \st_out[12]_INST_0_i_6_n_0 ;
  wire \st_out[12]_INST_0_i_7_n_0 ;
  wire \st_out[13]_INST_0_i_1_n_0 ;
  wire \st_out[13]_INST_0_i_2_n_0 ;
  wire \st_out[13]_INST_0_i_3_n_0 ;
  wire \st_out[13]_INST_0_i_4_n_0 ;
  wire \st_out[13]_INST_0_i_5_n_0 ;
  wire \st_out[14]_INST_0_i_1_n_0 ;
  wire \st_out[14]_INST_0_i_2_n_0 ;
  wire \st_out[14]_INST_0_i_3_n_0 ;
  wire \st_out[14]_INST_0_i_4_n_0 ;
  wire \st_out[14]_INST_0_i_5_n_0 ;
  wire \st_out[14]_INST_0_i_6_n_0 ;
  wire \st_out[14]_INST_0_i_7_n_0 ;
  wire \st_out[14]_INST_0_i_8_n_0 ;
  wire \st_out[2]_INST_0_i_1_n_0 ;
  wire \st_out[2]_INST_0_i_2_n_0 ;
  wire \st_out[2]_INST_0_i_3_n_0 ;
  wire \st_out[3]_INST_0_i_1_n_0 ;
  wire \st_out[3]_INST_0_i_2_n_0 ;
  wire \st_out[4]_INST_0_i_1_n_0 ;
  wire \st_out[4]_INST_0_i_2_n_0 ;
  wire \st_out[4]_INST_0_i_3_n_0 ;
  wire \st_out[4]_INST_0_i_4_n_0 ;
  wire \st_out[5]_INST_0_i_1_n_0 ;
  wire \st_out[5]_INST_0_i_2_n_0 ;
  wire \st_out[5]_INST_0_i_3_n_0 ;
  wire \st_out[6]_INST_0_i_1_n_0 ;
  wire \st_out[6]_INST_0_i_2_n_0 ;
  wire \st_out[6]_INST_0_i_3_n_0 ;
  wire \st_out[6]_INST_0_i_4_n_0 ;
  wire \st_out[7]_INST_0_i_1_n_0 ;
  wire \st_out[7]_INST_0_i_2_n_0 ;
  wire \st_out[7]_INST_0_i_3_n_0 ;
  wire \st_out[8]_INST_0_i_1_n_0 ;
  wire \st_out[8]_INST_0_i_2_n_0 ;
  wire \st_out[8]_INST_0_i_3_n_0 ;
  wire \st_out[8]_INST_0_i_4_n_0 ;
  wire \st_out[9]_INST_0_i_1_n_0 ;
  wire \st_out[9]_INST_0_i_2_n_0 ;
  wire \st_out[9]_INST_0_i_3_n_0 ;
  wire [2:0]stage;

  assign o_busy_c = \<const0> ;
  assign o_pulse = \<const0> ;
  assign o_push[3] = \<const0> ;
  assign o_push[2] = \<const0> ;
  assign o_push[1] = \<const0> ;
  assign o_push[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  LUT5 #(
    .INIT(32'h0000FFF6)) 
    \st_out[0]_INST_0 
       (.I0(st_in[8]),
        .I1(\st_out[8]_INST_0_i_1_n_0 ),
        .I2(\st_out[6]_INST_0_i_2_n_0 ),
        .I3(\st_out[0]_INST_0_i_1_n_0 ),
        .I4(\st_out[0]_INST_0_i_2_n_0 ),
        .O(st_out[0]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hFFAE)) 
    \st_out[0]_INST_0_i_1 
       (.I0(\st_out[0]_INST_0_i_3_n_0 ),
        .I1(m_pass[0]),
        .I2(m_pass[1]),
        .I3(nb_push[1]),
        .O(\st_out[0]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF0404FFFFFFFFFF)) 
    \st_out[0]_INST_0_i_2 
       (.I0(\st_out[0]_INST_0_i_3_n_0 ),
        .I1(m_pass[0]),
        .I2(m_pass[1]),
        .I3(stage[1]),
        .I4(stage[2]),
        .I5(stage[0]),
        .O(\st_out[0]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFBFAAAA)) 
    \st_out[0]_INST_0_i_3 
       (.I0(\st_out[12]_INST_0_i_2_n_0 ),
        .I1(\st_out[12]_INST_0_i_4_n_0 ),
        .I2(\st_out[2]_INST_0_i_1_n_0 ),
        .I3(\st_out[0]_INST_0_i_4_n_0 ),
        .I4(e_grown[1]),
        .I5(\st_out[14]_INST_0_i_1_n_0 ),
        .O(\st_out[0]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h00400000)) 
    \st_out[0]_INST_0_i_4 
       (.I0(stage[2]),
        .I1(stage[0]),
        .I2(stage[1]),
        .I3(st_in[2]),
        .I4(nb_grown[1]),
        .O(\st_out[0]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF31000000)) 
    \st_out[10]_INST_0 
       (.I0(\st_out[12]_INST_0_i_2_n_0 ),
        .I1(\st_out[14]_INST_0_i_1_n_0 ),
        .I2(p_id[1]),
        .I3(\st_out[14]_INST_0_i_2_n_0 ),
        .I4(\st_out[10]_INST_0_i_1_n_0 ),
        .I5(\st_out[10]_INST_0_i_2_n_0 ),
        .O(st_out[10]));
  LUT6 #(
    .INIT(64'hFFFFFFF2FF00FFF2)) 
    \st_out[10]_INST_0_i_1 
       (.I0(e_grown[1]),
        .I1(\st_out[2]_INST_0_i_1_n_0 ),
        .I2(st_in[10]),
        .I3(\st_out[12]_INST_0_i_2_n_0 ),
        .I4(\st_out[14]_INST_0_i_5_n_0 ),
        .I5(nb_cid[6]),
        .O(\st_out[10]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF8AAA8A00)) 
    \st_out[10]_INST_0_i_2 
       (.I0(\st_out[7]_INST_0_i_2_n_0 ),
        .I1(\st_out[10]_INST_0_i_3_n_0 ),
        .I2(ab_cid[1]),
        .I3(p_has_above),
        .I4(st_in[10]),
        .I5(\st_out[10]_INST_0_i_4_n_0 ),
        .O(\st_out[10]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \st_out[10]_INST_0_i_3 
       (.I0(ab_cid[0]),
        .I1(ab_cid[3]),
        .I2(ab_cid[2]),
        .I3(ab_cid[1]),
        .I4(ab_cid[4]),
        .O(\st_out[10]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFEFEFAFAAAAAAAA)) 
    \st_out[10]_INST_0_i_4 
       (.I0(\st_out[13]_INST_0_i_4_n_0 ),
        .I1(\st_out[14]_INST_0_i_1_n_0 ),
        .I2(stage[0]),
        .I3(stage[2]),
        .I4(stage[1]),
        .I5(st_in[10]),
        .O(\st_out[10]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF20220000)) 
    \st_out[11]_INST_0 
       (.I0(\st_out[14]_INST_0_i_2_n_0 ),
        .I1(\st_out[14]_INST_0_i_1_n_0 ),
        .I2(p_is_bot),
        .I3(\st_out[12]_INST_0_i_2_n_0 ),
        .I4(\st_out[11]_INST_0_i_1_n_0 ),
        .I5(\st_out[11]_INST_0_i_2_n_0 ),
        .O(st_out[11]));
  LUT6 #(
    .INIT(64'hFBAAFBFBFBAAFBAA)) 
    \st_out[11]_INST_0_i_1 
       (.I0(\st_out[11]_INST_0_i_3_n_0 ),
        .I1(\st_out[14]_INST_0_i_5_n_0 ),
        .I2(\st_out[12]_INST_0_i_2_n_0 ),
        .I3(st_in[11]),
        .I4(\st_out[2]_INST_0_i_1_n_0 ),
        .I5(e_grown[1]),
        .O(\st_out[11]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF8A80FF80)) 
    \st_out[11]_INST_0_i_2 
       (.I0(\st_out[7]_INST_0_i_2_n_0 ),
        .I1(\st_out[11]_INST_0_i_4_n_0 ),
        .I2(p_has_above),
        .I3(st_in[11]),
        .I4(\st_out[11]_INST_0_i_5_n_0 ),
        .I5(\st_out[13]_INST_0_i_4_n_0 ),
        .O(\st_out[11]_INST_0_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \st_out[11]_INST_0_i_3 
       (.I0(e_grown[1]),
        .I1(nb_cid[7]),
        .I2(\st_out[12]_INST_0_i_4_n_0 ),
        .O(\st_out[11]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h80FFFF00)) 
    \st_out[11]_INST_0_i_4 
       (.I0(ab_cid[4]),
        .I1(ab_cid[3]),
        .I2(ab_cid[0]),
        .I3(ab_cid[2]),
        .I4(ab_cid[1]),
        .O(\st_out[11]_INST_0_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00D0D0F0)) 
    \st_out[11]_INST_0_i_5 
       (.I0(m_pass[1]),
        .I1(m_pass[0]),
        .I2(stage[0]),
        .I3(stage[2]),
        .I4(stage[1]),
        .O(\st_out[11]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFAA030000)) 
    \st_out[12]_INST_0 
       (.I0(st_in[12]),
        .I1(\st_out[12]_INST_0_i_1_n_0 ),
        .I2(\st_out[12]_INST_0_i_2_n_0 ),
        .I3(\st_out[14]_INST_0_i_1_n_0 ),
        .I4(\st_out[14]_INST_0_i_2_n_0 ),
        .I5(\st_out[12]_INST_0_i_3_n_0 ),
        .O(st_out[12]));
  LUT6 #(
    .INIT(64'h05050000AFDFFFFF)) 
    \st_out[12]_INST_0_i_1 
       (.I0(\st_out[12]_INST_0_i_4_n_0 ),
        .I1(st_in[1]),
        .I2(nb_cid[8]),
        .I3(\st_out[12]_INST_0_i_5_n_0 ),
        .I4(e_grown[1]),
        .I5(st_in[12]),
        .O(\st_out[12]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \st_out[12]_INST_0_i_2 
       (.I0(st_in[12]),
        .I1(st_in[11]),
        .I2(st_in[13]),
        .I3(st_in[9]),
        .I4(st_in[10]),
        .O(\st_out[12]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hDFFFCFCCDDDDCCCC)) 
    \st_out[12]_INST_0_i_3 
       (.I0(\st_out[12]_INST_0_i_6_n_0 ),
        .I1(\st_out[13]_INST_0_i_4_n_0 ),
        .I2(\st_out[12]_INST_0_i_7_n_0 ),
        .I3(p_has_above),
        .I4(st_in[12]),
        .I5(\st_out[7]_INST_0_i_2_n_0 ),
        .O(\st_out[12]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h4F044F044F04FF0F)) 
    \st_out[12]_INST_0_i_4 
       (.I0(st_in[12]),
        .I1(nb_cid[8]),
        .I2(st_in[13]),
        .I3(nb_cid[9]),
        .I4(\st_out[14]_INST_0_i_7_n_0 ),
        .I5(\st_out[14]_INST_0_i_6_n_0 ),
        .O(\st_out[12]_INST_0_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \st_out[12]_INST_0_i_5 
       (.I0(nb_cid[6]),
        .I1(nb_cid[5]),
        .I2(nb_cid[7]),
        .I3(nb_cid[9]),
        .O(\st_out[12]_INST_0_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \st_out[12]_INST_0_i_6 
       (.I0(stage[0]),
        .I1(stage[2]),
        .I2(stage[1]),
        .O(\st_out[12]_INST_0_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h70000FFF)) 
    \st_out[12]_INST_0_i_7 
       (.I0(ab_cid[4]),
        .I1(ab_cid[0]),
        .I2(ab_cid[1]),
        .I3(ab_cid[2]),
        .I4(ab_cid[3]),
        .O(\st_out[12]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFEAAA)) 
    \st_out[13]_INST_0 
       (.I0(\st_out[13]_INST_0_i_1_n_0 ),
        .I1(\st_out[14]_INST_0_i_2_n_0 ),
        .I2(\st_out[14]_INST_0_i_1_n_0 ),
        .I3(st_in[13]),
        .I4(\st_out[13]_INST_0_i_2_n_0 ),
        .I5(\st_out[13]_INST_0_i_3_n_0 ),
        .O(st_out[13]));
  LUT6 #(
    .INIT(64'hD0005000D0000000)) 
    \st_out[13]_INST_0_i_1 
       (.I0(\st_out[14]_INST_0_i_5_n_0 ),
        .I1(nb_cid[9]),
        .I2(\st_out[14]_INST_0_i_2_n_0 ),
        .I3(\st_out[5]_INST_0_i_1_n_0 ),
        .I4(st_in[13]),
        .I5(\st_out[14]_INST_0_i_4_n_0 ),
        .O(\st_out[13]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEAFFEBFFAAAAAAAA)) 
    \st_out[13]_INST_0_i_2 
       (.I0(\st_out[13]_INST_0_i_4_n_0 ),
        .I1(stage[1]),
        .I2(stage[2]),
        .I3(stage[0]),
        .I4(p_has_above),
        .I5(st_in[13]),
        .O(\st_out[13]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h80C0C000)) 
    \st_out[13]_INST_0_i_3 
       (.I0(ab_cid[0]),
        .I1(p_has_above),
        .I2(\st_out[7]_INST_0_i_2_n_0 ),
        .I3(ab_cid[4]),
        .I4(\st_out[13]_INST_0_i_5_n_0 ),
        .O(\st_out[13]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \st_out[13]_INST_0_i_4 
       (.I0(stage[0]),
        .I1(stage[2]),
        .I2(stage[1]),
        .I3(\st_out[4]_INST_0_i_4_n_0 ),
        .O(\st_out[13]_INST_0_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \st_out[13]_INST_0_i_5 
       (.I0(ab_cid[3]),
        .I1(ab_cid[2]),
        .I2(ab_cid[1]),
        .O(\st_out[13]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h8A8A8A8A8ABA8A8A)) 
    \st_out[14]_INST_0 
       (.I0(st_in[14]),
        .I1(\st_out[14]_INST_0_i_1_n_0 ),
        .I2(\st_out[14]_INST_0_i_2_n_0 ),
        .I3(p_is_bnd),
        .I4(st_in[6]),
        .I5(\st_out[14]_INST_0_i_3_n_0 ),
        .O(st_out[14]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \st_out[14]_INST_0_i_1 
       (.I0(m_pass[1]),
        .I1(m_pass[0]),
        .O(\st_out[14]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \st_out[14]_INST_0_i_2 
       (.I0(stage[0]),
        .I1(stage[2]),
        .I2(stage[1]),
        .O(\st_out[14]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h010101010000FF01)) 
    \st_out[14]_INST_0_i_3 
       (.I0(st_in[4]),
        .I1(st_in[5]),
        .I2(st_in[3]),
        .I3(\st_out[14]_INST_0_i_4_n_0 ),
        .I4(\st_out[14]_INST_0_i_5_n_0 ),
        .I5(\st_out[12]_INST_0_i_2_n_0 ),
        .O(\st_out[14]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \st_out[14]_INST_0_i_4 
       (.I0(e_grown[1]),
        .I1(\st_out[2]_INST_0_i_1_n_0 ),
        .O(\st_out[14]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00A8AAAA00A800A8)) 
    \st_out[14]_INST_0_i_5 
       (.I0(e_grown[1]),
        .I1(\st_out[14]_INST_0_i_6_n_0 ),
        .I2(\st_out[14]_INST_0_i_7_n_0 ),
        .I3(\st_out[14]_INST_0_i_8_n_0 ),
        .I4(nb_cid[9]),
        .I5(st_in[13]),
        .O(\st_out[14]_INST_0_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \st_out[14]_INST_0_i_6 
       (.I0(nb_cid[8]),
        .I1(st_in[12]),
        .I2(nb_cid[7]),
        .I3(st_in[11]),
        .O(\st_out[14]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h2202FF0F00002202)) 
    \st_out[14]_INST_0_i_7 
       (.I0(st_in[9]),
        .I1(nb_cid[5]),
        .I2(nb_cid[7]),
        .I3(st_in[11]),
        .I4(nb_cid[6]),
        .I5(st_in[10]),
        .O(\st_out[14]_INST_0_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \st_out[14]_INST_0_i_8 
       (.I0(st_in[12]),
        .I1(nb_cid[8]),
        .I2(st_in[13]),
        .I3(nb_cid[9]),
        .O(\st_out[14]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAA82AA82AEC2AA82)) 
    \st_out[1]_INST_0 
       (.I0(st_in[1]),
        .I1(stage[0]),
        .I2(stage[2]),
        .I3(stage[1]),
        .I4(\st_out[12]_INST_0_i_2_n_0 ),
        .I5(\st_out[14]_INST_0_i_1_n_0 ),
        .O(st_out[1]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF800000)) 
    \st_out[2]_INST_0 
       (.I0(\st_out[2]_INST_0_i_1_n_0 ),
        .I1(\st_out[5]_INST_0_i_1_n_0 ),
        .I2(\st_out[2]_INST_0_i_2_n_0 ),
        .I3(st_in[2]),
        .I4(\st_out[14]_INST_0_i_2_n_0 ),
        .I5(\st_out[2]_INST_0_i_3_n_0 ),
        .O(st_out[2]));
  LUT6 #(
    .INIT(64'hBFFFFFFFFFFFFFFF)) 
    \st_out[2]_INST_0_i_1 
       (.I0(st_in[1]),
        .I1(nb_cid[8]),
        .I2(nb_cid[6]),
        .I3(nb_cid[5]),
        .I4(nb_cid[7]),
        .I5(nb_cid[9]),
        .O(\st_out[2]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000008000000)) 
    \st_out[2]_INST_0_i_2 
       (.I0(e_grown[1]),
        .I1(nb_grown[1]),
        .I2(st_in[2]),
        .I3(stage[1]),
        .I4(stage[0]),
        .I5(stage[2]),
        .O(\st_out[2]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF0000000F0F0F8F0)) 
    \st_out[2]_INST_0_i_3 
       (.I0(st_in[8]),
        .I1(st_in[7]),
        .I2(st_in[2]),
        .I3(stage[1]),
        .I4(stage[2]),
        .I5(stage[0]),
        .O(\st_out[2]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF88F8)) 
    \st_out[3]_INST_0 
       (.I0(\st_out[14]_INST_0_i_2_n_0 ),
        .I1(\st_out[3]_INST_0_i_1_n_0 ),
        .I2(st_in[3]),
        .I3(\st_out[4]_INST_0_i_3_n_0 ),
        .I4(\st_out[3]_INST_0_i_2_n_0 ),
        .O(st_out[3]));
  LUT6 #(
    .INIT(64'h8A888A888A88AAAA)) 
    \st_out[3]_INST_0_i_1 
       (.I0(st_in[3]),
        .I1(\st_out[12]_INST_0_i_2_n_0 ),
        .I2(m_pass[0]),
        .I3(m_pass[1]),
        .I4(\st_out[14]_INST_0_i_5_n_0 ),
        .I5(\st_out[14]_INST_0_i_4_n_0 ),
        .O(\st_out[3]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1010100000001000)) 
    \st_out[3]_INST_0_i_2 
       (.I0(stage[1]),
        .I1(stage[2]),
        .I2(stage[0]),
        .I3(st_in[3]),
        .I4(p_has_above),
        .I5(ab_ptr[0]),
        .O(\st_out[3]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hF4F4FFF4)) 
    \st_out[4]_INST_0 
       (.I0(\st_out[4]_INST_0_i_1_n_0 ),
        .I1(\st_out[14]_INST_0_i_2_n_0 ),
        .I2(\st_out[4]_INST_0_i_2_n_0 ),
        .I3(st_in[4]),
        .I4(\st_out[4]_INST_0_i_3_n_0 ),
        .O(st_out[4]));
  LUT6 #(
    .INIT(64'h0F0F02020F0FDF0F)) 
    \st_out[4]_INST_0_i_1 
       (.I0(m_pass[1]),
        .I1(m_pass[0]),
        .I2(st_in[4]),
        .I3(\st_out[14]_INST_0_i_4_n_0 ),
        .I4(\st_out[12]_INST_0_i_2_n_0 ),
        .I5(\st_out[14]_INST_0_i_5_n_0 ),
        .O(\st_out[4]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1010100000001000)) 
    \st_out[4]_INST_0_i_2 
       (.I0(stage[1]),
        .I1(stage[2]),
        .I2(stage[0]),
        .I3(st_in[4]),
        .I4(p_has_above),
        .I5(ab_ptr[1]),
        .O(\st_out[4]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h0AEA)) 
    \st_out[4]_INST_0_i_3 
       (.I0(stage[0]),
        .I1(\st_out[4]_INST_0_i_4_n_0 ),
        .I2(stage[1]),
        .I3(stage[2]),
        .O(\st_out[4]_INST_0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \st_out[4]_INST_0_i_4 
       (.I0(p_is_bot),
        .I1(st_in[4]),
        .I2(st_in[3]),
        .I3(st_in[5]),
        .O(\st_out[4]_INST_0_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF0888)) 
    \st_out[5]_INST_0 
       (.I0(\st_out[14]_INST_0_i_2_n_0 ),
        .I1(st_in[5]),
        .I2(\st_out[5]_INST_0_i_1_n_0 ),
        .I3(\st_out[5]_INST_0_i_2_n_0 ),
        .I4(\st_out[5]_INST_0_i_3_n_0 ),
        .O(st_out[5]));
  LUT6 #(
    .INIT(64'h000000007FFFFFFF)) 
    \st_out[5]_INST_0_i_1 
       (.I0(st_in[10]),
        .I1(st_in[9]),
        .I2(st_in[13]),
        .I3(st_in[11]),
        .I4(st_in[12]),
        .I5(\st_out[14]_INST_0_i_1_n_0 ),
        .O(\st_out[5]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \st_out[5]_INST_0_i_2 
       (.I0(\st_out[14]_INST_0_i_5_n_0 ),
        .I1(\st_out[2]_INST_0_i_1_n_0 ),
        .I2(e_grown[1]),
        .O(\st_out[5]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF0F000F000F0B8F0)) 
    \st_out[5]_INST_0_i_3 
       (.I0(ab_ptr[2]),
        .I1(p_has_above),
        .I2(st_in[5]),
        .I3(stage[0]),
        .I4(stage[2]),
        .I5(stage[1]),
        .O(\st_out[5]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFE1B40000)) 
    \st_out[6]_INST_0 
       (.I0(\st_out[6]_INST_0_i_1_n_0 ),
        .I1(nb_push[1]),
        .I2(st_in[6]),
        .I3(\st_out[6]_INST_0_i_2_n_0 ),
        .I4(\st_out[14]_INST_0_i_2_n_0 ),
        .I5(\st_out[6]_INST_0_i_3_n_0 ),
        .O(st_out[6]));
  LUT2 #(
    .INIT(4'h2)) 
    \st_out[6]_INST_0_i_1 
       (.I0(m_pass[0]),
        .I1(m_pass[1]),
        .O(\st_out[6]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0044004044444444)) 
    \st_out[6]_INST_0_i_2 
       (.I0(p_is_bnd),
        .I1(st_in[6]),
        .I2(st_in[5]),
        .I3(\st_out[6]_INST_0_i_4_n_0 ),
        .I4(st_in[3]),
        .I5(\st_out[4]_INST_0_i_1_n_0 ),
        .O(\st_out[6]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h5100FFFF40004000)) 
    \st_out[6]_INST_0_i_3 
       (.I0(p_is_top),
        .I1(p_has_above),
        .I2(ab_defect),
        .I3(\st_out[7]_INST_0_i_2_n_0 ),
        .I4(\st_out[12]_INST_0_i_6_n_0 ),
        .I5(st_in[6]),
        .O(\st_out[6]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F2F200F2)) 
    \st_out[6]_INST_0_i_4 
       (.I0(e_grown[1]),
        .I1(\st_out[2]_INST_0_i_1_n_0 ),
        .I2(\st_out[14]_INST_0_i_5_n_0 ),
        .I3(m_pass[1]),
        .I4(m_pass[0]),
        .I5(\st_out[12]_INST_0_i_2_n_0 ),
        .O(\st_out[6]_INST_0_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFEAAA)) 
    \st_out[7]_INST_0 
       (.I0(\st_out[7]_INST_0_i_1_n_0 ),
        .I1(\st_out[7]_INST_0_i_2_n_0 ),
        .I2(ab_whole),
        .I3(p_has_above),
        .I4(\st_out[7]_INST_0_i_3_n_0 ),
        .O(st_out[7]));
  LUT6 #(
    .INIT(64'hAAA0AA2AAAAAAA2A)) 
    \st_out[7]_INST_0_i_1 
       (.I0(st_in[7]),
        .I1(p_has_above),
        .I2(stage[0]),
        .I3(stage[2]),
        .I4(stage[1]),
        .I5(st_in[8]),
        .O(\st_out[7]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \st_out[7]_INST_0_i_2 
       (.I0(stage[0]),
        .I1(stage[2]),
        .I2(stage[1]),
        .O(\st_out[7]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h00100000)) 
    \st_out[7]_INST_0_i_3 
       (.I0(stage[0]),
        .I1(stage[1]),
        .I2(stage[2]),
        .I3(st_in[2]),
        .I4(st_in[8]),
        .O(\st_out[7]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFB000800)) 
    \st_out[8]_INST_0 
       (.I0(st_in[8]),
        .I1(m_pass[0]),
        .I2(m_pass[1]),
        .I3(\st_out[14]_INST_0_i_2_n_0 ),
        .I4(\st_out[8]_INST_0_i_1_n_0 ),
        .I5(\st_out[8]_INST_0_i_2_n_0 ),
        .O(st_out[8]));
  LUT6 #(
    .INIT(64'hFFFB030BFCF80008)) 
    \st_out[8]_INST_0_i_1 
       (.I0(\st_out[8]_INST_0_i_3_n_0 ),
        .I1(\st_out[4]_INST_0_i_1_n_0 ),
        .I2(\st_out[3]_INST_0_i_1_n_0 ),
        .I3(\st_out[8]_INST_0_i_4_n_0 ),
        .I4(nb_active[2]),
        .I5(nb_active[1]),
        .O(\st_out[8]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7370507050505050)) 
    \st_out[8]_INST_0_i_2 
       (.I0(\st_out[12]_INST_0_i_6_n_0 ),
        .I1(p_is_top),
        .I2(st_in[8]),
        .I3(p_has_above),
        .I4(ab_active),
        .I5(\st_out[7]_INST_0_i_2_n_0 ),
        .O(\st_out[8]_INST_0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \st_out[8]_INST_0_i_3 
       (.I0(st_in[6]),
        .I1(p_is_bnd),
        .O(\st_out[8]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8A888A888A88AAAA)) 
    \st_out[8]_INST_0_i_4 
       (.I0(st_in[5]),
        .I1(\st_out[12]_INST_0_i_2_n_0 ),
        .I2(m_pass[0]),
        .I3(m_pass[1]),
        .I4(\st_out[14]_INST_0_i_5_n_0 ),
        .I5(\st_out[14]_INST_0_i_4_n_0 ),
        .O(\st_out[8]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFF40FF40FFFFFF40)) 
    \st_out[9]_INST_0 
       (.I0(\st_out[12]_INST_0_i_2_n_0 ),
        .I1(\st_out[14]_INST_0_i_2_n_0 ),
        .I2(\st_out[9]_INST_0_i_1_n_0 ),
        .I3(\st_out[9]_INST_0_i_2_n_0 ),
        .I4(st_in[9]),
        .I5(\st_out[9]_INST_0_i_3_n_0 ),
        .O(st_out[9]));
  LUT6 #(
    .INIT(64'hA0A0AAAABFB3AAAA)) 
    \st_out[9]_INST_0_i_1 
       (.I0(st_in[9]),
        .I1(\st_out[2]_INST_0_i_1_n_0 ),
        .I2(\st_out[12]_INST_0_i_4_n_0 ),
        .I3(nb_cid[5]),
        .I4(e_grown[1]),
        .I5(\st_out[14]_INST_0_i_1_n_0 ),
        .O(\st_out[9]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAEAAA)) 
    \st_out[9]_INST_0_i_2 
       (.I0(\st_out[13]_INST_0_i_4_n_0 ),
        .I1(p_has_above),
        .I2(ab_cid[0]),
        .I3(stage[0]),
        .I4(stage[2]),
        .I5(stage[1]),
        .O(\st_out[9]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000F300F300AA00)) 
    \st_out[9]_INST_0_i_3 
       (.I0(p_has_above),
        .I1(m_pass[1]),
        .I2(m_pass[0]),
        .I3(stage[0]),
        .I4(stage[2]),
        .I5(stage[1]),
        .O(\st_out[9]_INST_0_i_3_n_0 ));
endmodule

(* HAS_ABOVE = "0" *) (* ID = "0" *) (* IS_BND = "0" *) 
(* IS_BOT = "0" *) (* IS_TOP = "0" *) (* OFF_ACT = "8" *) 
(* OFF_BUSY = "0" *) (* OFF_CID = "9" *) (* OFF_DEF = "6" *) 
(* OFF_GRW = "2" *) (* OFF_PB = "14" *) (* OFF_PTR = "3" *) 
(* OFF_UNR = "1" *) (* OFF_WHL = "7" *) (* ONE_ONE = "0" *) 
(* ORIG_REF_NAME = "snowflake_pe" *) (* STW = "15" *) (* ST_DROP = "3'b001" *) 
(* ST_GH = "3'b100" *) (* ST_GW = "3'b010" *) (* ST_IDLE = "3'b000" *) 
(* ST_MH = "3'b101" *) (* ST_MW = "3'b011" *) (* SYN_IDX = "-1" *) 
(* ZZZ_ANCHOR = "0" *) 
module snowflake_pe__2
   (clk,
    reset,
    stage,
    syn_bit,
    ab_cid,
    ab_active,
    ab_whole,
    ab_defect,
    ab_ptr,
    e_grown,
    nb_valid,
    nb_cid,
    nb_active,
    nb_grown,
    nb_push,
    m_pass,
    st_in,
    st_out,
    o_busy_c,
    o_pulse,
    o_push,
    p_id,
    p_has_above,
    p_is_bnd,
    p_is_top,
    p_is_bot,
    p_is_syn,
    zzz_never_used);
  input clk;
  input reset;
  input [2:0]stage;
  input syn_bit;
  input [4:0]ab_cid;
  input ab_active;
  input ab_whole;
  input ab_defect;
  input [2:0]ab_ptr;
  input [3:0]e_grown;
  input [3:0]nb_valid;
  input [19:0]nb_cid;
  input [3:0]nb_active;
  input [3:0]nb_grown;
  input [3:0]nb_push;
  input [1:0]m_pass;
  input [14:0]st_in;
  output [14:0]st_out;
  output o_busy_c;
  output o_pulse;
  output [3:0]o_push;
  input [4:0]p_id;
  input p_has_above;
  input p_is_bnd;
  input p_is_top;
  input p_is_bot;
  input p_is_syn;
  input zzz_never_used;

  wire \<const0> ;
  wire ab_active;
  wire [4:0]ab_cid;
  wire ab_defect;
  wire [2:0]ab_ptr;
  wire ab_whole;
  wire [3:0]e_grown;
  wire [1:0]m_pass;
  wire [3:0]nb_active;
  wire [19:0]nb_cid;
  wire [3:0]nb_grown;
  wire [3:0]nb_push;
  wire [3:0]nb_valid;
  wire [4:0]p_id;
  wire p_is_bot;
  wire [14:0]st_in;
  wire [14:0]st_out;
  wire \st_out[0]_INST_0_i_10_n_0 ;
  wire \st_out[0]_INST_0_i_11_n_0 ;
  wire \st_out[0]_INST_0_i_12_n_0 ;
  wire \st_out[0]_INST_0_i_13_n_0 ;
  wire \st_out[0]_INST_0_i_14_n_0 ;
  wire \st_out[0]_INST_0_i_15_n_0 ;
  wire \st_out[0]_INST_0_i_1_n_0 ;
  wire \st_out[0]_INST_0_i_2_n_0 ;
  wire \st_out[0]_INST_0_i_3_n_0 ;
  wire \st_out[0]_INST_0_i_4_n_0 ;
  wire \st_out[0]_INST_0_i_5_n_0 ;
  wire \st_out[0]_INST_0_i_6_n_0 ;
  wire \st_out[0]_INST_0_i_7_n_0 ;
  wire \st_out[0]_INST_0_i_8_n_0 ;
  wire \st_out[0]_INST_0_i_9_n_0 ;
  wire \st_out[10]_INST_0_i_1_n_0 ;
  wire \st_out[10]_INST_0_i_2_n_0 ;
  wire \st_out[10]_INST_0_i_3_n_0 ;
  wire \st_out[10]_INST_0_i_4_n_0 ;
  wire \st_out[10]_INST_0_i_5_n_0 ;
  wire \st_out[10]_INST_0_i_6_n_0 ;
  wire \st_out[10]_INST_0_i_7_n_0 ;
  wire \st_out[11]_INST_0_i_10_n_0 ;
  wire \st_out[11]_INST_0_i_11_n_0 ;
  wire \st_out[11]_INST_0_i_12_n_0 ;
  wire \st_out[11]_INST_0_i_13_n_0 ;
  wire \st_out[11]_INST_0_i_14_n_0 ;
  wire \st_out[11]_INST_0_i_15_n_0 ;
  wire \st_out[11]_INST_0_i_1_n_0 ;
  wire \st_out[11]_INST_0_i_2_n_0 ;
  wire \st_out[11]_INST_0_i_3_n_0 ;
  wire \st_out[11]_INST_0_i_4_n_0 ;
  wire \st_out[11]_INST_0_i_5_n_0 ;
  wire \st_out[11]_INST_0_i_6_n_0 ;
  wire \st_out[11]_INST_0_i_7_n_0 ;
  wire \st_out[11]_INST_0_i_8_n_0 ;
  wire \st_out[11]_INST_0_i_9_n_0 ;
  wire \st_out[12]_INST_0_i_10_n_0 ;
  wire \st_out[12]_INST_0_i_11_n_0 ;
  wire \st_out[12]_INST_0_i_12_n_0 ;
  wire \st_out[12]_INST_0_i_13_n_0 ;
  wire \st_out[12]_INST_0_i_14_n_0 ;
  wire \st_out[12]_INST_0_i_15_n_0 ;
  wire \st_out[12]_INST_0_i_16_n_0 ;
  wire \st_out[12]_INST_0_i_17_n_0 ;
  wire \st_out[12]_INST_0_i_18_n_0 ;
  wire \st_out[12]_INST_0_i_19_n_0 ;
  wire \st_out[12]_INST_0_i_1_n_0 ;
  wire \st_out[12]_INST_0_i_20_n_0 ;
  wire \st_out[12]_INST_0_i_21_n_0 ;
  wire \st_out[12]_INST_0_i_22_n_0 ;
  wire \st_out[12]_INST_0_i_23_n_0 ;
  wire \st_out[12]_INST_0_i_2_n_0 ;
  wire \st_out[12]_INST_0_i_3_n_0 ;
  wire \st_out[12]_INST_0_i_4_n_0 ;
  wire \st_out[12]_INST_0_i_5_n_0 ;
  wire \st_out[12]_INST_0_i_6_n_0 ;
  wire \st_out[12]_INST_0_i_7_n_0 ;
  wire \st_out[12]_INST_0_i_8_n_0 ;
  wire \st_out[12]_INST_0_i_9_n_0 ;
  wire \st_out[13]_INST_0_i_10_n_0 ;
  wire \st_out[13]_INST_0_i_11_n_0 ;
  wire \st_out[13]_INST_0_i_12_n_0 ;
  wire \st_out[13]_INST_0_i_13_n_0 ;
  wire \st_out[13]_INST_0_i_14_n_0 ;
  wire \st_out[13]_INST_0_i_15_n_0 ;
  wire \st_out[13]_INST_0_i_16_n_0 ;
  wire \st_out[13]_INST_0_i_17_n_0 ;
  wire \st_out[13]_INST_0_i_18_n_0 ;
  wire \st_out[13]_INST_0_i_1_n_0 ;
  wire \st_out[13]_INST_0_i_2_n_0 ;
  wire \st_out[13]_INST_0_i_3_n_0 ;
  wire \st_out[13]_INST_0_i_4_n_0 ;
  wire \st_out[13]_INST_0_i_5_n_0 ;
  wire \st_out[13]_INST_0_i_6_n_0 ;
  wire \st_out[13]_INST_0_i_7_n_0 ;
  wire \st_out[13]_INST_0_i_8_n_0 ;
  wire \st_out[13]_INST_0_i_9_n_0 ;
  wire \st_out[14]_INST_0_i_10_n_0 ;
  wire \st_out[14]_INST_0_i_11_n_0 ;
  wire \st_out[14]_INST_0_i_12_n_0 ;
  wire \st_out[14]_INST_0_i_13_n_0 ;
  wire \st_out[14]_INST_0_i_14_n_0 ;
  wire \st_out[14]_INST_0_i_15_n_0 ;
  wire \st_out[14]_INST_0_i_16_n_0 ;
  wire \st_out[14]_INST_0_i_17_n_0 ;
  wire \st_out[14]_INST_0_i_18_n_0 ;
  wire \st_out[14]_INST_0_i_19_n_0 ;
  wire \st_out[14]_INST_0_i_1_n_0 ;
  wire \st_out[14]_INST_0_i_20_n_0 ;
  wire \st_out[14]_INST_0_i_21_n_0 ;
  wire \st_out[14]_INST_0_i_22_n_0 ;
  wire \st_out[14]_INST_0_i_23_n_0 ;
  wire \st_out[14]_INST_0_i_24_n_0 ;
  wire \st_out[14]_INST_0_i_25_n_0 ;
  wire \st_out[14]_INST_0_i_26_n_0 ;
  wire \st_out[14]_INST_0_i_27_n_0 ;
  wire \st_out[14]_INST_0_i_28_n_0 ;
  wire \st_out[14]_INST_0_i_29_n_0 ;
  wire \st_out[14]_INST_0_i_2_n_0 ;
  wire \st_out[14]_INST_0_i_30_n_0 ;
  wire \st_out[14]_INST_0_i_31_n_0 ;
  wire \st_out[14]_INST_0_i_32_n_0 ;
  wire \st_out[14]_INST_0_i_33_n_0 ;
  wire \st_out[14]_INST_0_i_34_n_0 ;
  wire \st_out[14]_INST_0_i_35_n_0 ;
  wire \st_out[14]_INST_0_i_36_n_0 ;
  wire \st_out[14]_INST_0_i_3_n_0 ;
  wire \st_out[14]_INST_0_i_4_n_0 ;
  wire \st_out[14]_INST_0_i_5_n_0 ;
  wire \st_out[14]_INST_0_i_6_n_0 ;
  wire \st_out[14]_INST_0_i_7_n_0 ;
  wire \st_out[14]_INST_0_i_8_n_0 ;
  wire \st_out[14]_INST_0_i_9_n_0 ;
  wire \st_out[2]_INST_0_i_1_n_0 ;
  wire \st_out[2]_INST_0_i_2_n_0 ;
  wire \st_out[2]_INST_0_i_3_n_0 ;
  wire \st_out[2]_INST_0_i_4_n_0 ;
  wire \st_out[2]_INST_0_i_5_n_0 ;
  wire \st_out[2]_INST_0_i_6_n_0 ;
  wire \st_out[2]_INST_0_i_7_n_0 ;
  wire \st_out[3]_INST_0_i_1_n_0 ;
  wire \st_out[3]_INST_0_i_2_n_0 ;
  wire \st_out[3]_INST_0_i_3_n_0 ;
  wire \st_out[4]_INST_0_i_1_n_0 ;
  wire \st_out[4]_INST_0_i_2_n_0 ;
  wire \st_out[4]_INST_0_i_3_n_0 ;
  wire \st_out[4]_INST_0_i_4_n_0 ;
  wire \st_out[5]_INST_0_i_1_n_0 ;
  wire \st_out[6]_INST_0_i_1_n_0 ;
  wire \st_out[6]_INST_0_i_2_n_0 ;
  wire \st_out[6]_INST_0_i_3_n_0 ;
  wire \st_out[6]_INST_0_i_4_n_0 ;
  wire \st_out[6]_INST_0_i_5_n_0 ;
  wire \st_out[7]_INST_0_i_1_n_0 ;
  wire \st_out[7]_INST_0_i_2_n_0 ;
  wire \st_out[7]_INST_0_i_3_n_0 ;
  wire \st_out[8]_INST_0_i_1_n_0 ;
  wire \st_out[8]_INST_0_i_2_n_0 ;
  wire \st_out[8]_INST_0_i_3_n_0 ;
  wire \st_out[8]_INST_0_i_4_n_0 ;
  wire \st_out[8]_INST_0_i_5_n_0 ;
  wire \st_out[8]_INST_0_i_6_n_0 ;
  wire \st_out[9]_INST_0_i_1_n_0 ;
  wire \st_out[9]_INST_0_i_2_n_0 ;
  wire \st_out[9]_INST_0_i_3_n_0 ;
  wire \st_out[9]_INST_0_i_4_n_0 ;
  wire \st_out[9]_INST_0_i_5_n_0 ;
  wire \st_out[9]_INST_0_i_6_n_0 ;
  wire \st_out[9]_INST_0_i_7_n_0 ;
  wire [2:0]stage;
  wire syn_bit;

  assign o_busy_c = \<const0> ;
  assign o_pulse = \<const0> ;
  assign o_push[3] = \<const0> ;
  assign o_push[2] = \<const0> ;
  assign o_push[1] = \<const0> ;
  assign o_push[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  LUT6 #(
    .INIT(64'h00000000F3FCFFF9)) 
    \st_out[0]_INST_0 
       (.I0(\st_out[0]_INST_0_i_1_n_0 ),
        .I1(st_in[8]),
        .I2(\st_out[0]_INST_0_i_2_n_0 ),
        .I3(st_in[6]),
        .I4(\st_out[6]_INST_0_i_3_n_0 ),
        .I5(\st_out[0]_INST_0_i_3_n_0 ),
        .O(st_out[0]));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \st_out[0]_INST_0_i_1 
       (.I0(nb_active[3]),
        .I1(nb_active[0]),
        .I2(\st_out[4]_INST_0_i_1_n_0 ),
        .I3(nb_active[1]),
        .I4(\st_out[3]_INST_0_i_1_n_0 ),
        .I5(nb_active[2]),
        .O(\st_out[0]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'h00800000)) 
    \st_out[0]_INST_0_i_10 
       (.I0(\st_out[2]_INST_0_i_6_n_0 ),
        .I1(nb_grown[2]),
        .I2(stage[0]),
        .I3(stage[2]),
        .I4(stage[1]),
        .O(\st_out[0]_INST_0_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'h8F)) 
    \st_out[0]_INST_0_i_11 
       (.I0(nb_cid[11]),
        .I1(nb_cid[10]),
        .I2(nb_cid[12]),
        .O(\st_out[0]_INST_0_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \st_out[0]_INST_0_i_12 
       (.I0(nb_cid[14]),
        .I1(nb_cid[12]),
        .I2(nb_cid[11]),
        .I3(nb_cid[13]),
        .O(\st_out[0]_INST_0_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'hDFFFFFFF)) 
    \st_out[0]_INST_0_i_13 
       (.I0(stage[1]),
        .I1(stage[2]),
        .I2(stage[0]),
        .I3(nb_grown[0]),
        .I4(e_grown[0]),
        .O(\st_out[0]_INST_0_i_13_n_0 ));
  LUT5 #(
    .INIT(32'h000000F7)) 
    \st_out[0]_INST_0_i_14 
       (.I0(\st_out[2]_INST_0_i_7_n_0 ),
        .I1(nb_grown[1]),
        .I2(\st_out[2]_INST_0_i_4_n_0 ),
        .I3(\st_out[13]_INST_0_i_16_n_0 ),
        .I4(\st_out[11]_INST_0_i_15_n_0 ),
        .O(\st_out[0]_INST_0_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \st_out[0]_INST_0_i_15 
       (.I0(e_grown[0]),
        .I1(\st_out[13]_INST_0_i_15_n_0 ),
        .O(\st_out[0]_INST_0_i_15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'h73F7)) 
    \st_out[0]_INST_0_i_2 
       (.I0(\st_out[0]_INST_0_i_4_n_0 ),
        .I1(\st_out[6]_INST_0_i_1_n_0 ),
        .I2(m_pass[0]),
        .I3(m_pass[1]),
        .O(\st_out[0]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h9F9F9F9FFF9F9F9F)) 
    \st_out[0]_INST_0_i_3 
       (.I0(stage[1]),
        .I1(stage[2]),
        .I2(stage[0]),
        .I3(\st_out[0]_INST_0_i_4_n_0 ),
        .I4(m_pass[0]),
        .I5(m_pass[1]),
        .O(\st_out[0]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000057555757)) 
    \st_out[0]_INST_0_i_4 
       (.I0(\st_out[13]_INST_0_i_6_n_0 ),
        .I1(\st_out[0]_INST_0_i_5_n_0 ),
        .I2(\st_out[13]_INST_0_i_10_n_0 ),
        .I3(\st_out[0]_INST_0_i_6_n_0 ),
        .I4(\st_out[12]_INST_0_i_8_n_0 ),
        .I5(\st_out[0]_INST_0_i_7_n_0 ),
        .O(\st_out[0]_INST_0_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h00800000)) 
    \st_out[0]_INST_0_i_5 
       (.I0(\st_out[2]_INST_0_i_5_n_0 ),
        .I1(nb_grown[3]),
        .I2(stage[0]),
        .I3(stage[2]),
        .I4(stage[1]),
        .O(\st_out[0]_INST_0_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \st_out[0]_INST_0_i_6 
       (.I0(nb_cid[16]),
        .I1(nb_cid[19]),
        .I2(nb_cid[17]),
        .I3(nb_cid[18]),
        .O(\st_out[0]_INST_0_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFF47)) 
    \st_out[0]_INST_0_i_7 
       (.I0(\st_out[0]_INST_0_i_8_n_0 ),
        .I1(\st_out[13]_INST_0_i_14_n_0 ),
        .I2(\st_out[0]_INST_0_i_9_n_0 ),
        .I3(\st_out[10]_INST_0_i_1_n_0 ),
        .O(\st_out[0]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h2222202200002000)) 
    \st_out[0]_INST_0_i_8 
       (.I0(\st_out[0]_INST_0_i_9_n_0 ),
        .I1(\st_out[0]_INST_0_i_10_n_0 ),
        .I2(st_in[1]),
        .I3(\st_out[0]_INST_0_i_11_n_0 ),
        .I4(\st_out[0]_INST_0_i_12_n_0 ),
        .I5(\st_out[11]_INST_0_i_11_n_0 ),
        .O(\st_out[0]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h00000000E000E0E0)) 
    \st_out[0]_INST_0_i_9 
       (.I0(\st_out[0]_INST_0_i_13_n_0 ),
        .I1(st_in[2]),
        .I2(\st_out[14]_INST_0_i_15_n_0 ),
        .I3(\st_out[0]_INST_0_i_14_n_0 ),
        .I4(e_grown[1]),
        .I5(\st_out[0]_INST_0_i_15_n_0 ),
        .O(\st_out[0]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF4500)) 
    \st_out[10]_INST_0 
       (.I0(\st_out[14]_INST_0_i_1_n_0 ),
        .I1(p_id[1]),
        .I2(\st_out[10]_INST_0_i_1_n_0 ),
        .I3(\st_out[10]_INST_0_i_2_n_0 ),
        .I4(\st_out[10]_INST_0_i_3_n_0 ),
        .I5(\st_out[10]_INST_0_i_4_n_0 ),
        .O(st_out[10]));
  LUT5 #(
    .INIT(32'h80000000)) 
    \st_out[10]_INST_0_i_1 
       (.I0(st_in[12]),
        .I1(st_in[9]),
        .I2(st_in[10]),
        .I3(st_in[11]),
        .I4(st_in[13]),
        .O(\st_out[10]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hDDCFFFFFDDCFCCCC)) 
    \st_out[10]_INST_0_i_2 
       (.I0(\st_out[10]_INST_0_i_5_n_0 ),
        .I1(\st_out[10]_INST_0_i_1_n_0 ),
        .I2(\st_out[10]_INST_0_i_6_n_0 ),
        .I3(\st_out[14]_INST_0_i_6_n_0 ),
        .I4(\st_out[14]_INST_0_i_5_n_0 ),
        .I5(nb_cid[16]),
        .O(\st_out[10]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFBFFFBAAAAAAAAAA)) 
    \st_out[10]_INST_0_i_3 
       (.I0(\st_out[11]_INST_0_i_3_n_0 ),
        .I1(ab_cid[1]),
        .I2(\st_out[11]_INST_0_i_8_n_0 ),
        .I3(nb_valid[3]),
        .I4(st_in[10]),
        .I5(\st_out[7]_INST_0_i_2_n_0 ),
        .O(\st_out[10]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h80AAA8AA80AA80AA)) 
    \st_out[10]_INST_0_i_4 
       (.I0(st_in[10]),
        .I1(stage[1]),
        .I2(stage[2]),
        .I3(stage[0]),
        .I4(m_pass[0]),
        .I5(m_pass[1]),
        .O(\st_out[10]_INST_0_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \st_out[10]_INST_0_i_5 
       (.I0(st_in[10]),
        .I1(\st_out[13]_INST_0_i_4_n_0 ),
        .I2(\st_out[13]_INST_0_i_3_n_0 ),
        .O(\st_out[10]_INST_0_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'h47774744)) 
    \st_out[10]_INST_0_i_6 
       (.I0(nb_cid[11]),
        .I1(\st_out[14]_INST_0_i_16_n_0 ),
        .I2(nb_cid[6]),
        .I3(\st_out[14]_INST_0_i_17_n_0 ),
        .I4(\st_out[10]_INST_0_i_7_n_0 ),
        .O(\st_out[10]_INST_0_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'h47)) 
    \st_out[10]_INST_0_i_7 
       (.I0(st_in[10]),
        .I1(\st_out[14]_INST_0_i_15_n_0 ),
        .I2(nb_cid[1]),
        .O(\st_out[10]_INST_0_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \st_out[11]_INST_0 
       (.I0(\st_out[11]_INST_0_i_1_n_0 ),
        .I1(\st_out[11]_INST_0_i_2_n_0 ),
        .I2(\st_out[11]_INST_0_i_3_n_0 ),
        .I3(\st_out[11]_INST_0_i_4_n_0 ),
        .O(st_out[11]));
  LUT6 #(
    .INIT(64'h00000000EEEEEEE2)) 
    \st_out[11]_INST_0_i_1 
       (.I0(\st_out[11]_INST_0_i_5_n_0 ),
        .I1(\st_out[13]_INST_0_i_2_n_0 ),
        .I2(st_in[11]),
        .I3(\st_out[13]_INST_0_i_3_n_0 ),
        .I4(\st_out[13]_INST_0_i_4_n_0 ),
        .I5(\st_out[11]_INST_0_i_6_n_0 ),
        .O(\st_out[11]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF7FFFFFF00080000)) 
    \st_out[11]_INST_0_i_10 
       (.I0(e_grown[2]),
        .I1(nb_valid[2]),
        .I2(\st_out[11]_INST_0_i_11_n_0 ),
        .I3(nb_cid[12]),
        .I4(\st_out[13]_INST_0_i_8_n_0 ),
        .I5(\st_out[11]_INST_0_i_12_n_0 ),
        .O(\st_out[11]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hE8E8E8E8EEE8EEEE)) 
    \st_out[11]_INST_0_i_11 
       (.I0(nb_cid[14]),
        .I1(\st_out[13]_INST_0_i_13_n_0 ),
        .I2(\st_out[11]_INST_0_i_13_n_0 ),
        .I3(\st_out[14]_INST_0_i_23_n_0 ),
        .I4(\st_out[14]_INST_0_i_22_n_0 ),
        .I5(\st_out[14]_INST_0_i_21_n_0 ),
        .O(\st_out[11]_INST_0_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'h47444777)) 
    \st_out[11]_INST_0_i_12 
       (.I0(nb_cid[7]),
        .I1(\st_out[14]_INST_0_i_17_n_0 ),
        .I2(st_in[11]),
        .I3(\st_out[14]_INST_0_i_15_n_0 ),
        .I4(nb_cid[2]),
        .O(\st_out[11]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h4555F55500000000)) 
    \st_out[11]_INST_0_i_13 
       (.I0(\st_out[12]_INST_0_i_18_n_0 ),
        .I1(\st_out[11]_INST_0_i_14_n_0 ),
        .I2(\st_out[13]_INST_0_i_18_n_0 ),
        .I3(\st_out[11]_INST_0_i_15_n_0 ),
        .I4(nb_cid[8]),
        .I5(nb_cid[13]),
        .O(\st_out[11]_INST_0_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \st_out[11]_INST_0_i_14 
       (.I0(nb_cid[6]),
        .I1(nb_cid[5]),
        .I2(nb_cid[9]),
        .I3(nb_cid[7]),
        .O(\st_out[11]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h1711171117117717)) 
    \st_out[11]_INST_0_i_15 
       (.I0(\st_out[14]_INST_0_i_29_n_0 ),
        .I1(nb_cid[9]),
        .I2(nb_cid[8]),
        .I3(\st_out[12]_INST_0_i_18_n_0 ),
        .I4(\st_out[14]_INST_0_i_27_n_0 ),
        .I5(\st_out[12]_INST_0_i_21_n_0 ),
        .O(\st_out[11]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hCCCC4444F4444444)) 
    \st_out[11]_INST_0_i_2 
       (.I0(\st_out[12]_INST_0_i_9_n_0 ),
        .I1(st_in[11]),
        .I2(p_id[2]),
        .I3(\st_out[10]_INST_0_i_1_n_0 ),
        .I4(\st_out[12]_INST_0_i_5_n_0 ),
        .I5(\st_out[9]_INST_0_i_3_n_0 ),
        .O(\st_out[11]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'h00008000)) 
    \st_out[11]_INST_0_i_3 
       (.I0(\st_out[11]_INST_0_i_7_n_0 ),
        .I1(st_in[4]),
        .I2(p_is_bot),
        .I3(st_in[3]),
        .I4(st_in[5]),
        .O(\st_out[11]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hA8A8A8A808A8A808)) 
    \st_out[11]_INST_0_i_4 
       (.I0(\st_out[7]_INST_0_i_2_n_0 ),
        .I1(st_in[11]),
        .I2(nb_valid[3]),
        .I3(ab_cid[1]),
        .I4(ab_cid[2]),
        .I5(\st_out[11]_INST_0_i_8_n_0 ),
        .O(\st_out[11]_INST_0_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'h80DF)) 
    \st_out[11]_INST_0_i_5 
       (.I0(\st_out[12]_INST_0_i_8_n_0 ),
        .I1(nb_cid[17]),
        .I2(\st_out[11]_INST_0_i_9_n_0 ),
        .I3(\st_out[11]_INST_0_i_10_n_0 ),
        .O(\st_out[11]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFF9FFF9FFFFFFF9F)) 
    \st_out[11]_INST_0_i_6 
       (.I0(stage[1]),
        .I1(stage[2]),
        .I2(stage[0]),
        .I3(\st_out[10]_INST_0_i_1_n_0 ),
        .I4(m_pass[1]),
        .I5(m_pass[0]),
        .O(\st_out[11]_INST_0_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \st_out[11]_INST_0_i_7 
       (.I0(stage[1]),
        .I1(stage[2]),
        .I2(stage[0]),
        .O(\st_out[11]_INST_0_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \st_out[11]_INST_0_i_8 
       (.I0(ab_cid[0]),
        .I1(ab_cid[3]),
        .I2(ab_cid[2]),
        .I3(ab_cid[1]),
        .I4(ab_cid[4]),
        .O(\st_out[11]_INST_0_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'h2AAAAAAA)) 
    \st_out[11]_INST_0_i_9 
       (.I0(\st_out[13]_INST_0_i_6_n_0 ),
        .I1(nb_cid[18]),
        .I2(nb_cid[17]),
        .I3(nb_cid[19]),
        .I4(nb_cid[16]),
        .O(\st_out[11]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFF7550000)) 
    \st_out[12]_INST_0 
       (.I0(\st_out[12]_INST_0_i_1_n_0 ),
        .I1(\st_out[12]_INST_0_i_2_n_0 ),
        .I2(\st_out[12]_INST_0_i_3_n_0 ),
        .I3(\st_out[12]_INST_0_i_4_n_0 ),
        .I4(\st_out[12]_INST_0_i_5_n_0 ),
        .I5(\st_out[12]_INST_0_i_6_n_0 ),
        .O(st_out[12]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    \st_out[12]_INST_0_i_1 
       (.I0(st_in[12]),
        .I1(m_pass[0]),
        .I2(m_pass[1]),
        .O(\st_out[12]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'h70000FFF)) 
    \st_out[12]_INST_0_i_10 
       (.I0(ab_cid[4]),
        .I1(ab_cid[0]),
        .I2(ab_cid[1]),
        .I3(ab_cid[2]),
        .I4(ab_cid[3]),
        .O(\st_out[12]_INST_0_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \st_out[12]_INST_0_i_11 
       (.I0(nb_cid[11]),
        .I1(nb_cid[12]),
        .I2(nb_cid[14]),
        .O(\st_out[12]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h00510051FFFFFF5D)) 
    \st_out[12]_INST_0_i_12 
       (.I0(\st_out[12]_INST_0_i_14_n_0 ),
        .I1(\st_out[12]_INST_0_i_15_n_0 ),
        .I2(\st_out[14]_INST_0_i_28_n_0 ),
        .I3(\st_out[12]_INST_0_i_16_n_0 ),
        .I4(\st_out[12]_INST_0_i_17_n_0 ),
        .I5(\st_out[12]_INST_0_i_18_n_0 ),
        .O(\st_out[12]_INST_0_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \st_out[12]_INST_0_i_13 
       (.I0(nb_cid[17]),
        .I1(\st_out[11]_INST_0_i_10_n_0 ),
        .O(\st_out[12]_INST_0_i_13_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \st_out[12]_INST_0_i_14 
       (.I0(nb_cid[8]),
        .I1(\st_out[13]_INST_0_i_18_n_0 ),
        .O(\st_out[12]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF1110)) 
    \st_out[12]_INST_0_i_15 
       (.I0(\st_out[14]_INST_0_i_36_n_0 ),
        .I1(\st_out[12]_INST_0_i_19_n_0 ),
        .I2(\st_out[14]_INST_0_i_35_n_0 ),
        .I3(\st_out[12]_INST_0_i_20_n_0 ),
        .I4(\st_out[12]_INST_0_i_21_n_0 ),
        .I5(\st_out[12]_INST_0_i_22_n_0 ),
        .O(\st_out[12]_INST_0_i_15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h4F00)) 
    \st_out[12]_INST_0_i_16 
       (.I0(nb_cid[4]),
        .I1(e_grown[0]),
        .I2(st_in[13]),
        .I3(nb_cid[9]),
        .O(\st_out[12]_INST_0_i_16_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'h8000FFFF)) 
    \st_out[12]_INST_0_i_17 
       (.I0(nb_cid[7]),
        .I1(nb_cid[9]),
        .I2(nb_cid[5]),
        .I3(nb_cid[6]),
        .I4(\st_out[13]_INST_0_i_18_n_0 ),
        .O(\st_out[12]_INST_0_i_17_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'hE4F0)) 
    \st_out[12]_INST_0_i_18 
       (.I0(\st_out[12]_INST_0_i_23_n_0 ),
        .I1(nb_cid[3]),
        .I2(st_in[12]),
        .I3(e_grown[0]),
        .O(\st_out[12]_INST_0_i_18_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'h5404)) 
    \st_out[12]_INST_0_i_19 
       (.I0(nb_cid[6]),
        .I1(nb_cid[1]),
        .I2(\st_out[14]_INST_0_i_15_n_0 ),
        .I3(st_in[10]),
        .O(\st_out[12]_INST_0_i_19_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'hFFFF13B3)) 
    \st_out[12]_INST_0_i_2 
       (.I0(\st_out[13]_INST_0_i_6_n_0 ),
        .I1(\st_out[12]_INST_0_i_7_n_0 ),
        .I2(\st_out[12]_INST_0_i_8_n_0 ),
        .I3(nb_cid[18]),
        .I4(\st_out[13]_INST_0_i_2_n_0 ),
        .O(\st_out[12]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'h02A2)) 
    \st_out[12]_INST_0_i_20 
       (.I0(nb_cid[6]),
        .I1(nb_cid[1]),
        .I2(\st_out[14]_INST_0_i_15_n_0 ),
        .I3(st_in[10]),
        .O(\st_out[12]_INST_0_i_20_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h02A2)) 
    \st_out[12]_INST_0_i_21 
       (.I0(nb_cid[7]),
        .I1(nb_cid[2]),
        .I2(\st_out[14]_INST_0_i_15_n_0 ),
        .I3(st_in[11]),
        .O(\st_out[12]_INST_0_i_21_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'h0A0A028A)) 
    \st_out[12]_INST_0_i_22 
       (.I0(nb_cid[8]),
        .I1(e_grown[0]),
        .I2(st_in[12]),
        .I3(nb_cid[3]),
        .I4(\st_out[12]_INST_0_i_23_n_0 ),
        .O(\st_out[12]_INST_0_i_22_n_0 ));
  LUT6 #(
    .INIT(64'h4F044F044F04FF0F)) 
    \st_out[12]_INST_0_i_23 
       (.I0(st_in[12]),
        .I1(nb_cid[3]),
        .I2(st_in[13]),
        .I3(nb_cid[4]),
        .I4(\st_out[14]_INST_0_i_19_n_0 ),
        .I5(\st_out[14]_INST_0_i_18_n_0 ),
        .O(\st_out[12]_INST_0_i_23_n_0 ));
  LUT5 #(
    .INIT(32'hFFFEAAAA)) 
    \st_out[12]_INST_0_i_3 
       (.I0(\st_out[10]_INST_0_i_1_n_0 ),
        .I1(\st_out[13]_INST_0_i_3_n_0 ),
        .I2(st_in[12]),
        .I3(\st_out[13]_INST_0_i_4_n_0 ),
        .I4(\st_out[13]_INST_0_i_2_n_0 ),
        .O(\st_out[12]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'hF351)) 
    \st_out[12]_INST_0_i_4 
       (.I0(\st_out[10]_INST_0_i_1_n_0 ),
        .I1(m_pass[1]),
        .I2(m_pass[0]),
        .I3(nb_valid[3]),
        .O(\st_out[12]_INST_0_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \st_out[12]_INST_0_i_5 
       (.I0(stage[0]),
        .I1(stage[2]),
        .I2(stage[1]),
        .O(\st_out[12]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h3FFF2F2233332222)) 
    \st_out[12]_INST_0_i_6 
       (.I0(\st_out[11]_INST_0_i_3_n_0 ),
        .I1(\st_out[12]_INST_0_i_9_n_0 ),
        .I2(\st_out[12]_INST_0_i_10_n_0 ),
        .I3(nb_valid[3]),
        .I4(st_in[12]),
        .I5(\st_out[7]_INST_0_i_2_n_0 ),
        .O(\st_out[12]_INST_0_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hDF000F0F)) 
    \st_out[12]_INST_0_i_7 
       (.I0(nb_cid[10]),
        .I1(\st_out[12]_INST_0_i_11_n_0 ),
        .I2(\st_out[12]_INST_0_i_12_n_0 ),
        .I3(nb_cid[13]),
        .I4(\st_out[14]_INST_0_i_16_n_0 ),
        .O(\st_out[12]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h4D444D444D44DD4D)) 
    \st_out[12]_INST_0_i_8 
       (.I0(nb_cid[19]),
        .I1(\st_out[13]_INST_0_i_7_n_0 ),
        .I2(nb_cid[18]),
        .I3(\st_out[12]_INST_0_i_7_n_0 ),
        .I4(\st_out[14]_INST_0_i_12_n_0 ),
        .I5(\st_out[12]_INST_0_i_13_n_0 ),
        .O(\st_out[12]_INST_0_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \st_out[12]_INST_0_i_9 
       (.I0(stage[0]),
        .I1(stage[2]),
        .I2(stage[1]),
        .O(\st_out[12]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF55555551)) 
    \st_out[13]_INST_0 
       (.I0(\st_out[13]_INST_0_i_1_n_0 ),
        .I1(\st_out[13]_INST_0_i_2_n_0 ),
        .I2(st_in[13]),
        .I3(\st_out[13]_INST_0_i_3_n_0 ),
        .I4(\st_out[13]_INST_0_i_4_n_0 ),
        .I5(\st_out[13]_INST_0_i_5_n_0 ),
        .O(st_out[13]));
  LUT6 #(
    .INIT(64'h1055FFFFFFFFFFFF)) 
    \st_out[13]_INST_0_i_1 
       (.I0(\st_out[13]_INST_0_i_2_n_0 ),
        .I1(nb_cid[19]),
        .I2(\st_out[13]_INST_0_i_6_n_0 ),
        .I3(\st_out[13]_INST_0_i_7_n_0 ),
        .I4(\st_out[2]_INST_0_i_2_n_0 ),
        .I5(\st_out[12]_INST_0_i_5_n_0 ),
        .O(\st_out[13]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4000000000000000)) 
    \st_out[13]_INST_0_i_10 
       (.I0(st_in[1]),
        .I1(nb_cid[15]),
        .I2(nb_cid[16]),
        .I3(nb_cid[18]),
        .I4(nb_cid[17]),
        .I5(nb_cid[19]),
        .O(\st_out[13]_INST_0_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \st_out[13]_INST_0_i_11 
       (.I0(ab_cid[3]),
        .I1(ab_cid[2]),
        .I2(ab_cid[1]),
        .O(\st_out[13]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF88C8FFFFCCCC)) 
    \st_out[13]_INST_0_i_12 
       (.I0(\st_out[13]_INST_0_i_17_n_0 ),
        .I1(st_in[13]),
        .I2(\st_out[7]_INST_0_i_2_n_0 ),
        .I3(nb_valid[3]),
        .I4(\st_out[11]_INST_0_i_3_n_0 ),
        .I5(\st_out[12]_INST_0_i_9_n_0 ),
        .O(\st_out[13]_INST_0_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'h4FFF4F4F)) 
    \st_out[13]_INST_0_i_13 
       (.I0(nb_cid[4]),
        .I1(e_grown[0]),
        .I2(st_in[13]),
        .I3(nb_cid[9]),
        .I4(\st_out[13]_INST_0_i_18_n_0 ),
        .O(\st_out[13]_INST_0_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \st_out[13]_INST_0_i_14 
       (.I0(\st_out[13]_INST_0_i_8_n_0 ),
        .I1(nb_valid[2]),
        .I2(e_grown[2]),
        .O(\st_out[13]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF7FFFFFFF)) 
    \st_out[13]_INST_0_i_15 
       (.I0(nb_cid[3]),
        .I1(nb_cid[2]),
        .I2(nb_cid[0]),
        .I3(nb_cid[1]),
        .I4(nb_cid[4]),
        .I5(st_in[1]),
        .O(\st_out[13]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \st_out[13]_INST_0_i_16 
       (.I0(nb_cid[8]),
        .I1(nb_cid[6]),
        .I2(nb_cid[5]),
        .I3(nb_cid[9]),
        .I4(nb_cid[7]),
        .I5(st_in[1]),
        .O(\st_out[13]_INST_0_i_16_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT5 #(
    .INIT(32'h00600000)) 
    \st_out[13]_INST_0_i_17 
       (.I0(stage[1]),
        .I1(stage[2]),
        .I2(stage[0]),
        .I3(m_pass[0]),
        .I4(m_pass[1]),
        .O(\st_out[13]_INST_0_i_17_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \st_out[13]_INST_0_i_18 
       (.I0(e_grown[1]),
        .I1(\st_out[13]_INST_0_i_15_n_0 ),
        .I2(e_grown[0]),
        .O(\st_out[13]_INST_0_i_18_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \st_out[13]_INST_0_i_2 
       (.I0(\st_out[14]_INST_0_i_5_n_0 ),
        .I1(\st_out[14]_INST_0_i_6_n_0 ),
        .O(\st_out[13]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'hD555)) 
    \st_out[13]_INST_0_i_3 
       (.I0(\st_out[13]_INST_0_i_8_n_0 ),
        .I1(\st_out[13]_INST_0_i_9_n_0 ),
        .I2(e_grown[2]),
        .I3(nb_valid[2]),
        .O(\st_out[13]_INST_0_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \st_out[13]_INST_0_i_4 
       (.I0(\st_out[13]_INST_0_i_6_n_0 ),
        .I1(\st_out[13]_INST_0_i_10_n_0 ),
        .O(\st_out[13]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFE0006000)) 
    \st_out[13]_INST_0_i_5 
       (.I0(\st_out[13]_INST_0_i_11_n_0 ),
        .I1(ab_cid[4]),
        .I2(\st_out[7]_INST_0_i_2_n_0 ),
        .I3(nb_valid[3]),
        .I4(ab_cid[0]),
        .I5(\st_out[13]_INST_0_i_12_n_0 ),
        .O(\st_out[13]_INST_0_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \st_out[13]_INST_0_i_6 
       (.I0(nb_valid[3]),
        .I1(e_grown[3]),
        .I2(\st_out[13]_INST_0_i_3_n_0 ),
        .O(\st_out[13]_INST_0_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'h45)) 
    \st_out[13]_INST_0_i_7 
       (.I0(\st_out[13]_INST_0_i_13_n_0 ),
        .I1(nb_cid[14]),
        .I2(\st_out[13]_INST_0_i_14_n_0 ),
        .O(\st_out[13]_INST_0_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'h0BBB)) 
    \st_out[13]_INST_0_i_8 
       (.I0(\st_out[13]_INST_0_i_15_n_0 ),
        .I1(e_grown[0]),
        .I2(\st_out[13]_INST_0_i_16_n_0 ),
        .I3(e_grown[1]),
        .O(\st_out[13]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h4000000000000000)) 
    \st_out[13]_INST_0_i_9 
       (.I0(st_in[1]),
        .I1(nb_cid[10]),
        .I2(nb_cid[13]),
        .I3(nb_cid[11]),
        .I4(nb_cid[12]),
        .I5(nb_cid[14]),
        .O(\st_out[13]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h888888B8B8B8B8B8)) 
    \st_out[14]_INST_0 
       (.I0(st_in[14]),
        .I1(\st_out[14]_INST_0_i_1_n_0 ),
        .I2(st_in[6]),
        .I3(\st_out[14]_INST_0_i_2_n_0 ),
        .I4(\st_out[14]_INST_0_i_3_n_0 ),
        .I5(\st_out[14]_INST_0_i_4_n_0 ),
        .O(st_out[14]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT5 #(
    .INIT(32'hF44FFFFF)) 
    \st_out[14]_INST_0_i_1 
       (.I0(m_pass[0]),
        .I1(m_pass[1]),
        .I2(stage[1]),
        .I3(stage[2]),
        .I4(stage[0]),
        .O(\st_out[14]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h80000000FFFFFFFF)) 
    \st_out[14]_INST_0_i_10 
       (.I0(nb_cid[15]),
        .I1(nb_cid[16]),
        .I2(nb_cid[18]),
        .I3(nb_cid[17]),
        .I4(nb_cid[19]),
        .I5(\st_out[13]_INST_0_i_6_n_0 ),
        .O(\st_out[14]_INST_0_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hF444)) 
    \st_out[14]_INST_0_i_11 
       (.I0(\st_out[12]_INST_0_i_7_n_0 ),
        .I1(nb_cid[18]),
        .I2(\st_out[11]_INST_0_i_10_n_0 ),
        .I3(nb_cid[17]),
        .O(\st_out[14]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEEEE0EEE00000)) 
    \st_out[14]_INST_0_i_12 
       (.I0(\st_out[11]_INST_0_i_10_n_0 ),
        .I1(nb_cid[17]),
        .I2(\st_out[9]_INST_0_i_6_n_0 ),
        .I3(nb_cid[15]),
        .I4(nb_cid[16]),
        .I5(\st_out[10]_INST_0_i_6_n_0 ),
        .O(\st_out[14]_INST_0_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \st_out[14]_INST_0_i_13 
       (.I0(\st_out[12]_INST_0_i_7_n_0 ),
        .I1(nb_cid[18]),
        .O(\st_out[14]_INST_0_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \st_out[14]_INST_0_i_14 
       (.I0(\st_out[14]_INST_0_i_17_n_0 ),
        .I1(\st_out[14]_INST_0_i_16_n_0 ),
        .O(\st_out[14]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hF100F1F1FFFFFFFF)) 
    \st_out[14]_INST_0_i_15 
       (.I0(\st_out[14]_INST_0_i_18_n_0 ),
        .I1(\st_out[14]_INST_0_i_19_n_0 ),
        .I2(\st_out[14]_INST_0_i_20_n_0 ),
        .I3(nb_cid[4]),
        .I4(st_in[13]),
        .I5(e_grown[0]),
        .O(\st_out[14]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA000088A8)) 
    \st_out[14]_INST_0_i_16 
       (.I0(\st_out[13]_INST_0_i_14_n_0 ),
        .I1(\st_out[14]_INST_0_i_21_n_0 ),
        .I2(\st_out[14]_INST_0_i_22_n_0 ),
        .I3(\st_out[14]_INST_0_i_23_n_0 ),
        .I4(\st_out[14]_INST_0_i_24_n_0 ),
        .I5(\st_out[14]_INST_0_i_25_n_0 ),
        .O(\st_out[14]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000F1F1F1)) 
    \st_out[14]_INST_0_i_17 
       (.I0(\st_out[14]_INST_0_i_26_n_0 ),
        .I1(\st_out[14]_INST_0_i_27_n_0 ),
        .I2(\st_out[14]_INST_0_i_28_n_0 ),
        .I3(\st_out[14]_INST_0_i_29_n_0 ),
        .I4(nb_cid[9]),
        .I5(\st_out[14]_INST_0_i_30_n_0 ),
        .O(\st_out[14]_INST_0_i_17_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    \st_out[14]_INST_0_i_18 
       (.I0(nb_cid[3]),
        .I1(st_in[12]),
        .I2(nb_cid[2]),
        .I3(st_in[11]),
        .O(\st_out[14]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h2202FF0F00002202)) 
    \st_out[14]_INST_0_i_19 
       (.I0(st_in[9]),
        .I1(nb_cid[0]),
        .I2(nb_cid[2]),
        .I3(st_in[11]),
        .I4(nb_cid[1]),
        .I5(st_in[10]),
        .O(\st_out[14]_INST_0_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \st_out[14]_INST_0_i_2 
       (.I0(st_in[13]),
        .I1(st_in[11]),
        .I2(st_in[10]),
        .I3(st_in[9]),
        .I4(st_in[12]),
        .I5(st_in[5]),
        .O(\st_out[14]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    \st_out[14]_INST_0_i_20 
       (.I0(st_in[12]),
        .I1(nb_cid[3]),
        .I2(st_in[13]),
        .I3(nb_cid[4]),
        .O(\st_out[14]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h11111111F111F1FF)) 
    \st_out[14]_INST_0_i_21 
       (.I0(\st_out[12]_INST_0_i_12_n_0 ),
        .I1(nb_cid[13]),
        .I2(nb_cid[7]),
        .I3(\st_out[14]_INST_0_i_17_n_0 ),
        .I4(\st_out[14]_INST_0_i_31_n_0 ),
        .I5(nb_cid[12]),
        .O(\st_out[14]_INST_0_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h11111111F111F1FF)) 
    \st_out[14]_INST_0_i_22 
       (.I0(\st_out[14]_INST_0_i_32_n_0 ),
        .I1(nb_cid[11]),
        .I2(nb_cid[5]),
        .I3(\st_out[14]_INST_0_i_17_n_0 ),
        .I4(\st_out[14]_INST_0_i_33_n_0 ),
        .I5(nb_cid[10]),
        .O(\st_out[14]_INST_0_i_22_n_0 ));
  LUT6 #(
    .INIT(64'h8F888FFF88888888)) 
    \st_out[14]_INST_0_i_23 
       (.I0(nb_cid[11]),
        .I1(\st_out[14]_INST_0_i_32_n_0 ),
        .I2(nb_cid[7]),
        .I3(\st_out[14]_INST_0_i_17_n_0 ),
        .I4(\st_out[14]_INST_0_i_34_n_0 ),
        .I5(nb_cid[12]),
        .O(\st_out[14]_INST_0_i_23_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \st_out[14]_INST_0_i_24 
       (.I0(nb_cid[14]),
        .I1(\st_out[13]_INST_0_i_13_n_0 ),
        .I2(nb_cid[13]),
        .I3(\st_out[12]_INST_0_i_12_n_0 ),
        .O(\st_out[14]_INST_0_i_24_n_0 ));
  LUT6 #(
    .INIT(64'h5100510000005100)) 
    \st_out[14]_INST_0_i_25 
       (.I0(nb_cid[14]),
        .I1(\st_out[13]_INST_0_i_18_n_0 ),
        .I2(nb_cid[9]),
        .I3(st_in[13]),
        .I4(e_grown[0]),
        .I5(nb_cid[4]),
        .O(\st_out[14]_INST_0_i_25_n_0 ));
  LUT6 #(
    .INIT(64'h4F444FFF44444444)) 
    \st_out[14]_INST_0_i_26 
       (.I0(\st_out[12]_INST_0_i_18_n_0 ),
        .I1(nb_cid[8]),
        .I2(st_in[11]),
        .I3(\st_out[14]_INST_0_i_15_n_0 ),
        .I4(nb_cid[2]),
        .I5(nb_cid[7]),
        .O(\st_out[14]_INST_0_i_26_n_0 ));
  LUT6 #(
    .INIT(64'h00000000888EEE8E)) 
    \st_out[14]_INST_0_i_27 
       (.I0(\st_out[14]_INST_0_i_35_n_0 ),
        .I1(nb_cid[6]),
        .I2(nb_cid[1]),
        .I3(\st_out[14]_INST_0_i_15_n_0 ),
        .I4(st_in[10]),
        .I5(\st_out[14]_INST_0_i_36_n_0 ),
        .O(\st_out[14]_INST_0_i_27_n_0 ));
  LUT6 #(
    .INIT(64'h00A2FFFF00A200A2)) 
    \st_out[14]_INST_0_i_28 
       (.I0(st_in[13]),
        .I1(e_grown[0]),
        .I2(nb_cid[4]),
        .I3(nb_cid[9]),
        .I4(nb_cid[8]),
        .I5(\st_out[12]_INST_0_i_18_n_0 ),
        .O(\st_out[14]_INST_0_i_28_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'h5D)) 
    \st_out[14]_INST_0_i_29 
       (.I0(st_in[13]),
        .I1(e_grown[0]),
        .I2(nb_cid[4]),
        .O(\st_out[14]_INST_0_i_29_n_0 ));
  LUT6 #(
    .INIT(64'h4444404444444444)) 
    \st_out[14]_INST_0_i_3 
       (.I0(\st_out[10]_INST_0_i_1_n_0 ),
        .I1(\st_out[14]_INST_0_i_5_n_0 ),
        .I2(\st_out[13]_INST_0_i_4_n_0 ),
        .I3(st_in[5]),
        .I4(\st_out[13]_INST_0_i_3_n_0 ),
        .I5(\st_out[14]_INST_0_i_6_n_0 ),
        .O(\st_out[14]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h80000000FFFFFFFF)) 
    \st_out[14]_INST_0_i_30 
       (.I0(nb_cid[8]),
        .I1(nb_cid[6]),
        .I2(nb_cid[5]),
        .I3(nb_cid[9]),
        .I4(nb_cid[7]),
        .I5(\st_out[13]_INST_0_i_18_n_0 ),
        .O(\st_out[14]_INST_0_i_30_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'h47)) 
    \st_out[14]_INST_0_i_31 
       (.I0(st_in[11]),
        .I1(\st_out[14]_INST_0_i_15_n_0 ),
        .I2(nb_cid[2]),
        .O(\st_out[14]_INST_0_i_31_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFF5D00000051)) 
    \st_out[14]_INST_0_i_32 
       (.I0(nb_cid[6]),
        .I1(\st_out[12]_INST_0_i_15_n_0 ),
        .I2(\st_out[14]_INST_0_i_28_n_0 ),
        .I3(\st_out[12]_INST_0_i_16_n_0 ),
        .I4(\st_out[14]_INST_0_i_30_n_0 ),
        .I5(\st_out[10]_INST_0_i_7_n_0 ),
        .O(\st_out[14]_INST_0_i_32_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'h47)) 
    \st_out[14]_INST_0_i_33 
       (.I0(st_in[9]),
        .I1(\st_out[14]_INST_0_i_15_n_0 ),
        .I2(nb_cid[0]),
        .O(\st_out[14]_INST_0_i_33_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \st_out[14]_INST_0_i_34 
       (.I0(st_in[11]),
        .I1(\st_out[14]_INST_0_i_15_n_0 ),
        .I2(nb_cid[2]),
        .O(\st_out[14]_INST_0_i_34_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'hABFB)) 
    \st_out[14]_INST_0_i_35 
       (.I0(nb_cid[5]),
        .I1(nb_cid[0]),
        .I2(\st_out[14]_INST_0_i_15_n_0 ),
        .I3(st_in[9]),
        .O(\st_out[14]_INST_0_i_35_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT4 #(
    .INIT(16'h5404)) 
    \st_out[14]_INST_0_i_36 
       (.I0(nb_cid[7]),
        .I1(nb_cid[2]),
        .I2(\st_out[14]_INST_0_i_15_n_0 ),
        .I3(st_in[11]),
        .O(\st_out[14]_INST_0_i_36_n_0 ));
  LUT6 #(
    .INIT(64'h000000F3515100F3)) 
    \st_out[14]_INST_0_i_4 
       (.I0(st_in[3]),
        .I1(\st_out[14]_INST_0_i_7_n_0 ),
        .I2(\st_out[14]_INST_0_i_8_n_0 ),
        .I3(\st_out[14]_INST_0_i_9_n_0 ),
        .I4(\st_out[10]_INST_0_i_1_n_0 ),
        .I5(st_in[4]),
        .O(\st_out[14]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAAFEFFFFAAAAAAFE)) 
    \st_out[14]_INST_0_i_5 
       (.I0(\st_out[14]_INST_0_i_10_n_0 ),
        .I1(\st_out[14]_INST_0_i_11_n_0 ),
        .I2(\st_out[14]_INST_0_i_12_n_0 ),
        .I3(\st_out[14]_INST_0_i_13_n_0 ),
        .I4(\st_out[13]_INST_0_i_7_n_0 ),
        .I5(nb_cid[19]),
        .O(\st_out[14]_INST_0_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \st_out[14]_INST_0_i_6 
       (.I0(\st_out[14]_INST_0_i_14_n_0 ),
        .I1(\st_out[14]_INST_0_i_15_n_0 ),
        .O(\st_out[14]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h2AAAAAAAAAAAAAAA)) 
    \st_out[14]_INST_0_i_7 
       (.I0(\st_out[14]_INST_0_i_5_n_0 ),
        .I1(st_in[13]),
        .I2(st_in[11]),
        .I3(st_in[10]),
        .I4(st_in[9]),
        .I5(st_in[12]),
        .O(\st_out[14]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h00FF00FB00FF0000)) 
    \st_out[14]_INST_0_i_8 
       (.I0(\st_out[13]_INST_0_i_4_n_0 ),
        .I1(st_in[3]),
        .I2(\st_out[13]_INST_0_i_3_n_0 ),
        .I3(\st_out[14]_INST_0_i_16_n_0 ),
        .I4(\st_out[14]_INST_0_i_17_n_0 ),
        .I5(\st_out[14]_INST_0_i_15_n_0 ),
        .O(\st_out[14]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h00002000AAAAAAAA)) 
    \st_out[14]_INST_0_i_9 
       (.I0(\st_out[14]_INST_0_i_5_n_0 ),
        .I1(\st_out[13]_INST_0_i_4_n_0 ),
        .I2(st_in[4]),
        .I3(\st_out[14]_INST_0_i_15_n_0 ),
        .I4(\st_out[13]_INST_0_i_3_n_0 ),
        .I5(\st_out[14]_INST_0_i_14_n_0 ),
        .O(\st_out[14]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFF0F0FF04400000)) 
    \st_out[1]_INST_0 
       (.I0(\st_out[9]_INST_0_i_3_n_0 ),
        .I1(\st_out[10]_INST_0_i_1_n_0 ),
        .I2(stage[1]),
        .I3(stage[2]),
        .I4(stage[0]),
        .I5(st_in[1]),
        .O(st_out[1]));
  LUT5 #(
    .INIT(32'hFEAAAAAA)) 
    \st_out[2]_INST_0 
       (.I0(\st_out[2]_INST_0_i_1_n_0 ),
        .I1(\st_out[2]_INST_0_i_2_n_0 ),
        .I2(st_in[2]),
        .I3(\st_out[12]_INST_0_i_5_n_0 ),
        .I4(\st_out[2]_INST_0_i_3_n_0 ),
        .O(st_out[2]));
  LUT6 #(
    .INIT(64'hD5D5D5D510000000)) 
    \st_out[2]_INST_0_i_1 
       (.I0(stage[0]),
        .I1(stage[2]),
        .I2(stage[1]),
        .I3(st_in[8]),
        .I4(st_in[7]),
        .I5(st_in[2]),
        .O(\st_out[2]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'h0B)) 
    \st_out[2]_INST_0_i_2 
       (.I0(m_pass[0]),
        .I1(m_pass[1]),
        .I2(\st_out[10]_INST_0_i_1_n_0 ),
        .O(\st_out[2]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0040FFFFFFFFFFFF)) 
    \st_out[2]_INST_0_i_3 
       (.I0(\st_out[13]_INST_0_i_10_n_0 ),
        .I1(\st_out[13]_INST_0_i_6_n_0 ),
        .I2(nb_grown[3]),
        .I3(\st_out[2]_INST_0_i_4_n_0 ),
        .I4(\st_out[2]_INST_0_i_5_n_0 ),
        .I5(\st_out[2]_INST_0_i_2_n_0 ),
        .O(\st_out[2]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    \st_out[2]_INST_0_i_4 
       (.I0(stage[0]),
        .I1(stage[2]),
        .I2(stage[1]),
        .O(\st_out[2]_INST_0_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hAA8AAAAA)) 
    \st_out[2]_INST_0_i_5 
       (.I0(\st_out[2]_INST_0_i_6_n_0 ),
        .I1(\st_out[13]_INST_0_i_9_n_0 ),
        .I2(nb_grown[2]),
        .I3(\st_out[2]_INST_0_i_4_n_0 ),
        .I4(\st_out[13]_INST_0_i_14_n_0 ),
        .O(\st_out[2]_INST_0_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hAA8AAAAA)) 
    \st_out[2]_INST_0_i_6 
       (.I0(\st_out[2]_INST_0_i_7_n_0 ),
        .I1(\st_out[13]_INST_0_i_16_n_0 ),
        .I2(nb_grown[1]),
        .I3(\st_out[2]_INST_0_i_4_n_0 ),
        .I4(\st_out[13]_INST_0_i_18_n_0 ),
        .O(\st_out[2]_INST_0_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT5 #(
    .INIT(32'h45555555)) 
    \st_out[2]_INST_0_i_7 
       (.I0(st_in[2]),
        .I1(\st_out[2]_INST_0_i_4_n_0 ),
        .I2(nb_grown[0]),
        .I3(e_grown[0]),
        .I4(\st_out[13]_INST_0_i_15_n_0 ),
        .O(\st_out[2]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFF4444444)) 
    \st_out[3]_INST_0 
       (.I0(\st_out[3]_INST_0_i_1_n_0 ),
        .I1(\st_out[12]_INST_0_i_5_n_0 ),
        .I2(\st_out[7]_INST_0_i_2_n_0 ),
        .I3(ab_ptr[0]),
        .I4(nb_valid[3]),
        .I5(\st_out[3]_INST_0_i_2_n_0 ),
        .O(st_out[3]));
  LUT6 #(
    .INIT(64'h0000D0DDFFFFDFDD)) 
    \st_out[3]_INST_0_i_1 
       (.I0(\st_out[14]_INST_0_i_5_n_0 ),
        .I1(\st_out[14]_INST_0_i_8_n_0 ),
        .I2(m_pass[0]),
        .I3(m_pass[1]),
        .I4(\st_out[10]_INST_0_i_1_n_0 ),
        .I5(st_in[3]),
        .O(\st_out[3]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8080A2AA8282A2AA)) 
    \st_out[3]_INST_0_i_2 
       (.I0(st_in[3]),
        .I1(stage[1]),
        .I2(stage[2]),
        .I3(\st_out[3]_INST_0_i_3_n_0 ),
        .I4(stage[0]),
        .I5(nb_valid[3]),
        .O(\st_out[3]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \st_out[3]_INST_0_i_3 
       (.I0(st_in[5]),
        .I1(st_in[3]),
        .I2(p_is_bot),
        .I3(st_in[4]),
        .O(\st_out[3]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'hFFFF0440)) 
    \st_out[4]_INST_0 
       (.I0(\st_out[4]_INST_0_i_1_n_0 ),
        .I1(stage[0]),
        .I2(stage[2]),
        .I3(stage[1]),
        .I4(\st_out[4]_INST_0_i_2_n_0 ),
        .O(st_out[4]));
  LUT6 #(
    .INIT(64'h0000D0DDFFFFDFDD)) 
    \st_out[4]_INST_0_i_1 
       (.I0(\st_out[14]_INST_0_i_5_n_0 ),
        .I1(\st_out[4]_INST_0_i_3_n_0 ),
        .I2(m_pass[0]),
        .I3(m_pass[1]),
        .I4(\st_out[10]_INST_0_i_1_n_0 ),
        .I5(st_in[4]),
        .O(\st_out[4]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hDFC05500)) 
    \st_out[4]_INST_0_i_2 
       (.I0(\st_out[4]_INST_0_i_4_n_0 ),
        .I1(ab_ptr[1]),
        .I2(nb_valid[3]),
        .I3(st_in[4]),
        .I4(\st_out[7]_INST_0_i_2_n_0 ),
        .O(\st_out[4]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'hAAAA8AAA)) 
    \st_out[4]_INST_0_i_3 
       (.I0(\st_out[14]_INST_0_i_14_n_0 ),
        .I1(\st_out[13]_INST_0_i_3_n_0 ),
        .I2(\st_out[14]_INST_0_i_15_n_0 ),
        .I3(st_in[4]),
        .I4(\st_out[13]_INST_0_i_4_n_0 ),
        .O(\st_out[4]_INST_0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h7720)) 
    \st_out[4]_INST_0_i_4 
       (.I0(stage[1]),
        .I1(stage[2]),
        .I2(\st_out[3]_INST_0_i_3_n_0 ),
        .I3(stage[0]),
        .O(\st_out[4]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFC0CD0000)) 
    \st_out[5]_INST_0 
       (.I0(\st_out[10]_INST_0_i_1_n_0 ),
        .I1(st_in[5]),
        .I2(\st_out[9]_INST_0_i_3_n_0 ),
        .I3(\st_out[14]_INST_0_i_3_n_0 ),
        .I4(\st_out[12]_INST_0_i_5_n_0 ),
        .I5(\st_out[5]_INST_0_i_1_n_0 ),
        .O(st_out[5]));
  LUT6 #(
    .INIT(64'hF00000B8F0F0F0F0)) 
    \st_out[5]_INST_0_i_1 
       (.I0(ab_ptr[2]),
        .I1(nb_valid[3]),
        .I2(st_in[5]),
        .I3(stage[2]),
        .I4(stage[1]),
        .I5(stage[0]),
        .O(\st_out[5]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFED110000)) 
    \st_out[6]_INST_0 
       (.I0(\st_out[6]_INST_0_i_1_n_0 ),
        .I1(\st_out[6]_INST_0_i_2_n_0 ),
        .I2(\st_out[6]_INST_0_i_3_n_0 ),
        .I3(st_in[6]),
        .I4(\st_out[12]_INST_0_i_5_n_0 ),
        .I5(\st_out[6]_INST_0_i_4_n_0 ),
        .O(st_out[6]));
  LUT6 #(
    .INIT(64'h9666699969996999)) 
    \st_out[6]_INST_0_i_1 
       (.I0(nb_push[1]),
        .I1(nb_push[0]),
        .I2(nb_valid[2]),
        .I3(nb_push[2]),
        .I4(nb_valid[3]),
        .I5(nb_push[3]),
        .O(\st_out[6]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \st_out[6]_INST_0_i_2 
       (.I0(m_pass[0]),
        .I1(m_pass[1]),
        .O(\st_out[6]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h2F2E000000000000)) 
    \st_out[6]_INST_0_i_3 
       (.I0(\st_out[14]_INST_0_i_3_n_0 ),
        .I1(\st_out[9]_INST_0_i_3_n_0 ),
        .I2(st_in[5]),
        .I3(\st_out[10]_INST_0_i_1_n_0 ),
        .I4(\st_out[4]_INST_0_i_1_n_0 ),
        .I5(\st_out[3]_INST_0_i_1_n_0 ),
        .O(\st_out[6]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'hF33B0008)) 
    \st_out[6]_INST_0_i_4 
       (.I0(\st_out[6]_INST_0_i_5_n_0 ),
        .I1(stage[0]),
        .I2(stage[2]),
        .I3(stage[1]),
        .I4(st_in[6]),
        .O(\st_out[6]_INST_0_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \st_out[6]_INST_0_i_5 
       (.I0(syn_bit),
        .I1(p_id[2]),
        .I2(ab_defect),
        .I3(nb_valid[3]),
        .I4(st_in[6]),
        .O(\st_out[6]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFEEEAAAEA)) 
    \st_out[7]_INST_0 
       (.I0(\st_out[7]_INST_0_i_1_n_0 ),
        .I1(\st_out[7]_INST_0_i_2_n_0 ),
        .I2(st_in[7]),
        .I3(nb_valid[3]),
        .I4(ab_whole),
        .I5(\st_out[7]_INST_0_i_3_n_0 ),
        .O(st_out[7]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'hCCC0C04C)) 
    \st_out[7]_INST_0_i_1 
       (.I0(st_in[8]),
        .I1(st_in[7]),
        .I2(stage[1]),
        .I3(stage[2]),
        .I4(stage[0]),
        .O(\st_out[7]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \st_out[7]_INST_0_i_2 
       (.I0(stage[2]),
        .I1(stage[1]),
        .I2(stage[0]),
        .O(\st_out[7]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h1010101000001000)) 
    \st_out[7]_INST_0_i_3 
       (.I0(stage[0]),
        .I1(stage[1]),
        .I2(stage[2]),
        .I3(st_in[8]),
        .I4(st_in[2]),
        .I5(st_in[7]),
        .O(\st_out[7]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF08FB0000)) 
    \st_out[8]_INST_0 
       (.I0(st_in[8]),
        .I1(m_pass[0]),
        .I2(m_pass[1]),
        .I3(\st_out[8]_INST_0_i_1_n_0 ),
        .I4(\st_out[12]_INST_0_i_5_n_0 ),
        .I5(\st_out[8]_INST_0_i_2_n_0 ),
        .O(st_out[8]));
  LUT6 #(
    .INIT(64'h7FFF4F0F70F04000)) 
    \st_out[8]_INST_0_i_1 
       (.I0(st_in[6]),
        .I1(\st_out[8]_INST_0_i_3_n_0 ),
        .I2(\st_out[4]_INST_0_i_1_n_0 ),
        .I3(\st_out[3]_INST_0_i_1_n_0 ),
        .I4(\st_out[8]_INST_0_i_4_n_0 ),
        .I5(\st_out[8]_INST_0_i_5_n_0 ),
        .O(\st_out[8]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7370507050505050)) 
    \st_out[8]_INST_0_i_2 
       (.I0(\st_out[12]_INST_0_i_9_n_0 ),
        .I1(p_id[2]),
        .I2(st_in[8]),
        .I3(nb_valid[3]),
        .I4(ab_active),
        .I5(\st_out[7]_INST_0_i_2_n_0 ),
        .O(\st_out[8]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h5504550455F75504)) 
    \st_out[8]_INST_0_i_3 
       (.I0(st_in[5]),
        .I1(m_pass[1]),
        .I2(m_pass[0]),
        .I3(\st_out[10]_INST_0_i_1_n_0 ),
        .I4(\st_out[14]_INST_0_i_5_n_0 ),
        .I5(\st_out[8]_INST_0_i_6_n_0 ),
        .O(\st_out[8]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h510051555DFF5D55)) 
    \st_out[8]_INST_0_i_4 
       (.I0(nb_active[3]),
        .I1(\st_out[14]_INST_0_i_5_n_0 ),
        .I2(\st_out[14]_INST_0_i_8_n_0 ),
        .I3(\st_out[2]_INST_0_i_2_n_0 ),
        .I4(st_in[3]),
        .I5(nb_active[0]),
        .O(\st_out[8]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h510051555DFF5D55)) 
    \st_out[8]_INST_0_i_5 
       (.I0(nb_active[1]),
        .I1(\st_out[14]_INST_0_i_5_n_0 ),
        .I2(\st_out[14]_INST_0_i_8_n_0 ),
        .I3(\st_out[2]_INST_0_i_2_n_0 ),
        .I4(st_in[3]),
        .I5(nb_active[2]),
        .O(\st_out[8]_INST_0_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'h0020)) 
    \st_out[8]_INST_0_i_6 
       (.I0(\st_out[14]_INST_0_i_6_n_0 ),
        .I1(\st_out[13]_INST_0_i_3_n_0 ),
        .I2(st_in[5]),
        .I3(\st_out[13]_INST_0_i_4_n_0 ),
        .O(\st_out[8]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFEEEAEAEA)) 
    \st_out[9]_INST_0 
       (.I0(\st_out[9]_INST_0_i_1_n_0 ),
        .I1(st_in[9]),
        .I2(\st_out[9]_INST_0_i_2_n_0 ),
        .I3(\st_out[12]_INST_0_i_5_n_0 ),
        .I4(\st_out[9]_INST_0_i_3_n_0 ),
        .I5(\st_out[9]_INST_0_i_4_n_0 ),
        .O(st_out[9]));
  LUT6 #(
    .INIT(64'h1013333310130000)) 
    \st_out[9]_INST_0_i_1 
       (.I0(\st_out[9]_INST_0_i_5_n_0 ),
        .I1(\st_out[11]_INST_0_i_6_n_0 ),
        .I2(\st_out[14]_INST_0_i_6_n_0 ),
        .I3(\st_out[9]_INST_0_i_6_n_0 ),
        .I4(\st_out[14]_INST_0_i_5_n_0 ),
        .I5(nb_cid[15]),
        .O(\st_out[9]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h8B)) 
    \st_out[9]_INST_0_i_2 
       (.I0(stage[2]),
        .I1(stage[1]),
        .I2(stage[0]),
        .O(\st_out[9]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \st_out[9]_INST_0_i_3 
       (.I0(m_pass[1]),
        .I1(m_pass[0]),
        .O(\st_out[9]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFEFFFCCCEEEECCCC)) 
    \st_out[9]_INST_0_i_4 
       (.I0(\st_out[11]_INST_0_i_7_n_0 ),
        .I1(\st_out[11]_INST_0_i_3_n_0 ),
        .I2(ab_cid[0]),
        .I3(nb_valid[3]),
        .I4(st_in[9]),
        .I5(\st_out[7]_INST_0_i_2_n_0 ),
        .O(\st_out[9]_INST_0_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \st_out[9]_INST_0_i_5 
       (.I0(st_in[9]),
        .I1(\st_out[13]_INST_0_i_4_n_0 ),
        .I2(\st_out[13]_INST_0_i_3_n_0 ),
        .O(\st_out[9]_INST_0_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'h74)) 
    \st_out[9]_INST_0_i_6 
       (.I0(nb_cid[10]),
        .I1(\st_out[14]_INST_0_i_16_n_0 ),
        .I2(\st_out[9]_INST_0_i_7_n_0 ),
        .O(\st_out[9]_INST_0_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'h47444777)) 
    \st_out[9]_INST_0_i_7 
       (.I0(nb_cid[5]),
        .I1(\st_out[14]_INST_0_i_17_n_0 ),
        .I2(st_in[9]),
        .I3(\st_out[14]_INST_0_i_15_n_0 ),
        .I4(nb_cid[0]),
        .O(\st_out[9]_INST_0_i_7_n_0 ));
endmodule

(* HAS_ABOVE = "0" *) (* ID = "0" *) (* IS_BND = "0" *) 
(* IS_BOT = "0" *) (* IS_TOP = "0" *) (* OFF_ACT = "8" *) 
(* OFF_BUSY = "0" *) (* OFF_CID = "9" *) (* OFF_DEF = "6" *) 
(* OFF_GRW = "2" *) (* OFF_PB = "14" *) (* OFF_PTR = "3" *) 
(* OFF_UNR = "1" *) (* OFF_WHL = "7" *) (* ONE_ONE = "0" *) 
(* ORIG_REF_NAME = "snowflake_pe" *) (* STW = "15" *) (* ST_DROP = "3'b001" *) 
(* ST_GH = "3'b100" *) (* ST_GW = "3'b010" *) (* ST_IDLE = "3'b000" *) 
(* ST_MH = "3'b101" *) (* ST_MW = "3'b011" *) (* SYN_IDX = "-1" *) 
(* ZZZ_ANCHOR = "0" *) 
module snowflake_pe__3
   (clk,
    reset,
    stage,
    syn_bit,
    ab_cid,
    ab_active,
    ab_whole,
    ab_defect,
    ab_ptr,
    e_grown,
    nb_valid,
    nb_cid,
    nb_active,
    nb_grown,
    nb_push,
    m_pass,
    st_in,
    st_out,
    o_busy_c,
    o_pulse,
    o_push,
    p_id,
    p_has_above,
    p_is_bnd,
    p_is_top,
    p_is_bot,
    p_is_syn,
    zzz_never_used);
  input clk;
  input reset;
  input [2:0]stage;
  input syn_bit;
  input [4:0]ab_cid;
  input ab_active;
  input ab_whole;
  input ab_defect;
  input [2:0]ab_ptr;
  input [3:0]e_grown;
  input [3:0]nb_valid;
  input [19:0]nb_cid;
  input [3:0]nb_active;
  input [3:0]nb_grown;
  input [3:0]nb_push;
  input [1:0]m_pass;
  input [14:0]st_in;
  output [14:0]st_out;
  output o_busy_c;
  output o_pulse;
  output [3:0]o_push;
  input [4:0]p_id;
  input p_has_above;
  input p_is_bnd;
  input p_is_top;
  input p_is_bot;
  input p_is_syn;
  input zzz_never_used;

  wire \<const0> ;
  wire ab_active;
  wire [4:0]ab_cid;
  wire ab_defect;
  wire [2:0]ab_ptr;
  wire ab_whole;
  wire [3:0]e_grown;
  wire [1:0]m_pass;
  wire [3:0]nb_active;
  wire [19:0]nb_cid;
  wire [3:0]nb_grown;
  wire [3:0]nb_push;
  wire [3:0]nb_valid;
  wire [4:0]p_id;
  wire p_is_bot;
  wire [14:0]st_in;
  wire [14:0]st_out;
  wire \st_out[0]_INST_0_i_10_n_0 ;
  wire \st_out[0]_INST_0_i_11_n_0 ;
  wire \st_out[0]_INST_0_i_12_n_0 ;
  wire \st_out[0]_INST_0_i_13_n_0 ;
  wire \st_out[0]_INST_0_i_14_n_0 ;
  wire \st_out[0]_INST_0_i_15_n_0 ;
  wire \st_out[0]_INST_0_i_16_n_0 ;
  wire \st_out[0]_INST_0_i_1_n_0 ;
  wire \st_out[0]_INST_0_i_2_n_0 ;
  wire \st_out[0]_INST_0_i_3_n_0 ;
  wire \st_out[0]_INST_0_i_4_n_0 ;
  wire \st_out[0]_INST_0_i_5_n_0 ;
  wire \st_out[0]_INST_0_i_6_n_0 ;
  wire \st_out[0]_INST_0_i_7_n_0 ;
  wire \st_out[0]_INST_0_i_8_n_0 ;
  wire \st_out[0]_INST_0_i_9_n_0 ;
  wire \st_out[10]_INST_0_i_1_n_0 ;
  wire \st_out[10]_INST_0_i_2_n_0 ;
  wire \st_out[10]_INST_0_i_3_n_0 ;
  wire \st_out[10]_INST_0_i_4_n_0 ;
  wire \st_out[10]_INST_0_i_5_n_0 ;
  wire \st_out[10]_INST_0_i_6_n_0 ;
  wire \st_out[10]_INST_0_i_7_n_0 ;
  wire \st_out[11]_INST_0_i_1_n_0 ;
  wire \st_out[11]_INST_0_i_2_n_0 ;
  wire \st_out[11]_INST_0_i_3_n_0 ;
  wire \st_out[11]_INST_0_i_4_n_0 ;
  wire \st_out[11]_INST_0_i_5_n_0 ;
  wire \st_out[11]_INST_0_i_6_n_0 ;
  wire \st_out[11]_INST_0_i_7_n_0 ;
  wire \st_out[11]_INST_0_i_8_n_0 ;
  wire \st_out[11]_INST_0_i_9_n_0 ;
  wire \st_out[12]_INST_0_i_10_n_0 ;
  wire \st_out[12]_INST_0_i_11_n_0 ;
  wire \st_out[12]_INST_0_i_12_n_0 ;
  wire \st_out[12]_INST_0_i_13_n_0 ;
  wire \st_out[12]_INST_0_i_14_n_0 ;
  wire \st_out[12]_INST_0_i_15_n_0 ;
  wire \st_out[12]_INST_0_i_16_n_0 ;
  wire \st_out[12]_INST_0_i_17_n_0 ;
  wire \st_out[12]_INST_0_i_18_n_0 ;
  wire \st_out[12]_INST_0_i_19_n_0 ;
  wire \st_out[12]_INST_0_i_1_n_0 ;
  wire \st_out[12]_INST_0_i_20_n_0 ;
  wire \st_out[12]_INST_0_i_2_n_0 ;
  wire \st_out[12]_INST_0_i_3_n_0 ;
  wire \st_out[12]_INST_0_i_4_n_0 ;
  wire \st_out[12]_INST_0_i_5_n_0 ;
  wire \st_out[12]_INST_0_i_6_n_0 ;
  wire \st_out[12]_INST_0_i_7_n_0 ;
  wire \st_out[12]_INST_0_i_8_n_0 ;
  wire \st_out[12]_INST_0_i_9_n_0 ;
  wire \st_out[13]_INST_0_i_10_n_0 ;
  wire \st_out[13]_INST_0_i_11_n_0 ;
  wire \st_out[13]_INST_0_i_12_n_0 ;
  wire \st_out[13]_INST_0_i_13_n_0 ;
  wire \st_out[13]_INST_0_i_14_n_0 ;
  wire \st_out[13]_INST_0_i_15_n_0 ;
  wire \st_out[13]_INST_0_i_16_n_0 ;
  wire \st_out[13]_INST_0_i_17_n_0 ;
  wire \st_out[13]_INST_0_i_1_n_0 ;
  wire \st_out[13]_INST_0_i_2_n_0 ;
  wire \st_out[13]_INST_0_i_3_n_0 ;
  wire \st_out[13]_INST_0_i_4_n_0 ;
  wire \st_out[13]_INST_0_i_5_n_0 ;
  wire \st_out[13]_INST_0_i_6_n_0 ;
  wire \st_out[13]_INST_0_i_7_n_0 ;
  wire \st_out[13]_INST_0_i_8_n_0 ;
  wire \st_out[13]_INST_0_i_9_n_0 ;
  wire \st_out[14]_INST_0_i_10_n_0 ;
  wire \st_out[14]_INST_0_i_11_n_0 ;
  wire \st_out[14]_INST_0_i_12_n_0 ;
  wire \st_out[14]_INST_0_i_13_n_0 ;
  wire \st_out[14]_INST_0_i_14_n_0 ;
  wire \st_out[14]_INST_0_i_15_n_0 ;
  wire \st_out[14]_INST_0_i_16_n_0 ;
  wire \st_out[14]_INST_0_i_17_n_0 ;
  wire \st_out[14]_INST_0_i_18_n_0 ;
  wire \st_out[14]_INST_0_i_19_n_0 ;
  wire \st_out[14]_INST_0_i_1_n_0 ;
  wire \st_out[14]_INST_0_i_20_n_0 ;
  wire \st_out[14]_INST_0_i_21_n_0 ;
  wire \st_out[14]_INST_0_i_22_n_0 ;
  wire \st_out[14]_INST_0_i_23_n_0 ;
  wire \st_out[14]_INST_0_i_24_n_0 ;
  wire \st_out[14]_INST_0_i_2_n_0 ;
  wire \st_out[14]_INST_0_i_3_n_0 ;
  wire \st_out[14]_INST_0_i_4_n_0 ;
  wire \st_out[14]_INST_0_i_5_n_0 ;
  wire \st_out[14]_INST_0_i_6_n_0 ;
  wire \st_out[14]_INST_0_i_7_n_0 ;
  wire \st_out[14]_INST_0_i_8_n_0 ;
  wire \st_out[14]_INST_0_i_9_n_0 ;
  wire \st_out[2]_INST_0_i_10_n_0 ;
  wire \st_out[2]_INST_0_i_1_n_0 ;
  wire \st_out[2]_INST_0_i_2_n_0 ;
  wire \st_out[2]_INST_0_i_3_n_0 ;
  wire \st_out[2]_INST_0_i_4_n_0 ;
  wire \st_out[2]_INST_0_i_5_n_0 ;
  wire \st_out[2]_INST_0_i_6_n_0 ;
  wire \st_out[2]_INST_0_i_7_n_0 ;
  wire \st_out[2]_INST_0_i_8_n_0 ;
  wire \st_out[2]_INST_0_i_9_n_0 ;
  wire \st_out[3]_INST_0_i_1_n_0 ;
  wire \st_out[3]_INST_0_i_2_n_0 ;
  wire \st_out[3]_INST_0_i_3_n_0 ;
  wire \st_out[3]_INST_0_i_4_n_0 ;
  wire \st_out[4]_INST_0_i_1_n_0 ;
  wire \st_out[4]_INST_0_i_2_n_0 ;
  wire \st_out[4]_INST_0_i_3_n_0 ;
  wire \st_out[4]_INST_0_i_4_n_0 ;
  wire \st_out[4]_INST_0_i_5_n_0 ;
  wire \st_out[4]_INST_0_i_6_n_0 ;
  wire \st_out[4]_INST_0_i_7_n_0 ;
  wire \st_out[4]_INST_0_i_8_n_0 ;
  wire \st_out[4]_INST_0_i_9_n_0 ;
  wire \st_out[5]_INST_0_i_1_n_0 ;
  wire \st_out[5]_INST_0_i_2_n_0 ;
  wire \st_out[5]_INST_0_i_3_n_0 ;
  wire \st_out[5]_INST_0_i_4_n_0 ;
  wire \st_out[5]_INST_0_i_5_n_0 ;
  wire \st_out[5]_INST_0_i_6_n_0 ;
  wire \st_out[5]_INST_0_i_7_n_0 ;
  wire \st_out[6]_INST_0_i_1_n_0 ;
  wire \st_out[6]_INST_0_i_2_n_0 ;
  wire \st_out[6]_INST_0_i_3_n_0 ;
  wire \st_out[6]_INST_0_i_4_n_0 ;
  wire \st_out[6]_INST_0_i_5_n_0 ;
  wire \st_out[7]_INST_0_i_1_n_0 ;
  wire \st_out[7]_INST_0_i_2_n_0 ;
  wire \st_out[8]_INST_0_i_1_n_0 ;
  wire \st_out[8]_INST_0_i_2_n_0 ;
  wire \st_out[8]_INST_0_i_3_n_0 ;
  wire \st_out[8]_INST_0_i_4_n_0 ;
  wire \st_out[9]_INST_0_i_1_n_0 ;
  wire \st_out[9]_INST_0_i_2_n_0 ;
  wire \st_out[9]_INST_0_i_3_n_0 ;
  wire \st_out[9]_INST_0_i_4_n_0 ;
  wire \st_out[9]_INST_0_i_5_n_0 ;
  wire \st_out[9]_INST_0_i_6_n_0 ;
  wire \st_out[9]_INST_0_i_7_n_0 ;
  wire \st_out[9]_INST_0_i_8_n_0 ;
  wire \st_out[9]_INST_0_i_9_n_0 ;
  wire [2:0]stage;
  wire syn_bit;

  assign o_busy_c = \<const0> ;
  assign o_pulse = \<const0> ;
  assign o_push[3] = \<const0> ;
  assign o_push[2] = \<const0> ;
  assign o_push[1] = \<const0> ;
  assign o_push[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  LUT6 #(
    .INIT(64'h00000000F6FDF7FC)) 
    \st_out[0]_INST_0 
       (.I0(\st_out[6]_INST_0_i_3_n_0 ),
        .I1(st_in[6]),
        .I2(\st_out[0]_INST_0_i_1_n_0 ),
        .I3(st_in[8]),
        .I4(\st_out[0]_INST_0_i_2_n_0 ),
        .I5(\st_out[0]_INST_0_i_3_n_0 ),
        .O(st_out[0]));
  LUT6 #(
    .INIT(64'hBAFF00FFFFFFBAFF)) 
    \st_out[0]_INST_0_i_1 
       (.I0(\st_out[12]_INST_0_i_2_n_0 ),
        .I1(\st_out[0]_INST_0_i_4_n_0 ),
        .I2(\st_out[0]_INST_0_i_5_n_0 ),
        .I3(\st_out[6]_INST_0_i_1_n_0 ),
        .I4(m_pass[0]),
        .I5(m_pass[1]),
        .O(\st_out[0]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT4 #(
    .INIT(16'hDFFF)) 
    \st_out[0]_INST_0_i_10 
       (.I0(stage[1]),
        .I1(stage[2]),
        .I2(stage[0]),
        .I3(nb_grown[2]),
        .O(\st_out[0]_INST_0_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT5 #(
    .INIT(32'h00800000)) 
    \st_out[0]_INST_0_i_11 
       (.I0(\st_out[2]_INST_0_i_6_n_0 ),
        .I1(nb_grown[3]),
        .I2(stage[0]),
        .I3(stage[2]),
        .I4(stage[1]),
        .O(\st_out[0]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hEEE0EEEE00E00000)) 
    \st_out[0]_INST_0_i_12 
       (.I0(\st_out[0]_INST_0_i_14_n_0 ),
        .I1(st_in[2]),
        .I2(st_in[1]),
        .I3(\st_out[0]_INST_0_i_15_n_0 ),
        .I4(\st_out[0]_INST_0_i_16_n_0 ),
        .I5(\st_out[4]_INST_0_i_7_n_0 ),
        .O(\st_out[0]_INST_0_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT4 #(
    .INIT(16'hDFFF)) 
    \st_out[0]_INST_0_i_13 
       (.I0(stage[1]),
        .I1(stage[2]),
        .I2(stage[0]),
        .I3(nb_grown[1]),
        .O(\st_out[0]_INST_0_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT4 #(
    .INIT(16'hDFFF)) 
    \st_out[0]_INST_0_i_14 
       (.I0(stage[1]),
        .I1(stage[2]),
        .I2(stage[0]),
        .I3(nb_grown[0]),
        .O(\st_out[0]_INST_0_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \st_out[0]_INST_0_i_15 
       (.I0(nb_cid[2]),
        .I1(nb_cid[1]),
        .I2(nb_cid[0]),
        .O(\st_out[0]_INST_0_i_15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \st_out[0]_INST_0_i_16 
       (.I0(nb_cid[3]),
        .I1(nb_cid[4]),
        .I2(nb_cid[2]),
        .I3(nb_cid[1]),
        .O(\st_out[0]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hCFCFAFA0C0C0AFA0)) 
    \st_out[0]_INST_0_i_2 
       (.I0(nb_active[2]),
        .I1(nb_active[1]),
        .I2(\st_out[4]_INST_0_i_1_n_0 ),
        .I3(nb_active[0]),
        .I4(\st_out[3]_INST_0_i_1_n_0 ),
        .I5(nb_active[3]),
        .O(\st_out[0]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h44450000FFFFFFFF)) 
    \st_out[0]_INST_0_i_3 
       (.I0(\st_out[12]_INST_0_i_2_n_0 ),
        .I1(\st_out[0]_INST_0_i_4_n_0 ),
        .I2(\st_out[13]_INST_0_i_8_n_0 ),
        .I3(\st_out[0]_INST_0_i_6_n_0 ),
        .I4(\st_out[6]_INST_0_i_2_n_0 ),
        .I5(\st_out[14]_INST_0_i_1_n_0 ),
        .O(\st_out[0]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00A200AE000000FF)) 
    \st_out[0]_INST_0_i_4 
       (.I0(st_in[1]),
        .I1(nb_cid[17]),
        .I2(\st_out[0]_INST_0_i_7_n_0 ),
        .I3(\st_out[0]_INST_0_i_8_n_0 ),
        .I4(\st_out[12]_INST_0_i_7_n_0 ),
        .I5(\st_out[2]_INST_0_i_7_n_0 ),
        .O(\st_out[0]_INST_0_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \st_out[0]_INST_0_i_5 
       (.I0(\st_out[13]_INST_0_i_8_n_0 ),
        .I1(\st_out[0]_INST_0_i_6_n_0 ),
        .O(\st_out[0]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEEFEEEFEFEFEF)) 
    \st_out[0]_INST_0_i_6 
       (.I0(\st_out[4]_INST_0_i_4_n_0 ),
        .I1(\st_out[0]_INST_0_i_9_n_0 ),
        .I2(\st_out[13]_INST_0_i_13_n_0 ),
        .I3(\st_out[2]_INST_0_i_8_n_0 ),
        .I4(\st_out[0]_INST_0_i_10_n_0 ),
        .I5(\st_out[2]_INST_0_i_9_n_0 ),
        .O(\st_out[0]_INST_0_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \st_out[0]_INST_0_i_7 
       (.I0(nb_cid[15]),
        .I1(nb_cid[16]),
        .O(\st_out[0]_INST_0_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hFB)) 
    \st_out[0]_INST_0_i_8 
       (.I0(\st_out[0]_INST_0_i_6_n_0 ),
        .I1(\st_out[13]_INST_0_i_8_n_0 ),
        .I2(\st_out[0]_INST_0_i_11_n_0 ),
        .O(\st_out[0]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF44F444444444)) 
    \st_out[0]_INST_0_i_9 
       (.I0(\st_out[0]_INST_0_i_12_n_0 ),
        .I1(e_grown[0]),
        .I2(\st_out[2]_INST_0_i_10_n_0 ),
        .I3(\st_out[0]_INST_0_i_13_n_0 ),
        .I4(\st_out[13]_INST_0_i_16_n_0 ),
        .I5(\st_out[13]_INST_0_i_15_n_0 ),
        .O(\st_out[0]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00D0D000)) 
    \st_out[10]_INST_0 
       (.I0(\st_out[10]_INST_0_i_1_n_0 ),
        .I1(\st_out[10]_INST_0_i_2_n_0 ),
        .I2(stage[0]),
        .I3(stage[2]),
        .I4(stage[1]),
        .I5(\st_out[10]_INST_0_i_3_n_0 ),
        .O(st_out[10]));
  LUT5 #(
    .INIT(32'hBBBB333F)) 
    \st_out[10]_INST_0_i_1 
       (.I0(\st_out[10]_INST_0_i_4_n_0 ),
        .I1(\st_out[2]_INST_0_i_2_n_0 ),
        .I2(st_in[10]),
        .I3(\st_out[13]_INST_0_i_6_n_0 ),
        .I4(\st_out[13]_INST_0_i_5_n_0 ),
        .O(\st_out[10]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT5 #(
    .INIT(32'hCACC0A00)) 
    \st_out[10]_INST_0_i_2 
       (.I0(st_in[10]),
        .I1(p_id[1]),
        .I2(m_pass[0]),
        .I3(m_pass[1]),
        .I4(\st_out[12]_INST_0_i_2_n_0 ),
        .O(\st_out[10]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h3FFF2F2233332222)) 
    \st_out[10]_INST_0_i_3 
       (.I0(\st_out[12]_INST_0_i_10_n_0 ),
        .I1(\st_out[11]_INST_0_i_5_n_0 ),
        .I2(\st_out[10]_INST_0_i_5_n_0 ),
        .I3(nb_valid[3]),
        .I4(st_in[10]),
        .I5(\st_out[9]_INST_0_i_3_n_0 ),
        .O(\st_out[10]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h8FCCCCCC)) 
    \st_out[10]_INST_0_i_4 
       (.I0(\st_out[3]_INST_0_i_3_n_0 ),
        .I1(\st_out[10]_INST_0_i_6_n_0 ),
        .I2(nb_cid[16]),
        .I3(\st_out[13]_INST_0_i_8_n_0 ),
        .I4(\st_out[12]_INST_0_i_7_n_0 ),
        .O(\st_out[10]_INST_0_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT5 #(
    .INIT(32'h4CCCCCCC)) 
    \st_out[10]_INST_0_i_5 
       (.I0(ab_cid[4]),
        .I1(ab_cid[1]),
        .I2(ab_cid[2]),
        .I3(ab_cid[3]),
        .I4(ab_cid[0]),
        .O(\st_out[10]_INST_0_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h47444777)) 
    \st_out[10]_INST_0_i_6 
       (.I0(nb_cid[11]),
        .I1(\st_out[14]_INST_0_i_6_n_0 ),
        .I2(nb_cid[6]),
        .I3(\st_out[14]_INST_0_i_7_n_0 ),
        .I4(\st_out[10]_INST_0_i_7_n_0 ),
        .O(\st_out[10]_INST_0_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT4 #(
    .INIT(16'hBA8A)) 
    \st_out[10]_INST_0_i_7 
       (.I0(st_in[10]),
        .I1(\st_out[4]_INST_0_i_7_n_0 ),
        .I2(e_grown[0]),
        .I3(nb_cid[1]),
        .O(\st_out[10]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00D0D000)) 
    \st_out[11]_INST_0 
       (.I0(\st_out[11]_INST_0_i_1_n_0 ),
        .I1(\st_out[11]_INST_0_i_2_n_0 ),
        .I2(stage[0]),
        .I3(stage[2]),
        .I4(stage[1]),
        .I5(\st_out[11]_INST_0_i_3_n_0 ),
        .O(st_out[11]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT5 #(
    .INIT(32'h7777333F)) 
    \st_out[11]_INST_0_i_1 
       (.I0(\st_out[11]_INST_0_i_4_n_0 ),
        .I1(\st_out[2]_INST_0_i_2_n_0 ),
        .I2(st_in[11]),
        .I3(\st_out[13]_INST_0_i_6_n_0 ),
        .I4(\st_out[13]_INST_0_i_5_n_0 ),
        .O(\st_out[11]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT5 #(
    .INIT(32'hEF202020)) 
    \st_out[11]_INST_0_i_2 
       (.I0(st_in[11]),
        .I1(m_pass[0]),
        .I2(m_pass[1]),
        .I3(\st_out[12]_INST_0_i_2_n_0 ),
        .I4(p_id[2]),
        .O(\st_out[11]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h3FFF2F2233332222)) 
    \st_out[11]_INST_0_i_3 
       (.I0(\st_out[12]_INST_0_i_10_n_0 ),
        .I1(\st_out[11]_INST_0_i_5_n_0 ),
        .I2(\st_out[11]_INST_0_i_6_n_0 ),
        .I3(nb_valid[3]),
        .I4(st_in[11]),
        .I5(\st_out[9]_INST_0_i_3_n_0 ),
        .O(\st_out[11]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT4 #(
    .INIT(16'hDF80)) 
    \st_out[11]_INST_0_i_4 
       (.I0(\st_out[12]_INST_0_i_7_n_0 ),
        .I1(nb_cid[17]),
        .I2(\st_out[11]_INST_0_i_7_n_0 ),
        .I3(\st_out[11]_INST_0_i_8_n_0 ),
        .O(\st_out[11]_INST_0_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \st_out[11]_INST_0_i_5 
       (.I0(stage[0]),
        .I1(stage[2]),
        .I2(stage[1]),
        .O(\st_out[11]_INST_0_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT5 #(
    .INIT(32'h7F0000FF)) 
    \st_out[11]_INST_0_i_6 
       (.I0(ab_cid[4]),
        .I1(ab_cid[3]),
        .I2(ab_cid[0]),
        .I3(ab_cid[2]),
        .I4(ab_cid[1]),
        .O(\st_out[11]_INST_0_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT5 #(
    .INIT(32'h2AAAAAAA)) 
    \st_out[11]_INST_0_i_7 
       (.I0(\st_out[13]_INST_0_i_8_n_0 ),
        .I1(nb_cid[17]),
        .I2(nb_cid[19]),
        .I3(nb_cid[18]),
        .I4(nb_cid[16]),
        .O(\st_out[11]_INST_0_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT5 #(
    .INIT(32'hB888B8BB)) 
    \st_out[11]_INST_0_i_8 
       (.I0(nb_cid[12]),
        .I1(\st_out[14]_INST_0_i_6_n_0 ),
        .I2(nb_cid[7]),
        .I3(\st_out[14]_INST_0_i_7_n_0 ),
        .I4(\st_out[11]_INST_0_i_9_n_0 ),
        .O(\st_out[11]_INST_0_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT4 #(
    .INIT(16'h313B)) 
    \st_out[11]_INST_0_i_9 
       (.I0(e_grown[0]),
        .I1(st_in[11]),
        .I2(\st_out[4]_INST_0_i_7_n_0 ),
        .I3(nb_cid[2]),
        .O(\st_out[11]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF45454540)) 
    \st_out[12]_INST_0 
       (.I0(\st_out[12]_INST_0_i_1_n_0 ),
        .I1(nb_valid[3]),
        .I2(\st_out[12]_INST_0_i_2_n_0 ),
        .I3(\st_out[12]_INST_0_i_3_n_0 ),
        .I4(\st_out[12]_INST_0_i_4_n_0 ),
        .I5(\st_out[12]_INST_0_i_5_n_0 ),
        .O(st_out[12]));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT5 #(
    .INIT(32'hF44FFFFF)) 
    \st_out[12]_INST_0_i_1 
       (.I0(m_pass[0]),
        .I1(m_pass[1]),
        .I2(stage[1]),
        .I3(stage[2]),
        .I4(stage[0]),
        .O(\st_out[12]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT5 #(
    .INIT(32'h00008000)) 
    \st_out[12]_INST_0_i_10 
       (.I0(\st_out[9]_INST_0_i_6_n_0 ),
        .I1(st_in[4]),
        .I2(p_is_bot),
        .I3(st_in[3]),
        .I4(st_in[5]),
        .O(\st_out[12]_INST_0_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \st_out[12]_INST_0_i_11 
       (.I0(nb_cid[11]),
        .I1(nb_cid[10]),
        .I2(nb_cid[14]),
        .I3(nb_cid[12]),
        .O(\st_out[12]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h2BBB2BBB2BBB222B)) 
    \st_out[12]_INST_0_i_12 
       (.I0(\st_out[13]_INST_0_i_12_n_0 ),
        .I1(nb_cid[14]),
        .I2(nb_cid[13]),
        .I3(\st_out[12]_INST_0_i_13_n_0 ),
        .I4(\st_out[14]_INST_0_i_9_n_0 ),
        .I5(\st_out[12]_INST_0_i_16_n_0 ),
        .O(\st_out[12]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h00510051FFFFFF5D)) 
    \st_out[12]_INST_0_i_13 
       (.I0(\st_out[12]_INST_0_i_17_n_0 ),
        .I1(\st_out[14]_INST_0_i_12_n_0 ),
        .I2(\st_out[12]_INST_0_i_18_n_0 ),
        .I3(\st_out[12]_INST_0_i_19_n_0 ),
        .I4(\st_out[12]_INST_0_i_20_n_0 ),
        .I5(\st_out[14]_INST_0_i_13_n_0 ),
        .O(\st_out[12]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h000011011101FF0F)) 
    \st_out[12]_INST_0_i_14 
       (.I0(nb_cid[15]),
        .I1(\st_out[9]_INST_0_i_8_n_0 ),
        .I2(nb_cid[17]),
        .I3(\st_out[11]_INST_0_i_8_n_0 ),
        .I4(\st_out[10]_INST_0_i_6_n_0 ),
        .I5(nb_cid[16]),
        .O(\st_out[12]_INST_0_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \st_out[12]_INST_0_i_15 
       (.I0(\st_out[11]_INST_0_i_8_n_0 ),
        .I1(nb_cid[17]),
        .O(\st_out[12]_INST_0_i_15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT4 #(
    .INIT(16'h00D1)) 
    \st_out[12]_INST_0_i_16 
       (.I0(\st_out[11]_INST_0_i_9_n_0 ),
        .I1(\st_out[14]_INST_0_i_7_n_0 ),
        .I2(nb_cid[7]),
        .I3(nb_cid[12]),
        .O(\st_out[12]_INST_0_i_16_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \st_out[12]_INST_0_i_17 
       (.I0(nb_cid[8]),
        .I1(\st_out[13]_INST_0_i_15_n_0 ),
        .O(\st_out[12]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h4044FFFF40444044)) 
    \st_out[12]_INST_0_i_18 
       (.I0(nb_cid[9]),
        .I1(st_in[13]),
        .I2(nb_cid[4]),
        .I3(e_grown[0]),
        .I4(nb_cid[8]),
        .I5(\st_out[14]_INST_0_i_13_n_0 ),
        .O(\st_out[12]_INST_0_i_18_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT4 #(
    .INIT(16'h08AA)) 
    \st_out[12]_INST_0_i_19 
       (.I0(nb_cid[9]),
        .I1(e_grown[0]),
        .I2(nb_cid[4]),
        .I3(st_in[13]),
        .O(\st_out[12]_INST_0_i_19_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \st_out[12]_INST_0_i_2 
       (.I0(st_in[12]),
        .I1(st_in[11]),
        .I2(st_in[13]),
        .I3(st_in[9]),
        .I4(st_in[10]),
        .O(\st_out[12]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT5 #(
    .INIT(32'h8000FFFF)) 
    \st_out[12]_INST_0_i_20 
       (.I0(nb_cid[7]),
        .I1(nb_cid[9]),
        .I2(nb_cid[5]),
        .I3(nb_cid[6]),
        .I4(\st_out[13]_INST_0_i_15_n_0 ),
        .O(\st_out[12]_INST_0_i_20_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT5 #(
    .INIT(32'hB3130000)) 
    \st_out[12]_INST_0_i_3 
       (.I0(\st_out[13]_INST_0_i_8_n_0 ),
        .I1(\st_out[12]_INST_0_i_6_n_0 ),
        .I2(\st_out[12]_INST_0_i_7_n_0 ),
        .I3(nb_cid[18]),
        .I4(\st_out[13]_INST_0_i_5_n_0 ),
        .O(\st_out[12]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT3 #(
    .INIT(8'h0E)) 
    \st_out[12]_INST_0_i_4 
       (.I0(\st_out[13]_INST_0_i_6_n_0 ),
        .I1(st_in[12]),
        .I2(\st_out[13]_INST_0_i_5_n_0 ),
        .O(\st_out[12]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF8A80)) 
    \st_out[12]_INST_0_i_5 
       (.I0(\st_out[9]_INST_0_i_3_n_0 ),
        .I1(\st_out[12]_INST_0_i_8_n_0 ),
        .I2(nb_valid[3]),
        .I3(st_in[12]),
        .I4(\st_out[12]_INST_0_i_9_n_0 ),
        .I5(\st_out[12]_INST_0_i_10_n_0 ),
        .O(\st_out[12]_INST_0_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFDFF1100)) 
    \st_out[12]_INST_0_i_6 
       (.I0(nb_cid[13]),
        .I1(\st_out[13]_INST_0_i_13_n_0 ),
        .I2(\st_out[12]_INST_0_i_11_n_0 ),
        .I3(\st_out[12]_INST_0_i_12_n_0 ),
        .I4(\st_out[12]_INST_0_i_13_n_0 ),
        .O(\st_out[12]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h2BBB2BBB2BBB222B)) 
    \st_out[12]_INST_0_i_7 
       (.I0(\st_out[13]_INST_0_i_7_n_0 ),
        .I1(nb_cid[19]),
        .I2(nb_cid[18]),
        .I3(\st_out[12]_INST_0_i_6_n_0 ),
        .I4(\st_out[12]_INST_0_i_14_n_0 ),
        .I5(\st_out[12]_INST_0_i_15_n_0 ),
        .O(\st_out[12]_INST_0_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT5 #(
    .INIT(32'h8FFFF000)) 
    \st_out[12]_INST_0_i_8 
       (.I0(ab_cid[4]),
        .I1(ab_cid[0]),
        .I2(ab_cid[1]),
        .I3(ab_cid[2]),
        .I4(ab_cid[3]),
        .O(\st_out[12]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAA202000AAAAAAAA)) 
    \st_out[12]_INST_0_i_9 
       (.I0(st_in[12]),
        .I1(m_pass[0]),
        .I2(m_pass[1]),
        .I3(stage[2]),
        .I4(stage[1]),
        .I5(stage[0]),
        .O(\st_out[12]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFE0E0C000)) 
    \st_out[13]_INST_0 
       (.I0(\st_out[13]_INST_0_i_1_n_0 ),
        .I1(st_in[13]),
        .I2(\st_out[14]_INST_0_i_1_n_0 ),
        .I3(\st_out[13]_INST_0_i_2_n_0 ),
        .I4(\st_out[13]_INST_0_i_3_n_0 ),
        .I5(\st_out[13]_INST_0_i_4_n_0 ),
        .O(st_out[13]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \st_out[13]_INST_0_i_1 
       (.I0(\st_out[13]_INST_0_i_5_n_0 ),
        .I1(\st_out[13]_INST_0_i_6_n_0 ),
        .O(\st_out[13]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEEAEAEAEEEAEAEEE)) 
    \st_out[13]_INST_0_i_10 
       (.I0(\st_out[12]_INST_0_i_10_n_0 ),
        .I1(st_in[13]),
        .I2(stage[0]),
        .I3(stage[1]),
        .I4(stage[2]),
        .I5(nb_valid[3]),
        .O(\st_out[13]_INST_0_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h8AAA)) 
    \st_out[13]_INST_0_i_11 
       (.I0(\st_out[13]_INST_0_i_14_n_0 ),
        .I1(\st_out[2]_INST_0_i_9_n_0 ),
        .I2(e_grown[2]),
        .I3(nb_valid[2]),
        .O(\st_out[13]_INST_0_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT5 #(
    .INIT(32'hD000D0D0)) 
    \st_out[13]_INST_0_i_12 
       (.I0(e_grown[0]),
        .I1(nb_cid[4]),
        .I2(st_in[13]),
        .I3(nb_cid[9]),
        .I4(\st_out[13]_INST_0_i_15_n_0 ),
        .O(\st_out[13]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h88F8FFFFFFFFFFFF)) 
    \st_out[13]_INST_0_i_13 
       (.I0(e_grown[1]),
        .I1(\st_out[13]_INST_0_i_16_n_0 ),
        .I2(e_grown[0]),
        .I3(\st_out[13]_INST_0_i_17_n_0 ),
        .I4(nb_valid[2]),
        .I5(e_grown[2]),
        .O(\st_out[13]_INST_0_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT4 #(
    .INIT(16'h0BBB)) 
    \st_out[13]_INST_0_i_14 
       (.I0(\st_out[13]_INST_0_i_17_n_0 ),
        .I1(e_grown[0]),
        .I2(\st_out[13]_INST_0_i_16_n_0 ),
        .I3(e_grown[1]),
        .O(\st_out[13]_INST_0_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \st_out[13]_INST_0_i_15 
       (.I0(e_grown[1]),
        .I1(\st_out[13]_INST_0_i_17_n_0 ),
        .I2(e_grown[0]),
        .O(\st_out[13]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \st_out[13]_INST_0_i_16 
       (.I0(nb_cid[8]),
        .I1(nb_cid[6]),
        .I2(nb_cid[5]),
        .I3(nb_cid[9]),
        .I4(nb_cid[7]),
        .I5(st_in[1]),
        .O(\st_out[13]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF7FFFFFFF)) 
    \st_out[13]_INST_0_i_17 
       (.I0(nb_cid[4]),
        .I1(nb_cid[3]),
        .I2(nb_cid[2]),
        .I3(nb_cid[1]),
        .I4(nb_cid[0]),
        .I5(st_in[1]),
        .O(\st_out[13]_INST_0_i_17_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \st_out[13]_INST_0_i_2 
       (.I0(m_pass[1]),
        .I1(m_pass[0]),
        .O(\st_out[13]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h8088AAAA)) 
    \st_out[13]_INST_0_i_3 
       (.I0(\st_out[2]_INST_0_i_2_n_0 ),
        .I1(\st_out[13]_INST_0_i_7_n_0 ),
        .I2(nb_cid[19]),
        .I3(\st_out[13]_INST_0_i_8_n_0 ),
        .I4(\st_out[13]_INST_0_i_5_n_0 ),
        .O(\st_out[13]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFE0006000)) 
    \st_out[13]_INST_0_i_4 
       (.I0(\st_out[13]_INST_0_i_9_n_0 ),
        .I1(ab_cid[4]),
        .I2(\st_out[9]_INST_0_i_3_n_0 ),
        .I3(nb_valid[3]),
        .I4(ab_cid[0]),
        .I5(\st_out[13]_INST_0_i_10_n_0 ),
        .O(\st_out[13]_INST_0_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT4 #(
    .INIT(16'h40FF)) 
    \st_out[13]_INST_0_i_5 
       (.I0(\st_out[3]_INST_0_i_3_n_0 ),
        .I1(\st_out[13]_INST_0_i_8_n_0 ),
        .I2(\st_out[12]_INST_0_i_7_n_0 ),
        .I3(\st_out[5]_INST_0_i_4_n_0 ),
        .O(\st_out[13]_INST_0_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT5 #(
    .INIT(32'h5D555555)) 
    \st_out[13]_INST_0_i_6 
       (.I0(\st_out[13]_INST_0_i_11_n_0 ),
        .I1(\st_out[3]_INST_0_i_3_n_0 ),
        .I2(st_in[1]),
        .I3(nb_valid[3]),
        .I4(e_grown[3]),
        .O(\st_out[13]_INST_0_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hA8)) 
    \st_out[13]_INST_0_i_7 
       (.I0(\st_out[13]_INST_0_i_12_n_0 ),
        .I1(\st_out[13]_INST_0_i_13_n_0 ),
        .I2(nb_cid[14]),
        .O(\st_out[13]_INST_0_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \st_out[13]_INST_0_i_8 
       (.I0(\st_out[13]_INST_0_i_11_n_0 ),
        .I1(nb_valid[3]),
        .I2(e_grown[3]),
        .O(\st_out[13]_INST_0_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \st_out[13]_INST_0_i_9 
       (.I0(ab_cid[3]),
        .I1(ab_cid[2]),
        .I2(ab_cid[1]),
        .O(\st_out[13]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h20AA20AAEFAA20AA)) 
    \st_out[14]_INST_0 
       (.I0(st_in[14]),
        .I1(m_pass[0]),
        .I2(m_pass[1]),
        .I3(\st_out[14]_INST_0_i_1_n_0 ),
        .I4(st_in[6]),
        .I5(\st_out[14]_INST_0_i_2_n_0 ),
        .O(st_out[14]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \st_out[14]_INST_0_i_1 
       (.I0(stage[0]),
        .I1(stage[2]),
        .I2(stage[1]),
        .O(\st_out[14]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4555F55500000000)) 
    \st_out[14]_INST_0_i_10 
       (.I0(\st_out[14]_INST_0_i_13_n_0 ),
        .I1(\st_out[14]_INST_0_i_19_n_0 ),
        .I2(\st_out[13]_INST_0_i_15_n_0 ),
        .I3(\st_out[14]_INST_0_i_20_n_0 ),
        .I4(nb_cid[8]),
        .I5(nb_cid[13]),
        .O(\st_out[14]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF80000000)) 
    \st_out[14]_INST_0_i_11 
       (.I0(nb_cid[13]),
        .I1(nb_cid[11]),
        .I2(nb_cid[10]),
        .I3(nb_cid[14]),
        .I4(nb_cid[12]),
        .I5(\st_out[13]_INST_0_i_13_n_0 ),
        .O(\st_out[14]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFB2B200)) 
    \st_out[14]_INST_0_i_12 
       (.I0(\st_out[14]_INST_0_i_21_n_0 ),
        .I1(\st_out[10]_INST_0_i_7_n_0 ),
        .I2(nb_cid[6]),
        .I3(nb_cid[7]),
        .I4(\st_out[11]_INST_0_i_9_n_0 ),
        .I5(\st_out[14]_INST_0_i_22_n_0 ),
        .O(\st_out[14]_INST_0_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT4 #(
    .INIT(16'hE4F0)) 
    \st_out[14]_INST_0_i_13 
       (.I0(\st_out[4]_INST_0_i_7_n_0 ),
        .I1(nb_cid[3]),
        .I2(st_in[12]),
        .I3(e_grown[0]),
        .O(\st_out[14]_INST_0_i_13_n_0 ));
  LUT3 #(
    .INIT(8'h8A)) 
    \st_out[14]_INST_0_i_14 
       (.I0(st_in[13]),
        .I1(nb_cid[4]),
        .I2(e_grown[0]),
        .O(\st_out[14]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h80000000FFFFFFFF)) 
    \st_out[14]_INST_0_i_15 
       (.I0(nb_cid[8]),
        .I1(nb_cid[6]),
        .I2(nb_cid[5]),
        .I3(nb_cid[9]),
        .I4(nb_cid[7]),
        .I5(\st_out[13]_INST_0_i_15_n_0 ),
        .O(\st_out[14]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFF5D00000051)) 
    \st_out[14]_INST_0_i_16 
       (.I0(nb_cid[5]),
        .I1(\st_out[14]_INST_0_i_12_n_0 ),
        .I2(\st_out[12]_INST_0_i_18_n_0 ),
        .I3(\st_out[12]_INST_0_i_19_n_0 ),
        .I4(\st_out[14]_INST_0_i_15_n_0 ),
        .I5(\st_out[9]_INST_0_i_9_n_0 ),
        .O(\st_out[14]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h000000A2FFFFFFAE)) 
    \st_out[14]_INST_0_i_17 
       (.I0(nb_cid[7]),
        .I1(\st_out[14]_INST_0_i_12_n_0 ),
        .I2(\st_out[12]_INST_0_i_18_n_0 ),
        .I3(\st_out[12]_INST_0_i_19_n_0 ),
        .I4(\st_out[14]_INST_0_i_15_n_0 ),
        .I5(\st_out[11]_INST_0_i_9_n_0 ),
        .O(\st_out[14]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h00000051FFFFFF5D)) 
    \st_out[14]_INST_0_i_18 
       (.I0(nb_cid[6]),
        .I1(\st_out[14]_INST_0_i_12_n_0 ),
        .I2(\st_out[12]_INST_0_i_18_n_0 ),
        .I3(\st_out[12]_INST_0_i_19_n_0 ),
        .I4(\st_out[14]_INST_0_i_15_n_0 ),
        .I5(\st_out[10]_INST_0_i_7_n_0 ),
        .O(\st_out[14]_INST_0_i_18_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \st_out[14]_INST_0_i_19 
       (.I0(nb_cid[6]),
        .I1(nb_cid[5]),
        .I2(nb_cid[9]),
        .I3(nb_cid[7]),
        .O(\st_out[14]_INST_0_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h0050303000500000)) 
    \st_out[14]_INST_0_i_2 
       (.I0(st_in[4]),
        .I1(\st_out[14]_INST_0_i_3_n_0 ),
        .I2(\st_out[14]_INST_0_i_4_n_0 ),
        .I3(st_in[3]),
        .I4(\st_out[12]_INST_0_i_2_n_0 ),
        .I5(\st_out[14]_INST_0_i_5_n_0 ),
        .O(\st_out[14]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h4D444D444D44DD4D)) 
    \st_out[14]_INST_0_i_20 
       (.I0(nb_cid[9]),
        .I1(\st_out[14]_INST_0_i_14_n_0 ),
        .I2(nb_cid[8]),
        .I3(\st_out[14]_INST_0_i_13_n_0 ),
        .I4(\st_out[14]_INST_0_i_23_n_0 ),
        .I5(\st_out[14]_INST_0_i_24_n_0 ),
        .O(\st_out[14]_INST_0_i_20_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT5 #(
    .INIT(32'hBBBBABFB)) 
    \st_out[14]_INST_0_i_21 
       (.I0(nb_cid[5]),
        .I1(st_in[9]),
        .I2(e_grown[0]),
        .I3(nb_cid[0]),
        .I4(\st_out[4]_INST_0_i_7_n_0 ),
        .O(\st_out[14]_INST_0_i_21_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT5 #(
    .INIT(32'h0A0A028A)) 
    \st_out[14]_INST_0_i_22 
       (.I0(nb_cid[8]),
        .I1(e_grown[0]),
        .I2(st_in[12]),
        .I3(nb_cid[3]),
        .I4(\st_out[4]_INST_0_i_7_n_0 ),
        .O(\st_out[14]_INST_0_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hE0EEE0EEE0EE00E0)) 
    \st_out[14]_INST_0_i_23 
       (.I0(\st_out[11]_INST_0_i_9_n_0 ),
        .I1(nb_cid[7]),
        .I2(nb_cid[6]),
        .I3(\st_out[10]_INST_0_i_7_n_0 ),
        .I4(\st_out[9]_INST_0_i_9_n_0 ),
        .I5(nb_cid[5]),
        .O(\st_out[14]_INST_0_i_23_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT5 #(
    .INIT(32'h02A200AA)) 
    \st_out[14]_INST_0_i_24 
       (.I0(nb_cid[7]),
        .I1(nb_cid[2]),
        .I2(\st_out[4]_INST_0_i_7_n_0 ),
        .I3(st_in[11]),
        .I4(e_grown[0]),
        .O(\st_out[14]_INST_0_i_24_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT5 #(
    .INIT(32'h0F040F00)) 
    \st_out[14]_INST_0_i_3 
       (.I0(\st_out[13]_INST_0_i_6_n_0 ),
        .I1(st_in[4]),
        .I2(\st_out[5]_INST_0_i_3_n_0 ),
        .I3(\st_out[4]_INST_0_i_4_n_0 ),
        .I4(\st_out[4]_INST_0_i_5_n_0 ),
        .O(\st_out[14]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h0051FF55)) 
    \st_out[14]_INST_0_i_4 
       (.I0(\st_out[5]_INST_0_i_3_n_0 ),
        .I1(\st_out[5]_INST_0_i_4_n_0 ),
        .I2(\st_out[13]_INST_0_i_6_n_0 ),
        .I3(\st_out[12]_INST_0_i_2_n_0 ),
        .I4(st_in[5]),
        .O(\st_out[14]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hBBBABBBABABABBBA)) 
    \st_out[14]_INST_0_i_5 
       (.I0(\st_out[5]_INST_0_i_3_n_0 ),
        .I1(\st_out[14]_INST_0_i_6_n_0 ),
        .I2(\st_out[14]_INST_0_i_7_n_0 ),
        .I3(\st_out[4]_INST_0_i_5_n_0 ),
        .I4(st_in[3]),
        .I5(\st_out[13]_INST_0_i_6_n_0 ),
        .O(\st_out[14]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h000000000EFF000E)) 
    \st_out[14]_INST_0_i_6 
       (.I0(\st_out[14]_INST_0_i_8_n_0 ),
        .I1(\st_out[14]_INST_0_i_9_n_0 ),
        .I2(\st_out[14]_INST_0_i_10_n_0 ),
        .I3(nb_cid[14]),
        .I4(\st_out[13]_INST_0_i_12_n_0 ),
        .I5(\st_out[14]_INST_0_i_11_n_0 ),
        .O(\st_out[14]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h000000005D00FF5D)) 
    \st_out[14]_INST_0_i_7 
       (.I0(\st_out[14]_INST_0_i_12_n_0 ),
        .I1(\st_out[14]_INST_0_i_13_n_0 ),
        .I2(nb_cid[8]),
        .I3(\st_out[14]_INST_0_i_14_n_0 ),
        .I4(nb_cid[9]),
        .I5(\st_out[14]_INST_0_i_15_n_0 ),
        .O(\st_out[14]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h1F1111111F111F1F)) 
    \st_out[14]_INST_0_i_8 
       (.I0(\st_out[12]_INST_0_i_13_n_0 ),
        .I1(nb_cid[13]),
        .I2(nb_cid[12]),
        .I3(nb_cid[7]),
        .I4(\st_out[14]_INST_0_i_7_n_0 ),
        .I5(\st_out[11]_INST_0_i_9_n_0 ),
        .O(\st_out[14]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h000011011101FF0F)) 
    \st_out[14]_INST_0_i_9 
       (.I0(nb_cid[10]),
        .I1(\st_out[14]_INST_0_i_16_n_0 ),
        .I2(nb_cid[12]),
        .I3(\st_out[14]_INST_0_i_17_n_0 ),
        .I4(\st_out[14]_INST_0_i_18_n_0 ),
        .I5(nb_cid[11]),
        .O(\st_out[14]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAAAABAAABA0000AA)) 
    \st_out[1]_INST_0 
       (.I0(st_in[1]),
        .I1(\st_out[13]_INST_0_i_2_n_0 ),
        .I2(\st_out[12]_INST_0_i_2_n_0 ),
        .I3(stage[0]),
        .I4(stage[2]),
        .I5(stage[1]),
        .O(st_out[1]));
  LUT5 #(
    .INIT(32'hFEAAAAAA)) 
    \st_out[2]_INST_0 
       (.I0(\st_out[2]_INST_0_i_1_n_0 ),
        .I1(\st_out[2]_INST_0_i_2_n_0 ),
        .I2(st_in[2]),
        .I3(\st_out[14]_INST_0_i_1_n_0 ),
        .I4(\st_out[2]_INST_0_i_3_n_0 ),
        .O(st_out[2]));
  LUT6 #(
    .INIT(64'hD5D5D5D510000000)) 
    \st_out[2]_INST_0_i_1 
       (.I0(stage[0]),
        .I1(stage[2]),
        .I2(stage[1]),
        .I3(st_in[8]),
        .I4(st_in[7]),
        .I5(st_in[2]),
        .O(\st_out[2]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h51555555)) 
    \st_out[2]_INST_0_i_10 
       (.I0(st_in[2]),
        .I1(nb_grown[0]),
        .I2(\st_out[2]_INST_0_i_5_n_0 ),
        .I3(e_grown[0]),
        .I4(\st_out[13]_INST_0_i_17_n_0 ),
        .O(\st_out[2]_INST_0_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'h0B)) 
    \st_out[2]_INST_0_i_2 
       (.I0(m_pass[0]),
        .I1(m_pass[1]),
        .I2(\st_out[12]_INST_0_i_2_n_0 ),
        .O(\st_out[2]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h04FFFFFF)) 
    \st_out[2]_INST_0_i_3 
       (.I0(\st_out[2]_INST_0_i_4_n_0 ),
        .I1(nb_grown[3]),
        .I2(\st_out[2]_INST_0_i_5_n_0 ),
        .I3(\st_out[2]_INST_0_i_6_n_0 ),
        .I4(\st_out[2]_INST_0_i_2_n_0 ),
        .O(\st_out[2]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h40550000FFFFFFFF)) 
    \st_out[2]_INST_0_i_4 
       (.I0(st_in[1]),
        .I1(nb_cid[15]),
        .I2(nb_cid[16]),
        .I3(nb_cid[17]),
        .I4(\st_out[2]_INST_0_i_7_n_0 ),
        .I5(\st_out[13]_INST_0_i_8_n_0 ),
        .O(\st_out[2]_INST_0_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    \st_out[2]_INST_0_i_5 
       (.I0(stage[0]),
        .I1(stage[2]),
        .I2(stage[1]),
        .O(\st_out[2]_INST_0_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAA2AA)) 
    \st_out[2]_INST_0_i_6 
       (.I0(\st_out[2]_INST_0_i_8_n_0 ),
        .I1(nb_grown[2]),
        .I2(\st_out[2]_INST_0_i_5_n_0 ),
        .I3(\st_out[2]_INST_0_i_9_n_0 ),
        .I4(\st_out[13]_INST_0_i_13_n_0 ),
        .O(\st_out[2]_INST_0_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \st_out[2]_INST_0_i_7 
       (.I0(nb_cid[16]),
        .I1(nb_cid[18]),
        .I2(nb_cid[19]),
        .I3(nb_cid[17]),
        .O(\st_out[2]_INST_0_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hAA8AAAAA)) 
    \st_out[2]_INST_0_i_8 
       (.I0(\st_out[2]_INST_0_i_10_n_0 ),
        .I1(\st_out[13]_INST_0_i_16_n_0 ),
        .I2(nb_grown[1]),
        .I3(\st_out[2]_INST_0_i_5_n_0 ),
        .I4(\st_out[13]_INST_0_i_15_n_0 ),
        .O(\st_out[2]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFFFFFFFFFF)) 
    \st_out[2]_INST_0_i_9 
       (.I0(st_in[1]),
        .I1(nb_cid[13]),
        .I2(nb_cid[11]),
        .I3(nb_cid[10]),
        .I4(nb_cid[14]),
        .I5(nb_cid[12]),
        .O(\st_out[2]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFF4F4F4F4F4F4F4)) 
    \st_out[3]_INST_0 
       (.I0(\st_out[3]_INST_0_i_1_n_0 ),
        .I1(\st_out[14]_INST_0_i_1_n_0 ),
        .I2(\st_out[3]_INST_0_i_2_n_0 ),
        .I3(\st_out[9]_INST_0_i_3_n_0 ),
        .I4(ab_ptr[0]),
        .I5(nb_valid[3]),
        .O(st_out[3]));
  LUT6 #(
    .INIT(64'hFF400000FF40FFFF)) 
    \st_out[3]_INST_0_i_1 
       (.I0(\st_out[3]_INST_0_i_3_n_0 ),
        .I1(\st_out[13]_INST_0_i_8_n_0 ),
        .I2(\st_out[12]_INST_0_i_7_n_0 ),
        .I3(\st_out[3]_INST_0_i_4_n_0 ),
        .I4(\st_out[2]_INST_0_i_2_n_0 ),
        .I5(st_in[3]),
        .O(\st_out[3]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA202A20AA222A22A)) 
    \st_out[3]_INST_0_i_2 
       (.I0(st_in[3]),
        .I1(stage[0]),
        .I2(stage[1]),
        .I3(stage[2]),
        .I4(nb_valid[3]),
        .I5(\st_out[4]_INST_0_i_6_n_0 ),
        .O(\st_out[3]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \st_out[3]_INST_0_i_3 
       (.I0(nb_cid[16]),
        .I1(nb_cid[15]),
        .I2(nb_cid[18]),
        .I3(nb_cid[19]),
        .I4(nb_cid[17]),
        .O(\st_out[3]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT5 #(
    .INIT(32'h0000FFB0)) 
    \st_out[3]_INST_0_i_4 
       (.I0(\st_out[13]_INST_0_i_6_n_0 ),
        .I1(st_in[3]),
        .I2(\st_out[4]_INST_0_i_5_n_0 ),
        .I3(\st_out[14]_INST_0_i_7_n_0 ),
        .I4(\st_out[14]_INST_0_i_6_n_0 ),
        .O(\st_out[3]_INST_0_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF88F8)) 
    \st_out[4]_INST_0 
       (.I0(\st_out[14]_INST_0_i_1_n_0 ),
        .I1(\st_out[4]_INST_0_i_1_n_0 ),
        .I2(st_in[4]),
        .I3(\st_out[4]_INST_0_i_2_n_0 ),
        .I4(\st_out[4]_INST_0_i_3_n_0 ),
        .O(st_out[4]));
  LUT6 #(
    .INIT(64'h3130FFFF30300000)) 
    \st_out[4]_INST_0_i_1 
       (.I0(\st_out[13]_INST_0_i_6_n_0 ),
        .I1(\st_out[5]_INST_0_i_3_n_0 ),
        .I2(\st_out[4]_INST_0_i_4_n_0 ),
        .I3(\st_out[4]_INST_0_i_5_n_0 ),
        .I4(\st_out[2]_INST_0_i_2_n_0 ),
        .I5(st_in[4]),
        .O(\st_out[4]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT4 #(
    .INIT(16'h7720)) 
    \st_out[4]_INST_0_i_2 
       (.I0(stage[1]),
        .I1(stage[2]),
        .I2(\st_out[4]_INST_0_i_6_n_0 ),
        .I3(stage[0]),
        .O(\st_out[4]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0202020000000200)) 
    \st_out[4]_INST_0_i_3 
       (.I0(stage[0]),
        .I1(stage[1]),
        .I2(stage[2]),
        .I3(st_in[4]),
        .I4(nb_valid[3]),
        .I5(ab_ptr[1]),
        .O(\st_out[4]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \st_out[4]_INST_0_i_4 
       (.I0(\st_out[14]_INST_0_i_6_n_0 ),
        .I1(\st_out[14]_INST_0_i_7_n_0 ),
        .O(\st_out[4]_INST_0_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \st_out[4]_INST_0_i_5 
       (.I0(\st_out[4]_INST_0_i_7_n_0 ),
        .I1(e_grown[0]),
        .O(\st_out[4]_INST_0_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \st_out[4]_INST_0_i_6 
       (.I0(st_in[5]),
        .I1(st_in[3]),
        .I2(p_is_bot),
        .I3(st_in[4]),
        .O(\st_out[4]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h4F044F044F04FF0F)) 
    \st_out[4]_INST_0_i_7 
       (.I0(st_in[12]),
        .I1(nb_cid[3]),
        .I2(st_in[13]),
        .I3(nb_cid[4]),
        .I4(\st_out[4]_INST_0_i_8_n_0 ),
        .I5(\st_out[4]_INST_0_i_9_n_0 ),
        .O(\st_out[4]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h2202FF0F00002202)) 
    \st_out[4]_INST_0_i_8 
       (.I0(st_in[9]),
        .I1(nb_cid[0]),
        .I2(nb_cid[2]),
        .I3(st_in[11]),
        .I4(nb_cid[1]),
        .I5(st_in[10]),
        .O(\st_out[4]_INST_0_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \st_out[4]_INST_0_i_9 
       (.I0(nb_cid[3]),
        .I1(st_in[12]),
        .I2(nb_cid[2]),
        .I3(st_in[11]),
        .O(\st_out[4]_INST_0_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT5 #(
    .INIT(32'hFFFF0440)) 
    \st_out[5]_INST_0 
       (.I0(\st_out[5]_INST_0_i_1_n_0 ),
        .I1(stage[0]),
        .I2(stage[2]),
        .I3(stage[1]),
        .I4(\st_out[5]_INST_0_i_2_n_0 ),
        .O(st_out[5]));
  LUT6 #(
    .INIT(64'h00001101FFFFBBBB)) 
    \st_out[5]_INST_0_i_1 
       (.I0(\st_out[13]_INST_0_i_2_n_0 ),
        .I1(\st_out[5]_INST_0_i_3_n_0 ),
        .I2(\st_out[5]_INST_0_i_4_n_0 ),
        .I3(\st_out[13]_INST_0_i_6_n_0 ),
        .I4(\st_out[12]_INST_0_i_2_n_0 ),
        .I5(st_in[5]),
        .O(\st_out[5]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAA0000E2AAAAAAAA)) 
    \st_out[5]_INST_0_i_2 
       (.I0(st_in[5]),
        .I1(nb_valid[3]),
        .I2(ab_ptr[2]),
        .I3(stage[2]),
        .I4(stage[1]),
        .I5(stage[0]),
        .O(\st_out[5]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000000EFF000E)) 
    \st_out[5]_INST_0_i_3 
       (.I0(\st_out[5]_INST_0_i_5_n_0 ),
        .I1(\st_out[12]_INST_0_i_14_n_0 ),
        .I2(\st_out[5]_INST_0_i_6_n_0 ),
        .I3(nb_cid[19]),
        .I4(\st_out[13]_INST_0_i_7_n_0 ),
        .I5(\st_out[5]_INST_0_i_7_n_0 ),
        .O(\st_out[5]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \st_out[5]_INST_0_i_4 
       (.I0(\st_out[4]_INST_0_i_5_n_0 ),
        .I1(\st_out[4]_INST_0_i_4_n_0 ),
        .O(\st_out[5]_INST_0_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h1F11)) 
    \st_out[5]_INST_0_i_5 
       (.I0(\st_out[12]_INST_0_i_6_n_0 ),
        .I1(nb_cid[18]),
        .I2(nb_cid[17]),
        .I3(\st_out[11]_INST_0_i_8_n_0 ),
        .O(\st_out[5]_INST_0_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \st_out[5]_INST_0_i_6 
       (.I0(\st_out[12]_INST_0_i_6_n_0 ),
        .I1(nb_cid[18]),
        .O(\st_out[5]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h80000000FFFFFFFF)) 
    \st_out[5]_INST_0_i_7 
       (.I0(nb_cid[17]),
        .I1(nb_cid[19]),
        .I2(nb_cid[18]),
        .I3(nb_cid[15]),
        .I4(nb_cid[16]),
        .I5(\st_out[13]_INST_0_i_8_n_0 ),
        .O(\st_out[5]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFED110000)) 
    \st_out[6]_INST_0 
       (.I0(\st_out[6]_INST_0_i_1_n_0 ),
        .I1(\st_out[6]_INST_0_i_2_n_0 ),
        .I2(\st_out[6]_INST_0_i_3_n_0 ),
        .I3(st_in[6]),
        .I4(\st_out[14]_INST_0_i_1_n_0 ),
        .I5(\st_out[6]_INST_0_i_4_n_0 ),
        .O(st_out[6]));
  LUT6 #(
    .INIT(64'h9666699969996999)) 
    \st_out[6]_INST_0_i_1 
       (.I0(nb_push[1]),
        .I1(nb_push[0]),
        .I2(nb_valid[2]),
        .I3(nb_push[2]),
        .I4(nb_valid[3]),
        .I5(nb_push[3]),
        .O(\st_out[6]_INST_0_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \st_out[6]_INST_0_i_2 
       (.I0(m_pass[0]),
        .I1(m_pass[1]),
        .O(\st_out[6]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000008ABA0000)) 
    \st_out[6]_INST_0_i_3 
       (.I0(\st_out[14]_INST_0_i_4_n_0 ),
        .I1(m_pass[0]),
        .I2(m_pass[1]),
        .I3(st_in[5]),
        .I4(\st_out[3]_INST_0_i_1_n_0 ),
        .I5(\st_out[4]_INST_0_i_1_n_0 ),
        .O(\st_out[6]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT5 #(
    .INIT(32'hF33B0008)) 
    \st_out[6]_INST_0_i_4 
       (.I0(\st_out[6]_INST_0_i_5_n_0 ),
        .I1(stage[0]),
        .I2(stage[2]),
        .I3(stage[1]),
        .I4(st_in[6]),
        .O(\st_out[6]_INST_0_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \st_out[6]_INST_0_i_5 
       (.I0(syn_bit),
        .I1(p_id[2]),
        .I2(ab_defect),
        .I3(nb_valid[3]),
        .I4(st_in[6]),
        .O(\st_out[6]_INST_0_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFEAAA)) 
    \st_out[7]_INST_0 
       (.I0(\st_out[7]_INST_0_i_1_n_0 ),
        .I1(\st_out[9]_INST_0_i_3_n_0 ),
        .I2(ab_whole),
        .I3(nb_valid[3]),
        .I4(\st_out[7]_INST_0_i_2_n_0 ),
        .O(st_out[7]));
  LUT6 #(
    .INIT(64'hAAA2A0AAAAA2AAAA)) 
    \st_out[7]_INST_0_i_1 
       (.I0(st_in[7]),
        .I1(nb_valid[3]),
        .I2(stage[2]),
        .I3(stage[1]),
        .I4(stage[0]),
        .I5(st_in[8]),
        .O(\st_out[7]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT5 #(
    .INIT(32'h00100000)) 
    \st_out[7]_INST_0_i_2 
       (.I0(stage[0]),
        .I1(stage[1]),
        .I2(stage[2]),
        .I3(st_in[2]),
        .I4(st_in[8]),
        .O(\st_out[7]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFAA8A0080)) 
    \st_out[8]_INST_0 
       (.I0(\st_out[14]_INST_0_i_1_n_0 ),
        .I1(st_in[8]),
        .I2(m_pass[0]),
        .I3(m_pass[1]),
        .I4(\st_out[8]_INST_0_i_1_n_0 ),
        .I5(\st_out[8]_INST_0_i_2_n_0 ),
        .O(st_out[8]));
  LUT6 #(
    .INIT(64'hFFBF00BFFF800080)) 
    \st_out[8]_INST_0_i_1 
       (.I0(st_in[6]),
        .I1(\st_out[5]_INST_0_i_1_n_0 ),
        .I2(\st_out[3]_INST_0_i_1_n_0 ),
        .I3(\st_out[4]_INST_0_i_1_n_0 ),
        .I4(\st_out[8]_INST_0_i_3_n_0 ),
        .I5(\st_out[8]_INST_0_i_4_n_0 ),
        .O(\st_out[8]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7370507050505050)) 
    \st_out[8]_INST_0_i_2 
       (.I0(\st_out[11]_INST_0_i_5_n_0 ),
        .I1(p_id[2]),
        .I2(st_in[8]),
        .I3(nb_valid[3]),
        .I4(ab_active),
        .I5(\st_out[9]_INST_0_i_3_n_0 ),
        .O(\st_out[8]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFEAAFEFF02AA0200)) 
    \st_out[8]_INST_0_i_3 
       (.I0(nb_active[2]),
        .I1(\st_out[5]_INST_0_i_3_n_0 ),
        .I2(\st_out[3]_INST_0_i_4_n_0 ),
        .I3(\st_out[2]_INST_0_i_2_n_0 ),
        .I4(st_in[3]),
        .I5(nb_active[1]),
        .O(\st_out[8]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFEAAFEFF02AA0200)) 
    \st_out[8]_INST_0_i_4 
       (.I0(nb_active[0]),
        .I1(\st_out[5]_INST_0_i_3_n_0 ),
        .I2(\st_out[3]_INST_0_i_4_n_0 ),
        .I3(\st_out[2]_INST_0_i_2_n_0 ),
        .I4(st_in[3]),
        .I5(nb_active[3]),
        .O(\st_out[8]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEFEEEFEFEFEFE)) 
    \st_out[9]_INST_0 
       (.I0(\st_out[9]_INST_0_i_1_n_0 ),
        .I1(\st_out[9]_INST_0_i_2_n_0 ),
        .I2(st_in[9]),
        .I3(\st_out[9]_INST_0_i_3_n_0 ),
        .I4(nb_valid[3]),
        .I5(\st_out[9]_INST_0_i_4_n_0 ),
        .O(st_out[9]));
  LUT6 #(
    .INIT(64'hA8A8A0A808080008)) 
    \st_out[9]_INST_0_i_1 
       (.I0(\st_out[14]_INST_0_i_1_n_0 ),
        .I1(\st_out[9]_INST_0_i_5_n_0 ),
        .I2(\st_out[13]_INST_0_i_2_n_0 ),
        .I3(\st_out[12]_INST_0_i_2_n_0 ),
        .I4(p_id[0]),
        .I5(st_in[9]),
        .O(\st_out[9]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFF8F8F8F8F8F8F8)) 
    \st_out[9]_INST_0_i_2 
       (.I0(\st_out[9]_INST_0_i_6_n_0 ),
        .I1(st_in[9]),
        .I2(\st_out[12]_INST_0_i_10_n_0 ),
        .I3(nb_valid[3]),
        .I4(ab_cid[0]),
        .I5(\st_out[9]_INST_0_i_3_n_0 ),
        .O(\st_out[9]_INST_0_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h10)) 
    \st_out[9]_INST_0_i_3 
       (.I0(stage[2]),
        .I1(stage[1]),
        .I2(stage[0]),
        .O(\st_out[9]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'h74)) 
    \st_out[9]_INST_0_i_4 
       (.I0(stage[2]),
        .I1(stage[1]),
        .I2(stage[0]),
        .O(\st_out[9]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFCACAC0CF)) 
    \st_out[9]_INST_0_i_5 
       (.I0(\st_out[9]_INST_0_i_7_n_0 ),
        .I1(nb_cid[15]),
        .I2(\st_out[5]_INST_0_i_3_n_0 ),
        .I3(\st_out[9]_INST_0_i_8_n_0 ),
        .I4(\st_out[5]_INST_0_i_4_n_0 ),
        .I5(\st_out[12]_INST_0_i_2_n_0 ),
        .O(\st_out[9]_INST_0_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \st_out[9]_INST_0_i_6 
       (.I0(stage[1]),
        .I1(stage[2]),
        .I2(stage[0]),
        .O(\st_out[9]_INST_0_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \st_out[9]_INST_0_i_7 
       (.I0(st_in[9]),
        .I1(\st_out[13]_INST_0_i_6_n_0 ),
        .O(\st_out[9]_INST_0_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h47774744)) 
    \st_out[9]_INST_0_i_8 
       (.I0(nb_cid[10]),
        .I1(\st_out[14]_INST_0_i_6_n_0 ),
        .I2(nb_cid[5]),
        .I3(\st_out[14]_INST_0_i_7_n_0 ),
        .I4(\st_out[9]_INST_0_i_9_n_0 ),
        .O(\st_out[9]_INST_0_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT4 #(
    .INIT(16'h10BF)) 
    \st_out[9]_INST_0_i_9 
       (.I0(\st_out[4]_INST_0_i_7_n_0 ),
        .I1(nb_cid[0]),
        .I2(e_grown[0]),
        .I3(st_in[9]),
        .O(\st_out[9]_INST_0_i_9_n_0 ));
endmodule

(* AW = "8" *) (* CW = "5" *) (* EBM = "81" *) 
(* ES = "5" *) (* IO_ABOVE = "5" *) (* IO_BND = "6" *) 
(* IO_BOT = "8" *) (* IO_SYN = "9" *) (* IO_TOP = "7" *) 
(* NBM = "81" *) (* NCTX = "3" *) (* NDIR = "4" *) 
(* NSLOT = "4" *) (* ONE_ONE = "0" *) (* PW = "3" *) 
(* RVW = "2" *) (* SLW = "2" *) (* SO_ACT = "8" *) 
(* SO_BUSY = "0" *) (* SO_CID = "9" *) (* SO_DEF = "6" *) 
(* SO_GRW = "2" *) (* SO_PB = "14" *) (* SO_PTR = "3" *) 
(* SO_UNR = "1" *) (* SO_WHL = "7" *) (* STW = "15" *) 
(* ST_DROP = "3'b001" *) (* ST_GH = "3'b100" *) (* ST_GW = "3'b010" *) 
(* ST_IDLE = "3'b000" *) (* ST_MH = "3'b101" *) (* ST_MW = "3'b011" *) 
(* NotValidForBitStream *)
module snowflake_pe_array_lat1
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
    dbg_valid,
    lat_live_cnt,
    lat_push_cnt,
    lat_flip_cnt);
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
  output [31:0]lat_live_cnt;
  output [31:0]lat_push_cnt;
  output [31:0]lat_flip_cnt;

  wire \FSM_sequential_stage[1]_i_1_n_0 ;
  wire \FSM_sequential_stage[2]_i_1_n_0 ;
  wire \FSM_sequential_stage[2]_i_3_n_0 ;
  wire all_busy;
  wire all_busy_INST_0_i_1_n_0;
  wire all_busy_INST_0_i_2_n_0;
  wire all_busy_INST_0_i_3_n_0;
  wire all_busy_INST_0_i_4_n_0;
  wire all_busy_INST_0_i_5_n_0;
  wire all_busy_INST_0_i_6_n_0;
  wire all_busy_INST_0_i_7_n_0;
  wire all_busy_INST_0_i_8_n_0;
  wire [2:0]bshA;
  wire clk;
  wire [4:0]commit_hold;
  wire commit_hold0;
  wire [4:0]commit_onehot;
  wire \commit_onehot[4]_i_1_n_0 ;
  wire [2:0]dbg_stage;
  wire \dbg_stage[0]_i_1_n_0 ;
  wire \dbg_stage[2]_i_1_n_0 ;
  wire [7:0]dbg_step;
  wire dbg_valid;
  wire done;
  wire done_i_1_n_0;
  wire done_i_2_n_0;
  wire [2:0]\eslot_nxt[0] ;
  wire [2:0]\eslot_nxt[1] ;
  wire [2:0]\eslot_nxt[2] ;
  wire [2:0]\eslot_nxt[3] ;
  wire [2:0]\eslot_nxt[4] ;
  wire [2:0]\g_eslot[0].ab_state ;
  wire \g_eslot[0].ed_i_i_10_n_0 ;
  wire \g_eslot[0].ed_i_i_11_n_0 ;
  wire \g_eslot[0].ed_i_i_12_n_0 ;
  wire \g_eslot[0].ed_i_i_9_n_0 ;
  wire [7:1]\g_eslot[0].eown ;
  wire [2:0]\g_eslot[0].my_state ;
  wire \g_eslot[0].umir ;
  wire \g_eslot[0].upulse ;
  wire [2:0]\g_eslot[1].ab_state ;
  wire \g_eslot[1].ed_i_i_8_n_0 ;
  wire \g_eslot[1].ed_i_i_9_n_0 ;
  wire [2:0]\g_eslot[1].my_state ;
  wire \g_eslot[1].upulse ;
  wire [2:0]\g_eslot[2].ab_state ;
  wire \g_eslot[2].ed_i_i_8_n_0 ;
  wire \g_eslot[2].ed_i_i_9_n_0 ;
  wire [2:0]\g_eslot[2].my_state ;
  wire \g_eslot[2].upulse ;
  wire \g_eslot[2].vmir ;
  wire \g_eslot[2].vpulse ;
  wire [2:0]\g_eslot[3].ab_state ;
  wire \g_eslot[3].ed_i_i_11_n_0 ;
  wire \g_eslot[3].ed_i_i_12_n_0 ;
  wire \g_eslot[3].ed_i_i_13_n_0 ;
  wire \g_eslot[3].ed_i_i_14_n_0 ;
  wire \g_eslot[3].ed_i_i_15_n_0 ;
  wire \g_eslot[3].ed_i_i_16_n_0 ;
  wire \g_eslot[3].ed_i_i_17_n_0 ;
  wire \g_eslot[3].ed_i_i_18_n_0 ;
  wire \g_eslot[3].ed_i_i_19_n_0 ;
  wire \g_eslot[3].ed_i_i_20_n_0 ;
  wire \g_eslot[3].ed_i_i_21_n_0 ;
  wire \g_eslot[3].ed_i_i_22_n_0 ;
  wire \g_eslot[3].ed_i_i_23_n_0 ;
  wire \g_eslot[3].ed_i_i_24_n_0 ;
  wire [4:0]\g_eslot[3].eomir ;
  wire [8:6]\g_eslot[3].eown ;
  wire [2:0]\g_eslot[3].my_state ;
  wire \g_eslot[3].umir ;
  wire \g_eslot[3].upulse ;
  wire \g_eslot[3].vmir ;
  wire \g_eslot[3].vpulse ;
  wire [2:0]\g_eslot[4].ab_state ;
  wire \g_eslot[4].ed_i_i_11_n_0 ;
  wire \g_eslot[4].ed_i_i_12_n_0 ;
  wire \g_eslot[4].ed_i_i_13_n_0 ;
  wire \g_eslot[4].ed_i_i_14_n_0 ;
  wire \g_eslot[4].ed_i_i_15_n_0 ;
  wire \g_eslot[4].ed_i_i_16_n_0 ;
  wire \g_eslot[4].ed_i_i_17_n_0 ;
  wire \g_eslot[4].ed_i_i_18_n_0 ;
  wire \g_eslot[4].ed_i_i_19_n_0 ;
  wire \g_eslot[4].ed_i_i_20_n_0 ;
  wire \g_eslot[4].ed_i_i_21_n_0 ;
  wire [4:0]\g_eslot[4].eomir ;
  wire [8:6]\g_eslot[4].eown ;
  wire [2:0]\g_eslot[4].my_state ;
  wire \g_eslot[4].umir ;
  wire \g_eslot[4].upulse ;
  wire \g_eslot[4].vmir ;
  wire \g_eslot[4].vpulse ;
  wire [13:3]\g_slot[0].absrc ;
  wire [2:0]\g_slot[0].bshA_reg[0] ;
  wire \g_slot[0].bshB[0][0]_i_1_n_0 ;
  wire \g_slot[0].bshB[0][1]_i_1_n_0 ;
  wire \g_slot[0].bshB[0][2]_i_1_n_0 ;
  wire [2:0]\g_slot[0].bshB_reg[0] ;
  wire [38:14]\g_slot[0].g_dir[0].nsrc ;
  wire \g_slot[0].nb_push0 ;
  wire \g_slot[0].omir_reg_n_0_[14] ;
  wire \g_slot[0].omir_reg_n_0_[2] ;
  wire \g_slot[0].omir_reg_n_0_[3] ;
  wire \g_slot[0].omir_reg_n_0_[4] ;
  wire \g_slot[0].omir_reg_n_0_[5] ;
  wire \g_slot[0].omir_reg_n_0_[7] ;
  wire \g_slot[0].omir_reg_n_0_[8] ;
  wire [13:13]\g_slot[0].own ;
  wire \g_slot[0].own_reg_n_0_[29] ;
  wire \g_slot[0].own_reg_n_0_[44] ;
  wire \g_slot[0].pe_i_i_12_n_0 ;
  wire \g_slot[0].pe_i_i_18_n_0 ;
  wire \g_slot[0].pe_i_i_23_n_0 ;
  wire \g_slot[0].pe_i_i_24_n_0 ;
  wire \g_slot[0].pe_i_i_32_n_0 ;
  wire \g_slot[0].pe_i_i_37_n_0 ;
  wire \g_slot[0].pe_i_i_43_n_0 ;
  wire \g_slot[0].pe_i_i_44_n_0 ;
  wire \g_slot[0].pe_i_i_45_n_0 ;
  wire [13:3]\g_slot[1].absrc ;
  wire [2:0]\g_slot[1].bshA_reg[1] ;
  wire [2:0]\g_slot[1].bshB_reg[1] ;
  wire [3:2]\g_slot[1].e_grown ;
  wire [44:14]\g_slot[1].g_dir[2].nsrc ;
  wire [43:14]\g_slot[1].g_dir[3].nsrc ;
  wire [19:0]\g_slot[1].nb_cid ;
  wire [3:0]\g_slot[1].nb_grown ;
  wire [3:1]\g_slot[1].nb_push ;
  wire \g_slot[1].pe_i_i_1_n_0 ;
  wire \g_slot[1].pe_i_i_32_n_0 ;
  wire \g_slot[1].pe_i_i_33_n_0 ;
  wire \g_slot[1].pe_i_i_44_n_0 ;
  wire \g_slot[1].pe_i_i_48_n_0 ;
  wire \g_slot[1].pe_i_i_49_n_0 ;
  wire \g_slot[1].pe_i_i_50_n_0 ;
  wire \g_slot[1].pe_i_i_51_n_0 ;
  wire \g_slot[1].pe_i_i_52_n_0 ;
  wire \g_slot[1].pe_i_i_53_n_0 ;
  wire \g_slot[1].pe_i_i_54_n_0 ;
  wire \g_slot[1].pe_i_i_55_n_0 ;
  wire \g_slot[1].pe_i_i_56_n_0 ;
  wire \g_slot[1].pe_i_i_57_n_0 ;
  wire \g_slot[1].pe_i_i_58_n_0 ;
  wire [13:3]\g_slot[2].absrc ;
  wire [2:0]\g_slot[2].bshA_reg[2] ;
  wire [2:0]\g_slot[2].bshB_reg[2] ;
  wire [3:2]\g_slot[2].e_grown ;
  wire \g_slot[2].e_grown07_in ;
  wire \g_slot[2].g_dir[2].nbv ;
  wire [44:14]\g_slot[2].g_dir[2].nsrc ;
  wire [43:14]\g_slot[2].g_dir[3].nsrc ;
  wire [2:2]\g_slot[2].iw ;
  wire [19:0]\g_slot[2].nb_cid ;
  wire [3:0]\g_slot[2].nb_grown ;
  wire [3:0]\g_slot[2].nb_push ;
  wire \g_slot[2].own[28]_i_1_n_0 ;
  wire \g_slot[2].own[43]_i_1_n_0 ;
  wire \g_slot[2].pe_i_i_15_n_0 ;
  wire \g_slot[2].pe_i_i_31_n_0 ;
  wire \g_slot[2].pe_i_i_32_n_0 ;
  wire \g_slot[2].pe_i_i_43_n_0 ;
  wire \g_slot[2].pe_i_i_47_n_0 ;
  wire \g_slot[2].pe_i_i_48_n_0 ;
  wire \g_slot[2].pe_i_i_49_n_0 ;
  wire \g_slot[2].pe_i_i_50_n_0 ;
  wire \g_slot[2].pe_i_i_51_n_0 ;
  wire \g_slot[2].pe_i_i_52_n_0 ;
  wire \g_slot[2].pe_i_i_53_n_0 ;
  wire [13:3]\g_slot[3].absrc ;
  wire [2:0]\g_slot[3].bshA_reg[3] ;
  wire [2:0]\g_slot[3].bshB_reg[3] ;
  wire [38:14]\g_slot[3].g_dir[1].nsrc ;
  wire [5:0]\g_slot[3].iw ;
  wire \g_slot[3].nb_push0 ;
  wire \g_slot[3].own_reg_n_0_[29] ;
  wire \g_slot[3].own_reg_n_0_[44] ;
  wire \g_slot[3].pe_i_i_12_n_0 ;
  wire \g_slot[3].pe_i_i_14_n_0 ;
  wire \g_slot[3].pe_i_i_16_n_0 ;
  wire \g_slot[3].pe_i_i_20_n_0 ;
  wire lat_bpass;
  wire lat_bpass_i_1_n_0;
  wire [31:0]lat_flip_cnt;
  wire [31:0]lat_live_cnt;
  wire \lat_live_cnt[31]_i_1_n_0 ;
  wire \lat_live_cnt[7]_i_2_n_0 ;
  wire \lat_live_cnt_reg[15]_i_1_n_0 ;
  wire \lat_live_cnt_reg[15]_i_1_n_1 ;
  wire \lat_live_cnt_reg[15]_i_1_n_10 ;
  wire \lat_live_cnt_reg[15]_i_1_n_11 ;
  wire \lat_live_cnt_reg[15]_i_1_n_12 ;
  wire \lat_live_cnt_reg[15]_i_1_n_13 ;
  wire \lat_live_cnt_reg[15]_i_1_n_14 ;
  wire \lat_live_cnt_reg[15]_i_1_n_15 ;
  wire \lat_live_cnt_reg[15]_i_1_n_2 ;
  wire \lat_live_cnt_reg[15]_i_1_n_3 ;
  wire \lat_live_cnt_reg[15]_i_1_n_4 ;
  wire \lat_live_cnt_reg[15]_i_1_n_5 ;
  wire \lat_live_cnt_reg[15]_i_1_n_6 ;
  wire \lat_live_cnt_reg[15]_i_1_n_7 ;
  wire \lat_live_cnt_reg[15]_i_1_n_8 ;
  wire \lat_live_cnt_reg[15]_i_1_n_9 ;
  wire \lat_live_cnt_reg[23]_i_1_n_0 ;
  wire \lat_live_cnt_reg[23]_i_1_n_1 ;
  wire \lat_live_cnt_reg[23]_i_1_n_10 ;
  wire \lat_live_cnt_reg[23]_i_1_n_11 ;
  wire \lat_live_cnt_reg[23]_i_1_n_12 ;
  wire \lat_live_cnt_reg[23]_i_1_n_13 ;
  wire \lat_live_cnt_reg[23]_i_1_n_14 ;
  wire \lat_live_cnt_reg[23]_i_1_n_15 ;
  wire \lat_live_cnt_reg[23]_i_1_n_2 ;
  wire \lat_live_cnt_reg[23]_i_1_n_3 ;
  wire \lat_live_cnt_reg[23]_i_1_n_4 ;
  wire \lat_live_cnt_reg[23]_i_1_n_5 ;
  wire \lat_live_cnt_reg[23]_i_1_n_6 ;
  wire \lat_live_cnt_reg[23]_i_1_n_7 ;
  wire \lat_live_cnt_reg[23]_i_1_n_8 ;
  wire \lat_live_cnt_reg[23]_i_1_n_9 ;
  wire \lat_live_cnt_reg[31]_i_2_n_1 ;
  wire \lat_live_cnt_reg[31]_i_2_n_10 ;
  wire \lat_live_cnt_reg[31]_i_2_n_11 ;
  wire \lat_live_cnt_reg[31]_i_2_n_12 ;
  wire \lat_live_cnt_reg[31]_i_2_n_13 ;
  wire \lat_live_cnt_reg[31]_i_2_n_14 ;
  wire \lat_live_cnt_reg[31]_i_2_n_15 ;
  wire \lat_live_cnt_reg[31]_i_2_n_2 ;
  wire \lat_live_cnt_reg[31]_i_2_n_3 ;
  wire \lat_live_cnt_reg[31]_i_2_n_4 ;
  wire \lat_live_cnt_reg[31]_i_2_n_5 ;
  wire \lat_live_cnt_reg[31]_i_2_n_6 ;
  wire \lat_live_cnt_reg[31]_i_2_n_7 ;
  wire \lat_live_cnt_reg[31]_i_2_n_8 ;
  wire \lat_live_cnt_reg[31]_i_2_n_9 ;
  wire \lat_live_cnt_reg[7]_i_1_n_0 ;
  wire \lat_live_cnt_reg[7]_i_1_n_1 ;
  wire \lat_live_cnt_reg[7]_i_1_n_10 ;
  wire \lat_live_cnt_reg[7]_i_1_n_11 ;
  wire \lat_live_cnt_reg[7]_i_1_n_12 ;
  wire \lat_live_cnt_reg[7]_i_1_n_13 ;
  wire \lat_live_cnt_reg[7]_i_1_n_14 ;
  wire \lat_live_cnt_reg[7]_i_1_n_15 ;
  wire \lat_live_cnt_reg[7]_i_1_n_2 ;
  wire \lat_live_cnt_reg[7]_i_1_n_3 ;
  wire \lat_live_cnt_reg[7]_i_1_n_4 ;
  wire \lat_live_cnt_reg[7]_i_1_n_5 ;
  wire \lat_live_cnt_reg[7]_i_1_n_6 ;
  wire \lat_live_cnt_reg[7]_i_1_n_7 ;
  wire \lat_live_cnt_reg[7]_i_1_n_8 ;
  wire \lat_live_cnt_reg[7]_i_1_n_9 ;
  wire \lat_push_cnt[31]_i_1_n_0 ;
  wire \lat_push_cnt[7]_i_2_n_0 ;
  wire \lat_push_cnt_reg[15]_i_1_n_0 ;
  wire \lat_push_cnt_reg[15]_i_1_n_1 ;
  wire \lat_push_cnt_reg[15]_i_1_n_10 ;
  wire \lat_push_cnt_reg[15]_i_1_n_11 ;
  wire \lat_push_cnt_reg[15]_i_1_n_12 ;
  wire \lat_push_cnt_reg[15]_i_1_n_13 ;
  wire \lat_push_cnt_reg[15]_i_1_n_14 ;
  wire \lat_push_cnt_reg[15]_i_1_n_15 ;
  wire \lat_push_cnt_reg[15]_i_1_n_2 ;
  wire \lat_push_cnt_reg[15]_i_1_n_3 ;
  wire \lat_push_cnt_reg[15]_i_1_n_4 ;
  wire \lat_push_cnt_reg[15]_i_1_n_5 ;
  wire \lat_push_cnt_reg[15]_i_1_n_6 ;
  wire \lat_push_cnt_reg[15]_i_1_n_7 ;
  wire \lat_push_cnt_reg[15]_i_1_n_8 ;
  wire \lat_push_cnt_reg[15]_i_1_n_9 ;
  wire \lat_push_cnt_reg[23]_i_1_n_0 ;
  wire \lat_push_cnt_reg[23]_i_1_n_1 ;
  wire \lat_push_cnt_reg[23]_i_1_n_10 ;
  wire \lat_push_cnt_reg[23]_i_1_n_11 ;
  wire \lat_push_cnt_reg[23]_i_1_n_12 ;
  wire \lat_push_cnt_reg[23]_i_1_n_13 ;
  wire \lat_push_cnt_reg[23]_i_1_n_14 ;
  wire \lat_push_cnt_reg[23]_i_1_n_15 ;
  wire \lat_push_cnt_reg[23]_i_1_n_2 ;
  wire \lat_push_cnt_reg[23]_i_1_n_3 ;
  wire \lat_push_cnt_reg[23]_i_1_n_4 ;
  wire \lat_push_cnt_reg[23]_i_1_n_5 ;
  wire \lat_push_cnt_reg[23]_i_1_n_6 ;
  wire \lat_push_cnt_reg[23]_i_1_n_7 ;
  wire \lat_push_cnt_reg[23]_i_1_n_8 ;
  wire \lat_push_cnt_reg[23]_i_1_n_9 ;
  wire \lat_push_cnt_reg[31]_i_2_n_1 ;
  wire \lat_push_cnt_reg[31]_i_2_n_10 ;
  wire \lat_push_cnt_reg[31]_i_2_n_11 ;
  wire \lat_push_cnt_reg[31]_i_2_n_12 ;
  wire \lat_push_cnt_reg[31]_i_2_n_13 ;
  wire \lat_push_cnt_reg[31]_i_2_n_14 ;
  wire \lat_push_cnt_reg[31]_i_2_n_15 ;
  wire \lat_push_cnt_reg[31]_i_2_n_2 ;
  wire \lat_push_cnt_reg[31]_i_2_n_3 ;
  wire \lat_push_cnt_reg[31]_i_2_n_4 ;
  wire \lat_push_cnt_reg[31]_i_2_n_5 ;
  wire \lat_push_cnt_reg[31]_i_2_n_6 ;
  wire \lat_push_cnt_reg[31]_i_2_n_7 ;
  wire \lat_push_cnt_reg[31]_i_2_n_8 ;
  wire \lat_push_cnt_reg[31]_i_2_n_9 ;
  wire \lat_push_cnt_reg[7]_i_1_n_0 ;
  wire \lat_push_cnt_reg[7]_i_1_n_1 ;
  wire \lat_push_cnt_reg[7]_i_1_n_10 ;
  wire \lat_push_cnt_reg[7]_i_1_n_11 ;
  wire \lat_push_cnt_reg[7]_i_1_n_12 ;
  wire \lat_push_cnt_reg[7]_i_1_n_13 ;
  wire \lat_push_cnt_reg[7]_i_1_n_14 ;
  wire \lat_push_cnt_reg[7]_i_1_n_15 ;
  wire \lat_push_cnt_reg[7]_i_1_n_2 ;
  wire \lat_push_cnt_reg[7]_i_1_n_3 ;
  wire \lat_push_cnt_reg[7]_i_1_n_4 ;
  wire \lat_push_cnt_reg[7]_i_1_n_5 ;
  wire \lat_push_cnt_reg[7]_i_1_n_6 ;
  wire \lat_push_cnt_reg[7]_i_1_n_7 ;
  wire \lat_push_cnt_reg[7]_i_1_n_8 ;
  wire \lat_push_cnt_reg[7]_i_1_n_9 ;
  wire [1:1]m_pass_w;
  wire [11:0]obs_active;
  wire [11:0]obs_busy;
  wire [59:0]obs_cid;
  wire [11:0]obs_defect;
  wire [12:0]obs_ecorr;
  wire [11:0]obs_grown;
  wire [25:0]obs_growth;
  wire [35:0]obs_ptr;
  wire [11:0]obs_unrooted;
  wire [11:0]obs_whole;
  wire [2:0]p_0_in11_in;
  wire p_0_in23_in;
  wire p_0_in24_in;
  wire [2:0]p_0_in3_in;
  wire [2:0]p_0_in4_in;
  wire p_0_in61_in;
  wire p_0_in63_in;
  wire p_0_in64_in;
  wire p_0_in65_in;
  wire [2:0]p_0_in6_in;
  wire p_1_in;
  wire p_6_in;
  wire p_7_in;
  wire p_8_in;
  wire [1:0]phase;
  wire \phase[1]_i_1_n_0 ;
  wire \phase[1]_i_2_n_0 ;
  wire \phase[1]_rep_i_1_n_0 ;
  wire \phase_reg[0]_rep_n_0 ;
  wire \phase_reg[1]_rep_n_0 ;
  wire reset;
  wire [14:0]\slot_nxt[0] ;
  wire [14:0]\slot_nxt[1] ;
  wire [14:0]\slot_nxt[2] ;
  wire [14:0]\slot_nxt[3] ;
  wire [2:0]stage__0;
  wire [2:0]stage__1;
  wire [1:1]stage_reg;
  wire start;
  wire [7:0]step_cnt;
  wire \step_cnt[4]_i_2_n_0 ;
  wire \step_cnt[5]_i_2_n_0 ;
  wire \step_cnt[7]_i_1_n_0 ;
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
  wire syn_bit0;
  wire \syn_buf[1]_i_1_n_0 ;
  wire \syn_buf_reg_n_0_[0] ;
  wire \syn_buf_reg_n_0_[1] ;
  wire [1:0]syndrome;
  wire \NLW_g_slot[0].pe_i_o_busy_c_UNCONNECTED ;
  wire \NLW_g_slot[0].pe_i_o_pulse_UNCONNECTED ;
  wire [3:0]\NLW_g_slot[0].pe_i_o_push_UNCONNECTED ;
  wire \NLW_g_slot[1].pe_i_o_busy_c_UNCONNECTED ;
  wire \NLW_g_slot[1].pe_i_o_pulse_UNCONNECTED ;
  wire [3:0]\NLW_g_slot[1].pe_i_o_push_UNCONNECTED ;
  wire \NLW_g_slot[2].pe_i_o_busy_c_UNCONNECTED ;
  wire \NLW_g_slot[2].pe_i_o_pulse_UNCONNECTED ;
  wire [3:0]\NLW_g_slot[2].pe_i_o_push_UNCONNECTED ;
  wire \NLW_g_slot[3].pe_i_o_busy_c_UNCONNECTED ;
  wire \NLW_g_slot[3].pe_i_o_pulse_UNCONNECTED ;
  wire [3:0]\NLW_g_slot[3].pe_i_o_push_UNCONNECTED ;
  wire [7:7]\NLW_lat_live_cnt_reg[31]_i_2_CO_UNCONNECTED ;
  wire [7:7]\NLW_lat_push_cnt_reg[31]_i_2_CO_UNCONNECTED ;

  assign lat_push_cnt[31:0] = lat_flip_cnt;
  (* SOFT_HLUTNM = "soft_lutpair161" *) 
  LUT3 #(
    .INIT(8'h62)) 
    \FSM_sequential_stage[0]_i_1 
       (.I0(stage__0[2]),
        .I1(stage__0[0]),
        .I2(stage__0[1]),
        .O(stage__1[0]));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT4 #(
    .INIT(16'h0155)) 
    \FSM_sequential_stage[1]_i_1 
       (.I0(stage__0[1]),
        .I1(stage__0[2]),
        .I2(all_busy_INST_0_i_1_n_0),
        .I3(stage__0[0]),
        .O(\FSM_sequential_stage[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBB32BB3232FF32AA)) 
    \FSM_sequential_stage[2]_i_1 
       (.I0(stage__0[1]),
        .I1(\FSM_sequential_stage[2]_i_3_n_0 ),
        .I2(all_busy_INST_0_i_1_n_0),
        .I3(stage__0[2]),
        .I4(start),
        .I5(stage__0[0]),
        .O(\FSM_sequential_stage[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair160" *) 
  LUT3 #(
    .INIT(8'h49)) 
    \FSM_sequential_stage[2]_i_2 
       (.I0(stage__0[1]),
        .I1(stage__0[2]),
        .I2(stage__0[0]),
        .O(stage__1[2]));
  LUT6 #(
    .INIT(64'hFFFFFFFF0014FFFF)) 
    \FSM_sequential_stage[2]_i_3 
       (.I0(stage__0[1]),
        .I1(stage__0[2]),
        .I2(stage__0[0]),
        .I3(lat_bpass),
        .I4(phase[1]),
        .I5(phase[0]),
        .O(\FSM_sequential_stage[2]_i_3_n_0 ));
  (* FSM_ENCODED_STATES = "ST_DROP:110,ST_GW:101,ST_MW:100,ST_GH:011,ST_MH:001,ST_IDLE:000,iSTATE:010" *) 
  FDRE \FSM_sequential_stage_reg[0] 
       (.C(clk),
        .CE(\FSM_sequential_stage[2]_i_1_n_0 ),
        .D(stage__1[0]),
        .Q(stage__0[0]),
        .R(reset));
  (* FSM_ENCODED_STATES = "ST_DROP:110,ST_GW:101,ST_MW:100,ST_GH:011,ST_MH:001,ST_IDLE:000,iSTATE:010" *) 
  FDRE \FSM_sequential_stage_reg[1] 
       (.C(clk),
        .CE(\FSM_sequential_stage[2]_i_1_n_0 ),
        .D(\FSM_sequential_stage[1]_i_1_n_0 ),
        .Q(stage__0[1]),
        .R(reset));
  (* FSM_ENCODED_STATES = "ST_DROP:110,ST_GW:101,ST_MW:100,ST_GH:011,ST_MH:001,ST_IDLE:000,iSTATE:010" *) 
  FDRE \FSM_sequential_stage_reg[2] 
       (.C(clk),
        .CE(\FSM_sequential_stage[2]_i_1_n_0 ),
        .D(stage__1[2]),
        .Q(stage__0[2]),
        .R(reset));
  LUT1 #(
    .INIT(2'h1)) 
    all_busy_INST_0
       (.I0(all_busy_INST_0_i_1_n_0),
        .O(all_busy));
  LUT6 #(
    .INIT(64'h4445004004000000)) 
    all_busy_INST_0_i_1
       (.I0(all_busy_INST_0_i_2_n_0),
        .I1(all_busy_INST_0_i_3_n_0),
        .I2(phase[1]),
        .I3(phase[0]),
        .I4(all_busy_INST_0_i_4_n_0),
        .I5(all_busy_INST_0_i_5_n_0),
        .O(all_busy_INST_0_i_1_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    all_busy_INST_0_i_2
       (.I0(\slot_nxt[0] [0]),
        .I1(\slot_nxt[3] [0]),
        .I2(\slot_nxt[1] [0]),
        .I3(\slot_nxt[2] [0]),
        .O(all_busy_INST_0_i_2_n_0));
  LUT5 #(
    .INIT(32'h00000001)) 
    all_busy_INST_0_i_3
       (.I0(\g_slot[0].bshB_reg[0] [0]),
        .I1(\g_slot[2].bshB_reg[2] [0]),
        .I2(\g_slot[1].bshA_reg[1] [0]),
        .I3(\g_slot[3].bshA_reg[3] [0]),
        .I4(all_busy_INST_0_i_6_n_0),
        .O(all_busy_INST_0_i_3_n_0));
  LUT5 #(
    .INIT(32'h00000001)) 
    all_busy_INST_0_i_4
       (.I0(\g_slot[0].bshB_reg[0] [2]),
        .I1(\g_slot[2].bshB_reg[2] [2]),
        .I2(\g_slot[1].bshA_reg[1] [2]),
        .I3(\g_slot[3].bshA_reg[3] [2]),
        .I4(all_busy_INST_0_i_7_n_0),
        .O(all_busy_INST_0_i_4_n_0));
  LUT5 #(
    .INIT(32'h00000001)) 
    all_busy_INST_0_i_5
       (.I0(\g_slot[0].bshB_reg[0] [1]),
        .I1(\g_slot[2].bshB_reg[2] [1]),
        .I2(\g_slot[1].bshA_reg[1] [1]),
        .I3(\g_slot[3].bshA_reg[3] [1]),
        .I4(all_busy_INST_0_i_8_n_0),
        .O(all_busy_INST_0_i_5_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    all_busy_INST_0_i_6
       (.I0(\g_slot[3].bshB_reg[3] [0]),
        .I1(\g_slot[1].bshB_reg[1] [0]),
        .I2(\g_slot[2].bshA_reg[2] [0]),
        .I3(\g_slot[0].bshA_reg[0] [0]),
        .O(all_busy_INST_0_i_6_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    all_busy_INST_0_i_7
       (.I0(\g_slot[3].bshB_reg[3] [2]),
        .I1(\g_slot[1].bshB_reg[1] [2]),
        .I2(\g_slot[2].bshA_reg[2] [2]),
        .I3(\g_slot[0].bshA_reg[0] [2]),
        .O(all_busy_INST_0_i_7_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    all_busy_INST_0_i_8
       (.I0(\g_slot[3].bshB_reg[3] [1]),
        .I1(\g_slot[1].bshB_reg[1] [1]),
        .I2(\g_slot[2].bshA_reg[2] [1]),
        .I3(\g_slot[0].bshA_reg[0] [1]),
        .O(all_busy_INST_0_i_8_n_0));
  LUT6 #(
    .INIT(64'h1110101011111110)) 
    \commit_hold[4]_i_1 
       (.I0(phase[1]),
        .I1(phase[0]),
        .I2(stage__0[1]),
        .I3(stage__0[2]),
        .I4(stage__0[0]),
        .I5(lat_bpass),
        .O(commit_hold0));
  FDRE \commit_hold_reg[0] 
       (.C(clk),
        .CE(commit_hold0),
        .D(obs_ecorr[2]),
        .Q(commit_hold[0]),
        .R(reset));
  FDRE \commit_hold_reg[1] 
       (.C(clk),
        .CE(commit_hold0),
        .D(obs_ecorr[9]),
        .Q(commit_hold[1]),
        .R(reset));
  FDRE \commit_hold_reg[2] 
       (.C(clk),
        .CE(commit_hold0),
        .D(obs_ecorr[10]),
        .Q(commit_hold[2]),
        .R(reset));
  FDRE \commit_hold_reg[3] 
       (.C(clk),
        .CE(commit_hold0),
        .D(obs_ecorr[11]),
        .Q(commit_hold[3]),
        .R(reset));
  FDRE \commit_hold_reg[4] 
       (.C(clk),
        .CE(commit_hold0),
        .D(obs_ecorr[12]),
        .Q(commit_hold[4]),
        .R(reset));
  LUT5 #(
    .INIT(32'hFFFFFDFF)) 
    \commit_onehot[4]_i_1 
       (.I0(stage__0[1]),
        .I1(done_i_2_n_0),
        .I2(reset),
        .I3(stage__0[2]),
        .I4(stage__0[0]),
        .O(\commit_onehot[4]_i_1_n_0 ));
  FDRE \commit_onehot_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(commit_hold[0]),
        .Q(commit_onehot[0]),
        .R(\commit_onehot[4]_i_1_n_0 ));
  FDRE \commit_onehot_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(commit_hold[1]),
        .Q(commit_onehot[1]),
        .R(\commit_onehot[4]_i_1_n_0 ));
  FDRE \commit_onehot_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(commit_hold[2]),
        .Q(commit_onehot[2]),
        .R(\commit_onehot[4]_i_1_n_0 ));
  FDRE \commit_onehot_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(commit_hold[3]),
        .Q(commit_onehot[3]),
        .R(\commit_onehot[4]_i_1_n_0 ));
  FDRE \commit_onehot_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(commit_hold[4]),
        .Q(commit_onehot[4]),
        .R(\commit_onehot[4]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h56)) 
    \dbg_stage[0]_i_1 
       (.I0(stage__0[0]),
        .I1(stage__0[2]),
        .I2(stage__0[1]),
        .O(\dbg_stage[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair160" *) 
  LUT3 #(
    .INIT(8'h1C)) 
    \dbg_stage[1]_i_1 
       (.I0(stage__0[0]),
        .I1(stage__0[2]),
        .I2(stage__0[1]),
        .O(stage_reg));
  (* SOFT_HLUTNM = "soft_lutpair162" *) 
  LUT3 #(
    .INIT(8'h54)) 
    \dbg_stage[2]_i_1 
       (.I0(stage__0[2]),
        .I1(stage__0[0]),
        .I2(stage__0[1]),
        .O(\dbg_stage[2]_i_1_n_0 ));
  FDRE \dbg_stage_reg[0] 
       (.C(clk),
        .CE(\g_eslot[0].eown [7]),
        .D(\dbg_stage[0]_i_1_n_0 ),
        .Q(dbg_stage[0]),
        .R(reset));
  FDRE \dbg_stage_reg[1] 
       (.C(clk),
        .CE(\g_eslot[0].eown [7]),
        .D(stage_reg),
        .Q(dbg_stage[1]),
        .R(reset));
  FDRE \dbg_stage_reg[2] 
       (.C(clk),
        .CE(\g_eslot[0].eown [7]),
        .D(\dbg_stage[2]_i_1_n_0 ),
        .Q(dbg_stage[2]),
        .R(reset));
  FDRE \dbg_step_reg[0] 
       (.C(clk),
        .CE(\g_eslot[0].eown [7]),
        .D(\step_cnt_reg_n_0_[0] ),
        .Q(dbg_step[0]),
        .R(reset));
  FDRE \dbg_step_reg[1] 
       (.C(clk),
        .CE(\g_eslot[0].eown [7]),
        .D(\step_cnt_reg_n_0_[1] ),
        .Q(dbg_step[1]),
        .R(reset));
  FDRE \dbg_step_reg[2] 
       (.C(clk),
        .CE(\g_eslot[0].eown [7]),
        .D(\step_cnt_reg_n_0_[2] ),
        .Q(dbg_step[2]),
        .R(reset));
  FDRE \dbg_step_reg[3] 
       (.C(clk),
        .CE(\g_eslot[0].eown [7]),
        .D(\step_cnt_reg_n_0_[3] ),
        .Q(dbg_step[3]),
        .R(reset));
  FDRE \dbg_step_reg[4] 
       (.C(clk),
        .CE(\g_eslot[0].eown [7]),
        .D(\step_cnt_reg_n_0_[4] ),
        .Q(dbg_step[4]),
        .R(reset));
  FDRE \dbg_step_reg[5] 
       (.C(clk),
        .CE(\g_eslot[0].eown [7]),
        .D(\step_cnt_reg_n_0_[5] ),
        .Q(dbg_step[5]),
        .R(reset));
  FDRE \dbg_step_reg[6] 
       (.C(clk),
        .CE(\g_eslot[0].eown [7]),
        .D(\step_cnt_reg_n_0_[6] ),
        .Q(dbg_step[6]),
        .R(reset));
  FDRE \dbg_step_reg[7] 
       (.C(clk),
        .CE(\g_eslot[0].eown [7]),
        .D(\step_cnt_reg_n_0_[7] ),
        .Q(dbg_step[7]),
        .R(reset));
  FDRE dbg_valid_reg
       (.C(clk),
        .CE(1'b1),
        .D(\g_eslot[0].eown [7]),
        .Q(dbg_valid),
        .R(reset));
  LUT6 #(
    .INIT(64'h0000000000002000)) 
    done_i_1
       (.I0(all_busy_INST_0_i_1_n_0),
        .I1(done_i_2_n_0),
        .I2(lat_bpass),
        .I3(stage__0[0]),
        .I4(stage__0[2]),
        .I5(stage__0[1]),
        .O(done_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT2 #(
    .INIT(4'hB)) 
    done_i_2
       (.I0(phase[0]),
        .I1(phase[1]),
        .O(done_i_2_n_0));
  FDRE done_reg
       (.C(clk),
        .CE(1'b1),
        .D(done_i_1_n_0),
        .Q(done),
        .R(reset));
  (* ST_DROP = "3'b001" *) 
  (* ST_GH = "3'b100" *) 
  (* ST_GW = "3'b010" *) 
  (* ST_MH = "3'b101" *) 
  (* ST_MW = "3'b011" *) 
  (* ZZZ_ANCHOR = "0" *) 
  snowflake_edge__1 \g_eslot[0].ed_i 
       (.above_ecorr(\g_eslot[0].ab_state [2]),
        .above_growth(\g_eslot[0].ab_state [1:0]),
        .clk(1'b0),
        .flip_u(\g_eslot[0].umir ),
        .flip_v(\g_slot[0].nb_push0 ),
        .reset(reset),
        .st_in(\g_eslot[0].my_state ),
        .st_out(\eslot_nxt[0] ),
        .stage({\dbg_stage[2]_i_1_n_0 ,stage_reg,\dbg_stage[0]_i_1_n_0 }),
        .u_pulse(\g_eslot[0].upulse ),
        .v_pulse(\g_eslot[1].upulse ));
  LUT6 #(
    .INIT(64'h0000000003400000)) 
    \g_eslot[0].ed_i_i_1 
       (.I0(\g_slot[1].nb_grown [0]),
        .I1(\g_eslot[0].ed_i_i_9_n_0 ),
        .I2(stage__0[1]),
        .I3(stage__0[2]),
        .I4(stage__0[0]),
        .I5(\g_eslot[0].ed_i_i_10_n_0 ),
        .O(\g_eslot[0].upulse ));
  (* SOFT_HLUTNM = "soft_lutpair118" *) 
  LUT5 #(
    .INIT(32'hCF44CF77)) 
    \g_eslot[0].ed_i_i_10 
       (.I0(obs_active[2]),
        .I1(\phase_reg[0]_rep_n_0 ),
        .I2(obs_active[0]),
        .I3(phase[1]),
        .I4(obs_active[4]),
        .O(\g_eslot[0].ed_i_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT5 #(
    .INIT(32'hF053FF53)) 
    \g_eslot[0].ed_i_i_11 
       (.I0(obs_whole[8]),
        .I1(obs_whole[10]),
        .I2(phase[0]),
        .I3(phase[1]),
        .I4(obs_whole[6]),
        .O(\g_eslot[0].ed_i_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT5 #(
    .INIT(32'hF530F53F)) 
    \g_eslot[0].ed_i_i_12 
       (.I0(obs_active[6]),
        .I1(obs_active[8]),
        .I2(phase[0]),
        .I3(phase[1]),
        .I4(obs_active[10]),
        .O(\g_eslot[0].ed_i_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h0000000003400000)) 
    \g_eslot[0].ed_i_i_2 
       (.I0(\g_slot[2].nb_grown [0]),
        .I1(\g_eslot[0].ed_i_i_11_n_0 ),
        .I2(stage__0[1]),
        .I3(stage__0[2]),
        .I4(stage__0[0]),
        .I5(\g_eslot[0].ed_i_i_12_n_0 ),
        .O(\g_eslot[1].upulse ));
  (* SOFT_HLUTNM = "soft_lutpair153" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \g_eslot[0].ed_i_i_3 
       (.I0(obs_growth[3]),
        .I1(\phase_reg[0]_rep_n_0 ),
        .I2(obs_growth[1]),
        .I3(\phase_reg[1]_rep_n_0 ),
        .O(\g_eslot[0].ab_state [1]));
  (* SOFT_HLUTNM = "soft_lutpair154" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \g_eslot[0].ed_i_i_4 
       (.I0(obs_growth[2]),
        .I1(\phase_reg[0]_rep_n_0 ),
        .I2(obs_growth[0]),
        .I3(\phase_reg[1]_rep_n_0 ),
        .O(\g_eslot[0].ab_state [0]));
  (* SOFT_HLUTNM = "soft_lutpair152" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \g_eslot[0].ed_i_i_5 
       (.I0(obs_ecorr[1]),
        .I1(\phase_reg[0]_rep_n_0 ),
        .I2(obs_ecorr[0]),
        .I3(\phase_reg[1]_rep_n_0 ),
        .O(\g_eslot[0].ab_state [2]));
  (* SOFT_HLUTNM = "soft_lutpair152" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \g_eslot[0].ed_i_i_6 
       (.I0(obs_ecorr[1]),
        .I1(\phase_reg[0]_rep_n_0 ),
        .I2(obs_ecorr[0]),
        .I3(\phase_reg[1]_rep_n_0 ),
        .I4(obs_ecorr[2]),
        .O(\g_eslot[0].my_state [2]));
  (* SOFT_HLUTNM = "soft_lutpair153" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \g_eslot[0].ed_i_i_7 
       (.I0(obs_growth[3]),
        .I1(\phase_reg[0]_rep_n_0 ),
        .I2(obs_growth[1]),
        .I3(\phase_reg[1]_rep_n_0 ),
        .I4(obs_growth[5]),
        .O(\g_eslot[0].my_state [1]));
  (* SOFT_HLUTNM = "soft_lutpair154" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \g_eslot[0].ed_i_i_8 
       (.I0(obs_growth[2]),
        .I1(\phase_reg[0]_rep_n_0 ),
        .I2(obs_growth[0]),
        .I3(\phase_reg[1]_rep_n_0 ),
        .I4(obs_growth[4]),
        .O(\g_eslot[0].my_state [0]));
  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT5 #(
    .INIT(32'hCF44CF77)) 
    \g_eslot[0].ed_i_i_9 
       (.I0(obs_whole[2]),
        .I1(\phase_reg[0]_rep_n_0 ),
        .I2(obs_whole[0]),
        .I3(phase[1]),
        .I4(obs_whole[4]),
        .O(\g_eslot[0].ed_i_i_9_n_0 ));
  FDRE \g_eslot[0].eown_reg[0] 
       (.C(clk),
        .CE(\g_eslot[0].eown [1]),
        .D(\eslot_nxt[0] [0]),
        .Q(obs_growth[4]),
        .R(reset));
  FDRE \g_eslot[0].eown_reg[1] 
       (.C(clk),
        .CE(\g_eslot[0].eown [1]),
        .D(\eslot_nxt[0] [1]),
        .Q(obs_growth[5]),
        .R(reset));
  FDRE \g_eslot[0].eown_reg[2] 
       (.C(clk),
        .CE(\g_eslot[0].eown [1]),
        .D(\eslot_nxt[0] [2]),
        .Q(obs_ecorr[2]),
        .R(reset));
  FDRE \g_eslot[0].eown_reg[3] 
       (.C(clk),
        .CE(\g_eslot[0].eown [4]),
        .D(\eslot_nxt[0] [0]),
        .Q(obs_growth[2]),
        .R(reset));
  FDRE \g_eslot[0].eown_reg[4] 
       (.C(clk),
        .CE(\g_eslot[0].eown [4]),
        .D(\eslot_nxt[0] [1]),
        .Q(obs_growth[3]),
        .R(reset));
  FDRE \g_eslot[0].eown_reg[5] 
       (.C(clk),
        .CE(\g_eslot[0].eown [4]),
        .D(\eslot_nxt[0] [2]),
        .Q(obs_ecorr[1]),
        .R(reset));
  FDRE \g_eslot[0].eown_reg[6] 
       (.C(clk),
        .CE(\g_eslot[0].eown [7]),
        .D(\eslot_nxt[0] [0]),
        .Q(obs_growth[0]),
        .R(reset));
  FDRE \g_eslot[0].eown_reg[7] 
       (.C(clk),
        .CE(\g_eslot[0].eown [7]),
        .D(\eslot_nxt[0] [1]),
        .Q(obs_growth[1]),
        .R(reset));
  FDRE \g_eslot[0].eown_reg[8] 
       (.C(clk),
        .CE(\g_eslot[0].eown [7]),
        .D(\eslot_nxt[0] [2]),
        .Q(obs_ecorr[0]),
        .R(reset));
  (* ST_DROP = "3'b001" *) 
  (* ST_GH = "3'b100" *) 
  (* ST_GW = "3'b010" *) 
  (* ST_MH = "3'b101" *) 
  (* ST_MW = "3'b011" *) 
  (* ZZZ_ANCHOR = "0" *) 
  snowflake_edge__2 \g_eslot[1].ed_i 
       (.above_ecorr(\g_eslot[1].ab_state [2]),
        .above_growth(\g_eslot[1].ab_state [1:0]),
        .clk(1'b0),
        .flip_u(\g_slot[2].nb_push [0]),
        .flip_v(\g_slot[1].nb_push [1]),
        .reset(reset),
        .st_in(\g_eslot[1].my_state ),
        .st_out(\eslot_nxt[1] ),
        .stage({\dbg_stage[2]_i_1_n_0 ,stage_reg,\dbg_stage[0]_i_1_n_0 }),
        .u_pulse(\g_eslot[1].upulse ),
        .v_pulse(\g_eslot[2].upulse ));
  LUT6 #(
    .INIT(64'h0000000003400000)) 
    \g_eslot[1].ed_i_i_1 
       (.I0(\g_slot[1].nb_grown [1]),
        .I1(\g_eslot[1].ed_i_i_8_n_0 ),
        .I2(stage__0[1]),
        .I3(stage__0[2]),
        .I4(stage__0[0]),
        .I5(\g_eslot[1].ed_i_i_9_n_0 ),
        .O(\g_eslot[2].upulse ));
  (* SOFT_HLUTNM = "soft_lutpair150" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \g_eslot[1].ed_i_i_2 
       (.I0(obs_growth[13]),
        .I1(\phase_reg[0]_rep_n_0 ),
        .I2(obs_growth[7]),
        .I3(\phase_reg[1]_rep_n_0 ),
        .O(\g_eslot[1].ab_state [1]));
  (* SOFT_HLUTNM = "soft_lutpair151" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \g_eslot[1].ed_i_i_3 
       (.I0(obs_growth[12]),
        .I1(\phase_reg[0]_rep_n_0 ),
        .I2(obs_growth[6]),
        .I3(\phase_reg[1]_rep_n_0 ),
        .O(\g_eslot[1].ab_state [0]));
  (* SOFT_HLUTNM = "soft_lutpair149" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \g_eslot[1].ed_i_i_4 
       (.I0(obs_ecorr[6]),
        .I1(\phase_reg[0]_rep_n_0 ),
        .I2(obs_ecorr[3]),
        .I3(\phase_reg[1]_rep_n_0 ),
        .O(\g_eslot[1].ab_state [2]));
  (* SOFT_HLUTNM = "soft_lutpair149" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \g_eslot[1].ed_i_i_5 
       (.I0(obs_ecorr[6]),
        .I1(\phase_reg[0]_rep_n_0 ),
        .I2(obs_ecorr[3]),
        .I3(\phase_reg[1]_rep_n_0 ),
        .I4(obs_ecorr[10]),
        .O(\g_eslot[1].my_state [2]));
  (* SOFT_HLUTNM = "soft_lutpair150" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \g_eslot[1].ed_i_i_6 
       (.I0(obs_growth[13]),
        .I1(\phase_reg[0]_rep_n_0 ),
        .I2(obs_growth[7]),
        .I3(\phase_reg[1]_rep_n_0 ),
        .I4(obs_growth[21]),
        .O(\g_eslot[1].my_state [1]));
  (* SOFT_HLUTNM = "soft_lutpair151" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \g_eslot[1].ed_i_i_7 
       (.I0(obs_growth[12]),
        .I1(\phase_reg[0]_rep_n_0 ),
        .I2(obs_growth[6]),
        .I3(\phase_reg[1]_rep_n_0 ),
        .I4(obs_growth[20]),
        .O(\g_eslot[1].my_state [0]));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT5 #(
    .INIT(32'hF530F53F)) 
    \g_eslot[1].ed_i_i_8 
       (.I0(obs_whole[7]),
        .I1(obs_whole[9]),
        .I2(phase[0]),
        .I3(phase[1]),
        .I4(obs_whole[11]),
        .O(\g_eslot[1].ed_i_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT5 #(
    .INIT(32'hF530F53F)) 
    \g_eslot[1].ed_i_i_9 
       (.I0(obs_active[7]),
        .I1(obs_active[9]),
        .I2(phase[0]),
        .I3(phase[1]),
        .I4(obs_active[11]),
        .O(\g_eslot[1].ed_i_i_9_n_0 ));
  FDRE \g_eslot[1].eown_reg[0] 
       (.C(clk),
        .CE(\g_eslot[0].eown [1]),
        .D(\eslot_nxt[1] [0]),
        .Q(obs_growth[20]),
        .R(reset));
  FDRE \g_eslot[1].eown_reg[1] 
       (.C(clk),
        .CE(\g_eslot[0].eown [1]),
        .D(\eslot_nxt[1] [1]),
        .Q(obs_growth[21]),
        .R(reset));
  FDRE \g_eslot[1].eown_reg[2] 
       (.C(clk),
        .CE(\g_eslot[0].eown [1]),
        .D(\eslot_nxt[1] [2]),
        .Q(obs_ecorr[10]),
        .R(reset));
  FDRE \g_eslot[1].eown_reg[3] 
       (.C(clk),
        .CE(\g_eslot[0].eown [4]),
        .D(\eslot_nxt[1] [0]),
        .Q(obs_growth[12]),
        .R(reset));
  FDRE \g_eslot[1].eown_reg[4] 
       (.C(clk),
        .CE(\g_eslot[0].eown [4]),
        .D(\eslot_nxt[1] [1]),
        .Q(obs_growth[13]),
        .R(reset));
  FDRE \g_eslot[1].eown_reg[5] 
       (.C(clk),
        .CE(\g_eslot[0].eown [4]),
        .D(\eslot_nxt[1] [2]),
        .Q(obs_ecorr[6]),
        .R(reset));
  FDRE \g_eslot[1].eown_reg[6] 
       (.C(clk),
        .CE(\g_eslot[0].eown [7]),
        .D(\eslot_nxt[1] [0]),
        .Q(obs_growth[6]),
        .R(reset));
  FDRE \g_eslot[1].eown_reg[7] 
       (.C(clk),
        .CE(\g_eslot[0].eown [7]),
        .D(\eslot_nxt[1] [1]),
        .Q(obs_growth[7]),
        .R(reset));
  FDRE \g_eslot[1].eown_reg[8] 
       (.C(clk),
        .CE(\g_eslot[0].eown [7]),
        .D(\eslot_nxt[1] [2]),
        .Q(obs_ecorr[3]),
        .R(reset));
  (* ST_DROP = "3'b001" *) 
  (* ST_GH = "3'b100" *) 
  (* ST_GW = "3'b010" *) 
  (* ST_MH = "3'b101" *) 
  (* ST_MW = "3'b011" *) 
  (* ZZZ_ANCHOR = "0" *) 
  snowflake_edge__3 \g_eslot[2].ed_i 
       (.above_ecorr(\g_eslot[2].ab_state [2]),
        .above_growth(\g_eslot[2].ab_state [1:0]),
        .clk(1'b0),
        .flip_u(\g_slot[3].nb_push0 ),
        .flip_v(\g_eslot[2].vmir ),
        .reset(reset),
        .st_in(\g_eslot[2].my_state ),
        .st_out(\eslot_nxt[2] ),
        .stage({\dbg_stage[2]_i_1_n_0 ,stage_reg,\dbg_stage[0]_i_1_n_0 }),
        .u_pulse(\g_eslot[2].upulse ),
        .v_pulse(\g_eslot[2].vpulse ));
  LUT6 #(
    .INIT(64'h0000000003400000)) 
    \g_eslot[2].ed_i_i_1 
       (.I0(\g_slot[2].nb_grown [1]),
        .I1(\g_eslot[2].ed_i_i_8_n_0 ),
        .I2(stage__0[1]),
        .I3(stage__0[2]),
        .I4(stage__0[0]),
        .I5(\g_eslot[2].ed_i_i_9_n_0 ),
        .O(\g_eslot[2].vpulse ));
  (* SOFT_HLUTNM = "soft_lutpair147" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \g_eslot[2].ed_i_i_2 
       (.I0(obs_growth[15]),
        .I1(\phase_reg[0]_rep_n_0 ),
        .I2(obs_growth[9]),
        .I3(\phase_reg[1]_rep_n_0 ),
        .O(\g_eslot[2].ab_state [1]));
  (* SOFT_HLUTNM = "soft_lutpair148" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \g_eslot[2].ed_i_i_3 
       (.I0(obs_growth[14]),
        .I1(\phase_reg[0]_rep_n_0 ),
        .I2(obs_growth[8]),
        .I3(\phase_reg[1]_rep_n_0 ),
        .O(\g_eslot[2].ab_state [0]));
  (* SOFT_HLUTNM = "soft_lutpair146" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \g_eslot[2].ed_i_i_4 
       (.I0(obs_ecorr[7]),
        .I1(\phase_reg[0]_rep_n_0 ),
        .I2(obs_ecorr[4]),
        .I3(\phase_reg[1]_rep_n_0 ),
        .O(\g_eslot[2].ab_state [2]));
  (* SOFT_HLUTNM = "soft_lutpair146" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \g_eslot[2].ed_i_i_5 
       (.I0(obs_ecorr[7]),
        .I1(\phase_reg[0]_rep_n_0 ),
        .I2(obs_ecorr[4]),
        .I3(\phase_reg[1]_rep_n_0 ),
        .I4(obs_ecorr[11]),
        .O(\g_eslot[2].my_state [2]));
  (* SOFT_HLUTNM = "soft_lutpair147" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \g_eslot[2].ed_i_i_6 
       (.I0(obs_growth[15]),
        .I1(\phase_reg[0]_rep_n_0 ),
        .I2(obs_growth[9]),
        .I3(\phase_reg[1]_rep_n_0 ),
        .I4(obs_growth[23]),
        .O(\g_eslot[2].my_state [1]));
  (* SOFT_HLUTNM = "soft_lutpair148" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \g_eslot[2].ed_i_i_7 
       (.I0(obs_growth[14]),
        .I1(\phase_reg[0]_rep_n_0 ),
        .I2(obs_growth[8]),
        .I3(\phase_reg[1]_rep_n_0 ),
        .I4(obs_growth[22]),
        .O(\g_eslot[2].my_state [0]));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT5 #(
    .INIT(32'hCF44CF77)) 
    \g_eslot[2].ed_i_i_8 
       (.I0(obs_whole[3]),
        .I1(\phase_reg[0]_rep_n_0 ),
        .I2(obs_whole[1]),
        .I3(phase[1]),
        .I4(obs_whole[5]),
        .O(\g_eslot[2].ed_i_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT5 #(
    .INIT(32'hF530F53F)) 
    \g_eslot[2].ed_i_i_9 
       (.I0(obs_active[3]),
        .I1(obs_active[1]),
        .I2(phase[1]),
        .I3(phase[0]),
        .I4(obs_active[5]),
        .O(\g_eslot[2].ed_i_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h4444444044404040)) 
    \g_eslot[2].eown[7]_i_1 
       (.I0(\phase_reg[0]_rep_n_0 ),
        .I1(\phase_reg[1]_rep_n_0 ),
        .I2(stage__0[1]),
        .I3(stage__0[2]),
        .I4(stage__0[0]),
        .I5(lat_bpass),
        .O(\g_eslot[0].eown [7]));
  FDRE \g_eslot[2].eown_reg[0] 
       (.C(clk),
        .CE(\g_eslot[0].eown [1]),
        .D(\eslot_nxt[2] [0]),
        .Q(obs_growth[22]),
        .R(reset));
  FDRE \g_eslot[2].eown_reg[1] 
       (.C(clk),
        .CE(\g_eslot[0].eown [1]),
        .D(\eslot_nxt[2] [1]),
        .Q(obs_growth[23]),
        .R(reset));
  FDRE \g_eslot[2].eown_reg[2] 
       (.C(clk),
        .CE(\g_eslot[0].eown [1]),
        .D(\eslot_nxt[2] [2]),
        .Q(obs_ecorr[11]),
        .R(reset));
  FDRE \g_eslot[2].eown_reg[3] 
       (.C(clk),
        .CE(\g_eslot[0].eown [4]),
        .D(\eslot_nxt[2] [0]),
        .Q(obs_growth[14]),
        .R(reset));
  FDRE \g_eslot[2].eown_reg[4] 
       (.C(clk),
        .CE(\g_eslot[0].eown [4]),
        .D(\eslot_nxt[2] [1]),
        .Q(obs_growth[15]),
        .R(reset));
  FDRE \g_eslot[2].eown_reg[5] 
       (.C(clk),
        .CE(\g_eslot[0].eown [4]),
        .D(\eslot_nxt[2] [2]),
        .Q(obs_ecorr[7]),
        .R(reset));
  FDRE \g_eslot[2].eown_reg[6] 
       (.C(clk),
        .CE(\g_eslot[0].eown [7]),
        .D(\eslot_nxt[2] [0]),
        .Q(obs_growth[8]),
        .R(reset));
  FDRE \g_eslot[2].eown_reg[7] 
       (.C(clk),
        .CE(\g_eslot[0].eown [7]),
        .D(\eslot_nxt[2] [1]),
        .Q(obs_growth[9]),
        .R(reset));
  FDRE \g_eslot[2].eown_reg[8] 
       (.C(clk),
        .CE(\g_eslot[0].eown [7]),
        .D(\eslot_nxt[2] [2]),
        .Q(obs_ecorr[4]),
        .R(reset));
  (* ST_DROP = "3'b001" *) 
  (* ST_GH = "3'b100" *) 
  (* ST_GW = "3'b010" *) 
  (* ST_MH = "3'b101" *) 
  (* ST_MW = "3'b011" *) 
  (* ZZZ_ANCHOR = "0" *) 
  snowflake_edge__4 \g_eslot[3].ed_i 
       (.above_ecorr(\g_eslot[3].ab_state [2]),
        .above_growth(\g_eslot[3].ab_state [1:0]),
        .clk(1'b0),
        .flip_u(\g_eslot[3].umir ),
        .flip_v(\g_eslot[3].vmir ),
        .reset(reset),
        .st_in(\g_eslot[3].my_state ),
        .st_out(\eslot_nxt[3] ),
        .stage({\dbg_stage[2]_i_1_n_0 ,stage_reg,\dbg_stage[0]_i_1_n_0 }),
        .u_pulse(\g_eslot[3].upulse ),
        .v_pulse(\g_eslot[3].vpulse ));
  LUT6 #(
    .INIT(64'hE222E2220000E222)) 
    \g_eslot[3].ed_i_i_1 
       (.I0(\g_eslot[3].ed_i_i_11_n_0 ),
        .I1(\g_eslot[3].ed_i_i_12_n_0 ),
        .I2(\g_eslot[3].ed_i_i_13_n_0 ),
        .I3(\g_eslot[3].ed_i_i_14_n_0 ),
        .I4(\g_eslot[3].ed_i_i_15_n_0 ),
        .I5(\g_eslot[3].ed_i_i_16_n_0 ),
        .O(\g_eslot[3].upulse ));
  (* SOFT_HLUTNM = "soft_lutpair145" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \g_eslot[3].ed_i_i_10 
       (.I0(obs_growth[10]),
        .I1(\phase_reg[0]_rep_n_0 ),
        .I2(\g_eslot[3].eown [6]),
        .I3(\phase_reg[1]_rep_n_0 ),
        .I4(obs_growth[18]),
        .O(\g_eslot[3].my_state [0]));
  (* SOFT_HLUTNM = "soft_lutpair161" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \g_eslot[3].ed_i_i_11 
       (.I0(stage__0[0]),
        .I1(stage__0[2]),
        .I2(stage__0[1]),
        .O(\g_eslot[3].ed_i_i_11_n_0 ));
  LUT5 #(
    .INIT(32'hF053FF53)) 
    \g_eslot[3].ed_i_i_12 
       (.I0(obs_whole[8]),
        .I1(obs_whole[10]),
        .I2(phase[0]),
        .I3(phase[1]),
        .I4(\g_slot[0].omir_reg_n_0_[7] ),
        .O(\g_eslot[3].ed_i_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h4000404040404040)) 
    \g_eslot[3].ed_i_i_13 
       (.I0(stage__0[2]),
        .I1(stage__0[0]),
        .I2(stage__0[1]),
        .I3(phase[0]),
        .I4(phase[1]),
        .I5(\g_slot[0].omir_reg_n_0_[2] ),
        .O(\g_eslot[3].ed_i_i_13_n_0 ));
  LUT4 #(
    .INIT(16'hCDFD)) 
    \g_eslot[3].ed_i_i_14 
       (.I0(obs_grown[10]),
        .I1(\phase_reg[1]_rep_n_0 ),
        .I2(\phase_reg[0]_rep_n_0 ),
        .I3(obs_grown[8]),
        .O(\g_eslot[3].ed_i_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair157" *) 
  LUT4 #(
    .INIT(16'hCDFD)) 
    \g_eslot[3].ed_i_i_15 
       (.I0(obs_active[10]),
        .I1(\phase_reg[1]_rep_n_0 ),
        .I2(\phase_reg[0]_rep_n_0 ),
        .I3(obs_active[8]),
        .O(\g_eslot[3].ed_i_i_15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair156" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \g_eslot[3].ed_i_i_16 
       (.I0(\g_slot[0].omir_reg_n_0_[8] ),
        .I1(phase[1]),
        .I2(phase[0]),
        .O(\g_eslot[3].ed_i_i_16_n_0 ));
  LUT5 #(
    .INIT(32'hCF44CF77)) 
    \g_eslot[3].ed_i_i_17 
       (.I0(\g_slot[0].omir_reg_n_0_[7] ),
        .I1(phase[1]),
        .I2(obs_whole[6]),
        .I3(phase[0]),
        .I4(obs_whole[8]),
        .O(\g_eslot[3].ed_i_i_17_n_0 ));
  LUT4 #(
    .INIT(16'h2320)) 
    \g_eslot[3].ed_i_i_18 
       (.I0(obs_grown[6]),
        .I1(phase[1]),
        .I2(\phase_reg[0]_rep_n_0 ),
        .I3(obs_grown[8]),
        .O(\g_eslot[3].ed_i_i_18_n_0 ));
  LUT5 #(
    .INIT(32'h010101F1)) 
    \g_eslot[3].ed_i_i_19 
       (.I0(obs_ptr[30]),
        .I1(obs_ptr[31]),
        .I2(\phase_reg[1]_rep_n_0 ),
        .I3(\g_slot[0].omir_reg_n_0_[3] ),
        .I4(\g_slot[0].omir_reg_n_0_[4] ),
        .O(\g_eslot[3].ed_i_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h2E222E222E220000)) 
    \g_eslot[3].ed_i_i_2 
       (.I0(\g_eslot[3].ed_i_i_11_n_0 ),
        .I1(\g_eslot[3].ed_i_i_17_n_0 ),
        .I2(\g_eslot[3].ed_i_i_18_n_0 ),
        .I3(\g_eslot[3].ed_i_i_13_n_0 ),
        .I4(\g_eslot[3].ed_i_i_16_n_0 ),
        .I5(\g_slot[1].absrc [8]),
        .O(\g_eslot[3].vpulse ));
  LUT6 #(
    .INIT(64'hFFCCCF55FFFFCF55)) 
    \g_eslot[3].ed_i_i_20 
       (.I0(\g_slot[1].g_dir[2].nsrc [14]),
        .I1(\g_eslot[3].ed_i_i_23_n_0 ),
        .I2(\g_slot[1].g_dir[3].nsrc [14]),
        .I3(\phase_reg[0]_rep_n_0 ),
        .I4(\phase_reg[1]_rep_n_0 ),
        .I5(\g_slot[0].omir_reg_n_0_[14] ),
        .O(\g_eslot[3].ed_i_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hAFBBAFAAAABBAAAA)) 
    \g_eslot[3].ed_i_i_21 
       (.I0(\phase_reg[0]_rep_n_0 ),
        .I1(obs_ptr[26]),
        .I2(\g_slot[0].omir_reg_n_0_[5] ),
        .I3(\phase_reg[1]_rep_n_0 ),
        .I4(obs_ptr[25]),
        .I5(\g_slot[0].omir_reg_n_0_[4] ),
        .O(\g_eslot[3].ed_i_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hFAFAFAFA22F2FAFA)) 
    \g_eslot[3].ed_i_i_22 
       (.I0(\g_slot[1].pe_i_i_54_n_0 ),
        .I1(\g_slot[0].omir_reg_n_0_[3] ),
        .I2(\g_eslot[3].ed_i_i_24_n_0 ),
        .I3(\g_slot[0].omir_reg_n_0_[14] ),
        .I4(phase[1]),
        .I5(phase[0]),
        .O(\g_eslot[3].ed_i_i_22_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    \g_eslot[3].ed_i_i_23 
       (.I0(\phase_reg[0]_rep_n_0 ),
        .I1(obs_ptr[25]),
        .I2(obs_ptr[24]),
        .I3(obs_ptr[26]),
        .I4(\phase_reg[1]_rep_n_0 ),
        .O(\g_eslot[3].ed_i_i_23_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT4 #(
    .INIT(16'hDCDF)) 
    \g_eslot[3].ed_i_i_24 
       (.I0(\g_slot[1].g_dir[3].nsrc [29]),
        .I1(phase[1]),
        .I2(phase[0]),
        .I3(\g_slot[1].g_dir[3].nsrc [14]),
        .O(\g_eslot[3].ed_i_i_24_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFFA280)) 
    \g_eslot[3].ed_i_i_3 
       (.I0(\g_eslot[3].ed_i_i_19_n_0 ),
        .I1(\phase_reg[1]_rep_n_0 ),
        .I2(\g_slot[0].omir_reg_n_0_[5] ),
        .I3(obs_ptr[32]),
        .I4(\phase_reg[0]_rep_n_0 ),
        .I5(\g_eslot[3].ed_i_i_20_n_0 ),
        .O(\g_eslot[3].umir ));
  LUT6 #(
    .INIT(64'h00000000DFCF0000)) 
    \g_eslot[3].ed_i_i_4 
       (.I0(obs_ptr[20]),
        .I1(\phase_reg[1]_rep_n_0 ),
        .I2(\phase_reg[0]_rep_n_0 ),
        .I3(obs_ptr[19]),
        .I4(\g_eslot[3].ed_i_i_21_n_0 ),
        .I5(\g_eslot[3].ed_i_i_22_n_0 ),
        .O(\g_eslot[3].vmir ));
  (* SOFT_HLUTNM = "soft_lutpair144" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \g_eslot[3].ed_i_i_5 
       (.I0(obs_growth[11]),
        .I1(\phase_reg[0]_rep_n_0 ),
        .I2(\phase_reg[1]_rep_n_0 ),
        .O(\g_eslot[3].ab_state [1]));
  (* SOFT_HLUTNM = "soft_lutpair145" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \g_eslot[3].ed_i_i_6 
       (.I0(obs_growth[10]),
        .I1(\phase_reg[0]_rep_n_0 ),
        .I2(\phase_reg[1]_rep_n_0 ),
        .O(\g_eslot[3].ab_state [0]));
  (* SOFT_HLUTNM = "soft_lutpair143" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \g_eslot[3].ed_i_i_7 
       (.I0(obs_ecorr[5]),
        .I1(\phase_reg[0]_rep_n_0 ),
        .I2(\phase_reg[1]_rep_n_0 ),
        .O(\g_eslot[3].ab_state [2]));
  (* SOFT_HLUTNM = "soft_lutpair143" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \g_eslot[3].ed_i_i_8 
       (.I0(obs_ecorr[5]),
        .I1(\phase_reg[0]_rep_n_0 ),
        .I2(\g_eslot[3].eown [8]),
        .I3(\phase_reg[1]_rep_n_0 ),
        .I4(obs_ecorr[9]),
        .O(\g_eslot[3].my_state [2]));
  (* SOFT_HLUTNM = "soft_lutpair144" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \g_eslot[3].ed_i_i_9 
       (.I0(obs_growth[11]),
        .I1(\phase_reg[0]_rep_n_0 ),
        .I2(\g_eslot[3].eown [7]),
        .I3(\phase_reg[1]_rep_n_0 ),
        .I4(obs_growth[19]),
        .O(\g_eslot[3].my_state [1]));
  FDRE \g_eslot[3].eomir_reg[0] 
       (.C(clk),
        .CE(\g_eslot[0].eown [1]),
        .D(obs_growth[18]),
        .Q(\g_eslot[3].eomir [0]),
        .R(reset));
  FDRE \g_eslot[3].eomir_reg[1] 
       (.C(clk),
        .CE(\g_eslot[0].eown [1]),
        .D(obs_growth[19]),
        .Q(\g_eslot[3].eomir [1]),
        .R(reset));
  FDRE \g_eslot[3].eomir_reg[3] 
       (.C(clk),
        .CE(\g_eslot[0].eown [4]),
        .D(obs_growth[10]),
        .Q(\g_eslot[3].eomir [3]),
        .R(reset));
  FDRE \g_eslot[3].eomir_reg[4] 
       (.C(clk),
        .CE(\g_eslot[0].eown [4]),
        .D(obs_growth[11]),
        .Q(\g_eslot[3].eomir [4]),
        .R(reset));
  FDRE \g_eslot[3].eown_reg[0] 
       (.C(clk),
        .CE(\g_eslot[0].eown [1]),
        .D(\eslot_nxt[3] [0]),
        .Q(obs_growth[18]),
        .R(reset));
  FDRE \g_eslot[3].eown_reg[1] 
       (.C(clk),
        .CE(\g_eslot[0].eown [1]),
        .D(\eslot_nxt[3] [1]),
        .Q(obs_growth[19]),
        .R(reset));
  FDRE \g_eslot[3].eown_reg[2] 
       (.C(clk),
        .CE(\g_eslot[0].eown [1]),
        .D(\eslot_nxt[3] [2]),
        .Q(obs_ecorr[9]),
        .R(reset));
  FDRE \g_eslot[3].eown_reg[3] 
       (.C(clk),
        .CE(\g_eslot[0].eown [4]),
        .D(\eslot_nxt[3] [0]),
        .Q(obs_growth[10]),
        .R(reset));
  FDRE \g_eslot[3].eown_reg[4] 
       (.C(clk),
        .CE(\g_eslot[0].eown [4]),
        .D(\eslot_nxt[3] [1]),
        .Q(obs_growth[11]),
        .R(reset));
  FDRE \g_eslot[3].eown_reg[5] 
       (.C(clk),
        .CE(\g_eslot[0].eown [4]),
        .D(\eslot_nxt[3] [2]),
        .Q(obs_ecorr[5]),
        .R(reset));
  FDRE \g_eslot[3].eown_reg[6] 
       (.C(clk),
        .CE(\g_eslot[0].eown [7]),
        .D(\eslot_nxt[3] [0]),
        .Q(\g_eslot[3].eown [6]),
        .R(reset));
  FDRE \g_eslot[3].eown_reg[7] 
       (.C(clk),
        .CE(\g_eslot[0].eown [7]),
        .D(\eslot_nxt[3] [1]),
        .Q(\g_eslot[3].eown [7]),
        .R(reset));
  FDRE \g_eslot[3].eown_reg[8] 
       (.C(clk),
        .CE(\g_eslot[0].eown [7]),
        .D(\eslot_nxt[3] [2]),
        .Q(\g_eslot[3].eown [8]),
        .R(reset));
  (* ST_DROP = "3'b001" *) 
  (* ST_GH = "3'b100" *) 
  (* ST_GW = "3'b010" *) 
  (* ST_MH = "3'b101" *) 
  (* ST_MW = "3'b011" *) 
  (* ZZZ_ANCHOR = "0" *) 
  snowflake_edge \g_eslot[4].ed_i 
       (.above_ecorr(\g_eslot[4].ab_state [2]),
        .above_growth(\g_eslot[4].ab_state [1:0]),
        .clk(1'b0),
        .flip_u(\g_eslot[4].umir ),
        .flip_v(\g_eslot[4].vmir ),
        .reset(reset),
        .st_in(\g_eslot[4].my_state ),
        .st_out(\eslot_nxt[4] ),
        .stage({\dbg_stage[2]_i_1_n_0 ,stage_reg,\dbg_stage[0]_i_1_n_0 }),
        .u_pulse(\g_eslot[4].upulse ),
        .v_pulse(\g_eslot[4].vpulse ));
  LUT6 #(
    .INIT(64'h0A8A0A80008A0080)) 
    \g_eslot[4].ed_i_i_1 
       (.I0(\g_eslot[4].ed_i_i_11_n_0 ),
        .I1(\g_slot[0].omir_reg_n_0_[8] ),
        .I2(\phase_reg[1]_rep_n_0 ),
        .I3(\phase_reg[0]_rep_n_0 ),
        .I4(obs_active[11]),
        .I5(obs_active[9]),
        .O(\g_eslot[4].upulse ));
  (* SOFT_HLUTNM = "soft_lutpair142" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \g_eslot[4].ed_i_i_10 
       (.I0(obs_growth[16]),
        .I1(\phase_reg[0]_rep_n_0 ),
        .I2(\g_eslot[4].eown [6]),
        .I3(\phase_reg[1]_rep_n_0 ),
        .I4(obs_growth[24]),
        .O(\g_eslot[4].my_state [0]));
  LUT6 #(
    .INIT(64'h00A2FFFF00A20000)) 
    \g_eslot[4].ed_i_i_11 
       (.I0(\g_eslot[3].ed_i_i_13_n_0 ),
        .I1(obs_grown[9]),
        .I2(\g_eslot[4].ed_i_i_15_n_0 ),
        .I3(\g_eslot[4].ed_i_i_19_n_0 ),
        .I4(\g_eslot[4].ed_i_i_20_n_0 ),
        .I5(\g_eslot[3].ed_i_i_11_n_0 ),
        .O(\g_eslot[4].ed_i_i_11_n_0 ));
  LUT5 #(
    .INIT(32'hCF44CF77)) 
    \g_eslot[4].ed_i_i_12 
       (.I0(\g_slot[0].omir_reg_n_0_[7] ),
        .I1(phase[1]),
        .I2(obs_whole[7]),
        .I3(phase[0]),
        .I4(obs_whole[9]),
        .O(\g_eslot[4].ed_i_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h2320)) 
    \g_eslot[4].ed_i_i_13 
       (.I0(obs_grown[7]),
        .I1(phase[1]),
        .I2(\phase_reg[0]_rep_n_0 ),
        .I3(obs_grown[9]),
        .O(\g_eslot[4].ed_i_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F8080808)) 
    \g_eslot[4].ed_i_i_14 
       (.I0(obs_ptr[35]),
        .I1(\g_slot[2].g_dir[2].nsrc [14]),
        .I2(phase[1]),
        .I3(\g_slot[0].omir_reg_n_0_[5] ),
        .I4(\g_slot[0].omir_reg_n_0_[14] ),
        .I5(\g_eslot[4].ed_i_i_21_n_0 ),
        .O(\g_eslot[4].ed_i_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \g_eslot[4].ed_i_i_15 
       (.I0(phase[1]),
        .I1(phase[0]),
        .O(\g_eslot[4].ed_i_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h3437040734373437)) 
    \g_eslot[4].ed_i_i_16 
       (.I0(obs_ptr[22]),
        .I1(phase[0]),
        .I2(phase[1]),
        .I3(obs_ptr[28]),
        .I4(\g_slot[0].omir_reg_n_0_[5] ),
        .I5(\g_slot[0].omir_reg_n_0_[4] ),
        .O(\g_eslot[4].ed_i_i_16_n_0 ));
  LUT5 #(
    .INIT(32'hF053FF53)) 
    \g_eslot[4].ed_i_i_17 
       (.I0(obs_ptr[21]),
        .I1(obs_ptr[27]),
        .I2(phase[0]),
        .I3(phase[1]),
        .I4(\g_slot[0].omir_reg_n_0_[3] ),
        .O(\g_eslot[4].ed_i_i_17_n_0 ));
  LUT4 #(
    .INIT(16'hCDDD)) 
    \g_eslot[4].ed_i_i_18 
       (.I0(\g_slot[2].g_dir[3].nsrc [14]),
        .I1(phase[1]),
        .I2(phase[0]),
        .I3(\g_slot[2].g_dir[3].nsrc [29]),
        .O(\g_eslot[4].ed_i_i_18_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \g_eslot[4].ed_i_i_19 
       (.I0(obs_grown[11]),
        .I1(phase[0]),
        .I2(phase[1]),
        .O(\g_eslot[4].ed_i_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h2E222E222E220000)) 
    \g_eslot[4].ed_i_i_2 
       (.I0(\g_eslot[3].ed_i_i_11_n_0 ),
        .I1(\g_eslot[4].ed_i_i_12_n_0 ),
        .I2(\g_eslot[4].ed_i_i_13_n_0 ),
        .I3(\g_eslot[3].ed_i_i_13_n_0 ),
        .I4(\g_eslot[3].ed_i_i_16_n_0 ),
        .I5(\g_slot[2].absrc [8]),
        .O(\g_eslot[4].vpulse ));
  LUT5 #(
    .INIT(32'hF053FF53)) 
    \g_eslot[4].ed_i_i_20 
       (.I0(obs_whole[9]),
        .I1(obs_whole[11]),
        .I2(phase[0]),
        .I3(phase[1]),
        .I4(\g_slot[0].omir_reg_n_0_[7] ),
        .O(\g_eslot[4].ed_i_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hFEFEFEFEFFFFFFF0)) 
    \g_eslot[4].ed_i_i_21 
       (.I0(\g_slot[0].omir_reg_n_0_[4] ),
        .I1(\g_slot[0].omir_reg_n_0_[3] ),
        .I2(phase[0]),
        .I3(obs_ptr[33]),
        .I4(obs_ptr[34]),
        .I5(phase[1]),
        .O(\g_eslot[4].ed_i_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAABAAAAA)) 
    \g_eslot[4].ed_i_i_3 
       (.I0(\g_eslot[4].ed_i_i_14_n_0 ),
        .I1(obs_ptr[27]),
        .I2(obs_ptr[29]),
        .I3(obs_ptr[28]),
        .I4(\g_slot[2].g_dir[3].nsrc [14]),
        .I5(\g_eslot[4].ed_i_i_15_n_0 ),
        .O(\g_eslot[4].umir ));
  LUT6 #(
    .INIT(64'h0404000400040004)) 
    \g_eslot[4].ed_i_i_4 
       (.I0(\g_eslot[4].ed_i_i_16_n_0 ),
        .I1(\g_slot[2].pe_i_i_51_n_0 ),
        .I2(\g_eslot[4].ed_i_i_17_n_0 ),
        .I3(\g_eslot[4].ed_i_i_18_n_0 ),
        .I4(\g_slot[0].omir_reg_n_0_[14] ),
        .I5(phase[1]),
        .O(\g_eslot[4].vmir ));
  (* SOFT_HLUTNM = "soft_lutpair141" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \g_eslot[4].ed_i_i_5 
       (.I0(obs_growth[17]),
        .I1(\phase_reg[0]_rep_n_0 ),
        .I2(\phase_reg[1]_rep_n_0 ),
        .O(\g_eslot[4].ab_state [1]));
  (* SOFT_HLUTNM = "soft_lutpair142" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \g_eslot[4].ed_i_i_6 
       (.I0(obs_growth[16]),
        .I1(\phase_reg[0]_rep_n_0 ),
        .I2(\phase_reg[1]_rep_n_0 ),
        .O(\g_eslot[4].ab_state [0]));
  (* SOFT_HLUTNM = "soft_lutpair140" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \g_eslot[4].ed_i_i_7 
       (.I0(obs_ecorr[8]),
        .I1(\phase_reg[0]_rep_n_0 ),
        .I2(\phase_reg[1]_rep_n_0 ),
        .O(\g_eslot[4].ab_state [2]));
  (* SOFT_HLUTNM = "soft_lutpair140" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \g_eslot[4].ed_i_i_8 
       (.I0(obs_ecorr[8]),
        .I1(\phase_reg[0]_rep_n_0 ),
        .I2(\g_eslot[4].eown [8]),
        .I3(\phase_reg[1]_rep_n_0 ),
        .I4(obs_ecorr[12]),
        .O(\g_eslot[4].my_state [2]));
  (* SOFT_HLUTNM = "soft_lutpair141" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \g_eslot[4].ed_i_i_9 
       (.I0(obs_growth[17]),
        .I1(\phase_reg[0]_rep_n_0 ),
        .I2(\g_eslot[4].eown [7]),
        .I3(\phase_reg[1]_rep_n_0 ),
        .I4(obs_growth[25]),
        .O(\g_eslot[4].my_state [1]));
  FDRE \g_eslot[4].eomir_reg[0] 
       (.C(clk),
        .CE(\g_eslot[0].eown [1]),
        .D(obs_growth[24]),
        .Q(\g_eslot[4].eomir [0]),
        .R(reset));
  FDRE \g_eslot[4].eomir_reg[1] 
       (.C(clk),
        .CE(\g_eslot[0].eown [1]),
        .D(obs_growth[25]),
        .Q(\g_eslot[4].eomir [1]),
        .R(reset));
  FDRE \g_eslot[4].eomir_reg[3] 
       (.C(clk),
        .CE(\g_eslot[0].eown [4]),
        .D(obs_growth[16]),
        .Q(\g_eslot[4].eomir [3]),
        .R(reset));
  FDRE \g_eslot[4].eomir_reg[4] 
       (.C(clk),
        .CE(\g_eslot[0].eown [4]),
        .D(obs_growth[17]),
        .Q(\g_eslot[4].eomir [4]),
        .R(reset));
  LUT6 #(
    .INIT(64'h1111111011101010)) 
    \g_eslot[4].eown[1]_i_1 
       (.I0(\phase_reg[1]_rep_n_0 ),
        .I1(\phase_reg[0]_rep_n_0 ),
        .I2(stage__0[1]),
        .I3(stage__0[2]),
        .I4(stage__0[0]),
        .I5(lat_bpass),
        .O(\g_eslot[0].eown [1]));
  LUT6 #(
    .INIT(64'h4444444044404040)) 
    \g_eslot[4].eown[4]_i_1 
       (.I0(\phase_reg[1]_rep_n_0 ),
        .I1(\phase_reg[0]_rep_n_0 ),
        .I2(stage__0[1]),
        .I3(stage__0[2]),
        .I4(stage__0[0]),
        .I5(lat_bpass),
        .O(\g_eslot[0].eown [4]));
  FDRE \g_eslot[4].eown_reg[0] 
       (.C(clk),
        .CE(\g_eslot[0].eown [1]),
        .D(\eslot_nxt[4] [0]),
        .Q(obs_growth[24]),
        .R(reset));
  FDRE \g_eslot[4].eown_reg[1] 
       (.C(clk),
        .CE(\g_eslot[0].eown [1]),
        .D(\eslot_nxt[4] [1]),
        .Q(obs_growth[25]),
        .R(reset));
  FDRE \g_eslot[4].eown_reg[2] 
       (.C(clk),
        .CE(\g_eslot[0].eown [1]),
        .D(\eslot_nxt[4] [2]),
        .Q(obs_ecorr[12]),
        .R(reset));
  FDRE \g_eslot[4].eown_reg[3] 
       (.C(clk),
        .CE(\g_eslot[0].eown [4]),
        .D(\eslot_nxt[4] [0]),
        .Q(obs_growth[16]),
        .R(reset));
  FDRE \g_eslot[4].eown_reg[4] 
       (.C(clk),
        .CE(\g_eslot[0].eown [4]),
        .D(\eslot_nxt[4] [1]),
        .Q(obs_growth[17]),
        .R(reset));
  FDRE \g_eslot[4].eown_reg[5] 
       (.C(clk),
        .CE(\g_eslot[0].eown [4]),
        .D(\eslot_nxt[4] [2]),
        .Q(obs_ecorr[8]),
        .R(reset));
  FDRE \g_eslot[4].eown_reg[6] 
       (.C(clk),
        .CE(\g_eslot[0].eown [7]),
        .D(\eslot_nxt[4] [0]),
        .Q(\g_eslot[4].eown [6]),
        .R(reset));
  FDRE \g_eslot[4].eown_reg[7] 
       (.C(clk),
        .CE(\g_eslot[0].eown [7]),
        .D(\eslot_nxt[4] [1]),
        .Q(\g_eslot[4].eown [7]),
        .R(reset));
  FDRE \g_eslot[4].eown_reg[8] 
       (.C(clk),
        .CE(\g_eslot[0].eown [7]),
        .D(\eslot_nxt[4] [2]),
        .Q(\g_eslot[4].eown [8]),
        .R(reset));
  LUT6 #(
    .INIT(64'h00000000000000FE)) 
    \g_slot[0].bshA[0][0]_i_1 
       (.I0(stage__0[1]),
        .I1(stage__0[2]),
        .I2(stage__0[0]),
        .I3(phase[1]),
        .I4(phase[0]),
        .I5(lat_bpass),
        .O(bshA[0]));
  LUT6 #(
    .INIT(64'h0000000000FE0000)) 
    \g_slot[0].bshA[0][1]_i_1 
       (.I0(stage__0[1]),
        .I1(stage__0[2]),
        .I2(stage__0[0]),
        .I3(phase[1]),
        .I4(phase[0]),
        .I5(lat_bpass),
        .O(bshA[1]));
  LUT6 #(
    .INIT(64'h0000000000FE0000)) 
    \g_slot[0].bshA[0][2]_i_1 
       (.I0(stage__0[1]),
        .I1(stage__0[2]),
        .I2(stage__0[0]),
        .I3(phase[0]),
        .I4(phase[1]),
        .I5(lat_bpass),
        .O(bshA[2]));
  FDRE \g_slot[0].bshA_reg[0][0] 
       (.C(clk),
        .CE(bshA[0]),
        .D(\slot_nxt[0] [0]),
        .Q(\g_slot[0].bshA_reg[0] [0]),
        .R(reset));
  FDRE \g_slot[0].bshA_reg[0][1] 
       (.C(clk),
        .CE(bshA[1]),
        .D(\slot_nxt[0] [0]),
        .Q(\g_slot[0].bshA_reg[0] [1]),
        .R(reset));
  FDRE \g_slot[0].bshA_reg[0][2] 
       (.C(clk),
        .CE(bshA[2]),
        .D(\slot_nxt[0] [0]),
        .Q(\g_slot[0].bshA_reg[0] [2]),
        .R(reset));
  LUT6 #(
    .INIT(64'h000000FE00000000)) 
    \g_slot[0].bshB[0][0]_i_1 
       (.I0(stage__0[1]),
        .I1(stage__0[2]),
        .I2(stage__0[0]),
        .I3(phase[1]),
        .I4(phase[0]),
        .I5(lat_bpass),
        .O(\g_slot[0].bshB[0][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00FE000000000000)) 
    \g_slot[0].bshB[0][1]_i_1 
       (.I0(stage__0[1]),
        .I1(stage__0[2]),
        .I2(stage__0[0]),
        .I3(phase[1]),
        .I4(phase[0]),
        .I5(lat_bpass),
        .O(\g_slot[0].bshB[0][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00FE000000000000)) 
    \g_slot[0].bshB[0][2]_i_1 
       (.I0(stage__0[1]),
        .I1(stage__0[2]),
        .I2(stage__0[0]),
        .I3(phase[0]),
        .I4(phase[1]),
        .I5(lat_bpass),
        .O(\g_slot[0].bshB[0][2]_i_1_n_0 ));
  FDRE \g_slot[0].bshB_reg[0][0] 
       (.C(clk),
        .CE(\g_slot[0].bshB[0][0]_i_1_n_0 ),
        .D(\slot_nxt[0] [0]),
        .Q(\g_slot[0].bshB_reg[0] [0]),
        .R(reset));
  FDRE \g_slot[0].bshB_reg[0][1] 
       (.C(clk),
        .CE(\g_slot[0].bshB[0][1]_i_1_n_0 ),
        .D(\slot_nxt[0] [0]),
        .Q(\g_slot[0].bshB_reg[0] [1]),
        .R(reset));
  FDRE \g_slot[0].bshB_reg[0][2] 
       (.C(clk),
        .CE(\g_slot[0].bshB[0][2]_i_1_n_0 ),
        .D(\slot_nxt[0] [0]),
        .Q(\g_slot[0].bshB_reg[0] [2]),
        .R(reset));
  FDRE \g_slot[0].omir_reg[14] 
       (.C(clk),
        .CE(\g_slot[0].own ),
        .D(\g_slot[0].g_dir[0].nsrc [14]),
        .Q(\g_slot[0].omir_reg_n_0_[14] ),
        .R(reset));
  FDRE \g_slot[0].omir_reg[23] 
       (.C(clk),
        .CE(\g_slot[2].own[28]_i_1_n_0 ),
        .D(obs_active[2]),
        .Q(\g_slot[0].g_dir[0].nsrc [23]),
        .R(reset));
  FDRE \g_slot[0].omir_reg[2] 
       (.C(clk),
        .CE(\g_slot[0].own ),
        .D(obs_grown[4]),
        .Q(\g_slot[0].omir_reg_n_0_[2] ),
        .R(reset));
  FDRE \g_slot[0].omir_reg[38] 
       (.C(clk),
        .CE(\g_slot[2].own[43]_i_1_n_0 ),
        .D(obs_active[0]),
        .Q(\g_slot[0].g_dir[0].nsrc [38]),
        .R(reset));
  FDRE \g_slot[0].omir_reg[3] 
       (.C(clk),
        .CE(\g_slot[0].own ),
        .D(obs_ptr[12]),
        .Q(\g_slot[0].omir_reg_n_0_[3] ),
        .R(reset));
  FDRE \g_slot[0].omir_reg[4] 
       (.C(clk),
        .CE(\g_slot[0].own ),
        .D(obs_ptr[13]),
        .Q(\g_slot[0].omir_reg_n_0_[4] ),
        .R(reset));
  FDRE \g_slot[0].omir_reg[5] 
       (.C(clk),
        .CE(\g_slot[0].own ),
        .D(obs_ptr[14]),
        .Q(\g_slot[0].omir_reg_n_0_[5] ),
        .R(reset));
  FDSE \g_slot[0].omir_reg[7] 
       (.C(clk),
        .CE(\g_slot[0].own ),
        .D(obs_whole[4]),
        .Q(\g_slot[0].omir_reg_n_0_[7] ),
        .S(reset));
  FDRE \g_slot[0].omir_reg[8] 
       (.C(clk),
        .CE(\g_slot[0].own ),
        .D(obs_active[4]),
        .Q(\g_slot[0].omir_reg_n_0_[8] ),
        .R(reset));
  FDRE \g_slot[0].own_reg[0] 
       (.C(clk),
        .CE(\g_slot[0].own ),
        .D(\slot_nxt[0] [0]),
        .Q(obs_busy[4]),
        .R(reset));
  FDRE \g_slot[0].own_reg[10] 
       (.C(clk),
        .CE(\g_slot[0].own ),
        .D(\slot_nxt[0] [10]),
        .Q(obs_cid[21]),
        .R(reset));
  FDSE \g_slot[0].own_reg[11] 
       (.C(clk),
        .CE(\g_slot[0].own ),
        .D(\slot_nxt[0] [11]),
        .Q(obs_cid[22]),
        .S(reset));
  FDRE \g_slot[0].own_reg[12] 
       (.C(clk),
        .CE(\g_slot[0].own ),
        .D(\slot_nxt[0] [12]),
        .Q(obs_cid[23]),
        .R(reset));
  FDRE \g_slot[0].own_reg[13] 
       (.C(clk),
        .CE(\g_slot[0].own ),
        .D(\slot_nxt[0] [13]),
        .Q(obs_cid[24]),
        .R(reset));
  FDRE \g_slot[0].own_reg[14] 
       (.C(clk),
        .CE(\g_slot[0].own ),
        .D(\slot_nxt[0] [14]),
        .Q(\g_slot[0].g_dir[0].nsrc [14]),
        .R(reset));
  FDRE \g_slot[0].own_reg[15] 
       (.C(clk),
        .CE(\g_slot[2].own[28]_i_1_n_0 ),
        .D(\slot_nxt[0] [0]),
        .Q(obs_busy[2]),
        .R(reset));
  FDRE \g_slot[0].own_reg[16] 
       (.C(clk),
        .CE(\g_slot[2].own[28]_i_1_n_0 ),
        .D(\slot_nxt[0] [1]),
        .Q(obs_unrooted[2]),
        .R(reset));
  FDRE \g_slot[0].own_reg[17] 
       (.C(clk),
        .CE(\g_slot[2].own[28]_i_1_n_0 ),
        .D(\slot_nxt[0] [2]),
        .Q(obs_grown[2]),
        .R(reset));
  FDRE \g_slot[0].own_reg[18] 
       (.C(clk),
        .CE(\g_slot[2].own[28]_i_1_n_0 ),
        .D(\slot_nxt[0] [3]),
        .Q(obs_ptr[6]),
        .R(reset));
  FDRE \g_slot[0].own_reg[19] 
       (.C(clk),
        .CE(\g_slot[2].own[28]_i_1_n_0 ),
        .D(\slot_nxt[0] [4]),
        .Q(obs_ptr[7]),
        .R(reset));
  FDRE \g_slot[0].own_reg[1] 
       (.C(clk),
        .CE(\g_slot[0].own ),
        .D(\slot_nxt[0] [1]),
        .Q(obs_unrooted[4]),
        .R(reset));
  FDRE \g_slot[0].own_reg[20] 
       (.C(clk),
        .CE(\g_slot[2].own[28]_i_1_n_0 ),
        .D(\slot_nxt[0] [5]),
        .Q(obs_ptr[8]),
        .R(reset));
  FDRE \g_slot[0].own_reg[21] 
       (.C(clk),
        .CE(\g_slot[2].own[28]_i_1_n_0 ),
        .D(\slot_nxt[0] [6]),
        .Q(obs_defect[2]),
        .R(reset));
  FDSE \g_slot[0].own_reg[22] 
       (.C(clk),
        .CE(\g_slot[2].own[28]_i_1_n_0 ),
        .D(\slot_nxt[0] [7]),
        .Q(obs_whole[2]),
        .S(reset));
  FDRE \g_slot[0].own_reg[23] 
       (.C(clk),
        .CE(\g_slot[2].own[28]_i_1_n_0 ),
        .D(\slot_nxt[0] [8]),
        .Q(obs_active[2]),
        .R(reset));
  FDRE \g_slot[0].own_reg[24] 
       (.C(clk),
        .CE(\g_slot[2].own[28]_i_1_n_0 ),
        .D(\slot_nxt[0] [9]),
        .Q(obs_cid[10]),
        .R(reset));
  FDSE \g_slot[0].own_reg[25] 
       (.C(clk),
        .CE(\g_slot[2].own[28]_i_1_n_0 ),
        .D(\slot_nxt[0] [10]),
        .Q(obs_cid[11]),
        .S(reset));
  FDRE \g_slot[0].own_reg[26] 
       (.C(clk),
        .CE(\g_slot[2].own[28]_i_1_n_0 ),
        .D(\slot_nxt[0] [11]),
        .Q(obs_cid[12]),
        .R(reset));
  FDRE \g_slot[0].own_reg[27] 
       (.C(clk),
        .CE(\g_slot[2].own[28]_i_1_n_0 ),
        .D(\slot_nxt[0] [12]),
        .Q(obs_cid[13]),
        .R(reset));
  FDRE \g_slot[0].own_reg[28] 
       (.C(clk),
        .CE(\g_slot[2].own[28]_i_1_n_0 ),
        .D(\slot_nxt[0] [13]),
        .Q(obs_cid[14]),
        .R(reset));
  FDRE \g_slot[0].own_reg[29] 
       (.C(clk),
        .CE(\g_slot[2].own[28]_i_1_n_0 ),
        .D(\slot_nxt[0] [14]),
        .Q(\g_slot[0].own_reg_n_0_[29] ),
        .R(reset));
  FDRE \g_slot[0].own_reg[2] 
       (.C(clk),
        .CE(\g_slot[0].own ),
        .D(\slot_nxt[0] [2]),
        .Q(obs_grown[4]),
        .R(reset));
  FDRE \g_slot[0].own_reg[30] 
       (.C(clk),
        .CE(\g_slot[2].own[43]_i_1_n_0 ),
        .D(\slot_nxt[0] [0]),
        .Q(obs_busy[0]),
        .R(reset));
  FDRE \g_slot[0].own_reg[31] 
       (.C(clk),
        .CE(\g_slot[2].own[43]_i_1_n_0 ),
        .D(\slot_nxt[0] [1]),
        .Q(obs_unrooted[0]),
        .R(reset));
  FDRE \g_slot[0].own_reg[32] 
       (.C(clk),
        .CE(\g_slot[2].own[43]_i_1_n_0 ),
        .D(\slot_nxt[0] [2]),
        .Q(obs_grown[0]),
        .R(reset));
  FDRE \g_slot[0].own_reg[33] 
       (.C(clk),
        .CE(\g_slot[2].own[43]_i_1_n_0 ),
        .D(\slot_nxt[0] [3]),
        .Q(obs_ptr[0]),
        .R(reset));
  FDRE \g_slot[0].own_reg[34] 
       (.C(clk),
        .CE(\g_slot[2].own[43]_i_1_n_0 ),
        .D(\slot_nxt[0] [4]),
        .Q(obs_ptr[1]),
        .R(reset));
  FDRE \g_slot[0].own_reg[35] 
       (.C(clk),
        .CE(\g_slot[2].own[43]_i_1_n_0 ),
        .D(\slot_nxt[0] [5]),
        .Q(obs_ptr[2]),
        .R(reset));
  FDRE \g_slot[0].own_reg[36] 
       (.C(clk),
        .CE(\g_slot[2].own[43]_i_1_n_0 ),
        .D(\slot_nxt[0] [6]),
        .Q(obs_defect[0]),
        .R(reset));
  FDSE \g_slot[0].own_reg[37] 
       (.C(clk),
        .CE(\g_slot[2].own[43]_i_1_n_0 ),
        .D(\slot_nxt[0] [7]),
        .Q(obs_whole[0]),
        .S(reset));
  FDRE \g_slot[0].own_reg[38] 
       (.C(clk),
        .CE(\g_slot[2].own[43]_i_1_n_0 ),
        .D(\slot_nxt[0] [8]),
        .Q(obs_active[0]),
        .R(reset));
  FDRE \g_slot[0].own_reg[39] 
       (.C(clk),
        .CE(\g_slot[2].own[43]_i_1_n_0 ),
        .D(\slot_nxt[0] [9]),
        .Q(obs_cid[0]),
        .R(reset));
  FDRE \g_slot[0].own_reg[3] 
       (.C(clk),
        .CE(\g_slot[0].own ),
        .D(\slot_nxt[0] [3]),
        .Q(obs_ptr[12]),
        .R(reset));
  FDRE \g_slot[0].own_reg[40] 
       (.C(clk),
        .CE(\g_slot[2].own[43]_i_1_n_0 ),
        .D(\slot_nxt[0] [10]),
        .Q(obs_cid[1]),
        .R(reset));
  FDRE \g_slot[0].own_reg[41] 
       (.C(clk),
        .CE(\g_slot[2].own[43]_i_1_n_0 ),
        .D(\slot_nxt[0] [11]),
        .Q(obs_cid[2]),
        .R(reset));
  FDRE \g_slot[0].own_reg[42] 
       (.C(clk),
        .CE(\g_slot[2].own[43]_i_1_n_0 ),
        .D(\slot_nxt[0] [12]),
        .Q(obs_cid[3]),
        .R(reset));
  FDRE \g_slot[0].own_reg[43] 
       (.C(clk),
        .CE(\g_slot[2].own[43]_i_1_n_0 ),
        .D(\slot_nxt[0] [13]),
        .Q(obs_cid[4]),
        .R(reset));
  FDRE \g_slot[0].own_reg[44] 
       (.C(clk),
        .CE(\g_slot[2].own[43]_i_1_n_0 ),
        .D(\slot_nxt[0] [14]),
        .Q(\g_slot[0].own_reg_n_0_[44] ),
        .R(reset));
  FDRE \g_slot[0].own_reg[4] 
       (.C(clk),
        .CE(\g_slot[0].own ),
        .D(\slot_nxt[0] [4]),
        .Q(obs_ptr[13]),
        .R(reset));
  FDRE \g_slot[0].own_reg[5] 
       (.C(clk),
        .CE(\g_slot[0].own ),
        .D(\slot_nxt[0] [5]),
        .Q(obs_ptr[14]),
        .R(reset));
  FDRE \g_slot[0].own_reg[6] 
       (.C(clk),
        .CE(\g_slot[0].own ),
        .D(\slot_nxt[0] [6]),
        .Q(obs_defect[4]),
        .R(reset));
  FDSE \g_slot[0].own_reg[7] 
       (.C(clk),
        .CE(\g_slot[0].own ),
        .D(\slot_nxt[0] [7]),
        .Q(obs_whole[4]),
        .S(reset));
  FDRE \g_slot[0].own_reg[8] 
       (.C(clk),
        .CE(\g_slot[0].own ),
        .D(\slot_nxt[0] [8]),
        .Q(obs_active[4]),
        .R(reset));
  FDRE \g_slot[0].own_reg[9] 
       (.C(clk),
        .CE(\g_slot[0].own ),
        .D(\slot_nxt[0] [9]),
        .Q(obs_cid[20]),
        .R(reset));
  (* HAS_ABOVE = "0" *) 
  (* ID = "0" *) 
  (* IS_BND = "0" *) 
  (* IS_BOT = "0" *) 
  (* IS_TOP = "0" *) 
  (* OFF_ACT = "8" *) 
  (* OFF_BUSY = "0" *) 
  (* OFF_CID = "9" *) 
  (* OFF_DEF = "6" *) 
  (* OFF_GRW = "2" *) 
  (* OFF_PB = "14" *) 
  (* OFF_PTR = "3" *) 
  (* OFF_UNR = "1" *) 
  (* OFF_WHL = "7" *) 
  (* ONE_ONE = "0" *) 
  (* STW = "15" *) 
  (* ST_DROP = "3'b001" *) 
  (* ST_GH = "3'b100" *) 
  (* ST_GW = "3'b010" *) 
  (* ST_IDLE = "3'b000" *) 
  (* ST_MH = "3'b101" *) 
  (* ST_MW = "3'b011" *) 
  (* SYN_IDX = "-1" *) 
  (* ZZZ_ANCHOR = "0" *) 
  snowflake_pe__1 \g_slot[0].pe_i 
       (.ab_active(\g_slot[0].absrc [8]),
        .ab_cid(\g_slot[0].absrc [13:9]),
        .ab_defect(\g_slot[0].absrc [6]),
        .ab_ptr(\g_slot[0].absrc [5:3]),
        .ab_whole(\g_slot[0].absrc [7]),
        .clk(1'b0),
        .e_grown({1'b0,1'b0,\g_slot[0].pe_i_i_12_n_0 ,1'b0}),
        .m_pass({m_pass_w,\g_slot[0].pe_i_i_23_n_0 }),
        .nb_active({1'b0,\g_slot[0].pe_i_i_18_n_0 ,p_8_in,1'b0}),
        .nb_cid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,\g_slot[2].nb_cid [4:0],1'b0,1'b0,1'b0,1'b0,1'b0}),
        .nb_grown({1'b0,1'b0,\g_slot[2].nb_grown [0],1'b0}),
        .nb_push({1'b0,1'b0,\g_slot[0].nb_push0 ,1'b0}),
        .nb_valid({1'b0,1'b0,1'b1,1'b0}),
        .o_busy_c(\NLW_g_slot[0].pe_i_o_busy_c_UNCONNECTED ),
        .o_pulse(\NLW_g_slot[0].pe_i_o_pulse_UNCONNECTED ),
        .o_push(\NLW_g_slot[0].pe_i_o_push_UNCONNECTED [3:0]),
        .p_has_above(\g_slot[3].iw [5]),
        .p_id({1'b0,1'b0,1'b0,\g_slot[3].iw [1],1'b0}),
        .p_is_bnd(\g_slot[3].iw [0]),
        .p_is_bot(\g_slot[3].iw [2]),
        .p_is_syn(1'b0),
        .p_is_top(\g_slot[2].iw ),
        .reset(1'b0),
        .st_in({\g_slot[0].pe_i_i_24_n_0 ,\g_slot[1].nb_cid [4:0],p_7_in,p_0_in65_in,\g_slot[0].pe_i_i_32_n_0 ,p_0_in6_in,\g_slot[1].nb_grown [0],\g_slot[0].pe_i_i_37_n_0 ,1'b0}),
        .st_out(\slot_nxt[0] ),
        .stage({\dbg_stage[2]_i_1_n_0 ,stage_reg,\dbg_stage[0]_i_1_n_0 }),
        .syn_bit(1'b0),
        .zzz_never_used(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair124" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \g_slot[0].pe_i_i_1 
       (.I0(obs_cid[14]),
        .I1(\phase_reg[0]_rep_n_0 ),
        .I2(obs_cid[4]),
        .I3(\phase_reg[1]_rep_n_0 ),
        .O(\g_slot[0].absrc [13]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \g_slot[0].pe_i_i_10 
       (.I0(obs_ptr[7]),
        .I1(phase[0]),
        .I2(obs_ptr[1]),
        .I3(\phase_reg[1]_rep_n_0 ),
        .O(\g_slot[0].absrc [4]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \g_slot[0].pe_i_i_11 
       (.I0(obs_ptr[6]),
        .I1(phase[0]),
        .I2(obs_ptr[0]),
        .I3(\phase_reg[1]_rep_n_0 ),
        .O(\g_slot[0].absrc [3]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \g_slot[0].pe_i_i_12 
       (.I0(phase[1]),
        .I1(obs_growth[3]),
        .I2(obs_growth[2]),
        .I3(\phase_reg[0]_rep_n_0 ),
        .I4(\g_slot[0].pe_i_i_43_n_0 ),
        .O(\g_slot[0].pe_i_i_12_n_0 ));
  LUT5 #(
    .INIT(32'h0FCA00CA)) 
    \g_slot[0].pe_i_i_13 
       (.I0(obs_cid[54]),
        .I1(obs_cid[34]),
        .I2(phase[1]),
        .I3(phase[0]),
        .I4(obs_cid[44]),
        .O(\g_slot[2].nb_cid [4]));
  LUT5 #(
    .INIT(32'h0FCA00CA)) 
    \g_slot[0].pe_i_i_14 
       (.I0(obs_cid[53]),
        .I1(obs_cid[33]),
        .I2(phase[1]),
        .I3(phase[0]),
        .I4(obs_cid[43]),
        .O(\g_slot[2].nb_cid [3]));
  LUT5 #(
    .INIT(32'h0FCA00CA)) 
    \g_slot[0].pe_i_i_15 
       (.I0(obs_cid[52]),
        .I1(obs_cid[32]),
        .I2(phase[1]),
        .I3(phase[0]),
        .I4(obs_cid[42]),
        .O(\g_slot[2].nb_cid [2]));
  LUT5 #(
    .INIT(32'h0ACF0AC0)) 
    \g_slot[0].pe_i_i_16 
       (.I0(obs_cid[31]),
        .I1(obs_cid[41]),
        .I2(phase[0]),
        .I3(phase[1]),
        .I4(obs_cid[51]),
        .O(\g_slot[2].nb_cid [1]));
  LUT5 #(
    .INIT(32'h0FCA00CA)) 
    \g_slot[0].pe_i_i_17 
       (.I0(obs_cid[50]),
        .I1(obs_cid[30]),
        .I2(phase[1]),
        .I3(phase[0]),
        .I4(obs_cid[40]),
        .O(\g_slot[2].nb_cid [0]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \g_slot[0].pe_i_i_18 
       (.I0(\g_slot[0].g_dir[0].nsrc [23]),
        .I1(\phase_reg[0]_rep_n_0 ),
        .I2(\g_slot[0].g_dir[0].nsrc [38]),
        .I3(\phase_reg[1]_rep_n_0 ),
        .I4(obs_active[4]),
        .O(\g_slot[0].pe_i_i_18_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT5 #(
    .INIT(32'h3E0E3202)) 
    \g_slot[0].pe_i_i_19 
       (.I0(obs_active[10]),
        .I1(phase[1]),
        .I2(phase[0]),
        .I3(obs_active[8]),
        .I4(obs_active[6]),
        .O(p_8_in));
  (* SOFT_HLUTNM = "soft_lutpair125" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \g_slot[0].pe_i_i_2 
       (.I0(obs_cid[13]),
        .I1(\phase_reg[0]_rep_n_0 ),
        .I2(obs_cid[3]),
        .I3(\phase_reg[1]_rep_n_0 ),
        .O(\g_slot[0].absrc [12]));
  LUT5 #(
    .INIT(32'h0ACF0AC0)) 
    \g_slot[0].pe_i_i_20 
       (.I0(obs_grown[6]),
        .I1(obs_grown[8]),
        .I2(phase[0]),
        .I3(phase[1]),
        .I4(obs_grown[10]),
        .O(\g_slot[2].nb_grown [0]));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \g_slot[0].pe_i_i_21 
       (.I0(\g_slot[0].pe_i_i_44_n_0 ),
        .I1(\g_slot[0].pe_i_i_45_n_0 ),
        .I2(p_0_in4_in[0]),
        .O(\g_slot[0].nb_push0 ));
  (* SOFT_HLUTNM = "soft_lutpair155" *) 
  LUT4 #(
    .INIT(16'h0028)) 
    \g_slot[0].pe_i_i_22 
       (.I0(lat_bpass),
        .I1(stage__0[0]),
        .I2(stage__0[2]),
        .I3(stage__0[1]),
        .O(m_pass_w));
  (* SOFT_HLUTNM = "soft_lutpair155" *) 
  LUT4 #(
    .INIT(16'h0014)) 
    \g_slot[0].pe_i_i_23 
       (.I0(lat_bpass),
        .I1(stage__0[0]),
        .I2(stage__0[2]),
        .I3(stage__0[1]),
        .O(\g_slot[0].pe_i_i_23_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \g_slot[0].pe_i_i_24 
       (.I0(\g_slot[0].own_reg_n_0_[29] ),
        .I1(phase[0]),
        .I2(\g_slot[0].own_reg_n_0_[44] ),
        .I3(\phase_reg[1]_rep_n_0 ),
        .I4(\g_slot[0].g_dir[0].nsrc [14]),
        .O(\g_slot[0].pe_i_i_24_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair124" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \g_slot[0].pe_i_i_25 
       (.I0(obs_cid[14]),
        .I1(\phase_reg[0]_rep_n_0 ),
        .I2(obs_cid[4]),
        .I3(\phase_reg[1]_rep_n_0 ),
        .I4(obs_cid[24]),
        .O(\g_slot[1].nb_cid [4]));
  (* SOFT_HLUTNM = "soft_lutpair125" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \g_slot[0].pe_i_i_26 
       (.I0(obs_cid[13]),
        .I1(\phase_reg[0]_rep_n_0 ),
        .I2(obs_cid[3]),
        .I3(\phase_reg[1]_rep_n_0 ),
        .I4(obs_cid[23]),
        .O(\g_slot[1].nb_cid [3]));
  (* SOFT_HLUTNM = "soft_lutpair126" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \g_slot[0].pe_i_i_27 
       (.I0(obs_cid[12]),
        .I1(\phase_reg[0]_rep_n_0 ),
        .I2(obs_cid[2]),
        .I3(\phase_reg[1]_rep_n_0 ),
        .I4(obs_cid[22]),
        .O(\g_slot[1].nb_cid [2]));
  (* SOFT_HLUTNM = "soft_lutpair127" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \g_slot[0].pe_i_i_28 
       (.I0(obs_cid[11]),
        .I1(\phase_reg[0]_rep_n_0 ),
        .I2(obs_cid[1]),
        .I3(\phase_reg[1]_rep_n_0 ),
        .I4(obs_cid[21]),
        .O(\g_slot[1].nb_cid [1]));
  (* SOFT_HLUTNM = "soft_lutpair128" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \g_slot[0].pe_i_i_29 
       (.I0(obs_cid[10]),
        .I1(\phase_reg[0]_rep_n_0 ),
        .I2(obs_cid[0]),
        .I3(\phase_reg[1]_rep_n_0 ),
        .I4(obs_cid[20]),
        .O(\g_slot[1].nb_cid [0]));
  (* SOFT_HLUTNM = "soft_lutpair126" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \g_slot[0].pe_i_i_3 
       (.I0(obs_cid[12]),
        .I1(\phase_reg[0]_rep_n_0 ),
        .I2(obs_cid[2]),
        .I3(\phase_reg[1]_rep_n_0 ),
        .O(\g_slot[0].absrc [11]));
  (* SOFT_HLUTNM = "soft_lutpair118" *) 
  LUT5 #(
    .INIT(32'h33E200E2)) 
    \g_slot[0].pe_i_i_30 
       (.I0(obs_active[4]),
        .I1(phase[1]),
        .I2(obs_active[0]),
        .I3(\phase_reg[0]_rep_n_0 ),
        .I4(obs_active[2]),
        .O(p_7_in));
  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT5 #(
    .INIT(32'h33E200E2)) 
    \g_slot[0].pe_i_i_31 
       (.I0(obs_whole[4]),
        .I1(phase[1]),
        .I2(obs_whole[0]),
        .I3(\phase_reg[0]_rep_n_0 ),
        .I4(obs_whole[2]),
        .O(p_0_in65_in));
  (* SOFT_HLUTNM = "soft_lutpair129" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \g_slot[0].pe_i_i_32 
       (.I0(obs_defect[2]),
        .I1(phase[0]),
        .I2(obs_defect[0]),
        .I3(\phase_reg[1]_rep_n_0 ),
        .I4(obs_defect[4]),
        .O(\g_slot[0].pe_i_i_32_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair123" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \g_slot[0].pe_i_i_33 
       (.I0(obs_ptr[8]),
        .I1(phase[0]),
        .I2(obs_ptr[2]),
        .I3(\phase_reg[1]_rep_n_0 ),
        .I4(obs_ptr[14]),
        .O(p_0_in6_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair120" *) 
  LUT5 #(
    .INIT(32'h33E200E2)) 
    \g_slot[0].pe_i_i_34 
       (.I0(obs_ptr[13]),
        .I1(\phase_reg[1]_rep_n_0 ),
        .I2(obs_ptr[1]),
        .I3(phase[0]),
        .I4(obs_ptr[7]),
        .O(p_0_in6_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair119" *) 
  LUT5 #(
    .INIT(32'h33E200E2)) 
    \g_slot[0].pe_i_i_35 
       (.I0(obs_ptr[12]),
        .I1(\phase_reg[1]_rep_n_0 ),
        .I2(obs_ptr[0]),
        .I3(phase[0]),
        .I4(obs_ptr[6]),
        .O(p_0_in6_in[0]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \g_slot[0].pe_i_i_36 
       (.I0(obs_grown[2]),
        .I1(\phase_reg[0]_rep_n_0 ),
        .I2(obs_grown[0]),
        .I3(\phase_reg[1]_rep_n_0 ),
        .I4(obs_grown[4]),
        .O(\g_slot[1].nb_grown [0]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \g_slot[0].pe_i_i_37 
       (.I0(obs_unrooted[2]),
        .I1(\phase_reg[0]_rep_n_0 ),
        .I2(obs_unrooted[0]),
        .I3(\phase_reg[1]_rep_n_0 ),
        .I4(obs_unrooted[4]),
        .O(\g_slot[0].pe_i_i_37_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \g_slot[0].pe_i_i_38 
       (.I0(phase[0]),
        .I1(phase[1]),
        .O(\g_slot[3].iw [1]));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \g_slot[0].pe_i_i_39 
       (.I0(\phase_reg[1]_rep_n_0 ),
        .O(\g_slot[3].iw [5]));
  (* SOFT_HLUTNM = "soft_lutpair127" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \g_slot[0].pe_i_i_4 
       (.I0(obs_cid[11]),
        .I1(\phase_reg[0]_rep_n_0 ),
        .I2(obs_cid[1]),
        .I3(\phase_reg[1]_rep_n_0 ),
        .O(\g_slot[0].absrc [10]));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \g_slot[0].pe_i_i_40 
       (.I0(phase[0]),
        .I1(phase[1]),
        .O(\g_slot[3].iw [0]));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \g_slot[0].pe_i_i_41 
       (.I0(phase[1]),
        .I1(phase[0]),
        .O(\g_slot[2].iw ));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \g_slot[0].pe_i_i_42 
       (.I0(phase[1]),
        .I1(phase[0]),
        .O(\g_slot[3].iw [2]));
  LUT5 #(
    .INIT(32'h20202F20)) 
    \g_slot[0].pe_i_i_43 
       (.I0(obs_growth[1]),
        .I1(obs_growth[0]),
        .I2(phase[1]),
        .I3(obs_growth[5]),
        .I4(obs_growth[4]),
        .O(\g_slot[0].pe_i_i_43_n_0 ));
  LUT6 #(
    .INIT(64'h000000003B0B3808)) 
    \g_slot[0].pe_i_i_44 
       (.I0(\g_slot[1].g_dir[3].nsrc [29]),
        .I1(phase[1]),
        .I2(\phase_reg[0]_rep_n_0 ),
        .I3(\g_slot[1].g_dir[3].nsrc [14]),
        .I4(\g_slot[1].g_dir[2].nsrc [14]),
        .I5(p_0_in4_in[2]),
        .O(\g_slot[0].pe_i_i_44_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT5 #(
    .INIT(32'hCF44CF77)) 
    \g_slot[0].pe_i_i_45 
       (.I0(obs_ptr[25]),
        .I1(\phase_reg[0]_rep_n_0 ),
        .I2(obs_ptr[19]),
        .I3(phase[1]),
        .I4(obs_ptr[31]),
        .O(\g_slot[0].pe_i_i_45_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair128" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \g_slot[0].pe_i_i_5 
       (.I0(obs_cid[10]),
        .I1(\phase_reg[0]_rep_n_0 ),
        .I2(obs_cid[0]),
        .I3(\phase_reg[1]_rep_n_0 ),
        .O(\g_slot[0].absrc [9]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \g_slot[0].pe_i_i_6 
       (.I0(obs_active[2]),
        .I1(\phase_reg[0]_rep_n_0 ),
        .I2(obs_active[0]),
        .I3(\phase_reg[1]_rep_n_0 ),
        .O(\g_slot[0].absrc [8]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \g_slot[0].pe_i_i_7 
       (.I0(obs_whole[2]),
        .I1(phase[0]),
        .I2(obs_whole[0]),
        .I3(\phase_reg[1]_rep_n_0 ),
        .O(\g_slot[0].absrc [7]));
  (* SOFT_HLUTNM = "soft_lutpair129" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \g_slot[0].pe_i_i_8 
       (.I0(obs_defect[2]),
        .I1(phase[0]),
        .I2(obs_defect[0]),
        .I3(\phase_reg[1]_rep_n_0 ),
        .O(\g_slot[0].absrc [6]));
  (* SOFT_HLUTNM = "soft_lutpair123" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \g_slot[0].pe_i_i_9 
       (.I0(obs_ptr[8]),
        .I1(phase[0]),
        .I2(obs_ptr[2]),
        .I3(\phase_reg[1]_rep_n_0 ),
        .O(\g_slot[0].absrc [5]));
  FDRE \g_slot[1].bshA_reg[1][0] 
       (.C(clk),
        .CE(bshA[0]),
        .D(\slot_nxt[1] [0]),
        .Q(\g_slot[1].bshA_reg[1] [0]),
        .R(reset));
  FDRE \g_slot[1].bshA_reg[1][1] 
       (.C(clk),
        .CE(bshA[1]),
        .D(\slot_nxt[1] [0]),
        .Q(\g_slot[1].bshA_reg[1] [1]),
        .R(reset));
  FDRE \g_slot[1].bshA_reg[1][2] 
       (.C(clk),
        .CE(bshA[2]),
        .D(\slot_nxt[1] [0]),
        .Q(\g_slot[1].bshA_reg[1] [2]),
        .R(reset));
  FDRE \g_slot[1].bshB_reg[1][0] 
       (.C(clk),
        .CE(\g_slot[0].bshB[0][0]_i_1_n_0 ),
        .D(\slot_nxt[1] [0]),
        .Q(\g_slot[1].bshB_reg[1] [0]),
        .R(reset));
  FDRE \g_slot[1].bshB_reg[1][1] 
       (.C(clk),
        .CE(\g_slot[0].bshB[0][1]_i_1_n_0 ),
        .D(\slot_nxt[1] [0]),
        .Q(\g_slot[1].bshB_reg[1] [1]),
        .R(reset));
  FDRE \g_slot[1].bshB_reg[1][2] 
       (.C(clk),
        .CE(\g_slot[0].bshB[0][2]_i_1_n_0 ),
        .D(\slot_nxt[1] [0]),
        .Q(\g_slot[1].bshB_reg[1] [2]),
        .R(reset));
  FDSE \g_slot[1].omir_reg[10] 
       (.C(clk),
        .CE(\g_slot[0].own ),
        .D(obs_cid[51]),
        .Q(\g_slot[1].g_dir[2].nsrc [25]),
        .S(reset));
  FDRE \g_slot[1].omir_reg[11] 
       (.C(clk),
        .CE(\g_slot[0].own ),
        .D(obs_cid[52]),
        .Q(\g_slot[1].g_dir[2].nsrc [26]),
        .R(reset));
  FDSE \g_slot[1].omir_reg[12] 
       (.C(clk),
        .CE(\g_slot[0].own ),
        .D(obs_cid[53]),
        .Q(\g_slot[1].g_dir[2].nsrc [27]),
        .S(reset));
  FDRE \g_slot[1].omir_reg[13] 
       (.C(clk),
        .CE(\g_slot[0].own ),
        .D(obs_cid[54]),
        .Q(\g_slot[1].g_dir[2].nsrc [28]),
        .R(reset));
  FDRE \g_slot[1].omir_reg[14] 
       (.C(clk),
        .CE(\g_slot[0].own ),
        .D(\g_slot[1].g_dir[2].nsrc [14]),
        .Q(\g_slot[1].g_dir[2].nsrc [29]),
        .R(reset));
  FDRE \g_slot[1].omir_reg[17] 
       (.C(clk),
        .CE(\g_slot[2].own[28]_i_1_n_0 ),
        .D(obs_grown[8]),
        .Q(\g_slot[1].g_dir[2].nsrc [32]),
        .R(reset));
  FDRE \g_slot[1].omir_reg[18] 
       (.C(clk),
        .CE(\g_slot[2].own[28]_i_1_n_0 ),
        .D(obs_ptr[24]),
        .Q(\g_slot[1].g_dir[2].nsrc [33]),
        .R(reset));
  FDRE \g_slot[1].omir_reg[19] 
       (.C(clk),
        .CE(\g_slot[2].own[28]_i_1_n_0 ),
        .D(obs_ptr[25]),
        .Q(\g_slot[1].g_dir[2].nsrc [34]),
        .R(reset));
  FDRE \g_slot[1].omir_reg[20] 
       (.C(clk),
        .CE(\g_slot[2].own[28]_i_1_n_0 ),
        .D(obs_ptr[26]),
        .Q(\g_slot[1].g_dir[2].nsrc [35]),
        .R(reset));
  FDRE \g_slot[1].omir_reg[23] 
       (.C(clk),
        .CE(\g_slot[2].own[28]_i_1_n_0 ),
        .D(obs_active[8]),
        .Q(\g_slot[1].g_dir[2].nsrc [38]),
        .R(reset));
  FDRE \g_slot[1].omir_reg[24] 
       (.C(clk),
        .CE(\g_slot[2].own[28]_i_1_n_0 ),
        .D(obs_cid[40]),
        .Q(\g_slot[1].g_dir[2].nsrc [39]),
        .R(reset));
  FDRE \g_slot[1].omir_reg[25] 
       (.C(clk),
        .CE(\g_slot[2].own[28]_i_1_n_0 ),
        .D(obs_cid[41]),
        .Q(\g_slot[1].g_dir[2].nsrc [40]),
        .R(reset));
  FDRE \g_slot[1].omir_reg[26] 
       (.C(clk),
        .CE(\g_slot[2].own[28]_i_1_n_0 ),
        .D(obs_cid[42]),
        .Q(\g_slot[1].g_dir[2].nsrc [41]),
        .R(reset));
  FDSE \g_slot[1].omir_reg[27] 
       (.C(clk),
        .CE(\g_slot[2].own[28]_i_1_n_0 ),
        .D(obs_cid[43]),
        .Q(\g_slot[1].g_dir[2].nsrc [42]),
        .S(reset));
  FDRE \g_slot[1].omir_reg[28] 
       (.C(clk),
        .CE(\g_slot[2].own[28]_i_1_n_0 ),
        .D(obs_cid[44]),
        .Q(\g_slot[1].g_dir[2].nsrc [43]),
        .R(reset));
  FDRE \g_slot[1].omir_reg[29] 
       (.C(clk),
        .CE(\g_slot[2].own[28]_i_1_n_0 ),
        .D(\g_slot[1].g_dir[3].nsrc [14]),
        .Q(\g_slot[1].g_dir[2].nsrc [44]),
        .R(reset));
  FDRE \g_slot[1].omir_reg[2] 
       (.C(clk),
        .CE(\g_slot[0].own ),
        .D(obs_grown[10]),
        .Q(\g_slot[1].g_dir[2].nsrc [17]),
        .R(reset));
  FDRE \g_slot[1].omir_reg[30] 
       (.C(clk),
        .CE(\g_slot[2].own[43]_i_1_n_0 ),
        .D(obs_busy[6]),
        .Q(\g_slot[1].g_dir[3].nsrc [30]),
        .R(reset));
  FDRE \g_slot[1].omir_reg[31] 
       (.C(clk),
        .CE(\g_slot[2].own[43]_i_1_n_0 ),
        .D(obs_unrooted[6]),
        .Q(\g_slot[1].g_dir[3].nsrc [31]),
        .R(reset));
  FDRE \g_slot[1].omir_reg[32] 
       (.C(clk),
        .CE(\g_slot[2].own[43]_i_1_n_0 ),
        .D(obs_grown[6]),
        .Q(\g_slot[1].g_dir[3].nsrc [32]),
        .R(reset));
  FDRE \g_slot[1].omir_reg[38] 
       (.C(clk),
        .CE(\g_slot[2].own[43]_i_1_n_0 ),
        .D(obs_active[6]),
        .Q(\g_slot[1].g_dir[3].nsrc [38]),
        .R(reset));
  FDRE \g_slot[1].omir_reg[39] 
       (.C(clk),
        .CE(\g_slot[2].own[43]_i_1_n_0 ),
        .D(obs_cid[30]),
        .Q(\g_slot[1].g_dir[3].nsrc [39]),
        .R(reset));
  FDRE \g_slot[1].omir_reg[3] 
       (.C(clk),
        .CE(\g_slot[0].own ),
        .D(obs_ptr[30]),
        .Q(\g_slot[1].g_dir[2].nsrc [18]),
        .R(reset));
  FDSE \g_slot[1].omir_reg[40] 
       (.C(clk),
        .CE(\g_slot[2].own[43]_i_1_n_0 ),
        .D(obs_cid[31]),
        .Q(\g_slot[1].g_dir[3].nsrc [40]),
        .S(reset));
  FDSE \g_slot[1].omir_reg[41] 
       (.C(clk),
        .CE(\g_slot[2].own[43]_i_1_n_0 ),
        .D(obs_cid[32]),
        .Q(\g_slot[1].g_dir[3].nsrc [41]),
        .S(reset));
  FDRE \g_slot[1].omir_reg[42] 
       (.C(clk),
        .CE(\g_slot[2].own[43]_i_1_n_0 ),
        .D(obs_cid[33]),
        .Q(\g_slot[1].g_dir[3].nsrc [42]),
        .R(reset));
  FDRE \g_slot[1].omir_reg[43] 
       (.C(clk),
        .CE(\g_slot[2].own[43]_i_1_n_0 ),
        .D(obs_cid[34]),
        .Q(\g_slot[1].g_dir[3].nsrc [43]),
        .R(reset));
  FDRE \g_slot[1].omir_reg[4] 
       (.C(clk),
        .CE(\g_slot[0].own ),
        .D(obs_ptr[31]),
        .Q(\g_slot[1].g_dir[2].nsrc [19]),
        .R(reset));
  FDRE \g_slot[1].omir_reg[5] 
       (.C(clk),
        .CE(\g_slot[0].own ),
        .D(obs_ptr[32]),
        .Q(\g_slot[1].g_dir[2].nsrc [20]),
        .R(reset));
  FDRE \g_slot[1].omir_reg[8] 
       (.C(clk),
        .CE(\g_slot[0].own ),
        .D(obs_active[10]),
        .Q(\g_slot[1].g_dir[2].nsrc [23]),
        .R(reset));
  FDRE \g_slot[1].omir_reg[9] 
       (.C(clk),
        .CE(\g_slot[0].own ),
        .D(obs_cid[50]),
        .Q(\g_slot[1].g_dir[2].nsrc [24]),
        .R(reset));
  FDRE \g_slot[1].own_reg[0] 
       (.C(clk),
        .CE(\g_slot[0].own ),
        .D(\slot_nxt[1] [0]),
        .Q(obs_busy[10]),
        .R(reset));
  FDSE \g_slot[1].own_reg[10] 
       (.C(clk),
        .CE(\g_slot[0].own ),
        .D(\slot_nxt[1] [10]),
        .Q(obs_cid[51]),
        .S(reset));
  FDRE \g_slot[1].own_reg[11] 
       (.C(clk),
        .CE(\g_slot[0].own ),
        .D(\slot_nxt[1] [11]),
        .Q(obs_cid[52]),
        .R(reset));
  FDSE \g_slot[1].own_reg[12] 
       (.C(clk),
        .CE(\g_slot[0].own ),
        .D(\slot_nxt[1] [12]),
        .Q(obs_cid[53]),
        .S(reset));
  FDRE \g_slot[1].own_reg[13] 
       (.C(clk),
        .CE(\g_slot[0].own ),
        .D(\slot_nxt[1] [13]),
        .Q(obs_cid[54]),
        .R(reset));
  FDRE \g_slot[1].own_reg[14] 
       (.C(clk),
        .CE(\g_slot[0].own ),
        .D(\slot_nxt[1] [14]),
        .Q(\g_slot[1].g_dir[2].nsrc [14]),
        .R(reset));
  FDRE \g_slot[1].own_reg[15] 
       (.C(clk),
        .CE(\g_slot[2].own[28]_i_1_n_0 ),
        .D(\slot_nxt[1] [0]),
        .Q(obs_busy[8]),
        .R(reset));
  FDRE \g_slot[1].own_reg[16] 
       (.C(clk),
        .CE(\g_slot[2].own[28]_i_1_n_0 ),
        .D(\slot_nxt[1] [1]),
        .Q(obs_unrooted[8]),
        .R(reset));
  FDRE \g_slot[1].own_reg[17] 
       (.C(clk),
        .CE(\g_slot[2].own[28]_i_1_n_0 ),
        .D(\slot_nxt[1] [2]),
        .Q(obs_grown[8]),
        .R(reset));
  FDRE \g_slot[1].own_reg[18] 
       (.C(clk),
        .CE(\g_slot[2].own[28]_i_1_n_0 ),
        .D(\slot_nxt[1] [3]),
        .Q(obs_ptr[24]),
        .R(reset));
  FDRE \g_slot[1].own_reg[19] 
       (.C(clk),
        .CE(\g_slot[2].own[28]_i_1_n_0 ),
        .D(\slot_nxt[1] [4]),
        .Q(obs_ptr[25]),
        .R(reset));
  FDRE \g_slot[1].own_reg[1] 
       (.C(clk),
        .CE(\g_slot[0].own ),
        .D(\slot_nxt[1] [1]),
        .Q(obs_unrooted[10]),
        .R(reset));
  FDRE \g_slot[1].own_reg[20] 
       (.C(clk),
        .CE(\g_slot[2].own[28]_i_1_n_0 ),
        .D(\slot_nxt[1] [5]),
        .Q(obs_ptr[26]),
        .R(reset));
  FDRE \g_slot[1].own_reg[21] 
       (.C(clk),
        .CE(\g_slot[2].own[28]_i_1_n_0 ),
        .D(\slot_nxt[1] [6]),
        .Q(obs_defect[8]),
        .R(reset));
  FDSE \g_slot[1].own_reg[22] 
       (.C(clk),
        .CE(\g_slot[2].own[28]_i_1_n_0 ),
        .D(\slot_nxt[1] [7]),
        .Q(obs_whole[8]),
        .S(reset));
  FDRE \g_slot[1].own_reg[23] 
       (.C(clk),
        .CE(\g_slot[2].own[28]_i_1_n_0 ),
        .D(\slot_nxt[1] [8]),
        .Q(obs_active[8]),
        .R(reset));
  FDRE \g_slot[1].own_reg[24] 
       (.C(clk),
        .CE(\g_slot[2].own[28]_i_1_n_0 ),
        .D(\slot_nxt[1] [9]),
        .Q(obs_cid[40]),
        .R(reset));
  FDRE \g_slot[1].own_reg[25] 
       (.C(clk),
        .CE(\g_slot[2].own[28]_i_1_n_0 ),
        .D(\slot_nxt[1] [10]),
        .Q(obs_cid[41]),
        .R(reset));
  FDRE \g_slot[1].own_reg[26] 
       (.C(clk),
        .CE(\g_slot[2].own[28]_i_1_n_0 ),
        .D(\slot_nxt[1] [11]),
        .Q(obs_cid[42]),
        .R(reset));
  FDSE \g_slot[1].own_reg[27] 
       (.C(clk),
        .CE(\g_slot[2].own[28]_i_1_n_0 ),
        .D(\slot_nxt[1] [12]),
        .Q(obs_cid[43]),
        .S(reset));
  FDRE \g_slot[1].own_reg[28] 
       (.C(clk),
        .CE(\g_slot[2].own[28]_i_1_n_0 ),
        .D(\slot_nxt[1] [13]),
        .Q(obs_cid[44]),
        .R(reset));
  FDRE \g_slot[1].own_reg[29] 
       (.C(clk),
        .CE(\g_slot[2].own[28]_i_1_n_0 ),
        .D(\slot_nxt[1] [14]),
        .Q(\g_slot[1].g_dir[3].nsrc [14]),
        .R(reset));
  FDRE \g_slot[1].own_reg[2] 
       (.C(clk),
        .CE(\g_slot[0].own ),
        .D(\slot_nxt[1] [2]),
        .Q(obs_grown[10]),
        .R(reset));
  FDRE \g_slot[1].own_reg[30] 
       (.C(clk),
        .CE(\g_slot[2].own[43]_i_1_n_0 ),
        .D(\slot_nxt[1] [0]),
        .Q(obs_busy[6]),
        .R(reset));
  FDRE \g_slot[1].own_reg[31] 
       (.C(clk),
        .CE(\g_slot[2].own[43]_i_1_n_0 ),
        .D(\slot_nxt[1] [1]),
        .Q(obs_unrooted[6]),
        .R(reset));
  FDRE \g_slot[1].own_reg[32] 
       (.C(clk),
        .CE(\g_slot[2].own[43]_i_1_n_0 ),
        .D(\slot_nxt[1] [2]),
        .Q(obs_grown[6]),
        .R(reset));
  FDRE \g_slot[1].own_reg[33] 
       (.C(clk),
        .CE(\g_slot[2].own[43]_i_1_n_0 ),
        .D(\slot_nxt[1] [3]),
        .Q(obs_ptr[18]),
        .R(reset));
  FDRE \g_slot[1].own_reg[34] 
       (.C(clk),
        .CE(\g_slot[2].own[43]_i_1_n_0 ),
        .D(\slot_nxt[1] [4]),
        .Q(obs_ptr[19]),
        .R(reset));
  FDRE \g_slot[1].own_reg[35] 
       (.C(clk),
        .CE(\g_slot[2].own[43]_i_1_n_0 ),
        .D(\slot_nxt[1] [5]),
        .Q(obs_ptr[20]),
        .R(reset));
  FDRE \g_slot[1].own_reg[36] 
       (.C(clk),
        .CE(\g_slot[2].own[43]_i_1_n_0 ),
        .D(\slot_nxt[1] [6]),
        .Q(obs_defect[6]),
        .R(reset));
  FDSE \g_slot[1].own_reg[37] 
       (.C(clk),
        .CE(\g_slot[2].own[43]_i_1_n_0 ),
        .D(\slot_nxt[1] [7]),
        .Q(obs_whole[6]),
        .S(reset));
  FDRE \g_slot[1].own_reg[38] 
       (.C(clk),
        .CE(\g_slot[2].own[43]_i_1_n_0 ),
        .D(\slot_nxt[1] [8]),
        .Q(obs_active[6]),
        .R(reset));
  FDRE \g_slot[1].own_reg[39] 
       (.C(clk),
        .CE(\g_slot[2].own[43]_i_1_n_0 ),
        .D(\slot_nxt[1] [9]),
        .Q(obs_cid[30]),
        .R(reset));
  FDRE \g_slot[1].own_reg[3] 
       (.C(clk),
        .CE(\g_slot[0].own ),
        .D(\slot_nxt[1] [3]),
        .Q(obs_ptr[30]),
        .R(reset));
  FDSE \g_slot[1].own_reg[40] 
       (.C(clk),
        .CE(\g_slot[2].own[43]_i_1_n_0 ),
        .D(\slot_nxt[1] [10]),
        .Q(obs_cid[31]),
        .S(reset));
  FDSE \g_slot[1].own_reg[41] 
       (.C(clk),
        .CE(\g_slot[2].own[43]_i_1_n_0 ),
        .D(\slot_nxt[1] [11]),
        .Q(obs_cid[32]),
        .S(reset));
  FDRE \g_slot[1].own_reg[42] 
       (.C(clk),
        .CE(\g_slot[2].own[43]_i_1_n_0 ),
        .D(\slot_nxt[1] [12]),
        .Q(obs_cid[33]),
        .R(reset));
  FDRE \g_slot[1].own_reg[43] 
       (.C(clk),
        .CE(\g_slot[2].own[43]_i_1_n_0 ),
        .D(\slot_nxt[1] [13]),
        .Q(obs_cid[34]),
        .R(reset));
  FDRE \g_slot[1].own_reg[44] 
       (.C(clk),
        .CE(\g_slot[2].own[43]_i_1_n_0 ),
        .D(\slot_nxt[1] [14]),
        .Q(\g_slot[1].g_dir[3].nsrc [29]),
        .R(reset));
  FDRE \g_slot[1].own_reg[4] 
       (.C(clk),
        .CE(\g_slot[0].own ),
        .D(\slot_nxt[1] [4]),
        .Q(obs_ptr[31]),
        .R(reset));
  FDRE \g_slot[1].own_reg[5] 
       (.C(clk),
        .CE(\g_slot[0].own ),
        .D(\slot_nxt[1] [5]),
        .Q(obs_ptr[32]),
        .R(reset));
  FDRE \g_slot[1].own_reg[6] 
       (.C(clk),
        .CE(\g_slot[0].own ),
        .D(\slot_nxt[1] [6]),
        .Q(obs_defect[10]),
        .R(reset));
  FDSE \g_slot[1].own_reg[7] 
       (.C(clk),
        .CE(\g_slot[0].own ),
        .D(\slot_nxt[1] [7]),
        .Q(obs_whole[10]),
        .S(reset));
  FDRE \g_slot[1].own_reg[8] 
       (.C(clk),
        .CE(\g_slot[0].own ),
        .D(\slot_nxt[1] [8]),
        .Q(obs_active[10]),
        .R(reset));
  FDRE \g_slot[1].own_reg[9] 
       (.C(clk),
        .CE(\g_slot[0].own ),
        .D(\slot_nxt[1] [9]),
        .Q(obs_cid[50]),
        .R(reset));
  (* HAS_ABOVE = "0" *) 
  (* ID = "0" *) 
  (* IS_BND = "0" *) 
  (* IS_BOT = "0" *) 
  (* IS_TOP = "0" *) 
  (* OFF_ACT = "8" *) 
  (* OFF_BUSY = "0" *) 
  (* OFF_CID = "9" *) 
  (* OFF_DEF = "6" *) 
  (* OFF_GRW = "2" *) 
  (* OFF_PB = "14" *) 
  (* OFF_PTR = "3" *) 
  (* OFF_UNR = "1" *) 
  (* OFF_WHL = "7" *) 
  (* ONE_ONE = "0" *) 
  (* STW = "15" *) 
  (* ST_DROP = "3'b001" *) 
  (* ST_GH = "3'b100" *) 
  (* ST_GW = "3'b010" *) 
  (* ST_IDLE = "3'b000" *) 
  (* ST_MH = "3'b101" *) 
  (* ST_MW = "3'b011" *) 
  (* SYN_IDX = "-1" *) 
  (* ZZZ_ANCHOR = "0" *) 
  snowflake_pe__2 \g_slot[1].pe_i 
       (.ab_active(\g_slot[1].absrc [8]),
        .ab_cid(\g_slot[1].absrc [13:9]),
        .ab_defect(\g_slot[1].absrc [6]),
        .ab_ptr(\g_slot[1].absrc [5:3]),
        .ab_whole(\g_slot[1].absrc [7]),
        .clk(1'b0),
        .e_grown({\g_slot[1].e_grown ,\g_slot[2].e_grown07_in ,\g_slot[0].pe_i_i_12_n_0 }),
        .m_pass({m_pass_w,\g_slot[0].pe_i_i_23_n_0 }),
        .nb_active({\g_slot[1].pe_i_i_32_n_0 ,\g_slot[1].pe_i_i_33_n_0 ,p_6_in,p_7_in}),
        .nb_cid(\g_slot[1].nb_cid ),
        .nb_grown(\g_slot[1].nb_grown ),
        .nb_push({\g_slot[1].nb_push ,\g_eslot[0].umir }),
        .nb_valid({\g_slot[3].iw [5],\g_slot[2].g_dir[2].nbv ,1'b1,1'b1}),
        .o_busy_c(\NLW_g_slot[1].pe_i_o_busy_c_UNCONNECTED ),
        .o_pulse(\NLW_g_slot[1].pe_i_o_pulse_UNCONNECTED ),
        .o_push(\NLW_g_slot[1].pe_i_o_push_UNCONNECTED [3:0]),
        .p_has_above(1'b0),
        .p_id({1'b0,1'b0,\g_slot[2].iw ,\g_slot[1].pe_i_i_49_n_0 ,1'b0}),
        .p_is_bnd(1'b0),
        .p_is_bot(\g_slot[3].iw [2]),
        .p_is_syn(1'b0),
        .p_is_top(1'b0),
        .reset(1'b0),
        .st_in({p_0_in24_in,\g_slot[2].nb_cid [4:0],p_8_in,p_0_in64_in,\g_slot[1].pe_i_i_44_n_0 ,p_0_in4_in,\g_slot[2].nb_grown [0],\g_slot[1].pe_i_i_48_n_0 ,1'b0}),
        .st_out(\slot_nxt[1] ),
        .stage({\dbg_stage[2]_i_1_n_0 ,stage_reg,\dbg_stage[0]_i_1_n_0 }),
        .syn_bit(\g_slot[1].pe_i_i_1_n_0 ),
        .zzz_never_used(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair158" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \g_slot[1].pe_i_i_1 
       (.I0(\syn_buf_reg_n_0_[0] ),
        .I1(\phase_reg[1]_rep_n_0 ),
        .I2(\syn_buf_reg_n_0_[1] ),
        .O(\g_slot[1].pe_i_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair156" *) 
  LUT4 #(
    .INIT(16'h2320)) 
    \g_slot[1].pe_i_i_10 
       (.I0(obs_ptr[20]),
        .I1(phase[1]),
        .I2(phase[0]),
        .I3(obs_ptr[26]),
        .O(\g_slot[1].absrc [5]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \g_slot[1].pe_i_i_11 
       (.I0(obs_ptr[25]),
        .I1(\phase_reg[0]_rep_n_0 ),
        .I2(obs_ptr[19]),
        .I3(\phase_reg[1]_rep_n_0 ),
        .O(\g_slot[1].absrc [4]));
  (* SOFT_HLUTNM = "soft_lutpair159" *) 
  LUT4 #(
    .INIT(16'h00B8)) 
    \g_slot[1].pe_i_i_12 
       (.I0(obs_ptr[18]),
        .I1(phase[0]),
        .I2(obs_ptr[24]),
        .I3(\phase_reg[1]_rep_n_0 ),
        .O(\g_slot[1].absrc [3]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \g_slot[1].pe_i_i_13 
       (.I0(phase[1]),
        .I1(obs_growth[11]),
        .I2(obs_growth[10]),
        .I3(phase[0]),
        .I4(\g_slot[1].pe_i_i_50_n_0 ),
        .O(\g_slot[1].e_grown [3]));
  LUT5 #(
    .INIT(32'hFFFF0002)) 
    \g_slot[1].pe_i_i_14 
       (.I0(obs_unrooted[10]),
        .I1(phase[0]),
        .I2(phase[1]),
        .I3(obs_busy[10]),
        .I4(\g_slot[1].pe_i_i_51_n_0 ),
        .O(\g_slot[1].e_grown [2]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \g_slot[1].pe_i_i_15 
       (.I0(phase[1]),
        .I1(obs_growth[13]),
        .I2(obs_growth[12]),
        .I3(\phase_reg[0]_rep_n_0 ),
        .I4(\g_slot[1].pe_i_i_52_n_0 ),
        .O(\g_slot[2].e_grown07_in ));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \g_slot[1].pe_i_i_16 
       (.I0(phase[0]),
        .I1(phase[1]),
        .O(\g_slot[2].g_dir[2].nbv ));
  LUT5 #(
    .INIT(32'h0FAC00AC)) 
    \g_slot[1].pe_i_i_17 
       (.I0(obs_cid[34]),
        .I1(obs_cid[44]),
        .I2(phase[0]),
        .I3(phase[1]),
        .I4(\g_slot[1].g_dir[3].nsrc [43]),
        .O(\g_slot[1].nb_cid [19]));
  LUT5 #(
    .INIT(32'h0FAC00AC)) 
    \g_slot[1].pe_i_i_18 
       (.I0(obs_cid[33]),
        .I1(obs_cid[43]),
        .I2(phase[0]),
        .I3(phase[1]),
        .I4(\g_slot[1].g_dir[3].nsrc [42]),
        .O(\g_slot[1].nb_cid [18]));
  LUT5 #(
    .INIT(32'h0FAC00AC)) 
    \g_slot[1].pe_i_i_19 
       (.I0(obs_cid[32]),
        .I1(obs_cid[42]),
        .I2(phase[0]),
        .I3(phase[1]),
        .I4(\g_slot[1].g_dir[3].nsrc [41]),
        .O(\g_slot[1].nb_cid [17]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \g_slot[1].pe_i_i_2 
       (.I0(obs_cid[44]),
        .I1(\phase_reg[0]_rep_n_0 ),
        .I2(obs_cid[34]),
        .I3(\phase_reg[1]_rep_n_0 ),
        .O(\g_slot[1].absrc [13]));
  LUT5 #(
    .INIT(32'h0FAC00AC)) 
    \g_slot[1].pe_i_i_20 
       (.I0(obs_cid[31]),
        .I1(obs_cid[41]),
        .I2(phase[0]),
        .I3(phase[1]),
        .I4(\g_slot[1].g_dir[3].nsrc [40]),
        .O(\g_slot[1].nb_cid [16]));
  LUT5 #(
    .INIT(32'h0FAC00AC)) 
    \g_slot[1].pe_i_i_21 
       (.I0(obs_cid[30]),
        .I1(obs_cid[40]),
        .I2(phase[0]),
        .I3(phase[1]),
        .I4(\g_slot[1].g_dir[3].nsrc [39]),
        .O(\g_slot[1].nb_cid [15]));
  LUT5 #(
    .INIT(32'h0FCA00CA)) 
    \g_slot[1].pe_i_i_22 
       (.I0(obs_cid[54]),
        .I1(\g_slot[1].g_dir[2].nsrc [43]),
        .I2(phase[1]),
        .I3(phase[0]),
        .I4(\g_slot[1].g_dir[2].nsrc [28]),
        .O(\g_slot[1].nb_cid [14]));
  LUT5 #(
    .INIT(32'h0FCA00CA)) 
    \g_slot[1].pe_i_i_23 
       (.I0(obs_cid[53]),
        .I1(\g_slot[1].g_dir[2].nsrc [42]),
        .I2(phase[1]),
        .I3(phase[0]),
        .I4(\g_slot[1].g_dir[2].nsrc [27]),
        .O(\g_slot[1].nb_cid [13]));
  LUT5 #(
    .INIT(32'h0FCA00CA)) 
    \g_slot[1].pe_i_i_24 
       (.I0(obs_cid[52]),
        .I1(\g_slot[1].g_dir[2].nsrc [41]),
        .I2(phase[1]),
        .I3(phase[0]),
        .I4(\g_slot[1].g_dir[2].nsrc [26]),
        .O(\g_slot[1].nb_cid [12]));
  LUT5 #(
    .INIT(32'h0FCA00CA)) 
    \g_slot[1].pe_i_i_25 
       (.I0(obs_cid[51]),
        .I1(\g_slot[1].g_dir[2].nsrc [40]),
        .I2(phase[1]),
        .I3(phase[0]),
        .I4(\g_slot[1].g_dir[2].nsrc [25]),
        .O(\g_slot[1].nb_cid [11]));
  LUT5 #(
    .INIT(32'h0FCA00CA)) 
    \g_slot[1].pe_i_i_26 
       (.I0(obs_cid[50]),
        .I1(\g_slot[1].g_dir[2].nsrc [39]),
        .I2(phase[1]),
        .I3(phase[0]),
        .I4(\g_slot[1].g_dir[2].nsrc [24]),
        .O(\g_slot[1].nb_cid [10]));
  LUT5 #(
    .INIT(32'h0FCA00CA)) 
    \g_slot[1].pe_i_i_27 
       (.I0(obs_cid[59]),
        .I1(obs_cid[39]),
        .I2(phase[1]),
        .I3(phase[0]),
        .I4(obs_cid[49]),
        .O(\g_slot[1].nb_cid [9]));
  LUT5 #(
    .INIT(32'h0FCA00CA)) 
    \g_slot[1].pe_i_i_28 
       (.I0(obs_cid[58]),
        .I1(obs_cid[38]),
        .I2(phase[1]),
        .I3(phase[0]),
        .I4(obs_cid[48]),
        .O(\g_slot[1].nb_cid [8]));
  LUT5 #(
    .INIT(32'h0FCA00CA)) 
    \g_slot[1].pe_i_i_29 
       (.I0(obs_cid[57]),
        .I1(obs_cid[37]),
        .I2(phase[1]),
        .I3(phase[0]),
        .I4(obs_cid[47]),
        .O(\g_slot[1].nb_cid [7]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \g_slot[1].pe_i_i_3 
       (.I0(obs_cid[43]),
        .I1(\phase_reg[0]_rep_n_0 ),
        .I2(obs_cid[33]),
        .I3(\phase_reg[1]_rep_n_0 ),
        .O(\g_slot[1].absrc [12]));
  LUT5 #(
    .INIT(32'h0FCA00CA)) 
    \g_slot[1].pe_i_i_30 
       (.I0(obs_cid[56]),
        .I1(obs_cid[36]),
        .I2(phase[1]),
        .I3(phase[0]),
        .I4(obs_cid[46]),
        .O(\g_slot[1].nb_cid [6]));
  LUT5 #(
    .INIT(32'h0FCA00CA)) 
    \g_slot[1].pe_i_i_31 
       (.I0(obs_cid[55]),
        .I1(obs_cid[35]),
        .I2(phase[1]),
        .I3(phase[0]),
        .I4(obs_cid[45]),
        .O(\g_slot[1].nb_cid [5]));
  LUT5 #(
    .INIT(32'h0FAC00AC)) 
    \g_slot[1].pe_i_i_32 
       (.I0(obs_active[6]),
        .I1(obs_active[8]),
        .I2(phase[0]),
        .I3(phase[1]),
        .I4(\g_slot[1].g_dir[3].nsrc [38]),
        .O(\g_slot[1].pe_i_i_32_n_0 ));
  LUT5 #(
    .INIT(32'h0ACF0AC0)) 
    \g_slot[1].pe_i_i_33 
       (.I0(\g_slot[1].g_dir[2].nsrc [38]),
        .I1(\g_slot[1].g_dir[2].nsrc [23]),
        .I2(phase[0]),
        .I3(phase[1]),
        .I4(obs_active[10]),
        .O(\g_slot[1].pe_i_i_33_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT5 #(
    .INIT(32'h3E0E3202)) 
    \g_slot[1].pe_i_i_34 
       (.I0(obs_active[11]),
        .I1(phase[1]),
        .I2(phase[0]),
        .I3(obs_active[9]),
        .I4(obs_active[7]),
        .O(p_6_in));
  LUT5 #(
    .INIT(32'h0FCA00CA)) 
    \g_slot[1].pe_i_i_35 
       (.I0(obs_grown[8]),
        .I1(obs_grown[6]),
        .I2(\phase_reg[0]_rep_n_0 ),
        .I3(\phase_reg[1]_rep_n_0 ),
        .I4(\g_slot[1].g_dir[3].nsrc [32]),
        .O(\g_slot[1].nb_grown [3]));
  LUT5 #(
    .INIT(32'h0FCA00CA)) 
    \g_slot[1].pe_i_i_36 
       (.I0(obs_grown[10]),
        .I1(\g_slot[1].g_dir[2].nsrc [32]),
        .I2(phase[1]),
        .I3(phase[0]),
        .I4(\g_slot[1].g_dir[2].nsrc [17]),
        .O(\g_slot[1].nb_grown [2]));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT5 #(
    .INIT(32'h0FCA00CA)) 
    \g_slot[1].pe_i_i_37 
       (.I0(obs_grown[11]),
        .I1(obs_grown[7]),
        .I2(phase[1]),
        .I3(phase[0]),
        .I4(obs_grown[9]),
        .O(\g_slot[1].nb_grown [1]));
  LUT6 #(
    .INIT(64'h00000000080A0800)) 
    \g_slot[1].pe_i_i_38 
       (.I0(\g_slot[1].pe_i_i_53_n_0 ),
        .I1(\g_slot[1].g_dir[3].nsrc [29]),
        .I2(phase[1]),
        .I3(phase[0]),
        .I4(\g_slot[1].g_dir[3].nsrc [14]),
        .I5(\g_slot[1].pe_i_i_54_n_0 ),
        .O(\g_slot[1].nb_push [3]));
  LUT6 #(
    .INIT(64'hFFFFFFFF00000020)) 
    \g_slot[1].pe_i_i_39 
       (.I0(\g_slot[1].g_dir[2].nsrc [44]),
        .I1(\g_slot[1].g_dir[2].nsrc [33]),
        .I2(\g_slot[1].g_dir[2].nsrc [35]),
        .I3(\g_slot[1].g_dir[2].nsrc [34]),
        .I4(done_i_2_n_0),
        .I5(\g_slot[1].pe_i_i_55_n_0 ),
        .O(\g_slot[1].nb_push [2]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \g_slot[1].pe_i_i_4 
       (.I0(obs_cid[42]),
        .I1(\phase_reg[0]_rep_n_0 ),
        .I2(obs_cid[32]),
        .I3(\phase_reg[1]_rep_n_0 ),
        .O(\g_slot[1].absrc [11]));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \g_slot[1].pe_i_i_40 
       (.I0(\g_slot[1].pe_i_i_56_n_0 ),
        .I1(p_0_in3_in[0]),
        .I2(p_0_in3_in[1]),
        .O(\g_slot[1].nb_push [1]));
  LUT4 #(
    .INIT(16'h0040)) 
    \g_slot[1].pe_i_i_41 
       (.I0(p_0_in6_in[2]),
        .I1(\g_slot[0].pe_i_i_24_n_0 ),
        .I2(\g_slot[1].pe_i_i_57_n_0 ),
        .I3(\g_slot[1].pe_i_i_58_n_0 ),
        .O(\g_eslot[0].umir ));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT5 #(
    .INIT(32'h0FCA00CA)) 
    \g_slot[1].pe_i_i_42 
       (.I0(\g_slot[1].g_dir[2].nsrc [14]),
        .I1(\g_slot[1].g_dir[3].nsrc [14]),
        .I2(phase[0]),
        .I3(phase[1]),
        .I4(\g_slot[1].g_dir[3].nsrc [29]),
        .O(p_0_in24_in));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT5 #(
    .INIT(32'h3B380B08)) 
    \g_slot[1].pe_i_i_43 
       (.I0(obs_whole[6]),
        .I1(phase[1]),
        .I2(phase[0]),
        .I3(obs_whole[10]),
        .I4(obs_whole[8]),
        .O(p_0_in64_in));
  (* SOFT_HLUTNM = "soft_lutpair138" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \g_slot[1].pe_i_i_44 
       (.I0(obs_defect[8]),
        .I1(\phase_reg[0]_rep_n_0 ),
        .I2(obs_defect[6]),
        .I3(\phase_reg[1]_rep_n_0 ),
        .I4(obs_defect[10]),
        .O(\g_slot[1].pe_i_i_44_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \g_slot[1].pe_i_i_45 
       (.I0(obs_ptr[26]),
        .I1(\phase_reg[0]_rep_n_0 ),
        .I2(obs_ptr[20]),
        .I3(phase[1]),
        .I4(obs_ptr[32]),
        .O(p_0_in4_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT5 #(
    .INIT(32'h33E200E2)) 
    \g_slot[1].pe_i_i_46 
       (.I0(obs_ptr[31]),
        .I1(phase[1]),
        .I2(obs_ptr[19]),
        .I3(\phase_reg[0]_rep_n_0 ),
        .I4(obs_ptr[25]),
        .O(p_0_in4_in[1]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \g_slot[1].pe_i_i_47 
       (.I0(obs_ptr[24]),
        .I1(\phase_reg[0]_rep_n_0 ),
        .I2(obs_ptr[18]),
        .I3(phase[1]),
        .I4(obs_ptr[30]),
        .O(p_0_in4_in[0]));
  LUT5 #(
    .INIT(32'h2F232C20)) 
    \g_slot[1].pe_i_i_48 
       (.I0(obs_unrooted[6]),
        .I1(phase[0]),
        .I2(phase[1]),
        .I3(obs_unrooted[8]),
        .I4(obs_unrooted[10]),
        .O(\g_slot[1].pe_i_i_48_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \g_slot[1].pe_i_i_49 
       (.I0(\phase_reg[0]_rep_n_0 ),
        .O(\g_slot[1].pe_i_i_49_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \g_slot[1].pe_i_i_5 
       (.I0(obs_cid[41]),
        .I1(\phase_reg[0]_rep_n_0 ),
        .I2(obs_cid[31]),
        .I3(\phase_reg[1]_rep_n_0 ),
        .O(\g_slot[1].absrc [10]));
  LUT5 #(
    .INIT(32'h20202F20)) 
    \g_slot[1].pe_i_i_50 
       (.I0(\g_slot[1].g_dir[3].nsrc [31]),
        .I1(\g_slot[1].g_dir[3].nsrc [30]),
        .I2(phase[1]),
        .I3(obs_growth[19]),
        .I4(obs_growth[18]),
        .O(\g_slot[1].pe_i_i_50_n_0 ));
  LUT6 #(
    .INIT(64'h002000200F200020)) 
    \g_slot[1].pe_i_i_51 
       (.I0(\g_eslot[3].eomir [1]),
        .I1(\g_eslot[3].eomir [0]),
        .I2(phase[0]),
        .I3(phase[1]),
        .I4(\g_eslot[3].eomir [4]),
        .I5(\g_eslot[3].eomir [3]),
        .O(\g_slot[1].pe_i_i_51_n_0 ));
  LUT5 #(
    .INIT(32'h20202F20)) 
    \g_slot[1].pe_i_i_52 
       (.I0(obs_growth[7]),
        .I1(obs_growth[6]),
        .I2(phase[1]),
        .I3(obs_growth[21]),
        .I4(obs_growth[20]),
        .O(\g_slot[1].pe_i_i_52_n_0 ));
  LUT6 #(
    .INIT(64'h0000000C0000AA0C)) 
    \g_slot[1].pe_i_i_53 
       (.I0(obs_ptr[19]),
        .I1(obs_ptr[25]),
        .I2(obs_ptr[26]),
        .I3(phase[0]),
        .I4(phase[1]),
        .I5(obs_ptr[20]),
        .O(\g_slot[1].pe_i_i_53_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair159" *) 
  LUT4 #(
    .INIT(16'hABFB)) 
    \g_slot[1].pe_i_i_54 
       (.I0(phase[1]),
        .I1(obs_ptr[24]),
        .I2(phase[0]),
        .I3(obs_ptr[18]),
        .O(\g_slot[1].pe_i_i_54_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000400000)) 
    \g_slot[1].pe_i_i_55 
       (.I0(phase[1]),
        .I1(phase[0]),
        .I2(\g_slot[1].g_dir[2].nsrc [29]),
        .I3(\g_slot[1].g_dir[2].nsrc [18]),
        .I4(\g_slot[1].g_dir[2].nsrc [20]),
        .I5(\g_slot[1].g_dir[2].nsrc [19]),
        .O(\g_slot[1].pe_i_i_55_n_0 ));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \g_slot[1].pe_i_i_56 
       (.I0(\g_slot[2].g_dir[2].nsrc [14]),
        .I1(\phase_reg[1]_rep_n_0 ),
        .I2(\g_slot[2].g_dir[3].nsrc [29]),
        .I3(\phase_reg[0]_rep_n_0 ),
        .I4(\g_slot[2].g_dir[3].nsrc [14]),
        .I5(p_0_in3_in[2]),
        .O(\g_slot[1].pe_i_i_56_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair119" *) 
  LUT5 #(
    .INIT(32'hCF44CF77)) 
    \g_slot[1].pe_i_i_57 
       (.I0(obs_ptr[6]),
        .I1(phase[0]),
        .I2(obs_ptr[0]),
        .I3(\phase_reg[1]_rep_n_0 ),
        .I4(obs_ptr[12]),
        .O(\g_slot[1].pe_i_i_57_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair120" *) 
  LUT5 #(
    .INIT(32'hCF44CF77)) 
    \g_slot[1].pe_i_i_58 
       (.I0(obs_ptr[7]),
        .I1(phase[0]),
        .I2(obs_ptr[1]),
        .I3(\phase_reg[1]_rep_n_0 ),
        .I4(obs_ptr[13]),
        .O(\g_slot[1].pe_i_i_58_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \g_slot[1].pe_i_i_6 
       (.I0(obs_cid[40]),
        .I1(\phase_reg[0]_rep_n_0 ),
        .I2(obs_cid[30]),
        .I3(\phase_reg[1]_rep_n_0 ),
        .O(\g_slot[1].absrc [9]));
  (* SOFT_HLUTNM = "soft_lutpair157" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \g_slot[1].pe_i_i_7 
       (.I0(obs_active[8]),
        .I1(\phase_reg[0]_rep_n_0 ),
        .I2(obs_active[6]),
        .I3(\phase_reg[1]_rep_n_0 ),
        .O(\g_slot[1].absrc [8]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \g_slot[1].pe_i_i_8 
       (.I0(obs_whole[8]),
        .I1(\phase_reg[0]_rep_n_0 ),
        .I2(obs_whole[6]),
        .I3(\phase_reg[1]_rep_n_0 ),
        .O(\g_slot[1].absrc [7]));
  (* SOFT_HLUTNM = "soft_lutpair138" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \g_slot[1].pe_i_i_9 
       (.I0(obs_defect[8]),
        .I1(\phase_reg[0]_rep_n_0 ),
        .I2(obs_defect[6]),
        .I3(\phase_reg[1]_rep_n_0 ),
        .O(\g_slot[1].absrc [6]));
  FDRE \g_slot[2].bshA_reg[2][0] 
       (.C(clk),
        .CE(bshA[0]),
        .D(\slot_nxt[2] [0]),
        .Q(\g_slot[2].bshA_reg[2] [0]),
        .R(reset));
  FDRE \g_slot[2].bshA_reg[2][1] 
       (.C(clk),
        .CE(bshA[1]),
        .D(\slot_nxt[2] [0]),
        .Q(\g_slot[2].bshA_reg[2] [1]),
        .R(reset));
  FDRE \g_slot[2].bshA_reg[2][2] 
       (.C(clk),
        .CE(bshA[2]),
        .D(\slot_nxt[2] [0]),
        .Q(\g_slot[2].bshA_reg[2] [2]),
        .R(reset));
  FDRE \g_slot[2].bshB_reg[2][0] 
       (.C(clk),
        .CE(\g_slot[0].bshB[0][0]_i_1_n_0 ),
        .D(\slot_nxt[2] [0]),
        .Q(\g_slot[2].bshB_reg[2] [0]),
        .R(reset));
  FDRE \g_slot[2].bshB_reg[2][1] 
       (.C(clk),
        .CE(\g_slot[0].bshB[0][1]_i_1_n_0 ),
        .D(\slot_nxt[2] [0]),
        .Q(\g_slot[2].bshB_reg[2] [1]),
        .R(reset));
  FDRE \g_slot[2].bshB_reg[2][2] 
       (.C(clk),
        .CE(\g_slot[0].bshB[0][2]_i_1_n_0 ),
        .D(\slot_nxt[2] [0]),
        .Q(\g_slot[2].bshB_reg[2] [2]),
        .R(reset));
  FDSE \g_slot[2].omir_reg[10] 
       (.C(clk),
        .CE(\g_slot[0].own ),
        .D(obs_cid[56]),
        .Q(\g_slot[2].g_dir[2].nsrc [25]),
        .S(reset));
  FDRE \g_slot[2].omir_reg[11] 
       (.C(clk),
        .CE(\g_slot[0].own ),
        .D(obs_cid[57]),
        .Q(\g_slot[2].g_dir[2].nsrc [26]),
        .R(reset));
  FDSE \g_slot[2].omir_reg[12] 
       (.C(clk),
        .CE(\g_slot[0].own ),
        .D(obs_cid[58]),
        .Q(\g_slot[2].g_dir[2].nsrc [27]),
        .S(reset));
  FDRE \g_slot[2].omir_reg[13] 
       (.C(clk),
        .CE(\g_slot[0].own ),
        .D(obs_cid[59]),
        .Q(\g_slot[2].g_dir[2].nsrc [28]),
        .R(reset));
  FDRE \g_slot[2].omir_reg[14] 
       (.C(clk),
        .CE(\g_slot[0].own ),
        .D(\g_slot[2].g_dir[2].nsrc [14]),
        .Q(\g_slot[2].g_dir[2].nsrc [29]),
        .R(reset));
  FDRE \g_slot[2].omir_reg[17] 
       (.C(clk),
        .CE(\g_slot[2].own[28]_i_1_n_0 ),
        .D(obs_grown[9]),
        .Q(\g_slot[2].g_dir[2].nsrc [32]),
        .R(reset));
  FDRE \g_slot[2].omir_reg[18] 
       (.C(clk),
        .CE(\g_slot[2].own[28]_i_1_n_0 ),
        .D(obs_ptr[27]),
        .Q(\g_slot[2].g_dir[2].nsrc [33]),
        .R(reset));
  FDRE \g_slot[2].omir_reg[19] 
       (.C(clk),
        .CE(\g_slot[2].own[28]_i_1_n_0 ),
        .D(obs_ptr[28]),
        .Q(\g_slot[2].g_dir[2].nsrc [34]),
        .R(reset));
  FDRE \g_slot[2].omir_reg[20] 
       (.C(clk),
        .CE(\g_slot[2].own[28]_i_1_n_0 ),
        .D(obs_ptr[29]),
        .Q(\g_slot[2].g_dir[2].nsrc [35]),
        .R(reset));
  FDRE \g_slot[2].omir_reg[23] 
       (.C(clk),
        .CE(\g_slot[2].own[28]_i_1_n_0 ),
        .D(obs_active[9]),
        .Q(\g_slot[2].g_dir[2].nsrc [38]),
        .R(reset));
  FDSE \g_slot[2].omir_reg[24] 
       (.C(clk),
        .CE(\g_slot[2].own[28]_i_1_n_0 ),
        .D(obs_cid[45]),
        .Q(\g_slot[2].g_dir[2].nsrc [39]),
        .S(reset));
  FDRE \g_slot[2].omir_reg[25] 
       (.C(clk),
        .CE(\g_slot[2].own[28]_i_1_n_0 ),
        .D(obs_cid[46]),
        .Q(\g_slot[2].g_dir[2].nsrc [40]),
        .R(reset));
  FDRE \g_slot[2].omir_reg[26] 
       (.C(clk),
        .CE(\g_slot[2].own[28]_i_1_n_0 ),
        .D(obs_cid[47]),
        .Q(\g_slot[2].g_dir[2].nsrc [41]),
        .R(reset));
  FDSE \g_slot[2].omir_reg[27] 
       (.C(clk),
        .CE(\g_slot[2].own[28]_i_1_n_0 ),
        .D(obs_cid[48]),
        .Q(\g_slot[2].g_dir[2].nsrc [42]),
        .S(reset));
  FDRE \g_slot[2].omir_reg[28] 
       (.C(clk),
        .CE(\g_slot[2].own[28]_i_1_n_0 ),
        .D(obs_cid[49]),
        .Q(\g_slot[2].g_dir[2].nsrc [43]),
        .R(reset));
  FDRE \g_slot[2].omir_reg[29] 
       (.C(clk),
        .CE(\g_slot[2].own[28]_i_1_n_0 ),
        .D(\g_slot[2].g_dir[3].nsrc [14]),
        .Q(\g_slot[2].g_dir[2].nsrc [44]),
        .R(reset));
  FDRE \g_slot[2].omir_reg[2] 
       (.C(clk),
        .CE(\g_slot[0].own ),
        .D(obs_grown[11]),
        .Q(\g_slot[2].g_dir[2].nsrc [17]),
        .R(reset));
  FDRE \g_slot[2].omir_reg[30] 
       (.C(clk),
        .CE(\g_slot[2].own[43]_i_1_n_0 ),
        .D(obs_busy[7]),
        .Q(\g_slot[2].g_dir[3].nsrc [30]),
        .R(reset));
  FDRE \g_slot[2].omir_reg[31] 
       (.C(clk),
        .CE(\g_slot[2].own[43]_i_1_n_0 ),
        .D(obs_unrooted[7]),
        .Q(\g_slot[2].g_dir[3].nsrc [31]),
        .R(reset));
  FDRE \g_slot[2].omir_reg[32] 
       (.C(clk),
        .CE(\g_slot[2].own[43]_i_1_n_0 ),
        .D(obs_grown[7]),
        .Q(\g_slot[2].g_dir[3].nsrc [32]),
        .R(reset));
  FDRE \g_slot[2].omir_reg[38] 
       (.C(clk),
        .CE(\g_slot[2].own[43]_i_1_n_0 ),
        .D(obs_active[7]),
        .Q(\g_slot[2].g_dir[3].nsrc [38]),
        .R(reset));
  FDSE \g_slot[2].omir_reg[39] 
       (.C(clk),
        .CE(\g_slot[2].own[43]_i_1_n_0 ),
        .D(obs_cid[35]),
        .Q(\g_slot[2].g_dir[3].nsrc [39]),
        .S(reset));
  FDRE \g_slot[2].omir_reg[3] 
       (.C(clk),
        .CE(\g_slot[0].own ),
        .D(obs_ptr[33]),
        .Q(\g_slot[2].g_dir[2].nsrc [18]),
        .R(reset));
  FDSE \g_slot[2].omir_reg[40] 
       (.C(clk),
        .CE(\g_slot[2].own[43]_i_1_n_0 ),
        .D(obs_cid[36]),
        .Q(\g_slot[2].g_dir[3].nsrc [40]),
        .S(reset));
  FDSE \g_slot[2].omir_reg[41] 
       (.C(clk),
        .CE(\g_slot[2].own[43]_i_1_n_0 ),
        .D(obs_cid[37]),
        .Q(\g_slot[2].g_dir[3].nsrc [41]),
        .S(reset));
  FDRE \g_slot[2].omir_reg[42] 
       (.C(clk),
        .CE(\g_slot[2].own[43]_i_1_n_0 ),
        .D(obs_cid[38]),
        .Q(\g_slot[2].g_dir[3].nsrc [42]),
        .R(reset));
  FDRE \g_slot[2].omir_reg[43] 
       (.C(clk),
        .CE(\g_slot[2].own[43]_i_1_n_0 ),
        .D(obs_cid[39]),
        .Q(\g_slot[2].g_dir[3].nsrc [43]),
        .R(reset));
  FDRE \g_slot[2].omir_reg[4] 
       (.C(clk),
        .CE(\g_slot[0].own ),
        .D(obs_ptr[34]),
        .Q(\g_slot[2].g_dir[2].nsrc [19]),
        .R(reset));
  FDRE \g_slot[2].omir_reg[5] 
       (.C(clk),
        .CE(\g_slot[0].own ),
        .D(obs_ptr[35]),
        .Q(\g_slot[2].g_dir[2].nsrc [20]),
        .R(reset));
  FDRE \g_slot[2].omir_reg[8] 
       (.C(clk),
        .CE(\g_slot[0].own ),
        .D(obs_active[11]),
        .Q(\g_slot[2].g_dir[2].nsrc [23]),
        .R(reset));
  FDSE \g_slot[2].omir_reg[9] 
       (.C(clk),
        .CE(\g_slot[0].own ),
        .D(obs_cid[55]),
        .Q(\g_slot[2].g_dir[2].nsrc [24]),
        .S(reset));
  LUT5 #(
    .INIT(32'h11111110)) 
    \g_slot[2].own[13]_i_1 
       (.I0(phase[0]),
        .I1(phase[1]),
        .I2(stage__0[0]),
        .I3(stage__0[2]),
        .I4(stage__0[1]),
        .O(\g_slot[0].own ));
  LUT5 #(
    .INIT(32'h22222220)) 
    \g_slot[2].own[28]_i_1 
       (.I0(phase[0]),
        .I1(phase[1]),
        .I2(stage__0[0]),
        .I3(stage__0[2]),
        .I4(stage__0[1]),
        .O(\g_slot[2].own[28]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h22222220)) 
    \g_slot[2].own[43]_i_1 
       (.I0(phase[1]),
        .I1(phase[0]),
        .I2(stage__0[0]),
        .I3(stage__0[2]),
        .I4(stage__0[1]),
        .O(\g_slot[2].own[43]_i_1_n_0 ));
  FDRE \g_slot[2].own_reg[0] 
       (.C(clk),
        .CE(\g_slot[0].own ),
        .D(\slot_nxt[2] [0]),
        .Q(obs_busy[11]),
        .R(reset));
  FDSE \g_slot[2].own_reg[10] 
       (.C(clk),
        .CE(\g_slot[0].own ),
        .D(\slot_nxt[2] [10]),
        .Q(obs_cid[56]),
        .S(reset));
  FDRE \g_slot[2].own_reg[11] 
       (.C(clk),
        .CE(\g_slot[0].own ),
        .D(\slot_nxt[2] [11]),
        .Q(obs_cid[57]),
        .R(reset));
  FDSE \g_slot[2].own_reg[12] 
       (.C(clk),
        .CE(\g_slot[0].own ),
        .D(\slot_nxt[2] [12]),
        .Q(obs_cid[58]),
        .S(reset));
  FDRE \g_slot[2].own_reg[13] 
       (.C(clk),
        .CE(\g_slot[0].own ),
        .D(\slot_nxt[2] [13]),
        .Q(obs_cid[59]),
        .R(reset));
  FDRE \g_slot[2].own_reg[14] 
       (.C(clk),
        .CE(\g_slot[0].own ),
        .D(\slot_nxt[2] [14]),
        .Q(\g_slot[2].g_dir[2].nsrc [14]),
        .R(reset));
  FDRE \g_slot[2].own_reg[15] 
       (.C(clk),
        .CE(\g_slot[2].own[28]_i_1_n_0 ),
        .D(\slot_nxt[2] [0]),
        .Q(obs_busy[9]),
        .R(reset));
  FDRE \g_slot[2].own_reg[16] 
       (.C(clk),
        .CE(\g_slot[2].own[28]_i_1_n_0 ),
        .D(\slot_nxt[2] [1]),
        .Q(obs_unrooted[9]),
        .R(reset));
  FDRE \g_slot[2].own_reg[17] 
       (.C(clk),
        .CE(\g_slot[2].own[28]_i_1_n_0 ),
        .D(\slot_nxt[2] [2]),
        .Q(obs_grown[9]),
        .R(reset));
  FDRE \g_slot[2].own_reg[18] 
       (.C(clk),
        .CE(\g_slot[2].own[28]_i_1_n_0 ),
        .D(\slot_nxt[2] [3]),
        .Q(obs_ptr[27]),
        .R(reset));
  FDRE \g_slot[2].own_reg[19] 
       (.C(clk),
        .CE(\g_slot[2].own[28]_i_1_n_0 ),
        .D(\slot_nxt[2] [4]),
        .Q(obs_ptr[28]),
        .R(reset));
  FDRE \g_slot[2].own_reg[1] 
       (.C(clk),
        .CE(\g_slot[0].own ),
        .D(\slot_nxt[2] [1]),
        .Q(obs_unrooted[11]),
        .R(reset));
  FDRE \g_slot[2].own_reg[20] 
       (.C(clk),
        .CE(\g_slot[2].own[28]_i_1_n_0 ),
        .D(\slot_nxt[2] [5]),
        .Q(obs_ptr[29]),
        .R(reset));
  FDRE \g_slot[2].own_reg[21] 
       (.C(clk),
        .CE(\g_slot[2].own[28]_i_1_n_0 ),
        .D(\slot_nxt[2] [6]),
        .Q(obs_defect[9]),
        .R(reset));
  FDSE \g_slot[2].own_reg[22] 
       (.C(clk),
        .CE(\g_slot[2].own[28]_i_1_n_0 ),
        .D(\slot_nxt[2] [7]),
        .Q(obs_whole[9]),
        .S(reset));
  FDRE \g_slot[2].own_reg[23] 
       (.C(clk),
        .CE(\g_slot[2].own[28]_i_1_n_0 ),
        .D(\slot_nxt[2] [8]),
        .Q(obs_active[9]),
        .R(reset));
  FDSE \g_slot[2].own_reg[24] 
       (.C(clk),
        .CE(\g_slot[2].own[28]_i_1_n_0 ),
        .D(\slot_nxt[2] [9]),
        .Q(obs_cid[45]),
        .S(reset));
  FDRE \g_slot[2].own_reg[25] 
       (.C(clk),
        .CE(\g_slot[2].own[28]_i_1_n_0 ),
        .D(\slot_nxt[2] [10]),
        .Q(obs_cid[46]),
        .R(reset));
  FDRE \g_slot[2].own_reg[26] 
       (.C(clk),
        .CE(\g_slot[2].own[28]_i_1_n_0 ),
        .D(\slot_nxt[2] [11]),
        .Q(obs_cid[47]),
        .R(reset));
  FDSE \g_slot[2].own_reg[27] 
       (.C(clk),
        .CE(\g_slot[2].own[28]_i_1_n_0 ),
        .D(\slot_nxt[2] [12]),
        .Q(obs_cid[48]),
        .S(reset));
  FDRE \g_slot[2].own_reg[28] 
       (.C(clk),
        .CE(\g_slot[2].own[28]_i_1_n_0 ),
        .D(\slot_nxt[2] [13]),
        .Q(obs_cid[49]),
        .R(reset));
  FDRE \g_slot[2].own_reg[29] 
       (.C(clk),
        .CE(\g_slot[2].own[28]_i_1_n_0 ),
        .D(\slot_nxt[2] [14]),
        .Q(\g_slot[2].g_dir[3].nsrc [14]),
        .R(reset));
  FDRE \g_slot[2].own_reg[2] 
       (.C(clk),
        .CE(\g_slot[0].own ),
        .D(\slot_nxt[2] [2]),
        .Q(obs_grown[11]),
        .R(reset));
  FDRE \g_slot[2].own_reg[30] 
       (.C(clk),
        .CE(\g_slot[2].own[43]_i_1_n_0 ),
        .D(\slot_nxt[2] [0]),
        .Q(obs_busy[7]),
        .R(reset));
  FDRE \g_slot[2].own_reg[31] 
       (.C(clk),
        .CE(\g_slot[2].own[43]_i_1_n_0 ),
        .D(\slot_nxt[2] [1]),
        .Q(obs_unrooted[7]),
        .R(reset));
  FDRE \g_slot[2].own_reg[32] 
       (.C(clk),
        .CE(\g_slot[2].own[43]_i_1_n_0 ),
        .D(\slot_nxt[2] [2]),
        .Q(obs_grown[7]),
        .R(reset));
  FDRE \g_slot[2].own_reg[33] 
       (.C(clk),
        .CE(\g_slot[2].own[43]_i_1_n_0 ),
        .D(\slot_nxt[2] [3]),
        .Q(obs_ptr[21]),
        .R(reset));
  FDRE \g_slot[2].own_reg[34] 
       (.C(clk),
        .CE(\g_slot[2].own[43]_i_1_n_0 ),
        .D(\slot_nxt[2] [4]),
        .Q(obs_ptr[22]),
        .R(reset));
  FDRE \g_slot[2].own_reg[35] 
       (.C(clk),
        .CE(\g_slot[2].own[43]_i_1_n_0 ),
        .D(\slot_nxt[2] [5]),
        .Q(obs_ptr[23]),
        .R(reset));
  FDRE \g_slot[2].own_reg[36] 
       (.C(clk),
        .CE(\g_slot[2].own[43]_i_1_n_0 ),
        .D(\slot_nxt[2] [6]),
        .Q(obs_defect[7]),
        .R(reset));
  FDSE \g_slot[2].own_reg[37] 
       (.C(clk),
        .CE(\g_slot[2].own[43]_i_1_n_0 ),
        .D(\slot_nxt[2] [7]),
        .Q(obs_whole[7]),
        .S(reset));
  FDRE \g_slot[2].own_reg[38] 
       (.C(clk),
        .CE(\g_slot[2].own[43]_i_1_n_0 ),
        .D(\slot_nxt[2] [8]),
        .Q(obs_active[7]),
        .R(reset));
  FDSE \g_slot[2].own_reg[39] 
       (.C(clk),
        .CE(\g_slot[2].own[43]_i_1_n_0 ),
        .D(\slot_nxt[2] [9]),
        .Q(obs_cid[35]),
        .S(reset));
  FDRE \g_slot[2].own_reg[3] 
       (.C(clk),
        .CE(\g_slot[0].own ),
        .D(\slot_nxt[2] [3]),
        .Q(obs_ptr[33]),
        .R(reset));
  FDSE \g_slot[2].own_reg[40] 
       (.C(clk),
        .CE(\g_slot[2].own[43]_i_1_n_0 ),
        .D(\slot_nxt[2] [10]),
        .Q(obs_cid[36]),
        .S(reset));
  FDSE \g_slot[2].own_reg[41] 
       (.C(clk),
        .CE(\g_slot[2].own[43]_i_1_n_0 ),
        .D(\slot_nxt[2] [11]),
        .Q(obs_cid[37]),
        .S(reset));
  FDRE \g_slot[2].own_reg[42] 
       (.C(clk),
        .CE(\g_slot[2].own[43]_i_1_n_0 ),
        .D(\slot_nxt[2] [12]),
        .Q(obs_cid[38]),
        .R(reset));
  FDRE \g_slot[2].own_reg[43] 
       (.C(clk),
        .CE(\g_slot[2].own[43]_i_1_n_0 ),
        .D(\slot_nxt[2] [13]),
        .Q(obs_cid[39]),
        .R(reset));
  FDRE \g_slot[2].own_reg[44] 
       (.C(clk),
        .CE(\g_slot[2].own[43]_i_1_n_0 ),
        .D(\slot_nxt[2] [14]),
        .Q(\g_slot[2].g_dir[3].nsrc [29]),
        .R(reset));
  FDRE \g_slot[2].own_reg[4] 
       (.C(clk),
        .CE(\g_slot[0].own ),
        .D(\slot_nxt[2] [4]),
        .Q(obs_ptr[34]),
        .R(reset));
  FDRE \g_slot[2].own_reg[5] 
       (.C(clk),
        .CE(\g_slot[0].own ),
        .D(\slot_nxt[2] [5]),
        .Q(obs_ptr[35]),
        .R(reset));
  FDRE \g_slot[2].own_reg[6] 
       (.C(clk),
        .CE(\g_slot[0].own ),
        .D(\slot_nxt[2] [6]),
        .Q(obs_defect[11]),
        .R(reset));
  FDSE \g_slot[2].own_reg[7] 
       (.C(clk),
        .CE(\g_slot[0].own ),
        .D(\slot_nxt[2] [7]),
        .Q(obs_whole[11]),
        .S(reset));
  FDRE \g_slot[2].own_reg[8] 
       (.C(clk),
        .CE(\g_slot[0].own ),
        .D(\slot_nxt[2] [8]),
        .Q(obs_active[11]),
        .R(reset));
  FDSE \g_slot[2].own_reg[9] 
       (.C(clk),
        .CE(\g_slot[0].own ),
        .D(\slot_nxt[2] [9]),
        .Q(obs_cid[55]),
        .S(reset));
  (* HAS_ABOVE = "0" *) 
  (* ID = "0" *) 
  (* IS_BND = "0" *) 
  (* IS_BOT = "0" *) 
  (* IS_TOP = "0" *) 
  (* OFF_ACT = "8" *) 
  (* OFF_BUSY = "0" *) 
  (* OFF_CID = "9" *) 
  (* OFF_DEF = "6" *) 
  (* OFF_GRW = "2" *) 
  (* OFF_PB = "14" *) 
  (* OFF_PTR = "3" *) 
  (* OFF_UNR = "1" *) 
  (* OFF_WHL = "7" *) 
  (* ONE_ONE = "0" *) 
  (* STW = "15" *) 
  (* ST_DROP = "3'b001" *) 
  (* ST_GH = "3'b100" *) 
  (* ST_GW = "3'b010" *) 
  (* ST_IDLE = "3'b000" *) 
  (* ST_MH = "3'b101" *) 
  (* ST_MW = "3'b011" *) 
  (* SYN_IDX = "-1" *) 
  (* ZZZ_ANCHOR = "0" *) 
  snowflake_pe__3 \g_slot[2].pe_i 
       (.ab_active(\g_slot[2].absrc [8]),
        .ab_cid(\g_slot[2].absrc [13:9]),
        .ab_defect(\g_slot[2].absrc [6]),
        .ab_ptr(\g_slot[2].absrc [5:3]),
        .ab_whole(\g_slot[2].absrc [7]),
        .clk(1'b0),
        .e_grown({\g_slot[2].e_grown ,\g_slot[2].pe_i_i_15_n_0 ,\g_slot[2].e_grown07_in }),
        .m_pass({m_pass_w,\g_slot[0].pe_i_i_23_n_0 }),
        .nb_active({\g_slot[2].pe_i_i_31_n_0 ,\g_slot[2].pe_i_i_32_n_0 ,p_1_in,p_8_in}),
        .nb_cid(\g_slot[2].nb_cid ),
        .nb_grown(\g_slot[2].nb_grown ),
        .nb_push({\g_slot[2].nb_push [3:2],\g_eslot[2].vmir ,\g_slot[2].nb_push [0]}),
        .nb_valid({\g_slot[3].iw [5],\g_slot[2].g_dir[2].nbv ,1'b1,1'b1}),
        .o_busy_c(\NLW_g_slot[2].pe_i_o_busy_c_UNCONNECTED ),
        .o_pulse(\NLW_g_slot[2].pe_i_o_pulse_UNCONNECTED ),
        .o_push(\NLW_g_slot[2].pe_i_o_push_UNCONNECTED [3:0]),
        .p_has_above(1'b0),
        .p_id({1'b0,1'b0,\g_slot[2].iw ,\g_slot[1].pe_i_i_49_n_0 ,\g_slot[3].iw [0]}),
        .p_is_bnd(1'b0),
        .p_is_bot(\g_slot[3].iw [2]),
        .p_is_syn(1'b0),
        .p_is_top(1'b0),
        .reset(1'b0),
        .st_in({p_0_in23_in,\g_slot[1].nb_cid [9:5],p_6_in,p_0_in63_in,\g_slot[2].pe_i_i_43_n_0 ,p_0_in3_in,\g_slot[1].nb_grown [1],\g_slot[2].pe_i_i_47_n_0 ,1'b0}),
        .st_out(\slot_nxt[2] ),
        .stage({\dbg_stage[2]_i_1_n_0 ,stage_reg,\dbg_stage[0]_i_1_n_0 }),
        .syn_bit(syn_bit0),
        .zzz_never_used(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair158" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    \g_slot[2].pe_i_i_1 
       (.I0(\syn_buf_reg_n_0_[0] ),
        .I1(phase[1]),
        .I2(\phase_reg[0]_rep_n_0 ),
        .I3(\syn_buf_reg_n_0_[1] ),
        .O(syn_bit0));
  (* SOFT_HLUTNM = "soft_lutpair122" *) 
  LUT4 #(
    .INIT(16'h00B8)) 
    \g_slot[2].pe_i_i_10 
       (.I0(obs_ptr[23]),
        .I1(\phase_reg[0]_rep_n_0 ),
        .I2(obs_ptr[29]),
        .I3(\phase_reg[1]_rep_n_0 ),
        .O(\g_slot[2].absrc [5]));
  (* SOFT_HLUTNM = "soft_lutpair121" *) 
  LUT4 #(
    .INIT(16'h00B8)) 
    \g_slot[2].pe_i_i_11 
       (.I0(obs_ptr[22]),
        .I1(\phase_reg[0]_rep_n_0 ),
        .I2(obs_ptr[28]),
        .I3(\phase_reg[1]_rep_n_0 ),
        .O(\g_slot[2].absrc [4]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \g_slot[2].pe_i_i_12 
       (.I0(obs_ptr[27]),
        .I1(phase[0]),
        .I2(obs_ptr[21]),
        .I3(\phase_reg[1]_rep_n_0 ),
        .O(\g_slot[2].absrc [3]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \g_slot[2].pe_i_i_13 
       (.I0(phase[1]),
        .I1(obs_growth[17]),
        .I2(obs_growth[16]),
        .I3(\phase_reg[0]_rep_n_0 ),
        .I4(\g_slot[2].pe_i_i_48_n_0 ),
        .O(\g_slot[2].e_grown [3]));
  LUT5 #(
    .INIT(32'hFFFF0002)) 
    \g_slot[2].pe_i_i_14 
       (.I0(obs_unrooted[11]),
        .I1(phase[0]),
        .I2(phase[1]),
        .I3(obs_busy[11]),
        .I4(\g_slot[2].pe_i_i_49_n_0 ),
        .O(\g_slot[2].e_grown [2]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \g_slot[2].pe_i_i_15 
       (.I0(phase[1]),
        .I1(obs_growth[15]),
        .I2(obs_growth[14]),
        .I3(\phase_reg[0]_rep_n_0 ),
        .I4(\g_slot[2].pe_i_i_50_n_0 ),
        .O(\g_slot[2].pe_i_i_15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT5 #(
    .INIT(32'h0FAC00AC)) 
    \g_slot[2].pe_i_i_16 
       (.I0(obs_cid[39]),
        .I1(obs_cid[49]),
        .I2(phase[0]),
        .I3(phase[1]),
        .I4(\g_slot[2].g_dir[3].nsrc [43]),
        .O(\g_slot[2].nb_cid [19]));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT5 #(
    .INIT(32'h0FAC00AC)) 
    \g_slot[2].pe_i_i_17 
       (.I0(obs_cid[38]),
        .I1(obs_cid[48]),
        .I2(phase[0]),
        .I3(phase[1]),
        .I4(\g_slot[2].g_dir[3].nsrc [42]),
        .O(\g_slot[2].nb_cid [18]));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT5 #(
    .INIT(32'h0FAC00AC)) 
    \g_slot[2].pe_i_i_18 
       (.I0(obs_cid[37]),
        .I1(obs_cid[47]),
        .I2(phase[0]),
        .I3(phase[1]),
        .I4(\g_slot[2].g_dir[3].nsrc [41]),
        .O(\g_slot[2].nb_cid [17]));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT5 #(
    .INIT(32'h0FAC00AC)) 
    \g_slot[2].pe_i_i_19 
       (.I0(obs_cid[36]),
        .I1(obs_cid[46]),
        .I2(phase[0]),
        .I3(phase[1]),
        .I4(\g_slot[2].g_dir[3].nsrc [40]),
        .O(\g_slot[2].nb_cid [16]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \g_slot[2].pe_i_i_2 
       (.I0(obs_cid[49]),
        .I1(\phase_reg[0]_rep_n_0 ),
        .I2(obs_cid[39]),
        .I3(\phase_reg[1]_rep_n_0 ),
        .O(\g_slot[2].absrc [13]));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT5 #(
    .INIT(32'h0FAC00AC)) 
    \g_slot[2].pe_i_i_20 
       (.I0(obs_cid[35]),
        .I1(obs_cid[45]),
        .I2(phase[0]),
        .I3(phase[1]),
        .I4(\g_slot[2].g_dir[3].nsrc [39]),
        .O(\g_slot[2].nb_cid [15]));
  LUT5 #(
    .INIT(32'h0FCA00CA)) 
    \g_slot[2].pe_i_i_21 
       (.I0(obs_cid[59]),
        .I1(\g_slot[2].g_dir[2].nsrc [43]),
        .I2(phase[1]),
        .I3(phase[0]),
        .I4(\g_slot[2].g_dir[2].nsrc [28]),
        .O(\g_slot[2].nb_cid [14]));
  LUT5 #(
    .INIT(32'h0FCA00CA)) 
    \g_slot[2].pe_i_i_22 
       (.I0(obs_cid[58]),
        .I1(\g_slot[2].g_dir[2].nsrc [42]),
        .I2(phase[1]),
        .I3(phase[0]),
        .I4(\g_slot[2].g_dir[2].nsrc [27]),
        .O(\g_slot[2].nb_cid [13]));
  LUT5 #(
    .INIT(32'h0FCA00CA)) 
    \g_slot[2].pe_i_i_23 
       (.I0(obs_cid[57]),
        .I1(\g_slot[2].g_dir[2].nsrc [41]),
        .I2(phase[1]),
        .I3(phase[0]),
        .I4(\g_slot[2].g_dir[2].nsrc [26]),
        .O(\g_slot[2].nb_cid [12]));
  LUT5 #(
    .INIT(32'h0FCA00CA)) 
    \g_slot[2].pe_i_i_24 
       (.I0(obs_cid[56]),
        .I1(\g_slot[2].g_dir[2].nsrc [40]),
        .I2(phase[1]),
        .I3(phase[0]),
        .I4(\g_slot[2].g_dir[2].nsrc [25]),
        .O(\g_slot[2].nb_cid [11]));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT5 #(
    .INIT(32'h0FCA00CA)) 
    \g_slot[2].pe_i_i_25 
       (.I0(obs_cid[55]),
        .I1(\g_slot[2].g_dir[2].nsrc [39]),
        .I2(phase[1]),
        .I3(phase[0]),
        .I4(\g_slot[2].g_dir[2].nsrc [24]),
        .O(\g_slot[2].nb_cid [10]));
  (* SOFT_HLUTNM = "soft_lutpair131" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \g_slot[2].pe_i_i_26 
       (.I0(obs_cid[19]),
        .I1(\phase_reg[0]_rep_n_0 ),
        .I2(obs_cid[9]),
        .I3(\phase_reg[1]_rep_n_0 ),
        .I4(obs_cid[29]),
        .O(\g_slot[2].nb_cid [9]));
  (* SOFT_HLUTNM = "soft_lutpair132" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \g_slot[2].pe_i_i_27 
       (.I0(obs_cid[18]),
        .I1(\phase_reg[0]_rep_n_0 ),
        .I2(obs_cid[8]),
        .I3(\phase_reg[1]_rep_n_0 ),
        .I4(obs_cid[28]),
        .O(\g_slot[2].nb_cid [8]));
  (* SOFT_HLUTNM = "soft_lutpair133" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \g_slot[2].pe_i_i_28 
       (.I0(obs_cid[17]),
        .I1(\phase_reg[0]_rep_n_0 ),
        .I2(obs_cid[7]),
        .I3(\phase_reg[1]_rep_n_0 ),
        .I4(obs_cid[27]),
        .O(\g_slot[2].nb_cid [7]));
  (* SOFT_HLUTNM = "soft_lutpair134" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \g_slot[2].pe_i_i_29 
       (.I0(obs_cid[16]),
        .I1(\phase_reg[0]_rep_n_0 ),
        .I2(obs_cid[6]),
        .I3(\phase_reg[1]_rep_n_0 ),
        .I4(obs_cid[26]),
        .O(\g_slot[2].nb_cid [6]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \g_slot[2].pe_i_i_3 
       (.I0(obs_cid[48]),
        .I1(\phase_reg[0]_rep_n_0 ),
        .I2(obs_cid[38]),
        .I3(\phase_reg[1]_rep_n_0 ),
        .O(\g_slot[2].absrc [12]));
  (* SOFT_HLUTNM = "soft_lutpair135" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \g_slot[2].pe_i_i_30 
       (.I0(obs_cid[15]),
        .I1(\phase_reg[0]_rep_n_0 ),
        .I2(obs_cid[5]),
        .I3(\phase_reg[1]_rep_n_0 ),
        .I4(obs_cid[25]),
        .O(\g_slot[2].nb_cid [5]));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT5 #(
    .INIT(32'h0FAC00AC)) 
    \g_slot[2].pe_i_i_31 
       (.I0(obs_active[7]),
        .I1(obs_active[9]),
        .I2(phase[0]),
        .I3(phase[1]),
        .I4(\g_slot[2].g_dir[3].nsrc [38]),
        .O(\g_slot[2].pe_i_i_31_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT5 #(
    .INIT(32'h0ACF0AC0)) 
    \g_slot[2].pe_i_i_32 
       (.I0(\g_slot[2].g_dir[2].nsrc [38]),
        .I1(\g_slot[2].g_dir[2].nsrc [23]),
        .I2(phase[0]),
        .I3(phase[1]),
        .I4(obs_active[11]),
        .O(\g_slot[2].pe_i_i_32_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT5 #(
    .INIT(32'h3E0E3202)) 
    \g_slot[2].pe_i_i_33 
       (.I0(obs_active[5]),
        .I1(phase[0]),
        .I2(phase[1]),
        .I3(obs_active[1]),
        .I4(obs_active[3]),
        .O(p_1_in));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT5 #(
    .INIT(32'h0FCA00CA)) 
    \g_slot[2].pe_i_i_34 
       (.I0(obs_grown[9]),
        .I1(obs_grown[7]),
        .I2(\phase_reg[0]_rep_n_0 ),
        .I3(\phase_reg[1]_rep_n_0 ),
        .I4(\g_slot[2].g_dir[3].nsrc [32]),
        .O(\g_slot[2].nb_grown [3]));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT5 #(
    .INIT(32'h0FCA00CA)) 
    \g_slot[2].pe_i_i_35 
       (.I0(obs_grown[11]),
        .I1(\g_slot[2].g_dir[2].nsrc [32]),
        .I2(\phase_reg[1]_rep_n_0 ),
        .I3(\phase_reg[0]_rep_n_0 ),
        .I4(\g_slot[2].g_dir[2].nsrc [17]),
        .O(\g_slot[2].nb_grown [2]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \g_slot[2].pe_i_i_36 
       (.I0(obs_grown[3]),
        .I1(\phase_reg[0]_rep_n_0 ),
        .I2(obs_grown[1]),
        .I3(phase[1]),
        .I4(obs_grown[5]),
        .O(\g_slot[2].nb_grown [1]));
  LUT6 #(
    .INIT(64'h0000A80800000000)) 
    \g_slot[2].pe_i_i_37 
       (.I0(\g_slot[2].pe_i_i_51_n_0 ),
        .I1(obs_ptr[27]),
        .I2(phase[0]),
        .I3(obs_ptr[21]),
        .I4(phase[1]),
        .I5(\g_slot[2].pe_i_i_52_n_0 ),
        .O(\g_slot[2].nb_push [3]));
  LUT6 #(
    .INIT(64'hFFFFFFFF00000020)) 
    \g_slot[2].pe_i_i_38 
       (.I0(\g_slot[2].g_dir[2].nsrc [44]),
        .I1(\g_slot[2].g_dir[2].nsrc [33]),
        .I2(\g_slot[2].g_dir[2].nsrc [35]),
        .I3(\g_slot[2].g_dir[2].nsrc [34]),
        .I4(done_i_2_n_0),
        .I5(\g_slot[2].pe_i_i_53_n_0 ),
        .O(\g_slot[2].nb_push [2]));
  LUT4 #(
    .INIT(16'h1000)) 
    \g_slot[2].pe_i_i_39 
       (.I0(p_0_in11_in[2]),
        .I1(p_0_in11_in[1]),
        .I2(p_0_in11_in[0]),
        .I3(\g_slot[3].pe_i_i_14_n_0 ),
        .O(\g_eslot[2].vmir ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \g_slot[2].pe_i_i_4 
       (.I0(obs_cid[47]),
        .I1(\phase_reg[0]_rep_n_0 ),
        .I2(obs_cid[37]),
        .I3(\phase_reg[1]_rep_n_0 ),
        .O(\g_slot[2].absrc [11]));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT5 #(
    .INIT(32'h0000002A)) 
    \g_slot[2].pe_i_i_40 
       (.I0(\g_slot[0].pe_i_i_44_n_0 ),
        .I1(\phase_reg[0]_rep_n_0 ),
        .I2(phase[1]),
        .I3(p_0_in4_in[0]),
        .I4(\g_slot[0].pe_i_i_45_n_0 ),
        .O(\g_slot[2].nb_push [0]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \g_slot[2].pe_i_i_41 
       (.I0(\g_slot[2].g_dir[3].nsrc [14]),
        .I1(\phase_reg[0]_rep_n_0 ),
        .I2(\g_slot[2].g_dir[3].nsrc [29]),
        .I3(\phase_reg[1]_rep_n_0 ),
        .I4(\g_slot[2].g_dir[2].nsrc [14]),
        .O(p_0_in23_in));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT5 #(
    .INIT(32'h3E0E3202)) 
    \g_slot[2].pe_i_i_42 
       (.I0(obs_whole[11]),
        .I1(phase[1]),
        .I2(phase[0]),
        .I3(obs_whole[9]),
        .I4(obs_whole[7]),
        .O(p_0_in63_in));
  (* SOFT_HLUTNM = "soft_lutpair137" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \g_slot[2].pe_i_i_43 
       (.I0(obs_defect[9]),
        .I1(\phase_reg[0]_rep_n_0 ),
        .I2(obs_defect[7]),
        .I3(\phase_reg[1]_rep_n_0 ),
        .I4(obs_defect[11]),
        .O(\g_slot[2].pe_i_i_43_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair122" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \g_slot[2].pe_i_i_44 
       (.I0(obs_ptr[29]),
        .I1(\phase_reg[0]_rep_n_0 ),
        .I2(obs_ptr[23]),
        .I3(\phase_reg[1]_rep_n_0 ),
        .I4(obs_ptr[35]),
        .O(p_0_in3_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair121" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \g_slot[2].pe_i_i_45 
       (.I0(obs_ptr[28]),
        .I1(\phase_reg[0]_rep_n_0 ),
        .I2(obs_ptr[22]),
        .I3(\phase_reg[1]_rep_n_0 ),
        .I4(obs_ptr[34]),
        .O(p_0_in3_in[1]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \g_slot[2].pe_i_i_46 
       (.I0(obs_ptr[27]),
        .I1(\phase_reg[0]_rep_n_0 ),
        .I2(obs_ptr[21]),
        .I3(\phase_reg[1]_rep_n_0 ),
        .I4(obs_ptr[33]),
        .O(p_0_in3_in[0]));
  LUT5 #(
    .INIT(32'h2F232C20)) 
    \g_slot[2].pe_i_i_47 
       (.I0(obs_unrooted[7]),
        .I1(phase[0]),
        .I2(phase[1]),
        .I3(obs_unrooted[9]),
        .I4(obs_unrooted[11]),
        .O(\g_slot[2].pe_i_i_47_n_0 ));
  LUT5 #(
    .INIT(32'h20202F20)) 
    \g_slot[2].pe_i_i_48 
       (.I0(\g_slot[2].g_dir[3].nsrc [31]),
        .I1(\g_slot[2].g_dir[3].nsrc [30]),
        .I2(phase[1]),
        .I3(obs_growth[25]),
        .I4(obs_growth[24]),
        .O(\g_slot[2].pe_i_i_48_n_0 ));
  LUT6 #(
    .INIT(64'h002000200F200020)) 
    \g_slot[2].pe_i_i_49 
       (.I0(\g_eslot[4].eomir [1]),
        .I1(\g_eslot[4].eomir [0]),
        .I2(phase[0]),
        .I3(phase[1]),
        .I4(\g_eslot[4].eomir [4]),
        .I5(\g_eslot[4].eomir [3]),
        .O(\g_slot[2].pe_i_i_49_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \g_slot[2].pe_i_i_5 
       (.I0(obs_cid[46]),
        .I1(\phase_reg[0]_rep_n_0 ),
        .I2(obs_cid[36]),
        .I3(\phase_reg[1]_rep_n_0 ),
        .O(\g_slot[2].absrc [10]));
  LUT5 #(
    .INIT(32'h20202F20)) 
    \g_slot[2].pe_i_i_50 
       (.I0(obs_growth[9]),
        .I1(obs_growth[8]),
        .I2(phase[1]),
        .I3(obs_growth[23]),
        .I4(obs_growth[22]),
        .O(\g_slot[2].pe_i_i_50_n_0 ));
  LUT5 #(
    .INIT(32'h00FF5033)) 
    \g_slot[2].pe_i_i_51 
       (.I0(obs_ptr[23]),
        .I1(obs_ptr[29]),
        .I2(\g_slot[2].g_dir[3].nsrc [29]),
        .I3(phase[0]),
        .I4(phase[1]),
        .O(\g_slot[2].pe_i_i_51_n_0 ));
  LUT6 #(
    .INIT(64'h00000000E0CCE000)) 
    \g_slot[2].pe_i_i_52 
       (.I0(\g_slot[2].g_dir[3].nsrc [29]),
        .I1(\g_slot[2].g_dir[3].nsrc [14]),
        .I2(obs_ptr[22]),
        .I3(phase[0]),
        .I4(obs_ptr[28]),
        .I5(phase[1]),
        .O(\g_slot[2].pe_i_i_52_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000400000)) 
    \g_slot[2].pe_i_i_53 
       (.I0(phase[1]),
        .I1(phase[0]),
        .I2(\g_slot[2].g_dir[2].nsrc [29]),
        .I3(\g_slot[2].g_dir[2].nsrc [18]),
        .I4(\g_slot[2].g_dir[2].nsrc [20]),
        .I5(\g_slot[2].g_dir[2].nsrc [19]),
        .O(\g_slot[2].pe_i_i_53_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \g_slot[2].pe_i_i_6 
       (.I0(obs_cid[45]),
        .I1(\phase_reg[0]_rep_n_0 ),
        .I2(obs_cid[35]),
        .I3(\phase_reg[1]_rep_n_0 ),
        .O(\g_slot[2].absrc [9]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \g_slot[2].pe_i_i_7 
       (.I0(obs_active[9]),
        .I1(\phase_reg[0]_rep_n_0 ),
        .I2(obs_active[7]),
        .I3(\phase_reg[1]_rep_n_0 ),
        .O(\g_slot[2].absrc [8]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \g_slot[2].pe_i_i_8 
       (.I0(obs_whole[9]),
        .I1(phase[0]),
        .I2(obs_whole[7]),
        .I3(\phase_reg[1]_rep_n_0 ),
        .O(\g_slot[2].absrc [7]));
  (* SOFT_HLUTNM = "soft_lutpair137" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \g_slot[2].pe_i_i_9 
       (.I0(obs_defect[9]),
        .I1(\phase_reg[0]_rep_n_0 ),
        .I2(obs_defect[7]),
        .I3(\phase_reg[1]_rep_n_0 ),
        .O(\g_slot[2].absrc [6]));
  FDRE \g_slot[3].bshA_reg[3][0] 
       (.C(clk),
        .CE(bshA[0]),
        .D(\slot_nxt[3] [0]),
        .Q(\g_slot[3].bshA_reg[3] [0]),
        .R(reset));
  FDRE \g_slot[3].bshA_reg[3][1] 
       (.C(clk),
        .CE(bshA[1]),
        .D(\slot_nxt[3] [0]),
        .Q(\g_slot[3].bshA_reg[3] [1]),
        .R(reset));
  FDRE \g_slot[3].bshA_reg[3][2] 
       (.C(clk),
        .CE(bshA[2]),
        .D(\slot_nxt[3] [0]),
        .Q(\g_slot[3].bshA_reg[3] [2]),
        .R(reset));
  FDRE \g_slot[3].bshB_reg[3][0] 
       (.C(clk),
        .CE(\g_slot[0].bshB[0][0]_i_1_n_0 ),
        .D(\slot_nxt[3] [0]),
        .Q(\g_slot[3].bshB_reg[3] [0]),
        .R(reset));
  FDRE \g_slot[3].bshB_reg[3][1] 
       (.C(clk),
        .CE(\g_slot[0].bshB[0][1]_i_1_n_0 ),
        .D(\slot_nxt[3] [0]),
        .Q(\g_slot[3].bshB_reg[3] [1]),
        .R(reset));
  FDRE \g_slot[3].bshB_reg[3][2] 
       (.C(clk),
        .CE(\g_slot[0].bshB[0][2]_i_1_n_0 ),
        .D(\slot_nxt[3] [0]),
        .Q(\g_slot[3].bshB_reg[3] [2]),
        .R(reset));
  FDRE \g_slot[3].omir_reg[23] 
       (.C(clk),
        .CE(\g_slot[2].own[28]_i_1_n_0 ),
        .D(obs_active[3]),
        .Q(\g_slot[3].g_dir[1].nsrc [23]),
        .R(reset));
  FDRE \g_slot[3].omir_reg[38] 
       (.C(clk),
        .CE(\g_slot[2].own[43]_i_1_n_0 ),
        .D(obs_active[1]),
        .Q(\g_slot[3].g_dir[1].nsrc [38]),
        .R(reset));
  FDRE \g_slot[3].own_reg[0] 
       (.C(clk),
        .CE(\g_slot[0].own ),
        .D(\slot_nxt[3] [0]),
        .Q(obs_busy[5]),
        .R(reset));
  FDRE \g_slot[3].own_reg[10] 
       (.C(clk),
        .CE(\g_slot[0].own ),
        .D(\slot_nxt[3] [10]),
        .Q(obs_cid[26]),
        .R(reset));
  FDSE \g_slot[3].own_reg[11] 
       (.C(clk),
        .CE(\g_slot[0].own ),
        .D(\slot_nxt[3] [11]),
        .Q(obs_cid[27]),
        .S(reset));
  FDRE \g_slot[3].own_reg[12] 
       (.C(clk),
        .CE(\g_slot[0].own ),
        .D(\slot_nxt[3] [12]),
        .Q(obs_cid[28]),
        .R(reset));
  FDRE \g_slot[3].own_reg[13] 
       (.C(clk),
        .CE(\g_slot[0].own ),
        .D(\slot_nxt[3] [13]),
        .Q(obs_cid[29]),
        .R(reset));
  FDRE \g_slot[3].own_reg[14] 
       (.C(clk),
        .CE(\g_slot[0].own ),
        .D(\slot_nxt[3] [14]),
        .Q(\g_slot[3].g_dir[1].nsrc [14]),
        .R(reset));
  FDRE \g_slot[3].own_reg[15] 
       (.C(clk),
        .CE(\g_slot[2].own[28]_i_1_n_0 ),
        .D(\slot_nxt[3] [0]),
        .Q(obs_busy[3]),
        .R(reset));
  FDRE \g_slot[3].own_reg[16] 
       (.C(clk),
        .CE(\g_slot[2].own[28]_i_1_n_0 ),
        .D(\slot_nxt[3] [1]),
        .Q(obs_unrooted[3]),
        .R(reset));
  FDRE \g_slot[3].own_reg[17] 
       (.C(clk),
        .CE(\g_slot[2].own[28]_i_1_n_0 ),
        .D(\slot_nxt[3] [2]),
        .Q(obs_grown[3]),
        .R(reset));
  FDRE \g_slot[3].own_reg[18] 
       (.C(clk),
        .CE(\g_slot[2].own[28]_i_1_n_0 ),
        .D(\slot_nxt[3] [3]),
        .Q(obs_ptr[9]),
        .R(reset));
  FDRE \g_slot[3].own_reg[19] 
       (.C(clk),
        .CE(\g_slot[2].own[28]_i_1_n_0 ),
        .D(\slot_nxt[3] [4]),
        .Q(obs_ptr[10]),
        .R(reset));
  FDRE \g_slot[3].own_reg[1] 
       (.C(clk),
        .CE(\g_slot[0].own ),
        .D(\slot_nxt[3] [1]),
        .Q(obs_unrooted[5]),
        .R(reset));
  FDRE \g_slot[3].own_reg[20] 
       (.C(clk),
        .CE(\g_slot[2].own[28]_i_1_n_0 ),
        .D(\slot_nxt[3] [5]),
        .Q(obs_ptr[11]),
        .R(reset));
  FDRE \g_slot[3].own_reg[21] 
       (.C(clk),
        .CE(\g_slot[2].own[28]_i_1_n_0 ),
        .D(\slot_nxt[3] [6]),
        .Q(obs_defect[3]),
        .R(reset));
  FDSE \g_slot[3].own_reg[22] 
       (.C(clk),
        .CE(\g_slot[2].own[28]_i_1_n_0 ),
        .D(\slot_nxt[3] [7]),
        .Q(obs_whole[3]),
        .S(reset));
  FDRE \g_slot[3].own_reg[23] 
       (.C(clk),
        .CE(\g_slot[2].own[28]_i_1_n_0 ),
        .D(\slot_nxt[3] [8]),
        .Q(obs_active[3]),
        .R(reset));
  FDSE \g_slot[3].own_reg[24] 
       (.C(clk),
        .CE(\g_slot[2].own[28]_i_1_n_0 ),
        .D(\slot_nxt[3] [9]),
        .Q(obs_cid[15]),
        .S(reset));
  FDSE \g_slot[3].own_reg[25] 
       (.C(clk),
        .CE(\g_slot[2].own[28]_i_1_n_0 ),
        .D(\slot_nxt[3] [10]),
        .Q(obs_cid[16]),
        .S(reset));
  FDRE \g_slot[3].own_reg[26] 
       (.C(clk),
        .CE(\g_slot[2].own[28]_i_1_n_0 ),
        .D(\slot_nxt[3] [11]),
        .Q(obs_cid[17]),
        .R(reset));
  FDRE \g_slot[3].own_reg[27] 
       (.C(clk),
        .CE(\g_slot[2].own[28]_i_1_n_0 ),
        .D(\slot_nxt[3] [12]),
        .Q(obs_cid[18]),
        .R(reset));
  FDRE \g_slot[3].own_reg[28] 
       (.C(clk),
        .CE(\g_slot[2].own[28]_i_1_n_0 ),
        .D(\slot_nxt[3] [13]),
        .Q(obs_cid[19]),
        .R(reset));
  FDRE \g_slot[3].own_reg[29] 
       (.C(clk),
        .CE(\g_slot[2].own[28]_i_1_n_0 ),
        .D(\slot_nxt[3] [14]),
        .Q(\g_slot[3].own_reg_n_0_[29] ),
        .R(reset));
  FDRE \g_slot[3].own_reg[2] 
       (.C(clk),
        .CE(\g_slot[0].own ),
        .D(\slot_nxt[3] [2]),
        .Q(obs_grown[5]),
        .R(reset));
  FDRE \g_slot[3].own_reg[30] 
       (.C(clk),
        .CE(\g_slot[2].own[43]_i_1_n_0 ),
        .D(\slot_nxt[3] [0]),
        .Q(obs_busy[1]),
        .R(reset));
  FDRE \g_slot[3].own_reg[31] 
       (.C(clk),
        .CE(\g_slot[2].own[43]_i_1_n_0 ),
        .D(\slot_nxt[3] [1]),
        .Q(obs_unrooted[1]),
        .R(reset));
  FDRE \g_slot[3].own_reg[32] 
       (.C(clk),
        .CE(\g_slot[2].own[43]_i_1_n_0 ),
        .D(\slot_nxt[3] [2]),
        .Q(obs_grown[1]),
        .R(reset));
  FDRE \g_slot[3].own_reg[33] 
       (.C(clk),
        .CE(\g_slot[2].own[43]_i_1_n_0 ),
        .D(\slot_nxt[3] [3]),
        .Q(obs_ptr[3]),
        .R(reset));
  FDRE \g_slot[3].own_reg[34] 
       (.C(clk),
        .CE(\g_slot[2].own[43]_i_1_n_0 ),
        .D(\slot_nxt[3] [4]),
        .Q(obs_ptr[4]),
        .R(reset));
  FDRE \g_slot[3].own_reg[35] 
       (.C(clk),
        .CE(\g_slot[2].own[43]_i_1_n_0 ),
        .D(\slot_nxt[3] [5]),
        .Q(obs_ptr[5]),
        .R(reset));
  FDRE \g_slot[3].own_reg[36] 
       (.C(clk),
        .CE(\g_slot[2].own[43]_i_1_n_0 ),
        .D(\slot_nxt[3] [6]),
        .Q(obs_defect[1]),
        .R(reset));
  FDSE \g_slot[3].own_reg[37] 
       (.C(clk),
        .CE(\g_slot[2].own[43]_i_1_n_0 ),
        .D(\slot_nxt[3] [7]),
        .Q(obs_whole[1]),
        .S(reset));
  FDRE \g_slot[3].own_reg[38] 
       (.C(clk),
        .CE(\g_slot[2].own[43]_i_1_n_0 ),
        .D(\slot_nxt[3] [8]),
        .Q(obs_active[1]),
        .R(reset));
  FDSE \g_slot[3].own_reg[39] 
       (.C(clk),
        .CE(\g_slot[2].own[43]_i_1_n_0 ),
        .D(\slot_nxt[3] [9]),
        .Q(obs_cid[5]),
        .S(reset));
  FDRE \g_slot[3].own_reg[3] 
       (.C(clk),
        .CE(\g_slot[0].own ),
        .D(\slot_nxt[3] [3]),
        .Q(obs_ptr[15]),
        .R(reset));
  FDRE \g_slot[3].own_reg[40] 
       (.C(clk),
        .CE(\g_slot[2].own[43]_i_1_n_0 ),
        .D(\slot_nxt[3] [10]),
        .Q(obs_cid[6]),
        .R(reset));
  FDRE \g_slot[3].own_reg[41] 
       (.C(clk),
        .CE(\g_slot[2].own[43]_i_1_n_0 ),
        .D(\slot_nxt[3] [11]),
        .Q(obs_cid[7]),
        .R(reset));
  FDRE \g_slot[3].own_reg[42] 
       (.C(clk),
        .CE(\g_slot[2].own[43]_i_1_n_0 ),
        .D(\slot_nxt[3] [12]),
        .Q(obs_cid[8]),
        .R(reset));
  FDRE \g_slot[3].own_reg[43] 
       (.C(clk),
        .CE(\g_slot[2].own[43]_i_1_n_0 ),
        .D(\slot_nxt[3] [13]),
        .Q(obs_cid[9]),
        .R(reset));
  FDRE \g_slot[3].own_reg[44] 
       (.C(clk),
        .CE(\g_slot[2].own[43]_i_1_n_0 ),
        .D(\slot_nxt[3] [14]),
        .Q(\g_slot[3].own_reg_n_0_[44] ),
        .R(reset));
  FDRE \g_slot[3].own_reg[4] 
       (.C(clk),
        .CE(\g_slot[0].own ),
        .D(\slot_nxt[3] [4]),
        .Q(obs_ptr[16]),
        .R(reset));
  FDRE \g_slot[3].own_reg[5] 
       (.C(clk),
        .CE(\g_slot[0].own ),
        .D(\slot_nxt[3] [5]),
        .Q(obs_ptr[17]),
        .R(reset));
  FDRE \g_slot[3].own_reg[6] 
       (.C(clk),
        .CE(\g_slot[0].own ),
        .D(\slot_nxt[3] [6]),
        .Q(obs_defect[5]),
        .R(reset));
  FDSE \g_slot[3].own_reg[7] 
       (.C(clk),
        .CE(\g_slot[0].own ),
        .D(\slot_nxt[3] [7]),
        .Q(obs_whole[5]),
        .S(reset));
  FDRE \g_slot[3].own_reg[8] 
       (.C(clk),
        .CE(\g_slot[0].own ),
        .D(\slot_nxt[3] [8]),
        .Q(obs_active[5]),
        .R(reset));
  FDSE \g_slot[3].own_reg[9] 
       (.C(clk),
        .CE(\g_slot[0].own ),
        .D(\slot_nxt[3] [9]),
        .Q(obs_cid[25]),
        .S(reset));
  (* HAS_ABOVE = "0" *) 
  (* ID = "0" *) 
  (* IS_BND = "0" *) 
  (* IS_BOT = "0" *) 
  (* IS_TOP = "0" *) 
  (* OFF_ACT = "8" *) 
  (* OFF_BUSY = "0" *) 
  (* OFF_CID = "9" *) 
  (* OFF_DEF = "6" *) 
  (* OFF_GRW = "2" *) 
  (* OFF_PB = "14" *) 
  (* OFF_PTR = "3" *) 
  (* OFF_UNR = "1" *) 
  (* OFF_WHL = "7" *) 
  (* ONE_ONE = "0" *) 
  (* STW = "15" *) 
  (* ST_DROP = "3'b001" *) 
  (* ST_GH = "3'b100" *) 
  (* ST_GW = "3'b010" *) 
  (* ST_IDLE = "3'b000" *) 
  (* ST_MH = "3'b101" *) 
  (* ST_MW = "3'b011" *) 
  (* SYN_IDX = "-1" *) 
  (* ZZZ_ANCHOR = "0" *) 
  snowflake_pe \g_slot[3].pe_i 
       (.ab_active(\g_slot[3].absrc [8]),
        .ab_cid(\g_slot[3].absrc [13:9]),
        .ab_defect(\g_slot[3].absrc [6]),
        .ab_ptr(\g_slot[3].absrc [5:3]),
        .ab_whole(\g_slot[3].absrc [7]),
        .clk(1'b0),
        .e_grown({1'b0,1'b0,1'b0,\g_slot[2].pe_i_i_15_n_0 }),
        .m_pass({m_pass_w,\g_slot[0].pe_i_i_23_n_0 }),
        .nb_active({1'b0,\g_slot[3].pe_i_i_12_n_0 ,1'b0,p_6_in}),
        .nb_cid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,\g_slot[1].nb_cid [9:5]}),
        .nb_grown({1'b0,1'b0,1'b0,\g_slot[1].nb_grown [1]}),
        .nb_push({1'b0,1'b0,1'b0,\g_slot[3].nb_push0 }),
        .nb_valid({1'b0,1'b0,1'b0,1'b1}),
        .o_busy_c(\NLW_g_slot[3].pe_i_o_busy_c_UNCONNECTED ),
        .o_pulse(\NLW_g_slot[3].pe_i_o_pulse_UNCONNECTED ),
        .o_push(\NLW_g_slot[3].pe_i_o_push_UNCONNECTED [3:0]),
        .p_has_above(\g_slot[3].iw [5]),
        .p_id({1'b0,1'b0,1'b0,\g_slot[3].iw [1],1'b0}),
        .p_is_bnd(\g_slot[3].iw [0]),
        .p_is_bot(\g_slot[3].iw [2]),
        .p_is_syn(1'b0),
        .p_is_top(\g_slot[2].iw ),
        .reset(1'b0),
        .st_in({\g_slot[3].pe_i_i_14_n_0 ,\g_slot[2].nb_cid [9:5],p_1_in,p_0_in61_in,\g_slot[3].pe_i_i_16_n_0 ,p_0_in11_in,\g_slot[2].nb_grown [1],\g_slot[3].pe_i_i_20_n_0 ,1'b0}),
        .st_out(\slot_nxt[3] ),
        .stage({\dbg_stage[2]_i_1_n_0 ,stage_reg,\dbg_stage[0]_i_1_n_0 }),
        .syn_bit(1'b0),
        .zzz_never_used(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair131" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \g_slot[3].pe_i_i_1 
       (.I0(obs_cid[19]),
        .I1(\phase_reg[0]_rep_n_0 ),
        .I2(obs_cid[9]),
        .I3(\phase_reg[1]_rep_n_0 ),
        .O(\g_slot[3].absrc [13]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \g_slot[3].pe_i_i_10 
       (.I0(obs_ptr[10]),
        .I1(\phase_reg[0]_rep_n_0 ),
        .I2(obs_ptr[4]),
        .I3(\phase_reg[1]_rep_n_0 ),
        .O(\g_slot[3].absrc [4]));
  (* SOFT_HLUTNM = "soft_lutpair130" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \g_slot[3].pe_i_i_11 
       (.I0(obs_ptr[9]),
        .I1(phase[0]),
        .I2(obs_ptr[3]),
        .I3(\phase_reg[1]_rep_n_0 ),
        .O(\g_slot[3].absrc [3]));
  LUT5 #(
    .INIT(32'h0FCA00CA)) 
    \g_slot[3].pe_i_i_12 
       (.I0(obs_active[5]),
        .I1(\g_slot[3].g_dir[1].nsrc [38]),
        .I2(phase[1]),
        .I3(phase[0]),
        .I4(\g_slot[3].g_dir[1].nsrc [23]),
        .O(\g_slot[3].pe_i_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT5 #(
    .INIT(32'h002A0000)) 
    \g_slot[3].pe_i_i_13 
       (.I0(\g_slot[1].pe_i_i_56_n_0 ),
        .I1(\phase_reg[0]_rep_n_0 ),
        .I2(\phase_reg[1]_rep_n_0 ),
        .I3(p_0_in3_in[0]),
        .I4(p_0_in3_in[1]),
        .O(\g_slot[3].nb_push0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \g_slot[3].pe_i_i_14 
       (.I0(\g_slot[3].own_reg_n_0_[29] ),
        .I1(phase[0]),
        .I2(\g_slot[3].own_reg_n_0_[44] ),
        .I3(\phase_reg[1]_rep_n_0 ),
        .I4(\g_slot[3].g_dir[1].nsrc [14]),
        .O(\g_slot[3].pe_i_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT5 #(
    .INIT(32'h33E200E2)) 
    \g_slot[3].pe_i_i_15 
       (.I0(obs_whole[5]),
        .I1(phase[1]),
        .I2(obs_whole[1]),
        .I3(\phase_reg[0]_rep_n_0 ),
        .I4(obs_whole[3]),
        .O(p_0_in61_in));
  (* SOFT_HLUTNM = "soft_lutpair136" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \g_slot[3].pe_i_i_16 
       (.I0(obs_defect[3]),
        .I1(\phase_reg[0]_rep_n_0 ),
        .I2(obs_defect[1]),
        .I3(\phase_reg[1]_rep_n_0 ),
        .I4(obs_defect[5]),
        .O(\g_slot[3].pe_i_i_16_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \g_slot[3].pe_i_i_17 
       (.I0(obs_ptr[11]),
        .I1(phase[0]),
        .I2(obs_ptr[5]),
        .I3(\phase_reg[1]_rep_n_0 ),
        .I4(obs_ptr[17]),
        .O(p_0_in11_in[2]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \g_slot[3].pe_i_i_18 
       (.I0(obs_ptr[10]),
        .I1(phase[0]),
        .I2(obs_ptr[4]),
        .I3(\phase_reg[1]_rep_n_0 ),
        .I4(obs_ptr[16]),
        .O(p_0_in11_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair130" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \g_slot[3].pe_i_i_19 
       (.I0(obs_ptr[9]),
        .I1(phase[0]),
        .I2(obs_ptr[3]),
        .I3(\phase_reg[1]_rep_n_0 ),
        .I4(obs_ptr[15]),
        .O(p_0_in11_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair132" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \g_slot[3].pe_i_i_2 
       (.I0(obs_cid[18]),
        .I1(\phase_reg[0]_rep_n_0 ),
        .I2(obs_cid[8]),
        .I3(\phase_reg[1]_rep_n_0 ),
        .O(\g_slot[3].absrc [12]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \g_slot[3].pe_i_i_20 
       (.I0(obs_unrooted[3]),
        .I1(\phase_reg[0]_rep_n_0 ),
        .I2(obs_unrooted[1]),
        .I3(\phase_reg[1]_rep_n_0 ),
        .I4(obs_unrooted[5]),
        .O(\g_slot[3].pe_i_i_20_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair133" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \g_slot[3].pe_i_i_3 
       (.I0(obs_cid[17]),
        .I1(\phase_reg[0]_rep_n_0 ),
        .I2(obs_cid[7]),
        .I3(\phase_reg[1]_rep_n_0 ),
        .O(\g_slot[3].absrc [11]));
  (* SOFT_HLUTNM = "soft_lutpair134" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \g_slot[3].pe_i_i_4 
       (.I0(obs_cid[16]),
        .I1(\phase_reg[0]_rep_n_0 ),
        .I2(obs_cid[6]),
        .I3(\phase_reg[1]_rep_n_0 ),
        .O(\g_slot[3].absrc [10]));
  (* SOFT_HLUTNM = "soft_lutpair135" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \g_slot[3].pe_i_i_5 
       (.I0(obs_cid[15]),
        .I1(\phase_reg[0]_rep_n_0 ),
        .I2(obs_cid[5]),
        .I3(\phase_reg[1]_rep_n_0 ),
        .O(\g_slot[3].absrc [9]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \g_slot[3].pe_i_i_6 
       (.I0(obs_active[3]),
        .I1(\phase_reg[0]_rep_n_0 ),
        .I2(obs_active[1]),
        .I3(\phase_reg[1]_rep_n_0 ),
        .O(\g_slot[3].absrc [8]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \g_slot[3].pe_i_i_7 
       (.I0(obs_whole[3]),
        .I1(phase[0]),
        .I2(obs_whole[1]),
        .I3(\phase_reg[1]_rep_n_0 ),
        .O(\g_slot[3].absrc [7]));
  (* SOFT_HLUTNM = "soft_lutpair136" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \g_slot[3].pe_i_i_8 
       (.I0(obs_defect[3]),
        .I1(\phase_reg[0]_rep_n_0 ),
        .I2(obs_defect[1]),
        .I3(\phase_reg[1]_rep_n_0 ),
        .O(\g_slot[3].absrc [6]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \g_slot[3].pe_i_i_9 
       (.I0(obs_ptr[11]),
        .I1(\phase_reg[0]_rep_n_0 ),
        .I2(obs_ptr[5]),
        .I3(\phase_reg[1]_rep_n_0 ),
        .O(\g_slot[3].absrc [5]));
  LUT6 #(
    .INIT(64'h0000000088898980)) 
    lat_bpass_i_1
       (.I0(lat_bpass),
        .I1(done_i_2_n_0),
        .I2(stage__0[1]),
        .I3(stage__0[2]),
        .I4(stage__0[0]),
        .I5(reset),
        .O(lat_bpass_i_1_n_0));
  FDRE lat_bpass_reg
       (.C(clk),
        .CE(1'b1),
        .D(lat_bpass_i_1_n_0),
        .Q(lat_bpass),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hFE)) 
    \lat_live_cnt[31]_i_1 
       (.I0(stage__0[0]),
        .I1(stage__0[2]),
        .I2(stage__0[1]),
        .O(\lat_live_cnt[31]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \lat_live_cnt[7]_i_2 
       (.I0(lat_live_cnt[0]),
        .O(\lat_live_cnt[7]_i_2_n_0 ));
  FDRE \lat_live_cnt_reg[0] 
       (.C(clk),
        .CE(\lat_live_cnt[31]_i_1_n_0 ),
        .D(\lat_live_cnt_reg[7]_i_1_n_15 ),
        .Q(lat_live_cnt[0]),
        .R(reset));
  FDRE \lat_live_cnt_reg[10] 
       (.C(clk),
        .CE(\lat_live_cnt[31]_i_1_n_0 ),
        .D(\lat_live_cnt_reg[15]_i_1_n_13 ),
        .Q(lat_live_cnt[10]),
        .R(reset));
  FDRE \lat_live_cnt_reg[11] 
       (.C(clk),
        .CE(\lat_live_cnt[31]_i_1_n_0 ),
        .D(\lat_live_cnt_reg[15]_i_1_n_12 ),
        .Q(lat_live_cnt[11]),
        .R(reset));
  FDRE \lat_live_cnt_reg[12] 
       (.C(clk),
        .CE(\lat_live_cnt[31]_i_1_n_0 ),
        .D(\lat_live_cnt_reg[15]_i_1_n_11 ),
        .Q(lat_live_cnt[12]),
        .R(reset));
  FDRE \lat_live_cnt_reg[13] 
       (.C(clk),
        .CE(\lat_live_cnt[31]_i_1_n_0 ),
        .D(\lat_live_cnt_reg[15]_i_1_n_10 ),
        .Q(lat_live_cnt[13]),
        .R(reset));
  FDRE \lat_live_cnt_reg[14] 
       (.C(clk),
        .CE(\lat_live_cnt[31]_i_1_n_0 ),
        .D(\lat_live_cnt_reg[15]_i_1_n_9 ),
        .Q(lat_live_cnt[14]),
        .R(reset));
  FDRE \lat_live_cnt_reg[15] 
       (.C(clk),
        .CE(\lat_live_cnt[31]_i_1_n_0 ),
        .D(\lat_live_cnt_reg[15]_i_1_n_8 ),
        .Q(lat_live_cnt[15]),
        .R(reset));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \lat_live_cnt_reg[15]_i_1 
       (.CI(\lat_live_cnt_reg[7]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\lat_live_cnt_reg[15]_i_1_n_0 ,\lat_live_cnt_reg[15]_i_1_n_1 ,\lat_live_cnt_reg[15]_i_1_n_2 ,\lat_live_cnt_reg[15]_i_1_n_3 ,\lat_live_cnt_reg[15]_i_1_n_4 ,\lat_live_cnt_reg[15]_i_1_n_5 ,\lat_live_cnt_reg[15]_i_1_n_6 ,\lat_live_cnt_reg[15]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\lat_live_cnt_reg[15]_i_1_n_8 ,\lat_live_cnt_reg[15]_i_1_n_9 ,\lat_live_cnt_reg[15]_i_1_n_10 ,\lat_live_cnt_reg[15]_i_1_n_11 ,\lat_live_cnt_reg[15]_i_1_n_12 ,\lat_live_cnt_reg[15]_i_1_n_13 ,\lat_live_cnt_reg[15]_i_1_n_14 ,\lat_live_cnt_reg[15]_i_1_n_15 }),
        .S(lat_live_cnt[15:8]));
  FDRE \lat_live_cnt_reg[16] 
       (.C(clk),
        .CE(\lat_live_cnt[31]_i_1_n_0 ),
        .D(\lat_live_cnt_reg[23]_i_1_n_15 ),
        .Q(lat_live_cnt[16]),
        .R(reset));
  FDRE \lat_live_cnt_reg[17] 
       (.C(clk),
        .CE(\lat_live_cnt[31]_i_1_n_0 ),
        .D(\lat_live_cnt_reg[23]_i_1_n_14 ),
        .Q(lat_live_cnt[17]),
        .R(reset));
  FDRE \lat_live_cnt_reg[18] 
       (.C(clk),
        .CE(\lat_live_cnt[31]_i_1_n_0 ),
        .D(\lat_live_cnt_reg[23]_i_1_n_13 ),
        .Q(lat_live_cnt[18]),
        .R(reset));
  FDRE \lat_live_cnt_reg[19] 
       (.C(clk),
        .CE(\lat_live_cnt[31]_i_1_n_0 ),
        .D(\lat_live_cnt_reg[23]_i_1_n_12 ),
        .Q(lat_live_cnt[19]),
        .R(reset));
  FDRE \lat_live_cnt_reg[1] 
       (.C(clk),
        .CE(\lat_live_cnt[31]_i_1_n_0 ),
        .D(\lat_live_cnt_reg[7]_i_1_n_14 ),
        .Q(lat_live_cnt[1]),
        .R(reset));
  FDRE \lat_live_cnt_reg[20] 
       (.C(clk),
        .CE(\lat_live_cnt[31]_i_1_n_0 ),
        .D(\lat_live_cnt_reg[23]_i_1_n_11 ),
        .Q(lat_live_cnt[20]),
        .R(reset));
  FDRE \lat_live_cnt_reg[21] 
       (.C(clk),
        .CE(\lat_live_cnt[31]_i_1_n_0 ),
        .D(\lat_live_cnt_reg[23]_i_1_n_10 ),
        .Q(lat_live_cnt[21]),
        .R(reset));
  FDRE \lat_live_cnt_reg[22] 
       (.C(clk),
        .CE(\lat_live_cnt[31]_i_1_n_0 ),
        .D(\lat_live_cnt_reg[23]_i_1_n_9 ),
        .Q(lat_live_cnt[22]),
        .R(reset));
  FDRE \lat_live_cnt_reg[23] 
       (.C(clk),
        .CE(\lat_live_cnt[31]_i_1_n_0 ),
        .D(\lat_live_cnt_reg[23]_i_1_n_8 ),
        .Q(lat_live_cnt[23]),
        .R(reset));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \lat_live_cnt_reg[23]_i_1 
       (.CI(\lat_live_cnt_reg[15]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\lat_live_cnt_reg[23]_i_1_n_0 ,\lat_live_cnt_reg[23]_i_1_n_1 ,\lat_live_cnt_reg[23]_i_1_n_2 ,\lat_live_cnt_reg[23]_i_1_n_3 ,\lat_live_cnt_reg[23]_i_1_n_4 ,\lat_live_cnt_reg[23]_i_1_n_5 ,\lat_live_cnt_reg[23]_i_1_n_6 ,\lat_live_cnt_reg[23]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\lat_live_cnt_reg[23]_i_1_n_8 ,\lat_live_cnt_reg[23]_i_1_n_9 ,\lat_live_cnt_reg[23]_i_1_n_10 ,\lat_live_cnt_reg[23]_i_1_n_11 ,\lat_live_cnt_reg[23]_i_1_n_12 ,\lat_live_cnt_reg[23]_i_1_n_13 ,\lat_live_cnt_reg[23]_i_1_n_14 ,\lat_live_cnt_reg[23]_i_1_n_15 }),
        .S(lat_live_cnt[23:16]));
  FDRE \lat_live_cnt_reg[24] 
       (.C(clk),
        .CE(\lat_live_cnt[31]_i_1_n_0 ),
        .D(\lat_live_cnt_reg[31]_i_2_n_15 ),
        .Q(lat_live_cnt[24]),
        .R(reset));
  FDRE \lat_live_cnt_reg[25] 
       (.C(clk),
        .CE(\lat_live_cnt[31]_i_1_n_0 ),
        .D(\lat_live_cnt_reg[31]_i_2_n_14 ),
        .Q(lat_live_cnt[25]),
        .R(reset));
  FDRE \lat_live_cnt_reg[26] 
       (.C(clk),
        .CE(\lat_live_cnt[31]_i_1_n_0 ),
        .D(\lat_live_cnt_reg[31]_i_2_n_13 ),
        .Q(lat_live_cnt[26]),
        .R(reset));
  FDRE \lat_live_cnt_reg[27] 
       (.C(clk),
        .CE(\lat_live_cnt[31]_i_1_n_0 ),
        .D(\lat_live_cnt_reg[31]_i_2_n_12 ),
        .Q(lat_live_cnt[27]),
        .R(reset));
  FDRE \lat_live_cnt_reg[28] 
       (.C(clk),
        .CE(\lat_live_cnt[31]_i_1_n_0 ),
        .D(\lat_live_cnt_reg[31]_i_2_n_11 ),
        .Q(lat_live_cnt[28]),
        .R(reset));
  FDRE \lat_live_cnt_reg[29] 
       (.C(clk),
        .CE(\lat_live_cnt[31]_i_1_n_0 ),
        .D(\lat_live_cnt_reg[31]_i_2_n_10 ),
        .Q(lat_live_cnt[29]),
        .R(reset));
  FDRE \lat_live_cnt_reg[2] 
       (.C(clk),
        .CE(\lat_live_cnt[31]_i_1_n_0 ),
        .D(\lat_live_cnt_reg[7]_i_1_n_13 ),
        .Q(lat_live_cnt[2]),
        .R(reset));
  FDRE \lat_live_cnt_reg[30] 
       (.C(clk),
        .CE(\lat_live_cnt[31]_i_1_n_0 ),
        .D(\lat_live_cnt_reg[31]_i_2_n_9 ),
        .Q(lat_live_cnt[30]),
        .R(reset));
  FDRE \lat_live_cnt_reg[31] 
       (.C(clk),
        .CE(\lat_live_cnt[31]_i_1_n_0 ),
        .D(\lat_live_cnt_reg[31]_i_2_n_8 ),
        .Q(lat_live_cnt[31]),
        .R(reset));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \lat_live_cnt_reg[31]_i_2 
       (.CI(\lat_live_cnt_reg[23]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_lat_live_cnt_reg[31]_i_2_CO_UNCONNECTED [7],\lat_live_cnt_reg[31]_i_2_n_1 ,\lat_live_cnt_reg[31]_i_2_n_2 ,\lat_live_cnt_reg[31]_i_2_n_3 ,\lat_live_cnt_reg[31]_i_2_n_4 ,\lat_live_cnt_reg[31]_i_2_n_5 ,\lat_live_cnt_reg[31]_i_2_n_6 ,\lat_live_cnt_reg[31]_i_2_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\lat_live_cnt_reg[31]_i_2_n_8 ,\lat_live_cnt_reg[31]_i_2_n_9 ,\lat_live_cnt_reg[31]_i_2_n_10 ,\lat_live_cnt_reg[31]_i_2_n_11 ,\lat_live_cnt_reg[31]_i_2_n_12 ,\lat_live_cnt_reg[31]_i_2_n_13 ,\lat_live_cnt_reg[31]_i_2_n_14 ,\lat_live_cnt_reg[31]_i_2_n_15 }),
        .S(lat_live_cnt[31:24]));
  FDRE \lat_live_cnt_reg[3] 
       (.C(clk),
        .CE(\lat_live_cnt[31]_i_1_n_0 ),
        .D(\lat_live_cnt_reg[7]_i_1_n_12 ),
        .Q(lat_live_cnt[3]),
        .R(reset));
  FDRE \lat_live_cnt_reg[4] 
       (.C(clk),
        .CE(\lat_live_cnt[31]_i_1_n_0 ),
        .D(\lat_live_cnt_reg[7]_i_1_n_11 ),
        .Q(lat_live_cnt[4]),
        .R(reset));
  FDRE \lat_live_cnt_reg[5] 
       (.C(clk),
        .CE(\lat_live_cnt[31]_i_1_n_0 ),
        .D(\lat_live_cnt_reg[7]_i_1_n_10 ),
        .Q(lat_live_cnt[5]),
        .R(reset));
  FDRE \lat_live_cnt_reg[6] 
       (.C(clk),
        .CE(\lat_live_cnt[31]_i_1_n_0 ),
        .D(\lat_live_cnt_reg[7]_i_1_n_9 ),
        .Q(lat_live_cnt[6]),
        .R(reset));
  FDRE \lat_live_cnt_reg[7] 
       (.C(clk),
        .CE(\lat_live_cnt[31]_i_1_n_0 ),
        .D(\lat_live_cnt_reg[7]_i_1_n_8 ),
        .Q(lat_live_cnt[7]),
        .R(reset));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \lat_live_cnt_reg[7]_i_1 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\lat_live_cnt_reg[7]_i_1_n_0 ,\lat_live_cnt_reg[7]_i_1_n_1 ,\lat_live_cnt_reg[7]_i_1_n_2 ,\lat_live_cnt_reg[7]_i_1_n_3 ,\lat_live_cnt_reg[7]_i_1_n_4 ,\lat_live_cnt_reg[7]_i_1_n_5 ,\lat_live_cnt_reg[7]_i_1_n_6 ,\lat_live_cnt_reg[7]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .O({\lat_live_cnt_reg[7]_i_1_n_8 ,\lat_live_cnt_reg[7]_i_1_n_9 ,\lat_live_cnt_reg[7]_i_1_n_10 ,\lat_live_cnt_reg[7]_i_1_n_11 ,\lat_live_cnt_reg[7]_i_1_n_12 ,\lat_live_cnt_reg[7]_i_1_n_13 ,\lat_live_cnt_reg[7]_i_1_n_14 ,\lat_live_cnt_reg[7]_i_1_n_15 }),
        .S({lat_live_cnt[7:1],\lat_live_cnt[7]_i_2_n_0 }));
  FDRE \lat_live_cnt_reg[8] 
       (.C(clk),
        .CE(\lat_live_cnt[31]_i_1_n_0 ),
        .D(\lat_live_cnt_reg[15]_i_1_n_15 ),
        .Q(lat_live_cnt[8]),
        .R(reset));
  FDRE \lat_live_cnt_reg[9] 
       (.C(clk),
        .CE(\lat_live_cnt[31]_i_1_n_0 ),
        .D(\lat_live_cnt_reg[15]_i_1_n_14 ),
        .Q(lat_live_cnt[9]),
        .R(reset));
  LUT5 #(
    .INIT(32'hEEEEEEE0)) 
    \lat_push_cnt[31]_i_1 
       (.I0(phase[0]),
        .I1(phase[1]),
        .I2(stage__0[0]),
        .I3(stage__0[2]),
        .I4(stage__0[1]),
        .O(\lat_push_cnt[31]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \lat_push_cnt[7]_i_2 
       (.I0(lat_flip_cnt[0]),
        .O(\lat_push_cnt[7]_i_2_n_0 ));
  FDRE \lat_push_cnt_reg[0] 
       (.C(clk),
        .CE(\lat_push_cnt[31]_i_1_n_0 ),
        .D(\lat_push_cnt_reg[7]_i_1_n_15 ),
        .Q(lat_flip_cnt[0]),
        .R(reset));
  FDRE \lat_push_cnt_reg[10] 
       (.C(clk),
        .CE(\lat_push_cnt[31]_i_1_n_0 ),
        .D(\lat_push_cnt_reg[15]_i_1_n_13 ),
        .Q(lat_flip_cnt[10]),
        .R(reset));
  FDRE \lat_push_cnt_reg[11] 
       (.C(clk),
        .CE(\lat_push_cnt[31]_i_1_n_0 ),
        .D(\lat_push_cnt_reg[15]_i_1_n_12 ),
        .Q(lat_flip_cnt[11]),
        .R(reset));
  FDRE \lat_push_cnt_reg[12] 
       (.C(clk),
        .CE(\lat_push_cnt[31]_i_1_n_0 ),
        .D(\lat_push_cnt_reg[15]_i_1_n_11 ),
        .Q(lat_flip_cnt[12]),
        .R(reset));
  FDRE \lat_push_cnt_reg[13] 
       (.C(clk),
        .CE(\lat_push_cnt[31]_i_1_n_0 ),
        .D(\lat_push_cnt_reg[15]_i_1_n_10 ),
        .Q(lat_flip_cnt[13]),
        .R(reset));
  FDRE \lat_push_cnt_reg[14] 
       (.C(clk),
        .CE(\lat_push_cnt[31]_i_1_n_0 ),
        .D(\lat_push_cnt_reg[15]_i_1_n_9 ),
        .Q(lat_flip_cnt[14]),
        .R(reset));
  FDRE \lat_push_cnt_reg[15] 
       (.C(clk),
        .CE(\lat_push_cnt[31]_i_1_n_0 ),
        .D(\lat_push_cnt_reg[15]_i_1_n_8 ),
        .Q(lat_flip_cnt[15]),
        .R(reset));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \lat_push_cnt_reg[15]_i_1 
       (.CI(\lat_push_cnt_reg[7]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\lat_push_cnt_reg[15]_i_1_n_0 ,\lat_push_cnt_reg[15]_i_1_n_1 ,\lat_push_cnt_reg[15]_i_1_n_2 ,\lat_push_cnt_reg[15]_i_1_n_3 ,\lat_push_cnt_reg[15]_i_1_n_4 ,\lat_push_cnt_reg[15]_i_1_n_5 ,\lat_push_cnt_reg[15]_i_1_n_6 ,\lat_push_cnt_reg[15]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\lat_push_cnt_reg[15]_i_1_n_8 ,\lat_push_cnt_reg[15]_i_1_n_9 ,\lat_push_cnt_reg[15]_i_1_n_10 ,\lat_push_cnt_reg[15]_i_1_n_11 ,\lat_push_cnt_reg[15]_i_1_n_12 ,\lat_push_cnt_reg[15]_i_1_n_13 ,\lat_push_cnt_reg[15]_i_1_n_14 ,\lat_push_cnt_reg[15]_i_1_n_15 }),
        .S(lat_flip_cnt[15:8]));
  FDRE \lat_push_cnt_reg[16] 
       (.C(clk),
        .CE(\lat_push_cnt[31]_i_1_n_0 ),
        .D(\lat_push_cnt_reg[23]_i_1_n_15 ),
        .Q(lat_flip_cnt[16]),
        .R(reset));
  FDRE \lat_push_cnt_reg[17] 
       (.C(clk),
        .CE(\lat_push_cnt[31]_i_1_n_0 ),
        .D(\lat_push_cnt_reg[23]_i_1_n_14 ),
        .Q(lat_flip_cnt[17]),
        .R(reset));
  FDRE \lat_push_cnt_reg[18] 
       (.C(clk),
        .CE(\lat_push_cnt[31]_i_1_n_0 ),
        .D(\lat_push_cnt_reg[23]_i_1_n_13 ),
        .Q(lat_flip_cnt[18]),
        .R(reset));
  FDRE \lat_push_cnt_reg[19] 
       (.C(clk),
        .CE(\lat_push_cnt[31]_i_1_n_0 ),
        .D(\lat_push_cnt_reg[23]_i_1_n_12 ),
        .Q(lat_flip_cnt[19]),
        .R(reset));
  FDRE \lat_push_cnt_reg[1] 
       (.C(clk),
        .CE(\lat_push_cnt[31]_i_1_n_0 ),
        .D(\lat_push_cnt_reg[7]_i_1_n_14 ),
        .Q(lat_flip_cnt[1]),
        .R(reset));
  FDRE \lat_push_cnt_reg[20] 
       (.C(clk),
        .CE(\lat_push_cnt[31]_i_1_n_0 ),
        .D(\lat_push_cnt_reg[23]_i_1_n_11 ),
        .Q(lat_flip_cnt[20]),
        .R(reset));
  FDRE \lat_push_cnt_reg[21] 
       (.C(clk),
        .CE(\lat_push_cnt[31]_i_1_n_0 ),
        .D(\lat_push_cnt_reg[23]_i_1_n_10 ),
        .Q(lat_flip_cnt[21]),
        .R(reset));
  FDRE \lat_push_cnt_reg[22] 
       (.C(clk),
        .CE(\lat_push_cnt[31]_i_1_n_0 ),
        .D(\lat_push_cnt_reg[23]_i_1_n_9 ),
        .Q(lat_flip_cnt[22]),
        .R(reset));
  FDRE \lat_push_cnt_reg[23] 
       (.C(clk),
        .CE(\lat_push_cnt[31]_i_1_n_0 ),
        .D(\lat_push_cnt_reg[23]_i_1_n_8 ),
        .Q(lat_flip_cnt[23]),
        .R(reset));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \lat_push_cnt_reg[23]_i_1 
       (.CI(\lat_push_cnt_reg[15]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\lat_push_cnt_reg[23]_i_1_n_0 ,\lat_push_cnt_reg[23]_i_1_n_1 ,\lat_push_cnt_reg[23]_i_1_n_2 ,\lat_push_cnt_reg[23]_i_1_n_3 ,\lat_push_cnt_reg[23]_i_1_n_4 ,\lat_push_cnt_reg[23]_i_1_n_5 ,\lat_push_cnt_reg[23]_i_1_n_6 ,\lat_push_cnt_reg[23]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\lat_push_cnt_reg[23]_i_1_n_8 ,\lat_push_cnt_reg[23]_i_1_n_9 ,\lat_push_cnt_reg[23]_i_1_n_10 ,\lat_push_cnt_reg[23]_i_1_n_11 ,\lat_push_cnt_reg[23]_i_1_n_12 ,\lat_push_cnt_reg[23]_i_1_n_13 ,\lat_push_cnt_reg[23]_i_1_n_14 ,\lat_push_cnt_reg[23]_i_1_n_15 }),
        .S(lat_flip_cnt[23:16]));
  FDRE \lat_push_cnt_reg[24] 
       (.C(clk),
        .CE(\lat_push_cnt[31]_i_1_n_0 ),
        .D(\lat_push_cnt_reg[31]_i_2_n_15 ),
        .Q(lat_flip_cnt[24]),
        .R(reset));
  FDRE \lat_push_cnt_reg[25] 
       (.C(clk),
        .CE(\lat_push_cnt[31]_i_1_n_0 ),
        .D(\lat_push_cnt_reg[31]_i_2_n_14 ),
        .Q(lat_flip_cnt[25]),
        .R(reset));
  FDRE \lat_push_cnt_reg[26] 
       (.C(clk),
        .CE(\lat_push_cnt[31]_i_1_n_0 ),
        .D(\lat_push_cnt_reg[31]_i_2_n_13 ),
        .Q(lat_flip_cnt[26]),
        .R(reset));
  FDRE \lat_push_cnt_reg[27] 
       (.C(clk),
        .CE(\lat_push_cnt[31]_i_1_n_0 ),
        .D(\lat_push_cnt_reg[31]_i_2_n_12 ),
        .Q(lat_flip_cnt[27]),
        .R(reset));
  FDRE \lat_push_cnt_reg[28] 
       (.C(clk),
        .CE(\lat_push_cnt[31]_i_1_n_0 ),
        .D(\lat_push_cnt_reg[31]_i_2_n_11 ),
        .Q(lat_flip_cnt[28]),
        .R(reset));
  FDRE \lat_push_cnt_reg[29] 
       (.C(clk),
        .CE(\lat_push_cnt[31]_i_1_n_0 ),
        .D(\lat_push_cnt_reg[31]_i_2_n_10 ),
        .Q(lat_flip_cnt[29]),
        .R(reset));
  FDRE \lat_push_cnt_reg[2] 
       (.C(clk),
        .CE(\lat_push_cnt[31]_i_1_n_0 ),
        .D(\lat_push_cnt_reg[7]_i_1_n_13 ),
        .Q(lat_flip_cnt[2]),
        .R(reset));
  FDRE \lat_push_cnt_reg[30] 
       (.C(clk),
        .CE(\lat_push_cnt[31]_i_1_n_0 ),
        .D(\lat_push_cnt_reg[31]_i_2_n_9 ),
        .Q(lat_flip_cnt[30]),
        .R(reset));
  FDRE \lat_push_cnt_reg[31] 
       (.C(clk),
        .CE(\lat_push_cnt[31]_i_1_n_0 ),
        .D(\lat_push_cnt_reg[31]_i_2_n_8 ),
        .Q(lat_flip_cnt[31]),
        .R(reset));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \lat_push_cnt_reg[31]_i_2 
       (.CI(\lat_push_cnt_reg[23]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_lat_push_cnt_reg[31]_i_2_CO_UNCONNECTED [7],\lat_push_cnt_reg[31]_i_2_n_1 ,\lat_push_cnt_reg[31]_i_2_n_2 ,\lat_push_cnt_reg[31]_i_2_n_3 ,\lat_push_cnt_reg[31]_i_2_n_4 ,\lat_push_cnt_reg[31]_i_2_n_5 ,\lat_push_cnt_reg[31]_i_2_n_6 ,\lat_push_cnt_reg[31]_i_2_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\lat_push_cnt_reg[31]_i_2_n_8 ,\lat_push_cnt_reg[31]_i_2_n_9 ,\lat_push_cnt_reg[31]_i_2_n_10 ,\lat_push_cnt_reg[31]_i_2_n_11 ,\lat_push_cnt_reg[31]_i_2_n_12 ,\lat_push_cnt_reg[31]_i_2_n_13 ,\lat_push_cnt_reg[31]_i_2_n_14 ,\lat_push_cnt_reg[31]_i_2_n_15 }),
        .S(lat_flip_cnt[31:24]));
  FDRE \lat_push_cnt_reg[3] 
       (.C(clk),
        .CE(\lat_push_cnt[31]_i_1_n_0 ),
        .D(\lat_push_cnt_reg[7]_i_1_n_12 ),
        .Q(lat_flip_cnt[3]),
        .R(reset));
  FDRE \lat_push_cnt_reg[4] 
       (.C(clk),
        .CE(\lat_push_cnt[31]_i_1_n_0 ),
        .D(\lat_push_cnt_reg[7]_i_1_n_11 ),
        .Q(lat_flip_cnt[4]),
        .R(reset));
  FDRE \lat_push_cnt_reg[5] 
       (.C(clk),
        .CE(\lat_push_cnt[31]_i_1_n_0 ),
        .D(\lat_push_cnt_reg[7]_i_1_n_10 ),
        .Q(lat_flip_cnt[5]),
        .R(reset));
  FDRE \lat_push_cnt_reg[6] 
       (.C(clk),
        .CE(\lat_push_cnt[31]_i_1_n_0 ),
        .D(\lat_push_cnt_reg[7]_i_1_n_9 ),
        .Q(lat_flip_cnt[6]),
        .R(reset));
  FDRE \lat_push_cnt_reg[7] 
       (.C(clk),
        .CE(\lat_push_cnt[31]_i_1_n_0 ),
        .D(\lat_push_cnt_reg[7]_i_1_n_8 ),
        .Q(lat_flip_cnt[7]),
        .R(reset));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \lat_push_cnt_reg[7]_i_1 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\lat_push_cnt_reg[7]_i_1_n_0 ,\lat_push_cnt_reg[7]_i_1_n_1 ,\lat_push_cnt_reg[7]_i_1_n_2 ,\lat_push_cnt_reg[7]_i_1_n_3 ,\lat_push_cnt_reg[7]_i_1_n_4 ,\lat_push_cnt_reg[7]_i_1_n_5 ,\lat_push_cnt_reg[7]_i_1_n_6 ,\lat_push_cnt_reg[7]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .O({\lat_push_cnt_reg[7]_i_1_n_8 ,\lat_push_cnt_reg[7]_i_1_n_9 ,\lat_push_cnt_reg[7]_i_1_n_10 ,\lat_push_cnt_reg[7]_i_1_n_11 ,\lat_push_cnt_reg[7]_i_1_n_12 ,\lat_push_cnt_reg[7]_i_1_n_13 ,\lat_push_cnt_reg[7]_i_1_n_14 ,\lat_push_cnt_reg[7]_i_1_n_15 }),
        .S({lat_flip_cnt[7:1],\lat_push_cnt[7]_i_2_n_0 }));
  FDRE \lat_push_cnt_reg[8] 
       (.C(clk),
        .CE(\lat_push_cnt[31]_i_1_n_0 ),
        .D(\lat_push_cnt_reg[15]_i_1_n_15 ),
        .Q(lat_flip_cnt[8]),
        .R(reset));
  FDRE \lat_push_cnt_reg[9] 
       (.C(clk),
        .CE(\lat_push_cnt[31]_i_1_n_0 ),
        .D(\lat_push_cnt_reg[15]_i_1_n_14 ),
        .Q(lat_flip_cnt[9]),
        .R(reset));
  LUT6 #(
    .INIT(64'hFF01FF01FFFFFF01)) 
    \phase[1]_i_1 
       (.I0(stage__0[1]),
        .I1(stage__0[2]),
        .I2(stage__0[0]),
        .I3(reset),
        .I4(phase[1]),
        .I5(phase[0]),
        .O(\phase[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \phase[1]_i_2 
       (.I0(phase[1]),
        .I1(phase[0]),
        .O(\phase[1]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \phase[1]_rep_i_1 
       (.I0(phase[1]),
        .I1(phase[0]),
        .O(\phase[1]_rep_i_1_n_0 ));
  (* ORIG_CELL_NAME = "phase_reg[0]" *) 
  FDRE \phase_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\g_slot[1].pe_i_i_49_n_0 ),
        .Q(phase[0]),
        .R(\phase[1]_i_1_n_0 ));
  (* ORIG_CELL_NAME = "phase_reg[0]" *) 
  FDRE \phase_reg[0]_rep 
       (.C(clk),
        .CE(1'b1),
        .D(\g_slot[1].pe_i_i_49_n_0 ),
        .Q(\phase_reg[0]_rep_n_0 ),
        .R(\phase[1]_i_1_n_0 ));
  (* ORIG_CELL_NAME = "phase_reg[1]" *) 
  FDRE \phase_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\phase[1]_i_2_n_0 ),
        .Q(phase[1]),
        .R(\phase[1]_i_1_n_0 ));
  (* ORIG_CELL_NAME = "phase_reg[1]" *) 
  FDRE \phase_reg[1]_rep 
       (.C(clk),
        .CE(1'b1),
        .D(\phase[1]_rep_i_1_n_0 ),
        .Q(\phase_reg[1]_rep_n_0 ),
        .R(\phase[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT5 #(
    .INIT(32'hFFF3FFD7)) 
    \step_cnt[0]_i_1 
       (.I0(\step_cnt_reg_n_0_[0] ),
        .I1(stage__0[0]),
        .I2(stage__0[2]),
        .I3(stage__0[1]),
        .I4(all_busy_INST_0_i_1_n_0),
        .O(step_cnt[0]));
  LUT6 #(
    .INIT(64'h0000011001100000)) 
    \step_cnt[1]_i_1 
       (.I0(all_busy_INST_0_i_1_n_0),
        .I1(stage__0[1]),
        .I2(stage__0[2]),
        .I3(stage__0[0]),
        .I4(\step_cnt_reg_n_0_[1] ),
        .I5(\step_cnt_reg_n_0_[0] ),
        .O(step_cnt[1]));
  LUT5 #(
    .INIT(32'h01111000)) 
    \step_cnt[2]_i_1 
       (.I0(all_busy_INST_0_i_1_n_0),
        .I1(\step_cnt[7]_i_3_n_0 ),
        .I2(\step_cnt_reg_n_0_[0] ),
        .I3(\step_cnt_reg_n_0_[1] ),
        .I4(\step_cnt_reg_n_0_[2] ),
        .O(step_cnt[2]));
  LUT6 #(
    .INIT(64'h0111111110000000)) 
    \step_cnt[3]_i_1 
       (.I0(all_busy_INST_0_i_1_n_0),
        .I1(\step_cnt[7]_i_3_n_0 ),
        .I2(\step_cnt_reg_n_0_[1] ),
        .I3(\step_cnt_reg_n_0_[0] ),
        .I4(\step_cnt_reg_n_0_[2] ),
        .I5(\step_cnt_reg_n_0_[3] ),
        .O(step_cnt[3]));
  LUT6 #(
    .INIT(64'h0110000000000110)) 
    \step_cnt[4]_i_1 
       (.I0(all_busy_INST_0_i_1_n_0),
        .I1(stage__0[1]),
        .I2(stage__0[2]),
        .I3(stage__0[0]),
        .I4(\step_cnt[4]_i_2_n_0 ),
        .I5(\step_cnt_reg_n_0_[4] ),
        .O(step_cnt[4]));
  (* SOFT_HLUTNM = "soft_lutpair139" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \step_cnt[4]_i_2 
       (.I0(\step_cnt_reg_n_0_[2] ),
        .I1(\step_cnt_reg_n_0_[0] ),
        .I2(\step_cnt_reg_n_0_[1] ),
        .I3(\step_cnt_reg_n_0_[3] ),
        .O(\step_cnt[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0110000000000110)) 
    \step_cnt[5]_i_1 
       (.I0(all_busy_INST_0_i_1_n_0),
        .I1(stage__0[1]),
        .I2(stage__0[2]),
        .I3(stage__0[0]),
        .I4(\step_cnt[5]_i_2_n_0 ),
        .I5(\step_cnt_reg_n_0_[5] ),
        .O(step_cnt[5]));
  (* SOFT_HLUTNM = "soft_lutpair139" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \step_cnt[5]_i_2 
       (.I0(\step_cnt_reg_n_0_[3] ),
        .I1(\step_cnt_reg_n_0_[1] ),
        .I2(\step_cnt_reg_n_0_[0] ),
        .I3(\step_cnt_reg_n_0_[2] ),
        .I4(\step_cnt_reg_n_0_[4] ),
        .O(\step_cnt[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000011001100000)) 
    \step_cnt[6]_i_1 
       (.I0(all_busy_INST_0_i_1_n_0),
        .I1(stage__0[1]),
        .I2(stage__0[2]),
        .I3(stage__0[0]),
        .I4(\step_cnt[7]_i_4_n_0 ),
        .I5(\step_cnt_reg_n_0_[6] ),
        .O(step_cnt[6]));
  LUT6 #(
    .INIT(64'h000200023FF23CC2)) 
    \step_cnt[7]_i_1 
       (.I0(start),
        .I1(stage__0[1]),
        .I2(stage__0[2]),
        .I3(stage__0[0]),
        .I4(lat_bpass),
        .I5(done_i_2_n_0),
        .O(\step_cnt[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h01111000)) 
    \step_cnt[7]_i_2 
       (.I0(all_busy_INST_0_i_1_n_0),
        .I1(\step_cnt[7]_i_3_n_0 ),
        .I2(\step_cnt[7]_i_4_n_0 ),
        .I3(\step_cnt_reg_n_0_[6] ),
        .I4(\step_cnt_reg_n_0_[7] ),
        .O(step_cnt[7]));
  (* SOFT_HLUTNM = "soft_lutpair162" *) 
  LUT3 #(
    .INIT(8'hEB)) 
    \step_cnt[7]_i_3 
       (.I0(stage__0[1]),
        .I1(stage__0[2]),
        .I2(stage__0[0]),
        .O(\step_cnt[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \step_cnt[7]_i_4 
       (.I0(\step_cnt_reg_n_0_[5] ),
        .I1(\step_cnt_reg_n_0_[4] ),
        .I2(\step_cnt_reg_n_0_[2] ),
        .I3(\step_cnt_reg_n_0_[0] ),
        .I4(\step_cnt_reg_n_0_[1] ),
        .I5(\step_cnt_reg_n_0_[3] ),
        .O(\step_cnt[7]_i_4_n_0 ));
  FDRE \step_cnt_reg[0] 
       (.C(clk),
        .CE(\step_cnt[7]_i_1_n_0 ),
        .D(step_cnt[0]),
        .Q(\step_cnt_reg_n_0_[0] ),
        .R(reset));
  FDRE \step_cnt_reg[1] 
       (.C(clk),
        .CE(\step_cnt[7]_i_1_n_0 ),
        .D(step_cnt[1]),
        .Q(\step_cnt_reg_n_0_[1] ),
        .R(reset));
  FDRE \step_cnt_reg[2] 
       (.C(clk),
        .CE(\step_cnt[7]_i_1_n_0 ),
        .D(step_cnt[2]),
        .Q(\step_cnt_reg_n_0_[2] ),
        .R(reset));
  FDRE \step_cnt_reg[3] 
       (.C(clk),
        .CE(\step_cnt[7]_i_1_n_0 ),
        .D(step_cnt[3]),
        .Q(\step_cnt_reg_n_0_[3] ),
        .R(reset));
  FDRE \step_cnt_reg[4] 
       (.C(clk),
        .CE(\step_cnt[7]_i_1_n_0 ),
        .D(step_cnt[4]),
        .Q(\step_cnt_reg_n_0_[4] ),
        .R(reset));
  FDRE \step_cnt_reg[5] 
       (.C(clk),
        .CE(\step_cnt[7]_i_1_n_0 ),
        .D(step_cnt[5]),
        .Q(\step_cnt_reg_n_0_[5] ),
        .R(reset));
  FDRE \step_cnt_reg[6] 
       (.C(clk),
        .CE(\step_cnt[7]_i_1_n_0 ),
        .D(step_cnt[6]),
        .Q(\step_cnt_reg_n_0_[6] ),
        .R(reset));
  FDRE \step_cnt_reg[7] 
       (.C(clk),
        .CE(\step_cnt[7]_i_1_n_0 ),
        .D(step_cnt[7]),
        .Q(\step_cnt_reg_n_0_[7] ),
        .R(reset));
  LUT5 #(
    .INIT(32'h00000100)) 
    \syn_buf[1]_i_1 
       (.I0(stage__0[1]),
        .I1(stage__0[2]),
        .I2(stage__0[0]),
        .I3(start),
        .I4(reset),
        .O(\syn_buf[1]_i_1_n_0 ));
  FDRE \syn_buf_reg[0] 
       (.C(clk),
        .CE(\syn_buf[1]_i_1_n_0 ),
        .D(syndrome[0]),
        .Q(\syn_buf_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \syn_buf_reg[1] 
       (.C(clk),
        .CE(\syn_buf[1]_i_1_n_0 ),
        .D(syndrome[1]),
        .Q(\syn_buf_reg_n_0_[1] ),
        .R(1'b0));
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
