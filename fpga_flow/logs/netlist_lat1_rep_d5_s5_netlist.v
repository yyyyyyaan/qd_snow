// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Sun Sep 20 21:03:41 2026
// Host        : DESKTOP-TO7M6OH running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               {D:\ycz\doc\deepseek_workzone\decoder\fpga_flow\logs/netlist_lat1_rep_d5_s5_netlist.v}
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
  (* SOFT_HLUTNM = "soft_lutpair172" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair171" *) 
  LUT4 #(
    .INIT(16'h0006)) 
    \st_out[1]_INST_0_i_1 
       (.I0(stage[1]),
        .I1(stage[2]),
        .I2(stage[0]),
        .I3(st_in[1]),
        .O(n_growth_w3));
  (* SOFT_HLUTNM = "soft_lutpair172" *) 
  LUT4 #(
    .INIT(16'h566A)) 
    \st_out[1]_INST_0_i_2 
       (.I0(st_in[1]),
        .I1(v_pulse),
        .I2(u_pulse),
        .I3(st_in[0]),
        .O(grown_n));
  (* SOFT_HLUTNM = "soft_lutpair171" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair156" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair155" *) 
  LUT4 #(
    .INIT(16'h0006)) 
    \st_out[1]_INST_0_i_1 
       (.I0(stage[1]),
        .I1(stage[2]),
        .I2(stage[0]),
        .I3(st_in[1]),
        .O(n_growth_w3));
  (* SOFT_HLUTNM = "soft_lutpair156" *) 
  LUT4 #(
    .INIT(16'h566A)) 
    \st_out[1]_INST_0_i_2 
       (.I0(st_in[1]),
        .I1(v_pulse),
        .I2(u_pulse),
        .I3(st_in[0]),
        .O(grown_n));
  (* SOFT_HLUTNM = "soft_lutpair155" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair158" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair157" *) 
  LUT4 #(
    .INIT(16'h0006)) 
    \st_out[1]_INST_0_i_1 
       (.I0(stage[1]),
        .I1(stage[2]),
        .I2(stage[0]),
        .I3(st_in[1]),
        .O(n_growth_w3));
  (* SOFT_HLUTNM = "soft_lutpair158" *) 
  LUT4 #(
    .INIT(16'h566A)) 
    \st_out[1]_INST_0_i_2 
       (.I0(st_in[1]),
        .I1(v_pulse),
        .I2(u_pulse),
        .I3(st_in[0]),
        .O(grown_n));
  (* SOFT_HLUTNM = "soft_lutpair157" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair160" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair159" *) 
  LUT4 #(
    .INIT(16'h0006)) 
    \st_out[1]_INST_0_i_1 
       (.I0(stage[1]),
        .I1(stage[2]),
        .I2(stage[0]),
        .I3(st_in[1]),
        .O(n_growth_w3));
  (* SOFT_HLUTNM = "soft_lutpair160" *) 
  LUT4 #(
    .INIT(16'h566A)) 
    \st_out[1]_INST_0_i_2 
       (.I0(st_in[1]),
        .I1(v_pulse),
        .I2(u_pulse),
        .I3(st_in[0]),
        .O(grown_n));
  (* SOFT_HLUTNM = "soft_lutpair159" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair162" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair161" *) 
  LUT4 #(
    .INIT(16'h0006)) 
    \st_out[1]_INST_0_i_1 
       (.I0(stage[1]),
        .I1(stage[2]),
        .I2(stage[0]),
        .I3(st_in[1]),
        .O(n_growth_w3));
  (* SOFT_HLUTNM = "soft_lutpair162" *) 
  LUT4 #(
    .INIT(16'h566A)) 
    \st_out[1]_INST_0_i_2 
       (.I0(st_in[1]),
        .I1(v_pulse),
        .I2(u_pulse),
        .I3(st_in[0]),
        .O(grown_n));
  (* SOFT_HLUTNM = "soft_lutpair161" *) 
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
module snowflake_edge__5
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
  (* SOFT_HLUTNM = "soft_lutpair164" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair163" *) 
  LUT4 #(
    .INIT(16'h0006)) 
    \st_out[1]_INST_0_i_1 
       (.I0(stage[1]),
        .I1(stage[2]),
        .I2(stage[0]),
        .I3(st_in[1]),
        .O(n_growth_w3));
  (* SOFT_HLUTNM = "soft_lutpair164" *) 
  LUT4 #(
    .INIT(16'h566A)) 
    \st_out[1]_INST_0_i_2 
       (.I0(st_in[1]),
        .I1(v_pulse),
        .I2(u_pulse),
        .I3(st_in[0]),
        .O(grown_n));
  (* SOFT_HLUTNM = "soft_lutpair163" *) 
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
module snowflake_edge__6
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
  (* SOFT_HLUTNM = "soft_lutpair166" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair165" *) 
  LUT4 #(
    .INIT(16'h0006)) 
    \st_out[1]_INST_0_i_1 
       (.I0(stage[1]),
        .I1(stage[2]),
        .I2(stage[0]),
        .I3(st_in[1]),
        .O(n_growth_w3));
  (* SOFT_HLUTNM = "soft_lutpair166" *) 
  LUT4 #(
    .INIT(16'h566A)) 
    \st_out[1]_INST_0_i_2 
       (.I0(st_in[1]),
        .I1(v_pulse),
        .I2(u_pulse),
        .I3(st_in[0]),
        .O(grown_n));
  (* SOFT_HLUTNM = "soft_lutpair165" *) 
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
module snowflake_edge__7
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
  (* SOFT_HLUTNM = "soft_lutpair168" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair167" *) 
  LUT4 #(
    .INIT(16'h0006)) 
    \st_out[1]_INST_0_i_1 
       (.I0(stage[1]),
        .I1(stage[2]),
        .I2(stage[0]),
        .I3(st_in[1]),
        .O(n_growth_w3));
  (* SOFT_HLUTNM = "soft_lutpair168" *) 
  LUT4 #(
    .INIT(16'h566A)) 
    \st_out[1]_INST_0_i_2 
       (.I0(st_in[1]),
        .I1(v_pulse),
        .I2(u_pulse),
        .I3(st_in[0]),
        .O(grown_n));
  (* SOFT_HLUTNM = "soft_lutpair167" *) 
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
module snowflake_edge__8
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
  (* SOFT_HLUTNM = "soft_lutpair170" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair169" *) 
  LUT4 #(
    .INIT(16'h0006)) 
    \st_out[1]_INST_0_i_1 
       (.I0(stage[1]),
        .I1(stage[2]),
        .I2(stage[0]),
        .I3(st_in[1]),
        .O(n_growth_w3));
  (* SOFT_HLUTNM = "soft_lutpair170" *) 
  LUT4 #(
    .INIT(16'h566A)) 
    \st_out[1]_INST_0_i_2 
       (.I0(st_in[1]),
        .I1(v_pulse),
        .I2(u_pulse),
        .I3(st_in[0]),
        .O(grown_n));
  (* SOFT_HLUTNM = "soft_lutpair169" *) 
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
(* OFF_GRW = "2" *) (* OFF_PB = "15" *) (* OFF_PTR = "3" *) 
(* OFF_UNR = "1" *) (* OFF_WHL = "7" *) (* ONE_ONE = "0" *) 
(* STW = "16" *) (* ST_DROP = "3'b001" *) (* ST_GH = "3'b100" *) 
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
  input [5:0]ab_cid;
  input ab_active;
  input ab_whole;
  input ab_defect;
  input [2:0]ab_ptr;
  input [3:0]e_grown;
  input [3:0]nb_valid;
  input [23:0]nb_cid;
  input [3:0]nb_active;
  input [3:0]nb_grown;
  input [3:0]nb_push;
  input [1:0]m_pass;
  input [15:0]st_in;
  output [15:0]st_out;
  output o_busy_c;
  output o_pulse;
  output [3:0]o_push;
  input [5:0]p_id;
  input p_has_above;
  input p_is_bnd;
  input p_is_top;
  input p_is_bot;
  input p_is_syn;
  input zzz_never_used;

  wire \<const0> ;
  wire ab_active;
  wire [5:0]ab_cid;
  wire ab_defect;
  wire [2:0]ab_ptr;
  wire ab_whole;
  wire [3:0]e_grown;
  wire [1:0]m_pass;
  wire [3:0]nb_active;
  wire [23:0]nb_cid;
  wire [3:0]nb_grown;
  wire [3:0]nb_push;
  wire p_has_above;
  wire [5:0]p_id;
  wire p_is_bnd;
  wire p_is_bot;
  wire p_is_syn;
  wire p_is_top;
  wire [15:0]st_in;
  wire [15:0]st_out;
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
  wire \st_out[12]_INST_0_i_1_n_0 ;
  wire \st_out[12]_INST_0_i_2_n_0 ;
  wire \st_out[12]_INST_0_i_3_n_0 ;
  wire \st_out[13]_INST_0_i_1_n_0 ;
  wire \st_out[13]_INST_0_i_2_n_0 ;
  wire \st_out[13]_INST_0_i_3_n_0 ;
  wire \st_out[13]_INST_0_i_4_n_0 ;
  wire \st_out[13]_INST_0_i_5_n_0 ;
  wire \st_out[13]_INST_0_i_6_n_0 ;
  wire \st_out[14]_INST_0_i_10_n_0 ;
  wire \st_out[14]_INST_0_i_11_n_0 ;
  wire \st_out[14]_INST_0_i_12_n_0 ;
  wire \st_out[14]_INST_0_i_13_n_0 ;
  wire \st_out[14]_INST_0_i_1_n_0 ;
  wire \st_out[14]_INST_0_i_2_n_0 ;
  wire \st_out[14]_INST_0_i_3_n_0 ;
  wire \st_out[14]_INST_0_i_4_n_0 ;
  wire \st_out[14]_INST_0_i_5_n_0 ;
  wire \st_out[14]_INST_0_i_6_n_0 ;
  wire \st_out[14]_INST_0_i_7_n_0 ;
  wire \st_out[14]_INST_0_i_8_n_0 ;
  wire \st_out[14]_INST_0_i_9_n_0 ;
  wire \st_out[15]_INST_0_i_1_n_0 ;
  wire \st_out[15]_INST_0_i_2_n_0 ;
  wire \st_out[15]_INST_0_i_3_n_0 ;
  wire \st_out[15]_INST_0_i_4_n_0 ;
  wire \st_out[2]_INST_0_i_1_n_0 ;
  wire \st_out[2]_INST_0_i_2_n_0 ;
  wire \st_out[2]_INST_0_i_3_n_0 ;
  wire \st_out[2]_INST_0_i_4_n_0 ;
  wire \st_out[3]_INST_0_i_1_n_0 ;
  wire \st_out[4]_INST_0_i_1_n_0 ;
  wire \st_out[5]_INST_0_i_1_n_0 ;
  wire \st_out[5]_INST_0_i_2_n_0 ;
  wire \st_out[6]_INST_0_i_1_n_0 ;
  wire \st_out[6]_INST_0_i_2_n_0 ;
  wire \st_out[6]_INST_0_i_3_n_0 ;
  wire \st_out[6]_INST_0_i_4_n_0 ;
  wire \st_out[6]_INST_0_i_5_n_0 ;
  wire \st_out[7]_INST_0_i_1_n_0 ;
  wire \st_out[7]_INST_0_i_2_n_0 ;
  wire \st_out[8]_INST_0_i_10_n_0 ;
  wire \st_out[8]_INST_0_i_11_n_0 ;
  wire \st_out[8]_INST_0_i_1_n_0 ;
  wire \st_out[8]_INST_0_i_2_n_0 ;
  wire \st_out[8]_INST_0_i_3_n_0 ;
  wire \st_out[8]_INST_0_i_4_n_0 ;
  wire \st_out[8]_INST_0_i_5_n_0 ;
  wire \st_out[8]_INST_0_i_6_n_0 ;
  wire \st_out[8]_INST_0_i_7_n_0 ;
  wire \st_out[8]_INST_0_i_8_n_0 ;
  wire \st_out[8]_INST_0_i_9_n_0 ;
  wire \st_out[9]_INST_0_i_1_n_0 ;
  wire \st_out[9]_INST_0_i_2_n_0 ;
  wire \st_out[9]_INST_0_i_3_n_0 ;
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
       (.I0(\st_out[8]_INST_0_i_4_n_0 ),
        .I1(\st_out[8]_INST_0_i_5_n_0 ),
        .I2(\st_out[0]_INST_0_i_1_n_0 ),
        .I3(st_in[8]),
        .I4(\st_out[8]_INST_0_i_3_n_0 ),
        .I5(\st_out[0]_INST_0_i_2_n_0 ),
        .O(st_out[0]));
  (* SOFT_HLUTNM = "soft_lutpair142" *) 
  LUT5 #(
    .INIT(32'hFEFFAAFE)) 
    \st_out[0]_INST_0_i_1 
       (.I0(nb_push[0]),
        .I1(\st_out[0]_INST_0_i_3_n_0 ),
        .I2(\st_out[15]_INST_0_i_3_n_0 ),
        .I3(m_pass[1]),
        .I4(m_pass[0]),
        .O(\st_out[0]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h04000000FFFFFFFF)) 
    \st_out[0]_INST_0_i_2 
       (.I0(\st_out[15]_INST_0_i_3_n_0 ),
        .I1(\st_out[9]_INST_0_i_3_n_0 ),
        .I2(\st_out[0]_INST_0_i_4_n_0 ),
        .I3(\st_out[15]_INST_0_i_4_n_0 ),
        .I4(\st_out[8]_INST_0_i_2_n_0 ),
        .I5(\st_out[6]_INST_0_i_3_n_0 ),
        .O(\st_out[0]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair151" *) 
  LUT4 #(
    .INIT(16'h5DFF)) 
    \st_out[0]_INST_0_i_3 
       (.I0(\st_out[15]_INST_0_i_4_n_0 ),
        .I1(e_grown[0]),
        .I2(\st_out[2]_INST_0_i_4_n_0 ),
        .I3(\st_out[9]_INST_0_i_3_n_0 ),
        .O(\st_out[0]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000080000000000)) 
    \st_out[0]_INST_0_i_4 
       (.I0(e_grown[0]),
        .I1(nb_grown[0]),
        .I2(st_in[2]),
        .I3(stage[1]),
        .I4(stage[2]),
        .I5(stage[0]),
        .O(\st_out[0]_INST_0_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFEFEE)) 
    \st_out[10]_INST_0 
       (.I0(\st_out[10]_INST_0_i_1_n_0 ),
        .I1(\st_out[13]_INST_0_i_2_n_0 ),
        .I2(\st_out[13]_INST_0_i_3_n_0 ),
        .I3(st_in[10]),
        .I4(\st_out[10]_INST_0_i_2_n_0 ),
        .O(st_out[10]));
  LUT6 #(
    .INIT(64'h8C80CCC08C800000)) 
    \st_out[10]_INST_0_i_1 
       (.I0(nb_cid[1]),
        .I1(\st_out[15]_INST_0_i_2_n_0 ),
        .I2(\st_out[9]_INST_0_i_3_n_0 ),
        .I3(p_id[1]),
        .I4(\st_out[15]_INST_0_i_3_n_0 ),
        .I5(\st_out[10]_INST_0_i_3_n_0 ),
        .O(\st_out[10]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h2EE20000)) 
    \st_out[10]_INST_0_i_2 
       (.I0(st_in[10]),
        .I1(p_has_above),
        .I2(\st_out[10]_INST_0_i_4_n_0 ),
        .I3(ab_cid[1]),
        .I4(\st_out[14]_INST_0_i_4_n_0 ),
        .O(\st_out[10]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair151" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \st_out[10]_INST_0_i_3 
       (.I0(st_in[10]),
        .I1(\st_out[15]_INST_0_i_4_n_0 ),
        .O(\st_out[10]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair147" *) 
  LUT5 #(
    .INIT(32'h00001115)) 
    \st_out[10]_INST_0_i_4 
       (.I0(ab_cid[5]),
        .I1(ab_cid[3]),
        .I2(ab_cid[2]),
        .I3(ab_cid[1]),
        .I4(ab_cid[4]),
        .O(\st_out[10]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF8888FFF8)) 
    \st_out[11]_INST_0 
       (.I0(\st_out[15]_INST_0_i_2_n_0 ),
        .I1(\st_out[11]_INST_0_i_1_n_0 ),
        .I2(\st_out[13]_INST_0_i_2_n_0 ),
        .I3(st_in[11]),
        .I4(\st_out[13]_INST_0_i_3_n_0 ),
        .I5(\st_out[11]_INST_0_i_2_n_0 ),
        .O(st_out[11]));
  LUT6 #(
    .INIT(64'hB8BBFFFFB8BB0000)) 
    \st_out[11]_INST_0_i_1 
       (.I0(nb_cid[2]),
        .I1(\st_out[15]_INST_0_i_3_n_0 ),
        .I2(st_in[11]),
        .I3(\st_out[15]_INST_0_i_4_n_0 ),
        .I4(\st_out[9]_INST_0_i_3_n_0 ),
        .I5(p_id[2]),
        .O(\st_out[11]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF9F9F90000000000)) 
    \st_out[11]_INST_0_i_2 
       (.I0(ab_cid[2]),
        .I1(\st_out[11]_INST_0_i_3_n_0 ),
        .I2(\st_out[14]_INST_0_i_8_n_0 ),
        .I3(p_has_above),
        .I4(st_in[11]),
        .I5(\st_out[14]_INST_0_i_4_n_0 ),
        .O(\st_out[11]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair147" *) 
  LUT5 #(
    .INIT(32'h00000015)) 
    \st_out[11]_INST_0_i_3 
       (.I0(ab_cid[4]),
        .I1(ab_cid[2]),
        .I2(ab_cid[3]),
        .I3(ab_cid[5]),
        .I4(ab_cid[1]),
        .O(\st_out[11]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF8888FFF8)) 
    \st_out[12]_INST_0 
       (.I0(\st_out[15]_INST_0_i_2_n_0 ),
        .I1(\st_out[12]_INST_0_i_1_n_0 ),
        .I2(\st_out[13]_INST_0_i_2_n_0 ),
        .I3(st_in[12]),
        .I4(\st_out[13]_INST_0_i_3_n_0 ),
        .I5(\st_out[12]_INST_0_i_2_n_0 ),
        .O(st_out[12]));
  LUT6 #(
    .INIT(64'hB8BBFFFFB8BB0000)) 
    \st_out[12]_INST_0_i_1 
       (.I0(nb_cid[3]),
        .I1(\st_out[15]_INST_0_i_3_n_0 ),
        .I2(st_in[12]),
        .I3(\st_out[15]_INST_0_i_4_n_0 ),
        .I4(\st_out[9]_INST_0_i_3_n_0 ),
        .I5(p_id[3]),
        .O(\st_out[12]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000A800000000)) 
    \st_out[12]_INST_0_i_2 
       (.I0(\st_out[12]_INST_0_i_3_n_0 ),
        .I1(p_has_above),
        .I2(st_in[12]),
        .I3(stage[2]),
        .I4(stage[1]),
        .I5(stage[0]),
        .O(\st_out[12]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAFFFFAAAAFEFFAA)) 
    \st_out[12]_INST_0_i_3 
       (.I0(\st_out[14]_INST_0_i_8_n_0 ),
        .I1(ab_cid[1]),
        .I2(ab_cid[5]),
        .I3(ab_cid[3]),
        .I4(ab_cid[2]),
        .I5(ab_cid[4]),
        .O(\st_out[12]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF8888FFF8)) 
    \st_out[13]_INST_0 
       (.I0(\st_out[15]_INST_0_i_2_n_0 ),
        .I1(\st_out[13]_INST_0_i_1_n_0 ),
        .I2(\st_out[13]_INST_0_i_2_n_0 ),
        .I3(st_in[13]),
        .I4(\st_out[13]_INST_0_i_3_n_0 ),
        .I5(\st_out[13]_INST_0_i_4_n_0 ),
        .O(st_out[13]));
  LUT6 #(
    .INIT(64'hB8BBFFFFB8BB0000)) 
    \st_out[13]_INST_0_i_1 
       (.I0(nb_cid[4]),
        .I1(\st_out[15]_INST_0_i_3_n_0 ),
        .I2(st_in[13]),
        .I3(\st_out[15]_INST_0_i_4_n_0 ),
        .I4(\st_out[9]_INST_0_i_3_n_0 ),
        .I5(p_id[4]),
        .O(\st_out[13]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair150" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \st_out[13]_INST_0_i_2 
       (.I0(stage[0]),
        .I1(stage[2]),
        .I2(stage[1]),
        .I3(\st_out[13]_INST_0_i_5_n_0 ),
        .O(\st_out[13]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair141" *) 
  LUT5 #(
    .INIT(32'h00D0D0F0)) 
    \st_out[13]_INST_0_i_3 
       (.I0(m_pass[1]),
        .I1(m_pass[0]),
        .I2(stage[0]),
        .I3(stage[2]),
        .I4(stage[1]),
        .O(\st_out[13]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF6F6F60000000000)) 
    \st_out[13]_INST_0_i_4 
       (.I0(ab_cid[4]),
        .I1(\st_out[13]_INST_0_i_6_n_0 ),
        .I2(\st_out[14]_INST_0_i_8_n_0 ),
        .I3(p_has_above),
        .I4(st_in[13]),
        .I5(\st_out[14]_INST_0_i_4_n_0 ),
        .O(\st_out[13]_INST_0_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair152" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \st_out[13]_INST_0_i_5 
       (.I0(st_in[5]),
        .I1(st_in[3]),
        .I2(p_is_bot),
        .I3(st_in[4]),
        .O(\st_out[13]_INST_0_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \st_out[13]_INST_0_i_6 
       (.I0(ab_cid[2]),
        .I1(ab_cid[3]),
        .O(\st_out[13]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFEFEFEEEEEEEEEEE)) 
    \st_out[14]_INST_0 
       (.I0(\st_out[14]_INST_0_i_1_n_0 ),
        .I1(\st_out[14]_INST_0_i_2_n_0 ),
        .I2(\st_out[14]_INST_0_i_3_n_0 ),
        .I3(p_has_above),
        .I4(st_in[14]),
        .I5(\st_out[14]_INST_0_i_4_n_0 ),
        .O(st_out[14]));
  LUT6 #(
    .INIT(64'h00FE00FE000000FE)) 
    \st_out[14]_INST_0_i_1 
       (.I0(nb_cid[5]),
        .I1(\st_out[14]_INST_0_i_5_n_0 ),
        .I2(\st_out[14]_INST_0_i_6_n_0 ),
        .I3(\st_out[14]_INST_0_i_7_n_0 ),
        .I4(\st_out[15]_INST_0_i_4_n_0 ),
        .I5(st_in[14]),
        .O(\st_out[14]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hDDFD00F0FFFFDDFD)) 
    \st_out[14]_INST_0_i_10 
       (.I0(st_in[9]),
        .I1(nb_cid[0]),
        .I2(nb_cid[2]),
        .I3(st_in[11]),
        .I4(nb_cid[1]),
        .I5(st_in[10]),
        .O(\st_out[14]_INST_0_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \st_out[14]_INST_0_i_11 
       (.I0(nb_cid[3]),
        .I1(st_in[12]),
        .I2(nb_cid[2]),
        .I3(st_in[11]),
        .O(\st_out[14]_INST_0_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \st_out[14]_INST_0_i_12 
       (.I0(nb_cid[5]),
        .I1(st_in[14]),
        .I2(nb_cid[4]),
        .I3(st_in[13]),
        .O(\st_out[14]_INST_0_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair146" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \st_out[14]_INST_0_i_13 
       (.I0(ab_cid[4]),
        .I1(ab_cid[3]),
        .I2(ab_cid[2]),
        .O(\st_out[14]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF2020FF20)) 
    \st_out[14]_INST_0_i_2 
       (.I0(\st_out[15]_INST_0_i_2_n_0 ),
        .I1(\st_out[9]_INST_0_i_3_n_0 ),
        .I2(p_id[5]),
        .I3(st_in[14]),
        .I4(\st_out[13]_INST_0_i_3_n_0 ),
        .I5(\st_out[13]_INST_0_i_2_n_0 ),
        .O(\st_out[14]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair146" *) 
  LUT5 #(
    .INIT(32'hFFFF7F80)) 
    \st_out[14]_INST_0_i_3 
       (.I0(ab_cid[4]),
        .I1(ab_cid[3]),
        .I2(ab_cid[2]),
        .I3(ab_cid[5]),
        .I4(\st_out[14]_INST_0_i_8_n_0 ),
        .O(\st_out[14]_INST_0_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h10)) 
    \st_out[14]_INST_0_i_4 
       (.I0(stage[2]),
        .I1(stage[1]),
        .I2(stage[0]),
        .O(\st_out[14]_INST_0_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair154" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \st_out[14]_INST_0_i_5 
       (.I0(\st_out[2]_INST_0_i_2_n_0 ),
        .I1(e_grown[0]),
        .O(\st_out[14]_INST_0_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h00AE)) 
    \st_out[14]_INST_0_i_6 
       (.I0(\st_out[14]_INST_0_i_9_n_0 ),
        .I1(\st_out[14]_INST_0_i_10_n_0 ),
        .I2(\st_out[14]_INST_0_i_11_n_0 ),
        .I3(\st_out[14]_INST_0_i_12_n_0 ),
        .O(\st_out[14]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF5DFF5DFFFFFF)) 
    \st_out[14]_INST_0_i_7 
       (.I0(\st_out[9]_INST_0_i_3_n_0 ),
        .I1(m_pass[1]),
        .I2(m_pass[0]),
        .I3(stage[0]),
        .I4(stage[2]),
        .I5(stage[1]),
        .O(\st_out[14]_INST_0_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h8000FFFF)) 
    \st_out[14]_INST_0_i_8 
       (.I0(ab_cid[1]),
        .I1(ab_cid[0]),
        .I2(ab_cid[5]),
        .I3(\st_out[14]_INST_0_i_13_n_0 ),
        .I4(p_has_above),
        .O(\st_out[14]_INST_0_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \st_out[14]_INST_0_i_9 
       (.I0(st_in[12]),
        .I1(nb_cid[3]),
        .I2(st_in[13]),
        .I3(nb_cid[4]),
        .O(\st_out[14]_INST_0_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair143" *) 
  LUT5 #(
    .INIT(32'h40FF4000)) 
    \st_out[15]_INST_0 
       (.I0(p_is_bnd),
        .I1(st_in[6]),
        .I2(\st_out[15]_INST_0_i_1_n_0 ),
        .I3(\st_out[15]_INST_0_i_2_n_0 ),
        .I4(st_in[15]),
        .O(st_out[15]));
  LUT6 #(
    .INIT(64'hFFFFF0FFFEEEF0EE)) 
    \st_out[15]_INST_0_i_1 
       (.I0(st_in[4]),
        .I1(st_in[5]),
        .I2(\st_out[15]_INST_0_i_3_n_0 ),
        .I3(\st_out[9]_INST_0_i_3_n_0 ),
        .I4(\st_out[15]_INST_0_i_4_n_0 ),
        .I5(st_in[3]),
        .O(\st_out[15]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair141" *) 
  LUT5 #(
    .INIT(32'h60006060)) 
    \st_out[15]_INST_0_i_2 
       (.I0(stage[1]),
        .I1(stage[2]),
        .I2(stage[0]),
        .I3(m_pass[0]),
        .I4(m_pass[1]),
        .O(\st_out[15]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair144" *) 
  LUT5 #(
    .INIT(32'h10100010)) 
    \st_out[15]_INST_0_i_3 
       (.I0(\st_out[14]_INST_0_i_6_n_0 ),
        .I1(\st_out[2]_INST_0_i_2_n_0 ),
        .I2(e_grown[0]),
        .I3(nb_cid[5]),
        .I4(st_in[14]),
        .O(\st_out[15]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair154" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    \st_out[15]_INST_0_i_4 
       (.I0(\st_out[2]_INST_0_i_2_n_0 ),
        .I1(st_in[1]),
        .I2(e_grown[0]),
        .O(\st_out[15]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF44F44444444)) 
    \st_out[1]_INST_0 
       (.I0(\st_out[9]_INST_0_i_3_n_0 ),
        .I1(\st_out[15]_INST_0_i_2_n_0 ),
        .I2(stage[2]),
        .I3(stage[0]),
        .I4(stage[1]),
        .I5(st_in[1]),
        .O(st_out[1]));
  LUT6 #(
    .INIT(64'hFFFFFFFFBABB0000)) 
    \st_out[2]_INST_0 
       (.I0(st_in[2]),
        .I1(\st_out[2]_INST_0_i_1_n_0 ),
        .I2(st_in[1]),
        .I3(\st_out[2]_INST_0_i_2_n_0 ),
        .I4(\st_out[6]_INST_0_i_3_n_0 ),
        .I5(\st_out[2]_INST_0_i_3_n_0 ),
        .O(st_out[2]));
  (* SOFT_HLUTNM = "soft_lutpair149" *) 
  LUT5 #(
    .INIT(32'hFF4FFFFF)) 
    \st_out[2]_INST_0_i_1 
       (.I0(m_pass[0]),
        .I1(m_pass[1]),
        .I2(e_grown[0]),
        .I3(\st_out[2]_INST_0_i_4_n_0 ),
        .I4(\st_out[9]_INST_0_i_3_n_0 ),
        .O(\st_out[2]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \st_out[2]_INST_0_i_2 
       (.I0(nb_cid[5]),
        .I1(nb_cid[3]),
        .I2(nb_cid[0]),
        .I3(nb_cid[2]),
        .I4(nb_cid[1]),
        .I5(nb_cid[4]),
        .O(\st_out[2]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hD5D5D5D510000000)) 
    \st_out[2]_INST_0_i_3 
       (.I0(stage[0]),
        .I1(stage[2]),
        .I2(stage[1]),
        .I3(st_in[8]),
        .I4(st_in[7]),
        .I5(st_in[2]),
        .O(\st_out[2]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair148" *) 
  LUT5 #(
    .INIT(32'hFFDFFFFF)) 
    \st_out[2]_INST_0_i_4 
       (.I0(stage[0]),
        .I1(stage[2]),
        .I2(stage[1]),
        .I3(st_in[2]),
        .I4(nb_grown[0]),
        .O(\st_out[2]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFAEEEAEAEAEEEAE)) 
    \st_out[3]_INST_0 
       (.I0(\st_out[3]_INST_0_i_1_n_0 ),
        .I1(st_in[3]),
        .I2(\st_out[4]_INST_0_i_1_n_0 ),
        .I3(\st_out[14]_INST_0_i_4_n_0 ),
        .I4(p_has_above),
        .I5(ab_ptr[0]),
        .O(st_out[3]));
  LUT6 #(
    .INIT(64'hAAAA0000AA8A8080)) 
    \st_out[3]_INST_0_i_1 
       (.I0(\st_out[6]_INST_0_i_3_n_0 ),
        .I1(\st_out[15]_INST_0_i_3_n_0 ),
        .I2(\st_out[9]_INST_0_i_3_n_0 ),
        .I3(\st_out[15]_INST_0_i_4_n_0 ),
        .I4(st_in[3]),
        .I5(\st_out[8]_INST_0_i_9_n_0 ),
        .O(\st_out[3]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB0FFFFFF80808080)) 
    \st_out[4]_INST_0 
       (.I0(ab_ptr[1]),
        .I1(p_has_above),
        .I2(\st_out[14]_INST_0_i_4_n_0 ),
        .I3(\st_out[5]_INST_0_i_1_n_0 ),
        .I4(\st_out[4]_INST_0_i_1_n_0 ),
        .I5(st_in[4]),
        .O(st_out[4]));
  (* SOFT_HLUTNM = "soft_lutpair150" *) 
  LUT4 #(
    .INIT(16'h7720)) 
    \st_out[4]_INST_0_i_1 
       (.I0(stage[1]),
        .I1(stage[2]),
        .I2(\st_out[13]_INST_0_i_5_n_0 ),
        .I3(stage[0]),
        .O(\st_out[4]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFF070F070707070)) 
    \st_out[5]_INST_0 
       (.I0(\st_out[5]_INST_0_i_1_n_0 ),
        .I1(\st_out[5]_INST_0_i_2_n_0 ),
        .I2(st_in[5]),
        .I3(p_has_above),
        .I4(ab_ptr[2]),
        .I5(\st_out[14]_INST_0_i_4_n_0 ),
        .O(st_out[5]));
  LUT6 #(
    .INIT(64'hDD000D00FFFFFFFF)) 
    \st_out[5]_INST_0_i_1 
       (.I0(m_pass[1]),
        .I1(m_pass[0]),
        .I2(\st_out[15]_INST_0_i_4_n_0 ),
        .I3(\st_out[9]_INST_0_i_3_n_0 ),
        .I4(\st_out[15]_INST_0_i_3_n_0 ),
        .I5(\st_out[6]_INST_0_i_3_n_0 ),
        .O(\st_out[5]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair148" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \st_out[5]_INST_0_i_2 
       (.I0(stage[0]),
        .I1(stage[2]),
        .I2(stage[1]),
        .O(\st_out[5]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFA6550000)) 
    \st_out[6]_INST_0 
       (.I0(\st_out[6]_INST_0_i_1_n_0 ),
        .I1(\st_out[6]_INST_0_i_2_n_0 ),
        .I2(\st_out[8]_INST_0_i_4_n_0 ),
        .I3(st_in[6]),
        .I4(\st_out[6]_INST_0_i_3_n_0 ),
        .I5(\st_out[6]_INST_0_i_4_n_0 ),
        .O(st_out[6]));
  (* SOFT_HLUTNM = "soft_lutpair142" *) 
  LUT3 #(
    .INIT(8'h4F)) 
    \st_out[6]_INST_0_i_1 
       (.I0(m_pass[1]),
        .I1(m_pass[0]),
        .I2(nb_push[0]),
        .O(\st_out[6]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair153" *) 
  LUT3 #(
    .INIT(8'h45)) 
    \st_out[6]_INST_0_i_2 
       (.I0(p_is_bnd),
        .I1(m_pass[1]),
        .I2(m_pass[0]),
        .O(\st_out[6]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair145" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \st_out[6]_INST_0_i_3 
       (.I0(stage[0]),
        .I1(stage[2]),
        .I2(stage[1]),
        .O(\st_out[6]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h2A80FFFF2A802A80)) 
    \st_out[6]_INST_0_i_4 
       (.I0(\st_out[14]_INST_0_i_4_n_0 ),
        .I1(syn_bit),
        .I2(p_is_syn),
        .I3(\st_out[6]_INST_0_i_5_n_0 ),
        .I4(\st_out[5]_INST_0_i_2_n_0 ),
        .I5(st_in[6]),
        .O(\st_out[6]_INST_0_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \st_out[6]_INST_0_i_5 
       (.I0(st_in[6]),
        .I1(p_has_above),
        .I2(ab_defect),
        .I3(p_is_top),
        .O(\st_out[6]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFEEEAAAEA)) 
    \st_out[7]_INST_0 
       (.I0(\st_out[7]_INST_0_i_1_n_0 ),
        .I1(\st_out[14]_INST_0_i_4_n_0 ),
        .I2(st_in[7]),
        .I3(p_has_above),
        .I4(ab_whole),
        .I5(\st_out[7]_INST_0_i_2_n_0 ),
        .O(st_out[7]));
  (* SOFT_HLUTNM = "soft_lutpair145" *) 
  LUT5 #(
    .INIT(32'hCCC4C00C)) 
    \st_out[7]_INST_0_i_1 
       (.I0(st_in[8]),
        .I1(st_in[7]),
        .I2(stage[2]),
        .I3(stage[0]),
        .I4(stage[1]),
        .O(\st_out[7]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1010101000001000)) 
    \st_out[7]_INST_0_i_2 
       (.I0(stage[0]),
        .I1(stage[1]),
        .I2(stage[2]),
        .I3(st_in[8]),
        .I4(st_in[2]),
        .I5(st_in[7]),
        .O(\st_out[7]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF55544454)) 
    \st_out[8]_INST_0 
       (.I0(\st_out[8]_INST_0_i_1_n_0 ),
        .I1(\st_out[8]_INST_0_i_2_n_0 ),
        .I2(\st_out[8]_INST_0_i_3_n_0 ),
        .I3(\st_out[8]_INST_0_i_4_n_0 ),
        .I4(\st_out[8]_INST_0_i_5_n_0 ),
        .I5(\st_out[8]_INST_0_i_6_n_0 ),
        .O(st_out[8]));
  LUT6 #(
    .INIT(64'h9F9F9F9F9F9FFF9F)) 
    \st_out[8]_INST_0_i_1 
       (.I0(stage[1]),
        .I1(stage[2]),
        .I2(stage[0]),
        .I3(m_pass[0]),
        .I4(m_pass[1]),
        .I5(st_in[8]),
        .O(\st_out[8]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair152" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \st_out[8]_INST_0_i_10 
       (.I0(st_in[4]),
        .I1(st_in[5]),
        .O(\st_out[8]_INST_0_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair144" *) 
  LUT4 #(
    .INIT(16'hFF4F)) 
    \st_out[8]_INST_0_i_11 
       (.I0(st_in[14]),
        .I1(nb_cid[5]),
        .I2(e_grown[0]),
        .I3(\st_out[2]_INST_0_i_2_n_0 ),
        .O(\st_out[8]_INST_0_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair153" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \st_out[8]_INST_0_i_2 
       (.I0(m_pass[0]),
        .I1(m_pass[1]),
        .O(\st_out[8]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hBABB8A88)) 
    \st_out[8]_INST_0_i_3 
       (.I0(nb_active[2]),
        .I1(\st_out[8]_INST_0_i_7_n_0 ),
        .I2(\st_out[8]_INST_0_i_8_n_0 ),
        .I3(st_in[4]),
        .I4(nb_active[0]),
        .O(\st_out[8]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h5555153500000030)) 
    \st_out[8]_INST_0_i_4 
       (.I0(st_in[3]),
        .I1(\st_out[15]_INST_0_i_3_n_0 ),
        .I2(\st_out[9]_INST_0_i_3_n_0 ),
        .I3(\st_out[15]_INST_0_i_4_n_0 ),
        .I4(\st_out[8]_INST_0_i_9_n_0 ),
        .I5(\st_out[8]_INST_0_i_10_n_0 ),
        .O(\st_out[8]_INST_0_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair143" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \st_out[8]_INST_0_i_5 
       (.I0(st_in[6]),
        .I1(p_is_bnd),
        .O(\st_out[8]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h7370507050505050)) 
    \st_out[8]_INST_0_i_6 
       (.I0(\st_out[5]_INST_0_i_2_n_0 ),
        .I1(p_is_top),
        .I2(st_in[8]),
        .I3(p_has_above),
        .I4(ab_active),
        .I5(\st_out[14]_INST_0_i_4_n_0 ),
        .O(\st_out[8]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h3733373337332233)) 
    \st_out[8]_INST_0_i_7 
       (.I0(\st_out[8]_INST_0_i_9_n_0 ),
        .I1(st_in[3]),
        .I2(\st_out[15]_INST_0_i_4_n_0 ),
        .I3(\st_out[9]_INST_0_i_3_n_0 ),
        .I4(\st_out[14]_INST_0_i_6_n_0 ),
        .I5(\st_out[8]_INST_0_i_11_n_0 ),
        .O(\st_out[8]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h10F0000010F010F0)) 
    \st_out[8]_INST_0_i_8 
       (.I0(\st_out[8]_INST_0_i_11_n_0 ),
        .I1(\st_out[14]_INST_0_i_6_n_0 ),
        .I2(\st_out[9]_INST_0_i_3_n_0 ),
        .I3(\st_out[15]_INST_0_i_4_n_0 ),
        .I4(m_pass[0]),
        .I5(m_pass[1]),
        .O(\st_out[8]_INST_0_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair149" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \st_out[8]_INST_0_i_9 
       (.I0(m_pass[1]),
        .I1(m_pass[0]),
        .O(\st_out[8]_INST_0_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hEEFEEEEE)) 
    \st_out[9]_INST_0 
       (.I0(\st_out[9]_INST_0_i_1_n_0 ),
        .I1(\st_out[9]_INST_0_i_2_n_0 ),
        .I2(p_id[0]),
        .I3(\st_out[9]_INST_0_i_3_n_0 ),
        .I4(\st_out[15]_INST_0_i_2_n_0 ),
        .O(st_out[9]));
  LUT6 #(
    .INIT(64'hFB0B000000000000)) 
    \st_out[9]_INST_0_i_1 
       (.I0(st_in[9]),
        .I1(\st_out[15]_INST_0_i_4_n_0 ),
        .I2(\st_out[15]_INST_0_i_3_n_0 ),
        .I3(nb_cid[0]),
        .I4(\st_out[9]_INST_0_i_3_n_0 ),
        .I5(\st_out[15]_INST_0_i_2_n_0 ),
        .O(\st_out[9]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFDCD050D0)) 
    \st_out[9]_INST_0_i_2 
       (.I0(\st_out[13]_INST_0_i_3_n_0 ),
        .I1(\st_out[14]_INST_0_i_4_n_0 ),
        .I2(st_in[9]),
        .I3(p_has_above),
        .I4(ab_cid[0]),
        .I5(\st_out[13]_INST_0_i_2_n_0 ),
        .O(\st_out[9]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \st_out[9]_INST_0_i_3 
       (.I0(st_in[9]),
        .I1(st_in[11]),
        .I2(st_in[10]),
        .I3(st_in[13]),
        .I4(st_in[14]),
        .I5(st_in[12]),
        .O(\st_out[9]_INST_0_i_3_n_0 ));
endmodule

(* HAS_ABOVE = "0" *) (* ID = "0" *) (* IS_BND = "0" *) 
(* IS_BOT = "0" *) (* IS_TOP = "0" *) (* OFF_ACT = "8" *) 
(* OFF_BUSY = "0" *) (* OFF_CID = "9" *) (* OFF_DEF = "6" *) 
(* OFF_GRW = "2" *) (* OFF_PB = "15" *) (* OFF_PTR = "3" *) 
(* OFF_UNR = "1" *) (* OFF_WHL = "7" *) (* ONE_ONE = "0" *) 
(* ORIG_REF_NAME = "snowflake_pe" *) (* STW = "16" *) (* ST_DROP = "3'b001" *) 
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
  input [5:0]ab_cid;
  input ab_active;
  input ab_whole;
  input ab_defect;
  input [2:0]ab_ptr;
  input [3:0]e_grown;
  input [3:0]nb_valid;
  input [23:0]nb_cid;
  input [3:0]nb_active;
  input [3:0]nb_grown;
  input [3:0]nb_push;
  input [1:0]m_pass;
  input [15:0]st_in;
  output [15:0]st_out;
  output o_busy_c;
  output o_pulse;
  output [3:0]o_push;
  input [5:0]p_id;
  input p_has_above;
  input p_is_bnd;
  input p_is_top;
  input p_is_bot;
  input p_is_syn;
  input zzz_never_used;

  wire \<const0> ;
  wire ab_active;
  wire [5:0]ab_cid;
  wire ab_defect;
  wire [2:0]ab_ptr;
  wire ab_whole;
  wire [3:0]e_grown;
  wire [1:0]m_pass;
  wire [3:0]nb_active;
  wire [23:0]nb_cid;
  wire [3:0]nb_grown;
  wire [3:0]nb_push;
  wire p_has_above;
  wire [5:0]p_id;
  wire p_is_bnd;
  wire p_is_bot;
  wire p_is_syn;
  wire p_is_top;
  wire [15:0]st_in;
  wire [15:0]st_out;
  wire \st_out[0]_INST_0_i_1_n_0 ;
  wire \st_out[0]_INST_0_i_2_n_0 ;
  wire \st_out[0]_INST_0_i_3_n_0 ;
  wire \st_out[0]_INST_0_i_4_n_0 ;
  wire \st_out[10]_INST_0_i_1_n_0 ;
  wire \st_out[10]_INST_0_i_2_n_0 ;
  wire \st_out[10]_INST_0_i_3_n_0 ;
  wire \st_out[11]_INST_0_i_1_n_0 ;
  wire \st_out[11]_INST_0_i_2_n_0 ;
  wire \st_out[11]_INST_0_i_3_n_0 ;
  wire \st_out[12]_INST_0_i_1_n_0 ;
  wire \st_out[12]_INST_0_i_2_n_0 ;
  wire \st_out[12]_INST_0_i_3_n_0 ;
  wire \st_out[13]_INST_0_i_1_n_0 ;
  wire \st_out[13]_INST_0_i_2_n_0 ;
  wire \st_out[13]_INST_0_i_3_n_0 ;
  wire \st_out[13]_INST_0_i_4_n_0 ;
  wire \st_out[14]_INST_0_i_10_n_0 ;
  wire \st_out[14]_INST_0_i_11_n_0 ;
  wire \st_out[14]_INST_0_i_12_n_0 ;
  wire \st_out[14]_INST_0_i_13_n_0 ;
  wire \st_out[14]_INST_0_i_14_n_0 ;
  wire \st_out[14]_INST_0_i_1_n_0 ;
  wire \st_out[14]_INST_0_i_2_n_0 ;
  wire \st_out[14]_INST_0_i_3_n_0 ;
  wire \st_out[14]_INST_0_i_4_n_0 ;
  wire \st_out[14]_INST_0_i_5_n_0 ;
  wire \st_out[14]_INST_0_i_6_n_0 ;
  wire \st_out[14]_INST_0_i_7_n_0 ;
  wire \st_out[14]_INST_0_i_8_n_0 ;
  wire \st_out[14]_INST_0_i_9_n_0 ;
  wire \st_out[15]_INST_0_i_1_n_0 ;
  wire \st_out[15]_INST_0_i_2_n_0 ;
  wire \st_out[15]_INST_0_i_3_n_0 ;
  wire \st_out[15]_INST_0_i_4_n_0 ;
  wire \st_out[1]_INST_0_i_1_n_0 ;
  wire \st_out[2]_INST_0_i_1_n_0 ;
  wire \st_out[2]_INST_0_i_2_n_0 ;
  wire \st_out[2]_INST_0_i_3_n_0 ;
  wire \st_out[3]_INST_0_i_1_n_0 ;
  wire \st_out[3]_INST_0_i_2_n_0 ;
  wire \st_out[3]_INST_0_i_3_n_0 ;
  wire \st_out[4]_INST_0_i_1_n_0 ;
  wire \st_out[4]_INST_0_i_2_n_0 ;
  wire \st_out[4]_INST_0_i_3_n_0 ;
  wire \st_out[5]_INST_0_i_1_n_0 ;
  wire \st_out[5]_INST_0_i_2_n_0 ;
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
  wire \st_out[8]_INST_0_i_5_n_0 ;
  wire \st_out[9]_INST_0_i_1_n_0 ;
  wire \st_out[9]_INST_0_i_2_n_0 ;
  wire \st_out[9]_INST_0_i_3_n_0 ;
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
    .INIT(64'h00000000FFFF9F99)) 
    \st_out[0]_INST_0 
       (.I0(st_in[8]),
        .I1(\st_out[8]_INST_0_i_1_n_0 ),
        .I2(\st_out[0]_INST_0_i_1_n_0 ),
        .I3(\st_out[0]_INST_0_i_2_n_0 ),
        .I4(\st_out[0]_INST_0_i_3_n_0 ),
        .I5(\st_out[0]_INST_0_i_4_n_0 ),
        .O(st_out[0]));
  LUT6 #(
    .INIT(64'h002000200020AAAA)) 
    \st_out[0]_INST_0_i_1 
       (.I0(\st_out[4]_INST_0_i_1_n_0 ),
        .I1(\st_out[5]_INST_0_i_1_n_0 ),
        .I2(\st_out[13]_INST_0_i_1_n_0 ),
        .I3(\st_out[15]_INST_0_i_1_n_0 ),
        .I4(st_in[3]),
        .I5(st_in[5]),
        .O(\st_out[0]_INST_0_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \st_out[0]_INST_0_i_2 
       (.I0(st_in[6]),
        .I1(p_is_bnd),
        .O(\st_out[0]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFE00FFFE)) 
    \st_out[0]_INST_0_i_3 
       (.I0(\st_out[13]_INST_0_i_1_n_0 ),
        .I1(\st_out[2]_INST_0_i_2_n_0 ),
        .I2(\st_out[5]_INST_0_i_1_n_0 ),
        .I3(m_pass[0]),
        .I4(m_pass[1]),
        .I5(nb_push[1]),
        .O(\st_out[0]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000100FFFFFFFF)) 
    \st_out[0]_INST_0_i_4 
       (.I0(\st_out[13]_INST_0_i_1_n_0 ),
        .I1(\st_out[2]_INST_0_i_2_n_0 ),
        .I2(\st_out[5]_INST_0_i_1_n_0 ),
        .I3(m_pass[0]),
        .I4(m_pass[1]),
        .I5(\st_out[15]_INST_0_i_2_n_0 ),
        .O(\st_out[0]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFB0B0B000)) 
    \st_out[10]_INST_0 
       (.I0(nb_cid[7]),
        .I1(\st_out[14]_INST_0_i_3_n_0 ),
        .I2(\st_out[14]_INST_0_i_2_n_0 ),
        .I3(st_in[10]),
        .I4(\st_out[13]_INST_0_i_1_n_0 ),
        .I5(\st_out[10]_INST_0_i_1_n_0 ),
        .O(st_out[10]));
  LUT6 #(
    .INIT(64'hFFFFAAFEAAFEAAFE)) 
    \st_out[10]_INST_0_i_1 
       (.I0(\st_out[10]_INST_0_i_2_n_0 ),
        .I1(\st_out[14]_INST_0_i_11_n_0 ),
        .I2(st_in[10]),
        .I3(\st_out[14]_INST_0_i_12_n_0 ),
        .I4(p_id[1]),
        .I5(\st_out[1]_INST_0_i_1_n_0 ),
        .O(\st_out[10]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h2EE20000)) 
    \st_out[10]_INST_0_i_2 
       (.I0(st_in[10]),
        .I1(p_has_above),
        .I2(\st_out[10]_INST_0_i_3_n_0 ),
        .I3(ab_cid[1]),
        .I4(\st_out[7]_INST_0_i_2_n_0 ),
        .O(\st_out[10]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h00001115)) 
    \st_out[10]_INST_0_i_3 
       (.I0(ab_cid[5]),
        .I1(ab_cid[3]),
        .I2(ab_cid[2]),
        .I3(ab_cid[1]),
        .I4(ab_cid[4]),
        .O(\st_out[10]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFB0B0B000)) 
    \st_out[11]_INST_0 
       (.I0(nb_cid[8]),
        .I1(\st_out[14]_INST_0_i_3_n_0 ),
        .I2(\st_out[14]_INST_0_i_2_n_0 ),
        .I3(st_in[11]),
        .I4(\st_out[13]_INST_0_i_1_n_0 ),
        .I5(\st_out[11]_INST_0_i_1_n_0 ),
        .O(st_out[11]));
  LUT6 #(
    .INIT(64'hEAEAEAEAFFFFFFEA)) 
    \st_out[11]_INST_0_i_1 
       (.I0(\st_out[11]_INST_0_i_2_n_0 ),
        .I1(p_id[2]),
        .I2(\st_out[1]_INST_0_i_1_n_0 ),
        .I3(\st_out[14]_INST_0_i_11_n_0 ),
        .I4(st_in[11]),
        .I5(\st_out[14]_INST_0_i_12_n_0 ),
        .O(\st_out[11]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF9F9F90000000000)) 
    \st_out[11]_INST_0_i_2 
       (.I0(ab_cid[2]),
        .I1(\st_out[11]_INST_0_i_3_n_0 ),
        .I2(\st_out[14]_INST_0_i_13_n_0 ),
        .I3(p_has_above),
        .I4(st_in[11]),
        .I5(\st_out[7]_INST_0_i_2_n_0 ),
        .O(\st_out[11]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h00000015)) 
    \st_out[11]_INST_0_i_3 
       (.I0(ab_cid[4]),
        .I1(ab_cid[2]),
        .I2(ab_cid[3]),
        .I3(ab_cid[5]),
        .I4(ab_cid[1]),
        .O(\st_out[11]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFB0B0B000)) 
    \st_out[12]_INST_0 
       (.I0(nb_cid[9]),
        .I1(\st_out[14]_INST_0_i_3_n_0 ),
        .I2(\st_out[14]_INST_0_i_2_n_0 ),
        .I3(st_in[12]),
        .I4(\st_out[13]_INST_0_i_1_n_0 ),
        .I5(\st_out[12]_INST_0_i_1_n_0 ),
        .O(st_out[12]));
  LUT5 #(
    .INIT(32'hFFFFA800)) 
    \st_out[12]_INST_0_i_1 
       (.I0(\st_out[7]_INST_0_i_2_n_0 ),
        .I1(st_in[12]),
        .I2(p_has_above),
        .I3(\st_out[12]_INST_0_i_2_n_0 ),
        .I4(\st_out[12]_INST_0_i_3_n_0 ),
        .O(\st_out[12]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAFFFFAAAAFEFFAA)) 
    \st_out[12]_INST_0_i_2 
       (.I0(\st_out[14]_INST_0_i_13_n_0 ),
        .I1(ab_cid[1]),
        .I2(ab_cid[5]),
        .I3(ab_cid[3]),
        .I4(ab_cid[2]),
        .I5(ab_cid[4]),
        .O(\st_out[12]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFF545454)) 
    \st_out[12]_INST_0_i_3 
       (.I0(\st_out[14]_INST_0_i_12_n_0 ),
        .I1(st_in[12]),
        .I2(\st_out[14]_INST_0_i_11_n_0 ),
        .I3(\st_out[1]_INST_0_i_1_n_0 ),
        .I4(p_id[3]),
        .O(\st_out[12]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFB0B0B000)) 
    \st_out[13]_INST_0 
       (.I0(nb_cid[10]),
        .I1(\st_out[14]_INST_0_i_3_n_0 ),
        .I2(\st_out[14]_INST_0_i_2_n_0 ),
        .I3(st_in[13]),
        .I4(\st_out[13]_INST_0_i_1_n_0 ),
        .I5(\st_out[13]_INST_0_i_2_n_0 ),
        .O(st_out[13]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hBAAA)) 
    \st_out[13]_INST_0_i_1 
       (.I0(\st_out[14]_INST_0_i_3_n_0 ),
        .I1(st_in[1]),
        .I2(\st_out[2]_INST_0_i_1_n_0 ),
        .I3(e_grown[1]),
        .O(\st_out[13]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFAAFEAAFEAAFE)) 
    \st_out[13]_INST_0_i_2 
       (.I0(\st_out[13]_INST_0_i_3_n_0 ),
        .I1(\st_out[14]_INST_0_i_11_n_0 ),
        .I2(st_in[13]),
        .I3(\st_out[14]_INST_0_i_12_n_0 ),
        .I4(p_id[4]),
        .I5(\st_out[1]_INST_0_i_1_n_0 ),
        .O(\st_out[13]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF6F6F60000000000)) 
    \st_out[13]_INST_0_i_3 
       (.I0(ab_cid[4]),
        .I1(\st_out[13]_INST_0_i_4_n_0 ),
        .I2(\st_out[14]_INST_0_i_13_n_0 ),
        .I3(p_has_above),
        .I4(st_in[13]),
        .I5(\st_out[7]_INST_0_i_2_n_0 ),
        .O(\st_out[13]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \st_out[13]_INST_0_i_4 
       (.I0(ab_cid[2]),
        .I1(ab_cid[3]),
        .O(\st_out[13]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFC000E0E0)) 
    \st_out[14]_INST_0 
       (.I0(\st_out[14]_INST_0_i_1_n_0 ),
        .I1(st_in[14]),
        .I2(\st_out[14]_INST_0_i_2_n_0 ),
        .I3(nb_cid[11]),
        .I4(\st_out[14]_INST_0_i_3_n_0 ),
        .I5(\st_out[14]_INST_0_i_4_n_0 ),
        .O(st_out[14]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \st_out[14]_INST_0_i_1 
       (.I0(e_grown[1]),
        .I1(\st_out[2]_INST_0_i_1_n_0 ),
        .I2(st_in[1]),
        .O(\st_out[14]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBEBEBE0000000000)) 
    \st_out[14]_INST_0_i_10 
       (.I0(\st_out[14]_INST_0_i_13_n_0 ),
        .I1(ab_cid[5]),
        .I2(\st_out[14]_INST_0_i_14_n_0 ),
        .I3(p_has_above),
        .I4(st_in[14]),
        .I5(\st_out[7]_INST_0_i_2_n_0 ),
        .O(\st_out[14]_INST_0_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \st_out[14]_INST_0_i_11 
       (.I0(stage[0]),
        .I1(stage[2]),
        .I2(stage[1]),
        .I3(\st_out[3]_INST_0_i_3_n_0 ),
        .O(\st_out[14]_INST_0_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00D0D0F0)) 
    \st_out[14]_INST_0_i_12 
       (.I0(m_pass[1]),
        .I1(m_pass[0]),
        .I2(stage[0]),
        .I3(stage[2]),
        .I4(stage[1]),
        .O(\st_out[14]_INST_0_i_12_n_0 ));
  LUT5 #(
    .INIT(32'h8000FFFF)) 
    \st_out[14]_INST_0_i_13 
       (.I0(ab_cid[1]),
        .I1(ab_cid[0]),
        .I2(ab_cid[5]),
        .I3(\st_out[14]_INST_0_i_14_n_0 ),
        .I4(p_has_above),
        .O(\st_out[14]_INST_0_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \st_out[14]_INST_0_i_14 
       (.I0(ab_cid[4]),
        .I1(ab_cid[3]),
        .I2(ab_cid[2]),
        .O(\st_out[14]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000D0D000)) 
    \st_out[14]_INST_0_i_2 
       (.I0(m_pass[1]),
        .I1(m_pass[0]),
        .I2(stage[0]),
        .I3(stage[2]),
        .I4(stage[1]),
        .I5(\st_out[5]_INST_0_i_1_n_0 ),
        .O(\st_out[14]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000AAEF)) 
    \st_out[14]_INST_0_i_3 
       (.I0(\st_out[14]_INST_0_i_5_n_0 ),
        .I1(\st_out[14]_INST_0_i_6_n_0 ),
        .I2(\st_out[14]_INST_0_i_7_n_0 ),
        .I3(\st_out[14]_INST_0_i_8_n_0 ),
        .I4(\st_out[14]_INST_0_i_9_n_0 ),
        .I5(\st_out[2]_INST_0_i_1_n_0 ),
        .O(\st_out[14]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFEAFFEAFFFFFFEA)) 
    \st_out[14]_INST_0_i_4 
       (.I0(\st_out[14]_INST_0_i_10_n_0 ),
        .I1(\st_out[1]_INST_0_i_1_n_0 ),
        .I2(p_id[5]),
        .I3(\st_out[14]_INST_0_i_11_n_0 ),
        .I4(st_in[14]),
        .I5(\st_out[14]_INST_0_i_12_n_0 ),
        .O(\st_out[14]_INST_0_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    \st_out[14]_INST_0_i_5 
       (.I0(nb_cid[11]),
        .I1(st_in[14]),
        .I2(nb_cid[10]),
        .I3(st_in[13]),
        .O(\st_out[14]_INST_0_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \st_out[14]_INST_0_i_6 
       (.I0(nb_cid[9]),
        .I1(st_in[12]),
        .I2(nb_cid[8]),
        .I3(st_in[11]),
        .O(\st_out[14]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hDDFD00F0FFFFDDFD)) 
    \st_out[14]_INST_0_i_7 
       (.I0(st_in[9]),
        .I1(nb_cid[6]),
        .I2(nb_cid[8]),
        .I3(st_in[11]),
        .I4(nb_cid[7]),
        .I5(st_in[10]),
        .O(\st_out[14]_INST_0_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \st_out[14]_INST_0_i_8 
       (.I0(st_in[12]),
        .I1(nb_cid[9]),
        .I2(st_in[13]),
        .I3(nb_cid[10]),
        .O(\st_out[14]_INST_0_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h4F)) 
    \st_out[14]_INST_0_i_9 
       (.I0(st_in[14]),
        .I1(nb_cid[11]),
        .I2(e_grown[1]),
        .O(\st_out[14]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h8ABA8A8A8A8A8A8A)) 
    \st_out[15]_INST_0 
       (.I0(st_in[15]),
        .I1(\st_out[15]_INST_0_i_1_n_0 ),
        .I2(\st_out[15]_INST_0_i_2_n_0 ),
        .I3(p_is_bnd),
        .I4(st_in[6]),
        .I5(\st_out[15]_INST_0_i_3_n_0 ),
        .O(st_out[15]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \st_out[15]_INST_0_i_1 
       (.I0(m_pass[1]),
        .I1(m_pass[0]),
        .O(\st_out[15]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \st_out[15]_INST_0_i_2 
       (.I0(stage[0]),
        .I1(stage[2]),
        .I2(stage[1]),
        .O(\st_out[15]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hE0EEFFFF)) 
    \st_out[15]_INST_0_i_3 
       (.I0(st_in[5]),
        .I1(st_in[3]),
        .I2(\st_out[5]_INST_0_i_1_n_0 ),
        .I3(\st_out[13]_INST_0_i_1_n_0 ),
        .I4(\st_out[15]_INST_0_i_4_n_0 ),
        .O(\st_out[15]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0B0B0B0B1B0B0B0B)) 
    \st_out[15]_INST_0_i_4 
       (.I0(\st_out[5]_INST_0_i_1_n_0 ),
        .I1(\st_out[14]_INST_0_i_3_n_0 ),
        .I2(st_in[4]),
        .I3(e_grown[1]),
        .I4(\st_out[2]_INST_0_i_1_n_0 ),
        .I5(st_in[1]),
        .O(\st_out[15]_INST_0_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFEEFAAAA)) 
    \st_out[1]_INST_0 
       (.I0(\st_out[1]_INST_0_i_1_n_0 ),
        .I1(stage[1]),
        .I2(stage[2]),
        .I3(stage[0]),
        .I4(st_in[1]),
        .O(st_out[1]));
  LUT6 #(
    .INIT(64'h6000600000006000)) 
    \st_out[1]_INST_0_i_1 
       (.I0(stage[1]),
        .I1(stage[2]),
        .I2(stage[0]),
        .I3(\st_out[5]_INST_0_i_1_n_0 ),
        .I4(m_pass[1]),
        .I5(m_pass[0]),
        .O(\st_out[1]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFD000)) 
    \st_out[2]_INST_0 
       (.I0(\st_out[2]_INST_0_i_1_n_0 ),
        .I1(st_in[1]),
        .I2(\st_out[2]_INST_0_i_2_n_0 ),
        .I3(\st_out[14]_INST_0_i_2_n_0 ),
        .I4(\st_out[2]_INST_0_i_3_n_0 ),
        .O(st_out[2]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \st_out[2]_INST_0_i_1 
       (.I0(nb_cid[11]),
        .I1(nb_cid[9]),
        .I2(nb_cid[6]),
        .I3(nb_cid[8]),
        .I4(nb_cid[7]),
        .I5(nb_cid[10]),
        .O(\st_out[2]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000200000000000)) 
    \st_out[2]_INST_0_i_2 
       (.I0(stage[1]),
        .I1(stage[2]),
        .I2(e_grown[1]),
        .I3(stage[0]),
        .I4(st_in[2]),
        .I5(nb_grown[1]),
        .O(\st_out[2]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hA8A8A8A8AEAAAAAA)) 
    \st_out[2]_INST_0_i_3 
       (.I0(st_in[2]),
        .I1(stage[1]),
        .I2(stage[2]),
        .I3(st_in[7]),
        .I4(st_in[8]),
        .I5(stage[0]),
        .O(\st_out[2]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFAEEEAEAEAEEEAE)) 
    \st_out[3]_INST_0 
       (.I0(\st_out[3]_INST_0_i_1_n_0 ),
        .I1(st_in[3]),
        .I2(\st_out[3]_INST_0_i_2_n_0 ),
        .I3(\st_out[7]_INST_0_i_2_n_0 ),
        .I4(p_has_above),
        .I5(ab_ptr[0]),
        .O(st_out[3]));
  LUT6 #(
    .INIT(64'h8888888808008888)) 
    \st_out[3]_INST_0_i_1 
       (.I0(\st_out[15]_INST_0_i_2_n_0 ),
        .I1(st_in[3]),
        .I2(m_pass[0]),
        .I3(m_pass[1]),
        .I4(\st_out[13]_INST_0_i_1_n_0 ),
        .I5(\st_out[5]_INST_0_i_1_n_0 ),
        .O(\st_out[3]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h7720)) 
    \st_out[3]_INST_0_i_2 
       (.I0(stage[1]),
        .I1(stage[2]),
        .I2(\st_out[3]_INST_0_i_3_n_0 ),
        .I3(stage[0]),
        .O(\st_out[3]_INST_0_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \st_out[3]_INST_0_i_3 
       (.I0(p_is_bot),
        .I1(st_in[4]),
        .I2(st_in[3]),
        .I3(st_in[5]),
        .O(\st_out[3]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
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
    .INIT(64'h0F020F020F020FDF)) 
    \st_out[4]_INST_0_i_1 
       (.I0(m_pass[1]),
        .I1(m_pass[0]),
        .I2(st_in[4]),
        .I3(\st_out[5]_INST_0_i_1_n_0 ),
        .I4(\st_out[14]_INST_0_i_3_n_0 ),
        .I5(\st_out[4]_INST_0_i_3_n_0 ),
        .O(\st_out[4]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hDFC05500)) 
    \st_out[4]_INST_0_i_2 
       (.I0(\st_out[3]_INST_0_i_2_n_0 ),
        .I1(ab_ptr[1]),
        .I2(p_has_above),
        .I3(st_in[4]),
        .I4(\st_out[7]_INST_0_i_2_n_0 ),
        .O(\st_out[4]_INST_0_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hBF00)) 
    \st_out[4]_INST_0_i_3 
       (.I0(st_in[1]),
        .I1(\st_out[2]_INST_0_i_1_n_0 ),
        .I2(e_grown[1]),
        .I3(st_in[4]),
        .O(\st_out[4]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFAA8A0000)) 
    \st_out[5]_INST_0 
       (.I0(st_in[5]),
        .I1(\st_out[5]_INST_0_i_1_n_0 ),
        .I2(\st_out[13]_INST_0_i_1_n_0 ),
        .I3(\st_out[15]_INST_0_i_1_n_0 ),
        .I4(\st_out[15]_INST_0_i_2_n_0 ),
        .I5(\st_out[5]_INST_0_i_2_n_0 ),
        .O(st_out[5]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \st_out[5]_INST_0_i_1 
       (.I0(st_in[14]),
        .I1(st_in[12]),
        .I2(st_in[9]),
        .I3(st_in[11]),
        .I4(st_in[10]),
        .I5(st_in[13]),
        .O(\st_out[5]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h83AA82AA80AA82AA)) 
    \st_out[5]_INST_0_i_2 
       (.I0(st_in[5]),
        .I1(stage[1]),
        .I2(stage[2]),
        .I3(stage[0]),
        .I4(p_has_above),
        .I5(ab_ptr[2]),
        .O(\st_out[5]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hC55FCCCCC550CCCC)) 
    \st_out[6]_INST_0 
       (.I0(\st_out[6]_INST_0_i_1_n_0 ),
        .I1(st_in[6]),
        .I2(stage[1]),
        .I3(stage[2]),
        .I4(stage[0]),
        .I5(\st_out[6]_INST_0_i_2_n_0 ),
        .O(st_out[6]));
  LUT6 #(
    .INIT(64'h21222121DDDDDDDD)) 
    \st_out[6]_INST_0_i_1 
       (.I0(nb_push[1]),
        .I1(\st_out[6]_INST_0_i_3_n_0 ),
        .I2(p_is_bnd),
        .I3(\st_out[6]_INST_0_i_4_n_0 ),
        .I4(\st_out[4]_INST_0_i_1_n_0 ),
        .I5(st_in[6]),
        .O(\st_out[6]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8888888877788878)) 
    \st_out[6]_INST_0_i_2 
       (.I0(syn_bit),
        .I1(p_is_syn),
        .I2(st_in[6]),
        .I3(p_has_above),
        .I4(ab_defect),
        .I5(p_is_top),
        .O(\st_out[6]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \st_out[6]_INST_0_i_3 
       (.I0(m_pass[0]),
        .I1(m_pass[1]),
        .O(\st_out[6]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEEEEEE0E0E0EE)) 
    \st_out[6]_INST_0_i_4 
       (.I0(st_in[5]),
        .I1(st_in[3]),
        .I2(\st_out[15]_INST_0_i_1_n_0 ),
        .I3(\st_out[14]_INST_0_i_3_n_0 ),
        .I4(\st_out[14]_INST_0_i_1_n_0 ),
        .I5(\st_out[5]_INST_0_i_1_n_0 ),
        .O(\st_out[6]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFEEEAAAEA)) 
    \st_out[7]_INST_0 
       (.I0(\st_out[7]_INST_0_i_1_n_0 ),
        .I1(\st_out[7]_INST_0_i_2_n_0 ),
        .I2(st_in[7]),
        .I3(p_has_above),
        .I4(ab_whole),
        .I5(\st_out[7]_INST_0_i_3_n_0 ),
        .O(st_out[7]));
  LUT5 #(
    .INIT(32'hCCC0C04C)) 
    \st_out[7]_INST_0_i_1 
       (.I0(st_in[8]),
        .I1(st_in[7]),
        .I2(stage[1]),
        .I3(stage[2]),
        .I4(stage[0]),
        .O(\st_out[7]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
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
    .INIT(64'hFFFFFFFF75004500)) 
    \st_out[8]_INST_0 
       (.I0(\st_out[8]_INST_0_i_1_n_0 ),
        .I1(m_pass[1]),
        .I2(m_pass[0]),
        .I3(\st_out[15]_INST_0_i_2_n_0 ),
        .I4(st_in[8]),
        .I5(\st_out[8]_INST_0_i_2_n_0 ),
        .O(st_out[8]));
  LUT6 #(
    .INIT(64'h1D000F0F1DFF0F0F)) 
    \st_out[8]_INST_0_i_1 
       (.I0(\st_out[0]_INST_0_i_2_n_0 ),
        .I1(\st_out[8]_INST_0_i_3_n_0 ),
        .I2(nb_active[2]),
        .I3(\st_out[4]_INST_0_i_1_n_0 ),
        .I4(\st_out[8]_INST_0_i_4_n_0 ),
        .I5(nb_active[1]),
        .O(\st_out[8]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7370507050505050)) 
    \st_out[8]_INST_0_i_2 
       (.I0(\st_out[8]_INST_0_i_5_n_0 ),
        .I1(p_is_top),
        .I2(st_in[8]),
        .I3(p_has_above),
        .I4(ab_active),
        .I5(\st_out[7]_INST_0_i_2_n_0 ),
        .O(\st_out[8]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h888A888AAAAA888A)) 
    \st_out[8]_INST_0_i_3 
       (.I0(st_in[5]),
        .I1(\st_out[5]_INST_0_i_1_n_0 ),
        .I2(\st_out[14]_INST_0_i_1_n_0 ),
        .I3(\st_out[14]_INST_0_i_3_n_0 ),
        .I4(m_pass[1]),
        .I5(m_pass[0]),
        .O(\st_out[8]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h54540054FFFFFFFF)) 
    \st_out[8]_INST_0_i_4 
       (.I0(\st_out[5]_INST_0_i_1_n_0 ),
        .I1(\st_out[14]_INST_0_i_1_n_0 ),
        .I2(\st_out[14]_INST_0_i_3_n_0 ),
        .I3(m_pass[1]),
        .I4(m_pass[0]),
        .I5(st_in[3]),
        .O(\st_out[8]_INST_0_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \st_out[8]_INST_0_i_5 
       (.I0(stage[0]),
        .I1(stage[2]),
        .I2(stage[1]),
        .O(\st_out[8]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFB0B0B000)) 
    \st_out[9]_INST_0 
       (.I0(nb_cid[6]),
        .I1(\st_out[14]_INST_0_i_3_n_0 ),
        .I2(\st_out[14]_INST_0_i_2_n_0 ),
        .I3(st_in[9]),
        .I4(\st_out[13]_INST_0_i_1_n_0 ),
        .I5(\st_out[9]_INST_0_i_1_n_0 ),
        .O(st_out[9]));
  LUT6 #(
    .INIT(64'hFFFFFF8F88888888)) 
    \st_out[9]_INST_0_i_1 
       (.I0(\st_out[1]_INST_0_i_1_n_0 ),
        .I1(p_id[0]),
        .I2(\st_out[9]_INST_0_i_2_n_0 ),
        .I3(\st_out[14]_INST_0_i_11_n_0 ),
        .I4(st_in[9]),
        .I5(\st_out[9]_INST_0_i_3_n_0 ),
        .O(\st_out[9]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hEFFFFFFF)) 
    \st_out[9]_INST_0_i_2 
       (.I0(stage[2]),
        .I1(stage[1]),
        .I2(stage[0]),
        .I3(p_has_above),
        .I4(ab_cid[0]),
        .O(\st_out[9]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFAAFFAAFFCFFF)) 
    \st_out[9]_INST_0_i_3 
       (.I0(\st_out[15]_INST_0_i_1_n_0 ),
        .I1(ab_cid[0]),
        .I2(p_has_above),
        .I3(stage[0]),
        .I4(stage[1]),
        .I5(stage[2]),
        .O(\st_out[9]_INST_0_i_3_n_0 ));
endmodule

(* HAS_ABOVE = "0" *) (* ID = "0" *) (* IS_BND = "0" *) 
(* IS_BOT = "0" *) (* IS_TOP = "0" *) (* OFF_ACT = "8" *) 
(* OFF_BUSY = "0" *) (* OFF_CID = "9" *) (* OFF_DEF = "6" *) 
(* OFF_GRW = "2" *) (* OFF_PB = "15" *) (* OFF_PTR = "3" *) 
(* OFF_UNR = "1" *) (* OFF_WHL = "7" *) (* ONE_ONE = "0" *) 
(* ORIG_REF_NAME = "snowflake_pe" *) (* STW = "16" *) (* ST_DROP = "3'b001" *) 
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
  input [5:0]ab_cid;
  input ab_active;
  input ab_whole;
  input ab_defect;
  input [2:0]ab_ptr;
  input [3:0]e_grown;
  input [3:0]nb_valid;
  input [23:0]nb_cid;
  input [3:0]nb_active;
  input [3:0]nb_grown;
  input [3:0]nb_push;
  input [1:0]m_pass;
  input [15:0]st_in;
  output [15:0]st_out;
  output o_busy_c;
  output o_pulse;
  output [3:0]o_push;
  input [5:0]p_id;
  input p_has_above;
  input p_is_bnd;
  input p_is_top;
  input p_is_bot;
  input p_is_syn;
  input zzz_never_used;

  wire \<const0> ;
  wire ab_active;
  wire [5:0]ab_cid;
  wire ab_defect;
  wire [2:0]ab_ptr;
  wire ab_whole;
  wire [3:0]e_grown;
  wire [1:0]m_pass;
  wire [3:0]nb_active;
  wire [23:0]nb_cid;
  wire [3:0]nb_grown;
  wire [3:0]nb_push;
  wire [3:0]nb_valid;
  wire p_has_above;
  wire [5:0]p_id;
  wire p_is_bnd;
  wire p_is_bot;
  wire p_is_syn;
  wire p_is_top;
  wire [15:0]st_in;
  wire [15:0]st_out;
  wire \st_out[0]_INST_0_i_10_n_0 ;
  wire \st_out[0]_INST_0_i_11_n_0 ;
  wire \st_out[0]_INST_0_i_12_n_0 ;
  wire \st_out[0]_INST_0_i_13_n_0 ;
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
  wire \st_out[12]_INST_0_i_6_n_0 ;
  wire \st_out[12]_INST_0_i_7_n_0 ;
  wire \st_out[13]_INST_0_i_10_n_0 ;
  wire \st_out[13]_INST_0_i_11_n_0 ;
  wire \st_out[13]_INST_0_i_12_n_0 ;
  wire \st_out[13]_INST_0_i_13_n_0 ;
  wire \st_out[13]_INST_0_i_14_n_0 ;
  wire \st_out[13]_INST_0_i_15_n_0 ;
  wire \st_out[13]_INST_0_i_16_n_0 ;
  wire \st_out[13]_INST_0_i_17_n_0 ;
  wire \st_out[13]_INST_0_i_18_n_0 ;
  wire \st_out[13]_INST_0_i_19_n_0 ;
  wire \st_out[13]_INST_0_i_1_n_0 ;
  wire \st_out[13]_INST_0_i_20_n_0 ;
  wire \st_out[13]_INST_0_i_21_n_0 ;
  wire \st_out[13]_INST_0_i_22_n_0 ;
  wire \st_out[13]_INST_0_i_23_n_0 ;
  wire \st_out[13]_INST_0_i_24_n_0 ;
  wire \st_out[13]_INST_0_i_25_n_0 ;
  wire \st_out[13]_INST_0_i_26_n_0 ;
  wire \st_out[13]_INST_0_i_27_n_0 ;
  wire \st_out[13]_INST_0_i_28_n_0 ;
  wire \st_out[13]_INST_0_i_29_n_0 ;
  wire \st_out[13]_INST_0_i_2_n_0 ;
  wire \st_out[13]_INST_0_i_30_n_0 ;
  wire \st_out[13]_INST_0_i_3_n_0 ;
  wire \st_out[13]_INST_0_i_4_n_0 ;
  wire \st_out[13]_INST_0_i_5_n_0 ;
  wire \st_out[13]_INST_0_i_6_n_0 ;
  wire \st_out[13]_INST_0_i_7_n_0 ;
  wire \st_out[13]_INST_0_i_8_n_0 ;
  wire \st_out[13]_INST_0_i_9_n_0 ;
  wire \st_out[14]_INST_0_i_10_n_0 ;
  wire \st_out[14]_INST_0_i_1_n_0 ;
  wire \st_out[14]_INST_0_i_2_n_0 ;
  wire \st_out[14]_INST_0_i_3_n_0 ;
  wire \st_out[14]_INST_0_i_4_n_0 ;
  wire \st_out[14]_INST_0_i_5_n_0 ;
  wire \st_out[14]_INST_0_i_6_n_0 ;
  wire \st_out[14]_INST_0_i_7_n_0 ;
  wire \st_out[14]_INST_0_i_8_n_0 ;
  wire \st_out[14]_INST_0_i_9_n_0 ;
  wire \st_out[15]_INST_0_i_10_n_0 ;
  wire \st_out[15]_INST_0_i_11_n_0 ;
  wire \st_out[15]_INST_0_i_12_n_0 ;
  wire \st_out[15]_INST_0_i_13_n_0 ;
  wire \st_out[15]_INST_0_i_14_n_0 ;
  wire \st_out[15]_INST_0_i_15_n_0 ;
  wire \st_out[15]_INST_0_i_16_n_0 ;
  wire \st_out[15]_INST_0_i_17_n_0 ;
  wire \st_out[15]_INST_0_i_18_n_0 ;
  wire \st_out[15]_INST_0_i_19_n_0 ;
  wire \st_out[15]_INST_0_i_1_n_0 ;
  wire \st_out[15]_INST_0_i_20_n_0 ;
  wire \st_out[15]_INST_0_i_21_n_0 ;
  wire \st_out[15]_INST_0_i_22_n_0 ;
  wire \st_out[15]_INST_0_i_23_n_0 ;
  wire \st_out[15]_INST_0_i_24_n_0 ;
  wire \st_out[15]_INST_0_i_2_n_0 ;
  wire \st_out[15]_INST_0_i_3_n_0 ;
  wire \st_out[15]_INST_0_i_4_n_0 ;
  wire \st_out[15]_INST_0_i_5_n_0 ;
  wire \st_out[15]_INST_0_i_6_n_0 ;
  wire \st_out[15]_INST_0_i_7_n_0 ;
  wire \st_out[15]_INST_0_i_8_n_0 ;
  wire \st_out[15]_INST_0_i_9_n_0 ;
  wire \st_out[2]_INST_0_i_10_n_0 ;
  wire \st_out[2]_INST_0_i_11_n_0 ;
  wire \st_out[2]_INST_0_i_12_n_0 ;
  wire \st_out[2]_INST_0_i_13_n_0 ;
  wire \st_out[2]_INST_0_i_14_n_0 ;
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
  wire \st_out[4]_INST_0_i_10_n_0 ;
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
  wire \st_out[6]_INST_0_i_1_n_0 ;
  wire \st_out[6]_INST_0_i_2_n_0 ;
  wire \st_out[6]_INST_0_i_3_n_0 ;
  wire \st_out[6]_INST_0_i_4_n_0 ;
  wire \st_out[6]_INST_0_i_5_n_0 ;
  wire \st_out[6]_INST_0_i_6_n_0 ;
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
  wire \st_out[9]_INST_0_i_4_n_0 ;
  wire \st_out[9]_INST_0_i_5_n_0 ;
  wire \st_out[9]_INST_0_i_6_n_0 ;
  wire \st_out[9]_INST_0_i_7_n_0 ;
  wire \st_out[9]_INST_0_i_8_n_0 ;
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
    .INIT(64'h00000000F3FCFFF6)) 
    \st_out[0]_INST_0 
       (.I0(\st_out[0]_INST_0_i_1_n_0 ),
        .I1(st_in[8]),
        .I2(\st_out[0]_INST_0_i_2_n_0 ),
        .I3(\st_out[0]_INST_0_i_3_n_0 ),
        .I4(\st_out[6]_INST_0_i_3_n_0 ),
        .I5(\st_out[0]_INST_0_i_4_n_0 ),
        .O(st_out[0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \st_out[0]_INST_0_i_1 
       (.I0(nb_active[1]),
        .I1(nb_active[2]),
        .I2(\st_out[4]_INST_0_i_1_n_0 ),
        .I3(nb_active[3]),
        .I4(\st_out[3]_INST_0_i_1_n_0 ),
        .I5(nb_active[0]),
        .O(\st_out[0]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF02AAFFFFFFFF)) 
    \st_out[0]_INST_0_i_10 
       (.I0(e_grown[0]),
        .I1(st_in[2]),
        .I2(\st_out[0]_INST_0_i_12_n_0 ),
        .I3(\st_out[0]_INST_0_i_13_n_0 ),
        .I4(\st_out[15]_INST_0_i_6_n_0 ),
        .I5(\st_out[4]_INST_0_i_3_n_0 ),
        .O(\st_out[0]_INST_0_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'hDFFF)) 
    \st_out[0]_INST_0_i_11 
       (.I0(stage[1]),
        .I1(stage[2]),
        .I2(stage[0]),
        .I3(nb_grown[1]),
        .O(\st_out[0]_INST_0_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'hDFFF)) 
    \st_out[0]_INST_0_i_12 
       (.I0(stage[1]),
        .I1(stage[2]),
        .I2(stage[0]),
        .I3(nb_grown[0]),
        .O(\st_out[0]_INST_0_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \st_out[0]_INST_0_i_13 
       (.I0(st_in[1]),
        .I1(\st_out[4]_INST_0_i_6_n_0 ),
        .O(\st_out[0]_INST_0_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'h73F7)) 
    \st_out[0]_INST_0_i_2 
       (.I0(\st_out[0]_INST_0_i_5_n_0 ),
        .I1(\st_out[6]_INST_0_i_5_n_0 ),
        .I2(m_pass[0]),
        .I3(m_pass[1]),
        .O(\st_out[0]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \st_out[0]_INST_0_i_3 
       (.I0(st_in[6]),
        .I1(p_is_bnd),
        .O(\st_out[0]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFF0808FFFFFFFFFF)) 
    \st_out[0]_INST_0_i_4 
       (.I0(\st_out[0]_INST_0_i_5_n_0 ),
        .I1(m_pass[0]),
        .I2(m_pass[1]),
        .I3(stage[1]),
        .I4(stage[2]),
        .I5(stage[0]),
        .O(\st_out[0]_INST_0_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h0002)) 
    \st_out[0]_INST_0_i_5 
       (.I0(\st_out[13]_INST_0_i_7_n_0 ),
        .I1(\st_out[15]_INST_0_i_9_n_0 ),
        .I2(\st_out[0]_INST_0_i_6_n_0 ),
        .I3(\st_out[15]_INST_0_i_8_n_0 ),
        .O(\st_out[0]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAEEEAEAEFFFFAEAE)) 
    \st_out[0]_INST_0_i_6 
       (.I0(\st_out[0]_INST_0_i_7_n_0 ),
        .I1(\st_out[2]_INST_0_i_10_n_0 ),
        .I2(\st_out[2]_INST_0_i_9_n_0 ),
        .I3(\st_out[0]_INST_0_i_8_n_0 ),
        .I4(\st_out[2]_INST_0_i_7_n_0 ),
        .I5(\st_out[2]_INST_0_i_4_n_0 ),
        .O(\st_out[0]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEFEEEFEFEFEFE)) 
    \st_out[0]_INST_0_i_7 
       (.I0(\st_out[0]_INST_0_i_9_n_0 ),
        .I1(\st_out[0]_INST_0_i_10_n_0 ),
        .I2(\st_out[2]_INST_0_i_13_n_0 ),
        .I3(\st_out[2]_INST_0_i_11_n_0 ),
        .I4(\st_out[0]_INST_0_i_11_n_0 ),
        .I5(\st_out[2]_INST_0_i_12_n_0 ),
        .O(\st_out[0]_INST_0_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT4 #(
    .INIT(16'hDFFF)) 
    \st_out[0]_INST_0_i_8 
       (.I0(stage[1]),
        .I1(stage[2]),
        .I2(stage[0]),
        .I3(nb_grown[2]),
        .O(\st_out[0]_INST_0_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \st_out[0]_INST_0_i_9 
       (.I0(\st_out[2]_INST_0_i_6_n_0 ),
        .I1(\st_out[13]_INST_0_i_10_n_0 ),
        .I2(st_in[1]),
        .O(\st_out[0]_INST_0_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF200)) 
    \st_out[10]_INST_0 
       (.I0(\st_out[13]_INST_0_i_1_n_0 ),
        .I1(\st_out[10]_INST_0_i_1_n_0 ),
        .I2(\st_out[10]_INST_0_i_2_n_0 ),
        .I3(\st_out[15]_INST_0_i_2_n_0 ),
        .I4(\st_out[10]_INST_0_i_3_n_0 ),
        .O(st_out[10]));
  LUT6 #(
    .INIT(64'h000000FF1F1F00FF)) 
    \st_out[10]_INST_0_i_1 
       (.I0(st_in[10]),
        .I1(\st_out[13]_INST_0_i_5_n_0 ),
        .I2(\st_out[13]_INST_0_i_6_n_0 ),
        .I3(nb_cid[19]),
        .I4(\st_out[13]_INST_0_i_7_n_0 ),
        .I5(\st_out[10]_INST_0_i_4_n_0 ),
        .O(\st_out[10]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hEF202020)) 
    \st_out[10]_INST_0_i_2 
       (.I0(st_in[10]),
        .I1(m_pass[0]),
        .I2(m_pass[1]),
        .I3(\st_out[15]_INST_0_i_6_n_0 ),
        .I4(p_id[1]),
        .O(\st_out[10]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF333F3F3F2222222)) 
    \st_out[10]_INST_0_i_3 
       (.I0(\st_out[14]_INST_0_i_4_n_0 ),
        .I1(\st_out[14]_INST_0_i_3_n_0 ),
        .I2(\st_out[7]_INST_0_i_2_n_0 ),
        .I3(\st_out[10]_INST_0_i_5_n_0 ),
        .I4(p_has_above),
        .I5(st_in[10]),
        .O(\st_out[10]_INST_0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \st_out[10]_INST_0_i_4 
       (.I0(\st_out[10]_INST_0_i_6_n_0 ),
        .I1(\st_out[15]_INST_0_i_8_n_0 ),
        .I2(nb_cid[13]),
        .I3(\st_out[13]_INST_0_i_6_n_0 ),
        .O(\st_out[10]_INST_0_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'hCCCCCD99)) 
    \st_out[10]_INST_0_i_5 
       (.I0(ab_cid[4]),
        .I1(ab_cid[1]),
        .I2(ab_cid[2]),
        .I3(ab_cid[3]),
        .I4(ab_cid[5]),
        .O(\st_out[10]_INST_0_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \st_out[10]_INST_0_i_6 
       (.I0(nb_cid[7]),
        .I1(\st_out[15]_INST_0_i_9_n_0 ),
        .I2(st_in[10]),
        .I3(\st_out[4]_INST_0_i_3_n_0 ),
        .I4(nb_cid[1]),
        .O(\st_out[10]_INST_0_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF200)) 
    \st_out[11]_INST_0 
       (.I0(\st_out[13]_INST_0_i_1_n_0 ),
        .I1(\st_out[11]_INST_0_i_1_n_0 ),
        .I2(\st_out[11]_INST_0_i_2_n_0 ),
        .I3(\st_out[15]_INST_0_i_2_n_0 ),
        .I4(\st_out[11]_INST_0_i_3_n_0 ),
        .O(st_out[11]));
  LUT6 #(
    .INIT(64'h000000FF1F1F00FF)) 
    \st_out[11]_INST_0_i_1 
       (.I0(st_in[11]),
        .I1(\st_out[13]_INST_0_i_5_n_0 ),
        .I2(\st_out[13]_INST_0_i_6_n_0 ),
        .I3(nb_cid[20]),
        .I4(\st_out[13]_INST_0_i_7_n_0 ),
        .I5(\st_out[11]_INST_0_i_4_n_0 ),
        .O(\st_out[11]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'hEF202020)) 
    \st_out[11]_INST_0_i_2 
       (.I0(st_in[11]),
        .I1(m_pass[0]),
        .I2(m_pass[1]),
        .I3(\st_out[15]_INST_0_i_6_n_0 ),
        .I4(p_id[2]),
        .O(\st_out[11]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF3F2F32233223322)) 
    \st_out[11]_INST_0_i_3 
       (.I0(\st_out[14]_INST_0_i_4_n_0 ),
        .I1(\st_out[14]_INST_0_i_3_n_0 ),
        .I2(\st_out[7]_INST_0_i_2_n_0 ),
        .I3(st_in[11]),
        .I4(p_has_above),
        .I5(\st_out[11]_INST_0_i_5_n_0 ),
        .O(\st_out[11]_INST_0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \st_out[11]_INST_0_i_4 
       (.I0(\st_out[11]_INST_0_i_6_n_0 ),
        .I1(\st_out[15]_INST_0_i_8_n_0 ),
        .I2(nb_cid[14]),
        .I3(\st_out[13]_INST_0_i_6_n_0 ),
        .O(\st_out[11]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFAFAFAFAFAFAEBE)) 
    \st_out[11]_INST_0_i_5 
       (.I0(\st_out[14]_INST_0_i_6_n_0 ),
        .I1(ab_cid[4]),
        .I2(ab_cid[2]),
        .I3(ab_cid[3]),
        .I4(ab_cid[5]),
        .I5(ab_cid[1]),
        .O(\st_out[11]_INST_0_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \st_out[11]_INST_0_i_6 
       (.I0(nb_cid[8]),
        .I1(\st_out[15]_INST_0_i_9_n_0 ),
        .I2(st_in[11]),
        .I3(\st_out[4]_INST_0_i_3_n_0 ),
        .I4(nb_cid[2]),
        .O(\st_out[11]_INST_0_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF200)) 
    \st_out[12]_INST_0 
       (.I0(\st_out[13]_INST_0_i_1_n_0 ),
        .I1(\st_out[12]_INST_0_i_1_n_0 ),
        .I2(\st_out[12]_INST_0_i_2_n_0 ),
        .I3(\st_out[15]_INST_0_i_2_n_0 ),
        .I4(\st_out[12]_INST_0_i_3_n_0 ),
        .O(st_out[12]));
  LUT6 #(
    .INIT(64'h000000FF1F1F00FF)) 
    \st_out[12]_INST_0_i_1 
       (.I0(st_in[12]),
        .I1(\st_out[13]_INST_0_i_5_n_0 ),
        .I2(\st_out[13]_INST_0_i_6_n_0 ),
        .I3(nb_cid[21]),
        .I4(\st_out[13]_INST_0_i_7_n_0 ),
        .I5(\st_out[12]_INST_0_i_4_n_0 ),
        .O(\st_out[12]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'hEF202020)) 
    \st_out[12]_INST_0_i_2 
       (.I0(st_in[12]),
        .I1(m_pass[0]),
        .I2(m_pass[1]),
        .I3(\st_out[15]_INST_0_i_6_n_0 ),
        .I4(p_id[3]),
        .O(\st_out[12]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF3F2F32233223322)) 
    \st_out[12]_INST_0_i_3 
       (.I0(\st_out[14]_INST_0_i_4_n_0 ),
        .I1(\st_out[14]_INST_0_i_3_n_0 ),
        .I2(\st_out[7]_INST_0_i_2_n_0 ),
        .I3(st_in[12]),
        .I4(p_has_above),
        .I5(\st_out[12]_INST_0_i_5_n_0 ),
        .O(\st_out[12]_INST_0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h00D1)) 
    \st_out[12]_INST_0_i_4 
       (.I0(\st_out[12]_INST_0_i_6_n_0 ),
        .I1(\st_out[15]_INST_0_i_8_n_0 ),
        .I2(nb_cid[15]),
        .I3(\st_out[13]_INST_0_i_6_n_0 ),
        .O(\st_out[12]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAAFFFFAAAAFEFFAA)) 
    \st_out[12]_INST_0_i_5 
       (.I0(\st_out[14]_INST_0_i_6_n_0 ),
        .I1(ab_cid[1]),
        .I2(ab_cid[5]),
        .I3(ab_cid[3]),
        .I4(ab_cid[2]),
        .I5(ab_cid[4]),
        .O(\st_out[12]_INST_0_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'h47)) 
    \st_out[12]_INST_0_i_6 
       (.I0(nb_cid[9]),
        .I1(\st_out[15]_INST_0_i_9_n_0 ),
        .I2(\st_out[12]_INST_0_i_7_n_0 ),
        .O(\st_out[12]_INST_0_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \st_out[12]_INST_0_i_7 
       (.I0(st_in[12]),
        .I1(\st_out[4]_INST_0_i_3_n_0 ),
        .I2(nb_cid[3]),
        .O(\st_out[12]_INST_0_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF200)) 
    \st_out[13]_INST_0 
       (.I0(\st_out[13]_INST_0_i_1_n_0 ),
        .I1(\st_out[13]_INST_0_i_2_n_0 ),
        .I2(\st_out[13]_INST_0_i_3_n_0 ),
        .I3(\st_out[15]_INST_0_i_2_n_0 ),
        .I4(\st_out[13]_INST_0_i_4_n_0 ),
        .O(st_out[13]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h0B)) 
    \st_out[13]_INST_0_i_1 
       (.I0(m_pass[0]),
        .I1(m_pass[1]),
        .I2(\st_out[15]_INST_0_i_6_n_0 ),
        .O(\st_out[13]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \st_out[13]_INST_0_i_10 
       (.I0(nb_cid[23]),
        .I1(nb_cid[21]),
        .I2(nb_cid[18]),
        .I3(nb_cid[20]),
        .I4(nb_cid[19]),
        .I5(nb_cid[22]),
        .O(\st_out[13]_INST_0_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'h8AAA)) 
    \st_out[13]_INST_0_i_11 
       (.I0(\st_out[13]_INST_0_i_19_n_0 ),
        .I1(\st_out[2]_INST_0_i_9_n_0 ),
        .I2(e_grown[2]),
        .I3(nb_valid[2]),
        .O(\st_out[13]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h4F4444444F444F4F)) 
    \st_out[13]_INST_0_i_12 
       (.I0(nb_cid[22]),
        .I1(\st_out[13]_INST_0_i_20_n_0 ),
        .I2(nb_cid[21]),
        .I3(nb_cid[15]),
        .I4(\st_out[15]_INST_0_i_8_n_0 ),
        .I5(\st_out[12]_INST_0_i_6_n_0 ),
        .O(\st_out[13]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h10F110F1FFFF10F1)) 
    \st_out[13]_INST_0_i_13 
       (.I0(nb_cid[18]),
        .I1(\st_out[13]_INST_0_i_21_n_0 ),
        .I2(\st_out[13]_INST_0_i_22_n_0 ),
        .I3(nb_cid[19]),
        .I4(\st_out[13]_INST_0_i_23_n_0 ),
        .I5(nb_cid[20]),
        .O(\st_out[13]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h4F444FFF44444444)) 
    \st_out[13]_INST_0_i_14 
       (.I0(\st_out[13]_INST_0_i_24_n_0 ),
        .I1(nb_cid[21]),
        .I2(nb_cid[14]),
        .I3(\st_out[15]_INST_0_i_8_n_0 ),
        .I4(\st_out[11]_INST_0_i_6_n_0 ),
        .I5(nb_cid[20]),
        .O(\st_out[13]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h4F444FFF44444444)) 
    \st_out[13]_INST_0_i_15 
       (.I0(\st_out[14]_INST_0_i_10_n_0 ),
        .I1(nb_cid[23]),
        .I2(nb_cid[16]),
        .I3(\st_out[15]_INST_0_i_8_n_0 ),
        .I4(\st_out[13]_INST_0_i_18_n_0 ),
        .I5(nb_cid[22]),
        .O(\st_out[13]_INST_0_i_15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \st_out[13]_INST_0_i_16 
       (.I0(\st_out[14]_INST_0_i_10_n_0 ),
        .I1(nb_cid[23]),
        .O(\st_out[13]_INST_0_i_16_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \st_out[13]_INST_0_i_17 
       (.I0(\st_out[13]_INST_0_i_10_n_0 ),
        .I1(\st_out[2]_INST_0_i_6_n_0 ),
        .O(\st_out[13]_INST_0_i_17_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \st_out[13]_INST_0_i_18 
       (.I0(\st_out[13]_INST_0_i_25_n_0 ),
        .I1(nb_cid[10]),
        .I2(\st_out[15]_INST_0_i_9_n_0 ),
        .O(\st_out[13]_INST_0_i_18_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'hF0F7F7F7)) 
    \st_out[13]_INST_0_i_19 
       (.I0(\st_out[4]_INST_0_i_6_n_0 ),
        .I1(e_grown[0]),
        .I2(st_in[1]),
        .I3(\st_out[15]_INST_0_i_24_n_0 ),
        .I4(e_grown[1]),
        .O(\st_out[13]_INST_0_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h000000FF1F1F00FF)) 
    \st_out[13]_INST_0_i_2 
       (.I0(st_in[13]),
        .I1(\st_out[13]_INST_0_i_5_n_0 ),
        .I2(\st_out[13]_INST_0_i_6_n_0 ),
        .I3(nb_cid[22]),
        .I4(\st_out[13]_INST_0_i_7_n_0 ),
        .I5(\st_out[13]_INST_0_i_8_n_0 ),
        .O(\st_out[13]_INST_0_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hCCA8)) 
    \st_out[13]_INST_0_i_20 
       (.I0(nb_cid[16]),
        .I1(\st_out[13]_INST_0_i_18_n_0 ),
        .I2(\st_out[13]_INST_0_i_26_n_0 ),
        .I3(\st_out[15]_INST_0_i_14_n_0 ),
        .O(\st_out[13]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF55DF00005510)) 
    \st_out[13]_INST_0_i_21 
       (.I0(nb_cid[12]),
        .I1(\st_out[15]_INST_0_i_10_n_0 ),
        .I2(\st_out[13]_INST_0_i_27_n_0 ),
        .I3(\st_out[15]_INST_0_i_13_n_0 ),
        .I4(\st_out[15]_INST_0_i_14_n_0 ),
        .I5(\st_out[9]_INST_0_i_7_n_0 ),
        .O(\st_out[13]_INST_0_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFAAEF0000AA20)) 
    \st_out[13]_INST_0_i_22 
       (.I0(nb_cid[13]),
        .I1(\st_out[15]_INST_0_i_10_n_0 ),
        .I2(\st_out[13]_INST_0_i_27_n_0 ),
        .I3(\st_out[15]_INST_0_i_13_n_0 ),
        .I4(\st_out[15]_INST_0_i_14_n_0 ),
        .I5(\st_out[10]_INST_0_i_6_n_0 ),
        .O(\st_out[13]_INST_0_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFAAEF0000AA20)) 
    \st_out[13]_INST_0_i_23 
       (.I0(nb_cid[14]),
        .I1(\st_out[15]_INST_0_i_10_n_0 ),
        .I2(\st_out[13]_INST_0_i_27_n_0 ),
        .I3(\st_out[15]_INST_0_i_13_n_0 ),
        .I4(\st_out[15]_INST_0_i_14_n_0 ),
        .I5(\st_out[11]_INST_0_i_6_n_0 ),
        .O(\st_out[13]_INST_0_i_23_n_0 ));
  LUT6 #(
    .INIT(64'h33333333AAAA3233)) 
    \st_out[13]_INST_0_i_24 
       (.I0(nb_cid[15]),
        .I1(\st_out[12]_INST_0_i_6_n_0 ),
        .I2(\st_out[13]_INST_0_i_28_n_0 ),
        .I3(\st_out[13]_INST_0_i_27_n_0 ),
        .I4(\st_out[15]_INST_0_i_13_n_0 ),
        .I5(\st_out[15]_INST_0_i_14_n_0 ),
        .O(\st_out[13]_INST_0_i_24_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \st_out[13]_INST_0_i_25 
       (.I0(st_in[13]),
        .I1(\st_out[4]_INST_0_i_3_n_0 ),
        .I2(nb_cid[4]),
        .O(\st_out[13]_INST_0_i_25_n_0 ));
  LUT6 #(
    .INIT(64'h5100515100000000)) 
    \st_out[13]_INST_0_i_26 
       (.I0(nb_cid[17]),
        .I1(\st_out[2]_INST_0_i_13_n_0 ),
        .I2(nb_cid[11]),
        .I3(nb_cid[5]),
        .I4(e_grown[0]),
        .I5(st_in[14]),
        .O(\st_out[13]_INST_0_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hEAFEAAAAFFFFEAFE)) 
    \st_out[13]_INST_0_i_27 
       (.I0(\st_out[13]_INST_0_i_29_n_0 ),
        .I1(\st_out[13]_INST_0_i_30_n_0 ),
        .I2(\st_out[10]_INST_0_i_6_n_0 ),
        .I3(nb_cid[13]),
        .I4(\st_out[11]_INST_0_i_6_n_0 ),
        .I5(nb_cid[14]),
        .O(\st_out[13]_INST_0_i_27_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \st_out[13]_INST_0_i_28 
       (.I0(nb_cid[16]),
        .I1(\st_out[13]_INST_0_i_18_n_0 ),
        .O(\st_out[13]_INST_0_i_28_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'h5404)) 
    \st_out[13]_INST_0_i_29 
       (.I0(nb_cid[15]),
        .I1(\st_out[12]_INST_0_i_7_n_0 ),
        .I2(\st_out[15]_INST_0_i_9_n_0 ),
        .I3(nb_cid[9]),
        .O(\st_out[13]_INST_0_i_29_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'hEF202020)) 
    \st_out[13]_INST_0_i_3 
       (.I0(st_in[13]),
        .I1(m_pass[0]),
        .I2(m_pass[1]),
        .I3(\st_out[15]_INST_0_i_6_n_0 ),
        .I4(p_id[4]),
        .O(\st_out[13]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h5555540400005404)) 
    \st_out[13]_INST_0_i_30 
       (.I0(nb_cid[12]),
        .I1(nb_cid[0]),
        .I2(\st_out[4]_INST_0_i_3_n_0 ),
        .I3(st_in[9]),
        .I4(\st_out[15]_INST_0_i_9_n_0 ),
        .I5(nb_cid[6]),
        .O(\st_out[13]_INST_0_i_30_n_0 ));
  LUT6 #(
    .INIT(64'hF3F2F32233223322)) 
    \st_out[13]_INST_0_i_4 
       (.I0(\st_out[14]_INST_0_i_4_n_0 ),
        .I1(\st_out[14]_INST_0_i_3_n_0 ),
        .I2(\st_out[7]_INST_0_i_2_n_0 ),
        .I3(st_in[13]),
        .I4(p_has_above),
        .I5(\st_out[13]_INST_0_i_9_n_0 ),
        .O(\st_out[13]_INST_0_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'h4000FFFF)) 
    \st_out[13]_INST_0_i_5 
       (.I0(st_in[1]),
        .I1(\st_out[13]_INST_0_i_10_n_0 ),
        .I2(nb_valid[3]),
        .I3(e_grown[3]),
        .I4(\st_out[13]_INST_0_i_11_n_0 ),
        .O(\st_out[13]_INST_0_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \st_out[13]_INST_0_i_6 
       (.I0(\st_out[4]_INST_0_i_3_n_0 ),
        .I1(\st_out[4]_INST_0_i_4_n_0 ),
        .O(\st_out[13]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF0000FF51)) 
    \st_out[13]_INST_0_i_7 
       (.I0(\st_out[13]_INST_0_i_12_n_0 ),
        .I1(\st_out[13]_INST_0_i_13_n_0 ),
        .I2(\st_out[13]_INST_0_i_14_n_0 ),
        .I3(\st_out[13]_INST_0_i_15_n_0 ),
        .I4(\st_out[13]_INST_0_i_16_n_0 ),
        .I5(\st_out[13]_INST_0_i_17_n_0 ),
        .O(\st_out[13]_INST_0_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \st_out[13]_INST_0_i_8 
       (.I0(\st_out[13]_INST_0_i_18_n_0 ),
        .I1(\st_out[15]_INST_0_i_8_n_0 ),
        .I2(nb_cid[16]),
        .I3(\st_out[13]_INST_0_i_6_n_0 ),
        .O(\st_out[13]_INST_0_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hBFEA)) 
    \st_out[13]_INST_0_i_9 
       (.I0(\st_out[14]_INST_0_i_6_n_0 ),
        .I1(ab_cid[2]),
        .I2(ab_cid[3]),
        .I3(ab_cid[4]),
        .O(\st_out[13]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hF4FFF4FFF4FFF4F4)) 
    \st_out[14]_INST_0 
       (.I0(\st_out[14]_INST_0_i_1_n_0 ),
        .I1(\st_out[15]_INST_0_i_2_n_0 ),
        .I2(\st_out[14]_INST_0_i_2_n_0 ),
        .I3(\st_out[14]_INST_0_i_3_n_0 ),
        .I4(\st_out[14]_INST_0_i_4_n_0 ),
        .I5(st_in[14]),
        .O(st_out[14]));
  LUT6 #(
    .INIT(64'h2A2A002A2A2AAA2A)) 
    \st_out[14]_INST_0_i_1 
       (.I0(\st_out[14]_INST_0_i_5_n_0 ),
        .I1(p_id[5]),
        .I2(\st_out[15]_INST_0_i_6_n_0 ),
        .I3(m_pass[1]),
        .I4(m_pass[0]),
        .I5(st_in[14]),
        .O(\st_out[14]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'h45)) 
    \st_out[14]_INST_0_i_10 
       (.I0(\st_out[15]_INST_0_i_21_n_0 ),
        .I1(nb_cid[17]),
        .I2(\st_out[2]_INST_0_i_10_n_0 ),
        .O(\st_out[14]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hBEBEBE0000000000)) 
    \st_out[14]_INST_0_i_2 
       (.I0(\st_out[14]_INST_0_i_6_n_0 ),
        .I1(ab_cid[5]),
        .I2(\st_out[14]_INST_0_i_7_n_0 ),
        .I3(p_has_above),
        .I4(st_in[14]),
        .I5(\st_out[7]_INST_0_i_2_n_0 ),
        .O(\st_out[14]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \st_out[14]_INST_0_i_3 
       (.I0(stage[0]),
        .I1(stage[2]),
        .I2(stage[1]),
        .O(\st_out[14]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \st_out[14]_INST_0_i_4 
       (.I0(stage[0]),
        .I1(stage[2]),
        .I2(stage[1]),
        .I3(\st_out[14]_INST_0_i_8_n_0 ),
        .O(\st_out[14]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h3737777737F77777)) 
    \st_out[14]_INST_0_i_5 
       (.I0(\st_out[14]_INST_0_i_9_n_0 ),
        .I1(\st_out[13]_INST_0_i_1_n_0 ),
        .I2(\st_out[13]_INST_0_i_7_n_0 ),
        .I3(\st_out[13]_INST_0_i_5_n_0 ),
        .I4(\st_out[13]_INST_0_i_6_n_0 ),
        .I5(st_in[14]),
        .O(\st_out[14]_INST_0_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h8000FFFF)) 
    \st_out[14]_INST_0_i_6 
       (.I0(ab_cid[1]),
        .I1(ab_cid[0]),
        .I2(ab_cid[5]),
        .I3(\st_out[14]_INST_0_i_7_n_0 ),
        .I4(p_has_above),
        .O(\st_out[14]_INST_0_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \st_out[14]_INST_0_i_7 
       (.I0(ab_cid[4]),
        .I1(ab_cid[3]),
        .I2(ab_cid[2]),
        .O(\st_out[14]_INST_0_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h4000)) 
    \st_out[14]_INST_0_i_8 
       (.I0(st_in[5]),
        .I1(st_in[3]),
        .I2(p_is_bot),
        .I3(st_in[4]),
        .O(\st_out[14]_INST_0_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \st_out[14]_INST_0_i_9 
       (.I0(\st_out[14]_INST_0_i_10_n_0 ),
        .I1(nb_cid[23]),
        .I2(\st_out[2]_INST_0_i_6_n_0 ),
        .O(\st_out[14]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h8A8A8A8A8ABA8A8A)) 
    \st_out[15]_INST_0 
       (.I0(st_in[15]),
        .I1(\st_out[15]_INST_0_i_1_n_0 ),
        .I2(\st_out[15]_INST_0_i_2_n_0 ),
        .I3(p_is_bnd),
        .I4(st_in[6]),
        .I5(\st_out[15]_INST_0_i_3_n_0 ),
        .O(st_out[15]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \st_out[15]_INST_0_i_1 
       (.I0(m_pass[1]),
        .I1(m_pass[0]),
        .O(\st_out[15]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF444)) 
    \st_out[15]_INST_0_i_10 
       (.I0(\st_out[13]_INST_0_i_18_n_0 ),
        .I1(nb_cid[16]),
        .I2(\st_out[12]_INST_0_i_6_n_0 ),
        .I3(nb_cid[15]),
        .O(\st_out[15]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hF2FFF2FFF2FF22F2)) 
    \st_out[15]_INST_0_i_11 
       (.I0(nb_cid[14]),
        .I1(\st_out[11]_INST_0_i_6_n_0 ),
        .I2(nb_cid[13]),
        .I3(\st_out[10]_INST_0_i_6_n_0 ),
        .I4(nb_cid[12]),
        .I5(\st_out[9]_INST_0_i_7_n_0 ),
        .O(\st_out[15]_INST_0_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h1F11)) 
    \st_out[15]_INST_0_i_12 
       (.I0(\st_out[12]_INST_0_i_6_n_0 ),
        .I1(nb_cid[15]),
        .I2(nb_cid[14]),
        .I3(\st_out[11]_INST_0_i_6_n_0 ),
        .O(\st_out[15]_INST_0_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h1F11)) 
    \st_out[15]_INST_0_i_13 
       (.I0(\st_out[15]_INST_0_i_21_n_0 ),
        .I1(nb_cid[17]),
        .I2(nb_cid[16]),
        .I3(\st_out[13]_INST_0_i_18_n_0 ),
        .O(\st_out[15]_INST_0_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'hFF8F)) 
    \st_out[15]_INST_0_i_14 
       (.I0(nb_cid[17]),
        .I1(\st_out[15]_INST_0_i_21_n_0 ),
        .I2(\st_out[2]_INST_0_i_10_n_0 ),
        .I3(\st_out[2]_INST_0_i_14_n_0 ),
        .O(\st_out[15]_INST_0_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    \st_out[15]_INST_0_i_15 
       (.I0(nb_cid[10]),
        .I1(\st_out[13]_INST_0_i_25_n_0 ),
        .I2(nb_cid[9]),
        .I3(\st_out[12]_INST_0_i_7_n_0 ),
        .O(\st_out[15]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFBBB222B2)) 
    \st_out[15]_INST_0_i_16 
       (.I0(\st_out[15]_INST_0_i_22_n_0 ),
        .I1(nb_cid[7]),
        .I2(nb_cid[1]),
        .I3(\st_out[4]_INST_0_i_3_n_0 ),
        .I4(st_in[10]),
        .I5(\st_out[15]_INST_0_i_23_n_0 ),
        .O(\st_out[15]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h4F444FFF44444444)) 
    \st_out[15]_INST_0_i_17 
       (.I0(\st_out[12]_INST_0_i_7_n_0 ),
        .I1(nb_cid[9]),
        .I2(st_in[11]),
        .I3(\st_out[4]_INST_0_i_3_n_0 ),
        .I4(nb_cid[2]),
        .I5(nb_cid[8]),
        .O(\st_out[15]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h20AAFFFF20AA20AA)) 
    \st_out[15]_INST_0_i_18 
       (.I0(nb_cid[11]),
        .I1(nb_cid[5]),
        .I2(e_grown[0]),
        .I3(st_in[14]),
        .I4(\st_out[13]_INST_0_i_25_n_0 ),
        .I5(nb_cid[10]),
        .O(\st_out[15]_INST_0_i_18_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h4404)) 
    \st_out[15]_INST_0_i_19 
       (.I0(nb_cid[11]),
        .I1(st_in[14]),
        .I2(e_grown[0]),
        .I3(nb_cid[5]),
        .O(\st_out[15]_INST_0_i_19_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \st_out[15]_INST_0_i_2 
       (.I0(stage[0]),
        .I1(stage[2]),
        .I2(stage[1]),
        .O(\st_out[15]_INST_0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \st_out[15]_INST_0_i_20 
       (.I0(\st_out[15]_INST_0_i_24_n_0 ),
        .I1(\st_out[2]_INST_0_i_13_n_0 ),
        .O(\st_out[15]_INST_0_i_20_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'h5DFF5D5D)) 
    \st_out[15]_INST_0_i_21 
       (.I0(st_in[14]),
        .I1(e_grown[0]),
        .I2(nb_cid[5]),
        .I3(nb_cid[11]),
        .I4(\st_out[2]_INST_0_i_13_n_0 ),
        .O(\st_out[15]_INST_0_i_21_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h5404)) 
    \st_out[15]_INST_0_i_22 
       (.I0(nb_cid[6]),
        .I1(nb_cid[0]),
        .I2(\st_out[4]_INST_0_i_3_n_0 ),
        .I3(st_in[9]),
        .O(\st_out[15]_INST_0_i_22_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h5404)) 
    \st_out[15]_INST_0_i_23 
       (.I0(nb_cid[8]),
        .I1(nb_cid[2]),
        .I2(\st_out[4]_INST_0_i_3_n_0 ),
        .I3(st_in[11]),
        .O(\st_out[15]_INST_0_i_23_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \st_out[15]_INST_0_i_24 
       (.I0(nb_cid[7]),
        .I1(nb_cid[9]),
        .I2(nb_cid[8]),
        .I3(nb_cid[10]),
        .I4(nb_cid[11]),
        .I5(nb_cid[6]),
        .O(\st_out[15]_INST_0_i_24_n_0 ));
  LUT6 #(
    .INIT(64'h0003000000030A0A)) 
    \st_out[15]_INST_0_i_3 
       (.I0(\st_out[15]_INST_0_i_4_n_0 ),
        .I1(st_in[3]),
        .I2(\st_out[15]_INST_0_i_5_n_0 ),
        .I3(st_in[4]),
        .I4(\st_out[15]_INST_0_i_6_n_0 ),
        .I5(\st_out[15]_INST_0_i_7_n_0 ),
        .O(\st_out[15]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h54445454FFFFFFFF)) 
    \st_out[15]_INST_0_i_4 
       (.I0(\st_out[15]_INST_0_i_8_n_0 ),
        .I1(\st_out[15]_INST_0_i_9_n_0 ),
        .I2(\st_out[4]_INST_0_i_3_n_0 ),
        .I3(\st_out[13]_INST_0_i_5_n_0 ),
        .I4(st_in[3]),
        .I5(\st_out[13]_INST_0_i_7_n_0 ),
        .O(\st_out[15]_INST_0_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'hFF007555)) 
    \st_out[15]_INST_0_i_5 
       (.I0(\st_out[13]_INST_0_i_7_n_0 ),
        .I1(\st_out[13]_INST_0_i_5_n_0 ),
        .I2(\st_out[13]_INST_0_i_6_n_0 ),
        .I3(st_in[5]),
        .I4(\st_out[15]_INST_0_i_6_n_0 ),
        .O(\st_out[15]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \st_out[15]_INST_0_i_6 
       (.I0(st_in[14]),
        .I1(st_in[12]),
        .I2(st_in[9]),
        .I3(st_in[11]),
        .I4(st_in[10]),
        .I5(st_in[13]),
        .O(\st_out[15]_INST_0_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'hAAAA2000)) 
    \st_out[15]_INST_0_i_7 
       (.I0(\st_out[13]_INST_0_i_7_n_0 ),
        .I1(\st_out[13]_INST_0_i_5_n_0 ),
        .I2(\st_out[4]_INST_0_i_3_n_0 ),
        .I3(st_in[4]),
        .I4(\st_out[4]_INST_0_i_4_n_0 ),
        .O(\st_out[15]_INST_0_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h0000FF51)) 
    \st_out[15]_INST_0_i_8 
       (.I0(\st_out[15]_INST_0_i_10_n_0 ),
        .I1(\st_out[15]_INST_0_i_11_n_0 ),
        .I2(\st_out[15]_INST_0_i_12_n_0 ),
        .I3(\st_out[15]_INST_0_i_13_n_0 ),
        .I4(\st_out[15]_INST_0_i_14_n_0 ),
        .O(\st_out[15]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFF00AE)) 
    \st_out[15]_INST_0_i_9 
       (.I0(\st_out[15]_INST_0_i_15_n_0 ),
        .I1(\st_out[15]_INST_0_i_16_n_0 ),
        .I2(\st_out[15]_INST_0_i_17_n_0 ),
        .I3(\st_out[15]_INST_0_i_18_n_0 ),
        .I4(\st_out[15]_INST_0_i_19_n_0 ),
        .I5(\st_out[15]_INST_0_i_20_n_0 ),
        .O(\st_out[15]_INST_0_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'hFCCF1400)) 
    \st_out[1]_INST_0 
       (.I0(\st_out[9]_INST_0_i_3_n_0 ),
        .I1(stage[1]),
        .I2(stage[2]),
        .I3(stage[0]),
        .I4(st_in[1]),
        .O(st_out[1]));
  LUT6 #(
    .INIT(64'hFFFFFFFF0000EAAA)) 
    \st_out[2]_INST_0 
       (.I0(st_in[2]),
        .I1(st_in[7]),
        .I2(st_in[8]),
        .I3(\st_out[2]_INST_0_i_1_n_0 ),
        .I4(\st_out[14]_INST_0_i_3_n_0 ),
        .I5(\st_out[2]_INST_0_i_2_n_0 ),
        .O(st_out[2]));
  LUT2 #(
    .INIT(4'h2)) 
    \st_out[2]_INST_0_i_1 
       (.I0(stage[1]),
        .I1(stage[2]),
        .O(\st_out[2]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \st_out[2]_INST_0_i_10 
       (.I0(\st_out[13]_INST_0_i_19_n_0 ),
        .I1(nb_valid[2]),
        .I2(e_grown[2]),
        .O(\st_out[2]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h5155555551555155)) 
    \st_out[2]_INST_0_i_11 
       (.I0(st_in[2]),
        .I1(nb_grown[0]),
        .I2(\st_out[2]_INST_0_i_8_n_0 ),
        .I3(e_grown[0]),
        .I4(st_in[1]),
        .I5(\st_out[4]_INST_0_i_6_n_0 ),
        .O(\st_out[2]_INST_0_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \st_out[2]_INST_0_i_12 
       (.I0(st_in[1]),
        .I1(\st_out[15]_INST_0_i_24_n_0 ),
        .O(\st_out[2]_INST_0_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h8AAA)) 
    \st_out[2]_INST_0_i_13 
       (.I0(e_grown[1]),
        .I1(st_in[1]),
        .I2(\st_out[4]_INST_0_i_6_n_0 ),
        .I3(e_grown[0]),
        .O(\st_out[2]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \st_out[2]_INST_0_i_14 
       (.I0(nb_cid[13]),
        .I1(nb_cid[15]),
        .I2(nb_cid[14]),
        .I3(nb_cid[16]),
        .I4(nb_cid[17]),
        .I5(nb_cid[12]),
        .O(\st_out[2]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h2F002F00FF000000)) 
    \st_out[2]_INST_0_i_2 
       (.I0(\st_out[2]_INST_0_i_3_n_0 ),
        .I1(\st_out[2]_INST_0_i_4_n_0 ),
        .I2(\st_out[2]_INST_0_i_5_n_0 ),
        .I3(\st_out[15]_INST_0_i_2_n_0 ),
        .I4(st_in[2]),
        .I5(\st_out[13]_INST_0_i_1_n_0 ),
        .O(\st_out[2]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \st_out[2]_INST_0_i_3 
       (.I0(st_in[1]),
        .I1(\st_out[13]_INST_0_i_10_n_0 ),
        .O(\st_out[2]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'hF7FFFFFF)) 
    \st_out[2]_INST_0_i_4 
       (.I0(\st_out[2]_INST_0_i_6_n_0 ),
        .I1(stage[0]),
        .I2(stage[2]),
        .I3(stage[1]),
        .I4(nb_grown[3]),
        .O(\st_out[2]_INST_0_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hA2AAAAAA)) 
    \st_out[2]_INST_0_i_5 
       (.I0(\st_out[2]_INST_0_i_7_n_0 ),
        .I1(nb_grown[2]),
        .I2(\st_out[2]_INST_0_i_8_n_0 ),
        .I3(\st_out[2]_INST_0_i_9_n_0 ),
        .I4(\st_out[2]_INST_0_i_10_n_0 ),
        .O(\st_out[2]_INST_0_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \st_out[2]_INST_0_i_6 
       (.I0(\st_out[13]_INST_0_i_11_n_0 ),
        .I1(nb_valid[3]),
        .I2(e_grown[3]),
        .O(\st_out[2]_INST_0_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hA2AAAAAA)) 
    \st_out[2]_INST_0_i_7 
       (.I0(\st_out[2]_INST_0_i_11_n_0 ),
        .I1(nb_grown[1]),
        .I2(\st_out[2]_INST_0_i_8_n_0 ),
        .I3(\st_out[2]_INST_0_i_12_n_0 ),
        .I4(\st_out[2]_INST_0_i_13_n_0 ),
        .O(\st_out[2]_INST_0_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    \st_out[2]_INST_0_i_8 
       (.I0(stage[0]),
        .I1(stage[2]),
        .I2(stage[1]),
        .O(\st_out[2]_INST_0_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \st_out[2]_INST_0_i_9 
       (.I0(st_in[1]),
        .I1(\st_out[2]_INST_0_i_14_n_0 ),
        .O(\st_out[2]_INST_0_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hF4F4FFF4)) 
    \st_out[3]_INST_0 
       (.I0(\st_out[3]_INST_0_i_1_n_0 ),
        .I1(\st_out[15]_INST_0_i_2_n_0 ),
        .I2(\st_out[3]_INST_0_i_2_n_0 ),
        .I3(st_in[3]),
        .I4(\st_out[3]_INST_0_i_3_n_0 ),
        .O(st_out[3]));
  LUT4 #(
    .INIT(16'hB0BF)) 
    \st_out[3]_INST_0_i_1 
       (.I0(\st_out[3]_INST_0_i_4_n_0 ),
        .I1(\st_out[13]_INST_0_i_7_n_0 ),
        .I2(\st_out[13]_INST_0_i_1_n_0 ),
        .I3(st_in[3]),
        .O(\st_out[3]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0202020000000200)) 
    \st_out[3]_INST_0_i_2 
       (.I0(stage[0]),
        .I1(stage[1]),
        .I2(stage[2]),
        .I3(st_in[3]),
        .I4(p_has_above),
        .I5(ab_ptr[0]),
        .O(\st_out[3]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'h7720)) 
    \st_out[3]_INST_0_i_3 
       (.I0(stage[1]),
        .I1(stage[2]),
        .I2(\st_out[14]_INST_0_i_8_n_0 ),
        .I3(stage[0]),
        .O(\st_out[3]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'h0000FFD0)) 
    \st_out[3]_INST_0_i_4 
       (.I0(st_in[3]),
        .I1(\st_out[13]_INST_0_i_5_n_0 ),
        .I2(\st_out[4]_INST_0_i_3_n_0 ),
        .I3(\st_out[15]_INST_0_i_9_n_0 ),
        .I4(\st_out[15]_INST_0_i_8_n_0 ),
        .O(\st_out[3]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFF8F8F8F8F8F8F8)) 
    \st_out[4]_INST_0 
       (.I0(\st_out[15]_INST_0_i_2_n_0 ),
        .I1(\st_out[4]_INST_0_i_1_n_0 ),
        .I2(\st_out[4]_INST_0_i_2_n_0 ),
        .I3(\st_out[7]_INST_0_i_2_n_0 ),
        .I4(ab_ptr[1]),
        .I5(p_has_above),
        .O(st_out[4]));
  LUT6 #(
    .INIT(64'hAA20FFFFAA000000)) 
    \st_out[4]_INST_0_i_1 
       (.I0(\st_out[13]_INST_0_i_7_n_0 ),
        .I1(\st_out[13]_INST_0_i_5_n_0 ),
        .I2(\st_out[4]_INST_0_i_3_n_0 ),
        .I3(\st_out[4]_INST_0_i_4_n_0 ),
        .I4(\st_out[13]_INST_0_i_1_n_0 ),
        .I5(st_in[4]),
        .O(\st_out[4]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    \st_out[4]_INST_0_i_10 
       (.I0(nb_cid[5]),
        .I1(st_in[14]),
        .I2(nb_cid[4]),
        .I3(st_in[13]),
        .O(\st_out[4]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hA202A20AA222A22A)) 
    \st_out[4]_INST_0_i_2 
       (.I0(st_in[4]),
        .I1(stage[0]),
        .I2(stage[1]),
        .I3(stage[2]),
        .I4(p_has_above),
        .I5(\st_out[14]_INST_0_i_8_n_0 ),
        .O(\st_out[4]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEEEEEFEFEFFFE)) 
    \st_out[4]_INST_0_i_3 
       (.I0(\st_out[4]_INST_0_i_5_n_0 ),
        .I1(\st_out[4]_INST_0_i_6_n_0 ),
        .I2(\st_out[4]_INST_0_i_7_n_0 ),
        .I3(\st_out[4]_INST_0_i_8_n_0 ),
        .I4(\st_out[4]_INST_0_i_9_n_0 ),
        .I5(\st_out[4]_INST_0_i_10_n_0 ),
        .O(\st_out[4]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \st_out[4]_INST_0_i_4 
       (.I0(\st_out[15]_INST_0_i_9_n_0 ),
        .I1(\st_out[15]_INST_0_i_8_n_0 ),
        .O(\st_out[4]_INST_0_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'h4F)) 
    \st_out[4]_INST_0_i_5 
       (.I0(st_in[14]),
        .I1(nb_cid[5]),
        .I2(e_grown[0]),
        .O(\st_out[4]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \st_out[4]_INST_0_i_6 
       (.I0(nb_cid[1]),
        .I1(nb_cid[3]),
        .I2(nb_cid[2]),
        .I3(nb_cid[4]),
        .I4(nb_cid[5]),
        .I5(nb_cid[0]),
        .O(\st_out[4]_INST_0_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    \st_out[4]_INST_0_i_7 
       (.I0(st_in[12]),
        .I1(nb_cid[3]),
        .I2(st_in[13]),
        .I3(nb_cid[4]),
        .O(\st_out[4]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hF2FFF2FF22F2F2FF)) 
    \st_out[4]_INST_0_i_8 
       (.I0(nb_cid[2]),
        .I1(st_in[11]),
        .I2(nb_cid[1]),
        .I3(st_in[10]),
        .I4(st_in[9]),
        .I5(nb_cid[0]),
        .O(\st_out[4]_INST_0_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    \st_out[4]_INST_0_i_9 
       (.I0(nb_cid[3]),
        .I1(st_in[12]),
        .I2(nb_cid[2]),
        .I3(st_in[11]),
        .O(\st_out[4]_INST_0_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'hFFFF0880)) 
    \st_out[5]_INST_0 
       (.I0(\st_out[5]_INST_0_i_1_n_0 ),
        .I1(stage[0]),
        .I2(stage[2]),
        .I3(stage[1]),
        .I4(\st_out[5]_INST_0_i_2_n_0 ),
        .O(st_out[5]));
  LUT6 #(
    .INIT(64'hFFFF0000BFBB1111)) 
    \st_out[5]_INST_0_i_1 
       (.I0(\st_out[15]_INST_0_i_1_n_0 ),
        .I1(\st_out[13]_INST_0_i_7_n_0 ),
        .I2(\st_out[13]_INST_0_i_5_n_0 ),
        .I3(\st_out[13]_INST_0_i_6_n_0 ),
        .I4(st_in[5]),
        .I5(\st_out[15]_INST_0_i_6_n_0 ),
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
    .INIT(64'hFFFFFFFFA6550000)) 
    \st_out[6]_INST_0 
       (.I0(\st_out[6]_INST_0_i_1_n_0 ),
        .I1(\st_out[6]_INST_0_i_2_n_0 ),
        .I2(\st_out[6]_INST_0_i_3_n_0 ),
        .I3(st_in[6]),
        .I4(\st_out[15]_INST_0_i_2_n_0 ),
        .I5(\st_out[6]_INST_0_i_4_n_0 ),
        .O(st_out[6]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hF4)) 
    \st_out[6]_INST_0_i_1 
       (.I0(m_pass[1]),
        .I1(m_pass[0]),
        .I2(\st_out[6]_INST_0_i_5_n_0 ),
        .O(\st_out[6]_INST_0_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h45)) 
    \st_out[6]_INST_0_i_2 
       (.I0(p_is_bnd),
        .I1(m_pass[1]),
        .I2(m_pass[0]),
        .O(\st_out[6]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000000020AA2A)) 
    \st_out[6]_INST_0_i_3 
       (.I0(\st_out[3]_INST_0_i_1_n_0 ),
        .I1(st_in[5]),
        .I2(m_pass[1]),
        .I3(m_pass[0]),
        .I4(\st_out[15]_INST_0_i_5_n_0 ),
        .I5(\st_out[4]_INST_0_i_1_n_0 ),
        .O(\st_out[6]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h2A80FFFF2A802A80)) 
    \st_out[6]_INST_0_i_4 
       (.I0(\st_out[7]_INST_0_i_2_n_0 ),
        .I1(syn_bit),
        .I2(p_is_syn),
        .I3(\st_out[6]_INST_0_i_6_n_0 ),
        .I4(\st_out[14]_INST_0_i_3_n_0 ),
        .I5(st_in[6]),
        .O(\st_out[6]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h9666699969996999)) 
    \st_out[6]_INST_0_i_5 
       (.I0(nb_push[1]),
        .I1(nb_push[0]),
        .I2(nb_valid[2]),
        .I3(nb_push[2]),
        .I4(nb_valid[3]),
        .I5(nb_push[3]),
        .O(\st_out[6]_INST_0_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \st_out[6]_INST_0_i_6 
       (.I0(st_in[6]),
        .I1(p_has_above),
        .I2(ab_defect),
        .I3(p_is_top),
        .O(\st_out[6]_INST_0_i_6_n_0 ));
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
    .INIT(64'hAAA2A0AAAAA2AAAA)) 
    \st_out[7]_INST_0_i_1 
       (.I0(st_in[7]),
        .I1(p_has_above),
        .I2(stage[2]),
        .I3(stage[1]),
        .I4(stage[0]),
        .I5(st_in[8]),
        .O(\st_out[7]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \st_out[7]_INST_0_i_2 
       (.I0(stage[2]),
        .I1(stage[1]),
        .I2(stage[0]),
        .O(\st_out[7]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
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
    .INIT(64'hFFFFFFFFAA8A0080)) 
    \st_out[8]_INST_0 
       (.I0(\st_out[15]_INST_0_i_2_n_0 ),
        .I1(st_in[8]),
        .I2(m_pass[0]),
        .I3(m_pass[1]),
        .I4(\st_out[8]_INST_0_i_1_n_0 ),
        .I5(\st_out[8]_INST_0_i_2_n_0 ),
        .O(st_out[8]));
  LUT6 #(
    .INIT(64'hFFFB00FBFF080008)) 
    \st_out[8]_INST_0_i_1 
       (.I0(\st_out[0]_INST_0_i_3_n_0 ),
        .I1(\st_out[3]_INST_0_i_1_n_0 ),
        .I2(\st_out[5]_INST_0_i_1_n_0 ),
        .I3(\st_out[4]_INST_0_i_1_n_0 ),
        .I4(\st_out[8]_INST_0_i_3_n_0 ),
        .I5(\st_out[8]_INST_0_i_4_n_0 ),
        .O(\st_out[8]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7370507050505050)) 
    \st_out[8]_INST_0_i_2 
       (.I0(\st_out[14]_INST_0_i_3_n_0 ),
        .I1(p_is_top),
        .I2(st_in[8]),
        .I3(p_has_above),
        .I4(ab_active),
        .I5(\st_out[7]_INST_0_i_2_n_0 ),
        .O(\st_out[8]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBAFFBAAA8A008AAA)) 
    \st_out[8]_INST_0_i_3 
       (.I0(nb_active[1]),
        .I1(\st_out[3]_INST_0_i_4_n_0 ),
        .I2(\st_out[13]_INST_0_i_7_n_0 ),
        .I3(\st_out[13]_INST_0_i_1_n_0 ),
        .I4(st_in[3]),
        .I5(nb_active[2]),
        .O(\st_out[8]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hBAFFBAAA8A008AAA)) 
    \st_out[8]_INST_0_i_4 
       (.I0(nb_active[3]),
        .I1(\st_out[3]_INST_0_i_4_n_0 ),
        .I2(\st_out[13]_INST_0_i_7_n_0 ),
        .I3(\st_out[13]_INST_0_i_1_n_0 ),
        .I4(st_in[3]),
        .I5(nb_active[0]),
        .O(\st_out[8]_INST_0_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hDDFDCCCC)) 
    \st_out[9]_INST_0 
       (.I0(\st_out[9]_INST_0_i_1_n_0 ),
        .I1(\st_out[9]_INST_0_i_2_n_0 ),
        .I2(p_id[0]),
        .I3(\st_out[9]_INST_0_i_3_n_0 ),
        .I4(\st_out[15]_INST_0_i_2_n_0 ),
        .O(st_out[9]));
  LUT6 #(
    .INIT(64'h0000770377777777)) 
    \st_out[9]_INST_0_i_1 
       (.I0(\st_out[15]_INST_0_i_1_n_0 ),
        .I1(st_in[9]),
        .I2(\st_out[13]_INST_0_i_5_n_0 ),
        .I3(\st_out[9]_INST_0_i_4_n_0 ),
        .I4(\st_out[9]_INST_0_i_5_n_0 ),
        .I5(\st_out[13]_INST_0_i_1_n_0 ),
        .O(\st_out[9]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFC1CF0000)) 
    \st_out[9]_INST_0_i_2 
       (.I0(p_has_above),
        .I1(stage[2]),
        .I2(stage[1]),
        .I3(stage[0]),
        .I4(st_in[9]),
        .I5(\st_out[9]_INST_0_i_6_n_0 ),
        .O(\st_out[9]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h4F)) 
    \st_out[9]_INST_0_i_3 
       (.I0(m_pass[0]),
        .I1(m_pass[1]),
        .I2(\st_out[15]_INST_0_i_6_n_0 ),
        .O(\st_out[9]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \st_out[9]_INST_0_i_4 
       (.I0(\st_out[13]_INST_0_i_7_n_0 ),
        .I1(\st_out[13]_INST_0_i_6_n_0 ),
        .O(\st_out[9]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00D1FFFF00D10000)) 
    \st_out[9]_INST_0_i_5 
       (.I0(\st_out[9]_INST_0_i_7_n_0 ),
        .I1(\st_out[15]_INST_0_i_8_n_0 ),
        .I2(nb_cid[12]),
        .I3(\st_out[13]_INST_0_i_6_n_0 ),
        .I4(\st_out[13]_INST_0_i_7_n_0 ),
        .I5(nb_cid[18]),
        .O(\st_out[9]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFE0E0E0E0E0E0E0)) 
    \st_out[9]_INST_0_i_6 
       (.I0(st_in[9]),
        .I1(\st_out[14]_INST_0_i_8_n_0 ),
        .I2(\st_out[9]_INST_0_i_8_n_0 ),
        .I3(p_has_above),
        .I4(ab_cid[0]),
        .I5(\st_out[7]_INST_0_i_2_n_0 ),
        .O(\st_out[9]_INST_0_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'h47444777)) 
    \st_out[9]_INST_0_i_7 
       (.I0(nb_cid[6]),
        .I1(\st_out[15]_INST_0_i_9_n_0 ),
        .I2(st_in[9]),
        .I3(\st_out[4]_INST_0_i_3_n_0 ),
        .I4(nb_cid[0]),
        .O(\st_out[9]_INST_0_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \st_out[9]_INST_0_i_8 
       (.I0(stage[1]),
        .I1(stage[2]),
        .I2(stage[0]),
        .O(\st_out[9]_INST_0_i_8_n_0 ));
endmodule

(* HAS_ABOVE = "0" *) (* ID = "0" *) (* IS_BND = "0" *) 
(* IS_BOT = "0" *) (* IS_TOP = "0" *) (* OFF_ACT = "8" *) 
(* OFF_BUSY = "0" *) (* OFF_CID = "9" *) (* OFF_DEF = "6" *) 
(* OFF_GRW = "2" *) (* OFF_PB = "15" *) (* OFF_PTR = "3" *) 
(* OFF_UNR = "1" *) (* OFF_WHL = "7" *) (* ONE_ONE = "0" *) 
(* ORIG_REF_NAME = "snowflake_pe" *) (* STW = "16" *) (* ST_DROP = "3'b001" *) 
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
  input [5:0]ab_cid;
  input ab_active;
  input ab_whole;
  input ab_defect;
  input [2:0]ab_ptr;
  input [3:0]e_grown;
  input [3:0]nb_valid;
  input [23:0]nb_cid;
  input [3:0]nb_active;
  input [3:0]nb_grown;
  input [3:0]nb_push;
  input [1:0]m_pass;
  input [15:0]st_in;
  output [15:0]st_out;
  output o_busy_c;
  output o_pulse;
  output [3:0]o_push;
  input [5:0]p_id;
  input p_has_above;
  input p_is_bnd;
  input p_is_top;
  input p_is_bot;
  input p_is_syn;
  input zzz_never_used;

  wire \<const0> ;
  wire ab_active;
  wire [5:0]ab_cid;
  wire ab_defect;
  wire [2:0]ab_ptr;
  wire ab_whole;
  wire [3:0]e_grown;
  wire [1:0]m_pass;
  wire [3:0]nb_active;
  wire [23:0]nb_cid;
  wire [3:0]nb_grown;
  wire [3:0]nb_push;
  wire [3:0]nb_valid;
  wire p_has_above;
  wire [5:0]p_id;
  wire p_is_bnd;
  wire p_is_bot;
  wire p_is_syn;
  wire p_is_top;
  wire [15:0]st_in;
  wire [15:0]st_out;
  wire \st_out[0]_INST_0_i_10_n_0 ;
  wire \st_out[0]_INST_0_i_11_n_0 ;
  wire \st_out[0]_INST_0_i_12_n_0 ;
  wire \st_out[0]_INST_0_i_13_n_0 ;
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
  wire \st_out[12]_INST_0_i_6_n_0 ;
  wire \st_out[12]_INST_0_i_7_n_0 ;
  wire \st_out[13]_INST_0_i_10_n_0 ;
  wire \st_out[13]_INST_0_i_11_n_0 ;
  wire \st_out[13]_INST_0_i_12_n_0 ;
  wire \st_out[13]_INST_0_i_13_n_0 ;
  wire \st_out[13]_INST_0_i_14_n_0 ;
  wire \st_out[13]_INST_0_i_15_n_0 ;
  wire \st_out[13]_INST_0_i_16_n_0 ;
  wire \st_out[13]_INST_0_i_17_n_0 ;
  wire \st_out[13]_INST_0_i_18_n_0 ;
  wire \st_out[13]_INST_0_i_19_n_0 ;
  wire \st_out[13]_INST_0_i_1_n_0 ;
  wire \st_out[13]_INST_0_i_20_n_0 ;
  wire \st_out[13]_INST_0_i_21_n_0 ;
  wire \st_out[13]_INST_0_i_22_n_0 ;
  wire \st_out[13]_INST_0_i_23_n_0 ;
  wire \st_out[13]_INST_0_i_24_n_0 ;
  wire \st_out[13]_INST_0_i_25_n_0 ;
  wire \st_out[13]_INST_0_i_26_n_0 ;
  wire \st_out[13]_INST_0_i_27_n_0 ;
  wire \st_out[13]_INST_0_i_28_n_0 ;
  wire \st_out[13]_INST_0_i_29_n_0 ;
  wire \st_out[13]_INST_0_i_2_n_0 ;
  wire \st_out[13]_INST_0_i_30_n_0 ;
  wire \st_out[13]_INST_0_i_3_n_0 ;
  wire \st_out[13]_INST_0_i_4_n_0 ;
  wire \st_out[13]_INST_0_i_5_n_0 ;
  wire \st_out[13]_INST_0_i_6_n_0 ;
  wire \st_out[13]_INST_0_i_7_n_0 ;
  wire \st_out[13]_INST_0_i_8_n_0 ;
  wire \st_out[13]_INST_0_i_9_n_0 ;
  wire \st_out[14]_INST_0_i_10_n_0 ;
  wire \st_out[14]_INST_0_i_1_n_0 ;
  wire \st_out[14]_INST_0_i_2_n_0 ;
  wire \st_out[14]_INST_0_i_3_n_0 ;
  wire \st_out[14]_INST_0_i_4_n_0 ;
  wire \st_out[14]_INST_0_i_5_n_0 ;
  wire \st_out[14]_INST_0_i_6_n_0 ;
  wire \st_out[14]_INST_0_i_7_n_0 ;
  wire \st_out[14]_INST_0_i_8_n_0 ;
  wire \st_out[14]_INST_0_i_9_n_0 ;
  wire \st_out[15]_INST_0_i_10_n_0 ;
  wire \st_out[15]_INST_0_i_11_n_0 ;
  wire \st_out[15]_INST_0_i_12_n_0 ;
  wire \st_out[15]_INST_0_i_13_n_0 ;
  wire \st_out[15]_INST_0_i_14_n_0 ;
  wire \st_out[15]_INST_0_i_15_n_0 ;
  wire \st_out[15]_INST_0_i_16_n_0 ;
  wire \st_out[15]_INST_0_i_17_n_0 ;
  wire \st_out[15]_INST_0_i_18_n_0 ;
  wire \st_out[15]_INST_0_i_19_n_0 ;
  wire \st_out[15]_INST_0_i_1_n_0 ;
  wire \st_out[15]_INST_0_i_20_n_0 ;
  wire \st_out[15]_INST_0_i_21_n_0 ;
  wire \st_out[15]_INST_0_i_22_n_0 ;
  wire \st_out[15]_INST_0_i_23_n_0 ;
  wire \st_out[15]_INST_0_i_24_n_0 ;
  wire \st_out[15]_INST_0_i_2_n_0 ;
  wire \st_out[15]_INST_0_i_3_n_0 ;
  wire \st_out[15]_INST_0_i_4_n_0 ;
  wire \st_out[15]_INST_0_i_5_n_0 ;
  wire \st_out[15]_INST_0_i_6_n_0 ;
  wire \st_out[15]_INST_0_i_7_n_0 ;
  wire \st_out[15]_INST_0_i_8_n_0 ;
  wire \st_out[15]_INST_0_i_9_n_0 ;
  wire \st_out[2]_INST_0_i_10_n_0 ;
  wire \st_out[2]_INST_0_i_11_n_0 ;
  wire \st_out[2]_INST_0_i_12_n_0 ;
  wire \st_out[2]_INST_0_i_13_n_0 ;
  wire \st_out[2]_INST_0_i_14_n_0 ;
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
  wire \st_out[4]_INST_0_i_10_n_0 ;
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
  wire \st_out[6]_INST_0_i_1_n_0 ;
  wire \st_out[6]_INST_0_i_2_n_0 ;
  wire \st_out[6]_INST_0_i_3_n_0 ;
  wire \st_out[6]_INST_0_i_4_n_0 ;
  wire \st_out[6]_INST_0_i_5_n_0 ;
  wire \st_out[6]_INST_0_i_6_n_0 ;
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
  wire \st_out[9]_INST_0_i_4_n_0 ;
  wire \st_out[9]_INST_0_i_5_n_0 ;
  wire \st_out[9]_INST_0_i_6_n_0 ;
  wire \st_out[9]_INST_0_i_7_n_0 ;
  wire \st_out[9]_INST_0_i_8_n_0 ;
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
    .INIT(64'h00000000F3FCFFF6)) 
    \st_out[0]_INST_0 
       (.I0(\st_out[0]_INST_0_i_1_n_0 ),
        .I1(st_in[8]),
        .I2(\st_out[0]_INST_0_i_2_n_0 ),
        .I3(\st_out[0]_INST_0_i_3_n_0 ),
        .I4(\st_out[6]_INST_0_i_3_n_0 ),
        .I5(\st_out[0]_INST_0_i_4_n_0 ),
        .O(st_out[0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \st_out[0]_INST_0_i_1 
       (.I0(nb_active[1]),
        .I1(nb_active[2]),
        .I2(\st_out[4]_INST_0_i_1_n_0 ),
        .I3(nb_active[3]),
        .I4(\st_out[3]_INST_0_i_1_n_0 ),
        .I5(nb_active[0]),
        .O(\st_out[0]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF02AAFFFFFFFF)) 
    \st_out[0]_INST_0_i_10 
       (.I0(e_grown[0]),
        .I1(st_in[2]),
        .I2(\st_out[0]_INST_0_i_12_n_0 ),
        .I3(\st_out[0]_INST_0_i_13_n_0 ),
        .I4(\st_out[15]_INST_0_i_6_n_0 ),
        .I5(\st_out[4]_INST_0_i_3_n_0 ),
        .O(\st_out[0]_INST_0_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT4 #(
    .INIT(16'hDFFF)) 
    \st_out[0]_INST_0_i_11 
       (.I0(stage[1]),
        .I1(stage[2]),
        .I2(stage[0]),
        .I3(nb_grown[1]),
        .O(\st_out[0]_INST_0_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT4 #(
    .INIT(16'hDFFF)) 
    \st_out[0]_INST_0_i_12 
       (.I0(stage[1]),
        .I1(stage[2]),
        .I2(stage[0]),
        .I3(nb_grown[0]),
        .O(\st_out[0]_INST_0_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \st_out[0]_INST_0_i_13 
       (.I0(st_in[1]),
        .I1(\st_out[4]_INST_0_i_6_n_0 ),
        .O(\st_out[0]_INST_0_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT4 #(
    .INIT(16'h73F7)) 
    \st_out[0]_INST_0_i_2 
       (.I0(\st_out[0]_INST_0_i_5_n_0 ),
        .I1(\st_out[6]_INST_0_i_5_n_0 ),
        .I2(m_pass[0]),
        .I3(m_pass[1]),
        .O(\st_out[0]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \st_out[0]_INST_0_i_3 
       (.I0(st_in[6]),
        .I1(p_is_bnd),
        .O(\st_out[0]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFF0808FFFFFFFFFF)) 
    \st_out[0]_INST_0_i_4 
       (.I0(\st_out[0]_INST_0_i_5_n_0 ),
        .I1(m_pass[0]),
        .I2(m_pass[1]),
        .I3(stage[1]),
        .I4(stage[2]),
        .I5(stage[0]),
        .O(\st_out[0]_INST_0_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h0002)) 
    \st_out[0]_INST_0_i_5 
       (.I0(\st_out[13]_INST_0_i_7_n_0 ),
        .I1(\st_out[15]_INST_0_i_9_n_0 ),
        .I2(\st_out[0]_INST_0_i_6_n_0 ),
        .I3(\st_out[15]_INST_0_i_8_n_0 ),
        .O(\st_out[0]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAEEEAEAEFFFFAEAE)) 
    \st_out[0]_INST_0_i_6 
       (.I0(\st_out[0]_INST_0_i_7_n_0 ),
        .I1(\st_out[2]_INST_0_i_10_n_0 ),
        .I2(\st_out[2]_INST_0_i_9_n_0 ),
        .I3(\st_out[0]_INST_0_i_8_n_0 ),
        .I4(\st_out[2]_INST_0_i_7_n_0 ),
        .I5(\st_out[2]_INST_0_i_4_n_0 ),
        .O(\st_out[0]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEFEEEFEFEFEFE)) 
    \st_out[0]_INST_0_i_7 
       (.I0(\st_out[0]_INST_0_i_9_n_0 ),
        .I1(\st_out[0]_INST_0_i_10_n_0 ),
        .I2(\st_out[2]_INST_0_i_13_n_0 ),
        .I3(\st_out[2]_INST_0_i_11_n_0 ),
        .I4(\st_out[0]_INST_0_i_11_n_0 ),
        .I5(\st_out[2]_INST_0_i_12_n_0 ),
        .O(\st_out[0]_INST_0_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT4 #(
    .INIT(16'hDFFF)) 
    \st_out[0]_INST_0_i_8 
       (.I0(stage[1]),
        .I1(stage[2]),
        .I2(stage[0]),
        .I3(nb_grown[2]),
        .O(\st_out[0]_INST_0_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \st_out[0]_INST_0_i_9 
       (.I0(\st_out[2]_INST_0_i_6_n_0 ),
        .I1(\st_out[13]_INST_0_i_10_n_0 ),
        .I2(st_in[1]),
        .O(\st_out[0]_INST_0_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF200)) 
    \st_out[10]_INST_0 
       (.I0(\st_out[13]_INST_0_i_1_n_0 ),
        .I1(\st_out[10]_INST_0_i_1_n_0 ),
        .I2(\st_out[10]_INST_0_i_2_n_0 ),
        .I3(\st_out[15]_INST_0_i_2_n_0 ),
        .I4(\st_out[10]_INST_0_i_3_n_0 ),
        .O(st_out[10]));
  LUT6 #(
    .INIT(64'h000000FF1F1F00FF)) 
    \st_out[10]_INST_0_i_1 
       (.I0(st_in[10]),
        .I1(\st_out[13]_INST_0_i_5_n_0 ),
        .I2(\st_out[13]_INST_0_i_6_n_0 ),
        .I3(nb_cid[19]),
        .I4(\st_out[13]_INST_0_i_7_n_0 ),
        .I5(\st_out[10]_INST_0_i_4_n_0 ),
        .O(\st_out[10]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hEF202020)) 
    \st_out[10]_INST_0_i_2 
       (.I0(st_in[10]),
        .I1(m_pass[0]),
        .I2(m_pass[1]),
        .I3(\st_out[15]_INST_0_i_6_n_0 ),
        .I4(p_id[1]),
        .O(\st_out[10]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF333F3F3F2222222)) 
    \st_out[10]_INST_0_i_3 
       (.I0(\st_out[14]_INST_0_i_4_n_0 ),
        .I1(\st_out[14]_INST_0_i_3_n_0 ),
        .I2(\st_out[7]_INST_0_i_2_n_0 ),
        .I3(\st_out[10]_INST_0_i_5_n_0 ),
        .I4(p_has_above),
        .I5(st_in[10]),
        .O(\st_out[10]_INST_0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \st_out[10]_INST_0_i_4 
       (.I0(\st_out[10]_INST_0_i_6_n_0 ),
        .I1(\st_out[15]_INST_0_i_8_n_0 ),
        .I2(nb_cid[13]),
        .I3(\st_out[13]_INST_0_i_6_n_0 ),
        .O(\st_out[10]_INST_0_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT5 #(
    .INIT(32'hCCCCCD99)) 
    \st_out[10]_INST_0_i_5 
       (.I0(ab_cid[4]),
        .I1(ab_cid[1]),
        .I2(ab_cid[2]),
        .I3(ab_cid[3]),
        .I4(ab_cid[5]),
        .O(\st_out[10]_INST_0_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \st_out[10]_INST_0_i_6 
       (.I0(nb_cid[7]),
        .I1(\st_out[15]_INST_0_i_9_n_0 ),
        .I2(st_in[10]),
        .I3(\st_out[4]_INST_0_i_3_n_0 ),
        .I4(nb_cid[1]),
        .O(\st_out[10]_INST_0_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF200)) 
    \st_out[11]_INST_0 
       (.I0(\st_out[13]_INST_0_i_1_n_0 ),
        .I1(\st_out[11]_INST_0_i_1_n_0 ),
        .I2(\st_out[11]_INST_0_i_2_n_0 ),
        .I3(\st_out[15]_INST_0_i_2_n_0 ),
        .I4(\st_out[11]_INST_0_i_3_n_0 ),
        .O(st_out[11]));
  LUT6 #(
    .INIT(64'h000000FF1F1F00FF)) 
    \st_out[11]_INST_0_i_1 
       (.I0(st_in[11]),
        .I1(\st_out[13]_INST_0_i_5_n_0 ),
        .I2(\st_out[13]_INST_0_i_6_n_0 ),
        .I3(nb_cid[20]),
        .I4(\st_out[13]_INST_0_i_7_n_0 ),
        .I5(\st_out[11]_INST_0_i_4_n_0 ),
        .O(\st_out[11]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT5 #(
    .INIT(32'hEF202020)) 
    \st_out[11]_INST_0_i_2 
       (.I0(st_in[11]),
        .I1(m_pass[0]),
        .I2(m_pass[1]),
        .I3(\st_out[15]_INST_0_i_6_n_0 ),
        .I4(p_id[2]),
        .O(\st_out[11]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF3F2F32233223322)) 
    \st_out[11]_INST_0_i_3 
       (.I0(\st_out[14]_INST_0_i_4_n_0 ),
        .I1(\st_out[14]_INST_0_i_3_n_0 ),
        .I2(\st_out[7]_INST_0_i_2_n_0 ),
        .I3(st_in[11]),
        .I4(p_has_above),
        .I5(\st_out[11]_INST_0_i_5_n_0 ),
        .O(\st_out[11]_INST_0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \st_out[11]_INST_0_i_4 
       (.I0(\st_out[11]_INST_0_i_6_n_0 ),
        .I1(\st_out[15]_INST_0_i_8_n_0 ),
        .I2(nb_cid[14]),
        .I3(\st_out[13]_INST_0_i_6_n_0 ),
        .O(\st_out[11]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFAFAFAFAFAFAEBE)) 
    \st_out[11]_INST_0_i_5 
       (.I0(\st_out[14]_INST_0_i_6_n_0 ),
        .I1(ab_cid[4]),
        .I2(ab_cid[2]),
        .I3(ab_cid[3]),
        .I4(ab_cid[5]),
        .I5(ab_cid[1]),
        .O(\st_out[11]_INST_0_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \st_out[11]_INST_0_i_6 
       (.I0(nb_cid[8]),
        .I1(\st_out[15]_INST_0_i_9_n_0 ),
        .I2(st_in[11]),
        .I3(\st_out[4]_INST_0_i_3_n_0 ),
        .I4(nb_cid[2]),
        .O(\st_out[11]_INST_0_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF200)) 
    \st_out[12]_INST_0 
       (.I0(\st_out[13]_INST_0_i_1_n_0 ),
        .I1(\st_out[12]_INST_0_i_1_n_0 ),
        .I2(\st_out[12]_INST_0_i_2_n_0 ),
        .I3(\st_out[15]_INST_0_i_2_n_0 ),
        .I4(\st_out[12]_INST_0_i_3_n_0 ),
        .O(st_out[12]));
  LUT6 #(
    .INIT(64'h000000FF1F1F00FF)) 
    \st_out[12]_INST_0_i_1 
       (.I0(st_in[12]),
        .I1(\st_out[13]_INST_0_i_5_n_0 ),
        .I2(\st_out[13]_INST_0_i_6_n_0 ),
        .I3(nb_cid[21]),
        .I4(\st_out[13]_INST_0_i_7_n_0 ),
        .I5(\st_out[12]_INST_0_i_4_n_0 ),
        .O(\st_out[12]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT5 #(
    .INIT(32'hEF202020)) 
    \st_out[12]_INST_0_i_2 
       (.I0(st_in[12]),
        .I1(m_pass[0]),
        .I2(m_pass[1]),
        .I3(\st_out[15]_INST_0_i_6_n_0 ),
        .I4(p_id[3]),
        .O(\st_out[12]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF3F2F32233223322)) 
    \st_out[12]_INST_0_i_3 
       (.I0(\st_out[14]_INST_0_i_4_n_0 ),
        .I1(\st_out[14]_INST_0_i_3_n_0 ),
        .I2(\st_out[7]_INST_0_i_2_n_0 ),
        .I3(st_in[12]),
        .I4(p_has_above),
        .I5(\st_out[12]_INST_0_i_5_n_0 ),
        .O(\st_out[12]_INST_0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h00D1)) 
    \st_out[12]_INST_0_i_4 
       (.I0(\st_out[12]_INST_0_i_6_n_0 ),
        .I1(\st_out[15]_INST_0_i_8_n_0 ),
        .I2(nb_cid[15]),
        .I3(\st_out[13]_INST_0_i_6_n_0 ),
        .O(\st_out[12]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAAFFFFAAAAFEFFAA)) 
    \st_out[12]_INST_0_i_5 
       (.I0(\st_out[14]_INST_0_i_6_n_0 ),
        .I1(ab_cid[1]),
        .I2(ab_cid[5]),
        .I3(ab_cid[3]),
        .I4(ab_cid[2]),
        .I5(ab_cid[4]),
        .O(\st_out[12]_INST_0_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'h47)) 
    \st_out[12]_INST_0_i_6 
       (.I0(nb_cid[9]),
        .I1(\st_out[15]_INST_0_i_9_n_0 ),
        .I2(\st_out[12]_INST_0_i_7_n_0 ),
        .O(\st_out[12]_INST_0_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \st_out[12]_INST_0_i_7 
       (.I0(st_in[12]),
        .I1(\st_out[4]_INST_0_i_3_n_0 ),
        .I2(nb_cid[3]),
        .O(\st_out[12]_INST_0_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF200)) 
    \st_out[13]_INST_0 
       (.I0(\st_out[13]_INST_0_i_1_n_0 ),
        .I1(\st_out[13]_INST_0_i_2_n_0 ),
        .I2(\st_out[13]_INST_0_i_3_n_0 ),
        .I3(\st_out[15]_INST_0_i_2_n_0 ),
        .I4(\st_out[13]_INST_0_i_4_n_0 ),
        .O(st_out[13]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'h0B)) 
    \st_out[13]_INST_0_i_1 
       (.I0(m_pass[0]),
        .I1(m_pass[1]),
        .I2(\st_out[15]_INST_0_i_6_n_0 ),
        .O(\st_out[13]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \st_out[13]_INST_0_i_10 
       (.I0(nb_cid[23]),
        .I1(nb_cid[21]),
        .I2(nb_cid[18]),
        .I3(nb_cid[20]),
        .I4(nb_cid[19]),
        .I5(nb_cid[22]),
        .O(\st_out[13]_INST_0_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT4 #(
    .INIT(16'h8AAA)) 
    \st_out[13]_INST_0_i_11 
       (.I0(\st_out[13]_INST_0_i_19_n_0 ),
        .I1(\st_out[2]_INST_0_i_9_n_0 ),
        .I2(e_grown[2]),
        .I3(nb_valid[2]),
        .O(\st_out[13]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h4F4444444F444F4F)) 
    \st_out[13]_INST_0_i_12 
       (.I0(nb_cid[22]),
        .I1(\st_out[13]_INST_0_i_20_n_0 ),
        .I2(nb_cid[21]),
        .I3(nb_cid[15]),
        .I4(\st_out[15]_INST_0_i_8_n_0 ),
        .I5(\st_out[12]_INST_0_i_6_n_0 ),
        .O(\st_out[13]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h10F110F1FFFF10F1)) 
    \st_out[13]_INST_0_i_13 
       (.I0(nb_cid[18]),
        .I1(\st_out[13]_INST_0_i_21_n_0 ),
        .I2(\st_out[13]_INST_0_i_22_n_0 ),
        .I3(nb_cid[19]),
        .I4(\st_out[13]_INST_0_i_23_n_0 ),
        .I5(nb_cid[20]),
        .O(\st_out[13]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h4F444FFF44444444)) 
    \st_out[13]_INST_0_i_14 
       (.I0(\st_out[13]_INST_0_i_24_n_0 ),
        .I1(nb_cid[21]),
        .I2(nb_cid[14]),
        .I3(\st_out[15]_INST_0_i_8_n_0 ),
        .I4(\st_out[11]_INST_0_i_6_n_0 ),
        .I5(nb_cid[20]),
        .O(\st_out[13]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h4F444FFF44444444)) 
    \st_out[13]_INST_0_i_15 
       (.I0(\st_out[14]_INST_0_i_10_n_0 ),
        .I1(nb_cid[23]),
        .I2(nb_cid[16]),
        .I3(\st_out[15]_INST_0_i_8_n_0 ),
        .I4(\st_out[13]_INST_0_i_18_n_0 ),
        .I5(nb_cid[22]),
        .O(\st_out[13]_INST_0_i_15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \st_out[13]_INST_0_i_16 
       (.I0(\st_out[14]_INST_0_i_10_n_0 ),
        .I1(nb_cid[23]),
        .O(\st_out[13]_INST_0_i_16_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \st_out[13]_INST_0_i_17 
       (.I0(\st_out[13]_INST_0_i_10_n_0 ),
        .I1(\st_out[2]_INST_0_i_6_n_0 ),
        .O(\st_out[13]_INST_0_i_17_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \st_out[13]_INST_0_i_18 
       (.I0(\st_out[13]_INST_0_i_25_n_0 ),
        .I1(nb_cid[10]),
        .I2(\st_out[15]_INST_0_i_9_n_0 ),
        .O(\st_out[13]_INST_0_i_18_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT5 #(
    .INIT(32'hF0F7F7F7)) 
    \st_out[13]_INST_0_i_19 
       (.I0(\st_out[4]_INST_0_i_6_n_0 ),
        .I1(e_grown[0]),
        .I2(st_in[1]),
        .I3(\st_out[15]_INST_0_i_24_n_0 ),
        .I4(e_grown[1]),
        .O(\st_out[13]_INST_0_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h000000FF1F1F00FF)) 
    \st_out[13]_INST_0_i_2 
       (.I0(st_in[13]),
        .I1(\st_out[13]_INST_0_i_5_n_0 ),
        .I2(\st_out[13]_INST_0_i_6_n_0 ),
        .I3(nb_cid[22]),
        .I4(\st_out[13]_INST_0_i_7_n_0 ),
        .I5(\st_out[13]_INST_0_i_8_n_0 ),
        .O(\st_out[13]_INST_0_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hCCA8)) 
    \st_out[13]_INST_0_i_20 
       (.I0(nb_cid[16]),
        .I1(\st_out[13]_INST_0_i_18_n_0 ),
        .I2(\st_out[13]_INST_0_i_26_n_0 ),
        .I3(\st_out[15]_INST_0_i_14_n_0 ),
        .O(\st_out[13]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF55DF00005510)) 
    \st_out[13]_INST_0_i_21 
       (.I0(nb_cid[12]),
        .I1(\st_out[15]_INST_0_i_10_n_0 ),
        .I2(\st_out[13]_INST_0_i_27_n_0 ),
        .I3(\st_out[15]_INST_0_i_13_n_0 ),
        .I4(\st_out[15]_INST_0_i_14_n_0 ),
        .I5(\st_out[9]_INST_0_i_7_n_0 ),
        .O(\st_out[13]_INST_0_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFAAEF0000AA20)) 
    \st_out[13]_INST_0_i_22 
       (.I0(nb_cid[13]),
        .I1(\st_out[15]_INST_0_i_10_n_0 ),
        .I2(\st_out[13]_INST_0_i_27_n_0 ),
        .I3(\st_out[15]_INST_0_i_13_n_0 ),
        .I4(\st_out[15]_INST_0_i_14_n_0 ),
        .I5(\st_out[10]_INST_0_i_6_n_0 ),
        .O(\st_out[13]_INST_0_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFAAEF0000AA20)) 
    \st_out[13]_INST_0_i_23 
       (.I0(nb_cid[14]),
        .I1(\st_out[15]_INST_0_i_10_n_0 ),
        .I2(\st_out[13]_INST_0_i_27_n_0 ),
        .I3(\st_out[15]_INST_0_i_13_n_0 ),
        .I4(\st_out[15]_INST_0_i_14_n_0 ),
        .I5(\st_out[11]_INST_0_i_6_n_0 ),
        .O(\st_out[13]_INST_0_i_23_n_0 ));
  LUT6 #(
    .INIT(64'h33333333AAAA3233)) 
    \st_out[13]_INST_0_i_24 
       (.I0(nb_cid[15]),
        .I1(\st_out[12]_INST_0_i_6_n_0 ),
        .I2(\st_out[13]_INST_0_i_28_n_0 ),
        .I3(\st_out[13]_INST_0_i_27_n_0 ),
        .I4(\st_out[15]_INST_0_i_13_n_0 ),
        .I5(\st_out[15]_INST_0_i_14_n_0 ),
        .O(\st_out[13]_INST_0_i_24_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \st_out[13]_INST_0_i_25 
       (.I0(st_in[13]),
        .I1(\st_out[4]_INST_0_i_3_n_0 ),
        .I2(nb_cid[4]),
        .O(\st_out[13]_INST_0_i_25_n_0 ));
  LUT6 #(
    .INIT(64'h5100515100000000)) 
    \st_out[13]_INST_0_i_26 
       (.I0(nb_cid[17]),
        .I1(\st_out[2]_INST_0_i_13_n_0 ),
        .I2(nb_cid[11]),
        .I3(nb_cid[5]),
        .I4(e_grown[0]),
        .I5(st_in[14]),
        .O(\st_out[13]_INST_0_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hEAFEAAAAFFFFEAFE)) 
    \st_out[13]_INST_0_i_27 
       (.I0(\st_out[13]_INST_0_i_29_n_0 ),
        .I1(\st_out[13]_INST_0_i_30_n_0 ),
        .I2(\st_out[10]_INST_0_i_6_n_0 ),
        .I3(nb_cid[13]),
        .I4(\st_out[11]_INST_0_i_6_n_0 ),
        .I5(nb_cid[14]),
        .O(\st_out[13]_INST_0_i_27_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \st_out[13]_INST_0_i_28 
       (.I0(nb_cid[16]),
        .I1(\st_out[13]_INST_0_i_18_n_0 ),
        .O(\st_out[13]_INST_0_i_28_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT4 #(
    .INIT(16'h5404)) 
    \st_out[13]_INST_0_i_29 
       (.I0(nb_cid[15]),
        .I1(\st_out[12]_INST_0_i_7_n_0 ),
        .I2(\st_out[15]_INST_0_i_9_n_0 ),
        .I3(nb_cid[9]),
        .O(\st_out[13]_INST_0_i_29_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT5 #(
    .INIT(32'hEF202020)) 
    \st_out[13]_INST_0_i_3 
       (.I0(st_in[13]),
        .I1(m_pass[0]),
        .I2(m_pass[1]),
        .I3(\st_out[15]_INST_0_i_6_n_0 ),
        .I4(p_id[4]),
        .O(\st_out[13]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h5555540400005404)) 
    \st_out[13]_INST_0_i_30 
       (.I0(nb_cid[12]),
        .I1(nb_cid[0]),
        .I2(\st_out[4]_INST_0_i_3_n_0 ),
        .I3(st_in[9]),
        .I4(\st_out[15]_INST_0_i_9_n_0 ),
        .I5(nb_cid[6]),
        .O(\st_out[13]_INST_0_i_30_n_0 ));
  LUT6 #(
    .INIT(64'hF3F2F32233223322)) 
    \st_out[13]_INST_0_i_4 
       (.I0(\st_out[14]_INST_0_i_4_n_0 ),
        .I1(\st_out[14]_INST_0_i_3_n_0 ),
        .I2(\st_out[7]_INST_0_i_2_n_0 ),
        .I3(st_in[13]),
        .I4(p_has_above),
        .I5(\st_out[13]_INST_0_i_9_n_0 ),
        .O(\st_out[13]_INST_0_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT5 #(
    .INIT(32'h4000FFFF)) 
    \st_out[13]_INST_0_i_5 
       (.I0(st_in[1]),
        .I1(\st_out[13]_INST_0_i_10_n_0 ),
        .I2(nb_valid[3]),
        .I3(e_grown[3]),
        .I4(\st_out[13]_INST_0_i_11_n_0 ),
        .O(\st_out[13]_INST_0_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \st_out[13]_INST_0_i_6 
       (.I0(\st_out[4]_INST_0_i_3_n_0 ),
        .I1(\st_out[4]_INST_0_i_4_n_0 ),
        .O(\st_out[13]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF0000FF51)) 
    \st_out[13]_INST_0_i_7 
       (.I0(\st_out[13]_INST_0_i_12_n_0 ),
        .I1(\st_out[13]_INST_0_i_13_n_0 ),
        .I2(\st_out[13]_INST_0_i_14_n_0 ),
        .I3(\st_out[13]_INST_0_i_15_n_0 ),
        .I4(\st_out[13]_INST_0_i_16_n_0 ),
        .I5(\st_out[13]_INST_0_i_17_n_0 ),
        .O(\st_out[13]_INST_0_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \st_out[13]_INST_0_i_8 
       (.I0(\st_out[13]_INST_0_i_18_n_0 ),
        .I1(\st_out[15]_INST_0_i_8_n_0 ),
        .I2(nb_cid[16]),
        .I3(\st_out[13]_INST_0_i_6_n_0 ),
        .O(\st_out[13]_INST_0_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hBFEA)) 
    \st_out[13]_INST_0_i_9 
       (.I0(\st_out[14]_INST_0_i_6_n_0 ),
        .I1(ab_cid[2]),
        .I2(ab_cid[3]),
        .I3(ab_cid[4]),
        .O(\st_out[13]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hF4FFF4FFF4FFF4F4)) 
    \st_out[14]_INST_0 
       (.I0(\st_out[14]_INST_0_i_1_n_0 ),
        .I1(\st_out[15]_INST_0_i_2_n_0 ),
        .I2(\st_out[14]_INST_0_i_2_n_0 ),
        .I3(\st_out[14]_INST_0_i_3_n_0 ),
        .I4(\st_out[14]_INST_0_i_4_n_0 ),
        .I5(st_in[14]),
        .O(st_out[14]));
  LUT6 #(
    .INIT(64'h2A2A002A2A2AAA2A)) 
    \st_out[14]_INST_0_i_1 
       (.I0(\st_out[14]_INST_0_i_5_n_0 ),
        .I1(p_id[5]),
        .I2(\st_out[15]_INST_0_i_6_n_0 ),
        .I3(m_pass[1]),
        .I4(m_pass[0]),
        .I5(st_in[14]),
        .O(\st_out[14]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'h45)) 
    \st_out[14]_INST_0_i_10 
       (.I0(\st_out[15]_INST_0_i_21_n_0 ),
        .I1(nb_cid[17]),
        .I2(\st_out[2]_INST_0_i_10_n_0 ),
        .O(\st_out[14]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hBEBEBE0000000000)) 
    \st_out[14]_INST_0_i_2 
       (.I0(\st_out[14]_INST_0_i_6_n_0 ),
        .I1(ab_cid[5]),
        .I2(\st_out[14]_INST_0_i_7_n_0 ),
        .I3(p_has_above),
        .I4(st_in[14]),
        .I5(\st_out[7]_INST_0_i_2_n_0 ),
        .O(\st_out[14]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \st_out[14]_INST_0_i_3 
       (.I0(stage[0]),
        .I1(stage[2]),
        .I2(stage[1]),
        .O(\st_out[14]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \st_out[14]_INST_0_i_4 
       (.I0(stage[0]),
        .I1(stage[2]),
        .I2(stage[1]),
        .I3(\st_out[14]_INST_0_i_8_n_0 ),
        .O(\st_out[14]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h3737777737F77777)) 
    \st_out[14]_INST_0_i_5 
       (.I0(\st_out[14]_INST_0_i_9_n_0 ),
        .I1(\st_out[13]_INST_0_i_1_n_0 ),
        .I2(\st_out[13]_INST_0_i_7_n_0 ),
        .I3(\st_out[13]_INST_0_i_5_n_0 ),
        .I4(\st_out[13]_INST_0_i_6_n_0 ),
        .I5(st_in[14]),
        .O(\st_out[14]_INST_0_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h8000FFFF)) 
    \st_out[14]_INST_0_i_6 
       (.I0(ab_cid[1]),
        .I1(ab_cid[0]),
        .I2(ab_cid[5]),
        .I3(\st_out[14]_INST_0_i_7_n_0 ),
        .I4(p_has_above),
        .O(\st_out[14]_INST_0_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \st_out[14]_INST_0_i_7 
       (.I0(ab_cid[4]),
        .I1(ab_cid[3]),
        .I2(ab_cid[2]),
        .O(\st_out[14]_INST_0_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h4000)) 
    \st_out[14]_INST_0_i_8 
       (.I0(st_in[5]),
        .I1(st_in[3]),
        .I2(p_is_bot),
        .I3(st_in[4]),
        .O(\st_out[14]_INST_0_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \st_out[14]_INST_0_i_9 
       (.I0(\st_out[14]_INST_0_i_10_n_0 ),
        .I1(nb_cid[23]),
        .I2(\st_out[2]_INST_0_i_6_n_0 ),
        .O(\st_out[14]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h8A8A8A8A8ABA8A8A)) 
    \st_out[15]_INST_0 
       (.I0(st_in[15]),
        .I1(\st_out[15]_INST_0_i_1_n_0 ),
        .I2(\st_out[15]_INST_0_i_2_n_0 ),
        .I3(p_is_bnd),
        .I4(st_in[6]),
        .I5(\st_out[15]_INST_0_i_3_n_0 ),
        .O(st_out[15]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \st_out[15]_INST_0_i_1 
       (.I0(m_pass[1]),
        .I1(m_pass[0]),
        .O(\st_out[15]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF444)) 
    \st_out[15]_INST_0_i_10 
       (.I0(\st_out[13]_INST_0_i_18_n_0 ),
        .I1(nb_cid[16]),
        .I2(\st_out[12]_INST_0_i_6_n_0 ),
        .I3(nb_cid[15]),
        .O(\st_out[15]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hF2FFF2FFF2FF22F2)) 
    \st_out[15]_INST_0_i_11 
       (.I0(nb_cid[14]),
        .I1(\st_out[11]_INST_0_i_6_n_0 ),
        .I2(nb_cid[13]),
        .I3(\st_out[10]_INST_0_i_6_n_0 ),
        .I4(nb_cid[12]),
        .I5(\st_out[9]_INST_0_i_7_n_0 ),
        .O(\st_out[15]_INST_0_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h1F11)) 
    \st_out[15]_INST_0_i_12 
       (.I0(\st_out[12]_INST_0_i_6_n_0 ),
        .I1(nb_cid[15]),
        .I2(nb_cid[14]),
        .I3(\st_out[11]_INST_0_i_6_n_0 ),
        .O(\st_out[15]_INST_0_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h1F11)) 
    \st_out[15]_INST_0_i_13 
       (.I0(\st_out[15]_INST_0_i_21_n_0 ),
        .I1(nb_cid[17]),
        .I2(nb_cid[16]),
        .I3(\st_out[13]_INST_0_i_18_n_0 ),
        .O(\st_out[15]_INST_0_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT4 #(
    .INIT(16'hFF8F)) 
    \st_out[15]_INST_0_i_14 
       (.I0(nb_cid[17]),
        .I1(\st_out[15]_INST_0_i_21_n_0 ),
        .I2(\st_out[2]_INST_0_i_10_n_0 ),
        .I3(\st_out[2]_INST_0_i_14_n_0 ),
        .O(\st_out[15]_INST_0_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    \st_out[15]_INST_0_i_15 
       (.I0(nb_cid[10]),
        .I1(\st_out[13]_INST_0_i_25_n_0 ),
        .I2(nb_cid[9]),
        .I3(\st_out[12]_INST_0_i_7_n_0 ),
        .O(\st_out[15]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFBBB222B2)) 
    \st_out[15]_INST_0_i_16 
       (.I0(\st_out[15]_INST_0_i_22_n_0 ),
        .I1(nb_cid[7]),
        .I2(nb_cid[1]),
        .I3(\st_out[4]_INST_0_i_3_n_0 ),
        .I4(st_in[10]),
        .I5(\st_out[15]_INST_0_i_23_n_0 ),
        .O(\st_out[15]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h4F444FFF44444444)) 
    \st_out[15]_INST_0_i_17 
       (.I0(\st_out[12]_INST_0_i_7_n_0 ),
        .I1(nb_cid[9]),
        .I2(st_in[11]),
        .I3(\st_out[4]_INST_0_i_3_n_0 ),
        .I4(nb_cid[2]),
        .I5(nb_cid[8]),
        .O(\st_out[15]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h20AAFFFF20AA20AA)) 
    \st_out[15]_INST_0_i_18 
       (.I0(nb_cid[11]),
        .I1(nb_cid[5]),
        .I2(e_grown[0]),
        .I3(st_in[14]),
        .I4(\st_out[13]_INST_0_i_25_n_0 ),
        .I5(nb_cid[10]),
        .O(\st_out[15]_INST_0_i_18_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT4 #(
    .INIT(16'h4404)) 
    \st_out[15]_INST_0_i_19 
       (.I0(nb_cid[11]),
        .I1(st_in[14]),
        .I2(e_grown[0]),
        .I3(nb_cid[5]),
        .O(\st_out[15]_INST_0_i_19_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \st_out[15]_INST_0_i_2 
       (.I0(stage[0]),
        .I1(stage[2]),
        .I2(stage[1]),
        .O(\st_out[15]_INST_0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \st_out[15]_INST_0_i_20 
       (.I0(\st_out[15]_INST_0_i_24_n_0 ),
        .I1(\st_out[2]_INST_0_i_13_n_0 ),
        .O(\st_out[15]_INST_0_i_20_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT5 #(
    .INIT(32'h5DFF5D5D)) 
    \st_out[15]_INST_0_i_21 
       (.I0(st_in[14]),
        .I1(e_grown[0]),
        .I2(nb_cid[5]),
        .I3(nb_cid[11]),
        .I4(\st_out[2]_INST_0_i_13_n_0 ),
        .O(\st_out[15]_INST_0_i_21_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT4 #(
    .INIT(16'h5404)) 
    \st_out[15]_INST_0_i_22 
       (.I0(nb_cid[6]),
        .I1(nb_cid[0]),
        .I2(\st_out[4]_INST_0_i_3_n_0 ),
        .I3(st_in[9]),
        .O(\st_out[15]_INST_0_i_22_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT4 #(
    .INIT(16'h5404)) 
    \st_out[15]_INST_0_i_23 
       (.I0(nb_cid[8]),
        .I1(nb_cid[2]),
        .I2(\st_out[4]_INST_0_i_3_n_0 ),
        .I3(st_in[11]),
        .O(\st_out[15]_INST_0_i_23_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \st_out[15]_INST_0_i_24 
       (.I0(nb_cid[7]),
        .I1(nb_cid[9]),
        .I2(nb_cid[8]),
        .I3(nb_cid[10]),
        .I4(nb_cid[11]),
        .I5(nb_cid[6]),
        .O(\st_out[15]_INST_0_i_24_n_0 ));
  LUT6 #(
    .INIT(64'h0003000000030A0A)) 
    \st_out[15]_INST_0_i_3 
       (.I0(\st_out[15]_INST_0_i_4_n_0 ),
        .I1(st_in[3]),
        .I2(\st_out[15]_INST_0_i_5_n_0 ),
        .I3(st_in[4]),
        .I4(\st_out[15]_INST_0_i_6_n_0 ),
        .I5(\st_out[15]_INST_0_i_7_n_0 ),
        .O(\st_out[15]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h54445454FFFFFFFF)) 
    \st_out[15]_INST_0_i_4 
       (.I0(\st_out[15]_INST_0_i_8_n_0 ),
        .I1(\st_out[15]_INST_0_i_9_n_0 ),
        .I2(\st_out[4]_INST_0_i_3_n_0 ),
        .I3(\st_out[13]_INST_0_i_5_n_0 ),
        .I4(st_in[3]),
        .I5(\st_out[13]_INST_0_i_7_n_0 ),
        .O(\st_out[15]_INST_0_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT5 #(
    .INIT(32'hFF007555)) 
    \st_out[15]_INST_0_i_5 
       (.I0(\st_out[13]_INST_0_i_7_n_0 ),
        .I1(\st_out[13]_INST_0_i_5_n_0 ),
        .I2(\st_out[13]_INST_0_i_6_n_0 ),
        .I3(st_in[5]),
        .I4(\st_out[15]_INST_0_i_6_n_0 ),
        .O(\st_out[15]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \st_out[15]_INST_0_i_6 
       (.I0(st_in[14]),
        .I1(st_in[12]),
        .I2(st_in[9]),
        .I3(st_in[11]),
        .I4(st_in[10]),
        .I5(st_in[13]),
        .O(\st_out[15]_INST_0_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT5 #(
    .INIT(32'hAAAA2000)) 
    \st_out[15]_INST_0_i_7 
       (.I0(\st_out[13]_INST_0_i_7_n_0 ),
        .I1(\st_out[13]_INST_0_i_5_n_0 ),
        .I2(\st_out[4]_INST_0_i_3_n_0 ),
        .I3(st_in[4]),
        .I4(\st_out[4]_INST_0_i_4_n_0 ),
        .O(\st_out[15]_INST_0_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h0000FF51)) 
    \st_out[15]_INST_0_i_8 
       (.I0(\st_out[15]_INST_0_i_10_n_0 ),
        .I1(\st_out[15]_INST_0_i_11_n_0 ),
        .I2(\st_out[15]_INST_0_i_12_n_0 ),
        .I3(\st_out[15]_INST_0_i_13_n_0 ),
        .I4(\st_out[15]_INST_0_i_14_n_0 ),
        .O(\st_out[15]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFF00AE)) 
    \st_out[15]_INST_0_i_9 
       (.I0(\st_out[15]_INST_0_i_15_n_0 ),
        .I1(\st_out[15]_INST_0_i_16_n_0 ),
        .I2(\st_out[15]_INST_0_i_17_n_0 ),
        .I3(\st_out[15]_INST_0_i_18_n_0 ),
        .I4(\st_out[15]_INST_0_i_19_n_0 ),
        .I5(\st_out[15]_INST_0_i_20_n_0 ),
        .O(\st_out[15]_INST_0_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT5 #(
    .INIT(32'hFCCF1400)) 
    \st_out[1]_INST_0 
       (.I0(\st_out[9]_INST_0_i_3_n_0 ),
        .I1(stage[1]),
        .I2(stage[2]),
        .I3(stage[0]),
        .I4(st_in[1]),
        .O(st_out[1]));
  LUT6 #(
    .INIT(64'hFFFFFFFF0000EAAA)) 
    \st_out[2]_INST_0 
       (.I0(st_in[2]),
        .I1(st_in[7]),
        .I2(st_in[8]),
        .I3(\st_out[2]_INST_0_i_1_n_0 ),
        .I4(\st_out[14]_INST_0_i_3_n_0 ),
        .I5(\st_out[2]_INST_0_i_2_n_0 ),
        .O(st_out[2]));
  LUT2 #(
    .INIT(4'h2)) 
    \st_out[2]_INST_0_i_1 
       (.I0(stage[1]),
        .I1(stage[2]),
        .O(\st_out[2]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \st_out[2]_INST_0_i_10 
       (.I0(\st_out[13]_INST_0_i_19_n_0 ),
        .I1(nb_valid[2]),
        .I2(e_grown[2]),
        .O(\st_out[2]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h5155555551555155)) 
    \st_out[2]_INST_0_i_11 
       (.I0(st_in[2]),
        .I1(nb_grown[0]),
        .I2(\st_out[2]_INST_0_i_8_n_0 ),
        .I3(e_grown[0]),
        .I4(st_in[1]),
        .I5(\st_out[4]_INST_0_i_6_n_0 ),
        .O(\st_out[2]_INST_0_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \st_out[2]_INST_0_i_12 
       (.I0(st_in[1]),
        .I1(\st_out[15]_INST_0_i_24_n_0 ),
        .O(\st_out[2]_INST_0_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT4 #(
    .INIT(16'h8AAA)) 
    \st_out[2]_INST_0_i_13 
       (.I0(e_grown[1]),
        .I1(st_in[1]),
        .I2(\st_out[4]_INST_0_i_6_n_0 ),
        .I3(e_grown[0]),
        .O(\st_out[2]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \st_out[2]_INST_0_i_14 
       (.I0(nb_cid[13]),
        .I1(nb_cid[15]),
        .I2(nb_cid[14]),
        .I3(nb_cid[16]),
        .I4(nb_cid[17]),
        .I5(nb_cid[12]),
        .O(\st_out[2]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h2F002F00FF000000)) 
    \st_out[2]_INST_0_i_2 
       (.I0(\st_out[2]_INST_0_i_3_n_0 ),
        .I1(\st_out[2]_INST_0_i_4_n_0 ),
        .I2(\st_out[2]_INST_0_i_5_n_0 ),
        .I3(\st_out[15]_INST_0_i_2_n_0 ),
        .I4(st_in[2]),
        .I5(\st_out[13]_INST_0_i_1_n_0 ),
        .O(\st_out[2]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \st_out[2]_INST_0_i_3 
       (.I0(st_in[1]),
        .I1(\st_out[13]_INST_0_i_10_n_0 ),
        .O(\st_out[2]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT5 #(
    .INIT(32'hF7FFFFFF)) 
    \st_out[2]_INST_0_i_4 
       (.I0(\st_out[2]_INST_0_i_6_n_0 ),
        .I1(stage[0]),
        .I2(stage[2]),
        .I3(stage[1]),
        .I4(nb_grown[3]),
        .O(\st_out[2]_INST_0_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hA2AAAAAA)) 
    \st_out[2]_INST_0_i_5 
       (.I0(\st_out[2]_INST_0_i_7_n_0 ),
        .I1(nb_grown[2]),
        .I2(\st_out[2]_INST_0_i_8_n_0 ),
        .I3(\st_out[2]_INST_0_i_9_n_0 ),
        .I4(\st_out[2]_INST_0_i_10_n_0 ),
        .O(\st_out[2]_INST_0_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \st_out[2]_INST_0_i_6 
       (.I0(\st_out[13]_INST_0_i_11_n_0 ),
        .I1(nb_valid[3]),
        .I2(e_grown[3]),
        .O(\st_out[2]_INST_0_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hA2AAAAAA)) 
    \st_out[2]_INST_0_i_7 
       (.I0(\st_out[2]_INST_0_i_11_n_0 ),
        .I1(nb_grown[1]),
        .I2(\st_out[2]_INST_0_i_8_n_0 ),
        .I3(\st_out[2]_INST_0_i_12_n_0 ),
        .I4(\st_out[2]_INST_0_i_13_n_0 ),
        .O(\st_out[2]_INST_0_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    \st_out[2]_INST_0_i_8 
       (.I0(stage[0]),
        .I1(stage[2]),
        .I2(stage[1]),
        .O(\st_out[2]_INST_0_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \st_out[2]_INST_0_i_9 
       (.I0(st_in[1]),
        .I1(\st_out[2]_INST_0_i_14_n_0 ),
        .O(\st_out[2]_INST_0_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hF4F4FFF4)) 
    \st_out[3]_INST_0 
       (.I0(\st_out[3]_INST_0_i_1_n_0 ),
        .I1(\st_out[15]_INST_0_i_2_n_0 ),
        .I2(\st_out[3]_INST_0_i_2_n_0 ),
        .I3(st_in[3]),
        .I4(\st_out[3]_INST_0_i_3_n_0 ),
        .O(st_out[3]));
  LUT4 #(
    .INIT(16'hB0BF)) 
    \st_out[3]_INST_0_i_1 
       (.I0(\st_out[3]_INST_0_i_4_n_0 ),
        .I1(\st_out[13]_INST_0_i_7_n_0 ),
        .I2(\st_out[13]_INST_0_i_1_n_0 ),
        .I3(st_in[3]),
        .O(\st_out[3]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0202020000000200)) 
    \st_out[3]_INST_0_i_2 
       (.I0(stage[0]),
        .I1(stage[1]),
        .I2(stage[2]),
        .I3(st_in[3]),
        .I4(p_has_above),
        .I5(ab_ptr[0]),
        .O(\st_out[3]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT4 #(
    .INIT(16'h7720)) 
    \st_out[3]_INST_0_i_3 
       (.I0(stage[1]),
        .I1(stage[2]),
        .I2(\st_out[14]_INST_0_i_8_n_0 ),
        .I3(stage[0]),
        .O(\st_out[3]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT5 #(
    .INIT(32'h0000FFD0)) 
    \st_out[3]_INST_0_i_4 
       (.I0(st_in[3]),
        .I1(\st_out[13]_INST_0_i_5_n_0 ),
        .I2(\st_out[4]_INST_0_i_3_n_0 ),
        .I3(\st_out[15]_INST_0_i_9_n_0 ),
        .I4(\st_out[15]_INST_0_i_8_n_0 ),
        .O(\st_out[3]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFF8F8F8F8F8F8F8)) 
    \st_out[4]_INST_0 
       (.I0(\st_out[15]_INST_0_i_2_n_0 ),
        .I1(\st_out[4]_INST_0_i_1_n_0 ),
        .I2(\st_out[4]_INST_0_i_2_n_0 ),
        .I3(\st_out[7]_INST_0_i_2_n_0 ),
        .I4(ab_ptr[1]),
        .I5(p_has_above),
        .O(st_out[4]));
  LUT6 #(
    .INIT(64'hAA20FFFFAA000000)) 
    \st_out[4]_INST_0_i_1 
       (.I0(\st_out[13]_INST_0_i_7_n_0 ),
        .I1(\st_out[13]_INST_0_i_5_n_0 ),
        .I2(\st_out[4]_INST_0_i_3_n_0 ),
        .I3(\st_out[4]_INST_0_i_4_n_0 ),
        .I4(\st_out[13]_INST_0_i_1_n_0 ),
        .I5(st_in[4]),
        .O(\st_out[4]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    \st_out[4]_INST_0_i_10 
       (.I0(nb_cid[5]),
        .I1(st_in[14]),
        .I2(nb_cid[4]),
        .I3(st_in[13]),
        .O(\st_out[4]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hA202A20AA222A22A)) 
    \st_out[4]_INST_0_i_2 
       (.I0(st_in[4]),
        .I1(stage[0]),
        .I2(stage[1]),
        .I3(stage[2]),
        .I4(p_has_above),
        .I5(\st_out[14]_INST_0_i_8_n_0 ),
        .O(\st_out[4]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEEEEEFEFEFFFE)) 
    \st_out[4]_INST_0_i_3 
       (.I0(\st_out[4]_INST_0_i_5_n_0 ),
        .I1(\st_out[4]_INST_0_i_6_n_0 ),
        .I2(\st_out[4]_INST_0_i_7_n_0 ),
        .I3(\st_out[4]_INST_0_i_8_n_0 ),
        .I4(\st_out[4]_INST_0_i_9_n_0 ),
        .I5(\st_out[4]_INST_0_i_10_n_0 ),
        .O(\st_out[4]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \st_out[4]_INST_0_i_4 
       (.I0(\st_out[15]_INST_0_i_9_n_0 ),
        .I1(\st_out[15]_INST_0_i_8_n_0 ),
        .O(\st_out[4]_INST_0_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'h4F)) 
    \st_out[4]_INST_0_i_5 
       (.I0(st_in[14]),
        .I1(nb_cid[5]),
        .I2(e_grown[0]),
        .O(\st_out[4]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \st_out[4]_INST_0_i_6 
       (.I0(nb_cid[1]),
        .I1(nb_cid[3]),
        .I2(nb_cid[2]),
        .I3(nb_cid[4]),
        .I4(nb_cid[5]),
        .I5(nb_cid[0]),
        .O(\st_out[4]_INST_0_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    \st_out[4]_INST_0_i_7 
       (.I0(st_in[12]),
        .I1(nb_cid[3]),
        .I2(st_in[13]),
        .I3(nb_cid[4]),
        .O(\st_out[4]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hF2FFF2FF22F2F2FF)) 
    \st_out[4]_INST_0_i_8 
       (.I0(nb_cid[2]),
        .I1(st_in[11]),
        .I2(nb_cid[1]),
        .I3(st_in[10]),
        .I4(st_in[9]),
        .I5(nb_cid[0]),
        .O(\st_out[4]_INST_0_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
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
    .INIT(32'hFFFF0880)) 
    \st_out[5]_INST_0 
       (.I0(\st_out[5]_INST_0_i_1_n_0 ),
        .I1(stage[0]),
        .I2(stage[2]),
        .I3(stage[1]),
        .I4(\st_out[5]_INST_0_i_2_n_0 ),
        .O(st_out[5]));
  LUT6 #(
    .INIT(64'hFFFF0000BFBB1111)) 
    \st_out[5]_INST_0_i_1 
       (.I0(\st_out[15]_INST_0_i_1_n_0 ),
        .I1(\st_out[13]_INST_0_i_7_n_0 ),
        .I2(\st_out[13]_INST_0_i_5_n_0 ),
        .I3(\st_out[13]_INST_0_i_6_n_0 ),
        .I4(st_in[5]),
        .I5(\st_out[15]_INST_0_i_6_n_0 ),
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
    .INIT(64'hFFFFFFFFA6550000)) 
    \st_out[6]_INST_0 
       (.I0(\st_out[6]_INST_0_i_1_n_0 ),
        .I1(\st_out[6]_INST_0_i_2_n_0 ),
        .I2(\st_out[6]_INST_0_i_3_n_0 ),
        .I3(st_in[6]),
        .I4(\st_out[15]_INST_0_i_2_n_0 ),
        .I5(\st_out[6]_INST_0_i_4_n_0 ),
        .O(st_out[6]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'hF4)) 
    \st_out[6]_INST_0_i_1 
       (.I0(m_pass[1]),
        .I1(m_pass[0]),
        .I2(\st_out[6]_INST_0_i_5_n_0 ),
        .O(\st_out[6]_INST_0_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h45)) 
    \st_out[6]_INST_0_i_2 
       (.I0(p_is_bnd),
        .I1(m_pass[1]),
        .I2(m_pass[0]),
        .O(\st_out[6]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000000020AA2A)) 
    \st_out[6]_INST_0_i_3 
       (.I0(\st_out[3]_INST_0_i_1_n_0 ),
        .I1(st_in[5]),
        .I2(m_pass[1]),
        .I3(m_pass[0]),
        .I4(\st_out[15]_INST_0_i_5_n_0 ),
        .I5(\st_out[4]_INST_0_i_1_n_0 ),
        .O(\st_out[6]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h2A80FFFF2A802A80)) 
    \st_out[6]_INST_0_i_4 
       (.I0(\st_out[7]_INST_0_i_2_n_0 ),
        .I1(syn_bit),
        .I2(p_is_syn),
        .I3(\st_out[6]_INST_0_i_6_n_0 ),
        .I4(\st_out[14]_INST_0_i_3_n_0 ),
        .I5(st_in[6]),
        .O(\st_out[6]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h9666699969996999)) 
    \st_out[6]_INST_0_i_5 
       (.I0(nb_push[1]),
        .I1(nb_push[0]),
        .I2(nb_valid[2]),
        .I3(nb_push[2]),
        .I4(nb_valid[3]),
        .I5(nb_push[3]),
        .O(\st_out[6]_INST_0_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \st_out[6]_INST_0_i_6 
       (.I0(st_in[6]),
        .I1(p_has_above),
        .I2(ab_defect),
        .I3(p_is_top),
        .O(\st_out[6]_INST_0_i_6_n_0 ));
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
    .INIT(64'hAAA2A0AAAAA2AAAA)) 
    \st_out[7]_INST_0_i_1 
       (.I0(st_in[7]),
        .I1(p_has_above),
        .I2(stage[2]),
        .I3(stage[1]),
        .I4(stage[0]),
        .I5(st_in[8]),
        .O(\st_out[7]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \st_out[7]_INST_0_i_2 
       (.I0(stage[2]),
        .I1(stage[1]),
        .I2(stage[0]),
        .O(\st_out[7]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
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
    .INIT(64'hFFFFFFFFAA8A0080)) 
    \st_out[8]_INST_0 
       (.I0(\st_out[15]_INST_0_i_2_n_0 ),
        .I1(st_in[8]),
        .I2(m_pass[0]),
        .I3(m_pass[1]),
        .I4(\st_out[8]_INST_0_i_1_n_0 ),
        .I5(\st_out[8]_INST_0_i_2_n_0 ),
        .O(st_out[8]));
  LUT6 #(
    .INIT(64'hFFFB00FBFF080008)) 
    \st_out[8]_INST_0_i_1 
       (.I0(\st_out[0]_INST_0_i_3_n_0 ),
        .I1(\st_out[3]_INST_0_i_1_n_0 ),
        .I2(\st_out[5]_INST_0_i_1_n_0 ),
        .I3(\st_out[4]_INST_0_i_1_n_0 ),
        .I4(\st_out[8]_INST_0_i_3_n_0 ),
        .I5(\st_out[8]_INST_0_i_4_n_0 ),
        .O(\st_out[8]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7370507050505050)) 
    \st_out[8]_INST_0_i_2 
       (.I0(\st_out[14]_INST_0_i_3_n_0 ),
        .I1(p_is_top),
        .I2(st_in[8]),
        .I3(p_has_above),
        .I4(ab_active),
        .I5(\st_out[7]_INST_0_i_2_n_0 ),
        .O(\st_out[8]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBAFFBAAA8A008AAA)) 
    \st_out[8]_INST_0_i_3 
       (.I0(nb_active[1]),
        .I1(\st_out[3]_INST_0_i_4_n_0 ),
        .I2(\st_out[13]_INST_0_i_7_n_0 ),
        .I3(\st_out[13]_INST_0_i_1_n_0 ),
        .I4(st_in[3]),
        .I5(nb_active[2]),
        .O(\st_out[8]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hBAFFBAAA8A008AAA)) 
    \st_out[8]_INST_0_i_4 
       (.I0(nb_active[3]),
        .I1(\st_out[3]_INST_0_i_4_n_0 ),
        .I2(\st_out[13]_INST_0_i_7_n_0 ),
        .I3(\st_out[13]_INST_0_i_1_n_0 ),
        .I4(st_in[3]),
        .I5(nb_active[0]),
        .O(\st_out[8]_INST_0_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hDDFDCCCC)) 
    \st_out[9]_INST_0 
       (.I0(\st_out[9]_INST_0_i_1_n_0 ),
        .I1(\st_out[9]_INST_0_i_2_n_0 ),
        .I2(p_id[0]),
        .I3(\st_out[9]_INST_0_i_3_n_0 ),
        .I4(\st_out[15]_INST_0_i_2_n_0 ),
        .O(st_out[9]));
  LUT6 #(
    .INIT(64'h0000770377777777)) 
    \st_out[9]_INST_0_i_1 
       (.I0(\st_out[15]_INST_0_i_1_n_0 ),
        .I1(st_in[9]),
        .I2(\st_out[13]_INST_0_i_5_n_0 ),
        .I3(\st_out[9]_INST_0_i_4_n_0 ),
        .I4(\st_out[9]_INST_0_i_5_n_0 ),
        .I5(\st_out[13]_INST_0_i_1_n_0 ),
        .O(\st_out[9]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFC1CF0000)) 
    \st_out[9]_INST_0_i_2 
       (.I0(p_has_above),
        .I1(stage[2]),
        .I2(stage[1]),
        .I3(stage[0]),
        .I4(st_in[9]),
        .I5(\st_out[9]_INST_0_i_6_n_0 ),
        .O(\st_out[9]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'h4F)) 
    \st_out[9]_INST_0_i_3 
       (.I0(m_pass[0]),
        .I1(m_pass[1]),
        .I2(\st_out[15]_INST_0_i_6_n_0 ),
        .O(\st_out[9]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \st_out[9]_INST_0_i_4 
       (.I0(\st_out[13]_INST_0_i_7_n_0 ),
        .I1(\st_out[13]_INST_0_i_6_n_0 ),
        .O(\st_out[9]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00D1FFFF00D10000)) 
    \st_out[9]_INST_0_i_5 
       (.I0(\st_out[9]_INST_0_i_7_n_0 ),
        .I1(\st_out[15]_INST_0_i_8_n_0 ),
        .I2(nb_cid[12]),
        .I3(\st_out[13]_INST_0_i_6_n_0 ),
        .I4(\st_out[13]_INST_0_i_7_n_0 ),
        .I5(nb_cid[18]),
        .O(\st_out[9]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFE0E0E0E0E0E0E0)) 
    \st_out[9]_INST_0_i_6 
       (.I0(st_in[9]),
        .I1(\st_out[14]_INST_0_i_8_n_0 ),
        .I2(\st_out[9]_INST_0_i_8_n_0 ),
        .I3(p_has_above),
        .I4(ab_cid[0]),
        .I5(\st_out[7]_INST_0_i_2_n_0 ),
        .O(\st_out[9]_INST_0_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT5 #(
    .INIT(32'h47444777)) 
    \st_out[9]_INST_0_i_7 
       (.I0(nb_cid[6]),
        .I1(\st_out[15]_INST_0_i_9_n_0 ),
        .I2(st_in[9]),
        .I3(\st_out[4]_INST_0_i_3_n_0 ),
        .I4(nb_cid[0]),
        .O(\st_out[9]_INST_0_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \st_out[9]_INST_0_i_8 
       (.I0(stage[1]),
        .I1(stage[2]),
        .I2(stage[0]),
        .O(\st_out[9]_INST_0_i_8_n_0 ));
endmodule

(* HAS_ABOVE = "0" *) (* ID = "0" *) (* IS_BND = "0" *) 
(* IS_BOT = "0" *) (* IS_TOP = "0" *) (* OFF_ACT = "8" *) 
(* OFF_BUSY = "0" *) (* OFF_CID = "9" *) (* OFF_DEF = "6" *) 
(* OFF_GRW = "2" *) (* OFF_PB = "15" *) (* OFF_PTR = "3" *) 
(* OFF_UNR = "1" *) (* OFF_WHL = "7" *) (* ONE_ONE = "0" *) 
(* ORIG_REF_NAME = "snowflake_pe" *) (* STW = "16" *) (* ST_DROP = "3'b001" *) 
(* ST_GH = "3'b100" *) (* ST_GW = "3'b010" *) (* ST_IDLE = "3'b000" *) 
(* ST_MH = "3'b101" *) (* ST_MW = "3'b011" *) (* SYN_IDX = "-1" *) 
(* ZZZ_ANCHOR = "0" *) 
module snowflake_pe__4
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
  input [5:0]ab_cid;
  input ab_active;
  input ab_whole;
  input ab_defect;
  input [2:0]ab_ptr;
  input [3:0]e_grown;
  input [3:0]nb_valid;
  input [23:0]nb_cid;
  input [3:0]nb_active;
  input [3:0]nb_grown;
  input [3:0]nb_push;
  input [1:0]m_pass;
  input [15:0]st_in;
  output [15:0]st_out;
  output o_busy_c;
  output o_pulse;
  output [3:0]o_push;
  input [5:0]p_id;
  input p_has_above;
  input p_is_bnd;
  input p_is_top;
  input p_is_bot;
  input p_is_syn;
  input zzz_never_used;

  wire \<const0> ;
  wire ab_active;
  wire [5:0]ab_cid;
  wire ab_defect;
  wire [2:0]ab_ptr;
  wire ab_whole;
  wire [3:0]e_grown;
  wire [1:0]m_pass;
  wire [3:0]nb_active;
  wire [23:0]nb_cid;
  wire [3:0]nb_grown;
  wire [3:0]nb_push;
  wire [3:0]nb_valid;
  wire p_has_above;
  wire [5:0]p_id;
  wire p_is_bnd;
  wire p_is_bot;
  wire p_is_syn;
  wire p_is_top;
  wire [15:0]st_in;
  wire [15:0]st_out;
  wire \st_out[0]_INST_0_i_10_n_0 ;
  wire \st_out[0]_INST_0_i_11_n_0 ;
  wire \st_out[0]_INST_0_i_12_n_0 ;
  wire \st_out[0]_INST_0_i_13_n_0 ;
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
  wire \st_out[12]_INST_0_i_6_n_0 ;
  wire \st_out[12]_INST_0_i_7_n_0 ;
  wire \st_out[13]_INST_0_i_10_n_0 ;
  wire \st_out[13]_INST_0_i_11_n_0 ;
  wire \st_out[13]_INST_0_i_12_n_0 ;
  wire \st_out[13]_INST_0_i_13_n_0 ;
  wire \st_out[13]_INST_0_i_14_n_0 ;
  wire \st_out[13]_INST_0_i_15_n_0 ;
  wire \st_out[13]_INST_0_i_16_n_0 ;
  wire \st_out[13]_INST_0_i_17_n_0 ;
  wire \st_out[13]_INST_0_i_18_n_0 ;
  wire \st_out[13]_INST_0_i_19_n_0 ;
  wire \st_out[13]_INST_0_i_1_n_0 ;
  wire \st_out[13]_INST_0_i_20_n_0 ;
  wire \st_out[13]_INST_0_i_21_n_0 ;
  wire \st_out[13]_INST_0_i_22_n_0 ;
  wire \st_out[13]_INST_0_i_23_n_0 ;
  wire \st_out[13]_INST_0_i_24_n_0 ;
  wire \st_out[13]_INST_0_i_25_n_0 ;
  wire \st_out[13]_INST_0_i_26_n_0 ;
  wire \st_out[13]_INST_0_i_27_n_0 ;
  wire \st_out[13]_INST_0_i_28_n_0 ;
  wire \st_out[13]_INST_0_i_29_n_0 ;
  wire \st_out[13]_INST_0_i_2_n_0 ;
  wire \st_out[13]_INST_0_i_30_n_0 ;
  wire \st_out[13]_INST_0_i_3_n_0 ;
  wire \st_out[13]_INST_0_i_4_n_0 ;
  wire \st_out[13]_INST_0_i_5_n_0 ;
  wire \st_out[13]_INST_0_i_6_n_0 ;
  wire \st_out[13]_INST_0_i_7_n_0 ;
  wire \st_out[13]_INST_0_i_8_n_0 ;
  wire \st_out[13]_INST_0_i_9_n_0 ;
  wire \st_out[14]_INST_0_i_10_n_0 ;
  wire \st_out[14]_INST_0_i_1_n_0 ;
  wire \st_out[14]_INST_0_i_2_n_0 ;
  wire \st_out[14]_INST_0_i_3_n_0 ;
  wire \st_out[14]_INST_0_i_4_n_0 ;
  wire \st_out[14]_INST_0_i_5_n_0 ;
  wire \st_out[14]_INST_0_i_6_n_0 ;
  wire \st_out[14]_INST_0_i_7_n_0 ;
  wire \st_out[14]_INST_0_i_8_n_0 ;
  wire \st_out[14]_INST_0_i_9_n_0 ;
  wire \st_out[15]_INST_0_i_10_n_0 ;
  wire \st_out[15]_INST_0_i_11_n_0 ;
  wire \st_out[15]_INST_0_i_12_n_0 ;
  wire \st_out[15]_INST_0_i_13_n_0 ;
  wire \st_out[15]_INST_0_i_14_n_0 ;
  wire \st_out[15]_INST_0_i_15_n_0 ;
  wire \st_out[15]_INST_0_i_16_n_0 ;
  wire \st_out[15]_INST_0_i_17_n_0 ;
  wire \st_out[15]_INST_0_i_18_n_0 ;
  wire \st_out[15]_INST_0_i_19_n_0 ;
  wire \st_out[15]_INST_0_i_1_n_0 ;
  wire \st_out[15]_INST_0_i_20_n_0 ;
  wire \st_out[15]_INST_0_i_21_n_0 ;
  wire \st_out[15]_INST_0_i_22_n_0 ;
  wire \st_out[15]_INST_0_i_23_n_0 ;
  wire \st_out[15]_INST_0_i_24_n_0 ;
  wire \st_out[15]_INST_0_i_2_n_0 ;
  wire \st_out[15]_INST_0_i_3_n_0 ;
  wire \st_out[15]_INST_0_i_4_n_0 ;
  wire \st_out[15]_INST_0_i_5_n_0 ;
  wire \st_out[15]_INST_0_i_6_n_0 ;
  wire \st_out[15]_INST_0_i_7_n_0 ;
  wire \st_out[15]_INST_0_i_8_n_0 ;
  wire \st_out[15]_INST_0_i_9_n_0 ;
  wire \st_out[2]_INST_0_i_10_n_0 ;
  wire \st_out[2]_INST_0_i_11_n_0 ;
  wire \st_out[2]_INST_0_i_12_n_0 ;
  wire \st_out[2]_INST_0_i_13_n_0 ;
  wire \st_out[2]_INST_0_i_14_n_0 ;
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
  wire \st_out[4]_INST_0_i_10_n_0 ;
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
  wire \st_out[6]_INST_0_i_1_n_0 ;
  wire \st_out[6]_INST_0_i_2_n_0 ;
  wire \st_out[6]_INST_0_i_3_n_0 ;
  wire \st_out[6]_INST_0_i_4_n_0 ;
  wire \st_out[6]_INST_0_i_5_n_0 ;
  wire \st_out[6]_INST_0_i_6_n_0 ;
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
  wire \st_out[9]_INST_0_i_4_n_0 ;
  wire \st_out[9]_INST_0_i_5_n_0 ;
  wire \st_out[9]_INST_0_i_6_n_0 ;
  wire \st_out[9]_INST_0_i_7_n_0 ;
  wire \st_out[9]_INST_0_i_8_n_0 ;
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
    .INIT(64'h00000000F3FCFFF6)) 
    \st_out[0]_INST_0 
       (.I0(\st_out[0]_INST_0_i_1_n_0 ),
        .I1(st_in[8]),
        .I2(\st_out[0]_INST_0_i_2_n_0 ),
        .I3(\st_out[0]_INST_0_i_3_n_0 ),
        .I4(\st_out[6]_INST_0_i_3_n_0 ),
        .I5(\st_out[0]_INST_0_i_4_n_0 ),
        .O(st_out[0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \st_out[0]_INST_0_i_1 
       (.I0(nb_active[1]),
        .I1(nb_active[2]),
        .I2(\st_out[4]_INST_0_i_1_n_0 ),
        .I3(nb_active[3]),
        .I4(\st_out[3]_INST_0_i_1_n_0 ),
        .I5(nb_active[0]),
        .O(\st_out[0]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF02AAFFFFFFFF)) 
    \st_out[0]_INST_0_i_10 
       (.I0(e_grown[0]),
        .I1(st_in[2]),
        .I2(\st_out[0]_INST_0_i_12_n_0 ),
        .I3(\st_out[0]_INST_0_i_13_n_0 ),
        .I4(\st_out[15]_INST_0_i_6_n_0 ),
        .I5(\st_out[4]_INST_0_i_3_n_0 ),
        .O(\st_out[0]_INST_0_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT4 #(
    .INIT(16'hDFFF)) 
    \st_out[0]_INST_0_i_11 
       (.I0(stage[1]),
        .I1(stage[2]),
        .I2(stage[0]),
        .I3(nb_grown[1]),
        .O(\st_out[0]_INST_0_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT4 #(
    .INIT(16'hDFFF)) 
    \st_out[0]_INST_0_i_12 
       (.I0(stage[1]),
        .I1(stage[2]),
        .I2(stage[0]),
        .I3(nb_grown[0]),
        .O(\st_out[0]_INST_0_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \st_out[0]_INST_0_i_13 
       (.I0(st_in[1]),
        .I1(\st_out[4]_INST_0_i_6_n_0 ),
        .O(\st_out[0]_INST_0_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT4 #(
    .INIT(16'h73F7)) 
    \st_out[0]_INST_0_i_2 
       (.I0(\st_out[0]_INST_0_i_5_n_0 ),
        .I1(\st_out[6]_INST_0_i_5_n_0 ),
        .I2(m_pass[0]),
        .I3(m_pass[1]),
        .O(\st_out[0]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \st_out[0]_INST_0_i_3 
       (.I0(st_in[6]),
        .I1(p_is_bnd),
        .O(\st_out[0]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFF0808FFFFFFFFFF)) 
    \st_out[0]_INST_0_i_4 
       (.I0(\st_out[0]_INST_0_i_5_n_0 ),
        .I1(m_pass[0]),
        .I2(m_pass[1]),
        .I3(stage[1]),
        .I4(stage[2]),
        .I5(stage[0]),
        .O(\st_out[0]_INST_0_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h0002)) 
    \st_out[0]_INST_0_i_5 
       (.I0(\st_out[13]_INST_0_i_7_n_0 ),
        .I1(\st_out[15]_INST_0_i_9_n_0 ),
        .I2(\st_out[0]_INST_0_i_6_n_0 ),
        .I3(\st_out[15]_INST_0_i_8_n_0 ),
        .O(\st_out[0]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAEEEAEAEFFFFAEAE)) 
    \st_out[0]_INST_0_i_6 
       (.I0(\st_out[0]_INST_0_i_7_n_0 ),
        .I1(\st_out[2]_INST_0_i_10_n_0 ),
        .I2(\st_out[2]_INST_0_i_9_n_0 ),
        .I3(\st_out[0]_INST_0_i_8_n_0 ),
        .I4(\st_out[2]_INST_0_i_7_n_0 ),
        .I5(\st_out[2]_INST_0_i_4_n_0 ),
        .O(\st_out[0]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEFEEEFEFEFEFE)) 
    \st_out[0]_INST_0_i_7 
       (.I0(\st_out[0]_INST_0_i_9_n_0 ),
        .I1(\st_out[0]_INST_0_i_10_n_0 ),
        .I2(\st_out[2]_INST_0_i_13_n_0 ),
        .I3(\st_out[2]_INST_0_i_11_n_0 ),
        .I4(\st_out[0]_INST_0_i_11_n_0 ),
        .I5(\st_out[2]_INST_0_i_12_n_0 ),
        .O(\st_out[0]_INST_0_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT4 #(
    .INIT(16'hDFFF)) 
    \st_out[0]_INST_0_i_8 
       (.I0(stage[1]),
        .I1(stage[2]),
        .I2(stage[0]),
        .I3(nb_grown[2]),
        .O(\st_out[0]_INST_0_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \st_out[0]_INST_0_i_9 
       (.I0(\st_out[2]_INST_0_i_6_n_0 ),
        .I1(\st_out[13]_INST_0_i_10_n_0 ),
        .I2(st_in[1]),
        .O(\st_out[0]_INST_0_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF200)) 
    \st_out[10]_INST_0 
       (.I0(\st_out[13]_INST_0_i_1_n_0 ),
        .I1(\st_out[10]_INST_0_i_1_n_0 ),
        .I2(\st_out[10]_INST_0_i_2_n_0 ),
        .I3(\st_out[15]_INST_0_i_2_n_0 ),
        .I4(\st_out[10]_INST_0_i_3_n_0 ),
        .O(st_out[10]));
  LUT6 #(
    .INIT(64'h000000FF1F1F00FF)) 
    \st_out[10]_INST_0_i_1 
       (.I0(st_in[10]),
        .I1(\st_out[13]_INST_0_i_5_n_0 ),
        .I2(\st_out[13]_INST_0_i_6_n_0 ),
        .I3(nb_cid[19]),
        .I4(\st_out[13]_INST_0_i_7_n_0 ),
        .I5(\st_out[10]_INST_0_i_4_n_0 ),
        .O(\st_out[10]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hEF202020)) 
    \st_out[10]_INST_0_i_2 
       (.I0(st_in[10]),
        .I1(m_pass[0]),
        .I2(m_pass[1]),
        .I3(\st_out[15]_INST_0_i_6_n_0 ),
        .I4(p_id[1]),
        .O(\st_out[10]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF333F3F3F2222222)) 
    \st_out[10]_INST_0_i_3 
       (.I0(\st_out[14]_INST_0_i_4_n_0 ),
        .I1(\st_out[14]_INST_0_i_3_n_0 ),
        .I2(\st_out[7]_INST_0_i_2_n_0 ),
        .I3(\st_out[10]_INST_0_i_5_n_0 ),
        .I4(p_has_above),
        .I5(st_in[10]),
        .O(\st_out[10]_INST_0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \st_out[10]_INST_0_i_4 
       (.I0(\st_out[10]_INST_0_i_6_n_0 ),
        .I1(\st_out[15]_INST_0_i_8_n_0 ),
        .I2(nb_cid[13]),
        .I3(\st_out[13]_INST_0_i_6_n_0 ),
        .O(\st_out[10]_INST_0_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT5 #(
    .INIT(32'hCCCCCD99)) 
    \st_out[10]_INST_0_i_5 
       (.I0(ab_cid[4]),
        .I1(ab_cid[1]),
        .I2(ab_cid[2]),
        .I3(ab_cid[3]),
        .I4(ab_cid[5]),
        .O(\st_out[10]_INST_0_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \st_out[10]_INST_0_i_6 
       (.I0(nb_cid[7]),
        .I1(\st_out[15]_INST_0_i_9_n_0 ),
        .I2(st_in[10]),
        .I3(\st_out[4]_INST_0_i_3_n_0 ),
        .I4(nb_cid[1]),
        .O(\st_out[10]_INST_0_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF200)) 
    \st_out[11]_INST_0 
       (.I0(\st_out[13]_INST_0_i_1_n_0 ),
        .I1(\st_out[11]_INST_0_i_1_n_0 ),
        .I2(\st_out[11]_INST_0_i_2_n_0 ),
        .I3(\st_out[15]_INST_0_i_2_n_0 ),
        .I4(\st_out[11]_INST_0_i_3_n_0 ),
        .O(st_out[11]));
  LUT6 #(
    .INIT(64'h000000FF1F1F00FF)) 
    \st_out[11]_INST_0_i_1 
       (.I0(st_in[11]),
        .I1(\st_out[13]_INST_0_i_5_n_0 ),
        .I2(\st_out[13]_INST_0_i_6_n_0 ),
        .I3(nb_cid[20]),
        .I4(\st_out[13]_INST_0_i_7_n_0 ),
        .I5(\st_out[11]_INST_0_i_4_n_0 ),
        .O(\st_out[11]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT5 #(
    .INIT(32'hEF202020)) 
    \st_out[11]_INST_0_i_2 
       (.I0(st_in[11]),
        .I1(m_pass[0]),
        .I2(m_pass[1]),
        .I3(\st_out[15]_INST_0_i_6_n_0 ),
        .I4(p_id[2]),
        .O(\st_out[11]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF3F2F32233223322)) 
    \st_out[11]_INST_0_i_3 
       (.I0(\st_out[14]_INST_0_i_4_n_0 ),
        .I1(\st_out[14]_INST_0_i_3_n_0 ),
        .I2(\st_out[7]_INST_0_i_2_n_0 ),
        .I3(st_in[11]),
        .I4(p_has_above),
        .I5(\st_out[11]_INST_0_i_5_n_0 ),
        .O(\st_out[11]_INST_0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \st_out[11]_INST_0_i_4 
       (.I0(\st_out[11]_INST_0_i_6_n_0 ),
        .I1(\st_out[15]_INST_0_i_8_n_0 ),
        .I2(nb_cid[14]),
        .I3(\st_out[13]_INST_0_i_6_n_0 ),
        .O(\st_out[11]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFAFAFAFAFAFAEBE)) 
    \st_out[11]_INST_0_i_5 
       (.I0(\st_out[14]_INST_0_i_6_n_0 ),
        .I1(ab_cid[4]),
        .I2(ab_cid[2]),
        .I3(ab_cid[3]),
        .I4(ab_cid[5]),
        .I5(ab_cid[1]),
        .O(\st_out[11]_INST_0_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \st_out[11]_INST_0_i_6 
       (.I0(nb_cid[8]),
        .I1(\st_out[15]_INST_0_i_9_n_0 ),
        .I2(st_in[11]),
        .I3(\st_out[4]_INST_0_i_3_n_0 ),
        .I4(nb_cid[2]),
        .O(\st_out[11]_INST_0_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF200)) 
    \st_out[12]_INST_0 
       (.I0(\st_out[13]_INST_0_i_1_n_0 ),
        .I1(\st_out[12]_INST_0_i_1_n_0 ),
        .I2(\st_out[12]_INST_0_i_2_n_0 ),
        .I3(\st_out[15]_INST_0_i_2_n_0 ),
        .I4(\st_out[12]_INST_0_i_3_n_0 ),
        .O(st_out[12]));
  LUT6 #(
    .INIT(64'h000000FF1F1F00FF)) 
    \st_out[12]_INST_0_i_1 
       (.I0(st_in[12]),
        .I1(\st_out[13]_INST_0_i_5_n_0 ),
        .I2(\st_out[13]_INST_0_i_6_n_0 ),
        .I3(nb_cid[21]),
        .I4(\st_out[13]_INST_0_i_7_n_0 ),
        .I5(\st_out[12]_INST_0_i_4_n_0 ),
        .O(\st_out[12]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT5 #(
    .INIT(32'hEF202020)) 
    \st_out[12]_INST_0_i_2 
       (.I0(st_in[12]),
        .I1(m_pass[0]),
        .I2(m_pass[1]),
        .I3(\st_out[15]_INST_0_i_6_n_0 ),
        .I4(p_id[3]),
        .O(\st_out[12]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF3F2F32233223322)) 
    \st_out[12]_INST_0_i_3 
       (.I0(\st_out[14]_INST_0_i_4_n_0 ),
        .I1(\st_out[14]_INST_0_i_3_n_0 ),
        .I2(\st_out[7]_INST_0_i_2_n_0 ),
        .I3(st_in[12]),
        .I4(p_has_above),
        .I5(\st_out[12]_INST_0_i_5_n_0 ),
        .O(\st_out[12]_INST_0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h00D1)) 
    \st_out[12]_INST_0_i_4 
       (.I0(\st_out[12]_INST_0_i_6_n_0 ),
        .I1(\st_out[15]_INST_0_i_8_n_0 ),
        .I2(nb_cid[15]),
        .I3(\st_out[13]_INST_0_i_6_n_0 ),
        .O(\st_out[12]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAAFFFFAAAAFEFFAA)) 
    \st_out[12]_INST_0_i_5 
       (.I0(\st_out[14]_INST_0_i_6_n_0 ),
        .I1(ab_cid[1]),
        .I2(ab_cid[5]),
        .I3(ab_cid[3]),
        .I4(ab_cid[2]),
        .I5(ab_cid[4]),
        .O(\st_out[12]_INST_0_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT3 #(
    .INIT(8'h47)) 
    \st_out[12]_INST_0_i_6 
       (.I0(nb_cid[9]),
        .I1(\st_out[15]_INST_0_i_9_n_0 ),
        .I2(\st_out[12]_INST_0_i_7_n_0 ),
        .O(\st_out[12]_INST_0_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \st_out[12]_INST_0_i_7 
       (.I0(st_in[12]),
        .I1(\st_out[4]_INST_0_i_3_n_0 ),
        .I2(nb_cid[3]),
        .O(\st_out[12]_INST_0_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF200)) 
    \st_out[13]_INST_0 
       (.I0(\st_out[13]_INST_0_i_1_n_0 ),
        .I1(\st_out[13]_INST_0_i_2_n_0 ),
        .I2(\st_out[13]_INST_0_i_3_n_0 ),
        .I3(\st_out[15]_INST_0_i_2_n_0 ),
        .I4(\st_out[13]_INST_0_i_4_n_0 ),
        .O(st_out[13]));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT3 #(
    .INIT(8'h0B)) 
    \st_out[13]_INST_0_i_1 
       (.I0(m_pass[0]),
        .I1(m_pass[1]),
        .I2(\st_out[15]_INST_0_i_6_n_0 ),
        .O(\st_out[13]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \st_out[13]_INST_0_i_10 
       (.I0(nb_cid[23]),
        .I1(nb_cid[21]),
        .I2(nb_cid[18]),
        .I3(nb_cid[20]),
        .I4(nb_cid[19]),
        .I5(nb_cid[22]),
        .O(\st_out[13]_INST_0_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT4 #(
    .INIT(16'h8AAA)) 
    \st_out[13]_INST_0_i_11 
       (.I0(\st_out[13]_INST_0_i_19_n_0 ),
        .I1(\st_out[2]_INST_0_i_9_n_0 ),
        .I2(e_grown[2]),
        .I3(nb_valid[2]),
        .O(\st_out[13]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h4F4444444F444F4F)) 
    \st_out[13]_INST_0_i_12 
       (.I0(nb_cid[22]),
        .I1(\st_out[13]_INST_0_i_20_n_0 ),
        .I2(nb_cid[21]),
        .I3(nb_cid[15]),
        .I4(\st_out[15]_INST_0_i_8_n_0 ),
        .I5(\st_out[12]_INST_0_i_6_n_0 ),
        .O(\st_out[13]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h10F110F1FFFF10F1)) 
    \st_out[13]_INST_0_i_13 
       (.I0(nb_cid[18]),
        .I1(\st_out[13]_INST_0_i_21_n_0 ),
        .I2(\st_out[13]_INST_0_i_22_n_0 ),
        .I3(nb_cid[19]),
        .I4(\st_out[13]_INST_0_i_23_n_0 ),
        .I5(nb_cid[20]),
        .O(\st_out[13]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h4F444FFF44444444)) 
    \st_out[13]_INST_0_i_14 
       (.I0(\st_out[13]_INST_0_i_24_n_0 ),
        .I1(nb_cid[21]),
        .I2(nb_cid[14]),
        .I3(\st_out[15]_INST_0_i_8_n_0 ),
        .I4(\st_out[11]_INST_0_i_6_n_0 ),
        .I5(nb_cid[20]),
        .O(\st_out[13]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h4F444FFF44444444)) 
    \st_out[13]_INST_0_i_15 
       (.I0(\st_out[14]_INST_0_i_10_n_0 ),
        .I1(nb_cid[23]),
        .I2(nb_cid[16]),
        .I3(\st_out[15]_INST_0_i_8_n_0 ),
        .I4(\st_out[13]_INST_0_i_18_n_0 ),
        .I5(nb_cid[22]),
        .O(\st_out[13]_INST_0_i_15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \st_out[13]_INST_0_i_16 
       (.I0(\st_out[14]_INST_0_i_10_n_0 ),
        .I1(nb_cid[23]),
        .O(\st_out[13]_INST_0_i_16_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \st_out[13]_INST_0_i_17 
       (.I0(\st_out[13]_INST_0_i_10_n_0 ),
        .I1(\st_out[2]_INST_0_i_6_n_0 ),
        .O(\st_out[13]_INST_0_i_17_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \st_out[13]_INST_0_i_18 
       (.I0(\st_out[13]_INST_0_i_25_n_0 ),
        .I1(nb_cid[10]),
        .I2(\st_out[15]_INST_0_i_9_n_0 ),
        .O(\st_out[13]_INST_0_i_18_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT5 #(
    .INIT(32'hF0F7F7F7)) 
    \st_out[13]_INST_0_i_19 
       (.I0(\st_out[4]_INST_0_i_6_n_0 ),
        .I1(e_grown[0]),
        .I2(st_in[1]),
        .I3(\st_out[15]_INST_0_i_24_n_0 ),
        .I4(e_grown[1]),
        .O(\st_out[13]_INST_0_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h000000FF1F1F00FF)) 
    \st_out[13]_INST_0_i_2 
       (.I0(st_in[13]),
        .I1(\st_out[13]_INST_0_i_5_n_0 ),
        .I2(\st_out[13]_INST_0_i_6_n_0 ),
        .I3(nb_cid[22]),
        .I4(\st_out[13]_INST_0_i_7_n_0 ),
        .I5(\st_out[13]_INST_0_i_8_n_0 ),
        .O(\st_out[13]_INST_0_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hCCA8)) 
    \st_out[13]_INST_0_i_20 
       (.I0(nb_cid[16]),
        .I1(\st_out[13]_INST_0_i_18_n_0 ),
        .I2(\st_out[13]_INST_0_i_26_n_0 ),
        .I3(\st_out[15]_INST_0_i_14_n_0 ),
        .O(\st_out[13]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF55DF00005510)) 
    \st_out[13]_INST_0_i_21 
       (.I0(nb_cid[12]),
        .I1(\st_out[15]_INST_0_i_10_n_0 ),
        .I2(\st_out[13]_INST_0_i_27_n_0 ),
        .I3(\st_out[15]_INST_0_i_13_n_0 ),
        .I4(\st_out[15]_INST_0_i_14_n_0 ),
        .I5(\st_out[9]_INST_0_i_7_n_0 ),
        .O(\st_out[13]_INST_0_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFAAEF0000AA20)) 
    \st_out[13]_INST_0_i_22 
       (.I0(nb_cid[13]),
        .I1(\st_out[15]_INST_0_i_10_n_0 ),
        .I2(\st_out[13]_INST_0_i_27_n_0 ),
        .I3(\st_out[15]_INST_0_i_13_n_0 ),
        .I4(\st_out[15]_INST_0_i_14_n_0 ),
        .I5(\st_out[10]_INST_0_i_6_n_0 ),
        .O(\st_out[13]_INST_0_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFAAEF0000AA20)) 
    \st_out[13]_INST_0_i_23 
       (.I0(nb_cid[14]),
        .I1(\st_out[15]_INST_0_i_10_n_0 ),
        .I2(\st_out[13]_INST_0_i_27_n_0 ),
        .I3(\st_out[15]_INST_0_i_13_n_0 ),
        .I4(\st_out[15]_INST_0_i_14_n_0 ),
        .I5(\st_out[11]_INST_0_i_6_n_0 ),
        .O(\st_out[13]_INST_0_i_23_n_0 ));
  LUT6 #(
    .INIT(64'h33333333AAAA3233)) 
    \st_out[13]_INST_0_i_24 
       (.I0(nb_cid[15]),
        .I1(\st_out[12]_INST_0_i_6_n_0 ),
        .I2(\st_out[13]_INST_0_i_28_n_0 ),
        .I3(\st_out[13]_INST_0_i_27_n_0 ),
        .I4(\st_out[15]_INST_0_i_13_n_0 ),
        .I5(\st_out[15]_INST_0_i_14_n_0 ),
        .O(\st_out[13]_INST_0_i_24_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \st_out[13]_INST_0_i_25 
       (.I0(st_in[13]),
        .I1(\st_out[4]_INST_0_i_3_n_0 ),
        .I2(nb_cid[4]),
        .O(\st_out[13]_INST_0_i_25_n_0 ));
  LUT6 #(
    .INIT(64'h5100515100000000)) 
    \st_out[13]_INST_0_i_26 
       (.I0(nb_cid[17]),
        .I1(\st_out[2]_INST_0_i_13_n_0 ),
        .I2(nb_cid[11]),
        .I3(nb_cid[5]),
        .I4(e_grown[0]),
        .I5(st_in[14]),
        .O(\st_out[13]_INST_0_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hEAFEAAAAFFFFEAFE)) 
    \st_out[13]_INST_0_i_27 
       (.I0(\st_out[13]_INST_0_i_29_n_0 ),
        .I1(\st_out[13]_INST_0_i_30_n_0 ),
        .I2(\st_out[10]_INST_0_i_6_n_0 ),
        .I3(nb_cid[13]),
        .I4(\st_out[11]_INST_0_i_6_n_0 ),
        .I5(nb_cid[14]),
        .O(\st_out[13]_INST_0_i_27_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \st_out[13]_INST_0_i_28 
       (.I0(nb_cid[16]),
        .I1(\st_out[13]_INST_0_i_18_n_0 ),
        .O(\st_out[13]_INST_0_i_28_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT4 #(
    .INIT(16'h5404)) 
    \st_out[13]_INST_0_i_29 
       (.I0(nb_cid[15]),
        .I1(\st_out[12]_INST_0_i_7_n_0 ),
        .I2(\st_out[15]_INST_0_i_9_n_0 ),
        .I3(nb_cid[9]),
        .O(\st_out[13]_INST_0_i_29_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT5 #(
    .INIT(32'hEF202020)) 
    \st_out[13]_INST_0_i_3 
       (.I0(st_in[13]),
        .I1(m_pass[0]),
        .I2(m_pass[1]),
        .I3(\st_out[15]_INST_0_i_6_n_0 ),
        .I4(p_id[4]),
        .O(\st_out[13]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h5555540400005404)) 
    \st_out[13]_INST_0_i_30 
       (.I0(nb_cid[12]),
        .I1(nb_cid[0]),
        .I2(\st_out[4]_INST_0_i_3_n_0 ),
        .I3(st_in[9]),
        .I4(\st_out[15]_INST_0_i_9_n_0 ),
        .I5(nb_cid[6]),
        .O(\st_out[13]_INST_0_i_30_n_0 ));
  LUT6 #(
    .INIT(64'hF3F2F32233223322)) 
    \st_out[13]_INST_0_i_4 
       (.I0(\st_out[14]_INST_0_i_4_n_0 ),
        .I1(\st_out[14]_INST_0_i_3_n_0 ),
        .I2(\st_out[7]_INST_0_i_2_n_0 ),
        .I3(st_in[13]),
        .I4(p_has_above),
        .I5(\st_out[13]_INST_0_i_9_n_0 ),
        .O(\st_out[13]_INST_0_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT5 #(
    .INIT(32'h4000FFFF)) 
    \st_out[13]_INST_0_i_5 
       (.I0(st_in[1]),
        .I1(\st_out[13]_INST_0_i_10_n_0 ),
        .I2(nb_valid[3]),
        .I3(e_grown[3]),
        .I4(\st_out[13]_INST_0_i_11_n_0 ),
        .O(\st_out[13]_INST_0_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \st_out[13]_INST_0_i_6 
       (.I0(\st_out[4]_INST_0_i_3_n_0 ),
        .I1(\st_out[4]_INST_0_i_4_n_0 ),
        .O(\st_out[13]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF0000FF51)) 
    \st_out[13]_INST_0_i_7 
       (.I0(\st_out[13]_INST_0_i_12_n_0 ),
        .I1(\st_out[13]_INST_0_i_13_n_0 ),
        .I2(\st_out[13]_INST_0_i_14_n_0 ),
        .I3(\st_out[13]_INST_0_i_15_n_0 ),
        .I4(\st_out[13]_INST_0_i_16_n_0 ),
        .I5(\st_out[13]_INST_0_i_17_n_0 ),
        .O(\st_out[13]_INST_0_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \st_out[13]_INST_0_i_8 
       (.I0(\st_out[13]_INST_0_i_18_n_0 ),
        .I1(\st_out[15]_INST_0_i_8_n_0 ),
        .I2(nb_cid[16]),
        .I3(\st_out[13]_INST_0_i_6_n_0 ),
        .O(\st_out[13]_INST_0_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hBFEA)) 
    \st_out[13]_INST_0_i_9 
       (.I0(\st_out[14]_INST_0_i_6_n_0 ),
        .I1(ab_cid[2]),
        .I2(ab_cid[3]),
        .I3(ab_cid[4]),
        .O(\st_out[13]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hF4FFF4FFF4FFF4F4)) 
    \st_out[14]_INST_0 
       (.I0(\st_out[14]_INST_0_i_1_n_0 ),
        .I1(\st_out[15]_INST_0_i_2_n_0 ),
        .I2(\st_out[14]_INST_0_i_2_n_0 ),
        .I3(\st_out[14]_INST_0_i_3_n_0 ),
        .I4(\st_out[14]_INST_0_i_4_n_0 ),
        .I5(st_in[14]),
        .O(st_out[14]));
  LUT6 #(
    .INIT(64'h2A2A002A2A2AAA2A)) 
    \st_out[14]_INST_0_i_1 
       (.I0(\st_out[14]_INST_0_i_5_n_0 ),
        .I1(p_id[5]),
        .I2(\st_out[15]_INST_0_i_6_n_0 ),
        .I3(m_pass[1]),
        .I4(m_pass[0]),
        .I5(st_in[14]),
        .O(\st_out[14]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT3 #(
    .INIT(8'h45)) 
    \st_out[14]_INST_0_i_10 
       (.I0(\st_out[15]_INST_0_i_21_n_0 ),
        .I1(nb_cid[17]),
        .I2(\st_out[2]_INST_0_i_10_n_0 ),
        .O(\st_out[14]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hBEBEBE0000000000)) 
    \st_out[14]_INST_0_i_2 
       (.I0(\st_out[14]_INST_0_i_6_n_0 ),
        .I1(ab_cid[5]),
        .I2(\st_out[14]_INST_0_i_7_n_0 ),
        .I3(p_has_above),
        .I4(st_in[14]),
        .I5(\st_out[7]_INST_0_i_2_n_0 ),
        .O(\st_out[14]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \st_out[14]_INST_0_i_3 
       (.I0(stage[0]),
        .I1(stage[2]),
        .I2(stage[1]),
        .O(\st_out[14]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \st_out[14]_INST_0_i_4 
       (.I0(stage[0]),
        .I1(stage[2]),
        .I2(stage[1]),
        .I3(\st_out[14]_INST_0_i_8_n_0 ),
        .O(\st_out[14]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h3737777737F77777)) 
    \st_out[14]_INST_0_i_5 
       (.I0(\st_out[14]_INST_0_i_9_n_0 ),
        .I1(\st_out[13]_INST_0_i_1_n_0 ),
        .I2(\st_out[13]_INST_0_i_7_n_0 ),
        .I3(\st_out[13]_INST_0_i_5_n_0 ),
        .I4(\st_out[13]_INST_0_i_6_n_0 ),
        .I5(st_in[14]),
        .O(\st_out[14]_INST_0_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h8000FFFF)) 
    \st_out[14]_INST_0_i_6 
       (.I0(ab_cid[1]),
        .I1(ab_cid[0]),
        .I2(ab_cid[5]),
        .I3(\st_out[14]_INST_0_i_7_n_0 ),
        .I4(p_has_above),
        .O(\st_out[14]_INST_0_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \st_out[14]_INST_0_i_7 
       (.I0(ab_cid[4]),
        .I1(ab_cid[3]),
        .I2(ab_cid[2]),
        .O(\st_out[14]_INST_0_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h4000)) 
    \st_out[14]_INST_0_i_8 
       (.I0(st_in[5]),
        .I1(st_in[3]),
        .I2(p_is_bot),
        .I3(st_in[4]),
        .O(\st_out[14]_INST_0_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \st_out[14]_INST_0_i_9 
       (.I0(\st_out[14]_INST_0_i_10_n_0 ),
        .I1(nb_cid[23]),
        .I2(\st_out[2]_INST_0_i_6_n_0 ),
        .O(\st_out[14]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h8A8A8A8A8ABA8A8A)) 
    \st_out[15]_INST_0 
       (.I0(st_in[15]),
        .I1(\st_out[15]_INST_0_i_1_n_0 ),
        .I2(\st_out[15]_INST_0_i_2_n_0 ),
        .I3(p_is_bnd),
        .I4(st_in[6]),
        .I5(\st_out[15]_INST_0_i_3_n_0 ),
        .O(st_out[15]));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \st_out[15]_INST_0_i_1 
       (.I0(m_pass[1]),
        .I1(m_pass[0]),
        .O(\st_out[15]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF444)) 
    \st_out[15]_INST_0_i_10 
       (.I0(\st_out[13]_INST_0_i_18_n_0 ),
        .I1(nb_cid[16]),
        .I2(\st_out[12]_INST_0_i_6_n_0 ),
        .I3(nb_cid[15]),
        .O(\st_out[15]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hF2FFF2FFF2FF22F2)) 
    \st_out[15]_INST_0_i_11 
       (.I0(nb_cid[14]),
        .I1(\st_out[11]_INST_0_i_6_n_0 ),
        .I2(nb_cid[13]),
        .I3(\st_out[10]_INST_0_i_6_n_0 ),
        .I4(nb_cid[12]),
        .I5(\st_out[9]_INST_0_i_7_n_0 ),
        .O(\st_out[15]_INST_0_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h1F11)) 
    \st_out[15]_INST_0_i_12 
       (.I0(\st_out[12]_INST_0_i_6_n_0 ),
        .I1(nb_cid[15]),
        .I2(nb_cid[14]),
        .I3(\st_out[11]_INST_0_i_6_n_0 ),
        .O(\st_out[15]_INST_0_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h1F11)) 
    \st_out[15]_INST_0_i_13 
       (.I0(\st_out[15]_INST_0_i_21_n_0 ),
        .I1(nb_cid[17]),
        .I2(nb_cid[16]),
        .I3(\st_out[13]_INST_0_i_18_n_0 ),
        .O(\st_out[15]_INST_0_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT4 #(
    .INIT(16'hFF8F)) 
    \st_out[15]_INST_0_i_14 
       (.I0(nb_cid[17]),
        .I1(\st_out[15]_INST_0_i_21_n_0 ),
        .I2(\st_out[2]_INST_0_i_10_n_0 ),
        .I3(\st_out[2]_INST_0_i_14_n_0 ),
        .O(\st_out[15]_INST_0_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    \st_out[15]_INST_0_i_15 
       (.I0(nb_cid[10]),
        .I1(\st_out[13]_INST_0_i_25_n_0 ),
        .I2(nb_cid[9]),
        .I3(\st_out[12]_INST_0_i_7_n_0 ),
        .O(\st_out[15]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFBBB222B2)) 
    \st_out[15]_INST_0_i_16 
       (.I0(\st_out[15]_INST_0_i_22_n_0 ),
        .I1(nb_cid[7]),
        .I2(nb_cid[1]),
        .I3(\st_out[4]_INST_0_i_3_n_0 ),
        .I4(st_in[10]),
        .I5(\st_out[15]_INST_0_i_23_n_0 ),
        .O(\st_out[15]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h4F444FFF44444444)) 
    \st_out[15]_INST_0_i_17 
       (.I0(\st_out[12]_INST_0_i_7_n_0 ),
        .I1(nb_cid[9]),
        .I2(st_in[11]),
        .I3(\st_out[4]_INST_0_i_3_n_0 ),
        .I4(nb_cid[2]),
        .I5(nb_cid[8]),
        .O(\st_out[15]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h20AAFFFF20AA20AA)) 
    \st_out[15]_INST_0_i_18 
       (.I0(nb_cid[11]),
        .I1(nb_cid[5]),
        .I2(e_grown[0]),
        .I3(st_in[14]),
        .I4(\st_out[13]_INST_0_i_25_n_0 ),
        .I5(nb_cid[10]),
        .O(\st_out[15]_INST_0_i_18_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT4 #(
    .INIT(16'h4404)) 
    \st_out[15]_INST_0_i_19 
       (.I0(nb_cid[11]),
        .I1(st_in[14]),
        .I2(e_grown[0]),
        .I3(nb_cid[5]),
        .O(\st_out[15]_INST_0_i_19_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \st_out[15]_INST_0_i_2 
       (.I0(stage[0]),
        .I1(stage[2]),
        .I2(stage[1]),
        .O(\st_out[15]_INST_0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \st_out[15]_INST_0_i_20 
       (.I0(\st_out[15]_INST_0_i_24_n_0 ),
        .I1(\st_out[2]_INST_0_i_13_n_0 ),
        .O(\st_out[15]_INST_0_i_20_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT5 #(
    .INIT(32'h5DFF5D5D)) 
    \st_out[15]_INST_0_i_21 
       (.I0(st_in[14]),
        .I1(e_grown[0]),
        .I2(nb_cid[5]),
        .I3(nb_cid[11]),
        .I4(\st_out[2]_INST_0_i_13_n_0 ),
        .O(\st_out[15]_INST_0_i_21_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT4 #(
    .INIT(16'h5404)) 
    \st_out[15]_INST_0_i_22 
       (.I0(nb_cid[6]),
        .I1(nb_cid[0]),
        .I2(\st_out[4]_INST_0_i_3_n_0 ),
        .I3(st_in[9]),
        .O(\st_out[15]_INST_0_i_22_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT4 #(
    .INIT(16'h5404)) 
    \st_out[15]_INST_0_i_23 
       (.I0(nb_cid[8]),
        .I1(nb_cid[2]),
        .I2(\st_out[4]_INST_0_i_3_n_0 ),
        .I3(st_in[11]),
        .O(\st_out[15]_INST_0_i_23_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \st_out[15]_INST_0_i_24 
       (.I0(nb_cid[7]),
        .I1(nb_cid[9]),
        .I2(nb_cid[8]),
        .I3(nb_cid[10]),
        .I4(nb_cid[11]),
        .I5(nb_cid[6]),
        .O(\st_out[15]_INST_0_i_24_n_0 ));
  LUT6 #(
    .INIT(64'h0003000000030A0A)) 
    \st_out[15]_INST_0_i_3 
       (.I0(\st_out[15]_INST_0_i_4_n_0 ),
        .I1(st_in[3]),
        .I2(\st_out[15]_INST_0_i_5_n_0 ),
        .I3(st_in[4]),
        .I4(\st_out[15]_INST_0_i_6_n_0 ),
        .I5(\st_out[15]_INST_0_i_7_n_0 ),
        .O(\st_out[15]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h54445454FFFFFFFF)) 
    \st_out[15]_INST_0_i_4 
       (.I0(\st_out[15]_INST_0_i_8_n_0 ),
        .I1(\st_out[15]_INST_0_i_9_n_0 ),
        .I2(\st_out[4]_INST_0_i_3_n_0 ),
        .I3(\st_out[13]_INST_0_i_5_n_0 ),
        .I4(st_in[3]),
        .I5(\st_out[13]_INST_0_i_7_n_0 ),
        .O(\st_out[15]_INST_0_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT5 #(
    .INIT(32'hFF007555)) 
    \st_out[15]_INST_0_i_5 
       (.I0(\st_out[13]_INST_0_i_7_n_0 ),
        .I1(\st_out[13]_INST_0_i_5_n_0 ),
        .I2(\st_out[13]_INST_0_i_6_n_0 ),
        .I3(st_in[5]),
        .I4(\st_out[15]_INST_0_i_6_n_0 ),
        .O(\st_out[15]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \st_out[15]_INST_0_i_6 
       (.I0(st_in[14]),
        .I1(st_in[12]),
        .I2(st_in[9]),
        .I3(st_in[11]),
        .I4(st_in[10]),
        .I5(st_in[13]),
        .O(\st_out[15]_INST_0_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT5 #(
    .INIT(32'hAAAA2000)) 
    \st_out[15]_INST_0_i_7 
       (.I0(\st_out[13]_INST_0_i_7_n_0 ),
        .I1(\st_out[13]_INST_0_i_5_n_0 ),
        .I2(\st_out[4]_INST_0_i_3_n_0 ),
        .I3(st_in[4]),
        .I4(\st_out[4]_INST_0_i_4_n_0 ),
        .O(\st_out[15]_INST_0_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h0000FF51)) 
    \st_out[15]_INST_0_i_8 
       (.I0(\st_out[15]_INST_0_i_10_n_0 ),
        .I1(\st_out[15]_INST_0_i_11_n_0 ),
        .I2(\st_out[15]_INST_0_i_12_n_0 ),
        .I3(\st_out[15]_INST_0_i_13_n_0 ),
        .I4(\st_out[15]_INST_0_i_14_n_0 ),
        .O(\st_out[15]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFF00AE)) 
    \st_out[15]_INST_0_i_9 
       (.I0(\st_out[15]_INST_0_i_15_n_0 ),
        .I1(\st_out[15]_INST_0_i_16_n_0 ),
        .I2(\st_out[15]_INST_0_i_17_n_0 ),
        .I3(\st_out[15]_INST_0_i_18_n_0 ),
        .I4(\st_out[15]_INST_0_i_19_n_0 ),
        .I5(\st_out[15]_INST_0_i_20_n_0 ),
        .O(\st_out[15]_INST_0_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT5 #(
    .INIT(32'hFCCF1400)) 
    \st_out[1]_INST_0 
       (.I0(\st_out[9]_INST_0_i_3_n_0 ),
        .I1(stage[1]),
        .I2(stage[2]),
        .I3(stage[0]),
        .I4(st_in[1]),
        .O(st_out[1]));
  LUT6 #(
    .INIT(64'hFFFFFFFF0000EAAA)) 
    \st_out[2]_INST_0 
       (.I0(st_in[2]),
        .I1(st_in[7]),
        .I2(st_in[8]),
        .I3(\st_out[2]_INST_0_i_1_n_0 ),
        .I4(\st_out[14]_INST_0_i_3_n_0 ),
        .I5(\st_out[2]_INST_0_i_2_n_0 ),
        .O(st_out[2]));
  LUT2 #(
    .INIT(4'h2)) 
    \st_out[2]_INST_0_i_1 
       (.I0(stage[1]),
        .I1(stage[2]),
        .O(\st_out[2]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \st_out[2]_INST_0_i_10 
       (.I0(\st_out[13]_INST_0_i_19_n_0 ),
        .I1(nb_valid[2]),
        .I2(e_grown[2]),
        .O(\st_out[2]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h5155555551555155)) 
    \st_out[2]_INST_0_i_11 
       (.I0(st_in[2]),
        .I1(nb_grown[0]),
        .I2(\st_out[2]_INST_0_i_8_n_0 ),
        .I3(e_grown[0]),
        .I4(st_in[1]),
        .I5(\st_out[4]_INST_0_i_6_n_0 ),
        .O(\st_out[2]_INST_0_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \st_out[2]_INST_0_i_12 
       (.I0(st_in[1]),
        .I1(\st_out[15]_INST_0_i_24_n_0 ),
        .O(\st_out[2]_INST_0_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT4 #(
    .INIT(16'h8AAA)) 
    \st_out[2]_INST_0_i_13 
       (.I0(e_grown[1]),
        .I1(st_in[1]),
        .I2(\st_out[4]_INST_0_i_6_n_0 ),
        .I3(e_grown[0]),
        .O(\st_out[2]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \st_out[2]_INST_0_i_14 
       (.I0(nb_cid[13]),
        .I1(nb_cid[15]),
        .I2(nb_cid[14]),
        .I3(nb_cid[16]),
        .I4(nb_cid[17]),
        .I5(nb_cid[12]),
        .O(\st_out[2]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h2F002F00FF000000)) 
    \st_out[2]_INST_0_i_2 
       (.I0(\st_out[2]_INST_0_i_3_n_0 ),
        .I1(\st_out[2]_INST_0_i_4_n_0 ),
        .I2(\st_out[2]_INST_0_i_5_n_0 ),
        .I3(\st_out[15]_INST_0_i_2_n_0 ),
        .I4(st_in[2]),
        .I5(\st_out[13]_INST_0_i_1_n_0 ),
        .O(\st_out[2]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \st_out[2]_INST_0_i_3 
       (.I0(st_in[1]),
        .I1(\st_out[13]_INST_0_i_10_n_0 ),
        .O(\st_out[2]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT5 #(
    .INIT(32'hF7FFFFFF)) 
    \st_out[2]_INST_0_i_4 
       (.I0(\st_out[2]_INST_0_i_6_n_0 ),
        .I1(stage[0]),
        .I2(stage[2]),
        .I3(stage[1]),
        .I4(nb_grown[3]),
        .O(\st_out[2]_INST_0_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hA2AAAAAA)) 
    \st_out[2]_INST_0_i_5 
       (.I0(\st_out[2]_INST_0_i_7_n_0 ),
        .I1(nb_grown[2]),
        .I2(\st_out[2]_INST_0_i_8_n_0 ),
        .I3(\st_out[2]_INST_0_i_9_n_0 ),
        .I4(\st_out[2]_INST_0_i_10_n_0 ),
        .O(\st_out[2]_INST_0_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \st_out[2]_INST_0_i_6 
       (.I0(\st_out[13]_INST_0_i_11_n_0 ),
        .I1(nb_valid[3]),
        .I2(e_grown[3]),
        .O(\st_out[2]_INST_0_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hA2AAAAAA)) 
    \st_out[2]_INST_0_i_7 
       (.I0(\st_out[2]_INST_0_i_11_n_0 ),
        .I1(nb_grown[1]),
        .I2(\st_out[2]_INST_0_i_8_n_0 ),
        .I3(\st_out[2]_INST_0_i_12_n_0 ),
        .I4(\st_out[2]_INST_0_i_13_n_0 ),
        .O(\st_out[2]_INST_0_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    \st_out[2]_INST_0_i_8 
       (.I0(stage[0]),
        .I1(stage[2]),
        .I2(stage[1]),
        .O(\st_out[2]_INST_0_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \st_out[2]_INST_0_i_9 
       (.I0(st_in[1]),
        .I1(\st_out[2]_INST_0_i_14_n_0 ),
        .O(\st_out[2]_INST_0_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hF4F4FFF4)) 
    \st_out[3]_INST_0 
       (.I0(\st_out[3]_INST_0_i_1_n_0 ),
        .I1(\st_out[15]_INST_0_i_2_n_0 ),
        .I2(\st_out[3]_INST_0_i_2_n_0 ),
        .I3(st_in[3]),
        .I4(\st_out[3]_INST_0_i_3_n_0 ),
        .O(st_out[3]));
  LUT4 #(
    .INIT(16'hB0BF)) 
    \st_out[3]_INST_0_i_1 
       (.I0(\st_out[3]_INST_0_i_4_n_0 ),
        .I1(\st_out[13]_INST_0_i_7_n_0 ),
        .I2(\st_out[13]_INST_0_i_1_n_0 ),
        .I3(st_in[3]),
        .O(\st_out[3]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0202020000000200)) 
    \st_out[3]_INST_0_i_2 
       (.I0(stage[0]),
        .I1(stage[1]),
        .I2(stage[2]),
        .I3(st_in[3]),
        .I4(p_has_above),
        .I5(ab_ptr[0]),
        .O(\st_out[3]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT4 #(
    .INIT(16'h7720)) 
    \st_out[3]_INST_0_i_3 
       (.I0(stage[1]),
        .I1(stage[2]),
        .I2(\st_out[14]_INST_0_i_8_n_0 ),
        .I3(stage[0]),
        .O(\st_out[3]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT5 #(
    .INIT(32'h0000FFD0)) 
    \st_out[3]_INST_0_i_4 
       (.I0(st_in[3]),
        .I1(\st_out[13]_INST_0_i_5_n_0 ),
        .I2(\st_out[4]_INST_0_i_3_n_0 ),
        .I3(\st_out[15]_INST_0_i_9_n_0 ),
        .I4(\st_out[15]_INST_0_i_8_n_0 ),
        .O(\st_out[3]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFF8F8F8F8F8F8F8)) 
    \st_out[4]_INST_0 
       (.I0(\st_out[15]_INST_0_i_2_n_0 ),
        .I1(\st_out[4]_INST_0_i_1_n_0 ),
        .I2(\st_out[4]_INST_0_i_2_n_0 ),
        .I3(\st_out[7]_INST_0_i_2_n_0 ),
        .I4(ab_ptr[1]),
        .I5(p_has_above),
        .O(st_out[4]));
  LUT6 #(
    .INIT(64'hAA20FFFFAA000000)) 
    \st_out[4]_INST_0_i_1 
       (.I0(\st_out[13]_INST_0_i_7_n_0 ),
        .I1(\st_out[13]_INST_0_i_5_n_0 ),
        .I2(\st_out[4]_INST_0_i_3_n_0 ),
        .I3(\st_out[4]_INST_0_i_4_n_0 ),
        .I4(\st_out[13]_INST_0_i_1_n_0 ),
        .I5(st_in[4]),
        .O(\st_out[4]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    \st_out[4]_INST_0_i_10 
       (.I0(nb_cid[5]),
        .I1(st_in[14]),
        .I2(nb_cid[4]),
        .I3(st_in[13]),
        .O(\st_out[4]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hA202A20AA222A22A)) 
    \st_out[4]_INST_0_i_2 
       (.I0(st_in[4]),
        .I1(stage[0]),
        .I2(stage[1]),
        .I3(stage[2]),
        .I4(p_has_above),
        .I5(\st_out[14]_INST_0_i_8_n_0 ),
        .O(\st_out[4]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEEEEEFEFEFFFE)) 
    \st_out[4]_INST_0_i_3 
       (.I0(\st_out[4]_INST_0_i_5_n_0 ),
        .I1(\st_out[4]_INST_0_i_6_n_0 ),
        .I2(\st_out[4]_INST_0_i_7_n_0 ),
        .I3(\st_out[4]_INST_0_i_8_n_0 ),
        .I4(\st_out[4]_INST_0_i_9_n_0 ),
        .I5(\st_out[4]_INST_0_i_10_n_0 ),
        .O(\st_out[4]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \st_out[4]_INST_0_i_4 
       (.I0(\st_out[15]_INST_0_i_9_n_0 ),
        .I1(\st_out[15]_INST_0_i_8_n_0 ),
        .O(\st_out[4]_INST_0_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT3 #(
    .INIT(8'h4F)) 
    \st_out[4]_INST_0_i_5 
       (.I0(st_in[14]),
        .I1(nb_cid[5]),
        .I2(e_grown[0]),
        .O(\st_out[4]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \st_out[4]_INST_0_i_6 
       (.I0(nb_cid[1]),
        .I1(nb_cid[3]),
        .I2(nb_cid[2]),
        .I3(nb_cid[4]),
        .I4(nb_cid[5]),
        .I5(nb_cid[0]),
        .O(\st_out[4]_INST_0_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    \st_out[4]_INST_0_i_7 
       (.I0(st_in[12]),
        .I1(nb_cid[3]),
        .I2(st_in[13]),
        .I3(nb_cid[4]),
        .O(\st_out[4]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hF2FFF2FF22F2F2FF)) 
    \st_out[4]_INST_0_i_8 
       (.I0(nb_cid[2]),
        .I1(st_in[11]),
        .I2(nb_cid[1]),
        .I3(st_in[10]),
        .I4(st_in[9]),
        .I5(nb_cid[0]),
        .O(\st_out[4]_INST_0_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    \st_out[4]_INST_0_i_9 
       (.I0(nb_cid[3]),
        .I1(st_in[12]),
        .I2(nb_cid[2]),
        .I3(st_in[11]),
        .O(\st_out[4]_INST_0_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT5 #(
    .INIT(32'hFFFF0880)) 
    \st_out[5]_INST_0 
       (.I0(\st_out[5]_INST_0_i_1_n_0 ),
        .I1(stage[0]),
        .I2(stage[2]),
        .I3(stage[1]),
        .I4(\st_out[5]_INST_0_i_2_n_0 ),
        .O(st_out[5]));
  LUT6 #(
    .INIT(64'hFFFF0000BFBB1111)) 
    \st_out[5]_INST_0_i_1 
       (.I0(\st_out[15]_INST_0_i_1_n_0 ),
        .I1(\st_out[13]_INST_0_i_7_n_0 ),
        .I2(\st_out[13]_INST_0_i_5_n_0 ),
        .I3(\st_out[13]_INST_0_i_6_n_0 ),
        .I4(st_in[5]),
        .I5(\st_out[15]_INST_0_i_6_n_0 ),
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
    .INIT(64'hFFFFFFFFA6550000)) 
    \st_out[6]_INST_0 
       (.I0(\st_out[6]_INST_0_i_1_n_0 ),
        .I1(\st_out[6]_INST_0_i_2_n_0 ),
        .I2(\st_out[6]_INST_0_i_3_n_0 ),
        .I3(st_in[6]),
        .I4(\st_out[15]_INST_0_i_2_n_0 ),
        .I5(\st_out[6]_INST_0_i_4_n_0 ),
        .O(st_out[6]));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT3 #(
    .INIT(8'hF4)) 
    \st_out[6]_INST_0_i_1 
       (.I0(m_pass[1]),
        .I1(m_pass[0]),
        .I2(\st_out[6]_INST_0_i_5_n_0 ),
        .O(\st_out[6]_INST_0_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h45)) 
    \st_out[6]_INST_0_i_2 
       (.I0(p_is_bnd),
        .I1(m_pass[1]),
        .I2(m_pass[0]),
        .O(\st_out[6]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000000020AA2A)) 
    \st_out[6]_INST_0_i_3 
       (.I0(\st_out[3]_INST_0_i_1_n_0 ),
        .I1(st_in[5]),
        .I2(m_pass[1]),
        .I3(m_pass[0]),
        .I4(\st_out[15]_INST_0_i_5_n_0 ),
        .I5(\st_out[4]_INST_0_i_1_n_0 ),
        .O(\st_out[6]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h2A80FFFF2A802A80)) 
    \st_out[6]_INST_0_i_4 
       (.I0(\st_out[7]_INST_0_i_2_n_0 ),
        .I1(syn_bit),
        .I2(p_is_syn),
        .I3(\st_out[6]_INST_0_i_6_n_0 ),
        .I4(\st_out[14]_INST_0_i_3_n_0 ),
        .I5(st_in[6]),
        .O(\st_out[6]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h9666699969996999)) 
    \st_out[6]_INST_0_i_5 
       (.I0(nb_push[1]),
        .I1(nb_push[0]),
        .I2(nb_valid[2]),
        .I3(nb_push[2]),
        .I4(nb_valid[3]),
        .I5(nb_push[3]),
        .O(\st_out[6]_INST_0_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \st_out[6]_INST_0_i_6 
       (.I0(st_in[6]),
        .I1(p_has_above),
        .I2(ab_defect),
        .I3(p_is_top),
        .O(\st_out[6]_INST_0_i_6_n_0 ));
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
    .INIT(64'hAAA2A0AAAAA2AAAA)) 
    \st_out[7]_INST_0_i_1 
       (.I0(st_in[7]),
        .I1(p_has_above),
        .I2(stage[2]),
        .I3(stage[1]),
        .I4(stage[0]),
        .I5(st_in[8]),
        .O(\st_out[7]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \st_out[7]_INST_0_i_2 
       (.I0(stage[2]),
        .I1(stage[1]),
        .I2(stage[0]),
        .O(\st_out[7]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
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
    .INIT(64'hFFFFFFFFAA8A0080)) 
    \st_out[8]_INST_0 
       (.I0(\st_out[15]_INST_0_i_2_n_0 ),
        .I1(st_in[8]),
        .I2(m_pass[0]),
        .I3(m_pass[1]),
        .I4(\st_out[8]_INST_0_i_1_n_0 ),
        .I5(\st_out[8]_INST_0_i_2_n_0 ),
        .O(st_out[8]));
  LUT6 #(
    .INIT(64'hFFFB00FBFF080008)) 
    \st_out[8]_INST_0_i_1 
       (.I0(\st_out[0]_INST_0_i_3_n_0 ),
        .I1(\st_out[3]_INST_0_i_1_n_0 ),
        .I2(\st_out[5]_INST_0_i_1_n_0 ),
        .I3(\st_out[4]_INST_0_i_1_n_0 ),
        .I4(\st_out[8]_INST_0_i_3_n_0 ),
        .I5(\st_out[8]_INST_0_i_4_n_0 ),
        .O(\st_out[8]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7370507050505050)) 
    \st_out[8]_INST_0_i_2 
       (.I0(\st_out[14]_INST_0_i_3_n_0 ),
        .I1(p_is_top),
        .I2(st_in[8]),
        .I3(p_has_above),
        .I4(ab_active),
        .I5(\st_out[7]_INST_0_i_2_n_0 ),
        .O(\st_out[8]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBAFFBAAA8A008AAA)) 
    \st_out[8]_INST_0_i_3 
       (.I0(nb_active[1]),
        .I1(\st_out[3]_INST_0_i_4_n_0 ),
        .I2(\st_out[13]_INST_0_i_7_n_0 ),
        .I3(\st_out[13]_INST_0_i_1_n_0 ),
        .I4(st_in[3]),
        .I5(nb_active[2]),
        .O(\st_out[8]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hBAFFBAAA8A008AAA)) 
    \st_out[8]_INST_0_i_4 
       (.I0(nb_active[3]),
        .I1(\st_out[3]_INST_0_i_4_n_0 ),
        .I2(\st_out[13]_INST_0_i_7_n_0 ),
        .I3(\st_out[13]_INST_0_i_1_n_0 ),
        .I4(st_in[3]),
        .I5(nb_active[0]),
        .O(\st_out[8]_INST_0_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hDDFDCCCC)) 
    \st_out[9]_INST_0 
       (.I0(\st_out[9]_INST_0_i_1_n_0 ),
        .I1(\st_out[9]_INST_0_i_2_n_0 ),
        .I2(p_id[0]),
        .I3(\st_out[9]_INST_0_i_3_n_0 ),
        .I4(\st_out[15]_INST_0_i_2_n_0 ),
        .O(st_out[9]));
  LUT6 #(
    .INIT(64'h0000770377777777)) 
    \st_out[9]_INST_0_i_1 
       (.I0(\st_out[15]_INST_0_i_1_n_0 ),
        .I1(st_in[9]),
        .I2(\st_out[13]_INST_0_i_5_n_0 ),
        .I3(\st_out[9]_INST_0_i_4_n_0 ),
        .I4(\st_out[9]_INST_0_i_5_n_0 ),
        .I5(\st_out[13]_INST_0_i_1_n_0 ),
        .O(\st_out[9]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFC1CF0000)) 
    \st_out[9]_INST_0_i_2 
       (.I0(p_has_above),
        .I1(stage[2]),
        .I2(stage[1]),
        .I3(stage[0]),
        .I4(st_in[9]),
        .I5(\st_out[9]_INST_0_i_6_n_0 ),
        .O(\st_out[9]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT3 #(
    .INIT(8'h4F)) 
    \st_out[9]_INST_0_i_3 
       (.I0(m_pass[0]),
        .I1(m_pass[1]),
        .I2(\st_out[15]_INST_0_i_6_n_0 ),
        .O(\st_out[9]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \st_out[9]_INST_0_i_4 
       (.I0(\st_out[13]_INST_0_i_7_n_0 ),
        .I1(\st_out[13]_INST_0_i_6_n_0 ),
        .O(\st_out[9]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00D1FFFF00D10000)) 
    \st_out[9]_INST_0_i_5 
       (.I0(\st_out[9]_INST_0_i_7_n_0 ),
        .I1(\st_out[15]_INST_0_i_8_n_0 ),
        .I2(nb_cid[12]),
        .I3(\st_out[13]_INST_0_i_6_n_0 ),
        .I4(\st_out[13]_INST_0_i_7_n_0 ),
        .I5(nb_cid[18]),
        .O(\st_out[9]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFE0E0E0E0E0E0E0)) 
    \st_out[9]_INST_0_i_6 
       (.I0(st_in[9]),
        .I1(\st_out[14]_INST_0_i_8_n_0 ),
        .I2(\st_out[9]_INST_0_i_8_n_0 ),
        .I3(p_has_above),
        .I4(ab_cid[0]),
        .I5(\st_out[7]_INST_0_i_2_n_0 ),
        .O(\st_out[9]_INST_0_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT5 #(
    .INIT(32'h47444777)) 
    \st_out[9]_INST_0_i_7 
       (.I0(nb_cid[6]),
        .I1(\st_out[15]_INST_0_i_9_n_0 ),
        .I2(st_in[9]),
        .I3(\st_out[4]_INST_0_i_3_n_0 ),
        .I4(nb_cid[0]),
        .O(\st_out[9]_INST_0_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \st_out[9]_INST_0_i_8 
       (.I0(stage[1]),
        .I1(stage[2]),
        .I2(stage[0]),
        .O(\st_out[9]_INST_0_i_8_n_0 ));
endmodule

(* HAS_ABOVE = "0" *) (* ID = "0" *) (* IS_BND = "0" *) 
(* IS_BOT = "0" *) (* IS_TOP = "0" *) (* OFF_ACT = "8" *) 
(* OFF_BUSY = "0" *) (* OFF_CID = "9" *) (* OFF_DEF = "6" *) 
(* OFF_GRW = "2" *) (* OFF_PB = "15" *) (* OFF_PTR = "3" *) 
(* OFF_UNR = "1" *) (* OFF_WHL = "7" *) (* ONE_ONE = "0" *) 
(* ORIG_REF_NAME = "snowflake_pe" *) (* STW = "16" *) (* ST_DROP = "3'b001" *) 
(* ST_GH = "3'b100" *) (* ST_GW = "3'b010" *) (* ST_IDLE = "3'b000" *) 
(* ST_MH = "3'b101" *) (* ST_MW = "3'b011" *) (* SYN_IDX = "-1" *) 
(* ZZZ_ANCHOR = "0" *) 
module snowflake_pe__5
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
  input [5:0]ab_cid;
  input ab_active;
  input ab_whole;
  input ab_defect;
  input [2:0]ab_ptr;
  input [3:0]e_grown;
  input [3:0]nb_valid;
  input [23:0]nb_cid;
  input [3:0]nb_active;
  input [3:0]nb_grown;
  input [3:0]nb_push;
  input [1:0]m_pass;
  input [15:0]st_in;
  output [15:0]st_out;
  output o_busy_c;
  output o_pulse;
  output [3:0]o_push;
  input [5:0]p_id;
  input p_has_above;
  input p_is_bnd;
  input p_is_top;
  input p_is_bot;
  input p_is_syn;
  input zzz_never_used;

  wire \<const0> ;
  wire ab_active;
  wire [5:0]ab_cid;
  wire ab_defect;
  wire [2:0]ab_ptr;
  wire ab_whole;
  wire [3:0]e_grown;
  wire [1:0]m_pass;
  wire [3:0]nb_active;
  wire [23:0]nb_cid;
  wire [3:0]nb_grown;
  wire [3:0]nb_push;
  wire [3:0]nb_valid;
  wire p_has_above;
  wire [5:0]p_id;
  wire p_is_bnd;
  wire p_is_bot;
  wire p_is_syn;
  wire p_is_top;
  wire [15:0]st_in;
  wire [15:0]st_out;
  wire \st_out[0]_INST_0_i_10_n_0 ;
  wire \st_out[0]_INST_0_i_11_n_0 ;
  wire \st_out[0]_INST_0_i_12_n_0 ;
  wire \st_out[0]_INST_0_i_13_n_0 ;
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
  wire \st_out[12]_INST_0_i_6_n_0 ;
  wire \st_out[12]_INST_0_i_7_n_0 ;
  wire \st_out[13]_INST_0_i_10_n_0 ;
  wire \st_out[13]_INST_0_i_11_n_0 ;
  wire \st_out[13]_INST_0_i_12_n_0 ;
  wire \st_out[13]_INST_0_i_13_n_0 ;
  wire \st_out[13]_INST_0_i_14_n_0 ;
  wire \st_out[13]_INST_0_i_15_n_0 ;
  wire \st_out[13]_INST_0_i_16_n_0 ;
  wire \st_out[13]_INST_0_i_17_n_0 ;
  wire \st_out[13]_INST_0_i_18_n_0 ;
  wire \st_out[13]_INST_0_i_19_n_0 ;
  wire \st_out[13]_INST_0_i_1_n_0 ;
  wire \st_out[13]_INST_0_i_20_n_0 ;
  wire \st_out[13]_INST_0_i_21_n_0 ;
  wire \st_out[13]_INST_0_i_22_n_0 ;
  wire \st_out[13]_INST_0_i_23_n_0 ;
  wire \st_out[13]_INST_0_i_24_n_0 ;
  wire \st_out[13]_INST_0_i_25_n_0 ;
  wire \st_out[13]_INST_0_i_26_n_0 ;
  wire \st_out[13]_INST_0_i_27_n_0 ;
  wire \st_out[13]_INST_0_i_28_n_0 ;
  wire \st_out[13]_INST_0_i_29_n_0 ;
  wire \st_out[13]_INST_0_i_2_n_0 ;
  wire \st_out[13]_INST_0_i_30_n_0 ;
  wire \st_out[13]_INST_0_i_3_n_0 ;
  wire \st_out[13]_INST_0_i_4_n_0 ;
  wire \st_out[13]_INST_0_i_5_n_0 ;
  wire \st_out[13]_INST_0_i_6_n_0 ;
  wire \st_out[13]_INST_0_i_7_n_0 ;
  wire \st_out[13]_INST_0_i_8_n_0 ;
  wire \st_out[13]_INST_0_i_9_n_0 ;
  wire \st_out[14]_INST_0_i_10_n_0 ;
  wire \st_out[14]_INST_0_i_1_n_0 ;
  wire \st_out[14]_INST_0_i_2_n_0 ;
  wire \st_out[14]_INST_0_i_3_n_0 ;
  wire \st_out[14]_INST_0_i_4_n_0 ;
  wire \st_out[14]_INST_0_i_5_n_0 ;
  wire \st_out[14]_INST_0_i_6_n_0 ;
  wire \st_out[14]_INST_0_i_7_n_0 ;
  wire \st_out[14]_INST_0_i_8_n_0 ;
  wire \st_out[14]_INST_0_i_9_n_0 ;
  wire \st_out[15]_INST_0_i_10_n_0 ;
  wire \st_out[15]_INST_0_i_11_n_0 ;
  wire \st_out[15]_INST_0_i_12_n_0 ;
  wire \st_out[15]_INST_0_i_13_n_0 ;
  wire \st_out[15]_INST_0_i_14_n_0 ;
  wire \st_out[15]_INST_0_i_15_n_0 ;
  wire \st_out[15]_INST_0_i_16_n_0 ;
  wire \st_out[15]_INST_0_i_17_n_0 ;
  wire \st_out[15]_INST_0_i_18_n_0 ;
  wire \st_out[15]_INST_0_i_19_n_0 ;
  wire \st_out[15]_INST_0_i_1_n_0 ;
  wire \st_out[15]_INST_0_i_20_n_0 ;
  wire \st_out[15]_INST_0_i_21_n_0 ;
  wire \st_out[15]_INST_0_i_22_n_0 ;
  wire \st_out[15]_INST_0_i_23_n_0 ;
  wire \st_out[15]_INST_0_i_24_n_0 ;
  wire \st_out[15]_INST_0_i_2_n_0 ;
  wire \st_out[15]_INST_0_i_3_n_0 ;
  wire \st_out[15]_INST_0_i_4_n_0 ;
  wire \st_out[15]_INST_0_i_5_n_0 ;
  wire \st_out[15]_INST_0_i_6_n_0 ;
  wire \st_out[15]_INST_0_i_7_n_0 ;
  wire \st_out[15]_INST_0_i_8_n_0 ;
  wire \st_out[15]_INST_0_i_9_n_0 ;
  wire \st_out[2]_INST_0_i_10_n_0 ;
  wire \st_out[2]_INST_0_i_11_n_0 ;
  wire \st_out[2]_INST_0_i_12_n_0 ;
  wire \st_out[2]_INST_0_i_13_n_0 ;
  wire \st_out[2]_INST_0_i_14_n_0 ;
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
  wire \st_out[4]_INST_0_i_10_n_0 ;
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
  wire \st_out[6]_INST_0_i_1_n_0 ;
  wire \st_out[6]_INST_0_i_2_n_0 ;
  wire \st_out[6]_INST_0_i_3_n_0 ;
  wire \st_out[6]_INST_0_i_4_n_0 ;
  wire \st_out[6]_INST_0_i_5_n_0 ;
  wire \st_out[6]_INST_0_i_6_n_0 ;
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
  wire \st_out[9]_INST_0_i_4_n_0 ;
  wire \st_out[9]_INST_0_i_5_n_0 ;
  wire \st_out[9]_INST_0_i_6_n_0 ;
  wire \st_out[9]_INST_0_i_7_n_0 ;
  wire \st_out[9]_INST_0_i_8_n_0 ;
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
    .INIT(64'h00000000F3FCFFF6)) 
    \st_out[0]_INST_0 
       (.I0(\st_out[0]_INST_0_i_1_n_0 ),
        .I1(st_in[8]),
        .I2(\st_out[0]_INST_0_i_2_n_0 ),
        .I3(\st_out[0]_INST_0_i_3_n_0 ),
        .I4(\st_out[6]_INST_0_i_3_n_0 ),
        .I5(\st_out[0]_INST_0_i_4_n_0 ),
        .O(st_out[0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \st_out[0]_INST_0_i_1 
       (.I0(nb_active[1]),
        .I1(nb_active[2]),
        .I2(\st_out[4]_INST_0_i_1_n_0 ),
        .I3(nb_active[3]),
        .I4(\st_out[3]_INST_0_i_1_n_0 ),
        .I5(nb_active[0]),
        .O(\st_out[0]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF02AAFFFFFFFF)) 
    \st_out[0]_INST_0_i_10 
       (.I0(e_grown[0]),
        .I1(st_in[2]),
        .I2(\st_out[0]_INST_0_i_12_n_0 ),
        .I3(\st_out[0]_INST_0_i_13_n_0 ),
        .I4(\st_out[15]_INST_0_i_6_n_0 ),
        .I5(\st_out[4]_INST_0_i_3_n_0 ),
        .O(\st_out[0]_INST_0_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair135" *) 
  LUT4 #(
    .INIT(16'hDFFF)) 
    \st_out[0]_INST_0_i_11 
       (.I0(stage[1]),
        .I1(stage[2]),
        .I2(stage[0]),
        .I3(nb_grown[1]),
        .O(\st_out[0]_INST_0_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair135" *) 
  LUT4 #(
    .INIT(16'hDFFF)) 
    \st_out[0]_INST_0_i_12 
       (.I0(stage[1]),
        .I1(stage[2]),
        .I2(stage[0]),
        .I3(nb_grown[0]),
        .O(\st_out[0]_INST_0_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair140" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \st_out[0]_INST_0_i_13 
       (.I0(st_in[1]),
        .I1(\st_out[4]_INST_0_i_6_n_0 ),
        .O(\st_out[0]_INST_0_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair124" *) 
  LUT4 #(
    .INIT(16'h73F7)) 
    \st_out[0]_INST_0_i_2 
       (.I0(\st_out[0]_INST_0_i_5_n_0 ),
        .I1(\st_out[6]_INST_0_i_5_n_0 ),
        .I2(m_pass[0]),
        .I3(m_pass[1]),
        .O(\st_out[0]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair134" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \st_out[0]_INST_0_i_3 
       (.I0(st_in[6]),
        .I1(p_is_bnd),
        .O(\st_out[0]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFF0808FFFFFFFFFF)) 
    \st_out[0]_INST_0_i_4 
       (.I0(\st_out[0]_INST_0_i_5_n_0 ),
        .I1(m_pass[0]),
        .I2(m_pass[1]),
        .I3(stage[1]),
        .I4(stage[2]),
        .I5(stage[0]),
        .O(\st_out[0]_INST_0_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h0002)) 
    \st_out[0]_INST_0_i_5 
       (.I0(\st_out[13]_INST_0_i_7_n_0 ),
        .I1(\st_out[15]_INST_0_i_9_n_0 ),
        .I2(\st_out[0]_INST_0_i_6_n_0 ),
        .I3(\st_out[15]_INST_0_i_8_n_0 ),
        .O(\st_out[0]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAEEEAEAEFFFFAEAE)) 
    \st_out[0]_INST_0_i_6 
       (.I0(\st_out[0]_INST_0_i_7_n_0 ),
        .I1(\st_out[2]_INST_0_i_10_n_0 ),
        .I2(\st_out[2]_INST_0_i_9_n_0 ),
        .I3(\st_out[0]_INST_0_i_8_n_0 ),
        .I4(\st_out[2]_INST_0_i_7_n_0 ),
        .I5(\st_out[2]_INST_0_i_4_n_0 ),
        .O(\st_out[0]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEFEEEFEFEFEFE)) 
    \st_out[0]_INST_0_i_7 
       (.I0(\st_out[0]_INST_0_i_9_n_0 ),
        .I1(\st_out[0]_INST_0_i_10_n_0 ),
        .I2(\st_out[2]_INST_0_i_13_n_0 ),
        .I3(\st_out[2]_INST_0_i_11_n_0 ),
        .I4(\st_out[0]_INST_0_i_11_n_0 ),
        .I5(\st_out[2]_INST_0_i_12_n_0 ),
        .O(\st_out[0]_INST_0_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair136" *) 
  LUT4 #(
    .INIT(16'hDFFF)) 
    \st_out[0]_INST_0_i_8 
       (.I0(stage[1]),
        .I1(stage[2]),
        .I2(stage[0]),
        .I3(nb_grown[2]),
        .O(\st_out[0]_INST_0_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair138" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \st_out[0]_INST_0_i_9 
       (.I0(\st_out[2]_INST_0_i_6_n_0 ),
        .I1(\st_out[13]_INST_0_i_10_n_0 ),
        .I2(st_in[1]),
        .O(\st_out[0]_INST_0_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF200)) 
    \st_out[10]_INST_0 
       (.I0(\st_out[13]_INST_0_i_1_n_0 ),
        .I1(\st_out[10]_INST_0_i_1_n_0 ),
        .I2(\st_out[10]_INST_0_i_2_n_0 ),
        .I3(\st_out[15]_INST_0_i_2_n_0 ),
        .I4(\st_out[10]_INST_0_i_3_n_0 ),
        .O(st_out[10]));
  LUT6 #(
    .INIT(64'h000000FF1F1F00FF)) 
    \st_out[10]_INST_0_i_1 
       (.I0(st_in[10]),
        .I1(\st_out[13]_INST_0_i_5_n_0 ),
        .I2(\st_out[13]_INST_0_i_6_n_0 ),
        .I3(nb_cid[19]),
        .I4(\st_out[13]_INST_0_i_7_n_0 ),
        .I5(\st_out[10]_INST_0_i_4_n_0 ),
        .O(\st_out[10]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hEF202020)) 
    \st_out[10]_INST_0_i_2 
       (.I0(st_in[10]),
        .I1(m_pass[0]),
        .I2(m_pass[1]),
        .I3(\st_out[15]_INST_0_i_6_n_0 ),
        .I4(p_id[1]),
        .O(\st_out[10]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF333F3F3F2222222)) 
    \st_out[10]_INST_0_i_3 
       (.I0(\st_out[14]_INST_0_i_4_n_0 ),
        .I1(\st_out[14]_INST_0_i_3_n_0 ),
        .I2(\st_out[7]_INST_0_i_2_n_0 ),
        .I3(\st_out[10]_INST_0_i_5_n_0 ),
        .I4(p_has_above),
        .I5(st_in[10]),
        .O(\st_out[10]_INST_0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \st_out[10]_INST_0_i_4 
       (.I0(\st_out[10]_INST_0_i_6_n_0 ),
        .I1(\st_out[15]_INST_0_i_8_n_0 ),
        .I2(nb_cid[13]),
        .I3(\st_out[13]_INST_0_i_6_n_0 ),
        .O(\st_out[10]_INST_0_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair122" *) 
  LUT5 #(
    .INIT(32'hCCCCCD99)) 
    \st_out[10]_INST_0_i_5 
       (.I0(ab_cid[4]),
        .I1(ab_cid[1]),
        .I2(ab_cid[2]),
        .I3(ab_cid[3]),
        .I4(ab_cid[5]),
        .O(\st_out[10]_INST_0_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \st_out[10]_INST_0_i_6 
       (.I0(nb_cid[7]),
        .I1(\st_out[15]_INST_0_i_9_n_0 ),
        .I2(st_in[10]),
        .I3(\st_out[4]_INST_0_i_3_n_0 ),
        .I4(nb_cid[1]),
        .O(\st_out[10]_INST_0_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF200)) 
    \st_out[11]_INST_0 
       (.I0(\st_out[13]_INST_0_i_1_n_0 ),
        .I1(\st_out[11]_INST_0_i_1_n_0 ),
        .I2(\st_out[11]_INST_0_i_2_n_0 ),
        .I3(\st_out[15]_INST_0_i_2_n_0 ),
        .I4(\st_out[11]_INST_0_i_3_n_0 ),
        .O(st_out[11]));
  LUT6 #(
    .INIT(64'h000000FF1F1F00FF)) 
    \st_out[11]_INST_0_i_1 
       (.I0(st_in[11]),
        .I1(\st_out[13]_INST_0_i_5_n_0 ),
        .I2(\st_out[13]_INST_0_i_6_n_0 ),
        .I3(nb_cid[20]),
        .I4(\st_out[13]_INST_0_i_7_n_0 ),
        .I5(\st_out[11]_INST_0_i_4_n_0 ),
        .O(\st_out[11]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT5 #(
    .INIT(32'hEF202020)) 
    \st_out[11]_INST_0_i_2 
       (.I0(st_in[11]),
        .I1(m_pass[0]),
        .I2(m_pass[1]),
        .I3(\st_out[15]_INST_0_i_6_n_0 ),
        .I4(p_id[2]),
        .O(\st_out[11]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF3F2F32233223322)) 
    \st_out[11]_INST_0_i_3 
       (.I0(\st_out[14]_INST_0_i_4_n_0 ),
        .I1(\st_out[14]_INST_0_i_3_n_0 ),
        .I2(\st_out[7]_INST_0_i_2_n_0 ),
        .I3(st_in[11]),
        .I4(p_has_above),
        .I5(\st_out[11]_INST_0_i_5_n_0 ),
        .O(\st_out[11]_INST_0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \st_out[11]_INST_0_i_4 
       (.I0(\st_out[11]_INST_0_i_6_n_0 ),
        .I1(\st_out[15]_INST_0_i_8_n_0 ),
        .I2(nb_cid[14]),
        .I3(\st_out[13]_INST_0_i_6_n_0 ),
        .O(\st_out[11]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFAFAFAFAFAFAEBE)) 
    \st_out[11]_INST_0_i_5 
       (.I0(\st_out[14]_INST_0_i_6_n_0 ),
        .I1(ab_cid[4]),
        .I2(ab_cid[2]),
        .I3(ab_cid[3]),
        .I4(ab_cid[5]),
        .I5(ab_cid[1]),
        .O(\st_out[11]_INST_0_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair118" *) 
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \st_out[11]_INST_0_i_6 
       (.I0(nb_cid[8]),
        .I1(\st_out[15]_INST_0_i_9_n_0 ),
        .I2(st_in[11]),
        .I3(\st_out[4]_INST_0_i_3_n_0 ),
        .I4(nb_cid[2]),
        .O(\st_out[11]_INST_0_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF200)) 
    \st_out[12]_INST_0 
       (.I0(\st_out[13]_INST_0_i_1_n_0 ),
        .I1(\st_out[12]_INST_0_i_1_n_0 ),
        .I2(\st_out[12]_INST_0_i_2_n_0 ),
        .I3(\st_out[15]_INST_0_i_2_n_0 ),
        .I4(\st_out[12]_INST_0_i_3_n_0 ),
        .O(st_out[12]));
  LUT6 #(
    .INIT(64'h000000FF1F1F00FF)) 
    \st_out[12]_INST_0_i_1 
       (.I0(st_in[12]),
        .I1(\st_out[13]_INST_0_i_5_n_0 ),
        .I2(\st_out[13]_INST_0_i_6_n_0 ),
        .I3(nb_cid[21]),
        .I4(\st_out[13]_INST_0_i_7_n_0 ),
        .I5(\st_out[12]_INST_0_i_4_n_0 ),
        .O(\st_out[12]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT5 #(
    .INIT(32'hEF202020)) 
    \st_out[12]_INST_0_i_2 
       (.I0(st_in[12]),
        .I1(m_pass[0]),
        .I2(m_pass[1]),
        .I3(\st_out[15]_INST_0_i_6_n_0 ),
        .I4(p_id[3]),
        .O(\st_out[12]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF3F2F32233223322)) 
    \st_out[12]_INST_0_i_3 
       (.I0(\st_out[14]_INST_0_i_4_n_0 ),
        .I1(\st_out[14]_INST_0_i_3_n_0 ),
        .I2(\st_out[7]_INST_0_i_2_n_0 ),
        .I3(st_in[12]),
        .I4(p_has_above),
        .I5(\st_out[12]_INST_0_i_5_n_0 ),
        .O(\st_out[12]_INST_0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h00D1)) 
    \st_out[12]_INST_0_i_4 
       (.I0(\st_out[12]_INST_0_i_6_n_0 ),
        .I1(\st_out[15]_INST_0_i_8_n_0 ),
        .I2(nb_cid[15]),
        .I3(\st_out[13]_INST_0_i_6_n_0 ),
        .O(\st_out[12]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAAFFFFAAAAFEFFAA)) 
    \st_out[12]_INST_0_i_5 
       (.I0(\st_out[14]_INST_0_i_6_n_0 ),
        .I1(ab_cid[1]),
        .I2(ab_cid[5]),
        .I3(ab_cid[3]),
        .I4(ab_cid[2]),
        .I5(ab_cid[4]),
        .O(\st_out[12]_INST_0_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair129" *) 
  LUT3 #(
    .INIT(8'h47)) 
    \st_out[12]_INST_0_i_6 
       (.I0(nb_cid[9]),
        .I1(\st_out[15]_INST_0_i_9_n_0 ),
        .I2(\st_out[12]_INST_0_i_7_n_0 ),
        .O(\st_out[12]_INST_0_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair131" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \st_out[12]_INST_0_i_7 
       (.I0(st_in[12]),
        .I1(\st_out[4]_INST_0_i_3_n_0 ),
        .I2(nb_cid[3]),
        .O(\st_out[12]_INST_0_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF200)) 
    \st_out[13]_INST_0 
       (.I0(\st_out[13]_INST_0_i_1_n_0 ),
        .I1(\st_out[13]_INST_0_i_2_n_0 ),
        .I2(\st_out[13]_INST_0_i_3_n_0 ),
        .I3(\st_out[15]_INST_0_i_2_n_0 ),
        .I4(\st_out[13]_INST_0_i_4_n_0 ),
        .O(st_out[13]));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT3 #(
    .INIT(8'h0B)) 
    \st_out[13]_INST_0_i_1 
       (.I0(m_pass[0]),
        .I1(m_pass[1]),
        .I2(\st_out[15]_INST_0_i_6_n_0 ),
        .O(\st_out[13]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \st_out[13]_INST_0_i_10 
       (.I0(nb_cid[23]),
        .I1(nb_cid[21]),
        .I2(nb_cid[18]),
        .I3(nb_cid[20]),
        .I4(nb_cid[19]),
        .I5(nb_cid[22]),
        .O(\st_out[13]_INST_0_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair128" *) 
  LUT4 #(
    .INIT(16'h8AAA)) 
    \st_out[13]_INST_0_i_11 
       (.I0(\st_out[13]_INST_0_i_19_n_0 ),
        .I1(\st_out[2]_INST_0_i_9_n_0 ),
        .I2(e_grown[2]),
        .I3(nb_valid[2]),
        .O(\st_out[13]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h4F4444444F444F4F)) 
    \st_out[13]_INST_0_i_12 
       (.I0(nb_cid[22]),
        .I1(\st_out[13]_INST_0_i_20_n_0 ),
        .I2(nb_cid[21]),
        .I3(nb_cid[15]),
        .I4(\st_out[15]_INST_0_i_8_n_0 ),
        .I5(\st_out[12]_INST_0_i_6_n_0 ),
        .O(\st_out[13]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h10F110F1FFFF10F1)) 
    \st_out[13]_INST_0_i_13 
       (.I0(nb_cid[18]),
        .I1(\st_out[13]_INST_0_i_21_n_0 ),
        .I2(\st_out[13]_INST_0_i_22_n_0 ),
        .I3(nb_cid[19]),
        .I4(\st_out[13]_INST_0_i_23_n_0 ),
        .I5(nb_cid[20]),
        .O(\st_out[13]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h4F444FFF44444444)) 
    \st_out[13]_INST_0_i_14 
       (.I0(\st_out[13]_INST_0_i_24_n_0 ),
        .I1(nb_cid[21]),
        .I2(nb_cid[14]),
        .I3(\st_out[15]_INST_0_i_8_n_0 ),
        .I4(\st_out[11]_INST_0_i_6_n_0 ),
        .I5(nb_cid[20]),
        .O(\st_out[13]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h4F444FFF44444444)) 
    \st_out[13]_INST_0_i_15 
       (.I0(\st_out[14]_INST_0_i_10_n_0 ),
        .I1(nb_cid[23]),
        .I2(nb_cid[16]),
        .I3(\st_out[15]_INST_0_i_8_n_0 ),
        .I4(\st_out[13]_INST_0_i_18_n_0 ),
        .I5(nb_cid[22]),
        .O(\st_out[13]_INST_0_i_15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair137" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \st_out[13]_INST_0_i_16 
       (.I0(\st_out[14]_INST_0_i_10_n_0 ),
        .I1(nb_cid[23]),
        .O(\st_out[13]_INST_0_i_16_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair138" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \st_out[13]_INST_0_i_17 
       (.I0(\st_out[13]_INST_0_i_10_n_0 ),
        .I1(\st_out[2]_INST_0_i_6_n_0 ),
        .O(\st_out[13]_INST_0_i_17_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair130" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \st_out[13]_INST_0_i_18 
       (.I0(\st_out[13]_INST_0_i_25_n_0 ),
        .I1(nb_cid[10]),
        .I2(\st_out[15]_INST_0_i_9_n_0 ),
        .O(\st_out[13]_INST_0_i_18_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair120" *) 
  LUT5 #(
    .INIT(32'hF0F7F7F7)) 
    \st_out[13]_INST_0_i_19 
       (.I0(\st_out[4]_INST_0_i_6_n_0 ),
        .I1(e_grown[0]),
        .I2(st_in[1]),
        .I3(\st_out[15]_INST_0_i_24_n_0 ),
        .I4(e_grown[1]),
        .O(\st_out[13]_INST_0_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h000000FF1F1F00FF)) 
    \st_out[13]_INST_0_i_2 
       (.I0(st_in[13]),
        .I1(\st_out[13]_INST_0_i_5_n_0 ),
        .I2(\st_out[13]_INST_0_i_6_n_0 ),
        .I3(nb_cid[22]),
        .I4(\st_out[13]_INST_0_i_7_n_0 ),
        .I5(\st_out[13]_INST_0_i_8_n_0 ),
        .O(\st_out[13]_INST_0_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hCCA8)) 
    \st_out[13]_INST_0_i_20 
       (.I0(nb_cid[16]),
        .I1(\st_out[13]_INST_0_i_18_n_0 ),
        .I2(\st_out[13]_INST_0_i_26_n_0 ),
        .I3(\st_out[15]_INST_0_i_14_n_0 ),
        .O(\st_out[13]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF55DF00005510)) 
    \st_out[13]_INST_0_i_21 
       (.I0(nb_cid[12]),
        .I1(\st_out[15]_INST_0_i_10_n_0 ),
        .I2(\st_out[13]_INST_0_i_27_n_0 ),
        .I3(\st_out[15]_INST_0_i_13_n_0 ),
        .I4(\st_out[15]_INST_0_i_14_n_0 ),
        .I5(\st_out[9]_INST_0_i_7_n_0 ),
        .O(\st_out[13]_INST_0_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFAAEF0000AA20)) 
    \st_out[13]_INST_0_i_22 
       (.I0(nb_cid[13]),
        .I1(\st_out[15]_INST_0_i_10_n_0 ),
        .I2(\st_out[13]_INST_0_i_27_n_0 ),
        .I3(\st_out[15]_INST_0_i_13_n_0 ),
        .I4(\st_out[15]_INST_0_i_14_n_0 ),
        .I5(\st_out[10]_INST_0_i_6_n_0 ),
        .O(\st_out[13]_INST_0_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFAAEF0000AA20)) 
    \st_out[13]_INST_0_i_23 
       (.I0(nb_cid[14]),
        .I1(\st_out[15]_INST_0_i_10_n_0 ),
        .I2(\st_out[13]_INST_0_i_27_n_0 ),
        .I3(\st_out[15]_INST_0_i_13_n_0 ),
        .I4(\st_out[15]_INST_0_i_14_n_0 ),
        .I5(\st_out[11]_INST_0_i_6_n_0 ),
        .O(\st_out[13]_INST_0_i_23_n_0 ));
  LUT6 #(
    .INIT(64'h33333333AAAA3233)) 
    \st_out[13]_INST_0_i_24 
       (.I0(nb_cid[15]),
        .I1(\st_out[12]_INST_0_i_6_n_0 ),
        .I2(\st_out[13]_INST_0_i_28_n_0 ),
        .I3(\st_out[13]_INST_0_i_27_n_0 ),
        .I4(\st_out[15]_INST_0_i_13_n_0 ),
        .I5(\st_out[15]_INST_0_i_14_n_0 ),
        .O(\st_out[13]_INST_0_i_24_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair132" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \st_out[13]_INST_0_i_25 
       (.I0(st_in[13]),
        .I1(\st_out[4]_INST_0_i_3_n_0 ),
        .I2(nb_cid[4]),
        .O(\st_out[13]_INST_0_i_25_n_0 ));
  LUT6 #(
    .INIT(64'h5100515100000000)) 
    \st_out[13]_INST_0_i_26 
       (.I0(nb_cid[17]),
        .I1(\st_out[2]_INST_0_i_13_n_0 ),
        .I2(nb_cid[11]),
        .I3(nb_cid[5]),
        .I4(e_grown[0]),
        .I5(st_in[14]),
        .O(\st_out[13]_INST_0_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hEAFEAAAAFFFFEAFE)) 
    \st_out[13]_INST_0_i_27 
       (.I0(\st_out[13]_INST_0_i_29_n_0 ),
        .I1(\st_out[13]_INST_0_i_30_n_0 ),
        .I2(\st_out[10]_INST_0_i_6_n_0 ),
        .I3(nb_cid[13]),
        .I4(\st_out[11]_INST_0_i_6_n_0 ),
        .I5(nb_cid[14]),
        .O(\st_out[13]_INST_0_i_27_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair126" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \st_out[13]_INST_0_i_28 
       (.I0(nb_cid[16]),
        .I1(\st_out[13]_INST_0_i_18_n_0 ),
        .O(\st_out[13]_INST_0_i_28_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair129" *) 
  LUT4 #(
    .INIT(16'h5404)) 
    \st_out[13]_INST_0_i_29 
       (.I0(nb_cid[15]),
        .I1(\st_out[12]_INST_0_i_7_n_0 ),
        .I2(\st_out[15]_INST_0_i_9_n_0 ),
        .I3(nb_cid[9]),
        .O(\st_out[13]_INST_0_i_29_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT5 #(
    .INIT(32'hEF202020)) 
    \st_out[13]_INST_0_i_3 
       (.I0(st_in[13]),
        .I1(m_pass[0]),
        .I2(m_pass[1]),
        .I3(\st_out[15]_INST_0_i_6_n_0 ),
        .I4(p_id[4]),
        .O(\st_out[13]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h5555540400005404)) 
    \st_out[13]_INST_0_i_30 
       (.I0(nb_cid[12]),
        .I1(nb_cid[0]),
        .I2(\st_out[4]_INST_0_i_3_n_0 ),
        .I3(st_in[9]),
        .I4(\st_out[15]_INST_0_i_9_n_0 ),
        .I5(nb_cid[6]),
        .O(\st_out[13]_INST_0_i_30_n_0 ));
  LUT6 #(
    .INIT(64'hF3F2F32233223322)) 
    \st_out[13]_INST_0_i_4 
       (.I0(\st_out[14]_INST_0_i_4_n_0 ),
        .I1(\st_out[14]_INST_0_i_3_n_0 ),
        .I2(\st_out[7]_INST_0_i_2_n_0 ),
        .I3(st_in[13]),
        .I4(p_has_above),
        .I5(\st_out[13]_INST_0_i_9_n_0 ),
        .O(\st_out[13]_INST_0_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT5 #(
    .INIT(32'h4000FFFF)) 
    \st_out[13]_INST_0_i_5 
       (.I0(st_in[1]),
        .I1(\st_out[13]_INST_0_i_10_n_0 ),
        .I2(nb_valid[3]),
        .I3(e_grown[3]),
        .I4(\st_out[13]_INST_0_i_11_n_0 ),
        .O(\st_out[13]_INST_0_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \st_out[13]_INST_0_i_6 
       (.I0(\st_out[4]_INST_0_i_3_n_0 ),
        .I1(\st_out[4]_INST_0_i_4_n_0 ),
        .O(\st_out[13]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF0000FF51)) 
    \st_out[13]_INST_0_i_7 
       (.I0(\st_out[13]_INST_0_i_12_n_0 ),
        .I1(\st_out[13]_INST_0_i_13_n_0 ),
        .I2(\st_out[13]_INST_0_i_14_n_0 ),
        .I3(\st_out[13]_INST_0_i_15_n_0 ),
        .I4(\st_out[13]_INST_0_i_16_n_0 ),
        .I5(\st_out[13]_INST_0_i_17_n_0 ),
        .O(\st_out[13]_INST_0_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair126" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \st_out[13]_INST_0_i_8 
       (.I0(\st_out[13]_INST_0_i_18_n_0 ),
        .I1(\st_out[15]_INST_0_i_8_n_0 ),
        .I2(nb_cid[16]),
        .I3(\st_out[13]_INST_0_i_6_n_0 ),
        .O(\st_out[13]_INST_0_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hBFEA)) 
    \st_out[13]_INST_0_i_9 
       (.I0(\st_out[14]_INST_0_i_6_n_0 ),
        .I1(ab_cid[2]),
        .I2(ab_cid[3]),
        .I3(ab_cid[4]),
        .O(\st_out[13]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hF4FFF4FFF4FFF4F4)) 
    \st_out[14]_INST_0 
       (.I0(\st_out[14]_INST_0_i_1_n_0 ),
        .I1(\st_out[15]_INST_0_i_2_n_0 ),
        .I2(\st_out[14]_INST_0_i_2_n_0 ),
        .I3(\st_out[14]_INST_0_i_3_n_0 ),
        .I4(\st_out[14]_INST_0_i_4_n_0 ),
        .I5(st_in[14]),
        .O(st_out[14]));
  LUT6 #(
    .INIT(64'h2A2A002A2A2AAA2A)) 
    \st_out[14]_INST_0_i_1 
       (.I0(\st_out[14]_INST_0_i_5_n_0 ),
        .I1(p_id[5]),
        .I2(\st_out[15]_INST_0_i_6_n_0 ),
        .I3(m_pass[1]),
        .I4(m_pass[0]),
        .I5(st_in[14]),
        .O(\st_out[14]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair127" *) 
  LUT3 #(
    .INIT(8'h45)) 
    \st_out[14]_INST_0_i_10 
       (.I0(\st_out[15]_INST_0_i_21_n_0 ),
        .I1(nb_cid[17]),
        .I2(\st_out[2]_INST_0_i_10_n_0 ),
        .O(\st_out[14]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hBEBEBE0000000000)) 
    \st_out[14]_INST_0_i_2 
       (.I0(\st_out[14]_INST_0_i_6_n_0 ),
        .I1(ab_cid[5]),
        .I2(\st_out[14]_INST_0_i_7_n_0 ),
        .I3(p_has_above),
        .I4(st_in[14]),
        .I5(\st_out[7]_INST_0_i_2_n_0 ),
        .O(\st_out[14]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \st_out[14]_INST_0_i_3 
       (.I0(stage[0]),
        .I1(stage[2]),
        .I2(stage[1]),
        .O(\st_out[14]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair125" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \st_out[14]_INST_0_i_4 
       (.I0(stage[0]),
        .I1(stage[2]),
        .I2(stage[1]),
        .I3(\st_out[14]_INST_0_i_8_n_0 ),
        .O(\st_out[14]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h3737777737F77777)) 
    \st_out[14]_INST_0_i_5 
       (.I0(\st_out[14]_INST_0_i_9_n_0 ),
        .I1(\st_out[13]_INST_0_i_1_n_0 ),
        .I2(\st_out[13]_INST_0_i_7_n_0 ),
        .I3(\st_out[13]_INST_0_i_5_n_0 ),
        .I4(\st_out[13]_INST_0_i_6_n_0 ),
        .I5(st_in[14]),
        .O(\st_out[14]_INST_0_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h8000FFFF)) 
    \st_out[14]_INST_0_i_6 
       (.I0(ab_cid[1]),
        .I1(ab_cid[0]),
        .I2(ab_cid[5]),
        .I3(\st_out[14]_INST_0_i_7_n_0 ),
        .I4(p_has_above),
        .O(\st_out[14]_INST_0_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair122" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \st_out[14]_INST_0_i_7 
       (.I0(ab_cid[4]),
        .I1(ab_cid[3]),
        .I2(ab_cid[2]),
        .O(\st_out[14]_INST_0_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h4000)) 
    \st_out[14]_INST_0_i_8 
       (.I0(st_in[5]),
        .I1(st_in[3]),
        .I2(p_is_bot),
        .I3(st_in[4]),
        .O(\st_out[14]_INST_0_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair137" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \st_out[14]_INST_0_i_9 
       (.I0(\st_out[14]_INST_0_i_10_n_0 ),
        .I1(nb_cid[23]),
        .I2(\st_out[2]_INST_0_i_6_n_0 ),
        .O(\st_out[14]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h8A8A8A8A8ABA8A8A)) 
    \st_out[15]_INST_0 
       (.I0(st_in[15]),
        .I1(\st_out[15]_INST_0_i_1_n_0 ),
        .I2(\st_out[15]_INST_0_i_2_n_0 ),
        .I3(p_is_bnd),
        .I4(st_in[6]),
        .I5(\st_out[15]_INST_0_i_3_n_0 ),
        .O(st_out[15]));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \st_out[15]_INST_0_i_1 
       (.I0(m_pass[1]),
        .I1(m_pass[0]),
        .O(\st_out[15]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF444)) 
    \st_out[15]_INST_0_i_10 
       (.I0(\st_out[13]_INST_0_i_18_n_0 ),
        .I1(nb_cid[16]),
        .I2(\st_out[12]_INST_0_i_6_n_0 ),
        .I3(nb_cid[15]),
        .O(\st_out[15]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hF2FFF2FFF2FF22F2)) 
    \st_out[15]_INST_0_i_11 
       (.I0(nb_cid[14]),
        .I1(\st_out[11]_INST_0_i_6_n_0 ),
        .I2(nb_cid[13]),
        .I3(\st_out[10]_INST_0_i_6_n_0 ),
        .I4(nb_cid[12]),
        .I5(\st_out[9]_INST_0_i_7_n_0 ),
        .O(\st_out[15]_INST_0_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h1F11)) 
    \st_out[15]_INST_0_i_12 
       (.I0(\st_out[12]_INST_0_i_6_n_0 ),
        .I1(nb_cid[15]),
        .I2(nb_cid[14]),
        .I3(\st_out[11]_INST_0_i_6_n_0 ),
        .O(\st_out[15]_INST_0_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h1F11)) 
    \st_out[15]_INST_0_i_13 
       (.I0(\st_out[15]_INST_0_i_21_n_0 ),
        .I1(nb_cid[17]),
        .I2(nb_cid[16]),
        .I3(\st_out[13]_INST_0_i_18_n_0 ),
        .O(\st_out[15]_INST_0_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair127" *) 
  LUT4 #(
    .INIT(16'hFF8F)) 
    \st_out[15]_INST_0_i_14 
       (.I0(nb_cid[17]),
        .I1(\st_out[15]_INST_0_i_21_n_0 ),
        .I2(\st_out[2]_INST_0_i_10_n_0 ),
        .I3(\st_out[2]_INST_0_i_14_n_0 ),
        .O(\st_out[15]_INST_0_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair130" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    \st_out[15]_INST_0_i_15 
       (.I0(nb_cid[10]),
        .I1(\st_out[13]_INST_0_i_25_n_0 ),
        .I2(nb_cid[9]),
        .I3(\st_out[12]_INST_0_i_7_n_0 ),
        .O(\st_out[15]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFBBB222B2)) 
    \st_out[15]_INST_0_i_16 
       (.I0(\st_out[15]_INST_0_i_22_n_0 ),
        .I1(nb_cid[7]),
        .I2(nb_cid[1]),
        .I3(\st_out[4]_INST_0_i_3_n_0 ),
        .I4(st_in[10]),
        .I5(\st_out[15]_INST_0_i_23_n_0 ),
        .O(\st_out[15]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h4F444FFF44444444)) 
    \st_out[15]_INST_0_i_17 
       (.I0(\st_out[12]_INST_0_i_7_n_0 ),
        .I1(nb_cid[9]),
        .I2(st_in[11]),
        .I3(\st_out[4]_INST_0_i_3_n_0 ),
        .I4(nb_cid[2]),
        .I5(nb_cid[8]),
        .O(\st_out[15]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h20AAFFFF20AA20AA)) 
    \st_out[15]_INST_0_i_18 
       (.I0(nb_cid[11]),
        .I1(nb_cid[5]),
        .I2(e_grown[0]),
        .I3(st_in[14]),
        .I4(\st_out[13]_INST_0_i_25_n_0 ),
        .I5(nb_cid[10]),
        .O(\st_out[15]_INST_0_i_18_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair121" *) 
  LUT4 #(
    .INIT(16'h4404)) 
    \st_out[15]_INST_0_i_19 
       (.I0(nb_cid[11]),
        .I1(st_in[14]),
        .I2(e_grown[0]),
        .I3(nb_cid[5]),
        .O(\st_out[15]_INST_0_i_19_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \st_out[15]_INST_0_i_2 
       (.I0(stage[0]),
        .I1(stage[2]),
        .I2(stage[1]),
        .O(\st_out[15]_INST_0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \st_out[15]_INST_0_i_20 
       (.I0(\st_out[15]_INST_0_i_24_n_0 ),
        .I1(\st_out[2]_INST_0_i_13_n_0 ),
        .O(\st_out[15]_INST_0_i_20_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair121" *) 
  LUT5 #(
    .INIT(32'h5DFF5D5D)) 
    \st_out[15]_INST_0_i_21 
       (.I0(st_in[14]),
        .I1(e_grown[0]),
        .I2(nb_cid[5]),
        .I3(nb_cid[11]),
        .I4(\st_out[2]_INST_0_i_13_n_0 ),
        .O(\st_out[15]_INST_0_i_21_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair119" *) 
  LUT4 #(
    .INIT(16'h5404)) 
    \st_out[15]_INST_0_i_22 
       (.I0(nb_cid[6]),
        .I1(nb_cid[0]),
        .I2(\st_out[4]_INST_0_i_3_n_0 ),
        .I3(st_in[9]),
        .O(\st_out[15]_INST_0_i_22_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair118" *) 
  LUT4 #(
    .INIT(16'h5404)) 
    \st_out[15]_INST_0_i_23 
       (.I0(nb_cid[8]),
        .I1(nb_cid[2]),
        .I2(\st_out[4]_INST_0_i_3_n_0 ),
        .I3(st_in[11]),
        .O(\st_out[15]_INST_0_i_23_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \st_out[15]_INST_0_i_24 
       (.I0(nb_cid[7]),
        .I1(nb_cid[9]),
        .I2(nb_cid[8]),
        .I3(nb_cid[10]),
        .I4(nb_cid[11]),
        .I5(nb_cid[6]),
        .O(\st_out[15]_INST_0_i_24_n_0 ));
  LUT6 #(
    .INIT(64'h0003000000030A0A)) 
    \st_out[15]_INST_0_i_3 
       (.I0(\st_out[15]_INST_0_i_4_n_0 ),
        .I1(st_in[3]),
        .I2(\st_out[15]_INST_0_i_5_n_0 ),
        .I3(st_in[4]),
        .I4(\st_out[15]_INST_0_i_6_n_0 ),
        .I5(\st_out[15]_INST_0_i_7_n_0 ),
        .O(\st_out[15]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h54445454FFFFFFFF)) 
    \st_out[15]_INST_0_i_4 
       (.I0(\st_out[15]_INST_0_i_8_n_0 ),
        .I1(\st_out[15]_INST_0_i_9_n_0 ),
        .I2(\st_out[4]_INST_0_i_3_n_0 ),
        .I3(\st_out[13]_INST_0_i_5_n_0 ),
        .I4(st_in[3]),
        .I5(\st_out[13]_INST_0_i_7_n_0 ),
        .O(\st_out[15]_INST_0_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT5 #(
    .INIT(32'hFF007555)) 
    \st_out[15]_INST_0_i_5 
       (.I0(\st_out[13]_INST_0_i_7_n_0 ),
        .I1(\st_out[13]_INST_0_i_5_n_0 ),
        .I2(\st_out[13]_INST_0_i_6_n_0 ),
        .I3(st_in[5]),
        .I4(\st_out[15]_INST_0_i_6_n_0 ),
        .O(\st_out[15]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \st_out[15]_INST_0_i_6 
       (.I0(st_in[14]),
        .I1(st_in[12]),
        .I2(st_in[9]),
        .I3(st_in[11]),
        .I4(st_in[10]),
        .I5(st_in[13]),
        .O(\st_out[15]_INST_0_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT5 #(
    .INIT(32'hAAAA2000)) 
    \st_out[15]_INST_0_i_7 
       (.I0(\st_out[13]_INST_0_i_7_n_0 ),
        .I1(\st_out[13]_INST_0_i_5_n_0 ),
        .I2(\st_out[4]_INST_0_i_3_n_0 ),
        .I3(st_in[4]),
        .I4(\st_out[4]_INST_0_i_4_n_0 ),
        .O(\st_out[15]_INST_0_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h0000FF51)) 
    \st_out[15]_INST_0_i_8 
       (.I0(\st_out[15]_INST_0_i_10_n_0 ),
        .I1(\st_out[15]_INST_0_i_11_n_0 ),
        .I2(\st_out[15]_INST_0_i_12_n_0 ),
        .I3(\st_out[15]_INST_0_i_13_n_0 ),
        .I4(\st_out[15]_INST_0_i_14_n_0 ),
        .O(\st_out[15]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFF00AE)) 
    \st_out[15]_INST_0_i_9 
       (.I0(\st_out[15]_INST_0_i_15_n_0 ),
        .I1(\st_out[15]_INST_0_i_16_n_0 ),
        .I2(\st_out[15]_INST_0_i_17_n_0 ),
        .I3(\st_out[15]_INST_0_i_18_n_0 ),
        .I4(\st_out[15]_INST_0_i_19_n_0 ),
        .I5(\st_out[15]_INST_0_i_20_n_0 ),
        .O(\st_out[15]_INST_0_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT5 #(
    .INIT(32'hFCCF1400)) 
    \st_out[1]_INST_0 
       (.I0(\st_out[9]_INST_0_i_3_n_0 ),
        .I1(stage[1]),
        .I2(stage[2]),
        .I3(stage[0]),
        .I4(st_in[1]),
        .O(st_out[1]));
  LUT6 #(
    .INIT(64'hFFFFFFFF0000EAAA)) 
    \st_out[2]_INST_0 
       (.I0(st_in[2]),
        .I1(st_in[7]),
        .I2(st_in[8]),
        .I3(\st_out[2]_INST_0_i_1_n_0 ),
        .I4(\st_out[14]_INST_0_i_3_n_0 ),
        .I5(\st_out[2]_INST_0_i_2_n_0 ),
        .O(st_out[2]));
  LUT2 #(
    .INIT(4'h2)) 
    \st_out[2]_INST_0_i_1 
       (.I0(stage[1]),
        .I1(stage[2]),
        .O(\st_out[2]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair128" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \st_out[2]_INST_0_i_10 
       (.I0(\st_out[13]_INST_0_i_19_n_0 ),
        .I1(nb_valid[2]),
        .I2(e_grown[2]),
        .O(\st_out[2]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h5155555551555155)) 
    \st_out[2]_INST_0_i_11 
       (.I0(st_in[2]),
        .I1(nb_grown[0]),
        .I2(\st_out[2]_INST_0_i_8_n_0 ),
        .I3(e_grown[0]),
        .I4(st_in[1]),
        .I5(\st_out[4]_INST_0_i_6_n_0 ),
        .O(\st_out[2]_INST_0_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair139" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \st_out[2]_INST_0_i_12 
       (.I0(st_in[1]),
        .I1(\st_out[15]_INST_0_i_24_n_0 ),
        .O(\st_out[2]_INST_0_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair120" *) 
  LUT4 #(
    .INIT(16'h8AAA)) 
    \st_out[2]_INST_0_i_13 
       (.I0(e_grown[1]),
        .I1(st_in[1]),
        .I2(\st_out[4]_INST_0_i_6_n_0 ),
        .I3(e_grown[0]),
        .O(\st_out[2]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \st_out[2]_INST_0_i_14 
       (.I0(nb_cid[13]),
        .I1(nb_cid[15]),
        .I2(nb_cid[14]),
        .I3(nb_cid[16]),
        .I4(nb_cid[17]),
        .I5(nb_cid[12]),
        .O(\st_out[2]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h2F002F00FF000000)) 
    \st_out[2]_INST_0_i_2 
       (.I0(\st_out[2]_INST_0_i_3_n_0 ),
        .I1(\st_out[2]_INST_0_i_4_n_0 ),
        .I2(\st_out[2]_INST_0_i_5_n_0 ),
        .I3(\st_out[15]_INST_0_i_2_n_0 ),
        .I4(st_in[2]),
        .I5(\st_out[13]_INST_0_i_1_n_0 ),
        .O(\st_out[2]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair140" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \st_out[2]_INST_0_i_3 
       (.I0(st_in[1]),
        .I1(\st_out[13]_INST_0_i_10_n_0 ),
        .O(\st_out[2]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT5 #(
    .INIT(32'hF7FFFFFF)) 
    \st_out[2]_INST_0_i_4 
       (.I0(\st_out[2]_INST_0_i_6_n_0 ),
        .I1(stage[0]),
        .I2(stage[2]),
        .I3(stage[1]),
        .I4(nb_grown[3]),
        .O(\st_out[2]_INST_0_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hA2AAAAAA)) 
    \st_out[2]_INST_0_i_5 
       (.I0(\st_out[2]_INST_0_i_7_n_0 ),
        .I1(nb_grown[2]),
        .I2(\st_out[2]_INST_0_i_8_n_0 ),
        .I3(\st_out[2]_INST_0_i_9_n_0 ),
        .I4(\st_out[2]_INST_0_i_10_n_0 ),
        .O(\st_out[2]_INST_0_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \st_out[2]_INST_0_i_6 
       (.I0(\st_out[13]_INST_0_i_11_n_0 ),
        .I1(nb_valid[3]),
        .I2(e_grown[3]),
        .O(\st_out[2]_INST_0_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hA2AAAAAA)) 
    \st_out[2]_INST_0_i_7 
       (.I0(\st_out[2]_INST_0_i_11_n_0 ),
        .I1(nb_grown[1]),
        .I2(\st_out[2]_INST_0_i_8_n_0 ),
        .I3(\st_out[2]_INST_0_i_12_n_0 ),
        .I4(\st_out[2]_INST_0_i_13_n_0 ),
        .O(\st_out[2]_INST_0_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair123" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    \st_out[2]_INST_0_i_8 
       (.I0(stage[0]),
        .I1(stage[2]),
        .I2(stage[1]),
        .O(\st_out[2]_INST_0_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair139" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \st_out[2]_INST_0_i_9 
       (.I0(st_in[1]),
        .I1(\st_out[2]_INST_0_i_14_n_0 ),
        .O(\st_out[2]_INST_0_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hF4F4FFF4)) 
    \st_out[3]_INST_0 
       (.I0(\st_out[3]_INST_0_i_1_n_0 ),
        .I1(\st_out[15]_INST_0_i_2_n_0 ),
        .I2(\st_out[3]_INST_0_i_2_n_0 ),
        .I3(st_in[3]),
        .I4(\st_out[3]_INST_0_i_3_n_0 ),
        .O(st_out[3]));
  LUT4 #(
    .INIT(16'hB0BF)) 
    \st_out[3]_INST_0_i_1 
       (.I0(\st_out[3]_INST_0_i_4_n_0 ),
        .I1(\st_out[13]_INST_0_i_7_n_0 ),
        .I2(\st_out[13]_INST_0_i_1_n_0 ),
        .I3(st_in[3]),
        .O(\st_out[3]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0202020000000200)) 
    \st_out[3]_INST_0_i_2 
       (.I0(stage[0]),
        .I1(stage[1]),
        .I2(stage[2]),
        .I3(st_in[3]),
        .I4(p_has_above),
        .I5(ab_ptr[0]),
        .O(\st_out[3]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair125" *) 
  LUT4 #(
    .INIT(16'h7720)) 
    \st_out[3]_INST_0_i_3 
       (.I0(stage[1]),
        .I1(stage[2]),
        .I2(\st_out[14]_INST_0_i_8_n_0 ),
        .I3(stage[0]),
        .O(\st_out[3]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT5 #(
    .INIT(32'h0000FFD0)) 
    \st_out[3]_INST_0_i_4 
       (.I0(st_in[3]),
        .I1(\st_out[13]_INST_0_i_5_n_0 ),
        .I2(\st_out[4]_INST_0_i_3_n_0 ),
        .I3(\st_out[15]_INST_0_i_9_n_0 ),
        .I4(\st_out[15]_INST_0_i_8_n_0 ),
        .O(\st_out[3]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFF8F8F8F8F8F8F8)) 
    \st_out[4]_INST_0 
       (.I0(\st_out[15]_INST_0_i_2_n_0 ),
        .I1(\st_out[4]_INST_0_i_1_n_0 ),
        .I2(\st_out[4]_INST_0_i_2_n_0 ),
        .I3(\st_out[7]_INST_0_i_2_n_0 ),
        .I4(ab_ptr[1]),
        .I5(p_has_above),
        .O(st_out[4]));
  LUT6 #(
    .INIT(64'hAA20FFFFAA000000)) 
    \st_out[4]_INST_0_i_1 
       (.I0(\st_out[13]_INST_0_i_7_n_0 ),
        .I1(\st_out[13]_INST_0_i_5_n_0 ),
        .I2(\st_out[4]_INST_0_i_3_n_0 ),
        .I3(\st_out[4]_INST_0_i_4_n_0 ),
        .I4(\st_out[13]_INST_0_i_1_n_0 ),
        .I5(st_in[4]),
        .O(\st_out[4]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair133" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    \st_out[4]_INST_0_i_10 
       (.I0(nb_cid[5]),
        .I1(st_in[14]),
        .I2(nb_cid[4]),
        .I3(st_in[13]),
        .O(\st_out[4]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hA202A20AA222A22A)) 
    \st_out[4]_INST_0_i_2 
       (.I0(st_in[4]),
        .I1(stage[0]),
        .I2(stage[1]),
        .I3(stage[2]),
        .I4(p_has_above),
        .I5(\st_out[14]_INST_0_i_8_n_0 ),
        .O(\st_out[4]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEEEEEFEFEFFFE)) 
    \st_out[4]_INST_0_i_3 
       (.I0(\st_out[4]_INST_0_i_5_n_0 ),
        .I1(\st_out[4]_INST_0_i_6_n_0 ),
        .I2(\st_out[4]_INST_0_i_7_n_0 ),
        .I3(\st_out[4]_INST_0_i_8_n_0 ),
        .I4(\st_out[4]_INST_0_i_9_n_0 ),
        .I5(\st_out[4]_INST_0_i_10_n_0 ),
        .O(\st_out[4]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \st_out[4]_INST_0_i_4 
       (.I0(\st_out[15]_INST_0_i_9_n_0 ),
        .I1(\st_out[15]_INST_0_i_8_n_0 ),
        .O(\st_out[4]_INST_0_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair133" *) 
  LUT3 #(
    .INIT(8'h4F)) 
    \st_out[4]_INST_0_i_5 
       (.I0(st_in[14]),
        .I1(nb_cid[5]),
        .I2(e_grown[0]),
        .O(\st_out[4]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \st_out[4]_INST_0_i_6 
       (.I0(nb_cid[1]),
        .I1(nb_cid[3]),
        .I2(nb_cid[2]),
        .I3(nb_cid[4]),
        .I4(nb_cid[5]),
        .I5(nb_cid[0]),
        .O(\st_out[4]_INST_0_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair132" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    \st_out[4]_INST_0_i_7 
       (.I0(st_in[12]),
        .I1(nb_cid[3]),
        .I2(st_in[13]),
        .I3(nb_cid[4]),
        .O(\st_out[4]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hF2FFF2FF22F2F2FF)) 
    \st_out[4]_INST_0_i_8 
       (.I0(nb_cid[2]),
        .I1(st_in[11]),
        .I2(nb_cid[1]),
        .I3(st_in[10]),
        .I4(st_in[9]),
        .I5(nb_cid[0]),
        .O(\st_out[4]_INST_0_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair131" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    \st_out[4]_INST_0_i_9 
       (.I0(nb_cid[3]),
        .I1(st_in[12]),
        .I2(nb_cid[2]),
        .I3(st_in[11]),
        .O(\st_out[4]_INST_0_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT5 #(
    .INIT(32'hFFFF0880)) 
    \st_out[5]_INST_0 
       (.I0(\st_out[5]_INST_0_i_1_n_0 ),
        .I1(stage[0]),
        .I2(stage[2]),
        .I3(stage[1]),
        .I4(\st_out[5]_INST_0_i_2_n_0 ),
        .O(st_out[5]));
  LUT6 #(
    .INIT(64'hFFFF0000BFBB1111)) 
    \st_out[5]_INST_0_i_1 
       (.I0(\st_out[15]_INST_0_i_1_n_0 ),
        .I1(\st_out[13]_INST_0_i_7_n_0 ),
        .I2(\st_out[13]_INST_0_i_5_n_0 ),
        .I3(\st_out[13]_INST_0_i_6_n_0 ),
        .I4(st_in[5]),
        .I5(\st_out[15]_INST_0_i_6_n_0 ),
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
    .INIT(64'hFFFFFFFFA6550000)) 
    \st_out[6]_INST_0 
       (.I0(\st_out[6]_INST_0_i_1_n_0 ),
        .I1(\st_out[6]_INST_0_i_2_n_0 ),
        .I2(\st_out[6]_INST_0_i_3_n_0 ),
        .I3(st_in[6]),
        .I4(\st_out[15]_INST_0_i_2_n_0 ),
        .I5(\st_out[6]_INST_0_i_4_n_0 ),
        .O(st_out[6]));
  (* SOFT_HLUTNM = "soft_lutpair124" *) 
  LUT3 #(
    .INIT(8'hF4)) 
    \st_out[6]_INST_0_i_1 
       (.I0(m_pass[1]),
        .I1(m_pass[0]),
        .I2(\st_out[6]_INST_0_i_5_n_0 ),
        .O(\st_out[6]_INST_0_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h45)) 
    \st_out[6]_INST_0_i_2 
       (.I0(p_is_bnd),
        .I1(m_pass[1]),
        .I2(m_pass[0]),
        .O(\st_out[6]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000000020AA2A)) 
    \st_out[6]_INST_0_i_3 
       (.I0(\st_out[3]_INST_0_i_1_n_0 ),
        .I1(st_in[5]),
        .I2(m_pass[1]),
        .I3(m_pass[0]),
        .I4(\st_out[15]_INST_0_i_5_n_0 ),
        .I5(\st_out[4]_INST_0_i_1_n_0 ),
        .O(\st_out[6]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h2A80FFFF2A802A80)) 
    \st_out[6]_INST_0_i_4 
       (.I0(\st_out[7]_INST_0_i_2_n_0 ),
        .I1(syn_bit),
        .I2(p_is_syn),
        .I3(\st_out[6]_INST_0_i_6_n_0 ),
        .I4(\st_out[14]_INST_0_i_3_n_0 ),
        .I5(st_in[6]),
        .O(\st_out[6]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h9666699969996999)) 
    \st_out[6]_INST_0_i_5 
       (.I0(nb_push[1]),
        .I1(nb_push[0]),
        .I2(nb_valid[2]),
        .I3(nb_push[2]),
        .I4(nb_valid[3]),
        .I5(nb_push[3]),
        .O(\st_out[6]_INST_0_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair134" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \st_out[6]_INST_0_i_6 
       (.I0(st_in[6]),
        .I1(p_has_above),
        .I2(ab_defect),
        .I3(p_is_top),
        .O(\st_out[6]_INST_0_i_6_n_0 ));
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
    .INIT(64'hAAA2A0AAAAA2AAAA)) 
    \st_out[7]_INST_0_i_1 
       (.I0(st_in[7]),
        .I1(p_has_above),
        .I2(stage[2]),
        .I3(stage[1]),
        .I4(stage[0]),
        .I5(st_in[8]),
        .O(\st_out[7]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair136" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \st_out[7]_INST_0_i_2 
       (.I0(stage[2]),
        .I1(stage[1]),
        .I2(stage[0]),
        .O(\st_out[7]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair123" *) 
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
    .INIT(64'hFFFFFFFFAA8A0080)) 
    \st_out[8]_INST_0 
       (.I0(\st_out[15]_INST_0_i_2_n_0 ),
        .I1(st_in[8]),
        .I2(m_pass[0]),
        .I3(m_pass[1]),
        .I4(\st_out[8]_INST_0_i_1_n_0 ),
        .I5(\st_out[8]_INST_0_i_2_n_0 ),
        .O(st_out[8]));
  LUT6 #(
    .INIT(64'hFFFB00FBFF080008)) 
    \st_out[8]_INST_0_i_1 
       (.I0(\st_out[0]_INST_0_i_3_n_0 ),
        .I1(\st_out[3]_INST_0_i_1_n_0 ),
        .I2(\st_out[5]_INST_0_i_1_n_0 ),
        .I3(\st_out[4]_INST_0_i_1_n_0 ),
        .I4(\st_out[8]_INST_0_i_3_n_0 ),
        .I5(\st_out[8]_INST_0_i_4_n_0 ),
        .O(\st_out[8]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7370507050505050)) 
    \st_out[8]_INST_0_i_2 
       (.I0(\st_out[14]_INST_0_i_3_n_0 ),
        .I1(p_is_top),
        .I2(st_in[8]),
        .I3(p_has_above),
        .I4(ab_active),
        .I5(\st_out[7]_INST_0_i_2_n_0 ),
        .O(\st_out[8]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBAFFBAAA8A008AAA)) 
    \st_out[8]_INST_0_i_3 
       (.I0(nb_active[1]),
        .I1(\st_out[3]_INST_0_i_4_n_0 ),
        .I2(\st_out[13]_INST_0_i_7_n_0 ),
        .I3(\st_out[13]_INST_0_i_1_n_0 ),
        .I4(st_in[3]),
        .I5(nb_active[2]),
        .O(\st_out[8]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hBAFFBAAA8A008AAA)) 
    \st_out[8]_INST_0_i_4 
       (.I0(nb_active[3]),
        .I1(\st_out[3]_INST_0_i_4_n_0 ),
        .I2(\st_out[13]_INST_0_i_7_n_0 ),
        .I3(\st_out[13]_INST_0_i_1_n_0 ),
        .I4(st_in[3]),
        .I5(nb_active[0]),
        .O(\st_out[8]_INST_0_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hDDFDCCCC)) 
    \st_out[9]_INST_0 
       (.I0(\st_out[9]_INST_0_i_1_n_0 ),
        .I1(\st_out[9]_INST_0_i_2_n_0 ),
        .I2(p_id[0]),
        .I3(\st_out[9]_INST_0_i_3_n_0 ),
        .I4(\st_out[15]_INST_0_i_2_n_0 ),
        .O(st_out[9]));
  LUT6 #(
    .INIT(64'h0000770377777777)) 
    \st_out[9]_INST_0_i_1 
       (.I0(\st_out[15]_INST_0_i_1_n_0 ),
        .I1(st_in[9]),
        .I2(\st_out[13]_INST_0_i_5_n_0 ),
        .I3(\st_out[9]_INST_0_i_4_n_0 ),
        .I4(\st_out[9]_INST_0_i_5_n_0 ),
        .I5(\st_out[13]_INST_0_i_1_n_0 ),
        .O(\st_out[9]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFC1CF0000)) 
    \st_out[9]_INST_0_i_2 
       (.I0(p_has_above),
        .I1(stage[2]),
        .I2(stage[1]),
        .I3(stage[0]),
        .I4(st_in[9]),
        .I5(\st_out[9]_INST_0_i_6_n_0 ),
        .O(\st_out[9]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT3 #(
    .INIT(8'h4F)) 
    \st_out[9]_INST_0_i_3 
       (.I0(m_pass[0]),
        .I1(m_pass[1]),
        .I2(\st_out[15]_INST_0_i_6_n_0 ),
        .O(\st_out[9]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \st_out[9]_INST_0_i_4 
       (.I0(\st_out[13]_INST_0_i_7_n_0 ),
        .I1(\st_out[13]_INST_0_i_6_n_0 ),
        .O(\st_out[9]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00D1FFFF00D10000)) 
    \st_out[9]_INST_0_i_5 
       (.I0(\st_out[9]_INST_0_i_7_n_0 ),
        .I1(\st_out[15]_INST_0_i_8_n_0 ),
        .I2(nb_cid[12]),
        .I3(\st_out[13]_INST_0_i_6_n_0 ),
        .I4(\st_out[13]_INST_0_i_7_n_0 ),
        .I5(nb_cid[18]),
        .O(\st_out[9]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFE0E0E0E0E0E0E0)) 
    \st_out[9]_INST_0_i_6 
       (.I0(st_in[9]),
        .I1(\st_out[14]_INST_0_i_8_n_0 ),
        .I2(\st_out[9]_INST_0_i_8_n_0 ),
        .I3(p_has_above),
        .I4(ab_cid[0]),
        .I5(\st_out[7]_INST_0_i_2_n_0 ),
        .O(\st_out[9]_INST_0_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair119" *) 
  LUT5 #(
    .INIT(32'h47444777)) 
    \st_out[9]_INST_0_i_7 
       (.I0(nb_cid[6]),
        .I1(\st_out[15]_INST_0_i_9_n_0 ),
        .I2(st_in[9]),
        .I3(\st_out[4]_INST_0_i_3_n_0 ),
        .I4(nb_cid[0]),
        .O(\st_out[9]_INST_0_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \st_out[9]_INST_0_i_8 
       (.I0(stage[1]),
        .I1(stage[2]),
        .I2(stage[0]),
        .O(\st_out[9]_INST_0_i_8_n_0 ));
endmodule

(* AW = "10" *) (* CW = "6" *) (* EBM = "375" *) 
(* ES = "9" *) (* IO_ABOVE = "6" *) (* IO_BND = "7" *) 
(* IO_BOT = "9" *) (* IO_SYN = "10" *) (* IO_TOP = "8" *) 
(* NBM = "375" *) (* NCTX = "5" *) (* NDIR = "4" *) 
(* NSLOT = "6" *) (* ONE_ONE = "0" *) (* PW = "3" *) 
(* RVW = "2" *) (* SLW = "3" *) (* SO_ACT = "8" *) 
(* SO_BUSY = "0" *) (* SO_CID = "9" *) (* SO_DEF = "6" *) 
(* SO_GRW = "2" *) (* SO_PB = "15" *) (* SO_PTR = "3" *) 
(* SO_UNR = "1" *) (* SO_WHL = "7" *) (* STW = "16" *) 
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
  output [31:0]lat_live_cnt;
  output [31:0]lat_push_cnt;
  output [31:0]lat_flip_cnt;

  wire \FSM_sequential_stage[2]_i_1_n_0 ;
  wire all_busy;
  wire all_busy_INST_0_i_10_n_0;
  wire all_busy_INST_0_i_11_n_0;
  wire all_busy_INST_0_i_12_n_0;
  wire all_busy_INST_0_i_13_n_0;
  wire all_busy_INST_0_i_14_n_0;
  wire all_busy_INST_0_i_15_n_0;
  wire all_busy_INST_0_i_16_n_0;
  wire all_busy_INST_0_i_17_n_0;
  wire all_busy_INST_0_i_18_n_0;
  wire all_busy_INST_0_i_19_n_0;
  wire all_busy_INST_0_i_1_n_0;
  wire all_busy_INST_0_i_20_n_0;
  wire all_busy_INST_0_i_21_n_0;
  wire all_busy_INST_0_i_22_n_0;
  wire all_busy_INST_0_i_23_n_0;
  wire all_busy_INST_0_i_24_n_0;
  wire all_busy_INST_0_i_25_n_0;
  wire all_busy_INST_0_i_26_n_0;
  wire all_busy_INST_0_i_27_n_0;
  wire all_busy_INST_0_i_28_n_0;
  wire all_busy_INST_0_i_29_n_0;
  wire all_busy_INST_0_i_2_n_0;
  wire all_busy_INST_0_i_30_n_0;
  wire all_busy_INST_0_i_31_n_0;
  wire all_busy_INST_0_i_32_n_0;
  wire all_busy_INST_0_i_33_n_0;
  wire all_busy_INST_0_i_34_n_0;
  wire all_busy_INST_0_i_3_n_0;
  wire all_busy_INST_0_i_4_n_0;
  wire all_busy_INST_0_i_5_n_0;
  wire all_busy_INST_0_i_7_n_0;
  wire all_busy_INST_0_i_8_n_0;
  wire all_busy_INST_0_i_9_n_0;
  wire any_step_busy0;
  wire [4:0]bshA;
  wire [4:0]bshB;
  wire clk;
  wire [8:0]commit_hold;
  wire commit_hold0;
  wire [8:0]commit_onehot;
  wire \commit_onehot[8]_i_1_n_0 ;
  wire [15:15]data0;
  wire [15:15]data0__0;
  wire [15:15]data0__1;
  wire [15:15]data0__2;
  wire [8:8]data1;
  wire [8:8]data2;
  wire [8:8]data3;
  wire [8:8]data4;
  wire [2:0]dbg_stage;
  wire dbg_stage0;
  wire \dbg_stage[0]_i_1_n_0 ;
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
  wire [2:0]\eslot_nxt[5] ;
  wire [2:0]\eslot_nxt[6] ;
  wire [2:0]\eslot_nxt[7] ;
  wire [2:0]\eslot_nxt[8] ;
  wire [2:0]\g_eslot[0].ab_state ;
  wire \g_eslot[0].ed_i_i_10_n_0 ;
  wire \g_eslot[0].ed_i_i_11_n_0 ;
  wire \g_eslot[0].ed_i_i_12_n_0 ;
  wire \g_eslot[0].ed_i_i_13_n_0 ;
  wire \g_eslot[0].ed_i_i_14_n_0 ;
  wire \g_eslot[0].ed_i_i_15_n_0 ;
  wire \g_eslot[0].ed_i_i_16_n_0 ;
  wire \g_eslot[0].ed_i_i_17_n_0 ;
  wire \g_eslot[0].ed_i_i_9_n_0 ;
  wire [13:1]\g_eslot[0].eown ;
  wire \g_eslot[0].gh ;
  wire [2:0]\g_eslot[0].my_state ;
  wire \g_eslot[0].umir ;
  wire \g_eslot[0].upulse ;
  wire [2:0]\g_eslot[1].ab_state ;
  wire \g_eslot[1].ed_i_i_10_n_0 ;
  wire \g_eslot[1].ed_i_i_11_n_0 ;
  wire \g_eslot[1].ed_i_i_12_n_0 ;
  wire \g_eslot[1].ed_i_i_13_n_0 ;
  wire \g_eslot[1].ed_i_i_14_n_0 ;
  wire \g_eslot[1].ed_i_i_15_n_0 ;
  wire \g_eslot[1].ed_i_i_16_n_0 ;
  wire \g_eslot[1].ed_i_i_8_n_0 ;
  wire \g_eslot[1].ed_i_i_9_n_0 ;
  wire [2:0]\g_eslot[1].my_state ;
  wire \g_eslot[1].upulse ;
  wire [2:0]\g_eslot[2].ab_state ;
  wire \g_eslot[2].ed_i_i_10_n_0 ;
  wire \g_eslot[2].ed_i_i_11_n_0 ;
  wire \g_eslot[2].ed_i_i_12_n_0 ;
  wire \g_eslot[2].ed_i_i_13_n_0 ;
  wire \g_eslot[2].ed_i_i_14_n_0 ;
  wire \g_eslot[2].ed_i_i_15_n_0 ;
  wire \g_eslot[2].ed_i_i_16_n_0 ;
  wire \g_eslot[2].ed_i_i_17_n_0 ;
  wire \g_eslot[2].ed_i_i_9_n_0 ;
  wire [2:0]\g_eslot[2].my_state ;
  wire \g_eslot[2].upulse ;
  wire \g_eslot[2].vmir ;
  wire [2:0]\g_eslot[3].ab_state ;
  wire \g_eslot[3].ed_i_i_10_n_0 ;
  wire \g_eslot[3].ed_i_i_11_n_0 ;
  wire \g_eslot[3].ed_i_i_12_n_0 ;
  wire \g_eslot[3].ed_i_i_13_n_0 ;
  wire \g_eslot[3].ed_i_i_14_n_0 ;
  wire \g_eslot[3].ed_i_i_15_n_0 ;
  wire \g_eslot[3].ed_i_i_16_n_0 ;
  wire \g_eslot[3].ed_i_i_17_n_0 ;
  wire \g_eslot[3].ed_i_i_9_n_0 ;
  wire [2:0]\g_eslot[3].my_state ;
  wire \g_eslot[3].upulse ;
  wire \g_eslot[3].vmir ;
  wire [2:0]\g_eslot[4].ab_state ;
  wire \g_eslot[4].ed_i_i_10_n_0 ;
  wire \g_eslot[4].ed_i_i_11_n_0 ;
  wire \g_eslot[4].ed_i_i_12_n_0 ;
  wire \g_eslot[4].ed_i_i_13_n_0 ;
  wire \g_eslot[4].ed_i_i_14_n_0 ;
  wire \g_eslot[4].ed_i_i_15_n_0 ;
  wire \g_eslot[4].ed_i_i_16_n_0 ;
  wire \g_eslot[4].ed_i_i_8_n_0 ;
  wire \g_eslot[4].ed_i_i_9_n_0 ;
  wire [2:0]\g_eslot[4].my_state ;
  wire \g_eslot[4].upulse ;
  wire \g_eslot[4].vmir ;
  wire \g_eslot[4].vpulse ;
  wire [2:0]\g_eslot[5].ab_state ;
  wire \g_eslot[5].ed_i_i_12_n_0 ;
  wire \g_eslot[5].ed_i_i_14_n_0 ;
  wire \g_eslot[5].ed_i_i_16_n_0 ;
  wire \g_eslot[5].ed_i_i_17_n_0 ;
  wire \g_eslot[5].ed_i_i_19_n_0 ;
  wire \g_eslot[5].ed_i_i_20_n_0 ;
  wire \g_eslot[5].ed_i_i_21_n_0 ;
  wire \g_eslot[5].ed_i_i_22_n_0 ;
  wire \g_eslot[5].ed_i_i_23_n_0 ;
  wire \g_eslot[5].ed_i_i_24_n_0 ;
  wire \g_eslot[5].ed_i_i_25_n_0 ;
  wire \g_eslot[5].ed_i_i_26_n_0 ;
  wire \g_eslot[5].ed_i_i_27_n_0 ;
  wire \g_eslot[5].ed_i_i_28_n_0 ;
  wire \g_eslot[5].ed_i_i_29_n_0 ;
  wire \g_eslot[5].ed_i_i_30_n_0 ;
  wire \g_eslot[5].ed_i_i_31_n_0 ;
  wire \g_eslot[5].ed_i_i_33_n_0 ;
  wire \g_eslot[5].ed_i_i_34_n_0 ;
  wire \g_eslot[5].ed_i_i_35_n_0 ;
  wire \g_eslot[5].ed_i_i_36_n_0 ;
  wire \g_eslot[5].ed_i_i_5_n_0 ;
  wire \g_eslot[5].eomir_reg_n_0_[10] ;
  wire \g_eslot[5].eomir_reg_n_0_[3] ;
  wire \g_eslot[5].eomir_reg_n_0_[4] ;
  wire \g_eslot[5].eomir_reg_n_0_[6] ;
  wire \g_eslot[5].eomir_reg_n_0_[7] ;
  wire \g_eslot[5].eomir_reg_n_0_[9] ;
  wire [2:0]\g_eslot[5].my_state ;
  wire \g_eslot[5].umir ;
  wire \g_eslot[5].umir0 ;
  wire \g_eslot[5].upulse ;
  wire \g_eslot[5].vmir ;
  wire \g_eslot[5].vpulse ;
  wire [2:0]\g_eslot[6].ab_state ;
  wire \g_eslot[6].ed_i_i_12_n_0 ;
  wire \g_eslot[6].ed_i_i_15_n_0 ;
  wire \g_eslot[6].ed_i_i_18_n_0 ;
  wire \g_eslot[6].ed_i_i_19_n_0 ;
  wire \g_eslot[6].ed_i_i_20_n_0 ;
  wire \g_eslot[6].ed_i_i_21_n_0 ;
  wire \g_eslot[6].ed_i_i_22_n_0 ;
  wire \g_eslot[6].ed_i_i_23_n_0 ;
  wire \g_eslot[6].ed_i_i_24_n_0 ;
  wire \g_eslot[6].ed_i_i_25_n_0 ;
  wire \g_eslot[6].ed_i_i_26_n_0 ;
  wire \g_eslot[6].ed_i_i_27_n_0 ;
  wire \g_eslot[6].ed_i_i_28_n_0 ;
  wire \g_eslot[6].ed_i_i_29_n_0 ;
  wire \g_eslot[6].ed_i_i_30_n_0 ;
  wire \g_eslot[6].ed_i_i_5_n_0 ;
  wire \g_eslot[6].eomir_reg_n_0_[10] ;
  wire \g_eslot[6].eomir_reg_n_0_[3] ;
  wire \g_eslot[6].eomir_reg_n_0_[4] ;
  wire \g_eslot[6].eomir_reg_n_0_[6] ;
  wire \g_eslot[6].eomir_reg_n_0_[7] ;
  wire \g_eslot[6].eomir_reg_n_0_[9] ;
  wire [14:12]\g_eslot[6].mst_mux ;
  wire [2:0]\g_eslot[6].my_state ;
  wire \g_eslot[6].umir ;
  wire \g_eslot[6].umir0 ;
  wire \g_eslot[6].upulse ;
  wire \g_eslot[6].vmir ;
  wire \g_eslot[6].vpulse ;
  wire [2:0]\g_eslot[7].ab_state ;
  wire \g_eslot[7].ed_i_i_11_n_0 ;
  wire \g_eslot[7].ed_i_i_12_n_0 ;
  wire \g_eslot[7].ed_i_i_15_n_0 ;
  wire \g_eslot[7].ed_i_i_18_n_0 ;
  wire \g_eslot[7].ed_i_i_19_n_0 ;
  wire \g_eslot[7].ed_i_i_20_n_0 ;
  wire \g_eslot[7].ed_i_i_21_n_0 ;
  wire \g_eslot[7].ed_i_i_22_n_0 ;
  wire \g_eslot[7].ed_i_i_23_n_0 ;
  wire \g_eslot[7].ed_i_i_24_n_0 ;
  wire \g_eslot[7].ed_i_i_25_n_0 ;
  wire \g_eslot[7].ed_i_i_26_n_0 ;
  wire \g_eslot[7].ed_i_i_27_n_0 ;
  wire \g_eslot[7].ed_i_i_28_n_0 ;
  wire \g_eslot[7].ed_i_i_29_n_0 ;
  wire \g_eslot[7].ed_i_i_30_n_0 ;
  wire \g_eslot[7].ed_i_i_5_n_0 ;
  wire \g_eslot[7].eomir_reg_n_0_[10] ;
  wire \g_eslot[7].eomir_reg_n_0_[3] ;
  wire \g_eslot[7].eomir_reg_n_0_[4] ;
  wire \g_eslot[7].eomir_reg_n_0_[6] ;
  wire \g_eslot[7].eomir_reg_n_0_[7] ;
  wire \g_eslot[7].eomir_reg_n_0_[9] ;
  wire [14:12]\g_eslot[7].mst_mux ;
  wire [2:0]\g_eslot[7].my_state ;
  wire \g_eslot[7].umir ;
  wire \g_eslot[7].umir0 ;
  wire \g_eslot[7].upulse ;
  wire \g_eslot[7].vmir ;
  wire \g_eslot[7].vpulse ;
  wire [2:0]\g_eslot[8].ab_state ;
  wire \g_eslot[8].ed_i_i_11_n_0 ;
  wire \g_eslot[8].ed_i_i_12_n_0 ;
  wire \g_eslot[8].ed_i_i_15_n_0 ;
  wire \g_eslot[8].ed_i_i_17_n_0 ;
  wire \g_eslot[8].ed_i_i_18_n_0 ;
  wire \g_eslot[8].ed_i_i_19_n_0 ;
  wire \g_eslot[8].ed_i_i_20_n_0 ;
  wire \g_eslot[8].ed_i_i_21_n_0 ;
  wire \g_eslot[8].ed_i_i_22_n_0 ;
  wire \g_eslot[8].ed_i_i_23_n_0 ;
  wire \g_eslot[8].ed_i_i_24_n_0 ;
  wire \g_eslot[8].ed_i_i_25_n_0 ;
  wire \g_eslot[8].ed_i_i_26_n_0 ;
  wire \g_eslot[8].ed_i_i_27_n_0 ;
  wire \g_eslot[8].ed_i_i_28_n_0 ;
  wire \g_eslot[8].ed_i_i_29_n_0 ;
  wire \g_eslot[8].ed_i_i_5_n_0 ;
  wire \g_eslot[8].eomir_reg_n_0_[10] ;
  wire \g_eslot[8].eomir_reg_n_0_[3] ;
  wire \g_eslot[8].eomir_reg_n_0_[4] ;
  wire \g_eslot[8].eomir_reg_n_0_[6] ;
  wire \g_eslot[8].eomir_reg_n_0_[7] ;
  wire \g_eslot[8].eomir_reg_n_0_[9] ;
  wire \g_eslot[8].eown[10]_i_2_n_0 ;
  wire \g_eslot[8].eown[1]_i_2_n_0 ;
  wire [14:12]\g_eslot[8].mst_mux ;
  wire [2:0]\g_eslot[8].my_state ;
  wire \g_eslot[8].umir ;
  wire \g_eslot[8].umir0 ;
  wire \g_eslot[8].upulse ;
  wire \g_eslot[8].vmir ;
  wire \g_eslot[8].vpulse ;
  wire [4:0]\g_slot[0].bshA_reg[0] ;
  wire [4:0]\g_slot[0].bshB_reg[0] ;
  wire [10:0]\g_slot[0].iw ;
  wire \g_slot[0].nb_mir0 ;
  wire \g_slot[0].nb_push0 ;
  wire \g_slot[0].omir_reg_n_0_[15] ;
  wire \g_slot[0].omir_reg_n_0_[2] ;
  wire \g_slot[0].omir_reg_n_0_[3] ;
  wire \g_slot[0].omir_reg_n_0_[4] ;
  wire \g_slot[0].omir_reg_n_0_[5] ;
  wire \g_slot[0].omir_reg_n_0_[7] ;
  wire \g_slot[0].omir_reg_n_0_[8] ;
  wire [78:14]\g_slot[0].own ;
  wire \g_slot[0].own_reg_n_0_[15] ;
  wire \g_slot[0].own_reg_n_0_[31] ;
  wire \g_slot[0].own_reg_n_0_[47] ;
  wire \g_slot[0].own_reg_n_0_[63] ;
  wire \g_slot[0].own_reg_n_0_[79] ;
  wire \g_slot[0].pe_i_i_10_n_0 ;
  wire \g_slot[0].pe_i_i_11_n_0 ;
  wire \g_slot[0].pe_i_i_12_n_0 ;
  wire \g_slot[0].pe_i_i_13_n_0 ;
  wire \g_slot[0].pe_i_i_14_n_0 ;
  wire \g_slot[0].pe_i_i_15_n_0 ;
  wire \g_slot[0].pe_i_i_16_n_0 ;
  wire \g_slot[0].pe_i_i_17_n_0 ;
  wire \g_slot[0].pe_i_i_18_n_0 ;
  wire \g_slot[0].pe_i_i_19_n_0 ;
  wire \g_slot[0].pe_i_i_20_n_0 ;
  wire \g_slot[0].pe_i_i_21_n_0 ;
  wire \g_slot[0].pe_i_i_23_n_0 ;
  wire \g_slot[0].pe_i_i_26_n_0 ;
  wire \g_slot[0].pe_i_i_27_n_0 ;
  wire \g_slot[0].pe_i_i_28_n_0 ;
  wire \g_slot[0].pe_i_i_29_n_0 ;
  wire \g_slot[0].pe_i_i_2_n_0 ;
  wire \g_slot[0].pe_i_i_30_n_0 ;
  wire \g_slot[0].pe_i_i_31_n_0 ;
  wire \g_slot[0].pe_i_i_32_n_0 ;
  wire \g_slot[0].pe_i_i_33_n_0 ;
  wire \g_slot[0].pe_i_i_36_n_0 ;
  wire \g_slot[0].pe_i_i_3_n_0 ;
  wire \g_slot[0].pe_i_i_40_n_0 ;
  wire \g_slot[0].pe_i_i_41_n_0 ;
  wire \g_slot[0].pe_i_i_4_n_0 ;
  wire \g_slot[0].pe_i_i_53_n_0 ;
  wire \g_slot[0].pe_i_i_54_n_0 ;
  wire \g_slot[0].pe_i_i_55_n_0 ;
  wire \g_slot[0].pe_i_i_56_n_0 ;
  wire \g_slot[0].pe_i_i_57_n_0 ;
  wire \g_slot[0].pe_i_i_58_n_0 ;
  wire \g_slot[0].pe_i_i_59_n_0 ;
  wire \g_slot[0].pe_i_i_5_n_0 ;
  wire \g_slot[0].pe_i_i_60_n_0 ;
  wire \g_slot[0].pe_i_i_61_n_0 ;
  wire \g_slot[0].pe_i_i_62_n_0 ;
  wire \g_slot[0].pe_i_i_63_n_0 ;
  wire \g_slot[0].pe_i_i_64_n_0 ;
  wire \g_slot[0].pe_i_i_65_n_0 ;
  wire \g_slot[0].pe_i_i_66_n_0 ;
  wire \g_slot[0].pe_i_i_67_n_0 ;
  wire \g_slot[0].pe_i_i_68_n_0 ;
  wire \g_slot[0].pe_i_i_69_n_0 ;
  wire \g_slot[0].pe_i_i_6_n_0 ;
  wire \g_slot[0].pe_i_i_70_n_0 ;
  wire \g_slot[0].pe_i_i_71_n_0 ;
  wire \g_slot[0].pe_i_i_72_n_0 ;
  wire \g_slot[0].pe_i_i_73_n_0 ;
  wire \g_slot[0].pe_i_i_74_n_0 ;
  wire \g_slot[0].pe_i_i_75_n_0 ;
  wire \g_slot[0].pe_i_i_76_n_0 ;
  wire \g_slot[0].pe_i_i_77_n_0 ;
  wire \g_slot[0].pe_i_i_78_n_0 ;
  wire \g_slot[0].pe_i_i_79_n_0 ;
  wire \g_slot[0].pe_i_i_7_n_0 ;
  wire \g_slot[0].pe_i_i_80_n_0 ;
  wire \g_slot[0].pe_i_i_81_n_0 ;
  wire \g_slot[0].pe_i_i_82_n_0 ;
  wire \g_slot[0].pe_i_i_83_n_0 ;
  wire \g_slot[0].pe_i_i_84_n_0 ;
  wire \g_slot[0].pe_i_i_85_n_0 ;
  wire \g_slot[0].pe_i_i_86_n_0 ;
  wire \g_slot[0].pe_i_i_87_n_0 ;
  wire \g_slot[0].pe_i_i_88_n_0 ;
  wire \g_slot[0].pe_i_i_89_n_0 ;
  wire \g_slot[0].pe_i_i_8_n_0 ;
  wire \g_slot[0].pe_i_i_90_n_0 ;
  wire \g_slot[0].pe_i_i_91_n_0 ;
  wire \g_slot[0].pe_i_i_92_n_0 ;
  wire \g_slot[0].pe_i_i_93_n_0 ;
  wire \g_slot[0].pe_i_i_94_n_0 ;
  wire \g_slot[0].pe_i_i_95_n_0 ;
  wire \g_slot[0].pe_i_i_9_n_0 ;
  wire [4:0]\g_slot[1].bshA_reg[1] ;
  wire [4:0]\g_slot[1].bshB_reg[1] ;
  wire [17:15]\g_slot[1].g_dir[2].esrc ;
  wire [78:64]\g_slot[1].g_dir[3].esrc ;
  wire [10:0]\g_slot[1].iw ;
  wire [2:1]\g_slot[1].nb_push ;
  wire \g_slot[1].nb_push1 ;
  wire \g_slot[1].nb_push115_out ;
  wire \g_slot[1].omir_reg_n_0_[10] ;
  wire \g_slot[1].omir_reg_n_0_[11] ;
  wire \g_slot[1].omir_reg_n_0_[12] ;
  wire \g_slot[1].omir_reg_n_0_[13] ;
  wire \g_slot[1].omir_reg_n_0_[14] ;
  wire \g_slot[1].omir_reg_n_0_[15] ;
  wire \g_slot[1].omir_reg_n_0_[18] ;
  wire \g_slot[1].omir_reg_n_0_[19] ;
  wire \g_slot[1].omir_reg_n_0_[20] ;
  wire \g_slot[1].omir_reg_n_0_[21] ;
  wire \g_slot[1].omir_reg_n_0_[24] ;
  wire \g_slot[1].omir_reg_n_0_[25] ;
  wire \g_slot[1].omir_reg_n_0_[26] ;
  wire \g_slot[1].omir_reg_n_0_[27] ;
  wire \g_slot[1].omir_reg_n_0_[28] ;
  wire \g_slot[1].omir_reg_n_0_[29] ;
  wire \g_slot[1].omir_reg_n_0_[2] ;
  wire \g_slot[1].omir_reg_n_0_[30] ;
  wire \g_slot[1].omir_reg_n_0_[31] ;
  wire \g_slot[1].omir_reg_n_0_[34] ;
  wire \g_slot[1].omir_reg_n_0_[35] ;
  wire \g_slot[1].omir_reg_n_0_[36] ;
  wire \g_slot[1].omir_reg_n_0_[37] ;
  wire \g_slot[1].omir_reg_n_0_[3] ;
  wire \g_slot[1].omir_reg_n_0_[40] ;
  wire \g_slot[1].omir_reg_n_0_[41] ;
  wire \g_slot[1].omir_reg_n_0_[42] ;
  wire \g_slot[1].omir_reg_n_0_[43] ;
  wire \g_slot[1].omir_reg_n_0_[44] ;
  wire \g_slot[1].omir_reg_n_0_[45] ;
  wire \g_slot[1].omir_reg_n_0_[46] ;
  wire \g_slot[1].omir_reg_n_0_[47] ;
  wire \g_slot[1].omir_reg_n_0_[4] ;
  wire \g_slot[1].omir_reg_n_0_[50] ;
  wire \g_slot[1].omir_reg_n_0_[51] ;
  wire \g_slot[1].omir_reg_n_0_[52] ;
  wire \g_slot[1].omir_reg_n_0_[53] ;
  wire \g_slot[1].omir_reg_n_0_[56] ;
  wire \g_slot[1].omir_reg_n_0_[57] ;
  wire \g_slot[1].omir_reg_n_0_[58] ;
  wire \g_slot[1].omir_reg_n_0_[59] ;
  wire \g_slot[1].omir_reg_n_0_[5] ;
  wire \g_slot[1].omir_reg_n_0_[60] ;
  wire \g_slot[1].omir_reg_n_0_[61] ;
  wire \g_slot[1].omir_reg_n_0_[62] ;
  wire \g_slot[1].omir_reg_n_0_[63] ;
  wire \g_slot[1].omir_reg_n_0_[8] ;
  wire \g_slot[1].omir_reg_n_0_[9] ;
  wire \g_slot[1].own_reg_n_0_[47] ;
  wire \g_slot[1].own_reg_n_0_[63] ;
  wire \g_slot[1].own_reg_n_0_[79] ;
  wire \g_slot[1].pe_i_i_101_n_0 ;
  wire \g_slot[1].pe_i_i_103_n_0 ;
  wire \g_slot[1].pe_i_i_104_n_0 ;
  wire \g_slot[1].pe_i_i_105_n_0 ;
  wire \g_slot[1].pe_i_i_106_n_0 ;
  wire \g_slot[1].pe_i_i_107_n_0 ;
  wire \g_slot[1].pe_i_i_108_n_0 ;
  wire \g_slot[1].pe_i_i_109_n_0 ;
  wire \g_slot[1].pe_i_i_10_n_0 ;
  wire \g_slot[1].pe_i_i_110_n_0 ;
  wire \g_slot[1].pe_i_i_111_n_0 ;
  wire \g_slot[1].pe_i_i_112_n_0 ;
  wire \g_slot[1].pe_i_i_113_n_0 ;
  wire \g_slot[1].pe_i_i_114_n_0 ;
  wire \g_slot[1].pe_i_i_115_n_0 ;
  wire \g_slot[1].pe_i_i_116_n_0 ;
  wire \g_slot[1].pe_i_i_117_n_0 ;
  wire \g_slot[1].pe_i_i_118_n_0 ;
  wire \g_slot[1].pe_i_i_119_n_0 ;
  wire \g_slot[1].pe_i_i_11_n_0 ;
  wire \g_slot[1].pe_i_i_121_n_0 ;
  wire \g_slot[1].pe_i_i_123_n_0 ;
  wire \g_slot[1].pe_i_i_12_n_0 ;
  wire \g_slot[1].pe_i_i_13_n_0 ;
  wire \g_slot[1].pe_i_i_14_n_0 ;
  wire \g_slot[1].pe_i_i_15_n_0 ;
  wire \g_slot[1].pe_i_i_18_n_0 ;
  wire \g_slot[1].pe_i_i_19_n_0 ;
  wire \g_slot[1].pe_i_i_1_n_0 ;
  wire \g_slot[1].pe_i_i_20_n_0 ;
  wire \g_slot[1].pe_i_i_21_n_0 ;
  wire \g_slot[1].pe_i_i_22_n_0 ;
  wire \g_slot[1].pe_i_i_23_n_0 ;
  wire \g_slot[1].pe_i_i_24_n_0 ;
  wire \g_slot[1].pe_i_i_25_n_0 ;
  wire \g_slot[1].pe_i_i_26_n_0 ;
  wire \g_slot[1].pe_i_i_27_n_0 ;
  wire \g_slot[1].pe_i_i_28_n_0 ;
  wire \g_slot[1].pe_i_i_29_n_0 ;
  wire \g_slot[1].pe_i_i_2_n_0 ;
  wire \g_slot[1].pe_i_i_30_n_0 ;
  wire \g_slot[1].pe_i_i_37_n_0 ;
  wire \g_slot[1].pe_i_i_38_n_0 ;
  wire \g_slot[1].pe_i_i_3_n_0 ;
  wire \g_slot[1].pe_i_i_40_n_0 ;
  wire \g_slot[1].pe_i_i_41_n_0 ;
  wire \g_slot[1].pe_i_i_43_n_0 ;
  wire \g_slot[1].pe_i_i_49_n_0 ;
  wire \g_slot[1].pe_i_i_4_n_0 ;
  wire \g_slot[1].pe_i_i_53_n_0 ;
  wire \g_slot[1].pe_i_i_5_n_0 ;
  wire \g_slot[1].pe_i_i_65_n_0 ;
  wire \g_slot[1].pe_i_i_66_n_0 ;
  wire \g_slot[1].pe_i_i_67_n_0 ;
  wire \g_slot[1].pe_i_i_68_n_0 ;
  wire \g_slot[1].pe_i_i_69_n_0 ;
  wire \g_slot[1].pe_i_i_6_n_0 ;
  wire \g_slot[1].pe_i_i_70_n_0 ;
  wire \g_slot[1].pe_i_i_71_n_0 ;
  wire \g_slot[1].pe_i_i_72_n_0 ;
  wire \g_slot[1].pe_i_i_73_n_0 ;
  wire \g_slot[1].pe_i_i_74_n_0 ;
  wire \g_slot[1].pe_i_i_75_n_0 ;
  wire \g_slot[1].pe_i_i_76_n_0 ;
  wire \g_slot[1].pe_i_i_77_n_0 ;
  wire \g_slot[1].pe_i_i_78_n_0 ;
  wire \g_slot[1].pe_i_i_79_n_0 ;
  wire \g_slot[1].pe_i_i_7_n_0 ;
  wire \g_slot[1].pe_i_i_80_n_0 ;
  wire \g_slot[1].pe_i_i_81_n_0 ;
  wire \g_slot[1].pe_i_i_82_n_0 ;
  wire \g_slot[1].pe_i_i_83_n_0 ;
  wire \g_slot[1].pe_i_i_84_n_0 ;
  wire \g_slot[1].pe_i_i_85_n_0 ;
  wire \g_slot[1].pe_i_i_86_n_0 ;
  wire \g_slot[1].pe_i_i_87_n_0 ;
  wire \g_slot[1].pe_i_i_88_n_0 ;
  wire \g_slot[1].pe_i_i_89_n_0 ;
  wire \g_slot[1].pe_i_i_8_n_0 ;
  wire \g_slot[1].pe_i_i_90_n_0 ;
  wire \g_slot[1].pe_i_i_91_n_0 ;
  wire \g_slot[1].pe_i_i_92_n_0 ;
  wire \g_slot[1].pe_i_i_93_n_0 ;
  wire \g_slot[1].pe_i_i_94_n_0 ;
  wire \g_slot[1].pe_i_i_95_n_0 ;
  wire \g_slot[1].pe_i_i_96_n_0 ;
  wire \g_slot[1].pe_i_i_97_n_0 ;
  wire \g_slot[1].pe_i_i_98_n_0 ;
  wire \g_slot[1].pe_i_i_99_n_0 ;
  wire \g_slot[1].pe_i_i_9_n_0 ;
  wire [4:0]\g_slot[2].bshA_reg[2] ;
  wire [4:0]\g_slot[2].bshB_reg[2] ;
  wire [3:0]\g_slot[2].e_grown ;
  wire [17:15]\g_slot[2].g_dir[2].esrc ;
  wire [78:64]\g_slot[2].g_dir[3].esrc ;
  wire [10:0]\g_slot[2].iw ;
  wire [2:0]\g_slot[2].nb_push ;
  wire \g_slot[2].nb_push1 ;
  wire \g_slot[2].nb_push119_out ;
  wire \g_slot[2].omir_reg_n_0_[10] ;
  wire \g_slot[2].omir_reg_n_0_[11] ;
  wire \g_slot[2].omir_reg_n_0_[12] ;
  wire \g_slot[2].omir_reg_n_0_[13] ;
  wire \g_slot[2].omir_reg_n_0_[14] ;
  wire \g_slot[2].omir_reg_n_0_[15] ;
  wire \g_slot[2].omir_reg_n_0_[18] ;
  wire \g_slot[2].omir_reg_n_0_[19] ;
  wire \g_slot[2].omir_reg_n_0_[20] ;
  wire \g_slot[2].omir_reg_n_0_[21] ;
  wire \g_slot[2].omir_reg_n_0_[24] ;
  wire \g_slot[2].omir_reg_n_0_[25] ;
  wire \g_slot[2].omir_reg_n_0_[26] ;
  wire \g_slot[2].omir_reg_n_0_[27] ;
  wire \g_slot[2].omir_reg_n_0_[28] ;
  wire \g_slot[2].omir_reg_n_0_[29] ;
  wire \g_slot[2].omir_reg_n_0_[2] ;
  wire \g_slot[2].omir_reg_n_0_[30] ;
  wire \g_slot[2].omir_reg_n_0_[31] ;
  wire \g_slot[2].omir_reg_n_0_[34] ;
  wire \g_slot[2].omir_reg_n_0_[35] ;
  wire \g_slot[2].omir_reg_n_0_[36] ;
  wire \g_slot[2].omir_reg_n_0_[37] ;
  wire \g_slot[2].omir_reg_n_0_[3] ;
  wire \g_slot[2].omir_reg_n_0_[40] ;
  wire \g_slot[2].omir_reg_n_0_[41] ;
  wire \g_slot[2].omir_reg_n_0_[42] ;
  wire \g_slot[2].omir_reg_n_0_[43] ;
  wire \g_slot[2].omir_reg_n_0_[44] ;
  wire \g_slot[2].omir_reg_n_0_[45] ;
  wire \g_slot[2].omir_reg_n_0_[46] ;
  wire \g_slot[2].omir_reg_n_0_[47] ;
  wire \g_slot[2].omir_reg_n_0_[4] ;
  wire \g_slot[2].omir_reg_n_0_[50] ;
  wire \g_slot[2].omir_reg_n_0_[51] ;
  wire \g_slot[2].omir_reg_n_0_[52] ;
  wire \g_slot[2].omir_reg_n_0_[53] ;
  wire \g_slot[2].omir_reg_n_0_[56] ;
  wire \g_slot[2].omir_reg_n_0_[57] ;
  wire \g_slot[2].omir_reg_n_0_[58] ;
  wire \g_slot[2].omir_reg_n_0_[59] ;
  wire \g_slot[2].omir_reg_n_0_[5] ;
  wire \g_slot[2].omir_reg_n_0_[60] ;
  wire \g_slot[2].omir_reg_n_0_[61] ;
  wire \g_slot[2].omir_reg_n_0_[62] ;
  wire \g_slot[2].omir_reg_n_0_[63] ;
  wire \g_slot[2].omir_reg_n_0_[8] ;
  wire \g_slot[2].omir_reg_n_0_[9] ;
  wire \g_slot[2].own_reg_n_0_[47] ;
  wire \g_slot[2].own_reg_n_0_[63] ;
  wire \g_slot[2].own_reg_n_0_[79] ;
  wire \g_slot[2].pe_i_i_100_n_0 ;
  wire \g_slot[2].pe_i_i_101_n_0 ;
  wire \g_slot[2].pe_i_i_102_n_0 ;
  wire \g_slot[2].pe_i_i_103_n_0 ;
  wire \g_slot[2].pe_i_i_104_n_0 ;
  wire \g_slot[2].pe_i_i_105_n_0 ;
  wire \g_slot[2].pe_i_i_106_n_0 ;
  wire \g_slot[2].pe_i_i_107_n_0 ;
  wire \g_slot[2].pe_i_i_108_n_0 ;
  wire \g_slot[2].pe_i_i_109_n_0 ;
  wire \g_slot[2].pe_i_i_10_n_0 ;
  wire \g_slot[2].pe_i_i_110_n_0 ;
  wire \g_slot[2].pe_i_i_111_n_0 ;
  wire \g_slot[2].pe_i_i_112_n_0 ;
  wire \g_slot[2].pe_i_i_113_n_0 ;
  wire \g_slot[2].pe_i_i_114_n_0 ;
  wire \g_slot[2].pe_i_i_115_n_0 ;
  wire \g_slot[2].pe_i_i_117_n_0 ;
  wire \g_slot[2].pe_i_i_119_n_0 ;
  wire \g_slot[2].pe_i_i_11_n_0 ;
  wire \g_slot[2].pe_i_i_12_n_0 ;
  wire \g_slot[2].pe_i_i_13_n_0 ;
  wire \g_slot[2].pe_i_i_17_n_0 ;
  wire \g_slot[2].pe_i_i_18_n_0 ;
  wire \g_slot[2].pe_i_i_19_n_0 ;
  wire \g_slot[2].pe_i_i_1_n_0 ;
  wire \g_slot[2].pe_i_i_20_n_0 ;
  wire \g_slot[2].pe_i_i_21_n_0 ;
  wire \g_slot[2].pe_i_i_22_n_0 ;
  wire \g_slot[2].pe_i_i_23_n_0 ;
  wire \g_slot[2].pe_i_i_24_n_0 ;
  wire \g_slot[2].pe_i_i_25_n_0 ;
  wire \g_slot[2].pe_i_i_26_n_0 ;
  wire \g_slot[2].pe_i_i_27_n_0 ;
  wire \g_slot[2].pe_i_i_28_n_0 ;
  wire \g_slot[2].pe_i_i_2_n_0 ;
  wire \g_slot[2].pe_i_i_35_n_0 ;
  wire \g_slot[2].pe_i_i_36_n_0 ;
  wire \g_slot[2].pe_i_i_38_n_0 ;
  wire \g_slot[2].pe_i_i_39_n_0 ;
  wire \g_slot[2].pe_i_i_3_n_0 ;
  wire \g_slot[2].pe_i_i_41_n_0 ;
  wire \g_slot[2].pe_i_i_47_n_0 ;
  wire \g_slot[2].pe_i_i_4_n_0 ;
  wire \g_slot[2].pe_i_i_51_n_0 ;
  wire \g_slot[2].pe_i_i_5_n_0 ;
  wire \g_slot[2].pe_i_i_63_n_0 ;
  wire \g_slot[2].pe_i_i_64_n_0 ;
  wire \g_slot[2].pe_i_i_65_n_0 ;
  wire \g_slot[2].pe_i_i_66_n_0 ;
  wire \g_slot[2].pe_i_i_67_n_0 ;
  wire \g_slot[2].pe_i_i_68_n_0 ;
  wire \g_slot[2].pe_i_i_69_n_0 ;
  wire \g_slot[2].pe_i_i_6_n_0 ;
  wire \g_slot[2].pe_i_i_70_n_0 ;
  wire \g_slot[2].pe_i_i_71_n_0 ;
  wire \g_slot[2].pe_i_i_72_n_0 ;
  wire \g_slot[2].pe_i_i_73_n_0 ;
  wire \g_slot[2].pe_i_i_74_n_0 ;
  wire \g_slot[2].pe_i_i_75_n_0 ;
  wire \g_slot[2].pe_i_i_76_n_0 ;
  wire \g_slot[2].pe_i_i_77_n_0 ;
  wire \g_slot[2].pe_i_i_78_n_0 ;
  wire \g_slot[2].pe_i_i_79_n_0 ;
  wire \g_slot[2].pe_i_i_7_n_0 ;
  wire \g_slot[2].pe_i_i_80_n_0 ;
  wire \g_slot[2].pe_i_i_81_n_0 ;
  wire \g_slot[2].pe_i_i_82_n_0 ;
  wire \g_slot[2].pe_i_i_83_n_0 ;
  wire \g_slot[2].pe_i_i_84_n_0 ;
  wire \g_slot[2].pe_i_i_85_n_0 ;
  wire \g_slot[2].pe_i_i_86_n_0 ;
  wire \g_slot[2].pe_i_i_87_n_0 ;
  wire \g_slot[2].pe_i_i_88_n_0 ;
  wire \g_slot[2].pe_i_i_89_n_0 ;
  wire \g_slot[2].pe_i_i_8_n_0 ;
  wire \g_slot[2].pe_i_i_90_n_0 ;
  wire \g_slot[2].pe_i_i_91_n_0 ;
  wire \g_slot[2].pe_i_i_92_n_0 ;
  wire \g_slot[2].pe_i_i_93_n_0 ;
  wire \g_slot[2].pe_i_i_94_n_0 ;
  wire \g_slot[2].pe_i_i_95_n_0 ;
  wire \g_slot[2].pe_i_i_97_n_0 ;
  wire \g_slot[2].pe_i_i_99_n_0 ;
  wire \g_slot[2].pe_i_i_9_n_0 ;
  wire [4:0]\g_slot[3].bshA_reg[3] ;
  wire [4:0]\g_slot[3].bshB_reg[3] ;
  wire [17:15]\g_slot[3].g_dir[2].esrc ;
  wire [78:64]\g_slot[3].g_dir[3].esrc ;
  wire [10:0]\g_slot[3].iw ;
  wire [23:0]\g_slot[3].nb_cid ;
  wire [3:0]\g_slot[3].nb_grown ;
  wire [2:0]\g_slot[3].nb_push ;
  wire \g_slot[3].nb_push1 ;
  wire \g_slot[3].nb_push122_out ;
  wire \g_slot[3].omir_reg_n_0_[10] ;
  wire \g_slot[3].omir_reg_n_0_[11] ;
  wire \g_slot[3].omir_reg_n_0_[12] ;
  wire \g_slot[3].omir_reg_n_0_[13] ;
  wire \g_slot[3].omir_reg_n_0_[14] ;
  wire \g_slot[3].omir_reg_n_0_[15] ;
  wire \g_slot[3].omir_reg_n_0_[18] ;
  wire \g_slot[3].omir_reg_n_0_[19] ;
  wire \g_slot[3].omir_reg_n_0_[20] ;
  wire \g_slot[3].omir_reg_n_0_[21] ;
  wire \g_slot[3].omir_reg_n_0_[24] ;
  wire \g_slot[3].omir_reg_n_0_[25] ;
  wire \g_slot[3].omir_reg_n_0_[26] ;
  wire \g_slot[3].omir_reg_n_0_[27] ;
  wire \g_slot[3].omir_reg_n_0_[28] ;
  wire \g_slot[3].omir_reg_n_0_[29] ;
  wire \g_slot[3].omir_reg_n_0_[2] ;
  wire \g_slot[3].omir_reg_n_0_[30] ;
  wire \g_slot[3].omir_reg_n_0_[31] ;
  wire \g_slot[3].omir_reg_n_0_[34] ;
  wire \g_slot[3].omir_reg_n_0_[35] ;
  wire \g_slot[3].omir_reg_n_0_[36] ;
  wire \g_slot[3].omir_reg_n_0_[37] ;
  wire \g_slot[3].omir_reg_n_0_[3] ;
  wire \g_slot[3].omir_reg_n_0_[40] ;
  wire \g_slot[3].omir_reg_n_0_[41] ;
  wire \g_slot[3].omir_reg_n_0_[42] ;
  wire \g_slot[3].omir_reg_n_0_[43] ;
  wire \g_slot[3].omir_reg_n_0_[44] ;
  wire \g_slot[3].omir_reg_n_0_[45] ;
  wire \g_slot[3].omir_reg_n_0_[46] ;
  wire \g_slot[3].omir_reg_n_0_[47] ;
  wire \g_slot[3].omir_reg_n_0_[4] ;
  wire \g_slot[3].omir_reg_n_0_[50] ;
  wire \g_slot[3].omir_reg_n_0_[51] ;
  wire \g_slot[3].omir_reg_n_0_[52] ;
  wire \g_slot[3].omir_reg_n_0_[53] ;
  wire \g_slot[3].omir_reg_n_0_[56] ;
  wire \g_slot[3].omir_reg_n_0_[57] ;
  wire \g_slot[3].omir_reg_n_0_[58] ;
  wire \g_slot[3].omir_reg_n_0_[59] ;
  wire \g_slot[3].omir_reg_n_0_[5] ;
  wire \g_slot[3].omir_reg_n_0_[60] ;
  wire \g_slot[3].omir_reg_n_0_[61] ;
  wire \g_slot[3].omir_reg_n_0_[62] ;
  wire \g_slot[3].omir_reg_n_0_[63] ;
  wire \g_slot[3].omir_reg_n_0_[8] ;
  wire \g_slot[3].omir_reg_n_0_[9] ;
  wire \g_slot[3].own_reg_n_0_[47] ;
  wire \g_slot[3].own_reg_n_0_[63] ;
  wire \g_slot[3].own_reg_n_0_[79] ;
  wire \g_slot[3].pe_i_i_100_n_0 ;
  wire \g_slot[3].pe_i_i_101_n_0 ;
  wire \g_slot[3].pe_i_i_102_n_0 ;
  wire \g_slot[3].pe_i_i_103_n_0 ;
  wire \g_slot[3].pe_i_i_104_n_0 ;
  wire \g_slot[3].pe_i_i_105_n_0 ;
  wire \g_slot[3].pe_i_i_106_n_0 ;
  wire \g_slot[3].pe_i_i_107_n_0 ;
  wire \g_slot[3].pe_i_i_108_n_0 ;
  wire \g_slot[3].pe_i_i_109_n_0 ;
  wire \g_slot[3].pe_i_i_10_n_0 ;
  wire \g_slot[3].pe_i_i_110_n_0 ;
  wire \g_slot[3].pe_i_i_111_n_0 ;
  wire \g_slot[3].pe_i_i_112_n_0 ;
  wire \g_slot[3].pe_i_i_113_n_0 ;
  wire \g_slot[3].pe_i_i_114_n_0 ;
  wire \g_slot[3].pe_i_i_115_n_0 ;
  wire \g_slot[3].pe_i_i_116_n_0 ;
  wire \g_slot[3].pe_i_i_118_n_0 ;
  wire \g_slot[3].pe_i_i_11_n_0 ;
  wire \g_slot[3].pe_i_i_120_n_0 ;
  wire \g_slot[3].pe_i_i_12_n_0 ;
  wire \g_slot[3].pe_i_i_13_n_0 ;
  wire \g_slot[3].pe_i_i_14_n_0 ;
  wire \g_slot[3].pe_i_i_15_n_0 ;
  wire \g_slot[3].pe_i_i_1_n_0 ;
  wire \g_slot[3].pe_i_i_2_n_0 ;
  wire \g_slot[3].pe_i_i_35_n_0 ;
  wire \g_slot[3].pe_i_i_36_n_0 ;
  wire \g_slot[3].pe_i_i_3_n_0 ;
  wire \g_slot[3].pe_i_i_41_n_0 ;
  wire \g_slot[3].pe_i_i_47_n_0 ;
  wire \g_slot[3].pe_i_i_4_n_0 ;
  wire \g_slot[3].pe_i_i_51_n_0 ;
  wire \g_slot[3].pe_i_i_5_n_0 ;
  wire \g_slot[3].pe_i_i_65_n_0 ;
  wire \g_slot[3].pe_i_i_66_n_0 ;
  wire \g_slot[3].pe_i_i_67_n_0 ;
  wire \g_slot[3].pe_i_i_68_n_0 ;
  wire \g_slot[3].pe_i_i_69_n_0 ;
  wire \g_slot[3].pe_i_i_6_n_0 ;
  wire \g_slot[3].pe_i_i_70_n_0 ;
  wire \g_slot[3].pe_i_i_71_n_0 ;
  wire \g_slot[3].pe_i_i_72_n_0 ;
  wire \g_slot[3].pe_i_i_73_n_0 ;
  wire \g_slot[3].pe_i_i_74_n_0 ;
  wire \g_slot[3].pe_i_i_75_n_0 ;
  wire \g_slot[3].pe_i_i_76_n_0 ;
  wire \g_slot[3].pe_i_i_77_n_0 ;
  wire \g_slot[3].pe_i_i_78_n_0 ;
  wire \g_slot[3].pe_i_i_79_n_0 ;
  wire \g_slot[3].pe_i_i_7_n_0 ;
  wire \g_slot[3].pe_i_i_80_n_0 ;
  wire \g_slot[3].pe_i_i_81_n_0 ;
  wire \g_slot[3].pe_i_i_82_n_0 ;
  wire \g_slot[3].pe_i_i_83_n_0 ;
  wire \g_slot[3].pe_i_i_84_n_0 ;
  wire \g_slot[3].pe_i_i_85_n_0 ;
  wire \g_slot[3].pe_i_i_86_n_0 ;
  wire \g_slot[3].pe_i_i_87_n_0 ;
  wire \g_slot[3].pe_i_i_88_n_0 ;
  wire \g_slot[3].pe_i_i_89_n_0 ;
  wire \g_slot[3].pe_i_i_8_n_0 ;
  wire \g_slot[3].pe_i_i_90_n_0 ;
  wire \g_slot[3].pe_i_i_91_n_0 ;
  wire \g_slot[3].pe_i_i_92_n_0 ;
  wire \g_slot[3].pe_i_i_93_n_0 ;
  wire \g_slot[3].pe_i_i_94_n_0 ;
  wire \g_slot[3].pe_i_i_95_n_0 ;
  wire \g_slot[3].pe_i_i_96_n_0 ;
  wire \g_slot[3].pe_i_i_98_n_0 ;
  wire \g_slot[3].pe_i_i_9_n_0 ;
  wire [1:0]\g_slot[3].sidx ;
  wire [4:0]\g_slot[4].bshA_reg[4] ;
  wire [4:0]\g_slot[4].bshB_reg[4] ;
  wire [3:0]\g_slot[4].e_grown ;
  wire [17:15]\g_slot[4].g_dir[2].esrc ;
  wire [78:64]\g_slot[4].g_dir[3].esrc ;
  wire \g_slot[4].g_dir[3].nbv ;
  wire [10:0]\g_slot[4].iw ;
  wire [23:0]\g_slot[4].nb_cid ;
  wire [3:0]\g_slot[4].nb_grown ;
  wire [2:0]\g_slot[4].nb_push ;
  wire \g_slot[4].nb_push1 ;
  wire \g_slot[4].nb_push126_out ;
  wire \g_slot[4].omir_reg_n_0_[10] ;
  wire \g_slot[4].omir_reg_n_0_[11] ;
  wire \g_slot[4].omir_reg_n_0_[12] ;
  wire \g_slot[4].omir_reg_n_0_[13] ;
  wire \g_slot[4].omir_reg_n_0_[14] ;
  wire \g_slot[4].omir_reg_n_0_[15] ;
  wire \g_slot[4].omir_reg_n_0_[18] ;
  wire \g_slot[4].omir_reg_n_0_[19] ;
  wire \g_slot[4].omir_reg_n_0_[20] ;
  wire \g_slot[4].omir_reg_n_0_[21] ;
  wire \g_slot[4].omir_reg_n_0_[24] ;
  wire \g_slot[4].omir_reg_n_0_[25] ;
  wire \g_slot[4].omir_reg_n_0_[26] ;
  wire \g_slot[4].omir_reg_n_0_[27] ;
  wire \g_slot[4].omir_reg_n_0_[28] ;
  wire \g_slot[4].omir_reg_n_0_[29] ;
  wire \g_slot[4].omir_reg_n_0_[2] ;
  wire \g_slot[4].omir_reg_n_0_[30] ;
  wire \g_slot[4].omir_reg_n_0_[31] ;
  wire \g_slot[4].omir_reg_n_0_[34] ;
  wire \g_slot[4].omir_reg_n_0_[35] ;
  wire \g_slot[4].omir_reg_n_0_[36] ;
  wire \g_slot[4].omir_reg_n_0_[37] ;
  wire \g_slot[4].omir_reg_n_0_[3] ;
  wire \g_slot[4].omir_reg_n_0_[40] ;
  wire \g_slot[4].omir_reg_n_0_[41] ;
  wire \g_slot[4].omir_reg_n_0_[42] ;
  wire \g_slot[4].omir_reg_n_0_[43] ;
  wire \g_slot[4].omir_reg_n_0_[44] ;
  wire \g_slot[4].omir_reg_n_0_[45] ;
  wire \g_slot[4].omir_reg_n_0_[46] ;
  wire \g_slot[4].omir_reg_n_0_[47] ;
  wire \g_slot[4].omir_reg_n_0_[4] ;
  wire \g_slot[4].omir_reg_n_0_[50] ;
  wire \g_slot[4].omir_reg_n_0_[51] ;
  wire \g_slot[4].omir_reg_n_0_[52] ;
  wire \g_slot[4].omir_reg_n_0_[53] ;
  wire \g_slot[4].omir_reg_n_0_[56] ;
  wire \g_slot[4].omir_reg_n_0_[57] ;
  wire \g_slot[4].omir_reg_n_0_[58] ;
  wire \g_slot[4].omir_reg_n_0_[59] ;
  wire \g_slot[4].omir_reg_n_0_[5] ;
  wire \g_slot[4].omir_reg_n_0_[60] ;
  wire \g_slot[4].omir_reg_n_0_[61] ;
  wire \g_slot[4].omir_reg_n_0_[62] ;
  wire \g_slot[4].omir_reg_n_0_[63] ;
  wire \g_slot[4].omir_reg_n_0_[8] ;
  wire \g_slot[4].omir_reg_n_0_[9] ;
  wire \g_slot[4].own_reg_n_0_[47] ;
  wire \g_slot[4].own_reg_n_0_[63] ;
  wire \g_slot[4].own_reg_n_0_[79] ;
  wire \g_slot[4].pe_i_i_100_n_0 ;
  wire \g_slot[4].pe_i_i_101_n_0 ;
  wire \g_slot[4].pe_i_i_102_n_0 ;
  wire \g_slot[4].pe_i_i_103_n_0 ;
  wire \g_slot[4].pe_i_i_104_n_0 ;
  wire \g_slot[4].pe_i_i_105_n_0 ;
  wire \g_slot[4].pe_i_i_106_n_0 ;
  wire \g_slot[4].pe_i_i_107_n_0 ;
  wire \g_slot[4].pe_i_i_108_n_0 ;
  wire \g_slot[4].pe_i_i_109_n_0 ;
  wire \g_slot[4].pe_i_i_10_n_0 ;
  wire \g_slot[4].pe_i_i_110_n_0 ;
  wire \g_slot[4].pe_i_i_111_n_0 ;
  wire \g_slot[4].pe_i_i_112_n_0 ;
  wire \g_slot[4].pe_i_i_113_n_0 ;
  wire \g_slot[4].pe_i_i_114_n_0 ;
  wire \g_slot[4].pe_i_i_115_n_0 ;
  wire \g_slot[4].pe_i_i_117_n_0 ;
  wire \g_slot[4].pe_i_i_119_n_0 ;
  wire \g_slot[4].pe_i_i_11_n_0 ;
  wire \g_slot[4].pe_i_i_12_n_0 ;
  wire \g_slot[4].pe_i_i_13_n_0 ;
  wire \g_slot[4].pe_i_i_1_n_0 ;
  wire \g_slot[4].pe_i_i_2_n_0 ;
  wire \g_slot[4].pe_i_i_35_n_0 ;
  wire \g_slot[4].pe_i_i_36_n_0 ;
  wire \g_slot[4].pe_i_i_3_n_0 ;
  wire \g_slot[4].pe_i_i_41_n_0 ;
  wire \g_slot[4].pe_i_i_47_n_0 ;
  wire \g_slot[4].pe_i_i_4_n_0 ;
  wire \g_slot[4].pe_i_i_51_n_0 ;
  wire \g_slot[4].pe_i_i_5_n_0 ;
  wire \g_slot[4].pe_i_i_64_n_0 ;
  wire \g_slot[4].pe_i_i_65_n_0 ;
  wire \g_slot[4].pe_i_i_66_n_0 ;
  wire \g_slot[4].pe_i_i_67_n_0 ;
  wire \g_slot[4].pe_i_i_68_n_0 ;
  wire \g_slot[4].pe_i_i_69_n_0 ;
  wire \g_slot[4].pe_i_i_6_n_0 ;
  wire \g_slot[4].pe_i_i_70_n_0 ;
  wire \g_slot[4].pe_i_i_71_n_0 ;
  wire \g_slot[4].pe_i_i_72_n_0 ;
  wire \g_slot[4].pe_i_i_73_n_0 ;
  wire \g_slot[4].pe_i_i_74_n_0 ;
  wire \g_slot[4].pe_i_i_75_n_0 ;
  wire \g_slot[4].pe_i_i_76_n_0 ;
  wire \g_slot[4].pe_i_i_77_n_0 ;
  wire \g_slot[4].pe_i_i_78_n_0 ;
  wire \g_slot[4].pe_i_i_79_n_0 ;
  wire \g_slot[4].pe_i_i_7_n_0 ;
  wire \g_slot[4].pe_i_i_80_n_0 ;
  wire \g_slot[4].pe_i_i_81_n_0 ;
  wire \g_slot[4].pe_i_i_82_n_0 ;
  wire \g_slot[4].pe_i_i_83_n_0 ;
  wire \g_slot[4].pe_i_i_84_n_0 ;
  wire \g_slot[4].pe_i_i_85_n_0 ;
  wire \g_slot[4].pe_i_i_86_n_0 ;
  wire \g_slot[4].pe_i_i_87_n_0 ;
  wire \g_slot[4].pe_i_i_88_n_0 ;
  wire \g_slot[4].pe_i_i_89_n_0 ;
  wire \g_slot[4].pe_i_i_8_n_0 ;
  wire \g_slot[4].pe_i_i_90_n_0 ;
  wire \g_slot[4].pe_i_i_91_n_0 ;
  wire \g_slot[4].pe_i_i_92_n_0 ;
  wire \g_slot[4].pe_i_i_93_n_0 ;
  wire \g_slot[4].pe_i_i_94_n_0 ;
  wire \g_slot[4].pe_i_i_95_n_0 ;
  wire \g_slot[4].pe_i_i_97_n_0 ;
  wire \g_slot[4].pe_i_i_99_n_0 ;
  wire \g_slot[4].pe_i_i_9_n_0 ;
  wire [1:1]\g_slot[4].sidx ;
  wire [4:0]\g_slot[5].bshA_reg[5] ;
  wire [4:0]\g_slot[5].bshB_reg[5] ;
  wire [10:0]\g_slot[5].iw ;
  wire \g_slot[5].nb_push0 ;
  wire [72:24]\g_slot[5].omir ;
  wire \g_slot[5].own_reg_n_0_[15] ;
  wire \g_slot[5].own_reg_n_0_[31] ;
  wire \g_slot[5].own_reg_n_0_[47] ;
  wire \g_slot[5].own_reg_n_0_[63] ;
  wire \g_slot[5].own_reg_n_0_[79] ;
  wire \g_slot[5].pe_i_i_10_n_0 ;
  wire \g_slot[5].pe_i_i_11_n_0 ;
  wire \g_slot[5].pe_i_i_12_n_0 ;
  wire \g_slot[5].pe_i_i_13_n_0 ;
  wire \g_slot[5].pe_i_i_15_n_0 ;
  wire \g_slot[5].pe_i_i_17_n_0 ;
  wire \g_slot[5].pe_i_i_1_n_0 ;
  wire \g_slot[5].pe_i_i_21_n_0 ;
  wire \g_slot[5].pe_i_i_2_n_0 ;
  wire \g_slot[5].pe_i_i_33_n_0 ;
  wire \g_slot[5].pe_i_i_34_n_0 ;
  wire \g_slot[5].pe_i_i_35_n_0 ;
  wire \g_slot[5].pe_i_i_36_n_0 ;
  wire \g_slot[5].pe_i_i_37_n_0 ;
  wire \g_slot[5].pe_i_i_38_n_0 ;
  wire \g_slot[5].pe_i_i_39_n_0 ;
  wire \g_slot[5].pe_i_i_3_n_0 ;
  wire \g_slot[5].pe_i_i_40_n_0 ;
  wire \g_slot[5].pe_i_i_41_n_0 ;
  wire \g_slot[5].pe_i_i_42_n_0 ;
  wire \g_slot[5].pe_i_i_43_n_0 ;
  wire \g_slot[5].pe_i_i_44_n_0 ;
  wire \g_slot[5].pe_i_i_45_n_0 ;
  wire \g_slot[5].pe_i_i_46_n_0 ;
  wire \g_slot[5].pe_i_i_47_n_0 ;
  wire \g_slot[5].pe_i_i_48_n_0 ;
  wire \g_slot[5].pe_i_i_49_n_0 ;
  wire \g_slot[5].pe_i_i_4_n_0 ;
  wire \g_slot[5].pe_i_i_50_n_0 ;
  wire \g_slot[5].pe_i_i_51_n_0 ;
  wire \g_slot[5].pe_i_i_52_n_0 ;
  wire \g_slot[5].pe_i_i_5_n_0 ;
  wire \g_slot[5].pe_i_i_6_n_0 ;
  wire \g_slot[5].pe_i_i_7_n_0 ;
  wire \g_slot[5].pe_i_i_8_n_0 ;
  wire \g_slot[5].pe_i_i_9_n_0 ;
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
  wire mrg_running;
  wire [29:0]obs_active;
  wire [29:0]obs_busy;
  wire [179:0]obs_cid;
  wire [29:0]obs_defect;
  wire [40:0]obs_ecorr;
  wire [29:0]obs_grown;
  wire [81:0]obs_growth;
  wire [89:0]obs_ptr;
  wire [29:0]obs_unrooted;
  wire [29:0]obs_whole;
  wire p_0_in101_in;
  wire p_0_in103_in;
  wire p_0_in104_in;
  wire p_0_in105_in;
  wire p_0_in106_in;
  wire p_0_in107_in;
  wire [2:0]p_0_in10_in;
  wire [2:0]p_0_in11_in;
  wire [1:1]p_0_in12_in;
  wire [2:2]p_0_in14_in;
  wire [2:0]p_0_in16_in;
  wire [1:1]p_0_in17_in;
  wire [2:2]p_0_in18_in;
  wire [1:1]p_0_in20_in;
  wire [2:2]p_0_in21_in;
  wire [2:0]p_0_in23_in;
  wire [1:1]p_0_in24_in;
  wire [2:2]p_0_in25_in;
  wire p_0_in33_in;
  wire p_0_in34_in;
  wire p_0_in35_in;
  wire p_0_in36_in;
  wire [2:0]p_0_in7_in;
  wire p_0_in85_in;
  wire p_0_in87_in;
  wire p_0_in89_in;
  wire [2:0]p_0_in8_in;
  wire p_0_in91_in;
  wire p_0_in93_in;
  wire p_0_in95_in;
  wire p_0_in97_in;
  wire p_0_in99_in;
  wire p_10_in;
  wire p_11_in;
  wire p_12_in;
  wire p_13_in;
  wire p_14_in;
  wire p_1_in;
  wire [2:0]p_2_in;
  wire p_5_in;
  wire p_6_in;
  wire p_7_in;
  wire p_8_in;
  wire [2:0]phase;
  wire \phase[0]_i_1_n_0 ;
  wire \phase[1]_i_1_n_0 ;
  wire \phase[1]_i_2_n_0 ;
  wire \phase[1]_rep_i_1__0_n_0 ;
  wire \phase[1]_rep_i_1__1_n_0 ;
  wire \phase[1]_rep_i_1__2_n_0 ;
  wire \phase[1]_rep_i_1__3_n_0 ;
  wire \phase[1]_rep_i_1_n_0 ;
  wire \phase[2]_i_1_n_0 ;
  wire \phase_reg[1]_rep__0_n_0 ;
  wire \phase_reg[1]_rep__1_n_0 ;
  wire \phase_reg[1]_rep__2_n_0 ;
  wire \phase_reg[1]_rep__3_n_0 ;
  wire \phase_reg[1]_rep_n_0 ;
  wire reset;
  wire \slot_cross[1] ;
  wire [15:0]\slot_nxt[0] ;
  wire [15:0]\slot_nxt[1] ;
  wire [15:0]\slot_nxt[2] ;
  wire [15:0]\slot_nxt[3] ;
  wire [15:0]\slot_nxt[4] ;
  wire [15:0]\slot_nxt[5] ;
  wire [2:0]stage__0;
  wire [2:0]stage__1;
  wire stage_last;
  wire [2:1]stage_reg;
  wire start;
  wire [7:0]step_cnt;
  wire \step_cnt[2]_i_2_n_0 ;
  wire \step_cnt[3]_i_2_n_0 ;
  wire \step_cnt[4]_i_2_n_0 ;
  wire \step_cnt[5]_i_2_n_0 ;
  wire \step_cnt[6]_i_2_n_0 ;
  wire \step_cnt[7]_i_1_n_0 ;
  wire \step_cnt[7]_i_3_n_0 ;
  wire \step_cnt_reg_n_0_[0] ;
  wire \step_cnt_reg_n_0_[1] ;
  wire \step_cnt_reg_n_0_[2] ;
  wire \step_cnt_reg_n_0_[3] ;
  wire \step_cnt_reg_n_0_[4] ;
  wire \step_cnt_reg_n_0_[5] ;
  wire \step_cnt_reg_n_0_[6] ;
  wire \step_cnt_reg_n_0_[7] ;
  wire syn_bit0;
  wire \syn_buf[3]_i_1_n_0 ;
  wire \syn_buf_reg_n_0_[0] ;
  wire \syn_buf_reg_n_0_[1] ;
  wire \syn_buf_reg_n_0_[2] ;
  wire \syn_buf_reg_n_0_[3] ;
  wire [3:0]syndrome;
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
  wire \NLW_g_slot[4].pe_i_o_busy_c_UNCONNECTED ;
  wire \NLW_g_slot[4].pe_i_o_pulse_UNCONNECTED ;
  wire [3:0]\NLW_g_slot[4].pe_i_o_push_UNCONNECTED ;
  wire \NLW_g_slot[5].pe_i_o_busy_c_UNCONNECTED ;
  wire \NLW_g_slot[5].pe_i_o_pulse_UNCONNECTED ;
  wire [3:0]\NLW_g_slot[5].pe_i_o_push_UNCONNECTED ;
  wire [7:7]\NLW_lat_live_cnt_reg[31]_i_2_CO_UNCONNECTED ;
  wire [7:7]\NLW_lat_push_cnt_reg[31]_i_2_CO_UNCONNECTED ;

  assign lat_push_cnt[31:0] = lat_flip_cnt;
  (* SOFT_HLUTNM = "soft_lutpair279" *) 
  LUT3 #(
    .INIT(8'h38)) 
    \FSM_sequential_stage[0]_i_1 
       (.I0(stage__0[1]),
        .I1(stage__0[0]),
        .I2(stage__0[2]),
        .O(stage__1[0]));
  (* SOFT_HLUTNM = "soft_lutpair175" *) 
  LUT4 #(
    .INIT(16'h1055)) 
    \FSM_sequential_stage[1]_i_1 
       (.I0(stage__0[1]),
        .I1(stage__0[2]),
        .I2(all_busy),
        .I3(stage__0[0]),
        .O(stage__1[1]));
  LUT6 #(
    .INIT(64'hFCC0FFC0CE0EFE0E)) 
    \FSM_sequential_stage[2]_i_1 
       (.I0(start),
        .I1(stage__0[1]),
        .I2(stage__0[2]),
        .I3(stage_last),
        .I4(all_busy),
        .I5(stage__0[0]),
        .O(\FSM_sequential_stage[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair279" *) 
  LUT3 #(
    .INIT(8'h61)) 
    \FSM_sequential_stage[2]_i_2 
       (.I0(stage__0[0]),
        .I1(stage__0[1]),
        .I2(stage__0[2]),
        .O(stage__1[2]));
  (* SOFT_HLUTNM = "soft_lutpair174" *) 
  LUT5 #(
    .INIT(32'hFFEB0000)) 
    \FSM_sequential_stage[2]_i_3 
       (.I0(stage__0[1]),
        .I1(stage__0[2]),
        .I2(stage__0[0]),
        .I3(lat_bpass),
        .I4(done_i_2_n_0),
        .O(stage_last));
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
        .D(stage__1[1]),
        .Q(stage__0[1]),
        .R(reset));
  (* FSM_ENCODED_STATES = "ST_DROP:110,ST_GW:101,ST_MW:100,ST_GH:011,ST_MH:001,ST_IDLE:000,iSTATE:010" *) 
  FDRE \FSM_sequential_stage_reg[2] 
       (.C(clk),
        .CE(\FSM_sequential_stage[2]_i_1_n_0 ),
        .D(stage__1[2]),
        .Q(stage__0[2]),
        .R(reset));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    all_busy_INST_0
       (.I0(all_busy_INST_0_i_1_n_0),
        .I1(all_busy_INST_0_i_2_n_0),
        .I2(all_busy_INST_0_i_3_n_0),
        .I3(all_busy_INST_0_i_4_n_0),
        .I4(all_busy_INST_0_i_5_n_0),
        .I5(any_step_busy0),
        .O(all_busy));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF5F4)) 
    all_busy_INST_0_i_1
       (.I0(all_busy_INST_0_i_7_n_0),
        .I1(\g_slot[3].bshA_reg[3] [0]),
        .I2(all_busy_INST_0_i_8_n_0),
        .I3(\g_slot[2].bshA_reg[2] [0]),
        .I4(all_busy_INST_0_i_9_n_0),
        .I5(all_busy_INST_0_i_10_n_0),
        .O(all_busy_INST_0_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    all_busy_INST_0_i_10
       (.I0(all_busy_INST_0_i_21_n_0),
        .I1(all_busy_INST_0_i_22_n_0),
        .I2(all_busy_INST_0_i_23_n_0),
        .I3(all_busy_INST_0_i_24_n_0),
        .I4(all_busy_INST_0_i_25_n_0),
        .I5(all_busy_INST_0_i_26_n_0),
        .O(all_busy_INST_0_i_10_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFBAA8A)) 
    all_busy_INST_0_i_11
       (.I0(\g_slot[0].bshA_reg[0] [2]),
        .I1(phase[0]),
        .I2(\phase_reg[1]_rep_n_0 ),
        .I3(phase[2]),
        .I4(\g_slot[0].bshA_reg[0] [1]),
        .I5(all_busy_INST_0_i_27_n_0),
        .O(all_busy_INST_0_i_11_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFBAA8A)) 
    all_busy_INST_0_i_12
       (.I0(\g_slot[1].bshA_reg[1] [2]),
        .I1(phase[0]),
        .I2(\phase_reg[1]_rep_n_0 ),
        .I3(phase[2]),
        .I4(\g_slot[1].bshA_reg[1] [1]),
        .I5(all_busy_INST_0_i_28_n_0),
        .O(all_busy_INST_0_i_12_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFBAA8A)) 
    all_busy_INST_0_i_13
       (.I0(\g_slot[0].bshB_reg[0] [2]),
        .I1(phase[0]),
        .I2(\phase_reg[1]_rep_n_0 ),
        .I3(phase[2]),
        .I4(\g_slot[0].bshB_reg[0] [1]),
        .I5(all_busy_INST_0_i_29_n_0),
        .O(all_busy_INST_0_i_13_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFBAA8A)) 
    all_busy_INST_0_i_14
       (.I0(\g_slot[1].bshB_reg[1] [2]),
        .I1(phase[0]),
        .I2(\phase_reg[1]_rep_n_0 ),
        .I3(phase[2]),
        .I4(\g_slot[1].bshB_reg[1] [1]),
        .I5(all_busy_INST_0_i_30_n_0),
        .O(all_busy_INST_0_i_14_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFBAA8A)) 
    all_busy_INST_0_i_15
       (.I0(\g_slot[4].bshB_reg[4] [2]),
        .I1(phase[0]),
        .I2(\phase_reg[1]_rep_n_0 ),
        .I3(phase[2]),
        .I4(\g_slot[4].bshB_reg[4] [1]),
        .I5(all_busy_INST_0_i_31_n_0),
        .O(all_busy_INST_0_i_15_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFBAA8A)) 
    all_busy_INST_0_i_16
       (.I0(\g_slot[5].bshB_reg[5] [2]),
        .I1(phase[0]),
        .I2(\phase_reg[1]_rep_n_0 ),
        .I3(phase[2]),
        .I4(\g_slot[5].bshB_reg[5] [1]),
        .I5(all_busy_INST_0_i_32_n_0),
        .O(all_busy_INST_0_i_16_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFBAA8A)) 
    all_busy_INST_0_i_17
       (.I0(\g_slot[2].bshB_reg[2] [2]),
        .I1(phase[0]),
        .I2(\phase_reg[1]_rep_n_0 ),
        .I3(phase[2]),
        .I4(\g_slot[2].bshB_reg[2] [1]),
        .I5(all_busy_INST_0_i_33_n_0),
        .O(all_busy_INST_0_i_17_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFBAA8A)) 
    all_busy_INST_0_i_18
       (.I0(\g_slot[3].bshB_reg[3] [2]),
        .I1(phase[0]),
        .I2(\phase_reg[1]_rep_n_0 ),
        .I3(phase[2]),
        .I4(\g_slot[3].bshB_reg[3] [1]),
        .I5(all_busy_INST_0_i_34_n_0),
        .O(all_busy_INST_0_i_18_n_0));
  LUT5 #(
    .INIT(32'hFFFB8AAA)) 
    all_busy_INST_0_i_19
       (.I0(\g_slot[3].bshA_reg[3] [3]),
        .I1(phase[2]),
        .I2(phase[0]),
        .I3(\phase_reg[1]_rep_n_0 ),
        .I4(\g_slot[3].bshA_reg[3] [4]),
        .O(all_busy_INST_0_i_19_n_0));
  LUT5 #(
    .INIT(32'hFAFAFFFE)) 
    all_busy_INST_0_i_2
       (.I0(all_busy_INST_0_i_11_n_0),
        .I1(\g_slot[0].bshA_reg[0] [0]),
        .I2(all_busy_INST_0_i_12_n_0),
        .I3(\g_slot[1].bshA_reg[1] [0]),
        .I4(all_busy_INST_0_i_7_n_0),
        .O(all_busy_INST_0_i_2_n_0));
  LUT5 #(
    .INIT(32'hFFFB8AAA)) 
    all_busy_INST_0_i_20
       (.I0(\g_slot[2].bshA_reg[2] [3]),
        .I1(phase[2]),
        .I2(phase[0]),
        .I3(\phase_reg[1]_rep_n_0 ),
        .I4(\g_slot[2].bshA_reg[2] [4]),
        .O(all_busy_INST_0_i_20_n_0));
  LUT5 #(
    .INIT(32'hFFEFA8AA)) 
    all_busy_INST_0_i_21
       (.I0(\g_slot[4].bshA_reg[4] [1]),
        .I1(phase[2]),
        .I2(\phase_reg[1]_rep_n_0 ),
        .I3(phase[0]),
        .I4(\g_slot[4].bshA_reg[4] [2]),
        .O(all_busy_INST_0_i_21_n_0));
  LUT5 #(
    .INIT(32'hFFFB8AAA)) 
    all_busy_INST_0_i_22
       (.I0(\g_slot[4].bshA_reg[4] [3]),
        .I1(phase[2]),
        .I2(phase[0]),
        .I3(\phase_reg[1]_rep_n_0 ),
        .I4(\g_slot[4].bshA_reg[4] [4]),
        .O(all_busy_INST_0_i_22_n_0));
  (* SOFT_HLUTNM = "soft_lutpair271" *) 
  LUT4 #(
    .INIT(16'hAAA8)) 
    all_busy_INST_0_i_23
       (.I0(\g_slot[4].bshA_reg[4] [0]),
        .I1(\phase_reg[1]_rep_n_0 ),
        .I2(phase[0]),
        .I3(phase[2]),
        .O(all_busy_INST_0_i_23_n_0));
  LUT5 #(
    .INIT(32'hFFEFA8AA)) 
    all_busy_INST_0_i_24
       (.I0(\g_slot[5].bshA_reg[5] [1]),
        .I1(phase[2]),
        .I2(\phase_reg[1]_rep_n_0 ),
        .I3(phase[0]),
        .I4(\g_slot[5].bshA_reg[5] [2]),
        .O(all_busy_INST_0_i_24_n_0));
  LUT5 #(
    .INIT(32'hFFFB8AAA)) 
    all_busy_INST_0_i_25
       (.I0(\g_slot[5].bshA_reg[5] [3]),
        .I1(phase[2]),
        .I2(phase[0]),
        .I3(\phase_reg[1]_rep_n_0 ),
        .I4(\g_slot[5].bshA_reg[5] [4]),
        .O(all_busy_INST_0_i_25_n_0));
  (* SOFT_HLUTNM = "soft_lutpair271" *) 
  LUT4 #(
    .INIT(16'hAAA8)) 
    all_busy_INST_0_i_26
       (.I0(\g_slot[5].bshA_reg[5] [0]),
        .I1(\phase_reg[1]_rep_n_0 ),
        .I2(phase[0]),
        .I3(phase[2]),
        .O(all_busy_INST_0_i_26_n_0));
  LUT5 #(
    .INIT(32'hFFFB8AAA)) 
    all_busy_INST_0_i_27
       (.I0(\g_slot[0].bshA_reg[0] [3]),
        .I1(phase[2]),
        .I2(phase[0]),
        .I3(\phase_reg[1]_rep_n_0 ),
        .I4(\g_slot[0].bshA_reg[0] [4]),
        .O(all_busy_INST_0_i_27_n_0));
  LUT5 #(
    .INIT(32'hFFFB8AAA)) 
    all_busy_INST_0_i_28
       (.I0(\g_slot[1].bshA_reg[1] [3]),
        .I1(phase[2]),
        .I2(phase[0]),
        .I3(\phase_reg[1]_rep_n_0 ),
        .I4(\g_slot[1].bshA_reg[1] [4]),
        .O(all_busy_INST_0_i_28_n_0));
  (* SOFT_HLUTNM = "soft_lutpair177" *) 
  LUT5 #(
    .INIT(32'hFFFB8AAA)) 
    all_busy_INST_0_i_29
       (.I0(\g_slot[0].bshB_reg[0] [3]),
        .I1(phase[2]),
        .I2(phase[0]),
        .I3(\phase_reg[1]_rep_n_0 ),
        .I4(\g_slot[0].bshB_reg[0] [4]),
        .O(all_busy_INST_0_i_29_n_0));
  LUT5 #(
    .INIT(32'hFAFAFFFE)) 
    all_busy_INST_0_i_3
       (.I0(all_busy_INST_0_i_13_n_0),
        .I1(\g_slot[0].bshB_reg[0] [0]),
        .I2(all_busy_INST_0_i_14_n_0),
        .I3(\g_slot[1].bshB_reg[1] [0]),
        .I4(all_busy_INST_0_i_7_n_0),
        .O(all_busy_INST_0_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair178" *) 
  LUT5 #(
    .INIT(32'hFFFB8AAA)) 
    all_busy_INST_0_i_30
       (.I0(\g_slot[1].bshB_reg[1] [3]),
        .I1(phase[2]),
        .I2(phase[0]),
        .I3(\phase_reg[1]_rep_n_0 ),
        .I4(\g_slot[1].bshB_reg[1] [4]),
        .O(all_busy_INST_0_i_30_n_0));
  (* SOFT_HLUTNM = "soft_lutpair181" *) 
  LUT5 #(
    .INIT(32'hFFFB8AAA)) 
    all_busy_INST_0_i_31
       (.I0(\g_slot[4].bshB_reg[4] [3]),
        .I1(phase[2]),
        .I2(phase[0]),
        .I3(\phase_reg[1]_rep_n_0 ),
        .I4(\g_slot[4].bshB_reg[4] [4]),
        .O(all_busy_INST_0_i_31_n_0));
  LUT5 #(
    .INIT(32'hFFFB8AAA)) 
    all_busy_INST_0_i_32
       (.I0(\g_slot[5].bshB_reg[5] [3]),
        .I1(phase[2]),
        .I2(phase[0]),
        .I3(\phase_reg[1]_rep_n_0 ),
        .I4(\g_slot[5].bshB_reg[5] [4]),
        .O(all_busy_INST_0_i_32_n_0));
  (* SOFT_HLUTNM = "soft_lutpair179" *) 
  LUT5 #(
    .INIT(32'hFFFB8AAA)) 
    all_busy_INST_0_i_33
       (.I0(\g_slot[2].bshB_reg[2] [3]),
        .I1(phase[2]),
        .I2(phase[0]),
        .I3(\phase_reg[1]_rep_n_0 ),
        .I4(\g_slot[2].bshB_reg[2] [4]),
        .O(all_busy_INST_0_i_33_n_0));
  (* SOFT_HLUTNM = "soft_lutpair180" *) 
  LUT5 #(
    .INIT(32'hFFFB8AAA)) 
    all_busy_INST_0_i_34
       (.I0(\g_slot[3].bshB_reg[3] [3]),
        .I1(phase[2]),
        .I2(phase[0]),
        .I3(\phase_reg[1]_rep_n_0 ),
        .I4(\g_slot[3].bshB_reg[3] [4]),
        .O(all_busy_INST_0_i_34_n_0));
  LUT5 #(
    .INIT(32'hFAFAFFFE)) 
    all_busy_INST_0_i_4
       (.I0(all_busy_INST_0_i_15_n_0),
        .I1(\g_slot[4].bshB_reg[4] [0]),
        .I2(all_busy_INST_0_i_16_n_0),
        .I3(\g_slot[5].bshB_reg[5] [0]),
        .I4(all_busy_INST_0_i_7_n_0),
        .O(all_busy_INST_0_i_4_n_0));
  LUT5 #(
    .INIT(32'hFAFAFFFE)) 
    all_busy_INST_0_i_5
       (.I0(all_busy_INST_0_i_17_n_0),
        .I1(\g_slot[2].bshB_reg[2] [0]),
        .I2(all_busy_INST_0_i_18_n_0),
        .I3(\g_slot[3].bshB_reg[3] [0]),
        .I4(all_busy_INST_0_i_7_n_0),
        .O(all_busy_INST_0_i_5_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    all_busy_INST_0_i_6
       (.I0(\slot_nxt[1] [0]),
        .I1(\slot_nxt[0] [0]),
        .I2(\slot_nxt[4] [0]),
        .I3(\slot_nxt[5] [0]),
        .I4(\slot_nxt[2] [0]),
        .I5(\slot_nxt[3] [0]),
        .O(any_step_busy0));
  (* SOFT_HLUTNM = "soft_lutpair178" *) 
  LUT3 #(
    .INIT(8'h01)) 
    all_busy_INST_0_i_7
       (.I0(phase[2]),
        .I1(phase[0]),
        .I2(\phase_reg[1]_rep_n_0 ),
        .O(all_busy_INST_0_i_7_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFBAA8A)) 
    all_busy_INST_0_i_8
       (.I0(\g_slot[3].bshA_reg[3] [2]),
        .I1(phase[0]),
        .I2(\phase_reg[1]_rep_n_0 ),
        .I3(phase[2]),
        .I4(\g_slot[3].bshA_reg[3] [1]),
        .I5(all_busy_INST_0_i_19_n_0),
        .O(all_busy_INST_0_i_8_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFBAA8A)) 
    all_busy_INST_0_i_9
       (.I0(\g_slot[2].bshA_reg[2] [2]),
        .I1(phase[0]),
        .I2(\phase_reg[1]_rep_n_0 ),
        .I3(phase[2]),
        .I4(\g_slot[2].bshA_reg[2] [1]),
        .I5(all_busy_INST_0_i_20_n_0),
        .O(all_busy_INST_0_i_9_n_0));
  LUT6 #(
    .INIT(64'h0000000000000070)) 
    \commit_hold[8]_i_1 
       (.I0(lat_bpass),
        .I1(mrg_running),
        .I2(\lat_live_cnt[31]_i_1_n_0 ),
        .I3(phase[2]),
        .I4(\phase_reg[1]_rep_n_0 ),
        .I5(phase[0]),
        .O(commit_hold0));
  (* SOFT_HLUTNM = "soft_lutpair176" *) 
  LUT3 #(
    .INIT(8'h14)) 
    \commit_hold[8]_i_2 
       (.I0(stage__0[1]),
        .I1(stage__0[2]),
        .I2(stage__0[0]),
        .O(mrg_running));
  FDRE \commit_hold_reg[0] 
       (.C(clk),
        .CE(commit_hold0),
        .D(obs_ecorr[4]),
        .Q(commit_hold[0]),
        .R(reset));
  FDRE \commit_hold_reg[1] 
       (.C(clk),
        .CE(commit_hold0),
        .D(obs_ecorr[33]),
        .Q(commit_hold[1]),
        .R(reset));
  FDRE \commit_hold_reg[2] 
       (.C(clk),
        .CE(commit_hold0),
        .D(obs_ecorr[34]),
        .Q(commit_hold[2]),
        .R(reset));
  FDRE \commit_hold_reg[3] 
       (.C(clk),
        .CE(commit_hold0),
        .D(obs_ecorr[35]),
        .Q(commit_hold[3]),
        .R(reset));
  FDRE \commit_hold_reg[4] 
       (.C(clk),
        .CE(commit_hold0),
        .D(obs_ecorr[36]),
        .Q(commit_hold[4]),
        .R(reset));
  FDRE \commit_hold_reg[5] 
       (.C(clk),
        .CE(commit_hold0),
        .D(obs_ecorr[37]),
        .Q(commit_hold[5]),
        .R(reset));
  FDRE \commit_hold_reg[6] 
       (.C(clk),
        .CE(commit_hold0),
        .D(obs_ecorr[38]),
        .Q(commit_hold[6]),
        .R(reset));
  FDRE \commit_hold_reg[7] 
       (.C(clk),
        .CE(commit_hold0),
        .D(obs_ecorr[39]),
        .Q(commit_hold[7]),
        .R(reset));
  FDRE \commit_hold_reg[8] 
       (.C(clk),
        .CE(commit_hold0),
        .D(obs_ecorr[40]),
        .Q(commit_hold[8]),
        .R(reset));
  LUT5 #(
    .INIT(32'hFBFFFFFF)) 
    \commit_onehot[8]_i_1 
       (.I0(reset),
        .I1(stage__0[2]),
        .I2(stage__0[0]),
        .I3(done_i_2_n_0),
        .I4(stage__0[1]),
        .O(\commit_onehot[8]_i_1_n_0 ));
  FDRE \commit_onehot_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(commit_hold[0]),
        .Q(commit_onehot[0]),
        .R(\commit_onehot[8]_i_1_n_0 ));
  FDRE \commit_onehot_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(commit_hold[1]),
        .Q(commit_onehot[1]),
        .R(\commit_onehot[8]_i_1_n_0 ));
  FDRE \commit_onehot_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(commit_hold[2]),
        .Q(commit_onehot[2]),
        .R(\commit_onehot[8]_i_1_n_0 ));
  FDRE \commit_onehot_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(commit_hold[3]),
        .Q(commit_onehot[3]),
        .R(\commit_onehot[8]_i_1_n_0 ));
  FDRE \commit_onehot_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(commit_hold[4]),
        .Q(commit_onehot[4]),
        .R(\commit_onehot[8]_i_1_n_0 ));
  FDRE \commit_onehot_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(commit_hold[5]),
        .Q(commit_onehot[5]),
        .R(\commit_onehot[8]_i_1_n_0 ));
  FDRE \commit_onehot_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(commit_hold[6]),
        .Q(commit_onehot[6]),
        .R(\commit_onehot[8]_i_1_n_0 ));
  FDRE \commit_onehot_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(commit_hold[7]),
        .Q(commit_onehot[7]),
        .R(\commit_onehot[8]_i_1_n_0 ));
  FDRE \commit_onehot_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(commit_hold[8]),
        .Q(commit_onehot[8]),
        .R(\commit_onehot[8]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h56)) 
    \dbg_stage[0]_i_1 
       (.I0(stage__0[0]),
        .I1(stage__0[2]),
        .I2(stage__0[1]),
        .O(\dbg_stage[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair277" *) 
  LUT3 #(
    .INIT(8'h34)) 
    \dbg_stage[1]_i_1 
       (.I0(stage__0[0]),
        .I1(stage__0[1]),
        .I2(stage__0[2]),
        .O(stage_reg[1]));
  LUT5 #(
    .INIT(32'hAAAAA880)) 
    \dbg_stage[2]_i_1 
       (.I0(done_i_2_n_0),
        .I1(lat_bpass),
        .I2(stage__0[0]),
        .I3(stage__0[2]),
        .I4(stage__0[1]),
        .O(dbg_stage0));
  (* SOFT_HLUTNM = "soft_lutpair277" *) 
  LUT3 #(
    .INIT(8'h54)) 
    \dbg_stage[2]_i_2 
       (.I0(stage__0[2]),
        .I1(stage__0[1]),
        .I2(stage__0[0]),
        .O(stage_reg[2]));
  FDRE \dbg_stage_reg[0] 
       (.C(clk),
        .CE(dbg_stage0),
        .D(\dbg_stage[0]_i_1_n_0 ),
        .Q(dbg_stage[0]),
        .R(reset));
  FDRE \dbg_stage_reg[1] 
       (.C(clk),
        .CE(dbg_stage0),
        .D(stage_reg[1]),
        .Q(dbg_stage[1]),
        .R(reset));
  FDRE \dbg_stage_reg[2] 
       (.C(clk),
        .CE(dbg_stage0),
        .D(stage_reg[2]),
        .Q(dbg_stage[2]),
        .R(reset));
  FDRE \dbg_step_reg[0] 
       (.C(clk),
        .CE(dbg_stage0),
        .D(\step_cnt_reg_n_0_[0] ),
        .Q(dbg_step[0]),
        .R(reset));
  FDRE \dbg_step_reg[1] 
       (.C(clk),
        .CE(dbg_stage0),
        .D(\step_cnt_reg_n_0_[1] ),
        .Q(dbg_step[1]),
        .R(reset));
  FDRE \dbg_step_reg[2] 
       (.C(clk),
        .CE(dbg_stage0),
        .D(\step_cnt_reg_n_0_[2] ),
        .Q(dbg_step[2]),
        .R(reset));
  FDRE \dbg_step_reg[3] 
       (.C(clk),
        .CE(dbg_stage0),
        .D(\step_cnt_reg_n_0_[3] ),
        .Q(dbg_step[3]),
        .R(reset));
  FDRE \dbg_step_reg[4] 
       (.C(clk),
        .CE(dbg_stage0),
        .D(\step_cnt_reg_n_0_[4] ),
        .Q(dbg_step[4]),
        .R(reset));
  FDRE \dbg_step_reg[5] 
       (.C(clk),
        .CE(dbg_stage0),
        .D(\step_cnt_reg_n_0_[5] ),
        .Q(dbg_step[5]),
        .R(reset));
  FDRE \dbg_step_reg[6] 
       (.C(clk),
        .CE(dbg_stage0),
        .D(\step_cnt_reg_n_0_[6] ),
        .Q(dbg_step[6]),
        .R(reset));
  FDRE \dbg_step_reg[7] 
       (.C(clk),
        .CE(dbg_stage0),
        .D(\step_cnt_reg_n_0_[7] ),
        .Q(dbg_step[7]),
        .R(reset));
  FDRE dbg_valid_reg
       (.C(clk),
        .CE(1'b1),
        .D(dbg_stage0),
        .Q(dbg_valid),
        .R(reset));
  LUT6 #(
    .INIT(64'h0000000000000080)) 
    done_i_1
       (.I0(stage__0[0]),
        .I1(done_i_2_n_0),
        .I2(lat_bpass),
        .I3(stage__0[2]),
        .I4(stage__0[1]),
        .I5(all_busy),
        .O(done_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair179" *) 
  LUT3 #(
    .INIT(8'h02)) 
    done_i_2
       (.I0(phase[2]),
        .I1(phase[0]),
        .I2(\phase_reg[1]_rep_n_0 ),
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
        .stage({stage_reg,\dbg_stage[0]_i_1_n_0 }),
        .u_pulse(\g_eslot[0].upulse ),
        .v_pulse(\g_eslot[1].upulse ));
  LUT6 #(
    .INIT(64'h0100C00000000000)) 
    \g_eslot[0].ed_i_i_1 
       (.I0(\g_slot[0].pe_i_i_40_n_0 ),
        .I1(p_0_in107_in),
        .I2(stage__0[2]),
        .I3(stage__0[0]),
        .I4(stage__0[1]),
        .I5(p_13_in),
        .O(\g_eslot[0].upulse ));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \g_eslot[0].ed_i_i_10 
       (.I0(obs_growth[4]),
        .I1(obs_ecorr[0]),
        .I2(\g_slot[0].pe_i_i_93_n_0 ),
        .I3(obs_growth[3]),
        .I4(\g_slot[1].pe_i_i_65_n_0 ),
        .O(\g_eslot[0].ed_i_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hBBB888B888888888)) 
    \g_eslot[0].ed_i_i_11 
       (.I0(\g_eslot[0].ed_i_i_13_n_0 ),
        .I1(\g_slot[0].pe_i_i_92_n_0 ),
        .I2(obs_ecorr[1]),
        .I3(\g_slot[0].pe_i_i_93_n_0 ),
        .I4(obs_growth[5]),
        .I5(\g_slot[1].pe_i_i_65_n_0 ),
        .O(\g_eslot[0].ed_i_i_11_n_0 ));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \g_eslot[0].ed_i_i_12 
       (.I0(obs_growth[6]),
        .I1(obs_ecorr[1]),
        .I2(\g_slot[0].pe_i_i_93_n_0 ),
        .I3(obs_growth[5]),
        .I4(\g_slot[1].pe_i_i_65_n_0 ),
        .O(\g_eslot[0].ed_i_i_12_n_0 ));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \g_eslot[0].ed_i_i_13 
       (.I0(obs_ecorr[3]),
        .I1(obs_growth[1]),
        .I2(\g_slot[0].pe_i_i_93_n_0 ),
        .I3(obs_growth[2]),
        .I4(\g_slot[1].pe_i_i_65_n_0 ),
        .O(\g_eslot[0].ed_i_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hBBB888B888888888)) 
    \g_eslot[0].ed_i_i_14 
       (.I0(\g_eslot[0].ed_i_i_10_n_0 ),
        .I1(\g_slot[0].pe_i_i_92_n_0 ),
        .I2(obs_growth[0]),
        .I3(\g_slot[0].pe_i_i_93_n_0 ),
        .I4(obs_ecorr[2]),
        .I5(\g_slot[1].pe_i_i_65_n_0 ),
        .O(\g_eslot[0].ed_i_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_eslot[0].ed_i_i_15 
       (.I0(obs_ecorr[4]),
        .I1(obs_growth[3]),
        .I2(\g_slot[0].pe_i_i_93_n_0 ),
        .I3(obs_growth[4]),
        .I4(\g_slot[1].pe_i_i_65_n_0 ),
        .I5(obs_ecorr[0]),
        .O(\g_eslot[0].ed_i_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_eslot[0].ed_i_i_16 
       (.I0(obs_growth[9]),
        .I1(obs_growth[2]),
        .I2(\g_slot[0].pe_i_i_93_n_0 ),
        .I3(obs_ecorr[3]),
        .I4(\g_slot[1].pe_i_i_65_n_0 ),
        .I5(obs_growth[1]),
        .O(\g_eslot[0].ed_i_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_eslot[0].ed_i_i_17 
       (.I0(obs_growth[8]),
        .I1(obs_ecorr[2]),
        .I2(\g_slot[0].pe_i_i_93_n_0 ),
        .I3(obs_growth[7]),
        .I4(\g_slot[1].pe_i_i_65_n_0 ),
        .I5(obs_growth[0]),
        .O(\g_eslot[0].ed_i_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h0100A00000000000)) 
    \g_eslot[0].ed_i_i_2 
       (.I0(p_0_in106_in),
        .I1(\g_slot[0].pe_i_i_23_n_0 ),
        .I2(stage__0[2]),
        .I3(stage__0[0]),
        .I4(stage__0[1]),
        .I5(p_14_in),
        .O(\g_eslot[1].upulse ));
  LUT5 #(
    .INIT(32'hFF00B8B8)) 
    \g_eslot[0].ed_i_i_3 
       (.I0(\g_eslot[0].ed_i_i_9_n_0 ),
        .I1(\g_slot[0].pe_i_i_92_n_0 ),
        .I2(\g_eslot[0].ed_i_i_10_n_0 ),
        .I3(\g_eslot[0].ed_i_i_11_n_0 ),
        .I4(phase[0]),
        .O(\g_eslot[0].ab_state [1]));
  LUT6 #(
    .INIT(64'hFF33CC00B8B8B8B8)) 
    \g_eslot[0].ed_i_i_4 
       (.I0(\g_eslot[0].ed_i_i_12_n_0 ),
        .I1(\g_slot[0].pe_i_i_92_n_0 ),
        .I2(\g_eslot[0].ed_i_i_13_n_0 ),
        .I3(\g_eslot[0].ed_i_i_9_n_0 ),
        .I4(\g_eslot[0].ed_i_i_10_n_0 ),
        .I5(phase[0]),
        .O(\g_eslot[0].ab_state [0]));
  (* SOFT_HLUTNM = "soft_lutpair274" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \g_eslot[0].ed_i_i_5 
       (.I0(\g_eslot[0].ed_i_i_14_n_0 ),
        .I1(\g_eslot[0].ed_i_i_11_n_0 ),
        .I2(phase[0]),
        .O(\g_eslot[0].ab_state [2]));
  LUT6 #(
    .INIT(64'hB8B8B8B8FF33CC00)) 
    \g_eslot[0].ed_i_i_6 
       (.I0(\g_eslot[0].ed_i_i_12_n_0 ),
        .I1(\g_slot[0].pe_i_i_92_n_0 ),
        .I2(\g_eslot[0].ed_i_i_13_n_0 ),
        .I3(\g_eslot[0].ed_i_i_15_n_0 ),
        .I4(\g_eslot[0].ed_i_i_9_n_0 ),
        .I5(phase[0]),
        .O(\g_eslot[0].my_state [2]));
  LUT6 #(
    .INIT(64'hB8B8B8B8FF33CC00)) 
    \g_eslot[0].ed_i_i_7 
       (.I0(\g_eslot[0].ed_i_i_15_n_0 ),
        .I1(\g_slot[0].pe_i_i_92_n_0 ),
        .I2(\g_eslot[0].ed_i_i_9_n_0 ),
        .I3(\g_eslot[0].ed_i_i_16_n_0 ),
        .I4(\g_eslot[0].ed_i_i_12_n_0 ),
        .I5(phase[0]),
        .O(\g_eslot[0].my_state [1]));
  LUT6 #(
    .INIT(64'hB8B8B8B8FF33CC00)) 
    \g_eslot[0].ed_i_i_8 
       (.I0(\g_eslot[0].ed_i_i_16_n_0 ),
        .I1(\g_slot[0].pe_i_i_92_n_0 ),
        .I2(\g_eslot[0].ed_i_i_12_n_0 ),
        .I3(\g_eslot[0].ed_i_i_17_n_0 ),
        .I4(\g_eslot[0].ed_i_i_15_n_0 ),
        .I5(phase[0]),
        .O(\g_eslot[0].my_state [0]));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \g_eslot[0].ed_i_i_9 
       (.I0(obs_growth[7]),
        .I1(obs_growth[0]),
        .I2(\g_slot[0].pe_i_i_93_n_0 ),
        .I3(obs_ecorr[2]),
        .I4(\g_slot[1].pe_i_i_65_n_0 ),
        .O(\g_eslot[0].ed_i_i_9_n_0 ));
  FDRE \g_eslot[0].eown_reg[0] 
       (.C(clk),
        .CE(\g_eslot[0].eown [1]),
        .D(\eslot_nxt[0] [0]),
        .Q(obs_growth[8]),
        .R(reset));
  FDRE \g_eslot[0].eown_reg[10] 
       (.C(clk),
        .CE(\g_eslot[0].eown [10]),
        .D(\eslot_nxt[0] [1]),
        .Q(obs_growth[3]),
        .R(reset));
  FDRE \g_eslot[0].eown_reg[11] 
       (.C(clk),
        .CE(\g_eslot[0].eown [10]),
        .D(\eslot_nxt[0] [2]),
        .Q(obs_ecorr[1]),
        .R(reset));
  FDRE \g_eslot[0].eown_reg[12] 
       (.C(clk),
        .CE(\g_eslot[0].eown [13]),
        .D(\eslot_nxt[0] [0]),
        .Q(obs_growth[0]),
        .R(reset));
  FDRE \g_eslot[0].eown_reg[13] 
       (.C(clk),
        .CE(\g_eslot[0].eown [13]),
        .D(\eslot_nxt[0] [1]),
        .Q(obs_growth[1]),
        .R(reset));
  FDRE \g_eslot[0].eown_reg[14] 
       (.C(clk),
        .CE(\g_eslot[0].eown [13]),
        .D(\eslot_nxt[0] [2]),
        .Q(obs_ecorr[0]),
        .R(reset));
  FDRE \g_eslot[0].eown_reg[1] 
       (.C(clk),
        .CE(\g_eslot[0].eown [1]),
        .D(\eslot_nxt[0] [1]),
        .Q(obs_growth[9]),
        .R(reset));
  FDRE \g_eslot[0].eown_reg[2] 
       (.C(clk),
        .CE(\g_eslot[0].eown [1]),
        .D(\eslot_nxt[0] [2]),
        .Q(obs_ecorr[4]),
        .R(reset));
  FDRE \g_eslot[0].eown_reg[3] 
       (.C(clk),
        .CE(\g_eslot[0].eown [4]),
        .D(\eslot_nxt[0] [0]),
        .Q(obs_growth[6]),
        .R(reset));
  FDRE \g_eslot[0].eown_reg[4] 
       (.C(clk),
        .CE(\g_eslot[0].eown [4]),
        .D(\eslot_nxt[0] [1]),
        .Q(obs_growth[7]),
        .R(reset));
  FDRE \g_eslot[0].eown_reg[5] 
       (.C(clk),
        .CE(\g_eslot[0].eown [4]),
        .D(\eslot_nxt[0] [2]),
        .Q(obs_ecorr[3]),
        .R(reset));
  FDRE \g_eslot[0].eown_reg[6] 
       (.C(clk),
        .CE(\g_eslot[0].eown [7]),
        .D(\eslot_nxt[0] [0]),
        .Q(obs_growth[4]),
        .R(reset));
  FDRE \g_eslot[0].eown_reg[7] 
       (.C(clk),
        .CE(\g_eslot[0].eown [7]),
        .D(\eslot_nxt[0] [1]),
        .Q(obs_growth[5]),
        .R(reset));
  FDRE \g_eslot[0].eown_reg[8] 
       (.C(clk),
        .CE(\g_eslot[0].eown [7]),
        .D(\eslot_nxt[0] [2]),
        .Q(obs_ecorr[2]),
        .R(reset));
  FDRE \g_eslot[0].eown_reg[9] 
       (.C(clk),
        .CE(\g_eslot[0].eown [10]),
        .D(\eslot_nxt[0] [0]),
        .Q(obs_growth[2]),
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
        .stage({stage_reg,\dbg_stage[0]_i_1_n_0 }),
        .u_pulse(\g_eslot[1].upulse ),
        .v_pulse(\g_eslot[2].upulse ));
  LUT6 #(
    .INIT(64'h0100C00000000000)) 
    \g_eslot[1].ed_i_i_1 
       (.I0(\g_slot[3].nb_grown [0]),
        .I1(p_0_in105_in),
        .I2(stage__0[2]),
        .I3(stage__0[0]),
        .I4(stage__0[1]),
        .I5(p_12_in),
        .O(\g_eslot[2].upulse ));
  LUT6 #(
    .INIT(64'hBBB888B888888888)) 
    \g_eslot[1].ed_i_i_10 
       (.I0(\g_eslot[1].ed_i_i_12_n_0 ),
        .I1(\g_slot[0].pe_i_i_92_n_0 ),
        .I2(obs_ecorr[10]),
        .I3(\g_slot[0].pe_i_i_93_n_0 ),
        .I4(obs_growth[37]),
        .I5(\g_slot[1].pe_i_i_65_n_0 ),
        .O(\g_eslot[1].ed_i_i_10_n_0 ));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \g_eslot[1].ed_i_i_11 
       (.I0(obs_growth[52]),
        .I1(obs_ecorr[10]),
        .I2(\g_slot[0].pe_i_i_93_n_0 ),
        .I3(obs_growth[37]),
        .I4(\g_slot[1].pe_i_i_65_n_0 ),
        .O(\g_eslot[1].ed_i_i_11_n_0 ));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \g_eslot[1].ed_i_i_12 
       (.I0(obs_ecorr[26]),
        .I1(obs_growth[11]),
        .I2(\g_slot[0].pe_i_i_93_n_0 ),
        .I3(obs_growth[20]),
        .I4(\g_slot[1].pe_i_i_65_n_0 ),
        .O(\g_eslot[1].ed_i_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hBBB888B888888888)) 
    \g_eslot[1].ed_i_i_13 
       (.I0(\g_eslot[1].ed_i_i_9_n_0 ),
        .I1(\g_slot[0].pe_i_i_92_n_0 ),
        .I2(obs_growth[10]),
        .I3(\g_slot[0].pe_i_i_93_n_0 ),
        .I4(obs_ecorr[18]),
        .I5(\g_slot[1].pe_i_i_65_n_0 ),
        .O(\g_eslot[1].ed_i_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_eslot[1].ed_i_i_14 
       (.I0(obs_ecorr[34]),
        .I1(obs_growth[21]),
        .I2(\g_slot[0].pe_i_i_93_n_0 ),
        .I3(obs_growth[36]),
        .I4(\g_slot[1].pe_i_i_65_n_0 ),
        .I5(obs_ecorr[5]),
        .O(\g_eslot[1].ed_i_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_eslot[1].ed_i_i_15 
       (.I0(obs_growth[69]),
        .I1(obs_growth[20]),
        .I2(\g_slot[0].pe_i_i_93_n_0 ),
        .I3(obs_ecorr[26]),
        .I4(\g_slot[1].pe_i_i_65_n_0 ),
        .I5(obs_growth[11]),
        .O(\g_eslot[1].ed_i_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_eslot[1].ed_i_i_16 
       (.I0(obs_growth[68]),
        .I1(obs_ecorr[18]),
        .I2(\g_slot[0].pe_i_i_93_n_0 ),
        .I3(obs_growth[53]),
        .I4(\g_slot[1].pe_i_i_65_n_0 ),
        .I5(obs_growth[10]),
        .O(\g_eslot[1].ed_i_i_16_n_0 ));
  LUT5 #(
    .INIT(32'hFF00B8B8)) 
    \g_eslot[1].ed_i_i_2 
       (.I0(\g_eslot[1].ed_i_i_8_n_0 ),
        .I1(\g_slot[0].pe_i_i_92_n_0 ),
        .I2(\g_eslot[1].ed_i_i_9_n_0 ),
        .I3(\g_eslot[1].ed_i_i_10_n_0 ),
        .I4(phase[0]),
        .O(\g_eslot[1].ab_state [1]));
  LUT6 #(
    .INIT(64'hFF33CC00B8B8B8B8)) 
    \g_eslot[1].ed_i_i_3 
       (.I0(\g_eslot[1].ed_i_i_11_n_0 ),
        .I1(\g_slot[0].pe_i_i_92_n_0 ),
        .I2(\g_eslot[1].ed_i_i_12_n_0 ),
        .I3(\g_eslot[1].ed_i_i_8_n_0 ),
        .I4(\g_eslot[1].ed_i_i_9_n_0 ),
        .I5(phase[0]),
        .O(\g_eslot[1].ab_state [0]));
  (* SOFT_HLUTNM = "soft_lutpair273" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \g_eslot[1].ed_i_i_4 
       (.I0(\g_eslot[1].ed_i_i_13_n_0 ),
        .I1(\g_eslot[1].ed_i_i_10_n_0 ),
        .I2(phase[0]),
        .O(\g_eslot[1].ab_state [2]));
  LUT6 #(
    .INIT(64'hB8B8B8B8FF33CC00)) 
    \g_eslot[1].ed_i_i_5 
       (.I0(\g_eslot[1].ed_i_i_11_n_0 ),
        .I1(\g_slot[0].pe_i_i_92_n_0 ),
        .I2(\g_eslot[1].ed_i_i_12_n_0 ),
        .I3(\g_eslot[1].ed_i_i_14_n_0 ),
        .I4(\g_eslot[1].ed_i_i_8_n_0 ),
        .I5(phase[0]),
        .O(\g_eslot[1].my_state [2]));
  LUT6 #(
    .INIT(64'hB8B8B8B8FF33CC00)) 
    \g_eslot[1].ed_i_i_6 
       (.I0(\g_eslot[1].ed_i_i_14_n_0 ),
        .I1(\g_slot[0].pe_i_i_92_n_0 ),
        .I2(\g_eslot[1].ed_i_i_8_n_0 ),
        .I3(\g_eslot[1].ed_i_i_15_n_0 ),
        .I4(\g_eslot[1].ed_i_i_11_n_0 ),
        .I5(phase[0]),
        .O(\g_eslot[1].my_state [1]));
  LUT6 #(
    .INIT(64'hB8B8B8B8FF33CC00)) 
    \g_eslot[1].ed_i_i_7 
       (.I0(\g_eslot[1].ed_i_i_15_n_0 ),
        .I1(\g_slot[0].pe_i_i_92_n_0 ),
        .I2(\g_eslot[1].ed_i_i_11_n_0 ),
        .I3(\g_eslot[1].ed_i_i_16_n_0 ),
        .I4(\g_eslot[1].ed_i_i_14_n_0 ),
        .I5(phase[0]),
        .O(\g_eslot[1].my_state [0]));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \g_eslot[1].ed_i_i_8 
       (.I0(obs_growth[53]),
        .I1(obs_growth[10]),
        .I2(\g_slot[0].pe_i_i_93_n_0 ),
        .I3(obs_ecorr[18]),
        .I4(\g_slot[1].pe_i_i_65_n_0 ),
        .O(\g_eslot[1].ed_i_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \g_eslot[1].ed_i_i_9 
       (.I0(obs_growth[36]),
        .I1(obs_ecorr[5]),
        .I2(\g_slot[0].pe_i_i_93_n_0 ),
        .I3(obs_growth[21]),
        .I4(\g_slot[1].pe_i_i_65_n_0 ),
        .O(\g_eslot[1].ed_i_i_9_n_0 ));
  FDRE \g_eslot[1].eown_reg[0] 
       (.C(clk),
        .CE(\g_eslot[0].eown [1]),
        .D(\eslot_nxt[1] [0]),
        .Q(obs_growth[68]),
        .R(reset));
  FDRE \g_eslot[1].eown_reg[10] 
       (.C(clk),
        .CE(\g_eslot[0].eown [10]),
        .D(\eslot_nxt[1] [1]),
        .Q(obs_growth[21]),
        .R(reset));
  FDRE \g_eslot[1].eown_reg[11] 
       (.C(clk),
        .CE(\g_eslot[0].eown [10]),
        .D(\eslot_nxt[1] [2]),
        .Q(obs_ecorr[10]),
        .R(reset));
  FDRE \g_eslot[1].eown_reg[12] 
       (.C(clk),
        .CE(\g_eslot[0].eown [13]),
        .D(\eslot_nxt[1] [0]),
        .Q(obs_growth[10]),
        .R(reset));
  FDRE \g_eslot[1].eown_reg[13] 
       (.C(clk),
        .CE(\g_eslot[0].eown [13]),
        .D(\eslot_nxt[1] [1]),
        .Q(obs_growth[11]),
        .R(reset));
  FDRE \g_eslot[1].eown_reg[14] 
       (.C(clk),
        .CE(\g_eslot[0].eown [13]),
        .D(\eslot_nxt[1] [2]),
        .Q(obs_ecorr[5]),
        .R(reset));
  FDRE \g_eslot[1].eown_reg[1] 
       (.C(clk),
        .CE(\g_eslot[0].eown [1]),
        .D(\eslot_nxt[1] [1]),
        .Q(obs_growth[69]),
        .R(reset));
  FDRE \g_eslot[1].eown_reg[2] 
       (.C(clk),
        .CE(\g_eslot[0].eown [1]),
        .D(\eslot_nxt[1] [2]),
        .Q(obs_ecorr[34]),
        .R(reset));
  FDRE \g_eslot[1].eown_reg[3] 
       (.C(clk),
        .CE(\g_eslot[0].eown [4]),
        .D(\eslot_nxt[1] [0]),
        .Q(obs_growth[52]),
        .R(reset));
  FDRE \g_eslot[1].eown_reg[4] 
       (.C(clk),
        .CE(\g_eslot[0].eown [4]),
        .D(\eslot_nxt[1] [1]),
        .Q(obs_growth[53]),
        .R(reset));
  FDRE \g_eslot[1].eown_reg[5] 
       (.C(clk),
        .CE(\g_eslot[0].eown [4]),
        .D(\eslot_nxt[1] [2]),
        .Q(obs_ecorr[26]),
        .R(reset));
  FDRE \g_eslot[1].eown_reg[6] 
       (.C(clk),
        .CE(\g_eslot[0].eown [7]),
        .D(\eslot_nxt[1] [0]),
        .Q(obs_growth[36]),
        .R(reset));
  FDRE \g_eslot[1].eown_reg[7] 
       (.C(clk),
        .CE(\g_eslot[0].eown [7]),
        .D(\eslot_nxt[1] [1]),
        .Q(obs_growth[37]),
        .R(reset));
  FDRE \g_eslot[1].eown_reg[8] 
       (.C(clk),
        .CE(\g_eslot[0].eown [7]),
        .D(\eslot_nxt[1] [2]),
        .Q(obs_ecorr[18]),
        .R(reset));
  FDRE \g_eslot[1].eown_reg[9] 
       (.C(clk),
        .CE(\g_eslot[0].eown [10]),
        .D(\eslot_nxt[1] [0]),
        .Q(obs_growth[20]),
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
        .flip_u(\g_slot[3].nb_push [0]),
        .flip_v(\g_eslot[2].vmir ),
        .reset(reset),
        .st_in(\g_eslot[2].my_state ),
        .st_out(\eslot_nxt[2] ),
        .stage({stage_reg,\dbg_stage[0]_i_1_n_0 }),
        .u_pulse(\g_eslot[2].upulse ),
        .v_pulse(\g_eslot[3].upulse ));
  LUT6 #(
    .INIT(64'h0100C00000000000)) 
    \g_eslot[2].ed_i_i_1 
       (.I0(\g_slot[4].nb_grown [0]),
        .I1(p_0_in104_in),
        .I2(stage__0[2]),
        .I3(stage__0[0]),
        .I4(stage__0[1]),
        .I5(p_11_in),
        .O(\g_eslot[3].upulse ));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \g_eslot[2].ed_i_i_10 
       (.I0(obs_growth[40]),
        .I1(obs_ecorr[6]),
        .I2(\g_slot[0].pe_i_i_93_n_0 ),
        .I3(obs_growth[25]),
        .I4(\g_slot[1].pe_i_i_65_n_0 ),
        .O(\g_eslot[2].ed_i_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hBBB888B888888888)) 
    \g_eslot[2].ed_i_i_11 
       (.I0(\g_eslot[2].ed_i_i_13_n_0 ),
        .I1(\g_slot[0].pe_i_i_92_n_0 ),
        .I2(obs_ecorr[12]),
        .I3(\g_slot[0].pe_i_i_93_n_0 ),
        .I4(obs_growth[41]),
        .I5(\g_slot[1].pe_i_i_65_n_0 ),
        .O(\g_eslot[2].ed_i_i_11_n_0 ));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \g_eslot[2].ed_i_i_12 
       (.I0(obs_growth[56]),
        .I1(obs_ecorr[12]),
        .I2(\g_slot[0].pe_i_i_93_n_0 ),
        .I3(obs_growth[41]),
        .I4(\g_slot[1].pe_i_i_65_n_0 ),
        .O(\g_eslot[2].ed_i_i_12_n_0 ));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \g_eslot[2].ed_i_i_13 
       (.I0(obs_ecorr[28]),
        .I1(obs_growth[13]),
        .I2(\g_slot[0].pe_i_i_93_n_0 ),
        .I3(obs_growth[24]),
        .I4(\g_slot[1].pe_i_i_65_n_0 ),
        .O(\g_eslot[2].ed_i_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hBBB888B888888888)) 
    \g_eslot[2].ed_i_i_14 
       (.I0(\g_eslot[2].ed_i_i_10_n_0 ),
        .I1(\g_slot[0].pe_i_i_92_n_0 ),
        .I2(obs_growth[12]),
        .I3(\g_slot[0].pe_i_i_93_n_0 ),
        .I4(obs_ecorr[20]),
        .I5(\g_slot[1].pe_i_i_65_n_0 ),
        .O(\g_eslot[2].ed_i_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_eslot[2].ed_i_i_15 
       (.I0(obs_ecorr[36]),
        .I1(obs_growth[25]),
        .I2(\g_slot[0].pe_i_i_93_n_0 ),
        .I3(obs_growth[40]),
        .I4(\g_slot[1].pe_i_i_65_n_0 ),
        .I5(obs_ecorr[6]),
        .O(\g_eslot[2].ed_i_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_eslot[2].ed_i_i_16 
       (.I0(obs_growth[73]),
        .I1(obs_growth[24]),
        .I2(\g_slot[0].pe_i_i_93_n_0 ),
        .I3(obs_ecorr[28]),
        .I4(\g_slot[1].pe_i_i_65_n_0 ),
        .I5(obs_growth[13]),
        .O(\g_eslot[2].ed_i_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_eslot[2].ed_i_i_17 
       (.I0(obs_growth[72]),
        .I1(obs_ecorr[20]),
        .I2(\g_slot[0].pe_i_i_93_n_0 ),
        .I3(obs_growth[57]),
        .I4(\g_slot[1].pe_i_i_65_n_0 ),
        .I5(obs_growth[12]),
        .O(\g_eslot[2].ed_i_i_17_n_0 ));
  LUT4 #(
    .INIT(16'h0400)) 
    \g_eslot[2].ed_i_i_2 
       (.I0(p_0_in16_in[2]),
        .I1(p_0_in16_in[0]),
        .I2(p_0_in16_in[1]),
        .I3(p_0_in34_in),
        .O(\g_eslot[2].vmir ));
  LUT5 #(
    .INIT(32'hFF00B8B8)) 
    \g_eslot[2].ed_i_i_3 
       (.I0(\g_eslot[2].ed_i_i_9_n_0 ),
        .I1(\g_slot[0].pe_i_i_92_n_0 ),
        .I2(\g_eslot[2].ed_i_i_10_n_0 ),
        .I3(\g_eslot[2].ed_i_i_11_n_0 ),
        .I4(phase[0]),
        .O(\g_eslot[2].ab_state [1]));
  LUT6 #(
    .INIT(64'hFF33CC00B8B8B8B8)) 
    \g_eslot[2].ed_i_i_4 
       (.I0(\g_eslot[2].ed_i_i_12_n_0 ),
        .I1(\g_slot[0].pe_i_i_92_n_0 ),
        .I2(\g_eslot[2].ed_i_i_13_n_0 ),
        .I3(\g_eslot[2].ed_i_i_9_n_0 ),
        .I4(\g_eslot[2].ed_i_i_10_n_0 ),
        .I5(phase[0]),
        .O(\g_eslot[2].ab_state [0]));
  (* SOFT_HLUTNM = "soft_lutpair273" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \g_eslot[2].ed_i_i_5 
       (.I0(\g_eslot[2].ed_i_i_14_n_0 ),
        .I1(\g_eslot[2].ed_i_i_11_n_0 ),
        .I2(phase[0]),
        .O(\g_eslot[2].ab_state [2]));
  LUT6 #(
    .INIT(64'hB8B8B8B8FF33CC00)) 
    \g_eslot[2].ed_i_i_6 
       (.I0(\g_eslot[2].ed_i_i_12_n_0 ),
        .I1(\g_slot[0].pe_i_i_92_n_0 ),
        .I2(\g_eslot[2].ed_i_i_13_n_0 ),
        .I3(\g_eslot[2].ed_i_i_15_n_0 ),
        .I4(\g_eslot[2].ed_i_i_9_n_0 ),
        .I5(phase[0]),
        .O(\g_eslot[2].my_state [2]));
  LUT6 #(
    .INIT(64'hB8B8B8B8FF33CC00)) 
    \g_eslot[2].ed_i_i_7 
       (.I0(\g_eslot[2].ed_i_i_15_n_0 ),
        .I1(\g_slot[0].pe_i_i_92_n_0 ),
        .I2(\g_eslot[2].ed_i_i_9_n_0 ),
        .I3(\g_eslot[2].ed_i_i_16_n_0 ),
        .I4(\g_eslot[2].ed_i_i_12_n_0 ),
        .I5(phase[0]),
        .O(\g_eslot[2].my_state [1]));
  LUT6 #(
    .INIT(64'hB8B8B8B8FF33CC00)) 
    \g_eslot[2].ed_i_i_8 
       (.I0(\g_eslot[2].ed_i_i_16_n_0 ),
        .I1(\g_slot[0].pe_i_i_92_n_0 ),
        .I2(\g_eslot[2].ed_i_i_12_n_0 ),
        .I3(\g_eslot[2].ed_i_i_17_n_0 ),
        .I4(\g_eslot[2].ed_i_i_15_n_0 ),
        .I5(phase[0]),
        .O(\g_eslot[2].my_state [0]));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \g_eslot[2].ed_i_i_9 
       (.I0(obs_growth[57]),
        .I1(obs_growth[12]),
        .I2(\g_slot[0].pe_i_i_93_n_0 ),
        .I3(obs_ecorr[20]),
        .I4(\g_slot[1].pe_i_i_65_n_0 ),
        .O(\g_eslot[2].ed_i_i_9_n_0 ));
  FDRE \g_eslot[2].eown_reg[0] 
       (.C(clk),
        .CE(\g_eslot[0].eown [1]),
        .D(\eslot_nxt[2] [0]),
        .Q(obs_growth[72]),
        .R(reset));
  FDRE \g_eslot[2].eown_reg[10] 
       (.C(clk),
        .CE(\g_eslot[0].eown [10]),
        .D(\eslot_nxt[2] [1]),
        .Q(obs_growth[25]),
        .R(reset));
  FDRE \g_eslot[2].eown_reg[11] 
       (.C(clk),
        .CE(\g_eslot[0].eown [10]),
        .D(\eslot_nxt[2] [2]),
        .Q(obs_ecorr[12]),
        .R(reset));
  FDRE \g_eslot[2].eown_reg[12] 
       (.C(clk),
        .CE(\g_eslot[0].eown [13]),
        .D(\eslot_nxt[2] [0]),
        .Q(obs_growth[12]),
        .R(reset));
  FDRE \g_eslot[2].eown_reg[13] 
       (.C(clk),
        .CE(\g_eslot[0].eown [13]),
        .D(\eslot_nxt[2] [1]),
        .Q(obs_growth[13]),
        .R(reset));
  FDRE \g_eslot[2].eown_reg[14] 
       (.C(clk),
        .CE(\g_eslot[0].eown [13]),
        .D(\eslot_nxt[2] [2]),
        .Q(obs_ecorr[6]),
        .R(reset));
  FDRE \g_eslot[2].eown_reg[1] 
       (.C(clk),
        .CE(\g_eslot[0].eown [1]),
        .D(\eslot_nxt[2] [1]),
        .Q(obs_growth[73]),
        .R(reset));
  FDRE \g_eslot[2].eown_reg[2] 
       (.C(clk),
        .CE(\g_eslot[0].eown [1]),
        .D(\eslot_nxt[2] [2]),
        .Q(obs_ecorr[36]),
        .R(reset));
  FDRE \g_eslot[2].eown_reg[3] 
       (.C(clk),
        .CE(\g_eslot[0].eown [4]),
        .D(\eslot_nxt[2] [0]),
        .Q(obs_growth[56]),
        .R(reset));
  FDRE \g_eslot[2].eown_reg[4] 
       (.C(clk),
        .CE(\g_eslot[0].eown [4]),
        .D(\eslot_nxt[2] [1]),
        .Q(obs_growth[57]),
        .R(reset));
  FDRE \g_eslot[2].eown_reg[5] 
       (.C(clk),
        .CE(\g_eslot[0].eown [4]),
        .D(\eslot_nxt[2] [2]),
        .Q(obs_ecorr[28]),
        .R(reset));
  FDRE \g_eslot[2].eown_reg[6] 
       (.C(clk),
        .CE(\g_eslot[0].eown [7]),
        .D(\eslot_nxt[2] [0]),
        .Q(obs_growth[40]),
        .R(reset));
  FDRE \g_eslot[2].eown_reg[7] 
       (.C(clk),
        .CE(\g_eslot[0].eown [7]),
        .D(\eslot_nxt[2] [1]),
        .Q(obs_growth[41]),
        .R(reset));
  FDRE \g_eslot[2].eown_reg[8] 
       (.C(clk),
        .CE(\g_eslot[0].eown [7]),
        .D(\eslot_nxt[2] [2]),
        .Q(obs_ecorr[20]),
        .R(reset));
  FDRE \g_eslot[2].eown_reg[9] 
       (.C(clk),
        .CE(\g_eslot[0].eown [10]),
        .D(\eslot_nxt[2] [0]),
        .Q(obs_growth[24]),
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
        .flip_u(\g_slot[4].nb_push [0]),
        .flip_v(\g_eslot[3].vmir ),
        .reset(reset),
        .st_in(\g_eslot[3].my_state ),
        .st_out(\eslot_nxt[3] ),
        .stage({stage_reg,\dbg_stage[0]_i_1_n_0 }),
        .u_pulse(\g_eslot[3].upulse ),
        .v_pulse(\g_eslot[4].upulse ));
  LUT6 #(
    .INIT(64'h0000800002008000)) 
    \g_eslot[3].ed_i_i_1 
       (.I0(p_10_in),
        .I1(p_0_in103_in),
        .I2(stage__0[2]),
        .I3(stage__0[0]),
        .I4(stage__0[1]),
        .I5(\g_slot[3].nb_grown [1]),
        .O(\g_eslot[4].upulse ));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \g_eslot[3].ed_i_i_10 
       (.I0(obs_growth[44]),
        .I1(obs_ecorr[7]),
        .I2(\g_slot[0].pe_i_i_93_n_0 ),
        .I3(obs_growth[29]),
        .I4(\g_slot[1].pe_i_i_65_n_0 ),
        .O(\g_eslot[3].ed_i_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hBBB888B888888888)) 
    \g_eslot[3].ed_i_i_11 
       (.I0(\g_eslot[3].ed_i_i_13_n_0 ),
        .I1(\g_slot[0].pe_i_i_92_n_0 ),
        .I2(obs_ecorr[14]),
        .I3(\g_slot[0].pe_i_i_93_n_0 ),
        .I4(obs_growth[45]),
        .I5(\g_slot[1].pe_i_i_65_n_0 ),
        .O(\g_eslot[3].ed_i_i_11_n_0 ));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \g_eslot[3].ed_i_i_12 
       (.I0(obs_growth[60]),
        .I1(obs_ecorr[14]),
        .I2(\g_slot[0].pe_i_i_93_n_0 ),
        .I3(obs_growth[45]),
        .I4(\g_slot[1].pe_i_i_65_n_0 ),
        .O(\g_eslot[3].ed_i_i_12_n_0 ));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \g_eslot[3].ed_i_i_13 
       (.I0(obs_ecorr[30]),
        .I1(obs_growth[15]),
        .I2(\g_slot[0].pe_i_i_93_n_0 ),
        .I3(obs_growth[28]),
        .I4(\g_slot[1].pe_i_i_65_n_0 ),
        .O(\g_eslot[3].ed_i_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hBBB888B888888888)) 
    \g_eslot[3].ed_i_i_14 
       (.I0(\g_eslot[3].ed_i_i_10_n_0 ),
        .I1(\g_slot[0].pe_i_i_92_n_0 ),
        .I2(obs_growth[14]),
        .I3(\g_slot[0].pe_i_i_93_n_0 ),
        .I4(obs_ecorr[22]),
        .I5(\g_slot[1].pe_i_i_65_n_0 ),
        .O(\g_eslot[3].ed_i_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_eslot[3].ed_i_i_15 
       (.I0(obs_ecorr[38]),
        .I1(obs_growth[29]),
        .I2(\g_slot[0].pe_i_i_93_n_0 ),
        .I3(obs_growth[44]),
        .I4(\g_slot[1].pe_i_i_65_n_0 ),
        .I5(obs_ecorr[7]),
        .O(\g_eslot[3].ed_i_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_eslot[3].ed_i_i_16 
       (.I0(obs_growth[77]),
        .I1(obs_growth[28]),
        .I2(\g_slot[0].pe_i_i_93_n_0 ),
        .I3(obs_ecorr[30]),
        .I4(\g_slot[1].pe_i_i_65_n_0 ),
        .I5(obs_growth[15]),
        .O(\g_eslot[3].ed_i_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_eslot[3].ed_i_i_17 
       (.I0(obs_growth[76]),
        .I1(obs_ecorr[22]),
        .I2(\g_slot[0].pe_i_i_93_n_0 ),
        .I3(obs_growth[61]),
        .I4(\g_slot[1].pe_i_i_65_n_0 ),
        .I5(obs_growth[14]),
        .O(\g_eslot[3].ed_i_i_17_n_0 ));
  LUT4 #(
    .INIT(16'h0400)) 
    \g_eslot[3].ed_i_i_2 
       (.I0(p_0_in7_in[2]),
        .I1(p_0_in7_in[0]),
        .I2(p_0_in7_in[1]),
        .I3(p_0_in33_in),
        .O(\g_eslot[3].vmir ));
  LUT5 #(
    .INIT(32'hFF00B8B8)) 
    \g_eslot[3].ed_i_i_3 
       (.I0(\g_eslot[3].ed_i_i_9_n_0 ),
        .I1(\g_slot[0].pe_i_i_92_n_0 ),
        .I2(\g_eslot[3].ed_i_i_10_n_0 ),
        .I3(\g_eslot[3].ed_i_i_11_n_0 ),
        .I4(phase[0]),
        .O(\g_eslot[3].ab_state [1]));
  LUT6 #(
    .INIT(64'hFF33CC00B8B8B8B8)) 
    \g_eslot[3].ed_i_i_4 
       (.I0(\g_eslot[3].ed_i_i_12_n_0 ),
        .I1(\g_slot[0].pe_i_i_92_n_0 ),
        .I2(\g_eslot[3].ed_i_i_13_n_0 ),
        .I3(\g_eslot[3].ed_i_i_9_n_0 ),
        .I4(\g_eslot[3].ed_i_i_10_n_0 ),
        .I5(phase[0]),
        .O(\g_eslot[3].ab_state [0]));
  (* SOFT_HLUTNM = "soft_lutpair272" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \g_eslot[3].ed_i_i_5 
       (.I0(\g_eslot[3].ed_i_i_14_n_0 ),
        .I1(\g_eslot[3].ed_i_i_11_n_0 ),
        .I2(phase[0]),
        .O(\g_eslot[3].ab_state [2]));
  LUT6 #(
    .INIT(64'hB8B8B8B8FF33CC00)) 
    \g_eslot[3].ed_i_i_6 
       (.I0(\g_eslot[3].ed_i_i_12_n_0 ),
        .I1(\g_slot[0].pe_i_i_92_n_0 ),
        .I2(\g_eslot[3].ed_i_i_13_n_0 ),
        .I3(\g_eslot[3].ed_i_i_15_n_0 ),
        .I4(\g_eslot[3].ed_i_i_9_n_0 ),
        .I5(phase[0]),
        .O(\g_eslot[3].my_state [2]));
  LUT6 #(
    .INIT(64'hB8B8B8B8FF33CC00)) 
    \g_eslot[3].ed_i_i_7 
       (.I0(\g_eslot[3].ed_i_i_15_n_0 ),
        .I1(\g_slot[0].pe_i_i_92_n_0 ),
        .I2(\g_eslot[3].ed_i_i_9_n_0 ),
        .I3(\g_eslot[3].ed_i_i_16_n_0 ),
        .I4(\g_eslot[3].ed_i_i_12_n_0 ),
        .I5(phase[0]),
        .O(\g_eslot[3].my_state [1]));
  LUT6 #(
    .INIT(64'hB8B8B8B8FF33CC00)) 
    \g_eslot[3].ed_i_i_8 
       (.I0(\g_eslot[3].ed_i_i_16_n_0 ),
        .I1(\g_slot[0].pe_i_i_92_n_0 ),
        .I2(\g_eslot[3].ed_i_i_12_n_0 ),
        .I3(\g_eslot[3].ed_i_i_17_n_0 ),
        .I4(\g_eslot[3].ed_i_i_15_n_0 ),
        .I5(phase[0]),
        .O(\g_eslot[3].my_state [0]));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \g_eslot[3].ed_i_i_9 
       (.I0(obs_growth[61]),
        .I1(obs_growth[14]),
        .I2(\g_slot[0].pe_i_i_93_n_0 ),
        .I3(obs_ecorr[22]),
        .I4(\g_slot[1].pe_i_i_65_n_0 ),
        .O(\g_eslot[3].ed_i_i_9_n_0 ));
  FDRE \g_eslot[3].eown_reg[0] 
       (.C(clk),
        .CE(\g_eslot[0].eown [1]),
        .D(\eslot_nxt[3] [0]),
        .Q(obs_growth[76]),
        .R(reset));
  FDRE \g_eslot[3].eown_reg[10] 
       (.C(clk),
        .CE(\g_eslot[0].eown [10]),
        .D(\eslot_nxt[3] [1]),
        .Q(obs_growth[29]),
        .R(reset));
  FDRE \g_eslot[3].eown_reg[11] 
       (.C(clk),
        .CE(\g_eslot[0].eown [10]),
        .D(\eslot_nxt[3] [2]),
        .Q(obs_ecorr[14]),
        .R(reset));
  FDRE \g_eslot[3].eown_reg[12] 
       (.C(clk),
        .CE(\g_eslot[0].eown [13]),
        .D(\eslot_nxt[3] [0]),
        .Q(obs_growth[14]),
        .R(reset));
  FDRE \g_eslot[3].eown_reg[13] 
       (.C(clk),
        .CE(\g_eslot[0].eown [13]),
        .D(\eslot_nxt[3] [1]),
        .Q(obs_growth[15]),
        .R(reset));
  FDRE \g_eslot[3].eown_reg[14] 
       (.C(clk),
        .CE(\g_eslot[0].eown [13]),
        .D(\eslot_nxt[3] [2]),
        .Q(obs_ecorr[7]),
        .R(reset));
  FDRE \g_eslot[3].eown_reg[1] 
       (.C(clk),
        .CE(\g_eslot[0].eown [1]),
        .D(\eslot_nxt[3] [1]),
        .Q(obs_growth[77]),
        .R(reset));
  FDRE \g_eslot[3].eown_reg[2] 
       (.C(clk),
        .CE(\g_eslot[0].eown [1]),
        .D(\eslot_nxt[3] [2]),
        .Q(obs_ecorr[38]),
        .R(reset));
  FDRE \g_eslot[3].eown_reg[3] 
       (.C(clk),
        .CE(\g_eslot[0].eown [4]),
        .D(\eslot_nxt[3] [0]),
        .Q(obs_growth[60]),
        .R(reset));
  FDRE \g_eslot[3].eown_reg[4] 
       (.C(clk),
        .CE(\g_eslot[0].eown [4]),
        .D(\eslot_nxt[3] [1]),
        .Q(obs_growth[61]),
        .R(reset));
  FDRE \g_eslot[3].eown_reg[5] 
       (.C(clk),
        .CE(\g_eslot[0].eown [4]),
        .D(\eslot_nxt[3] [2]),
        .Q(obs_ecorr[30]),
        .R(reset));
  FDRE \g_eslot[3].eown_reg[6] 
       (.C(clk),
        .CE(\g_eslot[0].eown [7]),
        .D(\eslot_nxt[3] [0]),
        .Q(obs_growth[44]),
        .R(reset));
  FDRE \g_eslot[3].eown_reg[7] 
       (.C(clk),
        .CE(\g_eslot[0].eown [7]),
        .D(\eslot_nxt[3] [1]),
        .Q(obs_growth[45]),
        .R(reset));
  FDRE \g_eslot[3].eown_reg[8] 
       (.C(clk),
        .CE(\g_eslot[0].eown [7]),
        .D(\eslot_nxt[3] [2]),
        .Q(obs_ecorr[22]),
        .R(reset));
  FDRE \g_eslot[3].eown_reg[9] 
       (.C(clk),
        .CE(\g_eslot[0].eown [10]),
        .D(\eslot_nxt[3] [0]),
        .Q(obs_growth[28]),
        .R(reset));
  (* ST_DROP = "3'b001" *) 
  (* ST_GH = "3'b100" *) 
  (* ST_GW = "3'b010" *) 
  (* ST_MH = "3'b101" *) 
  (* ST_MW = "3'b011" *) 
  (* ZZZ_ANCHOR = "0" *) 
  snowflake_edge__5 \g_eslot[4].ed_i 
       (.above_ecorr(\g_eslot[4].ab_state [2]),
        .above_growth(\g_eslot[4].ab_state [1:0]),
        .clk(1'b0),
        .flip_u(\g_slot[5].nb_push0 ),
        .flip_v(\g_eslot[4].vmir ),
        .reset(reset),
        .st_in(\g_eslot[4].my_state ),
        .st_out(\eslot_nxt[4] ),
        .stage({stage_reg,\dbg_stage[0]_i_1_n_0 }),
        .u_pulse(\g_eslot[4].upulse ),
        .v_pulse(\g_eslot[4].vpulse ));
  LUT6 #(
    .INIT(64'h0000800002008000)) 
    \g_eslot[4].ed_i_i_1 
       (.I0(p_1_in),
        .I1(p_0_in101_in),
        .I2(stage__0[2]),
        .I3(stage__0[0]),
        .I4(stage__0[1]),
        .I5(\g_slot[4].nb_grown [1]),
        .O(\g_eslot[4].vpulse ));
  LUT6 #(
    .INIT(64'hBBB888B888888888)) 
    \g_eslot[4].ed_i_i_10 
       (.I0(\g_eslot[4].ed_i_i_12_n_0 ),
        .I1(\g_slot[0].pe_i_i_92_n_0 ),
        .I2(obs_ecorr[15]),
        .I3(\g_slot[0].pe_i_i_93_n_0 ),
        .I4(obs_growth[47]),
        .I5(\g_slot[1].pe_i_i_65_n_0 ),
        .O(\g_eslot[4].ed_i_i_10_n_0 ));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \g_eslot[4].ed_i_i_11 
       (.I0(obs_growth[62]),
        .I1(obs_ecorr[15]),
        .I2(\g_slot[0].pe_i_i_93_n_0 ),
        .I3(obs_growth[47]),
        .I4(\g_slot[1].pe_i_i_65_n_0 ),
        .O(\g_eslot[4].ed_i_i_11_n_0 ));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \g_eslot[4].ed_i_i_12 
       (.I0(obs_ecorr[31]),
        .I1(obs_growth[17]),
        .I2(\g_slot[0].pe_i_i_93_n_0 ),
        .I3(obs_growth[30]),
        .I4(\g_slot[1].pe_i_i_65_n_0 ),
        .O(\g_eslot[4].ed_i_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hBBB888B888888888)) 
    \g_eslot[4].ed_i_i_13 
       (.I0(\g_eslot[4].ed_i_i_9_n_0 ),
        .I1(\g_slot[0].pe_i_i_92_n_0 ),
        .I2(obs_growth[16]),
        .I3(\g_slot[0].pe_i_i_93_n_0 ),
        .I4(obs_ecorr[23]),
        .I5(\g_slot[1].pe_i_i_65_n_0 ),
        .O(\g_eslot[4].ed_i_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_eslot[4].ed_i_i_14 
       (.I0(obs_ecorr[39]),
        .I1(obs_growth[31]),
        .I2(\g_slot[0].pe_i_i_93_n_0 ),
        .I3(obs_growth[46]),
        .I4(\g_slot[1].pe_i_i_65_n_0 ),
        .I5(obs_ecorr[8]),
        .O(\g_eslot[4].ed_i_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_eslot[4].ed_i_i_15 
       (.I0(obs_growth[79]),
        .I1(obs_growth[30]),
        .I2(\g_slot[0].pe_i_i_93_n_0 ),
        .I3(obs_ecorr[31]),
        .I4(\g_slot[1].pe_i_i_65_n_0 ),
        .I5(obs_growth[17]),
        .O(\g_eslot[4].ed_i_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_eslot[4].ed_i_i_16 
       (.I0(obs_growth[78]),
        .I1(obs_ecorr[23]),
        .I2(\g_slot[0].pe_i_i_93_n_0 ),
        .I3(obs_growth[63]),
        .I4(\g_slot[1].pe_i_i_65_n_0 ),
        .I5(obs_growth[16]),
        .O(\g_eslot[4].ed_i_i_16_n_0 ));
  LUT5 #(
    .INIT(32'hFF00B8B8)) 
    \g_eslot[4].ed_i_i_2 
       (.I0(\g_eslot[4].ed_i_i_8_n_0 ),
        .I1(\g_slot[0].pe_i_i_92_n_0 ),
        .I2(\g_eslot[4].ed_i_i_9_n_0 ),
        .I3(\g_eslot[4].ed_i_i_10_n_0 ),
        .I4(phase[0]),
        .O(\g_eslot[4].ab_state [1]));
  LUT6 #(
    .INIT(64'hFF33CC00B8B8B8B8)) 
    \g_eslot[4].ed_i_i_3 
       (.I0(\g_eslot[4].ed_i_i_11_n_0 ),
        .I1(\g_slot[0].pe_i_i_92_n_0 ),
        .I2(\g_eslot[4].ed_i_i_12_n_0 ),
        .I3(\g_eslot[4].ed_i_i_8_n_0 ),
        .I4(\g_eslot[4].ed_i_i_9_n_0 ),
        .I5(phase[0]),
        .O(\g_eslot[4].ab_state [0]));
  (* SOFT_HLUTNM = "soft_lutpair272" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \g_eslot[4].ed_i_i_4 
       (.I0(\g_eslot[4].ed_i_i_13_n_0 ),
        .I1(\g_eslot[4].ed_i_i_10_n_0 ),
        .I2(phase[0]),
        .O(\g_eslot[4].ab_state [2]));
  LUT6 #(
    .INIT(64'hB8B8B8B8FF33CC00)) 
    \g_eslot[4].ed_i_i_5 
       (.I0(\g_eslot[4].ed_i_i_11_n_0 ),
        .I1(\g_slot[0].pe_i_i_92_n_0 ),
        .I2(\g_eslot[4].ed_i_i_12_n_0 ),
        .I3(\g_eslot[4].ed_i_i_14_n_0 ),
        .I4(\g_eslot[4].ed_i_i_8_n_0 ),
        .I5(phase[0]),
        .O(\g_eslot[4].my_state [2]));
  LUT6 #(
    .INIT(64'hB8B8B8B8FF33CC00)) 
    \g_eslot[4].ed_i_i_6 
       (.I0(\g_eslot[4].ed_i_i_14_n_0 ),
        .I1(\g_slot[0].pe_i_i_92_n_0 ),
        .I2(\g_eslot[4].ed_i_i_8_n_0 ),
        .I3(\g_eslot[4].ed_i_i_15_n_0 ),
        .I4(\g_eslot[4].ed_i_i_11_n_0 ),
        .I5(phase[0]),
        .O(\g_eslot[4].my_state [1]));
  LUT6 #(
    .INIT(64'hB8B8B8B8FF33CC00)) 
    \g_eslot[4].ed_i_i_7 
       (.I0(\g_eslot[4].ed_i_i_15_n_0 ),
        .I1(\g_slot[0].pe_i_i_92_n_0 ),
        .I2(\g_eslot[4].ed_i_i_11_n_0 ),
        .I3(\g_eslot[4].ed_i_i_16_n_0 ),
        .I4(\g_eslot[4].ed_i_i_14_n_0 ),
        .I5(phase[0]),
        .O(\g_eslot[4].my_state [0]));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \g_eslot[4].ed_i_i_8 
       (.I0(obs_growth[63]),
        .I1(obs_growth[16]),
        .I2(\g_slot[0].pe_i_i_93_n_0 ),
        .I3(obs_ecorr[23]),
        .I4(\g_slot[1].pe_i_i_65_n_0 ),
        .O(\g_eslot[4].ed_i_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \g_eslot[4].ed_i_i_9 
       (.I0(obs_growth[46]),
        .I1(obs_ecorr[8]),
        .I2(\g_slot[0].pe_i_i_93_n_0 ),
        .I3(obs_growth[31]),
        .I4(\g_slot[1].pe_i_i_65_n_0 ),
        .O(\g_eslot[4].ed_i_i_9_n_0 ));
  LUT4 #(
    .INIT(16'h0200)) 
    \g_eslot[4].eown[13]_i_1 
       (.I0(\g_eslot[8].eown[1]_i_2_n_0 ),
        .I1(phase[0]),
        .I2(\phase_reg[1]_rep_n_0 ),
        .I3(phase[2]),
        .O(\g_eslot[0].eown [13]));
  FDRE \g_eslot[4].eown_reg[0] 
       (.C(clk),
        .CE(\g_eslot[0].eown [1]),
        .D(\eslot_nxt[4] [0]),
        .Q(obs_growth[78]),
        .R(reset));
  FDRE \g_eslot[4].eown_reg[10] 
       (.C(clk),
        .CE(\g_eslot[0].eown [10]),
        .D(\eslot_nxt[4] [1]),
        .Q(obs_growth[31]),
        .R(reset));
  FDRE \g_eslot[4].eown_reg[11] 
       (.C(clk),
        .CE(\g_eslot[0].eown [10]),
        .D(\eslot_nxt[4] [2]),
        .Q(obs_ecorr[15]),
        .R(reset));
  FDRE \g_eslot[4].eown_reg[12] 
       (.C(clk),
        .CE(\g_eslot[0].eown [13]),
        .D(\eslot_nxt[4] [0]),
        .Q(obs_growth[16]),
        .R(reset));
  FDRE \g_eslot[4].eown_reg[13] 
       (.C(clk),
        .CE(\g_eslot[0].eown [13]),
        .D(\eslot_nxt[4] [1]),
        .Q(obs_growth[17]),
        .R(reset));
  FDRE \g_eslot[4].eown_reg[14] 
       (.C(clk),
        .CE(\g_eslot[0].eown [13]),
        .D(\eslot_nxt[4] [2]),
        .Q(obs_ecorr[8]),
        .R(reset));
  FDRE \g_eslot[4].eown_reg[1] 
       (.C(clk),
        .CE(\g_eslot[0].eown [1]),
        .D(\eslot_nxt[4] [1]),
        .Q(obs_growth[79]),
        .R(reset));
  FDRE \g_eslot[4].eown_reg[2] 
       (.C(clk),
        .CE(\g_eslot[0].eown [1]),
        .D(\eslot_nxt[4] [2]),
        .Q(obs_ecorr[39]),
        .R(reset));
  FDRE \g_eslot[4].eown_reg[3] 
       (.C(clk),
        .CE(\g_eslot[0].eown [4]),
        .D(\eslot_nxt[4] [0]),
        .Q(obs_growth[62]),
        .R(reset));
  FDRE \g_eslot[4].eown_reg[4] 
       (.C(clk),
        .CE(\g_eslot[0].eown [4]),
        .D(\eslot_nxt[4] [1]),
        .Q(obs_growth[63]),
        .R(reset));
  FDRE \g_eslot[4].eown_reg[5] 
       (.C(clk),
        .CE(\g_eslot[0].eown [4]),
        .D(\eslot_nxt[4] [2]),
        .Q(obs_ecorr[31]),
        .R(reset));
  FDRE \g_eslot[4].eown_reg[6] 
       (.C(clk),
        .CE(\g_eslot[0].eown [7]),
        .D(\eslot_nxt[4] [0]),
        .Q(obs_growth[46]),
        .R(reset));
  FDRE \g_eslot[4].eown_reg[7] 
       (.C(clk),
        .CE(\g_eslot[0].eown [7]),
        .D(\eslot_nxt[4] [1]),
        .Q(obs_growth[47]),
        .R(reset));
  FDRE \g_eslot[4].eown_reg[8] 
       (.C(clk),
        .CE(\g_eslot[0].eown [7]),
        .D(\eslot_nxt[4] [2]),
        .Q(obs_ecorr[23]),
        .R(reset));
  FDRE \g_eslot[4].eown_reg[9] 
       (.C(clk),
        .CE(\g_eslot[0].eown [10]),
        .D(\eslot_nxt[4] [0]),
        .Q(obs_growth[30]),
        .R(reset));
  (* ST_DROP = "3'b001" *) 
  (* ST_GH = "3'b100" *) 
  (* ST_GW = "3'b010" *) 
  (* ST_MH = "3'b101" *) 
  (* ST_MW = "3'b011" *) 
  (* ZZZ_ANCHOR = "0" *) 
  snowflake_edge__6 \g_eslot[5].ed_i 
       (.above_ecorr(\g_eslot[5].ab_state [2]),
        .above_growth({\g_eslot[5].ed_i_i_5_n_0 ,\g_eslot[5].ab_state [0]}),
        .clk(1'b0),
        .flip_u(\g_eslot[5].umir ),
        .flip_v(\g_eslot[5].vmir ),
        .reset(reset),
        .st_in(\g_eslot[5].my_state ),
        .st_out(\eslot_nxt[5] ),
        .stage({stage_reg,\dbg_stage[0]_i_1_n_0 }),
        .u_pulse(\g_eslot[5].upulse ),
        .v_pulse(\g_eslot[5].vpulse ));
  LUT6 #(
    .INIT(64'h0000A00002000000)) 
    \g_eslot[5].ed_i_i_1 
       (.I0(p_8_in),
        .I1(\g_eslot[5].ed_i_i_12_n_0 ),
        .I2(stage__0[2]),
        .I3(stage__0[0]),
        .I4(stage__0[1]),
        .I5(p_0_in99_in),
        .O(\g_eslot[5].upulse ));
  LUT6 #(
    .INIT(64'hB8B8B8B8FF33CC00)) 
    \g_eslot[5].ed_i_i_10 
       (.I0(\g_eslot[5].ed_i_i_29_n_0 ),
        .I1(\g_slot[0].pe_i_i_92_n_0 ),
        .I2(\g_eslot[5].ed_i_i_24_n_0 ),
        .I3(\g_eslot[5].ed_i_i_30_n_0 ),
        .I4(\g_eslot[5].ed_i_i_31_n_0 ),
        .I5(phase[0]),
        .O(\g_eslot[5].my_state [0]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \g_eslot[5].ed_i_i_11 
       (.I0(phase[0]),
        .I1(\g_slot[0].omir_reg_n_0_[8] ),
        .I2(\phase_reg[1]_rep__3_n_0 ),
        .I3(phase[2]),
        .I4(\g_slot[0].pe_i_i_75_n_0 ),
        .O(p_8_in));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \g_eslot[5].ed_i_i_12 
       (.I0(phase[0]),
        .I1(\g_slot[0].omir_reg_n_0_[2] ),
        .I2(\phase_reg[1]_rep__2_n_0 ),
        .I3(phase[2]),
        .I4(\g_slot[0].pe_i_i_76_n_0 ),
        .O(\g_eslot[5].ed_i_i_12_n_0 ));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \g_eslot[5].ed_i_i_13 
       (.I0(phase[0]),
        .I1(\g_slot[0].omir_reg_n_0_[7] ),
        .I2(\phase_reg[1]_rep__3_n_0 ),
        .I3(phase[2]),
        .I4(\g_slot[1].pe_i_i_105_n_0 ),
        .O(p_0_in99_in));
  (* SOFT_HLUTNM = "soft_lutpair221" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \g_eslot[5].ed_i_i_14 
       (.I0(phase[0]),
        .I1(\g_slot[0].omir_reg_n_0_[8] ),
        .I2(\phase_reg[1]_rep__3_n_0 ),
        .O(\g_eslot[5].ed_i_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair261" *) 
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \g_eslot[5].ed_i_i_15 
       (.I0(phase[0]),
        .I1(\g_slot[0].omir_reg_n_0_[7] ),
        .I2(\phase_reg[1]_rep__3_n_0 ),
        .I3(phase[2]),
        .I4(\g_slot[1].pe_i_i_74_n_0 ),
        .O(p_0_in97_in));
  LUT6 #(
    .INIT(64'h22222E22FFFFFFFF)) 
    \g_eslot[5].ed_i_i_16 
       (.I0(\g_slot[1].pe_i_i_96_n_0 ),
        .I1(phase[2]),
        .I2(\phase_reg[1]_rep__2_n_0 ),
        .I3(\g_slot[0].omir_reg_n_0_[2] ),
        .I4(phase[0]),
        .I5(\g_eslot[0].gh ),
        .O(\g_eslot[5].ed_i_i_16_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair278" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \g_eslot[5].ed_i_i_17 
       (.I0(stage__0[0]),
        .I1(stage__0[1]),
        .I2(stage__0[2]),
        .O(\g_eslot[5].ed_i_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h010001FF00000000)) 
    \g_eslot[5].ed_i_i_18 
       (.I0(phase[0]),
        .I1(\g_slot[0].omir_reg_n_0_[3] ),
        .I2(\phase_reg[1]_rep__2_n_0 ),
        .I3(phase[2]),
        .I4(\g_slot[1].pe_i_i_109_n_0 ),
        .I5(\g_eslot[5].ed_i_i_33_n_0 ),
        .O(\g_eslot[5].umir0 ));
  LUT6 #(
    .INIT(64'h000000C3A5A500C3)) 
    \g_eslot[5].ed_i_i_19 
       (.I0(\g_eslot[5].ed_i_i_34_n_0 ),
        .I1(\g_slot[1].pe_i_i_77_n_0 ),
        .I2(\g_slot[1].pe_i_i_103_n_0 ),
        .I3(\g_slot[1].pe_i_i_76_n_0 ),
        .I4(phase[2]),
        .I5(\g_eslot[5].ed_i_i_35_n_0 ),
        .O(\g_eslot[5].ed_i_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hB800B800000000B8)) 
    \g_eslot[5].ed_i_i_2 
       (.I0(\g_eslot[5].ed_i_i_14_n_0 ),
        .I1(phase[2]),
        .I2(\g_slot[1].pe_i_i_73_n_0 ),
        .I3(p_0_in97_in),
        .I4(\g_eslot[5].ed_i_i_16_n_0 ),
        .I5(\g_eslot[5].ed_i_i_17_n_0 ),
        .O(\g_eslot[5].vpulse ));
  (* SOFT_HLUTNM = "soft_lutpair282" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \g_eslot[5].ed_i_i_20 
       (.I0(phase[0]),
        .I1(\g_slot[0].omir_reg_n_0_[3] ),
        .I2(\phase_reg[1]_rep__0_n_0 ),
        .O(\g_eslot[5].ed_i_i_20_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair281" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \g_eslot[5].ed_i_i_21 
       (.I0(phase[0]),
        .I1(\g_slot[0].omir_reg_n_0_[15] ),
        .I2(\phase_reg[1]_rep__0_n_0 ),
        .O(\g_eslot[5].ed_i_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_eslot[5].ed_i_i_22 
       (.I0(obs_growth[51]),
        .I1(obs_ecorr[17]),
        .I2(\g_slot[0].pe_i_i_92_n_0 ),
        .I3(obs_growth[34]),
        .I4(\g_slot[0].pe_i_i_93_n_0 ),
        .I5(obs_growth[19]),
        .O(\g_eslot[5].ed_i_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_eslot[5].ed_i_i_23 
       (.I0(obs_ecorr[25]),
        .I1(obs_growth[18]),
        .I2(\g_slot[0].pe_i_i_92_n_0 ),
        .I3(obs_growth[35]),
        .I4(\g_slot[0].pe_i_i_93_n_0 ),
        .I5(obs_ecorr[9]),
        .O(\g_eslot[5].ed_i_i_23_n_0 ));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \g_eslot[5].ed_i_i_24 
       (.I0(obs_growth[50]),
        .I1(obs_ecorr[9]),
        .I2(\g_slot[0].pe_i_i_93_n_0 ),
        .I3(obs_growth[35]),
        .I4(\g_slot[1].pe_i_i_65_n_0 ),
        .O(\g_eslot[5].ed_i_i_24_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair217" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \g_eslot[5].ed_i_i_25 
       (.I0(obs_ecorr[25]),
        .I1(\g_slot[0].pe_i_i_93_n_0 ),
        .I2(obs_growth[18]),
        .O(\g_eslot[5].ed_i_i_25_n_0 ));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \g_eslot[5].ed_i_i_26 
       (.I0(obs_growth[34]),
        .I1(obs_growth[19]),
        .I2(\g_slot[0].pe_i_i_92_n_0 ),
        .I3(obs_ecorr[17]),
        .I4(\g_slot[0].pe_i_i_93_n_0 ),
        .O(\g_eslot[5].ed_i_i_26_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair217" *) 
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \g_eslot[5].ed_i_i_27 
       (.I0(obs_ecorr[25]),
        .I1(p_2_in[1]),
        .I2(\g_slot[0].pe_i_i_93_n_0 ),
        .I3(obs_growth[18]),
        .I4(\g_slot[1].pe_i_i_65_n_0 ),
        .O(\g_eslot[5].ed_i_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hB8BBB888B888B888)) 
    \g_eslot[5].ed_i_i_28 
       (.I0(\g_eslot[5].ed_i_i_31_n_0 ),
        .I1(\g_slot[0].pe_i_i_92_n_0 ),
        .I2(\g_eslot[5].ed_i_i_36_n_0 ),
        .I3(\g_slot[0].pe_i_i_93_n_0 ),
        .I4(obs_ecorr[17]),
        .I5(\g_slot[1].pe_i_i_65_n_0 ),
        .O(\g_eslot[5].ed_i_i_28_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_eslot[5].ed_i_i_29 
       (.I0(obs_growth[67]),
        .I1(obs_growth[18]),
        .I2(\g_slot[0].pe_i_i_93_n_0 ),
        .I3(obs_ecorr[25]),
        .I4(\g_slot[1].pe_i_i_65_n_0 ),
        .I5(p_2_in[1]),
        .O(\g_eslot[5].ed_i_i_29_n_0 ));
  LUT6 #(
    .INIT(64'h0808080808A80808)) 
    \g_eslot[5].ed_i_i_3 
       (.I0(\g_eslot[5].umir0 ),
        .I1(\g_slot[1].pe_i_i_104_n_0 ),
        .I2(phase[2]),
        .I3(\phase_reg[1]_rep__0_n_0 ),
        .I4(\g_slot[0].omir_reg_n_0_[15] ),
        .I5(phase[0]),
        .O(\g_eslot[5].umir ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_eslot[5].ed_i_i_30 
       (.I0(obs_growth[66]),
        .I1(obs_ecorr[17]),
        .I2(\g_slot[0].pe_i_i_93_n_0 ),
        .I3(obs_growth[51]),
        .I4(\g_slot[1].pe_i_i_65_n_0 ),
        .I5(p_2_in[0]),
        .O(\g_eslot[5].ed_i_i_30_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_eslot[5].ed_i_i_31 
       (.I0(obs_ecorr[33]),
        .I1(obs_growth[19]),
        .I2(\g_slot[0].pe_i_i_93_n_0 ),
        .I3(obs_growth[34]),
        .I4(\g_slot[1].pe_i_i_65_n_0 ),
        .I5(p_2_in[2]),
        .O(\g_eslot[5].ed_i_i_31_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair278" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \g_eslot[5].ed_i_i_32 
       (.I0(stage__0[2]),
        .I1(stage__0[0]),
        .I2(stage__0[1]),
        .O(\g_eslot[0].gh ));
  LUT6 #(
    .INIT(64'h000000C3A5A500C3)) 
    \g_eslot[5].ed_i_i_33 
       (.I0(\g_eslot[5].ed_i_i_35_n_0 ),
        .I1(\g_slot[1].pe_i_i_107_n_0 ),
        .I2(\g_slot[1].pe_i_i_103_n_0 ),
        .I3(\g_slot[1].pe_i_i_108_n_0 ),
        .I4(phase[2]),
        .I5(\g_eslot[5].ed_i_i_34_n_0 ),
        .O(\g_eslot[5].ed_i_i_33_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair282" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \g_eslot[5].ed_i_i_34 
       (.I0(phase[0]),
        .I1(\g_slot[0].omir_reg_n_0_[4] ),
        .I2(\phase_reg[1]_rep__0_n_0 ),
        .O(\g_eslot[5].ed_i_i_34_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair281" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \g_eslot[5].ed_i_i_35 
       (.I0(phase[0]),
        .I1(\g_slot[0].omir_reg_n_0_[5] ),
        .I2(\phase_reg[1]_rep__0_n_0 ),
        .O(\g_eslot[5].ed_i_i_35_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair276" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \g_eslot[5].ed_i_i_36 
       (.I0(obs_growth[51]),
        .I1(\g_slot[1].pe_i_i_65_n_0 ),
        .I2(p_2_in[0]),
        .O(\g_eslot[5].ed_i_i_36_n_0 ));
  LUT6 #(
    .INIT(64'h8888A0000000A000)) 
    \g_eslot[5].ed_i_i_4 
       (.I0(\g_eslot[5].ed_i_i_19_n_0 ),
        .I1(\g_eslot[5].ed_i_i_20_n_0 ),
        .I2(\g_slot[1].pe_i_i_78_n_0 ),
        .I3(\g_slot[1].pe_i_i_99_n_0 ),
        .I4(phase[2]),
        .I5(\g_eslot[5].ed_i_i_21_n_0 ),
        .O(\g_eslot[5].vmir ));
  (* SOFT_HLUTNM = "soft_lutpair270" *) 
  LUT4 #(
    .INIT(16'hE200)) 
    \g_eslot[5].ed_i_i_5 
       (.I0(\g_eslot[5].ed_i_i_22_n_0 ),
        .I1(phase[0]),
        .I2(\g_eslot[5].ed_i_i_23_n_0 ),
        .I3(\g_slot[1].pe_i_i_65_n_0 ),
        .O(\g_eslot[5].ed_i_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hB8BBB88830003000)) 
    \g_eslot[5].ed_i_i_6 
       (.I0(\g_eslot[5].ed_i_i_22_n_0 ),
        .I1(phase[0]),
        .I2(\g_eslot[5].ed_i_i_24_n_0 ),
        .I3(\g_slot[0].pe_i_i_92_n_0 ),
        .I4(\g_eslot[5].ed_i_i_25_n_0 ),
        .I5(\g_slot[1].pe_i_i_65_n_0 ),
        .O(\g_eslot[5].ab_state [0]));
  (* SOFT_HLUTNM = "soft_lutpair270" *) 
  LUT4 #(
    .INIT(16'hB800)) 
    \g_eslot[5].ed_i_i_7 
       (.I0(\g_eslot[5].ed_i_i_26_n_0 ),
        .I1(phase[0]),
        .I2(\g_eslot[5].ed_i_i_23_n_0 ),
        .I3(\g_slot[1].pe_i_i_65_n_0 ),
        .O(\g_eslot[5].ab_state [2]));
  (* SOFT_HLUTNM = "soft_lutpair216" *) 
  LUT5 #(
    .INIT(32'hB8B8FF00)) 
    \g_eslot[5].ed_i_i_8 
       (.I0(\g_eslot[5].ed_i_i_24_n_0 ),
        .I1(\g_slot[0].pe_i_i_92_n_0 ),
        .I2(\g_eslot[5].ed_i_i_27_n_0 ),
        .I3(\g_eslot[5].ed_i_i_28_n_0 ),
        .I4(phase[0]),
        .O(\g_eslot[5].my_state [2]));
  LUT5 #(
    .INIT(32'hFF00B8B8)) 
    \g_eslot[5].ed_i_i_9 
       (.I0(\g_eslot[5].ed_i_i_29_n_0 ),
        .I1(\g_slot[0].pe_i_i_92_n_0 ),
        .I2(\g_eslot[5].ed_i_i_24_n_0 ),
        .I3(\g_eslot[5].ed_i_i_28_n_0 ),
        .I4(phase[0]),
        .O(\g_eslot[5].my_state [1]));
  FDRE \g_eslot[5].eomir_reg[0] 
       (.C(clk),
        .CE(\g_eslot[0].eown [1]),
        .D(obs_growth[66]),
        .Q(\g_slot[1].g_dir[2].esrc [16]),
        .R(reset));
  FDRE \g_eslot[5].eomir_reg[10] 
       (.C(clk),
        .CE(\g_eslot[0].eown [10]),
        .D(obs_growth[19]),
        .Q(\g_eslot[5].eomir_reg_n_0_[10] ),
        .R(reset));
  FDRE \g_eslot[5].eomir_reg[1] 
       (.C(clk),
        .CE(\g_eslot[0].eown [1]),
        .D(obs_growth[67]),
        .Q(\g_slot[1].g_dir[2].esrc [17]),
        .R(reset));
  FDRE \g_eslot[5].eomir_reg[3] 
       (.C(clk),
        .CE(\g_eslot[0].eown [4]),
        .D(obs_growth[50]),
        .Q(\g_eslot[5].eomir_reg_n_0_[3] ),
        .R(reset));
  FDRE \g_eslot[5].eomir_reg[4] 
       (.C(clk),
        .CE(\g_eslot[0].eown [4]),
        .D(obs_growth[51]),
        .Q(\g_eslot[5].eomir_reg_n_0_[4] ),
        .R(reset));
  FDRE \g_eslot[5].eomir_reg[6] 
       (.C(clk),
        .CE(\g_eslot[0].eown [7]),
        .D(obs_growth[34]),
        .Q(\g_eslot[5].eomir_reg_n_0_[6] ),
        .R(reset));
  FDRE \g_eslot[5].eomir_reg[7] 
       (.C(clk),
        .CE(\g_eslot[0].eown [7]),
        .D(obs_growth[35]),
        .Q(\g_eslot[5].eomir_reg_n_0_[7] ),
        .R(reset));
  FDRE \g_eslot[5].eomir_reg[9] 
       (.C(clk),
        .CE(\g_eslot[0].eown [10]),
        .D(obs_growth[18]),
        .Q(\g_eslot[5].eomir_reg_n_0_[9] ),
        .R(reset));
  FDRE \g_eslot[5].eown_reg[0] 
       (.C(clk),
        .CE(\g_eslot[0].eown [1]),
        .D(\eslot_nxt[5] [0]),
        .Q(obs_growth[66]),
        .R(reset));
  FDRE \g_eslot[5].eown_reg[10] 
       (.C(clk),
        .CE(\g_eslot[0].eown [10]),
        .D(\eslot_nxt[5] [1]),
        .Q(obs_growth[19]),
        .R(reset));
  FDRE \g_eslot[5].eown_reg[11] 
       (.C(clk),
        .CE(\g_eslot[0].eown [10]),
        .D(\eslot_nxt[5] [2]),
        .Q(obs_ecorr[9]),
        .R(reset));
  FDRE \g_eslot[5].eown_reg[12] 
       (.C(clk),
        .CE(\g_eslot[0].eown [13]),
        .D(\eslot_nxt[5] [0]),
        .Q(p_2_in[0]),
        .R(reset));
  FDRE \g_eslot[5].eown_reg[13] 
       (.C(clk),
        .CE(\g_eslot[0].eown [13]),
        .D(\eslot_nxt[5] [1]),
        .Q(p_2_in[1]),
        .R(reset));
  FDRE \g_eslot[5].eown_reg[14] 
       (.C(clk),
        .CE(\g_eslot[0].eown [13]),
        .D(\eslot_nxt[5] [2]),
        .Q(p_2_in[2]),
        .R(reset));
  FDRE \g_eslot[5].eown_reg[1] 
       (.C(clk),
        .CE(\g_eslot[0].eown [1]),
        .D(\eslot_nxt[5] [1]),
        .Q(obs_growth[67]),
        .R(reset));
  FDRE \g_eslot[5].eown_reg[2] 
       (.C(clk),
        .CE(\g_eslot[0].eown [1]),
        .D(\eslot_nxt[5] [2]),
        .Q(obs_ecorr[33]),
        .R(reset));
  FDRE \g_eslot[5].eown_reg[3] 
       (.C(clk),
        .CE(\g_eslot[0].eown [4]),
        .D(\eslot_nxt[5] [0]),
        .Q(obs_growth[50]),
        .R(reset));
  FDRE \g_eslot[5].eown_reg[4] 
       (.C(clk),
        .CE(\g_eslot[0].eown [4]),
        .D(\eslot_nxt[5] [1]),
        .Q(obs_growth[51]),
        .R(reset));
  FDRE \g_eslot[5].eown_reg[5] 
       (.C(clk),
        .CE(\g_eslot[0].eown [4]),
        .D(\eslot_nxt[5] [2]),
        .Q(obs_ecorr[25]),
        .R(reset));
  FDRE \g_eslot[5].eown_reg[6] 
       (.C(clk),
        .CE(\g_eslot[0].eown [7]),
        .D(\eslot_nxt[5] [0]),
        .Q(obs_growth[34]),
        .R(reset));
  FDRE \g_eslot[5].eown_reg[7] 
       (.C(clk),
        .CE(\g_eslot[0].eown [7]),
        .D(\eslot_nxt[5] [1]),
        .Q(obs_growth[35]),
        .R(reset));
  FDRE \g_eslot[5].eown_reg[8] 
       (.C(clk),
        .CE(\g_eslot[0].eown [7]),
        .D(\eslot_nxt[5] [2]),
        .Q(obs_ecorr[17]),
        .R(reset));
  FDRE \g_eslot[5].eown_reg[9] 
       (.C(clk),
        .CE(\g_eslot[0].eown [10]),
        .D(\eslot_nxt[5] [0]),
        .Q(obs_growth[18]),
        .R(reset));
  (* ST_DROP = "3'b001" *) 
  (* ST_GH = "3'b100" *) 
  (* ST_GW = "3'b010" *) 
  (* ST_MH = "3'b101" *) 
  (* ST_MW = "3'b011" *) 
  (* ZZZ_ANCHOR = "0" *) 
  snowflake_edge__7 \g_eslot[6].ed_i 
       (.above_ecorr(\g_eslot[6].ab_state [2]),
        .above_growth({\g_eslot[6].ed_i_i_5_n_0 ,\g_eslot[6].ab_state [0]}),
        .clk(1'b0),
        .flip_u(\g_eslot[6].umir ),
        .flip_v(\g_eslot[6].vmir ),
        .reset(reset),
        .st_in(\g_eslot[6].my_state ),
        .st_out(\eslot_nxt[6] ),
        .stage({stage_reg,\dbg_stage[0]_i_1_n_0 }),
        .u_pulse(\g_eslot[6].upulse ),
        .v_pulse(\g_eslot[6].vpulse ));
  LUT6 #(
    .INIT(64'h0000A00002000000)) 
    \g_eslot[6].ed_i_i_1 
       (.I0(p_6_in),
        .I1(\g_eslot[6].ed_i_i_12_n_0 ),
        .I2(stage__0[2]),
        .I3(stage__0[0]),
        .I4(stage__0[1]),
        .I5(p_0_in95_in),
        .O(\g_eslot[6].upulse ));
  LUT6 #(
    .INIT(64'hB8B8B8B8FF33CC00)) 
    \g_eslot[6].ed_i_i_10 
       (.I0(\g_eslot[6].ed_i_i_26_n_0 ),
        .I1(\g_slot[0].pe_i_i_92_n_0 ),
        .I2(\g_eslot[6].ed_i_i_21_n_0 ),
        .I3(\g_eslot[6].ed_i_i_27_n_0 ),
        .I4(\g_eslot[6].ed_i_i_28_n_0 ),
        .I5(phase[0]),
        .O(\g_eslot[6].my_state [0]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \g_eslot[6].ed_i_i_11 
       (.I0(phase[0]),
        .I1(\g_slot[0].omir_reg_n_0_[8] ),
        .I2(\phase_reg[1]_rep__3_n_0 ),
        .I3(phase[2]),
        .I4(\g_slot[1].pe_i_i_95_n_0 ),
        .O(p_6_in));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \g_eslot[6].ed_i_i_12 
       (.I0(phase[0]),
        .I1(\g_slot[0].omir_reg_n_0_[2] ),
        .I2(\phase_reg[1]_rep__2_n_0 ),
        .I3(phase[2]),
        .I4(\g_slot[1].pe_i_i_98_n_0 ),
        .O(\g_eslot[6].ed_i_i_12_n_0 ));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \g_eslot[6].ed_i_i_13 
       (.I0(phase[0]),
        .I1(\g_slot[0].omir_reg_n_0_[7] ),
        .I2(\phase_reg[1]_rep__3_n_0 ),
        .I3(phase[2]),
        .I4(\g_slot[2].pe_i_i_101_n_0 ),
        .O(p_0_in95_in));
  (* SOFT_HLUTNM = "soft_lutpair247" *) 
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \g_eslot[6].ed_i_i_14 
       (.I0(phase[0]),
        .I1(\g_slot[0].omir_reg_n_0_[8] ),
        .I2(\phase_reg[1]_rep__3_n_0 ),
        .I3(phase[2]),
        .I4(\g_slot[2].pe_i_i_70_n_0 ),
        .O(p_7_in));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \g_eslot[6].ed_i_i_15 
       (.I0(phase[0]),
        .I1(\g_slot[0].omir_reg_n_0_[2] ),
        .I2(\phase_reg[1]_rep__2_n_0 ),
        .I3(phase[2]),
        .I4(\g_slot[2].pe_i_i_93_n_0 ),
        .O(\g_eslot[6].ed_i_i_15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair260" *) 
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \g_eslot[6].ed_i_i_16 
       (.I0(phase[0]),
        .I1(\g_slot[0].omir_reg_n_0_[7] ),
        .I2(\phase_reg[1]_rep__3_n_0 ),
        .I3(phase[2]),
        .I4(\g_slot[2].pe_i_i_71_n_0 ),
        .O(p_0_in93_in));
  LUT6 #(
    .INIT(64'h010001FF00000000)) 
    \g_eslot[6].ed_i_i_17 
       (.I0(phase[0]),
        .I1(\g_slot[0].omir_reg_n_0_[3] ),
        .I2(\phase_reg[1]_rep__2_n_0 ),
        .I3(phase[2]),
        .I4(\g_slot[2].pe_i_i_105_n_0 ),
        .I5(\g_eslot[6].ed_i_i_29_n_0 ),
        .O(\g_eslot[6].umir0 ));
  LUT6 #(
    .INIT(64'h000000C3A5A500C3)) 
    \g_eslot[6].ed_i_i_18 
       (.I0(\g_eslot[5].ed_i_i_34_n_0 ),
        .I1(\g_slot[2].pe_i_i_74_n_0 ),
        .I2(\g_slot[1].pe_i_i_103_n_0 ),
        .I3(\g_slot[2].pe_i_i_73_n_0 ),
        .I4(phase[2]),
        .I5(\g_eslot[5].ed_i_i_35_n_0 ),
        .O(\g_eslot[6].ed_i_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_eslot[6].ed_i_i_19 
       (.I0(obs_growth[55]),
        .I1(obs_ecorr[19]),
        .I2(\g_slot[0].pe_i_i_92_n_0 ),
        .I3(obs_growth[38]),
        .I4(\g_slot[0].pe_i_i_93_n_0 ),
        .I5(obs_growth[23]),
        .O(\g_eslot[6].ed_i_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h0000A00002000000)) 
    \g_eslot[6].ed_i_i_2 
       (.I0(p_7_in),
        .I1(\g_eslot[6].ed_i_i_15_n_0 ),
        .I2(stage__0[2]),
        .I3(stage__0[0]),
        .I4(stage__0[1]),
        .I5(p_0_in93_in),
        .O(\g_eslot[6].vpulse ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_eslot[6].ed_i_i_20 
       (.I0(obs_ecorr[27]),
        .I1(obs_growth[22]),
        .I2(\g_slot[0].pe_i_i_92_n_0 ),
        .I3(obs_growth[39]),
        .I4(\g_slot[0].pe_i_i_93_n_0 ),
        .I5(obs_ecorr[11]),
        .O(\g_eslot[6].ed_i_i_20_n_0 ));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \g_eslot[6].ed_i_i_21 
       (.I0(obs_growth[54]),
        .I1(obs_ecorr[11]),
        .I2(\g_slot[0].pe_i_i_93_n_0 ),
        .I3(obs_growth[39]),
        .I4(\g_slot[1].pe_i_i_65_n_0 ),
        .O(\g_eslot[6].ed_i_i_21_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair218" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \g_eslot[6].ed_i_i_22 
       (.I0(obs_ecorr[27]),
        .I1(\g_slot[0].pe_i_i_93_n_0 ),
        .I2(obs_growth[22]),
        .O(\g_eslot[6].ed_i_i_22_n_0 ));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \g_eslot[6].ed_i_i_23 
       (.I0(obs_growth[38]),
        .I1(obs_growth[23]),
        .I2(\g_slot[0].pe_i_i_92_n_0 ),
        .I3(obs_ecorr[19]),
        .I4(\g_slot[0].pe_i_i_93_n_0 ),
        .O(\g_eslot[6].ed_i_i_23_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair218" *) 
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \g_eslot[6].ed_i_i_24 
       (.I0(obs_ecorr[27]),
        .I1(\g_eslot[6].mst_mux [13]),
        .I2(\g_slot[0].pe_i_i_93_n_0 ),
        .I3(obs_growth[22]),
        .I4(\g_slot[1].pe_i_i_65_n_0 ),
        .O(\g_eslot[6].ed_i_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hB8BBB888B888B888)) 
    \g_eslot[6].ed_i_i_25 
       (.I0(\g_eslot[6].ed_i_i_28_n_0 ),
        .I1(\g_slot[0].pe_i_i_92_n_0 ),
        .I2(\g_eslot[6].ed_i_i_30_n_0 ),
        .I3(\g_slot[0].pe_i_i_93_n_0 ),
        .I4(obs_ecorr[19]),
        .I5(\g_slot[1].pe_i_i_65_n_0 ),
        .O(\g_eslot[6].ed_i_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_eslot[6].ed_i_i_26 
       (.I0(obs_growth[71]),
        .I1(obs_growth[22]),
        .I2(\g_slot[0].pe_i_i_93_n_0 ),
        .I3(obs_ecorr[27]),
        .I4(\g_slot[1].pe_i_i_65_n_0 ),
        .I5(\g_eslot[6].mst_mux [13]),
        .O(\g_eslot[6].ed_i_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_eslot[6].ed_i_i_27 
       (.I0(obs_growth[70]),
        .I1(obs_ecorr[19]),
        .I2(\g_slot[0].pe_i_i_93_n_0 ),
        .I3(obs_growth[55]),
        .I4(\g_slot[1].pe_i_i_65_n_0 ),
        .I5(\g_eslot[6].mst_mux [12]),
        .O(\g_eslot[6].ed_i_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_eslot[6].ed_i_i_28 
       (.I0(obs_ecorr[35]),
        .I1(obs_growth[23]),
        .I2(\g_slot[0].pe_i_i_93_n_0 ),
        .I3(obs_growth[38]),
        .I4(\g_slot[1].pe_i_i_65_n_0 ),
        .I5(\g_eslot[6].mst_mux [14]),
        .O(\g_eslot[6].ed_i_i_28_n_0 ));
  LUT6 #(
    .INIT(64'h000000C3A5A500C3)) 
    \g_eslot[6].ed_i_i_29 
       (.I0(\g_eslot[5].ed_i_i_35_n_0 ),
        .I1(\g_slot[2].pe_i_i_103_n_0 ),
        .I2(\g_slot[1].pe_i_i_103_n_0 ),
        .I3(\g_slot[2].pe_i_i_104_n_0 ),
        .I4(phase[2]),
        .I5(\g_eslot[5].ed_i_i_34_n_0 ),
        .O(\g_eslot[6].ed_i_i_29_n_0 ));
  LUT6 #(
    .INIT(64'h0808080808A80808)) 
    \g_eslot[6].ed_i_i_3 
       (.I0(\g_eslot[6].umir0 ),
        .I1(\g_slot[2].pe_i_i_100_n_0 ),
        .I2(phase[2]),
        .I3(\phase_reg[1]_rep__0_n_0 ),
        .I4(\g_slot[0].omir_reg_n_0_[15] ),
        .I5(phase[0]),
        .O(\g_eslot[6].umir ));
  (* SOFT_HLUTNM = "soft_lutpair276" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \g_eslot[6].ed_i_i_30 
       (.I0(obs_growth[55]),
        .I1(\g_slot[1].pe_i_i_65_n_0 ),
        .I2(\g_eslot[6].mst_mux [12]),
        .O(\g_eslot[6].ed_i_i_30_n_0 ));
  LUT6 #(
    .INIT(64'h8888A0000000A000)) 
    \g_eslot[6].ed_i_i_4 
       (.I0(\g_eslot[6].ed_i_i_18_n_0 ),
        .I1(\g_eslot[5].ed_i_i_20_n_0 ),
        .I2(\g_slot[2].pe_i_i_75_n_0 ),
        .I3(\g_slot[2].pe_i_i_97_n_0 ),
        .I4(phase[2]),
        .I5(\g_eslot[5].ed_i_i_21_n_0 ),
        .O(\g_eslot[6].vmir ));
  (* SOFT_HLUTNM = "soft_lutpair269" *) 
  LUT4 #(
    .INIT(16'hE200)) 
    \g_eslot[6].ed_i_i_5 
       (.I0(\g_eslot[6].ed_i_i_19_n_0 ),
        .I1(phase[0]),
        .I2(\g_eslot[6].ed_i_i_20_n_0 ),
        .I3(\g_slot[1].pe_i_i_65_n_0 ),
        .O(\g_eslot[6].ed_i_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hB8BBB88830003000)) 
    \g_eslot[6].ed_i_i_6 
       (.I0(\g_eslot[6].ed_i_i_19_n_0 ),
        .I1(phase[0]),
        .I2(\g_eslot[6].ed_i_i_21_n_0 ),
        .I3(\g_slot[0].pe_i_i_92_n_0 ),
        .I4(\g_eslot[6].ed_i_i_22_n_0 ),
        .I5(\g_slot[1].pe_i_i_65_n_0 ),
        .O(\g_eslot[6].ab_state [0]));
  (* SOFT_HLUTNM = "soft_lutpair269" *) 
  LUT4 #(
    .INIT(16'hB800)) 
    \g_eslot[6].ed_i_i_7 
       (.I0(\g_eslot[6].ed_i_i_23_n_0 ),
        .I1(phase[0]),
        .I2(\g_eslot[6].ed_i_i_20_n_0 ),
        .I3(\g_slot[1].pe_i_i_65_n_0 ),
        .O(\g_eslot[6].ab_state [2]));
  LUT5 #(
    .INIT(32'hB8B8FF00)) 
    \g_eslot[6].ed_i_i_8 
       (.I0(\g_eslot[6].ed_i_i_21_n_0 ),
        .I1(\g_slot[0].pe_i_i_92_n_0 ),
        .I2(\g_eslot[6].ed_i_i_24_n_0 ),
        .I3(\g_eslot[6].ed_i_i_25_n_0 ),
        .I4(phase[0]),
        .O(\g_eslot[6].my_state [2]));
  LUT5 #(
    .INIT(32'hFF00B8B8)) 
    \g_eslot[6].ed_i_i_9 
       (.I0(\g_eslot[6].ed_i_i_26_n_0 ),
        .I1(\g_slot[0].pe_i_i_92_n_0 ),
        .I2(\g_eslot[6].ed_i_i_21_n_0 ),
        .I3(\g_eslot[6].ed_i_i_25_n_0 ),
        .I4(phase[0]),
        .O(\g_eslot[6].my_state [1]));
  FDRE \g_eslot[6].eomir_reg[0] 
       (.C(clk),
        .CE(\g_eslot[0].eown [1]),
        .D(obs_growth[70]),
        .Q(\g_slot[2].g_dir[2].esrc [16]),
        .R(reset));
  FDRE \g_eslot[6].eomir_reg[10] 
       (.C(clk),
        .CE(\g_eslot[0].eown [10]),
        .D(obs_growth[23]),
        .Q(\g_eslot[6].eomir_reg_n_0_[10] ),
        .R(reset));
  FDRE \g_eslot[6].eomir_reg[1] 
       (.C(clk),
        .CE(\g_eslot[0].eown [1]),
        .D(obs_growth[71]),
        .Q(\g_slot[2].g_dir[2].esrc [17]),
        .R(reset));
  FDRE \g_eslot[6].eomir_reg[3] 
       (.C(clk),
        .CE(\g_eslot[0].eown [4]),
        .D(obs_growth[54]),
        .Q(\g_eslot[6].eomir_reg_n_0_[3] ),
        .R(reset));
  FDRE \g_eslot[6].eomir_reg[4] 
       (.C(clk),
        .CE(\g_eslot[0].eown [4]),
        .D(obs_growth[55]),
        .Q(\g_eslot[6].eomir_reg_n_0_[4] ),
        .R(reset));
  FDRE \g_eslot[6].eomir_reg[6] 
       (.C(clk),
        .CE(\g_eslot[0].eown [7]),
        .D(obs_growth[38]),
        .Q(\g_eslot[6].eomir_reg_n_0_[6] ),
        .R(reset));
  FDRE \g_eslot[6].eomir_reg[7] 
       (.C(clk),
        .CE(\g_eslot[0].eown [7]),
        .D(obs_growth[39]),
        .Q(\g_eslot[6].eomir_reg_n_0_[7] ),
        .R(reset));
  FDRE \g_eslot[6].eomir_reg[9] 
       (.C(clk),
        .CE(\g_eslot[0].eown [10]),
        .D(obs_growth[22]),
        .Q(\g_eslot[6].eomir_reg_n_0_[9] ),
        .R(reset));
  FDRE \g_eslot[6].eown_reg[0] 
       (.C(clk),
        .CE(\g_eslot[0].eown [1]),
        .D(\eslot_nxt[6] [0]),
        .Q(obs_growth[70]),
        .R(reset));
  FDRE \g_eslot[6].eown_reg[10] 
       (.C(clk),
        .CE(\g_eslot[0].eown [10]),
        .D(\eslot_nxt[6] [1]),
        .Q(obs_growth[23]),
        .R(reset));
  FDRE \g_eslot[6].eown_reg[11] 
       (.C(clk),
        .CE(\g_eslot[0].eown [10]),
        .D(\eslot_nxt[6] [2]),
        .Q(obs_ecorr[11]),
        .R(reset));
  FDRE \g_eslot[6].eown_reg[12] 
       (.C(clk),
        .CE(\g_eslot[0].eown [13]),
        .D(\eslot_nxt[6] [0]),
        .Q(\g_eslot[6].mst_mux [12]),
        .R(reset));
  FDRE \g_eslot[6].eown_reg[13] 
       (.C(clk),
        .CE(\g_eslot[0].eown [13]),
        .D(\eslot_nxt[6] [1]),
        .Q(\g_eslot[6].mst_mux [13]),
        .R(reset));
  FDRE \g_eslot[6].eown_reg[14] 
       (.C(clk),
        .CE(\g_eslot[0].eown [13]),
        .D(\eslot_nxt[6] [2]),
        .Q(\g_eslot[6].mst_mux [14]),
        .R(reset));
  FDRE \g_eslot[6].eown_reg[1] 
       (.C(clk),
        .CE(\g_eslot[0].eown [1]),
        .D(\eslot_nxt[6] [1]),
        .Q(obs_growth[71]),
        .R(reset));
  FDRE \g_eslot[6].eown_reg[2] 
       (.C(clk),
        .CE(\g_eslot[0].eown [1]),
        .D(\eslot_nxt[6] [2]),
        .Q(obs_ecorr[35]),
        .R(reset));
  FDRE \g_eslot[6].eown_reg[3] 
       (.C(clk),
        .CE(\g_eslot[0].eown [4]),
        .D(\eslot_nxt[6] [0]),
        .Q(obs_growth[54]),
        .R(reset));
  FDRE \g_eslot[6].eown_reg[4] 
       (.C(clk),
        .CE(\g_eslot[0].eown [4]),
        .D(\eslot_nxt[6] [1]),
        .Q(obs_growth[55]),
        .R(reset));
  FDRE \g_eslot[6].eown_reg[5] 
       (.C(clk),
        .CE(\g_eslot[0].eown [4]),
        .D(\eslot_nxt[6] [2]),
        .Q(obs_ecorr[27]),
        .R(reset));
  FDRE \g_eslot[6].eown_reg[6] 
       (.C(clk),
        .CE(\g_eslot[0].eown [7]),
        .D(\eslot_nxt[6] [0]),
        .Q(obs_growth[38]),
        .R(reset));
  FDRE \g_eslot[6].eown_reg[7] 
       (.C(clk),
        .CE(\g_eslot[0].eown [7]),
        .D(\eslot_nxt[6] [1]),
        .Q(obs_growth[39]),
        .R(reset));
  FDRE \g_eslot[6].eown_reg[8] 
       (.C(clk),
        .CE(\g_eslot[0].eown [7]),
        .D(\eslot_nxt[6] [2]),
        .Q(obs_ecorr[19]),
        .R(reset));
  FDRE \g_eslot[6].eown_reg[9] 
       (.C(clk),
        .CE(\g_eslot[0].eown [10]),
        .D(\eslot_nxt[6] [0]),
        .Q(obs_growth[22]),
        .R(reset));
  (* ST_DROP = "3'b001" *) 
  (* ST_GH = "3'b100" *) 
  (* ST_GW = "3'b010" *) 
  (* ST_MH = "3'b101" *) 
  (* ST_MW = "3'b011" *) 
  (* ZZZ_ANCHOR = "0" *) 
  snowflake_edge__8 \g_eslot[7].ed_i 
       (.above_ecorr(\g_eslot[7].ab_state [2]),
        .above_growth({\g_eslot[7].ed_i_i_5_n_0 ,\g_eslot[7].ab_state [0]}),
        .clk(1'b0),
        .flip_u(\g_eslot[7].umir ),
        .flip_v(\g_eslot[7].vmir ),
        .reset(reset),
        .st_in(\g_eslot[7].my_state ),
        .st_out(\eslot_nxt[7] ),
        .stage({stage_reg,\dbg_stage[0]_i_1_n_0 }),
        .u_pulse(\g_eslot[7].upulse ),
        .v_pulse(\g_eslot[7].vpulse ));
  LUT6 #(
    .INIT(64'h0000A00002000000)) 
    \g_eslot[7].ed_i_i_1 
       (.I0(\g_eslot[7].ed_i_i_11_n_0 ),
        .I1(\g_eslot[7].ed_i_i_12_n_0 ),
        .I2(stage__0[2]),
        .I3(stage__0[0]),
        .I4(stage__0[1]),
        .I5(p_0_in91_in),
        .O(\g_eslot[7].upulse ));
  LUT6 #(
    .INIT(64'hB8B8B8B8FF33CC00)) 
    \g_eslot[7].ed_i_i_10 
       (.I0(\g_eslot[7].ed_i_i_26_n_0 ),
        .I1(\g_slot[0].pe_i_i_92_n_0 ),
        .I2(\g_eslot[7].ed_i_i_21_n_0 ),
        .I3(\g_eslot[7].ed_i_i_27_n_0 ),
        .I4(\g_eslot[7].ed_i_i_28_n_0 ),
        .I5(phase[0]),
        .O(\g_eslot[7].my_state [0]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \g_eslot[7].ed_i_i_11 
       (.I0(phase[0]),
        .I1(\g_slot[0].omir_reg_n_0_[8] ),
        .I2(\phase_reg[1]_rep__3_n_0 ),
        .I3(phase[2]),
        .I4(\g_slot[2].pe_i_i_92_n_0 ),
        .O(\g_eslot[7].ed_i_i_11_n_0 ));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \g_eslot[7].ed_i_i_12 
       (.I0(phase[0]),
        .I1(\g_slot[0].omir_reg_n_0_[2] ),
        .I2(\phase_reg[1]_rep__2_n_0 ),
        .I3(phase[2]),
        .I4(\g_slot[2].pe_i_i_95_n_0 ),
        .O(\g_eslot[7].ed_i_i_12_n_0 ));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \g_eslot[7].ed_i_i_13 
       (.I0(phase[0]),
        .I1(\g_slot[0].omir_reg_n_0_[7] ),
        .I2(\phase_reg[1]_rep__3_n_0 ),
        .I3(phase[2]),
        .I4(\g_slot[3].pe_i_i_102_n_0 ),
        .O(p_0_in91_in));
  (* SOFT_HLUTNM = "soft_lutpair238" *) 
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \g_eslot[7].ed_i_i_14 
       (.I0(phase[0]),
        .I1(\g_slot[0].omir_reg_n_0_[8] ),
        .I2(\phase_reg[1]_rep__3_n_0 ),
        .I3(phase[2]),
        .I4(\g_slot[3].pe_i_i_71_n_0 ),
        .O(p_5_in));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \g_eslot[7].ed_i_i_15 
       (.I0(phase[0]),
        .I1(\g_slot[0].omir_reg_n_0_[2] ),
        .I2(\phase_reg[1]_rep__2_n_0 ),
        .I3(phase[2]),
        .I4(\g_slot[3].pe_i_i_94_n_0 ),
        .O(\g_eslot[7].ed_i_i_15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair259" *) 
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \g_eslot[7].ed_i_i_16 
       (.I0(phase[0]),
        .I1(\g_slot[0].omir_reg_n_0_[7] ),
        .I2(\phase_reg[1]_rep__3_n_0 ),
        .I3(phase[2]),
        .I4(\g_slot[3].pe_i_i_72_n_0 ),
        .O(p_0_in89_in));
  LUT6 #(
    .INIT(64'h010001FF00000000)) 
    \g_eslot[7].ed_i_i_17 
       (.I0(phase[0]),
        .I1(\g_slot[0].omir_reg_n_0_[3] ),
        .I2(\phase_reg[1]_rep__2_n_0 ),
        .I3(phase[2]),
        .I4(\g_slot[3].pe_i_i_106_n_0 ),
        .I5(\g_eslot[7].ed_i_i_29_n_0 ),
        .O(\g_eslot[7].umir0 ));
  LUT6 #(
    .INIT(64'h000000C3A5A500C3)) 
    \g_eslot[7].ed_i_i_18 
       (.I0(\g_eslot[5].ed_i_i_34_n_0 ),
        .I1(\g_slot[3].pe_i_i_75_n_0 ),
        .I2(\g_slot[1].pe_i_i_103_n_0 ),
        .I3(\g_slot[3].pe_i_i_74_n_0 ),
        .I4(phase[2]),
        .I5(\g_eslot[5].ed_i_i_35_n_0 ),
        .O(\g_eslot[7].ed_i_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_eslot[7].ed_i_i_19 
       (.I0(obs_growth[59]),
        .I1(obs_ecorr[21]),
        .I2(\g_slot[0].pe_i_i_92_n_0 ),
        .I3(obs_growth[42]),
        .I4(\g_slot[0].pe_i_i_93_n_0 ),
        .I5(obs_growth[27]),
        .O(\g_eslot[7].ed_i_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h0000A00002000000)) 
    \g_eslot[7].ed_i_i_2 
       (.I0(p_5_in),
        .I1(\g_eslot[7].ed_i_i_15_n_0 ),
        .I2(stage__0[2]),
        .I3(stage__0[0]),
        .I4(stage__0[1]),
        .I5(p_0_in89_in),
        .O(\g_eslot[7].vpulse ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_eslot[7].ed_i_i_20 
       (.I0(obs_ecorr[29]),
        .I1(obs_growth[26]),
        .I2(\g_slot[0].pe_i_i_92_n_0 ),
        .I3(obs_growth[43]),
        .I4(\g_slot[0].pe_i_i_93_n_0 ),
        .I5(obs_ecorr[13]),
        .O(\g_eslot[7].ed_i_i_20_n_0 ));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \g_eslot[7].ed_i_i_21 
       (.I0(obs_growth[58]),
        .I1(obs_ecorr[13]),
        .I2(\g_slot[0].pe_i_i_93_n_0 ),
        .I3(obs_growth[43]),
        .I4(\g_slot[1].pe_i_i_65_n_0 ),
        .O(\g_eslot[7].ed_i_i_21_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair219" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \g_eslot[7].ed_i_i_22 
       (.I0(obs_ecorr[29]),
        .I1(\g_slot[0].pe_i_i_93_n_0 ),
        .I2(obs_growth[26]),
        .O(\g_eslot[7].ed_i_i_22_n_0 ));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \g_eslot[7].ed_i_i_23 
       (.I0(obs_growth[42]),
        .I1(obs_growth[27]),
        .I2(\g_slot[0].pe_i_i_92_n_0 ),
        .I3(obs_ecorr[21]),
        .I4(\g_slot[0].pe_i_i_93_n_0 ),
        .O(\g_eslot[7].ed_i_i_23_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair219" *) 
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \g_eslot[7].ed_i_i_24 
       (.I0(obs_ecorr[29]),
        .I1(\g_eslot[7].mst_mux [13]),
        .I2(\g_slot[0].pe_i_i_93_n_0 ),
        .I3(obs_growth[26]),
        .I4(\g_slot[1].pe_i_i_65_n_0 ),
        .O(\g_eslot[7].ed_i_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hB8BBB888B888B888)) 
    \g_eslot[7].ed_i_i_25 
       (.I0(\g_eslot[7].ed_i_i_28_n_0 ),
        .I1(\g_slot[0].pe_i_i_92_n_0 ),
        .I2(\g_eslot[7].ed_i_i_30_n_0 ),
        .I3(\g_slot[0].pe_i_i_93_n_0 ),
        .I4(obs_ecorr[21]),
        .I5(\g_slot[1].pe_i_i_65_n_0 ),
        .O(\g_eslot[7].ed_i_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_eslot[7].ed_i_i_26 
       (.I0(obs_growth[75]),
        .I1(obs_growth[26]),
        .I2(\g_slot[0].pe_i_i_93_n_0 ),
        .I3(obs_ecorr[29]),
        .I4(\g_slot[1].pe_i_i_65_n_0 ),
        .I5(\g_eslot[7].mst_mux [13]),
        .O(\g_eslot[7].ed_i_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_eslot[7].ed_i_i_27 
       (.I0(obs_growth[74]),
        .I1(obs_ecorr[21]),
        .I2(\g_slot[0].pe_i_i_93_n_0 ),
        .I3(obs_growth[59]),
        .I4(\g_slot[1].pe_i_i_65_n_0 ),
        .I5(\g_eslot[7].mst_mux [12]),
        .O(\g_eslot[7].ed_i_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_eslot[7].ed_i_i_28 
       (.I0(obs_ecorr[37]),
        .I1(obs_growth[27]),
        .I2(\g_slot[0].pe_i_i_93_n_0 ),
        .I3(obs_growth[42]),
        .I4(\g_slot[1].pe_i_i_65_n_0 ),
        .I5(\g_eslot[7].mst_mux [14]),
        .O(\g_eslot[7].ed_i_i_28_n_0 ));
  LUT6 #(
    .INIT(64'h000000C3A5A500C3)) 
    \g_eslot[7].ed_i_i_29 
       (.I0(\g_eslot[5].ed_i_i_35_n_0 ),
        .I1(\g_slot[3].pe_i_i_104_n_0 ),
        .I2(\g_slot[1].pe_i_i_103_n_0 ),
        .I3(\g_slot[3].pe_i_i_105_n_0 ),
        .I4(phase[2]),
        .I5(\g_eslot[5].ed_i_i_34_n_0 ),
        .O(\g_eslot[7].ed_i_i_29_n_0 ));
  LUT6 #(
    .INIT(64'h0808080808A80808)) 
    \g_eslot[7].ed_i_i_3 
       (.I0(\g_eslot[7].umir0 ),
        .I1(\g_slot[3].pe_i_i_101_n_0 ),
        .I2(phase[2]),
        .I3(\phase_reg[1]_rep__0_n_0 ),
        .I4(\g_slot[0].omir_reg_n_0_[15] ),
        .I5(phase[0]),
        .O(\g_eslot[7].umir ));
  (* SOFT_HLUTNM = "soft_lutpair275" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \g_eslot[7].ed_i_i_30 
       (.I0(obs_growth[59]),
        .I1(\g_slot[1].pe_i_i_65_n_0 ),
        .I2(\g_eslot[7].mst_mux [12]),
        .O(\g_eslot[7].ed_i_i_30_n_0 ));
  LUT6 #(
    .INIT(64'h8888A0000000A000)) 
    \g_eslot[7].ed_i_i_4 
       (.I0(\g_eslot[7].ed_i_i_18_n_0 ),
        .I1(\g_eslot[5].ed_i_i_20_n_0 ),
        .I2(\g_slot[3].pe_i_i_76_n_0 ),
        .I3(\g_slot[3].pe_i_i_98_n_0 ),
        .I4(phase[2]),
        .I5(\g_eslot[5].ed_i_i_21_n_0 ),
        .O(\g_eslot[7].vmir ));
  (* SOFT_HLUTNM = "soft_lutpair268" *) 
  LUT4 #(
    .INIT(16'hE200)) 
    \g_eslot[7].ed_i_i_5 
       (.I0(\g_eslot[7].ed_i_i_19_n_0 ),
        .I1(phase[0]),
        .I2(\g_eslot[7].ed_i_i_20_n_0 ),
        .I3(\g_slot[1].pe_i_i_65_n_0 ),
        .O(\g_eslot[7].ed_i_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hB8BBB88830003000)) 
    \g_eslot[7].ed_i_i_6 
       (.I0(\g_eslot[7].ed_i_i_19_n_0 ),
        .I1(phase[0]),
        .I2(\g_eslot[7].ed_i_i_21_n_0 ),
        .I3(\g_slot[0].pe_i_i_92_n_0 ),
        .I4(\g_eslot[7].ed_i_i_22_n_0 ),
        .I5(\g_slot[1].pe_i_i_65_n_0 ),
        .O(\g_eslot[7].ab_state [0]));
  (* SOFT_HLUTNM = "soft_lutpair268" *) 
  LUT4 #(
    .INIT(16'hB800)) 
    \g_eslot[7].ed_i_i_7 
       (.I0(\g_eslot[7].ed_i_i_23_n_0 ),
        .I1(phase[0]),
        .I2(\g_eslot[7].ed_i_i_20_n_0 ),
        .I3(\g_slot[1].pe_i_i_65_n_0 ),
        .O(\g_eslot[7].ab_state [2]));
  LUT5 #(
    .INIT(32'hB8B8FF00)) 
    \g_eslot[7].ed_i_i_8 
       (.I0(\g_eslot[7].ed_i_i_21_n_0 ),
        .I1(\g_slot[0].pe_i_i_92_n_0 ),
        .I2(\g_eslot[7].ed_i_i_24_n_0 ),
        .I3(\g_eslot[7].ed_i_i_25_n_0 ),
        .I4(phase[0]),
        .O(\g_eslot[7].my_state [2]));
  LUT5 #(
    .INIT(32'hFF00B8B8)) 
    \g_eslot[7].ed_i_i_9 
       (.I0(\g_eslot[7].ed_i_i_26_n_0 ),
        .I1(\g_slot[0].pe_i_i_92_n_0 ),
        .I2(\g_eslot[7].ed_i_i_21_n_0 ),
        .I3(\g_eslot[7].ed_i_i_25_n_0 ),
        .I4(phase[0]),
        .O(\g_eslot[7].my_state [1]));
  FDRE \g_eslot[7].eomir_reg[0] 
       (.C(clk),
        .CE(\g_eslot[0].eown [1]),
        .D(obs_growth[74]),
        .Q(\g_slot[3].g_dir[2].esrc [16]),
        .R(reset));
  FDRE \g_eslot[7].eomir_reg[10] 
       (.C(clk),
        .CE(\g_eslot[0].eown [10]),
        .D(obs_growth[27]),
        .Q(\g_eslot[7].eomir_reg_n_0_[10] ),
        .R(reset));
  FDRE \g_eslot[7].eomir_reg[1] 
       (.C(clk),
        .CE(\g_eslot[0].eown [1]),
        .D(obs_growth[75]),
        .Q(\g_slot[3].g_dir[2].esrc [17]),
        .R(reset));
  FDRE \g_eslot[7].eomir_reg[3] 
       (.C(clk),
        .CE(\g_eslot[0].eown [4]),
        .D(obs_growth[58]),
        .Q(\g_eslot[7].eomir_reg_n_0_[3] ),
        .R(reset));
  FDRE \g_eslot[7].eomir_reg[4] 
       (.C(clk),
        .CE(\g_eslot[0].eown [4]),
        .D(obs_growth[59]),
        .Q(\g_eslot[7].eomir_reg_n_0_[4] ),
        .R(reset));
  FDRE \g_eslot[7].eomir_reg[6] 
       (.C(clk),
        .CE(\g_eslot[0].eown [7]),
        .D(obs_growth[42]),
        .Q(\g_eslot[7].eomir_reg_n_0_[6] ),
        .R(reset));
  FDRE \g_eslot[7].eomir_reg[7] 
       (.C(clk),
        .CE(\g_eslot[0].eown [7]),
        .D(obs_growth[43]),
        .Q(\g_eslot[7].eomir_reg_n_0_[7] ),
        .R(reset));
  FDRE \g_eslot[7].eomir_reg[9] 
       (.C(clk),
        .CE(\g_eslot[0].eown [10]),
        .D(obs_growth[26]),
        .Q(\g_eslot[7].eomir_reg_n_0_[9] ),
        .R(reset));
  FDRE \g_eslot[7].eown_reg[0] 
       (.C(clk),
        .CE(\g_eslot[0].eown [1]),
        .D(\eslot_nxt[7] [0]),
        .Q(obs_growth[74]),
        .R(reset));
  FDRE \g_eslot[7].eown_reg[10] 
       (.C(clk),
        .CE(\g_eslot[0].eown [10]),
        .D(\eslot_nxt[7] [1]),
        .Q(obs_growth[27]),
        .R(reset));
  FDRE \g_eslot[7].eown_reg[11] 
       (.C(clk),
        .CE(\g_eslot[0].eown [10]),
        .D(\eslot_nxt[7] [2]),
        .Q(obs_ecorr[13]),
        .R(reset));
  FDRE \g_eslot[7].eown_reg[12] 
       (.C(clk),
        .CE(\g_eslot[0].eown [13]),
        .D(\eslot_nxt[7] [0]),
        .Q(\g_eslot[7].mst_mux [12]),
        .R(reset));
  FDRE \g_eslot[7].eown_reg[13] 
       (.C(clk),
        .CE(\g_eslot[0].eown [13]),
        .D(\eslot_nxt[7] [1]),
        .Q(\g_eslot[7].mst_mux [13]),
        .R(reset));
  FDRE \g_eslot[7].eown_reg[14] 
       (.C(clk),
        .CE(\g_eslot[0].eown [13]),
        .D(\eslot_nxt[7] [2]),
        .Q(\g_eslot[7].mst_mux [14]),
        .R(reset));
  FDRE \g_eslot[7].eown_reg[1] 
       (.C(clk),
        .CE(\g_eslot[0].eown [1]),
        .D(\eslot_nxt[7] [1]),
        .Q(obs_growth[75]),
        .R(reset));
  FDRE \g_eslot[7].eown_reg[2] 
       (.C(clk),
        .CE(\g_eslot[0].eown [1]),
        .D(\eslot_nxt[7] [2]),
        .Q(obs_ecorr[37]),
        .R(reset));
  FDRE \g_eslot[7].eown_reg[3] 
       (.C(clk),
        .CE(\g_eslot[0].eown [4]),
        .D(\eslot_nxt[7] [0]),
        .Q(obs_growth[58]),
        .R(reset));
  FDRE \g_eslot[7].eown_reg[4] 
       (.C(clk),
        .CE(\g_eslot[0].eown [4]),
        .D(\eslot_nxt[7] [1]),
        .Q(obs_growth[59]),
        .R(reset));
  FDRE \g_eslot[7].eown_reg[5] 
       (.C(clk),
        .CE(\g_eslot[0].eown [4]),
        .D(\eslot_nxt[7] [2]),
        .Q(obs_ecorr[29]),
        .R(reset));
  FDRE \g_eslot[7].eown_reg[6] 
       (.C(clk),
        .CE(\g_eslot[0].eown [7]),
        .D(\eslot_nxt[7] [0]),
        .Q(obs_growth[42]),
        .R(reset));
  FDRE \g_eslot[7].eown_reg[7] 
       (.C(clk),
        .CE(\g_eslot[0].eown [7]),
        .D(\eslot_nxt[7] [1]),
        .Q(obs_growth[43]),
        .R(reset));
  FDRE \g_eslot[7].eown_reg[8] 
       (.C(clk),
        .CE(\g_eslot[0].eown [7]),
        .D(\eslot_nxt[7] [2]),
        .Q(obs_ecorr[21]),
        .R(reset));
  FDRE \g_eslot[7].eown_reg[9] 
       (.C(clk),
        .CE(\g_eslot[0].eown [10]),
        .D(\eslot_nxt[7] [0]),
        .Q(obs_growth[26]),
        .R(reset));
  (* ST_DROP = "3'b001" *) 
  (* ST_GH = "3'b100" *) 
  (* ST_GW = "3'b010" *) 
  (* ST_MH = "3'b101" *) 
  (* ST_MW = "3'b011" *) 
  (* ZZZ_ANCHOR = "0" *) 
  snowflake_edge \g_eslot[8].ed_i 
       (.above_ecorr(\g_eslot[8].ab_state [2]),
        .above_growth({\g_eslot[8].ed_i_i_5_n_0 ,\g_eslot[8].ab_state [0]}),
        .clk(1'b0),
        .flip_u(\g_eslot[8].umir ),
        .flip_v(\g_eslot[8].vmir ),
        .reset(reset),
        .st_in(\g_eslot[8].my_state ),
        .st_out(\eslot_nxt[8] ),
        .stage({stage_reg,\dbg_stage[0]_i_1_n_0 }),
        .u_pulse(\g_eslot[8].upulse ),
        .v_pulse(\g_eslot[8].vpulse ));
  LUT6 #(
    .INIT(64'h0000A00002000000)) 
    \g_eslot[8].ed_i_i_1 
       (.I0(\g_eslot[8].ed_i_i_11_n_0 ),
        .I1(\g_eslot[8].ed_i_i_12_n_0 ),
        .I2(stage__0[2]),
        .I3(stage__0[0]),
        .I4(stage__0[1]),
        .I5(p_0_in87_in),
        .O(\g_eslot[8].upulse ));
  LUT6 #(
    .INIT(64'hB8B8B8B8FF33CC00)) 
    \g_eslot[8].ed_i_i_10 
       (.I0(\g_eslot[8].ed_i_i_25_n_0 ),
        .I1(\g_slot[0].pe_i_i_92_n_0 ),
        .I2(\g_eslot[8].ed_i_i_20_n_0 ),
        .I3(\g_eslot[8].ed_i_i_26_n_0 ),
        .I4(\g_eslot[8].ed_i_i_27_n_0 ),
        .I5(phase[0]),
        .O(\g_eslot[8].my_state [0]));
  (* SOFT_HLUTNM = "soft_lutpair221" *) 
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \g_eslot[8].ed_i_i_11 
       (.I0(phase[0]),
        .I1(\g_slot[0].omir_reg_n_0_[8] ),
        .I2(\phase_reg[1]_rep__3_n_0 ),
        .I3(phase[2]),
        .I4(\g_slot[3].pe_i_i_93_n_0 ),
        .O(\g_eslot[8].ed_i_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair182" *) 
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \g_eslot[8].ed_i_i_12 
       (.I0(phase[0]),
        .I1(\g_slot[0].omir_reg_n_0_[2] ),
        .I2(\phase_reg[1]_rep__2_n_0 ),
        .I3(phase[2]),
        .I4(\g_slot[3].pe_i_i_96_n_0 ),
        .O(\g_eslot[8].ed_i_i_12_n_0 ));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \g_eslot[8].ed_i_i_13 
       (.I0(phase[0]),
        .I1(\g_slot[0].omir_reg_n_0_[7] ),
        .I2(\phase_reg[1]_rep__3_n_0 ),
        .I3(phase[2]),
        .I4(\g_slot[4].pe_i_i_101_n_0 ),
        .O(p_0_in87_in));
  (* SOFT_HLUTNM = "soft_lutpair258" *) 
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \g_eslot[8].ed_i_i_14 
       (.I0(phase[0]),
        .I1(\g_slot[0].omir_reg_n_0_[7] ),
        .I2(\phase_reg[1]_rep__2_n_0 ),
        .I3(phase[2]),
        .I4(\g_slot[4].pe_i_i_71_n_0 ),
        .O(p_0_in85_in));
  LUT6 #(
    .INIT(64'h22222E22FFFFFFFF)) 
    \g_eslot[8].ed_i_i_15 
       (.I0(\g_slot[4].pe_i_i_93_n_0 ),
        .I1(phase[2]),
        .I2(\phase_reg[1]_rep__2_n_0 ),
        .I3(\g_slot[0].omir_reg_n_0_[2] ),
        .I4(phase[0]),
        .I5(\g_eslot[0].gh ),
        .O(\g_eslot[8].ed_i_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h010001FF00000000)) 
    \g_eslot[8].ed_i_i_16 
       (.I0(phase[0]),
        .I1(\g_slot[0].omir_reg_n_0_[3] ),
        .I2(\phase_reg[1]_rep__2_n_0 ),
        .I3(phase[2]),
        .I4(\g_slot[4].pe_i_i_105_n_0 ),
        .I5(\g_eslot[8].ed_i_i_28_n_0 ),
        .O(\g_eslot[8].umir0 ));
  LUT6 #(
    .INIT(64'h000000C3A5A500C3)) 
    \g_eslot[8].ed_i_i_17 
       (.I0(\g_eslot[5].ed_i_i_34_n_0 ),
        .I1(\g_slot[4].pe_i_i_74_n_0 ),
        .I2(\g_slot[1].pe_i_i_103_n_0 ),
        .I3(\g_slot[4].pe_i_i_73_n_0 ),
        .I4(phase[2]),
        .I5(\g_eslot[5].ed_i_i_35_n_0 ),
        .O(\g_eslot[8].ed_i_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_eslot[8].ed_i_i_18 
       (.I0(obs_growth[65]),
        .I1(obs_ecorr[24]),
        .I2(\g_slot[0].pe_i_i_92_n_0 ),
        .I3(obs_growth[48]),
        .I4(\g_slot[0].pe_i_i_93_n_0 ),
        .I5(obs_growth[33]),
        .O(\g_eslot[8].ed_i_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_eslot[8].ed_i_i_19 
       (.I0(obs_ecorr[32]),
        .I1(obs_growth[32]),
        .I2(\g_slot[0].pe_i_i_92_n_0 ),
        .I3(obs_growth[49]),
        .I4(\g_slot[0].pe_i_i_93_n_0 ),
        .I5(obs_ecorr[16]),
        .O(\g_eslot[8].ed_i_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hB800B800000000B8)) 
    \g_eslot[8].ed_i_i_2 
       (.I0(\g_eslot[5].ed_i_i_14_n_0 ),
        .I1(phase[2]),
        .I2(\g_slot[4].pe_i_i_70_n_0 ),
        .I3(p_0_in85_in),
        .I4(\g_eslot[8].ed_i_i_15_n_0 ),
        .I5(\g_eslot[5].ed_i_i_17_n_0 ),
        .O(\g_eslot[8].vpulse ));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \g_eslot[8].ed_i_i_20 
       (.I0(obs_growth[64]),
        .I1(obs_ecorr[16]),
        .I2(\g_slot[0].pe_i_i_93_n_0 ),
        .I3(obs_growth[49]),
        .I4(\g_slot[1].pe_i_i_65_n_0 ),
        .O(\g_eslot[8].ed_i_i_20_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair220" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \g_eslot[8].ed_i_i_21 
       (.I0(obs_ecorr[32]),
        .I1(\g_slot[0].pe_i_i_93_n_0 ),
        .I2(obs_growth[32]),
        .O(\g_eslot[8].ed_i_i_21_n_0 ));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \g_eslot[8].ed_i_i_22 
       (.I0(obs_growth[48]),
        .I1(obs_growth[33]),
        .I2(\g_slot[0].pe_i_i_92_n_0 ),
        .I3(obs_ecorr[24]),
        .I4(\g_slot[0].pe_i_i_93_n_0 ),
        .O(\g_eslot[8].ed_i_i_22_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair220" *) 
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \g_eslot[8].ed_i_i_23 
       (.I0(obs_ecorr[32]),
        .I1(\g_eslot[8].mst_mux [13]),
        .I2(\g_slot[0].pe_i_i_93_n_0 ),
        .I3(obs_growth[32]),
        .I4(\g_slot[1].pe_i_i_65_n_0 ),
        .O(\g_eslot[8].ed_i_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hB8BBB888B888B888)) 
    \g_eslot[8].ed_i_i_24 
       (.I0(\g_eslot[8].ed_i_i_27_n_0 ),
        .I1(\g_slot[0].pe_i_i_92_n_0 ),
        .I2(\g_eslot[8].ed_i_i_29_n_0 ),
        .I3(\g_slot[0].pe_i_i_93_n_0 ),
        .I4(obs_ecorr[24]),
        .I5(\g_slot[1].pe_i_i_65_n_0 ),
        .O(\g_eslot[8].ed_i_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_eslot[8].ed_i_i_25 
       (.I0(obs_growth[81]),
        .I1(obs_growth[32]),
        .I2(\g_slot[0].pe_i_i_93_n_0 ),
        .I3(obs_ecorr[32]),
        .I4(\g_slot[1].pe_i_i_65_n_0 ),
        .I5(\g_eslot[8].mst_mux [13]),
        .O(\g_eslot[8].ed_i_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_eslot[8].ed_i_i_26 
       (.I0(obs_growth[80]),
        .I1(obs_ecorr[24]),
        .I2(\g_slot[0].pe_i_i_93_n_0 ),
        .I3(obs_growth[65]),
        .I4(\g_slot[1].pe_i_i_65_n_0 ),
        .I5(\g_eslot[8].mst_mux [12]),
        .O(\g_eslot[8].ed_i_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_eslot[8].ed_i_i_27 
       (.I0(obs_ecorr[40]),
        .I1(obs_growth[33]),
        .I2(\g_slot[0].pe_i_i_93_n_0 ),
        .I3(obs_growth[48]),
        .I4(\g_slot[1].pe_i_i_65_n_0 ),
        .I5(\g_eslot[8].mst_mux [14]),
        .O(\g_eslot[8].ed_i_i_27_n_0 ));
  LUT6 #(
    .INIT(64'h000000C3A5A500C3)) 
    \g_eslot[8].ed_i_i_28 
       (.I0(\g_eslot[5].ed_i_i_35_n_0 ),
        .I1(\g_slot[4].pe_i_i_103_n_0 ),
        .I2(\g_slot[1].pe_i_i_103_n_0 ),
        .I3(\g_slot[4].pe_i_i_104_n_0 ),
        .I4(phase[2]),
        .I5(\g_eslot[5].ed_i_i_34_n_0 ),
        .O(\g_eslot[8].ed_i_i_28_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair275" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \g_eslot[8].ed_i_i_29 
       (.I0(obs_growth[65]),
        .I1(\g_slot[1].pe_i_i_65_n_0 ),
        .I2(\g_eslot[8].mst_mux [12]),
        .O(\g_eslot[8].ed_i_i_29_n_0 ));
  LUT6 #(
    .INIT(64'h0808080808A80808)) 
    \g_eslot[8].ed_i_i_3 
       (.I0(\g_eslot[8].umir0 ),
        .I1(\g_slot[4].pe_i_i_100_n_0 ),
        .I2(phase[2]),
        .I3(\phase_reg[1]_rep__0_n_0 ),
        .I4(\g_slot[0].omir_reg_n_0_[15] ),
        .I5(phase[0]),
        .O(\g_eslot[8].umir ));
  LUT6 #(
    .INIT(64'h8888A0000000A000)) 
    \g_eslot[8].ed_i_i_4 
       (.I0(\g_eslot[8].ed_i_i_17_n_0 ),
        .I1(\g_eslot[5].ed_i_i_20_n_0 ),
        .I2(\g_slot[4].pe_i_i_75_n_0 ),
        .I3(\g_slot[4].pe_i_i_97_n_0 ),
        .I4(phase[2]),
        .I5(\g_eslot[5].ed_i_i_21_n_0 ),
        .O(\g_eslot[8].vmir ));
  (* SOFT_HLUTNM = "soft_lutpair267" *) 
  LUT4 #(
    .INIT(16'hE200)) 
    \g_eslot[8].ed_i_i_5 
       (.I0(\g_eslot[8].ed_i_i_18_n_0 ),
        .I1(phase[0]),
        .I2(\g_eslot[8].ed_i_i_19_n_0 ),
        .I3(\g_slot[1].pe_i_i_65_n_0 ),
        .O(\g_eslot[8].ed_i_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hB8BBB88830003000)) 
    \g_eslot[8].ed_i_i_6 
       (.I0(\g_eslot[8].ed_i_i_18_n_0 ),
        .I1(phase[0]),
        .I2(\g_eslot[8].ed_i_i_20_n_0 ),
        .I3(\g_slot[0].pe_i_i_92_n_0 ),
        .I4(\g_eslot[8].ed_i_i_21_n_0 ),
        .I5(\g_slot[1].pe_i_i_65_n_0 ),
        .O(\g_eslot[8].ab_state [0]));
  (* SOFT_HLUTNM = "soft_lutpair267" *) 
  LUT4 #(
    .INIT(16'hB800)) 
    \g_eslot[8].ed_i_i_7 
       (.I0(\g_eslot[8].ed_i_i_22_n_0 ),
        .I1(phase[0]),
        .I2(\g_eslot[8].ed_i_i_19_n_0 ),
        .I3(\g_slot[1].pe_i_i_65_n_0 ),
        .O(\g_eslot[8].ab_state [2]));
  LUT5 #(
    .INIT(32'hB8B8FF00)) 
    \g_eslot[8].ed_i_i_8 
       (.I0(\g_eslot[8].ed_i_i_20_n_0 ),
        .I1(\g_slot[0].pe_i_i_92_n_0 ),
        .I2(\g_eslot[8].ed_i_i_23_n_0 ),
        .I3(\g_eslot[8].ed_i_i_24_n_0 ),
        .I4(phase[0]),
        .O(\g_eslot[8].my_state [2]));
  LUT5 #(
    .INIT(32'hFF00B8B8)) 
    \g_eslot[8].ed_i_i_9 
       (.I0(\g_eslot[8].ed_i_i_25_n_0 ),
        .I1(\g_slot[0].pe_i_i_92_n_0 ),
        .I2(\g_eslot[8].ed_i_i_20_n_0 ),
        .I3(\g_eslot[8].ed_i_i_24_n_0 ),
        .I4(phase[0]),
        .O(\g_eslot[8].my_state [1]));
  FDRE \g_eslot[8].eomir_reg[0] 
       (.C(clk),
        .CE(\g_eslot[0].eown [1]),
        .D(obs_growth[80]),
        .Q(\g_slot[4].g_dir[2].esrc [16]),
        .R(reset));
  FDRE \g_eslot[8].eomir_reg[10] 
       (.C(clk),
        .CE(\g_eslot[0].eown [10]),
        .D(obs_growth[33]),
        .Q(\g_eslot[8].eomir_reg_n_0_[10] ),
        .R(reset));
  FDRE \g_eslot[8].eomir_reg[1] 
       (.C(clk),
        .CE(\g_eslot[0].eown [1]),
        .D(obs_growth[81]),
        .Q(\g_slot[4].g_dir[2].esrc [17]),
        .R(reset));
  FDRE \g_eslot[8].eomir_reg[3] 
       (.C(clk),
        .CE(\g_eslot[0].eown [4]),
        .D(obs_growth[64]),
        .Q(\g_eslot[8].eomir_reg_n_0_[3] ),
        .R(reset));
  FDRE \g_eslot[8].eomir_reg[4] 
       (.C(clk),
        .CE(\g_eslot[0].eown [4]),
        .D(obs_growth[65]),
        .Q(\g_eslot[8].eomir_reg_n_0_[4] ),
        .R(reset));
  FDRE \g_eslot[8].eomir_reg[6] 
       (.C(clk),
        .CE(\g_eslot[0].eown [7]),
        .D(obs_growth[48]),
        .Q(\g_eslot[8].eomir_reg_n_0_[6] ),
        .R(reset));
  FDRE \g_eslot[8].eomir_reg[7] 
       (.C(clk),
        .CE(\g_eslot[0].eown [7]),
        .D(obs_growth[49]),
        .Q(\g_eslot[8].eomir_reg_n_0_[7] ),
        .R(reset));
  FDRE \g_eslot[8].eomir_reg[9] 
       (.C(clk),
        .CE(\g_eslot[0].eown [10]),
        .D(obs_growth[32]),
        .Q(\g_eslot[8].eomir_reg_n_0_[9] ),
        .R(reset));
  LUT5 #(
    .INIT(32'hFEEA0000)) 
    \g_eslot[8].eown[10]_i_1 
       (.I0(stage__0[1]),
        .I1(stage__0[2]),
        .I2(stage__0[0]),
        .I3(lat_bpass),
        .I4(\g_eslot[8].eown[10]_i_2_n_0 ),
        .O(\g_eslot[0].eown [10]));
  (* SOFT_HLUTNM = "soft_lutpair177" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \g_eslot[8].eown[10]_i_2 
       (.I0(phase[2]),
        .I1(phase[0]),
        .I2(\phase_reg[1]_rep_n_0 ),
        .O(\g_eslot[8].eown[10]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h0002)) 
    \g_eslot[8].eown[1]_i_1 
       (.I0(\g_eslot[8].eown[1]_i_2_n_0 ),
        .I1(phase[2]),
        .I2(phase[0]),
        .I3(\phase_reg[1]_rep_n_0 ),
        .O(\g_eslot[0].eown [1]));
  (* SOFT_HLUTNM = "soft_lutpair174" *) 
  LUT4 #(
    .INIT(16'hFFE8)) 
    \g_eslot[8].eown[1]_i_2 
       (.I0(lat_bpass),
        .I1(stage__0[0]),
        .I2(stage__0[2]),
        .I3(stage__0[1]),
        .O(\g_eslot[8].eown[1]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h0200)) 
    \g_eslot[8].eown[4]_i_1 
       (.I0(\g_eslot[8].eown[1]_i_2_n_0 ),
        .I1(\phase_reg[1]_rep_n_0 ),
        .I2(phase[2]),
        .I3(phase[0]),
        .O(\g_eslot[0].eown [4]));
  LUT4 #(
    .INIT(16'h0200)) 
    \g_eslot[8].eown[7]_i_1 
       (.I0(\g_eslot[8].eown[1]_i_2_n_0 ),
        .I1(phase[2]),
        .I2(phase[0]),
        .I3(\phase_reg[1]_rep_n_0 ),
        .O(\g_eslot[0].eown [7]));
  FDRE \g_eslot[8].eown_reg[0] 
       (.C(clk),
        .CE(\g_eslot[0].eown [1]),
        .D(\eslot_nxt[8] [0]),
        .Q(obs_growth[80]),
        .R(reset));
  FDRE \g_eslot[8].eown_reg[10] 
       (.C(clk),
        .CE(\g_eslot[0].eown [10]),
        .D(\eslot_nxt[8] [1]),
        .Q(obs_growth[33]),
        .R(reset));
  FDRE \g_eslot[8].eown_reg[11] 
       (.C(clk),
        .CE(\g_eslot[0].eown [10]),
        .D(\eslot_nxt[8] [2]),
        .Q(obs_ecorr[16]),
        .R(reset));
  FDRE \g_eslot[8].eown_reg[12] 
       (.C(clk),
        .CE(\g_eslot[0].eown [13]),
        .D(\eslot_nxt[8] [0]),
        .Q(\g_eslot[8].mst_mux [12]),
        .R(reset));
  FDRE \g_eslot[8].eown_reg[13] 
       (.C(clk),
        .CE(\g_eslot[0].eown [13]),
        .D(\eslot_nxt[8] [1]),
        .Q(\g_eslot[8].mst_mux [13]),
        .R(reset));
  FDRE \g_eslot[8].eown_reg[14] 
       (.C(clk),
        .CE(\g_eslot[0].eown [13]),
        .D(\eslot_nxt[8] [2]),
        .Q(\g_eslot[8].mst_mux [14]),
        .R(reset));
  FDRE \g_eslot[8].eown_reg[1] 
       (.C(clk),
        .CE(\g_eslot[0].eown [1]),
        .D(\eslot_nxt[8] [1]),
        .Q(obs_growth[81]),
        .R(reset));
  FDRE \g_eslot[8].eown_reg[2] 
       (.C(clk),
        .CE(\g_eslot[0].eown [1]),
        .D(\eslot_nxt[8] [2]),
        .Q(obs_ecorr[40]),
        .R(reset));
  FDRE \g_eslot[8].eown_reg[3] 
       (.C(clk),
        .CE(\g_eslot[0].eown [4]),
        .D(\eslot_nxt[8] [0]),
        .Q(obs_growth[64]),
        .R(reset));
  FDRE \g_eslot[8].eown_reg[4] 
       (.C(clk),
        .CE(\g_eslot[0].eown [4]),
        .D(\eslot_nxt[8] [1]),
        .Q(obs_growth[65]),
        .R(reset));
  FDRE \g_eslot[8].eown_reg[5] 
       (.C(clk),
        .CE(\g_eslot[0].eown [4]),
        .D(\eslot_nxt[8] [2]),
        .Q(obs_ecorr[32]),
        .R(reset));
  FDRE \g_eslot[8].eown_reg[6] 
       (.C(clk),
        .CE(\g_eslot[0].eown [7]),
        .D(\eslot_nxt[8] [0]),
        .Q(obs_growth[48]),
        .R(reset));
  FDRE \g_eslot[8].eown_reg[7] 
       (.C(clk),
        .CE(\g_eslot[0].eown [7]),
        .D(\eslot_nxt[8] [1]),
        .Q(obs_growth[49]),
        .R(reset));
  FDRE \g_eslot[8].eown_reg[8] 
       (.C(clk),
        .CE(\g_eslot[0].eown [7]),
        .D(\eslot_nxt[8] [2]),
        .Q(obs_ecorr[24]),
        .R(reset));
  FDRE \g_eslot[8].eown_reg[9] 
       (.C(clk),
        .CE(\g_eslot[0].eown [10]),
        .D(\eslot_nxt[8] [0]),
        .Q(obs_growth[32]),
        .R(reset));
  LUT5 #(
    .INIT(32'h00000002)) 
    \g_slot[0].bshA[0][0]_i_1 
       (.I0(\lat_live_cnt[31]_i_1_n_0 ),
        .I1(lat_bpass),
        .I2(phase[2]),
        .I3(phase[0]),
        .I4(\phase_reg[1]_rep_n_0 ),
        .O(bshA[0]));
  LUT5 #(
    .INIT(32'h00000200)) 
    \g_slot[0].bshA[0][1]_i_1 
       (.I0(\lat_live_cnt[31]_i_1_n_0 ),
        .I1(lat_bpass),
        .I2(phase[2]),
        .I3(phase[0]),
        .I4(\phase_reg[1]_rep_n_0 ),
        .O(bshA[1]));
  LUT5 #(
    .INIT(32'h00000200)) 
    \g_slot[0].bshA[0][2]_i_1 
       (.I0(\lat_live_cnt[31]_i_1_n_0 ),
        .I1(lat_bpass),
        .I2(phase[2]),
        .I3(\phase_reg[1]_rep_n_0 ),
        .I4(phase[0]),
        .O(bshA[2]));
  LUT5 #(
    .INIT(32'h02000000)) 
    \g_slot[0].bshA[0][3]_i_1 
       (.I0(\lat_live_cnt[31]_i_1_n_0 ),
        .I1(lat_bpass),
        .I2(phase[2]),
        .I3(phase[0]),
        .I4(\phase_reg[1]_rep_n_0 ),
        .O(bshA[3]));
  LUT5 #(
    .INIT(32'h00000020)) 
    \g_slot[0].bshA[0][4]_i_1 
       (.I0(\lat_live_cnt[31]_i_1_n_0 ),
        .I1(lat_bpass),
        .I2(phase[2]),
        .I3(phase[0]),
        .I4(\phase_reg[1]_rep_n_0 ),
        .O(bshA[4]));
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
  FDRE \g_slot[0].bshA_reg[0][3] 
       (.C(clk),
        .CE(bshA[3]),
        .D(\slot_nxt[0] [0]),
        .Q(\g_slot[0].bshA_reg[0] [3]),
        .R(reset));
  FDRE \g_slot[0].bshA_reg[0][4] 
       (.C(clk),
        .CE(bshA[4]),
        .D(\slot_nxt[0] [0]),
        .Q(\g_slot[0].bshA_reg[0] [4]),
        .R(reset));
  LUT5 #(
    .INIT(32'h00000008)) 
    \g_slot[0].bshB[0][0]_i_1 
       (.I0(\lat_live_cnt[31]_i_1_n_0 ),
        .I1(lat_bpass),
        .I2(phase[2]),
        .I3(phase[0]),
        .I4(\phase_reg[1]_rep_n_0 ),
        .O(bshB[0]));
  LUT5 #(
    .INIT(32'h00000800)) 
    \g_slot[0].bshB[0][1]_i_1 
       (.I0(\lat_live_cnt[31]_i_1_n_0 ),
        .I1(lat_bpass),
        .I2(phase[2]),
        .I3(phase[0]),
        .I4(\phase_reg[1]_rep_n_0 ),
        .O(bshB[1]));
  LUT5 #(
    .INIT(32'h00000800)) 
    \g_slot[0].bshB[0][2]_i_1 
       (.I0(\lat_live_cnt[31]_i_1_n_0 ),
        .I1(lat_bpass),
        .I2(phase[2]),
        .I3(\phase_reg[1]_rep_n_0 ),
        .I4(phase[0]),
        .O(bshB[2]));
  LUT5 #(
    .INIT(32'h08000000)) 
    \g_slot[0].bshB[0][3]_i_1 
       (.I0(\lat_live_cnt[31]_i_1_n_0 ),
        .I1(lat_bpass),
        .I2(phase[2]),
        .I3(phase[0]),
        .I4(\phase_reg[1]_rep_n_0 ),
        .O(bshB[3]));
  LUT5 #(
    .INIT(32'h00000080)) 
    \g_slot[0].bshB[0][4]_i_1 
       (.I0(\lat_live_cnt[31]_i_1_n_0 ),
        .I1(lat_bpass),
        .I2(phase[2]),
        .I3(phase[0]),
        .I4(\phase_reg[1]_rep_n_0 ),
        .O(bshB[4]));
  FDRE \g_slot[0].bshB_reg[0][0] 
       (.C(clk),
        .CE(bshB[0]),
        .D(\slot_nxt[0] [0]),
        .Q(\g_slot[0].bshB_reg[0] [0]),
        .R(reset));
  FDRE \g_slot[0].bshB_reg[0][1] 
       (.C(clk),
        .CE(bshB[1]),
        .D(\slot_nxt[0] [0]),
        .Q(\g_slot[0].bshB_reg[0] [1]),
        .R(reset));
  FDRE \g_slot[0].bshB_reg[0][2] 
       (.C(clk),
        .CE(bshB[2]),
        .D(\slot_nxt[0] [0]),
        .Q(\g_slot[0].bshB_reg[0] [2]),
        .R(reset));
  FDRE \g_slot[0].bshB_reg[0][3] 
       (.C(clk),
        .CE(bshB[3]),
        .D(\slot_nxt[0] [0]),
        .Q(\g_slot[0].bshB_reg[0] [3]),
        .R(reset));
  FDRE \g_slot[0].bshB_reg[0][4] 
       (.C(clk),
        .CE(bshB[4]),
        .D(\slot_nxt[0] [0]),
        .Q(\g_slot[0].bshB_reg[0] [4]),
        .R(reset));
  FDRE \g_slot[0].omir_reg[15] 
       (.C(clk),
        .CE(\g_slot[0].own [14]),
        .D(\g_slot[0].own_reg_n_0_[15] ),
        .Q(\g_slot[0].omir_reg_n_0_[15] ),
        .R(reset));
  FDRE \g_slot[0].omir_reg[24] 
       (.C(clk),
        .CE(\g_slot[0].own [30]),
        .D(obs_active[6]),
        .Q(data1),
        .R(reset));
  FDRE \g_slot[0].omir_reg[2] 
       (.C(clk),
        .CE(\g_slot[0].own [14]),
        .D(obs_grown[8]),
        .Q(\g_slot[0].omir_reg_n_0_[2] ),
        .R(reset));
  FDRE \g_slot[0].omir_reg[3] 
       (.C(clk),
        .CE(\g_slot[0].own [14]),
        .D(obs_ptr[24]),
        .Q(\g_slot[0].omir_reg_n_0_[3] ),
        .R(reset));
  FDRE \g_slot[0].omir_reg[40] 
       (.C(clk),
        .CE(\g_slot[0].own [46]),
        .D(obs_active[4]),
        .Q(data2),
        .R(reset));
  FDRE \g_slot[0].omir_reg[4] 
       (.C(clk),
        .CE(\g_slot[0].own [14]),
        .D(obs_ptr[25]),
        .Q(\g_slot[0].omir_reg_n_0_[4] ),
        .R(reset));
  FDRE \g_slot[0].omir_reg[56] 
       (.C(clk),
        .CE(\g_slot[0].own [62]),
        .D(obs_active[2]),
        .Q(data3),
        .R(reset));
  FDRE \g_slot[0].omir_reg[5] 
       (.C(clk),
        .CE(\g_slot[0].own [14]),
        .D(obs_ptr[26]),
        .Q(\g_slot[0].omir_reg_n_0_[5] ),
        .R(reset));
  FDRE \g_slot[0].omir_reg[72] 
       (.C(clk),
        .CE(\g_slot[0].own [78]),
        .D(obs_active[0]),
        .Q(data4),
        .R(reset));
  FDSE \g_slot[0].omir_reg[7] 
       (.C(clk),
        .CE(\g_slot[0].own [14]),
        .D(obs_whole[8]),
        .Q(\g_slot[0].omir_reg_n_0_[7] ),
        .S(reset));
  FDRE \g_slot[0].omir_reg[8] 
       (.C(clk),
        .CE(\g_slot[0].own [14]),
        .D(obs_active[8]),
        .Q(\g_slot[0].omir_reg_n_0_[8] ),
        .R(reset));
  FDRE \g_slot[0].own_reg[0] 
       (.C(clk),
        .CE(\g_slot[0].own [14]),
        .D(\slot_nxt[0] [0]),
        .Q(obs_busy[8]),
        .R(reset));
  FDRE \g_slot[0].own_reg[10] 
       (.C(clk),
        .CE(\g_slot[0].own [14]),
        .D(\slot_nxt[0] [10]),
        .Q(obs_cid[49]),
        .R(reset));
  FDRE \g_slot[0].own_reg[11] 
       (.C(clk),
        .CE(\g_slot[0].own [14]),
        .D(\slot_nxt[0] [11]),
        .Q(obs_cid[50]),
        .R(reset));
  FDSE \g_slot[0].own_reg[12] 
       (.C(clk),
        .CE(\g_slot[0].own [14]),
        .D(\slot_nxt[0] [12]),
        .Q(obs_cid[51]),
        .S(reset));
  FDRE \g_slot[0].own_reg[13] 
       (.C(clk),
        .CE(\g_slot[0].own [14]),
        .D(\slot_nxt[0] [13]),
        .Q(obs_cid[52]),
        .R(reset));
  FDRE \g_slot[0].own_reg[14] 
       (.C(clk),
        .CE(\g_slot[0].own [14]),
        .D(\slot_nxt[0] [14]),
        .Q(obs_cid[53]),
        .R(reset));
  FDRE \g_slot[0].own_reg[15] 
       (.C(clk),
        .CE(\g_slot[0].own [14]),
        .D(\slot_nxt[0] [15]),
        .Q(\g_slot[0].own_reg_n_0_[15] ),
        .R(reset));
  FDRE \g_slot[0].own_reg[16] 
       (.C(clk),
        .CE(\g_slot[0].own [30]),
        .D(\slot_nxt[0] [0]),
        .Q(obs_busy[6]),
        .R(reset));
  FDRE \g_slot[0].own_reg[17] 
       (.C(clk),
        .CE(\g_slot[0].own [30]),
        .D(\slot_nxt[0] [1]),
        .Q(obs_unrooted[6]),
        .R(reset));
  FDRE \g_slot[0].own_reg[18] 
       (.C(clk),
        .CE(\g_slot[0].own [30]),
        .D(\slot_nxt[0] [2]),
        .Q(obs_grown[6]),
        .R(reset));
  FDRE \g_slot[0].own_reg[19] 
       (.C(clk),
        .CE(\g_slot[0].own [30]),
        .D(\slot_nxt[0] [3]),
        .Q(obs_ptr[18]),
        .R(reset));
  FDRE \g_slot[0].own_reg[1] 
       (.C(clk),
        .CE(\g_slot[0].own [14]),
        .D(\slot_nxt[0] [1]),
        .Q(obs_unrooted[8]),
        .R(reset));
  FDRE \g_slot[0].own_reg[20] 
       (.C(clk),
        .CE(\g_slot[0].own [30]),
        .D(\slot_nxt[0] [4]),
        .Q(obs_ptr[19]),
        .R(reset));
  FDRE \g_slot[0].own_reg[21] 
       (.C(clk),
        .CE(\g_slot[0].own [30]),
        .D(\slot_nxt[0] [5]),
        .Q(obs_ptr[20]),
        .R(reset));
  FDRE \g_slot[0].own_reg[22] 
       (.C(clk),
        .CE(\g_slot[0].own [30]),
        .D(\slot_nxt[0] [6]),
        .Q(obs_defect[6]),
        .R(reset));
  FDSE \g_slot[0].own_reg[23] 
       (.C(clk),
        .CE(\g_slot[0].own [30]),
        .D(\slot_nxt[0] [7]),
        .Q(obs_whole[6]),
        .S(reset));
  FDRE \g_slot[0].own_reg[24] 
       (.C(clk),
        .CE(\g_slot[0].own [30]),
        .D(\slot_nxt[0] [8]),
        .Q(obs_active[6]),
        .R(reset));
  FDRE \g_slot[0].own_reg[25] 
       (.C(clk),
        .CE(\g_slot[0].own [30]),
        .D(\slot_nxt[0] [9]),
        .Q(obs_cid[36]),
        .R(reset));
  FDSE \g_slot[0].own_reg[26] 
       (.C(clk),
        .CE(\g_slot[0].own [30]),
        .D(\slot_nxt[0] [10]),
        .Q(obs_cid[37]),
        .S(reset));
  FDSE \g_slot[0].own_reg[27] 
       (.C(clk),
        .CE(\g_slot[0].own [30]),
        .D(\slot_nxt[0] [11]),
        .Q(obs_cid[38]),
        .S(reset));
  FDRE \g_slot[0].own_reg[28] 
       (.C(clk),
        .CE(\g_slot[0].own [30]),
        .D(\slot_nxt[0] [12]),
        .Q(obs_cid[39]),
        .R(reset));
  FDRE \g_slot[0].own_reg[29] 
       (.C(clk),
        .CE(\g_slot[0].own [30]),
        .D(\slot_nxt[0] [13]),
        .Q(obs_cid[40]),
        .R(reset));
  FDRE \g_slot[0].own_reg[2] 
       (.C(clk),
        .CE(\g_slot[0].own [14]),
        .D(\slot_nxt[0] [2]),
        .Q(obs_grown[8]),
        .R(reset));
  FDRE \g_slot[0].own_reg[30] 
       (.C(clk),
        .CE(\g_slot[0].own [30]),
        .D(\slot_nxt[0] [14]),
        .Q(obs_cid[41]),
        .R(reset));
  FDRE \g_slot[0].own_reg[31] 
       (.C(clk),
        .CE(\g_slot[0].own [30]),
        .D(\slot_nxt[0] [15]),
        .Q(\g_slot[0].own_reg_n_0_[31] ),
        .R(reset));
  FDRE \g_slot[0].own_reg[32] 
       (.C(clk),
        .CE(\g_slot[0].own [46]),
        .D(\slot_nxt[0] [0]),
        .Q(obs_busy[4]),
        .R(reset));
  FDRE \g_slot[0].own_reg[33] 
       (.C(clk),
        .CE(\g_slot[0].own [46]),
        .D(\slot_nxt[0] [1]),
        .Q(obs_unrooted[4]),
        .R(reset));
  FDRE \g_slot[0].own_reg[34] 
       (.C(clk),
        .CE(\g_slot[0].own [46]),
        .D(\slot_nxt[0] [2]),
        .Q(obs_grown[4]),
        .R(reset));
  FDRE \g_slot[0].own_reg[35] 
       (.C(clk),
        .CE(\g_slot[0].own [46]),
        .D(\slot_nxt[0] [3]),
        .Q(obs_ptr[12]),
        .R(reset));
  FDRE \g_slot[0].own_reg[36] 
       (.C(clk),
        .CE(\g_slot[0].own [46]),
        .D(\slot_nxt[0] [4]),
        .Q(obs_ptr[13]),
        .R(reset));
  FDRE \g_slot[0].own_reg[37] 
       (.C(clk),
        .CE(\g_slot[0].own [46]),
        .D(\slot_nxt[0] [5]),
        .Q(obs_ptr[14]),
        .R(reset));
  FDRE \g_slot[0].own_reg[38] 
       (.C(clk),
        .CE(\g_slot[0].own [46]),
        .D(\slot_nxt[0] [6]),
        .Q(obs_defect[4]),
        .R(reset));
  FDSE \g_slot[0].own_reg[39] 
       (.C(clk),
        .CE(\g_slot[0].own [46]),
        .D(\slot_nxt[0] [7]),
        .Q(obs_whole[4]),
        .S(reset));
  FDRE \g_slot[0].own_reg[3] 
       (.C(clk),
        .CE(\g_slot[0].own [14]),
        .D(\slot_nxt[0] [3]),
        .Q(obs_ptr[24]),
        .R(reset));
  FDRE \g_slot[0].own_reg[40] 
       (.C(clk),
        .CE(\g_slot[0].own [46]),
        .D(\slot_nxt[0] [8]),
        .Q(obs_active[4]),
        .R(reset));
  FDRE \g_slot[0].own_reg[41] 
       (.C(clk),
        .CE(\g_slot[0].own [46]),
        .D(\slot_nxt[0] [9]),
        .Q(obs_cid[24]),
        .R(reset));
  FDRE \g_slot[0].own_reg[42] 
       (.C(clk),
        .CE(\g_slot[0].own [46]),
        .D(\slot_nxt[0] [10]),
        .Q(obs_cid[25]),
        .R(reset));
  FDSE \g_slot[0].own_reg[43] 
       (.C(clk),
        .CE(\g_slot[0].own [46]),
        .D(\slot_nxt[0] [11]),
        .Q(obs_cid[26]),
        .S(reset));
  FDRE \g_slot[0].own_reg[44] 
       (.C(clk),
        .CE(\g_slot[0].own [46]),
        .D(\slot_nxt[0] [12]),
        .Q(obs_cid[27]),
        .R(reset));
  FDRE \g_slot[0].own_reg[45] 
       (.C(clk),
        .CE(\g_slot[0].own [46]),
        .D(\slot_nxt[0] [13]),
        .Q(obs_cid[28]),
        .R(reset));
  FDRE \g_slot[0].own_reg[46] 
       (.C(clk),
        .CE(\g_slot[0].own [46]),
        .D(\slot_nxt[0] [14]),
        .Q(obs_cid[29]),
        .R(reset));
  FDRE \g_slot[0].own_reg[47] 
       (.C(clk),
        .CE(\g_slot[0].own [46]),
        .D(\slot_nxt[0] [15]),
        .Q(\g_slot[0].own_reg_n_0_[47] ),
        .R(reset));
  FDRE \g_slot[0].own_reg[48] 
       (.C(clk),
        .CE(\g_slot[0].own [62]),
        .D(\slot_nxt[0] [0]),
        .Q(obs_busy[2]),
        .R(reset));
  FDRE \g_slot[0].own_reg[49] 
       (.C(clk),
        .CE(\g_slot[0].own [62]),
        .D(\slot_nxt[0] [1]),
        .Q(obs_unrooted[2]),
        .R(reset));
  FDRE \g_slot[0].own_reg[4] 
       (.C(clk),
        .CE(\g_slot[0].own [14]),
        .D(\slot_nxt[0] [4]),
        .Q(obs_ptr[25]),
        .R(reset));
  FDRE \g_slot[0].own_reg[50] 
       (.C(clk),
        .CE(\g_slot[0].own [62]),
        .D(\slot_nxt[0] [2]),
        .Q(obs_grown[2]),
        .R(reset));
  FDRE \g_slot[0].own_reg[51] 
       (.C(clk),
        .CE(\g_slot[0].own [62]),
        .D(\slot_nxt[0] [3]),
        .Q(obs_ptr[6]),
        .R(reset));
  FDRE \g_slot[0].own_reg[52] 
       (.C(clk),
        .CE(\g_slot[0].own [62]),
        .D(\slot_nxt[0] [4]),
        .Q(obs_ptr[7]),
        .R(reset));
  FDRE \g_slot[0].own_reg[53] 
       (.C(clk),
        .CE(\g_slot[0].own [62]),
        .D(\slot_nxt[0] [5]),
        .Q(obs_ptr[8]),
        .R(reset));
  FDRE \g_slot[0].own_reg[54] 
       (.C(clk),
        .CE(\g_slot[0].own [62]),
        .D(\slot_nxt[0] [6]),
        .Q(obs_defect[2]),
        .R(reset));
  FDSE \g_slot[0].own_reg[55] 
       (.C(clk),
        .CE(\g_slot[0].own [62]),
        .D(\slot_nxt[0] [7]),
        .Q(obs_whole[2]),
        .S(reset));
  FDRE \g_slot[0].own_reg[56] 
       (.C(clk),
        .CE(\g_slot[0].own [62]),
        .D(\slot_nxt[0] [8]),
        .Q(obs_active[2]),
        .R(reset));
  FDRE \g_slot[0].own_reg[57] 
       (.C(clk),
        .CE(\g_slot[0].own [62]),
        .D(\slot_nxt[0] [9]),
        .Q(obs_cid[12]),
        .R(reset));
  FDSE \g_slot[0].own_reg[58] 
       (.C(clk),
        .CE(\g_slot[0].own [62]),
        .D(\slot_nxt[0] [10]),
        .Q(obs_cid[13]),
        .S(reset));
  FDRE \g_slot[0].own_reg[59] 
       (.C(clk),
        .CE(\g_slot[0].own [62]),
        .D(\slot_nxt[0] [11]),
        .Q(obs_cid[14]),
        .R(reset));
  FDRE \g_slot[0].own_reg[5] 
       (.C(clk),
        .CE(\g_slot[0].own [14]),
        .D(\slot_nxt[0] [5]),
        .Q(obs_ptr[26]),
        .R(reset));
  FDRE \g_slot[0].own_reg[60] 
       (.C(clk),
        .CE(\g_slot[0].own [62]),
        .D(\slot_nxt[0] [12]),
        .Q(obs_cid[15]),
        .R(reset));
  FDRE \g_slot[0].own_reg[61] 
       (.C(clk),
        .CE(\g_slot[0].own [62]),
        .D(\slot_nxt[0] [13]),
        .Q(obs_cid[16]),
        .R(reset));
  FDRE \g_slot[0].own_reg[62] 
       (.C(clk),
        .CE(\g_slot[0].own [62]),
        .D(\slot_nxt[0] [14]),
        .Q(obs_cid[17]),
        .R(reset));
  FDRE \g_slot[0].own_reg[63] 
       (.C(clk),
        .CE(\g_slot[0].own [62]),
        .D(\slot_nxt[0] [15]),
        .Q(\g_slot[0].own_reg_n_0_[63] ),
        .R(reset));
  FDRE \g_slot[0].own_reg[64] 
       (.C(clk),
        .CE(\g_slot[0].own [78]),
        .D(\slot_nxt[0] [0]),
        .Q(obs_busy[0]),
        .R(reset));
  FDRE \g_slot[0].own_reg[65] 
       (.C(clk),
        .CE(\g_slot[0].own [78]),
        .D(\slot_nxt[0] [1]),
        .Q(obs_unrooted[0]),
        .R(reset));
  FDRE \g_slot[0].own_reg[66] 
       (.C(clk),
        .CE(\g_slot[0].own [78]),
        .D(\slot_nxt[0] [2]),
        .Q(obs_grown[0]),
        .R(reset));
  FDRE \g_slot[0].own_reg[67] 
       (.C(clk),
        .CE(\g_slot[0].own [78]),
        .D(\slot_nxt[0] [3]),
        .Q(obs_ptr[0]),
        .R(reset));
  FDRE \g_slot[0].own_reg[68] 
       (.C(clk),
        .CE(\g_slot[0].own [78]),
        .D(\slot_nxt[0] [4]),
        .Q(obs_ptr[1]),
        .R(reset));
  FDRE \g_slot[0].own_reg[69] 
       (.C(clk),
        .CE(\g_slot[0].own [78]),
        .D(\slot_nxt[0] [5]),
        .Q(obs_ptr[2]),
        .R(reset));
  FDRE \g_slot[0].own_reg[6] 
       (.C(clk),
        .CE(\g_slot[0].own [14]),
        .D(\slot_nxt[0] [6]),
        .Q(obs_defect[8]),
        .R(reset));
  FDRE \g_slot[0].own_reg[70] 
       (.C(clk),
        .CE(\g_slot[0].own [78]),
        .D(\slot_nxt[0] [6]),
        .Q(obs_defect[0]),
        .R(reset));
  FDSE \g_slot[0].own_reg[71] 
       (.C(clk),
        .CE(\g_slot[0].own [78]),
        .D(\slot_nxt[0] [7]),
        .Q(obs_whole[0]),
        .S(reset));
  FDRE \g_slot[0].own_reg[72] 
       (.C(clk),
        .CE(\g_slot[0].own [78]),
        .D(\slot_nxt[0] [8]),
        .Q(obs_active[0]),
        .R(reset));
  FDRE \g_slot[0].own_reg[73] 
       (.C(clk),
        .CE(\g_slot[0].own [78]),
        .D(\slot_nxt[0] [9]),
        .Q(obs_cid[0]),
        .R(reset));
  FDRE \g_slot[0].own_reg[74] 
       (.C(clk),
        .CE(\g_slot[0].own [78]),
        .D(\slot_nxt[0] [10]),
        .Q(obs_cid[1]),
        .R(reset));
  FDRE \g_slot[0].own_reg[75] 
       (.C(clk),
        .CE(\g_slot[0].own [78]),
        .D(\slot_nxt[0] [11]),
        .Q(obs_cid[2]),
        .R(reset));
  FDRE \g_slot[0].own_reg[76] 
       (.C(clk),
        .CE(\g_slot[0].own [78]),
        .D(\slot_nxt[0] [12]),
        .Q(obs_cid[3]),
        .R(reset));
  FDRE \g_slot[0].own_reg[77] 
       (.C(clk),
        .CE(\g_slot[0].own [78]),
        .D(\slot_nxt[0] [13]),
        .Q(obs_cid[4]),
        .R(reset));
  FDRE \g_slot[0].own_reg[78] 
       (.C(clk),
        .CE(\g_slot[0].own [78]),
        .D(\slot_nxt[0] [14]),
        .Q(obs_cid[5]),
        .R(reset));
  FDRE \g_slot[0].own_reg[79] 
       (.C(clk),
        .CE(\g_slot[0].own [78]),
        .D(\slot_nxt[0] [15]),
        .Q(\g_slot[0].own_reg_n_0_[79] ),
        .R(reset));
  FDSE \g_slot[0].own_reg[7] 
       (.C(clk),
        .CE(\g_slot[0].own [14]),
        .D(\slot_nxt[0] [7]),
        .Q(obs_whole[8]),
        .S(reset));
  FDRE \g_slot[0].own_reg[8] 
       (.C(clk),
        .CE(\g_slot[0].own [14]),
        .D(\slot_nxt[0] [8]),
        .Q(obs_active[8]),
        .R(reset));
  FDRE \g_slot[0].own_reg[9] 
       (.C(clk),
        .CE(\g_slot[0].own [14]),
        .D(\slot_nxt[0] [9]),
        .Q(obs_cid[48]),
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
  (* OFF_PB = "15" *) 
  (* OFF_PTR = "3" *) 
  (* OFF_UNR = "1" *) 
  (* OFF_WHL = "7" *) 
  (* ONE_ONE = "0" *) 
  (* STW = "16" *) 
  (* ST_DROP = "3'b001" *) 
  (* ST_GH = "3'b100" *) 
  (* ST_GW = "3'b010" *) 
  (* ST_IDLE = "3'b000" *) 
  (* ST_MH = "3'b101" *) 
  (* ST_MW = "3'b011" *) 
  (* SYN_IDX = "-1" *) 
  (* ZZZ_ANCHOR = "0" *) 
  snowflake_pe__1 \g_slot[0].pe_i 
       (.ab_active(\g_slot[0].pe_i_i_8_n_0 ),
        .ab_cid({\g_slot[0].pe_i_i_2_n_0 ,\g_slot[0].pe_i_i_3_n_0 ,\g_slot[0].pe_i_i_4_n_0 ,\g_slot[0].pe_i_i_5_n_0 ,\g_slot[0].pe_i_i_6_n_0 ,\g_slot[0].pe_i_i_7_n_0 }),
        .ab_defect(\g_slot[0].pe_i_i_10_n_0 ),
        .ab_ptr({\g_slot[0].pe_i_i_11_n_0 ,\g_slot[0].pe_i_i_12_n_0 ,\g_slot[0].pe_i_i_13_n_0 }),
        .ab_whole(\g_slot[0].pe_i_i_9_n_0 ),
        .clk(1'b0),
        .e_grown({1'b0,1'b0,\g_slot[0].pe_i_i_14_n_0 ,1'b0}),
        .m_pass({m_pass_w,\g_slot[0].pe_i_i_26_n_0 }),
        .nb_active({1'b0,\g_slot[0].pe_i_i_21_n_0 ,p_14_in,1'b0}),
        .nb_cid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,\g_slot[0].pe_i_i_15_n_0 ,\g_slot[0].pe_i_i_16_n_0 ,\g_slot[0].pe_i_i_17_n_0 ,\g_slot[0].pe_i_i_18_n_0 ,\g_slot[0].pe_i_i_19_n_0 ,\g_slot[0].pe_i_i_20_n_0 ,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .nb_grown({1'b0,1'b0,\g_slot[0].pe_i_i_23_n_0 ,1'b0}),
        .nb_push({1'b0,1'b0,\g_slot[0].nb_push0 ,1'b0}),
        .nb_valid({1'b0,1'b0,1'b1,1'b0}),
        .o_busy_c(\NLW_g_slot[0].pe_i_o_busy_c_UNCONNECTED ),
        .o_pulse(\NLW_g_slot[0].pe_i_o_pulse_UNCONNECTED ),
        .o_push(\NLW_g_slot[0].pe_i_o_push_UNCONNECTED [3:0]),
        .p_has_above(\g_slot[0].iw [6]),
        .p_id(\g_slot[0].iw [5:0]),
        .p_is_bnd(\g_slot[0].iw [7]),
        .p_is_bot(\g_slot[0].iw [9]),
        .p_is_syn(\g_slot[0].iw [10]),
        .p_is_top(\g_slot[0].iw [8]),
        .reset(1'b0),
        .st_in({\g_slot[0].pe_i_i_27_n_0 ,\g_slot[0].pe_i_i_28_n_0 ,\g_slot[0].pe_i_i_29_n_0 ,\g_slot[0].pe_i_i_30_n_0 ,\g_slot[0].pe_i_i_31_n_0 ,\g_slot[0].pe_i_i_32_n_0 ,\g_slot[0].pe_i_i_33_n_0 ,p_13_in,p_0_in107_in,\g_slot[0].pe_i_i_36_n_0 ,p_0_in10_in,\g_slot[0].pe_i_i_40_n_0 ,\g_slot[0].pe_i_i_41_n_0 ,1'b0}),
        .st_out(\slot_nxt[0] ),
        .stage({stage_reg,\dbg_stage[0]_i_1_n_0 }),
        .syn_bit(syn_bit0),
        .zzz_never_used(1'b0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_slot[0].pe_i_i_1 
       (.I0(\syn_buf_reg_n_0_[3] ),
        .I1(\syn_buf_reg_n_0_[2] ),
        .I2(\g_slot[0].pe_i_i_53_n_0 ),
        .I3(\syn_buf_reg_n_0_[1] ),
        .I4(\g_slot[0].pe_i_i_54_n_0 ),
        .I5(\syn_buf_reg_n_0_[0] ),
        .O(syn_bit0));
  (* SOFT_HLUTNM = "soft_lutpair290" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \g_slot[0].pe_i_i_10 
       (.I0(\g_slot[0].pe_i_i_63_n_0 ),
        .I1(phase[2]),
        .O(\g_slot[0].pe_i_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair290" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \g_slot[0].pe_i_i_11 
       (.I0(\g_slot[0].pe_i_i_64_n_0 ),
        .I1(phase[2]),
        .O(\g_slot[0].pe_i_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair289" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \g_slot[0].pe_i_i_12 
       (.I0(\g_slot[0].pe_i_i_65_n_0 ),
        .I1(phase[2]),
        .O(\g_slot[0].pe_i_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair289" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \g_slot[0].pe_i_i_13 
       (.I0(\g_slot[0].pe_i_i_66_n_0 ),
        .I1(phase[2]),
        .O(\g_slot[0].pe_i_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h0A0A0A0A0A3A0A0A)) 
    \g_slot[0].pe_i_i_14 
       (.I0(\g_slot[0].pe_i_i_67_n_0 ),
        .I1(\phase_reg[1]_rep_n_0 ),
        .I2(phase[2]),
        .I3(obs_growth[0]),
        .I4(obs_growth[1]),
        .I5(phase[0]),
        .O(\g_slot[0].pe_i_i_14_n_0 ));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \g_slot[0].pe_i_i_15 
       (.I0(phase[0]),
        .I1(obs_cid[65]),
        .I2(\phase_reg[1]_rep__1_n_0 ),
        .I3(phase[2]),
        .I4(\g_slot[0].pe_i_i_68_n_0 ),
        .O(\g_slot[0].pe_i_i_15_n_0 ));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \g_slot[0].pe_i_i_16 
       (.I0(phase[0]),
        .I1(obs_cid[64]),
        .I2(\phase_reg[1]_rep__1_n_0 ),
        .I3(phase[2]),
        .I4(\g_slot[0].pe_i_i_69_n_0 ),
        .O(\g_slot[0].pe_i_i_16_n_0 ));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \g_slot[0].pe_i_i_17 
       (.I0(phase[0]),
        .I1(obs_cid[63]),
        .I2(\phase_reg[1]_rep__1_n_0 ),
        .I3(phase[2]),
        .I4(\g_slot[0].pe_i_i_70_n_0 ),
        .O(\g_slot[0].pe_i_i_17_n_0 ));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \g_slot[0].pe_i_i_18 
       (.I0(phase[0]),
        .I1(obs_cid[62]),
        .I2(\phase_reg[1]_rep__1_n_0 ),
        .I3(phase[2]),
        .I4(\g_slot[0].pe_i_i_71_n_0 ),
        .O(\g_slot[0].pe_i_i_18_n_0 ));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \g_slot[0].pe_i_i_19 
       (.I0(phase[0]),
        .I1(obs_cid[61]),
        .I2(\phase_reg[1]_rep__1_n_0 ),
        .I3(phase[2]),
        .I4(\g_slot[0].pe_i_i_72_n_0 ),
        .O(\g_slot[0].pe_i_i_19_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair294" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \g_slot[0].pe_i_i_2 
       (.I0(\g_slot[0].pe_i_i_55_n_0 ),
        .I1(phase[2]),
        .O(\g_slot[0].pe_i_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \g_slot[0].pe_i_i_20 
       (.I0(phase[0]),
        .I1(obs_cid[60]),
        .I2(\phase_reg[1]_rep__1_n_0 ),
        .I3(phase[2]),
        .I4(\g_slot[0].pe_i_i_73_n_0 ),
        .O(\g_slot[0].pe_i_i_20_n_0 ));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \g_slot[0].pe_i_i_21 
       (.I0(phase[0]),
        .I1(data4),
        .I2(\phase_reg[1]_rep__3_n_0 ),
        .I3(phase[2]),
        .I4(\g_slot[0].pe_i_i_74_n_0 ),
        .O(\g_slot[0].pe_i_i_21_n_0 ));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \g_slot[0].pe_i_i_22 
       (.I0(phase[0]),
        .I1(obs_active[10]),
        .I2(\phase_reg[1]_rep__3_n_0 ),
        .I3(phase[2]),
        .I4(\g_slot[0].pe_i_i_75_n_0 ),
        .O(p_14_in));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \g_slot[0].pe_i_i_23 
       (.I0(phase[0]),
        .I1(obs_grown[10]),
        .I2(\phase_reg[1]_rep__2_n_0 ),
        .I3(phase[2]),
        .I4(\g_slot[0].pe_i_i_76_n_0 ),
        .O(\g_slot[0].pe_i_i_23_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair248" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    \g_slot[0].pe_i_i_24 
       (.I0(p_0_in8_in[1]),
        .I1(p_0_in8_in[0]),
        .I2(p_0_in8_in[2]),
        .I3(p_0_in36_in),
        .O(\g_slot[0].nb_push0 ));
  (* SOFT_HLUTNM = "soft_lutpair264" *) 
  LUT4 #(
    .INIT(16'h1400)) 
    \g_slot[0].pe_i_i_25 
       (.I0(stage__0[1]),
        .I1(stage__0[2]),
        .I2(stage__0[0]),
        .I3(lat_bpass),
        .O(m_pass_w));
  (* SOFT_HLUTNM = "soft_lutpair264" *) 
  LUT4 #(
    .INIT(16'h0014)) 
    \g_slot[0].pe_i_i_26 
       (.I0(stage__0[1]),
        .I1(stage__0[2]),
        .I2(stage__0[0]),
        .I3(lat_bpass),
        .O(\g_slot[0].pe_i_i_26_n_0 ));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \g_slot[0].pe_i_i_27 
       (.I0(phase[0]),
        .I1(\g_slot[0].own_reg_n_0_[79] ),
        .I2(\phase_reg[1]_rep__0_n_0 ),
        .I3(phase[2]),
        .I4(\g_slot[0].pe_i_i_77_n_0 ),
        .O(\g_slot[0].pe_i_i_27_n_0 ));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \g_slot[0].pe_i_i_28 
       (.I0(phase[0]),
        .I1(obs_cid[5]),
        .I2(\phase_reg[1]_rep__1_n_0 ),
        .I3(phase[2]),
        .I4(\g_slot[0].pe_i_i_78_n_0 ),
        .O(\g_slot[0].pe_i_i_28_n_0 ));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \g_slot[0].pe_i_i_29 
       (.I0(phase[0]),
        .I1(obs_cid[4]),
        .I2(\phase_reg[1]_rep__1_n_0 ),
        .I3(phase[2]),
        .I4(\g_slot[0].pe_i_i_79_n_0 ),
        .O(\g_slot[0].pe_i_i_29_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair294" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \g_slot[0].pe_i_i_3 
       (.I0(\g_slot[0].pe_i_i_56_n_0 ),
        .I1(phase[2]),
        .O(\g_slot[0].pe_i_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \g_slot[0].pe_i_i_30 
       (.I0(phase[0]),
        .I1(obs_cid[3]),
        .I2(\phase_reg[1]_rep__1_n_0 ),
        .I3(phase[2]),
        .I4(\g_slot[0].pe_i_i_80_n_0 ),
        .O(\g_slot[0].pe_i_i_30_n_0 ));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \g_slot[0].pe_i_i_31 
       (.I0(phase[0]),
        .I1(obs_cid[2]),
        .I2(\phase_reg[1]_rep__1_n_0 ),
        .I3(phase[2]),
        .I4(\g_slot[0].pe_i_i_81_n_0 ),
        .O(\g_slot[0].pe_i_i_31_n_0 ));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \g_slot[0].pe_i_i_32 
       (.I0(phase[0]),
        .I1(obs_cid[1]),
        .I2(\phase_reg[1]_rep__1_n_0 ),
        .I3(phase[2]),
        .I4(\g_slot[0].pe_i_i_82_n_0 ),
        .O(\g_slot[0].pe_i_i_32_n_0 ));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \g_slot[0].pe_i_i_33 
       (.I0(phase[0]),
        .I1(obs_cid[0]),
        .I2(\phase_reg[1]_rep__1_n_0 ),
        .I3(phase[2]),
        .I4(\g_slot[0].pe_i_i_83_n_0 ),
        .O(\g_slot[0].pe_i_i_33_n_0 ));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \g_slot[0].pe_i_i_34 
       (.I0(phase[0]),
        .I1(obs_active[0]),
        .I2(\phase_reg[1]_rep__1_n_0 ),
        .I3(phase[2]),
        .I4(\g_slot[0].pe_i_i_84_n_0 ),
        .O(p_13_in));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \g_slot[0].pe_i_i_35 
       (.I0(phase[0]),
        .I1(obs_whole[0]),
        .I2(\phase_reg[1]_rep__1_n_0 ),
        .I3(phase[2]),
        .I4(\g_slot[0].pe_i_i_85_n_0 ),
        .O(p_0_in107_in));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \g_slot[0].pe_i_i_36 
       (.I0(phase[0]),
        .I1(obs_defect[0]),
        .I2(\phase_reg[1]_rep__0_n_0 ),
        .I3(phase[2]),
        .I4(\g_slot[0].pe_i_i_86_n_0 ),
        .O(\g_slot[0].pe_i_i_36_n_0 ));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \g_slot[0].pe_i_i_37 
       (.I0(phase[0]),
        .I1(obs_ptr[2]),
        .I2(\phase_reg[1]_rep__0_n_0 ),
        .I3(phase[2]),
        .I4(\g_slot[0].pe_i_i_87_n_0 ),
        .O(p_0_in10_in[2]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \g_slot[0].pe_i_i_38 
       (.I0(phase[0]),
        .I1(obs_ptr[1]),
        .I2(\phase_reg[1]_rep__0_n_0 ),
        .I3(phase[2]),
        .I4(\g_slot[0].pe_i_i_88_n_0 ),
        .O(p_0_in10_in[1]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \g_slot[0].pe_i_i_39 
       (.I0(phase[0]),
        .I1(obs_ptr[0]),
        .I2(\phase_reg[1]_rep__0_n_0 ),
        .I3(phase[2]),
        .I4(\g_slot[0].pe_i_i_89_n_0 ),
        .O(p_0_in10_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair293" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \g_slot[0].pe_i_i_4 
       (.I0(\g_slot[0].pe_i_i_57_n_0 ),
        .I1(phase[2]),
        .O(\g_slot[0].pe_i_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \g_slot[0].pe_i_i_40 
       (.I0(phase[0]),
        .I1(obs_grown[0]),
        .I2(\phase_reg[1]_rep__1_n_0 ),
        .I3(phase[2]),
        .I4(\g_slot[0].pe_i_i_90_n_0 ),
        .O(\g_slot[0].pe_i_i_40_n_0 ));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \g_slot[0].pe_i_i_41 
       (.I0(phase[0]),
        .I1(obs_unrooted[0]),
        .I2(\phase_reg[1]_rep__0_n_0 ),
        .I3(phase[2]),
        .I4(\g_slot[0].pe_i_i_91_n_0 ),
        .O(\g_slot[0].pe_i_i_41_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair194" *) 
  LUT5 #(
    .INIT(32'h0D28C842)) 
    \g_slot[0].pe_i_i_42 
       (.I0(\g_slot[0].pe_i_i_92_n_0 ),
        .I1(\phase_reg[1]_rep_n_0 ),
        .I2(phase[0]),
        .I3(phase[2]),
        .I4(\g_slot[0].pe_i_i_93_n_0 ),
        .O(\g_slot[0].iw [5]));
  (* SOFT_HLUTNM = "soft_lutpair210" *) 
  LUT5 #(
    .INIT(32'hCE009021)) 
    \g_slot[0].pe_i_i_43 
       (.I0(\g_slot[0].pe_i_i_92_n_0 ),
        .I1(phase[2]),
        .I2(phase[0]),
        .I3(\phase_reg[1]_rep_n_0 ),
        .I4(\g_slot[0].pe_i_i_93_n_0 ),
        .O(\g_slot[0].iw [4]));
  (* SOFT_HLUTNM = "soft_lutpair201" *) 
  LUT5 #(
    .INIT(32'h81810925)) 
    \g_slot[0].pe_i_i_44 
       (.I0(\phase_reg[1]_rep_n_0 ),
        .I1(phase[0]),
        .I2(phase[2]),
        .I3(\g_slot[0].pe_i_i_92_n_0 ),
        .I4(\g_slot[0].pe_i_i_93_n_0 ),
        .O(\g_slot[0].iw [3]));
  (* SOFT_HLUTNM = "soft_lutpair209" *) 
  LUT5 #(
    .INIT(32'h00714136)) 
    \g_slot[0].pe_i_i_45 
       (.I0(\g_slot[0].pe_i_i_93_n_0 ),
        .I1(\phase_reg[1]_rep_n_0 ),
        .I2(phase[0]),
        .I3(phase[2]),
        .I4(\g_slot[0].pe_i_i_92_n_0 ),
        .O(\g_slot[0].iw [2]));
  (* SOFT_HLUTNM = "soft_lutpair200" *) 
  LUT5 #(
    .INIT(32'h28266430)) 
    \g_slot[0].pe_i_i_46 
       (.I0(\phase_reg[1]_rep_n_0 ),
        .I1(phase[0]),
        .I2(phase[2]),
        .I3(\g_slot[0].pe_i_i_93_n_0 ),
        .I4(\g_slot[0].pe_i_i_92_n_0 ),
        .O(\g_slot[0].iw [1]));
  (* SOFT_HLUTNM = "soft_lutpair208" *) 
  LUT5 #(
    .INIT(32'hC0E06C68)) 
    \g_slot[0].pe_i_i_47 
       (.I0(\g_slot[0].pe_i_i_93_n_0 ),
        .I1(\phase_reg[1]_rep_n_0 ),
        .I2(phase[2]),
        .I3(\g_slot[0].pe_i_i_92_n_0 ),
        .I4(phase[0]),
        .O(\g_slot[0].iw [0]));
  (* SOFT_HLUTNM = "soft_lutpair210" *) 
  LUT5 #(
    .INIT(32'h50348C78)) 
    \g_slot[0].pe_i_i_48 
       (.I0(\g_slot[0].pe_i_i_92_n_0 ),
        .I1(\g_slot[0].pe_i_i_93_n_0 ),
        .I2(\phase_reg[1]_rep_n_0 ),
        .I3(phase[0]),
        .I4(phase[2]),
        .O(\g_slot[0].iw [6]));
  (* SOFT_HLUTNM = "soft_lutpair205" *) 
  LUT5 #(
    .INIT(32'h0851062C)) 
    \g_slot[0].pe_i_i_49 
       (.I0(\g_slot[0].pe_i_i_92_n_0 ),
        .I1(\g_slot[0].pe_i_i_93_n_0 ),
        .I2(phase[2]),
        .I3(phase[0]),
        .I4(\phase_reg[1]_rep_n_0 ),
        .O(\g_slot[0].iw [7]));
  (* SOFT_HLUTNM = "soft_lutpair293" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \g_slot[0].pe_i_i_5 
       (.I0(\g_slot[0].pe_i_i_58_n_0 ),
        .I1(phase[2]),
        .O(\g_slot[0].pe_i_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair207" *) 
  LUT5 #(
    .INIT(32'h804A0206)) 
    \g_slot[0].pe_i_i_50 
       (.I0(\g_slot[0].pe_i_i_92_n_0 ),
        .I1(\g_slot[0].pe_i_i_93_n_0 ),
        .I2(\phase_reg[1]_rep_n_0 ),
        .I3(phase[2]),
        .I4(phase[0]),
        .O(\g_slot[0].iw [8]));
  (* SOFT_HLUTNM = "soft_lutpair201" *) 
  LUT5 #(
    .INIT(32'hA1880104)) 
    \g_slot[0].pe_i_i_51 
       (.I0(\phase_reg[1]_rep_n_0 ),
        .I1(phase[0]),
        .I2(phase[2]),
        .I3(\g_slot[0].pe_i_i_92_n_0 ),
        .I4(\g_slot[0].pe_i_i_93_n_0 ),
        .O(\g_slot[0].iw [9]));
  (* SOFT_HLUTNM = "soft_lutpair207" *) 
  LUT5 #(
    .INIT(32'h4C0C4001)) 
    \g_slot[0].pe_i_i_52 
       (.I0(\g_slot[0].pe_i_i_92_n_0 ),
        .I1(\phase_reg[1]_rep_n_0 ),
        .I2(phase[0]),
        .I3(phase[2]),
        .I4(\g_slot[0].pe_i_i_93_n_0 ),
        .O(\g_slot[0].iw [10]));
  LUT3 #(
    .INIT(8'hFE)) 
    \g_slot[0].pe_i_i_53 
       (.I0(\g_slot[1].pe_i_i_65_n_0 ),
        .I1(\g_slot[0].pe_i_i_92_n_0 ),
        .I2(\g_slot[0].pe_i_i_93_n_0 ),
        .O(\g_slot[0].pe_i_i_53_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair266" *) 
  LUT4 #(
    .INIT(16'hFFEF)) 
    \g_slot[0].pe_i_i_54 
       (.I0(\g_slot[0].pe_i_i_93_n_0 ),
        .I1(\g_slot[0].pe_i_i_92_n_0 ),
        .I2(phase[0]),
        .I3(\g_slot[1].pe_i_i_65_n_0 ),
        .O(\g_slot[0].pe_i_i_54_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_slot[0].pe_i_i_55 
       (.I0(obs_cid[5]),
        .I1(obs_cid[17]),
        .I2(\phase_reg[1]_rep__1_n_0 ),
        .I3(obs_cid[29]),
        .I4(phase[0]),
        .I5(obs_cid[41]),
        .O(\g_slot[0].pe_i_i_55_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_slot[0].pe_i_i_56 
       (.I0(obs_cid[4]),
        .I1(obs_cid[16]),
        .I2(\phase_reg[1]_rep__1_n_0 ),
        .I3(obs_cid[28]),
        .I4(phase[0]),
        .I5(obs_cid[40]),
        .O(\g_slot[0].pe_i_i_56_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_slot[0].pe_i_i_57 
       (.I0(obs_cid[3]),
        .I1(obs_cid[15]),
        .I2(\phase_reg[1]_rep__1_n_0 ),
        .I3(obs_cid[27]),
        .I4(phase[0]),
        .I5(obs_cid[39]),
        .O(\g_slot[0].pe_i_i_57_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_slot[0].pe_i_i_58 
       (.I0(obs_cid[2]),
        .I1(obs_cid[14]),
        .I2(\phase_reg[1]_rep__1_n_0 ),
        .I3(obs_cid[26]),
        .I4(phase[0]),
        .I5(obs_cid[38]),
        .O(\g_slot[0].pe_i_i_58_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_slot[0].pe_i_i_59 
       (.I0(obs_cid[1]),
        .I1(obs_cid[13]),
        .I2(\phase_reg[1]_rep__1_n_0 ),
        .I3(obs_cid[25]),
        .I4(phase[0]),
        .I5(obs_cid[37]),
        .O(\g_slot[0].pe_i_i_59_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair292" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \g_slot[0].pe_i_i_6 
       (.I0(\g_slot[0].pe_i_i_59_n_0 ),
        .I1(phase[2]),
        .O(\g_slot[0].pe_i_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_slot[0].pe_i_i_60 
       (.I0(obs_cid[0]),
        .I1(obs_cid[12]),
        .I2(\phase_reg[1]_rep__1_n_0 ),
        .I3(obs_cid[24]),
        .I4(phase[0]),
        .I5(obs_cid[36]),
        .O(\g_slot[0].pe_i_i_60_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_slot[0].pe_i_i_61 
       (.I0(obs_active[0]),
        .I1(obs_active[2]),
        .I2(\phase_reg[1]_rep__1_n_0 ),
        .I3(obs_active[4]),
        .I4(phase[0]),
        .I5(obs_active[6]),
        .O(\g_slot[0].pe_i_i_61_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_slot[0].pe_i_i_62 
       (.I0(obs_whole[0]),
        .I1(obs_whole[2]),
        .I2(\phase_reg[1]_rep__1_n_0 ),
        .I3(obs_whole[4]),
        .I4(phase[0]),
        .I5(obs_whole[6]),
        .O(\g_slot[0].pe_i_i_62_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_slot[0].pe_i_i_63 
       (.I0(obs_defect[0]),
        .I1(obs_defect[2]),
        .I2(\phase_reg[1]_rep__0_n_0 ),
        .I3(obs_defect[4]),
        .I4(phase[0]),
        .I5(obs_defect[6]),
        .O(\g_slot[0].pe_i_i_63_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_slot[0].pe_i_i_64 
       (.I0(obs_ptr[2]),
        .I1(obs_ptr[8]),
        .I2(\phase_reg[1]_rep__0_n_0 ),
        .I3(obs_ptr[14]),
        .I4(phase[0]),
        .I5(obs_ptr[20]),
        .O(\g_slot[0].pe_i_i_64_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_slot[0].pe_i_i_65 
       (.I0(obs_ptr[1]),
        .I1(obs_ptr[7]),
        .I2(\phase_reg[1]_rep__0_n_0 ),
        .I3(obs_ptr[13]),
        .I4(phase[0]),
        .I5(obs_ptr[19]),
        .O(\g_slot[0].pe_i_i_65_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_slot[0].pe_i_i_66 
       (.I0(obs_ptr[0]),
        .I1(obs_ptr[6]),
        .I2(\phase_reg[1]_rep__0_n_0 ),
        .I3(obs_ptr[12]),
        .I4(phase[0]),
        .I5(obs_ptr[18]),
        .O(\g_slot[0].pe_i_i_66_n_0 ));
  MUXF7 \g_slot[0].pe_i_i_67 
       (.I0(\g_slot[0].pe_i_i_94_n_0 ),
        .I1(\g_slot[0].pe_i_i_95_n_0 ),
        .O(\g_slot[0].pe_i_i_67_n_0 ),
        .S(\phase_reg[1]_rep_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_slot[0].pe_i_i_68 
       (.I0(obs_cid[89]),
        .I1(obs_cid[113]),
        .I2(\phase_reg[1]_rep__1_n_0 ),
        .I3(obs_cid[137]),
        .I4(phase[0]),
        .I5(obs_cid[161]),
        .O(\g_slot[0].pe_i_i_68_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_slot[0].pe_i_i_69 
       (.I0(obs_cid[88]),
        .I1(obs_cid[112]),
        .I2(\phase_reg[1]_rep__1_n_0 ),
        .I3(obs_cid[136]),
        .I4(phase[0]),
        .I5(obs_cid[160]),
        .O(\g_slot[0].pe_i_i_69_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair292" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \g_slot[0].pe_i_i_7 
       (.I0(\g_slot[0].pe_i_i_60_n_0 ),
        .I1(phase[2]),
        .O(\g_slot[0].pe_i_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_slot[0].pe_i_i_70 
       (.I0(obs_cid[87]),
        .I1(obs_cid[111]),
        .I2(\phase_reg[1]_rep__1_n_0 ),
        .I3(obs_cid[135]),
        .I4(phase[0]),
        .I5(obs_cid[159]),
        .O(\g_slot[0].pe_i_i_70_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_slot[0].pe_i_i_71 
       (.I0(obs_cid[86]),
        .I1(obs_cid[110]),
        .I2(\phase_reg[1]_rep__1_n_0 ),
        .I3(obs_cid[134]),
        .I4(phase[0]),
        .I5(obs_cid[158]),
        .O(\g_slot[0].pe_i_i_71_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_slot[0].pe_i_i_72 
       (.I0(obs_cid[85]),
        .I1(obs_cid[109]),
        .I2(\phase_reg[1]_rep__1_n_0 ),
        .I3(obs_cid[133]),
        .I4(phase[0]),
        .I5(obs_cid[157]),
        .O(\g_slot[0].pe_i_i_72_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_slot[0].pe_i_i_73 
       (.I0(obs_cid[84]),
        .I1(obs_cid[108]),
        .I2(\phase_reg[1]_rep__1_n_0 ),
        .I3(obs_cid[132]),
        .I4(phase[0]),
        .I5(obs_cid[156]),
        .O(\g_slot[0].pe_i_i_73_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_slot[0].pe_i_i_74 
       (.I0(data3),
        .I1(data2),
        .I2(\phase_reg[1]_rep__3_n_0 ),
        .I3(data1),
        .I4(phase[0]),
        .I5(obs_active[8]),
        .O(\g_slot[0].pe_i_i_74_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_slot[0].pe_i_i_75 
       (.I0(obs_active[14]),
        .I1(obs_active[18]),
        .I2(\phase_reg[1]_rep__3_n_0 ),
        .I3(obs_active[22]),
        .I4(phase[0]),
        .I5(obs_active[26]),
        .O(\g_slot[0].pe_i_i_75_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_slot[0].pe_i_i_76 
       (.I0(obs_grown[14]),
        .I1(obs_grown[18]),
        .I2(\phase_reg[1]_rep__2_n_0 ),
        .I3(obs_grown[22]),
        .I4(phase[0]),
        .I5(obs_grown[26]),
        .O(\g_slot[0].pe_i_i_76_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_slot[0].pe_i_i_77 
       (.I0(\g_slot[0].own_reg_n_0_[63] ),
        .I1(\g_slot[0].own_reg_n_0_[47] ),
        .I2(\phase_reg[1]_rep__0_n_0 ),
        .I3(\g_slot[0].own_reg_n_0_[31] ),
        .I4(phase[0]),
        .I5(\g_slot[0].own_reg_n_0_[15] ),
        .O(\g_slot[0].pe_i_i_77_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_slot[0].pe_i_i_78 
       (.I0(obs_cid[17]),
        .I1(obs_cid[29]),
        .I2(\phase_reg[1]_rep__1_n_0 ),
        .I3(obs_cid[41]),
        .I4(phase[0]),
        .I5(obs_cid[53]),
        .O(\g_slot[0].pe_i_i_78_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_slot[0].pe_i_i_79 
       (.I0(obs_cid[16]),
        .I1(obs_cid[28]),
        .I2(\phase_reg[1]_rep__1_n_0 ),
        .I3(obs_cid[40]),
        .I4(phase[0]),
        .I5(obs_cid[52]),
        .O(\g_slot[0].pe_i_i_79_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair291" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \g_slot[0].pe_i_i_8 
       (.I0(\g_slot[0].pe_i_i_61_n_0 ),
        .I1(phase[2]),
        .O(\g_slot[0].pe_i_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_slot[0].pe_i_i_80 
       (.I0(obs_cid[15]),
        .I1(obs_cid[27]),
        .I2(\phase_reg[1]_rep__1_n_0 ),
        .I3(obs_cid[39]),
        .I4(phase[0]),
        .I5(obs_cid[51]),
        .O(\g_slot[0].pe_i_i_80_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_slot[0].pe_i_i_81 
       (.I0(obs_cid[14]),
        .I1(obs_cid[26]),
        .I2(\phase_reg[1]_rep__1_n_0 ),
        .I3(obs_cid[38]),
        .I4(phase[0]),
        .I5(obs_cid[50]),
        .O(\g_slot[0].pe_i_i_81_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_slot[0].pe_i_i_82 
       (.I0(obs_cid[13]),
        .I1(obs_cid[25]),
        .I2(\phase_reg[1]_rep__1_n_0 ),
        .I3(obs_cid[37]),
        .I4(phase[0]),
        .I5(obs_cid[49]),
        .O(\g_slot[0].pe_i_i_82_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_slot[0].pe_i_i_83 
       (.I0(obs_cid[12]),
        .I1(obs_cid[24]),
        .I2(\phase_reg[1]_rep__1_n_0 ),
        .I3(obs_cid[36]),
        .I4(phase[0]),
        .I5(obs_cid[48]),
        .O(\g_slot[0].pe_i_i_83_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_slot[0].pe_i_i_84 
       (.I0(obs_active[2]),
        .I1(obs_active[4]),
        .I2(\phase_reg[1]_rep__1_n_0 ),
        .I3(obs_active[6]),
        .I4(phase[0]),
        .I5(obs_active[8]),
        .O(\g_slot[0].pe_i_i_84_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_slot[0].pe_i_i_85 
       (.I0(obs_whole[2]),
        .I1(obs_whole[4]),
        .I2(\phase_reg[1]_rep__1_n_0 ),
        .I3(obs_whole[6]),
        .I4(phase[0]),
        .I5(obs_whole[8]),
        .O(\g_slot[0].pe_i_i_85_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_slot[0].pe_i_i_86 
       (.I0(obs_defect[2]),
        .I1(obs_defect[4]),
        .I2(\phase_reg[1]_rep__0_n_0 ),
        .I3(obs_defect[6]),
        .I4(phase[0]),
        .I5(obs_defect[8]),
        .O(\g_slot[0].pe_i_i_86_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_slot[0].pe_i_i_87 
       (.I0(obs_ptr[8]),
        .I1(obs_ptr[14]),
        .I2(\phase_reg[1]_rep__0_n_0 ),
        .I3(obs_ptr[20]),
        .I4(phase[0]),
        .I5(obs_ptr[26]),
        .O(\g_slot[0].pe_i_i_87_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_slot[0].pe_i_i_88 
       (.I0(obs_ptr[7]),
        .I1(obs_ptr[13]),
        .I2(\phase_reg[1]_rep__0_n_0 ),
        .I3(obs_ptr[19]),
        .I4(phase[0]),
        .I5(obs_ptr[25]),
        .O(\g_slot[0].pe_i_i_88_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_slot[0].pe_i_i_89 
       (.I0(obs_ptr[6]),
        .I1(obs_ptr[12]),
        .I2(\phase_reg[1]_rep__0_n_0 ),
        .I3(obs_ptr[18]),
        .I4(phase[0]),
        .I5(obs_ptr[24]),
        .O(\g_slot[0].pe_i_i_89_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair291" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \g_slot[0].pe_i_i_9 
       (.I0(\g_slot[0].pe_i_i_62_n_0 ),
        .I1(phase[2]),
        .O(\g_slot[0].pe_i_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_slot[0].pe_i_i_90 
       (.I0(obs_grown[2]),
        .I1(obs_grown[4]),
        .I2(\phase_reg[1]_rep__1_n_0 ),
        .I3(obs_grown[6]),
        .I4(phase[0]),
        .I5(obs_grown[8]),
        .O(\g_slot[0].pe_i_i_90_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_slot[0].pe_i_i_91 
       (.I0(obs_unrooted[2]),
        .I1(obs_unrooted[4]),
        .I2(\phase_reg[1]_rep__0_n_0 ),
        .I3(obs_unrooted[6]),
        .I4(phase[0]),
        .I5(obs_unrooted[8]),
        .O(\g_slot[0].pe_i_i_91_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \g_slot[0].pe_i_i_92 
       (.I0(phase[0]),
        .I1(\phase_reg[1]_rep_n_0 ),
        .O(\g_slot[0].pe_i_i_92_n_0 ));
  LUT3 #(
    .INIT(8'h39)) 
    \g_slot[0].pe_i_i_93 
       (.I0(\phase_reg[1]_rep_n_0 ),
        .I1(phase[2]),
        .I2(phase[0]),
        .O(\g_slot[0].pe_i_i_93_n_0 ));
  LUT5 #(
    .INIT(32'h20202F20)) 
    \g_slot[0].pe_i_i_94 
       (.I0(obs_growth[7]),
        .I1(obs_growth[6]),
        .I2(phase[0]),
        .I3(obs_growth[9]),
        .I4(obs_growth[8]),
        .O(\g_slot[0].pe_i_i_94_n_0 ));
  LUT5 #(
    .INIT(32'h20202F20)) 
    \g_slot[0].pe_i_i_95 
       (.I0(obs_growth[3]),
        .I1(obs_growth[2]),
        .I2(phase[0]),
        .I3(obs_growth[5]),
        .I4(obs_growth[4]),
        .O(\g_slot[0].pe_i_i_95_n_0 ));
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
  FDRE \g_slot[1].bshA_reg[1][3] 
       (.C(clk),
        .CE(bshA[3]),
        .D(\slot_nxt[1] [0]),
        .Q(\g_slot[1].bshA_reg[1] [3]),
        .R(reset));
  FDRE \g_slot[1].bshA_reg[1][4] 
       (.C(clk),
        .CE(bshA[4]),
        .D(\slot_nxt[1] [0]),
        .Q(\g_slot[1].bshA_reg[1] [4]),
        .R(reset));
  FDRE \g_slot[1].bshB_reg[1][0] 
       (.C(clk),
        .CE(bshB[0]),
        .D(\slot_nxt[1] [0]),
        .Q(\g_slot[1].bshB_reg[1] [0]),
        .R(reset));
  FDRE \g_slot[1].bshB_reg[1][1] 
       (.C(clk),
        .CE(bshB[1]),
        .D(\slot_nxt[1] [0]),
        .Q(\g_slot[1].bshB_reg[1] [1]),
        .R(reset));
  FDRE \g_slot[1].bshB_reg[1][2] 
       (.C(clk),
        .CE(bshB[2]),
        .D(\slot_nxt[1] [0]),
        .Q(\g_slot[1].bshB_reg[1] [2]),
        .R(reset));
  FDRE \g_slot[1].bshB_reg[1][3] 
       (.C(clk),
        .CE(bshB[3]),
        .D(\slot_nxt[1] [0]),
        .Q(\g_slot[1].bshB_reg[1] [3]),
        .R(reset));
  FDRE \g_slot[1].bshB_reg[1][4] 
       (.C(clk),
        .CE(bshB[4]),
        .D(\slot_nxt[1] [0]),
        .Q(\g_slot[1].bshB_reg[1] [4]),
        .R(reset));
  FDSE \g_slot[1].omir_reg[10] 
       (.C(clk),
        .CE(\g_slot[0].own [14]),
        .D(obs_cid[157]),
        .Q(\g_slot[1].omir_reg_n_0_[10] ),
        .S(reset));
  FDRE \g_slot[1].omir_reg[11] 
       (.C(clk),
        .CE(\g_slot[0].own [14]),
        .D(obs_cid[158]),
        .Q(\g_slot[1].omir_reg_n_0_[11] ),
        .R(reset));
  FDSE \g_slot[1].omir_reg[12] 
       (.C(clk),
        .CE(\g_slot[0].own [14]),
        .D(obs_cid[159]),
        .Q(\g_slot[1].omir_reg_n_0_[12] ),
        .S(reset));
  FDSE \g_slot[1].omir_reg[13] 
       (.C(clk),
        .CE(\g_slot[0].own [14]),
        .D(obs_cid[160]),
        .Q(\g_slot[1].omir_reg_n_0_[13] ),
        .S(reset));
  FDRE \g_slot[1].omir_reg[14] 
       (.C(clk),
        .CE(\g_slot[0].own [14]),
        .D(obs_cid[161]),
        .Q(\g_slot[1].omir_reg_n_0_[14] ),
        .R(reset));
  FDRE \g_slot[1].omir_reg[15] 
       (.C(clk),
        .CE(\g_slot[0].own [14]),
        .D(\g_slot[1].g_dir[2].esrc [15]),
        .Q(\g_slot[1].omir_reg_n_0_[15] ),
        .R(reset));
  FDRE \g_slot[1].omir_reg[18] 
       (.C(clk),
        .CE(\g_slot[0].own [30]),
        .D(obs_grown[22]),
        .Q(\g_slot[1].omir_reg_n_0_[18] ),
        .R(reset));
  FDRE \g_slot[1].omir_reg[19] 
       (.C(clk),
        .CE(\g_slot[0].own [30]),
        .D(obs_ptr[66]),
        .Q(\g_slot[1].omir_reg_n_0_[19] ),
        .R(reset));
  FDRE \g_slot[1].omir_reg[20] 
       (.C(clk),
        .CE(\g_slot[0].own [30]),
        .D(obs_ptr[67]),
        .Q(\g_slot[1].omir_reg_n_0_[20] ),
        .R(reset));
  FDRE \g_slot[1].omir_reg[21] 
       (.C(clk),
        .CE(\g_slot[0].own [30]),
        .D(obs_ptr[68]),
        .Q(\g_slot[1].omir_reg_n_0_[21] ),
        .R(reset));
  FDRE \g_slot[1].omir_reg[24] 
       (.C(clk),
        .CE(\g_slot[0].own [30]),
        .D(obs_active[22]),
        .Q(\g_slot[1].omir_reg_n_0_[24] ),
        .R(reset));
  FDRE \g_slot[1].omir_reg[25] 
       (.C(clk),
        .CE(\g_slot[0].own [30]),
        .D(obs_cid[132]),
        .Q(\g_slot[1].omir_reg_n_0_[25] ),
        .R(reset));
  FDSE \g_slot[1].omir_reg[26] 
       (.C(clk),
        .CE(\g_slot[0].own [30]),
        .D(obs_cid[133]),
        .Q(\g_slot[1].omir_reg_n_0_[26] ),
        .S(reset));
  FDSE \g_slot[1].omir_reg[27] 
       (.C(clk),
        .CE(\g_slot[0].own [30]),
        .D(obs_cid[134]),
        .Q(\g_slot[1].omir_reg_n_0_[27] ),
        .S(reset));
  FDRE \g_slot[1].omir_reg[28] 
       (.C(clk),
        .CE(\g_slot[0].own [30]),
        .D(obs_cid[135]),
        .Q(\g_slot[1].omir_reg_n_0_[28] ),
        .R(reset));
  FDSE \g_slot[1].omir_reg[29] 
       (.C(clk),
        .CE(\g_slot[0].own [30]),
        .D(obs_cid[136]),
        .Q(\g_slot[1].omir_reg_n_0_[29] ),
        .S(reset));
  FDRE \g_slot[1].omir_reg[2] 
       (.C(clk),
        .CE(\g_slot[0].own [14]),
        .D(obs_grown[26]),
        .Q(\g_slot[1].omir_reg_n_0_[2] ),
        .R(reset));
  FDRE \g_slot[1].omir_reg[30] 
       (.C(clk),
        .CE(\g_slot[0].own [30]),
        .D(obs_cid[137]),
        .Q(\g_slot[1].omir_reg_n_0_[30] ),
        .R(reset));
  FDRE \g_slot[1].omir_reg[31] 
       (.C(clk),
        .CE(\g_slot[0].own [30]),
        .D(data0),
        .Q(\g_slot[1].omir_reg_n_0_[31] ),
        .R(reset));
  FDRE \g_slot[1].omir_reg[34] 
       (.C(clk),
        .CE(\g_slot[0].own [46]),
        .D(obs_grown[18]),
        .Q(\g_slot[1].omir_reg_n_0_[34] ),
        .R(reset));
  FDRE \g_slot[1].omir_reg[35] 
       (.C(clk),
        .CE(\g_slot[0].own [46]),
        .D(obs_ptr[54]),
        .Q(\g_slot[1].omir_reg_n_0_[35] ),
        .R(reset));
  FDRE \g_slot[1].omir_reg[36] 
       (.C(clk),
        .CE(\g_slot[0].own [46]),
        .D(obs_ptr[55]),
        .Q(\g_slot[1].omir_reg_n_0_[36] ),
        .R(reset));
  FDRE \g_slot[1].omir_reg[37] 
       (.C(clk),
        .CE(\g_slot[0].own [46]),
        .D(obs_ptr[56]),
        .Q(\g_slot[1].omir_reg_n_0_[37] ),
        .R(reset));
  FDRE \g_slot[1].omir_reg[3] 
       (.C(clk),
        .CE(\g_slot[0].own [14]),
        .D(obs_ptr[78]),
        .Q(\g_slot[1].omir_reg_n_0_[3] ),
        .R(reset));
  FDRE \g_slot[1].omir_reg[40] 
       (.C(clk),
        .CE(\g_slot[0].own [46]),
        .D(obs_active[18]),
        .Q(\g_slot[1].omir_reg_n_0_[40] ),
        .R(reset));
  FDRE \g_slot[1].omir_reg[41] 
       (.C(clk),
        .CE(\g_slot[0].own [46]),
        .D(obs_cid[108]),
        .Q(\g_slot[1].omir_reg_n_0_[41] ),
        .R(reset));
  FDSE \g_slot[1].omir_reg[42] 
       (.C(clk),
        .CE(\g_slot[0].own [46]),
        .D(obs_cid[109]),
        .Q(\g_slot[1].omir_reg_n_0_[42] ),
        .S(reset));
  FDRE \g_slot[1].omir_reg[43] 
       (.C(clk),
        .CE(\g_slot[0].own [46]),
        .D(obs_cid[110]),
        .Q(\g_slot[1].omir_reg_n_0_[43] ),
        .R(reset));
  FDRE \g_slot[1].omir_reg[44] 
       (.C(clk),
        .CE(\g_slot[0].own [46]),
        .D(obs_cid[111]),
        .Q(\g_slot[1].omir_reg_n_0_[44] ),
        .R(reset));
  FDSE \g_slot[1].omir_reg[45] 
       (.C(clk),
        .CE(\g_slot[0].own [46]),
        .D(obs_cid[112]),
        .Q(\g_slot[1].omir_reg_n_0_[45] ),
        .S(reset));
  FDRE \g_slot[1].omir_reg[46] 
       (.C(clk),
        .CE(\g_slot[0].own [46]),
        .D(obs_cid[113]),
        .Q(\g_slot[1].omir_reg_n_0_[46] ),
        .R(reset));
  FDRE \g_slot[1].omir_reg[47] 
       (.C(clk),
        .CE(\g_slot[0].own [46]),
        .D(\g_slot[1].own_reg_n_0_[47] ),
        .Q(\g_slot[1].omir_reg_n_0_[47] ),
        .R(reset));
  FDRE \g_slot[1].omir_reg[4] 
       (.C(clk),
        .CE(\g_slot[0].own [14]),
        .D(obs_ptr[79]),
        .Q(\g_slot[1].omir_reg_n_0_[4] ),
        .R(reset));
  FDRE \g_slot[1].omir_reg[50] 
       (.C(clk),
        .CE(\g_slot[0].own [62]),
        .D(obs_grown[14]),
        .Q(\g_slot[1].omir_reg_n_0_[50] ),
        .R(reset));
  FDRE \g_slot[1].omir_reg[51] 
       (.C(clk),
        .CE(\g_slot[0].own [62]),
        .D(obs_ptr[42]),
        .Q(\g_slot[1].omir_reg_n_0_[51] ),
        .R(reset));
  FDRE \g_slot[1].omir_reg[52] 
       (.C(clk),
        .CE(\g_slot[0].own [62]),
        .D(obs_ptr[43]),
        .Q(\g_slot[1].omir_reg_n_0_[52] ),
        .R(reset));
  FDRE \g_slot[1].omir_reg[53] 
       (.C(clk),
        .CE(\g_slot[0].own [62]),
        .D(obs_ptr[44]),
        .Q(\g_slot[1].omir_reg_n_0_[53] ),
        .R(reset));
  FDRE \g_slot[1].omir_reg[56] 
       (.C(clk),
        .CE(\g_slot[0].own [62]),
        .D(obs_active[14]),
        .Q(\g_slot[1].omir_reg_n_0_[56] ),
        .R(reset));
  FDRE \g_slot[1].omir_reg[57] 
       (.C(clk),
        .CE(\g_slot[0].own [62]),
        .D(obs_cid[84]),
        .Q(\g_slot[1].omir_reg_n_0_[57] ),
        .R(reset));
  FDSE \g_slot[1].omir_reg[58] 
       (.C(clk),
        .CE(\g_slot[0].own [62]),
        .D(obs_cid[85]),
        .Q(\g_slot[1].omir_reg_n_0_[58] ),
        .S(reset));
  FDSE \g_slot[1].omir_reg[59] 
       (.C(clk),
        .CE(\g_slot[0].own [62]),
        .D(obs_cid[86]),
        .Q(\g_slot[1].omir_reg_n_0_[59] ),
        .S(reset));
  FDRE \g_slot[1].omir_reg[5] 
       (.C(clk),
        .CE(\g_slot[0].own [14]),
        .D(obs_ptr[80]),
        .Q(\g_slot[1].omir_reg_n_0_[5] ),
        .R(reset));
  FDSE \g_slot[1].omir_reg[60] 
       (.C(clk),
        .CE(\g_slot[0].own [62]),
        .D(obs_cid[87]),
        .Q(\g_slot[1].omir_reg_n_0_[60] ),
        .S(reset));
  FDRE \g_slot[1].omir_reg[61] 
       (.C(clk),
        .CE(\g_slot[0].own [62]),
        .D(obs_cid[88]),
        .Q(\g_slot[1].omir_reg_n_0_[61] ),
        .R(reset));
  FDRE \g_slot[1].omir_reg[62] 
       (.C(clk),
        .CE(\g_slot[0].own [62]),
        .D(obs_cid[89]),
        .Q(\g_slot[1].omir_reg_n_0_[62] ),
        .R(reset));
  FDRE \g_slot[1].omir_reg[63] 
       (.C(clk),
        .CE(\g_slot[0].own [62]),
        .D(\g_slot[1].own_reg_n_0_[63] ),
        .Q(\g_slot[1].omir_reg_n_0_[63] ),
        .R(reset));
  FDRE \g_slot[1].omir_reg[64] 
       (.C(clk),
        .CE(\g_slot[0].own [78]),
        .D(obs_busy[10]),
        .Q(\g_slot[1].g_dir[3].esrc [64]),
        .R(reset));
  FDRE \g_slot[1].omir_reg[65] 
       (.C(clk),
        .CE(\g_slot[0].own [78]),
        .D(obs_unrooted[10]),
        .Q(\g_slot[1].g_dir[3].esrc [65]),
        .R(reset));
  FDRE \g_slot[1].omir_reg[66] 
       (.C(clk),
        .CE(\g_slot[0].own [78]),
        .D(obs_grown[10]),
        .Q(\g_slot[1].g_dir[3].esrc [66]),
        .R(reset));
  FDRE \g_slot[1].omir_reg[67] 
       (.C(clk),
        .CE(\g_slot[0].own [78]),
        .D(obs_ptr[30]),
        .Q(\g_slot[1].g_dir[3].esrc [67]),
        .R(reset));
  FDRE \g_slot[1].omir_reg[68] 
       (.C(clk),
        .CE(\g_slot[0].own [78]),
        .D(obs_ptr[31]),
        .Q(\g_slot[1].g_dir[3].esrc [68]),
        .R(reset));
  FDRE \g_slot[1].omir_reg[69] 
       (.C(clk),
        .CE(\g_slot[0].own [78]),
        .D(obs_ptr[32]),
        .Q(\g_slot[1].g_dir[3].esrc [69]),
        .R(reset));
  FDRE \g_slot[1].omir_reg[72] 
       (.C(clk),
        .CE(\g_slot[0].own [78]),
        .D(obs_active[10]),
        .Q(\g_slot[1].g_dir[3].esrc [72]),
        .R(reset));
  FDRE \g_slot[1].omir_reg[73] 
       (.C(clk),
        .CE(\g_slot[0].own [78]),
        .D(obs_cid[60]),
        .Q(\g_slot[1].g_dir[3].esrc [73]),
        .R(reset));
  FDSE \g_slot[1].omir_reg[74] 
       (.C(clk),
        .CE(\g_slot[0].own [78]),
        .D(obs_cid[61]),
        .Q(\g_slot[1].g_dir[3].esrc [74]),
        .S(reset));
  FDRE \g_slot[1].omir_reg[75] 
       (.C(clk),
        .CE(\g_slot[0].own [78]),
        .D(obs_cid[62]),
        .Q(\g_slot[1].g_dir[3].esrc [75]),
        .R(reset));
  FDSE \g_slot[1].omir_reg[76] 
       (.C(clk),
        .CE(\g_slot[0].own [78]),
        .D(obs_cid[63]),
        .Q(\g_slot[1].g_dir[3].esrc [76]),
        .S(reset));
  FDRE \g_slot[1].omir_reg[77] 
       (.C(clk),
        .CE(\g_slot[0].own [78]),
        .D(obs_cid[64]),
        .Q(\g_slot[1].g_dir[3].esrc [77]),
        .R(reset));
  FDRE \g_slot[1].omir_reg[78] 
       (.C(clk),
        .CE(\g_slot[0].own [78]),
        .D(obs_cid[65]),
        .Q(\g_slot[1].g_dir[3].esrc [78]),
        .R(reset));
  FDRE \g_slot[1].omir_reg[8] 
       (.C(clk),
        .CE(\g_slot[0].own [14]),
        .D(obs_active[26]),
        .Q(\g_slot[1].omir_reg_n_0_[8] ),
        .R(reset));
  FDRE \g_slot[1].omir_reg[9] 
       (.C(clk),
        .CE(\g_slot[0].own [14]),
        .D(obs_cid[156]),
        .Q(\g_slot[1].omir_reg_n_0_[9] ),
        .R(reset));
  FDRE \g_slot[1].own_reg[0] 
       (.C(clk),
        .CE(\g_slot[0].own [14]),
        .D(\slot_nxt[1] [0]),
        .Q(obs_busy[26]),
        .R(reset));
  FDSE \g_slot[1].own_reg[10] 
       (.C(clk),
        .CE(\g_slot[0].own [14]),
        .D(\slot_nxt[1] [10]),
        .Q(obs_cid[157]),
        .S(reset));
  FDRE \g_slot[1].own_reg[11] 
       (.C(clk),
        .CE(\g_slot[0].own [14]),
        .D(\slot_nxt[1] [11]),
        .Q(obs_cid[158]),
        .R(reset));
  FDSE \g_slot[1].own_reg[12] 
       (.C(clk),
        .CE(\g_slot[0].own [14]),
        .D(\slot_nxt[1] [12]),
        .Q(obs_cid[159]),
        .S(reset));
  FDSE \g_slot[1].own_reg[13] 
       (.C(clk),
        .CE(\g_slot[0].own [14]),
        .D(\slot_nxt[1] [13]),
        .Q(obs_cid[160]),
        .S(reset));
  FDRE \g_slot[1].own_reg[14] 
       (.C(clk),
        .CE(\g_slot[0].own [14]),
        .D(\slot_nxt[1] [14]),
        .Q(obs_cid[161]),
        .R(reset));
  FDRE \g_slot[1].own_reg[15] 
       (.C(clk),
        .CE(\g_slot[0].own [14]),
        .D(\slot_nxt[1] [15]),
        .Q(\g_slot[1].g_dir[2].esrc [15]),
        .R(reset));
  FDRE \g_slot[1].own_reg[16] 
       (.C(clk),
        .CE(\g_slot[0].own [30]),
        .D(\slot_nxt[1] [0]),
        .Q(obs_busy[22]),
        .R(reset));
  FDRE \g_slot[1].own_reg[17] 
       (.C(clk),
        .CE(\g_slot[0].own [30]),
        .D(\slot_nxt[1] [1]),
        .Q(obs_unrooted[22]),
        .R(reset));
  FDRE \g_slot[1].own_reg[18] 
       (.C(clk),
        .CE(\g_slot[0].own [30]),
        .D(\slot_nxt[1] [2]),
        .Q(obs_grown[22]),
        .R(reset));
  FDRE \g_slot[1].own_reg[19] 
       (.C(clk),
        .CE(\g_slot[0].own [30]),
        .D(\slot_nxt[1] [3]),
        .Q(obs_ptr[66]),
        .R(reset));
  FDRE \g_slot[1].own_reg[1] 
       (.C(clk),
        .CE(\g_slot[0].own [14]),
        .D(\slot_nxt[1] [1]),
        .Q(obs_unrooted[26]),
        .R(reset));
  FDRE \g_slot[1].own_reg[20] 
       (.C(clk),
        .CE(\g_slot[0].own [30]),
        .D(\slot_nxt[1] [4]),
        .Q(obs_ptr[67]),
        .R(reset));
  FDRE \g_slot[1].own_reg[21] 
       (.C(clk),
        .CE(\g_slot[0].own [30]),
        .D(\slot_nxt[1] [5]),
        .Q(obs_ptr[68]),
        .R(reset));
  FDRE \g_slot[1].own_reg[22] 
       (.C(clk),
        .CE(\g_slot[0].own [30]),
        .D(\slot_nxt[1] [6]),
        .Q(obs_defect[22]),
        .R(reset));
  FDSE \g_slot[1].own_reg[23] 
       (.C(clk),
        .CE(\g_slot[0].own [30]),
        .D(\slot_nxt[1] [7]),
        .Q(obs_whole[22]),
        .S(reset));
  FDRE \g_slot[1].own_reg[24] 
       (.C(clk),
        .CE(\g_slot[0].own [30]),
        .D(\slot_nxt[1] [8]),
        .Q(obs_active[22]),
        .R(reset));
  FDRE \g_slot[1].own_reg[25] 
       (.C(clk),
        .CE(\g_slot[0].own [30]),
        .D(\slot_nxt[1] [9]),
        .Q(obs_cid[132]),
        .R(reset));
  FDSE \g_slot[1].own_reg[26] 
       (.C(clk),
        .CE(\g_slot[0].own [30]),
        .D(\slot_nxt[1] [10]),
        .Q(obs_cid[133]),
        .S(reset));
  FDSE \g_slot[1].own_reg[27] 
       (.C(clk),
        .CE(\g_slot[0].own [30]),
        .D(\slot_nxt[1] [11]),
        .Q(obs_cid[134]),
        .S(reset));
  FDRE \g_slot[1].own_reg[28] 
       (.C(clk),
        .CE(\g_slot[0].own [30]),
        .D(\slot_nxt[1] [12]),
        .Q(obs_cid[135]),
        .R(reset));
  FDSE \g_slot[1].own_reg[29] 
       (.C(clk),
        .CE(\g_slot[0].own [30]),
        .D(\slot_nxt[1] [13]),
        .Q(obs_cid[136]),
        .S(reset));
  FDRE \g_slot[1].own_reg[2] 
       (.C(clk),
        .CE(\g_slot[0].own [14]),
        .D(\slot_nxt[1] [2]),
        .Q(obs_grown[26]),
        .R(reset));
  FDRE \g_slot[1].own_reg[30] 
       (.C(clk),
        .CE(\g_slot[0].own [30]),
        .D(\slot_nxt[1] [14]),
        .Q(obs_cid[137]),
        .R(reset));
  FDRE \g_slot[1].own_reg[31] 
       (.C(clk),
        .CE(\g_slot[0].own [30]),
        .D(\slot_nxt[1] [15]),
        .Q(data0),
        .R(reset));
  FDRE \g_slot[1].own_reg[32] 
       (.C(clk),
        .CE(\g_slot[0].own [46]),
        .D(\slot_nxt[1] [0]),
        .Q(obs_busy[18]),
        .R(reset));
  FDRE \g_slot[1].own_reg[33] 
       (.C(clk),
        .CE(\g_slot[0].own [46]),
        .D(\slot_nxt[1] [1]),
        .Q(obs_unrooted[18]),
        .R(reset));
  FDRE \g_slot[1].own_reg[34] 
       (.C(clk),
        .CE(\g_slot[0].own [46]),
        .D(\slot_nxt[1] [2]),
        .Q(obs_grown[18]),
        .R(reset));
  FDRE \g_slot[1].own_reg[35] 
       (.C(clk),
        .CE(\g_slot[0].own [46]),
        .D(\slot_nxt[1] [3]),
        .Q(obs_ptr[54]),
        .R(reset));
  FDRE \g_slot[1].own_reg[36] 
       (.C(clk),
        .CE(\g_slot[0].own [46]),
        .D(\slot_nxt[1] [4]),
        .Q(obs_ptr[55]),
        .R(reset));
  FDRE \g_slot[1].own_reg[37] 
       (.C(clk),
        .CE(\g_slot[0].own [46]),
        .D(\slot_nxt[1] [5]),
        .Q(obs_ptr[56]),
        .R(reset));
  FDRE \g_slot[1].own_reg[38] 
       (.C(clk),
        .CE(\g_slot[0].own [46]),
        .D(\slot_nxt[1] [6]),
        .Q(obs_defect[18]),
        .R(reset));
  FDSE \g_slot[1].own_reg[39] 
       (.C(clk),
        .CE(\g_slot[0].own [46]),
        .D(\slot_nxt[1] [7]),
        .Q(obs_whole[18]),
        .S(reset));
  FDRE \g_slot[1].own_reg[3] 
       (.C(clk),
        .CE(\g_slot[0].own [14]),
        .D(\slot_nxt[1] [3]),
        .Q(obs_ptr[78]),
        .R(reset));
  FDRE \g_slot[1].own_reg[40] 
       (.C(clk),
        .CE(\g_slot[0].own [46]),
        .D(\slot_nxt[1] [8]),
        .Q(obs_active[18]),
        .R(reset));
  FDRE \g_slot[1].own_reg[41] 
       (.C(clk),
        .CE(\g_slot[0].own [46]),
        .D(\slot_nxt[1] [9]),
        .Q(obs_cid[108]),
        .R(reset));
  FDSE \g_slot[1].own_reg[42] 
       (.C(clk),
        .CE(\g_slot[0].own [46]),
        .D(\slot_nxt[1] [10]),
        .Q(obs_cid[109]),
        .S(reset));
  FDRE \g_slot[1].own_reg[43] 
       (.C(clk),
        .CE(\g_slot[0].own [46]),
        .D(\slot_nxt[1] [11]),
        .Q(obs_cid[110]),
        .R(reset));
  FDRE \g_slot[1].own_reg[44] 
       (.C(clk),
        .CE(\g_slot[0].own [46]),
        .D(\slot_nxt[1] [12]),
        .Q(obs_cid[111]),
        .R(reset));
  FDSE \g_slot[1].own_reg[45] 
       (.C(clk),
        .CE(\g_slot[0].own [46]),
        .D(\slot_nxt[1] [13]),
        .Q(obs_cid[112]),
        .S(reset));
  FDRE \g_slot[1].own_reg[46] 
       (.C(clk),
        .CE(\g_slot[0].own [46]),
        .D(\slot_nxt[1] [14]),
        .Q(obs_cid[113]),
        .R(reset));
  FDRE \g_slot[1].own_reg[47] 
       (.C(clk),
        .CE(\g_slot[0].own [46]),
        .D(\slot_nxt[1] [15]),
        .Q(\g_slot[1].own_reg_n_0_[47] ),
        .R(reset));
  FDRE \g_slot[1].own_reg[48] 
       (.C(clk),
        .CE(\g_slot[0].own [62]),
        .D(\slot_nxt[1] [0]),
        .Q(obs_busy[14]),
        .R(reset));
  FDRE \g_slot[1].own_reg[49] 
       (.C(clk),
        .CE(\g_slot[0].own [62]),
        .D(\slot_nxt[1] [1]),
        .Q(obs_unrooted[14]),
        .R(reset));
  FDRE \g_slot[1].own_reg[4] 
       (.C(clk),
        .CE(\g_slot[0].own [14]),
        .D(\slot_nxt[1] [4]),
        .Q(obs_ptr[79]),
        .R(reset));
  FDRE \g_slot[1].own_reg[50] 
       (.C(clk),
        .CE(\g_slot[0].own [62]),
        .D(\slot_nxt[1] [2]),
        .Q(obs_grown[14]),
        .R(reset));
  FDRE \g_slot[1].own_reg[51] 
       (.C(clk),
        .CE(\g_slot[0].own [62]),
        .D(\slot_nxt[1] [3]),
        .Q(obs_ptr[42]),
        .R(reset));
  FDRE \g_slot[1].own_reg[52] 
       (.C(clk),
        .CE(\g_slot[0].own [62]),
        .D(\slot_nxt[1] [4]),
        .Q(obs_ptr[43]),
        .R(reset));
  FDRE \g_slot[1].own_reg[53] 
       (.C(clk),
        .CE(\g_slot[0].own [62]),
        .D(\slot_nxt[1] [5]),
        .Q(obs_ptr[44]),
        .R(reset));
  FDRE \g_slot[1].own_reg[54] 
       (.C(clk),
        .CE(\g_slot[0].own [62]),
        .D(\slot_nxt[1] [6]),
        .Q(obs_defect[14]),
        .R(reset));
  FDSE \g_slot[1].own_reg[55] 
       (.C(clk),
        .CE(\g_slot[0].own [62]),
        .D(\slot_nxt[1] [7]),
        .Q(obs_whole[14]),
        .S(reset));
  FDRE \g_slot[1].own_reg[56] 
       (.C(clk),
        .CE(\g_slot[0].own [62]),
        .D(\slot_nxt[1] [8]),
        .Q(obs_active[14]),
        .R(reset));
  FDRE \g_slot[1].own_reg[57] 
       (.C(clk),
        .CE(\g_slot[0].own [62]),
        .D(\slot_nxt[1] [9]),
        .Q(obs_cid[84]),
        .R(reset));
  FDSE \g_slot[1].own_reg[58] 
       (.C(clk),
        .CE(\g_slot[0].own [62]),
        .D(\slot_nxt[1] [10]),
        .Q(obs_cid[85]),
        .S(reset));
  FDSE \g_slot[1].own_reg[59] 
       (.C(clk),
        .CE(\g_slot[0].own [62]),
        .D(\slot_nxt[1] [11]),
        .Q(obs_cid[86]),
        .S(reset));
  FDRE \g_slot[1].own_reg[5] 
       (.C(clk),
        .CE(\g_slot[0].own [14]),
        .D(\slot_nxt[1] [5]),
        .Q(obs_ptr[80]),
        .R(reset));
  FDSE \g_slot[1].own_reg[60] 
       (.C(clk),
        .CE(\g_slot[0].own [62]),
        .D(\slot_nxt[1] [12]),
        .Q(obs_cid[87]),
        .S(reset));
  FDRE \g_slot[1].own_reg[61] 
       (.C(clk),
        .CE(\g_slot[0].own [62]),
        .D(\slot_nxt[1] [13]),
        .Q(obs_cid[88]),
        .R(reset));
  FDRE \g_slot[1].own_reg[62] 
       (.C(clk),
        .CE(\g_slot[0].own [62]),
        .D(\slot_nxt[1] [14]),
        .Q(obs_cid[89]),
        .R(reset));
  FDRE \g_slot[1].own_reg[63] 
       (.C(clk),
        .CE(\g_slot[0].own [62]),
        .D(\slot_nxt[1] [15]),
        .Q(\g_slot[1].own_reg_n_0_[63] ),
        .R(reset));
  FDRE \g_slot[1].own_reg[64] 
       (.C(clk),
        .CE(\g_slot[0].own [78]),
        .D(\slot_nxt[1] [0]),
        .Q(obs_busy[10]),
        .R(reset));
  FDRE \g_slot[1].own_reg[65] 
       (.C(clk),
        .CE(\g_slot[0].own [78]),
        .D(\slot_nxt[1] [1]),
        .Q(obs_unrooted[10]),
        .R(reset));
  FDRE \g_slot[1].own_reg[66] 
       (.C(clk),
        .CE(\g_slot[0].own [78]),
        .D(\slot_nxt[1] [2]),
        .Q(obs_grown[10]),
        .R(reset));
  FDRE \g_slot[1].own_reg[67] 
       (.C(clk),
        .CE(\g_slot[0].own [78]),
        .D(\slot_nxt[1] [3]),
        .Q(obs_ptr[30]),
        .R(reset));
  FDRE \g_slot[1].own_reg[68] 
       (.C(clk),
        .CE(\g_slot[0].own [78]),
        .D(\slot_nxt[1] [4]),
        .Q(obs_ptr[31]),
        .R(reset));
  FDRE \g_slot[1].own_reg[69] 
       (.C(clk),
        .CE(\g_slot[0].own [78]),
        .D(\slot_nxt[1] [5]),
        .Q(obs_ptr[32]),
        .R(reset));
  FDRE \g_slot[1].own_reg[6] 
       (.C(clk),
        .CE(\g_slot[0].own [14]),
        .D(\slot_nxt[1] [6]),
        .Q(obs_defect[26]),
        .R(reset));
  FDRE \g_slot[1].own_reg[70] 
       (.C(clk),
        .CE(\g_slot[0].own [78]),
        .D(\slot_nxt[1] [6]),
        .Q(obs_defect[10]),
        .R(reset));
  FDSE \g_slot[1].own_reg[71] 
       (.C(clk),
        .CE(\g_slot[0].own [78]),
        .D(\slot_nxt[1] [7]),
        .Q(obs_whole[10]),
        .S(reset));
  FDRE \g_slot[1].own_reg[72] 
       (.C(clk),
        .CE(\g_slot[0].own [78]),
        .D(\slot_nxt[1] [8]),
        .Q(obs_active[10]),
        .R(reset));
  FDRE \g_slot[1].own_reg[73] 
       (.C(clk),
        .CE(\g_slot[0].own [78]),
        .D(\slot_nxt[1] [9]),
        .Q(obs_cid[60]),
        .R(reset));
  FDSE \g_slot[1].own_reg[74] 
       (.C(clk),
        .CE(\g_slot[0].own [78]),
        .D(\slot_nxt[1] [10]),
        .Q(obs_cid[61]),
        .S(reset));
  FDRE \g_slot[1].own_reg[75] 
       (.C(clk),
        .CE(\g_slot[0].own [78]),
        .D(\slot_nxt[1] [11]),
        .Q(obs_cid[62]),
        .R(reset));
  FDSE \g_slot[1].own_reg[76] 
       (.C(clk),
        .CE(\g_slot[0].own [78]),
        .D(\slot_nxt[1] [12]),
        .Q(obs_cid[63]),
        .S(reset));
  FDRE \g_slot[1].own_reg[77] 
       (.C(clk),
        .CE(\g_slot[0].own [78]),
        .D(\slot_nxt[1] [13]),
        .Q(obs_cid[64]),
        .R(reset));
  FDRE \g_slot[1].own_reg[78] 
       (.C(clk),
        .CE(\g_slot[0].own [78]),
        .D(\slot_nxt[1] [14]),
        .Q(obs_cid[65]),
        .R(reset));
  FDRE \g_slot[1].own_reg[79] 
       (.C(clk),
        .CE(\g_slot[0].own [78]),
        .D(\slot_nxt[1] [15]),
        .Q(\g_slot[1].own_reg_n_0_[79] ),
        .R(reset));
  FDSE \g_slot[1].own_reg[7] 
       (.C(clk),
        .CE(\g_slot[0].own [14]),
        .D(\slot_nxt[1] [7]),
        .Q(obs_whole[26]),
        .S(reset));
  FDRE \g_slot[1].own_reg[8] 
       (.C(clk),
        .CE(\g_slot[0].own [14]),
        .D(\slot_nxt[1] [8]),
        .Q(obs_active[26]),
        .R(reset));
  FDRE \g_slot[1].own_reg[9] 
       (.C(clk),
        .CE(\g_slot[0].own [14]),
        .D(\slot_nxt[1] [9]),
        .Q(obs_cid[156]),
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
  (* OFF_PB = "15" *) 
  (* OFF_PTR = "3" *) 
  (* OFF_UNR = "1" *) 
  (* OFF_WHL = "7" *) 
  (* ONE_ONE = "0" *) 
  (* STW = "16" *) 
  (* ST_DROP = "3'b001" *) 
  (* ST_GH = "3'b100" *) 
  (* ST_GW = "3'b010" *) 
  (* ST_IDLE = "3'b000" *) 
  (* ST_MH = "3'b101" *) 
  (* ST_MW = "3'b011" *) 
  (* SYN_IDX = "-1" *) 
  (* ZZZ_ANCHOR = "0" *) 
  snowflake_pe__2 \g_slot[1].pe_i 
       (.ab_active(\g_slot[1].pe_i_i_8_n_0 ),
        .ab_cid({\g_slot[1].pe_i_i_2_n_0 ,\g_slot[1].pe_i_i_3_n_0 ,\g_slot[1].pe_i_i_4_n_0 ,\g_slot[1].pe_i_i_5_n_0 ,\g_slot[1].pe_i_i_6_n_0 ,\g_slot[1].pe_i_i_7_n_0 }),
        .ab_defect(\g_slot[1].pe_i_i_10_n_0 ),
        .ab_ptr({\g_slot[1].pe_i_i_11_n_0 ,\g_slot[1].pe_i_i_12_n_0 ,\g_slot[1].pe_i_i_13_n_0 }),
        .ab_whole(\g_slot[1].pe_i_i_9_n_0 ),
        .clk(1'b0),
        .e_grown({\g_slot[1].pe_i_i_14_n_0 ,\g_slot[1].pe_i_i_15_n_0 ,\g_slot[2].e_grown [0],\g_slot[0].pe_i_i_14_n_0 }),
        .m_pass({m_pass_w,\g_slot[0].pe_i_i_26_n_0 }),
        .nb_active({\g_slot[1].pe_i_i_37_n_0 ,\g_slot[1].pe_i_i_38_n_0 ,p_12_in,p_13_in}),
        .nb_cid({\g_slot[1].pe_i_i_19_n_0 ,\g_slot[1].pe_i_i_20_n_0 ,\g_slot[1].pe_i_i_21_n_0 ,\g_slot[1].pe_i_i_22_n_0 ,\g_slot[1].pe_i_i_23_n_0 ,\g_slot[1].pe_i_i_24_n_0 ,\g_slot[1].pe_i_i_25_n_0 ,\g_slot[1].pe_i_i_26_n_0 ,\g_slot[1].pe_i_i_27_n_0 ,\g_slot[1].pe_i_i_28_n_0 ,\g_slot[1].pe_i_i_29_n_0 ,\g_slot[1].pe_i_i_30_n_0 ,\g_slot[3].nb_cid [5:0],\g_slot[0].pe_i_i_28_n_0 ,\g_slot[0].pe_i_i_29_n_0 ,\g_slot[0].pe_i_i_30_n_0 ,\g_slot[0].pe_i_i_31_n_0 ,\g_slot[0].pe_i_i_32_n_0 ,\g_slot[0].pe_i_i_33_n_0 }),
        .nb_grown({\g_slot[1].pe_i_i_40_n_0 ,\g_slot[1].pe_i_i_41_n_0 ,\g_slot[3].nb_grown [0],\g_slot[0].pe_i_i_40_n_0 }),
        .nb_push({\g_slot[1].pe_i_i_43_n_0 ,\g_slot[1].nb_push ,\g_eslot[0].umir }),
        .nb_valid({\g_slot[4].g_dir[3].nbv ,\g_slot[1].pe_i_i_18_n_0 ,1'b1,1'b1}),
        .o_busy_c(\NLW_g_slot[1].pe_i_o_busy_c_UNCONNECTED ),
        .o_pulse(\NLW_g_slot[1].pe_i_o_pulse_UNCONNECTED ),
        .o_push(\NLW_g_slot[1].pe_i_o_push_UNCONNECTED [3:0]),
        .p_has_above(\g_slot[1].iw [6]),
        .p_id(\g_slot[1].iw [5:0]),
        .p_is_bnd(\g_slot[1].iw [7]),
        .p_is_bot(\g_slot[1].iw [9]),
        .p_is_syn(\g_slot[1].iw [10]),
        .p_is_top(\g_slot[1].iw [8]),
        .reset(1'b0),
        .st_in({p_0_in36_in,\g_slot[0].pe_i_i_15_n_0 ,\g_slot[0].pe_i_i_16_n_0 ,\g_slot[0].pe_i_i_17_n_0 ,\g_slot[0].pe_i_i_18_n_0 ,\g_slot[0].pe_i_i_19_n_0 ,\g_slot[0].pe_i_i_20_n_0 ,p_14_in,p_0_in106_in,\g_slot[1].pe_i_i_49_n_0 ,p_0_in8_in,\g_slot[0].pe_i_i_23_n_0 ,\g_slot[1].pe_i_i_53_n_0 ,1'b0}),
        .st_out(\slot_nxt[1] ),
        .stage({stage_reg,\dbg_stage[0]_i_1_n_0 }),
        .syn_bit(\g_slot[1].pe_i_i_1_n_0 ),
        .zzz_never_used(1'b0));
  LUT6 #(
    .INIT(64'hFFF111F1EEE000E0)) 
    \g_slot[1].pe_i_i_1 
       (.I0(\g_slot[1].pe_i_i_65_n_0 ),
        .I1(\g_slot[0].pe_i_i_93_n_0 ),
        .I2(\syn_buf_reg_n_0_[3] ),
        .I3(\g_slot[1].pe_i_i_66_n_0 ),
        .I4(\syn_buf_reg_n_0_[1] ),
        .I5(\syn_buf_reg_n_0_[0] ),
        .O(\g_slot[1].pe_i_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair295" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \g_slot[1].pe_i_i_10 
       (.I0(\g_slot[1].pe_i_i_75_n_0 ),
        .I1(phase[2]),
        .O(\g_slot[1].pe_i_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h22222E2200000000)) 
    \g_slot[1].pe_i_i_100 
       (.I0(\g_slot[1].pe_i_i_78_n_0 ),
        .I1(phase[2]),
        .I2(\phase_reg[1]_rep__0_n_0 ),
        .I3(\g_slot[1].g_dir[3].esrc [67]),
        .I4(phase[0]),
        .I5(\g_slot[1].pe_i_i_117_n_0 ),
        .O(\g_slot[1].nb_push115_out ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_slot[1].pe_i_i_101 
       (.I0(\g_slot[1].omir_reg_n_0_[47] ),
        .I1(\g_slot[1].omir_reg_n_0_[31] ),
        .I2(\phase_reg[1]_rep__1_n_0 ),
        .I3(\g_slot[1].omir_reg_n_0_[15] ),
        .I4(phase[0]),
        .I5(\g_slot[1].g_dir[2].esrc [15]),
        .O(\g_slot[1].pe_i_i_101_n_0 ));
  LUT6 #(
    .INIT(64'h010501FA00000000)) 
    \g_slot[1].pe_i_i_102 
       (.I0(phase[0]),
        .I1(\g_slot[1].omir_reg_n_0_[51] ),
        .I2(\phase_reg[1]_rep__3_n_0 ),
        .I3(phase[2]),
        .I4(\g_slot[1].pe_i_i_118_n_0 ),
        .I5(\g_slot[1].pe_i_i_119_n_0 ),
        .O(\g_slot[1].nb_push1 ));
  (* SOFT_HLUTNM = "soft_lutpair222" *) 
  LUT3 #(
    .INIT(8'h1F)) 
    \g_slot[1].pe_i_i_103 
       (.I0(\phase_reg[1]_rep__0_n_0 ),
        .I1(phase[0]),
        .I2(phase[2]),
        .O(\g_slot[1].pe_i_i_103_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_slot[1].pe_i_i_104 
       (.I0(\g_slot[1].own_reg_n_0_[63] ),
        .I1(\g_slot[1].own_reg_n_0_[47] ),
        .I2(\phase_reg[1]_rep__0_n_0 ),
        .I3(data0),
        .I4(phase[0]),
        .I5(\g_slot[1].g_dir[2].esrc [15]),
        .O(\g_slot[1].pe_i_i_104_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_slot[1].pe_i_i_105 
       (.I0(obs_whole[14]),
        .I1(obs_whole[18]),
        .I2(\phase_reg[1]_rep__3_n_0 ),
        .I3(obs_whole[22]),
        .I4(phase[0]),
        .I5(obs_whole[26]),
        .O(\g_slot[1].pe_i_i_105_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_slot[1].pe_i_i_106 
       (.I0(obs_defect[14]),
        .I1(obs_defect[18]),
        .I2(\phase_reg[1]_rep__2_n_0 ),
        .I3(obs_defect[22]),
        .I4(phase[0]),
        .I5(obs_defect[26]),
        .O(\g_slot[1].pe_i_i_106_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_slot[1].pe_i_i_107 
       (.I0(obs_ptr[44]),
        .I1(obs_ptr[56]),
        .I2(\phase_reg[1]_rep__0_n_0 ),
        .I3(obs_ptr[68]),
        .I4(phase[0]),
        .I5(obs_ptr[80]),
        .O(\g_slot[1].pe_i_i_107_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_slot[1].pe_i_i_108 
       (.I0(obs_ptr[43]),
        .I1(obs_ptr[55]),
        .I2(\phase_reg[1]_rep__0_n_0 ),
        .I3(obs_ptr[67]),
        .I4(phase[0]),
        .I5(obs_ptr[79]),
        .O(\g_slot[1].pe_i_i_108_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_slot[1].pe_i_i_109 
       (.I0(obs_ptr[42]),
        .I1(obs_ptr[54]),
        .I2(\phase_reg[1]_rep__2_n_0 ),
        .I3(obs_ptr[66]),
        .I4(phase[0]),
        .I5(obs_ptr[78]),
        .O(\g_slot[1].pe_i_i_109_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair257" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \g_slot[1].pe_i_i_11 
       (.I0(\g_slot[1].pe_i_i_76_n_0 ),
        .I1(phase[2]),
        .O(\g_slot[1].pe_i_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_slot[1].pe_i_i_110 
       (.I0(obs_unrooted[14]),
        .I1(obs_unrooted[18]),
        .I2(\phase_reg[1]_rep__1_n_0 ),
        .I3(obs_unrooted[22]),
        .I4(phase[0]),
        .I5(obs_unrooted[26]),
        .O(\g_slot[1].pe_i_i_110_n_0 ));
  LUT5 #(
    .INIT(32'h20202F20)) 
    \g_slot[1].pe_i_i_111 
       (.I0(obs_growth[51]),
        .I1(obs_growth[50]),
        .I2(phase[0]),
        .I3(obs_growth[67]),
        .I4(obs_growth[66]),
        .O(\g_slot[1].pe_i_i_111_n_0 ));
  LUT5 #(
    .INIT(32'h20202F20)) 
    \g_slot[1].pe_i_i_112 
       (.I0(obs_growth[19]),
        .I1(obs_growth[18]),
        .I2(phase[0]),
        .I3(obs_growth[35]),
        .I4(obs_growth[34]),
        .O(\g_slot[1].pe_i_i_112_n_0 ));
  LUT5 #(
    .INIT(32'h20202F20)) 
    \g_slot[1].pe_i_i_113 
       (.I0(\g_slot[1].g_dir[2].esrc [17]),
        .I1(\g_slot[1].g_dir[2].esrc [16]),
        .I2(phase[0]),
        .I3(obs_unrooted[26]),
        .I4(obs_busy[26]),
        .O(\g_slot[1].pe_i_i_113_n_0 ));
  LUT5 #(
    .INIT(32'h20202F20)) 
    \g_slot[1].pe_i_i_114 
       (.I0(\g_eslot[5].eomir_reg_n_0_[7] ),
        .I1(\g_eslot[5].eomir_reg_n_0_[6] ),
        .I2(phase[0]),
        .I3(\g_eslot[5].eomir_reg_n_0_[4] ),
        .I4(\g_eslot[5].eomir_reg_n_0_[3] ),
        .O(\g_slot[1].pe_i_i_114_n_0 ));
  LUT5 #(
    .INIT(32'h20202F20)) 
    \g_slot[1].pe_i_i_115 
       (.I0(obs_growth[53]),
        .I1(obs_growth[52]),
        .I2(phase[0]),
        .I3(obs_growth[69]),
        .I4(obs_growth[68]),
        .O(\g_slot[1].pe_i_i_115_n_0 ));
  LUT5 #(
    .INIT(32'h20202F20)) 
    \g_slot[1].pe_i_i_116 
       (.I0(obs_growth[21]),
        .I1(obs_growth[20]),
        .I2(phase[0]),
        .I3(obs_growth[37]),
        .I4(obs_growth[36]),
        .O(\g_slot[1].pe_i_i_116_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FBFFFB00)) 
    \g_slot[1].pe_i_i_117 
       (.I0(phase[0]),
        .I1(\g_slot[1].g_dir[3].esrc [68]),
        .I2(\phase_reg[1]_rep__0_n_0 ),
        .I3(phase[2]),
        .I4(\g_slot[1].pe_i_i_77_n_0 ),
        .I5(p_0_in14_in),
        .O(\g_slot[1].pe_i_i_117_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_slot[1].pe_i_i_118 
       (.I0(\g_slot[1].omir_reg_n_0_[35] ),
        .I1(\g_slot[1].omir_reg_n_0_[19] ),
        .I2(\phase_reg[1]_rep__3_n_0 ),
        .I3(\g_slot[1].omir_reg_n_0_[3] ),
        .I4(phase[0]),
        .I5(obs_ptr[78]),
        .O(\g_slot[1].pe_i_i_118_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FEFAFE05)) 
    \g_slot[1].pe_i_i_119 
       (.I0(phase[0]),
        .I1(\g_slot[1].omir_reg_n_0_[53] ),
        .I2(\phase_reg[1]_rep__3_n_0 ),
        .I3(phase[2]),
        .I4(\g_slot[1].pe_i_i_121_n_0 ),
        .I5(p_0_in12_in),
        .O(\g_slot[1].pe_i_i_119_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair288" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \g_slot[1].pe_i_i_12 
       (.I0(\g_slot[1].pe_i_i_77_n_0 ),
        .I1(phase[2]),
        .O(\g_slot[1].pe_i_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair257" *) 
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \g_slot[1].pe_i_i_120 
       (.I0(phase[0]),
        .I1(\g_slot[1].g_dir[3].esrc [69]),
        .I2(\phase_reg[1]_rep__0_n_0 ),
        .I3(phase[2]),
        .I4(\g_slot[1].pe_i_i_76_n_0 ),
        .O(p_0_in14_in));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_slot[1].pe_i_i_121 
       (.I0(\g_slot[1].omir_reg_n_0_[37] ),
        .I1(\g_slot[1].omir_reg_n_0_[21] ),
        .I2(\phase_reg[1]_rep__3_n_0 ),
        .I3(\g_slot[1].omir_reg_n_0_[5] ),
        .I4(phase[0]),
        .I5(obs_ptr[80]),
        .O(\g_slot[1].pe_i_i_121_n_0 ));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \g_slot[1].pe_i_i_122 
       (.I0(phase[0]),
        .I1(\g_slot[1].omir_reg_n_0_[52] ),
        .I2(\phase_reg[1]_rep__3_n_0 ),
        .I3(phase[2]),
        .I4(\g_slot[1].pe_i_i_123_n_0 ),
        .O(p_0_in12_in));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_slot[1].pe_i_i_123 
       (.I0(\g_slot[1].omir_reg_n_0_[36] ),
        .I1(\g_slot[1].omir_reg_n_0_[20] ),
        .I2(\phase_reg[1]_rep__3_n_0 ),
        .I3(\g_slot[1].omir_reg_n_0_[4] ),
        .I4(phase[0]),
        .I5(obs_ptr[79]),
        .O(\g_slot[1].pe_i_i_123_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair288" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \g_slot[1].pe_i_i_13 
       (.I0(\g_slot[1].pe_i_i_78_n_0 ),
        .I1(phase[2]),
        .O(\g_slot[1].pe_i_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h0A0A0A0A0A3A0A0A)) 
    \g_slot[1].pe_i_i_14 
       (.I0(\g_slot[1].pe_i_i_79_n_0 ),
        .I1(\phase_reg[1]_rep__1_n_0 ),
        .I2(phase[2]),
        .I3(\g_slot[1].g_dir[3].esrc [64]),
        .I4(\g_slot[1].g_dir[3].esrc [65]),
        .I5(phase[0]),
        .O(\g_slot[1].pe_i_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h0A0A0A0A0A3A0A0A)) 
    \g_slot[1].pe_i_i_15 
       (.I0(\g_slot[1].pe_i_i_80_n_0 ),
        .I1(\phase_reg[1]_rep__0_n_0 ),
        .I2(phase[2]),
        .I3(\g_eslot[5].eomir_reg_n_0_[9] ),
        .I4(\g_eslot[5].eomir_reg_n_0_[10] ),
        .I5(phase[0]),
        .O(\g_slot[1].pe_i_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h0A0A0A0A0A3A0A0A)) 
    \g_slot[1].pe_i_i_16 
       (.I0(\g_slot[1].pe_i_i_81_n_0 ),
        .I1(\phase_reg[1]_rep__0_n_0 ),
        .I2(phase[2]),
        .I3(obs_growth[10]),
        .I4(obs_growth[11]),
        .I5(phase[0]),
        .O(\g_slot[2].e_grown [0]));
  (* SOFT_HLUTNM = "soft_lutpair180" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \g_slot[1].pe_i_i_17 
       (.I0(phase[2]),
        .O(\g_slot[4].g_dir[3].nbv ));
  (* SOFT_HLUTNM = "soft_lutpair182" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \g_slot[1].pe_i_i_18 
       (.I0(phase[2]),
        .I1(\phase_reg[1]_rep__2_n_0 ),
        .I2(phase[0]),
        .O(\g_slot[1].pe_i_i_18_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair250" *) 
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \g_slot[1].pe_i_i_19 
       (.I0(phase[0]),
        .I1(\g_slot[1].g_dir[3].esrc [78]),
        .I2(\phase_reg[1]_rep__3_n_0 ),
        .I3(phase[2]),
        .I4(\g_slot[1].pe_i_i_67_n_0 ),
        .O(\g_slot[1].pe_i_i_19_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair250" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \g_slot[1].pe_i_i_2 
       (.I0(\g_slot[1].pe_i_i_67_n_0 ),
        .I1(phase[2]),
        .O(\g_slot[1].pe_i_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair251" *) 
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \g_slot[1].pe_i_i_20 
       (.I0(phase[0]),
        .I1(\g_slot[1].g_dir[3].esrc [77]),
        .I2(\phase_reg[1]_rep__3_n_0 ),
        .I3(phase[2]),
        .I4(\g_slot[1].pe_i_i_68_n_0 ),
        .O(\g_slot[1].pe_i_i_20_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair252" *) 
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \g_slot[1].pe_i_i_21 
       (.I0(phase[0]),
        .I1(\g_slot[1].g_dir[3].esrc [76]),
        .I2(\phase_reg[1]_rep__3_n_0 ),
        .I3(phase[2]),
        .I4(\g_slot[1].pe_i_i_69_n_0 ),
        .O(\g_slot[1].pe_i_i_21_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair253" *) 
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \g_slot[1].pe_i_i_22 
       (.I0(phase[0]),
        .I1(\g_slot[1].g_dir[3].esrc [75]),
        .I2(\phase_reg[1]_rep__3_n_0 ),
        .I3(phase[2]),
        .I4(\g_slot[1].pe_i_i_70_n_0 ),
        .O(\g_slot[1].pe_i_i_22_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair254" *) 
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \g_slot[1].pe_i_i_23 
       (.I0(phase[0]),
        .I1(\g_slot[1].g_dir[3].esrc [74]),
        .I2(\phase_reg[1]_rep__3_n_0 ),
        .I3(phase[2]),
        .I4(\g_slot[1].pe_i_i_71_n_0 ),
        .O(\g_slot[1].pe_i_i_23_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair255" *) 
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \g_slot[1].pe_i_i_24 
       (.I0(phase[0]),
        .I1(\g_slot[1].g_dir[3].esrc [73]),
        .I2(\phase_reg[1]_rep__3_n_0 ),
        .I3(phase[2]),
        .I4(\g_slot[1].pe_i_i_72_n_0 ),
        .O(\g_slot[1].pe_i_i_24_n_0 ));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \g_slot[1].pe_i_i_25 
       (.I0(phase[0]),
        .I1(\g_slot[1].omir_reg_n_0_[62] ),
        .I2(\phase_reg[1]_rep__1_n_0 ),
        .I3(phase[2]),
        .I4(\g_slot[1].pe_i_i_82_n_0 ),
        .O(\g_slot[1].pe_i_i_25_n_0 ));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \g_slot[1].pe_i_i_26 
       (.I0(phase[0]),
        .I1(\g_slot[1].omir_reg_n_0_[61] ),
        .I2(\phase_reg[1]_rep__1_n_0 ),
        .I3(phase[2]),
        .I4(\g_slot[1].pe_i_i_83_n_0 ),
        .O(\g_slot[1].pe_i_i_26_n_0 ));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \g_slot[1].pe_i_i_27 
       (.I0(phase[0]),
        .I1(\g_slot[1].omir_reg_n_0_[60] ),
        .I2(\phase_reg[1]_rep__1_n_0 ),
        .I3(phase[2]),
        .I4(\g_slot[1].pe_i_i_84_n_0 ),
        .O(\g_slot[1].pe_i_i_27_n_0 ));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \g_slot[1].pe_i_i_28 
       (.I0(phase[0]),
        .I1(\g_slot[1].omir_reg_n_0_[59] ),
        .I2(\phase_reg[1]_rep__1_n_0 ),
        .I3(phase[2]),
        .I4(\g_slot[1].pe_i_i_85_n_0 ),
        .O(\g_slot[1].pe_i_i_28_n_0 ));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \g_slot[1].pe_i_i_29 
       (.I0(phase[0]),
        .I1(\g_slot[1].omir_reg_n_0_[58] ),
        .I2(\phase_reg[1]_rep__1_n_0 ),
        .I3(phase[2]),
        .I4(\g_slot[1].pe_i_i_86_n_0 ),
        .O(\g_slot[1].pe_i_i_29_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair251" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \g_slot[1].pe_i_i_3 
       (.I0(\g_slot[1].pe_i_i_68_n_0 ),
        .I1(phase[2]),
        .O(\g_slot[1].pe_i_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \g_slot[1].pe_i_i_30 
       (.I0(phase[0]),
        .I1(\g_slot[1].omir_reg_n_0_[57] ),
        .I2(\phase_reg[1]_rep__1_n_0 ),
        .I3(phase[2]),
        .I4(\g_slot[1].pe_i_i_87_n_0 ),
        .O(\g_slot[1].pe_i_i_30_n_0 ));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \g_slot[1].pe_i_i_31 
       (.I0(phase[0]),
        .I1(obs_cid[71]),
        .I2(\phase_reg[1]_rep__1_n_0 ),
        .I3(phase[2]),
        .I4(\g_slot[1].pe_i_i_88_n_0 ),
        .O(\g_slot[3].nb_cid [5]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \g_slot[1].pe_i_i_32 
       (.I0(phase[0]),
        .I1(obs_cid[70]),
        .I2(\phase_reg[1]_rep__1_n_0 ),
        .I3(phase[2]),
        .I4(\g_slot[1].pe_i_i_89_n_0 ),
        .O(\g_slot[3].nb_cid [4]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \g_slot[1].pe_i_i_33 
       (.I0(phase[0]),
        .I1(obs_cid[69]),
        .I2(\phase_reg[1]_rep__1_n_0 ),
        .I3(phase[2]),
        .I4(\g_slot[1].pe_i_i_90_n_0 ),
        .O(\g_slot[3].nb_cid [3]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \g_slot[1].pe_i_i_34 
       (.I0(phase[0]),
        .I1(obs_cid[68]),
        .I2(\phase_reg[1]_rep__1_n_0 ),
        .I3(phase[2]),
        .I4(\g_slot[1].pe_i_i_91_n_0 ),
        .O(\g_slot[3].nb_cid [2]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \g_slot[1].pe_i_i_35 
       (.I0(phase[0]),
        .I1(obs_cid[67]),
        .I2(\phase_reg[1]_rep__1_n_0 ),
        .I3(phase[2]),
        .I4(\g_slot[1].pe_i_i_92_n_0 ),
        .O(\g_slot[3].nb_cid [1]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \g_slot[1].pe_i_i_36 
       (.I0(phase[0]),
        .I1(obs_cid[66]),
        .I2(\phase_reg[1]_rep__1_n_0 ),
        .I3(phase[2]),
        .I4(\g_slot[1].pe_i_i_93_n_0 ),
        .O(\g_slot[3].nb_cid [0]));
  (* SOFT_HLUTNM = "soft_lutpair256" *) 
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \g_slot[1].pe_i_i_37 
       (.I0(phase[0]),
        .I1(\g_slot[1].g_dir[3].esrc [72]),
        .I2(\phase_reg[1]_rep__3_n_0 ),
        .I3(phase[2]),
        .I4(\g_slot[1].pe_i_i_73_n_0 ),
        .O(\g_slot[1].pe_i_i_37_n_0 ));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \g_slot[1].pe_i_i_38 
       (.I0(phase[0]),
        .I1(\g_slot[1].omir_reg_n_0_[56] ),
        .I2(\phase_reg[1]_rep__1_n_0 ),
        .I3(phase[2]),
        .I4(\g_slot[1].pe_i_i_94_n_0 ),
        .O(\g_slot[1].pe_i_i_38_n_0 ));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \g_slot[1].pe_i_i_39 
       (.I0(phase[0]),
        .I1(obs_active[11]),
        .I2(\phase_reg[1]_rep__3_n_0 ),
        .I3(phase[2]),
        .I4(\g_slot[1].pe_i_i_95_n_0 ),
        .O(p_12_in));
  (* SOFT_HLUTNM = "soft_lutpair252" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \g_slot[1].pe_i_i_4 
       (.I0(\g_slot[1].pe_i_i_69_n_0 ),
        .I1(phase[2]),
        .O(\g_slot[1].pe_i_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \g_slot[1].pe_i_i_40 
       (.I0(phase[0]),
        .I1(\g_slot[1].g_dir[3].esrc [66]),
        .I2(\phase_reg[1]_rep__2_n_0 ),
        .I3(phase[2]),
        .I4(\g_slot[1].pe_i_i_96_n_0 ),
        .O(\g_slot[1].pe_i_i_40_n_0 ));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \g_slot[1].pe_i_i_41 
       (.I0(phase[0]),
        .I1(\g_slot[1].omir_reg_n_0_[50] ),
        .I2(\phase_reg[1]_rep__1_n_0 ),
        .I3(phase[2]),
        .I4(\g_slot[1].pe_i_i_97_n_0 ),
        .O(\g_slot[1].pe_i_i_41_n_0 ));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \g_slot[1].pe_i_i_42 
       (.I0(phase[0]),
        .I1(obs_grown[11]),
        .I2(\phase_reg[1]_rep__2_n_0 ),
        .I3(phase[2]),
        .I4(\g_slot[1].pe_i_i_98_n_0 ),
        .O(\g_slot[3].nb_grown [0]));
  (* SOFT_HLUTNM = "soft_lutpair286" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \g_slot[1].pe_i_i_43 
       (.I0(\g_slot[1].pe_i_i_99_n_0 ),
        .I1(\g_slot[1].nb_push115_out ),
        .I2(phase[2]),
        .O(\g_slot[1].pe_i_i_43_n_0 ));
  LUT6 #(
    .INIT(64'h04FA040000000000)) 
    \g_slot[1].pe_i_i_44 
       (.I0(phase[0]),
        .I1(\g_slot[1].omir_reg_n_0_[63] ),
        .I2(\phase_reg[1]_rep__1_n_0 ),
        .I3(phase[2]),
        .I4(\g_slot[1].pe_i_i_101_n_0 ),
        .I5(\g_slot[1].nb_push1 ),
        .O(\g_slot[1].nb_push [2]));
  (* SOFT_HLUTNM = "soft_lutpair239" *) 
  LUT4 #(
    .INIT(16'h0020)) 
    \g_slot[1].pe_i_i_45 
       (.I0(p_0_in35_in),
        .I1(p_0_in11_in[1]),
        .I2(p_0_in11_in[0]),
        .I3(p_0_in11_in[2]),
        .O(\g_slot[1].nb_push [1]));
  LUT5 #(
    .INIT(32'h01080000)) 
    \g_slot[1].pe_i_i_46 
       (.I0(p_0_in10_in[1]),
        .I1(\g_slot[1].pe_i_i_103_n_0 ),
        .I2(p_0_in10_in[2]),
        .I3(p_0_in10_in[0]),
        .I4(\g_slot[0].pe_i_i_27_n_0 ),
        .O(\g_eslot[0].umir ));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \g_slot[1].pe_i_i_47 
       (.I0(phase[0]),
        .I1(\g_slot[1].own_reg_n_0_[79] ),
        .I2(\phase_reg[1]_rep__0_n_0 ),
        .I3(phase[2]),
        .I4(\g_slot[1].pe_i_i_104_n_0 ),
        .O(p_0_in36_in));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \g_slot[1].pe_i_i_48 
       (.I0(phase[0]),
        .I1(obs_whole[10]),
        .I2(\phase_reg[1]_rep__3_n_0 ),
        .I3(phase[2]),
        .I4(\g_slot[1].pe_i_i_105_n_0 ),
        .O(p_0_in106_in));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \g_slot[1].pe_i_i_49 
       (.I0(phase[0]),
        .I1(obs_defect[10]),
        .I2(\phase_reg[1]_rep__2_n_0 ),
        .I3(phase[2]),
        .I4(\g_slot[1].pe_i_i_106_n_0 ),
        .O(\g_slot[1].pe_i_i_49_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair253" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \g_slot[1].pe_i_i_5 
       (.I0(\g_slot[1].pe_i_i_70_n_0 ),
        .I1(phase[2]),
        .O(\g_slot[1].pe_i_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \g_slot[1].pe_i_i_50 
       (.I0(phase[0]),
        .I1(obs_ptr[32]),
        .I2(\phase_reg[1]_rep__0_n_0 ),
        .I3(phase[2]),
        .I4(\g_slot[1].pe_i_i_107_n_0 ),
        .O(p_0_in8_in[2]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \g_slot[1].pe_i_i_51 
       (.I0(phase[0]),
        .I1(obs_ptr[31]),
        .I2(\phase_reg[1]_rep__0_n_0 ),
        .I3(phase[2]),
        .I4(\g_slot[1].pe_i_i_108_n_0 ),
        .O(p_0_in8_in[1]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \g_slot[1].pe_i_i_52 
       (.I0(phase[0]),
        .I1(obs_ptr[30]),
        .I2(\phase_reg[1]_rep__2_n_0 ),
        .I3(phase[2]),
        .I4(\g_slot[1].pe_i_i_109_n_0 ),
        .O(p_0_in8_in[0]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \g_slot[1].pe_i_i_53 
       (.I0(phase[0]),
        .I1(obs_unrooted[10]),
        .I2(\phase_reg[1]_rep__1_n_0 ),
        .I3(phase[2]),
        .I4(\g_slot[1].pe_i_i_110_n_0 ),
        .O(\g_slot[1].pe_i_i_53_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair186" *) 
  LUT5 #(
    .INIT(32'h10C70A90)) 
    \g_slot[1].pe_i_i_54 
       (.I0(\phase_reg[1]_rep_n_0 ),
        .I1(phase[2]),
        .I2(\g_slot[0].pe_i_i_92_n_0 ),
        .I3(phase[0]),
        .I4(\g_slot[0].pe_i_i_93_n_0 ),
        .O(\g_slot[1].iw [5]));
  (* SOFT_HLUTNM = "soft_lutpair184" *) 
  LUT5 #(
    .INIT(32'hC2A90608)) 
    \g_slot[1].pe_i_i_55 
       (.I0(\g_slot[0].pe_i_i_93_n_0 ),
        .I1(\g_slot[0].pe_i_i_92_n_0 ),
        .I2(phase[2]),
        .I3(phase[0]),
        .I4(\phase_reg[1]_rep_n_0 ),
        .O(\g_slot[1].iw [4]));
  (* SOFT_HLUTNM = "soft_lutpair187" *) 
  LUT5 #(
    .INIT(32'h8DC13021)) 
    \g_slot[1].pe_i_i_56 
       (.I0(\phase_reg[1]_rep_n_0 ),
        .I1(phase[0]),
        .I2(phase[2]),
        .I3(\g_slot[0].pe_i_i_92_n_0 ),
        .I4(\g_slot[0].pe_i_i_93_n_0 ),
        .O(\g_slot[1].iw [3]));
  (* SOFT_HLUTNM = "soft_lutpair191" *) 
  LUT5 #(
    .INIT(32'h55C94B10)) 
    \g_slot[1].pe_i_i_57 
       (.I0(phase[2]),
        .I1(\phase_reg[1]_rep_n_0 ),
        .I2(\g_slot[0].pe_i_i_92_n_0 ),
        .I3(\g_slot[0].pe_i_i_93_n_0 ),
        .I4(phase[0]),
        .O(\g_slot[1].iw [2]));
  (* SOFT_HLUTNM = "soft_lutpair205" *) 
  LUT5 #(
    .INIT(32'h28E12679)) 
    \g_slot[1].pe_i_i_58 
       (.I0(\g_slot[0].pe_i_i_93_n_0 ),
        .I1(\g_slot[0].pe_i_i_92_n_0 ),
        .I2(phase[2]),
        .I3(phase[0]),
        .I4(\phase_reg[1]_rep_n_0 ),
        .O(\g_slot[1].iw [1]));
  (* SOFT_HLUTNM = "soft_lutpair184" *) 
  LUT5 #(
    .INIT(32'h980B8348)) 
    \g_slot[1].pe_i_i_59 
       (.I0(\phase_reg[1]_rep_n_0 ),
        .I1(phase[2]),
        .I2(\g_slot[0].pe_i_i_93_n_0 ),
        .I3(phase[0]),
        .I4(\g_slot[0].pe_i_i_92_n_0 ),
        .O(\g_slot[1].iw [0]));
  (* SOFT_HLUTNM = "soft_lutpair254" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \g_slot[1].pe_i_i_6 
       (.I0(\g_slot[1].pe_i_i_71_n_0 ),
        .I1(phase[2]),
        .O(\g_slot[1].pe_i_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair206" *) 
  LUT5 #(
    .INIT(32'hB8150208)) 
    \g_slot[1].pe_i_i_60 
       (.I0(\g_slot[0].pe_i_i_93_n_0 ),
        .I1(\g_slot[0].pe_i_i_92_n_0 ),
        .I2(phase[2]),
        .I3(phase[0]),
        .I4(\phase_reg[1]_rep_n_0 ),
        .O(\g_slot[1].iw [6]));
  (* SOFT_HLUTNM = "soft_lutpair202" *) 
  LUT5 #(
    .INIT(32'h30210638)) 
    \g_slot[1].pe_i_i_61 
       (.I0(\phase_reg[1]_rep_n_0 ),
        .I1(phase[0]),
        .I2(phase[2]),
        .I3(\g_slot[0].pe_i_i_92_n_0 ),
        .I4(\g_slot[0].pe_i_i_93_n_0 ),
        .O(\g_slot[1].iw [7]));
  (* SOFT_HLUTNM = "soft_lutpair200" *) 
  LUT5 #(
    .INIT(32'h94060D44)) 
    \g_slot[1].pe_i_i_62 
       (.I0(\g_slot[0].pe_i_i_93_n_0 ),
        .I1(\g_slot[0].pe_i_i_92_n_0 ),
        .I2(phase[2]),
        .I3(phase[0]),
        .I4(\phase_reg[1]_rep_n_0 ),
        .O(\g_slot[1].iw [8]));
  (* SOFT_HLUTNM = "soft_lutpair215" *) 
  LUT5 #(
    .INIT(32'h21C00123)) 
    \g_slot[1].pe_i_i_63 
       (.I0(phase[2]),
        .I1(phase[0]),
        .I2(\phase_reg[1]_rep_n_0 ),
        .I3(\g_slot[0].pe_i_i_92_n_0 ),
        .I4(\g_slot[0].pe_i_i_93_n_0 ),
        .O(\g_slot[1].iw [9]));
  (* SOFT_HLUTNM = "soft_lutpair203" *) 
  LUT5 #(
    .INIT(32'h742A0440)) 
    \g_slot[1].pe_i_i_64 
       (.I0(\g_slot[0].pe_i_i_93_n_0 ),
        .I1(\g_slot[0].pe_i_i_92_n_0 ),
        .I2(phase[2]),
        .I3(phase[0]),
        .I4(\phase_reg[1]_rep_n_0 ),
        .O(\g_slot[1].iw [10]));
  LUT3 #(
    .INIT(8'hD3)) 
    \g_slot[1].pe_i_i_65 
       (.I0(phase[0]),
        .I1(phase[2]),
        .I2(\phase_reg[1]_rep_n_0 ),
        .O(\g_slot[1].pe_i_i_65_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair274" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \g_slot[1].pe_i_i_66 
       (.I0(\g_slot[0].pe_i_i_92_n_0 ),
        .I1(phase[0]),
        .I2(\g_slot[1].pe_i_i_65_n_0 ),
        .O(\g_slot[1].pe_i_i_66_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_slot[1].pe_i_i_67 
       (.I0(obs_cid[65]),
        .I1(obs_cid[89]),
        .I2(\phase_reg[1]_rep__3_n_0 ),
        .I3(obs_cid[113]),
        .I4(phase[0]),
        .I5(obs_cid[137]),
        .O(\g_slot[1].pe_i_i_67_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_slot[1].pe_i_i_68 
       (.I0(obs_cid[64]),
        .I1(obs_cid[88]),
        .I2(\phase_reg[1]_rep__3_n_0 ),
        .I3(obs_cid[112]),
        .I4(phase[0]),
        .I5(obs_cid[136]),
        .O(\g_slot[1].pe_i_i_68_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_slot[1].pe_i_i_69 
       (.I0(obs_cid[63]),
        .I1(obs_cid[87]),
        .I2(\phase_reg[1]_rep__3_n_0 ),
        .I3(obs_cid[111]),
        .I4(phase[0]),
        .I5(obs_cid[135]),
        .O(\g_slot[1].pe_i_i_69_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair255" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \g_slot[1].pe_i_i_7 
       (.I0(\g_slot[1].pe_i_i_72_n_0 ),
        .I1(phase[2]),
        .O(\g_slot[1].pe_i_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_slot[1].pe_i_i_70 
       (.I0(obs_cid[62]),
        .I1(obs_cid[86]),
        .I2(\phase_reg[1]_rep__3_n_0 ),
        .I3(obs_cid[110]),
        .I4(phase[0]),
        .I5(obs_cid[134]),
        .O(\g_slot[1].pe_i_i_70_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_slot[1].pe_i_i_71 
       (.I0(obs_cid[61]),
        .I1(obs_cid[85]),
        .I2(\phase_reg[1]_rep__3_n_0 ),
        .I3(obs_cid[109]),
        .I4(phase[0]),
        .I5(obs_cid[133]),
        .O(\g_slot[1].pe_i_i_71_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_slot[1].pe_i_i_72 
       (.I0(obs_cid[60]),
        .I1(obs_cid[84]),
        .I2(\phase_reg[1]_rep__3_n_0 ),
        .I3(obs_cid[108]),
        .I4(phase[0]),
        .I5(obs_cid[132]),
        .O(\g_slot[1].pe_i_i_72_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_slot[1].pe_i_i_73 
       (.I0(obs_active[10]),
        .I1(obs_active[14]),
        .I2(\phase_reg[1]_rep__3_n_0 ),
        .I3(obs_active[18]),
        .I4(phase[0]),
        .I5(obs_active[22]),
        .O(\g_slot[1].pe_i_i_73_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_slot[1].pe_i_i_74 
       (.I0(obs_whole[10]),
        .I1(obs_whole[14]),
        .I2(\phase_reg[1]_rep__3_n_0 ),
        .I3(obs_whole[18]),
        .I4(phase[0]),
        .I5(obs_whole[22]),
        .O(\g_slot[1].pe_i_i_74_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_slot[1].pe_i_i_75 
       (.I0(obs_defect[10]),
        .I1(obs_defect[14]),
        .I2(\phase_reg[1]_rep__2_n_0 ),
        .I3(obs_defect[18]),
        .I4(phase[0]),
        .I5(obs_defect[22]),
        .O(\g_slot[1].pe_i_i_75_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_slot[1].pe_i_i_76 
       (.I0(obs_ptr[32]),
        .I1(obs_ptr[44]),
        .I2(\phase_reg[1]_rep__0_n_0 ),
        .I3(obs_ptr[56]),
        .I4(phase[0]),
        .I5(obs_ptr[68]),
        .O(\g_slot[1].pe_i_i_76_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_slot[1].pe_i_i_77 
       (.I0(obs_ptr[31]),
        .I1(obs_ptr[43]),
        .I2(\phase_reg[1]_rep__0_n_0 ),
        .I3(obs_ptr[55]),
        .I4(phase[0]),
        .I5(obs_ptr[67]),
        .O(\g_slot[1].pe_i_i_77_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_slot[1].pe_i_i_78 
       (.I0(obs_ptr[30]),
        .I1(obs_ptr[42]),
        .I2(\phase_reg[1]_rep__0_n_0 ),
        .I3(obs_ptr[54]),
        .I4(phase[0]),
        .I5(obs_ptr[66]),
        .O(\g_slot[1].pe_i_i_78_n_0 ));
  MUXF7 \g_slot[1].pe_i_i_79 
       (.I0(\g_slot[1].pe_i_i_111_n_0 ),
        .I1(\g_slot[1].pe_i_i_112_n_0 ),
        .O(\g_slot[1].pe_i_i_79_n_0 ),
        .S(\phase_reg[1]_rep__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair256" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \g_slot[1].pe_i_i_8 
       (.I0(\g_slot[1].pe_i_i_73_n_0 ),
        .I1(phase[2]),
        .O(\g_slot[1].pe_i_i_8_n_0 ));
  MUXF7 \g_slot[1].pe_i_i_80 
       (.I0(\g_slot[1].pe_i_i_113_n_0 ),
        .I1(\g_slot[1].pe_i_i_114_n_0 ),
        .O(\g_slot[1].pe_i_i_80_n_0 ),
        .S(\phase_reg[1]_rep__0_n_0 ));
  MUXF7 \g_slot[1].pe_i_i_81 
       (.I0(\g_slot[1].pe_i_i_115_n_0 ),
        .I1(\g_slot[1].pe_i_i_116_n_0 ),
        .O(\g_slot[1].pe_i_i_81_n_0 ),
        .S(\phase_reg[1]_rep__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_slot[1].pe_i_i_82 
       (.I0(\g_slot[1].omir_reg_n_0_[46] ),
        .I1(\g_slot[1].omir_reg_n_0_[30] ),
        .I2(\phase_reg[1]_rep__1_n_0 ),
        .I3(\g_slot[1].omir_reg_n_0_[14] ),
        .I4(phase[0]),
        .I5(obs_cid[161]),
        .O(\g_slot[1].pe_i_i_82_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_slot[1].pe_i_i_83 
       (.I0(\g_slot[1].omir_reg_n_0_[45] ),
        .I1(\g_slot[1].omir_reg_n_0_[29] ),
        .I2(\phase_reg[1]_rep__1_n_0 ),
        .I3(\g_slot[1].omir_reg_n_0_[13] ),
        .I4(phase[0]),
        .I5(obs_cid[160]),
        .O(\g_slot[1].pe_i_i_83_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_slot[1].pe_i_i_84 
       (.I0(\g_slot[1].omir_reg_n_0_[44] ),
        .I1(\g_slot[1].omir_reg_n_0_[28] ),
        .I2(\phase_reg[1]_rep__1_n_0 ),
        .I3(\g_slot[1].omir_reg_n_0_[12] ),
        .I4(phase[0]),
        .I5(obs_cid[159]),
        .O(\g_slot[1].pe_i_i_84_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_slot[1].pe_i_i_85 
       (.I0(\g_slot[1].omir_reg_n_0_[43] ),
        .I1(\g_slot[1].omir_reg_n_0_[27] ),
        .I2(\phase_reg[1]_rep__1_n_0 ),
        .I3(\g_slot[1].omir_reg_n_0_[11] ),
        .I4(phase[0]),
        .I5(obs_cid[158]),
        .O(\g_slot[1].pe_i_i_85_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_slot[1].pe_i_i_86 
       (.I0(\g_slot[1].omir_reg_n_0_[42] ),
        .I1(\g_slot[1].omir_reg_n_0_[26] ),
        .I2(\phase_reg[1]_rep__1_n_0 ),
        .I3(\g_slot[1].omir_reg_n_0_[10] ),
        .I4(phase[0]),
        .I5(obs_cid[157]),
        .O(\g_slot[1].pe_i_i_86_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_slot[1].pe_i_i_87 
       (.I0(\g_slot[1].omir_reg_n_0_[41] ),
        .I1(\g_slot[1].omir_reg_n_0_[25] ),
        .I2(\phase_reg[1]_rep__1_n_0 ),
        .I3(\g_slot[1].omir_reg_n_0_[9] ),
        .I4(phase[0]),
        .I5(obs_cid[156]),
        .O(\g_slot[1].pe_i_i_87_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_slot[1].pe_i_i_88 
       (.I0(obs_cid[95]),
        .I1(obs_cid[119]),
        .I2(\phase_reg[1]_rep__1_n_0 ),
        .I3(obs_cid[143]),
        .I4(phase[0]),
        .I5(obs_cid[167]),
        .O(\g_slot[1].pe_i_i_88_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_slot[1].pe_i_i_89 
       (.I0(obs_cid[94]),
        .I1(obs_cid[118]),
        .I2(\phase_reg[1]_rep__1_n_0 ),
        .I3(obs_cid[142]),
        .I4(phase[0]),
        .I5(obs_cid[166]),
        .O(\g_slot[1].pe_i_i_89_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair261" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \g_slot[1].pe_i_i_9 
       (.I0(\g_slot[1].pe_i_i_74_n_0 ),
        .I1(phase[2]),
        .O(\g_slot[1].pe_i_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_slot[1].pe_i_i_90 
       (.I0(obs_cid[93]),
        .I1(obs_cid[117]),
        .I2(\phase_reg[1]_rep__1_n_0 ),
        .I3(obs_cid[141]),
        .I4(phase[0]),
        .I5(obs_cid[165]),
        .O(\g_slot[1].pe_i_i_90_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_slot[1].pe_i_i_91 
       (.I0(obs_cid[92]),
        .I1(obs_cid[116]),
        .I2(\phase_reg[1]_rep__1_n_0 ),
        .I3(obs_cid[140]),
        .I4(phase[0]),
        .I5(obs_cid[164]),
        .O(\g_slot[1].pe_i_i_91_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_slot[1].pe_i_i_92 
       (.I0(obs_cid[91]),
        .I1(obs_cid[115]),
        .I2(\phase_reg[1]_rep__1_n_0 ),
        .I3(obs_cid[139]),
        .I4(phase[0]),
        .I5(obs_cid[163]),
        .O(\g_slot[1].pe_i_i_92_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_slot[1].pe_i_i_93 
       (.I0(obs_cid[90]),
        .I1(obs_cid[114]),
        .I2(\phase_reg[1]_rep__1_n_0 ),
        .I3(obs_cid[138]),
        .I4(phase[0]),
        .I5(obs_cid[162]),
        .O(\g_slot[1].pe_i_i_93_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_slot[1].pe_i_i_94 
       (.I0(\g_slot[1].omir_reg_n_0_[40] ),
        .I1(\g_slot[1].omir_reg_n_0_[24] ),
        .I2(\phase_reg[1]_rep__1_n_0 ),
        .I3(\g_slot[1].omir_reg_n_0_[8] ),
        .I4(phase[0]),
        .I5(obs_active[26]),
        .O(\g_slot[1].pe_i_i_94_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_slot[1].pe_i_i_95 
       (.I0(obs_active[15]),
        .I1(obs_active[19]),
        .I2(\phase_reg[1]_rep__3_n_0 ),
        .I3(obs_active[23]),
        .I4(phase[0]),
        .I5(obs_active[27]),
        .O(\g_slot[1].pe_i_i_95_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_slot[1].pe_i_i_96 
       (.I0(obs_grown[10]),
        .I1(obs_grown[14]),
        .I2(\phase_reg[1]_rep__2_n_0 ),
        .I3(obs_grown[18]),
        .I4(phase[0]),
        .I5(obs_grown[22]),
        .O(\g_slot[1].pe_i_i_96_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_slot[1].pe_i_i_97 
       (.I0(\g_slot[1].omir_reg_n_0_[34] ),
        .I1(\g_slot[1].omir_reg_n_0_[18] ),
        .I2(\phase_reg[1]_rep__1_n_0 ),
        .I3(\g_slot[1].omir_reg_n_0_[2] ),
        .I4(phase[0]),
        .I5(obs_grown[26]),
        .O(\g_slot[1].pe_i_i_97_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_slot[1].pe_i_i_98 
       (.I0(obs_grown[15]),
        .I1(obs_grown[19]),
        .I2(\phase_reg[1]_rep__2_n_0 ),
        .I3(obs_grown[23]),
        .I4(phase[0]),
        .I5(obs_grown[27]),
        .O(\g_slot[1].pe_i_i_98_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_slot[1].pe_i_i_99 
       (.I0(\g_slot[1].own_reg_n_0_[79] ),
        .I1(\g_slot[1].own_reg_n_0_[63] ),
        .I2(\phase_reg[1]_rep__0_n_0 ),
        .I3(\g_slot[1].own_reg_n_0_[47] ),
        .I4(phase[0]),
        .I5(data0),
        .O(\g_slot[1].pe_i_i_99_n_0 ));
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
  FDRE \g_slot[2].bshA_reg[2][3] 
       (.C(clk),
        .CE(bshA[3]),
        .D(\slot_nxt[2] [0]),
        .Q(\g_slot[2].bshA_reg[2] [3]),
        .R(reset));
  FDRE \g_slot[2].bshA_reg[2][4] 
       (.C(clk),
        .CE(bshA[4]),
        .D(\slot_nxt[2] [0]),
        .Q(\g_slot[2].bshA_reg[2] [4]),
        .R(reset));
  FDRE \g_slot[2].bshB_reg[2][0] 
       (.C(clk),
        .CE(bshB[0]),
        .D(\slot_nxt[2] [0]),
        .Q(\g_slot[2].bshB_reg[2] [0]),
        .R(reset));
  FDRE \g_slot[2].bshB_reg[2][1] 
       (.C(clk),
        .CE(bshB[1]),
        .D(\slot_nxt[2] [0]),
        .Q(\g_slot[2].bshB_reg[2] [1]),
        .R(reset));
  FDRE \g_slot[2].bshB_reg[2][2] 
       (.C(clk),
        .CE(bshB[2]),
        .D(\slot_nxt[2] [0]),
        .Q(\g_slot[2].bshB_reg[2] [2]),
        .R(reset));
  FDRE \g_slot[2].bshB_reg[2][3] 
       (.C(clk),
        .CE(bshB[3]),
        .D(\slot_nxt[2] [0]),
        .Q(\g_slot[2].bshB_reg[2] [3]),
        .R(reset));
  FDRE \g_slot[2].bshB_reg[2][4] 
       (.C(clk),
        .CE(bshB[4]),
        .D(\slot_nxt[2] [0]),
        .Q(\g_slot[2].bshB_reg[2] [4]),
        .R(reset));
  FDSE \g_slot[2].omir_reg[10] 
       (.C(clk),
        .CE(\g_slot[0].own [14]),
        .D(obs_cid[163]),
        .Q(\g_slot[2].omir_reg_n_0_[10] ),
        .S(reset));
  FDRE \g_slot[2].omir_reg[11] 
       (.C(clk),
        .CE(\g_slot[0].own [14]),
        .D(obs_cid[164]),
        .Q(\g_slot[2].omir_reg_n_0_[11] ),
        .R(reset));
  FDSE \g_slot[2].omir_reg[12] 
       (.C(clk),
        .CE(\g_slot[0].own [14]),
        .D(obs_cid[165]),
        .Q(\g_slot[2].omir_reg_n_0_[12] ),
        .S(reset));
  FDSE \g_slot[2].omir_reg[13] 
       (.C(clk),
        .CE(\g_slot[0].own [14]),
        .D(obs_cid[166]),
        .Q(\g_slot[2].omir_reg_n_0_[13] ),
        .S(reset));
  FDRE \g_slot[2].omir_reg[14] 
       (.C(clk),
        .CE(\g_slot[0].own [14]),
        .D(obs_cid[167]),
        .Q(\g_slot[2].omir_reg_n_0_[14] ),
        .R(reset));
  FDRE \g_slot[2].omir_reg[15] 
       (.C(clk),
        .CE(\g_slot[0].own [14]),
        .D(\g_slot[2].g_dir[2].esrc [15]),
        .Q(\g_slot[2].omir_reg_n_0_[15] ),
        .R(reset));
  FDRE \g_slot[2].omir_reg[18] 
       (.C(clk),
        .CE(\g_slot[0].own [30]),
        .D(obs_grown[23]),
        .Q(\g_slot[2].omir_reg_n_0_[18] ),
        .R(reset));
  FDRE \g_slot[2].omir_reg[19] 
       (.C(clk),
        .CE(\g_slot[0].own [30]),
        .D(obs_ptr[69]),
        .Q(\g_slot[2].omir_reg_n_0_[19] ),
        .R(reset));
  FDRE \g_slot[2].omir_reg[20] 
       (.C(clk),
        .CE(\g_slot[0].own [30]),
        .D(obs_ptr[70]),
        .Q(\g_slot[2].omir_reg_n_0_[20] ),
        .R(reset));
  FDRE \g_slot[2].omir_reg[21] 
       (.C(clk),
        .CE(\g_slot[0].own [30]),
        .D(obs_ptr[71]),
        .Q(\g_slot[2].omir_reg_n_0_[21] ),
        .R(reset));
  FDRE \g_slot[2].omir_reg[24] 
       (.C(clk),
        .CE(\g_slot[0].own [30]),
        .D(obs_active[23]),
        .Q(\g_slot[2].omir_reg_n_0_[24] ),
        .R(reset));
  FDSE \g_slot[2].omir_reg[25] 
       (.C(clk),
        .CE(\g_slot[0].own [30]),
        .D(obs_cid[138]),
        .Q(\g_slot[2].omir_reg_n_0_[25] ),
        .S(reset));
  FDSE \g_slot[2].omir_reg[26] 
       (.C(clk),
        .CE(\g_slot[0].own [30]),
        .D(obs_cid[139]),
        .Q(\g_slot[2].omir_reg_n_0_[26] ),
        .S(reset));
  FDSE \g_slot[2].omir_reg[27] 
       (.C(clk),
        .CE(\g_slot[0].own [30]),
        .D(obs_cid[140]),
        .Q(\g_slot[2].omir_reg_n_0_[27] ),
        .S(reset));
  FDRE \g_slot[2].omir_reg[28] 
       (.C(clk),
        .CE(\g_slot[0].own [30]),
        .D(obs_cid[141]),
        .Q(\g_slot[2].omir_reg_n_0_[28] ),
        .R(reset));
  FDSE \g_slot[2].omir_reg[29] 
       (.C(clk),
        .CE(\g_slot[0].own [30]),
        .D(obs_cid[142]),
        .Q(\g_slot[2].omir_reg_n_0_[29] ),
        .S(reset));
  FDRE \g_slot[2].omir_reg[2] 
       (.C(clk),
        .CE(\g_slot[0].own [14]),
        .D(obs_grown[27]),
        .Q(\g_slot[2].omir_reg_n_0_[2] ),
        .R(reset));
  FDRE \g_slot[2].omir_reg[30] 
       (.C(clk),
        .CE(\g_slot[0].own [30]),
        .D(obs_cid[143]),
        .Q(\g_slot[2].omir_reg_n_0_[30] ),
        .R(reset));
  FDRE \g_slot[2].omir_reg[31] 
       (.C(clk),
        .CE(\g_slot[0].own [30]),
        .D(data0__0),
        .Q(\g_slot[2].omir_reg_n_0_[31] ),
        .R(reset));
  FDRE \g_slot[2].omir_reg[34] 
       (.C(clk),
        .CE(\g_slot[0].own [46]),
        .D(obs_grown[19]),
        .Q(\g_slot[2].omir_reg_n_0_[34] ),
        .R(reset));
  FDRE \g_slot[2].omir_reg[35] 
       (.C(clk),
        .CE(\g_slot[0].own [46]),
        .D(obs_ptr[57]),
        .Q(\g_slot[2].omir_reg_n_0_[35] ),
        .R(reset));
  FDRE \g_slot[2].omir_reg[36] 
       (.C(clk),
        .CE(\g_slot[0].own [46]),
        .D(obs_ptr[58]),
        .Q(\g_slot[2].omir_reg_n_0_[36] ),
        .R(reset));
  FDRE \g_slot[2].omir_reg[37] 
       (.C(clk),
        .CE(\g_slot[0].own [46]),
        .D(obs_ptr[59]),
        .Q(\g_slot[2].omir_reg_n_0_[37] ),
        .R(reset));
  FDRE \g_slot[2].omir_reg[3] 
       (.C(clk),
        .CE(\g_slot[0].own [14]),
        .D(obs_ptr[81]),
        .Q(\g_slot[2].omir_reg_n_0_[3] ),
        .R(reset));
  FDRE \g_slot[2].omir_reg[40] 
       (.C(clk),
        .CE(\g_slot[0].own [46]),
        .D(obs_active[19]),
        .Q(\g_slot[2].omir_reg_n_0_[40] ),
        .R(reset));
  FDSE \g_slot[2].omir_reg[41] 
       (.C(clk),
        .CE(\g_slot[0].own [46]),
        .D(obs_cid[114]),
        .Q(\g_slot[2].omir_reg_n_0_[41] ),
        .S(reset));
  FDSE \g_slot[2].omir_reg[42] 
       (.C(clk),
        .CE(\g_slot[0].own [46]),
        .D(obs_cid[115]),
        .Q(\g_slot[2].omir_reg_n_0_[42] ),
        .S(reset));
  FDRE \g_slot[2].omir_reg[43] 
       (.C(clk),
        .CE(\g_slot[0].own [46]),
        .D(obs_cid[116]),
        .Q(\g_slot[2].omir_reg_n_0_[43] ),
        .R(reset));
  FDRE \g_slot[2].omir_reg[44] 
       (.C(clk),
        .CE(\g_slot[0].own [46]),
        .D(obs_cid[117]),
        .Q(\g_slot[2].omir_reg_n_0_[44] ),
        .R(reset));
  FDSE \g_slot[2].omir_reg[45] 
       (.C(clk),
        .CE(\g_slot[0].own [46]),
        .D(obs_cid[118]),
        .Q(\g_slot[2].omir_reg_n_0_[45] ),
        .S(reset));
  FDRE \g_slot[2].omir_reg[46] 
       (.C(clk),
        .CE(\g_slot[0].own [46]),
        .D(obs_cid[119]),
        .Q(\g_slot[2].omir_reg_n_0_[46] ),
        .R(reset));
  FDRE \g_slot[2].omir_reg[47] 
       (.C(clk),
        .CE(\g_slot[0].own [46]),
        .D(\g_slot[2].own_reg_n_0_[47] ),
        .Q(\g_slot[2].omir_reg_n_0_[47] ),
        .R(reset));
  FDRE \g_slot[2].omir_reg[4] 
       (.C(clk),
        .CE(\g_slot[0].own [14]),
        .D(obs_ptr[82]),
        .Q(\g_slot[2].omir_reg_n_0_[4] ),
        .R(reset));
  FDRE \g_slot[2].omir_reg[50] 
       (.C(clk),
        .CE(\g_slot[0].own [62]),
        .D(obs_grown[15]),
        .Q(\g_slot[2].omir_reg_n_0_[50] ),
        .R(reset));
  FDRE \g_slot[2].omir_reg[51] 
       (.C(clk),
        .CE(\g_slot[0].own [62]),
        .D(obs_ptr[45]),
        .Q(\g_slot[2].omir_reg_n_0_[51] ),
        .R(reset));
  FDRE \g_slot[2].omir_reg[52] 
       (.C(clk),
        .CE(\g_slot[0].own [62]),
        .D(obs_ptr[46]),
        .Q(\g_slot[2].omir_reg_n_0_[52] ),
        .R(reset));
  FDRE \g_slot[2].omir_reg[53] 
       (.C(clk),
        .CE(\g_slot[0].own [62]),
        .D(obs_ptr[47]),
        .Q(\g_slot[2].omir_reg_n_0_[53] ),
        .R(reset));
  FDRE \g_slot[2].omir_reg[56] 
       (.C(clk),
        .CE(\g_slot[0].own [62]),
        .D(obs_active[15]),
        .Q(\g_slot[2].omir_reg_n_0_[56] ),
        .R(reset));
  FDSE \g_slot[2].omir_reg[57] 
       (.C(clk),
        .CE(\g_slot[0].own [62]),
        .D(obs_cid[90]),
        .Q(\g_slot[2].omir_reg_n_0_[57] ),
        .S(reset));
  FDSE \g_slot[2].omir_reg[58] 
       (.C(clk),
        .CE(\g_slot[0].own [62]),
        .D(obs_cid[91]),
        .Q(\g_slot[2].omir_reg_n_0_[58] ),
        .S(reset));
  FDSE \g_slot[2].omir_reg[59] 
       (.C(clk),
        .CE(\g_slot[0].own [62]),
        .D(obs_cid[92]),
        .Q(\g_slot[2].omir_reg_n_0_[59] ),
        .S(reset));
  FDRE \g_slot[2].omir_reg[5] 
       (.C(clk),
        .CE(\g_slot[0].own [14]),
        .D(obs_ptr[83]),
        .Q(\g_slot[2].omir_reg_n_0_[5] ),
        .R(reset));
  FDSE \g_slot[2].omir_reg[60] 
       (.C(clk),
        .CE(\g_slot[0].own [62]),
        .D(obs_cid[93]),
        .Q(\g_slot[2].omir_reg_n_0_[60] ),
        .S(reset));
  FDRE \g_slot[2].omir_reg[61] 
       (.C(clk),
        .CE(\g_slot[0].own [62]),
        .D(obs_cid[94]),
        .Q(\g_slot[2].omir_reg_n_0_[61] ),
        .R(reset));
  FDRE \g_slot[2].omir_reg[62] 
       (.C(clk),
        .CE(\g_slot[0].own [62]),
        .D(obs_cid[95]),
        .Q(\g_slot[2].omir_reg_n_0_[62] ),
        .R(reset));
  FDRE \g_slot[2].omir_reg[63] 
       (.C(clk),
        .CE(\g_slot[0].own [62]),
        .D(\g_slot[2].own_reg_n_0_[63] ),
        .Q(\g_slot[2].omir_reg_n_0_[63] ),
        .R(reset));
  FDRE \g_slot[2].omir_reg[64] 
       (.C(clk),
        .CE(\g_slot[0].own [78]),
        .D(obs_busy[11]),
        .Q(\g_slot[2].g_dir[3].esrc [64]),
        .R(reset));
  FDRE \g_slot[2].omir_reg[65] 
       (.C(clk),
        .CE(\g_slot[0].own [78]),
        .D(obs_unrooted[11]),
        .Q(\g_slot[2].g_dir[3].esrc [65]),
        .R(reset));
  FDRE \g_slot[2].omir_reg[66] 
       (.C(clk),
        .CE(\g_slot[0].own [78]),
        .D(obs_grown[11]),
        .Q(\g_slot[2].g_dir[3].esrc [66]),
        .R(reset));
  FDRE \g_slot[2].omir_reg[67] 
       (.C(clk),
        .CE(\g_slot[0].own [78]),
        .D(obs_ptr[33]),
        .Q(\g_slot[2].g_dir[3].esrc [67]),
        .R(reset));
  FDRE \g_slot[2].omir_reg[68] 
       (.C(clk),
        .CE(\g_slot[0].own [78]),
        .D(obs_ptr[34]),
        .Q(\g_slot[2].g_dir[3].esrc [68]),
        .R(reset));
  FDRE \g_slot[2].omir_reg[69] 
       (.C(clk),
        .CE(\g_slot[0].own [78]),
        .D(obs_ptr[35]),
        .Q(\g_slot[2].g_dir[3].esrc [69]),
        .R(reset));
  FDRE \g_slot[2].omir_reg[72] 
       (.C(clk),
        .CE(\g_slot[0].own [78]),
        .D(obs_active[11]),
        .Q(\g_slot[2].g_dir[3].esrc [72]),
        .R(reset));
  FDSE \g_slot[2].omir_reg[73] 
       (.C(clk),
        .CE(\g_slot[0].own [78]),
        .D(obs_cid[66]),
        .Q(\g_slot[2].g_dir[3].esrc [73]),
        .S(reset));
  FDSE \g_slot[2].omir_reg[74] 
       (.C(clk),
        .CE(\g_slot[0].own [78]),
        .D(obs_cid[67]),
        .Q(\g_slot[2].g_dir[3].esrc [74]),
        .S(reset));
  FDRE \g_slot[2].omir_reg[75] 
       (.C(clk),
        .CE(\g_slot[0].own [78]),
        .D(obs_cid[68]),
        .Q(\g_slot[2].g_dir[3].esrc [75]),
        .R(reset));
  FDSE \g_slot[2].omir_reg[76] 
       (.C(clk),
        .CE(\g_slot[0].own [78]),
        .D(obs_cid[69]),
        .Q(\g_slot[2].g_dir[3].esrc [76]),
        .S(reset));
  FDRE \g_slot[2].omir_reg[77] 
       (.C(clk),
        .CE(\g_slot[0].own [78]),
        .D(obs_cid[70]),
        .Q(\g_slot[2].g_dir[3].esrc [77]),
        .R(reset));
  FDRE \g_slot[2].omir_reg[78] 
       (.C(clk),
        .CE(\g_slot[0].own [78]),
        .D(obs_cid[71]),
        .Q(\g_slot[2].g_dir[3].esrc [78]),
        .R(reset));
  FDRE \g_slot[2].omir_reg[8] 
       (.C(clk),
        .CE(\g_slot[0].own [14]),
        .D(obs_active[27]),
        .Q(\g_slot[2].omir_reg_n_0_[8] ),
        .R(reset));
  FDSE \g_slot[2].omir_reg[9] 
       (.C(clk),
        .CE(\g_slot[0].own [14]),
        .D(obs_cid[162]),
        .Q(\g_slot[2].omir_reg_n_0_[9] ),
        .S(reset));
  FDRE \g_slot[2].own_reg[0] 
       (.C(clk),
        .CE(\g_slot[0].own [14]),
        .D(\slot_nxt[2] [0]),
        .Q(obs_busy[27]),
        .R(reset));
  FDSE \g_slot[2].own_reg[10] 
       (.C(clk),
        .CE(\g_slot[0].own [14]),
        .D(\slot_nxt[2] [10]),
        .Q(obs_cid[163]),
        .S(reset));
  FDRE \g_slot[2].own_reg[11] 
       (.C(clk),
        .CE(\g_slot[0].own [14]),
        .D(\slot_nxt[2] [11]),
        .Q(obs_cid[164]),
        .R(reset));
  FDSE \g_slot[2].own_reg[12] 
       (.C(clk),
        .CE(\g_slot[0].own [14]),
        .D(\slot_nxt[2] [12]),
        .Q(obs_cid[165]),
        .S(reset));
  FDSE \g_slot[2].own_reg[13] 
       (.C(clk),
        .CE(\g_slot[0].own [14]),
        .D(\slot_nxt[2] [13]),
        .Q(obs_cid[166]),
        .S(reset));
  FDRE \g_slot[2].own_reg[14] 
       (.C(clk),
        .CE(\g_slot[0].own [14]),
        .D(\slot_nxt[2] [14]),
        .Q(obs_cid[167]),
        .R(reset));
  FDRE \g_slot[2].own_reg[15] 
       (.C(clk),
        .CE(\g_slot[0].own [14]),
        .D(\slot_nxt[2] [15]),
        .Q(\g_slot[2].g_dir[2].esrc [15]),
        .R(reset));
  FDRE \g_slot[2].own_reg[16] 
       (.C(clk),
        .CE(\g_slot[0].own [30]),
        .D(\slot_nxt[2] [0]),
        .Q(obs_busy[23]),
        .R(reset));
  FDRE \g_slot[2].own_reg[17] 
       (.C(clk),
        .CE(\g_slot[0].own [30]),
        .D(\slot_nxt[2] [1]),
        .Q(obs_unrooted[23]),
        .R(reset));
  FDRE \g_slot[2].own_reg[18] 
       (.C(clk),
        .CE(\g_slot[0].own [30]),
        .D(\slot_nxt[2] [2]),
        .Q(obs_grown[23]),
        .R(reset));
  FDRE \g_slot[2].own_reg[19] 
       (.C(clk),
        .CE(\g_slot[0].own [30]),
        .D(\slot_nxt[2] [3]),
        .Q(obs_ptr[69]),
        .R(reset));
  FDRE \g_slot[2].own_reg[1] 
       (.C(clk),
        .CE(\g_slot[0].own [14]),
        .D(\slot_nxt[2] [1]),
        .Q(obs_unrooted[27]),
        .R(reset));
  FDRE \g_slot[2].own_reg[20] 
       (.C(clk),
        .CE(\g_slot[0].own [30]),
        .D(\slot_nxt[2] [4]),
        .Q(obs_ptr[70]),
        .R(reset));
  FDRE \g_slot[2].own_reg[21] 
       (.C(clk),
        .CE(\g_slot[0].own [30]),
        .D(\slot_nxt[2] [5]),
        .Q(obs_ptr[71]),
        .R(reset));
  FDRE \g_slot[2].own_reg[22] 
       (.C(clk),
        .CE(\g_slot[0].own [30]),
        .D(\slot_nxt[2] [6]),
        .Q(obs_defect[23]),
        .R(reset));
  FDSE \g_slot[2].own_reg[23] 
       (.C(clk),
        .CE(\g_slot[0].own [30]),
        .D(\slot_nxt[2] [7]),
        .Q(obs_whole[23]),
        .S(reset));
  FDRE \g_slot[2].own_reg[24] 
       (.C(clk),
        .CE(\g_slot[0].own [30]),
        .D(\slot_nxt[2] [8]),
        .Q(obs_active[23]),
        .R(reset));
  FDSE \g_slot[2].own_reg[25] 
       (.C(clk),
        .CE(\g_slot[0].own [30]),
        .D(\slot_nxt[2] [9]),
        .Q(obs_cid[138]),
        .S(reset));
  FDSE \g_slot[2].own_reg[26] 
       (.C(clk),
        .CE(\g_slot[0].own [30]),
        .D(\slot_nxt[2] [10]),
        .Q(obs_cid[139]),
        .S(reset));
  FDSE \g_slot[2].own_reg[27] 
       (.C(clk),
        .CE(\g_slot[0].own [30]),
        .D(\slot_nxt[2] [11]),
        .Q(obs_cid[140]),
        .S(reset));
  FDRE \g_slot[2].own_reg[28] 
       (.C(clk),
        .CE(\g_slot[0].own [30]),
        .D(\slot_nxt[2] [12]),
        .Q(obs_cid[141]),
        .R(reset));
  FDSE \g_slot[2].own_reg[29] 
       (.C(clk),
        .CE(\g_slot[0].own [30]),
        .D(\slot_nxt[2] [13]),
        .Q(obs_cid[142]),
        .S(reset));
  FDRE \g_slot[2].own_reg[2] 
       (.C(clk),
        .CE(\g_slot[0].own [14]),
        .D(\slot_nxt[2] [2]),
        .Q(obs_grown[27]),
        .R(reset));
  FDRE \g_slot[2].own_reg[30] 
       (.C(clk),
        .CE(\g_slot[0].own [30]),
        .D(\slot_nxt[2] [14]),
        .Q(obs_cid[143]),
        .R(reset));
  FDRE \g_slot[2].own_reg[31] 
       (.C(clk),
        .CE(\g_slot[0].own [30]),
        .D(\slot_nxt[2] [15]),
        .Q(data0__0),
        .R(reset));
  FDRE \g_slot[2].own_reg[32] 
       (.C(clk),
        .CE(\g_slot[0].own [46]),
        .D(\slot_nxt[2] [0]),
        .Q(obs_busy[19]),
        .R(reset));
  FDRE \g_slot[2].own_reg[33] 
       (.C(clk),
        .CE(\g_slot[0].own [46]),
        .D(\slot_nxt[2] [1]),
        .Q(obs_unrooted[19]),
        .R(reset));
  FDRE \g_slot[2].own_reg[34] 
       (.C(clk),
        .CE(\g_slot[0].own [46]),
        .D(\slot_nxt[2] [2]),
        .Q(obs_grown[19]),
        .R(reset));
  FDRE \g_slot[2].own_reg[35] 
       (.C(clk),
        .CE(\g_slot[0].own [46]),
        .D(\slot_nxt[2] [3]),
        .Q(obs_ptr[57]),
        .R(reset));
  FDRE \g_slot[2].own_reg[36] 
       (.C(clk),
        .CE(\g_slot[0].own [46]),
        .D(\slot_nxt[2] [4]),
        .Q(obs_ptr[58]),
        .R(reset));
  FDRE \g_slot[2].own_reg[37] 
       (.C(clk),
        .CE(\g_slot[0].own [46]),
        .D(\slot_nxt[2] [5]),
        .Q(obs_ptr[59]),
        .R(reset));
  FDRE \g_slot[2].own_reg[38] 
       (.C(clk),
        .CE(\g_slot[0].own [46]),
        .D(\slot_nxt[2] [6]),
        .Q(obs_defect[19]),
        .R(reset));
  FDSE \g_slot[2].own_reg[39] 
       (.C(clk),
        .CE(\g_slot[0].own [46]),
        .D(\slot_nxt[2] [7]),
        .Q(obs_whole[19]),
        .S(reset));
  FDRE \g_slot[2].own_reg[3] 
       (.C(clk),
        .CE(\g_slot[0].own [14]),
        .D(\slot_nxt[2] [3]),
        .Q(obs_ptr[81]),
        .R(reset));
  FDRE \g_slot[2].own_reg[40] 
       (.C(clk),
        .CE(\g_slot[0].own [46]),
        .D(\slot_nxt[2] [8]),
        .Q(obs_active[19]),
        .R(reset));
  FDSE \g_slot[2].own_reg[41] 
       (.C(clk),
        .CE(\g_slot[0].own [46]),
        .D(\slot_nxt[2] [9]),
        .Q(obs_cid[114]),
        .S(reset));
  FDSE \g_slot[2].own_reg[42] 
       (.C(clk),
        .CE(\g_slot[0].own [46]),
        .D(\slot_nxt[2] [10]),
        .Q(obs_cid[115]),
        .S(reset));
  FDRE \g_slot[2].own_reg[43] 
       (.C(clk),
        .CE(\g_slot[0].own [46]),
        .D(\slot_nxt[2] [11]),
        .Q(obs_cid[116]),
        .R(reset));
  FDRE \g_slot[2].own_reg[44] 
       (.C(clk),
        .CE(\g_slot[0].own [46]),
        .D(\slot_nxt[2] [12]),
        .Q(obs_cid[117]),
        .R(reset));
  FDSE \g_slot[2].own_reg[45] 
       (.C(clk),
        .CE(\g_slot[0].own [46]),
        .D(\slot_nxt[2] [13]),
        .Q(obs_cid[118]),
        .S(reset));
  FDRE \g_slot[2].own_reg[46] 
       (.C(clk),
        .CE(\g_slot[0].own [46]),
        .D(\slot_nxt[2] [14]),
        .Q(obs_cid[119]),
        .R(reset));
  FDRE \g_slot[2].own_reg[47] 
       (.C(clk),
        .CE(\g_slot[0].own [46]),
        .D(\slot_nxt[2] [15]),
        .Q(\g_slot[2].own_reg_n_0_[47] ),
        .R(reset));
  FDRE \g_slot[2].own_reg[48] 
       (.C(clk),
        .CE(\g_slot[0].own [62]),
        .D(\slot_nxt[2] [0]),
        .Q(obs_busy[15]),
        .R(reset));
  FDRE \g_slot[2].own_reg[49] 
       (.C(clk),
        .CE(\g_slot[0].own [62]),
        .D(\slot_nxt[2] [1]),
        .Q(obs_unrooted[15]),
        .R(reset));
  FDRE \g_slot[2].own_reg[4] 
       (.C(clk),
        .CE(\g_slot[0].own [14]),
        .D(\slot_nxt[2] [4]),
        .Q(obs_ptr[82]),
        .R(reset));
  FDRE \g_slot[2].own_reg[50] 
       (.C(clk),
        .CE(\g_slot[0].own [62]),
        .D(\slot_nxt[2] [2]),
        .Q(obs_grown[15]),
        .R(reset));
  FDRE \g_slot[2].own_reg[51] 
       (.C(clk),
        .CE(\g_slot[0].own [62]),
        .D(\slot_nxt[2] [3]),
        .Q(obs_ptr[45]),
        .R(reset));
  FDRE \g_slot[2].own_reg[52] 
       (.C(clk),
        .CE(\g_slot[0].own [62]),
        .D(\slot_nxt[2] [4]),
        .Q(obs_ptr[46]),
        .R(reset));
  FDRE \g_slot[2].own_reg[53] 
       (.C(clk),
        .CE(\g_slot[0].own [62]),
        .D(\slot_nxt[2] [5]),
        .Q(obs_ptr[47]),
        .R(reset));
  FDRE \g_slot[2].own_reg[54] 
       (.C(clk),
        .CE(\g_slot[0].own [62]),
        .D(\slot_nxt[2] [6]),
        .Q(obs_defect[15]),
        .R(reset));
  FDSE \g_slot[2].own_reg[55] 
       (.C(clk),
        .CE(\g_slot[0].own [62]),
        .D(\slot_nxt[2] [7]),
        .Q(obs_whole[15]),
        .S(reset));
  FDRE \g_slot[2].own_reg[56] 
       (.C(clk),
        .CE(\g_slot[0].own [62]),
        .D(\slot_nxt[2] [8]),
        .Q(obs_active[15]),
        .R(reset));
  FDSE \g_slot[2].own_reg[57] 
       (.C(clk),
        .CE(\g_slot[0].own [62]),
        .D(\slot_nxt[2] [9]),
        .Q(obs_cid[90]),
        .S(reset));
  FDSE \g_slot[2].own_reg[58] 
       (.C(clk),
        .CE(\g_slot[0].own [62]),
        .D(\slot_nxt[2] [10]),
        .Q(obs_cid[91]),
        .S(reset));
  FDSE \g_slot[2].own_reg[59] 
       (.C(clk),
        .CE(\g_slot[0].own [62]),
        .D(\slot_nxt[2] [11]),
        .Q(obs_cid[92]),
        .S(reset));
  FDRE \g_slot[2].own_reg[5] 
       (.C(clk),
        .CE(\g_slot[0].own [14]),
        .D(\slot_nxt[2] [5]),
        .Q(obs_ptr[83]),
        .R(reset));
  FDSE \g_slot[2].own_reg[60] 
       (.C(clk),
        .CE(\g_slot[0].own [62]),
        .D(\slot_nxt[2] [12]),
        .Q(obs_cid[93]),
        .S(reset));
  FDRE \g_slot[2].own_reg[61] 
       (.C(clk),
        .CE(\g_slot[0].own [62]),
        .D(\slot_nxt[2] [13]),
        .Q(obs_cid[94]),
        .R(reset));
  FDRE \g_slot[2].own_reg[62] 
       (.C(clk),
        .CE(\g_slot[0].own [62]),
        .D(\slot_nxt[2] [14]),
        .Q(obs_cid[95]),
        .R(reset));
  FDRE \g_slot[2].own_reg[63] 
       (.C(clk),
        .CE(\g_slot[0].own [62]),
        .D(\slot_nxt[2] [15]),
        .Q(\g_slot[2].own_reg_n_0_[63] ),
        .R(reset));
  FDRE \g_slot[2].own_reg[64] 
       (.C(clk),
        .CE(\g_slot[0].own [78]),
        .D(\slot_nxt[2] [0]),
        .Q(obs_busy[11]),
        .R(reset));
  FDRE \g_slot[2].own_reg[65] 
       (.C(clk),
        .CE(\g_slot[0].own [78]),
        .D(\slot_nxt[2] [1]),
        .Q(obs_unrooted[11]),
        .R(reset));
  FDRE \g_slot[2].own_reg[66] 
       (.C(clk),
        .CE(\g_slot[0].own [78]),
        .D(\slot_nxt[2] [2]),
        .Q(obs_grown[11]),
        .R(reset));
  FDRE \g_slot[2].own_reg[67] 
       (.C(clk),
        .CE(\g_slot[0].own [78]),
        .D(\slot_nxt[2] [3]),
        .Q(obs_ptr[33]),
        .R(reset));
  FDRE \g_slot[2].own_reg[68] 
       (.C(clk),
        .CE(\g_slot[0].own [78]),
        .D(\slot_nxt[2] [4]),
        .Q(obs_ptr[34]),
        .R(reset));
  FDRE \g_slot[2].own_reg[69] 
       (.C(clk),
        .CE(\g_slot[0].own [78]),
        .D(\slot_nxt[2] [5]),
        .Q(obs_ptr[35]),
        .R(reset));
  FDRE \g_slot[2].own_reg[6] 
       (.C(clk),
        .CE(\g_slot[0].own [14]),
        .D(\slot_nxt[2] [6]),
        .Q(obs_defect[27]),
        .R(reset));
  FDRE \g_slot[2].own_reg[70] 
       (.C(clk),
        .CE(\g_slot[0].own [78]),
        .D(\slot_nxt[2] [6]),
        .Q(obs_defect[11]),
        .R(reset));
  FDSE \g_slot[2].own_reg[71] 
       (.C(clk),
        .CE(\g_slot[0].own [78]),
        .D(\slot_nxt[2] [7]),
        .Q(obs_whole[11]),
        .S(reset));
  FDRE \g_slot[2].own_reg[72] 
       (.C(clk),
        .CE(\g_slot[0].own [78]),
        .D(\slot_nxt[2] [8]),
        .Q(obs_active[11]),
        .R(reset));
  FDSE \g_slot[2].own_reg[73] 
       (.C(clk),
        .CE(\g_slot[0].own [78]),
        .D(\slot_nxt[2] [9]),
        .Q(obs_cid[66]),
        .S(reset));
  FDSE \g_slot[2].own_reg[74] 
       (.C(clk),
        .CE(\g_slot[0].own [78]),
        .D(\slot_nxt[2] [10]),
        .Q(obs_cid[67]),
        .S(reset));
  FDRE \g_slot[2].own_reg[75] 
       (.C(clk),
        .CE(\g_slot[0].own [78]),
        .D(\slot_nxt[2] [11]),
        .Q(obs_cid[68]),
        .R(reset));
  FDSE \g_slot[2].own_reg[76] 
       (.C(clk),
        .CE(\g_slot[0].own [78]),
        .D(\slot_nxt[2] [12]),
        .Q(obs_cid[69]),
        .S(reset));
  FDRE \g_slot[2].own_reg[77] 
       (.C(clk),
        .CE(\g_slot[0].own [78]),
        .D(\slot_nxt[2] [13]),
        .Q(obs_cid[70]),
        .R(reset));
  FDRE \g_slot[2].own_reg[78] 
       (.C(clk),
        .CE(\g_slot[0].own [78]),
        .D(\slot_nxt[2] [14]),
        .Q(obs_cid[71]),
        .R(reset));
  FDRE \g_slot[2].own_reg[79] 
       (.C(clk),
        .CE(\g_slot[0].own [78]),
        .D(\slot_nxt[2] [15]),
        .Q(\g_slot[2].own_reg_n_0_[79] ),
        .R(reset));
  FDSE \g_slot[2].own_reg[7] 
       (.C(clk),
        .CE(\g_slot[0].own [14]),
        .D(\slot_nxt[2] [7]),
        .Q(obs_whole[27]),
        .S(reset));
  FDRE \g_slot[2].own_reg[8] 
       (.C(clk),
        .CE(\g_slot[0].own [14]),
        .D(\slot_nxt[2] [8]),
        .Q(obs_active[27]),
        .R(reset));
  FDSE \g_slot[2].own_reg[9] 
       (.C(clk),
        .CE(\g_slot[0].own [14]),
        .D(\slot_nxt[2] [9]),
        .Q(obs_cid[162]),
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
  (* OFF_PB = "15" *) 
  (* OFF_PTR = "3" *) 
  (* OFF_UNR = "1" *) 
  (* OFF_WHL = "7" *) 
  (* ONE_ONE = "0" *) 
  (* STW = "16" *) 
  (* ST_DROP = "3'b001" *) 
  (* ST_GH = "3'b100" *) 
  (* ST_GW = "3'b010" *) 
  (* ST_IDLE = "3'b000" *) 
  (* ST_MH = "3'b101" *) 
  (* ST_MW = "3'b011" *) 
  (* SYN_IDX = "-1" *) 
  (* ZZZ_ANCHOR = "0" *) 
  snowflake_pe__3 \g_slot[2].pe_i 
       (.ab_active(\g_slot[2].pe_i_i_8_n_0 ),
        .ab_cid({\g_slot[2].pe_i_i_2_n_0 ,\g_slot[2].pe_i_i_3_n_0 ,\g_slot[2].pe_i_i_4_n_0 ,\g_slot[2].pe_i_i_5_n_0 ,\g_slot[2].pe_i_i_6_n_0 ,\g_slot[2].pe_i_i_7_n_0 }),
        .ab_defect(\g_slot[2].pe_i_i_10_n_0 ),
        .ab_ptr({\g_slot[2].pe_i_i_11_n_0 ,\g_slot[2].pe_i_i_12_n_0 ,\g_slot[2].pe_i_i_13_n_0 }),
        .ab_whole(\g_slot[2].pe_i_i_9_n_0 ),
        .clk(1'b0),
        .e_grown(\g_slot[2].e_grown ),
        .m_pass({m_pass_w,\g_slot[0].pe_i_i_26_n_0 }),
        .nb_active({\g_slot[2].pe_i_i_35_n_0 ,\g_slot[2].pe_i_i_36_n_0 ,p_11_in,p_14_in}),
        .nb_cid({\g_slot[2].pe_i_i_17_n_0 ,\g_slot[2].pe_i_i_18_n_0 ,\g_slot[2].pe_i_i_19_n_0 ,\g_slot[2].pe_i_i_20_n_0 ,\g_slot[2].pe_i_i_21_n_0 ,\g_slot[2].pe_i_i_22_n_0 ,\g_slot[2].pe_i_i_23_n_0 ,\g_slot[2].pe_i_i_24_n_0 ,\g_slot[2].pe_i_i_25_n_0 ,\g_slot[2].pe_i_i_26_n_0 ,\g_slot[2].pe_i_i_27_n_0 ,\g_slot[2].pe_i_i_28_n_0 ,\g_slot[4].nb_cid [5:0],\g_slot[0].pe_i_i_15_n_0 ,\g_slot[0].pe_i_i_16_n_0 ,\g_slot[0].pe_i_i_17_n_0 ,\g_slot[0].pe_i_i_18_n_0 ,\g_slot[0].pe_i_i_19_n_0 ,\g_slot[0].pe_i_i_20_n_0 }),
        .nb_grown({\g_slot[2].pe_i_i_38_n_0 ,\g_slot[2].pe_i_i_39_n_0 ,\g_slot[4].nb_grown [0],\g_slot[0].pe_i_i_23_n_0 }),
        .nb_push({\g_slot[2].pe_i_i_41_n_0 ,\g_slot[2].nb_push }),
        .nb_valid({\g_slot[4].g_dir[3].nbv ,\g_slot[1].pe_i_i_18_n_0 ,1'b1,1'b1}),
        .o_busy_c(\NLW_g_slot[2].pe_i_o_busy_c_UNCONNECTED ),
        .o_pulse(\NLW_g_slot[2].pe_i_o_pulse_UNCONNECTED ),
        .o_push(\NLW_g_slot[2].pe_i_o_push_UNCONNECTED [3:0]),
        .p_has_above(\g_slot[2].iw [6]),
        .p_id(\g_slot[2].iw [5:0]),
        .p_is_bnd(\g_slot[2].iw [7]),
        .p_is_bot(\g_slot[2].iw [9]),
        .p_is_syn(\g_slot[2].iw [10]),
        .p_is_top(\g_slot[2].iw [8]),
        .reset(1'b0),
        .st_in({p_0_in35_in,\g_slot[3].nb_cid [5:0],p_12_in,p_0_in105_in,\g_slot[2].pe_i_i_47_n_0 ,p_0_in11_in,\g_slot[3].nb_grown [0],\g_slot[2].pe_i_i_51_n_0 ,1'b0}),
        .st_out(\slot_nxt[2] ),
        .stage({stage_reg,\dbg_stage[0]_i_1_n_0 }),
        .syn_bit(\g_slot[2].pe_i_i_1_n_0 ),
        .zzz_never_used(1'b0));
  LUT6 #(
    .INIT(64'hF1F1F1E0E0E0F1E0)) 
    \g_slot[2].pe_i_i_1 
       (.I0(\g_slot[1].pe_i_i_65_n_0 ),
        .I1(\g_slot[0].pe_i_i_93_n_0 ),
        .I2(\syn_buf_reg_n_0_[3] ),
        .I3(\syn_buf_reg_n_0_[1] ),
        .I4(\g_slot[2].pe_i_i_63_n_0 ),
        .I5(\syn_buf_reg_n_0_[0] ),
        .O(\g_slot[2].pe_i_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair295" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \g_slot[2].pe_i_i_10 
       (.I0(\g_slot[2].pe_i_i_72_n_0 ),
        .I1(phase[2]),
        .O(\g_slot[2].pe_i_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_slot[2].pe_i_i_100 
       (.I0(\g_slot[2].own_reg_n_0_[63] ),
        .I1(\g_slot[2].own_reg_n_0_[47] ),
        .I2(\phase_reg[1]_rep__0_n_0 ),
        .I3(data0__0),
        .I4(phase[0]),
        .I5(\g_slot[2].g_dir[2].esrc [15]),
        .O(\g_slot[2].pe_i_i_100_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_slot[2].pe_i_i_101 
       (.I0(obs_whole[15]),
        .I1(obs_whole[19]),
        .I2(\phase_reg[1]_rep__3_n_0 ),
        .I3(obs_whole[23]),
        .I4(phase[0]),
        .I5(obs_whole[27]),
        .O(\g_slot[2].pe_i_i_101_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_slot[2].pe_i_i_102 
       (.I0(obs_defect[15]),
        .I1(obs_defect[19]),
        .I2(\phase_reg[1]_rep__2_n_0 ),
        .I3(obs_defect[23]),
        .I4(phase[0]),
        .I5(obs_defect[27]),
        .O(\g_slot[2].pe_i_i_102_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_slot[2].pe_i_i_103 
       (.I0(obs_ptr[47]),
        .I1(obs_ptr[59]),
        .I2(\phase_reg[1]_rep__0_n_0 ),
        .I3(obs_ptr[71]),
        .I4(phase[0]),
        .I5(obs_ptr[83]),
        .O(\g_slot[2].pe_i_i_103_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_slot[2].pe_i_i_104 
       (.I0(obs_ptr[46]),
        .I1(obs_ptr[58]),
        .I2(\phase_reg[1]_rep__0_n_0 ),
        .I3(obs_ptr[70]),
        .I4(phase[0]),
        .I5(obs_ptr[82]),
        .O(\g_slot[2].pe_i_i_104_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_slot[2].pe_i_i_105 
       (.I0(obs_ptr[45]),
        .I1(obs_ptr[57]),
        .I2(\phase_reg[1]_rep__2_n_0 ),
        .I3(obs_ptr[69]),
        .I4(phase[0]),
        .I5(obs_ptr[81]),
        .O(\g_slot[2].pe_i_i_105_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_slot[2].pe_i_i_106 
       (.I0(obs_unrooted[15]),
        .I1(obs_unrooted[19]),
        .I2(\phase_reg[1]_rep__1_n_0 ),
        .I3(obs_unrooted[23]),
        .I4(phase[0]),
        .I5(obs_unrooted[27]),
        .O(\g_slot[2].pe_i_i_106_n_0 ));
  LUT5 #(
    .INIT(32'h20202F20)) 
    \g_slot[2].pe_i_i_107 
       (.I0(obs_growth[55]),
        .I1(obs_growth[54]),
        .I2(phase[0]),
        .I3(obs_growth[71]),
        .I4(obs_growth[70]),
        .O(\g_slot[2].pe_i_i_107_n_0 ));
  LUT5 #(
    .INIT(32'h20202F20)) 
    \g_slot[2].pe_i_i_108 
       (.I0(obs_growth[23]),
        .I1(obs_growth[22]),
        .I2(phase[0]),
        .I3(obs_growth[39]),
        .I4(obs_growth[38]),
        .O(\g_slot[2].pe_i_i_108_n_0 ));
  LUT5 #(
    .INIT(32'h20202F20)) 
    \g_slot[2].pe_i_i_109 
       (.I0(\g_slot[2].g_dir[2].esrc [17]),
        .I1(\g_slot[2].g_dir[2].esrc [16]),
        .I2(phase[0]),
        .I3(obs_unrooted[27]),
        .I4(obs_busy[27]),
        .O(\g_slot[2].pe_i_i_109_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair249" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \g_slot[2].pe_i_i_11 
       (.I0(\g_slot[2].pe_i_i_73_n_0 ),
        .I1(phase[2]),
        .O(\g_slot[2].pe_i_i_11_n_0 ));
  LUT5 #(
    .INIT(32'h20202F20)) 
    \g_slot[2].pe_i_i_110 
       (.I0(\g_eslot[6].eomir_reg_n_0_[7] ),
        .I1(\g_eslot[6].eomir_reg_n_0_[6] ),
        .I2(phase[0]),
        .I3(\g_eslot[6].eomir_reg_n_0_[4] ),
        .I4(\g_eslot[6].eomir_reg_n_0_[3] ),
        .O(\g_slot[2].pe_i_i_110_n_0 ));
  LUT5 #(
    .INIT(32'h20202F20)) 
    \g_slot[2].pe_i_i_111 
       (.I0(obs_growth[57]),
        .I1(obs_growth[56]),
        .I2(phase[0]),
        .I3(obs_growth[73]),
        .I4(obs_growth[72]),
        .O(\g_slot[2].pe_i_i_111_n_0 ));
  LUT5 #(
    .INIT(32'h20202F20)) 
    \g_slot[2].pe_i_i_112 
       (.I0(obs_growth[25]),
        .I1(obs_growth[24]),
        .I2(phase[0]),
        .I3(obs_growth[41]),
        .I4(obs_growth[40]),
        .O(\g_slot[2].pe_i_i_112_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FBFFFB00)) 
    \g_slot[2].pe_i_i_113 
       (.I0(phase[0]),
        .I1(\g_slot[2].g_dir[3].esrc [68]),
        .I2(\phase_reg[1]_rep__0_n_0 ),
        .I3(phase[2]),
        .I4(\g_slot[2].pe_i_i_74_n_0 ),
        .I5(p_0_in18_in),
        .O(\g_slot[2].pe_i_i_113_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_slot[2].pe_i_i_114 
       (.I0(\g_slot[2].omir_reg_n_0_[35] ),
        .I1(\g_slot[2].omir_reg_n_0_[19] ),
        .I2(\phase_reg[1]_rep__3_n_0 ),
        .I3(\g_slot[2].omir_reg_n_0_[3] ),
        .I4(phase[0]),
        .I5(obs_ptr[81]),
        .O(\g_slot[2].pe_i_i_114_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FEFAFE05)) 
    \g_slot[2].pe_i_i_115 
       (.I0(phase[0]),
        .I1(\g_slot[2].omir_reg_n_0_[53] ),
        .I2(\phase_reg[1]_rep__3_n_0 ),
        .I3(phase[2]),
        .I4(\g_slot[2].pe_i_i_117_n_0 ),
        .I5(p_0_in17_in),
        .O(\g_slot[2].pe_i_i_115_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair249" *) 
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \g_slot[2].pe_i_i_116 
       (.I0(phase[0]),
        .I1(\g_slot[2].g_dir[3].esrc [69]),
        .I2(\phase_reg[1]_rep__0_n_0 ),
        .I3(phase[2]),
        .I4(\g_slot[2].pe_i_i_73_n_0 ),
        .O(p_0_in18_in));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_slot[2].pe_i_i_117 
       (.I0(\g_slot[2].omir_reg_n_0_[37] ),
        .I1(\g_slot[2].omir_reg_n_0_[21] ),
        .I2(\phase_reg[1]_rep__3_n_0 ),
        .I3(\g_slot[2].omir_reg_n_0_[5] ),
        .I4(phase[0]),
        .I5(obs_ptr[83]),
        .O(\g_slot[2].pe_i_i_117_n_0 ));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \g_slot[2].pe_i_i_118 
       (.I0(phase[0]),
        .I1(\g_slot[2].omir_reg_n_0_[52] ),
        .I2(\phase_reg[1]_rep__3_n_0 ),
        .I3(phase[2]),
        .I4(\g_slot[2].pe_i_i_119_n_0 ),
        .O(p_0_in17_in));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_slot[2].pe_i_i_119 
       (.I0(\g_slot[2].omir_reg_n_0_[36] ),
        .I1(\g_slot[2].omir_reg_n_0_[20] ),
        .I2(\phase_reg[1]_rep__3_n_0 ),
        .I3(\g_slot[2].omir_reg_n_0_[4] ),
        .I4(phase[0]),
        .I5(obs_ptr[82]),
        .O(\g_slot[2].pe_i_i_119_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair287" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \g_slot[2].pe_i_i_12 
       (.I0(\g_slot[2].pe_i_i_74_n_0 ),
        .I1(phase[2]),
        .O(\g_slot[2].pe_i_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair287" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \g_slot[2].pe_i_i_13 
       (.I0(\g_slot[2].pe_i_i_75_n_0 ),
        .I1(phase[2]),
        .O(\g_slot[2].pe_i_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h0A0A0A0A0A3A0A0A)) 
    \g_slot[2].pe_i_i_14 
       (.I0(\g_slot[2].pe_i_i_76_n_0 ),
        .I1(\phase_reg[1]_rep__0_n_0 ),
        .I2(phase[2]),
        .I3(\g_slot[2].g_dir[3].esrc [64]),
        .I4(\g_slot[2].g_dir[3].esrc [65]),
        .I5(phase[0]),
        .O(\g_slot[2].e_grown [3]));
  LUT6 #(
    .INIT(64'h0A0A0A0A0A3A0A0A)) 
    \g_slot[2].pe_i_i_15 
       (.I0(\g_slot[2].pe_i_i_77_n_0 ),
        .I1(\phase_reg[1]_rep__0_n_0 ),
        .I2(phase[2]),
        .I3(\g_eslot[6].eomir_reg_n_0_[9] ),
        .I4(\g_eslot[6].eomir_reg_n_0_[10] ),
        .I5(phase[0]),
        .O(\g_slot[2].e_grown [2]));
  LUT6 #(
    .INIT(64'h0A0A0A0A0A3A0A0A)) 
    \g_slot[2].pe_i_i_16 
       (.I0(\g_slot[2].pe_i_i_78_n_0 ),
        .I1(\phase_reg[1]_rep__0_n_0 ),
        .I2(phase[2]),
        .I3(obs_growth[12]),
        .I4(obs_growth[13]),
        .I5(phase[0]),
        .O(\g_slot[2].e_grown [1]));
  (* SOFT_HLUTNM = "soft_lutpair241" *) 
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \g_slot[2].pe_i_i_17 
       (.I0(phase[0]),
        .I1(\g_slot[2].g_dir[3].esrc [78]),
        .I2(\phase_reg[1]_rep__3_n_0 ),
        .I3(phase[2]),
        .I4(\g_slot[2].pe_i_i_64_n_0 ),
        .O(\g_slot[2].pe_i_i_17_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair242" *) 
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \g_slot[2].pe_i_i_18 
       (.I0(phase[0]),
        .I1(\g_slot[2].g_dir[3].esrc [77]),
        .I2(\phase_reg[1]_rep__3_n_0 ),
        .I3(phase[2]),
        .I4(\g_slot[2].pe_i_i_65_n_0 ),
        .O(\g_slot[2].pe_i_i_18_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair243" *) 
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \g_slot[2].pe_i_i_19 
       (.I0(phase[0]),
        .I1(\g_slot[2].g_dir[3].esrc [76]),
        .I2(\phase_reg[1]_rep__3_n_0 ),
        .I3(phase[2]),
        .I4(\g_slot[2].pe_i_i_66_n_0 ),
        .O(\g_slot[2].pe_i_i_19_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair241" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \g_slot[2].pe_i_i_2 
       (.I0(\g_slot[2].pe_i_i_64_n_0 ),
        .I1(phase[2]),
        .O(\g_slot[2].pe_i_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair244" *) 
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \g_slot[2].pe_i_i_20 
       (.I0(phase[0]),
        .I1(\g_slot[2].g_dir[3].esrc [75]),
        .I2(\phase_reg[1]_rep__3_n_0 ),
        .I3(phase[2]),
        .I4(\g_slot[2].pe_i_i_67_n_0 ),
        .O(\g_slot[2].pe_i_i_20_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair245" *) 
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \g_slot[2].pe_i_i_21 
       (.I0(phase[0]),
        .I1(\g_slot[2].g_dir[3].esrc [74]),
        .I2(\phase_reg[1]_rep__3_n_0 ),
        .I3(phase[2]),
        .I4(\g_slot[2].pe_i_i_68_n_0 ),
        .O(\g_slot[2].pe_i_i_21_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair246" *) 
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \g_slot[2].pe_i_i_22 
       (.I0(phase[0]),
        .I1(\g_slot[2].g_dir[3].esrc [73]),
        .I2(\phase_reg[1]_rep__3_n_0 ),
        .I3(phase[2]),
        .I4(\g_slot[2].pe_i_i_69_n_0 ),
        .O(\g_slot[2].pe_i_i_22_n_0 ));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \g_slot[2].pe_i_i_23 
       (.I0(phase[0]),
        .I1(\g_slot[2].omir_reg_n_0_[62] ),
        .I2(\phase_reg[1]_rep__1_n_0 ),
        .I3(phase[2]),
        .I4(\g_slot[2].pe_i_i_79_n_0 ),
        .O(\g_slot[2].pe_i_i_23_n_0 ));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \g_slot[2].pe_i_i_24 
       (.I0(phase[0]),
        .I1(\g_slot[2].omir_reg_n_0_[61] ),
        .I2(\phase_reg[1]_rep__1_n_0 ),
        .I3(phase[2]),
        .I4(\g_slot[2].pe_i_i_80_n_0 ),
        .O(\g_slot[2].pe_i_i_24_n_0 ));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \g_slot[2].pe_i_i_25 
       (.I0(phase[0]),
        .I1(\g_slot[2].omir_reg_n_0_[60] ),
        .I2(\phase_reg[1]_rep__1_n_0 ),
        .I3(phase[2]),
        .I4(\g_slot[2].pe_i_i_81_n_0 ),
        .O(\g_slot[2].pe_i_i_25_n_0 ));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \g_slot[2].pe_i_i_26 
       (.I0(phase[0]),
        .I1(\g_slot[2].omir_reg_n_0_[59] ),
        .I2(\phase_reg[1]_rep__1_n_0 ),
        .I3(phase[2]),
        .I4(\g_slot[2].pe_i_i_82_n_0 ),
        .O(\g_slot[2].pe_i_i_26_n_0 ));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \g_slot[2].pe_i_i_27 
       (.I0(phase[0]),
        .I1(\g_slot[2].omir_reg_n_0_[58] ),
        .I2(\phase_reg[1]_rep__1_n_0 ),
        .I3(phase[2]),
        .I4(\g_slot[2].pe_i_i_83_n_0 ),
        .O(\g_slot[2].pe_i_i_27_n_0 ));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \g_slot[2].pe_i_i_28 
       (.I0(phase[0]),
        .I1(\g_slot[2].omir_reg_n_0_[57] ),
        .I2(\phase_reg[1]_rep__1_n_0 ),
        .I3(phase[2]),
        .I4(\g_slot[2].pe_i_i_84_n_0 ),
        .O(\g_slot[2].pe_i_i_28_n_0 ));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \g_slot[2].pe_i_i_29 
       (.I0(phase[0]),
        .I1(obs_cid[77]),
        .I2(\phase_reg[1]_rep__1_n_0 ),
        .I3(phase[2]),
        .I4(\g_slot[2].pe_i_i_85_n_0 ),
        .O(\g_slot[4].nb_cid [5]));
  (* SOFT_HLUTNM = "soft_lutpair242" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \g_slot[2].pe_i_i_3 
       (.I0(\g_slot[2].pe_i_i_65_n_0 ),
        .I1(phase[2]),
        .O(\g_slot[2].pe_i_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \g_slot[2].pe_i_i_30 
       (.I0(phase[0]),
        .I1(obs_cid[76]),
        .I2(\phase_reg[1]_rep__1_n_0 ),
        .I3(phase[2]),
        .I4(\g_slot[2].pe_i_i_86_n_0 ),
        .O(\g_slot[4].nb_cid [4]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \g_slot[2].pe_i_i_31 
       (.I0(phase[0]),
        .I1(obs_cid[75]),
        .I2(\phase_reg[1]_rep__1_n_0 ),
        .I3(phase[2]),
        .I4(\g_slot[2].pe_i_i_87_n_0 ),
        .O(\g_slot[4].nb_cid [3]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \g_slot[2].pe_i_i_32 
       (.I0(phase[0]),
        .I1(obs_cid[74]),
        .I2(\phase_reg[1]_rep__1_n_0 ),
        .I3(phase[2]),
        .I4(\g_slot[2].pe_i_i_88_n_0 ),
        .O(\g_slot[4].nb_cid [2]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \g_slot[2].pe_i_i_33 
       (.I0(phase[0]),
        .I1(obs_cid[73]),
        .I2(\phase_reg[1]_rep__1_n_0 ),
        .I3(phase[2]),
        .I4(\g_slot[2].pe_i_i_89_n_0 ),
        .O(\g_slot[4].nb_cid [1]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \g_slot[2].pe_i_i_34 
       (.I0(phase[0]),
        .I1(obs_cid[72]),
        .I2(\phase_reg[1]_rep__1_n_0 ),
        .I3(phase[2]),
        .I4(\g_slot[2].pe_i_i_90_n_0 ),
        .O(\g_slot[4].nb_cid [0]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \g_slot[2].pe_i_i_35 
       (.I0(phase[0]),
        .I1(\g_slot[2].g_dir[3].esrc [72]),
        .I2(\phase_reg[1]_rep__3_n_0 ),
        .I3(phase[2]),
        .I4(\g_slot[2].pe_i_i_70_n_0 ),
        .O(\g_slot[2].pe_i_i_35_n_0 ));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \g_slot[2].pe_i_i_36 
       (.I0(phase[0]),
        .I1(\g_slot[2].omir_reg_n_0_[56] ),
        .I2(\phase_reg[1]_rep__3_n_0 ),
        .I3(phase[2]),
        .I4(\g_slot[2].pe_i_i_91_n_0 ),
        .O(\g_slot[2].pe_i_i_36_n_0 ));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \g_slot[2].pe_i_i_37 
       (.I0(phase[0]),
        .I1(obs_active[12]),
        .I2(\phase_reg[1]_rep__3_n_0 ),
        .I3(phase[2]),
        .I4(\g_slot[2].pe_i_i_92_n_0 ),
        .O(p_11_in));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \g_slot[2].pe_i_i_38 
       (.I0(phase[0]),
        .I1(\g_slot[2].g_dir[3].esrc [66]),
        .I2(\phase_reg[1]_rep__2_n_0 ),
        .I3(phase[2]),
        .I4(\g_slot[2].pe_i_i_93_n_0 ),
        .O(\g_slot[2].pe_i_i_38_n_0 ));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \g_slot[2].pe_i_i_39 
       (.I0(phase[0]),
        .I1(\g_slot[2].omir_reg_n_0_[50] ),
        .I2(\phase_reg[1]_rep__1_n_0 ),
        .I3(phase[2]),
        .I4(\g_slot[2].pe_i_i_94_n_0 ),
        .O(\g_slot[2].pe_i_i_39_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair243" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \g_slot[2].pe_i_i_4 
       (.I0(\g_slot[2].pe_i_i_66_n_0 ),
        .I1(phase[2]),
        .O(\g_slot[2].pe_i_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \g_slot[2].pe_i_i_40 
       (.I0(phase[0]),
        .I1(obs_grown[12]),
        .I2(\phase_reg[1]_rep__2_n_0 ),
        .I3(phase[2]),
        .I4(\g_slot[2].pe_i_i_95_n_0 ),
        .O(\g_slot[4].nb_grown [0]));
  (* SOFT_HLUTNM = "soft_lutpair285" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \g_slot[2].pe_i_i_41 
       (.I0(\g_slot[2].nb_push119_out ),
        .I1(\g_slot[2].pe_i_i_97_n_0 ),
        .I2(phase[2]),
        .O(\g_slot[2].pe_i_i_41_n_0 ));
  LUT6 #(
    .INIT(64'h0020AA8800200000)) 
    \g_slot[2].pe_i_i_42 
       (.I0(\g_slot[2].nb_push1 ),
        .I1(phase[0]),
        .I2(\g_slot[2].omir_reg_n_0_[63] ),
        .I3(\phase_reg[1]_rep__2_n_0 ),
        .I4(phase[2]),
        .I5(\g_slot[2].pe_i_i_99_n_0 ),
        .O(\g_slot[2].nb_push [2]));
  (* SOFT_HLUTNM = "soft_lutpair230" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    \g_slot[2].pe_i_i_43 
       (.I0(p_0_in16_in[2]),
        .I1(p_0_in16_in[0]),
        .I2(p_0_in16_in[1]),
        .I3(p_0_in34_in),
        .O(\g_slot[2].nb_push [1]));
  (* SOFT_HLUTNM = "soft_lutpair248" *) 
  LUT5 #(
    .INIT(32'h01080000)) 
    \g_slot[2].pe_i_i_44 
       (.I0(p_0_in8_in[1]),
        .I1(\g_slot[1].pe_i_i_103_n_0 ),
        .I2(p_0_in8_in[2]),
        .I3(p_0_in8_in[0]),
        .I4(p_0_in36_in),
        .O(\g_slot[2].nb_push [0]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \g_slot[2].pe_i_i_45 
       (.I0(phase[0]),
        .I1(\g_slot[2].own_reg_n_0_[79] ),
        .I2(\phase_reg[1]_rep__0_n_0 ),
        .I3(phase[2]),
        .I4(\g_slot[2].pe_i_i_100_n_0 ),
        .O(p_0_in35_in));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \g_slot[2].pe_i_i_46 
       (.I0(phase[0]),
        .I1(obs_whole[11]),
        .I2(\phase_reg[1]_rep__3_n_0 ),
        .I3(phase[2]),
        .I4(\g_slot[2].pe_i_i_101_n_0 ),
        .O(p_0_in105_in));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \g_slot[2].pe_i_i_47 
       (.I0(phase[0]),
        .I1(obs_defect[11]),
        .I2(\phase_reg[1]_rep__2_n_0 ),
        .I3(phase[2]),
        .I4(\g_slot[2].pe_i_i_102_n_0 ),
        .O(\g_slot[2].pe_i_i_47_n_0 ));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \g_slot[2].pe_i_i_48 
       (.I0(phase[0]),
        .I1(obs_ptr[35]),
        .I2(\phase_reg[1]_rep__0_n_0 ),
        .I3(phase[2]),
        .I4(\g_slot[2].pe_i_i_103_n_0 ),
        .O(p_0_in11_in[2]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \g_slot[2].pe_i_i_49 
       (.I0(phase[0]),
        .I1(obs_ptr[34]),
        .I2(\phase_reg[1]_rep__0_n_0 ),
        .I3(phase[2]),
        .I4(\g_slot[2].pe_i_i_104_n_0 ),
        .O(p_0_in11_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair244" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \g_slot[2].pe_i_i_5 
       (.I0(\g_slot[2].pe_i_i_67_n_0 ),
        .I1(phase[2]),
        .O(\g_slot[2].pe_i_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \g_slot[2].pe_i_i_50 
       (.I0(phase[0]),
        .I1(obs_ptr[33]),
        .I2(\phase_reg[1]_rep__2_n_0 ),
        .I3(phase[2]),
        .I4(\g_slot[2].pe_i_i_105_n_0 ),
        .O(p_0_in11_in[0]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \g_slot[2].pe_i_i_51 
       (.I0(phase[0]),
        .I1(obs_unrooted[11]),
        .I2(\phase_reg[1]_rep__1_n_0 ),
        .I3(phase[2]),
        .I4(\g_slot[2].pe_i_i_106_n_0 ),
        .O(\g_slot[2].pe_i_i_51_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair188" *) 
  LUT5 #(
    .INIT(32'h521545C8)) 
    \g_slot[2].pe_i_i_52 
       (.I0(phase[0]),
        .I1(\phase_reg[1]_rep_n_0 ),
        .I2(phase[2]),
        .I3(\g_slot[0].pe_i_i_92_n_0 ),
        .I4(\g_slot[0].pe_i_i_93_n_0 ),
        .O(\g_slot[2].iw [5]));
  (* SOFT_HLUTNM = "soft_lutpair214" *) 
  LUT5 #(
    .INIT(32'hC14AAA8C)) 
    \g_slot[2].pe_i_i_53 
       (.I0(\g_slot[0].pe_i_i_93_n_0 ),
        .I1(\phase_reg[1]_rep_n_0 ),
        .I2(phase[2]),
        .I3(\g_slot[0].pe_i_i_92_n_0 ),
        .I4(phase[0]),
        .O(\g_slot[2].iw [4]));
  (* SOFT_HLUTNM = "soft_lutpair188" *) 
  LUT5 #(
    .INIT(32'hADC13021)) 
    \g_slot[2].pe_i_i_54 
       (.I0(\phase_reg[1]_rep_n_0 ),
        .I1(phase[0]),
        .I2(phase[2]),
        .I3(\g_slot[0].pe_i_i_92_n_0 ),
        .I4(\g_slot[0].pe_i_i_93_n_0 ),
        .O(\g_slot[2].iw [3]));
  (* SOFT_HLUTNM = "soft_lutpair194" *) 
  LUT5 #(
    .INIT(32'hDE0B2826)) 
    \g_slot[2].pe_i_i_55 
       (.I0(\g_slot[0].pe_i_i_93_n_0 ),
        .I1(\g_slot[0].pe_i_i_92_n_0 ),
        .I2(phase[2]),
        .I3(\phase_reg[1]_rep_n_0 ),
        .I4(phase[0]),
        .O(\g_slot[2].iw [2]));
  (* SOFT_HLUTNM = "soft_lutpair193" *) 
  LUT5 #(
    .INIT(32'h7C57092D)) 
    \g_slot[2].pe_i_i_56 
       (.I0(\g_slot[0].pe_i_i_92_n_0 ),
        .I1(phase[2]),
        .I2(phase[0]),
        .I3(\phase_reg[1]_rep_n_0 ),
        .I4(\g_slot[0].pe_i_i_93_n_0 ),
        .O(\g_slot[2].iw [1]));
  (* SOFT_HLUTNM = "soft_lutpair183" *) 
  LUT5 #(
    .INIT(32'h8D94B32E)) 
    \g_slot[2].pe_i_i_57 
       (.I0(\phase_reg[1]_rep_n_0 ),
        .I1(phase[0]),
        .I2(phase[2]),
        .I3(\g_slot[0].pe_i_i_92_n_0 ),
        .I4(\g_slot[0].pe_i_i_93_n_0 ),
        .O(\g_slot[2].iw [0]));
  (* SOFT_HLUTNM = "soft_lutpair198" *) 
  LUT5 #(
    .INIT(32'hB8150618)) 
    \g_slot[2].pe_i_i_58 
       (.I0(\g_slot[0].pe_i_i_93_n_0 ),
        .I1(\g_slot[0].pe_i_i_92_n_0 ),
        .I2(phase[2]),
        .I3(phase[0]),
        .I4(\phase_reg[1]_rep_n_0 ),
        .O(\g_slot[2].iw [6]));
  (* SOFT_HLUTNM = "soft_lutpair211" *) 
  LUT5 #(
    .INIT(32'h00A9555A)) 
    \g_slot[2].pe_i_i_59 
       (.I0(phase[2]),
        .I1(\phase_reg[1]_rep_n_0 ),
        .I2(\g_slot[0].pe_i_i_92_n_0 ),
        .I3(phase[0]),
        .I4(\g_slot[0].pe_i_i_93_n_0 ),
        .O(\g_slot[2].iw [7]));
  (* SOFT_HLUTNM = "soft_lutpair245" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \g_slot[2].pe_i_i_6 
       (.I0(\g_slot[2].pe_i_i_68_n_0 ),
        .I1(phase[2]),
        .O(\g_slot[2].pe_i_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair198" *) 
  LUT5 #(
    .INIT(32'hD2060B23)) 
    \g_slot[2].pe_i_i_60 
       (.I0(\g_slot[0].pe_i_i_92_n_0 ),
        .I1(\g_slot[0].pe_i_i_93_n_0 ),
        .I2(phase[2]),
        .I3(phase[0]),
        .I4(\phase_reg[1]_rep_n_0 ),
        .O(\g_slot[2].iw [8]));
  (* SOFT_HLUTNM = "soft_lutpair199" *) 
  LUT5 #(
    .INIT(32'h62B8001D)) 
    \g_slot[2].pe_i_i_61 
       (.I0(\g_slot[0].pe_i_i_93_n_0 ),
        .I1(\g_slot[0].pe_i_i_92_n_0 ),
        .I2(phase[2]),
        .I3(phase[0]),
        .I4(\phase_reg[1]_rep_n_0 ),
        .O(\g_slot[2].iw [9]));
  (* SOFT_HLUTNM = "soft_lutpair199" *) 
  LUT5 #(
    .INIT(32'h746A0C60)) 
    \g_slot[2].pe_i_i_62 
       (.I0(\g_slot[0].pe_i_i_93_n_0 ),
        .I1(\g_slot[0].pe_i_i_92_n_0 ),
        .I2(phase[2]),
        .I3(phase[0]),
        .I4(\phase_reg[1]_rep_n_0 ),
        .O(\g_slot[2].iw [10]));
  (* SOFT_HLUTNM = "soft_lutpair216" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \g_slot[2].pe_i_i_63 
       (.I0(phase[0]),
        .I1(\g_slot[0].pe_i_i_92_n_0 ),
        .O(\g_slot[2].pe_i_i_63_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_slot[2].pe_i_i_64 
       (.I0(obs_cid[71]),
        .I1(obs_cid[95]),
        .I2(\phase_reg[1]_rep__3_n_0 ),
        .I3(obs_cid[119]),
        .I4(phase[0]),
        .I5(obs_cid[143]),
        .O(\g_slot[2].pe_i_i_64_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_slot[2].pe_i_i_65 
       (.I0(obs_cid[70]),
        .I1(obs_cid[94]),
        .I2(\phase_reg[1]_rep__3_n_0 ),
        .I3(obs_cid[118]),
        .I4(phase[0]),
        .I5(obs_cid[142]),
        .O(\g_slot[2].pe_i_i_65_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_slot[2].pe_i_i_66 
       (.I0(obs_cid[69]),
        .I1(obs_cid[93]),
        .I2(\phase_reg[1]_rep__3_n_0 ),
        .I3(obs_cid[117]),
        .I4(phase[0]),
        .I5(obs_cid[141]),
        .O(\g_slot[2].pe_i_i_66_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_slot[2].pe_i_i_67 
       (.I0(obs_cid[68]),
        .I1(obs_cid[92]),
        .I2(\phase_reg[1]_rep__3_n_0 ),
        .I3(obs_cid[116]),
        .I4(phase[0]),
        .I5(obs_cid[140]),
        .O(\g_slot[2].pe_i_i_67_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_slot[2].pe_i_i_68 
       (.I0(obs_cid[67]),
        .I1(obs_cid[91]),
        .I2(\phase_reg[1]_rep__3_n_0 ),
        .I3(obs_cid[115]),
        .I4(phase[0]),
        .I5(obs_cid[139]),
        .O(\g_slot[2].pe_i_i_68_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_slot[2].pe_i_i_69 
       (.I0(obs_cid[66]),
        .I1(obs_cid[90]),
        .I2(\phase_reg[1]_rep__3_n_0 ),
        .I3(obs_cid[114]),
        .I4(phase[0]),
        .I5(obs_cid[138]),
        .O(\g_slot[2].pe_i_i_69_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair246" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \g_slot[2].pe_i_i_7 
       (.I0(\g_slot[2].pe_i_i_69_n_0 ),
        .I1(phase[2]),
        .O(\g_slot[2].pe_i_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_slot[2].pe_i_i_70 
       (.I0(obs_active[11]),
        .I1(obs_active[15]),
        .I2(\phase_reg[1]_rep__3_n_0 ),
        .I3(obs_active[19]),
        .I4(phase[0]),
        .I5(obs_active[23]),
        .O(\g_slot[2].pe_i_i_70_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_slot[2].pe_i_i_71 
       (.I0(obs_whole[11]),
        .I1(obs_whole[15]),
        .I2(\phase_reg[1]_rep__3_n_0 ),
        .I3(obs_whole[19]),
        .I4(phase[0]),
        .I5(obs_whole[23]),
        .O(\g_slot[2].pe_i_i_71_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_slot[2].pe_i_i_72 
       (.I0(obs_defect[11]),
        .I1(obs_defect[15]),
        .I2(\phase_reg[1]_rep__2_n_0 ),
        .I3(obs_defect[19]),
        .I4(phase[0]),
        .I5(obs_defect[23]),
        .O(\g_slot[2].pe_i_i_72_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_slot[2].pe_i_i_73 
       (.I0(obs_ptr[35]),
        .I1(obs_ptr[47]),
        .I2(\phase_reg[1]_rep__0_n_0 ),
        .I3(obs_ptr[59]),
        .I4(phase[0]),
        .I5(obs_ptr[71]),
        .O(\g_slot[2].pe_i_i_73_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_slot[2].pe_i_i_74 
       (.I0(obs_ptr[34]),
        .I1(obs_ptr[46]),
        .I2(\phase_reg[1]_rep__0_n_0 ),
        .I3(obs_ptr[58]),
        .I4(phase[0]),
        .I5(obs_ptr[70]),
        .O(\g_slot[2].pe_i_i_74_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_slot[2].pe_i_i_75 
       (.I0(obs_ptr[33]),
        .I1(obs_ptr[45]),
        .I2(\phase_reg[1]_rep__0_n_0 ),
        .I3(obs_ptr[57]),
        .I4(phase[0]),
        .I5(obs_ptr[69]),
        .O(\g_slot[2].pe_i_i_75_n_0 ));
  MUXF7 \g_slot[2].pe_i_i_76 
       (.I0(\g_slot[2].pe_i_i_107_n_0 ),
        .I1(\g_slot[2].pe_i_i_108_n_0 ),
        .O(\g_slot[2].pe_i_i_76_n_0 ),
        .S(\phase_reg[1]_rep__0_n_0 ));
  MUXF7 \g_slot[2].pe_i_i_77 
       (.I0(\g_slot[2].pe_i_i_109_n_0 ),
        .I1(\g_slot[2].pe_i_i_110_n_0 ),
        .O(\g_slot[2].pe_i_i_77_n_0 ),
        .S(\phase_reg[1]_rep__0_n_0 ));
  MUXF7 \g_slot[2].pe_i_i_78 
       (.I0(\g_slot[2].pe_i_i_111_n_0 ),
        .I1(\g_slot[2].pe_i_i_112_n_0 ),
        .O(\g_slot[2].pe_i_i_78_n_0 ),
        .S(\phase_reg[1]_rep__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_slot[2].pe_i_i_79 
       (.I0(\g_slot[2].omir_reg_n_0_[46] ),
        .I1(\g_slot[2].omir_reg_n_0_[30] ),
        .I2(\phase_reg[1]_rep__1_n_0 ),
        .I3(\g_slot[2].omir_reg_n_0_[14] ),
        .I4(phase[0]),
        .I5(obs_cid[167]),
        .O(\g_slot[2].pe_i_i_79_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair247" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \g_slot[2].pe_i_i_8 
       (.I0(\g_slot[2].pe_i_i_70_n_0 ),
        .I1(phase[2]),
        .O(\g_slot[2].pe_i_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_slot[2].pe_i_i_80 
       (.I0(\g_slot[2].omir_reg_n_0_[45] ),
        .I1(\g_slot[2].omir_reg_n_0_[29] ),
        .I2(\phase_reg[1]_rep__1_n_0 ),
        .I3(\g_slot[2].omir_reg_n_0_[13] ),
        .I4(phase[0]),
        .I5(obs_cid[166]),
        .O(\g_slot[2].pe_i_i_80_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_slot[2].pe_i_i_81 
       (.I0(\g_slot[2].omir_reg_n_0_[44] ),
        .I1(\g_slot[2].omir_reg_n_0_[28] ),
        .I2(\phase_reg[1]_rep__1_n_0 ),
        .I3(\g_slot[2].omir_reg_n_0_[12] ),
        .I4(phase[0]),
        .I5(obs_cid[165]),
        .O(\g_slot[2].pe_i_i_81_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_slot[2].pe_i_i_82 
       (.I0(\g_slot[2].omir_reg_n_0_[43] ),
        .I1(\g_slot[2].omir_reg_n_0_[27] ),
        .I2(\phase_reg[1]_rep__1_n_0 ),
        .I3(\g_slot[2].omir_reg_n_0_[11] ),
        .I4(phase[0]),
        .I5(obs_cid[164]),
        .O(\g_slot[2].pe_i_i_82_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_slot[2].pe_i_i_83 
       (.I0(\g_slot[2].omir_reg_n_0_[42] ),
        .I1(\g_slot[2].omir_reg_n_0_[26] ),
        .I2(\phase_reg[1]_rep__1_n_0 ),
        .I3(\g_slot[2].omir_reg_n_0_[10] ),
        .I4(phase[0]),
        .I5(obs_cid[163]),
        .O(\g_slot[2].pe_i_i_83_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_slot[2].pe_i_i_84 
       (.I0(\g_slot[2].omir_reg_n_0_[41] ),
        .I1(\g_slot[2].omir_reg_n_0_[25] ),
        .I2(\phase_reg[1]_rep__1_n_0 ),
        .I3(\g_slot[2].omir_reg_n_0_[9] ),
        .I4(phase[0]),
        .I5(obs_cid[162]),
        .O(\g_slot[2].pe_i_i_84_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_slot[2].pe_i_i_85 
       (.I0(obs_cid[101]),
        .I1(obs_cid[125]),
        .I2(\phase_reg[1]_rep__1_n_0 ),
        .I3(obs_cid[149]),
        .I4(phase[0]),
        .I5(obs_cid[173]),
        .O(\g_slot[2].pe_i_i_85_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_slot[2].pe_i_i_86 
       (.I0(obs_cid[100]),
        .I1(obs_cid[124]),
        .I2(\phase_reg[1]_rep__1_n_0 ),
        .I3(obs_cid[148]),
        .I4(phase[0]),
        .I5(obs_cid[172]),
        .O(\g_slot[2].pe_i_i_86_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_slot[2].pe_i_i_87 
       (.I0(obs_cid[99]),
        .I1(obs_cid[123]),
        .I2(\phase_reg[1]_rep__1_n_0 ),
        .I3(obs_cid[147]),
        .I4(phase[0]),
        .I5(obs_cid[171]),
        .O(\g_slot[2].pe_i_i_87_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_slot[2].pe_i_i_88 
       (.I0(obs_cid[98]),
        .I1(obs_cid[122]),
        .I2(\phase_reg[1]_rep__1_n_0 ),
        .I3(obs_cid[146]),
        .I4(phase[0]),
        .I5(obs_cid[170]),
        .O(\g_slot[2].pe_i_i_88_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_slot[2].pe_i_i_89 
       (.I0(obs_cid[97]),
        .I1(obs_cid[121]),
        .I2(\phase_reg[1]_rep__1_n_0 ),
        .I3(obs_cid[145]),
        .I4(phase[0]),
        .I5(obs_cid[169]),
        .O(\g_slot[2].pe_i_i_89_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair260" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \g_slot[2].pe_i_i_9 
       (.I0(\g_slot[2].pe_i_i_71_n_0 ),
        .I1(phase[2]),
        .O(\g_slot[2].pe_i_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_slot[2].pe_i_i_90 
       (.I0(obs_cid[96]),
        .I1(obs_cid[120]),
        .I2(\phase_reg[1]_rep__1_n_0 ),
        .I3(obs_cid[144]),
        .I4(phase[0]),
        .I5(obs_cid[168]),
        .O(\g_slot[2].pe_i_i_90_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_slot[2].pe_i_i_91 
       (.I0(\g_slot[2].omir_reg_n_0_[40] ),
        .I1(\g_slot[2].omir_reg_n_0_[24] ),
        .I2(\phase_reg[1]_rep__3_n_0 ),
        .I3(\g_slot[2].omir_reg_n_0_[8] ),
        .I4(phase[0]),
        .I5(obs_active[27]),
        .O(\g_slot[2].pe_i_i_91_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_slot[2].pe_i_i_92 
       (.I0(obs_active[16]),
        .I1(obs_active[20]),
        .I2(\phase_reg[1]_rep__3_n_0 ),
        .I3(obs_active[24]),
        .I4(phase[0]),
        .I5(obs_active[28]),
        .O(\g_slot[2].pe_i_i_92_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_slot[2].pe_i_i_93 
       (.I0(obs_grown[11]),
        .I1(obs_grown[15]),
        .I2(\phase_reg[1]_rep__2_n_0 ),
        .I3(obs_grown[19]),
        .I4(phase[0]),
        .I5(obs_grown[23]),
        .O(\g_slot[2].pe_i_i_93_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_slot[2].pe_i_i_94 
       (.I0(\g_slot[2].omir_reg_n_0_[34] ),
        .I1(\g_slot[2].omir_reg_n_0_[18] ),
        .I2(\phase_reg[1]_rep__1_n_0 ),
        .I3(\g_slot[2].omir_reg_n_0_[2] ),
        .I4(phase[0]),
        .I5(obs_grown[27]),
        .O(\g_slot[2].pe_i_i_94_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_slot[2].pe_i_i_95 
       (.I0(obs_grown[16]),
        .I1(obs_grown[20]),
        .I2(\phase_reg[1]_rep__2_n_0 ),
        .I3(obs_grown[24]),
        .I4(phase[0]),
        .I5(obs_grown[28]),
        .O(\g_slot[2].pe_i_i_95_n_0 ));
  LUT6 #(
    .INIT(64'h22222E2200000000)) 
    \g_slot[2].pe_i_i_96 
       (.I0(\g_slot[2].pe_i_i_75_n_0 ),
        .I1(phase[2]),
        .I2(\phase_reg[1]_rep__0_n_0 ),
        .I3(\g_slot[2].g_dir[3].esrc [67]),
        .I4(phase[0]),
        .I5(\g_slot[2].pe_i_i_113_n_0 ),
        .O(\g_slot[2].nb_push119_out ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_slot[2].pe_i_i_97 
       (.I0(\g_slot[2].own_reg_n_0_[79] ),
        .I1(\g_slot[2].own_reg_n_0_[63] ),
        .I2(\phase_reg[1]_rep__0_n_0 ),
        .I3(\g_slot[2].own_reg_n_0_[47] ),
        .I4(phase[0]),
        .I5(data0__0),
        .O(\g_slot[2].pe_i_i_97_n_0 ));
  LUT6 #(
    .INIT(64'h010501FA00000000)) 
    \g_slot[2].pe_i_i_98 
       (.I0(phase[0]),
        .I1(\g_slot[2].omir_reg_n_0_[51] ),
        .I2(\phase_reg[1]_rep__3_n_0 ),
        .I3(phase[2]),
        .I4(\g_slot[2].pe_i_i_114_n_0 ),
        .I5(\g_slot[2].pe_i_i_115_n_0 ),
        .O(\g_slot[2].nb_push1 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_slot[2].pe_i_i_99 
       (.I0(\g_slot[2].omir_reg_n_0_[47] ),
        .I1(\g_slot[2].omir_reg_n_0_[31] ),
        .I2(\phase_reg[1]_rep__2_n_0 ),
        .I3(\g_slot[2].omir_reg_n_0_[15] ),
        .I4(phase[0]),
        .I5(\g_slot[2].g_dir[2].esrc [15]),
        .O(\g_slot[2].pe_i_i_99_n_0 ));
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
  FDRE \g_slot[3].bshA_reg[3][3] 
       (.C(clk),
        .CE(bshA[3]),
        .D(\slot_nxt[3] [0]),
        .Q(\g_slot[3].bshA_reg[3] [3]),
        .R(reset));
  FDRE \g_slot[3].bshA_reg[3][4] 
       (.C(clk),
        .CE(bshA[4]),
        .D(\slot_nxt[3] [0]),
        .Q(\g_slot[3].bshA_reg[3] [4]),
        .R(reset));
  FDRE \g_slot[3].bshB_reg[3][0] 
       (.C(clk),
        .CE(bshB[0]),
        .D(\slot_nxt[3] [0]),
        .Q(\g_slot[3].bshB_reg[3] [0]),
        .R(reset));
  FDRE \g_slot[3].bshB_reg[3][1] 
       (.C(clk),
        .CE(bshB[1]),
        .D(\slot_nxt[3] [0]),
        .Q(\g_slot[3].bshB_reg[3] [1]),
        .R(reset));
  FDRE \g_slot[3].bshB_reg[3][2] 
       (.C(clk),
        .CE(bshB[2]),
        .D(\slot_nxt[3] [0]),
        .Q(\g_slot[3].bshB_reg[3] [2]),
        .R(reset));
  FDRE \g_slot[3].bshB_reg[3][3] 
       (.C(clk),
        .CE(bshB[3]),
        .D(\slot_nxt[3] [0]),
        .Q(\g_slot[3].bshB_reg[3] [3]),
        .R(reset));
  FDRE \g_slot[3].bshB_reg[3][4] 
       (.C(clk),
        .CE(bshB[4]),
        .D(\slot_nxt[3] [0]),
        .Q(\g_slot[3].bshB_reg[3] [4]),
        .R(reset));
  FDRE \g_slot[3].omir_reg[10] 
       (.C(clk),
        .CE(\g_slot[0].own [14]),
        .D(obs_cid[169]),
        .Q(\g_slot[3].omir_reg_n_0_[10] ),
        .R(reset));
  FDSE \g_slot[3].omir_reg[11] 
       (.C(clk),
        .CE(\g_slot[0].own [14]),
        .D(obs_cid[170]),
        .Q(\g_slot[3].omir_reg_n_0_[11] ),
        .S(reset));
  FDSE \g_slot[3].omir_reg[12] 
       (.C(clk),
        .CE(\g_slot[0].own [14]),
        .D(obs_cid[171]),
        .Q(\g_slot[3].omir_reg_n_0_[12] ),
        .S(reset));
  FDSE \g_slot[3].omir_reg[13] 
       (.C(clk),
        .CE(\g_slot[0].own [14]),
        .D(obs_cid[172]),
        .Q(\g_slot[3].omir_reg_n_0_[13] ),
        .S(reset));
  FDRE \g_slot[3].omir_reg[14] 
       (.C(clk),
        .CE(\g_slot[0].own [14]),
        .D(obs_cid[173]),
        .Q(\g_slot[3].omir_reg_n_0_[14] ),
        .R(reset));
  FDRE \g_slot[3].omir_reg[15] 
       (.C(clk),
        .CE(\g_slot[0].own [14]),
        .D(\g_slot[3].g_dir[2].esrc [15]),
        .Q(\g_slot[3].omir_reg_n_0_[15] ),
        .R(reset));
  FDRE \g_slot[3].omir_reg[18] 
       (.C(clk),
        .CE(\g_slot[0].own [30]),
        .D(obs_grown[24]),
        .Q(\g_slot[3].omir_reg_n_0_[18] ),
        .R(reset));
  FDRE \g_slot[3].omir_reg[19] 
       (.C(clk),
        .CE(\g_slot[0].own [30]),
        .D(obs_ptr[72]),
        .Q(\g_slot[3].omir_reg_n_0_[19] ),
        .R(reset));
  FDRE \g_slot[3].omir_reg[20] 
       (.C(clk),
        .CE(\g_slot[0].own [30]),
        .D(obs_ptr[73]),
        .Q(\g_slot[3].omir_reg_n_0_[20] ),
        .R(reset));
  FDRE \g_slot[3].omir_reg[21] 
       (.C(clk),
        .CE(\g_slot[0].own [30]),
        .D(obs_ptr[74]),
        .Q(\g_slot[3].omir_reg_n_0_[21] ),
        .R(reset));
  FDRE \g_slot[3].omir_reg[24] 
       (.C(clk),
        .CE(\g_slot[0].own [30]),
        .D(obs_active[24]),
        .Q(\g_slot[3].omir_reg_n_0_[24] ),
        .R(reset));
  FDRE \g_slot[3].omir_reg[25] 
       (.C(clk),
        .CE(\g_slot[0].own [30]),
        .D(obs_cid[144]),
        .Q(\g_slot[3].omir_reg_n_0_[25] ),
        .R(reset));
  FDRE \g_slot[3].omir_reg[26] 
       (.C(clk),
        .CE(\g_slot[0].own [30]),
        .D(obs_cid[145]),
        .Q(\g_slot[3].omir_reg_n_0_[26] ),
        .R(reset));
  FDRE \g_slot[3].omir_reg[27] 
       (.C(clk),
        .CE(\g_slot[0].own [30]),
        .D(obs_cid[146]),
        .Q(\g_slot[3].omir_reg_n_0_[27] ),
        .R(reset));
  FDSE \g_slot[3].omir_reg[28] 
       (.C(clk),
        .CE(\g_slot[0].own [30]),
        .D(obs_cid[147]),
        .Q(\g_slot[3].omir_reg_n_0_[28] ),
        .S(reset));
  FDSE \g_slot[3].omir_reg[29] 
       (.C(clk),
        .CE(\g_slot[0].own [30]),
        .D(obs_cid[148]),
        .Q(\g_slot[3].omir_reg_n_0_[29] ),
        .S(reset));
  FDRE \g_slot[3].omir_reg[2] 
       (.C(clk),
        .CE(\g_slot[0].own [14]),
        .D(obs_grown[28]),
        .Q(\g_slot[3].omir_reg_n_0_[2] ),
        .R(reset));
  FDRE \g_slot[3].omir_reg[30] 
       (.C(clk),
        .CE(\g_slot[0].own [30]),
        .D(obs_cid[149]),
        .Q(\g_slot[3].omir_reg_n_0_[30] ),
        .R(reset));
  FDRE \g_slot[3].omir_reg[31] 
       (.C(clk),
        .CE(\g_slot[0].own [30]),
        .D(data0__1),
        .Q(\g_slot[3].omir_reg_n_0_[31] ),
        .R(reset));
  FDRE \g_slot[3].omir_reg[34] 
       (.C(clk),
        .CE(\g_slot[0].own [46]),
        .D(obs_grown[20]),
        .Q(\g_slot[3].omir_reg_n_0_[34] ),
        .R(reset));
  FDRE \g_slot[3].omir_reg[35] 
       (.C(clk),
        .CE(\g_slot[0].own [46]),
        .D(obs_ptr[60]),
        .Q(\g_slot[3].omir_reg_n_0_[35] ),
        .R(reset));
  FDRE \g_slot[3].omir_reg[36] 
       (.C(clk),
        .CE(\g_slot[0].own [46]),
        .D(obs_ptr[61]),
        .Q(\g_slot[3].omir_reg_n_0_[36] ),
        .R(reset));
  FDRE \g_slot[3].omir_reg[37] 
       (.C(clk),
        .CE(\g_slot[0].own [46]),
        .D(obs_ptr[62]),
        .Q(\g_slot[3].omir_reg_n_0_[37] ),
        .R(reset));
  FDRE \g_slot[3].omir_reg[3] 
       (.C(clk),
        .CE(\g_slot[0].own [14]),
        .D(obs_ptr[84]),
        .Q(\g_slot[3].omir_reg_n_0_[3] ),
        .R(reset));
  FDRE \g_slot[3].omir_reg[40] 
       (.C(clk),
        .CE(\g_slot[0].own [46]),
        .D(obs_active[20]),
        .Q(\g_slot[3].omir_reg_n_0_[40] ),
        .R(reset));
  FDRE \g_slot[3].omir_reg[41] 
       (.C(clk),
        .CE(\g_slot[0].own [46]),
        .D(obs_cid[120]),
        .Q(\g_slot[3].omir_reg_n_0_[41] ),
        .R(reset));
  FDRE \g_slot[3].omir_reg[42] 
       (.C(clk),
        .CE(\g_slot[0].own [46]),
        .D(obs_cid[121]),
        .Q(\g_slot[3].omir_reg_n_0_[42] ),
        .R(reset));
  FDSE \g_slot[3].omir_reg[43] 
       (.C(clk),
        .CE(\g_slot[0].own [46]),
        .D(obs_cid[122]),
        .Q(\g_slot[3].omir_reg_n_0_[43] ),
        .S(reset));
  FDRE \g_slot[3].omir_reg[44] 
       (.C(clk),
        .CE(\g_slot[0].own [46]),
        .D(obs_cid[123]),
        .Q(\g_slot[3].omir_reg_n_0_[44] ),
        .R(reset));
  FDSE \g_slot[3].omir_reg[45] 
       (.C(clk),
        .CE(\g_slot[0].own [46]),
        .D(obs_cid[124]),
        .Q(\g_slot[3].omir_reg_n_0_[45] ),
        .S(reset));
  FDRE \g_slot[3].omir_reg[46] 
       (.C(clk),
        .CE(\g_slot[0].own [46]),
        .D(obs_cid[125]),
        .Q(\g_slot[3].omir_reg_n_0_[46] ),
        .R(reset));
  FDRE \g_slot[3].omir_reg[47] 
       (.C(clk),
        .CE(\g_slot[0].own [46]),
        .D(\g_slot[3].own_reg_n_0_[47] ),
        .Q(\g_slot[3].omir_reg_n_0_[47] ),
        .R(reset));
  FDRE \g_slot[3].omir_reg[4] 
       (.C(clk),
        .CE(\g_slot[0].own [14]),
        .D(obs_ptr[85]),
        .Q(\g_slot[3].omir_reg_n_0_[4] ),
        .R(reset));
  FDRE \g_slot[3].omir_reg[50] 
       (.C(clk),
        .CE(\g_slot[0].own [62]),
        .D(obs_grown[16]),
        .Q(\g_slot[3].omir_reg_n_0_[50] ),
        .R(reset));
  FDRE \g_slot[3].omir_reg[51] 
       (.C(clk),
        .CE(\g_slot[0].own [62]),
        .D(obs_ptr[48]),
        .Q(\g_slot[3].omir_reg_n_0_[51] ),
        .R(reset));
  FDRE \g_slot[3].omir_reg[52] 
       (.C(clk),
        .CE(\g_slot[0].own [62]),
        .D(obs_ptr[49]),
        .Q(\g_slot[3].omir_reg_n_0_[52] ),
        .R(reset));
  FDRE \g_slot[3].omir_reg[53] 
       (.C(clk),
        .CE(\g_slot[0].own [62]),
        .D(obs_ptr[50]),
        .Q(\g_slot[3].omir_reg_n_0_[53] ),
        .R(reset));
  FDRE \g_slot[3].omir_reg[56] 
       (.C(clk),
        .CE(\g_slot[0].own [62]),
        .D(obs_active[16]),
        .Q(\g_slot[3].omir_reg_n_0_[56] ),
        .R(reset));
  FDRE \g_slot[3].omir_reg[57] 
       (.C(clk),
        .CE(\g_slot[0].own [62]),
        .D(obs_cid[96]),
        .Q(\g_slot[3].omir_reg_n_0_[57] ),
        .R(reset));
  FDRE \g_slot[3].omir_reg[58] 
       (.C(clk),
        .CE(\g_slot[0].own [62]),
        .D(obs_cid[97]),
        .Q(\g_slot[3].omir_reg_n_0_[58] ),
        .R(reset));
  FDRE \g_slot[3].omir_reg[59] 
       (.C(clk),
        .CE(\g_slot[0].own [62]),
        .D(obs_cid[98]),
        .Q(\g_slot[3].omir_reg_n_0_[59] ),
        .R(reset));
  FDRE \g_slot[3].omir_reg[5] 
       (.C(clk),
        .CE(\g_slot[0].own [14]),
        .D(obs_ptr[86]),
        .Q(\g_slot[3].omir_reg_n_0_[5] ),
        .R(reset));
  FDRE \g_slot[3].omir_reg[60] 
       (.C(clk),
        .CE(\g_slot[0].own [62]),
        .D(obs_cid[99]),
        .Q(\g_slot[3].omir_reg_n_0_[60] ),
        .R(reset));
  FDSE \g_slot[3].omir_reg[61] 
       (.C(clk),
        .CE(\g_slot[0].own [62]),
        .D(obs_cid[100]),
        .Q(\g_slot[3].omir_reg_n_0_[61] ),
        .S(reset));
  FDRE \g_slot[3].omir_reg[62] 
       (.C(clk),
        .CE(\g_slot[0].own [62]),
        .D(obs_cid[101]),
        .Q(\g_slot[3].omir_reg_n_0_[62] ),
        .R(reset));
  FDRE \g_slot[3].omir_reg[63] 
       (.C(clk),
        .CE(\g_slot[0].own [62]),
        .D(\g_slot[3].own_reg_n_0_[63] ),
        .Q(\g_slot[3].omir_reg_n_0_[63] ),
        .R(reset));
  FDRE \g_slot[3].omir_reg[64] 
       (.C(clk),
        .CE(\g_slot[0].own [78]),
        .D(obs_busy[12]),
        .Q(\g_slot[3].g_dir[3].esrc [64]),
        .R(reset));
  FDRE \g_slot[3].omir_reg[65] 
       (.C(clk),
        .CE(\g_slot[0].own [78]),
        .D(obs_unrooted[12]),
        .Q(\g_slot[3].g_dir[3].esrc [65]),
        .R(reset));
  FDRE \g_slot[3].omir_reg[66] 
       (.C(clk),
        .CE(\g_slot[0].own [78]),
        .D(obs_grown[12]),
        .Q(\g_slot[3].g_dir[3].esrc [66]),
        .R(reset));
  FDRE \g_slot[3].omir_reg[67] 
       (.C(clk),
        .CE(\g_slot[0].own [78]),
        .D(obs_ptr[36]),
        .Q(\g_slot[3].g_dir[3].esrc [67]),
        .R(reset));
  FDRE \g_slot[3].omir_reg[68] 
       (.C(clk),
        .CE(\g_slot[0].own [78]),
        .D(obs_ptr[37]),
        .Q(\g_slot[3].g_dir[3].esrc [68]),
        .R(reset));
  FDRE \g_slot[3].omir_reg[69] 
       (.C(clk),
        .CE(\g_slot[0].own [78]),
        .D(obs_ptr[38]),
        .Q(\g_slot[3].g_dir[3].esrc [69]),
        .R(reset));
  FDRE \g_slot[3].omir_reg[72] 
       (.C(clk),
        .CE(\g_slot[0].own [78]),
        .D(obs_active[12]),
        .Q(\g_slot[3].g_dir[3].esrc [72]),
        .R(reset));
  FDRE \g_slot[3].omir_reg[73] 
       (.C(clk),
        .CE(\g_slot[0].own [78]),
        .D(obs_cid[72]),
        .Q(\g_slot[3].g_dir[3].esrc [73]),
        .R(reset));
  FDRE \g_slot[3].omir_reg[74] 
       (.C(clk),
        .CE(\g_slot[0].own [78]),
        .D(obs_cid[73]),
        .Q(\g_slot[3].g_dir[3].esrc [74]),
        .R(reset));
  FDSE \g_slot[3].omir_reg[75] 
       (.C(clk),
        .CE(\g_slot[0].own [78]),
        .D(obs_cid[74]),
        .Q(\g_slot[3].g_dir[3].esrc [75]),
        .S(reset));
  FDSE \g_slot[3].omir_reg[76] 
       (.C(clk),
        .CE(\g_slot[0].own [78]),
        .D(obs_cid[75]),
        .Q(\g_slot[3].g_dir[3].esrc [76]),
        .S(reset));
  FDRE \g_slot[3].omir_reg[77] 
       (.C(clk),
        .CE(\g_slot[0].own [78]),
        .D(obs_cid[76]),
        .Q(\g_slot[3].g_dir[3].esrc [77]),
        .R(reset));
  FDRE \g_slot[3].omir_reg[78] 
       (.C(clk),
        .CE(\g_slot[0].own [78]),
        .D(obs_cid[77]),
        .Q(\g_slot[3].g_dir[3].esrc [78]),
        .R(reset));
  FDRE \g_slot[3].omir_reg[8] 
       (.C(clk),
        .CE(\g_slot[0].own [14]),
        .D(obs_active[28]),
        .Q(\g_slot[3].omir_reg_n_0_[8] ),
        .R(reset));
  FDRE \g_slot[3].omir_reg[9] 
       (.C(clk),
        .CE(\g_slot[0].own [14]),
        .D(obs_cid[168]),
        .Q(\g_slot[3].omir_reg_n_0_[9] ),
        .R(reset));
  FDRE \g_slot[3].own_reg[0] 
       (.C(clk),
        .CE(\g_slot[0].own [14]),
        .D(\slot_nxt[3] [0]),
        .Q(obs_busy[28]),
        .R(reset));
  FDRE \g_slot[3].own_reg[10] 
       (.C(clk),
        .CE(\g_slot[0].own [14]),
        .D(\slot_nxt[3] [10]),
        .Q(obs_cid[169]),
        .R(reset));
  FDSE \g_slot[3].own_reg[11] 
       (.C(clk),
        .CE(\g_slot[0].own [14]),
        .D(\slot_nxt[3] [11]),
        .Q(obs_cid[170]),
        .S(reset));
  FDSE \g_slot[3].own_reg[12] 
       (.C(clk),
        .CE(\g_slot[0].own [14]),
        .D(\slot_nxt[3] [12]),
        .Q(obs_cid[171]),
        .S(reset));
  FDSE \g_slot[3].own_reg[13] 
       (.C(clk),
        .CE(\g_slot[0].own [14]),
        .D(\slot_nxt[3] [13]),
        .Q(obs_cid[172]),
        .S(reset));
  FDRE \g_slot[3].own_reg[14] 
       (.C(clk),
        .CE(\g_slot[0].own [14]),
        .D(\slot_nxt[3] [14]),
        .Q(obs_cid[173]),
        .R(reset));
  FDRE \g_slot[3].own_reg[15] 
       (.C(clk),
        .CE(\g_slot[0].own [14]),
        .D(\slot_nxt[3] [15]),
        .Q(\g_slot[3].g_dir[2].esrc [15]),
        .R(reset));
  FDRE \g_slot[3].own_reg[16] 
       (.C(clk),
        .CE(\g_slot[0].own [30]),
        .D(\slot_nxt[3] [0]),
        .Q(obs_busy[24]),
        .R(reset));
  FDRE \g_slot[3].own_reg[17] 
       (.C(clk),
        .CE(\g_slot[0].own [30]),
        .D(\slot_nxt[3] [1]),
        .Q(obs_unrooted[24]),
        .R(reset));
  FDRE \g_slot[3].own_reg[18] 
       (.C(clk),
        .CE(\g_slot[0].own [30]),
        .D(\slot_nxt[3] [2]),
        .Q(obs_grown[24]),
        .R(reset));
  FDRE \g_slot[3].own_reg[19] 
       (.C(clk),
        .CE(\g_slot[0].own [30]),
        .D(\slot_nxt[3] [3]),
        .Q(obs_ptr[72]),
        .R(reset));
  FDRE \g_slot[3].own_reg[1] 
       (.C(clk),
        .CE(\g_slot[0].own [14]),
        .D(\slot_nxt[3] [1]),
        .Q(obs_unrooted[28]),
        .R(reset));
  FDRE \g_slot[3].own_reg[20] 
       (.C(clk),
        .CE(\g_slot[0].own [30]),
        .D(\slot_nxt[3] [4]),
        .Q(obs_ptr[73]),
        .R(reset));
  FDRE \g_slot[3].own_reg[21] 
       (.C(clk),
        .CE(\g_slot[0].own [30]),
        .D(\slot_nxt[3] [5]),
        .Q(obs_ptr[74]),
        .R(reset));
  FDRE \g_slot[3].own_reg[22] 
       (.C(clk),
        .CE(\g_slot[0].own [30]),
        .D(\slot_nxt[3] [6]),
        .Q(obs_defect[24]),
        .R(reset));
  FDSE \g_slot[3].own_reg[23] 
       (.C(clk),
        .CE(\g_slot[0].own [30]),
        .D(\slot_nxt[3] [7]),
        .Q(obs_whole[24]),
        .S(reset));
  FDRE \g_slot[3].own_reg[24] 
       (.C(clk),
        .CE(\g_slot[0].own [30]),
        .D(\slot_nxt[3] [8]),
        .Q(obs_active[24]),
        .R(reset));
  FDRE \g_slot[3].own_reg[25] 
       (.C(clk),
        .CE(\g_slot[0].own [30]),
        .D(\slot_nxt[3] [9]),
        .Q(obs_cid[144]),
        .R(reset));
  FDRE \g_slot[3].own_reg[26] 
       (.C(clk),
        .CE(\g_slot[0].own [30]),
        .D(\slot_nxt[3] [10]),
        .Q(obs_cid[145]),
        .R(reset));
  FDRE \g_slot[3].own_reg[27] 
       (.C(clk),
        .CE(\g_slot[0].own [30]),
        .D(\slot_nxt[3] [11]),
        .Q(obs_cid[146]),
        .R(reset));
  FDSE \g_slot[3].own_reg[28] 
       (.C(clk),
        .CE(\g_slot[0].own [30]),
        .D(\slot_nxt[3] [12]),
        .Q(obs_cid[147]),
        .S(reset));
  FDSE \g_slot[3].own_reg[29] 
       (.C(clk),
        .CE(\g_slot[0].own [30]),
        .D(\slot_nxt[3] [13]),
        .Q(obs_cid[148]),
        .S(reset));
  FDRE \g_slot[3].own_reg[2] 
       (.C(clk),
        .CE(\g_slot[0].own [14]),
        .D(\slot_nxt[3] [2]),
        .Q(obs_grown[28]),
        .R(reset));
  FDRE \g_slot[3].own_reg[30] 
       (.C(clk),
        .CE(\g_slot[0].own [30]),
        .D(\slot_nxt[3] [14]),
        .Q(obs_cid[149]),
        .R(reset));
  FDRE \g_slot[3].own_reg[31] 
       (.C(clk),
        .CE(\g_slot[0].own [30]),
        .D(\slot_nxt[3] [15]),
        .Q(data0__1),
        .R(reset));
  FDRE \g_slot[3].own_reg[32] 
       (.C(clk),
        .CE(\g_slot[0].own [46]),
        .D(\slot_nxt[3] [0]),
        .Q(obs_busy[20]),
        .R(reset));
  FDRE \g_slot[3].own_reg[33] 
       (.C(clk),
        .CE(\g_slot[0].own [46]),
        .D(\slot_nxt[3] [1]),
        .Q(obs_unrooted[20]),
        .R(reset));
  FDRE \g_slot[3].own_reg[34] 
       (.C(clk),
        .CE(\g_slot[0].own [46]),
        .D(\slot_nxt[3] [2]),
        .Q(obs_grown[20]),
        .R(reset));
  FDRE \g_slot[3].own_reg[35] 
       (.C(clk),
        .CE(\g_slot[0].own [46]),
        .D(\slot_nxt[3] [3]),
        .Q(obs_ptr[60]),
        .R(reset));
  FDRE \g_slot[3].own_reg[36] 
       (.C(clk),
        .CE(\g_slot[0].own [46]),
        .D(\slot_nxt[3] [4]),
        .Q(obs_ptr[61]),
        .R(reset));
  FDRE \g_slot[3].own_reg[37] 
       (.C(clk),
        .CE(\g_slot[0].own [46]),
        .D(\slot_nxt[3] [5]),
        .Q(obs_ptr[62]),
        .R(reset));
  FDRE \g_slot[3].own_reg[38] 
       (.C(clk),
        .CE(\g_slot[0].own [46]),
        .D(\slot_nxt[3] [6]),
        .Q(obs_defect[20]),
        .R(reset));
  FDSE \g_slot[3].own_reg[39] 
       (.C(clk),
        .CE(\g_slot[0].own [46]),
        .D(\slot_nxt[3] [7]),
        .Q(obs_whole[20]),
        .S(reset));
  FDRE \g_slot[3].own_reg[3] 
       (.C(clk),
        .CE(\g_slot[0].own [14]),
        .D(\slot_nxt[3] [3]),
        .Q(obs_ptr[84]),
        .R(reset));
  FDRE \g_slot[3].own_reg[40] 
       (.C(clk),
        .CE(\g_slot[0].own [46]),
        .D(\slot_nxt[3] [8]),
        .Q(obs_active[20]),
        .R(reset));
  FDRE \g_slot[3].own_reg[41] 
       (.C(clk),
        .CE(\g_slot[0].own [46]),
        .D(\slot_nxt[3] [9]),
        .Q(obs_cid[120]),
        .R(reset));
  FDRE \g_slot[3].own_reg[42] 
       (.C(clk),
        .CE(\g_slot[0].own [46]),
        .D(\slot_nxt[3] [10]),
        .Q(obs_cid[121]),
        .R(reset));
  FDSE \g_slot[3].own_reg[43] 
       (.C(clk),
        .CE(\g_slot[0].own [46]),
        .D(\slot_nxt[3] [11]),
        .Q(obs_cid[122]),
        .S(reset));
  FDRE \g_slot[3].own_reg[44] 
       (.C(clk),
        .CE(\g_slot[0].own [46]),
        .D(\slot_nxt[3] [12]),
        .Q(obs_cid[123]),
        .R(reset));
  FDSE \g_slot[3].own_reg[45] 
       (.C(clk),
        .CE(\g_slot[0].own [46]),
        .D(\slot_nxt[3] [13]),
        .Q(obs_cid[124]),
        .S(reset));
  FDRE \g_slot[3].own_reg[46] 
       (.C(clk),
        .CE(\g_slot[0].own [46]),
        .D(\slot_nxt[3] [14]),
        .Q(obs_cid[125]),
        .R(reset));
  FDRE \g_slot[3].own_reg[47] 
       (.C(clk),
        .CE(\g_slot[0].own [46]),
        .D(\slot_nxt[3] [15]),
        .Q(\g_slot[3].own_reg_n_0_[47] ),
        .R(reset));
  FDRE \g_slot[3].own_reg[48] 
       (.C(clk),
        .CE(\g_slot[0].own [62]),
        .D(\slot_nxt[3] [0]),
        .Q(obs_busy[16]),
        .R(reset));
  FDRE \g_slot[3].own_reg[49] 
       (.C(clk),
        .CE(\g_slot[0].own [62]),
        .D(\slot_nxt[3] [1]),
        .Q(obs_unrooted[16]),
        .R(reset));
  FDRE \g_slot[3].own_reg[4] 
       (.C(clk),
        .CE(\g_slot[0].own [14]),
        .D(\slot_nxt[3] [4]),
        .Q(obs_ptr[85]),
        .R(reset));
  FDRE \g_slot[3].own_reg[50] 
       (.C(clk),
        .CE(\g_slot[0].own [62]),
        .D(\slot_nxt[3] [2]),
        .Q(obs_grown[16]),
        .R(reset));
  FDRE \g_slot[3].own_reg[51] 
       (.C(clk),
        .CE(\g_slot[0].own [62]),
        .D(\slot_nxt[3] [3]),
        .Q(obs_ptr[48]),
        .R(reset));
  FDRE \g_slot[3].own_reg[52] 
       (.C(clk),
        .CE(\g_slot[0].own [62]),
        .D(\slot_nxt[3] [4]),
        .Q(obs_ptr[49]),
        .R(reset));
  FDRE \g_slot[3].own_reg[53] 
       (.C(clk),
        .CE(\g_slot[0].own [62]),
        .D(\slot_nxt[3] [5]),
        .Q(obs_ptr[50]),
        .R(reset));
  FDRE \g_slot[3].own_reg[54] 
       (.C(clk),
        .CE(\g_slot[0].own [62]),
        .D(\slot_nxt[3] [6]),
        .Q(obs_defect[16]),
        .R(reset));
  FDSE \g_slot[3].own_reg[55] 
       (.C(clk),
        .CE(\g_slot[0].own [62]),
        .D(\slot_nxt[3] [7]),
        .Q(obs_whole[16]),
        .S(reset));
  FDRE \g_slot[3].own_reg[56] 
       (.C(clk),
        .CE(\g_slot[0].own [62]),
        .D(\slot_nxt[3] [8]),
        .Q(obs_active[16]),
        .R(reset));
  FDRE \g_slot[3].own_reg[57] 
       (.C(clk),
        .CE(\g_slot[0].own [62]),
        .D(\slot_nxt[3] [9]),
        .Q(obs_cid[96]),
        .R(reset));
  FDRE \g_slot[3].own_reg[58] 
       (.C(clk),
        .CE(\g_slot[0].own [62]),
        .D(\slot_nxt[3] [10]),
        .Q(obs_cid[97]),
        .R(reset));
  FDRE \g_slot[3].own_reg[59] 
       (.C(clk),
        .CE(\g_slot[0].own [62]),
        .D(\slot_nxt[3] [11]),
        .Q(obs_cid[98]),
        .R(reset));
  FDRE \g_slot[3].own_reg[5] 
       (.C(clk),
        .CE(\g_slot[0].own [14]),
        .D(\slot_nxt[3] [5]),
        .Q(obs_ptr[86]),
        .R(reset));
  FDRE \g_slot[3].own_reg[60] 
       (.C(clk),
        .CE(\g_slot[0].own [62]),
        .D(\slot_nxt[3] [12]),
        .Q(obs_cid[99]),
        .R(reset));
  FDSE \g_slot[3].own_reg[61] 
       (.C(clk),
        .CE(\g_slot[0].own [62]),
        .D(\slot_nxt[3] [13]),
        .Q(obs_cid[100]),
        .S(reset));
  FDRE \g_slot[3].own_reg[62] 
       (.C(clk),
        .CE(\g_slot[0].own [62]),
        .D(\slot_nxt[3] [14]),
        .Q(obs_cid[101]),
        .R(reset));
  FDRE \g_slot[3].own_reg[63] 
       (.C(clk),
        .CE(\g_slot[0].own [62]),
        .D(\slot_nxt[3] [15]),
        .Q(\g_slot[3].own_reg_n_0_[63] ),
        .R(reset));
  FDRE \g_slot[3].own_reg[64] 
       (.C(clk),
        .CE(\g_slot[0].own [78]),
        .D(\slot_nxt[3] [0]),
        .Q(obs_busy[12]),
        .R(reset));
  FDRE \g_slot[3].own_reg[65] 
       (.C(clk),
        .CE(\g_slot[0].own [78]),
        .D(\slot_nxt[3] [1]),
        .Q(obs_unrooted[12]),
        .R(reset));
  FDRE \g_slot[3].own_reg[66] 
       (.C(clk),
        .CE(\g_slot[0].own [78]),
        .D(\slot_nxt[3] [2]),
        .Q(obs_grown[12]),
        .R(reset));
  FDRE \g_slot[3].own_reg[67] 
       (.C(clk),
        .CE(\g_slot[0].own [78]),
        .D(\slot_nxt[3] [3]),
        .Q(obs_ptr[36]),
        .R(reset));
  FDRE \g_slot[3].own_reg[68] 
       (.C(clk),
        .CE(\g_slot[0].own [78]),
        .D(\slot_nxt[3] [4]),
        .Q(obs_ptr[37]),
        .R(reset));
  FDRE \g_slot[3].own_reg[69] 
       (.C(clk),
        .CE(\g_slot[0].own [78]),
        .D(\slot_nxt[3] [5]),
        .Q(obs_ptr[38]),
        .R(reset));
  FDRE \g_slot[3].own_reg[6] 
       (.C(clk),
        .CE(\g_slot[0].own [14]),
        .D(\slot_nxt[3] [6]),
        .Q(obs_defect[28]),
        .R(reset));
  FDRE \g_slot[3].own_reg[70] 
       (.C(clk),
        .CE(\g_slot[0].own [78]),
        .D(\slot_nxt[3] [6]),
        .Q(obs_defect[12]),
        .R(reset));
  FDSE \g_slot[3].own_reg[71] 
       (.C(clk),
        .CE(\g_slot[0].own [78]),
        .D(\slot_nxt[3] [7]),
        .Q(obs_whole[12]),
        .S(reset));
  FDRE \g_slot[3].own_reg[72] 
       (.C(clk),
        .CE(\g_slot[0].own [78]),
        .D(\slot_nxt[3] [8]),
        .Q(obs_active[12]),
        .R(reset));
  FDRE \g_slot[3].own_reg[73] 
       (.C(clk),
        .CE(\g_slot[0].own [78]),
        .D(\slot_nxt[3] [9]),
        .Q(obs_cid[72]),
        .R(reset));
  FDRE \g_slot[3].own_reg[74] 
       (.C(clk),
        .CE(\g_slot[0].own [78]),
        .D(\slot_nxt[3] [10]),
        .Q(obs_cid[73]),
        .R(reset));
  FDSE \g_slot[3].own_reg[75] 
       (.C(clk),
        .CE(\g_slot[0].own [78]),
        .D(\slot_nxt[3] [11]),
        .Q(obs_cid[74]),
        .S(reset));
  FDSE \g_slot[3].own_reg[76] 
       (.C(clk),
        .CE(\g_slot[0].own [78]),
        .D(\slot_nxt[3] [12]),
        .Q(obs_cid[75]),
        .S(reset));
  FDRE \g_slot[3].own_reg[77] 
       (.C(clk),
        .CE(\g_slot[0].own [78]),
        .D(\slot_nxt[3] [13]),
        .Q(obs_cid[76]),
        .R(reset));
  FDRE \g_slot[3].own_reg[78] 
       (.C(clk),
        .CE(\g_slot[0].own [78]),
        .D(\slot_nxt[3] [14]),
        .Q(obs_cid[77]),
        .R(reset));
  FDRE \g_slot[3].own_reg[79] 
       (.C(clk),
        .CE(\g_slot[0].own [78]),
        .D(\slot_nxt[3] [15]),
        .Q(\g_slot[3].own_reg_n_0_[79] ),
        .R(reset));
  FDSE \g_slot[3].own_reg[7] 
       (.C(clk),
        .CE(\g_slot[0].own [14]),
        .D(\slot_nxt[3] [7]),
        .Q(obs_whole[28]),
        .S(reset));
  FDRE \g_slot[3].own_reg[8] 
       (.C(clk),
        .CE(\g_slot[0].own [14]),
        .D(\slot_nxt[3] [8]),
        .Q(obs_active[28]),
        .R(reset));
  FDRE \g_slot[3].own_reg[9] 
       (.C(clk),
        .CE(\g_slot[0].own [14]),
        .D(\slot_nxt[3] [9]),
        .Q(obs_cid[168]),
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
  (* OFF_PB = "15" *) 
  (* OFF_PTR = "3" *) 
  (* OFF_UNR = "1" *) 
  (* OFF_WHL = "7" *) 
  (* ONE_ONE = "0" *) 
  (* STW = "16" *) 
  (* ST_DROP = "3'b001" *) 
  (* ST_GH = "3'b100" *) 
  (* ST_GW = "3'b010" *) 
  (* ST_IDLE = "3'b000" *) 
  (* ST_MH = "3'b101" *) 
  (* ST_MW = "3'b011" *) 
  (* SYN_IDX = "-1" *) 
  (* ZZZ_ANCHOR = "0" *) 
  snowflake_pe__4 \g_slot[3].pe_i 
       (.ab_active(\g_slot[3].pe_i_i_8_n_0 ),
        .ab_cid({\g_slot[3].pe_i_i_2_n_0 ,\g_slot[3].pe_i_i_3_n_0 ,\g_slot[3].pe_i_i_4_n_0 ,\g_slot[3].pe_i_i_5_n_0 ,\g_slot[3].pe_i_i_6_n_0 ,\g_slot[3].pe_i_i_7_n_0 }),
        .ab_defect(\g_slot[3].pe_i_i_10_n_0 ),
        .ab_ptr({\g_slot[3].pe_i_i_11_n_0 ,\g_slot[3].pe_i_i_12_n_0 ,\g_slot[3].pe_i_i_13_n_0 }),
        .ab_whole(\g_slot[3].pe_i_i_9_n_0 ),
        .clk(1'b0),
        .e_grown({\g_slot[3].pe_i_i_14_n_0 ,\g_slot[3].pe_i_i_15_n_0 ,\g_slot[4].e_grown [0],\g_slot[2].e_grown [1]}),
        .m_pass({m_pass_w,\g_slot[0].pe_i_i_26_n_0 }),
        .nb_active({\g_slot[3].pe_i_i_35_n_0 ,\g_slot[3].pe_i_i_36_n_0 ,p_10_in,p_12_in}),
        .nb_cid(\g_slot[3].nb_cid ),
        .nb_grown(\g_slot[3].nb_grown ),
        .nb_push({\g_slot[3].pe_i_i_41_n_0 ,\g_slot[3].nb_push }),
        .nb_valid({\g_slot[4].g_dir[3].nbv ,\g_slot[1].pe_i_i_18_n_0 ,1'b1,1'b1}),
        .o_busy_c(\NLW_g_slot[3].pe_i_o_busy_c_UNCONNECTED ),
        .o_pulse(\NLW_g_slot[3].pe_i_o_pulse_UNCONNECTED ),
        .o_push(\NLW_g_slot[3].pe_i_o_push_UNCONNECTED [3:0]),
        .p_has_above(\g_slot[3].iw [6]),
        .p_id(\g_slot[3].iw [5:0]),
        .p_is_bnd(\g_slot[3].iw [7]),
        .p_is_bot(\g_slot[3].iw [9]),
        .p_is_syn(\g_slot[3].iw [10]),
        .p_is_top(\g_slot[3].iw [8]),
        .reset(1'b0),
        .st_in({p_0_in34_in,\g_slot[4].nb_cid [5:0],p_11_in,p_0_in104_in,\g_slot[3].pe_i_i_47_n_0 ,p_0_in16_in,\g_slot[4].nb_grown [0],\g_slot[3].pe_i_i_51_n_0 ,1'b0}),
        .st_out(\slot_nxt[3] ),
        .stage({stage_reg,\dbg_stage[0]_i_1_n_0 }),
        .syn_bit(\g_slot[3].pe_i_i_1_n_0 ),
        .zzz_never_used(1'b0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_slot[3].pe_i_i_1 
       (.I0(\syn_buf_reg_n_0_[3] ),
        .I1(\syn_buf_reg_n_0_[2] ),
        .I2(\g_slot[3].sidx [1]),
        .I3(\syn_buf_reg_n_0_[1] ),
        .I4(\g_slot[3].sidx [0]),
        .I5(\syn_buf_reg_n_0_[0] ),
        .O(\g_slot[3].pe_i_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair296" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \g_slot[3].pe_i_i_10 
       (.I0(\g_slot[3].pe_i_i_73_n_0 ),
        .I1(phase[2]),
        .O(\g_slot[3].pe_i_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_slot[3].pe_i_i_100 
       (.I0(\g_slot[3].omir_reg_n_0_[47] ),
        .I1(\g_slot[3].omir_reg_n_0_[31] ),
        .I2(\phase_reg[1]_rep__2_n_0 ),
        .I3(\g_slot[3].omir_reg_n_0_[15] ),
        .I4(phase[0]),
        .I5(\g_slot[3].g_dir[2].esrc [15]),
        .O(\g_slot[3].pe_i_i_100_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_slot[3].pe_i_i_101 
       (.I0(\g_slot[3].own_reg_n_0_[63] ),
        .I1(\g_slot[3].own_reg_n_0_[47] ),
        .I2(\phase_reg[1]_rep__0_n_0 ),
        .I3(data0__1),
        .I4(phase[0]),
        .I5(\g_slot[3].g_dir[2].esrc [15]),
        .O(\g_slot[3].pe_i_i_101_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_slot[3].pe_i_i_102 
       (.I0(obs_whole[16]),
        .I1(obs_whole[20]),
        .I2(\phase_reg[1]_rep__3_n_0 ),
        .I3(obs_whole[24]),
        .I4(phase[0]),
        .I5(obs_whole[28]),
        .O(\g_slot[3].pe_i_i_102_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_slot[3].pe_i_i_103 
       (.I0(obs_defect[16]),
        .I1(obs_defect[20]),
        .I2(\phase_reg[1]_rep__2_n_0 ),
        .I3(obs_defect[24]),
        .I4(phase[0]),
        .I5(obs_defect[28]),
        .O(\g_slot[3].pe_i_i_103_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_slot[3].pe_i_i_104 
       (.I0(obs_ptr[50]),
        .I1(obs_ptr[62]),
        .I2(\phase_reg[1]_rep__0_n_0 ),
        .I3(obs_ptr[74]),
        .I4(phase[0]),
        .I5(obs_ptr[86]),
        .O(\g_slot[3].pe_i_i_104_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_slot[3].pe_i_i_105 
       (.I0(obs_ptr[49]),
        .I1(obs_ptr[61]),
        .I2(\phase_reg[1]_rep__0_n_0 ),
        .I3(obs_ptr[73]),
        .I4(phase[0]),
        .I5(obs_ptr[85]),
        .O(\g_slot[3].pe_i_i_105_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_slot[3].pe_i_i_106 
       (.I0(obs_ptr[48]),
        .I1(obs_ptr[60]),
        .I2(\phase_reg[1]_rep__2_n_0 ),
        .I3(obs_ptr[72]),
        .I4(phase[0]),
        .I5(obs_ptr[84]),
        .O(\g_slot[3].pe_i_i_106_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_slot[3].pe_i_i_107 
       (.I0(obs_unrooted[16]),
        .I1(obs_unrooted[20]),
        .I2(\phase_reg[1]_rep__1_n_0 ),
        .I3(obs_unrooted[24]),
        .I4(phase[0]),
        .I5(obs_unrooted[28]),
        .O(\g_slot[3].pe_i_i_107_n_0 ));
  LUT5 #(
    .INIT(32'h20202F20)) 
    \g_slot[3].pe_i_i_108 
       (.I0(obs_growth[59]),
        .I1(obs_growth[58]),
        .I2(phase[0]),
        .I3(obs_growth[75]),
        .I4(obs_growth[74]),
        .O(\g_slot[3].pe_i_i_108_n_0 ));
  LUT5 #(
    .INIT(32'h20202F20)) 
    \g_slot[3].pe_i_i_109 
       (.I0(obs_growth[27]),
        .I1(obs_growth[26]),
        .I2(phase[0]),
        .I3(obs_growth[43]),
        .I4(obs_growth[42]),
        .O(\g_slot[3].pe_i_i_109_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair240" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \g_slot[3].pe_i_i_11 
       (.I0(\g_slot[3].pe_i_i_74_n_0 ),
        .I1(phase[2]),
        .O(\g_slot[3].pe_i_i_11_n_0 ));
  LUT5 #(
    .INIT(32'h20202F20)) 
    \g_slot[3].pe_i_i_110 
       (.I0(\g_slot[3].g_dir[2].esrc [17]),
        .I1(\g_slot[3].g_dir[2].esrc [16]),
        .I2(phase[0]),
        .I3(obs_unrooted[28]),
        .I4(obs_busy[28]),
        .O(\g_slot[3].pe_i_i_110_n_0 ));
  LUT5 #(
    .INIT(32'h20202F20)) 
    \g_slot[3].pe_i_i_111 
       (.I0(\g_eslot[7].eomir_reg_n_0_[7] ),
        .I1(\g_eslot[7].eomir_reg_n_0_[6] ),
        .I2(phase[0]),
        .I3(\g_eslot[7].eomir_reg_n_0_[4] ),
        .I4(\g_eslot[7].eomir_reg_n_0_[3] ),
        .O(\g_slot[3].pe_i_i_111_n_0 ));
  LUT5 #(
    .INIT(32'h20202F20)) 
    \g_slot[3].pe_i_i_112 
       (.I0(obs_growth[61]),
        .I1(obs_growth[60]),
        .I2(phase[0]),
        .I3(obs_growth[77]),
        .I4(obs_growth[76]),
        .O(\g_slot[3].pe_i_i_112_n_0 ));
  LUT5 #(
    .INIT(32'h20202F20)) 
    \g_slot[3].pe_i_i_113 
       (.I0(obs_growth[29]),
        .I1(obs_growth[28]),
        .I2(phase[0]),
        .I3(obs_growth[45]),
        .I4(obs_growth[44]),
        .O(\g_slot[3].pe_i_i_113_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FBFFFB00)) 
    \g_slot[3].pe_i_i_114 
       (.I0(phase[0]),
        .I1(\g_slot[3].g_dir[3].esrc [68]),
        .I2(\phase_reg[1]_rep__0_n_0 ),
        .I3(phase[2]),
        .I4(\g_slot[3].pe_i_i_75_n_0 ),
        .I5(p_0_in21_in),
        .O(\g_slot[3].pe_i_i_114_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_slot[3].pe_i_i_115 
       (.I0(\g_slot[3].omir_reg_n_0_[35] ),
        .I1(\g_slot[3].omir_reg_n_0_[19] ),
        .I2(\phase_reg[1]_rep__3_n_0 ),
        .I3(\g_slot[3].omir_reg_n_0_[3] ),
        .I4(phase[0]),
        .I5(obs_ptr[84]),
        .O(\g_slot[3].pe_i_i_115_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FEFAFE05)) 
    \g_slot[3].pe_i_i_116 
       (.I0(phase[0]),
        .I1(\g_slot[3].omir_reg_n_0_[53] ),
        .I2(\phase_reg[1]_rep__3_n_0 ),
        .I3(phase[2]),
        .I4(\g_slot[3].pe_i_i_118_n_0 ),
        .I5(p_0_in20_in),
        .O(\g_slot[3].pe_i_i_116_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair240" *) 
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \g_slot[3].pe_i_i_117 
       (.I0(phase[0]),
        .I1(\g_slot[3].g_dir[3].esrc [69]),
        .I2(\phase_reg[1]_rep__0_n_0 ),
        .I3(phase[2]),
        .I4(\g_slot[3].pe_i_i_74_n_0 ),
        .O(p_0_in21_in));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_slot[3].pe_i_i_118 
       (.I0(\g_slot[3].omir_reg_n_0_[37] ),
        .I1(\g_slot[3].omir_reg_n_0_[21] ),
        .I2(\phase_reg[1]_rep__3_n_0 ),
        .I3(\g_slot[3].omir_reg_n_0_[5] ),
        .I4(phase[0]),
        .I5(obs_ptr[86]),
        .O(\g_slot[3].pe_i_i_118_n_0 ));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \g_slot[3].pe_i_i_119 
       (.I0(phase[0]),
        .I1(\g_slot[3].omir_reg_n_0_[52] ),
        .I2(\phase_reg[1]_rep__3_n_0 ),
        .I3(phase[2]),
        .I4(\g_slot[3].pe_i_i_120_n_0 ),
        .O(p_0_in20_in));
  (* SOFT_HLUTNM = "soft_lutpair285" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \g_slot[3].pe_i_i_12 
       (.I0(\g_slot[3].pe_i_i_75_n_0 ),
        .I1(phase[2]),
        .O(\g_slot[3].pe_i_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_slot[3].pe_i_i_120 
       (.I0(\g_slot[3].omir_reg_n_0_[36] ),
        .I1(\g_slot[3].omir_reg_n_0_[20] ),
        .I2(\phase_reg[1]_rep__3_n_0 ),
        .I3(\g_slot[3].omir_reg_n_0_[4] ),
        .I4(phase[0]),
        .I5(obs_ptr[85]),
        .O(\g_slot[3].pe_i_i_120_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair286" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \g_slot[3].pe_i_i_13 
       (.I0(\g_slot[3].pe_i_i_76_n_0 ),
        .I1(phase[2]),
        .O(\g_slot[3].pe_i_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h0A0A0A0A0A3A0A0A)) 
    \g_slot[3].pe_i_i_14 
       (.I0(\g_slot[3].pe_i_i_77_n_0 ),
        .I1(\phase_reg[1]_rep__1_n_0 ),
        .I2(phase[2]),
        .I3(\g_slot[3].g_dir[3].esrc [64]),
        .I4(\g_slot[3].g_dir[3].esrc [65]),
        .I5(phase[0]),
        .O(\g_slot[3].pe_i_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h0A0A0A0A0A3A0A0A)) 
    \g_slot[3].pe_i_i_15 
       (.I0(\g_slot[3].pe_i_i_78_n_0 ),
        .I1(\phase_reg[1]_rep__0_n_0 ),
        .I2(phase[2]),
        .I3(\g_eslot[7].eomir_reg_n_0_[9] ),
        .I4(\g_eslot[7].eomir_reg_n_0_[10] ),
        .I5(phase[0]),
        .O(\g_slot[3].pe_i_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h0A0A0A0A0A3A0A0A)) 
    \g_slot[3].pe_i_i_16 
       (.I0(\g_slot[3].pe_i_i_79_n_0 ),
        .I1(\phase_reg[1]_rep__0_n_0 ),
        .I2(phase[2]),
        .I3(obs_growth[14]),
        .I4(obs_growth[15]),
        .I5(phase[0]),
        .O(\g_slot[4].e_grown [0]));
  (* SOFT_HLUTNM = "soft_lutpair232" *) 
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \g_slot[3].pe_i_i_17 
       (.I0(phase[0]),
        .I1(\g_slot[3].g_dir[3].esrc [78]),
        .I2(\phase_reg[1]_rep__3_n_0 ),
        .I3(phase[2]),
        .I4(\g_slot[3].pe_i_i_65_n_0 ),
        .O(\g_slot[3].nb_cid [23]));
  (* SOFT_HLUTNM = "soft_lutpair233" *) 
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \g_slot[3].pe_i_i_18 
       (.I0(phase[0]),
        .I1(\g_slot[3].g_dir[3].esrc [77]),
        .I2(\phase_reg[1]_rep__3_n_0 ),
        .I3(phase[2]),
        .I4(\g_slot[3].pe_i_i_66_n_0 ),
        .O(\g_slot[3].nb_cid [22]));
  (* SOFT_HLUTNM = "soft_lutpair234" *) 
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \g_slot[3].pe_i_i_19 
       (.I0(phase[0]),
        .I1(\g_slot[3].g_dir[3].esrc [76]),
        .I2(\phase_reg[1]_rep__3_n_0 ),
        .I3(phase[2]),
        .I4(\g_slot[3].pe_i_i_67_n_0 ),
        .O(\g_slot[3].nb_cid [21]));
  (* SOFT_HLUTNM = "soft_lutpair232" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \g_slot[3].pe_i_i_2 
       (.I0(\g_slot[3].pe_i_i_65_n_0 ),
        .I1(phase[2]),
        .O(\g_slot[3].pe_i_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair235" *) 
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \g_slot[3].pe_i_i_20 
       (.I0(phase[0]),
        .I1(\g_slot[3].g_dir[3].esrc [75]),
        .I2(\phase_reg[1]_rep__3_n_0 ),
        .I3(phase[2]),
        .I4(\g_slot[3].pe_i_i_68_n_0 ),
        .O(\g_slot[3].nb_cid [20]));
  (* SOFT_HLUTNM = "soft_lutpair236" *) 
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \g_slot[3].pe_i_i_21 
       (.I0(phase[0]),
        .I1(\g_slot[3].g_dir[3].esrc [74]),
        .I2(\phase_reg[1]_rep__3_n_0 ),
        .I3(phase[2]),
        .I4(\g_slot[3].pe_i_i_69_n_0 ),
        .O(\g_slot[3].nb_cid [19]));
  (* SOFT_HLUTNM = "soft_lutpair237" *) 
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \g_slot[3].pe_i_i_22 
       (.I0(phase[0]),
        .I1(\g_slot[3].g_dir[3].esrc [73]),
        .I2(\phase_reg[1]_rep__3_n_0 ),
        .I3(phase[2]),
        .I4(\g_slot[3].pe_i_i_70_n_0 ),
        .O(\g_slot[3].nb_cid [18]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \g_slot[3].pe_i_i_23 
       (.I0(phase[0]),
        .I1(\g_slot[3].omir_reg_n_0_[62] ),
        .I2(\phase_reg[1]_rep__2_n_0 ),
        .I3(phase[2]),
        .I4(\g_slot[3].pe_i_i_80_n_0 ),
        .O(\g_slot[3].nb_cid [17]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \g_slot[3].pe_i_i_24 
       (.I0(phase[0]),
        .I1(\g_slot[3].omir_reg_n_0_[61] ),
        .I2(\phase_reg[1]_rep__2_n_0 ),
        .I3(phase[2]),
        .I4(\g_slot[3].pe_i_i_81_n_0 ),
        .O(\g_slot[3].nb_cid [16]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \g_slot[3].pe_i_i_25 
       (.I0(phase[0]),
        .I1(\g_slot[3].omir_reg_n_0_[60] ),
        .I2(\phase_reg[1]_rep__2_n_0 ),
        .I3(phase[2]),
        .I4(\g_slot[3].pe_i_i_82_n_0 ),
        .O(\g_slot[3].nb_cid [15]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \g_slot[3].pe_i_i_26 
       (.I0(phase[0]),
        .I1(\g_slot[3].omir_reg_n_0_[59] ),
        .I2(\phase_reg[1]_rep__2_n_0 ),
        .I3(phase[2]),
        .I4(\g_slot[3].pe_i_i_83_n_0 ),
        .O(\g_slot[3].nb_cid [14]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \g_slot[3].pe_i_i_27 
       (.I0(phase[0]),
        .I1(\g_slot[3].omir_reg_n_0_[58] ),
        .I2(\phase_reg[1]_rep__2_n_0 ),
        .I3(phase[2]),
        .I4(\g_slot[3].pe_i_i_84_n_0 ),
        .O(\g_slot[3].nb_cid [13]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \g_slot[3].pe_i_i_28 
       (.I0(phase[0]),
        .I1(\g_slot[3].omir_reg_n_0_[57] ),
        .I2(\phase_reg[1]_rep__2_n_0 ),
        .I3(phase[2]),
        .I4(\g_slot[3].pe_i_i_85_n_0 ),
        .O(\g_slot[3].nb_cid [12]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \g_slot[3].pe_i_i_29 
       (.I0(phase[0]),
        .I1(obs_cid[83]),
        .I2(\phase_reg[1]_rep__2_n_0 ),
        .I3(phase[2]),
        .I4(\g_slot[3].pe_i_i_86_n_0 ),
        .O(\g_slot[3].nb_cid [11]));
  (* SOFT_HLUTNM = "soft_lutpair233" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \g_slot[3].pe_i_i_3 
       (.I0(\g_slot[3].pe_i_i_66_n_0 ),
        .I1(phase[2]),
        .O(\g_slot[3].pe_i_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \g_slot[3].pe_i_i_30 
       (.I0(phase[0]),
        .I1(obs_cid[82]),
        .I2(\phase_reg[1]_rep__2_n_0 ),
        .I3(phase[2]),
        .I4(\g_slot[3].pe_i_i_87_n_0 ),
        .O(\g_slot[3].nb_cid [10]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \g_slot[3].pe_i_i_31 
       (.I0(phase[0]),
        .I1(obs_cid[81]),
        .I2(\phase_reg[1]_rep__2_n_0 ),
        .I3(phase[2]),
        .I4(\g_slot[3].pe_i_i_88_n_0 ),
        .O(\g_slot[3].nb_cid [9]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \g_slot[3].pe_i_i_32 
       (.I0(phase[0]),
        .I1(obs_cid[80]),
        .I2(\phase_reg[1]_rep__2_n_0 ),
        .I3(phase[2]),
        .I4(\g_slot[3].pe_i_i_89_n_0 ),
        .O(\g_slot[3].nb_cid [8]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \g_slot[3].pe_i_i_33 
       (.I0(phase[0]),
        .I1(obs_cid[79]),
        .I2(\phase_reg[1]_rep__2_n_0 ),
        .I3(phase[2]),
        .I4(\g_slot[3].pe_i_i_90_n_0 ),
        .O(\g_slot[3].nb_cid [7]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \g_slot[3].pe_i_i_34 
       (.I0(phase[0]),
        .I1(obs_cid[78]),
        .I2(\phase_reg[1]_rep__2_n_0 ),
        .I3(phase[2]),
        .I4(\g_slot[3].pe_i_i_91_n_0 ),
        .O(\g_slot[3].nb_cid [6]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \g_slot[3].pe_i_i_35 
       (.I0(phase[0]),
        .I1(\g_slot[3].g_dir[3].esrc [72]),
        .I2(\phase_reg[1]_rep__3_n_0 ),
        .I3(phase[2]),
        .I4(\g_slot[3].pe_i_i_71_n_0 ),
        .O(\g_slot[3].pe_i_i_35_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair263" *) 
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \g_slot[3].pe_i_i_36 
       (.I0(phase[0]),
        .I1(\g_slot[3].omir_reg_n_0_[56] ),
        .I2(phase[1]),
        .I3(phase[2]),
        .I4(\g_slot[3].pe_i_i_92_n_0 ),
        .O(\g_slot[3].pe_i_i_36_n_0 ));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \g_slot[3].pe_i_i_37 
       (.I0(phase[0]),
        .I1(obs_active[13]),
        .I2(\phase_reg[1]_rep__3_n_0 ),
        .I3(phase[2]),
        .I4(\g_slot[3].pe_i_i_93_n_0 ),
        .O(p_10_in));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \g_slot[3].pe_i_i_38 
       (.I0(phase[0]),
        .I1(\g_slot[3].g_dir[3].esrc [66]),
        .I2(\phase_reg[1]_rep__2_n_0 ),
        .I3(phase[2]),
        .I4(\g_slot[3].pe_i_i_94_n_0 ),
        .O(\g_slot[3].nb_grown [3]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \g_slot[3].pe_i_i_39 
       (.I0(phase[0]),
        .I1(\g_slot[3].omir_reg_n_0_[50] ),
        .I2(\phase_reg[1]_rep__2_n_0 ),
        .I3(phase[2]),
        .I4(\g_slot[3].pe_i_i_95_n_0 ),
        .O(\g_slot[3].nb_grown [2]));
  (* SOFT_HLUTNM = "soft_lutpair234" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \g_slot[3].pe_i_i_4 
       (.I0(\g_slot[3].pe_i_i_67_n_0 ),
        .I1(phase[2]),
        .O(\g_slot[3].pe_i_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \g_slot[3].pe_i_i_40 
       (.I0(phase[0]),
        .I1(obs_grown[13]),
        .I2(\phase_reg[1]_rep__2_n_0 ),
        .I3(phase[2]),
        .I4(\g_slot[3].pe_i_i_96_n_0 ),
        .O(\g_slot[3].nb_grown [1]));
  (* SOFT_HLUTNM = "soft_lutpair284" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \g_slot[3].pe_i_i_41 
       (.I0(\g_slot[3].nb_push122_out ),
        .I1(\g_slot[3].pe_i_i_98_n_0 ),
        .I2(phase[2]),
        .O(\g_slot[3].pe_i_i_41_n_0 ));
  LUT6 #(
    .INIT(64'h0020AA8800200000)) 
    \g_slot[3].pe_i_i_42 
       (.I0(\g_slot[3].nb_push1 ),
        .I1(phase[0]),
        .I2(\g_slot[3].omir_reg_n_0_[63] ),
        .I3(\phase_reg[1]_rep__2_n_0 ),
        .I4(phase[2]),
        .I5(\g_slot[3].pe_i_i_100_n_0 ),
        .O(\g_slot[3].nb_push [2]));
  (* SOFT_HLUTNM = "soft_lutpair173" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    \g_slot[3].pe_i_i_43 
       (.I0(p_0_in7_in[2]),
        .I1(p_0_in7_in[0]),
        .I2(p_0_in7_in[1]),
        .I3(p_0_in33_in),
        .O(\g_slot[3].nb_push [1]));
  (* SOFT_HLUTNM = "soft_lutpair239" *) 
  LUT5 #(
    .INIT(32'h01080000)) 
    \g_slot[3].pe_i_i_44 
       (.I0(p_0_in11_in[1]),
        .I1(\g_slot[1].pe_i_i_103_n_0 ),
        .I2(p_0_in11_in[2]),
        .I3(p_0_in11_in[0]),
        .I4(p_0_in35_in),
        .O(\g_slot[3].nb_push [0]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \g_slot[3].pe_i_i_45 
       (.I0(phase[0]),
        .I1(\g_slot[3].own_reg_n_0_[79] ),
        .I2(\phase_reg[1]_rep__0_n_0 ),
        .I3(phase[2]),
        .I4(\g_slot[3].pe_i_i_101_n_0 ),
        .O(p_0_in34_in));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \g_slot[3].pe_i_i_46 
       (.I0(phase[0]),
        .I1(obs_whole[12]),
        .I2(\phase_reg[1]_rep__3_n_0 ),
        .I3(phase[2]),
        .I4(\g_slot[3].pe_i_i_102_n_0 ),
        .O(p_0_in104_in));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \g_slot[3].pe_i_i_47 
       (.I0(phase[0]),
        .I1(obs_defect[12]),
        .I2(\phase_reg[1]_rep__2_n_0 ),
        .I3(phase[2]),
        .I4(\g_slot[3].pe_i_i_103_n_0 ),
        .O(\g_slot[3].pe_i_i_47_n_0 ));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \g_slot[3].pe_i_i_48 
       (.I0(phase[0]),
        .I1(obs_ptr[38]),
        .I2(\phase_reg[1]_rep__0_n_0 ),
        .I3(phase[2]),
        .I4(\g_slot[3].pe_i_i_104_n_0 ),
        .O(p_0_in16_in[2]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \g_slot[3].pe_i_i_49 
       (.I0(phase[0]),
        .I1(obs_ptr[37]),
        .I2(\phase_reg[1]_rep__0_n_0 ),
        .I3(phase[2]),
        .I4(\g_slot[3].pe_i_i_105_n_0 ),
        .O(p_0_in16_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair235" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \g_slot[3].pe_i_i_5 
       (.I0(\g_slot[3].pe_i_i_68_n_0 ),
        .I1(phase[2]),
        .O(\g_slot[3].pe_i_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \g_slot[3].pe_i_i_50 
       (.I0(phase[0]),
        .I1(obs_ptr[36]),
        .I2(\phase_reg[1]_rep__2_n_0 ),
        .I3(phase[2]),
        .I4(\g_slot[3].pe_i_i_106_n_0 ),
        .O(p_0_in16_in[0]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \g_slot[3].pe_i_i_51 
       (.I0(phase[0]),
        .I1(obs_unrooted[12]),
        .I2(\phase_reg[1]_rep__1_n_0 ),
        .I3(phase[2]),
        .I4(\g_slot[3].pe_i_i_107_n_0 ),
        .O(\g_slot[3].pe_i_i_51_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair185" *) 
  LUT5 #(
    .INIT(32'h84021094)) 
    \g_slot[3].pe_i_i_52 
       (.I0(phase[0]),
        .I1(\g_slot[0].pe_i_i_92_n_0 ),
        .I2(\g_slot[0].pe_i_i_93_n_0 ),
        .I3(phase[2]),
        .I4(\phase_reg[1]_rep_n_0 ),
        .O(\g_slot[3].iw [5]));
  (* SOFT_HLUTNM = "soft_lutpair215" *) 
  LUT5 #(
    .INIT(32'h4A29060A)) 
    \g_slot[3].pe_i_i_53 
       (.I0(\g_slot[0].pe_i_i_93_n_0 ),
        .I1(\g_slot[0].pe_i_i_92_n_0 ),
        .I2(phase[2]),
        .I3(phase[0]),
        .I4(\phase_reg[1]_rep_n_0 ),
        .O(\g_slot[3].iw [4]));
  (* SOFT_HLUTNM = "soft_lutpair193" *) 
  LUT5 #(
    .INIT(32'h51720E01)) 
    \g_slot[3].pe_i_i_54 
       (.I0(\g_slot[0].pe_i_i_92_n_0 ),
        .I1(\phase_reg[1]_rep_n_0 ),
        .I2(phase[0]),
        .I3(phase[2]),
        .I4(\g_slot[0].pe_i_i_93_n_0 ),
        .O(\g_slot[3].iw [3]));
  (* SOFT_HLUTNM = "soft_lutpair211" *) 
  LUT5 #(
    .INIT(32'h0720B986)) 
    \g_slot[3].pe_i_i_55 
       (.I0(\phase_reg[1]_rep_n_0 ),
        .I1(phase[0]),
        .I2(phase[2]),
        .I3(\g_slot[0].pe_i_i_92_n_0 ),
        .I4(\g_slot[0].pe_i_i_93_n_0 ),
        .O(\g_slot[3].iw [2]));
  (* SOFT_HLUTNM = "soft_lutpair185" *) 
  LUT5 #(
    .INIT(32'h24E08411)) 
    \g_slot[3].pe_i_i_56 
       (.I0(\phase_reg[1]_rep_n_0 ),
        .I1(phase[0]),
        .I2(phase[2]),
        .I3(\g_slot[0].pe_i_i_92_n_0 ),
        .I4(\g_slot[0].pe_i_i_93_n_0 ),
        .O(\g_slot[3].iw [1]));
  (* SOFT_HLUTNM = "soft_lutpair197" *) 
  LUT5 #(
    .INIT(32'h820BA02D)) 
    \g_slot[3].pe_i_i_57 
       (.I0(\phase_reg[1]_rep_n_0 ),
        .I1(phase[0]),
        .I2(phase[2]),
        .I3(\g_slot[0].pe_i_i_93_n_0 ),
        .I4(\g_slot[0].pe_i_i_92_n_0 ),
        .O(\g_slot[3].iw [0]));
  (* SOFT_HLUTNM = "soft_lutpair192" *) 
  LUT5 #(
    .INIT(32'hE2960010)) 
    \g_slot[3].pe_i_i_58 
       (.I0(\g_slot[0].pe_i_i_92_n_0 ),
        .I1(phase[0]),
        .I2(\phase_reg[1]_rep_n_0 ),
        .I3(phase[2]),
        .I4(\g_slot[0].pe_i_i_93_n_0 ),
        .O(\g_slot[3].iw [6]));
  (* SOFT_HLUTNM = "soft_lutpair204" *) 
  LUT5 #(
    .INIT(32'h0E014040)) 
    \g_slot[3].pe_i_i_59 
       (.I0(\g_slot[0].pe_i_i_92_n_0 ),
        .I1(\phase_reg[1]_rep_n_0 ),
        .I2(phase[0]),
        .I3(phase[2]),
        .I4(\g_slot[0].pe_i_i_93_n_0 ),
        .O(\g_slot[3].iw [7]));
  (* SOFT_HLUTNM = "soft_lutpair236" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \g_slot[3].pe_i_i_6 
       (.I0(\g_slot[3].pe_i_i_69_n_0 ),
        .I1(phase[2]),
        .O(\g_slot[3].pe_i_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair212" *) 
  LUT5 #(
    .INIT(32'h81204508)) 
    \g_slot[3].pe_i_i_60 
       (.I0(\g_slot[0].pe_i_i_93_n_0 ),
        .I1(\phase_reg[1]_rep_n_0 ),
        .I2(phase[0]),
        .I3(phase[2]),
        .I4(\g_slot[0].pe_i_i_92_n_0 ),
        .O(\g_slot[3].iw [8]));
  (* SOFT_HLUTNM = "soft_lutpair186" *) 
  LUT5 #(
    .INIT(32'h06940518)) 
    \g_slot[3].pe_i_i_61 
       (.I0(\g_slot[0].pe_i_i_93_n_0 ),
        .I1(\g_slot[0].pe_i_i_92_n_0 ),
        .I2(phase[2]),
        .I3(phase[0]),
        .I4(\phase_reg[1]_rep_n_0 ),
        .O(\g_slot[3].iw [9]));
  (* SOFT_HLUTNM = "soft_lutpair213" *) 
  LUT5 #(
    .INIT(32'h00041B81)) 
    \g_slot[3].pe_i_i_62 
       (.I0(phase[0]),
        .I1(\phase_reg[1]_rep_n_0 ),
        .I2(phase[2]),
        .I3(\g_slot[0].pe_i_i_92_n_0 ),
        .I4(\g_slot[0].pe_i_i_93_n_0 ),
        .O(\g_slot[3].iw [10]));
  (* SOFT_HLUTNM = "soft_lutpair265" *) 
  LUT4 #(
    .INIT(16'hEAFE)) 
    \g_slot[3].pe_i_i_63 
       (.I0(\g_slot[1].pe_i_i_65_n_0 ),
        .I1(\g_slot[0].pe_i_i_93_n_0 ),
        .I2(\g_slot[0].pe_i_i_92_n_0 ),
        .I3(phase[0]),
        .O(\g_slot[3].sidx [1]));
  (* SOFT_HLUTNM = "soft_lutpair265" *) 
  LUT4 #(
    .INIT(16'hFEEE)) 
    \g_slot[3].pe_i_i_64 
       (.I0(\g_slot[0].pe_i_i_93_n_0 ),
        .I1(\g_slot[1].pe_i_i_65_n_0 ),
        .I2(phase[0]),
        .I3(\g_slot[0].pe_i_i_92_n_0 ),
        .O(\g_slot[3].sidx [0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_slot[3].pe_i_i_65 
       (.I0(obs_cid[77]),
        .I1(obs_cid[101]),
        .I2(\phase_reg[1]_rep__3_n_0 ),
        .I3(obs_cid[125]),
        .I4(phase[0]),
        .I5(obs_cid[149]),
        .O(\g_slot[3].pe_i_i_65_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_slot[3].pe_i_i_66 
       (.I0(obs_cid[76]),
        .I1(obs_cid[100]),
        .I2(\phase_reg[1]_rep__3_n_0 ),
        .I3(obs_cid[124]),
        .I4(phase[0]),
        .I5(obs_cid[148]),
        .O(\g_slot[3].pe_i_i_66_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_slot[3].pe_i_i_67 
       (.I0(obs_cid[75]),
        .I1(obs_cid[99]),
        .I2(\phase_reg[1]_rep__3_n_0 ),
        .I3(obs_cid[123]),
        .I4(phase[0]),
        .I5(obs_cid[147]),
        .O(\g_slot[3].pe_i_i_67_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_slot[3].pe_i_i_68 
       (.I0(obs_cid[74]),
        .I1(obs_cid[98]),
        .I2(\phase_reg[1]_rep__3_n_0 ),
        .I3(obs_cid[122]),
        .I4(phase[0]),
        .I5(obs_cid[146]),
        .O(\g_slot[3].pe_i_i_68_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_slot[3].pe_i_i_69 
       (.I0(obs_cid[73]),
        .I1(obs_cid[97]),
        .I2(\phase_reg[1]_rep__3_n_0 ),
        .I3(obs_cid[121]),
        .I4(phase[0]),
        .I5(obs_cid[145]),
        .O(\g_slot[3].pe_i_i_69_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair237" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \g_slot[3].pe_i_i_7 
       (.I0(\g_slot[3].pe_i_i_70_n_0 ),
        .I1(phase[2]),
        .O(\g_slot[3].pe_i_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_slot[3].pe_i_i_70 
       (.I0(obs_cid[72]),
        .I1(obs_cid[96]),
        .I2(\phase_reg[1]_rep__3_n_0 ),
        .I3(obs_cid[120]),
        .I4(phase[0]),
        .I5(obs_cid[144]),
        .O(\g_slot[3].pe_i_i_70_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_slot[3].pe_i_i_71 
       (.I0(obs_active[12]),
        .I1(obs_active[16]),
        .I2(\phase_reg[1]_rep__3_n_0 ),
        .I3(obs_active[20]),
        .I4(phase[0]),
        .I5(obs_active[24]),
        .O(\g_slot[3].pe_i_i_71_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_slot[3].pe_i_i_72 
       (.I0(obs_whole[12]),
        .I1(obs_whole[16]),
        .I2(\phase_reg[1]_rep__3_n_0 ),
        .I3(obs_whole[20]),
        .I4(phase[0]),
        .I5(obs_whole[24]),
        .O(\g_slot[3].pe_i_i_72_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_slot[3].pe_i_i_73 
       (.I0(obs_defect[12]),
        .I1(obs_defect[16]),
        .I2(\phase_reg[1]_rep__2_n_0 ),
        .I3(obs_defect[20]),
        .I4(phase[0]),
        .I5(obs_defect[24]),
        .O(\g_slot[3].pe_i_i_73_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_slot[3].pe_i_i_74 
       (.I0(obs_ptr[38]),
        .I1(obs_ptr[50]),
        .I2(\phase_reg[1]_rep__0_n_0 ),
        .I3(obs_ptr[62]),
        .I4(phase[0]),
        .I5(obs_ptr[74]),
        .O(\g_slot[3].pe_i_i_74_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_slot[3].pe_i_i_75 
       (.I0(obs_ptr[37]),
        .I1(obs_ptr[49]),
        .I2(\phase_reg[1]_rep__0_n_0 ),
        .I3(obs_ptr[61]),
        .I4(phase[0]),
        .I5(obs_ptr[73]),
        .O(\g_slot[3].pe_i_i_75_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_slot[3].pe_i_i_76 
       (.I0(obs_ptr[36]),
        .I1(obs_ptr[48]),
        .I2(\phase_reg[1]_rep__0_n_0 ),
        .I3(obs_ptr[60]),
        .I4(phase[0]),
        .I5(obs_ptr[72]),
        .O(\g_slot[3].pe_i_i_76_n_0 ));
  MUXF7 \g_slot[3].pe_i_i_77 
       (.I0(\g_slot[3].pe_i_i_108_n_0 ),
        .I1(\g_slot[3].pe_i_i_109_n_0 ),
        .O(\g_slot[3].pe_i_i_77_n_0 ),
        .S(\phase_reg[1]_rep__1_n_0 ));
  MUXF7 \g_slot[3].pe_i_i_78 
       (.I0(\g_slot[3].pe_i_i_110_n_0 ),
        .I1(\g_slot[3].pe_i_i_111_n_0 ),
        .O(\g_slot[3].pe_i_i_78_n_0 ),
        .S(\phase_reg[1]_rep__0_n_0 ));
  MUXF7 \g_slot[3].pe_i_i_79 
       (.I0(\g_slot[3].pe_i_i_112_n_0 ),
        .I1(\g_slot[3].pe_i_i_113_n_0 ),
        .O(\g_slot[3].pe_i_i_79_n_0 ),
        .S(\phase_reg[1]_rep__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair238" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \g_slot[3].pe_i_i_8 
       (.I0(\g_slot[3].pe_i_i_71_n_0 ),
        .I1(phase[2]),
        .O(\g_slot[3].pe_i_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_slot[3].pe_i_i_80 
       (.I0(\g_slot[3].omir_reg_n_0_[46] ),
        .I1(\g_slot[3].omir_reg_n_0_[30] ),
        .I2(\phase_reg[1]_rep__2_n_0 ),
        .I3(\g_slot[3].omir_reg_n_0_[14] ),
        .I4(phase[0]),
        .I5(obs_cid[173]),
        .O(\g_slot[3].pe_i_i_80_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_slot[3].pe_i_i_81 
       (.I0(\g_slot[3].omir_reg_n_0_[45] ),
        .I1(\g_slot[3].omir_reg_n_0_[29] ),
        .I2(\phase_reg[1]_rep__2_n_0 ),
        .I3(\g_slot[3].omir_reg_n_0_[13] ),
        .I4(phase[0]),
        .I5(obs_cid[172]),
        .O(\g_slot[3].pe_i_i_81_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_slot[3].pe_i_i_82 
       (.I0(\g_slot[3].omir_reg_n_0_[44] ),
        .I1(\g_slot[3].omir_reg_n_0_[28] ),
        .I2(\phase_reg[1]_rep__2_n_0 ),
        .I3(\g_slot[3].omir_reg_n_0_[12] ),
        .I4(phase[0]),
        .I5(obs_cid[171]),
        .O(\g_slot[3].pe_i_i_82_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_slot[3].pe_i_i_83 
       (.I0(\g_slot[3].omir_reg_n_0_[43] ),
        .I1(\g_slot[3].omir_reg_n_0_[27] ),
        .I2(\phase_reg[1]_rep__2_n_0 ),
        .I3(\g_slot[3].omir_reg_n_0_[11] ),
        .I4(phase[0]),
        .I5(obs_cid[170]),
        .O(\g_slot[3].pe_i_i_83_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_slot[3].pe_i_i_84 
       (.I0(\g_slot[3].omir_reg_n_0_[42] ),
        .I1(\g_slot[3].omir_reg_n_0_[26] ),
        .I2(\phase_reg[1]_rep__2_n_0 ),
        .I3(\g_slot[3].omir_reg_n_0_[10] ),
        .I4(phase[0]),
        .I5(obs_cid[169]),
        .O(\g_slot[3].pe_i_i_84_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_slot[3].pe_i_i_85 
       (.I0(\g_slot[3].omir_reg_n_0_[41] ),
        .I1(\g_slot[3].omir_reg_n_0_[25] ),
        .I2(\phase_reg[1]_rep__2_n_0 ),
        .I3(\g_slot[3].omir_reg_n_0_[9] ),
        .I4(phase[0]),
        .I5(obs_cid[168]),
        .O(\g_slot[3].pe_i_i_85_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_slot[3].pe_i_i_86 
       (.I0(obs_cid[107]),
        .I1(obs_cid[131]),
        .I2(\phase_reg[1]_rep__2_n_0 ),
        .I3(obs_cid[155]),
        .I4(phase[0]),
        .I5(obs_cid[179]),
        .O(\g_slot[3].pe_i_i_86_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_slot[3].pe_i_i_87 
       (.I0(obs_cid[106]),
        .I1(obs_cid[130]),
        .I2(\phase_reg[1]_rep__2_n_0 ),
        .I3(obs_cid[154]),
        .I4(phase[0]),
        .I5(obs_cid[178]),
        .O(\g_slot[3].pe_i_i_87_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_slot[3].pe_i_i_88 
       (.I0(obs_cid[105]),
        .I1(obs_cid[129]),
        .I2(\phase_reg[1]_rep__2_n_0 ),
        .I3(obs_cid[153]),
        .I4(phase[0]),
        .I5(obs_cid[177]),
        .O(\g_slot[3].pe_i_i_88_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_slot[3].pe_i_i_89 
       (.I0(obs_cid[104]),
        .I1(obs_cid[128]),
        .I2(\phase_reg[1]_rep__2_n_0 ),
        .I3(obs_cid[152]),
        .I4(phase[0]),
        .I5(obs_cid[176]),
        .O(\g_slot[3].pe_i_i_89_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair259" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \g_slot[3].pe_i_i_9 
       (.I0(\g_slot[3].pe_i_i_72_n_0 ),
        .I1(phase[2]),
        .O(\g_slot[3].pe_i_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_slot[3].pe_i_i_90 
       (.I0(obs_cid[103]),
        .I1(obs_cid[127]),
        .I2(\phase_reg[1]_rep__2_n_0 ),
        .I3(obs_cid[151]),
        .I4(phase[0]),
        .I5(obs_cid[175]),
        .O(\g_slot[3].pe_i_i_90_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_slot[3].pe_i_i_91 
       (.I0(obs_cid[102]),
        .I1(obs_cid[126]),
        .I2(\phase_reg[1]_rep__2_n_0 ),
        .I3(obs_cid[150]),
        .I4(phase[0]),
        .I5(obs_cid[174]),
        .O(\g_slot[3].pe_i_i_91_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_slot[3].pe_i_i_92 
       (.I0(\g_slot[3].omir_reg_n_0_[40] ),
        .I1(\g_slot[3].omir_reg_n_0_[24] ),
        .I2(phase[1]),
        .I3(\g_slot[3].omir_reg_n_0_[8] ),
        .I4(phase[0]),
        .I5(obs_active[28]),
        .O(\g_slot[3].pe_i_i_92_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_slot[3].pe_i_i_93 
       (.I0(obs_active[17]),
        .I1(obs_active[21]),
        .I2(\phase_reg[1]_rep__3_n_0 ),
        .I3(obs_active[25]),
        .I4(phase[0]),
        .I5(obs_active[29]),
        .O(\g_slot[3].pe_i_i_93_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_slot[3].pe_i_i_94 
       (.I0(obs_grown[12]),
        .I1(obs_grown[16]),
        .I2(\phase_reg[1]_rep__2_n_0 ),
        .I3(obs_grown[20]),
        .I4(phase[0]),
        .I5(obs_grown[24]),
        .O(\g_slot[3].pe_i_i_94_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_slot[3].pe_i_i_95 
       (.I0(\g_slot[3].omir_reg_n_0_[34] ),
        .I1(\g_slot[3].omir_reg_n_0_[18] ),
        .I2(\phase_reg[1]_rep__2_n_0 ),
        .I3(\g_slot[3].omir_reg_n_0_[2] ),
        .I4(phase[0]),
        .I5(obs_grown[28]),
        .O(\g_slot[3].pe_i_i_95_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_slot[3].pe_i_i_96 
       (.I0(obs_grown[17]),
        .I1(obs_grown[21]),
        .I2(\phase_reg[1]_rep__2_n_0 ),
        .I3(obs_grown[25]),
        .I4(phase[0]),
        .I5(obs_grown[29]),
        .O(\g_slot[3].pe_i_i_96_n_0 ));
  LUT6 #(
    .INIT(64'h22222E2200000000)) 
    \g_slot[3].pe_i_i_97 
       (.I0(\g_slot[3].pe_i_i_76_n_0 ),
        .I1(phase[2]),
        .I2(\phase_reg[1]_rep__0_n_0 ),
        .I3(\g_slot[3].g_dir[3].esrc [67]),
        .I4(phase[0]),
        .I5(\g_slot[3].pe_i_i_114_n_0 ),
        .O(\g_slot[3].nb_push122_out ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_slot[3].pe_i_i_98 
       (.I0(\g_slot[3].own_reg_n_0_[79] ),
        .I1(\g_slot[3].own_reg_n_0_[63] ),
        .I2(\phase_reg[1]_rep__0_n_0 ),
        .I3(\g_slot[3].own_reg_n_0_[47] ),
        .I4(phase[0]),
        .I5(data0__1),
        .O(\g_slot[3].pe_i_i_98_n_0 ));
  LUT6 #(
    .INIT(64'h010501FA00000000)) 
    \g_slot[3].pe_i_i_99 
       (.I0(phase[0]),
        .I1(\g_slot[3].omir_reg_n_0_[51] ),
        .I2(\phase_reg[1]_rep__3_n_0 ),
        .I3(phase[2]),
        .I4(\g_slot[3].pe_i_i_115_n_0 ),
        .I5(\g_slot[3].pe_i_i_116_n_0 ),
        .O(\g_slot[3].nb_push1 ));
  FDRE \g_slot[4].bshA_reg[4][0] 
       (.C(clk),
        .CE(bshA[0]),
        .D(\slot_nxt[4] [0]),
        .Q(\g_slot[4].bshA_reg[4] [0]),
        .R(reset));
  FDRE \g_slot[4].bshA_reg[4][1] 
       (.C(clk),
        .CE(bshA[1]),
        .D(\slot_nxt[4] [0]),
        .Q(\g_slot[4].bshA_reg[4] [1]),
        .R(reset));
  FDRE \g_slot[4].bshA_reg[4][2] 
       (.C(clk),
        .CE(bshA[2]),
        .D(\slot_nxt[4] [0]),
        .Q(\g_slot[4].bshA_reg[4] [2]),
        .R(reset));
  FDRE \g_slot[4].bshA_reg[4][3] 
       (.C(clk),
        .CE(bshA[3]),
        .D(\slot_nxt[4] [0]),
        .Q(\g_slot[4].bshA_reg[4] [3]),
        .R(reset));
  FDRE \g_slot[4].bshA_reg[4][4] 
       (.C(clk),
        .CE(bshA[4]),
        .D(\slot_nxt[4] [0]),
        .Q(\g_slot[4].bshA_reg[4] [4]),
        .R(reset));
  FDRE \g_slot[4].bshB_reg[4][0] 
       (.C(clk),
        .CE(bshB[0]),
        .D(\slot_nxt[4] [0]),
        .Q(\g_slot[4].bshB_reg[4] [0]),
        .R(reset));
  FDRE \g_slot[4].bshB_reg[4][1] 
       (.C(clk),
        .CE(bshB[1]),
        .D(\slot_nxt[4] [0]),
        .Q(\g_slot[4].bshB_reg[4] [1]),
        .R(reset));
  FDRE \g_slot[4].bshB_reg[4][2] 
       (.C(clk),
        .CE(bshB[2]),
        .D(\slot_nxt[4] [0]),
        .Q(\g_slot[4].bshB_reg[4] [2]),
        .R(reset));
  FDRE \g_slot[4].bshB_reg[4][3] 
       (.C(clk),
        .CE(bshB[3]),
        .D(\slot_nxt[4] [0]),
        .Q(\g_slot[4].bshB_reg[4] [3]),
        .R(reset));
  FDRE \g_slot[4].bshB_reg[4][4] 
       (.C(clk),
        .CE(bshB[4]),
        .D(\slot_nxt[4] [0]),
        .Q(\g_slot[4].bshB_reg[4] [4]),
        .R(reset));
  FDRE \g_slot[4].omir_reg[10] 
       (.C(clk),
        .CE(\g_slot[0].own [14]),
        .D(obs_cid[175]),
        .Q(\g_slot[4].omir_reg_n_0_[10] ),
        .R(reset));
  FDSE \g_slot[4].omir_reg[11] 
       (.C(clk),
        .CE(\g_slot[0].own [14]),
        .D(obs_cid[176]),
        .Q(\g_slot[4].omir_reg_n_0_[11] ),
        .S(reset));
  FDSE \g_slot[4].omir_reg[12] 
       (.C(clk),
        .CE(\g_slot[0].own [14]),
        .D(obs_cid[177]),
        .Q(\g_slot[4].omir_reg_n_0_[12] ),
        .S(reset));
  FDSE \g_slot[4].omir_reg[13] 
       (.C(clk),
        .CE(\g_slot[0].own [14]),
        .D(obs_cid[178]),
        .Q(\g_slot[4].omir_reg_n_0_[13] ),
        .S(reset));
  FDRE \g_slot[4].omir_reg[14] 
       (.C(clk),
        .CE(\g_slot[0].own [14]),
        .D(obs_cid[179]),
        .Q(\g_slot[4].omir_reg_n_0_[14] ),
        .R(reset));
  FDRE \g_slot[4].omir_reg[15] 
       (.C(clk),
        .CE(\g_slot[0].own [14]),
        .D(\g_slot[4].g_dir[2].esrc [15]),
        .Q(\g_slot[4].omir_reg_n_0_[15] ),
        .R(reset));
  FDRE \g_slot[4].omir_reg[18] 
       (.C(clk),
        .CE(\g_slot[0].own [30]),
        .D(obs_grown[25]),
        .Q(\g_slot[4].omir_reg_n_0_[18] ),
        .R(reset));
  FDRE \g_slot[4].omir_reg[19] 
       (.C(clk),
        .CE(\g_slot[0].own [30]),
        .D(obs_ptr[75]),
        .Q(\g_slot[4].omir_reg_n_0_[19] ),
        .R(reset));
  FDRE \g_slot[4].omir_reg[20] 
       (.C(clk),
        .CE(\g_slot[0].own [30]),
        .D(obs_ptr[76]),
        .Q(\g_slot[4].omir_reg_n_0_[20] ),
        .R(reset));
  FDRE \g_slot[4].omir_reg[21] 
       (.C(clk),
        .CE(\g_slot[0].own [30]),
        .D(obs_ptr[77]),
        .Q(\g_slot[4].omir_reg_n_0_[21] ),
        .R(reset));
  FDRE \g_slot[4].omir_reg[24] 
       (.C(clk),
        .CE(\g_slot[0].own [30]),
        .D(obs_active[25]),
        .Q(\g_slot[4].omir_reg_n_0_[24] ),
        .R(reset));
  FDSE \g_slot[4].omir_reg[25] 
       (.C(clk),
        .CE(\g_slot[0].own [30]),
        .D(obs_cid[150]),
        .Q(\g_slot[4].omir_reg_n_0_[25] ),
        .S(reset));
  FDRE \g_slot[4].omir_reg[26] 
       (.C(clk),
        .CE(\g_slot[0].own [30]),
        .D(obs_cid[151]),
        .Q(\g_slot[4].omir_reg_n_0_[26] ),
        .R(reset));
  FDRE \g_slot[4].omir_reg[27] 
       (.C(clk),
        .CE(\g_slot[0].own [30]),
        .D(obs_cid[152]),
        .Q(\g_slot[4].omir_reg_n_0_[27] ),
        .R(reset));
  FDSE \g_slot[4].omir_reg[28] 
       (.C(clk),
        .CE(\g_slot[0].own [30]),
        .D(obs_cid[153]),
        .Q(\g_slot[4].omir_reg_n_0_[28] ),
        .S(reset));
  FDSE \g_slot[4].omir_reg[29] 
       (.C(clk),
        .CE(\g_slot[0].own [30]),
        .D(obs_cid[154]),
        .Q(\g_slot[4].omir_reg_n_0_[29] ),
        .S(reset));
  FDRE \g_slot[4].omir_reg[2] 
       (.C(clk),
        .CE(\g_slot[0].own [14]),
        .D(obs_grown[29]),
        .Q(\g_slot[4].omir_reg_n_0_[2] ),
        .R(reset));
  FDRE \g_slot[4].omir_reg[30] 
       (.C(clk),
        .CE(\g_slot[0].own [30]),
        .D(obs_cid[155]),
        .Q(\g_slot[4].omir_reg_n_0_[30] ),
        .R(reset));
  FDRE \g_slot[4].omir_reg[31] 
       (.C(clk),
        .CE(\g_slot[0].own [30]),
        .D(data0__2),
        .Q(\g_slot[4].omir_reg_n_0_[31] ),
        .R(reset));
  FDRE \g_slot[4].omir_reg[34] 
       (.C(clk),
        .CE(\g_slot[0].own [46]),
        .D(obs_grown[21]),
        .Q(\g_slot[4].omir_reg_n_0_[34] ),
        .R(reset));
  FDRE \g_slot[4].omir_reg[35] 
       (.C(clk),
        .CE(\g_slot[0].own [46]),
        .D(obs_ptr[63]),
        .Q(\g_slot[4].omir_reg_n_0_[35] ),
        .R(reset));
  FDRE \g_slot[4].omir_reg[36] 
       (.C(clk),
        .CE(\g_slot[0].own [46]),
        .D(obs_ptr[64]),
        .Q(\g_slot[4].omir_reg_n_0_[36] ),
        .R(reset));
  FDRE \g_slot[4].omir_reg[37] 
       (.C(clk),
        .CE(\g_slot[0].own [46]),
        .D(obs_ptr[65]),
        .Q(\g_slot[4].omir_reg_n_0_[37] ),
        .R(reset));
  FDRE \g_slot[4].omir_reg[3] 
       (.C(clk),
        .CE(\g_slot[0].own [14]),
        .D(obs_ptr[87]),
        .Q(\g_slot[4].omir_reg_n_0_[3] ),
        .R(reset));
  FDRE \g_slot[4].omir_reg[40] 
       (.C(clk),
        .CE(\g_slot[0].own [46]),
        .D(obs_active[21]),
        .Q(\g_slot[4].omir_reg_n_0_[40] ),
        .R(reset));
  FDSE \g_slot[4].omir_reg[41] 
       (.C(clk),
        .CE(\g_slot[0].own [46]),
        .D(obs_cid[126]),
        .Q(\g_slot[4].omir_reg_n_0_[41] ),
        .S(reset));
  FDRE \g_slot[4].omir_reg[42] 
       (.C(clk),
        .CE(\g_slot[0].own [46]),
        .D(obs_cid[127]),
        .Q(\g_slot[4].omir_reg_n_0_[42] ),
        .R(reset));
  FDSE \g_slot[4].omir_reg[43] 
       (.C(clk),
        .CE(\g_slot[0].own [46]),
        .D(obs_cid[128]),
        .Q(\g_slot[4].omir_reg_n_0_[43] ),
        .S(reset));
  FDRE \g_slot[4].omir_reg[44] 
       (.C(clk),
        .CE(\g_slot[0].own [46]),
        .D(obs_cid[129]),
        .Q(\g_slot[4].omir_reg_n_0_[44] ),
        .R(reset));
  FDSE \g_slot[4].omir_reg[45] 
       (.C(clk),
        .CE(\g_slot[0].own [46]),
        .D(obs_cid[130]),
        .Q(\g_slot[4].omir_reg_n_0_[45] ),
        .S(reset));
  FDRE \g_slot[4].omir_reg[46] 
       (.C(clk),
        .CE(\g_slot[0].own [46]),
        .D(obs_cid[131]),
        .Q(\g_slot[4].omir_reg_n_0_[46] ),
        .R(reset));
  FDRE \g_slot[4].omir_reg[47] 
       (.C(clk),
        .CE(\g_slot[0].own [46]),
        .D(\g_slot[4].own_reg_n_0_[47] ),
        .Q(\g_slot[4].omir_reg_n_0_[47] ),
        .R(reset));
  FDRE \g_slot[4].omir_reg[4] 
       (.C(clk),
        .CE(\g_slot[0].own [14]),
        .D(obs_ptr[88]),
        .Q(\g_slot[4].omir_reg_n_0_[4] ),
        .R(reset));
  FDRE \g_slot[4].omir_reg[50] 
       (.C(clk),
        .CE(\g_slot[0].own [62]),
        .D(obs_grown[17]),
        .Q(\g_slot[4].omir_reg_n_0_[50] ),
        .R(reset));
  FDRE \g_slot[4].omir_reg[51] 
       (.C(clk),
        .CE(\g_slot[0].own [62]),
        .D(obs_ptr[51]),
        .Q(\g_slot[4].omir_reg_n_0_[51] ),
        .R(reset));
  FDRE \g_slot[4].omir_reg[52] 
       (.C(clk),
        .CE(\g_slot[0].own [62]),
        .D(obs_ptr[52]),
        .Q(\g_slot[4].omir_reg_n_0_[52] ),
        .R(reset));
  FDRE \g_slot[4].omir_reg[53] 
       (.C(clk),
        .CE(\g_slot[0].own [62]),
        .D(obs_ptr[53]),
        .Q(\g_slot[4].omir_reg_n_0_[53] ),
        .R(reset));
  FDRE \g_slot[4].omir_reg[56] 
       (.C(clk),
        .CE(\g_slot[0].own [62]),
        .D(obs_active[17]),
        .Q(\g_slot[4].omir_reg_n_0_[56] ),
        .R(reset));
  FDSE \g_slot[4].omir_reg[57] 
       (.C(clk),
        .CE(\g_slot[0].own [62]),
        .D(obs_cid[102]),
        .Q(\g_slot[4].omir_reg_n_0_[57] ),
        .S(reset));
  FDRE \g_slot[4].omir_reg[58] 
       (.C(clk),
        .CE(\g_slot[0].own [62]),
        .D(obs_cid[103]),
        .Q(\g_slot[4].omir_reg_n_0_[58] ),
        .R(reset));
  FDRE \g_slot[4].omir_reg[59] 
       (.C(clk),
        .CE(\g_slot[0].own [62]),
        .D(obs_cid[104]),
        .Q(\g_slot[4].omir_reg_n_0_[59] ),
        .R(reset));
  FDRE \g_slot[4].omir_reg[5] 
       (.C(clk),
        .CE(\g_slot[0].own [14]),
        .D(obs_ptr[89]),
        .Q(\g_slot[4].omir_reg_n_0_[5] ),
        .R(reset));
  FDRE \g_slot[4].omir_reg[60] 
       (.C(clk),
        .CE(\g_slot[0].own [62]),
        .D(obs_cid[105]),
        .Q(\g_slot[4].omir_reg_n_0_[60] ),
        .R(reset));
  FDSE \g_slot[4].omir_reg[61] 
       (.C(clk),
        .CE(\g_slot[0].own [62]),
        .D(obs_cid[106]),
        .Q(\g_slot[4].omir_reg_n_0_[61] ),
        .S(reset));
  FDRE \g_slot[4].omir_reg[62] 
       (.C(clk),
        .CE(\g_slot[0].own [62]),
        .D(obs_cid[107]),
        .Q(\g_slot[4].omir_reg_n_0_[62] ),
        .R(reset));
  FDRE \g_slot[4].omir_reg[63] 
       (.C(clk),
        .CE(\g_slot[0].own [62]),
        .D(\g_slot[4].own_reg_n_0_[63] ),
        .Q(\g_slot[4].omir_reg_n_0_[63] ),
        .R(reset));
  FDRE \g_slot[4].omir_reg[64] 
       (.C(clk),
        .CE(\g_slot[0].own [78]),
        .D(obs_busy[13]),
        .Q(\g_slot[4].g_dir[3].esrc [64]),
        .R(reset));
  FDRE \g_slot[4].omir_reg[65] 
       (.C(clk),
        .CE(\g_slot[0].own [78]),
        .D(obs_unrooted[13]),
        .Q(\g_slot[4].g_dir[3].esrc [65]),
        .R(reset));
  FDRE \g_slot[4].omir_reg[66] 
       (.C(clk),
        .CE(\g_slot[0].own [78]),
        .D(obs_grown[13]),
        .Q(\g_slot[4].g_dir[3].esrc [66]),
        .R(reset));
  FDRE \g_slot[4].omir_reg[67] 
       (.C(clk),
        .CE(\g_slot[0].own [78]),
        .D(obs_ptr[39]),
        .Q(\g_slot[4].g_dir[3].esrc [67]),
        .R(reset));
  FDRE \g_slot[4].omir_reg[68] 
       (.C(clk),
        .CE(\g_slot[0].own [78]),
        .D(obs_ptr[40]),
        .Q(\g_slot[4].g_dir[3].esrc [68]),
        .R(reset));
  FDRE \g_slot[4].omir_reg[69] 
       (.C(clk),
        .CE(\g_slot[0].own [78]),
        .D(obs_ptr[41]),
        .Q(\g_slot[4].g_dir[3].esrc [69]),
        .R(reset));
  FDRE \g_slot[4].omir_reg[72] 
       (.C(clk),
        .CE(\g_slot[0].own [78]),
        .D(obs_active[13]),
        .Q(\g_slot[4].g_dir[3].esrc [72]),
        .R(reset));
  FDSE \g_slot[4].omir_reg[73] 
       (.C(clk),
        .CE(\g_slot[0].own [78]),
        .D(obs_cid[78]),
        .Q(\g_slot[4].g_dir[3].esrc [73]),
        .S(reset));
  FDRE \g_slot[4].omir_reg[74] 
       (.C(clk),
        .CE(\g_slot[0].own [78]),
        .D(obs_cid[79]),
        .Q(\g_slot[4].g_dir[3].esrc [74]),
        .R(reset));
  FDSE \g_slot[4].omir_reg[75] 
       (.C(clk),
        .CE(\g_slot[0].own [78]),
        .D(obs_cid[80]),
        .Q(\g_slot[4].g_dir[3].esrc [75]),
        .S(reset));
  FDSE \g_slot[4].omir_reg[76] 
       (.C(clk),
        .CE(\g_slot[0].own [78]),
        .D(obs_cid[81]),
        .Q(\g_slot[4].g_dir[3].esrc [76]),
        .S(reset));
  FDRE \g_slot[4].omir_reg[77] 
       (.C(clk),
        .CE(\g_slot[0].own [78]),
        .D(obs_cid[82]),
        .Q(\g_slot[4].g_dir[3].esrc [77]),
        .R(reset));
  FDRE \g_slot[4].omir_reg[78] 
       (.C(clk),
        .CE(\g_slot[0].own [78]),
        .D(obs_cid[83]),
        .Q(\g_slot[4].g_dir[3].esrc [78]),
        .R(reset));
  FDRE \g_slot[4].omir_reg[8] 
       (.C(clk),
        .CE(\g_slot[0].own [14]),
        .D(obs_active[29]),
        .Q(\g_slot[4].omir_reg_n_0_[8] ),
        .R(reset));
  FDSE \g_slot[4].omir_reg[9] 
       (.C(clk),
        .CE(\g_slot[0].own [14]),
        .D(obs_cid[174]),
        .Q(\g_slot[4].omir_reg_n_0_[9] ),
        .S(reset));
  LUT6 #(
    .INIT(64'h00000000000000FE)) 
    \g_slot[4].own[14]_i_1 
       (.I0(stage__0[0]),
        .I1(stage__0[2]),
        .I2(stage__0[1]),
        .I3(phase[2]),
        .I4(phase[0]),
        .I5(\phase_reg[1]_rep__0_n_0 ),
        .O(\g_slot[0].own [14]));
  LUT6 #(
    .INIT(64'h000000FE00000000)) 
    \g_slot[4].own[30]_i_1 
       (.I0(stage__0[0]),
        .I1(stage__0[2]),
        .I2(stage__0[1]),
        .I3(\phase_reg[1]_rep__0_n_0 ),
        .I4(phase[2]),
        .I5(phase[0]),
        .O(\g_slot[0].own [30]));
  LUT6 #(
    .INIT(64'h000000FE00000000)) 
    \g_slot[4].own[46]_i_1 
       (.I0(stage__0[0]),
        .I1(stage__0[2]),
        .I2(stage__0[1]),
        .I3(phase[2]),
        .I4(phase[0]),
        .I5(\phase_reg[1]_rep__0_n_0 ),
        .O(\g_slot[0].own [46]));
  LUT6 #(
    .INIT(64'h00000000FE000000)) 
    \g_slot[4].own[62]_i_1 
       (.I0(stage__0[0]),
        .I1(stage__0[2]),
        .I2(stage__0[1]),
        .I3(\phase_reg[1]_rep__0_n_0 ),
        .I4(phase[0]),
        .I5(phase[2]),
        .O(\g_slot[0].own [62]));
  LUT6 #(
    .INIT(64'h000000FE00000000)) 
    \g_slot[4].own[78]_i_1 
       (.I0(stage__0[0]),
        .I1(stage__0[2]),
        .I2(stage__0[1]),
        .I3(phase[0]),
        .I4(\phase_reg[1]_rep__0_n_0 ),
        .I5(phase[2]),
        .O(\g_slot[0].own [78]));
  FDRE \g_slot[4].own_reg[0] 
       (.C(clk),
        .CE(\g_slot[0].own [14]),
        .D(\slot_nxt[4] [0]),
        .Q(obs_busy[29]),
        .R(reset));
  FDRE \g_slot[4].own_reg[10] 
       (.C(clk),
        .CE(\g_slot[0].own [14]),
        .D(\slot_nxt[4] [10]),
        .Q(obs_cid[175]),
        .R(reset));
  FDSE \g_slot[4].own_reg[11] 
       (.C(clk),
        .CE(\g_slot[0].own [14]),
        .D(\slot_nxt[4] [11]),
        .Q(obs_cid[176]),
        .S(reset));
  FDSE \g_slot[4].own_reg[12] 
       (.C(clk),
        .CE(\g_slot[0].own [14]),
        .D(\slot_nxt[4] [12]),
        .Q(obs_cid[177]),
        .S(reset));
  FDSE \g_slot[4].own_reg[13] 
       (.C(clk),
        .CE(\g_slot[0].own [14]),
        .D(\slot_nxt[4] [13]),
        .Q(obs_cid[178]),
        .S(reset));
  FDRE \g_slot[4].own_reg[14] 
       (.C(clk),
        .CE(\g_slot[0].own [14]),
        .D(\slot_nxt[4] [14]),
        .Q(obs_cid[179]),
        .R(reset));
  FDRE \g_slot[4].own_reg[15] 
       (.C(clk),
        .CE(\g_slot[0].own [14]),
        .D(\slot_nxt[4] [15]),
        .Q(\g_slot[4].g_dir[2].esrc [15]),
        .R(reset));
  FDRE \g_slot[4].own_reg[16] 
       (.C(clk),
        .CE(\g_slot[0].own [30]),
        .D(\slot_nxt[4] [0]),
        .Q(obs_busy[25]),
        .R(reset));
  FDRE \g_slot[4].own_reg[17] 
       (.C(clk),
        .CE(\g_slot[0].own [30]),
        .D(\slot_nxt[4] [1]),
        .Q(obs_unrooted[25]),
        .R(reset));
  FDRE \g_slot[4].own_reg[18] 
       (.C(clk),
        .CE(\g_slot[0].own [30]),
        .D(\slot_nxt[4] [2]),
        .Q(obs_grown[25]),
        .R(reset));
  FDRE \g_slot[4].own_reg[19] 
       (.C(clk),
        .CE(\g_slot[0].own [30]),
        .D(\slot_nxt[4] [3]),
        .Q(obs_ptr[75]),
        .R(reset));
  FDRE \g_slot[4].own_reg[1] 
       (.C(clk),
        .CE(\g_slot[0].own [14]),
        .D(\slot_nxt[4] [1]),
        .Q(obs_unrooted[29]),
        .R(reset));
  FDRE \g_slot[4].own_reg[20] 
       (.C(clk),
        .CE(\g_slot[0].own [30]),
        .D(\slot_nxt[4] [4]),
        .Q(obs_ptr[76]),
        .R(reset));
  FDRE \g_slot[4].own_reg[21] 
       (.C(clk),
        .CE(\g_slot[0].own [30]),
        .D(\slot_nxt[4] [5]),
        .Q(obs_ptr[77]),
        .R(reset));
  FDRE \g_slot[4].own_reg[22] 
       (.C(clk),
        .CE(\g_slot[0].own [30]),
        .D(\slot_nxt[4] [6]),
        .Q(obs_defect[25]),
        .R(reset));
  FDSE \g_slot[4].own_reg[23] 
       (.C(clk),
        .CE(\g_slot[0].own [30]),
        .D(\slot_nxt[4] [7]),
        .Q(obs_whole[25]),
        .S(reset));
  FDRE \g_slot[4].own_reg[24] 
       (.C(clk),
        .CE(\g_slot[0].own [30]),
        .D(\slot_nxt[4] [8]),
        .Q(obs_active[25]),
        .R(reset));
  FDSE \g_slot[4].own_reg[25] 
       (.C(clk),
        .CE(\g_slot[0].own [30]),
        .D(\slot_nxt[4] [9]),
        .Q(obs_cid[150]),
        .S(reset));
  FDRE \g_slot[4].own_reg[26] 
       (.C(clk),
        .CE(\g_slot[0].own [30]),
        .D(\slot_nxt[4] [10]),
        .Q(obs_cid[151]),
        .R(reset));
  FDRE \g_slot[4].own_reg[27] 
       (.C(clk),
        .CE(\g_slot[0].own [30]),
        .D(\slot_nxt[4] [11]),
        .Q(obs_cid[152]),
        .R(reset));
  FDSE \g_slot[4].own_reg[28] 
       (.C(clk),
        .CE(\g_slot[0].own [30]),
        .D(\slot_nxt[4] [12]),
        .Q(obs_cid[153]),
        .S(reset));
  FDSE \g_slot[4].own_reg[29] 
       (.C(clk),
        .CE(\g_slot[0].own [30]),
        .D(\slot_nxt[4] [13]),
        .Q(obs_cid[154]),
        .S(reset));
  FDRE \g_slot[4].own_reg[2] 
       (.C(clk),
        .CE(\g_slot[0].own [14]),
        .D(\slot_nxt[4] [2]),
        .Q(obs_grown[29]),
        .R(reset));
  FDRE \g_slot[4].own_reg[30] 
       (.C(clk),
        .CE(\g_slot[0].own [30]),
        .D(\slot_nxt[4] [14]),
        .Q(obs_cid[155]),
        .R(reset));
  FDRE \g_slot[4].own_reg[31] 
       (.C(clk),
        .CE(\g_slot[0].own [30]),
        .D(\slot_nxt[4] [15]),
        .Q(data0__2),
        .R(reset));
  FDRE \g_slot[4].own_reg[32] 
       (.C(clk),
        .CE(\g_slot[0].own [46]),
        .D(\slot_nxt[4] [0]),
        .Q(obs_busy[21]),
        .R(reset));
  FDRE \g_slot[4].own_reg[33] 
       (.C(clk),
        .CE(\g_slot[0].own [46]),
        .D(\slot_nxt[4] [1]),
        .Q(obs_unrooted[21]),
        .R(reset));
  FDRE \g_slot[4].own_reg[34] 
       (.C(clk),
        .CE(\g_slot[0].own [46]),
        .D(\slot_nxt[4] [2]),
        .Q(obs_grown[21]),
        .R(reset));
  FDRE \g_slot[4].own_reg[35] 
       (.C(clk),
        .CE(\g_slot[0].own [46]),
        .D(\slot_nxt[4] [3]),
        .Q(obs_ptr[63]),
        .R(reset));
  FDRE \g_slot[4].own_reg[36] 
       (.C(clk),
        .CE(\g_slot[0].own [46]),
        .D(\slot_nxt[4] [4]),
        .Q(obs_ptr[64]),
        .R(reset));
  FDRE \g_slot[4].own_reg[37] 
       (.C(clk),
        .CE(\g_slot[0].own [46]),
        .D(\slot_nxt[4] [5]),
        .Q(obs_ptr[65]),
        .R(reset));
  FDRE \g_slot[4].own_reg[38] 
       (.C(clk),
        .CE(\g_slot[0].own [46]),
        .D(\slot_nxt[4] [6]),
        .Q(obs_defect[21]),
        .R(reset));
  FDSE \g_slot[4].own_reg[39] 
       (.C(clk),
        .CE(\g_slot[0].own [46]),
        .D(\slot_nxt[4] [7]),
        .Q(obs_whole[21]),
        .S(reset));
  FDRE \g_slot[4].own_reg[3] 
       (.C(clk),
        .CE(\g_slot[0].own [14]),
        .D(\slot_nxt[4] [3]),
        .Q(obs_ptr[87]),
        .R(reset));
  FDRE \g_slot[4].own_reg[40] 
       (.C(clk),
        .CE(\g_slot[0].own [46]),
        .D(\slot_nxt[4] [8]),
        .Q(obs_active[21]),
        .R(reset));
  FDSE \g_slot[4].own_reg[41] 
       (.C(clk),
        .CE(\g_slot[0].own [46]),
        .D(\slot_nxt[4] [9]),
        .Q(obs_cid[126]),
        .S(reset));
  FDRE \g_slot[4].own_reg[42] 
       (.C(clk),
        .CE(\g_slot[0].own [46]),
        .D(\slot_nxt[4] [10]),
        .Q(obs_cid[127]),
        .R(reset));
  FDSE \g_slot[4].own_reg[43] 
       (.C(clk),
        .CE(\g_slot[0].own [46]),
        .D(\slot_nxt[4] [11]),
        .Q(obs_cid[128]),
        .S(reset));
  FDRE \g_slot[4].own_reg[44] 
       (.C(clk),
        .CE(\g_slot[0].own [46]),
        .D(\slot_nxt[4] [12]),
        .Q(obs_cid[129]),
        .R(reset));
  FDSE \g_slot[4].own_reg[45] 
       (.C(clk),
        .CE(\g_slot[0].own [46]),
        .D(\slot_nxt[4] [13]),
        .Q(obs_cid[130]),
        .S(reset));
  FDRE \g_slot[4].own_reg[46] 
       (.C(clk),
        .CE(\g_slot[0].own [46]),
        .D(\slot_nxt[4] [14]),
        .Q(obs_cid[131]),
        .R(reset));
  FDRE \g_slot[4].own_reg[47] 
       (.C(clk),
        .CE(\g_slot[0].own [46]),
        .D(\slot_nxt[4] [15]),
        .Q(\g_slot[4].own_reg_n_0_[47] ),
        .R(reset));
  FDRE \g_slot[4].own_reg[48] 
       (.C(clk),
        .CE(\g_slot[0].own [62]),
        .D(\slot_nxt[4] [0]),
        .Q(obs_busy[17]),
        .R(reset));
  FDRE \g_slot[4].own_reg[49] 
       (.C(clk),
        .CE(\g_slot[0].own [62]),
        .D(\slot_nxt[4] [1]),
        .Q(obs_unrooted[17]),
        .R(reset));
  FDRE \g_slot[4].own_reg[4] 
       (.C(clk),
        .CE(\g_slot[0].own [14]),
        .D(\slot_nxt[4] [4]),
        .Q(obs_ptr[88]),
        .R(reset));
  FDRE \g_slot[4].own_reg[50] 
       (.C(clk),
        .CE(\g_slot[0].own [62]),
        .D(\slot_nxt[4] [2]),
        .Q(obs_grown[17]),
        .R(reset));
  FDRE \g_slot[4].own_reg[51] 
       (.C(clk),
        .CE(\g_slot[0].own [62]),
        .D(\slot_nxt[4] [3]),
        .Q(obs_ptr[51]),
        .R(reset));
  FDRE \g_slot[4].own_reg[52] 
       (.C(clk),
        .CE(\g_slot[0].own [62]),
        .D(\slot_nxt[4] [4]),
        .Q(obs_ptr[52]),
        .R(reset));
  FDRE \g_slot[4].own_reg[53] 
       (.C(clk),
        .CE(\g_slot[0].own [62]),
        .D(\slot_nxt[4] [5]),
        .Q(obs_ptr[53]),
        .R(reset));
  FDRE \g_slot[4].own_reg[54] 
       (.C(clk),
        .CE(\g_slot[0].own [62]),
        .D(\slot_nxt[4] [6]),
        .Q(obs_defect[17]),
        .R(reset));
  FDSE \g_slot[4].own_reg[55] 
       (.C(clk),
        .CE(\g_slot[0].own [62]),
        .D(\slot_nxt[4] [7]),
        .Q(obs_whole[17]),
        .S(reset));
  FDRE \g_slot[4].own_reg[56] 
       (.C(clk),
        .CE(\g_slot[0].own [62]),
        .D(\slot_nxt[4] [8]),
        .Q(obs_active[17]),
        .R(reset));
  FDSE \g_slot[4].own_reg[57] 
       (.C(clk),
        .CE(\g_slot[0].own [62]),
        .D(\slot_nxt[4] [9]),
        .Q(obs_cid[102]),
        .S(reset));
  FDRE \g_slot[4].own_reg[58] 
       (.C(clk),
        .CE(\g_slot[0].own [62]),
        .D(\slot_nxt[4] [10]),
        .Q(obs_cid[103]),
        .R(reset));
  FDRE \g_slot[4].own_reg[59] 
       (.C(clk),
        .CE(\g_slot[0].own [62]),
        .D(\slot_nxt[4] [11]),
        .Q(obs_cid[104]),
        .R(reset));
  FDRE \g_slot[4].own_reg[5] 
       (.C(clk),
        .CE(\g_slot[0].own [14]),
        .D(\slot_nxt[4] [5]),
        .Q(obs_ptr[89]),
        .R(reset));
  FDRE \g_slot[4].own_reg[60] 
       (.C(clk),
        .CE(\g_slot[0].own [62]),
        .D(\slot_nxt[4] [12]),
        .Q(obs_cid[105]),
        .R(reset));
  FDSE \g_slot[4].own_reg[61] 
       (.C(clk),
        .CE(\g_slot[0].own [62]),
        .D(\slot_nxt[4] [13]),
        .Q(obs_cid[106]),
        .S(reset));
  FDRE \g_slot[4].own_reg[62] 
       (.C(clk),
        .CE(\g_slot[0].own [62]),
        .D(\slot_nxt[4] [14]),
        .Q(obs_cid[107]),
        .R(reset));
  FDRE \g_slot[4].own_reg[63] 
       (.C(clk),
        .CE(\g_slot[0].own [62]),
        .D(\slot_nxt[4] [15]),
        .Q(\g_slot[4].own_reg_n_0_[63] ),
        .R(reset));
  FDRE \g_slot[4].own_reg[64] 
       (.C(clk),
        .CE(\g_slot[0].own [78]),
        .D(\slot_nxt[4] [0]),
        .Q(obs_busy[13]),
        .R(reset));
  FDRE \g_slot[4].own_reg[65] 
       (.C(clk),
        .CE(\g_slot[0].own [78]),
        .D(\slot_nxt[4] [1]),
        .Q(obs_unrooted[13]),
        .R(reset));
  FDRE \g_slot[4].own_reg[66] 
       (.C(clk),
        .CE(\g_slot[0].own [78]),
        .D(\slot_nxt[4] [2]),
        .Q(obs_grown[13]),
        .R(reset));
  FDRE \g_slot[4].own_reg[67] 
       (.C(clk),
        .CE(\g_slot[0].own [78]),
        .D(\slot_nxt[4] [3]),
        .Q(obs_ptr[39]),
        .R(reset));
  FDRE \g_slot[4].own_reg[68] 
       (.C(clk),
        .CE(\g_slot[0].own [78]),
        .D(\slot_nxt[4] [4]),
        .Q(obs_ptr[40]),
        .R(reset));
  FDRE \g_slot[4].own_reg[69] 
       (.C(clk),
        .CE(\g_slot[0].own [78]),
        .D(\slot_nxt[4] [5]),
        .Q(obs_ptr[41]),
        .R(reset));
  FDRE \g_slot[4].own_reg[6] 
       (.C(clk),
        .CE(\g_slot[0].own [14]),
        .D(\slot_nxt[4] [6]),
        .Q(obs_defect[29]),
        .R(reset));
  FDRE \g_slot[4].own_reg[70] 
       (.C(clk),
        .CE(\g_slot[0].own [78]),
        .D(\slot_nxt[4] [6]),
        .Q(obs_defect[13]),
        .R(reset));
  FDSE \g_slot[4].own_reg[71] 
       (.C(clk),
        .CE(\g_slot[0].own [78]),
        .D(\slot_nxt[4] [7]),
        .Q(obs_whole[13]),
        .S(reset));
  FDRE \g_slot[4].own_reg[72] 
       (.C(clk),
        .CE(\g_slot[0].own [78]),
        .D(\slot_nxt[4] [8]),
        .Q(obs_active[13]),
        .R(reset));
  FDSE \g_slot[4].own_reg[73] 
       (.C(clk),
        .CE(\g_slot[0].own [78]),
        .D(\slot_nxt[4] [9]),
        .Q(obs_cid[78]),
        .S(reset));
  FDRE \g_slot[4].own_reg[74] 
       (.C(clk),
        .CE(\g_slot[0].own [78]),
        .D(\slot_nxt[4] [10]),
        .Q(obs_cid[79]),
        .R(reset));
  FDSE \g_slot[4].own_reg[75] 
       (.C(clk),
        .CE(\g_slot[0].own [78]),
        .D(\slot_nxt[4] [11]),
        .Q(obs_cid[80]),
        .S(reset));
  FDSE \g_slot[4].own_reg[76] 
       (.C(clk),
        .CE(\g_slot[0].own [78]),
        .D(\slot_nxt[4] [12]),
        .Q(obs_cid[81]),
        .S(reset));
  FDRE \g_slot[4].own_reg[77] 
       (.C(clk),
        .CE(\g_slot[0].own [78]),
        .D(\slot_nxt[4] [13]),
        .Q(obs_cid[82]),
        .R(reset));
  FDRE \g_slot[4].own_reg[78] 
       (.C(clk),
        .CE(\g_slot[0].own [78]),
        .D(\slot_nxt[4] [14]),
        .Q(obs_cid[83]),
        .R(reset));
  FDRE \g_slot[4].own_reg[79] 
       (.C(clk),
        .CE(\g_slot[0].own [78]),
        .D(\slot_nxt[4] [15]),
        .Q(\g_slot[4].own_reg_n_0_[79] ),
        .R(reset));
  FDSE \g_slot[4].own_reg[7] 
       (.C(clk),
        .CE(\g_slot[0].own [14]),
        .D(\slot_nxt[4] [7]),
        .Q(obs_whole[29]),
        .S(reset));
  FDRE \g_slot[4].own_reg[8] 
       (.C(clk),
        .CE(\g_slot[0].own [14]),
        .D(\slot_nxt[4] [8]),
        .Q(obs_active[29]),
        .R(reset));
  FDSE \g_slot[4].own_reg[9] 
       (.C(clk),
        .CE(\g_slot[0].own [14]),
        .D(\slot_nxt[4] [9]),
        .Q(obs_cid[174]),
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
  (* OFF_PB = "15" *) 
  (* OFF_PTR = "3" *) 
  (* OFF_UNR = "1" *) 
  (* OFF_WHL = "7" *) 
  (* ONE_ONE = "0" *) 
  (* STW = "16" *) 
  (* ST_DROP = "3'b001" *) 
  (* ST_GH = "3'b100" *) 
  (* ST_GW = "3'b010" *) 
  (* ST_IDLE = "3'b000" *) 
  (* ST_MH = "3'b101" *) 
  (* ST_MW = "3'b011" *) 
  (* SYN_IDX = "-1" *) 
  (* ZZZ_ANCHOR = "0" *) 
  snowflake_pe__5 \g_slot[4].pe_i 
       (.ab_active(\g_slot[4].pe_i_i_8_n_0 ),
        .ab_cid({\g_slot[4].pe_i_i_2_n_0 ,\g_slot[4].pe_i_i_3_n_0 ,\g_slot[4].pe_i_i_4_n_0 ,\g_slot[4].pe_i_i_5_n_0 ,\g_slot[4].pe_i_i_6_n_0 ,\g_slot[4].pe_i_i_7_n_0 }),
        .ab_defect(\g_slot[4].pe_i_i_10_n_0 ),
        .ab_ptr({\g_slot[4].pe_i_i_11_n_0 ,\g_slot[4].pe_i_i_12_n_0 ,\g_slot[4].pe_i_i_13_n_0 }),
        .ab_whole(\g_slot[4].pe_i_i_9_n_0 ),
        .clk(1'b0),
        .e_grown(\g_slot[4].e_grown ),
        .m_pass({m_pass_w,\g_slot[0].pe_i_i_26_n_0 }),
        .nb_active({\g_slot[4].pe_i_i_35_n_0 ,\g_slot[4].pe_i_i_36_n_0 ,p_1_in,p_11_in}),
        .nb_cid(\g_slot[4].nb_cid ),
        .nb_grown(\g_slot[4].nb_grown ),
        .nb_push({\g_slot[4].pe_i_i_41_n_0 ,\g_slot[4].nb_push [2],\g_eslot[4].vmir ,\g_slot[4].nb_push [0]}),
        .nb_valid({\g_slot[4].g_dir[3].nbv ,\g_slot[1].pe_i_i_18_n_0 ,1'b1,1'b1}),
        .o_busy_c(\NLW_g_slot[4].pe_i_o_busy_c_UNCONNECTED ),
        .o_pulse(\NLW_g_slot[4].pe_i_o_pulse_UNCONNECTED ),
        .o_push(\NLW_g_slot[4].pe_i_o_push_UNCONNECTED [3:0]),
        .p_has_above(\g_slot[4].iw [6]),
        .p_id(\g_slot[4].iw [5:0]),
        .p_is_bnd(\g_slot[4].iw [7]),
        .p_is_bot(\g_slot[4].iw [9]),
        .p_is_syn(\g_slot[4].iw [10]),
        .p_is_top(\g_slot[4].iw [8]),
        .reset(1'b0),
        .st_in({p_0_in33_in,\g_slot[3].nb_cid [11:6],p_10_in,p_0_in103_in,\g_slot[4].pe_i_i_47_n_0 ,p_0_in7_in,\g_slot[3].nb_grown [1],\g_slot[4].pe_i_i_51_n_0 ,1'b0}),
        .st_out(\slot_nxt[4] ),
        .stage({stage_reg,\dbg_stage[0]_i_1_n_0 }),
        .syn_bit(\g_slot[4].pe_i_i_1_n_0 ),
        .zzz_never_used(1'b0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_slot[4].pe_i_i_1 
       (.I0(\syn_buf_reg_n_0_[3] ),
        .I1(\syn_buf_reg_n_0_[2] ),
        .I2(\g_slot[4].sidx ),
        .I3(\syn_buf_reg_n_0_[1] ),
        .I4(\g_slot[0].pe_i_i_53_n_0 ),
        .I5(\syn_buf_reg_n_0_[0] ),
        .O(\g_slot[4].pe_i_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair296" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \g_slot[4].pe_i_i_10 
       (.I0(\g_slot[4].pe_i_i_72_n_0 ),
        .I1(phase[2]),
        .O(\g_slot[4].pe_i_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_slot[4].pe_i_i_100 
       (.I0(\g_slot[4].own_reg_n_0_[63] ),
        .I1(\g_slot[4].own_reg_n_0_[47] ),
        .I2(\phase_reg[1]_rep__0_n_0 ),
        .I3(data0__2),
        .I4(phase[0]),
        .I5(\g_slot[4].g_dir[2].esrc [15]),
        .O(\g_slot[4].pe_i_i_100_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_slot[4].pe_i_i_101 
       (.I0(obs_whole[17]),
        .I1(obs_whole[21]),
        .I2(\phase_reg[1]_rep__3_n_0 ),
        .I3(obs_whole[25]),
        .I4(phase[0]),
        .I5(obs_whole[29]),
        .O(\g_slot[4].pe_i_i_101_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_slot[4].pe_i_i_102 
       (.I0(obs_defect[17]),
        .I1(obs_defect[21]),
        .I2(\phase_reg[1]_rep__2_n_0 ),
        .I3(obs_defect[25]),
        .I4(phase[0]),
        .I5(obs_defect[29]),
        .O(\g_slot[4].pe_i_i_102_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_slot[4].pe_i_i_103 
       (.I0(obs_ptr[53]),
        .I1(obs_ptr[65]),
        .I2(\phase_reg[1]_rep__0_n_0 ),
        .I3(obs_ptr[77]),
        .I4(phase[0]),
        .I5(obs_ptr[89]),
        .O(\g_slot[4].pe_i_i_103_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_slot[4].pe_i_i_104 
       (.I0(obs_ptr[52]),
        .I1(obs_ptr[64]),
        .I2(\phase_reg[1]_rep__0_n_0 ),
        .I3(obs_ptr[76]),
        .I4(phase[0]),
        .I5(obs_ptr[88]),
        .O(\g_slot[4].pe_i_i_104_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_slot[4].pe_i_i_105 
       (.I0(obs_ptr[51]),
        .I1(obs_ptr[63]),
        .I2(\phase_reg[1]_rep__2_n_0 ),
        .I3(obs_ptr[75]),
        .I4(phase[0]),
        .I5(obs_ptr[87]),
        .O(\g_slot[4].pe_i_i_105_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_slot[4].pe_i_i_106 
       (.I0(obs_unrooted[17]),
        .I1(obs_unrooted[21]),
        .I2(\phase_reg[1]_rep__2_n_0 ),
        .I3(obs_unrooted[25]),
        .I4(phase[0]),
        .I5(obs_unrooted[29]),
        .O(\g_slot[4].pe_i_i_106_n_0 ));
  LUT5 #(
    .INIT(32'h20202F20)) 
    \g_slot[4].pe_i_i_107 
       (.I0(obs_growth[65]),
        .I1(obs_growth[64]),
        .I2(phase[0]),
        .I3(obs_growth[81]),
        .I4(obs_growth[80]),
        .O(\g_slot[4].pe_i_i_107_n_0 ));
  LUT5 #(
    .INIT(32'h20202F20)) 
    \g_slot[4].pe_i_i_108 
       (.I0(obs_growth[33]),
        .I1(obs_growth[32]),
        .I2(phase[0]),
        .I3(obs_growth[49]),
        .I4(obs_growth[48]),
        .O(\g_slot[4].pe_i_i_108_n_0 ));
  LUT5 #(
    .INIT(32'h20202F20)) 
    \g_slot[4].pe_i_i_109 
       (.I0(\g_slot[4].g_dir[2].esrc [17]),
        .I1(\g_slot[4].g_dir[2].esrc [16]),
        .I2(phase[0]),
        .I3(obs_unrooted[29]),
        .I4(obs_busy[29]),
        .O(\g_slot[4].pe_i_i_109_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair231" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \g_slot[4].pe_i_i_11 
       (.I0(\g_slot[4].pe_i_i_73_n_0 ),
        .I1(phase[2]),
        .O(\g_slot[4].pe_i_i_11_n_0 ));
  LUT5 #(
    .INIT(32'h20202F20)) 
    \g_slot[4].pe_i_i_110 
       (.I0(\g_eslot[8].eomir_reg_n_0_[7] ),
        .I1(\g_eslot[8].eomir_reg_n_0_[6] ),
        .I2(phase[0]),
        .I3(\g_eslot[8].eomir_reg_n_0_[4] ),
        .I4(\g_eslot[8].eomir_reg_n_0_[3] ),
        .O(\g_slot[4].pe_i_i_110_n_0 ));
  LUT5 #(
    .INIT(32'h20202F20)) 
    \g_slot[4].pe_i_i_111 
       (.I0(obs_growth[63]),
        .I1(obs_growth[62]),
        .I2(phase[0]),
        .I3(obs_growth[79]),
        .I4(obs_growth[78]),
        .O(\g_slot[4].pe_i_i_111_n_0 ));
  LUT5 #(
    .INIT(32'h20202F20)) 
    \g_slot[4].pe_i_i_112 
       (.I0(obs_growth[31]),
        .I1(obs_growth[30]),
        .I2(phase[0]),
        .I3(obs_growth[47]),
        .I4(obs_growth[46]),
        .O(\g_slot[4].pe_i_i_112_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FBFFFB00)) 
    \g_slot[4].pe_i_i_113 
       (.I0(phase[0]),
        .I1(\g_slot[4].g_dir[3].esrc [68]),
        .I2(\phase_reg[1]_rep__0_n_0 ),
        .I3(phase[2]),
        .I4(\g_slot[4].pe_i_i_74_n_0 ),
        .I5(p_0_in25_in),
        .O(\g_slot[4].pe_i_i_113_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_slot[4].pe_i_i_114 
       (.I0(\g_slot[4].omir_reg_n_0_[35] ),
        .I1(\g_slot[4].omir_reg_n_0_[19] ),
        .I2(\phase_reg[1]_rep__3_n_0 ),
        .I3(\g_slot[4].omir_reg_n_0_[3] ),
        .I4(phase[0]),
        .I5(obs_ptr[87]),
        .O(\g_slot[4].pe_i_i_114_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FEFAFE05)) 
    \g_slot[4].pe_i_i_115 
       (.I0(phase[0]),
        .I1(\g_slot[4].omir_reg_n_0_[53] ),
        .I2(\phase_reg[1]_rep__3_n_0 ),
        .I3(phase[2]),
        .I4(\g_slot[4].pe_i_i_117_n_0 ),
        .I5(p_0_in24_in),
        .O(\g_slot[4].pe_i_i_115_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair231" *) 
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \g_slot[4].pe_i_i_116 
       (.I0(phase[0]),
        .I1(\g_slot[4].g_dir[3].esrc [69]),
        .I2(\phase_reg[1]_rep__0_n_0 ),
        .I3(phase[2]),
        .I4(\g_slot[4].pe_i_i_73_n_0 ),
        .O(p_0_in25_in));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_slot[4].pe_i_i_117 
       (.I0(\g_slot[4].omir_reg_n_0_[37] ),
        .I1(\g_slot[4].omir_reg_n_0_[21] ),
        .I2(\phase_reg[1]_rep__3_n_0 ),
        .I3(\g_slot[4].omir_reg_n_0_[5] ),
        .I4(phase[0]),
        .I5(obs_ptr[89]),
        .O(\g_slot[4].pe_i_i_117_n_0 ));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \g_slot[4].pe_i_i_118 
       (.I0(phase[0]),
        .I1(\g_slot[4].omir_reg_n_0_[52] ),
        .I2(\phase_reg[1]_rep__3_n_0 ),
        .I3(phase[2]),
        .I4(\g_slot[4].pe_i_i_119_n_0 ),
        .O(p_0_in24_in));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_slot[4].pe_i_i_119 
       (.I0(\g_slot[4].omir_reg_n_0_[36] ),
        .I1(\g_slot[4].omir_reg_n_0_[20] ),
        .I2(\phase_reg[1]_rep__3_n_0 ),
        .I3(\g_slot[4].omir_reg_n_0_[4] ),
        .I4(phase[0]),
        .I5(obs_ptr[88]),
        .O(\g_slot[4].pe_i_i_119_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair283" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \g_slot[4].pe_i_i_12 
       (.I0(\g_slot[4].pe_i_i_74_n_0 ),
        .I1(phase[2]),
        .O(\g_slot[4].pe_i_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair284" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \g_slot[4].pe_i_i_13 
       (.I0(\g_slot[4].pe_i_i_75_n_0 ),
        .I1(phase[2]),
        .O(\g_slot[4].pe_i_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h0A0A0A0A0A3A0A0A)) 
    \g_slot[4].pe_i_i_14 
       (.I0(\g_slot[4].pe_i_i_76_n_0 ),
        .I1(\phase_reg[1]_rep__1_n_0 ),
        .I2(phase[2]),
        .I3(\g_slot[4].g_dir[3].esrc [64]),
        .I4(\g_slot[4].g_dir[3].esrc [65]),
        .I5(phase[0]),
        .O(\g_slot[4].e_grown [3]));
  LUT6 #(
    .INIT(64'h0A0A0A0A0A3A0A0A)) 
    \g_slot[4].pe_i_i_15 
       (.I0(\g_slot[4].pe_i_i_77_n_0 ),
        .I1(\phase_reg[1]_rep__0_n_0 ),
        .I2(phase[2]),
        .I3(\g_eslot[8].eomir_reg_n_0_[9] ),
        .I4(\g_eslot[8].eomir_reg_n_0_[10] ),
        .I5(phase[0]),
        .O(\g_slot[4].e_grown [2]));
  LUT6 #(
    .INIT(64'h0A0A0A0A0A3A0A0A)) 
    \g_slot[4].pe_i_i_16 
       (.I0(\g_slot[4].pe_i_i_78_n_0 ),
        .I1(\phase_reg[1]_rep__0_n_0 ),
        .I2(phase[2]),
        .I3(obs_growth[16]),
        .I4(obs_growth[17]),
        .I5(phase[0]),
        .O(\g_slot[4].e_grown [1]));
  (* SOFT_HLUTNM = "soft_lutpair223" *) 
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \g_slot[4].pe_i_i_17 
       (.I0(phase[0]),
        .I1(\g_slot[4].g_dir[3].esrc [78]),
        .I2(\phase_reg[1]_rep__3_n_0 ),
        .I3(phase[2]),
        .I4(\g_slot[4].pe_i_i_64_n_0 ),
        .O(\g_slot[4].nb_cid [23]));
  (* SOFT_HLUTNM = "soft_lutpair224" *) 
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \g_slot[4].pe_i_i_18 
       (.I0(phase[0]),
        .I1(\g_slot[4].g_dir[3].esrc [77]),
        .I2(\phase_reg[1]_rep__3_n_0 ),
        .I3(phase[2]),
        .I4(\g_slot[4].pe_i_i_65_n_0 ),
        .O(\g_slot[4].nb_cid [22]));
  (* SOFT_HLUTNM = "soft_lutpair225" *) 
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \g_slot[4].pe_i_i_19 
       (.I0(phase[0]),
        .I1(\g_slot[4].g_dir[3].esrc [76]),
        .I2(\phase_reg[1]_rep__3_n_0 ),
        .I3(phase[2]),
        .I4(\g_slot[4].pe_i_i_66_n_0 ),
        .O(\g_slot[4].nb_cid [21]));
  (* SOFT_HLUTNM = "soft_lutpair223" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \g_slot[4].pe_i_i_2 
       (.I0(\g_slot[4].pe_i_i_64_n_0 ),
        .I1(phase[2]),
        .O(\g_slot[4].pe_i_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair226" *) 
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \g_slot[4].pe_i_i_20 
       (.I0(phase[0]),
        .I1(\g_slot[4].g_dir[3].esrc [75]),
        .I2(\phase_reg[1]_rep__3_n_0 ),
        .I3(phase[2]),
        .I4(\g_slot[4].pe_i_i_67_n_0 ),
        .O(\g_slot[4].nb_cid [20]));
  (* SOFT_HLUTNM = "soft_lutpair227" *) 
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \g_slot[4].pe_i_i_21 
       (.I0(phase[0]),
        .I1(\g_slot[4].g_dir[3].esrc [74]),
        .I2(\phase_reg[1]_rep__3_n_0 ),
        .I3(phase[2]),
        .I4(\g_slot[4].pe_i_i_68_n_0 ),
        .O(\g_slot[4].nb_cid [19]));
  (* SOFT_HLUTNM = "soft_lutpair228" *) 
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \g_slot[4].pe_i_i_22 
       (.I0(phase[0]),
        .I1(\g_slot[4].g_dir[3].esrc [73]),
        .I2(\phase_reg[1]_rep__3_n_0 ),
        .I3(phase[2]),
        .I4(\g_slot[4].pe_i_i_69_n_0 ),
        .O(\g_slot[4].nb_cid [18]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \g_slot[4].pe_i_i_23 
       (.I0(phase[0]),
        .I1(\g_slot[4].omir_reg_n_0_[62] ),
        .I2(\phase_reg[1]_rep__2_n_0 ),
        .I3(phase[2]),
        .I4(\g_slot[4].pe_i_i_79_n_0 ),
        .O(\g_slot[4].nb_cid [17]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \g_slot[4].pe_i_i_24 
       (.I0(phase[0]),
        .I1(\g_slot[4].omir_reg_n_0_[61] ),
        .I2(\phase_reg[1]_rep__2_n_0 ),
        .I3(phase[2]),
        .I4(\g_slot[4].pe_i_i_80_n_0 ),
        .O(\g_slot[4].nb_cid [16]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \g_slot[4].pe_i_i_25 
       (.I0(phase[0]),
        .I1(\g_slot[4].omir_reg_n_0_[60] ),
        .I2(\phase_reg[1]_rep__2_n_0 ),
        .I3(phase[2]),
        .I4(\g_slot[4].pe_i_i_81_n_0 ),
        .O(\g_slot[4].nb_cid [15]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \g_slot[4].pe_i_i_26 
       (.I0(phase[0]),
        .I1(\g_slot[4].omir_reg_n_0_[59] ),
        .I2(\phase_reg[1]_rep__2_n_0 ),
        .I3(phase[2]),
        .I4(\g_slot[4].pe_i_i_82_n_0 ),
        .O(\g_slot[4].nb_cid [14]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \g_slot[4].pe_i_i_27 
       (.I0(phase[0]),
        .I1(\g_slot[4].omir_reg_n_0_[58] ),
        .I2(\phase_reg[1]_rep__2_n_0 ),
        .I3(phase[2]),
        .I4(\g_slot[4].pe_i_i_83_n_0 ),
        .O(\g_slot[4].nb_cid [13]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \g_slot[4].pe_i_i_28 
       (.I0(phase[0]),
        .I1(\g_slot[4].omir_reg_n_0_[57] ),
        .I2(\phase_reg[1]_rep__2_n_0 ),
        .I3(phase[2]),
        .I4(\g_slot[4].pe_i_i_84_n_0 ),
        .O(\g_slot[4].nb_cid [12]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \g_slot[4].pe_i_i_29 
       (.I0(phase[0]),
        .I1(obs_cid[11]),
        .I2(\phase_reg[1]_rep__2_n_0 ),
        .I3(phase[2]),
        .I4(\g_slot[4].pe_i_i_85_n_0 ),
        .O(\g_slot[4].nb_cid [11]));
  (* SOFT_HLUTNM = "soft_lutpair224" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \g_slot[4].pe_i_i_3 
       (.I0(\g_slot[4].pe_i_i_65_n_0 ),
        .I1(phase[2]),
        .O(\g_slot[4].pe_i_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \g_slot[4].pe_i_i_30 
       (.I0(phase[0]),
        .I1(obs_cid[10]),
        .I2(\phase_reg[1]_rep__2_n_0 ),
        .I3(phase[2]),
        .I4(\g_slot[4].pe_i_i_86_n_0 ),
        .O(\g_slot[4].nb_cid [10]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \g_slot[4].pe_i_i_31 
       (.I0(phase[0]),
        .I1(obs_cid[9]),
        .I2(\phase_reg[1]_rep__2_n_0 ),
        .I3(phase[2]),
        .I4(\g_slot[4].pe_i_i_87_n_0 ),
        .O(\g_slot[4].nb_cid [9]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \g_slot[4].pe_i_i_32 
       (.I0(phase[0]),
        .I1(obs_cid[8]),
        .I2(\phase_reg[1]_rep__2_n_0 ),
        .I3(phase[2]),
        .I4(\g_slot[4].pe_i_i_88_n_0 ),
        .O(\g_slot[4].nb_cid [8]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \g_slot[4].pe_i_i_33 
       (.I0(phase[0]),
        .I1(obs_cid[7]),
        .I2(\phase_reg[1]_rep__2_n_0 ),
        .I3(phase[2]),
        .I4(\g_slot[4].pe_i_i_89_n_0 ),
        .O(\g_slot[4].nb_cid [7]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \g_slot[4].pe_i_i_34 
       (.I0(phase[0]),
        .I1(obs_cid[6]),
        .I2(\phase_reg[1]_rep__2_n_0 ),
        .I3(phase[2]),
        .I4(\g_slot[4].pe_i_i_90_n_0 ),
        .O(\g_slot[4].nb_cid [6]));
  (* SOFT_HLUTNM = "soft_lutpair229" *) 
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \g_slot[4].pe_i_i_35 
       (.I0(phase[0]),
        .I1(\g_slot[4].g_dir[3].esrc [72]),
        .I2(\phase_reg[1]_rep__3_n_0 ),
        .I3(phase[2]),
        .I4(\g_slot[4].pe_i_i_70_n_0 ),
        .O(\g_slot[4].pe_i_i_35_n_0 ));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \g_slot[4].pe_i_i_36 
       (.I0(phase[0]),
        .I1(\g_slot[4].omir_reg_n_0_[56] ),
        .I2(\phase_reg[1]_rep__1_n_0 ),
        .I3(phase[2]),
        .I4(\g_slot[4].pe_i_i_91_n_0 ),
        .O(\g_slot[4].pe_i_i_36_n_0 ));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \g_slot[4].pe_i_i_37 
       (.I0(phase[0]),
        .I1(obs_active[1]),
        .I2(\phase_reg[1]_rep__1_n_0 ),
        .I3(phase[2]),
        .I4(\g_slot[4].pe_i_i_92_n_0 ),
        .O(p_1_in));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \g_slot[4].pe_i_i_38 
       (.I0(phase[0]),
        .I1(\g_slot[4].g_dir[3].esrc [66]),
        .I2(\phase_reg[1]_rep__2_n_0 ),
        .I3(phase[2]),
        .I4(\g_slot[4].pe_i_i_93_n_0 ),
        .O(\g_slot[4].nb_grown [3]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \g_slot[4].pe_i_i_39 
       (.I0(phase[0]),
        .I1(\g_slot[4].omir_reg_n_0_[50] ),
        .I2(\phase_reg[1]_rep__2_n_0 ),
        .I3(phase[2]),
        .I4(\g_slot[4].pe_i_i_94_n_0 ),
        .O(\g_slot[4].nb_grown [2]));
  (* SOFT_HLUTNM = "soft_lutpair225" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \g_slot[4].pe_i_i_4 
       (.I0(\g_slot[4].pe_i_i_66_n_0 ),
        .I1(phase[2]),
        .O(\g_slot[4].pe_i_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \g_slot[4].pe_i_i_40 
       (.I0(phase[0]),
        .I1(obs_grown[1]),
        .I2(\phase_reg[1]_rep__1_n_0 ),
        .I3(phase[2]),
        .I4(\g_slot[4].pe_i_i_95_n_0 ),
        .O(\g_slot[4].nb_grown [1]));
  (* SOFT_HLUTNM = "soft_lutpair283" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \g_slot[4].pe_i_i_41 
       (.I0(\g_slot[4].nb_push126_out ),
        .I1(\g_slot[4].pe_i_i_97_n_0 ),
        .I2(phase[2]),
        .O(\g_slot[4].pe_i_i_41_n_0 ));
  LUT6 #(
    .INIT(64'h0020AA8800200000)) 
    \g_slot[4].pe_i_i_42 
       (.I0(\g_slot[4].nb_push1 ),
        .I1(phase[0]),
        .I2(\g_slot[4].omir_reg_n_0_[63] ),
        .I3(\phase_reg[1]_rep__2_n_0 ),
        .I4(phase[2]),
        .I5(\g_slot[4].pe_i_i_99_n_0 ),
        .O(\g_slot[4].nb_push [2]));
  LUT4 #(
    .INIT(16'h0400)) 
    \g_slot[4].pe_i_i_43 
       (.I0(p_0_in23_in[1]),
        .I1(p_0_in23_in[0]),
        .I2(p_0_in23_in[2]),
        .I3(\g_slot[5].pe_i_i_15_n_0 ),
        .O(\g_eslot[4].vmir ));
  (* SOFT_HLUTNM = "soft_lutpair230" *) 
  LUT5 #(
    .INIT(32'h01080000)) 
    \g_slot[4].pe_i_i_44 
       (.I0(p_0_in16_in[1]),
        .I1(\g_slot[1].pe_i_i_103_n_0 ),
        .I2(p_0_in16_in[2]),
        .I3(p_0_in16_in[0]),
        .I4(p_0_in34_in),
        .O(\g_slot[4].nb_push [0]));
  (* SOFT_HLUTNM = "soft_lutpair222" *) 
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \g_slot[4].pe_i_i_45 
       (.I0(phase[0]),
        .I1(\g_slot[4].own_reg_n_0_[79] ),
        .I2(\phase_reg[1]_rep__0_n_0 ),
        .I3(phase[2]),
        .I4(\g_slot[4].pe_i_i_100_n_0 ),
        .O(p_0_in33_in));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \g_slot[4].pe_i_i_46 
       (.I0(phase[0]),
        .I1(obs_whole[13]),
        .I2(\phase_reg[1]_rep__3_n_0 ),
        .I3(phase[2]),
        .I4(\g_slot[4].pe_i_i_101_n_0 ),
        .O(p_0_in103_in));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \g_slot[4].pe_i_i_47 
       (.I0(phase[0]),
        .I1(obs_defect[13]),
        .I2(\phase_reg[1]_rep__2_n_0 ),
        .I3(phase[2]),
        .I4(\g_slot[4].pe_i_i_102_n_0 ),
        .O(\g_slot[4].pe_i_i_47_n_0 ));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \g_slot[4].pe_i_i_48 
       (.I0(phase[0]),
        .I1(obs_ptr[41]),
        .I2(\phase_reg[1]_rep__0_n_0 ),
        .I3(phase[2]),
        .I4(\g_slot[4].pe_i_i_103_n_0 ),
        .O(p_0_in7_in[2]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \g_slot[4].pe_i_i_49 
       (.I0(phase[0]),
        .I1(obs_ptr[40]),
        .I2(\phase_reg[1]_rep__0_n_0 ),
        .I3(phase[2]),
        .I4(\g_slot[4].pe_i_i_104_n_0 ),
        .O(p_0_in7_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair226" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \g_slot[4].pe_i_i_5 
       (.I0(\g_slot[4].pe_i_i_67_n_0 ),
        .I1(phase[2]),
        .O(\g_slot[4].pe_i_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \g_slot[4].pe_i_i_50 
       (.I0(phase[0]),
        .I1(obs_ptr[39]),
        .I2(\phase_reg[1]_rep__2_n_0 ),
        .I3(phase[2]),
        .I4(\g_slot[4].pe_i_i_105_n_0 ),
        .O(p_0_in7_in[0]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \g_slot[4].pe_i_i_51 
       (.I0(phase[0]),
        .I1(obs_unrooted[13]),
        .I2(\phase_reg[1]_rep__2_n_0 ),
        .I3(phase[2]),
        .I4(\g_slot[4].pe_i_i_106_n_0 ),
        .O(\g_slot[4].pe_i_i_51_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair202" *) 
  LUT5 #(
    .INIT(32'h84112328)) 
    \g_slot[4].pe_i_i_52 
       (.I0(\phase_reg[1]_rep_n_0 ),
        .I1(phase[0]),
        .I2(phase[2]),
        .I3(\g_slot[0].pe_i_i_92_n_0 ),
        .I4(\g_slot[0].pe_i_i_93_n_0 ),
        .O(\g_slot[4].iw [5]));
  (* SOFT_HLUTNM = "soft_lutpair187" *) 
  LUT5 #(
    .INIT(32'h1B2F8482)) 
    \g_slot[4].pe_i_i_53 
       (.I0(\phase_reg[1]_rep_n_0 ),
        .I1(phase[0]),
        .I2(phase[2]),
        .I3(\g_slot[0].pe_i_i_92_n_0 ),
        .I4(\g_slot[0].pe_i_i_93_n_0 ),
        .O(\g_slot[4].iw [4]));
  (* SOFT_HLUTNM = "soft_lutpair195" *) 
  LUT5 #(
    .INIT(32'h44B04C69)) 
    \g_slot[4].pe_i_i_54 
       (.I0(\g_slot[0].pe_i_i_92_n_0 ),
        .I1(\g_slot[0].pe_i_i_93_n_0 ),
        .I2(phase[2]),
        .I3(phase[0]),
        .I4(\phase_reg[1]_rep_n_0 ),
        .O(\g_slot[4].iw [3]));
  (* SOFT_HLUTNM = "soft_lutpair183" *) 
  LUT5 #(
    .INIT(32'h842ACA96)) 
    \g_slot[4].pe_i_i_55 
       (.I0(\g_slot[0].pe_i_i_92_n_0 ),
        .I1(\phase_reg[1]_rep_n_0 ),
        .I2(phase[0]),
        .I3(phase[2]),
        .I4(\g_slot[0].pe_i_i_93_n_0 ),
        .O(\g_slot[4].iw [2]));
  (* SOFT_HLUTNM = "soft_lutpair214" *) 
  LUT5 #(
    .INIT(32'h2484E911)) 
    \g_slot[4].pe_i_i_56 
       (.I0(\phase_reg[1]_rep_n_0 ),
        .I1(phase[0]),
        .I2(phase[2]),
        .I3(\g_slot[0].pe_i_i_93_n_0 ),
        .I4(\g_slot[0].pe_i_i_92_n_0 ),
        .O(\g_slot[4].iw [1]));
  (* SOFT_HLUTNM = "soft_lutpair189" *) 
  LUT5 #(
    .INIT(32'h8D10F35B)) 
    \g_slot[4].pe_i_i_57 
       (.I0(phase[0]),
        .I1(\g_slot[0].pe_i_i_93_n_0 ),
        .I2(\g_slot[0].pe_i_i_92_n_0 ),
        .I3(\phase_reg[1]_rep_n_0 ),
        .I4(phase[2]),
        .O(\g_slot[4].iw [0]));
  (* SOFT_HLUTNM = "soft_lutpair203" *) 
  LUT5 #(
    .INIT(32'hE2960118)) 
    \g_slot[4].pe_i_i_58 
       (.I0(\g_slot[0].pe_i_i_92_n_0 ),
        .I1(phase[0]),
        .I2(\phase_reg[1]_rep_n_0 ),
        .I3(phase[2]),
        .I4(\g_slot[0].pe_i_i_93_n_0 ),
        .O(\g_slot[4].iw [6]));
  (* SOFT_HLUTNM = "soft_lutpair196" *) 
  LUT5 #(
    .INIT(32'h13C00186)) 
    \g_slot[4].pe_i_i_59 
       (.I0(\g_slot[0].pe_i_i_92_n_0 ),
        .I1(\g_slot[0].pe_i_i_93_n_0 ),
        .I2(phase[2]),
        .I3(phase[0]),
        .I4(\phase_reg[1]_rep_n_0 ),
        .O(\g_slot[4].iw [7]));
  (* SOFT_HLUTNM = "soft_lutpair227" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \g_slot[4].pe_i_i_6 
       (.I0(\g_slot[4].pe_i_i_68_n_0 ),
        .I1(phase[2]),
        .O(\g_slot[4].pe_i_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair195" *) 
  LUT5 #(
    .INIT(32'h848210B1)) 
    \g_slot[4].pe_i_i_60 
       (.I0(\phase_reg[1]_rep_n_0 ),
        .I1(phase[0]),
        .I2(phase[2]),
        .I3(\g_slot[0].pe_i_i_92_n_0 ),
        .I4(\g_slot[0].pe_i_i_93_n_0 ),
        .O(\g_slot[4].iw [8]));
  (* SOFT_HLUTNM = "soft_lutpair192" *) 
  LUT5 #(
    .INIT(32'h0C4A85B8)) 
    \g_slot[4].pe_i_i_61 
       (.I0(\g_slot[0].pe_i_i_92_n_0 ),
        .I1(\phase_reg[1]_rep_n_0 ),
        .I2(phase[0]),
        .I3(phase[2]),
        .I4(\g_slot[0].pe_i_i_93_n_0 ),
        .O(\g_slot[4].iw [9]));
  (* SOFT_HLUTNM = "soft_lutpair191" *) 
  LUT5 #(
    .INIT(32'h12240A63)) 
    \g_slot[4].pe_i_i_62 
       (.I0(\g_slot[0].pe_i_i_92_n_0 ),
        .I1(\g_slot[0].pe_i_i_93_n_0 ),
        .I2(phase[2]),
        .I3(phase[0]),
        .I4(\phase_reg[1]_rep_n_0 ),
        .O(\g_slot[4].iw [10]));
  (* SOFT_HLUTNM = "soft_lutpair266" *) 
  LUT4 #(
    .INIT(16'hEEFE)) 
    \g_slot[4].pe_i_i_63 
       (.I0(\g_slot[0].pe_i_i_93_n_0 ),
        .I1(\g_slot[1].pe_i_i_65_n_0 ),
        .I2(\g_slot[0].pe_i_i_92_n_0 ),
        .I3(phase[0]),
        .O(\g_slot[4].sidx ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_slot[4].pe_i_i_64 
       (.I0(obs_cid[83]),
        .I1(obs_cid[107]),
        .I2(\phase_reg[1]_rep__3_n_0 ),
        .I3(obs_cid[131]),
        .I4(phase[0]),
        .I5(obs_cid[155]),
        .O(\g_slot[4].pe_i_i_64_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_slot[4].pe_i_i_65 
       (.I0(obs_cid[82]),
        .I1(obs_cid[106]),
        .I2(\phase_reg[1]_rep__3_n_0 ),
        .I3(obs_cid[130]),
        .I4(phase[0]),
        .I5(obs_cid[154]),
        .O(\g_slot[4].pe_i_i_65_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_slot[4].pe_i_i_66 
       (.I0(obs_cid[81]),
        .I1(obs_cid[105]),
        .I2(\phase_reg[1]_rep__3_n_0 ),
        .I3(obs_cid[129]),
        .I4(phase[0]),
        .I5(obs_cid[153]),
        .O(\g_slot[4].pe_i_i_66_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_slot[4].pe_i_i_67 
       (.I0(obs_cid[80]),
        .I1(obs_cid[104]),
        .I2(\phase_reg[1]_rep__3_n_0 ),
        .I3(obs_cid[128]),
        .I4(phase[0]),
        .I5(obs_cid[152]),
        .O(\g_slot[4].pe_i_i_67_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_slot[4].pe_i_i_68 
       (.I0(obs_cid[79]),
        .I1(obs_cid[103]),
        .I2(\phase_reg[1]_rep__3_n_0 ),
        .I3(obs_cid[127]),
        .I4(phase[0]),
        .I5(obs_cid[151]),
        .O(\g_slot[4].pe_i_i_68_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_slot[4].pe_i_i_69 
       (.I0(obs_cid[78]),
        .I1(obs_cid[102]),
        .I2(\phase_reg[1]_rep__3_n_0 ),
        .I3(obs_cid[126]),
        .I4(phase[0]),
        .I5(obs_cid[150]),
        .O(\g_slot[4].pe_i_i_69_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair228" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \g_slot[4].pe_i_i_7 
       (.I0(\g_slot[4].pe_i_i_69_n_0 ),
        .I1(phase[2]),
        .O(\g_slot[4].pe_i_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_slot[4].pe_i_i_70 
       (.I0(obs_active[13]),
        .I1(obs_active[17]),
        .I2(\phase_reg[1]_rep__3_n_0 ),
        .I3(obs_active[21]),
        .I4(phase[0]),
        .I5(obs_active[25]),
        .O(\g_slot[4].pe_i_i_70_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_slot[4].pe_i_i_71 
       (.I0(obs_whole[13]),
        .I1(obs_whole[17]),
        .I2(\phase_reg[1]_rep__2_n_0 ),
        .I3(obs_whole[21]),
        .I4(phase[0]),
        .I5(obs_whole[25]),
        .O(\g_slot[4].pe_i_i_71_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_slot[4].pe_i_i_72 
       (.I0(obs_defect[13]),
        .I1(obs_defect[17]),
        .I2(\phase_reg[1]_rep__2_n_0 ),
        .I3(obs_defect[21]),
        .I4(phase[0]),
        .I5(obs_defect[25]),
        .O(\g_slot[4].pe_i_i_72_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_slot[4].pe_i_i_73 
       (.I0(obs_ptr[41]),
        .I1(obs_ptr[53]),
        .I2(\phase_reg[1]_rep__0_n_0 ),
        .I3(obs_ptr[65]),
        .I4(phase[0]),
        .I5(obs_ptr[77]),
        .O(\g_slot[4].pe_i_i_73_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_slot[4].pe_i_i_74 
       (.I0(obs_ptr[40]),
        .I1(obs_ptr[52]),
        .I2(\phase_reg[1]_rep__0_n_0 ),
        .I3(obs_ptr[64]),
        .I4(phase[0]),
        .I5(obs_ptr[76]),
        .O(\g_slot[4].pe_i_i_74_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_slot[4].pe_i_i_75 
       (.I0(obs_ptr[39]),
        .I1(obs_ptr[51]),
        .I2(\phase_reg[1]_rep__0_n_0 ),
        .I3(obs_ptr[63]),
        .I4(phase[0]),
        .I5(obs_ptr[75]),
        .O(\g_slot[4].pe_i_i_75_n_0 ));
  MUXF7 \g_slot[4].pe_i_i_76 
       (.I0(\g_slot[4].pe_i_i_107_n_0 ),
        .I1(\g_slot[4].pe_i_i_108_n_0 ),
        .O(\g_slot[4].pe_i_i_76_n_0 ),
        .S(\phase_reg[1]_rep__1_n_0 ));
  MUXF7 \g_slot[4].pe_i_i_77 
       (.I0(\g_slot[4].pe_i_i_109_n_0 ),
        .I1(\g_slot[4].pe_i_i_110_n_0 ),
        .O(\g_slot[4].pe_i_i_77_n_0 ),
        .S(\phase_reg[1]_rep__0_n_0 ));
  MUXF7 \g_slot[4].pe_i_i_78 
       (.I0(\g_slot[4].pe_i_i_111_n_0 ),
        .I1(\g_slot[4].pe_i_i_112_n_0 ),
        .O(\g_slot[4].pe_i_i_78_n_0 ),
        .S(\phase_reg[1]_rep__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_slot[4].pe_i_i_79 
       (.I0(\g_slot[4].omir_reg_n_0_[46] ),
        .I1(\g_slot[4].omir_reg_n_0_[30] ),
        .I2(\phase_reg[1]_rep__2_n_0 ),
        .I3(\g_slot[4].omir_reg_n_0_[14] ),
        .I4(phase[0]),
        .I5(obs_cid[179]),
        .O(\g_slot[4].pe_i_i_79_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair229" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \g_slot[4].pe_i_i_8 
       (.I0(\g_slot[4].pe_i_i_70_n_0 ),
        .I1(phase[2]),
        .O(\g_slot[4].pe_i_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_slot[4].pe_i_i_80 
       (.I0(\g_slot[4].omir_reg_n_0_[45] ),
        .I1(\g_slot[4].omir_reg_n_0_[29] ),
        .I2(\phase_reg[1]_rep__2_n_0 ),
        .I3(\g_slot[4].omir_reg_n_0_[13] ),
        .I4(phase[0]),
        .I5(obs_cid[178]),
        .O(\g_slot[4].pe_i_i_80_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_slot[4].pe_i_i_81 
       (.I0(\g_slot[4].omir_reg_n_0_[44] ),
        .I1(\g_slot[4].omir_reg_n_0_[28] ),
        .I2(\phase_reg[1]_rep__2_n_0 ),
        .I3(\g_slot[4].omir_reg_n_0_[12] ),
        .I4(phase[0]),
        .I5(obs_cid[177]),
        .O(\g_slot[4].pe_i_i_81_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_slot[4].pe_i_i_82 
       (.I0(\g_slot[4].omir_reg_n_0_[43] ),
        .I1(\g_slot[4].omir_reg_n_0_[27] ),
        .I2(\phase_reg[1]_rep__2_n_0 ),
        .I3(\g_slot[4].omir_reg_n_0_[11] ),
        .I4(phase[0]),
        .I5(obs_cid[176]),
        .O(\g_slot[4].pe_i_i_82_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_slot[4].pe_i_i_83 
       (.I0(\g_slot[4].omir_reg_n_0_[42] ),
        .I1(\g_slot[4].omir_reg_n_0_[26] ),
        .I2(\phase_reg[1]_rep__2_n_0 ),
        .I3(\g_slot[4].omir_reg_n_0_[10] ),
        .I4(phase[0]),
        .I5(obs_cid[175]),
        .O(\g_slot[4].pe_i_i_83_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_slot[4].pe_i_i_84 
       (.I0(\g_slot[4].omir_reg_n_0_[41] ),
        .I1(\g_slot[4].omir_reg_n_0_[25] ),
        .I2(\phase_reg[1]_rep__2_n_0 ),
        .I3(\g_slot[4].omir_reg_n_0_[9] ),
        .I4(phase[0]),
        .I5(obs_cid[174]),
        .O(\g_slot[4].pe_i_i_84_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_slot[4].pe_i_i_85 
       (.I0(obs_cid[23]),
        .I1(obs_cid[35]),
        .I2(\phase_reg[1]_rep__2_n_0 ),
        .I3(obs_cid[47]),
        .I4(phase[0]),
        .I5(obs_cid[59]),
        .O(\g_slot[4].pe_i_i_85_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_slot[4].pe_i_i_86 
       (.I0(obs_cid[22]),
        .I1(obs_cid[34]),
        .I2(\phase_reg[1]_rep__2_n_0 ),
        .I3(obs_cid[46]),
        .I4(phase[0]),
        .I5(obs_cid[58]),
        .O(\g_slot[4].pe_i_i_86_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_slot[4].pe_i_i_87 
       (.I0(obs_cid[21]),
        .I1(obs_cid[33]),
        .I2(\phase_reg[1]_rep__2_n_0 ),
        .I3(obs_cid[45]),
        .I4(phase[0]),
        .I5(obs_cid[57]),
        .O(\g_slot[4].pe_i_i_87_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_slot[4].pe_i_i_88 
       (.I0(obs_cid[20]),
        .I1(obs_cid[32]),
        .I2(\phase_reg[1]_rep__2_n_0 ),
        .I3(obs_cid[44]),
        .I4(phase[0]),
        .I5(obs_cid[56]),
        .O(\g_slot[4].pe_i_i_88_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_slot[4].pe_i_i_89 
       (.I0(obs_cid[19]),
        .I1(obs_cid[31]),
        .I2(\phase_reg[1]_rep__2_n_0 ),
        .I3(obs_cid[43]),
        .I4(phase[0]),
        .I5(obs_cid[55]),
        .O(\g_slot[4].pe_i_i_89_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair258" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \g_slot[4].pe_i_i_9 
       (.I0(\g_slot[4].pe_i_i_71_n_0 ),
        .I1(phase[2]),
        .O(\g_slot[4].pe_i_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_slot[4].pe_i_i_90 
       (.I0(obs_cid[18]),
        .I1(obs_cid[30]),
        .I2(\phase_reg[1]_rep__2_n_0 ),
        .I3(obs_cid[42]),
        .I4(phase[0]),
        .I5(obs_cid[54]),
        .O(\g_slot[4].pe_i_i_90_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_slot[4].pe_i_i_91 
       (.I0(\g_slot[4].omir_reg_n_0_[40] ),
        .I1(\g_slot[4].omir_reg_n_0_[24] ),
        .I2(\phase_reg[1]_rep__1_n_0 ),
        .I3(\g_slot[4].omir_reg_n_0_[8] ),
        .I4(phase[0]),
        .I5(obs_active[29]),
        .O(\g_slot[4].pe_i_i_91_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_slot[4].pe_i_i_92 
       (.I0(obs_active[3]),
        .I1(obs_active[5]),
        .I2(\phase_reg[1]_rep__1_n_0 ),
        .I3(obs_active[7]),
        .I4(phase[0]),
        .I5(obs_active[9]),
        .O(\g_slot[4].pe_i_i_92_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_slot[4].pe_i_i_93 
       (.I0(obs_grown[13]),
        .I1(obs_grown[17]),
        .I2(\phase_reg[1]_rep__2_n_0 ),
        .I3(obs_grown[21]),
        .I4(phase[0]),
        .I5(obs_grown[25]),
        .O(\g_slot[4].pe_i_i_93_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_slot[4].pe_i_i_94 
       (.I0(\g_slot[4].omir_reg_n_0_[34] ),
        .I1(\g_slot[4].omir_reg_n_0_[18] ),
        .I2(\phase_reg[1]_rep__2_n_0 ),
        .I3(\g_slot[4].omir_reg_n_0_[2] ),
        .I4(phase[0]),
        .I5(obs_grown[29]),
        .O(\g_slot[4].pe_i_i_94_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_slot[4].pe_i_i_95 
       (.I0(obs_grown[3]),
        .I1(obs_grown[5]),
        .I2(\phase_reg[1]_rep__1_n_0 ),
        .I3(obs_grown[7]),
        .I4(phase[0]),
        .I5(obs_grown[9]),
        .O(\g_slot[4].pe_i_i_95_n_0 ));
  LUT6 #(
    .INIT(64'h22222E2200000000)) 
    \g_slot[4].pe_i_i_96 
       (.I0(\g_slot[4].pe_i_i_75_n_0 ),
        .I1(phase[2]),
        .I2(\phase_reg[1]_rep__0_n_0 ),
        .I3(\g_slot[4].g_dir[3].esrc [67]),
        .I4(phase[0]),
        .I5(\g_slot[4].pe_i_i_113_n_0 ),
        .O(\g_slot[4].nb_push126_out ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_slot[4].pe_i_i_97 
       (.I0(\g_slot[4].own_reg_n_0_[79] ),
        .I1(\g_slot[4].own_reg_n_0_[63] ),
        .I2(\phase_reg[1]_rep__0_n_0 ),
        .I3(\g_slot[4].own_reg_n_0_[47] ),
        .I4(phase[0]),
        .I5(data0__2),
        .O(\g_slot[4].pe_i_i_97_n_0 ));
  LUT6 #(
    .INIT(64'h010501FA00000000)) 
    \g_slot[4].pe_i_i_98 
       (.I0(phase[0]),
        .I1(\g_slot[4].omir_reg_n_0_[51] ),
        .I2(\phase_reg[1]_rep__3_n_0 ),
        .I3(phase[2]),
        .I4(\g_slot[4].pe_i_i_114_n_0 ),
        .I5(\g_slot[4].pe_i_i_115_n_0 ),
        .O(\g_slot[4].nb_push1 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_slot[4].pe_i_i_99 
       (.I0(\g_slot[4].omir_reg_n_0_[47] ),
        .I1(\g_slot[4].omir_reg_n_0_[31] ),
        .I2(\phase_reg[1]_rep__2_n_0 ),
        .I3(\g_slot[4].omir_reg_n_0_[15] ),
        .I4(phase[0]),
        .I5(\g_slot[4].g_dir[2].esrc [15]),
        .O(\g_slot[4].pe_i_i_99_n_0 ));
  FDRE \g_slot[5].bshA_reg[5][0] 
       (.C(clk),
        .CE(bshA[0]),
        .D(\slot_nxt[5] [0]),
        .Q(\g_slot[5].bshA_reg[5] [0]),
        .R(reset));
  FDRE \g_slot[5].bshA_reg[5][1] 
       (.C(clk),
        .CE(bshA[1]),
        .D(\slot_nxt[5] [0]),
        .Q(\g_slot[5].bshA_reg[5] [1]),
        .R(reset));
  FDRE \g_slot[5].bshA_reg[5][2] 
       (.C(clk),
        .CE(bshA[2]),
        .D(\slot_nxt[5] [0]),
        .Q(\g_slot[5].bshA_reg[5] [2]),
        .R(reset));
  FDRE \g_slot[5].bshA_reg[5][3] 
       (.C(clk),
        .CE(bshA[3]),
        .D(\slot_nxt[5] [0]),
        .Q(\g_slot[5].bshA_reg[5] [3]),
        .R(reset));
  FDRE \g_slot[5].bshA_reg[5][4] 
       (.C(clk),
        .CE(bshA[4]),
        .D(\slot_nxt[5] [0]),
        .Q(\g_slot[5].bshA_reg[5] [4]),
        .R(reset));
  FDRE \g_slot[5].bshB_reg[5][0] 
       (.C(clk),
        .CE(bshB[0]),
        .D(\slot_nxt[5] [0]),
        .Q(\g_slot[5].bshB_reg[5] [0]),
        .R(reset));
  FDRE \g_slot[5].bshB_reg[5][1] 
       (.C(clk),
        .CE(bshB[1]),
        .D(\slot_nxt[5] [0]),
        .Q(\g_slot[5].bshB_reg[5] [1]),
        .R(reset));
  FDRE \g_slot[5].bshB_reg[5][2] 
       (.C(clk),
        .CE(bshB[2]),
        .D(\slot_nxt[5] [0]),
        .Q(\g_slot[5].bshB_reg[5] [2]),
        .R(reset));
  FDRE \g_slot[5].bshB_reg[5][3] 
       (.C(clk),
        .CE(bshB[3]),
        .D(\slot_nxt[5] [0]),
        .Q(\g_slot[5].bshB_reg[5] [3]),
        .R(reset));
  FDRE \g_slot[5].bshB_reg[5][4] 
       (.C(clk),
        .CE(bshB[4]),
        .D(\slot_nxt[5] [0]),
        .Q(\g_slot[5].bshB_reg[5] [4]),
        .R(reset));
  FDRE \g_slot[5].omir_reg[24] 
       (.C(clk),
        .CE(\g_slot[0].own [30]),
        .D(obs_active[7]),
        .Q(\g_slot[5].omir [24]),
        .R(reset));
  FDRE \g_slot[5].omir_reg[40] 
       (.C(clk),
        .CE(\g_slot[0].own [46]),
        .D(obs_active[5]),
        .Q(\g_slot[5].omir [40]),
        .R(reset));
  FDRE \g_slot[5].omir_reg[56] 
       (.C(clk),
        .CE(\g_slot[0].own [62]),
        .D(obs_active[3]),
        .Q(\g_slot[5].omir [56]),
        .R(reset));
  FDRE \g_slot[5].omir_reg[72] 
       (.C(clk),
        .CE(\g_slot[0].own [78]),
        .D(obs_active[1]),
        .Q(\g_slot[5].omir [72]),
        .R(reset));
  FDRE \g_slot[5].own_reg[0] 
       (.C(clk),
        .CE(\g_slot[0].own [14]),
        .D(\slot_nxt[5] [0]),
        .Q(obs_busy[9]),
        .R(reset));
  FDRE \g_slot[5].own_reg[10] 
       (.C(clk),
        .CE(\g_slot[0].own [14]),
        .D(\slot_nxt[5] [10]),
        .Q(obs_cid[55]),
        .R(reset));
  FDRE \g_slot[5].own_reg[11] 
       (.C(clk),
        .CE(\g_slot[0].own [14]),
        .D(\slot_nxt[5] [11]),
        .Q(obs_cid[56]),
        .R(reset));
  FDSE \g_slot[5].own_reg[12] 
       (.C(clk),
        .CE(\g_slot[0].own [14]),
        .D(\slot_nxt[5] [12]),
        .Q(obs_cid[57]),
        .S(reset));
  FDRE \g_slot[5].own_reg[13] 
       (.C(clk),
        .CE(\g_slot[0].own [14]),
        .D(\slot_nxt[5] [13]),
        .Q(obs_cid[58]),
        .R(reset));
  FDRE \g_slot[5].own_reg[14] 
       (.C(clk),
        .CE(\g_slot[0].own [14]),
        .D(\slot_nxt[5] [14]),
        .Q(obs_cid[59]),
        .R(reset));
  FDRE \g_slot[5].own_reg[15] 
       (.C(clk),
        .CE(\g_slot[0].own [14]),
        .D(\slot_nxt[5] [15]),
        .Q(\g_slot[5].own_reg_n_0_[15] ),
        .R(reset));
  FDRE \g_slot[5].own_reg[16] 
       (.C(clk),
        .CE(\g_slot[0].own [30]),
        .D(\slot_nxt[5] [0]),
        .Q(obs_busy[7]),
        .R(reset));
  FDRE \g_slot[5].own_reg[17] 
       (.C(clk),
        .CE(\g_slot[0].own [30]),
        .D(\slot_nxt[5] [1]),
        .Q(obs_unrooted[7]),
        .R(reset));
  FDRE \g_slot[5].own_reg[18] 
       (.C(clk),
        .CE(\g_slot[0].own [30]),
        .D(\slot_nxt[5] [2]),
        .Q(obs_grown[7]),
        .R(reset));
  FDRE \g_slot[5].own_reg[19] 
       (.C(clk),
        .CE(\g_slot[0].own [30]),
        .D(\slot_nxt[5] [3]),
        .Q(obs_ptr[21]),
        .R(reset));
  FDRE \g_slot[5].own_reg[1] 
       (.C(clk),
        .CE(\g_slot[0].own [14]),
        .D(\slot_nxt[5] [1]),
        .Q(obs_unrooted[9]),
        .R(reset));
  FDRE \g_slot[5].own_reg[20] 
       (.C(clk),
        .CE(\g_slot[0].own [30]),
        .D(\slot_nxt[5] [4]),
        .Q(obs_ptr[22]),
        .R(reset));
  FDRE \g_slot[5].own_reg[21] 
       (.C(clk),
        .CE(\g_slot[0].own [30]),
        .D(\slot_nxt[5] [5]),
        .Q(obs_ptr[23]),
        .R(reset));
  FDRE \g_slot[5].own_reg[22] 
       (.C(clk),
        .CE(\g_slot[0].own [30]),
        .D(\slot_nxt[5] [6]),
        .Q(obs_defect[7]),
        .R(reset));
  FDSE \g_slot[5].own_reg[23] 
       (.C(clk),
        .CE(\g_slot[0].own [30]),
        .D(\slot_nxt[5] [7]),
        .Q(obs_whole[7]),
        .S(reset));
  FDRE \g_slot[5].own_reg[24] 
       (.C(clk),
        .CE(\g_slot[0].own [30]),
        .D(\slot_nxt[5] [8]),
        .Q(obs_active[7]),
        .R(reset));
  FDSE \g_slot[5].own_reg[25] 
       (.C(clk),
        .CE(\g_slot[0].own [30]),
        .D(\slot_nxt[5] [9]),
        .Q(obs_cid[42]),
        .S(reset));
  FDSE \g_slot[5].own_reg[26] 
       (.C(clk),
        .CE(\g_slot[0].own [30]),
        .D(\slot_nxt[5] [10]),
        .Q(obs_cid[43]),
        .S(reset));
  FDSE \g_slot[5].own_reg[27] 
       (.C(clk),
        .CE(\g_slot[0].own [30]),
        .D(\slot_nxt[5] [11]),
        .Q(obs_cid[44]),
        .S(reset));
  FDRE \g_slot[5].own_reg[28] 
       (.C(clk),
        .CE(\g_slot[0].own [30]),
        .D(\slot_nxt[5] [12]),
        .Q(obs_cid[45]),
        .R(reset));
  FDRE \g_slot[5].own_reg[29] 
       (.C(clk),
        .CE(\g_slot[0].own [30]),
        .D(\slot_nxt[5] [13]),
        .Q(obs_cid[46]),
        .R(reset));
  FDRE \g_slot[5].own_reg[2] 
       (.C(clk),
        .CE(\g_slot[0].own [14]),
        .D(\slot_nxt[5] [2]),
        .Q(obs_grown[9]),
        .R(reset));
  FDRE \g_slot[5].own_reg[30] 
       (.C(clk),
        .CE(\g_slot[0].own [30]),
        .D(\slot_nxt[5] [14]),
        .Q(obs_cid[47]),
        .R(reset));
  FDRE \g_slot[5].own_reg[31] 
       (.C(clk),
        .CE(\g_slot[0].own [30]),
        .D(\slot_nxt[5] [15]),
        .Q(\g_slot[5].own_reg_n_0_[31] ),
        .R(reset));
  FDRE \g_slot[5].own_reg[32] 
       (.C(clk),
        .CE(\g_slot[0].own [46]),
        .D(\slot_nxt[5] [0]),
        .Q(obs_busy[5]),
        .R(reset));
  FDRE \g_slot[5].own_reg[33] 
       (.C(clk),
        .CE(\g_slot[0].own [46]),
        .D(\slot_nxt[5] [1]),
        .Q(obs_unrooted[5]),
        .R(reset));
  FDRE \g_slot[5].own_reg[34] 
       (.C(clk),
        .CE(\g_slot[0].own [46]),
        .D(\slot_nxt[5] [2]),
        .Q(obs_grown[5]),
        .R(reset));
  FDRE \g_slot[5].own_reg[35] 
       (.C(clk),
        .CE(\g_slot[0].own [46]),
        .D(\slot_nxt[5] [3]),
        .Q(obs_ptr[15]),
        .R(reset));
  FDRE \g_slot[5].own_reg[36] 
       (.C(clk),
        .CE(\g_slot[0].own [46]),
        .D(\slot_nxt[5] [4]),
        .Q(obs_ptr[16]),
        .R(reset));
  FDRE \g_slot[5].own_reg[37] 
       (.C(clk),
        .CE(\g_slot[0].own [46]),
        .D(\slot_nxt[5] [5]),
        .Q(obs_ptr[17]),
        .R(reset));
  FDRE \g_slot[5].own_reg[38] 
       (.C(clk),
        .CE(\g_slot[0].own [46]),
        .D(\slot_nxt[5] [6]),
        .Q(obs_defect[5]),
        .R(reset));
  FDSE \g_slot[5].own_reg[39] 
       (.C(clk),
        .CE(\g_slot[0].own [46]),
        .D(\slot_nxt[5] [7]),
        .Q(obs_whole[5]),
        .S(reset));
  FDRE \g_slot[5].own_reg[3] 
       (.C(clk),
        .CE(\g_slot[0].own [14]),
        .D(\slot_nxt[5] [3]),
        .Q(obs_ptr[27]),
        .R(reset));
  FDRE \g_slot[5].own_reg[40] 
       (.C(clk),
        .CE(\g_slot[0].own [46]),
        .D(\slot_nxt[5] [8]),
        .Q(obs_active[5]),
        .R(reset));
  FDSE \g_slot[5].own_reg[41] 
       (.C(clk),
        .CE(\g_slot[0].own [46]),
        .D(\slot_nxt[5] [9]),
        .Q(obs_cid[30]),
        .S(reset));
  FDRE \g_slot[5].own_reg[42] 
       (.C(clk),
        .CE(\g_slot[0].own [46]),
        .D(\slot_nxt[5] [10]),
        .Q(obs_cid[31]),
        .R(reset));
  FDSE \g_slot[5].own_reg[43] 
       (.C(clk),
        .CE(\g_slot[0].own [46]),
        .D(\slot_nxt[5] [11]),
        .Q(obs_cid[32]),
        .S(reset));
  FDRE \g_slot[5].own_reg[44] 
       (.C(clk),
        .CE(\g_slot[0].own [46]),
        .D(\slot_nxt[5] [12]),
        .Q(obs_cid[33]),
        .R(reset));
  FDRE \g_slot[5].own_reg[45] 
       (.C(clk),
        .CE(\g_slot[0].own [46]),
        .D(\slot_nxt[5] [13]),
        .Q(obs_cid[34]),
        .R(reset));
  FDRE \g_slot[5].own_reg[46] 
       (.C(clk),
        .CE(\g_slot[0].own [46]),
        .D(\slot_nxt[5] [14]),
        .Q(obs_cid[35]),
        .R(reset));
  FDRE \g_slot[5].own_reg[47] 
       (.C(clk),
        .CE(\g_slot[0].own [46]),
        .D(\slot_nxt[5] [15]),
        .Q(\g_slot[5].own_reg_n_0_[47] ),
        .R(reset));
  FDRE \g_slot[5].own_reg[48] 
       (.C(clk),
        .CE(\g_slot[0].own [62]),
        .D(\slot_nxt[5] [0]),
        .Q(obs_busy[3]),
        .R(reset));
  FDRE \g_slot[5].own_reg[49] 
       (.C(clk),
        .CE(\g_slot[0].own [62]),
        .D(\slot_nxt[5] [1]),
        .Q(obs_unrooted[3]),
        .R(reset));
  FDRE \g_slot[5].own_reg[4] 
       (.C(clk),
        .CE(\g_slot[0].own [14]),
        .D(\slot_nxt[5] [4]),
        .Q(obs_ptr[28]),
        .R(reset));
  FDRE \g_slot[5].own_reg[50] 
       (.C(clk),
        .CE(\g_slot[0].own [62]),
        .D(\slot_nxt[5] [2]),
        .Q(obs_grown[3]),
        .R(reset));
  FDRE \g_slot[5].own_reg[51] 
       (.C(clk),
        .CE(\g_slot[0].own [62]),
        .D(\slot_nxt[5] [3]),
        .Q(obs_ptr[9]),
        .R(reset));
  FDRE \g_slot[5].own_reg[52] 
       (.C(clk),
        .CE(\g_slot[0].own [62]),
        .D(\slot_nxt[5] [4]),
        .Q(obs_ptr[10]),
        .R(reset));
  FDRE \g_slot[5].own_reg[53] 
       (.C(clk),
        .CE(\g_slot[0].own [62]),
        .D(\slot_nxt[5] [5]),
        .Q(obs_ptr[11]),
        .R(reset));
  FDRE \g_slot[5].own_reg[54] 
       (.C(clk),
        .CE(\g_slot[0].own [62]),
        .D(\slot_nxt[5] [6]),
        .Q(obs_defect[3]),
        .R(reset));
  FDSE \g_slot[5].own_reg[55] 
       (.C(clk),
        .CE(\g_slot[0].own [62]),
        .D(\slot_nxt[5] [7]),
        .Q(obs_whole[3]),
        .S(reset));
  FDRE \g_slot[5].own_reg[56] 
       (.C(clk),
        .CE(\g_slot[0].own [62]),
        .D(\slot_nxt[5] [8]),
        .Q(obs_active[3]),
        .R(reset));
  FDSE \g_slot[5].own_reg[57] 
       (.C(clk),
        .CE(\g_slot[0].own [62]),
        .D(\slot_nxt[5] [9]),
        .Q(obs_cid[18]),
        .S(reset));
  FDSE \g_slot[5].own_reg[58] 
       (.C(clk),
        .CE(\g_slot[0].own [62]),
        .D(\slot_nxt[5] [10]),
        .Q(obs_cid[19]),
        .S(reset));
  FDRE \g_slot[5].own_reg[59] 
       (.C(clk),
        .CE(\g_slot[0].own [62]),
        .D(\slot_nxt[5] [11]),
        .Q(obs_cid[20]),
        .R(reset));
  FDRE \g_slot[5].own_reg[5] 
       (.C(clk),
        .CE(\g_slot[0].own [14]),
        .D(\slot_nxt[5] [5]),
        .Q(obs_ptr[29]),
        .R(reset));
  FDRE \g_slot[5].own_reg[60] 
       (.C(clk),
        .CE(\g_slot[0].own [62]),
        .D(\slot_nxt[5] [12]),
        .Q(obs_cid[21]),
        .R(reset));
  FDRE \g_slot[5].own_reg[61] 
       (.C(clk),
        .CE(\g_slot[0].own [62]),
        .D(\slot_nxt[5] [13]),
        .Q(obs_cid[22]),
        .R(reset));
  FDRE \g_slot[5].own_reg[62] 
       (.C(clk),
        .CE(\g_slot[0].own [62]),
        .D(\slot_nxt[5] [14]),
        .Q(obs_cid[23]),
        .R(reset));
  FDRE \g_slot[5].own_reg[63] 
       (.C(clk),
        .CE(\g_slot[0].own [62]),
        .D(\slot_nxt[5] [15]),
        .Q(\g_slot[5].own_reg_n_0_[63] ),
        .R(reset));
  FDRE \g_slot[5].own_reg[64] 
       (.C(clk),
        .CE(\g_slot[0].own [78]),
        .D(\slot_nxt[5] [0]),
        .Q(obs_busy[1]),
        .R(reset));
  FDRE \g_slot[5].own_reg[65] 
       (.C(clk),
        .CE(\g_slot[0].own [78]),
        .D(\slot_nxt[5] [1]),
        .Q(obs_unrooted[1]),
        .R(reset));
  FDRE \g_slot[5].own_reg[66] 
       (.C(clk),
        .CE(\g_slot[0].own [78]),
        .D(\slot_nxt[5] [2]),
        .Q(obs_grown[1]),
        .R(reset));
  FDRE \g_slot[5].own_reg[67] 
       (.C(clk),
        .CE(\g_slot[0].own [78]),
        .D(\slot_nxt[5] [3]),
        .Q(obs_ptr[3]),
        .R(reset));
  FDRE \g_slot[5].own_reg[68] 
       (.C(clk),
        .CE(\g_slot[0].own [78]),
        .D(\slot_nxt[5] [4]),
        .Q(obs_ptr[4]),
        .R(reset));
  FDRE \g_slot[5].own_reg[69] 
       (.C(clk),
        .CE(\g_slot[0].own [78]),
        .D(\slot_nxt[5] [5]),
        .Q(obs_ptr[5]),
        .R(reset));
  FDRE \g_slot[5].own_reg[6] 
       (.C(clk),
        .CE(\g_slot[0].own [14]),
        .D(\slot_nxt[5] [6]),
        .Q(obs_defect[9]),
        .R(reset));
  FDRE \g_slot[5].own_reg[70] 
       (.C(clk),
        .CE(\g_slot[0].own [78]),
        .D(\slot_nxt[5] [6]),
        .Q(obs_defect[1]),
        .R(reset));
  FDSE \g_slot[5].own_reg[71] 
       (.C(clk),
        .CE(\g_slot[0].own [78]),
        .D(\slot_nxt[5] [7]),
        .Q(obs_whole[1]),
        .S(reset));
  FDRE \g_slot[5].own_reg[72] 
       (.C(clk),
        .CE(\g_slot[0].own [78]),
        .D(\slot_nxt[5] [8]),
        .Q(obs_active[1]),
        .R(reset));
  FDSE \g_slot[5].own_reg[73] 
       (.C(clk),
        .CE(\g_slot[0].own [78]),
        .D(\slot_nxt[5] [9]),
        .Q(obs_cid[6]),
        .S(reset));
  FDRE \g_slot[5].own_reg[74] 
       (.C(clk),
        .CE(\g_slot[0].own [78]),
        .D(\slot_nxt[5] [10]),
        .Q(obs_cid[7]),
        .R(reset));
  FDRE \g_slot[5].own_reg[75] 
       (.C(clk),
        .CE(\g_slot[0].own [78]),
        .D(\slot_nxt[5] [11]),
        .Q(obs_cid[8]),
        .R(reset));
  FDRE \g_slot[5].own_reg[76] 
       (.C(clk),
        .CE(\g_slot[0].own [78]),
        .D(\slot_nxt[5] [12]),
        .Q(obs_cid[9]),
        .R(reset));
  FDRE \g_slot[5].own_reg[77] 
       (.C(clk),
        .CE(\g_slot[0].own [78]),
        .D(\slot_nxt[5] [13]),
        .Q(obs_cid[10]),
        .R(reset));
  FDRE \g_slot[5].own_reg[78] 
       (.C(clk),
        .CE(\g_slot[0].own [78]),
        .D(\slot_nxt[5] [14]),
        .Q(obs_cid[11]),
        .R(reset));
  FDRE \g_slot[5].own_reg[79] 
       (.C(clk),
        .CE(\g_slot[0].own [78]),
        .D(\slot_nxt[5] [15]),
        .Q(\g_slot[5].own_reg_n_0_[79] ),
        .R(reset));
  FDSE \g_slot[5].own_reg[7] 
       (.C(clk),
        .CE(\g_slot[0].own [14]),
        .D(\slot_nxt[5] [7]),
        .Q(obs_whole[9]),
        .S(reset));
  FDRE \g_slot[5].own_reg[8] 
       (.C(clk),
        .CE(\g_slot[0].own [14]),
        .D(\slot_nxt[5] [8]),
        .Q(obs_active[9]),
        .R(reset));
  FDSE \g_slot[5].own_reg[9] 
       (.C(clk),
        .CE(\g_slot[0].own [14]),
        .D(\slot_nxt[5] [9]),
        .Q(obs_cid[54]),
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
  (* OFF_PB = "15" *) 
  (* OFF_PTR = "3" *) 
  (* OFF_UNR = "1" *) 
  (* OFF_WHL = "7" *) 
  (* ONE_ONE = "0" *) 
  (* STW = "16" *) 
  (* ST_DROP = "3'b001" *) 
  (* ST_GH = "3'b100" *) 
  (* ST_GW = "3'b010" *) 
  (* ST_IDLE = "3'b000" *) 
  (* ST_MH = "3'b101" *) 
  (* ST_MW = "3'b011" *) 
  (* SYN_IDX = "-1" *) 
  (* ZZZ_ANCHOR = "0" *) 
  snowflake_pe \g_slot[5].pe_i 
       (.ab_active(\g_slot[5].pe_i_i_7_n_0 ),
        .ab_cid({\g_slot[5].pe_i_i_1_n_0 ,\g_slot[5].pe_i_i_2_n_0 ,\g_slot[5].pe_i_i_3_n_0 ,\g_slot[5].pe_i_i_4_n_0 ,\g_slot[5].pe_i_i_5_n_0 ,\g_slot[5].pe_i_i_6_n_0 }),
        .ab_defect(\g_slot[5].pe_i_i_9_n_0 ),
        .ab_ptr({\g_slot[5].pe_i_i_10_n_0 ,\g_slot[5].pe_i_i_11_n_0 ,\g_slot[5].pe_i_i_12_n_0 }),
        .ab_whole(\g_slot[5].pe_i_i_8_n_0 ),
        .clk(1'b0),
        .e_grown({1'b0,1'b0,1'b0,\g_slot[4].e_grown [1]}),
        .m_pass({m_pass_w,\g_slot[0].pe_i_i_26_n_0 }),
        .nb_active({1'b0,\g_slot[5].pe_i_i_13_n_0 ,1'b0,p_10_in}),
        .nb_cid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,\g_slot[3].nb_cid [11:6]}),
        .nb_grown({1'b0,1'b0,1'b0,\g_slot[3].nb_grown [1]}),
        .nb_push({1'b0,1'b0,1'b0,\g_slot[5].nb_push0 }),
        .nb_valid({1'b0,1'b0,1'b0,1'b1}),
        .o_busy_c(\NLW_g_slot[5].pe_i_o_busy_c_UNCONNECTED ),
        .o_pulse(\NLW_g_slot[5].pe_i_o_pulse_UNCONNECTED ),
        .o_push(\NLW_g_slot[5].pe_i_o_push_UNCONNECTED [3:0]),
        .p_has_above(\g_slot[5].iw [6]),
        .p_id(\g_slot[5].iw [5:0]),
        .p_is_bnd(\g_slot[5].iw [7]),
        .p_is_bot(\g_slot[5].iw [9]),
        .p_is_syn(\g_slot[5].iw [10]),
        .p_is_top(\g_slot[5].iw [8]),
        .reset(1'b0),
        .st_in({\g_slot[5].pe_i_i_15_n_0 ,\g_slot[4].nb_cid [11:6],p_1_in,p_0_in101_in,\g_slot[5].pe_i_i_17_n_0 ,p_0_in23_in,\g_slot[4].nb_grown [1],\g_slot[5].pe_i_i_21_n_0 ,1'b0}),
        .st_out(\slot_nxt[5] ),
        .stage({stage_reg,\dbg_stage[0]_i_1_n_0 }),
        .syn_bit(syn_bit0),
        .zzz_never_used(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair302" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \g_slot[5].pe_i_i_1 
       (.I0(\g_slot[5].pe_i_i_33_n_0 ),
        .I1(phase[2]),
        .O(\g_slot[5].pe_i_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair298" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \g_slot[5].pe_i_i_10 
       (.I0(\g_slot[5].pe_i_i_42_n_0 ),
        .I1(phase[2]),
        .O(\g_slot[5].pe_i_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair297" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \g_slot[5].pe_i_i_11 
       (.I0(\g_slot[5].pe_i_i_43_n_0 ),
        .I1(phase[2]),
        .O(\g_slot[5].pe_i_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair297" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \g_slot[5].pe_i_i_12 
       (.I0(\g_slot[5].pe_i_i_44_n_0 ),
        .I1(phase[2]),
        .O(\g_slot[5].pe_i_i_12_n_0 ));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \g_slot[5].pe_i_i_13 
       (.I0(phase[0]),
        .I1(\g_slot[5].omir [72]),
        .I2(\phase_reg[1]_rep__0_n_0 ),
        .I3(phase[2]),
        .I4(\g_slot[5].pe_i_i_45_n_0 ),
        .O(\g_slot[5].pe_i_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair173" *) 
  LUT5 #(
    .INIT(32'h01080000)) 
    \g_slot[5].pe_i_i_14 
       (.I0(p_0_in7_in[1]),
        .I1(\g_slot[1].pe_i_i_103_n_0 ),
        .I2(p_0_in7_in[2]),
        .I3(p_0_in7_in[0]),
        .I4(p_0_in33_in),
        .O(\g_slot[5].nb_push0 ));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \g_slot[5].pe_i_i_15 
       (.I0(phase[0]),
        .I1(\g_slot[5].own_reg_n_0_[79] ),
        .I2(\phase_reg[1]_rep__0_n_0 ),
        .I3(phase[2]),
        .I4(\g_slot[5].pe_i_i_46_n_0 ),
        .O(\g_slot[5].pe_i_i_15_n_0 ));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \g_slot[5].pe_i_i_16 
       (.I0(phase[0]),
        .I1(obs_whole[1]),
        .I2(\phase_reg[1]_rep__1_n_0 ),
        .I3(phase[2]),
        .I4(\g_slot[5].pe_i_i_47_n_0 ),
        .O(p_0_in101_in));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \g_slot[5].pe_i_i_17 
       (.I0(phase[0]),
        .I1(obs_defect[1]),
        .I2(\phase_reg[1]_rep__0_n_0 ),
        .I3(phase[2]),
        .I4(\g_slot[5].pe_i_i_48_n_0 ),
        .O(\g_slot[5].pe_i_i_17_n_0 ));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \g_slot[5].pe_i_i_18 
       (.I0(phase[0]),
        .I1(obs_ptr[5]),
        .I2(\phase_reg[1]_rep__0_n_0 ),
        .I3(phase[2]),
        .I4(\g_slot[5].pe_i_i_49_n_0 ),
        .O(p_0_in23_in[2]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \g_slot[5].pe_i_i_19 
       (.I0(phase[0]),
        .I1(obs_ptr[4]),
        .I2(\phase_reg[1]_rep__0_n_0 ),
        .I3(phase[2]),
        .I4(\g_slot[5].pe_i_i_50_n_0 ),
        .O(p_0_in23_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair302" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \g_slot[5].pe_i_i_2 
       (.I0(\g_slot[5].pe_i_i_34_n_0 ),
        .I1(phase[2]),
        .O(\g_slot[5].pe_i_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \g_slot[5].pe_i_i_20 
       (.I0(phase[0]),
        .I1(obs_ptr[3]),
        .I2(\phase_reg[1]_rep__0_n_0 ),
        .I3(phase[2]),
        .I4(\g_slot[5].pe_i_i_51_n_0 ),
        .O(p_0_in23_in[0]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \g_slot[5].pe_i_i_21 
       (.I0(phase[0]),
        .I1(obs_unrooted[1]),
        .I2(\phase_reg[1]_rep__1_n_0 ),
        .I3(phase[2]),
        .I4(\g_slot[5].pe_i_i_52_n_0 ),
        .O(\g_slot[5].pe_i_i_21_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair197" *) 
  LUT5 #(
    .INIT(32'h2630A3A8)) 
    \g_slot[5].pe_i_i_22 
       (.I0(\phase_reg[1]_rep_n_0 ),
        .I1(phase[0]),
        .I2(phase[2]),
        .I3(\g_slot[0].pe_i_i_92_n_0 ),
        .I4(\g_slot[0].pe_i_i_93_n_0 ),
        .O(\g_slot[5].iw [5]));
  (* SOFT_HLUTNM = "soft_lutpair189" *) 
  LUT5 #(
    .INIT(32'hCE0CC061)) 
    \g_slot[5].pe_i_i_23 
       (.I0(\g_slot[0].pe_i_i_92_n_0 ),
        .I1(\phase_reg[1]_rep_n_0 ),
        .I2(phase[0]),
        .I3(phase[2]),
        .I4(\g_slot[0].pe_i_i_93_n_0 ),
        .O(\g_slot[5].iw [4]));
  (* SOFT_HLUTNM = "soft_lutpair209" *) 
  LUT5 #(
    .INIT(32'h88438413)) 
    \g_slot[5].pe_i_i_24 
       (.I0(\g_slot[0].pe_i_i_93_n_0 ),
        .I1(\phase_reg[1]_rep_n_0 ),
        .I2(phase[0]),
        .I3(phase[2]),
        .I4(\g_slot[0].pe_i_i_92_n_0 ),
        .O(\g_slot[5].iw [3]));
  (* SOFT_HLUTNM = "soft_lutpair190" *) 
  LUT5 #(
    .INIT(32'h92010F16)) 
    \g_slot[5].pe_i_i_25 
       (.I0(\g_slot[0].pe_i_i_92_n_0 ),
        .I1(\g_slot[0].pe_i_i_93_n_0 ),
        .I2(phase[2]),
        .I3(phase[0]),
        .I4(\phase_reg[1]_rep_n_0 ),
        .O(\g_slot[5].iw [2]));
  (* SOFT_HLUTNM = "soft_lutpair190" *) 
  LUT5 #(
    .INIT(32'h286D2630)) 
    \g_slot[5].pe_i_i_26 
       (.I0(\phase_reg[1]_rep_n_0 ),
        .I1(phase[0]),
        .I2(phase[2]),
        .I3(\g_slot[0].pe_i_i_92_n_0 ),
        .I4(\g_slot[0].pe_i_i_93_n_0 ),
        .O(\g_slot[5].iw [1]));
  (* SOFT_HLUTNM = "soft_lutpair208" *) 
  LUT5 #(
    .INIT(32'hF83F44E8)) 
    \g_slot[5].pe_i_i_27 
       (.I0(\g_slot[0].pe_i_i_92_n_0 ),
        .I1(\g_slot[0].pe_i_i_93_n_0 ),
        .I2(phase[2]),
        .I3(phase[0]),
        .I4(\phase_reg[1]_rep_n_0 ),
        .O(\g_slot[5].iw [0]));
  (* SOFT_HLUTNM = "soft_lutpair212" *) 
  LUT5 #(
    .INIT(32'h0D2696B2)) 
    \g_slot[5].pe_i_i_28 
       (.I0(\phase_reg[1]_rep_n_0 ),
        .I1(phase[0]),
        .I2(phase[2]),
        .I3(\g_slot[0].pe_i_i_93_n_0 ),
        .I4(\g_slot[0].pe_i_i_92_n_0 ),
        .O(\g_slot[5].iw [6]));
  (* SOFT_HLUTNM = "soft_lutpair204" *) 
  LUT5 #(
    .INIT(32'h01A7501E)) 
    \g_slot[5].pe_i_i_29 
       (.I0(phase[0]),
        .I1(\g_slot[0].pe_i_i_93_n_0 ),
        .I2(\phase_reg[1]_rep_n_0 ),
        .I3(phase[2]),
        .I4(\g_slot[0].pe_i_i_92_n_0 ),
        .O(\g_slot[5].iw [7]));
  (* SOFT_HLUTNM = "soft_lutpair301" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \g_slot[5].pe_i_i_3 
       (.I0(\g_slot[5].pe_i_i_35_n_0 ),
        .I1(phase[2]),
        .O(\g_slot[5].pe_i_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair206" *) 
  LUT5 #(
    .INIT(32'hC0024A07)) 
    \g_slot[5].pe_i_i_30 
       (.I0(\g_slot[0].pe_i_i_92_n_0 ),
        .I1(\g_slot[0].pe_i_i_93_n_0 ),
        .I2(\phase_reg[1]_rep_n_0 ),
        .I3(phase[0]),
        .I4(phase[2]),
        .O(\g_slot[5].iw [8]));
  (* SOFT_HLUTNM = "soft_lutpair196" *) 
  LUT5 #(
    .INIT(32'hEA00281C)) 
    \g_slot[5].pe_i_i_31 
       (.I0(\g_slot[0].pe_i_i_93_n_0 ),
        .I1(\g_slot[0].pe_i_i_92_n_0 ),
        .I2(phase[0]),
        .I3(\phase_reg[1]_rep_n_0 ),
        .I4(phase[2]),
        .O(\g_slot[5].iw [9]));
  (* SOFT_HLUTNM = "soft_lutpair213" *) 
  LUT5 #(
    .INIT(32'h4F244801)) 
    \g_slot[5].pe_i_i_32 
       (.I0(\g_slot[0].pe_i_i_92_n_0 ),
        .I1(phase[2]),
        .I2(phase[0]),
        .I3(\phase_reg[1]_rep_n_0 ),
        .I4(\g_slot[0].pe_i_i_93_n_0 ),
        .O(\g_slot[5].iw [10]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_slot[5].pe_i_i_33 
       (.I0(obs_cid[11]),
        .I1(obs_cid[23]),
        .I2(\phase_reg[1]_rep__2_n_0 ),
        .I3(obs_cid[35]),
        .I4(phase[0]),
        .I5(obs_cid[47]),
        .O(\g_slot[5].pe_i_i_33_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_slot[5].pe_i_i_34 
       (.I0(obs_cid[10]),
        .I1(obs_cid[22]),
        .I2(\phase_reg[1]_rep__2_n_0 ),
        .I3(obs_cid[34]),
        .I4(phase[0]),
        .I5(obs_cid[46]),
        .O(\g_slot[5].pe_i_i_34_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_slot[5].pe_i_i_35 
       (.I0(obs_cid[9]),
        .I1(obs_cid[21]),
        .I2(\phase_reg[1]_rep__2_n_0 ),
        .I3(obs_cid[33]),
        .I4(phase[0]),
        .I5(obs_cid[45]),
        .O(\g_slot[5].pe_i_i_35_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_slot[5].pe_i_i_36 
       (.I0(obs_cid[8]),
        .I1(obs_cid[20]),
        .I2(\phase_reg[1]_rep__2_n_0 ),
        .I3(obs_cid[32]),
        .I4(phase[0]),
        .I5(obs_cid[44]),
        .O(\g_slot[5].pe_i_i_36_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_slot[5].pe_i_i_37 
       (.I0(obs_cid[7]),
        .I1(obs_cid[19]),
        .I2(\phase_reg[1]_rep__2_n_0 ),
        .I3(obs_cid[31]),
        .I4(phase[0]),
        .I5(obs_cid[43]),
        .O(\g_slot[5].pe_i_i_37_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_slot[5].pe_i_i_38 
       (.I0(obs_cid[6]),
        .I1(obs_cid[18]),
        .I2(\phase_reg[1]_rep__2_n_0 ),
        .I3(obs_cid[30]),
        .I4(phase[0]),
        .I5(obs_cid[42]),
        .O(\g_slot[5].pe_i_i_38_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_slot[5].pe_i_i_39 
       (.I0(obs_active[1]),
        .I1(obs_active[3]),
        .I2(\phase_reg[1]_rep__1_n_0 ),
        .I3(obs_active[5]),
        .I4(phase[0]),
        .I5(obs_active[7]),
        .O(\g_slot[5].pe_i_i_39_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair301" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \g_slot[5].pe_i_i_4 
       (.I0(\g_slot[5].pe_i_i_36_n_0 ),
        .I1(phase[2]),
        .O(\g_slot[5].pe_i_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_slot[5].pe_i_i_40 
       (.I0(obs_whole[1]),
        .I1(obs_whole[3]),
        .I2(\phase_reg[1]_rep__1_n_0 ),
        .I3(obs_whole[5]),
        .I4(phase[0]),
        .I5(obs_whole[7]),
        .O(\g_slot[5].pe_i_i_40_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_slot[5].pe_i_i_41 
       (.I0(obs_defect[1]),
        .I1(obs_defect[3]),
        .I2(\phase_reg[1]_rep__0_n_0 ),
        .I3(obs_defect[5]),
        .I4(phase[0]),
        .I5(obs_defect[7]),
        .O(\g_slot[5].pe_i_i_41_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_slot[5].pe_i_i_42 
       (.I0(obs_ptr[5]),
        .I1(obs_ptr[11]),
        .I2(\phase_reg[1]_rep__0_n_0 ),
        .I3(obs_ptr[17]),
        .I4(phase[0]),
        .I5(obs_ptr[23]),
        .O(\g_slot[5].pe_i_i_42_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_slot[5].pe_i_i_43 
       (.I0(obs_ptr[4]),
        .I1(obs_ptr[10]),
        .I2(\phase_reg[1]_rep__0_n_0 ),
        .I3(obs_ptr[16]),
        .I4(phase[0]),
        .I5(obs_ptr[22]),
        .O(\g_slot[5].pe_i_i_43_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_slot[5].pe_i_i_44 
       (.I0(obs_ptr[3]),
        .I1(obs_ptr[9]),
        .I2(\phase_reg[1]_rep__0_n_0 ),
        .I3(obs_ptr[15]),
        .I4(phase[0]),
        .I5(obs_ptr[21]),
        .O(\g_slot[5].pe_i_i_44_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_slot[5].pe_i_i_45 
       (.I0(\g_slot[5].omir [56]),
        .I1(\g_slot[5].omir [40]),
        .I2(\phase_reg[1]_rep__0_n_0 ),
        .I3(\g_slot[5].omir [24]),
        .I4(phase[0]),
        .I5(obs_active[9]),
        .O(\g_slot[5].pe_i_i_45_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_slot[5].pe_i_i_46 
       (.I0(\g_slot[5].own_reg_n_0_[63] ),
        .I1(\g_slot[5].own_reg_n_0_[47] ),
        .I2(\phase_reg[1]_rep__0_n_0 ),
        .I3(\g_slot[5].own_reg_n_0_[31] ),
        .I4(phase[0]),
        .I5(\g_slot[5].own_reg_n_0_[15] ),
        .O(\g_slot[5].pe_i_i_46_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_slot[5].pe_i_i_47 
       (.I0(obs_whole[3]),
        .I1(obs_whole[5]),
        .I2(\phase_reg[1]_rep__1_n_0 ),
        .I3(obs_whole[7]),
        .I4(phase[0]),
        .I5(obs_whole[9]),
        .O(\g_slot[5].pe_i_i_47_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_slot[5].pe_i_i_48 
       (.I0(obs_defect[3]),
        .I1(obs_defect[5]),
        .I2(\phase_reg[1]_rep__0_n_0 ),
        .I3(obs_defect[7]),
        .I4(phase[0]),
        .I5(obs_defect[9]),
        .O(\g_slot[5].pe_i_i_48_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_slot[5].pe_i_i_49 
       (.I0(obs_ptr[11]),
        .I1(obs_ptr[17]),
        .I2(\phase_reg[1]_rep__0_n_0 ),
        .I3(obs_ptr[23]),
        .I4(phase[0]),
        .I5(obs_ptr[29]),
        .O(\g_slot[5].pe_i_i_49_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair300" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \g_slot[5].pe_i_i_5 
       (.I0(\g_slot[5].pe_i_i_37_n_0 ),
        .I1(phase[2]),
        .O(\g_slot[5].pe_i_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_slot[5].pe_i_i_50 
       (.I0(obs_ptr[10]),
        .I1(obs_ptr[16]),
        .I2(\phase_reg[1]_rep__0_n_0 ),
        .I3(obs_ptr[22]),
        .I4(phase[0]),
        .I5(obs_ptr[28]),
        .O(\g_slot[5].pe_i_i_50_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_slot[5].pe_i_i_51 
       (.I0(obs_ptr[9]),
        .I1(obs_ptr[15]),
        .I2(\phase_reg[1]_rep__0_n_0 ),
        .I3(obs_ptr[21]),
        .I4(phase[0]),
        .I5(obs_ptr[27]),
        .O(\g_slot[5].pe_i_i_51_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \g_slot[5].pe_i_i_52 
       (.I0(obs_unrooted[3]),
        .I1(obs_unrooted[5]),
        .I2(\phase_reg[1]_rep__1_n_0 ),
        .I3(obs_unrooted[7]),
        .I4(phase[0]),
        .I5(obs_unrooted[9]),
        .O(\g_slot[5].pe_i_i_52_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair300" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \g_slot[5].pe_i_i_6 
       (.I0(\g_slot[5].pe_i_i_38_n_0 ),
        .I1(phase[2]),
        .O(\g_slot[5].pe_i_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair299" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \g_slot[5].pe_i_i_7 
       (.I0(\g_slot[5].pe_i_i_39_n_0 ),
        .I1(phase[2]),
        .O(\g_slot[5].pe_i_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair299" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \g_slot[5].pe_i_i_8 
       (.I0(\g_slot[5].pe_i_i_40_n_0 ),
        .I1(phase[2]),
        .O(\g_slot[5].pe_i_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair298" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \g_slot[5].pe_i_i_9 
       (.I0(\g_slot[5].pe_i_i_41_n_0 ),
        .I1(phase[2]),
        .O(\g_slot[5].pe_i_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h0000000022262620)) 
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
       (.I0(stage__0[1]),
        .I1(stage__0[2]),
        .I2(stage__0[0]),
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
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
    \lat_push_cnt[31]_i_1 
       (.I0(\lat_live_cnt[31]_i_1_n_0 ),
        .I1(\g_slot[0].nb_mir0 ),
        .I2(phase[0]),
        .I3(phase[1]),
        .I4(phase[2]),
        .I5(\slot_cross[1] ),
        .O(\lat_push_cnt[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCEEE0CCCE08FFEE)) 
    \lat_push_cnt[31]_i_3 
       (.I0(\phase_reg[1]_rep_n_0 ),
        .I1(phase[2]),
        .I2(\g_slot[0].pe_i_i_93_n_0 ),
        .I3(phase[0]),
        .I4(\g_slot[0].pe_i_i_92_n_0 ),
        .I5(\g_slot[1].pe_i_i_65_n_0 ),
        .O(\g_slot[0].nb_mir0 ));
  LUT6 #(
    .INIT(64'hFEEEEEFEFEFEFEFE)) 
    \lat_push_cnt[31]_i_4 
       (.I0(\phase_reg[1]_rep_n_0 ),
        .I1(phase[2]),
        .I2(phase[0]),
        .I3(\g_slot[0].pe_i_i_93_n_0 ),
        .I4(\g_slot[1].pe_i_i_65_n_0 ),
        .I5(\g_slot[0].pe_i_i_92_n_0 ),
        .O(\slot_cross[1] ));
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
  (* SOFT_HLUTNM = "soft_lutpair181" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \phase[0]_i_1 
       (.I0(phase[0]),
        .O(\phase[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF555D)) 
    \phase[1]_i_1 
       (.I0(\lat_live_cnt[31]_i_1_n_0 ),
        .I1(phase[2]),
        .I2(phase[0]),
        .I3(phase[1]),
        .I4(reset),
        .O(\phase[1]_i_1_n_0 ));
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
  LUT2 #(
    .INIT(4'h6)) 
    \phase[1]_rep_i_1__0 
       (.I0(phase[1]),
        .I1(phase[0]),
        .O(\phase[1]_rep_i_1__0_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \phase[1]_rep_i_1__1 
       (.I0(phase[1]),
        .I1(phase[0]),
        .O(\phase[1]_rep_i_1__1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \phase[1]_rep_i_1__2 
       (.I0(phase[1]),
        .I1(phase[0]),
        .O(\phase[1]_rep_i_1__2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \phase[1]_rep_i_1__3 
       (.I0(phase[1]),
        .I1(phase[0]),
        .O(\phase[1]_rep_i_1__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair263" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \phase[2]_i_1 
       (.I0(phase[0]),
        .I1(phase[1]),
        .I2(phase[2]),
        .O(\phase[2]_i_1_n_0 ));
  FDRE \phase_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\phase[0]_i_1_n_0 ),
        .Q(phase[0]),
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
  (* ORIG_CELL_NAME = "phase_reg[1]" *) 
  FDRE \phase_reg[1]_rep__0 
       (.C(clk),
        .CE(1'b1),
        .D(\phase[1]_rep_i_1__0_n_0 ),
        .Q(\phase_reg[1]_rep__0_n_0 ),
        .R(\phase[1]_i_1_n_0 ));
  (* ORIG_CELL_NAME = "phase_reg[1]" *) 
  FDRE \phase_reg[1]_rep__1 
       (.C(clk),
        .CE(1'b1),
        .D(\phase[1]_rep_i_1__1_n_0 ),
        .Q(\phase_reg[1]_rep__1_n_0 ),
        .R(\phase[1]_i_1_n_0 ));
  (* ORIG_CELL_NAME = "phase_reg[1]" *) 
  FDRE \phase_reg[1]_rep__2 
       (.C(clk),
        .CE(1'b1),
        .D(\phase[1]_rep_i_1__2_n_0 ),
        .Q(\phase_reg[1]_rep__2_n_0 ),
        .R(\phase[1]_i_1_n_0 ));
  (* ORIG_CELL_NAME = "phase_reg[1]" *) 
  FDRE \phase_reg[1]_rep__3 
       (.C(clk),
        .CE(1'b1),
        .D(\phase[1]_rep_i_1__3_n_0 ),
        .Q(\phase_reg[1]_rep__3_n_0 ),
        .R(\phase[1]_i_1_n_0 ));
  FDRE \phase_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\phase[2]_i_1_n_0 ),
        .Q(phase[2]),
        .R(\phase[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair175" *) 
  LUT5 #(
    .INIT(32'hEBFBFFFB)) 
    \step_cnt[0]_i_1 
       (.I0(stage__0[1]),
        .I1(stage__0[0]),
        .I2(stage__0[2]),
        .I3(all_busy),
        .I4(\step_cnt_reg_n_0_[0] ),
        .O(step_cnt[0]));
  LUT6 #(
    .INIT(64'h0010100000202000)) 
    \step_cnt[1]_i_1 
       (.I0(stage__0[0]),
        .I1(stage__0[1]),
        .I2(all_busy),
        .I3(\step_cnt_reg_n_0_[1] ),
        .I4(\step_cnt_reg_n_0_[0] ),
        .I5(stage__0[2]),
        .O(step_cnt[1]));
  LUT6 #(
    .INIT(64'h0010100000202000)) 
    \step_cnt[2]_i_1 
       (.I0(stage__0[0]),
        .I1(stage__0[1]),
        .I2(all_busy),
        .I3(\step_cnt_reg_n_0_[2] ),
        .I4(\step_cnt[2]_i_2_n_0 ),
        .I5(stage__0[2]),
        .O(step_cnt[2]));
  (* SOFT_HLUTNM = "soft_lutpair280" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \step_cnt[2]_i_2 
       (.I0(\step_cnt_reg_n_0_[1] ),
        .I1(\step_cnt_reg_n_0_[0] ),
        .O(\step_cnt[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0010100000202000)) 
    \step_cnt[3]_i_1 
       (.I0(stage__0[0]),
        .I1(stage__0[1]),
        .I2(all_busy),
        .I3(\step_cnt_reg_n_0_[3] ),
        .I4(\step_cnt[3]_i_2_n_0 ),
        .I5(stage__0[2]),
        .O(step_cnt[3]));
  (* SOFT_HLUTNM = "soft_lutpair280" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \step_cnt[3]_i_2 
       (.I0(\step_cnt_reg_n_0_[2] ),
        .I1(\step_cnt_reg_n_0_[0] ),
        .I2(\step_cnt_reg_n_0_[1] ),
        .O(\step_cnt[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0010100000202000)) 
    \step_cnt[4]_i_1 
       (.I0(stage__0[0]),
        .I1(stage__0[1]),
        .I2(all_busy),
        .I3(\step_cnt_reg_n_0_[4] ),
        .I4(\step_cnt[4]_i_2_n_0 ),
        .I5(stage__0[2]),
        .O(step_cnt[4]));
  (* SOFT_HLUTNM = "soft_lutpair262" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \step_cnt[4]_i_2 
       (.I0(\step_cnt_reg_n_0_[3] ),
        .I1(\step_cnt_reg_n_0_[1] ),
        .I2(\step_cnt_reg_n_0_[0] ),
        .I3(\step_cnt_reg_n_0_[2] ),
        .O(\step_cnt[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0010100000202000)) 
    \step_cnt[5]_i_1 
       (.I0(stage__0[0]),
        .I1(stage__0[1]),
        .I2(all_busy),
        .I3(\step_cnt_reg_n_0_[5] ),
        .I4(\step_cnt[5]_i_2_n_0 ),
        .I5(stage__0[2]),
        .O(step_cnt[5]));
  (* SOFT_HLUTNM = "soft_lutpair262" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \step_cnt[5]_i_2 
       (.I0(\step_cnt_reg_n_0_[4] ),
        .I1(\step_cnt_reg_n_0_[2] ),
        .I2(\step_cnt_reg_n_0_[0] ),
        .I3(\step_cnt_reg_n_0_[1] ),
        .I4(\step_cnt_reg_n_0_[3] ),
        .O(\step_cnt[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0010100000202000)) 
    \step_cnt[6]_i_1 
       (.I0(stage__0[0]),
        .I1(stage__0[1]),
        .I2(all_busy),
        .I3(\step_cnt_reg_n_0_[6] ),
        .I4(\step_cnt[6]_i_2_n_0 ),
        .I5(stage__0[2]),
        .O(step_cnt[6]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \step_cnt[6]_i_2 
       (.I0(\step_cnt_reg_n_0_[5] ),
        .I1(\step_cnt_reg_n_0_[3] ),
        .I2(\step_cnt_reg_n_0_[1] ),
        .I3(\step_cnt_reg_n_0_[0] ),
        .I4(\step_cnt_reg_n_0_[2] ),
        .I5(\step_cnt_reg_n_0_[4] ),
        .O(\step_cnt[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h50A050A0E0D5E080)) 
    \step_cnt[7]_i_1 
       (.I0(stage__0[0]),
        .I1(lat_bpass),
        .I2(done_i_2_n_0),
        .I3(stage__0[2]),
        .I4(start),
        .I5(stage__0[1]),
        .O(\step_cnt[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair176" *) 
  LUT5 #(
    .INIT(32'h10002000)) 
    \step_cnt[7]_i_2 
       (.I0(stage__0[0]),
        .I1(stage__0[1]),
        .I2(all_busy),
        .I3(\step_cnt[7]_i_3_n_0 ),
        .I4(stage__0[2]),
        .O(step_cnt[7]));
  LUT3 #(
    .INIT(8'h78)) 
    \step_cnt[7]_i_3 
       (.I0(\step_cnt[6]_i_2_n_0 ),
        .I1(\step_cnt_reg_n_0_[6] ),
        .I2(\step_cnt_reg_n_0_[7] ),
        .O(\step_cnt[7]_i_3_n_0 ));
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
    .INIT(32'h00000004)) 
    \syn_buf[3]_i_1 
       (.I0(stage__0[1]),
        .I1(start),
        .I2(stage__0[0]),
        .I3(stage__0[2]),
        .I4(reset),
        .O(\syn_buf[3]_i_1_n_0 ));
  FDRE \syn_buf_reg[0] 
       (.C(clk),
        .CE(\syn_buf[3]_i_1_n_0 ),
        .D(syndrome[0]),
        .Q(\syn_buf_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \syn_buf_reg[1] 
       (.C(clk),
        .CE(\syn_buf[3]_i_1_n_0 ),
        .D(syndrome[1]),
        .Q(\syn_buf_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \syn_buf_reg[2] 
       (.C(clk),
        .CE(\syn_buf[3]_i_1_n_0 ),
        .D(syndrome[2]),
        .Q(\syn_buf_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \syn_buf_reg[3] 
       (.C(clk),
        .CE(\syn_buf[3]_i_1_n_0 ),
        .D(syndrome[3]),
        .Q(\syn_buf_reg_n_0_[3] ),
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
