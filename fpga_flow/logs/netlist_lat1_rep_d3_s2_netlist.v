// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Sun Sep 20 20:51:54 2026
// Host        : DESKTOP-TO7M6OH running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               {D:\ycz\doc\deepseek_workzone\decoder\fpga_flow\logs/netlist_lat1_rep_d3_s2_netlist.v}
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

  wire flip_u;
  wire flip_v;
  wire reset;
  wire [2:0]st_in;
  wire [2:0]st_out;
  wire \st_out[0]_INST_0_i_1_n_0 ;
  wire \st_out[1]_INST_0_i_1_n_0 ;
  wire \st_out[2]_INST_0_i_1_n_0 ;
  wire [2:0]stage;
  wire u_pulse;
  wire v_pulse;

  LUT6 #(
    .INIT(64'h00000000CFC0F404)) 
    \st_out[0]_INST_0 
       (.I0(stage[0]),
        .I1(st_in[0]),
        .I2(stage[1]),
        .I3(\st_out[0]_INST_0_i_1_n_0 ),
        .I4(stage[2]),
        .I5(reset),
        .O(st_out[0]));
  (* SOFT_HLUTNM = "soft_lutpair144" *) 
  LUT5 #(
    .INIT(32'hE0E1E1F0)) 
    \st_out[0]_INST_0_i_1 
       (.I0(stage[0]),
        .I1(st_in[1]),
        .I2(st_in[0]),
        .I3(u_pulse),
        .I4(v_pulse),
        .O(\st_out[0]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000CFC0F404)) 
    \st_out[1]_INST_0 
       (.I0(stage[0]),
        .I1(st_in[1]),
        .I2(stage[1]),
        .I3(\st_out[1]_INST_0_i_1_n_0 ),
        .I4(stage[2]),
        .I5(reset),
        .O(st_out[1]));
  (* SOFT_HLUTNM = "soft_lutpair144" *) 
  LUT5 #(
    .INIT(32'hFFFF5440)) 
    \st_out[1]_INST_0_i_1 
       (.I0(stage[0]),
        .I1(u_pulse),
        .I2(v_pulse),
        .I3(st_in[0]),
        .I4(st_in[1]),
        .O(\st_out[1]_INST_0_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \st_out[2]_INST_0 
       (.I0(\st_out[2]_INST_0_i_1_n_0 ),
        .I1(reset),
        .O(st_out[2]));
  LUT6 #(
    .INIT(64'hAA9A9AAA8A4A4A8A)) 
    \st_out[2]_INST_0_i_1 
       (.I0(st_in[2]),
        .I1(stage[2]),
        .I2(stage[0]),
        .I3(flip_u),
        .I4(flip_v),
        .I5(stage[1]),
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
  (* SOFT_HLUTNM = "soft_lutpair128" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair127" *) 
  LUT4 #(
    .INIT(16'h0006)) 
    \st_out[1]_INST_0_i_1 
       (.I0(stage[1]),
        .I1(stage[2]),
        .I2(stage[0]),
        .I3(st_in[1]),
        .O(n_growth_w3));
  (* SOFT_HLUTNM = "soft_lutpair128" *) 
  LUT4 #(
    .INIT(16'h566A)) 
    \st_out[1]_INST_0_i_2 
       (.I0(st_in[1]),
        .I1(v_pulse),
        .I2(u_pulse),
        .I3(st_in[0]),
        .O(grown_n));
  (* SOFT_HLUTNM = "soft_lutpair127" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair130" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair129" *) 
  LUT4 #(
    .INIT(16'h0006)) 
    \st_out[1]_INST_0_i_1 
       (.I0(stage[1]),
        .I1(stage[2]),
        .I2(stage[0]),
        .I3(st_in[1]),
        .O(n_growth_w3));
  (* SOFT_HLUTNM = "soft_lutpair130" *) 
  LUT4 #(
    .INIT(16'h566A)) 
    \st_out[1]_INST_0_i_2 
       (.I0(st_in[1]),
        .I1(v_pulse),
        .I2(u_pulse),
        .I3(st_in[0]),
        .O(grown_n));
  (* SOFT_HLUTNM = "soft_lutpair129" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair132" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair131" *) 
  LUT4 #(
    .INIT(16'h0006)) 
    \st_out[1]_INST_0_i_1 
       (.I0(stage[1]),
        .I1(stage[2]),
        .I2(stage[0]),
        .I3(st_in[1]),
        .O(n_growth_w3));
  (* SOFT_HLUTNM = "soft_lutpair132" *) 
  LUT4 #(
    .INIT(16'h566A)) 
    \st_out[1]_INST_0_i_2 
       (.I0(st_in[1]),
        .I1(v_pulse),
        .I2(u_pulse),
        .I3(st_in[0]),
        .O(grown_n));
  (* SOFT_HLUTNM = "soft_lutpair131" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair134" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair133" *) 
  LUT4 #(
    .INIT(16'h0006)) 
    \st_out[1]_INST_0_i_1 
       (.I0(stage[1]),
        .I1(stage[2]),
        .I2(stage[0]),
        .I3(st_in[1]),
        .O(n_growth_w3));
  (* SOFT_HLUTNM = "soft_lutpair134" *) 
  LUT4 #(
    .INIT(16'h566A)) 
    \st_out[1]_INST_0_i_2 
       (.I0(st_in[1]),
        .I1(v_pulse),
        .I2(u_pulse),
        .I3(st_in[0]),
        .O(grown_n));
  (* SOFT_HLUTNM = "soft_lutpair133" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair136" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair135" *) 
  LUT4 #(
    .INIT(16'h0006)) 
    \st_out[1]_INST_0_i_1 
       (.I0(stage[1]),
        .I1(stage[2]),
        .I2(stage[0]),
        .I3(st_in[1]),
        .O(n_growth_w3));
  (* SOFT_HLUTNM = "soft_lutpair136" *) 
  LUT4 #(
    .INIT(16'h566A)) 
    \st_out[1]_INST_0_i_2 
       (.I0(st_in[1]),
        .I1(v_pulse),
        .I2(u_pulse),
        .I3(st_in[0]),
        .O(grown_n));
  (* SOFT_HLUTNM = "soft_lutpair135" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair138" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair137" *) 
  LUT4 #(
    .INIT(16'h0006)) 
    \st_out[1]_INST_0_i_1 
       (.I0(stage[1]),
        .I1(stage[2]),
        .I2(stage[0]),
        .I3(st_in[1]),
        .O(n_growth_w3));
  (* SOFT_HLUTNM = "soft_lutpair138" *) 
  LUT4 #(
    .INIT(16'h566A)) 
    \st_out[1]_INST_0_i_2 
       (.I0(st_in[1]),
        .I1(v_pulse),
        .I2(u_pulse),
        .I3(st_in[0]),
        .O(grown_n));
  (* SOFT_HLUTNM = "soft_lutpair137" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair140" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair139" *) 
  LUT4 #(
    .INIT(16'h0006)) 
    \st_out[1]_INST_0_i_1 
       (.I0(stage[1]),
        .I1(stage[2]),
        .I2(stage[0]),
        .I3(st_in[1]),
        .O(n_growth_w3));
  (* SOFT_HLUTNM = "soft_lutpair140" *) 
  LUT4 #(
    .INIT(16'h566A)) 
    \st_out[1]_INST_0_i_2 
       (.I0(st_in[1]),
        .I1(v_pulse),
        .I2(u_pulse),
        .I3(st_in[0]),
        .O(grown_n));
  (* SOFT_HLUTNM = "soft_lutpair139" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair142" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair141" *) 
  LUT4 #(
    .INIT(16'h0006)) 
    \st_out[1]_INST_0_i_1 
       (.I0(stage[1]),
        .I1(stage[2]),
        .I2(stage[0]),
        .I3(st_in[1]),
        .O(n_growth_w3));
  (* SOFT_HLUTNM = "soft_lutpair142" *) 
  LUT4 #(
    .INIT(16'h566A)) 
    \st_out[1]_INST_0_i_2 
       (.I0(st_in[1]),
        .I1(v_pulse),
        .I2(u_pulse),
        .I3(st_in[0]),
        .O(grown_n));
  (* SOFT_HLUTNM = "soft_lutpair141" *) 
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
module snowflake_edge__9
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

  wire flip_u;
  wire flip_v;
  wire reset;
  wire [2:0]st_in;
  wire [2:0]st_out;
  wire \st_out[0]_INST_0_i_1_n_0 ;
  wire \st_out[1]_INST_0_i_1_n_0 ;
  wire \st_out[2]_INST_0_i_1_n_0 ;
  wire [2:0]stage;
  wire u_pulse;
  wire v_pulse;

  LUT6 #(
    .INIT(64'h00000000CFC0F404)) 
    \st_out[0]_INST_0 
       (.I0(stage[0]),
        .I1(st_in[0]),
        .I2(stage[1]),
        .I3(\st_out[0]_INST_0_i_1_n_0 ),
        .I4(stage[2]),
        .I5(reset),
        .O(st_out[0]));
  (* SOFT_HLUTNM = "soft_lutpair143" *) 
  LUT5 #(
    .INIT(32'hE0E1E1F0)) 
    \st_out[0]_INST_0_i_1 
       (.I0(stage[0]),
        .I1(st_in[1]),
        .I2(st_in[0]),
        .I3(u_pulse),
        .I4(v_pulse),
        .O(\st_out[0]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000CFC0F404)) 
    \st_out[1]_INST_0 
       (.I0(stage[0]),
        .I1(st_in[1]),
        .I2(stage[1]),
        .I3(\st_out[1]_INST_0_i_1_n_0 ),
        .I4(stage[2]),
        .I5(reset),
        .O(st_out[1]));
  (* SOFT_HLUTNM = "soft_lutpair143" *) 
  LUT5 #(
    .INIT(32'hFFFF5440)) 
    \st_out[1]_INST_0_i_1 
       (.I0(stage[0]),
        .I1(u_pulse),
        .I2(v_pulse),
        .I3(st_in[0]),
        .I4(st_in[1]),
        .O(\st_out[1]_INST_0_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \st_out[2]_INST_0 
       (.I0(\st_out[2]_INST_0_i_1_n_0 ),
        .I1(reset),
        .O(st_out[2]));
  LUT6 #(
    .INIT(64'hAA9A9AAA8A4A4A8A)) 
    \st_out[2]_INST_0_i_1 
       (.I0(st_in[2]),
        .I1(stage[2]),
        .I2(stage[0]),
        .I3(flip_u),
        .I4(flip_v),
        .I5(stage[1]),
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
  wire [3:0]nb_valid;
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
  wire \st_out[10]_INST_0_i_5_n_0 ;
  wire \st_out[11]_INST_0_i_1_n_0 ;
  wire \st_out[11]_INST_0_i_2_n_0 ;
  wire \st_out[12]_INST_0_i_1_n_0 ;
  wire \st_out[12]_INST_0_i_2_n_0 ;
  wire \st_out[12]_INST_0_i_3_n_0 ;
  wire \st_out[12]_INST_0_i_4_n_0 ;
  wire \st_out[12]_INST_0_i_5_n_0 ;
  wire \st_out[12]_INST_0_i_6_n_0 ;
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
  wire \st_out[7]_INST_0_i_3_n_0 ;
  wire \st_out[8]_INST_0_i_1_n_0 ;
  wire \st_out[8]_INST_0_i_2_n_0 ;
  wire \st_out[8]_INST_0_i_3_n_0 ;
  wire \st_out[9]_INST_0_i_1_n_0 ;
  wire \st_out[9]_INST_0_i_2_n_0 ;
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
    .INIT(64'h22202022AAAAAAAA)) 
    \st_out[0]_INST_0 
       (.I0(\st_out[14]_INST_0_i_1_n_0 ),
        .I1(\st_out[6]_INST_0_i_2_n_0 ),
        .I2(\st_out[0]_INST_0_i_1_n_0 ),
        .I3(st_in[8]),
        .I4(\st_out[8]_INST_0_i_1_n_0 ),
        .I5(\st_out[0]_INST_0_i_2_n_0 ),
        .O(st_out[0]));
  (* SOFT_HLUTNM = "soft_lutpair122" *) 
  LUT4 #(
    .INIT(16'hF088)) 
    \st_out[0]_INST_0_i_1 
       (.I0(st_in[6]),
        .I1(\st_out[14]_INST_0_i_3_n_0 ),
        .I2(nb_push[0]),
        .I3(nb_valid[0]),
        .O(\st_out[0]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8AAAFFFF8AAA8AAA)) 
    \st_out[0]_INST_0_i_2 
       (.I0(\st_out[10]_INST_0_i_1_n_0 ),
        .I1(\st_out[0]_INST_0_i_3_n_0 ),
        .I2(nb_valid[0]),
        .I3(e_grown[0]),
        .I4(m_pass[0]),
        .I5(m_pass[1]),
        .O(\st_out[0]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h4444444400004044)) 
    \st_out[0]_INST_0_i_3 
       (.I0(\st_out[2]_INST_0_i_4_n_0 ),
        .I1(\st_out[2]_INST_0_i_2_n_0 ),
        .I2(nb_cid[0]),
        .I3(nb_cid[2]),
        .I4(\st_out[0]_INST_0_i_4_n_0 ),
        .I5(\st_out[0]_INST_0_i_5_n_0 ),
        .O(\st_out[0]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair123" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \st_out[0]_INST_0_i_4 
       (.I0(nb_cid[4]),
        .I1(nb_cid[2]),
        .I2(nb_cid[1]),
        .I3(nb_cid[3]),
        .O(\st_out[0]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h4F044F044F04FF0F)) 
    \st_out[0]_INST_0_i_5 
       (.I0(st_in[12]),
        .I1(nb_cid[3]),
        .I2(st_in[13]),
        .I3(nb_cid[4]),
        .I4(\st_out[13]_INST_0_i_8_n_0 ),
        .I5(\st_out[13]_INST_0_i_7_n_0 ),
        .O(\st_out[0]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF020000)) 
    \st_out[10]_INST_0 
       (.I0(nb_valid[0]),
        .I1(\st_out[10]_INST_0_i_1_n_0 ),
        .I2(\st_out[12]_INST_0_i_1_n_0 ),
        .I3(\st_out[10]_INST_0_i_2_n_0 ),
        .I4(\st_out[14]_INST_0_i_1_n_0 ),
        .I5(\st_out[10]_INST_0_i_3_n_0 ),
        .O(st_out[10]));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \st_out[10]_INST_0_i_1 
       (.I0(st_in[12]),
        .I1(st_in[11]),
        .I2(st_in[13]),
        .I3(st_in[9]),
        .I4(st_in[10]),
        .O(\st_out[10]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEECEC22002020)) 
    \st_out[10]_INST_0_i_2 
       (.I0(\st_out[10]_INST_0_i_1_n_0 ),
        .I1(\st_out[12]_INST_0_i_1_n_0 ),
        .I2(nb_cid[1]),
        .I3(\st_out[13]_INST_0_i_3_n_0 ),
        .I4(\st_out[13]_INST_0_i_5_n_0 ),
        .I5(st_in[10]),
        .O(\st_out[10]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF7FFF0F077000000)) 
    \st_out[10]_INST_0_i_3 
       (.I0(ab_cid[1]),
        .I1(\st_out[10]_INST_0_i_4_n_0 ),
        .I2(\st_out[10]_INST_0_i_5_n_0 ),
        .I3(nb_valid[0]),
        .I4(\st_out[7]_INST_0_i_2_n_0 ),
        .I5(st_in[10]),
        .O(\st_out[10]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \st_out[10]_INST_0_i_4 
       (.I0(ab_cid[3]),
        .I1(ab_cid[2]),
        .I2(ab_cid[1]),
        .I3(ab_cid[4]),
        .I4(ab_cid[0]),
        .O(\st_out[10]_INST_0_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair119" *) 
  LUT3 #(
    .INIT(8'h8F)) 
    \st_out[10]_INST_0_i_5 
       (.I0(stage[2]),
        .I1(stage[1]),
        .I2(stage[0]),
        .O(\st_out[10]_INST_0_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF44F4)) 
    \st_out[11]_INST_0 
       (.I0(\st_out[11]_INST_0_i_1_n_0 ),
        .I1(\st_out[14]_INST_0_i_1_n_0 ),
        .I2(st_in[11]),
        .I3(\st_out[12]_INST_0_i_3_n_0 ),
        .I4(\st_out[11]_INST_0_i_2_n_0 ),
        .O(st_out[11]));
  LUT6 #(
    .INIT(64'h551055FF551F55FF)) 
    \st_out[11]_INST_0_i_1 
       (.I0(st_in[11]),
        .I1(\st_out[13]_INST_0_i_3_n_0 ),
        .I2(\st_out[13]_INST_0_i_5_n_0 ),
        .I3(\st_out[12]_INST_0_i_1_n_0 ),
        .I4(\st_out[10]_INST_0_i_1_n_0 ),
        .I5(nb_cid[2]),
        .O(\st_out[11]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA828282828282828)) 
    \st_out[11]_INST_0_i_2 
       (.I0(\st_out[4]_INST_0_i_2_n_0 ),
        .I1(ab_cid[1]),
        .I2(ab_cid[2]),
        .I3(ab_cid[3]),
        .I4(ab_cid[4]),
        .I5(ab_cid[0]),
        .O(\st_out[11]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFE0C0FFC0)) 
    \st_out[12]_INST_0 
       (.I0(\st_out[12]_INST_0_i_1_n_0 ),
        .I1(\st_out[12]_INST_0_i_2_n_0 ),
        .I2(\st_out[14]_INST_0_i_1_n_0 ),
        .I3(st_in[12]),
        .I4(\st_out[12]_INST_0_i_3_n_0 ),
        .I5(\st_out[12]_INST_0_i_4_n_0 ),
        .O(st_out[12]));
  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \st_out[12]_INST_0_i_1 
       (.I0(m_pass[1]),
        .I1(m_pass[0]),
        .O(\st_out[12]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFC00FC00FD000000)) 
    \st_out[12]_INST_0_i_2 
       (.I0(\st_out[12]_INST_0_i_5_n_0 ),
        .I1(st_in[12]),
        .I2(\st_out[13]_INST_0_i_3_n_0 ),
        .I3(\st_out[12]_INST_0_i_6_n_0 ),
        .I4(nb_cid[3]),
        .I5(\st_out[13]_INST_0_i_5_n_0 ),
        .O(\st_out[12]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair121" *) 
  LUT4 #(
    .INIT(16'h3E00)) 
    \st_out[12]_INST_0_i_3 
       (.I0(nb_valid[0]),
        .I1(stage[2]),
        .I2(stage[1]),
        .I3(stage[0]),
        .O(\st_out[12]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hA888288828882888)) 
    \st_out[12]_INST_0_i_4 
       (.I0(\st_out[4]_INST_0_i_2_n_0 ),
        .I1(ab_cid[3]),
        .I2(ab_cid[2]),
        .I3(ab_cid[1]),
        .I4(ab_cid[4]),
        .I5(ab_cid[0]),
        .O(\st_out[12]_INST_0_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair123" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \st_out[12]_INST_0_i_5 
       (.I0(nb_cid[0]),
        .I1(nb_cid[4]),
        .I2(nb_cid[2]),
        .I3(nb_cid[1]),
        .O(\st_out[12]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h000000007FFFFFFF)) 
    \st_out[12]_INST_0_i_6 
       (.I0(st_in[10]),
        .I1(st_in[9]),
        .I2(st_in[13]),
        .I3(st_in[11]),
        .I4(st_in[12]),
        .I5(\st_out[12]_INST_0_i_1_n_0 ),
        .O(\st_out[12]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFB0A0B000)) 
    \st_out[13]_INST_0 
       (.I0(\st_out[13]_INST_0_i_1_n_0 ),
        .I1(\st_out[13]_INST_0_i_2_n_0 ),
        .I2(\st_out[14]_INST_0_i_1_n_0 ),
        .I3(st_in[13]),
        .I4(\st_out[13]_INST_0_i_3_n_0 ),
        .I5(\st_out[13]_INST_0_i_4_n_0 ),
        .O(st_out[13]));
  (* SOFT_HLUTNM = "soft_lutpair124" *) 
  LUT4 #(
    .INIT(16'hA200)) 
    \st_out[13]_INST_0_i_1 
       (.I0(\st_out[13]_INST_0_i_5_n_0 ),
        .I1(m_pass[1]),
        .I2(m_pass[0]),
        .I3(\st_out[10]_INST_0_i_1_n_0 ),
        .O(\st_out[13]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair125" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \st_out[13]_INST_0_i_10 
       (.I0(e_grown[0]),
        .I1(nb_valid[0]),
        .O(\st_out[13]_INST_0_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair124" *) 
  LUT4 #(
    .INIT(16'h45CF)) 
    \st_out[13]_INST_0_i_2 
       (.I0(\st_out[10]_INST_0_i_1_n_0 ),
        .I1(m_pass[0]),
        .I2(m_pass[1]),
        .I3(nb_cid[4]),
        .O(\st_out[13]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair125" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \st_out[13]_INST_0_i_3 
       (.I0(nb_valid[0]),
        .I1(e_grown[0]),
        .I2(\st_out[2]_INST_0_i_2_n_0 ),
        .O(\st_out[13]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hEEAAAAAEEEEEEEEE)) 
    \st_out[13]_INST_0_i_4 
       (.I0(\st_out[13]_INST_0_i_6_n_0 ),
        .I1(st_in[13]),
        .I2(nb_valid[0]),
        .I3(stage[2]),
        .I4(stage[1]),
        .I5(stage[0]),
        .O(\st_out[13]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hF100F1F1FFFFFFFF)) 
    \st_out[13]_INST_0_i_5 
       (.I0(\st_out[13]_INST_0_i_7_n_0 ),
        .I1(\st_out[13]_INST_0_i_8_n_0 ),
        .I2(\st_out[13]_INST_0_i_9_n_0 ),
        .I3(nb_cid[4]),
        .I4(st_in[13]),
        .I5(\st_out[13]_INST_0_i_10_n_0 ),
        .O(\st_out[13]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h8CC0C0C0C0C0C0C0)) 
    \st_out[13]_INST_0_i_6 
       (.I0(ab_cid[0]),
        .I1(\st_out[4]_INST_0_i_2_n_0 ),
        .I2(ab_cid[4]),
        .I3(ab_cid[1]),
        .I4(ab_cid[2]),
        .I5(ab_cid[3]),
        .O(\st_out[13]_INST_0_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \st_out[13]_INST_0_i_7 
       (.I0(nb_cid[3]),
        .I1(st_in[12]),
        .I2(nb_cid[2]),
        .I3(st_in[11]),
        .O(\st_out[13]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h2202FF0F00002202)) 
    \st_out[13]_INST_0_i_8 
       (.I0(st_in[9]),
        .I1(nb_cid[0]),
        .I2(nb_cid[2]),
        .I3(st_in[11]),
        .I4(nb_cid[1]),
        .I5(st_in[10]),
        .O(\st_out[13]_INST_0_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \st_out[13]_INST_0_i_9 
       (.I0(st_in[12]),
        .I1(nb_cid[3]),
        .I2(st_in[13]),
        .I3(nb_cid[4]),
        .O(\st_out[13]_INST_0_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT5 #(
    .INIT(32'hEFAA20AA)) 
    \st_out[14]_INST_0 
       (.I0(st_in[14]),
        .I1(m_pass[0]),
        .I2(m_pass[1]),
        .I3(\st_out[14]_INST_0_i_1_n_0 ),
        .I4(\st_out[14]_INST_0_i_2_n_0 ),
        .O(st_out[14]));
  (* SOFT_HLUTNM = "soft_lutpair118" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \st_out[14]_INST_0_i_1 
       (.I0(stage[0]),
        .I1(stage[1]),
        .I2(stage[2]),
        .O(\st_out[14]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair122" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \st_out[14]_INST_0_i_2 
       (.I0(\st_out[14]_INST_0_i_3_n_0 ),
        .I1(st_in[6]),
        .I2(nb_valid[0]),
        .O(\st_out[14]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h3FFF3FFF3FFF3ABA)) 
    \st_out[14]_INST_0_i_3 
       (.I0(st_in[5]),
        .I1(\st_out[13]_INST_0_i_5_n_0 ),
        .I2(\st_out[10]_INST_0_i_1_n_0 ),
        .I3(\st_out[13]_INST_0_i_3_n_0 ),
        .I4(st_in[3]),
        .I5(st_in[4]),
        .O(\st_out[14]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAB00ABAA00AA)) 
    \st_out[1]_INST_0 
       (.I0(st_in[1]),
        .I1(\st_out[10]_INST_0_i_1_n_0 ),
        .I2(\st_out[12]_INST_0_i_1_n_0 ),
        .I3(stage[0]),
        .I4(stage[1]),
        .I5(stage[2]),
        .O(st_out[1]));
  LUT5 #(
    .INIT(32'hFFFFBA00)) 
    \st_out[2]_INST_0 
       (.I0(st_in[2]),
        .I1(\st_out[2]_INST_0_i_1_n_0 ),
        .I2(\st_out[2]_INST_0_i_2_n_0 ),
        .I3(\st_out[14]_INST_0_i_1_n_0 ),
        .I4(\st_out[2]_INST_0_i_3_n_0 ),
        .O(st_out[2]));
  LUT6 #(
    .INIT(64'h7F77FFFFFFFFFFFF)) 
    \st_out[2]_INST_0_i_1 
       (.I0(nb_valid[0]),
        .I1(e_grown[0]),
        .I2(m_pass[0]),
        .I3(m_pass[1]),
        .I4(\st_out[2]_INST_0_i_4_n_0 ),
        .I5(\st_out[10]_INST_0_i_1_n_0 ),
        .O(\st_out[2]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF7FFFFFFF)) 
    \st_out[2]_INST_0_i_2 
       (.I0(nb_cid[3]),
        .I1(nb_cid[4]),
        .I2(nb_cid[2]),
        .I3(nb_cid[1]),
        .I4(nb_cid[0]),
        .I5(st_in[1]),
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
  LUT5 #(
    .INIT(32'h00400000)) 
    \st_out[2]_INST_0_i_4 
       (.I0(stage[2]),
        .I1(stage[0]),
        .I2(stage[1]),
        .I3(st_in[2]),
        .I4(nb_grown[0]),
        .O(\st_out[2]_INST_0_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair118" *) 
  LUT5 #(
    .INIT(32'hFFFF0440)) 
    \st_out[3]_INST_0 
       (.I0(\st_out[3]_INST_0_i_1_n_0 ),
        .I1(stage[0]),
        .I2(stage[1]),
        .I3(stage[2]),
        .I4(\st_out[3]_INST_0_i_2_n_0 ),
        .O(st_out[3]));
  LUT6 #(
    .INIT(64'hD0000000F2FFF2FF)) 
    \st_out[3]_INST_0_i_1 
       (.I0(m_pass[1]),
        .I1(m_pass[0]),
        .I2(\st_out[13]_INST_0_i_5_n_0 ),
        .I3(\st_out[10]_INST_0_i_1_n_0 ),
        .I4(\st_out[13]_INST_0_i_3_n_0 ),
        .I5(st_in[3]),
        .O(\st_out[3]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF00BFFFF00080000)) 
    \st_out[3]_INST_0_i_2 
       (.I0(ab_ptr[0]),
        .I1(nb_valid[0]),
        .I2(stage[2]),
        .I3(stage[1]),
        .I4(stage[0]),
        .I5(st_in[3]),
        .O(\st_out[3]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF88F888F888F8)) 
    \st_out[4]_INST_0 
       (.I0(\st_out[14]_INST_0_i_1_n_0 ),
        .I1(\st_out[4]_INST_0_i_1_n_0 ),
        .I2(st_in[4]),
        .I3(\st_out[12]_INST_0_i_3_n_0 ),
        .I4(ab_ptr[1]),
        .I5(\st_out[4]_INST_0_i_2_n_0 ),
        .O(st_out[4]));
  LUT6 #(
    .INIT(64'h2FFF00002F2F0000)) 
    \st_out[4]_INST_0_i_1 
       (.I0(m_pass[1]),
        .I1(m_pass[0]),
        .I2(\st_out[10]_INST_0_i_1_n_0 ),
        .I3(\st_out[13]_INST_0_i_3_n_0 ),
        .I4(st_in[4]),
        .I5(\st_out[13]_INST_0_i_5_n_0 ),
        .O(\st_out[4]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair121" *) 
  LUT4 #(
    .INIT(16'h0200)) 
    \st_out[4]_INST_0_i_2 
       (.I0(stage[0]),
        .I1(stage[1]),
        .I2(stage[2]),
        .I3(nb_valid[0]),
        .O(\st_out[4]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair119" *) 
  LUT5 #(
    .INIT(32'hFFFF2800)) 
    \st_out[5]_INST_0 
       (.I0(stage[0]),
        .I1(stage[1]),
        .I2(stage[2]),
        .I3(\st_out[5]_INST_0_i_1_n_0 ),
        .I4(\st_out[5]_INST_0_i_2_n_0 ),
        .O(st_out[5]));
  LUT6 #(
    .INIT(64'h7373FF7300000000)) 
    \st_out[5]_INST_0_i_1 
       (.I0(\st_out[13]_INST_0_i_3_n_0 ),
        .I1(\st_out[10]_INST_0_i_1_n_0 ),
        .I2(\st_out[13]_INST_0_i_5_n_0 ),
        .I3(m_pass[1]),
        .I4(m_pass[0]),
        .I5(st_in[5]),
        .O(\st_out[5]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF00BFFFF00080000)) 
    \st_out[5]_INST_0_i_2 
       (.I0(ab_ptr[2]),
        .I1(nb_valid[0]),
        .I2(stage[2]),
        .I3(stage[1]),
        .I4(stage[0]),
        .I5(st_in[5]),
        .O(\st_out[5]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFA000A208)) 
    \st_out[6]_INST_0 
       (.I0(\st_out[14]_INST_0_i_1_n_0 ),
        .I1(\st_out[6]_INST_0_i_1_n_0 ),
        .I2(\st_out[6]_INST_0_i_2_n_0 ),
        .I3(st_in[6]),
        .I4(\st_out[14]_INST_0_i_2_n_0 ),
        .I5(\st_out[6]_INST_0_i_3_n_0 ),
        .O(st_out[6]));
  (* SOFT_HLUTNM = "soft_lutpair126" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \st_out[6]_INST_0_i_1 
       (.I0(nb_valid[0]),
        .I1(nb_push[0]),
        .O(\st_out[6]_INST_0_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \st_out[6]_INST_0_i_2 
       (.I0(m_pass[0]),
        .I1(m_pass[1]),
        .O(\st_out[6]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAA0000CAAAAAAAAA)) 
    \st_out[6]_INST_0_i_3 
       (.I0(st_in[6]),
        .I1(ab_defect),
        .I2(nb_valid[0]),
        .I3(stage[2]),
        .I4(stage[1]),
        .I5(stage[0]),
        .O(\st_out[6]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFEAAA)) 
    \st_out[7]_INST_0 
       (.I0(\st_out[7]_INST_0_i_1_n_0 ),
        .I1(\st_out[7]_INST_0_i_2_n_0 ),
        .I2(ab_whole),
        .I3(nb_valid[0]),
        .I4(\st_out[7]_INST_0_i_3_n_0 ),
        .O(st_out[7]));
  LUT6 #(
    .INIT(64'hAAAAA20AAAAAA2AA)) 
    \st_out[7]_INST_0_i_1 
       (.I0(st_in[7]),
        .I1(st_in[8]),
        .I2(stage[0]),
        .I3(stage[1]),
        .I4(stage[2]),
        .I5(nb_valid[0]),
        .O(\st_out[7]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair120" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \st_out[7]_INST_0_i_2 
       (.I0(stage[2]),
        .I1(stage[1]),
        .I2(stage[0]),
        .O(\st_out[7]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair120" *) 
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
    .INIT(64'hFFFFFFFF08FB0000)) 
    \st_out[8]_INST_0 
       (.I0(st_in[8]),
        .I1(m_pass[0]),
        .I2(m_pass[1]),
        .I3(\st_out[8]_INST_0_i_1_n_0 ),
        .I4(\st_out[14]_INST_0_i_1_n_0 ),
        .I5(\st_out[8]_INST_0_i_2_n_0 ),
        .O(st_out[8]));
  LUT6 #(
    .INIT(64'h0008FFC8003BFFFB)) 
    \st_out[8]_INST_0_i_1 
       (.I0(\st_out[8]_INST_0_i_3_n_0 ),
        .I1(\st_out[3]_INST_0_i_1_n_0 ),
        .I2(\st_out[5]_INST_0_i_1_n_0 ),
        .I3(\st_out[4]_INST_0_i_1_n_0 ),
        .I4(st_in[8]),
        .I5(nb_active[0]),
        .O(\st_out[8]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAA0000E2AAAAAAAA)) 
    \st_out[8]_INST_0_i_2 
       (.I0(st_in[8]),
        .I1(nb_valid[0]),
        .I2(ab_active),
        .I3(stage[2]),
        .I4(stage[1]),
        .I5(stage[0]),
        .O(\st_out[8]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair126" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \st_out[8]_INST_0_i_3 
       (.I0(nb_valid[0]),
        .I1(st_in[6]),
        .O(\st_out[8]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF020000)) 
    \st_out[9]_INST_0 
       (.I0(nb_valid[0]),
        .I1(\st_out[10]_INST_0_i_1_n_0 ),
        .I2(\st_out[12]_INST_0_i_1_n_0 ),
        .I3(\st_out[9]_INST_0_i_1_n_0 ),
        .I4(\st_out[14]_INST_0_i_1_n_0 ),
        .I5(\st_out[9]_INST_0_i_2_n_0 ),
        .O(st_out[9]));
  LUT6 #(
    .INIT(64'hAAAAAAAAEEF00000)) 
    \st_out[9]_INST_0_i_1 
       (.I0(st_in[9]),
        .I1(\st_out[13]_INST_0_i_3_n_0 ),
        .I2(nb_cid[0]),
        .I3(\st_out[13]_INST_0_i_5_n_0 ),
        .I4(\st_out[10]_INST_0_i_1_n_0 ),
        .I5(\st_out[12]_INST_0_i_1_n_0 ),
        .O(\st_out[9]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF00BFFFF00080000)) 
    \st_out[9]_INST_0_i_2 
       (.I0(ab_cid[0]),
        .I1(nb_valid[0]),
        .I2(stage[2]),
        .I3(stage[1]),
        .I4(stage[0]),
        .I5(st_in[9]),
        .O(\st_out[9]_INST_0_i_2_n_0 ));
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
  wire p_is_bot;
  wire [14:0]st_in;
  wire [14:0]st_out;
  wire \st_out[0]_INST_0_i_1_n_0 ;
  wire \st_out[0]_INST_0_i_2_n_0 ;
  wire \st_out[0]_INST_0_i_3_n_0 ;
  wire \st_out[10]_INST_0_i_1_n_0 ;
  wire \st_out[10]_INST_0_i_2_n_0 ;
  wire \st_out[10]_INST_0_i_3_n_0 ;
  wire \st_out[10]_INST_0_i_4_n_0 ;
  wire \st_out[10]_INST_0_i_5_n_0 ;
  wire \st_out[10]_INST_0_i_6_n_0 ;
  wire \st_out[10]_INST_0_i_7_n_0 ;
  wire \st_out[10]_INST_0_i_8_n_0 ;
  wire \st_out[10]_INST_0_i_9_n_0 ;
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
  wire \st_out[13]_INST_0_i_1_n_0 ;
  wire \st_out[13]_INST_0_i_2_n_0 ;
  wire \st_out[13]_INST_0_i_3_n_0 ;
  wire \st_out[13]_INST_0_i_4_n_0 ;
  wire \st_out[13]_INST_0_i_5_n_0 ;
  wire \st_out[13]_INST_0_i_6_n_0 ;
  wire \st_out[13]_INST_0_i_7_n_0 ;
  wire \st_out[13]_INST_0_i_8_n_0 ;
  wire \st_out[13]_INST_0_i_9_n_0 ;
  wire \st_out[1]_INST_0_i_1_n_0 ;
  wire \st_out[2]_INST_0_i_1_n_0 ;
  wire \st_out[2]_INST_0_i_2_n_0 ;
  wire \st_out[2]_INST_0_i_3_n_0 ;
  wire \st_out[2]_INST_0_i_4_n_0 ;
  wire \st_out[3]_INST_0_i_1_n_0 ;
  wire \st_out[3]_INST_0_i_2_n_0 ;
  wire \st_out[4]_INST_0_i_1_n_0 ;
  wire \st_out[4]_INST_0_i_2_n_0 ;
  wire \st_out[4]_INST_0_i_3_n_0 ;
  wire \st_out[5]_INST_0_i_1_n_0 ;
  wire \st_out[5]_INST_0_i_2_n_0 ;
  wire \st_out[6]_INST_0_i_1_n_0 ;
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
    .INIT(64'h8888A8AAA8AA8888)) 
    \st_out[0]_INST_0 
       (.I0(\st_out[13]_INST_0_i_2_n_0 ),
        .I1(\st_out[0]_INST_0_i_1_n_0 ),
        .I2(m_pass[1]),
        .I3(m_pass[0]),
        .I4(\st_out[8]_INST_0_i_1_n_0 ),
        .I5(st_in[8]),
        .O(st_out[0]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFD00FFFF)) 
    \st_out[0]_INST_0_i_1 
       (.I0(\st_out[9]_INST_0_i_3_n_0 ),
        .I1(\st_out[2]_INST_0_i_3_n_0 ),
        .I2(\st_out[2]_INST_0_i_4_n_0 ),
        .I3(\st_out[0]_INST_0_i_2_n_0 ),
        .I4(\st_out[0]_INST_0_i_3_n_0 ),
        .I5(\st_out[1]_INST_0_i_1_n_0 ),
        .O(\st_out[0]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \st_out[0]_INST_0_i_2 
       (.I0(e_grown[1]),
        .I1(m_pass[0]),
        .I2(m_pass[1]),
        .O(\st_out[0]_INST_0_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h4F)) 
    \st_out[0]_INST_0_i_3 
       (.I0(m_pass[1]),
        .I1(m_pass[0]),
        .I2(nb_push[1]),
        .O(\st_out[0]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFF7000000)) 
    \st_out[10]_INST_0 
       (.I0(\st_out[10]_INST_0_i_1_n_0 ),
        .I1(\st_out[10]_INST_0_i_2_n_0 ),
        .I2(st_in[10]),
        .I3(\st_out[13]_INST_0_i_2_n_0 ),
        .I4(\st_out[10]_INST_0_i_3_n_0 ),
        .I5(\st_out[10]_INST_0_i_4_n_0 ),
        .O(st_out[10]));
  LUT6 #(
    .INIT(64'hF100F1F1FFFFFFFF)) 
    \st_out[10]_INST_0_i_1 
       (.I0(\st_out[10]_INST_0_i_5_n_0 ),
        .I1(\st_out[10]_INST_0_i_6_n_0 ),
        .I2(\st_out[10]_INST_0_i_7_n_0 ),
        .I3(nb_cid[9]),
        .I4(st_in[13]),
        .I5(e_grown[1]),
        .O(\st_out[10]_INST_0_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hBF)) 
    \st_out[10]_INST_0_i_2 
       (.I0(\st_out[10]_INST_0_i_8_n_0 ),
        .I1(nb_cid[5]),
        .I2(e_grown[1]),
        .O(\st_out[10]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFF0808080808)) 
    \st_out[10]_INST_0_i_3 
       (.I0(st_in[10]),
        .I1(m_pass[1]),
        .I2(m_pass[0]),
        .I3(nb_cid[6]),
        .I4(\st_out[10]_INST_0_i_1_n_0 ),
        .I5(\st_out[13]_INST_0_i_7_n_0 ),
        .O(\st_out[10]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h3FFF2F2233332222)) 
    \st_out[10]_INST_0_i_4 
       (.I0(\st_out[13]_INST_0_i_4_n_0 ),
        .I1(\st_out[13]_INST_0_i_3_n_0 ),
        .I2(\st_out[10]_INST_0_i_9_n_0 ),
        .I3(p_is_bot),
        .I4(st_in[10]),
        .I5(\st_out[12]_INST_0_i_3_n_0 ),
        .O(\st_out[10]_INST_0_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \st_out[10]_INST_0_i_5 
       (.I0(nb_cid[8]),
        .I1(st_in[12]),
        .I2(nb_cid[7]),
        .I3(st_in[11]),
        .O(\st_out[10]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h2202FF0F00002202)) 
    \st_out[10]_INST_0_i_6 
       (.I0(st_in[9]),
        .I1(nb_cid[5]),
        .I2(nb_cid[7]),
        .I3(st_in[11]),
        .I4(nb_cid[6]),
        .I5(st_in[10]),
        .O(\st_out[10]_INST_0_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \st_out[10]_INST_0_i_7 
       (.I0(st_in[12]),
        .I1(nb_cid[8]),
        .I2(st_in[13]),
        .I3(nb_cid[9]),
        .O(\st_out[10]_INST_0_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hBFFFFFFF)) 
    \st_out[10]_INST_0_i_8 
       (.I0(st_in[1]),
        .I1(nb_cid[8]),
        .I2(nb_cid[6]),
        .I3(nb_cid[9]),
        .I4(nb_cid[7]),
        .O(\st_out[10]_INST_0_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h4CCCCCCC)) 
    \st_out[10]_INST_0_i_9 
       (.I0(ab_cid[4]),
        .I1(ab_cid[1]),
        .I2(ab_cid[2]),
        .I3(ab_cid[3]),
        .I4(ab_cid[0]),
        .O(\st_out[10]_INST_0_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hEFEFEFEE)) 
    \st_out[11]_INST_0 
       (.I0(\st_out[11]_INST_0_i_1_n_0 ),
        .I1(\st_out[11]_INST_0_i_2_n_0 ),
        .I2(\st_out[13]_INST_0_i_3_n_0 ),
        .I3(\st_out[13]_INST_0_i_4_n_0 ),
        .I4(st_in[11]),
        .O(st_out[11]));
  LUT6 #(
    .INIT(64'hFECE000032020000)) 
    \st_out[11]_INST_0_i_1 
       (.I0(\st_out[11]_INST_0_i_3_n_0 ),
        .I1(\st_out[13]_INST_0_i_6_n_0 ),
        .I2(\st_out[11]_INST_0_i_4_n_0 ),
        .I3(p_is_bot),
        .I4(\st_out[13]_INST_0_i_2_n_0 ),
        .I5(st_in[11]),
        .O(\st_out[11]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA8A8A8A808A8A808)) 
    \st_out[11]_INST_0_i_2 
       (.I0(\st_out[12]_INST_0_i_3_n_0 ),
        .I1(st_in[11]),
        .I2(p_is_bot),
        .I3(ab_cid[1]),
        .I4(ab_cid[2]),
        .I5(\st_out[12]_INST_0_i_6_n_0 ),
        .O(\st_out[11]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hD0DF)) 
    \st_out[11]_INST_0_i_3 
       (.I0(\st_out[10]_INST_0_i_2_n_0 ),
        .I1(st_in[11]),
        .I2(\st_out[10]_INST_0_i_1_n_0 ),
        .I3(\st_out[11]_INST_0_i_5_n_0 ),
        .O(\st_out[11]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \st_out[11]_INST_0_i_4 
       (.I0(st_in[12]),
        .I1(st_in[9]),
        .I2(st_in[10]),
        .I3(st_in[11]),
        .I4(st_in[13]),
        .O(\st_out[11]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h40000000FFFFFFFF)) 
    \st_out[11]_INST_0_i_5 
       (.I0(st_in[11]),
        .I1(nb_cid[8]),
        .I2(nb_cid[5]),
        .I3(nb_cid[6]),
        .I4(nb_cid[9]),
        .I5(nb_cid[7]),
        .O(\st_out[11]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hEAFFEAFFEAFFEAEA)) 
    \st_out[12]_INST_0 
       (.I0(\st_out[12]_INST_0_i_1_n_0 ),
        .I1(\st_out[12]_INST_0_i_2_n_0 ),
        .I2(\st_out[12]_INST_0_i_3_n_0 ),
        .I3(\st_out[13]_INST_0_i_3_n_0 ),
        .I4(\st_out[13]_INST_0_i_4_n_0 ),
        .I5(st_in[12]),
        .O(st_out[12]));
  LUT6 #(
    .INIT(64'h00000000FFFF0053)) 
    \st_out[12]_INST_0_i_1 
       (.I0(\st_out[10]_INST_0_i_2_n_0 ),
        .I1(\st_out[12]_INST_0_i_4_n_0 ),
        .I2(\st_out[10]_INST_0_i_1_n_0 ),
        .I3(\st_out[13]_INST_0_i_6_n_0 ),
        .I4(st_in[12]),
        .I5(\st_out[12]_INST_0_i_5_n_0 ),
        .O(\st_out[12]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBFEAFFFFBFEA0000)) 
    \st_out[12]_INST_0_i_2 
       (.I0(\st_out[12]_INST_0_i_6_n_0 ),
        .I1(ab_cid[1]),
        .I2(ab_cid[2]),
        .I3(ab_cid[3]),
        .I4(p_is_bot),
        .I5(st_in[12]),
        .O(\st_out[12]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \st_out[12]_INST_0_i_3 
       (.I0(stage[2]),
        .I1(stage[1]),
        .I2(stage[0]),
        .O(\st_out[12]_INST_0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \st_out[12]_INST_0_i_4 
       (.I0(nb_cid[7]),
        .I1(nb_cid[9]),
        .I2(nb_cid[6]),
        .I3(nb_cid[5]),
        .O(\st_out[12]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF1011FFFF)) 
    \st_out[12]_INST_0_i_5 
       (.I0(\st_out[10]_INST_0_i_1_n_0 ),
        .I1(nb_cid[8]),
        .I2(m_pass[0]),
        .I3(m_pass[1]),
        .I4(\st_out[13]_INST_0_i_2_n_0 ),
        .I5(\st_out[1]_INST_0_i_1_n_0 ),
        .O(\st_out[12]_INST_0_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \st_out[12]_INST_0_i_6 
       (.I0(ab_cid[0]),
        .I1(ab_cid[3]),
        .I2(ab_cid[2]),
        .I3(ab_cid[1]),
        .I4(ab_cid[4]),
        .O(\st_out[12]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF4F4F4F44)) 
    \st_out[13]_INST_0 
       (.I0(\st_out[13]_INST_0_i_1_n_0 ),
        .I1(\st_out[13]_INST_0_i_2_n_0 ),
        .I2(\st_out[13]_INST_0_i_3_n_0 ),
        .I3(\st_out[13]_INST_0_i_4_n_0 ),
        .I4(st_in[13]),
        .I5(\st_out[13]_INST_0_i_5_n_0 ),
        .O(st_out[13]));
  LUT6 #(
    .INIT(64'h3077307733777777)) 
    \st_out[13]_INST_0_i_1 
       (.I0(\st_out[13]_INST_0_i_6_n_0 ),
        .I1(st_in[13]),
        .I2(\st_out[10]_INST_0_i_2_n_0 ),
        .I3(\st_out[13]_INST_0_i_7_n_0 ),
        .I4(nb_cid[9]),
        .I5(\st_out[10]_INST_0_i_1_n_0 ),
        .O(\st_out[13]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \st_out[13]_INST_0_i_2 
       (.I0(stage[0]),
        .I1(stage[2]),
        .I2(stage[1]),
        .O(\st_out[13]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \st_out[13]_INST_0_i_3 
       (.I0(stage[0]),
        .I1(stage[2]),
        .I2(stage[1]),
        .O(\st_out[13]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \st_out[13]_INST_0_i_4 
       (.I0(stage[0]),
        .I1(stage[2]),
        .I2(stage[1]),
        .I3(\st_out[13]_INST_0_i_8_n_0 ),
        .O(\st_out[13]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hA8A8A80808A8A808)) 
    \st_out[13]_INST_0_i_5 
       (.I0(\st_out[12]_INST_0_i_3_n_0 ),
        .I1(st_in[13]),
        .I2(p_is_bot),
        .I3(ab_cid[4]),
        .I4(\st_out[13]_INST_0_i_9_n_0 ),
        .I5(ab_cid[0]),
        .O(\st_out[13]_INST_0_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \st_out[13]_INST_0_i_6 
       (.I0(m_pass[1]),
        .I1(m_pass[0]),
        .O(\st_out[13]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h1555555555555555)) 
    \st_out[13]_INST_0_i_7 
       (.I0(\st_out[13]_INST_0_i_6_n_0 ),
        .I1(st_in[13]),
        .I2(st_in[11]),
        .I3(st_in[10]),
        .I4(st_in[9]),
        .I5(st_in[12]),
        .O(\st_out[13]_INST_0_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \st_out[13]_INST_0_i_8 
       (.I0(st_in[3]),
        .I1(p_is_bot),
        .I2(st_in[4]),
        .I3(st_in[5]),
        .O(\st_out[13]_INST_0_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \st_out[13]_INST_0_i_9 
       (.I0(ab_cid[3]),
        .I1(ab_cid[2]),
        .I2(ab_cid[1]),
        .O(\st_out[13]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAAAA08AA08AAAAAA)) 
    \st_out[14]_INST_0 
       (.I0(st_in[14]),
        .I1(m_pass[1]),
        .I2(m_pass[0]),
        .I3(stage[0]),
        .I4(stage[2]),
        .I5(stage[1]),
        .O(st_out[14]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hAEC2AA82)) 
    \st_out[1]_INST_0 
       (.I0(st_in[1]),
        .I1(stage[0]),
        .I2(stage[2]),
        .I3(stage[1]),
        .I4(\st_out[1]_INST_0_i_1_n_0 ),
        .O(st_out[1]));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \st_out[1]_INST_0_i_1 
       (.I0(st_in[13]),
        .I1(st_in[11]),
        .I2(st_in[10]),
        .I3(st_in[9]),
        .I4(st_in[12]),
        .I5(\st_out[13]_INST_0_i_6_n_0 ),
        .O(\st_out[1]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00E0E000)) 
    \st_out[2]_INST_0 
       (.I0(st_in[2]),
        .I1(\st_out[2]_INST_0_i_1_n_0 ),
        .I2(stage[0]),
        .I3(stage[2]),
        .I4(stage[1]),
        .I5(\st_out[2]_INST_0_i_2_n_0 ),
        .O(st_out[2]));
  LUT6 #(
    .INIT(64'h000000000000A200)) 
    \st_out[2]_INST_0_i_1 
       (.I0(\st_out[2]_INST_0_i_3_n_0 ),
        .I1(m_pass[1]),
        .I2(m_pass[0]),
        .I3(e_grown[1]),
        .I4(\st_out[11]_INST_0_i_4_n_0 ),
        .I5(\st_out[2]_INST_0_i_4_n_0 ),
        .O(\st_out[2]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hD5D5D5D510000000)) 
    \st_out[2]_INST_0_i_2 
       (.I0(stage[0]),
        .I1(stage[2]),
        .I2(stage[1]),
        .I3(st_in[8]),
        .I4(st_in[7]),
        .I5(st_in[2]),
        .O(\st_out[2]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00400000)) 
    \st_out[2]_INST_0_i_3 
       (.I0(stage[2]),
        .I1(stage[0]),
        .I2(stage[1]),
        .I3(st_in[2]),
        .I4(nb_grown[1]),
        .O(\st_out[2]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0800000000000000)) 
    \st_out[2]_INST_0_i_4 
       (.I0(nb_cid[9]),
        .I1(nb_cid[8]),
        .I2(st_in[1]),
        .I3(nb_cid[5]),
        .I4(nb_cid[6]),
        .I5(nb_cid[7]),
        .O(\st_out[2]_INST_0_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hF4F4FFF4)) 
    \st_out[3]_INST_0 
       (.I0(\st_out[3]_INST_0_i_1_n_0 ),
        .I1(\st_out[13]_INST_0_i_2_n_0 ),
        .I2(\st_out[3]_INST_0_i_2_n_0 ),
        .I3(st_in[3]),
        .I4(\st_out[4]_INST_0_i_3_n_0 ),
        .O(st_out[3]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h4CFF)) 
    \st_out[3]_INST_0_i_1 
       (.I0(\st_out[10]_INST_0_i_1_n_0 ),
        .I1(\st_out[13]_INST_0_i_7_n_0 ),
        .I2(\st_out[10]_INST_0_i_2_n_0 ),
        .I3(st_in[3]),
        .O(\st_out[3]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0202020000000200)) 
    \st_out[3]_INST_0_i_2 
       (.I0(stage[0]),
        .I1(stage[1]),
        .I2(stage[2]),
        .I3(st_in[3]),
        .I4(p_is_bot),
        .I5(ab_ptr[0]),
        .O(\st_out[3]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hF4F4FFF4)) 
    \st_out[4]_INST_0 
       (.I0(\st_out[4]_INST_0_i_1_n_0 ),
        .I1(\st_out[13]_INST_0_i_2_n_0 ),
        .I2(\st_out[4]_INST_0_i_2_n_0 ),
        .I3(st_in[4]),
        .I4(\st_out[4]_INST_0_i_3_n_0 ),
        .O(st_out[4]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h23A3)) 
    \st_out[4]_INST_0_i_1 
       (.I0(\st_out[10]_INST_0_i_1_n_0 ),
        .I1(st_in[4]),
        .I2(\st_out[13]_INST_0_i_7_n_0 ),
        .I3(\st_out[10]_INST_0_i_2_n_0 ),
        .O(\st_out[4]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0202020000000200)) 
    \st_out[4]_INST_0_i_2 
       (.I0(stage[0]),
        .I1(stage[1]),
        .I2(stage[2]),
        .I3(st_in[4]),
        .I4(p_is_bot),
        .I5(ab_ptr[1]),
        .O(\st_out[4]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h7720)) 
    \st_out[4]_INST_0_i_3 
       (.I0(stage[1]),
        .I1(stage[2]),
        .I2(\st_out[13]_INST_0_i_8_n_0 ),
        .I3(stage[0]),
        .O(\st_out[4]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFFFF0440)) 
    \st_out[5]_INST_0 
       (.I0(\st_out[5]_INST_0_i_1_n_0 ),
        .I1(stage[0]),
        .I2(stage[2]),
        .I3(stage[1]),
        .I4(\st_out[5]_INST_0_i_2_n_0 ),
        .O(st_out[5]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h4CFF)) 
    \st_out[5]_INST_0_i_1 
       (.I0(\st_out[10]_INST_0_i_1_n_0 ),
        .I1(\st_out[13]_INST_0_i_7_n_0 ),
        .I2(\st_out[10]_INST_0_i_2_n_0 ),
        .I3(st_in[5]),
        .O(\st_out[5]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF00000B8F0F0F0F0)) 
    \st_out[5]_INST_0_i_2 
       (.I0(ab_ptr[2]),
        .I1(p_is_bot),
        .I2(st_in[5]),
        .I3(stage[2]),
        .I4(stage[1]),
        .I5(stage[0]),
        .O(\st_out[5]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h808F8F80)) 
    \st_out[6]_INST_0 
       (.I0(p_is_bot),
        .I1(ab_defect),
        .I2(\st_out[12]_INST_0_i_3_n_0 ),
        .I3(\st_out[6]_INST_0_i_1_n_0 ),
        .I4(st_in[6]),
        .O(st_out[6]));
  LUT6 #(
    .INIT(64'h7000700000007000)) 
    \st_out[6]_INST_0_i_1 
       (.I0(stage[1]),
        .I1(stage[2]),
        .I2(stage[0]),
        .I3(nb_push[1]),
        .I4(m_pass[0]),
        .I5(m_pass[1]),
        .O(\st_out[6]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFEEEAAAEA)) 
    \st_out[7]_INST_0 
       (.I0(\st_out[7]_INST_0_i_1_n_0 ),
        .I1(\st_out[12]_INST_0_i_3_n_0 ),
        .I2(st_in[7]),
        .I3(p_is_bot),
        .I4(ab_whole),
        .I5(\st_out[7]_INST_0_i_2_n_0 ),
        .O(st_out[7]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
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
    .INIT(64'hFFFFFFFFAA8A0080)) 
    \st_out[8]_INST_0 
       (.I0(\st_out[13]_INST_0_i_2_n_0 ),
        .I1(st_in[8]),
        .I2(m_pass[0]),
        .I3(m_pass[1]),
        .I4(\st_out[8]_INST_0_i_1_n_0 ),
        .I5(\st_out[8]_INST_0_i_2_n_0 ),
        .O(st_out[8]));
  LUT6 #(
    .INIT(64'h4CFCFCFC4C0C4C0C)) 
    \st_out[8]_INST_0_i_1 
       (.I0(\st_out[5]_INST_0_i_1_n_0 ),
        .I1(nb_active[2]),
        .I2(\st_out[3]_INST_0_i_1_n_0 ),
        .I3(\st_out[8]_INST_0_i_3_n_0 ),
        .I4(\st_out[8]_INST_0_i_4_n_0 ),
        .I5(nb_active[1]),
        .O(\st_out[8]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF0F0F8F00000080)) 
    \st_out[8]_INST_0_i_2 
       (.I0(p_is_bot),
        .I1(ab_active),
        .I2(stage[0]),
        .I3(stage[2]),
        .I4(stage[1]),
        .I5(st_in[8]),
        .O(\st_out[8]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h4F)) 
    \st_out[8]_INST_0_i_3 
       (.I0(\st_out[10]_INST_0_i_2_n_0 ),
        .I1(\st_out[13]_INST_0_i_7_n_0 ),
        .I2(st_in[4]),
        .O(\st_out[8]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \st_out[8]_INST_0_i_4 
       (.I0(\st_out[10]_INST_0_i_1_n_0 ),
        .I1(\st_out[13]_INST_0_i_7_n_0 ),
        .O(\st_out[8]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFF7000000)) 
    \st_out[9]_INST_0 
       (.I0(\st_out[10]_INST_0_i_1_n_0 ),
        .I1(\st_out[10]_INST_0_i_2_n_0 ),
        .I2(st_in[9]),
        .I3(\st_out[13]_INST_0_i_2_n_0 ),
        .I4(\st_out[9]_INST_0_i_1_n_0 ),
        .I5(\st_out[9]_INST_0_i_2_n_0 ),
        .O(st_out[9]));
  LUT6 #(
    .INIT(64'hFFFFF8FF88888888)) 
    \st_out[9]_INST_0_i_1 
       (.I0(st_in[9]),
        .I1(\st_out[13]_INST_0_i_6_n_0 ),
        .I2(nb_cid[5]),
        .I3(e_grown[1]),
        .I4(\st_out[9]_INST_0_i_3_n_0 ),
        .I5(\st_out[13]_INST_0_i_7_n_0 ),
        .O(\st_out[9]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF000000E0)) 
    \st_out[9]_INST_0_i_2 
       (.I0(st_in[9]),
        .I1(\st_out[13]_INST_0_i_8_n_0 ),
        .I2(stage[1]),
        .I3(stage[2]),
        .I4(stage[0]),
        .I5(\st_out[9]_INST_0_i_4_n_0 ),
        .O(\st_out[9]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h4F044F044F04FF0F)) 
    \st_out[9]_INST_0_i_3 
       (.I0(st_in[12]),
        .I1(nb_cid[8]),
        .I2(st_in[13]),
        .I3(nb_cid[9]),
        .I4(\st_out[10]_INST_0_i_6_n_0 ),
        .I5(\st_out[10]_INST_0_i_5_n_0 ),
        .O(\st_out[9]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF00000B8F000F0F0)) 
    \st_out[9]_INST_0_i_4 
       (.I0(ab_cid[0]),
        .I1(p_is_bot),
        .I2(st_in[9]),
        .I3(stage[2]),
        .I4(stage[1]),
        .I5(stage[0]),
        .O(\st_out[9]_INST_0_i_4_n_0 ));
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
  wire [14:0]st_in;
  wire [14:0]st_out;
  wire \st_out[0]_INST_0_i_10_n_0 ;
  wire \st_out[0]_INST_0_i_11_n_0 ;
  wire \st_out[0]_INST_0_i_1_n_0 ;
  wire \st_out[0]_INST_0_i_2_n_0 ;
  wire \st_out[0]_INST_0_i_3_n_0 ;
  wire \st_out[0]_INST_0_i_4_n_0 ;
  wire \st_out[0]_INST_0_i_5_n_0 ;
  wire \st_out[0]_INST_0_i_6_n_0 ;
  wire \st_out[0]_INST_0_i_7_n_0 ;
  wire \st_out[0]_INST_0_i_8_n_0 ;
  wire \st_out[0]_INST_0_i_9_n_0 ;
  wire \st_out[10]_INST_0_i_10_n_0 ;
  wire \st_out[10]_INST_0_i_1_n_0 ;
  wire \st_out[10]_INST_0_i_2_n_0 ;
  wire \st_out[10]_INST_0_i_3_n_0 ;
  wire \st_out[10]_INST_0_i_4_n_0 ;
  wire \st_out[10]_INST_0_i_5_n_0 ;
  wire \st_out[10]_INST_0_i_6_n_0 ;
  wire \st_out[10]_INST_0_i_7_n_0 ;
  wire \st_out[10]_INST_0_i_8_n_0 ;
  wire \st_out[10]_INST_0_i_9_n_0 ;
  wire \st_out[11]_INST_0_i_1_n_0 ;
  wire \st_out[11]_INST_0_i_2_n_0 ;
  wire \st_out[11]_INST_0_i_3_n_0 ;
  wire \st_out[11]_INST_0_i_4_n_0 ;
  wire \st_out[11]_INST_0_i_5_n_0 ;
  wire \st_out[11]_INST_0_i_6_n_0 ;
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
  wire \st_out[12]_INST_0_i_24_n_0 ;
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
  wire \st_out[13]_INST_0_i_19_n_0 ;
  wire \st_out[13]_INST_0_i_1_n_0 ;
  wire \st_out[13]_INST_0_i_20_n_0 ;
  wire \st_out[13]_INST_0_i_21_n_0 ;
  wire \st_out[13]_INST_0_i_22_n_0 ;
  wire \st_out[13]_INST_0_i_23_n_0 ;
  wire \st_out[13]_INST_0_i_24_n_0 ;
  wire \st_out[13]_INST_0_i_25_n_0 ;
  wire \st_out[13]_INST_0_i_26_n_0 ;
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
  wire \st_out[1]_INST_0_i_1_n_0 ;
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
  wire \st_out[4]_INST_0_i_1_n_0 ;
  wire \st_out[4]_INST_0_i_2_n_0 ;
  wire \st_out[4]_INST_0_i_3_n_0 ;
  wire \st_out[4]_INST_0_i_4_n_0 ;
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
    .INIT(64'hFFFFFFFF44444004)) 
    \st_out[0]_INST_0 
       (.I0(\st_out[0]_INST_0_i_1_n_0 ),
        .I1(\st_out[14]_INST_0_i_2_n_0 ),
        .I2(\st_out[8]_INST_0_i_1_n_0 ),
        .I3(st_in[8]),
        .I4(\st_out[0]_INST_0_i_2_n_0 ),
        .I5(\st_out[0]_INST_0_i_3_n_0 ),
        .O(st_out[0]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \st_out[0]_INST_0_i_1 
       (.I0(m_pass[0]),
        .I1(m_pass[1]),
        .O(\st_out[0]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'hDFFFFFFF)) 
    \st_out[0]_INST_0_i_10 
       (.I0(stage[1]),
        .I1(stage[2]),
        .I2(stage[0]),
        .I3(nb_grown[0]),
        .I4(e_grown[0]),
        .O(\st_out[0]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hA2AAAAAAAAAAAAAA)) 
    \st_out[0]_INST_0_i_11 
       (.I0(\st_out[13]_INST_0_i_19_n_0 ),
        .I1(stage[1]),
        .I2(stage[2]),
        .I3(stage[0]),
        .I4(nb_grown[1]),
        .I5(\st_out[2]_INST_0_i_10_n_0 ),
        .O(\st_out[0]_INST_0_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h5D)) 
    \st_out[0]_INST_0_i_2 
       (.I0(\st_out[6]_INST_0_i_3_n_0 ),
        .I1(st_in[6]),
        .I2(\st_out[8]_INST_0_i_3_n_0 ),
        .O(\st_out[0]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAA8AAA8AAA8A8A8A)) 
    \st_out[0]_INST_0_i_3 
       (.I0(\st_out[0]_INST_0_i_4_n_0 ),
        .I1(\st_out[1]_INST_0_i_1_n_0 ),
        .I2(\st_out[0]_INST_0_i_5_n_0 ),
        .I3(\st_out[13]_INST_0_i_8_n_0 ),
        .I4(\st_out[0]_INST_0_i_6_n_0 ),
        .I5(\st_out[0]_INST_0_i_7_n_0 ),
        .O(\st_out[0]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h60006060)) 
    \st_out[0]_INST_0_i_4 
       (.I0(stage[1]),
        .I1(stage[2]),
        .I2(stage[0]),
        .I3(m_pass[0]),
        .I4(m_pass[1]),
        .O(\st_out[0]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h1111101110101010)) 
    \st_out[0]_INST_0_i_5 
       (.I0(\st_out[5]_INST_0_i_3_n_0 ),
        .I1(\st_out[0]_INST_0_i_8_n_0 ),
        .I2(\st_out[13]_INST_0_i_18_n_0 ),
        .I3(\st_out[2]_INST_0_i_8_n_0 ),
        .I4(\st_out[0]_INST_0_i_9_n_0 ),
        .I5(\st_out[2]_INST_0_i_9_n_0 ),
        .O(\st_out[0]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h2AFFFFFF00D50000)) 
    \st_out[0]_INST_0_i_6 
       (.I0(nb_cid[17]),
        .I1(nb_cid[16]),
        .I2(nb_cid[15]),
        .I3(st_in[1]),
        .I4(\st_out[2]_INST_0_i_7_n_0 ),
        .I5(\st_out[14]_INST_0_i_5_n_0 ),
        .O(\st_out[0]_INST_0_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'h00800000)) 
    \st_out[0]_INST_0_i_7 
       (.I0(\st_out[2]_INST_0_i_5_n_0 ),
        .I1(nb_grown[3]),
        .I2(stage[0]),
        .I3(stage[2]),
        .I4(stage[1]),
        .O(\st_out[0]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF1FFFFFFF1F1)) 
    \st_out[0]_INST_0_i_8 
       (.I0(\st_out[0]_INST_0_i_10_n_0 ),
        .I1(st_in[2]),
        .I2(\st_out[5]_INST_0_i_4_n_0 ),
        .I3(\st_out[0]_INST_0_i_11_n_0 ),
        .I4(\st_out[13]_INST_0_i_20_n_0 ),
        .I5(e_grown[1]),
        .O(\st_out[0]_INST_0_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'hDFFF)) 
    \st_out[0]_INST_0_i_9 
       (.I0(stage[1]),
        .I1(stage[2]),
        .I2(stage[0]),
        .I3(nb_grown[2]),
        .O(\st_out[0]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFAAA20000)) 
    \st_out[10]_INST_0 
       (.I0(\st_out[14]_INST_0_i_2_n_0 ),
        .I1(m_pass[1]),
        .I2(m_pass[0]),
        .I3(st_in[10]),
        .I4(\st_out[10]_INST_0_i_1_n_0 ),
        .I5(\st_out[10]_INST_0_i_2_n_0 ),
        .O(st_out[10]));
  LUT6 #(
    .INIT(64'hFF0FFFFFFF0F4F4F)) 
    \st_out[10]_INST_0_i_1 
       (.I0(\st_out[10]_INST_0_i_3_n_0 ),
        .I1(\st_out[10]_INST_0_i_4_n_0 ),
        .I2(\st_out[2]_INST_0_i_2_n_0 ),
        .I3(nb_cid[16]),
        .I4(\st_out[10]_INST_0_i_5_n_0 ),
        .I5(\st_out[10]_INST_0_i_6_n_0 ),
        .O(\st_out[10]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBB8BB888)) 
    \st_out[10]_INST_0_i_10 
       (.I0(nb_cid[6]),
        .I1(\st_out[14]_INST_0_i_6_n_0 ),
        .I2(\st_out[5]_INST_0_i_4_n_0 ),
        .I3(nb_cid[1]),
        .I4(st_in[10]),
        .O(\st_out[10]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hF232F2FF32323232)) 
    \st_out[10]_INST_0_i_2 
       (.I0(\st_out[12]_INST_0_i_5_n_0 ),
        .I1(\st_out[12]_INST_0_i_4_n_0 ),
        .I2(st_in[10]),
        .I3(nb_valid[2]),
        .I4(\st_out[10]_INST_0_i_7_n_0 ),
        .I5(\st_out[12]_INST_0_i_2_n_0 ),
        .O(\st_out[10]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \st_out[10]_INST_0_i_3 
       (.I0(st_in[10]),
        .I1(\st_out[13]_INST_0_i_5_n_0 ),
        .O(\st_out[10]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \st_out[10]_INST_0_i_4 
       (.I0(\st_out[5]_INST_0_i_4_n_0 ),
        .I1(\st_out[14]_INST_0_i_7_n_0 ),
        .I2(\st_out[14]_INST_0_i_6_n_0 ),
        .O(\st_out[10]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000FF5100000000)) 
    \st_out[10]_INST_0_i_5 
       (.I0(\st_out[13]_INST_0_i_16_n_0 ),
        .I1(\st_out[10]_INST_0_i_8_n_0 ),
        .I2(\st_out[10]_INST_0_i_9_n_0 ),
        .I3(\st_out[13]_INST_0_i_14_n_0 ),
        .I4(\st_out[13]_INST_0_i_13_n_0 ),
        .I5(\st_out[13]_INST_0_i_8_n_0 ),
        .O(\st_out[10]_INST_0_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hE2E2E200)) 
    \st_out[10]_INST_0_i_6 
       (.I0(\st_out[10]_INST_0_i_10_n_0 ),
        .I1(\st_out[14]_INST_0_i_7_n_0 ),
        .I2(nb_cid[11]),
        .I3(\st_out[5]_INST_0_i_3_n_0 ),
        .I4(\st_out[5]_INST_0_i_4_n_0 ),
        .O(\st_out[10]_INST_0_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'h4CCCCCCC)) 
    \st_out[10]_INST_0_i_7 
       (.I0(ab_cid[4]),
        .I1(ab_cid[1]),
        .I2(ab_cid[2]),
        .I3(ab_cid[3]),
        .I4(ab_cid[0]),
        .O(\st_out[10]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFF74FFFFFF74FF74)) 
    \st_out[10]_INST_0_i_8 
       (.I0(nb_cid[10]),
        .I1(\st_out[14]_INST_0_i_7_n_0 ),
        .I2(\st_out[9]_INST_0_i_5_n_0 ),
        .I3(nb_cid[15]),
        .I4(\st_out[13]_INST_0_i_22_n_0 ),
        .I5(nb_cid[16]),
        .O(\st_out[10]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h1F111F1F1F111111)) 
    \st_out[10]_INST_0_i_9 
       (.I0(\st_out[13]_INST_0_i_23_n_0 ),
        .I1(nb_cid[17]),
        .I2(nb_cid[16]),
        .I3(nb_cid[11]),
        .I4(\st_out[14]_INST_0_i_7_n_0 ),
        .I5(\st_out[10]_INST_0_i_10_n_0 ),
        .O(\st_out[10]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hF4FFF4FFF4FFF4F4)) 
    \st_out[11]_INST_0 
       (.I0(\st_out[11]_INST_0_i_1_n_0 ),
        .I1(\st_out[14]_INST_0_i_2_n_0 ),
        .I2(\st_out[11]_INST_0_i_2_n_0 ),
        .I3(\st_out[12]_INST_0_i_4_n_0 ),
        .I4(\st_out[12]_INST_0_i_5_n_0 ),
        .I5(st_in[11]),
        .O(st_out[11]));
  LUT6 #(
    .INIT(64'h0000000004FF37FF)) 
    \st_out[11]_INST_0_i_1 
       (.I0(\st_out[13]_INST_0_i_5_n_0 ),
        .I1(\st_out[13]_INST_0_i_6_n_0 ),
        .I2(st_in[11]),
        .I3(\st_out[2]_INST_0_i_2_n_0 ),
        .I4(\st_out[11]_INST_0_i_3_n_0 ),
        .I5(\st_out[11]_INST_0_i_4_n_0 ),
        .O(\st_out[11]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAA280000AA28)) 
    \st_out[11]_INST_0_i_2 
       (.I0(\st_out[12]_INST_0_i_2_n_0 ),
        .I1(ab_cid[1]),
        .I2(ab_cid[2]),
        .I3(\st_out[12]_INST_0_i_7_n_0 ),
        .I4(nb_valid[2]),
        .I5(st_in[11]),
        .O(\st_out[11]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hDF808080DF80DFDF)) 
    \st_out[11]_INST_0_i_3 
       (.I0(\st_out[14]_INST_0_i_5_n_0 ),
        .I1(nb_cid[17]),
        .I2(\st_out[11]_INST_0_i_5_n_0 ),
        .I3(nb_cid[12]),
        .I4(\st_out[14]_INST_0_i_7_n_0 ),
        .I5(\st_out[11]_INST_0_i_6_n_0 ),
        .O(\st_out[11]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'hEF202020)) 
    \st_out[11]_INST_0_i_4 
       (.I0(st_in[11]),
        .I1(m_pass[0]),
        .I2(m_pass[1]),
        .I3(\st_out[1]_INST_0_i_1_n_0 ),
        .I4(nb_valid[2]),
        .O(\st_out[11]_INST_0_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h2AAAAAAA)) 
    \st_out[11]_INST_0_i_5 
       (.I0(\st_out[13]_INST_0_i_8_n_0 ),
        .I1(nb_cid[17]),
        .I2(nb_cid[19]),
        .I3(nb_cid[18]),
        .I4(nb_cid[16]),
        .O(\st_out[11]_INST_0_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'h44744777)) 
    \st_out[11]_INST_0_i_6 
       (.I0(nb_cid[7]),
        .I1(\st_out[14]_INST_0_i_6_n_0 ),
        .I2(\st_out[5]_INST_0_i_4_n_0 ),
        .I3(nb_cid[2]),
        .I4(st_in[11]),
        .O(\st_out[11]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAEFFAEFFAEFFAEAE)) 
    \st_out[12]_INST_0 
       (.I0(\st_out[12]_INST_0_i_1_n_0 ),
        .I1(\st_out[12]_INST_0_i_2_n_0 ),
        .I2(\st_out[12]_INST_0_i_3_n_0 ),
        .I3(\st_out[12]_INST_0_i_4_n_0 ),
        .I4(\st_out[12]_INST_0_i_5_n_0 ),
        .I5(st_in[12]),
        .O(st_out[12]));
  LUT6 #(
    .INIT(64'hFF3A003A00000000)) 
    \st_out[12]_INST_0_i_1 
       (.I0(\st_out[12]_INST_0_i_6_n_0 ),
        .I1(nb_valid[2]),
        .I2(\st_out[1]_INST_0_i_1_n_0 ),
        .I3(\st_out[13]_INST_0_i_2_n_0 ),
        .I4(st_in[12]),
        .I5(\st_out[14]_INST_0_i_2_n_0 ),
        .O(\st_out[12]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \st_out[12]_INST_0_i_10 
       (.I0(st_in[12]),
        .I1(\st_out[13]_INST_0_i_5_n_0 ),
        .O(\st_out[12]_INST_0_i_10_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \st_out[12]_INST_0_i_11 
       (.I0(nb_cid[13]),
        .I1(\st_out[13]_INST_0_i_18_n_0 ),
        .O(\st_out[12]_INST_0_i_11_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF8000)) 
    \st_out[12]_INST_0_i_12 
       (.I0(nb_cid[12]),
        .I1(nb_cid[14]),
        .I2(nb_cid[10]),
        .I3(nb_cid[11]),
        .I4(\st_out[13]_INST_0_i_18_n_0 ),
        .O(\st_out[12]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF0B02)) 
    \st_out[12]_INST_0_i_13 
       (.I0(\st_out[10]_INST_0_i_10_n_0 ),
        .I1(nb_cid[11]),
        .I2(\st_out[12]_INST_0_i_17_n_0 ),
        .I3(\st_out[12]_INST_0_i_18_n_0 ),
        .I4(\st_out[12]_INST_0_i_19_n_0 ),
        .I5(\st_out[12]_INST_0_i_20_n_0 ),
        .O(\st_out[12]_INST_0_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \st_out[12]_INST_0_i_14 
       (.I0(nb_cid[14]),
        .I1(\st_out[13]_INST_0_i_17_n_0 ),
        .I2(nb_cid[13]),
        .I3(\st_out[12]_INST_0_i_16_n_0 ),
        .O(\st_out[12]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h5454005400000000)) 
    \st_out[12]_INST_0_i_15 
       (.I0(nb_cid[14]),
        .I1(nb_cid[9]),
        .I2(\st_out[13]_INST_0_i_25_n_0 ),
        .I3(e_grown[0]),
        .I4(nb_cid[4]),
        .I5(st_in[13]),
        .O(\st_out[12]_INST_0_i_15_n_0 ));
  LUT5 #(
    .INIT(32'h0404FFF7)) 
    \st_out[12]_INST_0_i_16 
       (.I0(nb_cid[8]),
        .I1(\st_out[12]_INST_0_i_21_n_0 ),
        .I2(\st_out[13]_INST_0_i_25_n_0 ),
        .I3(\st_out[12]_INST_0_i_22_n_0 ),
        .I4(\st_out[12]_INST_0_i_23_n_0 ),
        .O(\st_out[12]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h0000082AAAAA082A)) 
    \st_out[12]_INST_0_i_17 
       (.I0(nb_cid[12]),
        .I1(\st_out[5]_INST_0_i_4_n_0 ),
        .I2(nb_cid[2]),
        .I3(st_in[11]),
        .I4(\st_out[14]_INST_0_i_6_n_0 ),
        .I5(nb_cid[7]),
        .O(\st_out[12]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h5555514000005140)) 
    \st_out[12]_INST_0_i_18 
       (.I0(nb_cid[10]),
        .I1(\st_out[5]_INST_0_i_4_n_0 ),
        .I2(nb_cid[0]),
        .I3(st_in[9]),
        .I4(\st_out[14]_INST_0_i_6_n_0 ),
        .I5(nb_cid[5]),
        .O(\st_out[12]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h5555504400005044)) 
    \st_out[12]_INST_0_i_19 
       (.I0(nb_cid[12]),
        .I1(st_in[11]),
        .I2(nb_cid[2]),
        .I3(\st_out[5]_INST_0_i_4_n_0 ),
        .I4(\st_out[14]_INST_0_i_6_n_0 ),
        .I5(nb_cid[7]),
        .O(\st_out[12]_INST_0_i_19_n_0 ));
  LUT3 #(
    .INIT(8'h10)) 
    \st_out[12]_INST_0_i_2 
       (.I0(stage[2]),
        .I1(stage[1]),
        .I2(stage[0]),
        .O(\st_out[12]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h4445444444004444)) 
    \st_out[12]_INST_0_i_20 
       (.I0(nb_cid[13]),
        .I1(\st_out[12]_INST_0_i_23_n_0 ),
        .I2(\st_out[12]_INST_0_i_22_n_0 ),
        .I3(\st_out[13]_INST_0_i_25_n_0 ),
        .I4(\st_out[12]_INST_0_i_21_n_0 ),
        .I5(nb_cid[8]),
        .O(\st_out[12]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h4D444D444D44DD4D)) 
    \st_out[12]_INST_0_i_21 
       (.I0(nb_cid[9]),
        .I1(\st_out[12]_INST_0_i_24_n_0 ),
        .I2(nb_cid[8]),
        .I3(\st_out[12]_INST_0_i_23_n_0 ),
        .I4(\st_out[14]_INST_0_i_11_n_0 ),
        .I5(\st_out[14]_INST_0_i_10_n_0 ),
        .O(\st_out[12]_INST_0_i_21_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \st_out[12]_INST_0_i_22 
       (.I0(nb_cid[6]),
        .I1(nb_cid[5]),
        .I2(nb_cid[9]),
        .I3(nb_cid[7]),
        .O(\st_out[12]_INST_0_i_22_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'hE0CC)) 
    \st_out[12]_INST_0_i_23 
       (.I0(\st_out[14]_INST_0_i_19_n_0 ),
        .I1(st_in[12]),
        .I2(nb_cid[3]),
        .I3(\st_out[5]_INST_0_i_4_n_0 ),
        .O(\st_out[12]_INST_0_i_23_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hD0)) 
    \st_out[12]_INST_0_i_24 
       (.I0(e_grown[0]),
        .I1(nb_cid[4]),
        .I2(st_in[13]),
        .O(\st_out[12]_INST_0_i_24_n_0 ));
  LUT6 #(
    .INIT(64'h4744444444474747)) 
    \st_out[12]_INST_0_i_3 
       (.I0(st_in[12]),
        .I1(nb_valid[2]),
        .I2(\st_out[12]_INST_0_i_7_n_0 ),
        .I3(ab_cid[1]),
        .I4(ab_cid[2]),
        .I5(ab_cid[3]),
        .O(\st_out[12]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \st_out[12]_INST_0_i_4 
       (.I0(stage[0]),
        .I1(stage[2]),
        .I2(stage[1]),
        .O(\st_out[12]_INST_0_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'h20000000)) 
    \st_out[12]_INST_0_i_5 
       (.I0(\st_out[12]_INST_0_i_8_n_0 ),
        .I1(st_in[5]),
        .I2(st_in[4]),
        .I3(nb_valid[3]),
        .I4(st_in[3]),
        .O(\st_out[12]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAAAA0F330F330F33)) 
    \st_out[12]_INST_0_i_6 
       (.I0(nb_cid[18]),
        .I1(\st_out[12]_INST_0_i_9_n_0 ),
        .I2(\st_out[12]_INST_0_i_10_n_0 ),
        .I3(\st_out[10]_INST_0_i_4_n_0 ),
        .I4(\st_out[13]_INST_0_i_8_n_0 ),
        .I5(\st_out[14]_INST_0_i_5_n_0 ),
        .O(\st_out[12]_INST_0_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \st_out[12]_INST_0_i_7 
       (.I0(ab_cid[0]),
        .I1(ab_cid[3]),
        .I2(ab_cid[2]),
        .I3(ab_cid[1]),
        .I4(ab_cid[4]),
        .O(\st_out[12]_INST_0_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \st_out[12]_INST_0_i_8 
       (.I0(stage[1]),
        .I1(stage[2]),
        .I2(stage[0]),
        .O(\st_out[12]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hDDDDFFDF55550050)) 
    \st_out[12]_INST_0_i_9 
       (.I0(\st_out[12]_INST_0_i_11_n_0 ),
        .I1(\st_out[12]_INST_0_i_12_n_0 ),
        .I2(\st_out[12]_INST_0_i_13_n_0 ),
        .I3(\st_out[12]_INST_0_i_14_n_0 ),
        .I4(\st_out[12]_INST_0_i_15_n_0 ),
        .I5(\st_out[12]_INST_0_i_16_n_0 ),
        .O(\st_out[12]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFE0E0C000)) 
    \st_out[13]_INST_0 
       (.I0(\st_out[13]_INST_0_i_1_n_0 ),
        .I1(st_in[13]),
        .I2(\st_out[14]_INST_0_i_2_n_0 ),
        .I3(\st_out[13]_INST_0_i_2_n_0 ),
        .I4(\st_out[13]_INST_0_i_3_n_0 ),
        .I5(\st_out[13]_INST_0_i_4_n_0 ),
        .O(st_out[13]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \st_out[13]_INST_0_i_1 
       (.I0(\st_out[13]_INST_0_i_5_n_0 ),
        .I1(\st_out[13]_INST_0_i_6_n_0 ),
        .O(\st_out[13]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0D000D0D0D0D0D0D)) 
    \st_out[13]_INST_0_i_10 
       (.I0(e_grown[1]),
        .I1(\st_out[13]_INST_0_i_19_n_0 ),
        .I2(\st_out[13]_INST_0_i_20_n_0 ),
        .I3(\st_out[2]_INST_0_i_9_n_0 ),
        .I4(e_grown[2]),
        .I5(nb_valid[2]),
        .O(\st_out[13]_INST_0_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \st_out[13]_INST_0_i_11 
       (.I0(nb_cid[15]),
        .I1(nb_cid[16]),
        .O(\st_out[13]_INST_0_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \st_out[13]_INST_0_i_12 
       (.I0(nb_cid[17]),
        .I1(nb_cid[19]),
        .I2(nb_cid[18]),
        .O(\st_out[13]_INST_0_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \st_out[13]_INST_0_i_13 
       (.I0(nb_cid[19]),
        .I1(\st_out[13]_INST_0_i_7_n_0 ),
        .O(\st_out[13]_INST_0_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'h444F)) 
    \st_out[13]_INST_0_i_14 
       (.I0(nb_cid[19]),
        .I1(\st_out[13]_INST_0_i_7_n_0 ),
        .I2(\st_out[12]_INST_0_i_9_n_0 ),
        .I3(nb_cid[18]),
        .O(\st_out[13]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hEF0EEF0EEF0E0000)) 
    \st_out[13]_INST_0_i_15 
       (.I0(nb_cid[15]),
        .I1(\st_out[13]_INST_0_i_21_n_0 ),
        .I2(\st_out[13]_INST_0_i_22_n_0 ),
        .I3(nb_cid[16]),
        .I4(nb_cid[17]),
        .I5(\st_out[13]_INST_0_i_23_n_0 ),
        .O(\st_out[13]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h8F888FFF88888888)) 
    \st_out[13]_INST_0_i_16 
       (.I0(nb_cid[18]),
        .I1(\st_out[12]_INST_0_i_9_n_0 ),
        .I2(nb_cid[12]),
        .I3(\st_out[14]_INST_0_i_7_n_0 ),
        .I4(\st_out[13]_INST_0_i_24_n_0 ),
        .I5(nb_cid[17]),
        .O(\st_out[13]_INST_0_i_16_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'h757575FF)) 
    \st_out[13]_INST_0_i_17 
       (.I0(st_in[13]),
        .I1(nb_cid[4]),
        .I2(e_grown[0]),
        .I3(\st_out[13]_INST_0_i_25_n_0 ),
        .I4(nb_cid[9]),
        .O(\st_out[13]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h22F2FFFFFFFFFFFF)) 
    \st_out[13]_INST_0_i_18 
       (.I0(e_grown[1]),
        .I1(\st_out[13]_INST_0_i_19_n_0 ),
        .I2(e_grown[0]),
        .I3(\st_out[13]_INST_0_i_26_n_0 ),
        .I4(nb_valid[2]),
        .I5(e_grown[2]),
        .O(\st_out[13]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFFFFFFFFFF)) 
    \st_out[13]_INST_0_i_19 
       (.I0(st_in[1]),
        .I1(nb_cid[6]),
        .I2(nb_cid[5]),
        .I3(nb_cid[9]),
        .I4(nb_cid[7]),
        .I5(nb_cid[8]),
        .O(\st_out[13]_INST_0_i_19_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \st_out[13]_INST_0_i_2 
       (.I0(m_pass[1]),
        .I1(m_pass[0]),
        .O(\st_out[13]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \st_out[13]_INST_0_i_20 
       (.I0(e_grown[0]),
        .I1(\st_out[13]_INST_0_i_26_n_0 ),
        .O(\st_out[13]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF55F700005504)) 
    \st_out[13]_INST_0_i_21 
       (.I0(nb_cid[10]),
        .I1(\st_out[12]_INST_0_i_13_n_0 ),
        .I2(\st_out[12]_INST_0_i_14_n_0 ),
        .I3(\st_out[12]_INST_0_i_15_n_0 ),
        .I4(\st_out[14]_INST_0_i_18_n_0 ),
        .I5(\st_out[9]_INST_0_i_5_n_0 ),
        .O(\st_out[13]_INST_0_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFAAFB0000AA08)) 
    \st_out[13]_INST_0_i_22 
       (.I0(nb_cid[11]),
        .I1(\st_out[12]_INST_0_i_13_n_0 ),
        .I2(\st_out[12]_INST_0_i_14_n_0 ),
        .I3(\st_out[12]_INST_0_i_15_n_0 ),
        .I4(\st_out[14]_INST_0_i_18_n_0 ),
        .I5(\st_out[10]_INST_0_i_10_n_0 ),
        .O(\st_out[13]_INST_0_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF55F700005504)) 
    \st_out[13]_INST_0_i_23 
       (.I0(nb_cid[12]),
        .I1(\st_out[12]_INST_0_i_13_n_0 ),
        .I2(\st_out[12]_INST_0_i_14_n_0 ),
        .I3(\st_out[12]_INST_0_i_15_n_0 ),
        .I4(\st_out[14]_INST_0_i_18_n_0 ),
        .I5(\st_out[11]_INST_0_i_6_n_0 ),
        .O(\st_out[13]_INST_0_i_23_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'hBB88B8B8)) 
    \st_out[13]_INST_0_i_24 
       (.I0(nb_cid[7]),
        .I1(\st_out[14]_INST_0_i_6_n_0 ),
        .I2(st_in[11]),
        .I3(nb_cid[2]),
        .I4(\st_out[5]_INST_0_i_4_n_0 ),
        .O(\st_out[13]_INST_0_i_24_n_0 ));
  LUT3 #(
    .INIT(8'h4F)) 
    \st_out[13]_INST_0_i_25 
       (.I0(\st_out[13]_INST_0_i_26_n_0 ),
        .I1(e_grown[0]),
        .I2(e_grown[1]),
        .O(\st_out[13]_INST_0_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFFFFFFFFFF)) 
    \st_out[13]_INST_0_i_26 
       (.I0(st_in[1]),
        .I1(nb_cid[2]),
        .I2(nb_cid[1]),
        .I3(nb_cid[0]),
        .I4(nb_cid[4]),
        .I5(nb_cid[3]),
        .O(\st_out[13]_INST_0_i_26_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'hAAAA8088)) 
    \st_out[13]_INST_0_i_3 
       (.I0(\st_out[2]_INST_0_i_2_n_0 ),
        .I1(\st_out[13]_INST_0_i_7_n_0 ),
        .I2(nb_cid[19]),
        .I3(\st_out[13]_INST_0_i_8_n_0 ),
        .I4(\st_out[13]_INST_0_i_6_n_0 ),
        .O(\st_out[13]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hB010B010FFFFFF10)) 
    \st_out[13]_INST_0_i_4 
       (.I0(nb_valid[2]),
        .I1(\st_out[13]_INST_0_i_9_n_0 ),
        .I2(\st_out[12]_INST_0_i_2_n_0 ),
        .I3(st_in[13]),
        .I4(\st_out[12]_INST_0_i_5_n_0 ),
        .I5(\st_out[12]_INST_0_i_4_n_0 ),
        .O(\st_out[13]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h555D555555555555)) 
    \st_out[13]_INST_0_i_5 
       (.I0(\st_out[13]_INST_0_i_10_n_0 ),
        .I1(\st_out[13]_INST_0_i_11_n_0 ),
        .I2(\st_out[13]_INST_0_i_12_n_0 ),
        .I3(st_in[1]),
        .I4(nb_valid[3]),
        .I5(e_grown[3]),
        .O(\st_out[13]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hA2AAA2AAA2AAA2A2)) 
    \st_out[13]_INST_0_i_6 
       (.I0(\st_out[10]_INST_0_i_4_n_0 ),
        .I1(\st_out[13]_INST_0_i_8_n_0 ),
        .I2(\st_out[13]_INST_0_i_13_n_0 ),
        .I3(\st_out[13]_INST_0_i_14_n_0 ),
        .I4(\st_out[13]_INST_0_i_15_n_0 ),
        .I5(\st_out[13]_INST_0_i_16_n_0 ),
        .O(\st_out[13]_INST_0_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'h54)) 
    \st_out[13]_INST_0_i_7 
       (.I0(\st_out[13]_INST_0_i_17_n_0 ),
        .I1(\st_out[13]_INST_0_i_18_n_0 ),
        .I2(nb_cid[14]),
        .O(\st_out[13]_INST_0_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \st_out[13]_INST_0_i_8 
       (.I0(\st_out[13]_INST_0_i_10_n_0 ),
        .I1(nb_valid[3]),
        .I2(e_grown[3]),
        .O(\st_out[13]_INST_0_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'h40003FFF)) 
    \st_out[13]_INST_0_i_9 
       (.I0(ab_cid[0]),
        .I1(ab_cid[3]),
        .I2(ab_cid[2]),
        .I3(ab_cid[1]),
        .I4(ab_cid[4]),
        .O(\st_out[13]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h8FFF8F8F80008080)) 
    \st_out[14]_INST_0 
       (.I0(\st_out[14]_INST_0_i_1_n_0 ),
        .I1(st_in[6]),
        .I2(\st_out[14]_INST_0_i_2_n_0 ),
        .I3(m_pass[0]),
        .I4(m_pass[1]),
        .I5(st_in[14]),
        .O(st_out[14]));
  LUT6 #(
    .INIT(64'hFCAAFCFFFFFFFFFF)) 
    \st_out[14]_INST_0_i_1 
       (.I0(\st_out[14]_INST_0_i_3_n_0 ),
        .I1(st_in[4]),
        .I2(st_in[3]),
        .I3(\st_out[1]_INST_0_i_1_n_0 ),
        .I4(\st_out[14]_INST_0_i_4_n_0 ),
        .I5(\st_out[5]_INST_0_i_1_n_0 ),
        .O(\st_out[14]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h082A)) 
    \st_out[14]_INST_0_i_10 
       (.I0(nb_cid[7]),
        .I1(\st_out[5]_INST_0_i_4_n_0 ),
        .I2(nb_cid[2]),
        .I3(st_in[11]),
        .O(\st_out[14]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFEE0FEE00000FEE0)) 
    \st_out[14]_INST_0_i_11 
       (.I0(nb_cid[5]),
        .I1(\st_out[14]_INST_0_i_20_n_0 ),
        .I2(nb_cid[6]),
        .I3(\st_out[14]_INST_0_i_21_n_0 ),
        .I4(\st_out[14]_INST_0_i_22_n_0 ),
        .I5(nb_cid[7]),
        .O(\st_out[14]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hBBBAAAAABBAABBAA)) 
    \st_out[14]_INST_0_i_12 
       (.I0(\st_out[14]_INST_0_i_23_n_0 ),
        .I1(nb_cid[8]),
        .I2(\st_out[14]_INST_0_i_19_n_0 ),
        .I3(st_in[12]),
        .I4(nb_cid[3]),
        .I5(\st_out[5]_INST_0_i_4_n_0 ),
        .O(\st_out[14]_INST_0_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'h8AFF)) 
    \st_out[14]_INST_0_i_13 
       (.I0(st_in[13]),
        .I1(nb_cid[4]),
        .I2(e_grown[0]),
        .I3(nb_cid[9]),
        .O(\st_out[14]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF80000000)) 
    \st_out[14]_INST_0_i_14 
       (.I0(nb_cid[6]),
        .I1(nb_cid[5]),
        .I2(nb_cid[9]),
        .I3(nb_cid[7]),
        .I4(nb_cid[8]),
        .I5(\st_out[13]_INST_0_i_25_n_0 ),
        .O(\st_out[14]_INST_0_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'h111F)) 
    \st_out[14]_INST_0_i_15 
       (.I0(\st_out[12]_INST_0_i_16_n_0 ),
        .I1(nb_cid[13]),
        .I2(\st_out[11]_INST_0_i_6_n_0 ),
        .I3(nb_cid[12]),
        .O(\st_out[14]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h1101FF0F00001101)) 
    \st_out[14]_INST_0_i_16 
       (.I0(nb_cid[10]),
        .I1(\st_out[9]_INST_0_i_5_n_0 ),
        .I2(nb_cid[12]),
        .I3(\st_out[13]_INST_0_i_24_n_0 ),
        .I4(nb_cid[11]),
        .I5(\st_out[10]_INST_0_i_10_n_0 ),
        .O(\st_out[14]_INST_0_i_16_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \st_out[14]_INST_0_i_17 
       (.I0(\st_out[12]_INST_0_i_16_n_0 ),
        .I1(nb_cid[13]),
        .O(\st_out[14]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF80000000)) 
    \st_out[14]_INST_0_i_18 
       (.I0(nb_cid[13]),
        .I1(nb_cid[11]),
        .I2(nb_cid[10]),
        .I3(nb_cid[14]),
        .I4(nb_cid[12]),
        .I5(\st_out[13]_INST_0_i_18_n_0 ),
        .O(\st_out[14]_INST_0_i_18_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \st_out[14]_INST_0_i_19 
       (.I0(nb_cid[2]),
        .I1(nb_cid[1]),
        .I2(nb_cid[0]),
        .I3(nb_cid[4]),
        .O(\st_out[14]_INST_0_i_19_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \st_out[14]_INST_0_i_2 
       (.I0(stage[0]),
        .I1(stage[2]),
        .I2(stage[1]),
        .O(\st_out[14]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h3535353533333335)) 
    \st_out[14]_INST_0_i_20 
       (.I0(st_in[9]),
        .I1(nb_cid[0]),
        .I2(\st_out[14]_INST_0_i_24_n_0 ),
        .I3(\st_out[5]_INST_0_i_5_n_0 ),
        .I4(\st_out[5]_INST_0_i_6_n_0 ),
        .I5(\st_out[5]_INST_0_i_7_n_0 ),
        .O(\st_out[14]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h3535353533333335)) 
    \st_out[14]_INST_0_i_21 
       (.I0(st_in[10]),
        .I1(nb_cid[1]),
        .I2(\st_out[14]_INST_0_i_24_n_0 ),
        .I3(\st_out[5]_INST_0_i_5_n_0 ),
        .I4(\st_out[5]_INST_0_i_6_n_0 ),
        .I5(\st_out[5]_INST_0_i_7_n_0 ),
        .O(\st_out[14]_INST_0_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hCACACACACCCCCCCA)) 
    \st_out[14]_INST_0_i_22 
       (.I0(st_in[11]),
        .I1(nb_cid[2]),
        .I2(\st_out[14]_INST_0_i_24_n_0 ),
        .I3(\st_out[5]_INST_0_i_5_n_0 ),
        .I4(\st_out[5]_INST_0_i_6_n_0 ),
        .I5(\st_out[5]_INST_0_i_7_n_0 ),
        .O(\st_out[14]_INST_0_i_22_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h008A)) 
    \st_out[14]_INST_0_i_23 
       (.I0(st_in[13]),
        .I1(nb_cid[4]),
        .I2(e_grown[0]),
        .I3(nb_cid[9]),
        .O(\st_out[14]_INST_0_i_23_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \st_out[14]_INST_0_i_24 
       (.I0(st_in[13]),
        .I1(e_grown[0]),
        .I2(nb_cid[4]),
        .O(\st_out[14]_INST_0_i_24_n_0 ));
  LUT6 #(
    .INIT(64'h3F3F00153F3F0000)) 
    \st_out[14]_INST_0_i_3 
       (.I0(\st_out[13]_INST_0_i_5_n_0 ),
        .I1(\st_out[14]_INST_0_i_5_n_0 ),
        .I2(\st_out[13]_INST_0_i_8_n_0 ),
        .I3(\st_out[5]_INST_0_i_4_n_0 ),
        .I4(\st_out[5]_INST_0_i_3_n_0 ),
        .I5(st_in[4]),
        .O(\st_out[14]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00F000FB)) 
    \st_out[14]_INST_0_i_4 
       (.I0(\st_out[13]_INST_0_i_5_n_0 ),
        .I1(st_in[3]),
        .I2(\st_out[14]_INST_0_i_6_n_0 ),
        .I3(\st_out[14]_INST_0_i_7_n_0 ),
        .I4(\st_out[5]_INST_0_i_4_n_0 ),
        .I5(\st_out[10]_INST_0_i_5_n_0 ),
        .O(\st_out[14]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h444D444D444D4DDD)) 
    \st_out[14]_INST_0_i_5 
       (.I0(nb_cid[19]),
        .I1(\st_out[13]_INST_0_i_7_n_0 ),
        .I2(\st_out[12]_INST_0_i_9_n_0 ),
        .I3(nb_cid[18]),
        .I4(\st_out[13]_INST_0_i_15_n_0 ),
        .I5(\st_out[14]_INST_0_i_8_n_0 ),
        .O(\st_out[14]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FF010000)) 
    \st_out[14]_INST_0_i_6 
       (.I0(\st_out[14]_INST_0_i_9_n_0 ),
        .I1(\st_out[14]_INST_0_i_10_n_0 ),
        .I2(\st_out[14]_INST_0_i_11_n_0 ),
        .I3(\st_out[14]_INST_0_i_12_n_0 ),
        .I4(\st_out[14]_INST_0_i_13_n_0 ),
        .I5(\st_out[14]_INST_0_i_14_n_0 ),
        .O(\st_out[14]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h00000000000E0EFF)) 
    \st_out[14]_INST_0_i_7 
       (.I0(\st_out[14]_INST_0_i_15_n_0 ),
        .I1(\st_out[14]_INST_0_i_16_n_0 ),
        .I2(\st_out[14]_INST_0_i_17_n_0 ),
        .I3(\st_out[13]_INST_0_i_17_n_0 ),
        .I4(nb_cid[14]),
        .I5(\st_out[14]_INST_0_i_18_n_0 ),
        .O(\st_out[14]_INST_0_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'h02A2)) 
    \st_out[14]_INST_0_i_8 
       (.I0(nb_cid[17]),
        .I1(\st_out[13]_INST_0_i_24_n_0 ),
        .I2(\st_out[14]_INST_0_i_7_n_0 ),
        .I3(nb_cid[12]),
        .O(\st_out[14]_INST_0_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'h082A08AA)) 
    \st_out[14]_INST_0_i_9 
       (.I0(nb_cid[8]),
        .I1(\st_out[5]_INST_0_i_4_n_0 ),
        .I2(nb_cid[3]),
        .I3(st_in[12]),
        .I4(\st_out[14]_INST_0_i_19_n_0 ),
        .O(\st_out[14]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAAAABAAABA0000AA)) 
    \st_out[1]_INST_0 
       (.I0(st_in[1]),
        .I1(\st_out[13]_INST_0_i_2_n_0 ),
        .I2(\st_out[1]_INST_0_i_1_n_0 ),
        .I3(stage[0]),
        .I4(stage[2]),
        .I5(stage[1]),
        .O(st_out[1]));
  LUT5 #(
    .INIT(32'h80000000)) 
    \st_out[1]_INST_0_i_1 
       (.I0(st_in[12]),
        .I1(st_in[11]),
        .I2(st_in[13]),
        .I3(st_in[9]),
        .I4(st_in[10]),
        .O(\st_out[1]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFEAAAAAA)) 
    \st_out[2]_INST_0 
       (.I0(\st_out[2]_INST_0_i_1_n_0 ),
        .I1(\st_out[2]_INST_0_i_2_n_0 ),
        .I2(st_in[2]),
        .I3(\st_out[14]_INST_0_i_2_n_0 ),
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
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'h45555555)) 
    \st_out[2]_INST_0_i_10 
       (.I0(st_in[2]),
        .I1(\st_out[2]_INST_0_i_6_n_0 ),
        .I2(nb_grown[0]),
        .I3(e_grown[0]),
        .I4(\st_out[13]_INST_0_i_26_n_0 ),
        .O(\st_out[2]_INST_0_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h0B)) 
    \st_out[2]_INST_0_i_2 
       (.I0(m_pass[0]),
        .I1(m_pass[1]),
        .I2(\st_out[1]_INST_0_i_1_n_0 ),
        .O(\st_out[2]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h5F5F7F5F)) 
    \st_out[2]_INST_0_i_3 
       (.I0(\st_out[2]_INST_0_i_2_n_0 ),
        .I1(\st_out[2]_INST_0_i_4_n_0 ),
        .I2(\st_out[2]_INST_0_i_5_n_0 ),
        .I3(nb_grown[3]),
        .I4(\st_out[2]_INST_0_i_6_n_0 ),
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
  LUT5 #(
    .INIT(32'hAAAAA2AA)) 
    \st_out[2]_INST_0_i_5 
       (.I0(\st_out[2]_INST_0_i_8_n_0 ),
        .I1(nb_grown[2]),
        .I2(\st_out[2]_INST_0_i_6_n_0 ),
        .I3(\st_out[2]_INST_0_i_9_n_0 ),
        .I4(\st_out[13]_INST_0_i_18_n_0 ),
        .O(\st_out[2]_INST_0_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    \st_out[2]_INST_0_i_6 
       (.I0(stage[0]),
        .I1(stage[2]),
        .I2(stage[1]),
        .O(\st_out[2]_INST_0_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \st_out[2]_INST_0_i_7 
       (.I0(nb_cid[16]),
        .I1(nb_cid[18]),
        .I2(nb_cid[19]),
        .I3(nb_cid[17]),
        .O(\st_out[2]_INST_0_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAA2AA)) 
    \st_out[2]_INST_0_i_8 
       (.I0(\st_out[2]_INST_0_i_10_n_0 ),
        .I1(nb_grown[1]),
        .I2(\st_out[2]_INST_0_i_6_n_0 ),
        .I3(\st_out[13]_INST_0_i_19_n_0 ),
        .I4(\st_out[13]_INST_0_i_25_n_0 ),
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
  LUT5 #(
    .INIT(32'hFFFF44F4)) 
    \st_out[3]_INST_0 
       (.I0(\st_out[3]_INST_0_i_1_n_0 ),
        .I1(\st_out[14]_INST_0_i_2_n_0 ),
        .I2(st_in[3]),
        .I3(\st_out[4]_INST_0_i_3_n_0 ),
        .I4(\st_out[3]_INST_0_i_2_n_0 ),
        .O(st_out[3]));
  LUT6 #(
    .INIT(64'hFF8A0000FFAAFFFF)) 
    \st_out[3]_INST_0_i_1 
       (.I0(\st_out[3]_INST_0_i_3_n_0 ),
        .I1(\st_out[13]_INST_0_i_5_n_0 ),
        .I2(\st_out[10]_INST_0_i_4_n_0 ),
        .I3(\st_out[10]_INST_0_i_5_n_0 ),
        .I4(\st_out[2]_INST_0_i_2_n_0 ),
        .I5(st_in[3]),
        .O(\st_out[3]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0202020000000200)) 
    \st_out[3]_INST_0_i_2 
       (.I0(stage[0]),
        .I1(stage[1]),
        .I2(stage[2]),
        .I3(st_in[3]),
        .I4(nb_valid[3]),
        .I5(ab_ptr[0]),
        .O(\st_out[3]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'h0D)) 
    \st_out[3]_INST_0_i_3 
       (.I0(\st_out[5]_INST_0_i_4_n_0 ),
        .I1(\st_out[14]_INST_0_i_6_n_0 ),
        .I2(\st_out[14]_INST_0_i_7_n_0 ),
        .O(\st_out[3]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hF8F8FFF8)) 
    \st_out[4]_INST_0 
       (.I0(\st_out[14]_INST_0_i_2_n_0 ),
        .I1(\st_out[4]_INST_0_i_1_n_0 ),
        .I2(\st_out[4]_INST_0_i_2_n_0 ),
        .I3(st_in[4]),
        .I4(\st_out[4]_INST_0_i_3_n_0 ),
        .O(st_out[4]));
  LUT6 #(
    .INIT(64'h3301FFFF33000000)) 
    \st_out[4]_INST_0_i_1 
       (.I0(\st_out[13]_INST_0_i_5_n_0 ),
        .I1(\st_out[10]_INST_0_i_5_n_0 ),
        .I2(\st_out[5]_INST_0_i_4_n_0 ),
        .I3(\st_out[5]_INST_0_i_3_n_0 ),
        .I4(\st_out[2]_INST_0_i_2_n_0 ),
        .I5(st_in[4]),
        .O(\st_out[4]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0202020000000200)) 
    \st_out[4]_INST_0_i_2 
       (.I0(stage[0]),
        .I1(stage[1]),
        .I2(stage[2]),
        .I3(st_in[4]),
        .I4(nb_valid[3]),
        .I5(ab_ptr[1]),
        .O(\st_out[4]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'h7720)) 
    \st_out[4]_INST_0_i_3 
       (.I0(stage[1]),
        .I1(stage[2]),
        .I2(\st_out[4]_INST_0_i_4_n_0 ),
        .I3(stage[0]),
        .O(\st_out[4]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \st_out[4]_INST_0_i_4 
       (.I0(st_in[3]),
        .I1(nb_valid[3]),
        .I2(st_in[4]),
        .I3(st_in[5]),
        .O(\st_out[4]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF08FB0000)) 
    \st_out[5]_INST_0 
       (.I0(st_in[5]),
        .I1(m_pass[1]),
        .I2(m_pass[0]),
        .I3(\st_out[5]_INST_0_i_1_n_0 ),
        .I4(\st_out[14]_INST_0_i_2_n_0 ),
        .I5(\st_out[5]_INST_0_i_2_n_0 ),
        .O(st_out[5]));
  LUT6 #(
    .INIT(64'h00005554FFFF5555)) 
    \st_out[5]_INST_0_i_1 
       (.I0(\st_out[10]_INST_0_i_5_n_0 ),
        .I1(\st_out[5]_INST_0_i_3_n_0 ),
        .I2(\st_out[5]_INST_0_i_4_n_0 ),
        .I3(\st_out[13]_INST_0_i_5_n_0 ),
        .I4(\st_out[1]_INST_0_i_1_n_0 ),
        .I5(st_in[5]),
        .O(\st_out[5]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF00BFFFF00080000)) 
    \st_out[5]_INST_0_i_2 
       (.I0(ab_ptr[2]),
        .I1(nb_valid[3]),
        .I2(stage[2]),
        .I3(stage[1]),
        .I4(stage[0]),
        .I5(st_in[5]),
        .O(\st_out[5]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \st_out[5]_INST_0_i_3 
       (.I0(\st_out[14]_INST_0_i_6_n_0 ),
        .I1(\st_out[14]_INST_0_i_7_n_0 ),
        .O(\st_out[5]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h40404040FFFFFF40)) 
    \st_out[5]_INST_0_i_4 
       (.I0(nb_cid[4]),
        .I1(e_grown[0]),
        .I2(st_in[13]),
        .I3(\st_out[5]_INST_0_i_5_n_0 ),
        .I4(\st_out[5]_INST_0_i_6_n_0 ),
        .I5(\st_out[5]_INST_0_i_7_n_0 ),
        .O(\st_out[5]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h2202FF0F00002202)) 
    \st_out[5]_INST_0_i_5 
       (.I0(st_in[9]),
        .I1(nb_cid[0]),
        .I2(nb_cid[2]),
        .I3(st_in[11]),
        .I4(nb_cid[1]),
        .I5(st_in[10]),
        .O(\st_out[5]_INST_0_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    \st_out[5]_INST_0_i_6 
       (.I0(nb_cid[3]),
        .I1(st_in[12]),
        .I2(nb_cid[2]),
        .I3(st_in[11]),
        .O(\st_out[5]_INST_0_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'h4F4FFF4F)) 
    \st_out[5]_INST_0_i_7 
       (.I0(st_in[12]),
        .I1(nb_cid[3]),
        .I2(e_grown[0]),
        .I3(nb_cid[4]),
        .I4(st_in[13]),
        .O(\st_out[5]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hC550CCCCC55FCCCC)) 
    \st_out[6]_INST_0 
       (.I0(\st_out[6]_INST_0_i_1_n_0 ),
        .I1(st_in[6]),
        .I2(stage[1]),
        .I3(stage[2]),
        .I4(stage[0]),
        .I5(\st_out[6]_INST_0_i_2_n_0 ),
        .O(st_out[6]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h458ABABA)) 
    \st_out[6]_INST_0_i_1 
       (.I0(\st_out[6]_INST_0_i_3_n_0 ),
        .I1(m_pass[1]),
        .I2(m_pass[0]),
        .I3(\st_out[8]_INST_0_i_3_n_0 ),
        .I4(st_in[6]),
        .O(\st_out[6]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8777)) 
    \st_out[6]_INST_0_i_2 
       (.I0(syn_bit),
        .I1(nb_valid[2]),
        .I2(nb_valid[3]),
        .I3(ab_defect),
        .O(\st_out[6]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h9666699969996999)) 
    \st_out[6]_INST_0_i_3 
       (.I0(nb_push[1]),
        .I1(nb_push[0]),
        .I2(nb_valid[2]),
        .I3(nb_push[2]),
        .I4(nb_valid[3]),
        .I5(nb_push[3]),
        .O(\st_out[6]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFEAAA)) 
    \st_out[7]_INST_0 
       (.I0(\st_out[7]_INST_0_i_1_n_0 ),
        .I1(\st_out[12]_INST_0_i_2_n_0 ),
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
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
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
    .INIT(64'hFFFFFFFF08FB0000)) 
    \st_out[8]_INST_0 
       (.I0(st_in[8]),
        .I1(m_pass[0]),
        .I2(m_pass[1]),
        .I3(\st_out[8]_INST_0_i_1_n_0 ),
        .I4(\st_out[14]_INST_0_i_2_n_0 ),
        .I5(\st_out[8]_INST_0_i_2_n_0 ),
        .O(st_out[8]));
  LUT3 #(
    .INIT(8'h74)) 
    \st_out[8]_INST_0_i_1 
       (.I0(st_in[6]),
        .I1(\st_out[8]_INST_0_i_3_n_0 ),
        .I2(\st_out[8]_INST_0_i_4_n_0 ),
        .O(\st_out[8]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAA0000C0AAAAAAAA)) 
    \st_out[8]_INST_0_i_2 
       (.I0(st_in[8]),
        .I1(nb_valid[3]),
        .I2(ab_active),
        .I3(stage[2]),
        .I4(stage[1]),
        .I5(stage[0]),
        .O(\st_out[8]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000008ABA0000)) 
    \st_out[8]_INST_0_i_3 
       (.I0(\st_out[5]_INST_0_i_1_n_0 ),
        .I1(m_pass[0]),
        .I2(m_pass[1]),
        .I3(st_in[5]),
        .I4(\st_out[3]_INST_0_i_1_n_0 ),
        .I5(\st_out[4]_INST_0_i_1_n_0 ),
        .O(\st_out[8]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \st_out[8]_INST_0_i_4 
       (.I0(nb_active[1]),
        .I1(nb_active[2]),
        .I2(\st_out[4]_INST_0_i_1_n_0 ),
        .I3(nb_active[3]),
        .I4(\st_out[3]_INST_0_i_1_n_0 ),
        .I5(nb_active[0]),
        .O(\st_out[8]_INST_0_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFE000)) 
    \st_out[9]_INST_0 
       (.I0(\st_out[13]_INST_0_i_1_n_0 ),
        .I1(st_in[9]),
        .I2(\st_out[14]_INST_0_i_2_n_0 ),
        .I3(\st_out[9]_INST_0_i_1_n_0 ),
        .I4(\st_out[9]_INST_0_i_2_n_0 ),
        .O(st_out[9]));
  LUT6 #(
    .INIT(64'hFFFFFF0808080808)) 
    \st_out[9]_INST_0_i_1 
       (.I0(st_in[9]),
        .I1(m_pass[1]),
        .I2(m_pass[0]),
        .I3(\st_out[13]_INST_0_i_6_n_0 ),
        .I4(\st_out[9]_INST_0_i_3_n_0 ),
        .I5(\st_out[2]_INST_0_i_2_n_0 ),
        .O(\st_out[9]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFC1CF0000)) 
    \st_out[9]_INST_0_i_2 
       (.I0(nb_valid[3]),
        .I1(stage[2]),
        .I2(stage[1]),
        .I3(stage[0]),
        .I4(st_in[9]),
        .I5(\st_out[9]_INST_0_i_4_n_0 ),
        .O(\st_out[9]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFF008B8B8B8B8B8B)) 
    \st_out[9]_INST_0_i_3 
       (.I0(nb_cid[10]),
        .I1(\st_out[14]_INST_0_i_7_n_0 ),
        .I2(\st_out[9]_INST_0_i_5_n_0 ),
        .I3(nb_cid[15]),
        .I4(\st_out[13]_INST_0_i_8_n_0 ),
        .I5(\st_out[14]_INST_0_i_5_n_0 ),
        .O(\st_out[9]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEAAAEAAAEAAA)) 
    \st_out[9]_INST_0_i_4 
       (.I0(\st_out[12]_INST_0_i_5_n_0 ),
        .I1(\st_out[12]_INST_0_i_2_n_0 ),
        .I2(ab_cid[0]),
        .I3(nb_valid[3]),
        .I4(\st_out[12]_INST_0_i_8_n_0 ),
        .I5(st_in[9]),
        .O(\st_out[9]_INST_0_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h44774747)) 
    \st_out[9]_INST_0_i_5 
       (.I0(nb_cid[5]),
        .I1(\st_out[14]_INST_0_i_6_n_0 ),
        .I2(st_in[9]),
        .I3(nb_cid[0]),
        .I4(\st_out[5]_INST_0_i_4_n_0 ),
        .O(\st_out[9]_INST_0_i_5_n_0 ));
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
  wire \st_out[10]_INST_0_i_10_n_0 ;
  wire \st_out[10]_INST_0_i_11_n_0 ;
  wire \st_out[10]_INST_0_i_1_n_0 ;
  wire \st_out[10]_INST_0_i_2_n_0 ;
  wire \st_out[10]_INST_0_i_3_n_0 ;
  wire \st_out[10]_INST_0_i_4_n_0 ;
  wire \st_out[10]_INST_0_i_5_n_0 ;
  wire \st_out[10]_INST_0_i_6_n_0 ;
  wire \st_out[10]_INST_0_i_7_n_0 ;
  wire \st_out[10]_INST_0_i_8_n_0 ;
  wire \st_out[10]_INST_0_i_9_n_0 ;
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
  wire \st_out[13]_INST_0_i_19_n_0 ;
  wire \st_out[13]_INST_0_i_1_n_0 ;
  wire \st_out[13]_INST_0_i_20_n_0 ;
  wire \st_out[13]_INST_0_i_21_n_0 ;
  wire \st_out[13]_INST_0_i_22_n_0 ;
  wire \st_out[13]_INST_0_i_23_n_0 ;
  wire \st_out[13]_INST_0_i_24_n_0 ;
  wire \st_out[13]_INST_0_i_25_n_0 ;
  wire \st_out[13]_INST_0_i_26_n_0 ;
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
  wire \st_out[4]_INST_0_i_1_n_0 ;
  wire \st_out[4]_INST_0_i_2_n_0 ;
  wire \st_out[5]_INST_0_i_1_n_0 ;
  wire \st_out[5]_INST_0_i_2_n_0 ;
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
    .INIT(64'hFFFFFFFF10555555)) 
    \st_out[0]_INST_0_i_1 
       (.I0(\st_out[14]_INST_0_i_4_n_0 ),
        .I1(\st_out[0]_INST_0_i_4_n_0 ),
        .I2(\st_out[13]_INST_0_i_7_n_0 ),
        .I3(\st_out[0]_INST_0_i_5_n_0 ),
        .I4(\st_out[9]_INST_0_i_3_n_0 ),
        .I5(\st_out[0]_INST_0_i_6_n_0 ),
        .O(\st_out[0]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT4 #(
    .INIT(16'hDFFF)) 
    \st_out[0]_INST_0_i_10 
       (.I0(stage[1]),
        .I1(stage[2]),
        .I2(stage[0]),
        .I3(nb_grown[2]),
        .O(\st_out[0]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h1777177717771117)) 
    \st_out[0]_INST_0_i_11 
       (.I0(nb_cid[14]),
        .I1(\st_out[13]_INST_0_i_17_n_0 ),
        .I2(nb_cid[13]),
        .I3(\st_out[12]_INST_0_i_15_n_0 ),
        .I4(\st_out[14]_INST_0_i_22_n_0 ),
        .I5(\st_out[0]_INST_0_i_13_n_0 ),
        .O(\st_out[0]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFEEFE)) 
    \st_out[0]_INST_0_i_12 
       (.I0(\st_out[0]_INST_0_i_14_n_0 ),
        .I1(\st_out[13]_INST_0_i_24_n_0 ),
        .I2(\st_out[0]_INST_0_i_15_n_0 ),
        .I3(st_in[2]),
        .I4(\st_out[12]_INST_0_i_1_n_0 ),
        .I5(\st_out[14]_INST_0_i_8_n_0 ),
        .O(\st_out[0]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h5555504400005044)) 
    \st_out[0]_INST_0_i_13 
       (.I0(nb_cid[12]),
        .I1(st_in[11]),
        .I2(nb_cid[2]),
        .I3(\st_out[14]_INST_0_i_8_n_0 ),
        .I4(\st_out[14]_INST_0_i_10_n_0 ),
        .I5(nb_cid[7]),
        .O(\st_out[0]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hA8AAA8A8A8A8A8A8)) 
    \st_out[0]_INST_0_i_14 
       (.I0(\st_out[13]_INST_0_i_25_n_0 ),
        .I1(\st_out[12]_INST_0_i_19_n_0 ),
        .I2(\st_out[13]_INST_0_i_23_n_0 ),
        .I3(\st_out[2]_INST_0_i_6_n_0 ),
        .I4(nb_grown[1]),
        .I5(\st_out[2]_INST_0_i_10_n_0 ),
        .O(\st_out[0]_INST_0_i_14_n_0 ));
  LUT5 #(
    .INIT(32'h00800000)) 
    \st_out[0]_INST_0_i_15 
       (.I0(e_grown[0]),
        .I1(nb_grown[0]),
        .I2(stage[0]),
        .I3(stage[2]),
        .I4(stage[1]),
        .O(\st_out[0]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \st_out[0]_INST_0_i_2 
       (.I0(nb_active[3]),
        .I1(nb_active[0]),
        .I2(\st_out[8]_INST_0_i_3_n_0 ),
        .I3(nb_active[1]),
        .I4(\st_out[3]_INST_0_i_1_n_0 ),
        .I5(nb_active[2]),
        .O(\st_out[0]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB0000000FFFFFFFF)) 
    \st_out[0]_INST_0_i_3 
       (.I0(\st_out[0]_INST_0_i_4_n_0 ),
        .I1(\st_out[13]_INST_0_i_7_n_0 ),
        .I2(\st_out[0]_INST_0_i_5_n_0 ),
        .I3(\st_out[9]_INST_0_i_3_n_0 ),
        .I4(\st_out[6]_INST_0_i_2_n_0 ),
        .I5(\st_out[14]_INST_0_i_3_n_0 ),
        .O(\st_out[0]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000AACAFFFF)) 
    \st_out[0]_INST_0_i_4 
       (.I0(st_in[1]),
        .I1(\st_out[12]_INST_0_i_7_n_0 ),
        .I2(nb_cid[17]),
        .I3(\st_out[0]_INST_0_i_7_n_0 ),
        .I4(\st_out[0]_INST_0_i_8_n_0 ),
        .I5(\st_out[0]_INST_0_i_9_n_0 ),
        .O(\st_out[0]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000555555F7)) 
    \st_out[0]_INST_0_i_5 
       (.I0(\st_out[13]_INST_0_i_18_n_0 ),
        .I1(\st_out[2]_INST_0_i_8_n_0 ),
        .I2(\st_out[0]_INST_0_i_10_n_0 ),
        .I3(\st_out[2]_INST_0_i_9_n_0 ),
        .I4(\st_out[0]_INST_0_i_11_n_0 ),
        .I5(\st_out[0]_INST_0_i_12_n_0 ),
        .O(\st_out[0]_INST_0_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'h4F)) 
    \st_out[0]_INST_0_i_6 
       (.I0(m_pass[1]),
        .I1(m_pass[0]),
        .I2(\st_out[6]_INST_0_i_1_n_0 ),
        .O(\st_out[0]_INST_0_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \st_out[0]_INST_0_i_7 
       (.I0(nb_cid[15]),
        .I1(nb_cid[16]),
        .O(\st_out[0]_INST_0_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \st_out[0]_INST_0_i_8 
       (.I0(nb_cid[16]),
        .I1(nb_cid[18]),
        .I2(nb_cid[19]),
        .I3(nb_cid[17]),
        .O(\st_out[0]_INST_0_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT5 #(
    .INIT(32'h00800000)) 
    \st_out[0]_INST_0_i_9 
       (.I0(\st_out[2]_INST_0_i_7_n_0 ),
        .I1(nb_grown[3]),
        .I2(stage[0]),
        .I3(stage[2]),
        .I4(stage[1]),
        .O(\st_out[0]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF44444044)) 
    \st_out[10]_INST_0 
       (.I0(\st_out[10]_INST_0_i_1_n_0 ),
        .I1(\st_out[14]_INST_0_i_3_n_0 ),
        .I2(st_in[10]),
        .I3(m_pass[1]),
        .I4(m_pass[0]),
        .I5(\st_out[10]_INST_0_i_2_n_0 ),
        .O(st_out[10]));
  LUT6 #(
    .INIT(64'h3030303000A0A0A0)) 
    \st_out[10]_INST_0_i_1 
       (.I0(\st_out[10]_INST_0_i_3_n_0 ),
        .I1(nb_cid[16]),
        .I2(\st_out[2]_INST_0_i_2_n_0 ),
        .I3(\st_out[10]_INST_0_i_4_n_0 ),
        .I4(\st_out[10]_INST_0_i_5_n_0 ),
        .I5(\st_out[10]_INST_0_i_6_n_0 ),
        .O(\st_out[10]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFF74FF74FF74)) 
    \st_out[10]_INST_0_i_10 
       (.I0(nb_cid[10]),
        .I1(\st_out[14]_INST_0_i_11_n_0 ),
        .I2(\st_out[9]_INST_0_i_5_n_0 ),
        .I3(nb_cid[15]),
        .I4(nb_cid[16]),
        .I5(\st_out[13]_INST_0_i_20_n_0 ),
        .O(\st_out[10]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h11111111F111F1FF)) 
    \st_out[10]_INST_0_i_11 
       (.I0(\st_out[13]_INST_0_i_21_n_0 ),
        .I1(nb_cid[17]),
        .I2(nb_cid[11]),
        .I3(\st_out[14]_INST_0_i_11_n_0 ),
        .I4(\st_out[10]_INST_0_i_9_n_0 ),
        .I5(nb_cid[16]),
        .O(\st_out[10]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hF232F2FF32323232)) 
    \st_out[10]_INST_0_i_2 
       (.I0(\st_out[11]_INST_0_i_2_n_0 ),
        .I1(\st_out[10]_INST_0_i_7_n_0 ),
        .I2(st_in[10]),
        .I3(nb_valid[2]),
        .I4(\st_out[10]_INST_0_i_8_n_0 ),
        .I5(\st_out[7]_INST_0_i_2_n_0 ),
        .O(\st_out[10]_INST_0_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hAEFE)) 
    \st_out[10]_INST_0_i_3 
       (.I0(\st_out[10]_INST_0_i_5_n_0 ),
        .I1(\st_out[10]_INST_0_i_9_n_0 ),
        .I2(\st_out[14]_INST_0_i_11_n_0 ),
        .I3(nb_cid[11]),
        .O(\st_out[10]_INST_0_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \st_out[10]_INST_0_i_4 
       (.I0(st_in[10]),
        .I1(\st_out[13]_INST_0_i_5_n_0 ),
        .O(\st_out[10]_INST_0_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \st_out[10]_INST_0_i_5 
       (.I0(\st_out[14]_INST_0_i_8_n_0 ),
        .I1(\st_out[14]_INST_0_i_11_n_0 ),
        .I2(\st_out[14]_INST_0_i_10_n_0 ),
        .O(\st_out[10]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000FF51)) 
    \st_out[10]_INST_0_i_6 
       (.I0(\st_out[13]_INST_0_i_14_n_0 ),
        .I1(\st_out[10]_INST_0_i_10_n_0 ),
        .I2(\st_out[10]_INST_0_i_11_n_0 ),
        .I3(\st_out[13]_INST_0_i_12_n_0 ),
        .I4(\st_out[13]_INST_0_i_11_n_0 ),
        .I5(\st_out[13]_INST_0_i_10_n_0 ),
        .O(\st_out[10]_INST_0_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \st_out[10]_INST_0_i_7 
       (.I0(stage[0]),
        .I1(stage[2]),
        .I2(stage[1]),
        .O(\st_out[10]_INST_0_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT5 #(
    .INIT(32'h4CCCCCCC)) 
    \st_out[10]_INST_0_i_8 
       (.I0(ab_cid[4]),
        .I1(ab_cid[1]),
        .I2(ab_cid[2]),
        .I3(ab_cid[3]),
        .I4(ab_cid[0]),
        .O(\st_out[10]_INST_0_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h44774747)) 
    \st_out[10]_INST_0_i_9 
       (.I0(nb_cid[6]),
        .I1(\st_out[14]_INST_0_i_10_n_0 ),
        .I2(st_in[10]),
        .I3(nb_cid[1]),
        .I4(\st_out[14]_INST_0_i_8_n_0 ),
        .O(\st_out[10]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFF4FFF4F4)) 
    \st_out[11]_INST_0 
       (.I0(\st_out[11]_INST_0_i_1_n_0 ),
        .I1(\st_out[14]_INST_0_i_3_n_0 ),
        .I2(\st_out[11]_INST_0_i_2_n_0 ),
        .I3(\st_out[11]_INST_0_i_3_n_0 ),
        .I4(st_in[11]),
        .I5(\st_out[11]_INST_0_i_4_n_0 ),
        .O(st_out[11]));
  LUT6 #(
    .INIT(64'h0000000001FFABFF)) 
    \st_out[11]_INST_0_i_1 
       (.I0(\st_out[13]_INST_0_i_4_n_0 ),
        .I1(\st_out[13]_INST_0_i_5_n_0 ),
        .I2(st_in[11]),
        .I3(\st_out[2]_INST_0_i_2_n_0 ),
        .I4(\st_out[11]_INST_0_i_5_n_0 ),
        .I5(\st_out[11]_INST_0_i_6_n_0 ),
        .O(\st_out[11]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    \st_out[11]_INST_0_i_2 
       (.I0(stage[0]),
        .I1(stage[2]),
        .I2(stage[1]),
        .I3(\st_out[11]_INST_0_i_7_n_0 ),
        .O(\st_out[11]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT4 #(
    .INIT(16'h3E00)) 
    \st_out[11]_INST_0_i_3 
       (.I0(nb_valid[3]),
        .I1(stage[2]),
        .I2(stage[1]),
        .I3(stage[0]),
        .O(\st_out[11]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h44440440)) 
    \st_out[11]_INST_0_i_4 
       (.I0(nb_valid[2]),
        .I1(\st_out[7]_INST_0_i_2_n_0 ),
        .I2(ab_cid[1]),
        .I3(ab_cid[2]),
        .I4(\st_out[11]_INST_0_i_8_n_0 ),
        .O(\st_out[11]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hEF202020EF20EFEF)) 
    \st_out[11]_INST_0_i_5 
       (.I0(nb_cid[17]),
        .I1(\st_out[12]_INST_0_i_7_n_0 ),
        .I2(\st_out[2]_INST_0_i_4_n_0 ),
        .I3(nb_cid[12]),
        .I4(\st_out[14]_INST_0_i_11_n_0 ),
        .I5(\st_out[11]_INST_0_i_9_n_0 ),
        .O(\st_out[11]_INST_0_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT5 #(
    .INIT(32'hEF202020)) 
    \st_out[11]_INST_0_i_6 
       (.I0(st_in[11]),
        .I1(m_pass[0]),
        .I2(m_pass[1]),
        .I3(\st_out[12]_INST_0_i_1_n_0 ),
        .I4(nb_valid[2]),
        .O(\st_out[11]_INST_0_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT4 #(
    .INIT(16'hFF7F)) 
    \st_out[11]_INST_0_i_7 
       (.I0(st_in[3]),
        .I1(nb_valid[3]),
        .I2(st_in[4]),
        .I3(st_in[5]),
        .O(\st_out[11]_INST_0_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \st_out[11]_INST_0_i_8 
       (.I0(ab_cid[0]),
        .I1(ab_cid[3]),
        .I2(ab_cid[2]),
        .I3(ab_cid[1]),
        .I4(ab_cid[4]),
        .O(\st_out[11]_INST_0_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT5 #(
    .INIT(32'h44744777)) 
    \st_out[11]_INST_0_i_9 
       (.I0(nb_cid[7]),
        .I1(\st_out[14]_INST_0_i_10_n_0 ),
        .I2(\st_out[14]_INST_0_i_8_n_0 ),
        .I3(nb_cid[2]),
        .I4(st_in[11]),
        .O(\st_out[11]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF04440000)) 
    \st_out[12]_INST_0 
       (.I0(\st_out[14]_INST_0_i_4_n_0 ),
        .I1(\st_out[14]_INST_0_i_3_n_0 ),
        .I2(\st_out[12]_INST_0_i_1_n_0 ),
        .I3(nb_valid[2]),
        .I4(\st_out[12]_INST_0_i_2_n_0 ),
        .I5(\st_out[12]_INST_0_i_3_n_0 ),
        .O(st_out[12]));
  LUT5 #(
    .INIT(32'h80000000)) 
    \st_out[12]_INST_0_i_1 
       (.I0(st_in[12]),
        .I1(st_in[9]),
        .I2(st_in[10]),
        .I3(st_in[11]),
        .I4(st_in[13]),
        .O(\st_out[12]_INST_0_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \st_out[12]_INST_0_i_10 
       (.I0(nb_cid[13]),
        .I1(\st_out[13]_INST_0_i_18_n_0 ),
        .O(\st_out[12]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF0701)) 
    \st_out[12]_INST_0_i_11 
       (.I0(nb_cid[11]),
        .I1(\st_out[10]_INST_0_i_9_n_0 ),
        .I2(\st_out[12]_INST_0_i_16_n_0 ),
        .I3(\st_out[12]_INST_0_i_17_n_0 ),
        .I4(\st_out[0]_INST_0_i_13_n_0 ),
        .I5(\st_out[12]_INST_0_i_18_n_0 ),
        .O(\st_out[12]_INST_0_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \st_out[12]_INST_0_i_12 
       (.I0(nb_cid[14]),
        .I1(\st_out[13]_INST_0_i_17_n_0 ),
        .I2(nb_cid[13]),
        .I3(\st_out[12]_INST_0_i_15_n_0 ),
        .O(\st_out[12]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h4545004500000000)) 
    \st_out[12]_INST_0_i_13 
       (.I0(nb_cid[14]),
        .I1(nb_cid[9]),
        .I2(\st_out[13]_INST_0_i_25_n_0 ),
        .I3(e_grown[0]),
        .I4(nb_cid[4]),
        .I5(st_in[13]),
        .O(\st_out[12]_INST_0_i_13_n_0 ));
  LUT5 #(
    .INIT(32'h2AAAAAAA)) 
    \st_out[12]_INST_0_i_14 
       (.I0(\st_out[13]_INST_0_i_18_n_0 ),
        .I1(nb_cid[12]),
        .I2(nb_cid[14]),
        .I3(nb_cid[10]),
        .I4(nb_cid[11]),
        .O(\st_out[12]_INST_0_i_14_n_0 ));
  LUT5 #(
    .INIT(32'h4040FF7F)) 
    \st_out[12]_INST_0_i_15 
       (.I0(nb_cid[8]),
        .I1(\st_out[12]_INST_0_i_19_n_0 ),
        .I2(\st_out[13]_INST_0_i_25_n_0 ),
        .I3(\st_out[12]_INST_0_i_20_n_0 ),
        .I4(\st_out[12]_INST_0_i_21_n_0 ),
        .O(\st_out[12]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h0000082AAAAA082A)) 
    \st_out[12]_INST_0_i_16 
       (.I0(nb_cid[12]),
        .I1(\st_out[14]_INST_0_i_8_n_0 ),
        .I2(nb_cid[2]),
        .I3(st_in[11]),
        .I4(\st_out[14]_INST_0_i_10_n_0 ),
        .I5(nb_cid[7]),
        .O(\st_out[12]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h5555540400005404)) 
    \st_out[12]_INST_0_i_17 
       (.I0(nb_cid[10]),
        .I1(st_in[9]),
        .I2(\st_out[14]_INST_0_i_8_n_0 ),
        .I3(nb_cid[0]),
        .I4(\st_out[14]_INST_0_i_10_n_0 ),
        .I5(nb_cid[5]),
        .O(\st_out[12]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h4544444400444444)) 
    \st_out[12]_INST_0_i_18 
       (.I0(nb_cid[13]),
        .I1(\st_out[12]_INST_0_i_21_n_0 ),
        .I2(\st_out[12]_INST_0_i_20_n_0 ),
        .I3(\st_out[13]_INST_0_i_25_n_0 ),
        .I4(\st_out[12]_INST_0_i_19_n_0 ),
        .I5(nb_cid[8]),
        .O(\st_out[12]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h4D444D444D44DD4D)) 
    \st_out[12]_INST_0_i_19 
       (.I0(nb_cid[9]),
        .I1(\st_out[12]_INST_0_i_22_n_0 ),
        .I2(nb_cid[8]),
        .I3(\st_out[12]_INST_0_i_21_n_0 ),
        .I4(\st_out[14]_INST_0_i_17_n_0 ),
        .I5(\st_out[14]_INST_0_i_16_n_0 ),
        .O(\st_out[12]_INST_0_i_19_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT5 #(
    .INIT(32'hFFFFAAFE)) 
    \st_out[12]_INST_0_i_2 
       (.I0(\st_out[12]_INST_0_i_4_n_0 ),
        .I1(\st_out[13]_INST_0_i_5_n_0 ),
        .I2(st_in[12]),
        .I3(\st_out[13]_INST_0_i_4_n_0 ),
        .I4(\st_out[12]_INST_0_i_1_n_0 ),
        .O(\st_out[12]_INST_0_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \st_out[12]_INST_0_i_20 
       (.I0(nb_cid[6]),
        .I1(nb_cid[5]),
        .I2(nb_cid[9]),
        .I3(nb_cid[7]),
        .O(\st_out[12]_INST_0_i_20_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT4 #(
    .INIT(16'hE0CC)) 
    \st_out[12]_INST_0_i_21 
       (.I0(\st_out[14]_INST_0_i_25_n_0 ),
        .I1(st_in[12]),
        .I2(nb_cid[3]),
        .I3(\st_out[14]_INST_0_i_8_n_0 ),
        .O(\st_out[12]_INST_0_i_21_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'hD0)) 
    \st_out[12]_INST_0_i_22 
       (.I0(e_grown[0]),
        .I1(nb_cid[4]),
        .I2(st_in[13]),
        .O(\st_out[12]_INST_0_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFE040FF40)) 
    \st_out[12]_INST_0_i_3 
       (.I0(nb_valid[2]),
        .I1(\st_out[12]_INST_0_i_5_n_0 ),
        .I2(\st_out[7]_INST_0_i_2_n_0 ),
        .I3(st_in[12]),
        .I4(\st_out[12]_INST_0_i_6_n_0 ),
        .I5(\st_out[11]_INST_0_i_2_n_0 ),
        .O(\st_out[12]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000080808FD08FD)) 
    \st_out[12]_INST_0_i_4 
       (.I0(\st_out[13]_INST_0_i_7_n_0 ),
        .I1(nb_cid[18]),
        .I2(\st_out[12]_INST_0_i_7_n_0 ),
        .I3(\st_out[12]_INST_0_i_8_n_0 ),
        .I4(\st_out[13]_INST_0_i_16_n_0 ),
        .I5(\st_out[10]_INST_0_i_5_n_0 ),
        .O(\st_out[12]_INST_0_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT5 #(
    .INIT(32'h8FFFF000)) 
    \st_out[12]_INST_0_i_5 
       (.I0(ab_cid[4]),
        .I1(ab_cid[0]),
        .I2(ab_cid[1]),
        .I3(ab_cid[2]),
        .I4(ab_cid[3]),
        .O(\st_out[12]_INST_0_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT5 #(
    .INIT(32'h00D0D0F0)) 
    \st_out[12]_INST_0_i_6 
       (.I0(m_pass[1]),
        .I1(m_pass[0]),
        .I2(stage[0]),
        .I3(stage[2]),
        .I4(stage[1]),
        .O(\st_out[12]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hBBB2BBB2BBB2B222)) 
    \st_out[12]_INST_0_i_7 
       (.I0(nb_cid[19]),
        .I1(\st_out[13]_INST_0_i_6_n_0 ),
        .I2(\st_out[12]_INST_0_i_8_n_0 ),
        .I3(nb_cid[18]),
        .I4(\st_out[13]_INST_0_i_13_n_0 ),
        .I5(\st_out[12]_INST_0_i_9_n_0 ),
        .O(\st_out[12]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h55F7FFFF55045504)) 
    \st_out[12]_INST_0_i_8 
       (.I0(\st_out[12]_INST_0_i_10_n_0 ),
        .I1(\st_out[12]_INST_0_i_11_n_0 ),
        .I2(\st_out[12]_INST_0_i_12_n_0 ),
        .I3(\st_out[12]_INST_0_i_13_n_0 ),
        .I4(\st_out[12]_INST_0_i_14_n_0 ),
        .I5(\st_out[12]_INST_0_i_15_n_0 ),
        .O(\st_out[12]_INST_0_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h02A2)) 
    \st_out[12]_INST_0_i_9 
       (.I0(nb_cid[17]),
        .I1(\st_out[13]_INST_0_i_22_n_0 ),
        .I2(\st_out[14]_INST_0_i_11_n_0 ),
        .I3(nb_cid[12]),
        .O(\st_out[12]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFE0E0C000)) 
    \st_out[13]_INST_0 
       (.I0(\st_out[13]_INST_0_i_1_n_0 ),
        .I1(st_in[13]),
        .I2(\st_out[14]_INST_0_i_3_n_0 ),
        .I3(\st_out[14]_INST_0_i_4_n_0 ),
        .I4(\st_out[13]_INST_0_i_2_n_0 ),
        .I5(\st_out[13]_INST_0_i_3_n_0 ),
        .O(st_out[13]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \st_out[13]_INST_0_i_1 
       (.I0(\st_out[13]_INST_0_i_4_n_0 ),
        .I1(\st_out[13]_INST_0_i_5_n_0 ),
        .O(\st_out[13]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h80000000FFFFFFFF)) 
    \st_out[13]_INST_0_i_10 
       (.I0(nb_cid[17]),
        .I1(nb_cid[19]),
        .I2(nb_cid[18]),
        .I3(nb_cid[15]),
        .I4(nb_cid[16]),
        .I5(\st_out[13]_INST_0_i_7_n_0 ),
        .O(\st_out[13]_INST_0_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \st_out[13]_INST_0_i_11 
       (.I0(nb_cid[19]),
        .I1(\st_out[13]_INST_0_i_6_n_0 ),
        .O(\st_out[13]_INST_0_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h444F)) 
    \st_out[13]_INST_0_i_12 
       (.I0(nb_cid[19]),
        .I1(\st_out[13]_INST_0_i_6_n_0 ),
        .I2(\st_out[12]_INST_0_i_8_n_0 ),
        .I3(nb_cid[18]),
        .O(\st_out[13]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFEE0FEE0FEE00000)) 
    \st_out[13]_INST_0_i_13 
       (.I0(nb_cid[15]),
        .I1(\st_out[13]_INST_0_i_19_n_0 ),
        .I2(nb_cid[16]),
        .I3(\st_out[13]_INST_0_i_20_n_0 ),
        .I4(nb_cid[17]),
        .I5(\st_out[13]_INST_0_i_21_n_0 ),
        .O(\st_out[13]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h8F888FFF88888888)) 
    \st_out[13]_INST_0_i_14 
       (.I0(nb_cid[18]),
        .I1(\st_out[12]_INST_0_i_8_n_0 ),
        .I2(nb_cid[12]),
        .I3(\st_out[14]_INST_0_i_11_n_0 ),
        .I4(\st_out[13]_INST_0_i_22_n_0 ),
        .I5(nb_cid[17]),
        .O(\st_out[13]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h0007070707070707)) 
    \st_out[13]_INST_0_i_15 
       (.I0(e_grown[1]),
        .I1(\st_out[13]_INST_0_i_23_n_0 ),
        .I2(\st_out[13]_INST_0_i_24_n_0 ),
        .I3(e_grown[2]),
        .I4(nb_valid[2]),
        .I5(\st_out[2]_INST_0_i_9_n_0 ),
        .O(\st_out[13]_INST_0_i_15_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \st_out[13]_INST_0_i_16 
       (.I0(nb_cid[16]),
        .I1(nb_cid[15]),
        .I2(nb_cid[18]),
        .I3(nb_cid[19]),
        .I4(nb_cid[17]),
        .O(\st_out[13]_INST_0_i_16_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT5 #(
    .INIT(32'h7575FF75)) 
    \st_out[13]_INST_0_i_17 
       (.I0(st_in[13]),
        .I1(nb_cid[4]),
        .I2(e_grown[0]),
        .I3(\st_out[13]_INST_0_i_25_n_0 ),
        .I4(nb_cid[9]),
        .O(\st_out[13]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h0777000000000000)) 
    \st_out[13]_INST_0_i_18 
       (.I0(e_grown[1]),
        .I1(\st_out[13]_INST_0_i_23_n_0 ),
        .I2(\st_out[13]_INST_0_i_26_n_0 ),
        .I3(e_grown[0]),
        .I4(nb_valid[2]),
        .I5(e_grown[2]),
        .O(\st_out[13]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF55F700005504)) 
    \st_out[13]_INST_0_i_19 
       (.I0(nb_cid[10]),
        .I1(\st_out[12]_INST_0_i_11_n_0 ),
        .I2(\st_out[12]_INST_0_i_12_n_0 ),
        .I3(\st_out[12]_INST_0_i_13_n_0 ),
        .I4(\st_out[14]_INST_0_i_24_n_0 ),
        .I5(\st_out[9]_INST_0_i_5_n_0 ),
        .O(\st_out[13]_INST_0_i_19_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT5 #(
    .INIT(32'h8088AAAA)) 
    \st_out[13]_INST_0_i_2 
       (.I0(\st_out[2]_INST_0_i_2_n_0 ),
        .I1(\st_out[13]_INST_0_i_6_n_0 ),
        .I2(nb_cid[19]),
        .I3(\st_out[13]_INST_0_i_7_n_0 ),
        .I4(\st_out[13]_INST_0_i_4_n_0 ),
        .O(\st_out[13]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF55F700005504)) 
    \st_out[13]_INST_0_i_20 
       (.I0(nb_cid[11]),
        .I1(\st_out[12]_INST_0_i_11_n_0 ),
        .I2(\st_out[12]_INST_0_i_12_n_0 ),
        .I3(\st_out[12]_INST_0_i_13_n_0 ),
        .I4(\st_out[14]_INST_0_i_24_n_0 ),
        .I5(\st_out[10]_INST_0_i_9_n_0 ),
        .O(\st_out[13]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF55F700005504)) 
    \st_out[13]_INST_0_i_21 
       (.I0(nb_cid[12]),
        .I1(\st_out[12]_INST_0_i_11_n_0 ),
        .I2(\st_out[12]_INST_0_i_12_n_0 ),
        .I3(\st_out[12]_INST_0_i_13_n_0 ),
        .I4(\st_out[14]_INST_0_i_24_n_0 ),
        .I5(\st_out[11]_INST_0_i_9_n_0 ),
        .O(\st_out[13]_INST_0_i_21_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT5 #(
    .INIT(32'hBB88B8B8)) 
    \st_out[13]_INST_0_i_22 
       (.I0(nb_cid[7]),
        .I1(\st_out[14]_INST_0_i_10_n_0 ),
        .I2(st_in[11]),
        .I3(nb_cid[2]),
        .I4(\st_out[14]_INST_0_i_8_n_0 ),
        .O(\st_out[13]_INST_0_i_22_n_0 ));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \st_out[13]_INST_0_i_23 
       (.I0(nb_cid[6]),
        .I1(nb_cid[5]),
        .I2(nb_cid[9]),
        .I3(nb_cid[7]),
        .I4(nb_cid[8]),
        .I5(st_in[1]),
        .O(\st_out[13]_INST_0_i_23_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \st_out[13]_INST_0_i_24 
       (.I0(\st_out[13]_INST_0_i_26_n_0 ),
        .I1(e_grown[0]),
        .O(\st_out[13]_INST_0_i_24_n_0 ));
  LUT3 #(
    .INIT(8'h2A)) 
    \st_out[13]_INST_0_i_25 
       (.I0(e_grown[1]),
        .I1(e_grown[0]),
        .I2(\st_out[13]_INST_0_i_26_n_0 ),
        .O(\st_out[13]_INST_0_i_25_n_0 ));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \st_out[13]_INST_0_i_26 
       (.I0(nb_cid[2]),
        .I1(nb_cid[1]),
        .I2(nb_cid[0]),
        .I3(nb_cid[4]),
        .I4(nb_cid[3]),
        .I5(st_in[1]),
        .O(\st_out[13]_INST_0_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF0E000600)) 
    \st_out[13]_INST_0_i_3 
       (.I0(\st_out[13]_INST_0_i_8_n_0 ),
        .I1(ab_cid[4]),
        .I2(nb_valid[2]),
        .I3(\st_out[7]_INST_0_i_2_n_0 ),
        .I4(ab_cid[0]),
        .I5(\st_out[13]_INST_0_i_9_n_0 ),
        .O(\st_out[13]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h10101011FFFFFFFF)) 
    \st_out[13]_INST_0_i_4 
       (.I0(\st_out[13]_INST_0_i_10_n_0 ),
        .I1(\st_out[13]_INST_0_i_11_n_0 ),
        .I2(\st_out[13]_INST_0_i_12_n_0 ),
        .I3(\st_out[13]_INST_0_i_13_n_0 ),
        .I4(\st_out[13]_INST_0_i_14_n_0 ),
        .I5(\st_out[10]_INST_0_i_5_n_0 ),
        .O(\st_out[13]_INST_0_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT5 #(
    .INIT(32'h5D555555)) 
    \st_out[13]_INST_0_i_5 
       (.I0(\st_out[13]_INST_0_i_15_n_0 ),
        .I1(\st_out[13]_INST_0_i_16_n_0 ),
        .I2(st_in[1]),
        .I3(nb_valid[3]),
        .I4(e_grown[3]),
        .O(\st_out[13]_INST_0_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'h45)) 
    \st_out[13]_INST_0_i_6 
       (.I0(\st_out[13]_INST_0_i_17_n_0 ),
        .I1(nb_cid[14]),
        .I2(\st_out[13]_INST_0_i_18_n_0 ),
        .O(\st_out[13]_INST_0_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \st_out[13]_INST_0_i_7 
       (.I0(\st_out[13]_INST_0_i_15_n_0 ),
        .I1(nb_valid[3]),
        .I2(e_grown[3]),
        .O(\st_out[13]_INST_0_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \st_out[13]_INST_0_i_8 
       (.I0(ab_cid[3]),
        .I1(ab_cid[2]),
        .I2(ab_cid[1]),
        .O(\st_out[13]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hEEAEAEAEEEAEAEEE)) 
    \st_out[13]_INST_0_i_9 
       (.I0(\st_out[11]_INST_0_i_2_n_0 ),
        .I1(st_in[13]),
        .I2(stage[0]),
        .I3(stage[1]),
        .I4(stage[2]),
        .I5(nb_valid[3]),
        .O(\st_out[13]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF8AFF00008A00)) 
    \st_out[14]_INST_0 
       (.I0(st_in[6]),
        .I1(\st_out[14]_INST_0_i_1_n_0 ),
        .I2(\st_out[14]_INST_0_i_2_n_0 ),
        .I3(\st_out[14]_INST_0_i_3_n_0 ),
        .I4(\st_out[14]_INST_0_i_4_n_0 ),
        .I5(st_in[14]),
        .O(st_out[14]));
  LUT3 #(
    .INIT(8'h0D)) 
    \st_out[14]_INST_0_i_1 
       (.I0(\st_out[12]_INST_0_i_1_n_0 ),
        .I1(st_in[4]),
        .I2(\st_out[14]_INST_0_i_5_n_0 ),
        .O(\st_out[14]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FF010000)) 
    \st_out[14]_INST_0_i_10 
       (.I0(\st_out[14]_INST_0_i_15_n_0 ),
        .I1(\st_out[14]_INST_0_i_16_n_0 ),
        .I2(\st_out[14]_INST_0_i_17_n_0 ),
        .I3(\st_out[14]_INST_0_i_18_n_0 ),
        .I4(\st_out[14]_INST_0_i_19_n_0 ),
        .I5(\st_out[14]_INST_0_i_20_n_0 ),
        .O(\st_out[14]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h00000000000E0EFF)) 
    \st_out[14]_INST_0_i_11 
       (.I0(\st_out[14]_INST_0_i_21_n_0 ),
        .I1(\st_out[14]_INST_0_i_22_n_0 ),
        .I2(\st_out[14]_INST_0_i_23_n_0 ),
        .I3(\st_out[13]_INST_0_i_17_n_0 ),
        .I4(nb_cid[14]),
        .I5(\st_out[14]_INST_0_i_24_n_0 ),
        .O(\st_out[14]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h2202FF0F00002202)) 
    \st_out[14]_INST_0_i_12 
       (.I0(st_in[9]),
        .I1(nb_cid[0]),
        .I2(nb_cid[2]),
        .I3(st_in[11]),
        .I4(nb_cid[1]),
        .I5(st_in[10]),
        .O(\st_out[14]_INST_0_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \st_out[14]_INST_0_i_13 
       (.I0(nb_cid[3]),
        .I1(st_in[12]),
        .I2(nb_cid[2]),
        .I3(st_in[11]),
        .O(\st_out[14]_INST_0_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT5 #(
    .INIT(32'h4F4FFF4F)) 
    \st_out[14]_INST_0_i_14 
       (.I0(st_in[12]),
        .I1(nb_cid[3]),
        .I2(e_grown[0]),
        .I3(nb_cid[4]),
        .I4(st_in[13]),
        .O(\st_out[14]_INST_0_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT5 #(
    .INIT(32'h082A08AA)) 
    \st_out[14]_INST_0_i_15 
       (.I0(nb_cid[8]),
        .I1(\st_out[14]_INST_0_i_8_n_0 ),
        .I2(nb_cid[3]),
        .I3(st_in[12]),
        .I4(\st_out[14]_INST_0_i_25_n_0 ),
        .O(\st_out[14]_INST_0_i_15_n_0 ));
  LUT4 #(
    .INIT(16'h082A)) 
    \st_out[14]_INST_0_i_16 
       (.I0(nb_cid[7]),
        .I1(\st_out[14]_INST_0_i_8_n_0 ),
        .I2(nb_cid[2]),
        .I3(st_in[11]),
        .O(\st_out[14]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hFEE0FEE00000FEE0)) 
    \st_out[14]_INST_0_i_17 
       (.I0(nb_cid[5]),
        .I1(\st_out[14]_INST_0_i_26_n_0 ),
        .I2(nb_cid[6]),
        .I3(\st_out[14]_INST_0_i_27_n_0 ),
        .I4(\st_out[14]_INST_0_i_28_n_0 ),
        .I5(nb_cid[7]),
        .O(\st_out[14]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hBBBAAAAABBAABBAA)) 
    \st_out[14]_INST_0_i_18 
       (.I0(\st_out[14]_INST_0_i_29_n_0 ),
        .I1(nb_cid[8]),
        .I2(\st_out[14]_INST_0_i_25_n_0 ),
        .I3(st_in[12]),
        .I4(nb_cid[3]),
        .I5(\st_out[14]_INST_0_i_8_n_0 ),
        .O(\st_out[14]_INST_0_i_18_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT4 #(
    .INIT(16'h8AFF)) 
    \st_out[14]_INST_0_i_19 
       (.I0(st_in[13]),
        .I1(nb_cid[4]),
        .I2(e_grown[0]),
        .I3(nb_cid[9]),
        .O(\st_out[14]_INST_0_i_19_n_0 ));
  LUT5 #(
    .INIT(32'h000ABB0A)) 
    \st_out[14]_INST_0_i_2 
       (.I0(\st_out[14]_INST_0_i_6_n_0 ),
        .I1(st_in[5]),
        .I2(\st_out[14]_INST_0_i_7_n_0 ),
        .I3(\st_out[12]_INST_0_i_1_n_0 ),
        .I4(st_in[3]),
        .O(\st_out[14]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h80000000FFFFFFFF)) 
    \st_out[14]_INST_0_i_20 
       (.I0(nb_cid[6]),
        .I1(nb_cid[5]),
        .I2(nb_cid[9]),
        .I3(nb_cid[7]),
        .I4(nb_cid[8]),
        .I5(\st_out[13]_INST_0_i_25_n_0 ),
        .O(\st_out[14]_INST_0_i_20_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT4 #(
    .INIT(16'h111F)) 
    \st_out[14]_INST_0_i_21 
       (.I0(\st_out[12]_INST_0_i_15_n_0 ),
        .I1(nb_cid[13]),
        .I2(\st_out[11]_INST_0_i_9_n_0 ),
        .I3(nb_cid[12]),
        .O(\st_out[14]_INST_0_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h000011011101FF0F)) 
    \st_out[14]_INST_0_i_22 
       (.I0(nb_cid[10]),
        .I1(\st_out[9]_INST_0_i_5_n_0 ),
        .I2(nb_cid[12]),
        .I3(\st_out[13]_INST_0_i_22_n_0 ),
        .I4(\st_out[10]_INST_0_i_9_n_0 ),
        .I5(nb_cid[11]),
        .O(\st_out[14]_INST_0_i_22_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \st_out[14]_INST_0_i_23 
       (.I0(\st_out[12]_INST_0_i_15_n_0 ),
        .I1(nb_cid[13]),
        .O(\st_out[14]_INST_0_i_23_n_0 ));
  LUT6 #(
    .INIT(64'h80000000FFFFFFFF)) 
    \st_out[14]_INST_0_i_24 
       (.I0(nb_cid[13]),
        .I1(nb_cid[11]),
        .I2(nb_cid[10]),
        .I3(nb_cid[14]),
        .I4(nb_cid[12]),
        .I5(\st_out[13]_INST_0_i_18_n_0 ),
        .O(\st_out[14]_INST_0_i_24_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \st_out[14]_INST_0_i_25 
       (.I0(nb_cid[2]),
        .I1(nb_cid[1]),
        .I2(nb_cid[0]),
        .I3(nb_cid[4]),
        .O(\st_out[14]_INST_0_i_25_n_0 ));
  LUT6 #(
    .INIT(64'h4444555477775557)) 
    \st_out[14]_INST_0_i_26 
       (.I0(nb_cid[0]),
        .I1(\st_out[14]_INST_0_i_30_n_0 ),
        .I2(\st_out[14]_INST_0_i_12_n_0 ),
        .I3(\st_out[14]_INST_0_i_13_n_0 ),
        .I4(\st_out[14]_INST_0_i_14_n_0 ),
        .I5(st_in[9]),
        .O(\st_out[14]_INST_0_i_26_n_0 ));
  LUT6 #(
    .INIT(64'h3535353533333335)) 
    \st_out[14]_INST_0_i_27 
       (.I0(st_in[10]),
        .I1(nb_cid[1]),
        .I2(\st_out[14]_INST_0_i_30_n_0 ),
        .I3(\st_out[14]_INST_0_i_12_n_0 ),
        .I4(\st_out[14]_INST_0_i_13_n_0 ),
        .I5(\st_out[14]_INST_0_i_14_n_0 ),
        .O(\st_out[14]_INST_0_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hCACACACACCCCCCCA)) 
    \st_out[14]_INST_0_i_28 
       (.I0(st_in[11]),
        .I1(nb_cid[2]),
        .I2(\st_out[14]_INST_0_i_30_n_0 ),
        .I3(\st_out[14]_INST_0_i_12_n_0 ),
        .I4(\st_out[14]_INST_0_i_13_n_0 ),
        .I5(\st_out[14]_INST_0_i_14_n_0 ),
        .O(\st_out[14]_INST_0_i_28_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT4 #(
    .INIT(16'h008A)) 
    \st_out[14]_INST_0_i_29 
       (.I0(st_in[13]),
        .I1(nb_cid[4]),
        .I2(e_grown[0]),
        .I3(nb_cid[9]),
        .O(\st_out[14]_INST_0_i_29_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \st_out[14]_INST_0_i_3 
       (.I0(stage[0]),
        .I1(stage[2]),
        .I2(stage[1]),
        .O(\st_out[14]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \st_out[14]_INST_0_i_30 
       (.I0(st_in[13]),
        .I1(e_grown[0]),
        .I2(nb_cid[4]),
        .O(\st_out[14]_INST_0_i_30_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \st_out[14]_INST_0_i_4 
       (.I0(m_pass[1]),
        .I1(m_pass[0]),
        .O(\st_out[14]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFF00FD)) 
    \st_out[14]_INST_0_i_5 
       (.I0(st_in[4]),
        .I1(\st_out[14]_INST_0_i_8_n_0 ),
        .I2(\st_out[13]_INST_0_i_5_n_0 ),
        .I3(\st_out[14]_INST_0_i_9_n_0 ),
        .I4(\st_out[10]_INST_0_i_6_n_0 ),
        .I5(\st_out[12]_INST_0_i_1_n_0 ),
        .O(\st_out[14]_INST_0_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h000000BF)) 
    \st_out[14]_INST_0_i_6 
       (.I0(\st_out[13]_INST_0_i_5_n_0 ),
        .I1(st_in[5]),
        .I2(\st_out[10]_INST_0_i_5_n_0 ),
        .I3(\st_out[12]_INST_0_i_1_n_0 ),
        .I4(\st_out[10]_INST_0_i_6_n_0 ),
        .O(\st_out[14]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h5150515051515150)) 
    \st_out[14]_INST_0_i_7 
       (.I0(\st_out[10]_INST_0_i_6_n_0 ),
        .I1(\st_out[14]_INST_0_i_10_n_0 ),
        .I2(\st_out[14]_INST_0_i_11_n_0 ),
        .I3(\st_out[14]_INST_0_i_8_n_0 ),
        .I4(st_in[3]),
        .I5(\st_out[13]_INST_0_i_5_n_0 ),
        .O(\st_out[14]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h40404040FFFFFF40)) 
    \st_out[14]_INST_0_i_8 
       (.I0(nb_cid[4]),
        .I1(e_grown[0]),
        .I2(st_in[13]),
        .I3(\st_out[14]_INST_0_i_12_n_0 ),
        .I4(\st_out[14]_INST_0_i_13_n_0 ),
        .I5(\st_out[14]_INST_0_i_14_n_0 ),
        .O(\st_out[14]_INST_0_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \st_out[14]_INST_0_i_9 
       (.I0(\st_out[14]_INST_0_i_10_n_0 ),
        .I1(\st_out[14]_INST_0_i_11_n_0 ),
        .O(\st_out[14]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAAAABAAABA0000AA)) 
    \st_out[1]_INST_0 
       (.I0(st_in[1]),
        .I1(\st_out[14]_INST_0_i_4_n_0 ),
        .I2(\st_out[12]_INST_0_i_1_n_0 ),
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
        .I3(\st_out[14]_INST_0_i_3_n_0 ),
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
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT5 #(
    .INIT(32'h55554555)) 
    \st_out[2]_INST_0_i_10 
       (.I0(st_in[2]),
        .I1(\st_out[13]_INST_0_i_26_n_0 ),
        .I2(e_grown[0]),
        .I3(nb_grown[0]),
        .I4(\st_out[2]_INST_0_i_6_n_0 ),
        .O(\st_out[2]_INST_0_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'h0B)) 
    \st_out[2]_INST_0_i_2 
       (.I0(m_pass[0]),
        .I1(m_pass[1]),
        .I2(\st_out[12]_INST_0_i_1_n_0 ),
        .O(\st_out[2]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00E0FFFFFFFFFFFF)) 
    \st_out[2]_INST_0_i_3 
       (.I0(\st_out[2]_INST_0_i_4_n_0 ),
        .I1(\st_out[2]_INST_0_i_5_n_0 ),
        .I2(nb_grown[3]),
        .I3(\st_out[2]_INST_0_i_6_n_0 ),
        .I4(\st_out[2]_INST_0_i_2_n_0 ),
        .I5(\st_out[2]_INST_0_i_7_n_0 ),
        .O(\st_out[2]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT5 #(
    .INIT(32'h2AAAAAAA)) 
    \st_out[2]_INST_0_i_4 
       (.I0(\st_out[13]_INST_0_i_7_n_0 ),
        .I1(nb_cid[17]),
        .I2(nb_cid[19]),
        .I3(nb_cid[18]),
        .I4(nb_cid[16]),
        .O(\st_out[2]_INST_0_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT5 #(
    .INIT(32'hAAAA0888)) 
    \st_out[2]_INST_0_i_5 
       (.I0(\st_out[13]_INST_0_i_7_n_0 ),
        .I1(nb_cid[17]),
        .I2(nb_cid[16]),
        .I3(nb_cid[15]),
        .I4(st_in[1]),
        .O(\st_out[2]_INST_0_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    \st_out[2]_INST_0_i_6 
       (.I0(stage[0]),
        .I1(stage[2]),
        .I2(stage[1]),
        .O(\st_out[2]_INST_0_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hAA8AAAAA)) 
    \st_out[2]_INST_0_i_7 
       (.I0(\st_out[2]_INST_0_i_8_n_0 ),
        .I1(\st_out[2]_INST_0_i_9_n_0 ),
        .I2(nb_grown[2]),
        .I3(\st_out[2]_INST_0_i_6_n_0 ),
        .I4(\st_out[13]_INST_0_i_18_n_0 ),
        .O(\st_out[2]_INST_0_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hAA8AAAAA)) 
    \st_out[2]_INST_0_i_8 
       (.I0(\st_out[2]_INST_0_i_10_n_0 ),
        .I1(\st_out[13]_INST_0_i_23_n_0 ),
        .I2(nb_grown[1]),
        .I3(\st_out[2]_INST_0_i_6_n_0 ),
        .I4(\st_out[13]_INST_0_i_25_n_0 ),
        .O(\st_out[2]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \st_out[2]_INST_0_i_9 
       (.I0(nb_cid[13]),
        .I1(nb_cid[11]),
        .I2(nb_cid[10]),
        .I3(nb_cid[14]),
        .I4(nb_cid[12]),
        .I5(st_in[1]),
        .O(\st_out[2]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFF4F4F4F4F4F4F4)) 
    \st_out[3]_INST_0 
       (.I0(\st_out[3]_INST_0_i_1_n_0 ),
        .I1(\st_out[14]_INST_0_i_3_n_0 ),
        .I2(\st_out[3]_INST_0_i_2_n_0 ),
        .I3(\st_out[7]_INST_0_i_2_n_0 ),
        .I4(ab_ptr[0]),
        .I5(nb_valid[3]),
        .O(st_out[3]));
  LUT6 #(
    .INIT(64'h55DF55DF55DF5510)) 
    \st_out[3]_INST_0_i_1 
       (.I0(st_in[3]),
        .I1(m_pass[0]),
        .I2(m_pass[1]),
        .I3(\st_out[12]_INST_0_i_1_n_0 ),
        .I4(\st_out[10]_INST_0_i_6_n_0 ),
        .I5(\st_out[3]_INST_0_i_3_n_0 ),
        .O(\st_out[3]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h80808282AA8AAA8A)) 
    \st_out[3]_INST_0_i_2 
       (.I0(st_in[3]),
        .I1(stage[2]),
        .I2(stage[1]),
        .I3(\st_out[11]_INST_0_i_7_n_0 ),
        .I4(nb_valid[3]),
        .I5(stage[0]),
        .O(\st_out[3]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT5 #(
    .INIT(32'h00FF000B)) 
    \st_out[3]_INST_0_i_3 
       (.I0(\st_out[13]_INST_0_i_5_n_0 ),
        .I1(st_in[3]),
        .I2(\st_out[14]_INST_0_i_8_n_0 ),
        .I3(\st_out[14]_INST_0_i_11_n_0 ),
        .I4(\st_out[14]_INST_0_i_10_n_0 ),
        .O(\st_out[3]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hEAAAEAAAFFFFEAAA)) 
    \st_out[4]_INST_0 
       (.I0(\st_out[4]_INST_0_i_1_n_0 ),
        .I1(\st_out[7]_INST_0_i_2_n_0 ),
        .I2(ab_ptr[1]),
        .I3(nb_valid[3]),
        .I4(st_in[4]),
        .I5(\st_out[4]_INST_0_i_2_n_0 ),
        .O(st_out[4]));
  LUT6 #(
    .INIT(64'h2A2200002A222022)) 
    \st_out[4]_INST_0_i_1 
       (.I0(\st_out[14]_INST_0_i_3_n_0 ),
        .I1(\st_out[14]_INST_0_i_5_n_0 ),
        .I2(m_pass[0]),
        .I3(m_pass[1]),
        .I4(st_in[4]),
        .I5(\st_out[12]_INST_0_i_1_n_0 ),
        .O(\st_out[4]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT5 #(
    .INIT(32'h00AAAF88)) 
    \st_out[4]_INST_0_i_2 
       (.I0(stage[0]),
        .I1(nb_valid[3]),
        .I2(\st_out[11]_INST_0_i_7_n_0 ),
        .I3(stage[1]),
        .I4(stage[2]),
        .O(\st_out[4]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT5 #(
    .INIT(32'hFFFF2800)) 
    \st_out[5]_INST_0 
       (.I0(stage[0]),
        .I1(stage[2]),
        .I2(stage[1]),
        .I3(\st_out[5]_INST_0_i_1_n_0 ),
        .I4(\st_out[5]_INST_0_i_2_n_0 ),
        .O(st_out[5]));
  LUT6 #(
    .INIT(64'hF0F0F5F5F0F0B0A0)) 
    \st_out[5]_INST_0_i_1 
       (.I0(\st_out[14]_INST_0_i_4_n_0 ),
        .I1(\st_out[13]_INST_0_i_5_n_0 ),
        .I2(st_in[5]),
        .I3(\st_out[10]_INST_0_i_5_n_0 ),
        .I4(\st_out[12]_INST_0_i_1_n_0 ),
        .I5(\st_out[10]_INST_0_i_6_n_0 ),
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
    .INIT(64'hFFFFFFFFED110000)) 
    \st_out[6]_INST_0 
       (.I0(\st_out[6]_INST_0_i_1_n_0 ),
        .I1(\st_out[6]_INST_0_i_2_n_0 ),
        .I2(\st_out[6]_INST_0_i_3_n_0 ),
        .I3(st_in[6]),
        .I4(\st_out[14]_INST_0_i_3_n_0 ),
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
    .INIT(64'h000000002F2E0000)) 
    \st_out[6]_INST_0_i_3 
       (.I0(\st_out[14]_INST_0_i_5_n_0 ),
        .I1(\st_out[14]_INST_0_i_4_n_0 ),
        .I2(st_in[4]),
        .I3(\st_out[12]_INST_0_i_1_n_0 ),
        .I4(\st_out[3]_INST_0_i_1_n_0 ),
        .I5(\st_out[5]_INST_0_i_1_n_0 ),
        .O(\st_out[6]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8700FFFF87008700)) 
    \st_out[6]_INST_0_i_4 
       (.I0(syn_bit),
        .I1(nb_valid[2]),
        .I2(\st_out[6]_INST_0_i_5_n_0 ),
        .I3(\st_out[7]_INST_0_i_2_n_0 ),
        .I4(\st_out[10]_INST_0_i_7_n_0 ),
        .I5(st_in[6]),
        .O(\st_out[6]_INST_0_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \st_out[6]_INST_0_i_5 
       (.I0(nb_valid[3]),
        .I1(ab_defect),
        .O(\st_out[6]_INST_0_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFEAAA)) 
    \st_out[7]_INST_0 
       (.I0(\st_out[7]_INST_0_i_1_n_0 ),
        .I1(\st_out[7]_INST_0_i_2_n_0 ),
        .I2(ab_whole),
        .I3(nb_valid[3]),
        .I4(\st_out[7]_INST_0_i_3_n_0 ),
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
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \st_out[7]_INST_0_i_2 
       (.I0(stage[2]),
        .I1(stage[1]),
        .I2(stage[0]),
        .O(\st_out[7]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
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
        .I3(\st_out[14]_INST_0_i_3_n_0 ),
        .I4(\st_out[8]_INST_0_i_1_n_0 ),
        .I5(\st_out[8]_INST_0_i_2_n_0 ),
        .O(st_out[8]));
  LUT6 #(
    .INIT(64'hFFBF33B3CC8C0080)) 
    \st_out[8]_INST_0_i_1 
       (.I0(st_in[6]),
        .I1(\st_out[8]_INST_0_i_3_n_0 ),
        .I2(\st_out[3]_INST_0_i_1_n_0 ),
        .I3(\st_out[5]_INST_0_i_1_n_0 ),
        .I4(\st_out[8]_INST_0_i_4_n_0 ),
        .I5(\st_out[8]_INST_0_i_5_n_0 ),
        .O(\st_out[8]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAA0000C0AAAAAAAA)) 
    \st_out[8]_INST_0_i_2 
       (.I0(st_in[8]),
        .I1(nb_valid[3]),
        .I2(ab_active),
        .I3(stage[2]),
        .I4(stage[1]),
        .I5(stage[0]),
        .O(\st_out[8]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h3333333322227773)) 
    \st_out[8]_INST_0_i_3 
       (.I0(\st_out[14]_INST_0_i_4_n_0 ),
        .I1(st_in[4]),
        .I2(\st_out[13]_INST_0_i_4_n_0 ),
        .I3(\st_out[13]_INST_0_i_5_n_0 ),
        .I4(\st_out[8]_INST_0_i_6_n_0 ),
        .I5(\st_out[12]_INST_0_i_1_n_0 ),
        .O(\st_out[8]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAEAEAEFEA2A2A202)) 
    \st_out[8]_INST_0_i_4 
       (.I0(nb_active[3]),
        .I1(st_in[3]),
        .I2(\st_out[2]_INST_0_i_2_n_0 ),
        .I3(\st_out[10]_INST_0_i_6_n_0 ),
        .I4(\st_out[3]_INST_0_i_3_n_0 ),
        .I5(nb_active[0]),
        .O(\st_out[8]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAEAEAEFEA2A2A202)) 
    \st_out[8]_INST_0_i_5 
       (.I0(nb_active[1]),
        .I1(st_in[3]),
        .I2(\st_out[2]_INST_0_i_2_n_0 ),
        .I3(\st_out[10]_INST_0_i_6_n_0 ),
        .I4(\st_out[3]_INST_0_i_3_n_0 ),
        .I5(nb_active[2]),
        .O(\st_out[8]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hA8AAA8AAA8AAA8A8)) 
    \st_out[8]_INST_0_i_6 
       (.I0(\st_out[14]_INST_0_i_9_n_0 ),
        .I1(\st_out[13]_INST_0_i_10_n_0 ),
        .I2(\st_out[13]_INST_0_i_11_n_0 ),
        .I3(\st_out[13]_INST_0_i_12_n_0 ),
        .I4(\st_out[13]_INST_0_i_13_n_0 ),
        .I5(\st_out[13]_INST_0_i_14_n_0 ),
        .O(\st_out[8]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFE000E0E0)) 
    \st_out[9]_INST_0 
       (.I0(\st_out[12]_INST_0_i_1_n_0 ),
        .I1(\st_out[9]_INST_0_i_1_n_0 ),
        .I2(\st_out[14]_INST_0_i_3_n_0 ),
        .I3(m_pass[0]),
        .I4(m_pass[1]),
        .I5(\st_out[9]_INST_0_i_2_n_0 ),
        .O(st_out[9]));
  LUT6 #(
    .INIT(64'hF4FFF4FFF4FFF400)) 
    \st_out[9]_INST_0_i_1 
       (.I0(\st_out[9]_INST_0_i_3_n_0 ),
        .I1(nb_cid[15]),
        .I2(\st_out[9]_INST_0_i_4_n_0 ),
        .I3(\st_out[13]_INST_0_i_4_n_0 ),
        .I4(st_in[9]),
        .I5(\st_out[13]_INST_0_i_5_n_0 ),
        .O(\st_out[9]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFDCD050D0)) 
    \st_out[9]_INST_0_i_2 
       (.I0(\st_out[12]_INST_0_i_6_n_0 ),
        .I1(\st_out[7]_INST_0_i_2_n_0 ),
        .I2(st_in[9]),
        .I3(nb_valid[3]),
        .I4(ab_cid[0]),
        .I5(\st_out[11]_INST_0_i_2_n_0 ),
        .O(\st_out[9]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEAAAAAAAFFFFFFFF)) 
    \st_out[9]_INST_0_i_3 
       (.I0(\st_out[12]_INST_0_i_7_n_0 ),
        .I1(nb_cid[16]),
        .I2(nb_cid[18]),
        .I3(nb_cid[19]),
        .I4(nb_cid[17]),
        .I5(\st_out[13]_INST_0_i_7_n_0 ),
        .O(\st_out[9]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT4 #(
    .INIT(16'h00D1)) 
    \st_out[9]_INST_0_i_4 
       (.I0(\st_out[9]_INST_0_i_5_n_0 ),
        .I1(\st_out[14]_INST_0_i_11_n_0 ),
        .I2(nb_cid[10]),
        .I3(\st_out[10]_INST_0_i_6_n_0 ),
        .O(\st_out[9]_INST_0_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h47444777)) 
    \st_out[9]_INST_0_i_5 
       (.I0(nb_cid[5]),
        .I1(\st_out[14]_INST_0_i_10_n_0 ),
        .I2(nb_cid[0]),
        .I3(\st_out[14]_INST_0_i_8_n_0 ),
        .I4(st_in[9]),
        .O(\st_out[9]_INST_0_i_5_n_0 ));
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
  wire p_is_bot;
  wire [14:0]st_in;
  wire [14:0]st_out;
  wire \st_out[0]_INST_0_i_1_n_0 ;
  wire \st_out[0]_INST_0_i_2_n_0 ;
  wire \st_out[10]_INST_0_i_1_n_0 ;
  wire \st_out[10]_INST_0_i_2_n_0 ;
  wire \st_out[11]_INST_0_i_1_n_0 ;
  wire \st_out[11]_INST_0_i_2_n_0 ;
  wire \st_out[11]_INST_0_i_3_n_0 ;
  wire \st_out[11]_INST_0_i_4_n_0 ;
  wire \st_out[11]_INST_0_i_5_n_0 ;
  wire \st_out[11]_INST_0_i_6_n_0 ;
  wire \st_out[11]_INST_0_i_7_n_0 ;
  wire \st_out[11]_INST_0_i_8_n_0 ;
  wire \st_out[11]_INST_0_i_9_n_0 ;
  wire \st_out[12]_INST_0_i_1_n_0 ;
  wire \st_out[12]_INST_0_i_2_n_0 ;
  wire \st_out[12]_INST_0_i_3_n_0 ;
  wire \st_out[12]_INST_0_i_4_n_0 ;
  wire \st_out[12]_INST_0_i_5_n_0 ;
  wire \st_out[12]_INST_0_i_6_n_0 ;
  wire \st_out[12]_INST_0_i_7_n_0 ;
  wire \st_out[12]_INST_0_i_8_n_0 ;
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
  wire \st_out[2]_INST_0_i_1_n_0 ;
  wire \st_out[2]_INST_0_i_2_n_0 ;
  wire \st_out[2]_INST_0_i_3_n_0 ;
  wire \st_out[3]_INST_0_i_1_n_0 ;
  wire \st_out[3]_INST_0_i_2_n_0 ;
  wire \st_out[4]_INST_0_i_1_n_0 ;
  wire \st_out[4]_INST_0_i_2_n_0 ;
  wire \st_out[4]_INST_0_i_3_n_0 ;
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
  wire \st_out[9]_INST_0_i_1_n_0 ;
  wire \st_out[9]_INST_0_i_2_n_0 ;
  wire \st_out[9]_INST_0_i_3_n_0 ;
  wire \st_out[9]_INST_0_i_4_n_0 ;
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
    .INIT(64'h8888A8AAA8AA8888)) 
    \st_out[0]_INST_0 
       (.I0(\st_out[11]_INST_0_i_3_n_0 ),
        .I1(\st_out[0]_INST_0_i_1_n_0 ),
        .I2(m_pass[1]),
        .I3(m_pass[0]),
        .I4(\st_out[8]_INST_0_i_1_n_0 ),
        .I5(st_in[8]),
        .O(st_out[0]));
  LUT6 #(
    .INIT(64'hFF00FF00FFFFFFD0)) 
    \st_out[0]_INST_0_i_1 
       (.I0(\st_out[11]_INST_0_i_7_n_0 ),
        .I1(\st_out[0]_INST_0_i_2_n_0 ),
        .I2(e_grown[0]),
        .I3(\st_out[6]_INST_0_i_2_n_0 ),
        .I4(\st_out[11]_INST_0_i_1_n_0 ),
        .I5(\st_out[11]_INST_0_i_2_n_0 ),
        .O(\st_out[0]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00002000FFFFFFFF)) 
    \st_out[0]_INST_0_i_2 
       (.I0(nb_grown[0]),
        .I1(st_in[2]),
        .I2(stage[1]),
        .I3(stage[0]),
        .I4(stage[2]),
        .I5(\st_out[13]_INST_0_i_5_n_0 ),
        .O(\st_out[0]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF54545410)) 
    \st_out[10]_INST_0 
       (.I0(\st_out[13]_INST_0_i_2_n_0 ),
        .I1(\st_out[13]_INST_0_i_3_n_0 ),
        .I2(nb_cid[1]),
        .I3(st_in[10]),
        .I4(\st_out[13]_INST_0_i_1_n_0 ),
        .I5(\st_out[10]_INST_0_i_1_n_0 ),
        .O(st_out[10]));
  LUT6 #(
    .INIT(64'hFFFFFFFF45554500)) 
    \st_out[10]_INST_0_i_1 
       (.I0(\st_out[12]_INST_0_i_3_n_0 ),
        .I1(\st_out[12]_INST_0_i_8_n_0 ),
        .I2(ab_cid[1]),
        .I3(p_is_bot),
        .I4(st_in[10]),
        .I5(\st_out[10]_INST_0_i_2_n_0 ),
        .O(\st_out[10]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFCFCF0F000A0000)) 
    \st_out[10]_INST_0_i_2 
       (.I0(\st_out[9]_INST_0_i_4_n_0 ),
        .I1(\st_out[11]_INST_0_i_2_n_0 ),
        .I2(stage[0]),
        .I3(stage[2]),
        .I4(stage[1]),
        .I5(st_in[10]),
        .O(\st_out[10]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF0B000000)) 
    \st_out[11]_INST_0 
       (.I0(p_is_bot),
        .I1(\st_out[11]_INST_0_i_1_n_0 ),
        .I2(\st_out[11]_INST_0_i_2_n_0 ),
        .I3(\st_out[11]_INST_0_i_3_n_0 ),
        .I4(\st_out[11]_INST_0_i_4_n_0 ),
        .I5(\st_out[11]_INST_0_i_5_n_0 ),
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
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \st_out[11]_INST_0_i_2 
       (.I0(m_pass[1]),
        .I1(m_pass[0]),
        .O(\st_out[11]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \st_out[11]_INST_0_i_3 
       (.I0(stage[0]),
        .I1(stage[2]),
        .I2(stage[1]),
        .O(\st_out[11]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFBFBFB0A)) 
    \st_out[11]_INST_0_i_4 
       (.I0(\st_out[11]_INST_0_i_6_n_0 ),
        .I1(e_grown[0]),
        .I2(\st_out[11]_INST_0_i_7_n_0 ),
        .I3(\st_out[13]_INST_0_i_1_n_0 ),
        .I4(st_in[11]),
        .I5(\st_out[11]_INST_0_i_1_n_0 ),
        .O(\st_out[11]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF4540FF40)) 
    \st_out[11]_INST_0_i_5 
       (.I0(\st_out[12]_INST_0_i_3_n_0 ),
        .I1(\st_out[11]_INST_0_i_8_n_0 ),
        .I2(p_is_bot),
        .I3(st_in[11]),
        .I4(\st_out[11]_INST_0_i_9_n_0 ),
        .I5(\st_out[12]_INST_0_i_4_n_0 ),
        .O(\st_out[11]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h70F0F0F000000000)) 
    \st_out[11]_INST_0_i_6 
       (.I0(nb_cid[3]),
        .I1(nb_cid[4]),
        .I2(nb_cid[2]),
        .I3(nb_cid[0]),
        .I4(nb_cid[1]),
        .I5(e_grown[0]),
        .O(\st_out[11]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h4F044F044F04FF0F)) 
    \st_out[11]_INST_0_i_7 
       (.I0(st_in[12]),
        .I1(nb_cid[3]),
        .I2(st_in[13]),
        .I3(nb_cid[4]),
        .I4(\st_out[13]_INST_0_i_7_n_0 ),
        .I5(\st_out[13]_INST_0_i_6_n_0 ),
        .O(\st_out[11]_INST_0_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT5 #(
    .INIT(32'h80FFFF00)) 
    \st_out[11]_INST_0_i_8 
       (.I0(ab_cid[4]),
        .I1(ab_cid[3]),
        .I2(ab_cid[0]),
        .I3(ab_cid[2]),
        .I4(ab_cid[1]),
        .O(\st_out[11]_INST_0_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT5 #(
    .INIT(32'h00D0D0F0)) 
    \st_out[11]_INST_0_i_9 
       (.I0(m_pass[1]),
        .I1(m_pass[0]),
        .I2(stage[0]),
        .I3(stage[2]),
        .I4(stage[1]),
        .O(\st_out[11]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFAEFFFFFFAEFFAE)) 
    \st_out[12]_INST_0 
       (.I0(\st_out[12]_INST_0_i_1_n_0 ),
        .I1(\st_out[12]_INST_0_i_2_n_0 ),
        .I2(\st_out[12]_INST_0_i_3_n_0 ),
        .I3(\st_out[12]_INST_0_i_4_n_0 ),
        .I4(\st_out[12]_INST_0_i_5_n_0 ),
        .I5(st_in[12]),
        .O(st_out[12]));
  LUT6 #(
    .INIT(64'h00000000FFFF3011)) 
    \st_out[12]_INST_0_i_1 
       (.I0(\st_out[12]_INST_0_i_6_n_0 ),
        .I1(\st_out[11]_INST_0_i_2_n_0 ),
        .I2(\st_out[13]_INST_0_i_1_n_0 ),
        .I3(\st_out[13]_INST_0_i_3_n_0 ),
        .I4(st_in[12]),
        .I5(\st_out[12]_INST_0_i_7_n_0 ),
        .O(\st_out[12]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBFEAFFFFBFEA0000)) 
    \st_out[12]_INST_0_i_2 
       (.I0(\st_out[12]_INST_0_i_8_n_0 ),
        .I1(ab_cid[1]),
        .I2(ab_cid[2]),
        .I3(ab_cid[3]),
        .I4(p_is_bot),
        .I5(st_in[12]),
        .O(\st_out[12]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'hFD)) 
    \st_out[12]_INST_0_i_3 
       (.I0(stage[0]),
        .I1(stage[2]),
        .I2(stage[1]),
        .O(\st_out[12]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \st_out[12]_INST_0_i_4 
       (.I0(stage[0]),
        .I1(stage[2]),
        .I2(stage[1]),
        .I3(\st_out[9]_INST_0_i_4_n_0 ),
        .O(\st_out[12]_INST_0_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \st_out[12]_INST_0_i_5 
       (.I0(stage[0]),
        .I1(stage[2]),
        .I2(stage[1]),
        .O(\st_out[12]_INST_0_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \st_out[12]_INST_0_i_6 
       (.I0(nb_cid[1]),
        .I1(nb_cid[0]),
        .I2(nb_cid[2]),
        .I3(nb_cid[4]),
        .O(\st_out[12]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFF1F0F0FFF1FFF1F)) 
    \st_out[12]_INST_0_i_7 
       (.I0(\st_out[13]_INST_0_i_3_n_0 ),
        .I1(nb_cid[3]),
        .I2(\st_out[11]_INST_0_i_3_n_0 ),
        .I3(\st_out[11]_INST_0_i_1_n_0 ),
        .I4(m_pass[0]),
        .I5(m_pass[1]),
        .O(\st_out[12]_INST_0_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \st_out[12]_INST_0_i_8 
       (.I0(ab_cid[0]),
        .I1(ab_cid[3]),
        .I2(ab_cid[2]),
        .I3(ab_cid[1]),
        .I4(ab_cid[4]),
        .O(\st_out[12]_INST_0_i_8_n_0 ));
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
        .I1(\st_out[13]_INST_0_i_5_n_0 ),
        .O(\st_out[13]_INST_0_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \st_out[13]_INST_0_i_10 
       (.I0(ab_cid[3]),
        .I1(ab_cid[2]),
        .I2(ab_cid[1]),
        .O(\st_out[13]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFAEAEFFFFFFFFFF)) 
    \st_out[13]_INST_0_i_2 
       (.I0(\st_out[11]_INST_0_i_1_n_0 ),
        .I1(m_pass[1]),
        .I2(m_pass[0]),
        .I3(stage[1]),
        .I4(stage[2]),
        .I5(stage[0]),
        .O(\st_out[13]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF100F1F1FFFFFFFF)) 
    \st_out[13]_INST_0_i_3 
       (.I0(\st_out[13]_INST_0_i_6_n_0 ),
        .I1(\st_out[13]_INST_0_i_7_n_0 ),
        .I2(\st_out[13]_INST_0_i_8_n_0 ),
        .I3(nb_cid[4]),
        .I4(st_in[13]),
        .I5(e_grown[0]),
        .O(\st_out[13]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hEAAAFFFFEAAAFFAA)) 
    \st_out[13]_INST_0_i_4 
       (.I0(\st_out[13]_INST_0_i_9_n_0 ),
        .I1(\st_out[11]_INST_0_i_2_n_0 ),
        .I2(\st_out[11]_INST_0_i_3_n_0 ),
        .I3(st_in[13]),
        .I4(\st_out[12]_INST_0_i_5_n_0 ),
        .I5(\st_out[12]_INST_0_i_4_n_0 ),
        .O(\st_out[13]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF7FFFFFFF)) 
    \st_out[13]_INST_0_i_5 
       (.I0(nb_cid[3]),
        .I1(nb_cid[4]),
        .I2(nb_cid[2]),
        .I3(nb_cid[1]),
        .I4(nb_cid[0]),
        .I5(st_in[1]),
        .O(\st_out[13]_INST_0_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \st_out[13]_INST_0_i_6 
       (.I0(nb_cid[3]),
        .I1(st_in[12]),
        .I2(nb_cid[2]),
        .I3(st_in[11]),
        .O(\st_out[13]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h2202FF0F00002202)) 
    \st_out[13]_INST_0_i_7 
       (.I0(st_in[9]),
        .I1(nb_cid[0]),
        .I2(nb_cid[2]),
        .I3(st_in[11]),
        .I4(nb_cid[1]),
        .I5(st_in[10]),
        .O(\st_out[13]_INST_0_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \st_out[13]_INST_0_i_8 
       (.I0(st_in[12]),
        .I1(nb_cid[3]),
        .I2(st_in[13]),
        .I3(nb_cid[4]),
        .O(\st_out[13]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h5454540404545404)) 
    \st_out[13]_INST_0_i_9 
       (.I0(\st_out[12]_INST_0_i_3_n_0 ),
        .I1(st_in[13]),
        .I2(p_is_bot),
        .I3(ab_cid[4]),
        .I4(\st_out[13]_INST_0_i_10_n_0 ),
        .I5(ab_cid[0]),
        .O(\st_out[13]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAAAA08AA08AAAAAA)) 
    \st_out[14]_INST_0 
       (.I0(st_in[14]),
        .I1(m_pass[1]),
        .I2(m_pass[0]),
        .I3(stage[0]),
        .I4(stage[2]),
        .I5(stage[1]),
        .O(st_out[14]));
  LUT6 #(
    .INIT(64'hAA82AA82AEC2AA82)) 
    \st_out[1]_INST_0 
       (.I0(st_in[1]),
        .I1(stage[0]),
        .I2(stage[2]),
        .I3(stage[1]),
        .I4(\st_out[11]_INST_0_i_1_n_0 ),
        .I5(\st_out[11]_INST_0_i_2_n_0 ),
        .O(st_out[1]));
  LUT6 #(
    .INIT(64'hFFFFFFFF00E0E000)) 
    \st_out[2]_INST_0 
       (.I0(st_in[2]),
        .I1(\st_out[2]_INST_0_i_1_n_0 ),
        .I2(stage[0]),
        .I3(stage[2]),
        .I4(stage[1]),
        .I5(\st_out[2]_INST_0_i_2_n_0 ),
        .O(st_out[2]));
  LUT6 #(
    .INIT(64'h0000000088080000)) 
    \st_out[2]_INST_0_i_1 
       (.I0(\st_out[13]_INST_0_i_5_n_0 ),
        .I1(\st_out[2]_INST_0_i_3_n_0 ),
        .I2(m_pass[1]),
        .I3(m_pass[0]),
        .I4(e_grown[0]),
        .I5(\st_out[11]_INST_0_i_1_n_0 ),
        .O(\st_out[2]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hD5D5D5D510000000)) 
    \st_out[2]_INST_0_i_2 
       (.I0(stage[0]),
        .I1(stage[2]),
        .I2(stage[1]),
        .I3(st_in[8]),
        .I4(st_in[7]),
        .I5(st_in[2]),
        .O(\st_out[2]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT5 #(
    .INIT(32'h00400000)) 
    \st_out[2]_INST_0_i_3 
       (.I0(stage[2]),
        .I1(stage[0]),
        .I2(stage[1]),
        .I3(st_in[2]),
        .I4(nb_grown[0]),
        .O(\st_out[2]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF44F4)) 
    \st_out[3]_INST_0 
       (.I0(\st_out[3]_INST_0_i_1_n_0 ),
        .I1(\st_out[11]_INST_0_i_3_n_0 ),
        .I2(st_in[3]),
        .I3(\st_out[4]_INST_0_i_3_n_0 ),
        .I4(\st_out[3]_INST_0_i_2_n_0 ),
        .O(st_out[3]));
  LUT6 #(
    .INIT(64'h08080008FAFAFFFA)) 
    \st_out[3]_INST_0_i_1 
       (.I0(\st_out[13]_INST_0_i_3_n_0 ),
        .I1(\st_out[13]_INST_0_i_1_n_0 ),
        .I2(\st_out[11]_INST_0_i_1_n_0 ),
        .I3(m_pass[1]),
        .I4(m_pass[0]),
        .I5(st_in[3]),
        .O(\st_out[3]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000E200000000)) 
    \st_out[3]_INST_0_i_2 
       (.I0(st_in[3]),
        .I1(p_is_bot),
        .I2(ab_ptr[0]),
        .I3(stage[1]),
        .I4(stage[2]),
        .I5(stage[0]),
        .O(\st_out[3]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hF4F4FFF4)) 
    \st_out[4]_INST_0 
       (.I0(\st_out[4]_INST_0_i_1_n_0 ),
        .I1(\st_out[11]_INST_0_i_3_n_0 ),
        .I2(\st_out[4]_INST_0_i_2_n_0 ),
        .I3(st_in[4]),
        .I4(\st_out[4]_INST_0_i_3_n_0 ),
        .O(st_out[4]));
  LUT6 #(
    .INIT(64'h33031101FFFFFFFF)) 
    \st_out[4]_INST_0_i_1 
       (.I0(\st_out[13]_INST_0_i_3_n_0 ),
        .I1(\st_out[11]_INST_0_i_1_n_0 ),
        .I2(m_pass[1]),
        .I3(m_pass[0]),
        .I4(\st_out[13]_INST_0_i_1_n_0 ),
        .I5(st_in[4]),
        .O(\st_out[4]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000E200000000)) 
    \st_out[4]_INST_0_i_2 
       (.I0(st_in[4]),
        .I1(p_is_bot),
        .I2(ab_ptr[1]),
        .I3(stage[1]),
        .I4(stage[2]),
        .I5(stage[0]),
        .O(\st_out[4]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT4 #(
    .INIT(16'h7720)) 
    \st_out[4]_INST_0_i_3 
       (.I0(stage[1]),
        .I1(stage[2]),
        .I2(\st_out[9]_INST_0_i_4_n_0 ),
        .I3(stage[0]),
        .O(\st_out[4]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
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
    .INIT(64'h33031101FFFFFFFF)) 
    \st_out[5]_INST_0_i_1 
       (.I0(\st_out[13]_INST_0_i_3_n_0 ),
        .I1(\st_out[11]_INST_0_i_1_n_0 ),
        .I2(m_pass[1]),
        .I3(m_pass[0]),
        .I4(\st_out[13]_INST_0_i_1_n_0 ),
        .I5(st_in[5]),
        .O(\st_out[5]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h83AA82AA80AA82AA)) 
    \st_out[5]_INST_0_i_2 
       (.I0(st_in[5]),
        .I1(stage[1]),
        .I2(stage[2]),
        .I3(stage[0]),
        .I4(p_is_bot),
        .I5(ab_ptr[2]),
        .O(\st_out[5]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h37403740FFFF3740)) 
    \st_out[6]_INST_0 
       (.I0(\st_out[6]_INST_0_i_1_n_0 ),
        .I1(\st_out[12]_INST_0_i_5_n_0 ),
        .I2(\st_out[6]_INST_0_i_2_n_0 ),
        .I3(st_in[6]),
        .I4(ab_defect),
        .I5(\st_out[6]_INST_0_i_3_n_0 ),
        .O(st_out[6]));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \st_out[6]_INST_0_i_1 
       (.I0(stage[1]),
        .I1(stage[2]),
        .O(\st_out[6]_INST_0_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h8A)) 
    \st_out[6]_INST_0_i_2 
       (.I0(nb_push[0]),
        .I1(m_pass[1]),
        .I2(m_pass[0]),
        .O(\st_out[6]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT4 #(
    .INIT(16'hEFFF)) 
    \st_out[6]_INST_0_i_3 
       (.I0(stage[1]),
        .I1(stage[2]),
        .I2(stage[0]),
        .I3(p_is_bot),
        .O(\st_out[6]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFAAAAFEAE)) 
    \st_out[7]_INST_0 
       (.I0(\st_out[7]_INST_0_i_1_n_0 ),
        .I1(st_in[7]),
        .I2(p_is_bot),
        .I3(ab_whole),
        .I4(\st_out[12]_INST_0_i_3_n_0 ),
        .I5(\st_out[7]_INST_0_i_2_n_0 ),
        .O(st_out[7]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
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
    .INIT(64'hFFFFFFFFAA8A0080)) 
    \st_out[8]_INST_0 
       (.I0(\st_out[11]_INST_0_i_3_n_0 ),
        .I1(st_in[8]),
        .I2(m_pass[0]),
        .I3(m_pass[1]),
        .I4(\st_out[8]_INST_0_i_1_n_0 ),
        .I5(\st_out[8]_INST_0_i_2_n_0 ),
        .O(st_out[8]));
  LUT6 #(
    .INIT(64'h0C08FCFF0C080C00)) 
    \st_out[8]_INST_0_i_1 
       (.I0(st_in[5]),
        .I1(nb_active[2]),
        .I2(\st_out[8]_INST_0_i_3_n_0 ),
        .I3(st_in[4]),
        .I4(\st_out[3]_INST_0_i_1_n_0 ),
        .I5(nb_active[0]),
        .O(\st_out[8]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h83AA80AA80AA80AA)) 
    \st_out[8]_INST_0_i_2 
       (.I0(st_in[8]),
        .I1(stage[1]),
        .I2(stage[2]),
        .I3(stage[0]),
        .I4(p_is_bot),
        .I5(ab_active),
        .O(\st_out[8]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT5 #(
    .INIT(32'h008A00CF)) 
    \st_out[8]_INST_0_i_3 
       (.I0(\st_out[13]_INST_0_i_1_n_0 ),
        .I1(m_pass[0]),
        .I2(m_pass[1]),
        .I3(\st_out[11]_INST_0_i_1_n_0 ),
        .I4(\st_out[13]_INST_0_i_3_n_0 ),
        .O(\st_out[8]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFF4FFF4FFF4F4F4)) 
    \st_out[9]_INST_0 
       (.I0(\st_out[9]_INST_0_i_1_n_0 ),
        .I1(\st_out[11]_INST_0_i_3_n_0 ),
        .I2(\st_out[9]_INST_0_i_2_n_0 ),
        .I3(\st_out[9]_INST_0_i_3_n_0 ),
        .I4(\st_out[9]_INST_0_i_4_n_0 ),
        .I5(st_in[9]),
        .O(st_out[9]));
  LUT6 #(
    .INIT(64'h0000AAAA0101ABFB)) 
    \st_out[9]_INST_0_i_1 
       (.I0(\st_out[11]_INST_0_i_2_n_0 ),
        .I1(nb_cid[0]),
        .I2(\st_out[13]_INST_0_i_3_n_0 ),
        .I3(\st_out[13]_INST_0_i_1_n_0 ),
        .I4(st_in[9]),
        .I5(\st_out[11]_INST_0_i_1_n_0 ),
        .O(\st_out[9]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hC7C5C7C702000000)) 
    \st_out[9]_INST_0_i_2 
       (.I0(stage[0]),
        .I1(stage[2]),
        .I2(stage[1]),
        .I3(ab_cid[0]),
        .I4(p_is_bot),
        .I5(st_in[9]),
        .O(\st_out[9]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \st_out[9]_INST_0_i_3 
       (.I0(stage[1]),
        .I1(stage[2]),
        .I2(stage[0]),
        .O(\st_out[9]_INST_0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \st_out[9]_INST_0_i_4 
       (.I0(st_in[3]),
        .I1(p_is_bot),
        .I2(st_in[4]),
        .I3(st_in[5]),
        .O(\st_out[9]_INST_0_i_4_n_0 ));
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
  wire [14:0]st_in;
  wire [14:0]st_out;
  wire \st_out[0]_INST_0_i_1_n_0 ;
  wire \st_out[0]_INST_0_i_2_n_0 ;
  wire \st_out[0]_INST_0_i_3_n_0 ;
  wire \st_out[10]_INST_0_i_1_n_0 ;
  wire \st_out[10]_INST_0_i_2_n_0 ;
  wire \st_out[10]_INST_0_i_3_n_0 ;
  wire \st_out[10]_INST_0_i_4_n_0 ;
  wire \st_out[11]_INST_0_i_1_n_0 ;
  wire \st_out[11]_INST_0_i_2_n_0 ;
  wire \st_out[12]_INST_0_i_10_n_0 ;
  wire \st_out[12]_INST_0_i_11_n_0 ;
  wire \st_out[12]_INST_0_i_1_n_0 ;
  wire \st_out[12]_INST_0_i_2_n_0 ;
  wire \st_out[12]_INST_0_i_3_n_0 ;
  wire \st_out[12]_INST_0_i_4_n_0 ;
  wire \st_out[12]_INST_0_i_5_n_0 ;
  wire \st_out[12]_INST_0_i_6_n_0 ;
  wire \st_out[12]_INST_0_i_7_n_0 ;
  wire \st_out[12]_INST_0_i_8_n_0 ;
  wire \st_out[12]_INST_0_i_9_n_0 ;
  wire \st_out[13]_INST_0_i_1_n_0 ;
  wire \st_out[13]_INST_0_i_2_n_0 ;
  wire \st_out[13]_INST_0_i_3_n_0 ;
  wire \st_out[13]_INST_0_i_4_n_0 ;
  wire \st_out[14]_INST_0_i_1_n_0 ;
  wire \st_out[14]_INST_0_i_2_n_0 ;
  wire \st_out[14]_INST_0_i_3_n_0 ;
  wire \st_out[14]_INST_0_i_4_n_0 ;
  wire \st_out[14]_INST_0_i_5_n_0 ;
  wire \st_out[14]_INST_0_i_6_n_0 ;
  wire \st_out[1]_INST_0_i_1_n_0 ;
  wire \st_out[1]_INST_0_i_2_n_0 ;
  wire \st_out[2]_INST_0_i_1_n_0 ;
  wire \st_out[2]_INST_0_i_2_n_0 ;
  wire \st_out[2]_INST_0_i_3_n_0 ;
  wire \st_out[2]_INST_0_i_4_n_0 ;
  wire \st_out[4]_INST_0_i_1_n_0 ;
  wire \st_out[5]_INST_0_i_1_n_0 ;
  wire \st_out[6]_INST_0_i_1_n_0 ;
  wire \st_out[6]_INST_0_i_2_n_0 ;
  wire \st_out[7]_INST_0_i_1_n_0 ;
  wire \st_out[7]_INST_0_i_2_n_0 ;
  wire \st_out[8]_INST_0_i_1_n_0 ;
  wire \st_out[8]_INST_0_i_2_n_0 ;
  wire \st_out[8]_INST_0_i_3_n_0 ;
  wire \st_out[8]_INST_0_i_4_n_0 ;
  wire \st_out[9]_INST_0_i_1_n_0 ;
  wire \st_out[9]_INST_0_i_2_n_0 ;
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
    .INIT(64'h0000F600F600F600)) 
    \st_out[0]_INST_0 
       (.I0(st_in[8]),
        .I1(\st_out[8]_INST_0_i_1_n_0 ),
        .I2(\st_out[0]_INST_0_i_1_n_0 ),
        .I3(\st_out[14]_INST_0_i_1_n_0 ),
        .I4(\st_out[0]_INST_0_i_2_n_0 ),
        .I5(\st_out[0]_INST_0_i_3_n_0 ),
        .O(st_out[0]));
  LUT6 #(
    .INIT(64'hFFBABABAFFFBFBFB)) 
    \st_out[0]_INST_0_i_1 
       (.I0(\st_out[14]_INST_0_i_2_n_0 ),
        .I1(m_pass[1]),
        .I2(m_pass[0]),
        .I3(nb_push[1]),
        .I4(nb_valid[1]),
        .I5(\st_out[0]_INST_0_i_3_n_0 ),
        .O(\st_out[0]_INST_0_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \st_out[0]_INST_0_i_2 
       (.I0(m_pass[0]),
        .I1(m_pass[1]),
        .O(\st_out[0]_INST_0_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h0002)) 
    \st_out[0]_INST_0_i_3 
       (.I0(\st_out[14]_INST_0_i_4_n_0 ),
        .I1(\st_out[1]_INST_0_i_2_n_0 ),
        .I2(\st_out[2]_INST_0_i_2_n_0 ),
        .I3(\st_out[14]_INST_0_i_3_n_0 ),
        .O(\st_out[0]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAEEEAEEEFFFFAEEE)) 
    \st_out[10]_INST_0 
       (.I0(\st_out[10]_INST_0_i_1_n_0 ),
        .I1(\st_out[10]_INST_0_i_2_n_0 ),
        .I2(\st_out[10]_INST_0_i_3_n_0 ),
        .I3(ab_cid[1]),
        .I4(st_in[10]),
        .I5(\st_out[12]_INST_0_i_4_n_0 ),
        .O(st_out[10]));
  LUT6 #(
    .INIT(64'h8A808080AAAAAAAA)) 
    \st_out[10]_INST_0_i_1 
       (.I0(\st_out[14]_INST_0_i_1_n_0 ),
        .I1(st_in[10]),
        .I2(\st_out[1]_INST_0_i_1_n_0 ),
        .I3(\st_out[1]_INST_0_i_2_n_0 ),
        .I4(nb_valid[1]),
        .I5(\st_out[10]_INST_0_i_4_n_0 ),
        .O(\st_out[10]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT4 #(
    .INIT(16'h0200)) 
    \st_out[10]_INST_0_i_2 
       (.I0(stage[0]),
        .I1(stage[1]),
        .I2(stage[2]),
        .I3(nb_valid[1]),
        .O(\st_out[10]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \st_out[10]_INST_0_i_3 
       (.I0(ab_cid[3]),
        .I1(ab_cid[2]),
        .I2(ab_cid[1]),
        .I3(ab_cid[4]),
        .I4(ab_cid[0]),
        .O(\st_out[10]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h1F1F0FFF)) 
    \st_out[10]_INST_0_i_4 
       (.I0(\st_out[14]_INST_0_i_3_n_0 ),
        .I1(st_in[10]),
        .I2(\st_out[2]_INST_0_i_1_n_0 ),
        .I3(nb_cid[6]),
        .I4(\st_out[14]_INST_0_i_4_n_0 ),
        .O(\st_out[10]_INST_0_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF44F4)) 
    \st_out[11]_INST_0 
       (.I0(\st_out[11]_INST_0_i_1_n_0 ),
        .I1(\st_out[14]_INST_0_i_1_n_0 ),
        .I2(st_in[11]),
        .I3(\st_out[12]_INST_0_i_4_n_0 ),
        .I4(\st_out[11]_INST_0_i_2_n_0 ),
        .O(st_out[11]));
  LUT6 #(
    .INIT(64'h015503FF0155CFFF)) 
    \st_out[11]_INST_0_i_1 
       (.I0(\st_out[1]_INST_0_i_1_n_0 ),
        .I1(\st_out[14]_INST_0_i_4_n_0 ),
        .I2(nb_cid[7]),
        .I3(\st_out[2]_INST_0_i_1_n_0 ),
        .I4(st_in[11]),
        .I5(\st_out[14]_INST_0_i_3_n_0 ),
        .O(\st_out[11]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA828282828282828)) 
    \st_out[11]_INST_0_i_2 
       (.I0(\st_out[10]_INST_0_i_2_n_0 ),
        .I1(ab_cid[1]),
        .I2(ab_cid[2]),
        .I3(ab_cid[3]),
        .I4(ab_cid[4]),
        .I5(ab_cid[0]),
        .O(\st_out[11]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFC0FF80FFFFFF80)) 
    \st_out[12]_INST_0 
       (.I0(\st_out[12]_INST_0_i_1_n_0 ),
        .I1(\st_out[14]_INST_0_i_1_n_0 ),
        .I2(\st_out[12]_INST_0_i_2_n_0 ),
        .I3(\st_out[12]_INST_0_i_3_n_0 ),
        .I4(st_in[12]),
        .I5(\st_out[12]_INST_0_i_4_n_0 ),
        .O(st_out[12]));
  LUT6 #(
    .INIT(64'h4CCC4CCC4CCC4C4C)) 
    \st_out[12]_INST_0_i_1 
       (.I0(\st_out[2]_INST_0_i_3_n_0 ),
        .I1(\st_out[12]_INST_0_i_5_n_0 ),
        .I2(\st_out[12]_INST_0_i_6_n_0 ),
        .I3(\st_out[12]_INST_0_i_7_n_0 ),
        .I4(\st_out[12]_INST_0_i_8_n_0 ),
        .I5(\st_out[12]_INST_0_i_9_n_0 ),
        .O(\st_out[12]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h5444444444444444)) 
    \st_out[12]_INST_0_i_10 
       (.I0(st_in[12]),
        .I1(\st_out[12]_INST_0_i_11_n_0 ),
        .I2(nb_cid[7]),
        .I3(nb_cid[9]),
        .I4(nb_cid[6]),
        .I5(nb_cid[5]),
        .O(\st_out[12]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h4F044F044F04FF0F)) 
    \st_out[12]_INST_0_i_11 
       (.I0(st_in[12]),
        .I1(nb_cid[8]),
        .I2(st_in[13]),
        .I3(nb_cid[9]),
        .I4(\st_out[12]_INST_0_i_8_n_0 ),
        .I5(\st_out[12]_INST_0_i_9_n_0 ),
        .O(\st_out[12]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hF8FFF8F888888888)) 
    \st_out[12]_INST_0_i_2 
       (.I0(st_in[12]),
        .I1(\st_out[1]_INST_0_i_1_n_0 ),
        .I2(\st_out[14]_INST_0_i_4_n_0 ),
        .I3(\st_out[12]_INST_0_i_10_n_0 ),
        .I4(nb_cid[8]),
        .I5(\st_out[2]_INST_0_i_1_n_0 ),
        .O(\st_out[12]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hA888288828882888)) 
    \st_out[12]_INST_0_i_3 
       (.I0(\st_out[10]_INST_0_i_2_n_0 ),
        .I1(ab_cid[3]),
        .I2(ab_cid[2]),
        .I3(ab_cid[1]),
        .I4(ab_cid[4]),
        .I5(ab_cid[0]),
        .O(\st_out[12]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT4 #(
    .INIT(16'h3E00)) 
    \st_out[12]_INST_0_i_4 
       (.I0(nb_valid[1]),
        .I1(stage[2]),
        .I2(stage[1]),
        .I3(stage[0]),
        .O(\st_out[12]_INST_0_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \st_out[12]_INST_0_i_5 
       (.I0(e_grown[1]),
        .I1(nb_valid[1]),
        .O(\st_out[12]_INST_0_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \st_out[12]_INST_0_i_6 
       (.I0(nb_cid[9]),
        .I1(st_in[13]),
        .O(\st_out[12]_INST_0_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    \st_out[12]_INST_0_i_7 
       (.I0(st_in[12]),
        .I1(nb_cid[8]),
        .I2(st_in[13]),
        .I3(nb_cid[9]),
        .O(\st_out[12]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h2202FF0F00002202)) 
    \st_out[12]_INST_0_i_8 
       (.I0(st_in[9]),
        .I1(nb_cid[5]),
        .I2(nb_cid[7]),
        .I3(st_in[11]),
        .I4(nb_cid[6]),
        .I5(st_in[10]),
        .O(\st_out[12]_INST_0_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \st_out[12]_INST_0_i_9 
       (.I0(nb_cid[8]),
        .I1(st_in[12]),
        .I2(nb_cid[7]),
        .I3(st_in[11]),
        .O(\st_out[12]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFF44444)) 
    \st_out[13]_INST_0 
       (.I0(\st_out[13]_INST_0_i_1_n_0 ),
        .I1(\st_out[14]_INST_0_i_1_n_0 ),
        .I2(\st_out[13]_INST_0_i_2_n_0 ),
        .I3(\st_out[13]_INST_0_i_3_n_0 ),
        .I4(st_in[13]),
        .I5(\st_out[13]_INST_0_i_4_n_0 ),
        .O(st_out[13]));
  LUT6 #(
    .INIT(64'h035F035F0F5F5F5F)) 
    \st_out[13]_INST_0_i_1 
       (.I0(\st_out[1]_INST_0_i_1_n_0 ),
        .I1(\st_out[14]_INST_0_i_3_n_0 ),
        .I2(st_in[13]),
        .I3(\st_out[2]_INST_0_i_1_n_0 ),
        .I4(nb_cid[9]),
        .I5(\st_out[14]_INST_0_i_4_n_0 ),
        .O(\st_out[13]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT3 #(
    .INIT(8'h8F)) 
    \st_out[13]_INST_0_i_2 
       (.I0(stage[2]),
        .I1(stage[1]),
        .I2(stage[0]),
        .O(\st_out[13]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \st_out[13]_INST_0_i_3 
       (.I0(stage[0]),
        .I1(stage[1]),
        .I2(stage[2]),
        .I3(nb_valid[1]),
        .O(\st_out[13]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8CC0C0C0C0C0C0C0)) 
    \st_out[13]_INST_0_i_4 
       (.I0(ab_cid[0]),
        .I1(\st_out[10]_INST_0_i_2_n_0 ),
        .I2(ab_cid[4]),
        .I3(ab_cid[1]),
        .I4(ab_cid[2]),
        .I5(ab_cid[3]),
        .O(\st_out[13]_INST_0_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT5 #(
    .INIT(32'hEFAA20AA)) 
    \st_out[14]_INST_0 
       (.I0(st_in[14]),
        .I1(m_pass[0]),
        .I2(m_pass[1]),
        .I3(\st_out[14]_INST_0_i_1_n_0 ),
        .I4(\st_out[14]_INST_0_i_2_n_0 ),
        .O(st_out[14]));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \st_out[14]_INST_0_i_1 
       (.I0(stage[0]),
        .I1(stage[1]),
        .I2(stage[2]),
        .O(\st_out[14]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF3FFA2AF00000000)) 
    \st_out[14]_INST_0_i_2 
       (.I0(st_in[4]),
        .I1(\st_out[14]_INST_0_i_3_n_0 ),
        .I2(\st_out[1]_INST_0_i_2_n_0 ),
        .I3(\st_out[14]_INST_0_i_4_n_0 ),
        .I4(\st_out[14]_INST_0_i_5_n_0 ),
        .I5(\st_out[14]_INST_0_i_6_n_0 ),
        .O(\st_out[14]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \st_out[14]_INST_0_i_3 
       (.I0(nb_valid[1]),
        .I1(e_grown[1]),
        .I2(\st_out[2]_INST_0_i_3_n_0 ),
        .O(\st_out[14]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF100F1F1FFFFFFFF)) 
    \st_out[14]_INST_0_i_4 
       (.I0(\st_out[12]_INST_0_i_9_n_0 ),
        .I1(\st_out[12]_INST_0_i_8_n_0 ),
        .I2(\st_out[12]_INST_0_i_7_n_0 ),
        .I3(nb_cid[9]),
        .I4(st_in[13]),
        .I5(\st_out[12]_INST_0_i_5_n_0 ),
        .O(\st_out[14]_INST_0_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \st_out[14]_INST_0_i_5 
       (.I0(st_in[5]),
        .I1(st_in[3]),
        .O(\st_out[14]_INST_0_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \st_out[14]_INST_0_i_6 
       (.I0(st_in[6]),
        .I1(nb_valid[1]),
        .O(\st_out[14]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAAAABA00BAAA00AA)) 
    \st_out[1]_INST_0 
       (.I0(st_in[1]),
        .I1(\st_out[1]_INST_0_i_1_n_0 ),
        .I2(\st_out[1]_INST_0_i_2_n_0 ),
        .I3(stage[0]),
        .I4(stage[1]),
        .I5(stage[2]),
        .O(st_out[1]));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \st_out[1]_INST_0_i_1 
       (.I0(m_pass[1]),
        .I1(m_pass[0]),
        .O(\st_out[1]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \st_out[1]_INST_0_i_2 
       (.I0(st_in[12]),
        .I1(st_in[11]),
        .I2(st_in[13]),
        .I3(st_in[9]),
        .I4(st_in[10]),
        .O(\st_out[1]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFEAAA0000)) 
    \st_out[2]_INST_0 
       (.I0(nb_grown[0]),
        .I1(\st_out[2]_INST_0_i_1_n_0 ),
        .I2(\st_out[2]_INST_0_i_2_n_0 ),
        .I3(\st_out[2]_INST_0_i_3_n_0 ),
        .I4(\st_out[14]_INST_0_i_1_n_0 ),
        .I5(\st_out[2]_INST_0_i_4_n_0 ),
        .O(st_out[2]));
  LUT6 #(
    .INIT(64'h1555555555555555)) 
    \st_out[2]_INST_0_i_1 
       (.I0(\st_out[1]_INST_0_i_1_n_0 ),
        .I1(st_in[10]),
        .I2(st_in[9]),
        .I3(st_in[13]),
        .I4(st_in[11]),
        .I5(st_in[12]),
        .O(\st_out[2]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000400000000000)) 
    \st_out[2]_INST_0_i_2 
       (.I0(nb_grown[0]),
        .I1(nb_grown[1]),
        .I2(stage[1]),
        .I3(stage[0]),
        .I4(stage[2]),
        .I5(\st_out[12]_INST_0_i_5_n_0 ),
        .O(\st_out[2]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFFFFFFFFFF)) 
    \st_out[2]_INST_0_i_3 
       (.I0(st_in[1]),
        .I1(nb_cid[8]),
        .I2(nb_cid[7]),
        .I3(nb_cid[9]),
        .I4(nb_cid[5]),
        .I5(nb_cid[6]),
        .O(\st_out[2]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hD5D5D5D510000000)) 
    \st_out[2]_INST_0_i_4 
       (.I0(stage[0]),
        .I1(stage[2]),
        .I2(stage[1]),
        .I3(st_in[8]),
        .I4(st_in[7]),
        .I5(nb_grown[0]),
        .O(\st_out[2]_INST_0_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT4 #(
    .INIT(16'h8F88)) 
    \st_out[3]_INST_0 
       (.I0(\st_out[10]_INST_0_i_2_n_0 ),
        .I1(ab_ptr[0]),
        .I2(\st_out[5]_INST_0_i_1_n_0 ),
        .I3(st_in[3]),
        .O(st_out[3]));
  LUT6 #(
    .INIT(64'hFFFF44F444F444F4)) 
    \st_out[4]_INST_0 
       (.I0(\st_out[4]_INST_0_i_1_n_0 ),
        .I1(\st_out[14]_INST_0_i_1_n_0 ),
        .I2(st_in[4]),
        .I3(\st_out[12]_INST_0_i_4_n_0 ),
        .I4(ab_ptr[1]),
        .I5(\st_out[10]_INST_0_i_2_n_0 ),
        .O(st_out[4]));
  LUT6 #(
    .INIT(64'h0F0FDF0F0F0F0202)) 
    \st_out[4]_INST_0_i_1 
       (.I0(m_pass[1]),
        .I1(m_pass[0]),
        .I2(st_in[4]),
        .I3(\st_out[14]_INST_0_i_3_n_0 ),
        .I4(\st_out[1]_INST_0_i_2_n_0 ),
        .I5(\st_out[14]_INST_0_i_4_n_0 ),
        .O(\st_out[4]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8F88)) 
    \st_out[5]_INST_0 
       (.I0(\st_out[10]_INST_0_i_2_n_0 ),
        .I1(ab_ptr[2]),
        .I2(\st_out[5]_INST_0_i_1_n_0 ),
        .I3(st_in[5]),
        .O(st_out[5]));
  LUT6 #(
    .INIT(64'h000088008800F000)) 
    \st_out[5]_INST_0_i_1 
       (.I0(\st_out[12]_INST_0_i_1_n_0 ),
        .I1(\st_out[2]_INST_0_i_1_n_0 ),
        .I2(nb_valid[1]),
        .I3(stage[0]),
        .I4(stage[1]),
        .I5(stage[2]),
        .O(\st_out[5]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFAEAEAEAFAEAEA)) 
    \st_out[6]_INST_0 
       (.I0(\st_out[6]_INST_0_i_1_n_0 ),
        .I1(\st_out[13]_INST_0_i_2_n_0 ),
        .I2(st_in[6]),
        .I3(nb_valid[1]),
        .I4(\st_out[6]_INST_0_i_2_n_0 ),
        .I5(ab_defect),
        .O(st_out[6]));
  LUT6 #(
    .INIT(64'hAA000000AA006A00)) 
    \st_out[6]_INST_0_i_1 
       (.I0(st_in[6]),
        .I1(nb_valid[1]),
        .I2(nb_push[1]),
        .I3(\st_out[14]_INST_0_i_1_n_0 ),
        .I4(\st_out[0]_INST_0_i_2_n_0 ),
        .I5(\st_out[14]_INST_0_i_2_n_0 ),
        .O(\st_out[6]_INST_0_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h10)) 
    \st_out[6]_INST_0_i_2 
       (.I0(stage[2]),
        .I1(stage[1]),
        .I2(stage[0]),
        .O(\st_out[6]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEAEAFFEAEAEAEAEA)) 
    \st_out[7]_INST_0 
       (.I0(\st_out[7]_INST_0_i_1_n_0 ),
        .I1(ab_whole),
        .I2(\st_out[10]_INST_0_i_2_n_0 ),
        .I3(\st_out[7]_INST_0_i_2_n_0 ),
        .I4(nb_grown[0]),
        .I5(st_in[8]),
        .O(st_out[7]));
  LUT6 #(
    .INIT(64'hAAA0AA2AAAAAAA2A)) 
    \st_out[7]_INST_0_i_1 
       (.I0(st_in[7]),
        .I1(nb_valid[1]),
        .I2(stage[0]),
        .I3(stage[2]),
        .I4(stage[1]),
        .I5(st_in[8]),
        .O(\st_out[7]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \st_out[7]_INST_0_i_2 
       (.I0(stage[2]),
        .I1(stage[1]),
        .I2(stage[0]),
        .O(\st_out[7]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFB000800)) 
    \st_out[8]_INST_0 
       (.I0(st_in[8]),
        .I1(m_pass[0]),
        .I2(m_pass[1]),
        .I3(\st_out[14]_INST_0_i_1_n_0 ),
        .I4(\st_out[8]_INST_0_i_1_n_0 ),
        .I5(\st_out[8]_INST_0_i_2_n_0 ),
        .O(st_out[8]));
  LUT6 #(
    .INIT(64'hFB08FB3BFB08C808)) 
    \st_out[8]_INST_0_i_1 
       (.I0(\st_out[14]_INST_0_i_6_n_0 ),
        .I1(\st_out[4]_INST_0_i_1_n_0 ),
        .I2(\st_out[8]_INST_0_i_3_n_0 ),
        .I3(st_in[8]),
        .I4(\st_out[8]_INST_0_i_4_n_0 ),
        .I5(nb_active[1]),
        .O(\st_out[8]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF00BFFFF00080000)) 
    \st_out[8]_INST_0_i_2 
       (.I0(ab_active),
        .I1(nb_valid[1]),
        .I2(stage[2]),
        .I3(stage[1]),
        .I4(stage[0]),
        .I5(st_in[8]),
        .O(\st_out[8]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT4 #(
    .INIT(16'h3F2A)) 
    \st_out[8]_INST_0_i_3 
       (.I0(st_in[5]),
        .I1(\st_out[12]_INST_0_i_1_n_0 ),
        .I2(\st_out[2]_INST_0_i_1_n_0 ),
        .I3(st_in[3]),
        .O(\st_out[8]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \st_out[8]_INST_0_i_4 
       (.I0(st_in[3]),
        .I1(\st_out[2]_INST_0_i_1_n_0 ),
        .I2(\st_out[12]_INST_0_i_1_n_0 ),
        .O(\st_out[8]_INST_0_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFE000)) 
    \st_out[9]_INST_0 
       (.I0(\st_out[12]_INST_0_i_1_n_0 ),
        .I1(st_in[9]),
        .I2(\st_out[14]_INST_0_i_1_n_0 ),
        .I3(\st_out[9]_INST_0_i_1_n_0 ),
        .I4(\st_out[9]_INST_0_i_2_n_0 ),
        .O(st_out[9]));
  LUT6 #(
    .INIT(64'hFFFFFF0808080808)) 
    \st_out[9]_INST_0_i_1 
       (.I0(st_in[9]),
        .I1(m_pass[1]),
        .I2(m_pass[0]),
        .I3(nb_cid[5]),
        .I4(\st_out[14]_INST_0_i_4_n_0 ),
        .I5(\st_out[2]_INST_0_i_1_n_0 ),
        .O(\st_out[9]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF00BFFFF00080000)) 
    \st_out[9]_INST_0_i_2 
       (.I0(ab_cid[0]),
        .I1(nb_valid[1]),
        .I2(stage[2]),
        .I3(stage[1]),
        .I4(stage[0]),
        .I5(st_in[9]),
        .O(\st_out[9]_INST_0_i_2_n_0 ));
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
module snowflake_pe__6
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
  wire [14:0]st_in;
  wire [14:0]st_out;
  wire \st_out[0]_INST_0_i_10_n_0 ;
  wire \st_out[0]_INST_0_i_11_n_0 ;
  wire \st_out[0]_INST_0_i_12_n_0 ;
  wire \st_out[0]_INST_0_i_13_n_0 ;
  wire \st_out[0]_INST_0_i_14_n_0 ;
  wire \st_out[0]_INST_0_i_15_n_0 ;
  wire \st_out[0]_INST_0_i_16_n_0 ;
  wire \st_out[0]_INST_0_i_17_n_0 ;
  wire \st_out[0]_INST_0_i_18_n_0 ;
  wire \st_out[0]_INST_0_i_19_n_0 ;
  wire \st_out[0]_INST_0_i_1_n_0 ;
  wire \st_out[0]_INST_0_i_20_n_0 ;
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
  wire \st_out[11]_INST_0_i_16_n_0 ;
  wire \st_out[11]_INST_0_i_17_n_0 ;
  wire \st_out[11]_INST_0_i_18_n_0 ;
  wire \st_out[11]_INST_0_i_19_n_0 ;
  wire \st_out[11]_INST_0_i_1_n_0 ;
  wire \st_out[11]_INST_0_i_20_n_0 ;
  wire \st_out[11]_INST_0_i_21_n_0 ;
  wire \st_out[11]_INST_0_i_22_n_0 ;
  wire \st_out[11]_INST_0_i_23_n_0 ;
  wire \st_out[11]_INST_0_i_24_n_0 ;
  wire \st_out[11]_INST_0_i_25_n_0 ;
  wire \st_out[11]_INST_0_i_26_n_0 ;
  wire \st_out[11]_INST_0_i_27_n_0 ;
  wire \st_out[11]_INST_0_i_28_n_0 ;
  wire \st_out[11]_INST_0_i_29_n_0 ;
  wire \st_out[11]_INST_0_i_2_n_0 ;
  wire \st_out[11]_INST_0_i_30_n_0 ;
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
  wire \st_out[12]_INST_0_i_1_n_0 ;
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
  wire \st_out[13]_INST_0_i_19_n_0 ;
  wire \st_out[13]_INST_0_i_1_n_0 ;
  wire \st_out[13]_INST_0_i_20_n_0 ;
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
  wire \st_out[14]_INST_0_i_4_n_0 ;
  wire \st_out[14]_INST_0_i_5_n_0 ;
  wire \st_out[14]_INST_0_i_6_n_0 ;
  wire \st_out[1]_INST_0_i_1_n_0 ;
  wire \st_out[2]_INST_0_i_1_n_0 ;
  wire \st_out[2]_INST_0_i_2_n_0 ;
  wire \st_out[2]_INST_0_i_3_n_0 ;
  wire \st_out[2]_INST_0_i_4_n_0 ;
  wire \st_out[2]_INST_0_i_5_n_0 ;
  wire \st_out[2]_INST_0_i_6_n_0 ;
  wire \st_out[3]_INST_0_i_1_n_0 ;
  wire \st_out[3]_INST_0_i_2_n_0 ;
  wire \st_out[3]_INST_0_i_3_n_0 ;
  wire \st_out[4]_INST_0_i_10_n_0 ;
  wire \st_out[4]_INST_0_i_11_n_0 ;
  wire \st_out[4]_INST_0_i_12_n_0 ;
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
  wire \st_out[6]_INST_0_i_1_n_0 ;
  wire \st_out[6]_INST_0_i_2_n_0 ;
  wire \st_out[6]_INST_0_i_3_n_0 ;
  wire \st_out[6]_INST_0_i_4_n_0 ;
  wire \st_out[7]_INST_0_i_1_n_0 ;
  wire \st_out[7]_INST_0_i_2_n_0 ;
  wire \st_out[8]_INST_0_i_1_n_0 ;
  wire \st_out[8]_INST_0_i_2_n_0 ;
  wire \st_out[8]_INST_0_i_3_n_0 ;
  wire \st_out[8]_INST_0_i_4_n_0 ;
  wire \st_out[8]_INST_0_i_5_n_0 ;
  wire \st_out[9]_INST_0_i_1_n_0 ;
  wire \st_out[9]_INST_0_i_2_n_0 ;
  wire \st_out[9]_INST_0_i_3_n_0 ;
  wire \st_out[9]_INST_0_i_4_n_0 ;
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
    .INIT(64'h00000000F7FCF6FD)) 
    \st_out[0]_INST_0 
       (.I0(\st_out[6]_INST_0_i_3_n_0 ),
        .I1(st_in[6]),
        .I2(\st_out[0]_INST_0_i_1_n_0 ),
        .I3(st_in[8]),
        .I4(\st_out[0]_INST_0_i_2_n_0 ),
        .I5(\st_out[0]_INST_0_i_3_n_0 ),
        .O(st_out[0]));
  LUT6 #(
    .INIT(64'hBBBBBBBBBABABBBA)) 
    \st_out[0]_INST_0_i_1 
       (.I0(\st_out[0]_INST_0_i_4_n_0 ),
        .I1(\st_out[14]_INST_0_i_4_n_0 ),
        .I2(\st_out[1]_INST_0_i_1_n_0 ),
        .I3(\st_out[0]_INST_0_i_5_n_0 ),
        .I4(\st_out[0]_INST_0_i_6_n_0 ),
        .I5(\st_out[0]_INST_0_i_7_n_0 ),
        .O(\st_out[0]_INST_0_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \st_out[0]_INST_0_i_10 
       (.I0(nb_cid[15]),
        .I1(nb_cid[16]),
        .O(\st_out[0]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h0000000054005454)) 
    \st_out[0]_INST_0_i_11 
       (.I0(\st_out[11]_INST_0_i_9_n_0 ),
        .I1(\st_out[0]_INST_0_i_12_n_0 ),
        .I2(\st_out[11]_INST_0_i_30_n_0 ),
        .I3(\st_out[0]_INST_0_i_13_n_0 ),
        .I4(\st_out[13]_INST_0_i_13_n_0 ),
        .I5(\st_out[0]_INST_0_i_14_n_0 ),
        .O(\st_out[0]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hEEE0EEEE00E00000)) 
    \st_out[0]_INST_0_i_12 
       (.I0(\st_out[0]_INST_0_i_15_n_0 ),
        .I1(st_in[2]),
        .I2(st_in[1]),
        .I3(\st_out[0]_INST_0_i_16_n_0 ),
        .I4(\st_out[0]_INST_0_i_17_n_0 ),
        .I5(\st_out[4]_INST_0_i_6_n_0 ),
        .O(\st_out[0]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFF7FFF)) 
    \st_out[0]_INST_0_i_13 
       (.I0(\st_out[2]_INST_0_i_5_n_0 ),
        .I1(nb_grown[2]),
        .I2(stage[0]),
        .I3(stage[1]),
        .I4(stage[2]),
        .I5(\st_out[11]_INST_0_i_7_n_0 ),
        .O(\st_out[0]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hA8888888AAAAAAAA)) 
    \st_out[0]_INST_0_i_14 
       (.I0(\st_out[11]_INST_0_i_20_n_0 ),
        .I1(\st_out[11]_INST_0_i_15_n_0 ),
        .I2(nb_grown[1]),
        .I3(\st_out[2]_INST_0_i_4_n_0 ),
        .I4(\st_out[2]_INST_0_i_6_n_0 ),
        .I5(\st_out[0]_INST_0_i_18_n_0 ),
        .O(\st_out[0]_INST_0_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT4 #(
    .INIT(16'hFF7F)) 
    \st_out[0]_INST_0_i_15 
       (.I0(nb_grown[0]),
        .I1(stage[0]),
        .I2(stage[1]),
        .I3(stage[2]),
        .O(\st_out[0]_INST_0_i_15_n_0 ));
  LUT3 #(
    .INIT(8'h2A)) 
    \st_out[0]_INST_0_i_16 
       (.I0(nb_cid[2]),
        .I1(nb_cid[1]),
        .I2(nb_cid[0]),
        .O(\st_out[0]_INST_0_i_16_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \st_out[0]_INST_0_i_17 
       (.I0(nb_cid[2]),
        .I1(nb_cid[1]),
        .I2(nb_cid[3]),
        .I3(nb_cid[4]),
        .O(\st_out[0]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hE8EEE8EEE8EE88E8)) 
    \st_out[0]_INST_0_i_18 
       (.I0(\st_out[10]_INST_0_i_7_n_0 ),
        .I1(nb_cid[9]),
        .I2(nb_cid[8]),
        .I3(\st_out[12]_INST_0_i_12_n_0 ),
        .I4(\st_out[0]_INST_0_i_19_n_0 ),
        .I5(\st_out[0]_INST_0_i_20_n_0 ),
        .O(\st_out[0]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hDDD0DDD0DDD0D000)) 
    \st_out[0]_INST_0_i_19 
       (.I0(\st_out[11]_INST_0_i_24_n_0 ),
        .I1(nb_cid[7]),
        .I2(\st_out[10]_INST_0_i_5_n_0 ),
        .I3(nb_cid[6]),
        .I4(\st_out[9]_INST_0_i_4_n_0 ),
        .I5(nb_cid[5]),
        .O(\st_out[0]_INST_0_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \st_out[0]_INST_0_i_2 
       (.I0(nb_active[3]),
        .I1(nb_active[0]),
        .I2(\st_out[4]_INST_0_i_1_n_0 ),
        .I3(nb_active[1]),
        .I4(\st_out[3]_INST_0_i_1_n_0 ),
        .I5(nb_active[2]),
        .O(\st_out[0]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h02A200AA00AA00AA)) 
    \st_out[0]_INST_0_i_20 
       (.I0(nb_cid[7]),
        .I1(nb_cid[2]),
        .I2(\st_out[4]_INST_0_i_6_n_0 ),
        .I3(st_in[11]),
        .I4(e_grown[0]),
        .I5(nb_valid[2]),
        .O(\st_out[0]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h00510000FFFFFFFF)) 
    \st_out[0]_INST_0_i_3 
       (.I0(\st_out[1]_INST_0_i_1_n_0 ),
        .I1(\st_out[0]_INST_0_i_5_n_0 ),
        .I2(\st_out[0]_INST_0_i_6_n_0 ),
        .I3(\st_out[0]_INST_0_i_7_n_0 ),
        .I4(\st_out[6]_INST_0_i_1_n_0 ),
        .I5(\st_out[14]_INST_0_i_3_n_0 ),
        .O(\st_out[0]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hBEEBEBBEAAAAAAAA)) 
    \st_out[0]_INST_0_i_4 
       (.I0(\st_out[6]_INST_0_i_1_n_0 ),
        .I1(nb_push[3]),
        .I2(nb_push[2]),
        .I3(nb_push[1]),
        .I4(nb_push[0]),
        .I5(nb_valid[2]),
        .O(\st_out[0]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hCFFFDFDFCFFFCFFF)) 
    \st_out[0]_INST_0_i_5 
       (.I0(\st_out[13]_INST_0_i_5_n_0 ),
        .I1(\st_out[0]_INST_0_i_8_n_0 ),
        .I2(\st_out[0]_INST_0_i_9_n_0 ),
        .I3(st_in[1]),
        .I4(\st_out[0]_INST_0_i_10_n_0 ),
        .I5(nb_cid[17]),
        .O(\st_out[0]_INST_0_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h10FF)) 
    \st_out[0]_INST_0_i_6 
       (.I0(\st_out[0]_INST_0_i_9_n_0 ),
        .I1(\st_out[0]_INST_0_i_8_n_0 ),
        .I2(\st_out[13]_INST_0_i_5_n_0 ),
        .I3(\st_out[13]_INST_0_i_6_n_0 ),
        .O(\st_out[0]_INST_0_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \st_out[0]_INST_0_i_7 
       (.I0(\st_out[13]_INST_0_i_6_n_0 ),
        .I1(\st_out[0]_INST_0_i_11_n_0 ),
        .O(\st_out[0]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h00000800FFFFFFFF)) 
    \st_out[0]_INST_0_i_8 
       (.I0(stage[0]),
        .I1(stage[1]),
        .I2(stage[2]),
        .I3(nb_grown[3]),
        .I4(\st_out[2]_INST_0_i_3_n_0 ),
        .I5(\st_out[0]_INST_0_i_11_n_0 ),
        .O(\st_out[0]_INST_0_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \st_out[0]_INST_0_i_9 
       (.I0(nb_cid[16]),
        .I1(nb_cid[18]),
        .I2(nb_cid[19]),
        .I3(nb_cid[17]),
        .O(\st_out[0]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFE0E0C000)) 
    \st_out[10]_INST_0 
       (.I0(\st_out[13]_INST_0_i_1_n_0 ),
        .I1(st_in[10]),
        .I2(\st_out[14]_INST_0_i_3_n_0 ),
        .I3(\st_out[14]_INST_0_i_4_n_0 ),
        .I4(\st_out[10]_INST_0_i_1_n_0 ),
        .I5(\st_out[10]_INST_0_i_2_n_0 ),
        .O(st_out[10]));
  LUT6 #(
    .INIT(64'hAABAAA8A00000000)) 
    \st_out[10]_INST_0_i_1 
       (.I0(\st_out[10]_INST_0_i_3_n_0 ),
        .I1(\st_out[13]_INST_0_i_7_n_0 ),
        .I2(\st_out[13]_INST_0_i_6_n_0 ),
        .I3(\st_out[13]_INST_0_i_5_n_0 ),
        .I4(nb_cid[16]),
        .I5(\st_out[12]_INST_0_i_2_n_0 ),
        .O(\st_out[10]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF8F8888CCCC8888)) 
    \st_out[10]_INST_0_i_2 
       (.I0(\st_out[10]_INST_0_i_4_n_0 ),
        .I1(st_in[10]),
        .I2(nb_cid[16]),
        .I3(\st_out[11]_INST_0_i_13_n_0 ),
        .I4(\st_out[12]_INST_0_i_7_n_0 ),
        .I5(nb_valid[2]),
        .O(\st_out[10]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFB0B0000FB0B)) 
    \st_out[10]_INST_0_i_3 
       (.I0(\st_out[4]_INST_0_i_3_n_0 ),
        .I1(\st_out[10]_INST_0_i_5_n_0 ),
        .I2(\st_out[10]_INST_0_i_6_n_0 ),
        .I3(nb_cid[6]),
        .I4(\st_out[11]_INST_0_i_9_n_0 ),
        .I5(nb_cid[11]),
        .O(\st_out[10]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT3 #(
    .INIT(8'h8F)) 
    \st_out[10]_INST_0_i_4 
       (.I0(stage[2]),
        .I1(stage[1]),
        .I2(stage[0]),
        .O(\st_out[10]_INST_0_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT5 #(
    .INIT(32'h551555D5)) 
    \st_out[10]_INST_0_i_5 
       (.I0(st_in[10]),
        .I1(e_grown[0]),
        .I2(nb_valid[2]),
        .I3(\st_out[4]_INST_0_i_6_n_0 ),
        .I4(nb_cid[1]),
        .O(\st_out[10]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h000022A222A2AAAA)) 
    \st_out[10]_INST_0_i_6 
       (.I0(\st_out[11]_INST_0_i_20_n_0 ),
        .I1(\st_out[11]_INST_0_i_21_n_0 ),
        .I2(\st_out[12]_INST_0_i_12_n_0 ),
        .I3(nb_cid[8]),
        .I4(nb_cid[9]),
        .I5(\st_out[10]_INST_0_i_7_n_0 ),
        .O(\st_out[10]_INST_0_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT4 #(
    .INIT(16'h08FF)) 
    \st_out[10]_INST_0_i_7 
       (.I0(nb_valid[2]),
        .I1(e_grown[0]),
        .I2(nb_cid[4]),
        .I3(st_in[13]),
        .O(\st_out[10]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF11105554)) 
    \st_out[11]_INST_0 
       (.I0(\st_out[11]_INST_0_i_1_n_0 ),
        .I1(\st_out[11]_INST_0_i_2_n_0 ),
        .I2(\st_out[11]_INST_0_i_3_n_0 ),
        .I3(st_in[11]),
        .I4(\st_out[11]_INST_0_i_4_n_0 ),
        .I5(\st_out[11]_INST_0_i_5_n_0 ),
        .O(st_out[11]));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT4 #(
    .INIT(16'h9FFF)) 
    \st_out[11]_INST_0_i_1 
       (.I0(stage[2]),
        .I1(stage[1]),
        .I2(stage[0]),
        .I3(\st_out[12]_INST_0_i_2_n_0 ),
        .O(\st_out[11]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFBBFB00008808)) 
    \st_out[11]_INST_0_i_10 
       (.I0(nb_cid[7]),
        .I1(\st_out[11]_INST_0_i_20_n_0 ),
        .I2(\st_out[11]_INST_0_i_21_n_0 ),
        .I3(\st_out[11]_INST_0_i_22_n_0 ),
        .I4(\st_out[11]_INST_0_i_23_n_0 ),
        .I5(\st_out[11]_INST_0_i_24_n_0 ),
        .O(\st_out[11]_INST_0_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT5 #(
    .INIT(32'h2AAAAAAA)) 
    \st_out[11]_INST_0_i_11 
       (.I0(\st_out[13]_INST_0_i_6_n_0 ),
        .I1(nb_cid[17]),
        .I2(nb_cid[19]),
        .I3(nb_cid[18]),
        .I4(nb_cid[16]),
        .O(\st_out[11]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hA880A88AAAAAAAAA)) 
    \st_out[11]_INST_0_i_12 
       (.I0(st_in[11]),
        .I1(\st_out[14]_INST_0_i_4_n_0 ),
        .I2(stage[2]),
        .I3(stage[1]),
        .I4(nb_valid[2]),
        .I5(stage[0]),
        .O(\st_out[11]_INST_0_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \st_out[11]_INST_0_i_13 
       (.I0(nb_cid[15]),
        .I1(nb_cid[18]),
        .I2(nb_cid[17]),
        .I3(nb_cid[16]),
        .I4(nb_cid[19]),
        .O(\st_out[11]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF7FFFFFFF)) 
    \st_out[11]_INST_0_i_14 
       (.I0(nb_cid[4]),
        .I1(nb_cid[3]),
        .I2(nb_cid[2]),
        .I3(nb_cid[1]),
        .I4(nb_cid[0]),
        .I5(st_in[1]),
        .O(\st_out[11]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h4000000000000000)) 
    \st_out[11]_INST_0_i_15 
       (.I0(st_in[1]),
        .I1(nb_cid[6]),
        .I2(nb_cid[5]),
        .I3(nb_cid[7]),
        .I4(nb_cid[8]),
        .I5(nb_cid[9]),
        .O(\st_out[11]_INST_0_i_15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT3 #(
    .INIT(8'h5D)) 
    \st_out[11]_INST_0_i_16 
       (.I0(\st_out[13]_INST_0_i_13_n_0 ),
        .I1(nb_cid[14]),
        .I2(\st_out[13]_INST_0_i_12_n_0 ),
        .O(\st_out[11]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h1101FF0F00001101)) 
    \st_out[11]_INST_0_i_17 
       (.I0(nb_cid[10]),
        .I1(\st_out[11]_INST_0_i_25_n_0 ),
        .I2(nb_cid[12]),
        .I3(\st_out[11]_INST_0_i_10_n_0 ),
        .I4(nb_cid[11]),
        .I5(\st_out[11]_INST_0_i_26_n_0 ),
        .O(\st_out[11]_INST_0_i_17_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \st_out[11]_INST_0_i_18 
       (.I0(\st_out[11]_INST_0_i_24_n_0 ),
        .I1(\st_out[10]_INST_0_i_6_n_0 ),
        .I2(nb_cid[7]),
        .I3(nb_cid[12]),
        .O(\st_out[11]_INST_0_i_18_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \st_out[11]_INST_0_i_19 
       (.I0(\st_out[13]_INST_0_i_12_n_0 ),
        .I1(nb_cid[14]),
        .I2(\st_out[13]_INST_0_i_13_n_0 ),
        .O(\st_out[11]_INST_0_i_19_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT4 #(
    .INIT(16'h04FF)) 
    \st_out[11]_INST_0_i_2 
       (.I0(\st_out[13]_INST_0_i_7_n_0 ),
        .I1(\st_out[13]_INST_0_i_6_n_0 ),
        .I2(\st_out[13]_INST_0_i_5_n_0 ),
        .I3(\st_out[13]_INST_0_i_4_n_0 ),
        .O(\st_out[11]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT5 #(
    .INIT(32'hFD000000)) 
    \st_out[11]_INST_0_i_20 
       (.I0(e_grown[0]),
        .I1(\st_out[11]_INST_0_i_27_n_0 ),
        .I2(st_in[1]),
        .I3(e_grown[1]),
        .I4(nb_valid[2]),
        .O(\st_out[11]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFD400FFD4)) 
    \st_out[11]_INST_0_i_21 
       (.I0(\st_out[11]_INST_0_i_28_n_0 ),
        .I1(nb_cid[6]),
        .I2(\st_out[10]_INST_0_i_5_n_0 ),
        .I3(nb_cid[7]),
        .I4(\st_out[11]_INST_0_i_24_n_0 ),
        .I5(\st_out[11]_INST_0_i_29_n_0 ),
        .O(\st_out[11]_INST_0_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h00E0FFFF00E000E0)) 
    \st_out[11]_INST_0_i_22 
       (.I0(\st_out[11]_INST_0_i_30_n_0 ),
        .I1(nb_cid[4]),
        .I2(st_in[13]),
        .I3(nb_cid[9]),
        .I4(nb_cid[8]),
        .I5(\st_out[12]_INST_0_i_12_n_0 ),
        .O(\st_out[11]_INST_0_i_22_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT5 #(
    .INIT(32'h75550000)) 
    \st_out[11]_INST_0_i_23 
       (.I0(st_in[13]),
        .I1(nb_cid[4]),
        .I2(e_grown[0]),
        .I3(nb_valid[2]),
        .I4(nb_cid[9]),
        .O(\st_out[11]_INST_0_i_23_n_0 ));
  LUT5 #(
    .INIT(32'hF0F8F070)) 
    \st_out[11]_INST_0_i_24 
       (.I0(nb_valid[2]),
        .I1(e_grown[0]),
        .I2(st_in[11]),
        .I3(\st_out[4]_INST_0_i_6_n_0 ),
        .I4(nb_cid[2]),
        .O(\st_out[11]_INST_0_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF77F700004404)) 
    \st_out[11]_INST_0_i_25 
       (.I0(nb_cid[5]),
        .I1(\st_out[11]_INST_0_i_20_n_0 ),
        .I2(\st_out[11]_INST_0_i_21_n_0 ),
        .I3(\st_out[11]_INST_0_i_22_n_0 ),
        .I4(\st_out[11]_INST_0_i_23_n_0 ),
        .I5(\st_out[9]_INST_0_i_4_n_0 ),
        .O(\st_out[11]_INST_0_i_25_n_0 ));
  LUT6 #(
    .INIT(64'h00008808FFFFBBFB)) 
    \st_out[11]_INST_0_i_26 
       (.I0(nb_cid[6]),
        .I1(\st_out[11]_INST_0_i_20_n_0 ),
        .I2(\st_out[11]_INST_0_i_21_n_0 ),
        .I3(\st_out[11]_INST_0_i_22_n_0 ),
        .I4(\st_out[11]_INST_0_i_23_n_0 ),
        .I5(\st_out[10]_INST_0_i_5_n_0 ),
        .O(\st_out[11]_INST_0_i_26_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \st_out[11]_INST_0_i_27 
       (.I0(nb_cid[3]),
        .I1(nb_cid[4]),
        .I2(nb_cid[0]),
        .I3(nb_cid[1]),
        .I4(nb_cid[2]),
        .O(\st_out[11]_INST_0_i_27_n_0 ));
  LUT6 #(
    .INIT(64'h5404550055005500)) 
    \st_out[11]_INST_0_i_28 
       (.I0(nb_cid[5]),
        .I1(nb_cid[0]),
        .I2(\st_out[4]_INST_0_i_6_n_0 ),
        .I3(st_in[9]),
        .I4(e_grown[0]),
        .I5(nb_valid[2]),
        .O(\st_out[11]_INST_0_i_28_n_0 ));
  LUT6 #(
    .INIT(64'h02A200AA00AA00AA)) 
    \st_out[11]_INST_0_i_29 
       (.I0(nb_cid[8]),
        .I1(nb_cid[3]),
        .I2(\st_out[4]_INST_0_i_6_n_0 ),
        .I3(st_in[12]),
        .I4(e_grown[0]),
        .I5(nb_valid[2]),
        .O(\st_out[11]_INST_0_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hD555D555F5F5D555)) 
    \st_out[11]_INST_0_i_3 
       (.I0(\st_out[11]_INST_0_i_6_n_0 ),
        .I1(\st_out[11]_INST_0_i_7_n_0 ),
        .I2(nb_valid[2]),
        .I3(e_grown[2]),
        .I4(e_grown[3]),
        .I5(\st_out[11]_INST_0_i_8_n_0 ),
        .O(\st_out[11]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \st_out[11]_INST_0_i_30 
       (.I0(nb_valid[2]),
        .I1(e_grown[0]),
        .O(\st_out[11]_INST_0_i_30_n_0 ));
  LUT6 #(
    .INIT(64'h202A303F757F303F)) 
    \st_out[11]_INST_0_i_4 
       (.I0(\st_out[13]_INST_0_i_5_n_0 ),
        .I1(nb_cid[12]),
        .I2(\st_out[11]_INST_0_i_9_n_0 ),
        .I3(\st_out[11]_INST_0_i_10_n_0 ),
        .I4(\st_out[11]_INST_0_i_11_n_0 ),
        .I5(nb_cid[17]),
        .O(\st_out[11]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hEFFEAAAAAAAAAAAA)) 
    \st_out[11]_INST_0_i_5 
       (.I0(\st_out[11]_INST_0_i_12_n_0 ),
        .I1(\st_out[11]_INST_0_i_13_n_0 ),
        .I2(nb_cid[17]),
        .I3(nb_cid[16]),
        .I4(\st_out[12]_INST_0_i_7_n_0 ),
        .I5(nb_valid[2]),
        .O(\st_out[11]_INST_0_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h0FBFBFBF)) 
    \st_out[11]_INST_0_i_6 
       (.I0(\st_out[11]_INST_0_i_14_n_0 ),
        .I1(e_grown[0]),
        .I2(nb_valid[2]),
        .I3(e_grown[1]),
        .I4(\st_out[11]_INST_0_i_15_n_0 ),
        .O(\st_out[11]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h4000000000000000)) 
    \st_out[11]_INST_0_i_7 
       (.I0(st_in[1]),
        .I1(nb_cid[11]),
        .I2(nb_cid[10]),
        .I3(nb_cid[14]),
        .I4(nb_cid[12]),
        .I5(nb_cid[13]),
        .O(\st_out[11]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFFFFFFFFFF)) 
    \st_out[11]_INST_0_i_8 
       (.I0(st_in[1]),
        .I1(nb_cid[17]),
        .I2(nb_cid[19]),
        .I3(nb_cid[18]),
        .I4(nb_cid[15]),
        .I5(nb_cid[16]),
        .O(\st_out[11]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF0B0B0B02)) 
    \st_out[11]_INST_0_i_9 
       (.I0(\st_out[12]_INST_0_i_11_n_0 ),
        .I1(nb_cid[13]),
        .I2(\st_out[11]_INST_0_i_16_n_0 ),
        .I3(\st_out[11]_INST_0_i_17_n_0 ),
        .I4(\st_out[11]_INST_0_i_18_n_0 ),
        .I5(\st_out[11]_INST_0_i_19_n_0 ),
        .O(\st_out[11]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF40404000)) 
    \st_out[12]_INST_0 
       (.I0(\st_out[12]_INST_0_i_1_n_0 ),
        .I1(\st_out[12]_INST_0_i_2_n_0 ),
        .I2(\st_out[14]_INST_0_i_3_n_0 ),
        .I3(st_in[12]),
        .I4(\st_out[13]_INST_0_i_1_n_0 ),
        .I5(\st_out[12]_INST_0_i_3_n_0 ),
        .O(st_out[12]));
  LUT6 #(
    .INIT(64'hBF11FF0000000000)) 
    \st_out[12]_INST_0_i_1 
       (.I0(\st_out[13]_INST_0_i_5_n_0 ),
        .I1(nb_cid[18]),
        .I2(\st_out[12]_INST_0_i_4_n_0 ),
        .I3(\st_out[12]_INST_0_i_5_n_0 ),
        .I4(\st_out[13]_INST_0_i_6_n_0 ),
        .I5(\st_out[11]_INST_0_i_2_n_0 ),
        .O(\st_out[12]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \st_out[12]_INST_0_i_10 
       (.I0(nb_cid[11]),
        .I1(nb_cid[10]),
        .I2(nb_cid[14]),
        .I3(nb_cid[12]),
        .O(\st_out[12]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hB0AAB0B0BBAABBBB)) 
    \st_out[12]_INST_0_i_11 
       (.I0(\st_out[12]_INST_0_i_12_n_0 ),
        .I1(\st_out[12]_INST_0_i_13_n_0 ),
        .I2(\st_out[11]_INST_0_i_23_n_0 ),
        .I3(\st_out[11]_INST_0_i_22_n_0 ),
        .I4(\st_out[11]_INST_0_i_21_n_0 ),
        .I5(\st_out[12]_INST_0_i_14_n_0 ),
        .O(\st_out[12]_INST_0_i_11_n_0 ));
  LUT5 #(
    .INIT(32'hF0F8F070)) 
    \st_out[12]_INST_0_i_12 
       (.I0(nb_valid[2]),
        .I1(e_grown[0]),
        .I2(st_in[12]),
        .I3(\st_out[4]_INST_0_i_6_n_0 ),
        .I4(nb_cid[3]),
        .O(\st_out[12]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hA8888888FFFFFFFF)) 
    \st_out[12]_INST_0_i_13 
       (.I0(nb_cid[9]),
        .I1(\st_out[10]_INST_0_i_7_n_0 ),
        .I2(nb_cid[7]),
        .I3(nb_cid[5]),
        .I4(nb_cid[6]),
        .I5(\st_out[11]_INST_0_i_20_n_0 ),
        .O(\st_out[12]_INST_0_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \st_out[12]_INST_0_i_14 
       (.I0(\st_out[11]_INST_0_i_20_n_0 ),
        .I1(nb_cid[8]),
        .O(\st_out[12]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h1555555555555555)) 
    \st_out[12]_INST_0_i_2 
       (.I0(\st_out[14]_INST_0_i_4_n_0 ),
        .I1(st_in[10]),
        .I2(st_in[9]),
        .I3(st_in[13]),
        .I4(st_in[11]),
        .I5(st_in[12]),
        .O(\st_out[12]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFA0C0C0)) 
    \st_out[12]_INST_0_i_3 
       (.I0(\st_out[12]_INST_0_i_6_n_0 ),
        .I1(st_in[12]),
        .I2(\st_out[12]_INST_0_i_7_n_0 ),
        .I3(\st_out[12]_INST_0_i_8_n_0 ),
        .I4(nb_valid[2]),
        .I5(\st_out[12]_INST_0_i_9_n_0 ),
        .O(\st_out[12]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \st_out[12]_INST_0_i_4 
       (.I0(nb_cid[17]),
        .I1(nb_cid[19]),
        .I2(nb_cid[16]),
        .I3(nb_cid[15]),
        .O(\st_out[12]_INST_0_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT4 #(
    .INIT(16'h44F7)) 
    \st_out[12]_INST_0_i_5 
       (.I0(nb_cid[13]),
        .I1(\st_out[11]_INST_0_i_9_n_0 ),
        .I2(\st_out[12]_INST_0_i_10_n_0 ),
        .I3(\st_out[12]_INST_0_i_11_n_0 ),
        .O(\st_out[12]_INST_0_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT5 #(
    .INIT(32'h8FFFF000)) 
    \st_out[12]_INST_0_i_6 
       (.I0(nb_cid[19]),
        .I1(nb_cid[15]),
        .I2(nb_cid[16]),
        .I3(nb_cid[17]),
        .I4(nb_cid[18]),
        .O(\st_out[12]_INST_0_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \st_out[12]_INST_0_i_7 
       (.I0(stage[2]),
        .I1(stage[1]),
        .I2(stage[0]),
        .O(\st_out[12]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h00D0D00000000000)) 
    \st_out[12]_INST_0_i_8 
       (.I0(m_pass[1]),
        .I1(m_pass[0]),
        .I2(stage[0]),
        .I3(stage[1]),
        .I4(stage[2]),
        .I5(\st_out[1]_INST_0_i_1_n_0 ),
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
        .I2(\st_out[14]_INST_0_i_3_n_0 ),
        .I3(\st_out[14]_INST_0_i_4_n_0 ),
        .I4(\st_out[13]_INST_0_i_2_n_0 ),
        .I5(\st_out[13]_INST_0_i_3_n_0 ),
        .O(st_out[13]));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT5 #(
    .INIT(32'hFFFF5575)) 
    \st_out[13]_INST_0_i_1 
       (.I0(\st_out[13]_INST_0_i_4_n_0 ),
        .I1(\st_out[13]_INST_0_i_5_n_0 ),
        .I2(\st_out[13]_INST_0_i_6_n_0 ),
        .I3(\st_out[13]_INST_0_i_7_n_0 ),
        .I4(\st_out[11]_INST_0_i_3_n_0 ),
        .O(\st_out[13]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEF0EEF0E0000EF0E)) 
    \st_out[13]_INST_0_i_10 
       (.I0(nb_cid[15]),
        .I1(\st_out[13]_INST_0_i_15_n_0 ),
        .I2(\st_out[13]_INST_0_i_16_n_0 ),
        .I3(nb_cid[16]),
        .I4(\st_out[13]_INST_0_i_17_n_0 ),
        .I5(nb_cid[17]),
        .O(\st_out[13]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h000002A2AAAA02A2)) 
    \st_out[13]_INST_0_i_11 
       (.I0(nb_cid[17]),
        .I1(\st_out[11]_INST_0_i_24_n_0 ),
        .I2(\st_out[10]_INST_0_i_6_n_0 ),
        .I3(nb_cid[7]),
        .I4(\st_out[11]_INST_0_i_9_n_0 ),
        .I5(nb_cid[12]),
        .O(\st_out[13]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hD000D0D0D0D0D0D0)) 
    \st_out[13]_INST_0_i_12 
       (.I0(\st_out[11]_INST_0_i_20_n_0 ),
        .I1(nb_cid[9]),
        .I2(st_in[13]),
        .I3(nb_cid[4]),
        .I4(e_grown[0]),
        .I5(nb_valid[2]),
        .O(\st_out[13]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h2A002A0000002A00)) 
    \st_out[13]_INST_0_i_13 
       (.I0(e_grown[2]),
        .I1(\st_out[11]_INST_0_i_15_n_0 ),
        .I2(e_grown[1]),
        .I3(nb_valid[2]),
        .I4(e_grown[0]),
        .I5(\st_out[11]_INST_0_i_14_n_0 ),
        .O(\st_out[13]_INST_0_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT4 #(
    .INIT(16'h0200)) 
    \st_out[13]_INST_0_i_14 
       (.I0(stage[0]),
        .I1(stage[1]),
        .I2(stage[2]),
        .I3(nb_valid[2]),
        .O(\st_out[13]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h5555DDDF55551110)) 
    \st_out[13]_INST_0_i_15 
       (.I0(nb_cid[10]),
        .I1(\st_out[13]_INST_0_i_18_n_0 ),
        .I2(\st_out[11]_INST_0_i_17_n_0 ),
        .I3(\st_out[13]_INST_0_i_19_n_0 ),
        .I4(\st_out[11]_INST_0_i_19_n_0 ),
        .I5(\st_out[11]_INST_0_i_25_n_0 ),
        .O(\st_out[13]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAEEEFAAAA2220)) 
    \st_out[13]_INST_0_i_16 
       (.I0(nb_cid[11]),
        .I1(\st_out[13]_INST_0_i_18_n_0 ),
        .I2(\st_out[11]_INST_0_i_17_n_0 ),
        .I3(\st_out[13]_INST_0_i_19_n_0 ),
        .I4(\st_out[11]_INST_0_i_19_n_0 ),
        .I5(\st_out[11]_INST_0_i_26_n_0 ),
        .O(\st_out[13]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hFF00FF00F5A0F4A0)) 
    \st_out[13]_INST_0_i_17 
       (.I0(\st_out[13]_INST_0_i_18_n_0 ),
        .I1(\st_out[11]_INST_0_i_17_n_0 ),
        .I2(\st_out[11]_INST_0_i_10_n_0 ),
        .I3(nb_cid[12]),
        .I4(\st_out[13]_INST_0_i_20_n_0 ),
        .I5(\st_out[11]_INST_0_i_19_n_0 ),
        .O(\st_out[13]_INST_0_i_17_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT5 #(
    .INIT(32'h4F44FFFF)) 
    \st_out[13]_INST_0_i_18 
       (.I0(\st_out[12]_INST_0_i_11_n_0 ),
        .I1(nb_cid[13]),
        .I2(\st_out[13]_INST_0_i_12_n_0 ),
        .I3(nb_cid[14]),
        .I4(\st_out[13]_INST_0_i_13_n_0 ),
        .O(\st_out[13]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h4F444F4F4F444444)) 
    \st_out[13]_INST_0_i_19 
       (.I0(nb_cid[13]),
        .I1(\st_out[12]_INST_0_i_11_n_0 ),
        .I2(nb_cid[12]),
        .I3(nb_cid[7]),
        .I4(\st_out[10]_INST_0_i_6_n_0 ),
        .I5(\st_out[11]_INST_0_i_24_n_0 ),
        .O(\st_out[13]_INST_0_i_19_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT5 #(
    .INIT(32'h8088AAAA)) 
    \st_out[13]_INST_0_i_2 
       (.I0(\st_out[12]_INST_0_i_2_n_0 ),
        .I1(\st_out[13]_INST_0_i_8_n_0 ),
        .I2(nb_cid[19]),
        .I3(\st_out[13]_INST_0_i_6_n_0 ),
        .I4(\st_out[11]_INST_0_i_2_n_0 ),
        .O(\st_out[13]_INST_0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \st_out[13]_INST_0_i_20 
       (.I0(\st_out[12]_INST_0_i_11_n_0 ),
        .I1(nb_cid[13]),
        .O(\st_out[13]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hFAABFFFFAAAAAAAA)) 
    \st_out[13]_INST_0_i_3 
       (.I0(\st_out[13]_INST_0_i_9_n_0 ),
        .I1(nb_valid[2]),
        .I2(stage[2]),
        .I3(stage[1]),
        .I4(stage[0]),
        .I5(st_in[13]),
        .O(\st_out[13]_INST_0_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \st_out[13]_INST_0_i_4 
       (.I0(\st_out[4]_INST_0_i_3_n_0 ),
        .I1(\st_out[4]_INST_0_i_4_n_0 ),
        .O(\st_out[13]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hBBB2BBB2BBB2B222)) 
    \st_out[13]_INST_0_i_5 
       (.I0(nb_cid[19]),
        .I1(\st_out[13]_INST_0_i_8_n_0 ),
        .I2(\st_out[12]_INST_0_i_5_n_0 ),
        .I3(nb_cid[18]),
        .I4(\st_out[13]_INST_0_i_10_n_0 ),
        .I5(\st_out[13]_INST_0_i_11_n_0 ),
        .O(\st_out[13]_INST_0_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h20A00000)) 
    \st_out[13]_INST_0_i_6 
       (.I0(\st_out[11]_INST_0_i_6_n_0 ),
        .I1(\st_out[11]_INST_0_i_7_n_0 ),
        .I2(nb_valid[2]),
        .I3(e_grown[2]),
        .I4(e_grown[3]),
        .O(\st_out[13]_INST_0_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \st_out[13]_INST_0_i_7 
       (.I0(nb_cid[16]),
        .I1(nb_cid[15]),
        .I2(nb_cid[18]),
        .I3(nb_cid[19]),
        .I4(nb_cid[17]),
        .O(\st_out[13]_INST_0_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \st_out[13]_INST_0_i_8 
       (.I0(\st_out[13]_INST_0_i_12_n_0 ),
        .I1(nb_cid[14]),
        .I2(\st_out[13]_INST_0_i_13_n_0 ),
        .O(\st_out[13]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h8CC0C0C0C0C0C0C0)) 
    \st_out[13]_INST_0_i_9 
       (.I0(nb_cid[15]),
        .I1(\st_out[13]_INST_0_i_14_n_0 ),
        .I2(nb_cid[19]),
        .I3(nb_cid[16]),
        .I4(nb_cid[17]),
        .I5(nb_cid[18]),
        .O(\st_out[13]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF8AFF00008A00)) 
    \st_out[14]_INST_0 
       (.I0(st_in[6]),
        .I1(\st_out[14]_INST_0_i_1_n_0 ),
        .I2(\st_out[14]_INST_0_i_2_n_0 ),
        .I3(\st_out[14]_INST_0_i_3_n_0 ),
        .I4(\st_out[14]_INST_0_i_4_n_0 ),
        .I5(st_in[14]),
        .O(st_out[14]));
  LUT5 #(
    .INIT(32'hFF5F445F)) 
    \st_out[14]_INST_0_i_1 
       (.I0(\st_out[5]_INST_0_i_1_n_0 ),
        .I1(st_in[5]),
        .I2(\st_out[14]_INST_0_i_5_n_0 ),
        .I3(\st_out[1]_INST_0_i_1_n_0 ),
        .I4(st_in[3]),
        .O(\st_out[14]_INST_0_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h74)) 
    \st_out[14]_INST_0_i_2 
       (.I0(st_in[4]),
        .I1(\st_out[1]_INST_0_i_1_n_0 ),
        .I2(\st_out[14]_INST_0_i_6_n_0 ),
        .O(\st_out[14]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \st_out[14]_INST_0_i_3 
       (.I0(stage[0]),
        .I1(stage[1]),
        .I2(stage[2]),
        .O(\st_out[14]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \st_out[14]_INST_0_i_4 
       (.I0(m_pass[1]),
        .I1(m_pass[0]),
        .O(\st_out[14]_INST_0_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT4 #(
    .INIT(16'hFF04)) 
    \st_out[14]_INST_0_i_5 
       (.I0(\st_out[13]_INST_0_i_7_n_0 ),
        .I1(\st_out[13]_INST_0_i_6_n_0 ),
        .I2(\st_out[13]_INST_0_i_5_n_0 ),
        .I3(\st_out[3]_INST_0_i_3_n_0 ),
        .O(\st_out[14]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h333F111F333F333F)) 
    \st_out[14]_INST_0_i_6 
       (.I0(\st_out[4]_INST_0_i_3_n_0 ),
        .I1(\st_out[4]_INST_0_i_4_n_0 ),
        .I2(\st_out[13]_INST_0_i_5_n_0 ),
        .I3(\st_out[5]_INST_0_i_3_n_0 ),
        .I4(\st_out[11]_INST_0_i_3_n_0 ),
        .I5(st_in[4]),
        .O(\st_out[14]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0F200F2F000F0)) 
    \st_out[1]_INST_0 
       (.I0(\st_out[1]_INST_0_i_1_n_0 ),
        .I1(\st_out[14]_INST_0_i_4_n_0 ),
        .I2(st_in[1]),
        .I3(stage[0]),
        .I4(stage[1]),
        .I5(stage[2]),
        .O(st_out[1]));
  LUT5 #(
    .INIT(32'h80000000)) 
    \st_out[1]_INST_0_i_1 
       (.I0(st_in[12]),
        .I1(st_in[11]),
        .I2(st_in[13]),
        .I3(st_in[9]),
        .I4(st_in[10]),
        .O(\st_out[1]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFEAAAAAA)) 
    \st_out[2]_INST_0 
       (.I0(\st_out[2]_INST_0_i_1_n_0 ),
        .I1(\st_out[12]_INST_0_i_2_n_0 ),
        .I2(st_in[2]),
        .I3(\st_out[14]_INST_0_i_3_n_0 ),
        .I4(\st_out[2]_INST_0_i_2_n_0 ),
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
  LUT6 #(
    .INIT(64'hFDF5F5F5F5F5F5F5)) 
    \st_out[2]_INST_0_i_2 
       (.I0(\st_out[12]_INST_0_i_2_n_0 ),
        .I1(\st_out[13]_INST_0_i_6_n_0 ),
        .I2(\st_out[2]_INST_0_i_3_n_0 ),
        .I3(nb_grown[3]),
        .I4(\st_out[2]_INST_0_i_4_n_0 ),
        .I5(\st_out[11]_INST_0_i_8_n_0 ),
        .O(\st_out[2]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h5D555555)) 
    \st_out[2]_INST_0_i_3 
       (.I0(\st_out[2]_INST_0_i_5_n_0 ),
        .I1(\st_out[13]_INST_0_i_13_n_0 ),
        .I2(\st_out[11]_INST_0_i_7_n_0 ),
        .I3(\st_out[2]_INST_0_i_4_n_0 ),
        .I4(nb_grown[2]),
        .O(\st_out[2]_INST_0_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h40)) 
    \st_out[2]_INST_0_i_4 
       (.I0(stage[2]),
        .I1(stage[1]),
        .I2(stage[0]),
        .O(\st_out[2]_INST_0_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h8AAAAAAA)) 
    \st_out[2]_INST_0_i_5 
       (.I0(\st_out[2]_INST_0_i_6_n_0 ),
        .I1(\st_out[11]_INST_0_i_15_n_0 ),
        .I2(\st_out[2]_INST_0_i_4_n_0 ),
        .I3(nb_grown[1]),
        .I4(\st_out[11]_INST_0_i_20_n_0 ),
        .O(\st_out[2]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h1555555555555555)) 
    \st_out[2]_INST_0_i_6 
       (.I0(st_in[2]),
        .I1(e_grown[0]),
        .I2(nb_valid[2]),
        .I3(\st_out[2]_INST_0_i_4_n_0 ),
        .I4(nb_grown[0]),
        .I5(\st_out[11]_INST_0_i_14_n_0 ),
        .O(\st_out[2]_INST_0_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT5 #(
    .INIT(32'hFFFF0440)) 
    \st_out[3]_INST_0 
       (.I0(\st_out[3]_INST_0_i_1_n_0 ),
        .I1(stage[0]),
        .I2(stage[1]),
        .I3(stage[2]),
        .I4(\st_out[3]_INST_0_i_2_n_0 ),
        .O(st_out[3]));
  LUT6 #(
    .INIT(64'hFF040000FF04FFFF)) 
    \st_out[3]_INST_0_i_1 
       (.I0(\st_out[13]_INST_0_i_7_n_0 ),
        .I1(\st_out[13]_INST_0_i_6_n_0 ),
        .I2(\st_out[13]_INST_0_i_5_n_0 ),
        .I3(\st_out[3]_INST_0_i_3_n_0 ),
        .I4(\st_out[12]_INST_0_i_2_n_0 ),
        .I5(st_in[3]),
        .O(\st_out[3]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF00BFFFF00080000)) 
    \st_out[3]_INST_0_i_2 
       (.I0(ab_ptr[0]),
        .I1(nb_valid[2]),
        .I2(stage[2]),
        .I3(stage[1]),
        .I4(stage[0]),
        .I5(st_in[3]),
        .O(\st_out[3]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT5 #(
    .INIT(32'h00FF00B0)) 
    \st_out[3]_INST_0_i_3 
       (.I0(\st_out[11]_INST_0_i_3_n_0 ),
        .I1(st_in[3]),
        .I2(\st_out[4]_INST_0_i_3_n_0 ),
        .I3(\st_out[11]_INST_0_i_9_n_0 ),
        .I4(\st_out[10]_INST_0_i_6_n_0 ),
        .O(\st_out[3]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT5 #(
    .INIT(32'hFFFF0440)) 
    \st_out[4]_INST_0 
       (.I0(\st_out[4]_INST_0_i_1_n_0 ),
        .I1(stage[0]),
        .I2(stage[1]),
        .I3(stage[2]),
        .I4(\st_out[4]_INST_0_i_2_n_0 ),
        .O(st_out[4]));
  LUT6 #(
    .INIT(64'hF3F10000F3F3FFFF)) 
    \st_out[4]_INST_0_i_1 
       (.I0(\st_out[4]_INST_0_i_3_n_0 ),
        .I1(\st_out[4]_INST_0_i_4_n_0 ),
        .I2(\st_out[4]_INST_0_i_5_n_0 ),
        .I3(\st_out[11]_INST_0_i_3_n_0 ),
        .I4(\st_out[12]_INST_0_i_2_n_0 ),
        .I5(st_in[4]),
        .O(\st_out[4]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2202FF0F00002202)) 
    \st_out[4]_INST_0_i_10 
       (.I0(st_in[9]),
        .I1(nb_cid[0]),
        .I2(nb_cid[2]),
        .I3(st_in[11]),
        .I4(nb_cid[1]),
        .I5(st_in[10]),
        .O(\st_out[4]_INST_0_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \st_out[4]_INST_0_i_11 
       (.I0(nb_cid[3]),
        .I1(st_in[12]),
        .I2(nb_cid[2]),
        .I3(st_in[11]),
        .O(\st_out[4]_INST_0_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \st_out[4]_INST_0_i_12 
       (.I0(\st_out[13]_INST_0_i_8_n_0 ),
        .I1(nb_cid[19]),
        .O(\st_out[4]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hF00000B8F0F0F0F0)) 
    \st_out[4]_INST_0_i_2 
       (.I0(ab_ptr[1]),
        .I1(nb_valid[2]),
        .I2(st_in[4]),
        .I3(stage[2]),
        .I4(stage[1]),
        .I5(stage[0]),
        .O(\st_out[4]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT3 #(
    .INIT(8'hF7)) 
    \st_out[4]_INST_0_i_3 
       (.I0(e_grown[0]),
        .I1(nb_valid[2]),
        .I2(\st_out[4]_INST_0_i_6_n_0 ),
        .O(\st_out[4]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \st_out[4]_INST_0_i_4 
       (.I0(\st_out[10]_INST_0_i_6_n_0 ),
        .I1(\st_out[11]_INST_0_i_9_n_0 ),
        .O(\st_out[4]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000FF01)) 
    \st_out[4]_INST_0_i_5 
       (.I0(\st_out[4]_INST_0_i_7_n_0 ),
        .I1(\st_out[13]_INST_0_i_11_n_0 ),
        .I2(\st_out[13]_INST_0_i_10_n_0 ),
        .I3(\st_out[4]_INST_0_i_8_n_0 ),
        .I4(\st_out[4]_INST_0_i_9_n_0 ),
        .I5(\st_out[5]_INST_0_i_3_n_0 ),
        .O(\st_out[4]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h4F044F044F04FF0F)) 
    \st_out[4]_INST_0_i_6 
       (.I0(st_in[12]),
        .I1(nb_cid[3]),
        .I2(st_in[13]),
        .I3(nb_cid[4]),
        .I4(\st_out[4]_INST_0_i_10_n_0 ),
        .I5(\st_out[4]_INST_0_i_11_n_0 ),
        .O(\st_out[4]_INST_0_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT5 #(
    .INIT(32'h2022AA22)) 
    \st_out[4]_INST_0_i_7 
       (.I0(nb_cid[18]),
        .I1(\st_out[12]_INST_0_i_11_n_0 ),
        .I2(\st_out[12]_INST_0_i_10_n_0 ),
        .I3(\st_out[11]_INST_0_i_9_n_0 ),
        .I4(nb_cid[13]),
        .O(\st_out[4]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAEFEFAAEA)) 
    \st_out[4]_INST_0_i_8 
       (.I0(\st_out[4]_INST_0_i_12_n_0 ),
        .I1(nb_cid[13]),
        .I2(\st_out[11]_INST_0_i_9_n_0 ),
        .I3(\st_out[12]_INST_0_i_10_n_0 ),
        .I4(\st_out[12]_INST_0_i_11_n_0 ),
        .I5(nb_cid[18]),
        .O(\st_out[4]_INST_0_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \st_out[4]_INST_0_i_9 
       (.I0(nb_cid[19]),
        .I1(\st_out[13]_INST_0_i_8_n_0 ),
        .O(\st_out[4]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFA800A8A8)) 
    \st_out[5]_INST_0 
       (.I0(\st_out[14]_INST_0_i_3_n_0 ),
        .I1(\st_out[12]_INST_0_i_2_n_0 ),
        .I2(st_in[5]),
        .I3(\st_out[14]_INST_0_i_4_n_0 ),
        .I4(\st_out[5]_INST_0_i_1_n_0 ),
        .I5(\st_out[5]_INST_0_i_2_n_0 ),
        .O(st_out[5]));
  LUT6 #(
    .INIT(64'h00000000BFBFBF00)) 
    \st_out[5]_INST_0_i_1 
       (.I0(\st_out[11]_INST_0_i_3_n_0 ),
        .I1(st_in[5]),
        .I2(\st_out[13]_INST_0_i_4_n_0 ),
        .I3(\st_out[13]_INST_0_i_5_n_0 ),
        .I4(\st_out[5]_INST_0_i_3_n_0 ),
        .I5(\st_out[1]_INST_0_i_1_n_0 ),
        .O(\st_out[5]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF00BFFFF00080000)) 
    \st_out[5]_INST_0_i_2 
       (.I0(ab_ptr[2]),
        .I1(nb_valid[2]),
        .I2(stage[2]),
        .I3(stage[1]),
        .I4(stage[0]),
        .I5(st_in[5]),
        .O(\st_out[5]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h80000000FFFFFFFF)) 
    \st_out[5]_INST_0_i_3 
       (.I0(nb_cid[17]),
        .I1(nb_cid[19]),
        .I2(nb_cid[18]),
        .I3(nb_cid[15]),
        .I4(nb_cid[16]),
        .I5(\st_out[13]_INST_0_i_6_n_0 ),
        .O(\st_out[5]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF8AA82020)) 
    \st_out[6]_INST_0 
       (.I0(\st_out[14]_INST_0_i_3_n_0 ),
        .I1(\st_out[6]_INST_0_i_1_n_0 ),
        .I2(\st_out[6]_INST_0_i_2_n_0 ),
        .I3(\st_out[6]_INST_0_i_3_n_0 ),
        .I4(st_in[6]),
        .I5(\st_out[6]_INST_0_i_4_n_0 ),
        .O(st_out[6]));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \st_out[6]_INST_0_i_1 
       (.I0(m_pass[0]),
        .I1(m_pass[1]),
        .O(\st_out[6]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h28828228)) 
    \st_out[6]_INST_0_i_2 
       (.I0(nb_valid[2]),
        .I1(nb_push[0]),
        .I2(nb_push[1]),
        .I3(nb_push[2]),
        .I4(nb_push[3]),
        .O(\st_out[6]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0008888800080008)) 
    \st_out[6]_INST_0_i_3 
       (.I0(\st_out[4]_INST_0_i_1_n_0 ),
        .I1(\st_out[3]_INST_0_i_1_n_0 ),
        .I2(\st_out[12]_INST_0_i_2_n_0 ),
        .I3(st_in[5]),
        .I4(\st_out[14]_INST_0_i_4_n_0 ),
        .I5(\st_out[5]_INST_0_i_1_n_0 ),
        .O(\st_out[6]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAA0000E2AAAAAAAA)) 
    \st_out[6]_INST_0_i_4 
       (.I0(st_in[6]),
        .I1(nb_valid[2]),
        .I2(ab_defect),
        .I3(stage[2]),
        .I4(stage[1]),
        .I5(stage[0]),
        .O(\st_out[6]_INST_0_i_4_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \st_out[7]_INST_0 
       (.I0(\st_out[7]_INST_0_i_1_n_0 ),
        .I1(\st_out[7]_INST_0_i_2_n_0 ),
        .O(st_out[7]));
  LUT6 #(
    .INIT(64'h00000D00000C0C00)) 
    \st_out[7]_INST_0_i_1 
       (.I0(st_in[2]),
        .I1(st_in[7]),
        .I2(stage[0]),
        .I3(stage[2]),
        .I4(stage[1]),
        .I5(st_in[8]),
        .O(\st_out[7]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFF0F0BF00000080)) 
    \st_out[7]_INST_0_i_2 
       (.I0(ab_whole),
        .I1(nb_valid[2]),
        .I2(stage[0]),
        .I3(stage[2]),
        .I4(stage[1]),
        .I5(st_in[7]),
        .O(\st_out[7]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF08FB0000)) 
    \st_out[8]_INST_0 
       (.I0(st_in[8]),
        .I1(m_pass[0]),
        .I2(m_pass[1]),
        .I3(\st_out[8]_INST_0_i_1_n_0 ),
        .I4(\st_out[14]_INST_0_i_3_n_0 ),
        .I5(\st_out[8]_INST_0_i_2_n_0 ),
        .O(st_out[8]));
  LUT6 #(
    .INIT(64'hFF7F3373CC4C0040)) 
    \st_out[8]_INST_0_i_1 
       (.I0(st_in[6]),
        .I1(\st_out[4]_INST_0_i_1_n_0 ),
        .I2(\st_out[3]_INST_0_i_1_n_0 ),
        .I3(\st_out[8]_INST_0_i_3_n_0 ),
        .I4(\st_out[8]_INST_0_i_4_n_0 ),
        .I5(\st_out[8]_INST_0_i_5_n_0 ),
        .O(\st_out[8]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAA0000E2AAAAAAAA)) 
    \st_out[8]_INST_0_i_2 
       (.I0(st_in[8]),
        .I1(nb_valid[2]),
        .I2(nb_active[3]),
        .I3(stage[2]),
        .I4(stage[1]),
        .I5(stage[0]),
        .O(\st_out[8]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0F0F0F5F5B0A0)) 
    \st_out[8]_INST_0_i_3 
       (.I0(\st_out[14]_INST_0_i_4_n_0 ),
        .I1(\st_out[11]_INST_0_i_3_n_0 ),
        .I2(st_in[5]),
        .I3(\st_out[13]_INST_0_i_4_n_0 ),
        .I4(\st_out[4]_INST_0_i_5_n_0 ),
        .I5(\st_out[1]_INST_0_i_1_n_0 ),
        .O(\st_out[8]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h5400545557FF5755)) 
    \st_out[8]_INST_0_i_4 
       (.I0(nb_active[3]),
        .I1(\st_out[4]_INST_0_i_5_n_0 ),
        .I2(\st_out[3]_INST_0_i_3_n_0 ),
        .I3(\st_out[12]_INST_0_i_2_n_0 ),
        .I4(st_in[3]),
        .I5(nb_active[0]),
        .O(\st_out[8]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h5400545557FF5755)) 
    \st_out[8]_INST_0_i_5 
       (.I0(nb_active[1]),
        .I1(\st_out[4]_INST_0_i_5_n_0 ),
        .I2(\st_out[3]_INST_0_i_3_n_0 ),
        .I3(\st_out[12]_INST_0_i_2_n_0 ),
        .I4(st_in[3]),
        .I5(nb_active[2]),
        .O(\st_out[8]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFE0E0C000)) 
    \st_out[9]_INST_0 
       (.I0(\st_out[13]_INST_0_i_1_n_0 ),
        .I1(st_in[9]),
        .I2(\st_out[14]_INST_0_i_3_n_0 ),
        .I3(\st_out[14]_INST_0_i_4_n_0 ),
        .I4(\st_out[9]_INST_0_i_1_n_0 ),
        .I5(\st_out[9]_INST_0_i_2_n_0 ),
        .O(st_out[9]));
  LUT6 #(
    .INIT(64'hAABAAA8A00000000)) 
    \st_out[9]_INST_0_i_1 
       (.I0(\st_out[9]_INST_0_i_3_n_0 ),
        .I1(\st_out[13]_INST_0_i_7_n_0 ),
        .I2(\st_out[13]_INST_0_i_6_n_0 ),
        .I3(\st_out[13]_INST_0_i_5_n_0 ),
        .I4(nb_cid[15]),
        .I5(\st_out[12]_INST_0_i_2_n_0 ),
        .O(\st_out[9]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF00000B8F0F0F0F0)) 
    \st_out[9]_INST_0_i_2 
       (.I0(nb_cid[15]),
        .I1(nb_valid[2]),
        .I2(st_in[9]),
        .I3(stage[2]),
        .I4(stage[1]),
        .I5(stage[0]),
        .O(\st_out[9]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFB0B0000FB0B)) 
    \st_out[9]_INST_0_i_3 
       (.I0(\st_out[4]_INST_0_i_3_n_0 ),
        .I1(\st_out[9]_INST_0_i_4_n_0 ),
        .I2(\st_out[10]_INST_0_i_6_n_0 ),
        .I3(nb_cid[5]),
        .I4(\st_out[11]_INST_0_i_9_n_0 ),
        .I5(nb_cid[10]),
        .O(\st_out[9]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h0F070F8F)) 
    \st_out[9]_INST_0_i_4 
       (.I0(nb_valid[2]),
        .I1(e_grown[0]),
        .I2(st_in[9]),
        .I3(\st_out[4]_INST_0_i_6_n_0 ),
        .I4(nb_cid[0]),
        .O(\st_out[9]_INST_0_i_4_n_0 ));
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
module snowflake_pe__7
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
  wire [14:0]st_in;
  wire [14:0]st_out;
  wire \st_out[0]_INST_0_i_10_n_0 ;
  wire \st_out[0]_INST_0_i_11_n_0 ;
  wire \st_out[0]_INST_0_i_12_n_0 ;
  wire \st_out[0]_INST_0_i_13_n_0 ;
  wire \st_out[0]_INST_0_i_14_n_0 ;
  wire \st_out[0]_INST_0_i_15_n_0 ;
  wire \st_out[0]_INST_0_i_16_n_0 ;
  wire \st_out[0]_INST_0_i_17_n_0 ;
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
  wire \st_out[11]_INST_0_i_7_n_0 ;
  wire \st_out[11]_INST_0_i_8_n_0 ;
  wire \st_out[12]_INST_0_i_10_n_0 ;
  wire \st_out[12]_INST_0_i_11_n_0 ;
  wire \st_out[12]_INST_0_i_1_n_0 ;
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
  wire \st_out[14]_INST_0_i_3_n_0 ;
  wire \st_out[14]_INST_0_i_4_n_0 ;
  wire \st_out[14]_INST_0_i_5_n_0 ;
  wire \st_out[14]_INST_0_i_6_n_0 ;
  wire \st_out[14]_INST_0_i_7_n_0 ;
  wire \st_out[14]_INST_0_i_8_n_0 ;
  wire \st_out[14]_INST_0_i_9_n_0 ;
  wire \st_out[1]_INST_0_i_1_n_0 ;
  wire \st_out[2]_INST_0_i_10_n_0 ;
  wire \st_out[2]_INST_0_i_11_n_0 ;
  wire \st_out[2]_INST_0_i_12_n_0 ;
  wire \st_out[2]_INST_0_i_13_n_0 ;
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
  wire \st_out[3]_INST_0_i_5_n_0 ;
  wire \st_out[3]_INST_0_i_6_n_0 ;
  wire \st_out[4]_INST_0_i_1_n_0 ;
  wire \st_out[4]_INST_0_i_2_n_0 ;
  wire \st_out[4]_INST_0_i_3_n_0 ;
  wire \st_out[4]_INST_0_i_4_n_0 ;
  wire \st_out[4]_INST_0_i_5_n_0 ;
  wire \st_out[4]_INST_0_i_6_n_0 ;
  wire \st_out[4]_INST_0_i_7_n_0 ;
  wire \st_out[5]_INST_0_i_1_n_0 ;
  wire \st_out[5]_INST_0_i_2_n_0 ;
  wire \st_out[5]_INST_0_i_3_n_0 ;
  wire \st_out[5]_INST_0_i_4_n_0 ;
  wire \st_out[5]_INST_0_i_5_n_0 ;
  wire \st_out[6]_INST_0_i_1_n_0 ;
  wire \st_out[6]_INST_0_i_2_n_0 ;
  wire \st_out[7]_INST_0_i_1_n_0 ;
  wire \st_out[7]_INST_0_i_2_n_0 ;
  wire \st_out[8]_INST_0_i_1_n_0 ;
  wire \st_out[8]_INST_0_i_2_n_0 ;
  wire \st_out[8]_INST_0_i_3_n_0 ;
  wire \st_out[8]_INST_0_i_4_n_0 ;
  wire \st_out[8]_INST_0_i_5_n_0 ;
  wire \st_out[9]_INST_0_i_1_n_0 ;
  wire \st_out[9]_INST_0_i_2_n_0 ;
  wire \st_out[9]_INST_0_i_3_n_0 ;
  wire \st_out[9]_INST_0_i_4_n_0 ;
  wire \st_out[9]_INST_0_i_5_n_0 ;
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
    .INIT(64'h00000000F7FCF6FD)) 
    \st_out[0]_INST_0 
       (.I0(\st_out[8]_INST_0_i_2_n_0 ),
        .I1(st_in[6]),
        .I2(\st_out[0]_INST_0_i_1_n_0 ),
        .I3(st_in[8]),
        .I4(\st_out[8]_INST_0_i_1_n_0 ),
        .I5(\st_out[0]_INST_0_i_2_n_0 ),
        .O(st_out[0]));
  LUT6 #(
    .INIT(64'hAAAAAAAAFEFEFEFF)) 
    \st_out[0]_INST_0_i_1 
       (.I0(\st_out[0]_INST_0_i_3_n_0 ),
        .I1(\st_out[1]_INST_0_i_1_n_0 ),
        .I2(\st_out[0]_INST_0_i_4_n_0 ),
        .I3(\st_out[2]_INST_0_i_4_n_0 ),
        .I4(\st_out[0]_INST_0_i_5_n_0 ),
        .I5(\st_out[12]_INST_0_i_1_n_0 ),
        .O(\st_out[0]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \st_out[0]_INST_0_i_10 
       (.I0(nb_valid[2]),
        .I1(e_grown[0]),
        .O(\st_out[0]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAAAA2AAAAAAAAAAA)) 
    \st_out[0]_INST_0_i_11 
       (.I0(\st_out[2]_INST_0_i_9_n_0 ),
        .I1(nb_grown[2]),
        .I2(stage[0]),
        .I3(stage[1]),
        .I4(stage[2]),
        .I5(\st_out[2]_INST_0_i_8_n_0 ),
        .O(\st_out[0]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hA8888888AAAAAAAA)) 
    \st_out[0]_INST_0_i_12 
       (.I0(\st_out[14]_INST_0_i_13_n_0 ),
        .I1(\st_out[14]_INST_0_i_10_n_0 ),
        .I2(nb_grown[1]),
        .I3(\st_out[2]_INST_0_i_6_n_0 ),
        .I4(\st_out[2]_INST_0_i_11_n_0 ),
        .I5(\st_out[0]_INST_0_i_15_n_0 ),
        .O(\st_out[0]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h00000080FFFFFFFF)) 
    \st_out[0]_INST_0_i_13 
       (.I0(nb_grown[0]),
        .I1(stage[0]),
        .I2(stage[1]),
        .I3(stage[2]),
        .I4(st_in[2]),
        .I5(\st_out[2]_INST_0_i_13_n_0 ),
        .O(\st_out[0]_INST_0_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \st_out[0]_INST_0_i_14 
       (.I0(nb_cid[4]),
        .I1(nb_cid[3]),
        .O(\st_out[0]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hEEE8EEE8EEE8E888)) 
    \st_out[0]_INST_0_i_15 
       (.I0(\st_out[14]_INST_0_i_16_n_0 ),
        .I1(nb_cid[9]),
        .I2(\st_out[14]_INST_0_i_15_n_0 ),
        .I3(nb_cid[8]),
        .I4(\st_out[0]_INST_0_i_16_n_0 ),
        .I5(\st_out[0]_INST_0_i_17_n_0 ),
        .O(\st_out[0]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hEEE0EEE0EEE0E000)) 
    \st_out[0]_INST_0_i_16 
       (.I0(\st_out[11]_INST_0_i_8_n_0 ),
        .I1(nb_cid[7]),
        .I2(\st_out[10]_INST_0_i_6_n_0 ),
        .I3(nb_cid[6]),
        .I4(\st_out[9]_INST_0_i_5_n_0 ),
        .I5(nb_cid[5]),
        .O(\st_out[0]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h02A200AA00AA00AA)) 
    \st_out[0]_INST_0_i_17 
       (.I0(nb_cid[7]),
        .I1(nb_cid[2]),
        .I2(\st_out[4]_INST_0_i_5_n_0 ),
        .I3(st_in[11]),
        .I4(e_grown[0]),
        .I5(nb_valid[2]),
        .O(\st_out[0]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h11100000FFFFFFFF)) 
    \st_out[0]_INST_0_i_2 
       (.I0(\st_out[1]_INST_0_i_1_n_0 ),
        .I1(\st_out[0]_INST_0_i_4_n_0 ),
        .I2(\st_out[2]_INST_0_i_4_n_0 ),
        .I3(\st_out[0]_INST_0_i_5_n_0 ),
        .I4(\st_out[8]_INST_0_i_3_n_0 ),
        .I5(\st_out[14]_INST_0_i_2_n_0 ),
        .O(\st_out[0]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBEEBEBBEAAAAAAAA)) 
    \st_out[0]_INST_0_i_3 
       (.I0(\st_out[8]_INST_0_i_3_n_0 ),
        .I1(nb_push[3]),
        .I2(nb_push[2]),
        .I3(nb_push[1]),
        .I4(nb_push[0]),
        .I5(nb_valid[2]),
        .O(\st_out[0]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF0B0F0F0F010F000)) 
    \st_out[0]_INST_0_i_4 
       (.I0(\st_out[0]_INST_0_i_6_n_0 ),
        .I1(st_in[1]),
        .I2(\st_out[2]_INST_0_i_4_n_0 ),
        .I3(\st_out[0]_INST_0_i_7_n_0 ),
        .I4(\st_out[0]_INST_0_i_8_n_0 ),
        .I5(\st_out[11]_INST_0_i_4_n_0 ),
        .O(\st_out[0]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h000000008A008A8A)) 
    \st_out[0]_INST_0_i_5 
       (.I0(\st_out[14]_INST_0_i_9_n_0 ),
        .I1(\st_out[0]_INST_0_i_9_n_0 ),
        .I2(\st_out[0]_INST_0_i_10_n_0 ),
        .I3(\st_out[0]_INST_0_i_11_n_0 ),
        .I4(\st_out[2]_INST_0_i_10_n_0 ),
        .I5(\st_out[0]_INST_0_i_12_n_0 ),
        .O(\st_out[0]_INST_0_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \st_out[0]_INST_0_i_6 
       (.I0(nb_cid[17]),
        .I1(nb_cid[16]),
        .I2(nb_cid[15]),
        .O(\st_out[0]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h08000000FFFFFFFF)) 
    \st_out[0]_INST_0_i_7 
       (.I0(stage[0]),
        .I1(stage[1]),
        .I2(stage[2]),
        .I3(\st_out[2]_INST_0_i_5_n_0 ),
        .I4(nb_grown[3]),
        .I5(\st_out[0]_INST_0_i_5_n_0 ),
        .O(\st_out[0]_INST_0_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \st_out[0]_INST_0_i_8 
       (.I0(nb_cid[16]),
        .I1(nb_cid[18]),
        .I2(nb_cid[19]),
        .I3(nb_cid[17]),
        .O(\st_out[0]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h3333333320000000)) 
    \st_out[0]_INST_0_i_9 
       (.I0(nb_cid[0]),
        .I1(\st_out[0]_INST_0_i_13_n_0 ),
        .I2(\st_out[0]_INST_0_i_14_n_0 ),
        .I3(nb_cid[1]),
        .I4(nb_cid[2]),
        .I5(\st_out[4]_INST_0_i_5_n_0 ),
        .O(\st_out[0]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAEEEAEEEFFFFAEEE)) 
    \st_out[10]_INST_0 
       (.I0(\st_out[10]_INST_0_i_1_n_0 ),
        .I1(\st_out[10]_INST_0_i_2_n_0 ),
        .I2(\st_out[10]_INST_0_i_3_n_0 ),
        .I3(nb_cid[16]),
        .I4(st_in[10]),
        .I5(\st_out[12]_INST_0_i_3_n_0 ),
        .O(st_out[10]));
  LUT6 #(
    .INIT(64'hE0A0E0A0E000E0A0)) 
    \st_out[10]_INST_0_i_1 
       (.I0(\st_out[10]_INST_0_i_4_n_0 ),
        .I1(\st_out[12]_INST_0_i_1_n_0 ),
        .I2(\st_out[14]_INST_0_i_2_n_0 ),
        .I3(st_in[10]),
        .I4(\st_out[13]_INST_0_i_6_n_0 ),
        .I5(\st_out[13]_INST_0_i_7_n_0 ),
        .O(\st_out[10]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT4 #(
    .INIT(16'h0200)) 
    \st_out[10]_INST_0_i_2 
       (.I0(stage[0]),
        .I1(stage[1]),
        .I2(stage[2]),
        .I3(nb_valid[2]),
        .O(\st_out[10]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \st_out[10]_INST_0_i_3 
       (.I0(nb_cid[18]),
        .I1(nb_cid[17]),
        .I2(nb_cid[16]),
        .I3(nb_cid[19]),
        .I4(nb_cid[15]),
        .O(\st_out[10]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h8A8A8A80)) 
    \st_out[10]_INST_0_i_4 
       (.I0(\st_out[2]_INST_0_i_2_n_0 ),
        .I1(nb_cid[16]),
        .I2(\st_out[5]_INST_0_i_4_n_0 ),
        .I3(\st_out[10]_INST_0_i_5_n_0 ),
        .I4(\st_out[5]_INST_0_i_3_n_0 ),
        .O(\st_out[10]_INST_0_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h8BFF8B00)) 
    \st_out[10]_INST_0_i_5 
       (.I0(nb_cid[6]),
        .I1(\st_out[14]_INST_0_i_8_n_0 ),
        .I2(\st_out[10]_INST_0_i_6_n_0 ),
        .I3(\st_out[14]_INST_0_i_9_n_0 ),
        .I4(nb_cid[11]),
        .O(\st_out[10]_INST_0_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h45557555)) 
    \st_out[10]_INST_0_i_6 
       (.I0(st_in[10]),
        .I1(\st_out[4]_INST_0_i_5_n_0 ),
        .I2(e_grown[0]),
        .I3(nb_valid[2]),
        .I4(nb_cid[1]),
        .O(\st_out[10]_INST_0_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hF8F8FFF8)) 
    \st_out[11]_INST_0 
       (.I0(\st_out[14]_INST_0_i_2_n_0 ),
        .I1(\st_out[11]_INST_0_i_1_n_0 ),
        .I2(\st_out[11]_INST_0_i_2_n_0 ),
        .I3(st_in[11]),
        .I4(\st_out[12]_INST_0_i_3_n_0 ),
        .O(st_out[11]));
  LUT6 #(
    .INIT(64'hA0A0A0A0F5E4F0E4)) 
    \st_out[11]_INST_0_i_1 
       (.I0(\st_out[12]_INST_0_i_1_n_0 ),
        .I1(\st_out[11]_INST_0_i_3_n_0 ),
        .I2(st_in[11]),
        .I3(\st_out[13]_INST_0_i_6_n_0 ),
        .I4(\st_out[13]_INST_0_i_7_n_0 ),
        .I5(\st_out[1]_INST_0_i_1_n_0 ),
        .O(\st_out[11]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA828282828282828)) 
    \st_out[11]_INST_0_i_2 
       (.I0(\st_out[10]_INST_0_i_2_n_0 ),
        .I1(nb_cid[16]),
        .I2(nb_cid[17]),
        .I3(nb_cid[18]),
        .I4(nb_cid[19]),
        .I5(nb_cid[15]),
        .O(\st_out[11]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT4 #(
    .INIT(16'h80DF)) 
    \st_out[11]_INST_0_i_3 
       (.I0(\st_out[11]_INST_0_i_4_n_0 ),
        .I1(nb_cid[17]),
        .I2(\st_out[11]_INST_0_i_5_n_0 ),
        .I3(\st_out[11]_INST_0_i_6_n_0 ),
        .O(\st_out[11]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h444D444D444D4DDD)) 
    \st_out[11]_INST_0_i_4 
       (.I0(nb_cid[19]),
        .I1(\st_out[13]_INST_0_i_8_n_0 ),
        .I2(\st_out[12]_INST_0_i_9_n_0 ),
        .I3(nb_cid[18]),
        .I4(\st_out[13]_INST_0_i_11_n_0 ),
        .I5(\st_out[11]_INST_0_i_7_n_0 ),
        .O(\st_out[11]_INST_0_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT5 #(
    .INIT(32'h2AAAAAAA)) 
    \st_out[11]_INST_0_i_5 
       (.I0(\st_out[2]_INST_0_i_4_n_0 ),
        .I1(nb_cid[17]),
        .I2(nb_cid[19]),
        .I3(nb_cid[18]),
        .I4(nb_cid[16]),
        .O(\st_out[11]_INST_0_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT5 #(
    .INIT(32'h1DDD1D11)) 
    \st_out[11]_INST_0_i_6 
       (.I0(nb_cid[12]),
        .I1(\st_out[14]_INST_0_i_9_n_0 ),
        .I2(nb_cid[7]),
        .I3(\st_out[14]_INST_0_i_8_n_0 ),
        .I4(\st_out[11]_INST_0_i_8_n_0 ),
        .O(\st_out[11]_INST_0_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \st_out[11]_INST_0_i_7 
       (.I0(\st_out[11]_INST_0_i_6_n_0 ),
        .I1(nb_cid[17]),
        .O(\st_out[11]_INST_0_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT5 #(
    .INIT(32'h0F070F8F)) 
    \st_out[11]_INST_0_i_8 
       (.I0(nb_valid[2]),
        .I1(e_grown[0]),
        .I2(st_in[11]),
        .I3(\st_out[4]_INST_0_i_5_n_0 ),
        .I4(nb_cid[2]),
        .O(\st_out[11]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFE0C0FFC0)) 
    \st_out[12]_INST_0 
       (.I0(\st_out[12]_INST_0_i_1_n_0 ),
        .I1(\st_out[12]_INST_0_i_2_n_0 ),
        .I2(\st_out[14]_INST_0_i_2_n_0 ),
        .I3(st_in[12]),
        .I4(\st_out[12]_INST_0_i_3_n_0 ),
        .I5(\st_out[12]_INST_0_i_4_n_0 ),
        .O(st_out[12]));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \st_out[12]_INST_0_i_1 
       (.I0(m_pass[1]),
        .I1(m_pass[0]),
        .O(\st_out[12]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \st_out[12]_INST_0_i_10 
       (.I0(nb_cid[11]),
        .I1(nb_cid[10]),
        .I2(nb_cid[14]),
        .I3(nb_cid[12]),
        .O(\st_out[12]_INST_0_i_10_n_0 ));
  LUT5 #(
    .INIT(32'hF0F2F072)) 
    \st_out[12]_INST_0_i_11 
       (.I0(\st_out[14]_INST_0_i_13_n_0 ),
        .I1(nb_cid[8]),
        .I2(\st_out[14]_INST_0_i_15_n_0 ),
        .I3(\st_out[0]_INST_0_i_15_n_0 ),
        .I4(\st_out[14]_INST_0_i_30_n_0 ),
        .O(\st_out[12]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAAA88888AAAAAAAA)) 
    \st_out[12]_INST_0_i_2 
       (.I0(\st_out[12]_INST_0_i_5_n_0 ),
        .I1(\st_out[1]_INST_0_i_1_n_0 ),
        .I2(st_in[12]),
        .I3(\st_out[13]_INST_0_i_7_n_0 ),
        .I4(\st_out[13]_INST_0_i_6_n_0 ),
        .I5(\st_out[12]_INST_0_i_6_n_0 ),
        .O(\st_out[12]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT4 #(
    .INIT(16'h3E00)) 
    \st_out[12]_INST_0_i_3 
       (.I0(nb_valid[2]),
        .I1(stage[2]),
        .I2(stage[1]),
        .I3(stage[0]),
        .O(\st_out[12]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hA888288828882888)) 
    \st_out[12]_INST_0_i_4 
       (.I0(\st_out[10]_INST_0_i_2_n_0 ),
        .I1(nb_cid[18]),
        .I2(nb_cid[17]),
        .I3(nb_cid[16]),
        .I4(nb_cid[19]),
        .I5(nb_cid[15]),
        .O(\st_out[12]_INST_0_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT4 #(
    .INIT(16'hF351)) 
    \st_out[12]_INST_0_i_5 
       (.I0(\st_out[1]_INST_0_i_1_n_0 ),
        .I1(m_pass[1]),
        .I2(m_pass[0]),
        .I3(nb_valid[2]),
        .O(\st_out[12]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h4040FFF0FFFFFFF0)) 
    \st_out[12]_INST_0_i_6 
       (.I0(\st_out[12]_INST_0_i_7_n_0 ),
        .I1(\st_out[12]_INST_0_i_8_n_0 ),
        .I2(\st_out[12]_INST_0_i_9_n_0 ),
        .I3(\st_out[5]_INST_0_i_3_n_0 ),
        .I4(\st_out[5]_INST_0_i_4_n_0 ),
        .I5(nb_cid[18]),
        .O(\st_out[12]_INST_0_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \st_out[12]_INST_0_i_7 
       (.I0(nb_cid[19]),
        .I1(nb_cid[17]),
        .O(\st_out[12]_INST_0_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \st_out[12]_INST_0_i_8 
       (.I0(nb_cid[15]),
        .I1(nb_cid[16]),
        .O(\st_out[12]_INST_0_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hC4CF)) 
    \st_out[12]_INST_0_i_9 
       (.I0(\st_out[12]_INST_0_i_10_n_0 ),
        .I1(\st_out[12]_INST_0_i_11_n_0 ),
        .I2(\st_out[14]_INST_0_i_9_n_0 ),
        .I3(nb_cid[13]),
        .O(\st_out[12]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFEAEAFAEA)) 
    \st_out[13]_INST_0 
       (.I0(\st_out[13]_INST_0_i_1_n_0 ),
        .I1(\st_out[13]_INST_0_i_2_n_0 ),
        .I2(st_in[13]),
        .I3(\st_out[13]_INST_0_i_3_n_0 ),
        .I4(nb_valid[2]),
        .I5(\st_out[13]_INST_0_i_4_n_0 ),
        .O(st_out[13]));
  LUT6 #(
    .INIT(64'hE0A0E0A0E000E0A0)) 
    \st_out[13]_INST_0_i_1 
       (.I0(\st_out[13]_INST_0_i_5_n_0 ),
        .I1(\st_out[12]_INST_0_i_1_n_0 ),
        .I2(\st_out[14]_INST_0_i_2_n_0 ),
        .I3(st_in[13]),
        .I4(\st_out[13]_INST_0_i_6_n_0 ),
        .I5(\st_out[13]_INST_0_i_7_n_0 ),
        .O(\st_out[13]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT4 #(
    .INIT(16'h444F)) 
    \st_out[13]_INST_0_i_10 
       (.I0(nb_cid[19]),
        .I1(\st_out[13]_INST_0_i_8_n_0 ),
        .I2(\st_out[12]_INST_0_i_9_n_0 ),
        .I3(nb_cid[18]),
        .O(\st_out[13]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hEF0EEF0EEF0E0000)) 
    \st_out[13]_INST_0_i_11 
       (.I0(nb_cid[15]),
        .I1(\st_out[9]_INST_0_i_3_n_0 ),
        .I2(\st_out[10]_INST_0_i_5_n_0 ),
        .I3(nb_cid[16]),
        .I4(nb_cid[17]),
        .I5(\st_out[11]_INST_0_i_6_n_0 ),
        .O(\st_out[13]_INST_0_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \st_out[13]_INST_0_i_12 
       (.I0(nb_cid[18]),
        .I1(\st_out[12]_INST_0_i_9_n_0 ),
        .I2(nb_cid[17]),
        .I3(\st_out[11]_INST_0_i_6_n_0 ),
        .O(\st_out[13]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h4555555555555555)) 
    \st_out[13]_INST_0_i_13 
       (.I0(\st_out[14]_INST_0_i_6_n_0 ),
        .I1(st_in[1]),
        .I2(nb_valid[2]),
        .I3(e_grown[0]),
        .I4(nb_cid[4]),
        .I5(\st_out[14]_INST_0_i_12_n_0 ),
        .O(\st_out[13]_INST_0_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT3 #(
    .INIT(8'h8F)) 
    \st_out[13]_INST_0_i_2 
       (.I0(stage[2]),
        .I1(stage[1]),
        .I2(stage[0]),
        .O(\st_out[13]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \st_out[13]_INST_0_i_3 
       (.I0(stage[2]),
        .I1(stage[1]),
        .I2(stage[0]),
        .O(\st_out[13]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8CC0C0C0C0C0C0C0)) 
    \st_out[13]_INST_0_i_4 
       (.I0(nb_cid[15]),
        .I1(\st_out[10]_INST_0_i_2_n_0 ),
        .I2(nb_cid[19]),
        .I3(nb_cid[16]),
        .I4(nb_cid[17]),
        .I5(nb_cid[18]),
        .O(\st_out[13]_INST_0_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT5 #(
    .INIT(32'hAAAA8088)) 
    \st_out[13]_INST_0_i_5 
       (.I0(\st_out[2]_INST_0_i_2_n_0 ),
        .I1(\st_out[13]_INST_0_i_8_n_0 ),
        .I2(nb_cid[19]),
        .I3(\st_out[2]_INST_0_i_4_n_0 ),
        .I4(\st_out[13]_INST_0_i_6_n_0 ),
        .O(\st_out[13]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hA2AAA2AAA2AAA2A2)) 
    \st_out[13]_INST_0_i_6 
       (.I0(\st_out[5]_INST_0_i_3_n_0 ),
        .I1(\st_out[2]_INST_0_i_4_n_0 ),
        .I2(\st_out[13]_INST_0_i_9_n_0 ),
        .I3(\st_out[13]_INST_0_i_10_n_0 ),
        .I4(\st_out[13]_INST_0_i_11_n_0 ),
        .I5(\st_out[13]_INST_0_i_12_n_0 ),
        .O(\st_out[13]_INST_0_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT5 #(
    .INIT(32'h0040FFFF)) 
    \st_out[13]_INST_0_i_7 
       (.I0(\st_out[2]_INST_0_i_7_n_0 ),
        .I1(e_grown[3]),
        .I2(nb_valid[2]),
        .I3(st_in[1]),
        .I4(\st_out[13]_INST_0_i_13_n_0 ),
        .O(\st_out[13]_INST_0_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h45)) 
    \st_out[13]_INST_0_i_8 
       (.I0(\st_out[14]_INST_0_i_21_n_0 ),
        .I1(nb_cid[14]),
        .I2(\st_out[2]_INST_0_i_10_n_0 ),
        .O(\st_out[13]_INST_0_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \st_out[13]_INST_0_i_9 
       (.I0(nb_cid[19]),
        .I1(\st_out[13]_INST_0_i_8_n_0 ),
        .O(\st_out[13]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h8FFF8F8F80008080)) 
    \st_out[14]_INST_0 
       (.I0(\st_out[14]_INST_0_i_1_n_0 ),
        .I1(st_in[6]),
        .I2(\st_out[14]_INST_0_i_2_n_0 ),
        .I3(m_pass[0]),
        .I4(m_pass[1]),
        .I5(st_in[14]),
        .O(st_out[14]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFCAAFCFF)) 
    \st_out[14]_INST_0_i_1 
       (.I0(\st_out[14]_INST_0_i_3_n_0 ),
        .I1(st_in[4]),
        .I2(st_in[3]),
        .I3(\st_out[1]_INST_0_i_1_n_0 ),
        .I4(\st_out[14]_INST_0_i_4_n_0 ),
        .I5(\st_out[14]_INST_0_i_5_n_0 ),
        .O(\st_out[14]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4000000000000000)) 
    \st_out[14]_INST_0_i_10 
       (.I0(st_in[1]),
        .I1(nb_cid[6]),
        .I2(nb_cid[5]),
        .I3(nb_cid[9]),
        .I4(nb_cid[7]),
        .I5(nb_cid[8]),
        .O(\st_out[14]_INST_0_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT4 #(
    .INIT(16'hBFFF)) 
    \st_out[14]_INST_0_i_11 
       (.I0(st_in[1]),
        .I1(nb_valid[2]),
        .I2(e_grown[0]),
        .I3(\st_out[14]_INST_0_i_22_n_0 ),
        .O(\st_out[14]_INST_0_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \st_out[14]_INST_0_i_12 
       (.I0(nb_cid[3]),
        .I1(nb_cid[0]),
        .I2(nb_cid[1]),
        .I3(nb_cid[2]),
        .O(\st_out[14]_INST_0_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT5 #(
    .INIT(32'h8A00AA00)) 
    \st_out[14]_INST_0_i_13 
       (.I0(e_grown[1]),
        .I1(st_in[1]),
        .I2(e_grown[0]),
        .I3(nb_valid[2]),
        .I4(\st_out[14]_INST_0_i_22_n_0 ),
        .O(\st_out[14]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFD4D400)) 
    \st_out[14]_INST_0_i_14 
       (.I0(\st_out[14]_INST_0_i_23_n_0 ),
        .I1(nb_cid[6]),
        .I2(\st_out[10]_INST_0_i_6_n_0 ),
        .I3(nb_cid[7]),
        .I4(\st_out[11]_INST_0_i_8_n_0 ),
        .I5(\st_out[14]_INST_0_i_24_n_0 ),
        .O(\st_out[14]_INST_0_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT5 #(
    .INIT(32'h0F070F8F)) 
    \st_out[14]_INST_0_i_15 
       (.I0(nb_valid[2]),
        .I1(e_grown[0]),
        .I2(st_in[12]),
        .I3(\st_out[4]_INST_0_i_5_n_0 ),
        .I4(nb_cid[3]),
        .O(\st_out[14]_INST_0_i_15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT4 #(
    .INIT(16'h40FF)) 
    \st_out[14]_INST_0_i_16 
       (.I0(nb_cid[4]),
        .I1(nb_valid[2]),
        .I2(e_grown[0]),
        .I3(st_in[13]),
        .O(\st_out[14]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h80000000FFFFFFFF)) 
    \st_out[14]_INST_0_i_17 
       (.I0(nb_cid[11]),
        .I1(nb_cid[10]),
        .I2(nb_cid[14]),
        .I3(nb_cid[12]),
        .I4(nb_cid[13]),
        .I5(\st_out[2]_INST_0_i_10_n_0 ),
        .O(\st_out[14]_INST_0_i_17_n_0 ));
  LUT5 #(
    .INIT(32'h04FF0404)) 
    \st_out[14]_INST_0_i_18 
       (.I0(\st_out[14]_INST_0_i_25_n_0 ),
        .I1(\st_out[14]_INST_0_i_26_n_0 ),
        .I2(nb_cid[13]),
        .I3(nb_cid[12]),
        .I4(\st_out[14]_INST_0_i_27_n_0 ),
        .O(\st_out[14]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h1101FF0F00001101)) 
    \st_out[14]_INST_0_i_19 
       (.I0(nb_cid[10]),
        .I1(\st_out[14]_INST_0_i_28_n_0 ),
        .I2(nb_cid[12]),
        .I3(\st_out[14]_INST_0_i_27_n_0 ),
        .I4(nb_cid[11]),
        .I5(\st_out[14]_INST_0_i_29_n_0 ),
        .O(\st_out[14]_INST_0_i_19_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \st_out[14]_INST_0_i_2 
       (.I0(stage[0]),
        .I1(stage[1]),
        .I2(stage[2]),
        .O(\st_out[14]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hE0F3F0F000000000)) 
    \st_out[14]_INST_0_i_20 
       (.I0(\st_out[14]_INST_0_i_30_n_0 ),
        .I1(\st_out[0]_INST_0_i_15_n_0 ),
        .I2(\st_out[14]_INST_0_i_15_n_0 ),
        .I3(nb_cid[8]),
        .I4(\st_out[14]_INST_0_i_13_n_0 ),
        .I5(nb_cid[13]),
        .O(\st_out[14]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h55D5FFFF55D555D5)) 
    \st_out[14]_INST_0_i_21 
       (.I0(st_in[13]),
        .I1(e_grown[0]),
        .I2(nb_valid[2]),
        .I3(nb_cid[4]),
        .I4(nb_cid[9]),
        .I5(\st_out[14]_INST_0_i_13_n_0 ),
        .O(\st_out[14]_INST_0_i_21_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \st_out[14]_INST_0_i_22 
       (.I0(nb_cid[3]),
        .I1(nb_cid[4]),
        .I2(nb_cid[0]),
        .I3(nb_cid[1]),
        .I4(nb_cid[2]),
        .O(\st_out[14]_INST_0_i_22_n_0 ));
  LUT6 #(
    .INIT(64'h4444444454440444)) 
    \st_out[14]_INST_0_i_23 
       (.I0(nb_cid[5]),
        .I1(st_in[9]),
        .I2(e_grown[0]),
        .I3(nb_valid[2]),
        .I4(nb_cid[0]),
        .I5(\st_out[4]_INST_0_i_5_n_0 ),
        .O(\st_out[14]_INST_0_i_23_n_0 ));
  LUT6 #(
    .INIT(64'h1D0F0F0F00000000)) 
    \st_out[14]_INST_0_i_24 
       (.I0(nb_cid[3]),
        .I1(\st_out[4]_INST_0_i_5_n_0 ),
        .I2(st_in[12]),
        .I3(e_grown[0]),
        .I4(nb_valid[2]),
        .I5(nb_cid[8]),
        .O(\st_out[14]_INST_0_i_24_n_0 ));
  LUT5 #(
    .INIT(32'h00BFAAAA)) 
    \st_out[14]_INST_0_i_25 
       (.I0(\st_out[14]_INST_0_i_15_n_0 ),
        .I1(nb_cid[9]),
        .I2(\st_out[14]_INST_0_i_16_n_0 ),
        .I3(nb_cid[8]),
        .I4(\st_out[14]_INST_0_i_13_n_0 ),
        .O(\st_out[14]_INST_0_i_25_n_0 ));
  LUT5 #(
    .INIT(32'h0115FFFF)) 
    \st_out[14]_INST_0_i_26 
       (.I0(\st_out[14]_INST_0_i_30_n_0 ),
        .I1(\st_out[14]_INST_0_i_16_n_0 ),
        .I2(nb_cid[9]),
        .I3(\st_out[14]_INST_0_i_14_n_0 ),
        .I4(\st_out[14]_INST_0_i_15_n_0 ),
        .O(\st_out[14]_INST_0_i_26_n_0 ));
  LUT6 #(
    .INIT(64'h00008808FFFFBBFB)) 
    \st_out[14]_INST_0_i_27 
       (.I0(nb_cid[7]),
        .I1(\st_out[14]_INST_0_i_13_n_0 ),
        .I2(\st_out[14]_INST_0_i_14_n_0 ),
        .I3(\st_out[14]_INST_0_i_31_n_0 ),
        .I4(\st_out[14]_INST_0_i_32_n_0 ),
        .I5(\st_out[11]_INST_0_i_8_n_0 ),
        .O(\st_out[14]_INST_0_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF77F700004404)) 
    \st_out[14]_INST_0_i_28 
       (.I0(nb_cid[5]),
        .I1(\st_out[14]_INST_0_i_13_n_0 ),
        .I2(\st_out[14]_INST_0_i_14_n_0 ),
        .I3(\st_out[14]_INST_0_i_31_n_0 ),
        .I4(\st_out[14]_INST_0_i_32_n_0 ),
        .I5(\st_out[9]_INST_0_i_5_n_0 ),
        .O(\st_out[14]_INST_0_i_28_n_0 ));
  LUT6 #(
    .INIT(64'h00008808FFFFBBFB)) 
    \st_out[14]_INST_0_i_29 
       (.I0(nb_cid[6]),
        .I1(\st_out[14]_INST_0_i_13_n_0 ),
        .I2(\st_out[14]_INST_0_i_14_n_0 ),
        .I3(\st_out[14]_INST_0_i_31_n_0 ),
        .I4(\st_out[14]_INST_0_i_32_n_0 ),
        .I5(\st_out[10]_INST_0_i_6_n_0 ),
        .O(\st_out[14]_INST_0_i_29_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT5 #(
    .INIT(32'h33103300)) 
    \st_out[14]_INST_0_i_3 
       (.I0(\st_out[13]_INST_0_i_7_n_0 ),
        .I1(\st_out[5]_INST_0_i_4_n_0 ),
        .I2(\st_out[4]_INST_0_i_3_n_0 ),
        .I3(\st_out[4]_INST_0_i_4_n_0 ),
        .I4(st_in[4]),
        .O(\st_out[14]_INST_0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \st_out[14]_INST_0_i_30 
       (.I0(nb_cid[6]),
        .I1(nb_cid[5]),
        .I2(nb_cid[9]),
        .I3(nb_cid[7]),
        .O(\st_out[14]_INST_0_i_30_n_0 ));
  LUT6 #(
    .INIT(64'h00B000B000B0FFFF)) 
    \st_out[14]_INST_0_i_31 
       (.I0(nb_cid[4]),
        .I1(\st_out[0]_INST_0_i_10_n_0 ),
        .I2(st_in[13]),
        .I3(nb_cid[9]),
        .I4(\st_out[14]_INST_0_i_15_n_0 ),
        .I5(nb_cid[8]),
        .O(\st_out[14]_INST_0_i_31_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT5 #(
    .INIT(32'h55D50000)) 
    \st_out[14]_INST_0_i_32 
       (.I0(st_in[13]),
        .I1(e_grown[0]),
        .I2(nb_valid[2]),
        .I3(nb_cid[4]),
        .I4(nb_cid[9]),
        .O(\st_out[14]_INST_0_i_32_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFE00F000)) 
    \st_out[14]_INST_0_i_4 
       (.I0(\st_out[14]_INST_0_i_6_n_0 ),
        .I1(\st_out[14]_INST_0_i_7_n_0 ),
        .I2(\st_out[14]_INST_0_i_8_n_0 ),
        .I3(\st_out[14]_INST_0_i_9_n_0 ),
        .I4(\st_out[4]_INST_0_i_3_n_0 ),
        .I5(\st_out[5]_INST_0_i_4_n_0 ),
        .O(\st_out[14]_INST_0_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hF5F5B0A0)) 
    \st_out[14]_INST_0_i_5 
       (.I0(\st_out[1]_INST_0_i_1_n_0 ),
        .I1(\st_out[13]_INST_0_i_7_n_0 ),
        .I2(st_in[5]),
        .I3(\st_out[5]_INST_0_i_3_n_0 ),
        .I4(\st_out[5]_INST_0_i_4_n_0 ),
        .O(\st_out[14]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h80008000CC008000)) 
    \st_out[14]_INST_0_i_6 
       (.I0(\st_out[14]_INST_0_i_10_n_0 ),
        .I1(nb_valid[2]),
        .I2(e_grown[1]),
        .I3(\st_out[14]_INST_0_i_11_n_0 ),
        .I4(e_grown[2]),
        .I5(\st_out[2]_INST_0_i_9_n_0 ),
        .O(\st_out[14]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBBBBBFBBBBBBB)) 
    \st_out[14]_INST_0_i_7 
       (.I0(\st_out[3]_INST_0_i_6_n_0 ),
        .I1(st_in[3]),
        .I2(\st_out[14]_INST_0_i_12_n_0 ),
        .I3(nb_cid[4]),
        .I4(\st_out[0]_INST_0_i_10_n_0 ),
        .I5(st_in[1]),
        .O(\st_out[14]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0000222A222AAAAA)) 
    \st_out[14]_INST_0_i_8 
       (.I0(\st_out[14]_INST_0_i_13_n_0 ),
        .I1(\st_out[14]_INST_0_i_14_n_0 ),
        .I2(nb_cid[8]),
        .I3(\st_out[14]_INST_0_i_15_n_0 ),
        .I4(nb_cid[9]),
        .I5(\st_out[14]_INST_0_i_16_n_0 ),
        .O(\st_out[14]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFABFFABAAAA)) 
    \st_out[14]_INST_0_i_9 
       (.I0(\st_out[14]_INST_0_i_17_n_0 ),
        .I1(\st_out[14]_INST_0_i_18_n_0 ),
        .I2(\st_out[14]_INST_0_i_19_n_0 ),
        .I3(\st_out[14]_INST_0_i_20_n_0 ),
        .I4(\st_out[14]_INST_0_i_21_n_0 ),
        .I5(nb_cid[14]),
        .O(\st_out[14]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0F200F2F000F0)) 
    \st_out[1]_INST_0 
       (.I0(\st_out[1]_INST_0_i_1_n_0 ),
        .I1(\st_out[12]_INST_0_i_1_n_0 ),
        .I2(st_in[1]),
        .I3(stage[0]),
        .I4(stage[1]),
        .I5(stage[2]),
        .O(st_out[1]));
  LUT5 #(
    .INIT(32'h80000000)) 
    \st_out[1]_INST_0_i_1 
       (.I0(st_in[12]),
        .I1(st_in[11]),
        .I2(st_in[13]),
        .I3(st_in[9]),
        .I4(st_in[10]),
        .O(\st_out[1]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBAAAFEAA)) 
    \st_out[2]_INST_0 
       (.I0(\st_out[2]_INST_0_i_1_n_0 ),
        .I1(\st_out[2]_INST_0_i_2_n_0 ),
        .I2(st_in[2]),
        .I3(\st_out[14]_INST_0_i_2_n_0 ),
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
  LUT3 #(
    .INIT(8'h08)) 
    \st_out[2]_INST_0_i_10 
       (.I0(e_grown[2]),
        .I1(nb_valid[2]),
        .I2(\st_out[2]_INST_0_i_12_n_0 ),
        .O(\st_out[2]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h1555555555555555)) 
    \st_out[2]_INST_0_i_11 
       (.I0(st_in[2]),
        .I1(\st_out[2]_INST_0_i_6_n_0 ),
        .I2(nb_grown[0]),
        .I3(e_grown[0]),
        .I4(nb_valid[2]),
        .I5(\st_out[2]_INST_0_i_13_n_0 ),
        .O(\st_out[2]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h88880000F8880000)) 
    \st_out[2]_INST_0_i_12 
       (.I0(\st_out[14]_INST_0_i_10_n_0 ),
        .I1(e_grown[1]),
        .I2(\st_out[14]_INST_0_i_22_n_0 ),
        .I3(e_grown[0]),
        .I4(nb_valid[2]),
        .I5(st_in[1]),
        .O(\st_out[2]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hDFFFFFFFFFFFFFFF)) 
    \st_out[2]_INST_0_i_13 
       (.I0(nb_cid[4]),
        .I1(st_in[1]),
        .I2(nb_cid[2]),
        .I3(nb_cid[1]),
        .I4(nb_cid[0]),
        .I5(nb_cid[3]),
        .O(\st_out[2]_INST_0_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT3 #(
    .INIT(8'h0B)) 
    \st_out[2]_INST_0_i_2 
       (.I0(m_pass[0]),
        .I1(m_pass[1]),
        .I2(\st_out[1]_INST_0_i_1_n_0 ),
        .O(\st_out[2]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h70F070F070F0F0F0)) 
    \st_out[2]_INST_0_i_3 
       (.I0(\st_out[2]_INST_0_i_4_n_0 ),
        .I1(nb_grown[3]),
        .I2(\st_out[2]_INST_0_i_5_n_0 ),
        .I3(\st_out[2]_INST_0_i_6_n_0 ),
        .I4(st_in[1]),
        .I5(\st_out[2]_INST_0_i_7_n_0 ),
        .O(\st_out[2]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \st_out[2]_INST_0_i_4 
       (.I0(\st_out[13]_INST_0_i_13_n_0 ),
        .I1(nb_valid[2]),
        .I2(e_grown[3]),
        .O(\st_out[2]_INST_0_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h2AAAAAAA)) 
    \st_out[2]_INST_0_i_5 
       (.I0(\st_out[2]_INST_0_i_8_n_0 ),
        .I1(\st_out[2]_INST_0_i_6_n_0 ),
        .I2(nb_grown[2]),
        .I3(\st_out[2]_INST_0_i_9_n_0 ),
        .I4(\st_out[2]_INST_0_i_10_n_0 ),
        .O(\st_out[2]_INST_0_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h40)) 
    \st_out[2]_INST_0_i_6 
       (.I0(stage[2]),
        .I1(stage[1]),
        .I2(stage[0]),
        .O(\st_out[2]_INST_0_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \st_out[2]_INST_0_i_7 
       (.I0(nb_cid[18]),
        .I1(nb_cid[19]),
        .I2(nb_cid[17]),
        .I3(nb_cid[16]),
        .I4(nb_cid[15]),
        .O(\st_out[2]_INST_0_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h8AAAAAAA)) 
    \st_out[2]_INST_0_i_8 
       (.I0(\st_out[2]_INST_0_i_11_n_0 ),
        .I1(\st_out[14]_INST_0_i_10_n_0 ),
        .I2(\st_out[2]_INST_0_i_6_n_0 ),
        .I3(nb_grown[1]),
        .I4(\st_out[14]_INST_0_i_13_n_0 ),
        .O(\st_out[2]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFFFFFFFFFF)) 
    \st_out[2]_INST_0_i_9 
       (.I0(st_in[1]),
        .I1(nb_cid[11]),
        .I2(nb_cid[10]),
        .I3(nb_cid[14]),
        .I4(nb_cid[12]),
        .I5(nb_cid[13]),
        .O(\st_out[2]_INST_0_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT5 #(
    .INIT(32'hFFFF0440)) 
    \st_out[3]_INST_0 
       (.I0(\st_out[3]_INST_0_i_1_n_0 ),
        .I1(stage[0]),
        .I2(stage[1]),
        .I3(stage[2]),
        .I4(\st_out[3]_INST_0_i_2_n_0 ),
        .O(st_out[3]));
  LUT6 #(
    .INIT(64'hFF8A0000FF8AFFFF)) 
    \st_out[3]_INST_0_i_1 
       (.I0(\st_out[3]_INST_0_i_3_n_0 ),
        .I1(\st_out[3]_INST_0_i_4_n_0 ),
        .I2(\st_out[5]_INST_0_i_3_n_0 ),
        .I3(\st_out[5]_INST_0_i_4_n_0 ),
        .I4(\st_out[2]_INST_0_i_2_n_0 ),
        .I5(st_in[3]),
        .O(\st_out[3]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF00000B8F0F0F0F0)) 
    \st_out[3]_INST_0_i_2 
       (.I0(ab_ptr[0]),
        .I1(nb_valid[2]),
        .I2(st_in[3]),
        .I3(stage[2]),
        .I4(stage[1]),
        .I5(stage[0]),
        .O(\st_out[3]_INST_0_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hA8)) 
    \st_out[3]_INST_0_i_3 
       (.I0(\st_out[14]_INST_0_i_9_n_0 ),
        .I1(\st_out[14]_INST_0_i_8_n_0 ),
        .I2(\st_out[4]_INST_0_i_3_n_0 ),
        .O(\st_out[3]_INST_0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFEF)) 
    \st_out[3]_INST_0_i_4 
       (.I0(\st_out[14]_INST_0_i_6_n_0 ),
        .I1(\st_out[3]_INST_0_i_5_n_0 ),
        .I2(st_in[3]),
        .I3(\st_out[3]_INST_0_i_6_n_0 ),
        .O(\st_out[3]_INST_0_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h00008000)) 
    \st_out[3]_INST_0_i_5 
       (.I0(\st_out[14]_INST_0_i_12_n_0 ),
        .I1(nb_cid[4]),
        .I2(e_grown[0]),
        .I3(nb_valid[2]),
        .I4(st_in[1]),
        .O(\st_out[3]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h4000000000000000)) 
    \st_out[3]_INST_0_i_6 
       (.I0(st_in[1]),
        .I1(\st_out[2]_INST_0_i_4_n_0 ),
        .I2(nb_cid[18]),
        .I3(nb_cid[19]),
        .I4(nb_cid[17]),
        .I5(\st_out[12]_INST_0_i_8_n_0 ),
        .O(\st_out[3]_INST_0_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT5 #(
    .INIT(32'hFFFF2800)) 
    \st_out[4]_INST_0 
       (.I0(stage[0]),
        .I1(stage[1]),
        .I2(stage[2]),
        .I3(\st_out[4]_INST_0_i_1_n_0 ),
        .I4(\st_out[4]_INST_0_i_2_n_0 ),
        .O(st_out[4]));
  LUT6 #(
    .INIT(64'h3310FFFF33000000)) 
    \st_out[4]_INST_0_i_1 
       (.I0(\st_out[13]_INST_0_i_7_n_0 ),
        .I1(\st_out[5]_INST_0_i_4_n_0 ),
        .I2(\st_out[4]_INST_0_i_3_n_0 ),
        .I3(\st_out[4]_INST_0_i_4_n_0 ),
        .I4(\st_out[2]_INST_0_i_2_n_0 ),
        .I5(st_in[4]),
        .O(\st_out[4]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF00000B8F0F0F0F0)) 
    \st_out[4]_INST_0_i_2 
       (.I0(ab_ptr[1]),
        .I1(nb_valid[2]),
        .I2(st_in[4]),
        .I3(stage[2]),
        .I4(stage[1]),
        .I5(stage[0]),
        .O(\st_out[4]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT3 #(
    .INIT(8'hBF)) 
    \st_out[4]_INST_0_i_3 
       (.I0(\st_out[4]_INST_0_i_5_n_0 ),
        .I1(e_grown[0]),
        .I2(nb_valid[2]),
        .O(\st_out[4]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \st_out[4]_INST_0_i_4 
       (.I0(\st_out[14]_INST_0_i_8_n_0 ),
        .I1(\st_out[14]_INST_0_i_9_n_0 ),
        .O(\st_out[4]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h4F044F044F04FF0F)) 
    \st_out[4]_INST_0_i_5 
       (.I0(st_in[12]),
        .I1(nb_cid[3]),
        .I2(st_in[13]),
        .I3(nb_cid[4]),
        .I4(\st_out[4]_INST_0_i_6_n_0 ),
        .I5(\st_out[4]_INST_0_i_7_n_0 ),
        .O(\st_out[4]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h2202FF0F00002202)) 
    \st_out[4]_INST_0_i_6 
       (.I0(st_in[9]),
        .I1(nb_cid[0]),
        .I2(nb_cid[2]),
        .I3(st_in[11]),
        .I4(nb_cid[1]),
        .I5(st_in[10]),
        .O(\st_out[4]_INST_0_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    \st_out[4]_INST_0_i_7 
       (.I0(nb_cid[3]),
        .I1(st_in[12]),
        .I2(nb_cid[2]),
        .I3(st_in[11]),
        .O(\st_out[4]_INST_0_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT5 #(
    .INIT(32'hFFFF2800)) 
    \st_out[5]_INST_0 
       (.I0(stage[0]),
        .I1(stage[1]),
        .I2(stage[2]),
        .I3(\st_out[5]_INST_0_i_1_n_0 ),
        .I4(\st_out[5]_INST_0_i_2_n_0 ),
        .O(st_out[5]));
  LUT6 #(
    .INIT(64'hFF11FF11EF00EE00)) 
    \st_out[5]_INST_0_i_1 
       (.I0(\st_out[12]_INST_0_i_1_n_0 ),
        .I1(\st_out[1]_INST_0_i_1_n_0 ),
        .I2(\st_out[13]_INST_0_i_7_n_0 ),
        .I3(st_in[5]),
        .I4(\st_out[5]_INST_0_i_3_n_0 ),
        .I5(\st_out[5]_INST_0_i_4_n_0 ),
        .O(\st_out[5]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAA0000E2AAAAAAAA)) 
    \st_out[5]_INST_0_i_2 
       (.I0(st_in[5]),
        .I1(nb_valid[2]),
        .I2(ab_ptr[2]),
        .I3(stage[2]),
        .I4(stage[1]),
        .I5(stage[0]),
        .O(\st_out[5]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \st_out[5]_INST_0_i_3 
       (.I0(\st_out[4]_INST_0_i_3_n_0 ),
        .I1(\st_out[4]_INST_0_i_4_n_0 ),
        .O(\st_out[5]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF100FFF100000000)) 
    \st_out[5]_INST_0_i_4 
       (.I0(\st_out[13]_INST_0_i_12_n_0 ),
        .I1(\st_out[13]_INST_0_i_11_n_0 ),
        .I2(\st_out[5]_INST_0_i_5_n_0 ),
        .I3(\st_out[13]_INST_0_i_8_n_0 ),
        .I4(nb_cid[19]),
        .I5(\st_out[2]_INST_0_i_4_n_0 ),
        .O(\st_out[5]_INST_0_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \st_out[5]_INST_0_i_5 
       (.I0(nb_cid[18]),
        .I1(\st_out[12]_INST_0_i_9_n_0 ),
        .O(\st_out[5]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF82A2A080)) 
    \st_out[6]_INST_0 
       (.I0(\st_out[14]_INST_0_i_2_n_0 ),
        .I1(\st_out[8]_INST_0_i_3_n_0 ),
        .I2(st_in[6]),
        .I3(\st_out[8]_INST_0_i_2_n_0 ),
        .I4(\st_out[6]_INST_0_i_1_n_0 ),
        .I5(\st_out[6]_INST_0_i_2_n_0 ),
        .O(st_out[6]));
  LUT5 #(
    .INIT(32'h28828228)) 
    \st_out[6]_INST_0_i_1 
       (.I0(nb_valid[2]),
        .I1(nb_push[0]),
        .I2(nb_push[1]),
        .I3(nb_push[2]),
        .I4(nb_push[3]),
        .O(\st_out[6]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF00BFFFF00080000)) 
    \st_out[6]_INST_0_i_2 
       (.I0(ab_defect),
        .I1(nb_valid[2]),
        .I2(stage[2]),
        .I3(stage[1]),
        .I4(stage[0]),
        .I5(st_in[6]),
        .O(\st_out[6]_INST_0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \st_out[7]_INST_0 
       (.I0(\st_out[7]_INST_0_i_1_n_0 ),
        .I1(\st_out[7]_INST_0_i_2_n_0 ),
        .O(st_out[7]));
  LUT6 #(
    .INIT(64'h00000D00000C0C00)) 
    \st_out[7]_INST_0_i_1 
       (.I0(st_in[2]),
        .I1(st_in[7]),
        .I2(stage[0]),
        .I3(stage[2]),
        .I4(stage[1]),
        .I5(st_in[8]),
        .O(\st_out[7]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFF0F0BF00000080)) 
    \st_out[7]_INST_0_i_2 
       (.I0(ab_whole),
        .I1(nb_valid[2]),
        .I2(stage[0]),
        .I3(stage[2]),
        .I4(stage[1]),
        .I5(st_in[7]),
        .O(\st_out[7]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFD10000)) 
    \st_out[8]_INST_0 
       (.I0(\st_out[8]_INST_0_i_1_n_0 ),
        .I1(\st_out[8]_INST_0_i_2_n_0 ),
        .I2(st_in[6]),
        .I3(\st_out[8]_INST_0_i_3_n_0 ),
        .I4(\st_out[8]_INST_0_i_4_n_0 ),
        .I5(\st_out[8]_INST_0_i_5_n_0 ),
        .O(st_out[8]));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \st_out[8]_INST_0_i_1 
       (.I0(nb_active[1]),
        .I1(nb_active[2]),
        .I2(\st_out[4]_INST_0_i_1_n_0 ),
        .I3(nb_active[3]),
        .I4(\st_out[3]_INST_0_i_1_n_0 ),
        .I5(nb_active[0]),
        .O(\st_out[8]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000040044440444)) 
    \st_out[8]_INST_0_i_2 
       (.I0(\st_out[4]_INST_0_i_1_n_0 ),
        .I1(\st_out[3]_INST_0_i_1_n_0 ),
        .I2(st_in[5]),
        .I3(m_pass[1]),
        .I4(m_pass[0]),
        .I5(\st_out[14]_INST_0_i_5_n_0 ),
        .O(\st_out[8]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \st_out[8]_INST_0_i_3 
       (.I0(m_pass[0]),
        .I1(m_pass[1]),
        .O(\st_out[8]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h6060606060600060)) 
    \st_out[8]_INST_0_i_4 
       (.I0(stage[2]),
        .I1(stage[1]),
        .I2(stage[0]),
        .I3(m_pass[0]),
        .I4(m_pass[1]),
        .I5(st_in[8]),
        .O(\st_out[8]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAA0000E2AAAAAAAA)) 
    \st_out[8]_INST_0_i_5 
       (.I0(st_in[8]),
        .I1(nb_valid[2]),
        .I2(nb_active[3]),
        .I3(stage[2]),
        .I4(stage[1]),
        .I5(stage[0]),
        .O(\st_out[8]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFAEAEAEAEAEAEAE)) 
    \st_out[9]_INST_0 
       (.I0(\st_out[9]_INST_0_i_1_n_0 ),
        .I1(st_in[9]),
        .I2(\st_out[12]_INST_0_i_3_n_0 ),
        .I3(\st_out[13]_INST_0_i_3_n_0 ),
        .I4(nb_cid[15]),
        .I5(nb_valid[2]),
        .O(st_out[9]));
  LUT6 #(
    .INIT(64'hA0A0A8AA0000080A)) 
    \st_out[9]_INST_0_i_1 
       (.I0(\st_out[14]_INST_0_i_2_n_0 ),
        .I1(nb_valid[2]),
        .I2(\st_out[12]_INST_0_i_1_n_0 ),
        .I3(\st_out[1]_INST_0_i_1_n_0 ),
        .I4(\st_out[9]_INST_0_i_2_n_0 ),
        .I5(st_in[9]),
        .O(\st_out[9]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000005F5C505C)) 
    \st_out[9]_INST_0_i_2 
       (.I0(nb_cid[15]),
        .I1(\st_out[9]_INST_0_i_3_n_0 ),
        .I2(\st_out[5]_INST_0_i_4_n_0 ),
        .I3(\st_out[5]_INST_0_i_3_n_0 ),
        .I4(\st_out[9]_INST_0_i_4_n_0 ),
        .I5(\st_out[1]_INST_0_i_1_n_0 ),
        .O(\st_out[9]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h740074FF)) 
    \st_out[9]_INST_0_i_3 
       (.I0(nb_cid[5]),
        .I1(\st_out[14]_INST_0_i_8_n_0 ),
        .I2(\st_out[9]_INST_0_i_5_n_0 ),
        .I3(\st_out[14]_INST_0_i_9_n_0 ),
        .I4(nb_cid[10]),
        .O(\st_out[9]_INST_0_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \st_out[9]_INST_0_i_4 
       (.I0(st_in[9]),
        .I1(\st_out[13]_INST_0_i_7_n_0 ),
        .O(\st_out[9]_INST_0_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h1000BFFF)) 
    \st_out[9]_INST_0_i_5 
       (.I0(\st_out[4]_INST_0_i_5_n_0 ),
        .I1(nb_cid[0]),
        .I2(nb_valid[2]),
        .I3(e_grown[0]),
        .I4(st_in[9]),
        .O(\st_out[9]_INST_0_i_5_n_0 ));
endmodule

(* AW = "8" *) (* CW = "5" *) (* EBM = "108" *) 
(* ES = "10" *) (* IO_ABOVE = "5" *) (* IO_BND = "6" *) 
(* IO_BOT = "8" *) (* IO_SYN = "9" *) (* IO_TOP = "7" *) 
(* NBM = "108" *) (* NCTX = "2" *) (* NDIR = "4" *) 
(* NSLOT = "8" *) (* ONE_ONE = "0" *) (* PW = "3" *) 
(* RVW = "2" *) (* SLW = "1" *) (* SO_ACT = "8" *) 
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

  wire \FSM_sequential_stage[2]_i_1_n_0 ;
  wire \FSM_sequential_stage[2]_i_3_n_0 ;
  wire \FSM_sequential_stage[2]_i_4_n_0 ;
  wire \FSM_sequential_stage[2]_i_5_n_0 ;
  wire \FSM_sequential_stage[2]_i_6_n_0 ;
  wire \FSM_sequential_stage[2]_i_7_n_0 ;
  wire \FSM_sequential_stage[2]_i_8_n_0 ;
  wire all_busy;
  wire all_busy_INST_0_i_1_n_0;
  wire all_busy_INST_0_i_2_n_0;
  wire all_busy_INST_0_i_3_n_0;
  wire all_busy_INST_0_i_4_n_0;
  wire all_busy_INST_0_i_5_n_0;
  wire all_busy_INST_0_i_6_n_0;
  wire all_busy_INST_0_i_7_n_0;
  wire all_busy_INST_0_i_8_n_0;
  wire all_busy_INST_0_i_9_n_0;
  wire [1:0]bshA;
  wire [1:0]bshB;
  wire [14:14]bview_495;
  wire [14:14]bview_585;
  wire clk;
  wire [4:0]commit_hold;
  wire commit_hold0;
  wire [4:0]commit_onehot;
  wire \commit_onehot[4]_i_1_n_0 ;
  wire [2:0]dbg_stage;
  wire dbg_stage0;
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
  wire [2:0]\eslot_nxt[9] ;
  wire [2:0]\g_eslot[0].ab_state ;
  wire \g_eslot[0].ed_i_i_10_n_0 ;
  wire \g_eslot[0].ed_i_i_11_n_0 ;
  wire \g_eslot[0].ed_i_i_9_n_0 ;
  wire [4:1]\g_eslot[0].eown ;
  wire [2:0]\g_eslot[0].my_state ;
  wire \g_eslot[0].umir ;
  wire \g_eslot[0].upulse ;
  wire [2:0]\g_eslot[1].ab_state ;
  wire \g_eslot[1].ed_i_i_8_n_0 ;
  wire [2:0]\g_eslot[1].my_state ;
  wire \g_eslot[1].upulse ;
  wire [2:0]\g_eslot[2].ab_state ;
  wire \g_eslot[2].ed_i_i_8_n_0 ;
  wire [2:0]\g_eslot[2].my_state ;
  wire \g_eslot[2].upulse ;
  wire \g_eslot[2].vmir ;
  wire \g_eslot[2].vpulse ;
  wire [2:0]\g_eslot[3].ab_state ;
  wire \g_eslot[3].ed_i_i_11_n_0 ;
  wire \g_eslot[3].ed_i_i_12_n_0 ;
  wire \g_eslot[3].ed_i_i_19_n_0 ;
  wire [5:3]\g_eslot[3].eown ;
  wire [2:0]\g_eslot[3].my_state ;
  wire \g_eslot[3].umir ;
  wire \g_eslot[3].upulse ;
  wire \g_eslot[3].vmir ;
  wire [2:0]\g_eslot[4].ab_state ;
  wire \g_eslot[4].ed_i_i_15_n_0 ;
  wire [5:3]\g_eslot[4].eown ;
  wire [2:0]\g_eslot[4].my_state ;
  wire \g_eslot[4].umir ;
  wire \g_eslot[4].upulse ;
  wire \g_eslot[4].vmir ;
  wire [2:0]\g_eslot[5].ab_state ;
  wire [2:0]\g_eslot[5].my_state ;
  wire \g_eslot[5].umir ;
  wire \g_eslot[5].upulse ;
  wire \g_eslot[5].vmir ;
  wire [2:0]\g_eslot[6].ab_state ;
  wire [2:0]\g_eslot[6].my_state ;
  wire \g_eslot[6].umir ;
  wire \g_eslot[6].vmir ;
  wire [2:0]\g_eslot[7].ab_state ;
  wire \g_eslot[7].ed_i_i_12_n_0 ;
  wire [2:0]\g_eslot[7].my_state ;
  wire \g_eslot[7].umir ;
  wire \g_eslot[7].vmir ;
  wire \g_eslot[7].vpulse ;
  wire [1:0]\g_eslot[8].eomir ;
  wire [2:0]\g_eslot[8].my_state ;
  wire \g_eslot[8].umir ;
  wire \g_eslot[8].upulse ;
  wire \g_eslot[8].vmir ;
  wire \g_eslot[8].vpulse ;
  wire \g_eslot[9].ed_i_i_9_n_0 ;
  wire \g_eslot[9].eomir_reg_n_0_[0] ;
  wire \g_eslot[9].eomir_reg_n_0_[1] ;
  wire [2:0]\g_eslot[9].my_state ;
  wire \g_eslot[9].umir ;
  wire \g_eslot[9].upulse ;
  wire \g_eslot[9].vmir ;
  wire \g_eslot[9].vpulse ;
  wire [1:0]\g_slot[0].bshA_reg[0] ;
  wire [1:0]\g_slot[0].bshB_reg[0] ;
  wire [23:14]\g_slot[0].g_dir[0].nsrc_mux ;
  wire \g_slot[0].nb_push0 ;
  wire \g_slot[0].omir_reg_n_0_[14] ;
  wire \g_slot[0].omir_reg_n_0_[2] ;
  wire \g_slot[0].omir_reg_n_0_[3] ;
  wire \g_slot[0].omir_reg_n_0_[4] ;
  wire \g_slot[0].omir_reg_n_0_[5] ;
  wire \g_slot[0].omir_reg_n_0_[7] ;
  wire \g_slot[0].omir_reg_n_0_[8] ;
  wire [28:13]\g_slot[0].own ;
  wire \g_slot[0].pe_i_i_10_n_0 ;
  wire \g_slot[0].pe_i_i_11_n_0 ;
  wire \g_slot[0].pe_i_i_12_n_0 ;
  wire \g_slot[0].pe_i_i_18_n_0 ;
  wire \g_slot[0].pe_i_i_24_n_0 ;
  wire \g_slot[0].pe_i_i_32_n_0 ;
  wire \g_slot[0].pe_i_i_37_n_0 ;
  wire \g_slot[0].pe_i_i_39_n_0 ;
  wire \g_slot[0].pe_i_i_7_n_0 ;
  wire \g_slot[0].pe_i_i_8_n_0 ;
  wire \g_slot[0].pe_i_i_9_n_0 ;
  wire [1:0]\g_slot[1].bshA_reg[1] ;
  wire [1:0]\g_slot[1].bshB_reg[1] ;
  wire [3:2]\g_slot[1].e_grown ;
  wire [29:14]\g_slot[1].g_dir[2].nsrc_mux ;
  wire [28:14]\g_slot[1].g_dir[3].nsrc_mux ;
  wire [19:0]\g_slot[1].nb_cid ;
  wire [3:0]\g_slot[1].nb_grown ;
  wire [3:1]\g_slot[1].nb_push ;
  wire \g_slot[1].pe_i_i_10_n_0 ;
  wire \g_slot[1].pe_i_i_11_n_0 ;
  wire \g_slot[1].pe_i_i_12_n_0 ;
  wire \g_slot[1].pe_i_i_1_n_0 ;
  wire \g_slot[1].pe_i_i_31_n_0 ;
  wire \g_slot[1].pe_i_i_32_n_0 ;
  wire \g_slot[1].pe_i_i_33_n_0 ;
  wire \g_slot[1].pe_i_i_41_n_0 ;
  wire \g_slot[1].pe_i_i_43_n_0 ;
  wire \g_slot[1].pe_i_i_47_n_0 ;
  wire \g_slot[1].pe_i_i_48_n_0 ;
  wire \g_slot[1].pe_i_i_49_n_0 ;
  wire \g_slot[1].pe_i_i_8_n_0 ;
  wire \g_slot[1].pe_i_i_9_n_0 ;
  wire [1:0]\g_slot[2].bshA_reg[2] ;
  wire [1:0]\g_slot[2].bshB_reg[2] ;
  wire [3:2]\g_slot[2].e_grown ;
  wire \g_slot[2].e_grown03_in ;
  wire [29:14]\g_slot[2].g_dir[2].nsrc_mux ;
  wire [28:14]\g_slot[2].g_dir[3].nsrc_mux ;
  wire [19:0]\g_slot[2].nb_cid ;
  wire [3:0]\g_slot[2].nb_grown ;
  wire [3:0]\g_slot[2].nb_push ;
  wire \g_slot[2].pe_i_i_10_n_0 ;
  wire \g_slot[2].pe_i_i_11_n_0 ;
  wire \g_slot[2].pe_i_i_14_n_0 ;
  wire \g_slot[2].pe_i_i_1_n_0 ;
  wire \g_slot[2].pe_i_i_2_n_0 ;
  wire \g_slot[2].pe_i_i_30_n_0 ;
  wire \g_slot[2].pe_i_i_31_n_0 ;
  wire \g_slot[2].pe_i_i_3_n_0 ;
  wire \g_slot[2].pe_i_i_40_n_0 ;
  wire \g_slot[2].pe_i_i_42_n_0 ;
  wire \g_slot[2].pe_i_i_46_n_0 ;
  wire \g_slot[2].pe_i_i_47_n_0 ;
  wire \g_slot[2].pe_i_i_4_n_0 ;
  wire \g_slot[2].pe_i_i_5_n_0 ;
  wire \g_slot[2].pe_i_i_6_n_0 ;
  wire \g_slot[2].pe_i_i_7_n_0 ;
  wire \g_slot[2].pe_i_i_8_n_0 ;
  wire \g_slot[2].pe_i_i_9_n_0 ;
  wire [1:0]\g_slot[3].bshA_reg[3] ;
  wire [1:0]\g_slot[3].bshB_reg[3] ;
  wire [23:14]\g_slot[3].g_dir[1].nsrc_mux ;
  wire \g_slot[3].nb_push0 ;
  wire \g_slot[3].pe_i_i_10_n_0 ;
  wire \g_slot[3].pe_i_i_11_n_0 ;
  wire \g_slot[3].pe_i_i_12_n_0 ;
  wire \g_slot[3].pe_i_i_14_n_0 ;
  wire \g_slot[3].pe_i_i_16_n_0 ;
  wire \g_slot[3].pe_i_i_1_n_0 ;
  wire \g_slot[3].pe_i_i_20_n_0 ;
  wire \g_slot[3].pe_i_i_2_n_0 ;
  wire \g_slot[3].pe_i_i_3_n_0 ;
  wire \g_slot[3].pe_i_i_4_n_0 ;
  wire \g_slot[3].pe_i_i_5_n_0 ;
  wire \g_slot[3].pe_i_i_6_n_0 ;
  wire \g_slot[3].pe_i_i_7_n_0 ;
  wire \g_slot[3].pe_i_i_8_n_0 ;
  wire \g_slot[3].pe_i_i_9_n_0 ;
  wire [13:3]\g_slot[4].absrc ;
  wire [0:0]\g_slot[4].bshA_reg[4] ;
  wire [0:0]\g_slot[4].bshB_reg[4] ;
  wire [14:14]\g_slot[4].g_dir[0].nsrc_mux ;
  wire \g_slot[4].nb_push0 ;
  wire \g_slot[4].pe_i_i_16_n_0 ;
  wire \g_slot[4].pe_i_i_17_n_0 ;
  wire [7:3]\g_slot[5].absrc ;
  wire [0:0]\g_slot[5].bshA_reg[5] ;
  wire [0:0]\g_slot[5].bshB_reg[5] ;
  wire [3:0]\g_slot[5].e_grown ;
  wire [14:14]\g_slot[5].g_dir[3].nsrc_mux ;
  wire [3:0]\g_slot[5].nb_active ;
  wire [19:0]\g_slot[5].nb_cid ;
  wire [3:0]\g_slot[5].nb_grown ;
  wire [3:0]\g_slot[5].nb_push ;
  wire \g_slot[5].pe_i_i_23_n_0 ;
  wire \g_slot[5].pe_i_i_28_n_0 ;
  wire \g_slot[5].pe_i_i_29_n_0 ;
  wire [7:3]\g_slot[6].absrc ;
  wire [0:0]\g_slot[6].bshA_reg[6] ;
  wire [0:0]\g_slot[6].bshB_reg[6] ;
  wire [3:0]\g_slot[6].e_grown ;
  wire [14:14]\g_slot[6].g_dir[1].nsrc_mux ;
  wire [14:14]\g_slot[6].g_dir[3].nsrc_mux ;
  wire [3:0]\g_slot[6].nb_active ;
  wire [19:0]\g_slot[6].nb_cid ;
  wire [3:0]\g_slot[6].nb_grown ;
  wire [3:0]\g_slot[6].nb_push ;
  wire \g_slot[6].pe_i_i_23_n_0 ;
  wire \g_slot[6].pe_i_i_28_n_0 ;
  wire \g_slot[6].pe_i_i_29_n_0 ;
  wire \g_slot[6].pe_i_i_8_n_0 ;
  wire [13:3]\g_slot[7].absrc ;
  wire [0:0]\g_slot[7].bshA_reg[7] ;
  wire [0:0]\g_slot[7].bshB_reg[7] ;
  wire \g_slot[7].nb_push0 ;
  wire \g_slot[7].pe_i_i_13_n_0 ;
  wire \g_slot[7].pe_i_i_14_n_0 ;
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
  wire \lat_push_cnt_reg[31]_i_1_n_1 ;
  wire \lat_push_cnt_reg[31]_i_1_n_10 ;
  wire \lat_push_cnt_reg[31]_i_1_n_11 ;
  wire \lat_push_cnt_reg[31]_i_1_n_12 ;
  wire \lat_push_cnt_reg[31]_i_1_n_13 ;
  wire \lat_push_cnt_reg[31]_i_1_n_14 ;
  wire \lat_push_cnt_reg[31]_i_1_n_15 ;
  wire \lat_push_cnt_reg[31]_i_1_n_2 ;
  wire \lat_push_cnt_reg[31]_i_1_n_3 ;
  wire \lat_push_cnt_reg[31]_i_1_n_4 ;
  wire \lat_push_cnt_reg[31]_i_1_n_5 ;
  wire \lat_push_cnt_reg[31]_i_1_n_6 ;
  wire \lat_push_cnt_reg[31]_i_1_n_7 ;
  wire \lat_push_cnt_reg[31]_i_1_n_8 ;
  wire \lat_push_cnt_reg[31]_i_1_n_9 ;
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
  wire [1:0]m_pass_w;
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
  wire p_0_in100_in;
  wire p_0_in102_in;
  wire p_0_in103_in;
  wire p_0_in104_in;
  wire [2:0]p_0_in10_in;
  wire [2:0]p_0_in15_in;
  wire [2:0]p_0_in2_in;
  wire [2:0]p_0_in7_in;
  wire p_0_in86_in;
  wire p_0_in88_in;
  wire [2:0]p_0_in8_in;
  wire p_0_in90_in;
  wire p_0_in92_in;
  wire p_0_in94_in;
  wire p_0_in95_in;
  wire p_0_in97_in;
  wire p_0_in98_in;
  wire p_10_in;
  wire p_11_in;
  wire p_12_in;
  wire p_1_in;
  wire p_3_in;
  wire p_4_in;
  wire p_5_in;
  wire p_6_in;
  wire p_7_in;
  wire p_8_in;
  wire p_9_in;
  wire phase;
  wire \phase_reg[0]_rep__0_n_0 ;
  wire \phase_reg[0]_rep_n_0 ;
  wire [1:1]qa2;
  wire qnow082_out;
  wire qnow083_out;
  wire qnow084_out;
  wire qnow085_out;
  wire reset;
  wire [14:0]\slot_nxt[0] ;
  wire [14:0]\slot_nxt[1] ;
  wire [14:0]\slot_nxt[2] ;
  wire [14:0]\slot_nxt[3] ;
  wire [14:0]\slot_nxt[4] ;
  wire [14:0]\slot_nxt[5] ;
  wire [14:0]\slot_nxt[6] ;
  wire [14:0]\slot_nxt[7] ;
  wire [2:0]stage__0;
  wire [2:0]stage__1;
  wire [2:0]stage_reg;
  wire start;
  wire [7:0]step_cnt;
  wire \step_cnt[2]_i_2_n_0 ;
  wire \step_cnt[3]_i_2_n_0 ;
  wire \step_cnt[4]_i_2_n_0 ;
  wire \step_cnt[5]_i_2_n_0 ;
  wire \step_cnt[6]_i_2_n_0 ;
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
  wire \NLW_g_slot[4].pe_i_o_busy_c_UNCONNECTED ;
  wire \NLW_g_slot[4].pe_i_o_pulse_UNCONNECTED ;
  wire [3:0]\NLW_g_slot[4].pe_i_o_push_UNCONNECTED ;
  wire \NLW_g_slot[5].pe_i_o_busy_c_UNCONNECTED ;
  wire \NLW_g_slot[5].pe_i_o_pulse_UNCONNECTED ;
  wire [3:0]\NLW_g_slot[5].pe_i_o_push_UNCONNECTED ;
  wire \NLW_g_slot[6].pe_i_o_busy_c_UNCONNECTED ;
  wire \NLW_g_slot[6].pe_i_o_pulse_UNCONNECTED ;
  wire [3:0]\NLW_g_slot[6].pe_i_o_push_UNCONNECTED ;
  wire \NLW_g_slot[7].pe_i_o_busy_c_UNCONNECTED ;
  wire \NLW_g_slot[7].pe_i_o_pulse_UNCONNECTED ;
  wire [3:0]\NLW_g_slot[7].pe_i_o_push_UNCONNECTED ;
  wire [7:7]\NLW_lat_live_cnt_reg[31]_i_2_CO_UNCONNECTED ;
  wire [7:7]\NLW_lat_push_cnt_reg[31]_i_1_CO_UNCONNECTED ;

  assign lat_push_cnt[31:0] = lat_flip_cnt;
  (* SOFT_HLUTNM = "soft_lutpair235" *) 
  LUT3 #(
    .INIT(8'h2C)) 
    \FSM_sequential_stage[0]_i_1 
       (.I0(stage__0[1]),
        .I1(stage__0[2]),
        .I2(stage__0[0]),
        .O(stage__1[0]));
  LUT6 #(
    .INIT(64'h1313131313131311)) 
    \FSM_sequential_stage[1]_i_1 
       (.I0(stage__0[0]),
        .I1(stage__0[1]),
        .I2(stage__0[2]),
        .I3(all_busy_INST_0_i_1_n_0),
        .I4(all_busy_INST_0_i_2_n_0),
        .I5(\FSM_sequential_stage[2]_i_5_n_0 ),
        .O(stage__1[1]));
  LUT6 #(
    .INIT(64'hFFFFFFFFAAAAAAAE)) 
    \FSM_sequential_stage[2]_i_1 
       (.I0(\FSM_sequential_stage[2]_i_3_n_0 ),
        .I1(\FSM_sequential_stage[2]_i_4_n_0 ),
        .I2(\FSM_sequential_stage[2]_i_5_n_0 ),
        .I3(all_busy_INST_0_i_2_n_0),
        .I4(\FSM_sequential_stage[2]_i_6_n_0 ),
        .I5(\FSM_sequential_stage[2]_i_7_n_0 ),
        .O(\FSM_sequential_stage[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair160" *) 
  LUT3 #(
    .INIT(8'h49)) 
    \FSM_sequential_stage[2]_i_2 
       (.I0(stage__0[1]),
        .I1(stage__0[2]),
        .I2(stage__0[0]),
        .O(stage__1[2]));
  (* SOFT_HLUTNM = "soft_lutpair160" *) 
  LUT5 #(
    .INIT(32'hF00EC00E)) 
    \FSM_sequential_stage[2]_i_3 
       (.I0(start),
        .I1(stage__0[1]),
        .I2(stage__0[2]),
        .I3(stage__0[0]),
        .I4(\phase_reg[0]_rep__0_n_0 ),
        .O(\FSM_sequential_stage[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair145" *) 
  LUT5 #(
    .INIT(32'hAAA8A800)) 
    \FSM_sequential_stage[2]_i_4 
       (.I0(\phase_reg[0]_rep__0_n_0 ),
        .I1(stage__0[1]),
        .I2(lat_bpass),
        .I3(stage__0[2]),
        .I4(stage__0[0]),
        .O(\FSM_sequential_stage[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFBA)) 
    \FSM_sequential_stage[2]_i_5 
       (.I0(all_busy_INST_0_i_4_n_0),
        .I1(\phase_reg[0]_rep__0_n_0 ),
        .I2(\g_slot[0].bshB_reg[0] [1]),
        .I3(all_busy_INST_0_i_9_n_0),
        .I4(all_busy_INST_0_i_8_n_0),
        .I5(\FSM_sequential_stage[2]_i_8_n_0 ),
        .O(\FSM_sequential_stage[2]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair161" *) 
  LUT5 #(
    .INIT(32'hFFFFFFF2)) 
    \FSM_sequential_stage[2]_i_6 
       (.I0(\g_slot[1].bshB_reg[1] [1]),
        .I1(\phase_reg[0]_rep__0_n_0 ),
        .I2(all_busy_INST_0_i_7_n_0),
        .I3(all_busy_INST_0_i_6_n_0),
        .I4(all_busy_INST_0_i_5_n_0),
        .O(\FSM_sequential_stage[2]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair306" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_sequential_stage[2]_i_7 
       (.I0(\phase_reg[0]_rep__0_n_0 ),
        .I1(stage__0[1]),
        .O(\FSM_sequential_stage[2]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair219" *) 
  LUT3 #(
    .INIT(8'h32)) 
    \FSM_sequential_stage[2]_i_8 
       (.I0(\g_slot[3].bshB_reg[3] [1]),
        .I1(\phase_reg[0]_rep__0_n_0 ),
        .I2(\g_slot[2].bshB_reg[2] [1]),
        .O(\FSM_sequential_stage[2]_i_8_n_0 ));
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
  LUT4 #(
    .INIT(16'hFFFE)) 
    all_busy_INST_0
       (.I0(all_busy_INST_0_i_1_n_0),
        .I1(all_busy_INST_0_i_2_n_0),
        .I2(all_busy_INST_0_i_3_n_0),
        .I3(all_busy_INST_0_i_4_n_0),
        .O(all_busy));
  (* SOFT_HLUTNM = "soft_lutpair161" *) 
  LUT5 #(
    .INIT(32'hFFFFFFF4)) 
    all_busy_INST_0_i_1
       (.I0(\phase_reg[0]_rep__0_n_0 ),
        .I1(\g_slot[1].bshB_reg[1] [1]),
        .I2(all_busy_INST_0_i_5_n_0),
        .I3(all_busy_INST_0_i_6_n_0),
        .I4(all_busy_INST_0_i_7_n_0),
        .O(all_busy_INST_0_i_1_n_0));
  LUT5 #(
    .INIT(32'hF0F0F0E0)) 
    all_busy_INST_0_i_2
       (.I0(\g_slot[0].bshB_reg[0] [0]),
        .I1(\g_slot[1].bshB_reg[1] [0]),
        .I2(\phase_reg[0]_rep__0_n_0 ),
        .I3(\g_slot[6].bshB_reg[6] ),
        .I4(\g_slot[7].bshB_reg[7] ),
        .O(all_busy_INST_0_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFF0FFF0FFFFFFFE)) 
    all_busy_INST_0_i_3
       (.I0(\g_slot[2].bshB_reg[2] [1]),
        .I1(\g_slot[3].bshB_reg[3] [1]),
        .I2(all_busy_INST_0_i_8_n_0),
        .I3(all_busy_INST_0_i_9_n_0),
        .I4(\g_slot[0].bshB_reg[0] [1]),
        .I5(\phase_reg[0]_rep__0_n_0 ),
        .O(all_busy_INST_0_i_3_n_0));
  LUT5 #(
    .INIT(32'hFF00FE00)) 
    all_busy_INST_0_i_4
       (.I0(\g_slot[4].bshB_reg[4] ),
        .I1(\g_slot[5].bshB_reg[5] ),
        .I2(\g_slot[2].bshB_reg[2] [0]),
        .I3(\phase_reg[0]_rep__0_n_0 ),
        .I4(\g_slot[3].bshB_reg[3] [0]),
        .O(all_busy_INST_0_i_4_n_0));
  LUT5 #(
    .INIT(32'h00FF00FE)) 
    all_busy_INST_0_i_5
       (.I0(\g_slot[2].bshA_reg[2] [1]),
        .I1(\g_slot[3].bshA_reg[3] [1]),
        .I2(\g_slot[0].bshA_reg[0] [1]),
        .I3(\phase_reg[0]_rep__0_n_0 ),
        .I4(\g_slot[1].bshA_reg[1] [1]),
        .O(all_busy_INST_0_i_5_n_0));
  LUT5 #(
    .INIT(32'hFF00FE00)) 
    all_busy_INST_0_i_6
       (.I0(\g_slot[6].bshA_reg[6] ),
        .I1(\g_slot[7].bshA_reg[7] ),
        .I2(\g_slot[4].bshA_reg[4] ),
        .I3(\phase_reg[0]_rep__0_n_0 ),
        .I4(\g_slot[5].bshA_reg[5] ),
        .O(all_busy_INST_0_i_6_n_0));
  LUT5 #(
    .INIT(32'hFF00FE00)) 
    all_busy_INST_0_i_7
       (.I0(\g_slot[2].bshA_reg[2] [0]),
        .I1(\g_slot[3].bshA_reg[3] [0]),
        .I2(\g_slot[0].bshA_reg[0] [0]),
        .I3(\phase_reg[0]_rep__0_n_0 ),
        .I4(\g_slot[1].bshA_reg[1] [0]),
        .O(all_busy_INST_0_i_7_n_0));
  LUT5 #(
    .INIT(32'h00FF00FE)) 
    all_busy_INST_0_i_8
       (.I0(\slot_nxt[6] [0]),
        .I1(\slot_nxt[7] [0]),
        .I2(\slot_nxt[4] [0]),
        .I3(\phase_reg[0]_rep__0_n_0 ),
        .I4(\slot_nxt[5] [0]),
        .O(all_busy_INST_0_i_8_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    all_busy_INST_0_i_9
       (.I0(\slot_nxt[3] [0]),
        .I1(\slot_nxt[2] [0]),
        .I2(\slot_nxt[1] [0]),
        .I3(\slot_nxt[0] [0]),
        .O(all_busy_INST_0_i_9_n_0));
  LUT5 #(
    .INIT(32'h00F800FE)) 
    \commit_hold[4]_i_1 
       (.I0(stage__0[0]),
        .I1(stage__0[2]),
        .I2(stage__0[1]),
        .I3(\phase_reg[0]_rep__0_n_0 ),
        .I4(lat_bpass),
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
    .INIT(32'hFFFFF7FF)) 
    \commit_onehot[4]_i_1 
       (.I0(stage__0[1]),
        .I1(stage__0[2]),
        .I2(stage__0[0]),
        .I3(phase),
        .I4(reset),
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
  (* SOFT_HLUTNM = "soft_lutpair163" *) 
  LUT3 #(
    .INIT(8'h1E)) 
    \dbg_stage[0]_i_1 
       (.I0(stage__0[1]),
        .I1(stage__0[2]),
        .I2(stage__0[0]),
        .O(stage_reg[0]));
  (* SOFT_HLUTNM = "soft_lutpair234" *) 
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
       (.I0(\phase_reg[0]_rep__0_n_0 ),
        .I1(lat_bpass),
        .I2(stage__0[0]),
        .I3(stage__0[2]),
        .I4(stage__0[1]),
        .O(dbg_stage0));
  (* SOFT_HLUTNM = "soft_lutpair234" *) 
  LUT3 #(
    .INIT(8'h0E)) 
    \dbg_stage[2]_i_2 
       (.I0(stage__0[1]),
        .I1(stage__0[0]),
        .I2(stage__0[2]),
        .O(stage_reg[2]));
  FDRE \dbg_stage_reg[0] 
       (.C(clk),
        .CE(dbg_stage0),
        .D(stage_reg[0]),
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
  LUT5 #(
    .INIT(32'h00000002)) 
    done_i_1
       (.I0(done_i_2_n_0),
        .I1(all_busy_INST_0_i_4_n_0),
        .I2(all_busy_INST_0_i_3_n_0),
        .I3(all_busy_INST_0_i_2_n_0),
        .I4(all_busy_INST_0_i_1_n_0),
        .O(done_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair145" *) 
  LUT5 #(
    .INIT(32'h00080000)) 
    done_i_2
       (.I0(\phase_reg[0]_rep__0_n_0 ),
        .I1(stage__0[0]),
        .I2(stage__0[2]),
        .I3(stage__0[1]),
        .I4(lat_bpass),
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
        .stage(stage_reg),
        .u_pulse(\g_eslot[0].upulse ),
        .v_pulse(\g_eslot[1].upulse ));
  LUT6 #(
    .INIT(64'hA0A0A0C0C0C0A0C0)) 
    \g_eslot[0].ed_i_i_1 
       (.I0(\g_eslot[0].ed_i_i_9_n_0 ),
        .I1(\g_eslot[0].ed_i_i_10_n_0 ),
        .I2(p_3_in),
        .I3(obs_whole[4]),
        .I4(phase),
        .I5(obs_whole[0]),
        .O(\g_eslot[0].upulse ));
  LUT6 #(
    .INIT(64'h0050000000300000)) 
    \g_eslot[0].ed_i_i_10 
       (.I0(obs_grown[0]),
        .I1(obs_grown[4]),
        .I2(stage__0[1]),
        .I3(stage__0[2]),
        .I4(stage__0[0]),
        .I5(phase),
        .O(\g_eslot[0].ed_i_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h0050000000300000)) 
    \g_eslot[0].ed_i_i_11 
       (.I0(obs_grown[6]),
        .I1(obs_grown[10]),
        .I2(stage__0[1]),
        .I3(stage__0[2]),
        .I4(stage__0[0]),
        .I5(phase),
        .O(\g_eslot[0].ed_i_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hA0A0A0C0C0C0A0C0)) 
    \g_eslot[0].ed_i_i_2 
       (.I0(\g_eslot[0].ed_i_i_9_n_0 ),
        .I1(\g_eslot[0].ed_i_i_11_n_0 ),
        .I2(p_4_in),
        .I3(obs_whole[10]),
        .I4(phase),
        .I5(obs_whole[6]),
        .O(\g_eslot[1].upulse ));
  (* SOFT_HLUTNM = "soft_lutpair233" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \g_eslot[0].ed_i_i_3 
       (.I0(obs_growth[3]),
        .I1(phase),
        .O(\g_eslot[0].ab_state [1]));
  (* SOFT_HLUTNM = "soft_lutpair272" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \g_eslot[0].ed_i_i_4 
       (.I0(obs_growth[2]),
        .I1(phase),
        .O(\g_eslot[0].ab_state [0]));
  (* SOFT_HLUTNM = "soft_lutpair267" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \g_eslot[0].ed_i_i_5 
       (.I0(obs_ecorr[1]),
        .I1(\phase_reg[0]_rep__0_n_0 ),
        .O(\g_eslot[0].ab_state [2]));
  (* SOFT_HLUTNM = "soft_lutpair288" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \g_eslot[0].ed_i_i_6 
       (.I0(obs_ecorr[0]),
        .I1(\phase_reg[0]_rep__0_n_0 ),
        .I2(obs_ecorr[2]),
        .O(\g_eslot[0].my_state [2]));
  (* SOFT_HLUTNM = "soft_lutpair289" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \g_eslot[0].ed_i_i_7 
       (.I0(obs_growth[1]),
        .I1(phase),
        .I2(obs_growth[5]),
        .O(\g_eslot[0].my_state [1]));
  (* SOFT_HLUTNM = "soft_lutpair290" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \g_eslot[0].ed_i_i_8 
       (.I0(obs_growth[0]),
        .I1(phase),
        .I2(obs_growth[4]),
        .O(\g_eslot[0].my_state [0]));
  (* SOFT_HLUTNM = "soft_lutpair235" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \g_eslot[0].ed_i_i_9 
       (.I0(stage__0[1]),
        .I1(stage__0[2]),
        .I2(stage__0[0]),
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
        .Q(obs_growth[0]),
        .R(reset));
  FDRE \g_eslot[0].eown_reg[4] 
       (.C(clk),
        .CE(\g_eslot[0].eown [4]),
        .D(\eslot_nxt[0] [1]),
        .Q(obs_growth[1]),
        .R(reset));
  FDRE \g_eslot[0].eown_reg[5] 
       (.C(clk),
        .CE(\g_eslot[0].eown [4]),
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
        .stage(stage_reg),
        .u_pulse(\g_eslot[1].upulse ),
        .v_pulse(\g_eslot[2].upulse ));
  LUT6 #(
    .INIT(64'hA0A0A0C0C0C0A0C0)) 
    \g_eslot[1].ed_i_i_1 
       (.I0(\g_eslot[0].ed_i_i_9_n_0 ),
        .I1(\g_eslot[1].ed_i_i_8_n_0 ),
        .I2(\g_slot[1].pe_i_i_33_n_0 ),
        .I3(obs_whole[11]),
        .I4(\phase_reg[0]_rep_n_0 ),
        .I5(obs_whole[7]),
        .O(\g_eslot[2].upulse ));
  (* SOFT_HLUTNM = "soft_lutpair226" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \g_eslot[1].ed_i_i_2 
       (.I0(obs_growth[13]),
        .I1(\phase_reg[0]_rep__0_n_0 ),
        .O(\g_eslot[1].ab_state [1]));
  (* SOFT_HLUTNM = "soft_lutpair273" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \g_eslot[1].ed_i_i_3 
       (.I0(obs_growth[12]),
        .I1(\phase_reg[0]_rep__0_n_0 ),
        .O(\g_eslot[1].ab_state [0]));
  (* SOFT_HLUTNM = "soft_lutpair268" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \g_eslot[1].ed_i_i_4 
       (.I0(obs_ecorr[6]),
        .I1(\phase_reg[0]_rep__0_n_0 ),
        .O(\g_eslot[1].ab_state [2]));
  (* SOFT_HLUTNM = "soft_lutpair285" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \g_eslot[1].ed_i_i_5 
       (.I0(obs_ecorr[3]),
        .I1(\phase_reg[0]_rep__0_n_0 ),
        .I2(obs_ecorr[10]),
        .O(\g_eslot[1].my_state [2]));
  (* SOFT_HLUTNM = "soft_lutpair286" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \g_eslot[1].ed_i_i_6 
       (.I0(obs_growth[7]),
        .I1(\phase_reg[0]_rep__0_n_0 ),
        .I2(obs_growth[21]),
        .O(\g_eslot[1].my_state [1]));
  (* SOFT_HLUTNM = "soft_lutpair287" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \g_eslot[1].ed_i_i_7 
       (.I0(obs_growth[6]),
        .I1(\phase_reg[0]_rep__0_n_0 ),
        .I2(obs_growth[20]),
        .O(\g_eslot[1].my_state [0]));
  LUT6 #(
    .INIT(64'h0050000000300000)) 
    \g_eslot[1].ed_i_i_8 
       (.I0(obs_grown[7]),
        .I1(obs_grown[11]),
        .I2(stage__0[1]),
        .I3(stage__0[2]),
        .I4(stage__0[0]),
        .I5(\phase_reg[0]_rep_n_0 ),
        .O(\g_eslot[1].ed_i_i_8_n_0 ));
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
        .Q(obs_growth[6]),
        .R(reset));
  FDRE \g_eslot[1].eown_reg[4] 
       (.C(clk),
        .CE(\g_eslot[0].eown [4]),
        .D(\eslot_nxt[1] [1]),
        .Q(obs_growth[7]),
        .R(reset));
  FDRE \g_eslot[1].eown_reg[5] 
       (.C(clk),
        .CE(\g_eslot[0].eown [4]),
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
        .stage(stage_reg),
        .u_pulse(\g_eslot[2].upulse ),
        .v_pulse(\g_eslot[2].vpulse ));
  LUT6 #(
    .INIT(64'hA0A0A0C0C0C0A0C0)) 
    \g_eslot[2].ed_i_i_1 
       (.I0(\g_eslot[0].ed_i_i_9_n_0 ),
        .I1(\g_eslot[2].ed_i_i_8_n_0 ),
        .I2(p_1_in),
        .I3(obs_whole[5]),
        .I4(\phase_reg[0]_rep_n_0 ),
        .I5(obs_whole[1]),
        .O(\g_eslot[2].vpulse ));
  (* SOFT_HLUTNM = "soft_lutpair241" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \g_eslot[2].ed_i_i_2 
       (.I0(obs_growth[15]),
        .I1(\phase_reg[0]_rep__0_n_0 ),
        .O(\g_eslot[2].ab_state [1]));
  (* SOFT_HLUTNM = "soft_lutpair274" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \g_eslot[2].ed_i_i_3 
       (.I0(obs_growth[14]),
        .I1(\phase_reg[0]_rep__0_n_0 ),
        .O(\g_eslot[2].ab_state [0]));
  (* SOFT_HLUTNM = "soft_lutpair269" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \g_eslot[2].ed_i_i_4 
       (.I0(obs_ecorr[7]),
        .I1(\phase_reg[0]_rep__0_n_0 ),
        .O(\g_eslot[2].ab_state [2]));
  (* SOFT_HLUTNM = "soft_lutpair282" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \g_eslot[2].ed_i_i_5 
       (.I0(obs_ecorr[4]),
        .I1(\phase_reg[0]_rep__0_n_0 ),
        .I2(obs_ecorr[11]),
        .O(\g_eslot[2].my_state [2]));
  (* SOFT_HLUTNM = "soft_lutpair283" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \g_eslot[2].ed_i_i_6 
       (.I0(obs_growth[9]),
        .I1(\phase_reg[0]_rep__0_n_0 ),
        .I2(obs_growth[23]),
        .O(\g_eslot[2].my_state [1]));
  (* SOFT_HLUTNM = "soft_lutpair284" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \g_eslot[2].ed_i_i_7 
       (.I0(obs_growth[8]),
        .I1(\phase_reg[0]_rep__0_n_0 ),
        .I2(obs_growth[22]),
        .O(\g_eslot[2].my_state [0]));
  LUT6 #(
    .INIT(64'h0050000000300000)) 
    \g_eslot[2].ed_i_i_8 
       (.I0(obs_grown[1]),
        .I1(obs_grown[5]),
        .I2(stage__0[1]),
        .I3(stage__0[2]),
        .I4(stage__0[0]),
        .I5(phase),
        .O(\g_eslot[2].ed_i_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hAAA8A8A0)) 
    \g_eslot[2].eown[4]_i_1 
       (.I0(phase),
        .I1(lat_bpass),
        .I2(stage__0[1]),
        .I3(stage__0[2]),
        .I4(stage__0[0]),
        .O(\g_eslot[0].eown [4]));
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
        .Q(obs_growth[8]),
        .R(reset));
  FDRE \g_eslot[2].eown_reg[4] 
       (.C(clk),
        .CE(\g_eslot[0].eown [4]),
        .D(\eslot_nxt[2] [1]),
        .Q(obs_growth[9]),
        .R(reset));
  FDRE \g_eslot[2].eown_reg[5] 
       (.C(clk),
        .CE(\g_eslot[0].eown [4]),
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
        .stage(stage_reg),
        .u_pulse(\g_eslot[3].upulse ),
        .v_pulse(\g_eslot[8].upulse ));
  LUT6 #(
    .INIT(64'hAAAA0000FF300000)) 
    \g_eslot[3].ed_i_i_1 
       (.I0(\g_eslot[0].ed_i_i_9_n_0 ),
        .I1(obs_grown[10]),
        .I2(\g_eslot[3].ed_i_i_11_n_0 ),
        .I3(\g_eslot[3].ed_i_i_12_n_0 ),
        .I4(p_6_in),
        .I5(p_0_in98_in),
        .O(\g_eslot[3].upulse ));
  (* SOFT_HLUTNM = "soft_lutpair281" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \g_eslot[3].ed_i_i_10 
       (.I0(\g_eslot[3].eown [3]),
        .I1(\phase_reg[0]_rep__0_n_0 ),
        .I2(obs_growth[18]),
        .O(\g_eslot[3].my_state [0]));
  (* SOFT_HLUTNM = "soft_lutpair156" *) 
  LUT4 #(
    .INIT(16'h0020)) 
    \g_eslot[3].ed_i_i_11 
       (.I0(stage__0[1]),
        .I1(stage__0[2]),
        .I2(stage__0[0]),
        .I3(phase),
        .O(\g_eslot[3].ed_i_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair156" *) 
  LUT5 #(
    .INIT(32'h00000800)) 
    \g_eslot[3].ed_i_i_12 
       (.I0(phase),
        .I1(stage__0[0]),
        .I2(stage__0[2]),
        .I3(stage__0[1]),
        .I4(\g_slot[0].omir_reg_n_0_[2] ),
        .O(\g_eslot[3].ed_i_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair172" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \g_eslot[3].ed_i_i_13 
       (.I0(obs_active[10]),
        .I1(phase),
        .I2(\g_slot[0].omir_reg_n_0_[8] ),
        .O(p_6_in));
  (* SOFT_HLUTNM = "soft_lutpair236" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \g_eslot[3].ed_i_i_14 
       (.I0(obs_whole[10]),
        .I1(phase),
        .I2(\g_slot[0].omir_reg_n_0_[7] ),
        .O(p_0_in98_in));
  (* SOFT_HLUTNM = "soft_lutpair227" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \g_eslot[3].ed_i_i_15 
       (.I0(obs_active[8]),
        .I1(phase),
        .I2(\g_slot[0].omir_reg_n_0_[8] ),
        .O(p_10_in));
  (* SOFT_HLUTNM = "soft_lutpair238" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \g_eslot[3].ed_i_i_16 
       (.I0(obs_whole[8]),
        .I1(phase),
        .I2(\g_slot[0].omir_reg_n_0_[7] ),
        .O(p_0_in97_in));
  (* SOFT_HLUTNM = "soft_lutpair217" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \g_eslot[3].ed_i_i_17 
       (.I0(\g_slot[0].omir_reg_n_0_[5] ),
        .I1(phase),
        .I2(obs_ptr[26]),
        .O(p_0_in2_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair217" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \g_eslot[3].ed_i_i_18 
       (.I0(\g_slot[0].omir_reg_n_0_[3] ),
        .I1(phase),
        .I2(obs_ptr[24]),
        .O(p_0_in2_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair177" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \g_eslot[3].ed_i_i_19 
       (.I0(\g_slot[1].g_dir[3].nsrc_mux [14]),
        .I1(phase),
        .I2(\g_slot[0].omir_reg_n_0_[14] ),
        .O(\g_eslot[3].ed_i_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hAAAA0000FF300000)) 
    \g_eslot[3].ed_i_i_2 
       (.I0(\g_eslot[0].ed_i_i_9_n_0 ),
        .I1(obs_grown[8]),
        .I2(\g_eslot[3].ed_i_i_11_n_0 ),
        .I3(\g_eslot[3].ed_i_i_12_n_0 ),
        .I4(p_10_in),
        .I5(p_0_in97_in),
        .O(\g_eslot[8].upulse ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00000800)) 
    \g_eslot[3].ed_i_i_3 
       (.I0(\g_slot[0].omir_reg_n_0_[14] ),
        .I1(\phase_reg[0]_rep__0_n_0 ),
        .I2(\g_slot[0].omir_reg_n_0_[4] ),
        .I3(\g_slot[0].omir_reg_n_0_[5] ),
        .I4(\g_slot[0].omir_reg_n_0_[3] ),
        .I5(\g_slot[5].nb_push [2]),
        .O(\g_eslot[3].umir ));
  LUT6 #(
    .INIT(64'h5404000000000000)) 
    \g_eslot[3].ed_i_i_4 
       (.I0(p_0_in2_in[2]),
        .I1(obs_ptr[25]),
        .I2(phase),
        .I3(\g_slot[0].omir_reg_n_0_[4] ),
        .I4(p_0_in2_in[0]),
        .I5(\g_eslot[3].ed_i_i_19_n_0 ),
        .O(\g_eslot[3].vmir ));
  (* SOFT_HLUTNM = "soft_lutpair230" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \g_eslot[3].ed_i_i_5 
       (.I0(obs_growth[11]),
        .I1(\phase_reg[0]_rep__0_n_0 ),
        .O(\g_eslot[3].ab_state [1]));
  (* SOFT_HLUTNM = "soft_lutpair275" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \g_eslot[3].ed_i_i_6 
       (.I0(obs_growth[10]),
        .I1(\phase_reg[0]_rep__0_n_0 ),
        .O(\g_eslot[3].ab_state [0]));
  (* SOFT_HLUTNM = "soft_lutpair270" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \g_eslot[3].ed_i_i_7 
       (.I0(obs_ecorr[5]),
        .I1(\phase_reg[0]_rep__0_n_0 ),
        .O(\g_eslot[3].ab_state [2]));
  (* SOFT_HLUTNM = "soft_lutpair279" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \g_eslot[3].ed_i_i_8 
       (.I0(\g_eslot[3].eown [5]),
        .I1(\phase_reg[0]_rep__0_n_0 ),
        .I2(obs_ecorr[9]),
        .O(\g_eslot[3].my_state [2]));
  (* SOFT_HLUTNM = "soft_lutpair280" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \g_eslot[3].ed_i_i_9 
       (.I0(\g_eslot[3].eown [4]),
        .I1(\phase_reg[0]_rep__0_n_0 ),
        .I2(obs_growth[19]),
        .O(\g_eslot[3].my_state [1]));
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
        .Q(\g_eslot[3].eown [3]),
        .R(reset));
  FDRE \g_eslot[3].eown_reg[4] 
       (.C(clk),
        .CE(\g_eslot[0].eown [4]),
        .D(\eslot_nxt[3] [1]),
        .Q(\g_eslot[3].eown [4]),
        .R(reset));
  FDRE \g_eslot[3].eown_reg[5] 
       (.C(clk),
        .CE(\g_eslot[0].eown [4]),
        .D(\eslot_nxt[3] [2]),
        .Q(\g_eslot[3].eown [5]),
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
        .flip_u(\g_eslot[4].umir ),
        .flip_v(\g_eslot[4].vmir ),
        .reset(reset),
        .st_in(\g_eslot[4].my_state ),
        .st_out(\eslot_nxt[4] ),
        .stage(stage_reg),
        .u_pulse(\g_eslot[4].upulse ),
        .v_pulse(\g_eslot[9].upulse ));
  LUT6 #(
    .INIT(64'hAAAA0000FF300000)) 
    \g_eslot[4].ed_i_i_1 
       (.I0(\g_eslot[0].ed_i_i_9_n_0 ),
        .I1(obs_grown[11]),
        .I2(\g_eslot[3].ed_i_i_11_n_0 ),
        .I3(\g_eslot[3].ed_i_i_12_n_0 ),
        .I4(p_9_in),
        .I5(p_0_in95_in),
        .O(\g_eslot[4].upulse ));
  (* SOFT_HLUTNM = "soft_lutpair278" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \g_eslot[4].ed_i_i_10 
       (.I0(\g_eslot[4].eown [3]),
        .I1(\phase_reg[0]_rep__0_n_0 ),
        .I2(obs_growth[24]),
        .O(\g_eslot[4].my_state [0]));
  (* SOFT_HLUTNM = "soft_lutpair212" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \g_eslot[4].ed_i_i_11 
       (.I0(obs_active[11]),
        .I1(phase),
        .I2(\g_slot[0].omir_reg_n_0_[8] ),
        .O(p_9_in));
  (* SOFT_HLUTNM = "soft_lutpair236" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \g_eslot[4].ed_i_i_12 
       (.I0(obs_whole[11]),
        .I1(phase),
        .I2(\g_slot[0].omir_reg_n_0_[7] ),
        .O(p_0_in95_in));
  (* SOFT_HLUTNM = "soft_lutpair221" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \g_eslot[4].ed_i_i_13 
       (.I0(obs_active[9]),
        .I1(phase),
        .I2(\g_slot[0].omir_reg_n_0_[8] ),
        .O(p_11_in));
  (* SOFT_HLUTNM = "soft_lutpair239" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \g_eslot[4].ed_i_i_14 
       (.I0(obs_whole[9]),
        .I1(phase),
        .I2(\g_slot[0].omir_reg_n_0_[7] ),
        .O(p_0_in94_in));
  (* SOFT_HLUTNM = "soft_lutpair152" *) 
  LUT5 #(
    .INIT(32'h000ACC0A)) 
    \g_eslot[4].ed_i_i_15 
       (.I0(obs_ptr[27]),
        .I1(\g_slot[0].omir_reg_n_0_[3] ),
        .I2(obs_ptr[29]),
        .I3(phase),
        .I4(\g_slot[0].omir_reg_n_0_[5] ),
        .O(\g_eslot[4].ed_i_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAAAA0000FF300000)) 
    \g_eslot[4].ed_i_i_2 
       (.I0(\g_eslot[0].ed_i_i_9_n_0 ),
        .I1(obs_grown[9]),
        .I2(\g_eslot[3].ed_i_i_11_n_0 ),
        .I3(\g_eslot[3].ed_i_i_12_n_0 ),
        .I4(p_11_in),
        .I5(p_0_in94_in),
        .O(\g_eslot[9].upulse ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00000800)) 
    \g_eslot[4].ed_i_i_3 
       (.I0(\g_slot[0].omir_reg_n_0_[14] ),
        .I1(\phase_reg[0]_rep__0_n_0 ),
        .I2(\g_slot[0].omir_reg_n_0_[4] ),
        .I3(\g_slot[0].omir_reg_n_0_[5] ),
        .I4(\g_slot[0].omir_reg_n_0_[3] ),
        .I5(\g_slot[6].nb_push [2]),
        .O(\g_eslot[4].umir ));
  LUT6 #(
    .INIT(64'hB888300000000000)) 
    \g_eslot[4].ed_i_i_4 
       (.I0(\g_slot[0].omir_reg_n_0_[4] ),
        .I1(phase),
        .I2(obs_ptr[28]),
        .I3(\g_slot[2].g_dir[3].nsrc_mux [14]),
        .I4(\g_slot[0].omir_reg_n_0_[14] ),
        .I5(\g_eslot[4].ed_i_i_15_n_0 ),
        .O(\g_eslot[4].vmir ));
  (* SOFT_HLUTNM = "soft_lutpair278" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \g_eslot[4].ed_i_i_5 
       (.I0(obs_growth[17]),
        .I1(\phase_reg[0]_rep__0_n_0 ),
        .O(\g_eslot[4].ab_state [1]));
  (* SOFT_HLUTNM = "soft_lutpair276" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \g_eslot[4].ed_i_i_6 
       (.I0(obs_growth[16]),
        .I1(\phase_reg[0]_rep__0_n_0 ),
        .O(\g_eslot[4].ab_state [0]));
  (* SOFT_HLUTNM = "soft_lutpair271" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \g_eslot[4].ed_i_i_7 
       (.I0(obs_ecorr[8]),
        .I1(\phase_reg[0]_rep__0_n_0 ),
        .O(\g_eslot[4].ab_state [2]));
  (* SOFT_HLUTNM = "soft_lutpair277" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \g_eslot[4].ed_i_i_8 
       (.I0(\g_eslot[4].eown [5]),
        .I1(\phase_reg[0]_rep__0_n_0 ),
        .I2(obs_ecorr[12]),
        .O(\g_eslot[4].my_state [2]));
  (* SOFT_HLUTNM = "soft_lutpair224" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \g_eslot[4].ed_i_i_9 
       (.I0(\g_eslot[4].eown [4]),
        .I1(\phase_reg[0]_rep__0_n_0 ),
        .I2(obs_growth[25]),
        .O(\g_eslot[4].my_state [1]));
  LUT5 #(
    .INIT(32'h00FE00F8)) 
    \g_eslot[4].eown[1]_i_1 
       (.I0(stage__0[0]),
        .I1(stage__0[2]),
        .I2(stage__0[1]),
        .I3(phase),
        .I4(lat_bpass),
        .O(\g_eslot[0].eown [1]));
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
        .Q(\g_eslot[4].eown [3]),
        .R(reset));
  FDRE \g_eslot[4].eown_reg[4] 
       (.C(clk),
        .CE(\g_eslot[0].eown [4]),
        .D(\eslot_nxt[4] [1]),
        .Q(\g_eslot[4].eown [4]),
        .R(reset));
  FDRE \g_eslot[4].eown_reg[5] 
       (.C(clk),
        .CE(\g_eslot[0].eown [4]),
        .D(\eslot_nxt[4] [2]),
        .Q(\g_eslot[4].eown [5]),
        .R(reset));
  (* ST_DROP = "3'b001" *) 
  (* ST_GH = "3'b100" *) 
  (* ST_GW = "3'b010" *) 
  (* ST_MH = "3'b101" *) 
  (* ST_MW = "3'b011" *) 
  (* ZZZ_ANCHOR = "0" *) 
  snowflake_edge__6 \g_eslot[5].ed_i 
       (.above_ecorr(\g_eslot[5].ab_state [2]),
        .above_growth(\g_eslot[5].ab_state [1:0]),
        .clk(1'b0),
        .flip_u(\g_eslot[5].umir ),
        .flip_v(\g_eslot[5].vmir ),
        .reset(reset),
        .st_in(\g_eslot[5].my_state ),
        .st_out(\eslot_nxt[5] ),
        .stage(stage_reg),
        .u_pulse(\g_eslot[5].upulse ),
        .v_pulse(\g_eslot[8].upulse ));
  LUT6 #(
    .INIT(64'hAAAA0000FF300000)) 
    \g_eslot[5].ed_i_i_1 
       (.I0(\g_eslot[0].ed_i_i_9_n_0 ),
        .I1(obs_grown[2]),
        .I2(\g_eslot[3].ed_i_i_11_n_0 ),
        .I3(\g_eslot[3].ed_i_i_12_n_0 ),
        .I4(p_7_in),
        .I5(p_0_in92_in),
        .O(\g_eslot[5].upulse ));
  (* SOFT_HLUTNM = "soft_lutpair227" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \g_eslot[5].ed_i_i_10 
       (.I0(obs_active[2]),
        .I1(phase),
        .I2(\g_slot[0].omir_reg_n_0_[8] ),
        .O(p_7_in));
  (* SOFT_HLUTNM = "soft_lutpair237" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \g_eslot[5].ed_i_i_11 
       (.I0(obs_whole[2]),
        .I1(phase),
        .I2(\g_slot[0].omir_reg_n_0_[7] ),
        .O(p_0_in92_in));
  (* SOFT_HLUTNM = "soft_lutpair218" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \g_eslot[5].ed_i_i_12 
       (.I0(\g_slot[0].omir_reg_n_0_[4] ),
        .I1(phase),
        .I2(obs_ptr[25]),
        .O(p_0_in2_in[1]));
  LUT6 #(
    .INIT(64'hFFFFFFFF00000800)) 
    \g_eslot[5].ed_i_i_2 
       (.I0(\phase_reg[0]_rep__0_n_0 ),
        .I1(\g_slot[0].omir_reg_n_0_[14] ),
        .I2(\g_slot[0].omir_reg_n_0_[5] ),
        .I3(\g_slot[0].omir_reg_n_0_[4] ),
        .I4(\g_slot[0].omir_reg_n_0_[3] ),
        .I5(\g_slot[5].nb_push [0]),
        .O(\g_eslot[5].umir ));
  LUT6 #(
    .INIT(64'h0000540400000000)) 
    \g_eslot[5].ed_i_i_3 
       (.I0(p_0_in2_in[2]),
        .I1(obs_ptr[24]),
        .I2(phase),
        .I3(\g_slot[0].omir_reg_n_0_[3] ),
        .I4(p_0_in2_in[1]),
        .I5(\g_eslot[3].ed_i_i_19_n_0 ),
        .O(\g_eslot[5].vmir ));
  (* SOFT_HLUTNM = "soft_lutpair289" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \g_eslot[5].ed_i_i_4 
       (.I0(obs_growth[1]),
        .I1(phase),
        .O(\g_eslot[5].ab_state [1]));
  (* SOFT_HLUTNM = "soft_lutpair290" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \g_eslot[5].ed_i_i_5 
       (.I0(obs_growth[0]),
        .I1(phase),
        .O(\g_eslot[5].ab_state [0]));
  (* SOFT_HLUTNM = "soft_lutpair288" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \g_eslot[5].ed_i_i_6 
       (.I0(obs_ecorr[0]),
        .I1(phase),
        .O(\g_eslot[5].ab_state [2]));
  (* SOFT_HLUTNM = "soft_lutpair267" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \g_eslot[5].ed_i_i_7 
       (.I0(obs_ecorr[1]),
        .I1(\phase_reg[0]_rep__0_n_0 ),
        .I2(obs_grown[4]),
        .O(\g_eslot[5].my_state [2]));
  (* SOFT_HLUTNM = "soft_lutpair233" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \g_eslot[5].ed_i_i_8 
       (.I0(obs_growth[3]),
        .I1(phase),
        .I2(obs_unrooted[4]),
        .O(\g_eslot[5].my_state [1]));
  (* SOFT_HLUTNM = "soft_lutpair272" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \g_eslot[5].ed_i_i_9 
       (.I0(obs_growth[2]),
        .I1(phase),
        .I2(obs_busy[4]),
        .O(\g_eslot[5].my_state [0]));
  FDRE \g_eslot[5].eown_reg[0] 
       (.C(clk),
        .CE(\g_eslot[0].eown [1]),
        .D(\eslot_nxt[5] [0]),
        .Q(obs_growth[2]),
        .R(reset));
  FDRE \g_eslot[5].eown_reg[1] 
       (.C(clk),
        .CE(\g_eslot[0].eown [1]),
        .D(\eslot_nxt[5] [1]),
        .Q(obs_growth[3]),
        .R(reset));
  FDRE \g_eslot[5].eown_reg[2] 
       (.C(clk),
        .CE(\g_eslot[0].eown [1]),
        .D(\eslot_nxt[5] [2]),
        .Q(obs_ecorr[1]),
        .R(reset));
  (* ST_DROP = "3'b001" *) 
  (* ST_GH = "3'b100" *) 
  (* ST_GW = "3'b010" *) 
  (* ST_MH = "3'b101" *) 
  (* ST_MW = "3'b011" *) 
  (* ZZZ_ANCHOR = "0" *) 
  snowflake_edge__7 \g_eslot[6].ed_i 
       (.above_ecorr(\g_eslot[6].ab_state [2]),
        .above_growth(\g_eslot[6].ab_state [1:0]),
        .clk(1'b0),
        .flip_u(\g_eslot[6].umir ),
        .flip_v(\g_eslot[6].vmir ),
        .reset(reset),
        .st_in(\g_eslot[6].my_state ),
        .st_out(\eslot_nxt[6] ),
        .stage(stage_reg),
        .u_pulse(\g_eslot[8].upulse ),
        .v_pulse(\g_eslot[9].upulse ));
  LUT6 #(
    .INIT(64'h0000540400000000)) 
    \g_eslot[6].ed_i_i_1 
       (.I0(p_0_in2_in[2]),
        .I1(obs_ptr[25]),
        .I2(phase),
        .I3(\g_slot[0].omir_reg_n_0_[4] ),
        .I4(p_0_in2_in[0]),
        .I5(\g_eslot[3].ed_i_i_19_n_0 ),
        .O(\g_eslot[6].umir ));
  LUT6 #(
    .INIT(64'h4744030000000000)) 
    \g_eslot[6].ed_i_i_2 
       (.I0(\g_slot[0].omir_reg_n_0_[4] ),
        .I1(phase),
        .I2(obs_ptr[28]),
        .I3(\g_slot[2].g_dir[3].nsrc_mux [14]),
        .I4(\g_slot[0].omir_reg_n_0_[14] ),
        .I5(\g_eslot[4].ed_i_i_15_n_0 ),
        .O(\g_eslot[6].vmir ));
  (* SOFT_HLUTNM = "soft_lutpair286" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \g_eslot[6].ed_i_i_3 
       (.I0(obs_growth[7]),
        .I1(\phase_reg[0]_rep__0_n_0 ),
        .O(\g_eslot[6].ab_state [1]));
  (* SOFT_HLUTNM = "soft_lutpair287" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \g_eslot[6].ed_i_i_4 
       (.I0(obs_growth[6]),
        .I1(\phase_reg[0]_rep__0_n_0 ),
        .O(\g_eslot[6].ab_state [0]));
  (* SOFT_HLUTNM = "soft_lutpair285" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \g_eslot[6].ed_i_i_5 
       (.I0(obs_ecorr[3]),
        .I1(phase),
        .O(\g_eslot[6].ab_state [2]));
  (* SOFT_HLUTNM = "soft_lutpair268" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \g_eslot[6].ed_i_i_6 
       (.I0(obs_ecorr[6]),
        .I1(\phase_reg[0]_rep__0_n_0 ),
        .I2(obs_grown[4]),
        .O(\g_eslot[6].my_state [2]));
  (* SOFT_HLUTNM = "soft_lutpair226" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \g_eslot[6].ed_i_i_7 
       (.I0(obs_growth[13]),
        .I1(\phase_reg[0]_rep__0_n_0 ),
        .I2(obs_unrooted[4]),
        .O(\g_eslot[6].my_state [1]));
  (* SOFT_HLUTNM = "soft_lutpair273" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \g_eslot[6].ed_i_i_8 
       (.I0(obs_growth[12]),
        .I1(\phase_reg[0]_rep__0_n_0 ),
        .I2(obs_busy[4]),
        .O(\g_eslot[6].my_state [0]));
  FDRE \g_eslot[6].eown_reg[0] 
       (.C(clk),
        .CE(\g_eslot[0].eown [1]),
        .D(\eslot_nxt[6] [0]),
        .Q(obs_growth[12]),
        .R(reset));
  FDRE \g_eslot[6].eown_reg[1] 
       (.C(clk),
        .CE(\g_eslot[0].eown [1]),
        .D(\eslot_nxt[6] [1]),
        .Q(obs_growth[13]),
        .R(reset));
  FDRE \g_eslot[6].eown_reg[2] 
       (.C(clk),
        .CE(\g_eslot[0].eown [1]),
        .D(\eslot_nxt[6] [2]),
        .Q(obs_ecorr[6]),
        .R(reset));
  (* ST_DROP = "3'b001" *) 
  (* ST_GH = "3'b100" *) 
  (* ST_GW = "3'b010" *) 
  (* ST_MH = "3'b101" *) 
  (* ST_MW = "3'b011" *) 
  (* ZZZ_ANCHOR = "0" *) 
  snowflake_edge__8 \g_eslot[7].ed_i 
       (.above_ecorr(\g_eslot[7].ab_state [2]),
        .above_growth(\g_eslot[7].ab_state [1:0]),
        .clk(1'b0),
        .flip_u(\g_eslot[7].umir ),
        .flip_v(\g_eslot[7].vmir ),
        .reset(reset),
        .st_in(\g_eslot[7].my_state ),
        .st_out(\eslot_nxt[7] ),
        .stage(stage_reg),
        .u_pulse(\g_eslot[9].upulse ),
        .v_pulse(\g_eslot[7].vpulse ));
  LUT6 #(
    .INIT(64'hAAAA0000FF300000)) 
    \g_eslot[7].ed_i_i_1 
       (.I0(\g_eslot[0].ed_i_i_9_n_0 ),
        .I1(obs_grown[3]),
        .I2(\g_eslot[3].ed_i_i_11_n_0 ),
        .I3(\g_eslot[3].ed_i_i_12_n_0 ),
        .I4(p_12_in),
        .I5(p_0_in90_in),
        .O(\g_eslot[7].vpulse ));
  (* SOFT_HLUTNM = "soft_lutpair212" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \g_eslot[7].ed_i_i_10 
       (.I0(obs_active[3]),
        .I1(phase),
        .I2(\g_slot[0].omir_reg_n_0_[8] ),
        .O(p_12_in));
  (* SOFT_HLUTNM = "soft_lutpair237" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \g_eslot[7].ed_i_i_11 
       (.I0(obs_whole[3]),
        .I1(phase),
        .I2(\g_slot[0].omir_reg_n_0_[7] ),
        .O(p_0_in90_in));
  (* SOFT_HLUTNM = "soft_lutpair154" *) 
  LUT5 #(
    .INIT(32'hAAC000C0)) 
    \g_eslot[7].ed_i_i_12 
       (.I0(\g_slot[0].omir_reg_n_0_[14] ),
        .I1(\g_slot[2].g_dir[3].nsrc_mux [14]),
        .I2(obs_ptr[28]),
        .I3(phase),
        .I4(\g_slot[0].omir_reg_n_0_[4] ),
        .O(\g_eslot[7].ed_i_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h00002020000A202A)) 
    \g_eslot[7].ed_i_i_2 
       (.I0(\g_eslot[7].ed_i_i_12_n_0 ),
        .I1(\g_slot[0].omir_reg_n_0_[5] ),
        .I2(phase),
        .I3(obs_ptr[29]),
        .I4(\g_slot[0].omir_reg_n_0_[3] ),
        .I5(obs_ptr[27]),
        .O(\g_eslot[7].umir ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00000800)) 
    \g_eslot[7].ed_i_i_3 
       (.I0(\phase_reg[0]_rep__0_n_0 ),
        .I1(\g_slot[0].omir_reg_n_0_[14] ),
        .I2(\g_slot[0].omir_reg_n_0_[5] ),
        .I3(\g_slot[0].omir_reg_n_0_[3] ),
        .I4(\g_slot[0].omir_reg_n_0_[4] ),
        .I5(\g_slot[6].nb_push [1]),
        .O(\g_eslot[7].vmir ));
  (* SOFT_HLUTNM = "soft_lutpair283" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \g_eslot[7].ed_i_i_4 
       (.I0(obs_growth[9]),
        .I1(\phase_reg[0]_rep__0_n_0 ),
        .O(\g_eslot[7].ab_state [1]));
  (* SOFT_HLUTNM = "soft_lutpair284" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \g_eslot[7].ed_i_i_5 
       (.I0(obs_growth[8]),
        .I1(\phase_reg[0]_rep__0_n_0 ),
        .O(\g_eslot[7].ab_state [0]));
  (* SOFT_HLUTNM = "soft_lutpair282" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \g_eslot[7].ed_i_i_6 
       (.I0(obs_ecorr[4]),
        .I1(phase),
        .O(\g_eslot[7].ab_state [2]));
  (* SOFT_HLUTNM = "soft_lutpair269" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \g_eslot[7].ed_i_i_7 
       (.I0(obs_ecorr[7]),
        .I1(\phase_reg[0]_rep__0_n_0 ),
        .I2(obs_grown[4]),
        .O(\g_eslot[7].my_state [2]));
  (* SOFT_HLUTNM = "soft_lutpair193" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \g_eslot[7].ed_i_i_8 
       (.I0(obs_growth[15]),
        .I1(\phase_reg[0]_rep__0_n_0 ),
        .I2(obs_unrooted[4]),
        .O(\g_eslot[7].my_state [1]));
  (* SOFT_HLUTNM = "soft_lutpair274" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \g_eslot[7].ed_i_i_9 
       (.I0(obs_growth[14]),
        .I1(\phase_reg[0]_rep__0_n_0 ),
        .I2(obs_busy[4]),
        .O(\g_eslot[7].my_state [0]));
  FDRE \g_eslot[7].eown_reg[0] 
       (.C(clk),
        .CE(\g_eslot[0].eown [1]),
        .D(\eslot_nxt[7] [0]),
        .Q(obs_growth[14]),
        .R(reset));
  FDRE \g_eslot[7].eown_reg[1] 
       (.C(clk),
        .CE(\g_eslot[0].eown [1]),
        .D(\eslot_nxt[7] [1]),
        .Q(obs_growth[15]),
        .R(reset));
  FDRE \g_eslot[7].eown_reg[2] 
       (.C(clk),
        .CE(\g_eslot[0].eown [1]),
        .D(\eslot_nxt[7] [2]),
        .Q(obs_ecorr[7]),
        .R(reset));
  (* ST_DROP = "3'b001" *) 
  (* ST_GH = "3'b100" *) 
  (* ST_GW = "3'b010" *) 
  (* ST_MH = "3'b101" *) 
  (* ST_MW = "3'b011" *) 
  (* ZZZ_ANCHOR = "0" *) 
  snowflake_edge__9 \g_eslot[8].ed_i 
       (.above_ecorr(1'b0),
        .above_growth({1'b0,1'b0}),
        .clk(1'b0),
        .flip_u(\g_eslot[8].umir ),
        .flip_v(\g_eslot[8].vmir ),
        .reset(reset),
        .st_in(\g_eslot[8].my_state ),
        .st_out(\eslot_nxt[8] ),
        .stage(stage_reg),
        .u_pulse(\g_eslot[8].upulse ),
        .v_pulse(\g_eslot[8].vpulse ));
  LUT6 #(
    .INIT(64'hAAAA0000FF300000)) 
    \g_eslot[8].ed_i_i_1 
       (.I0(\g_eslot[0].ed_i_i_9_n_0 ),
        .I1(obs_grown[6]),
        .I2(\g_eslot[3].ed_i_i_11_n_0 ),
        .I3(\g_eslot[3].ed_i_i_12_n_0 ),
        .I4(p_5_in),
        .I5(p_0_in88_in),
        .O(\g_eslot[8].vpulse ));
  LUT6 #(
    .INIT(64'h000002A200000000)) 
    \g_eslot[8].ed_i_i_2 
       (.I0(p_0_in2_in[2]),
        .I1(obs_ptr[25]),
        .I2(phase),
        .I3(\g_slot[0].omir_reg_n_0_[4] ),
        .I4(p_0_in2_in[0]),
        .I5(\g_eslot[3].ed_i_i_19_n_0 ),
        .O(\g_eslot[8].umir ));
  LUT6 #(
    .INIT(64'hFFFFFFFF08000000)) 
    \g_eslot[8].ed_i_i_3 
       (.I0(\phase_reg[0]_rep__0_n_0 ),
        .I1(\g_slot[0].omir_reg_n_0_[14] ),
        .I2(\g_slot[0].omir_reg_n_0_[5] ),
        .I3(\g_slot[0].omir_reg_n_0_[3] ),
        .I4(\g_slot[0].omir_reg_n_0_[4] ),
        .I5(\g_slot[5].nb_push [3]),
        .O(\g_eslot[8].vmir ));
  (* SOFT_HLUTNM = "soft_lutpair270" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \g_eslot[8].ed_i_i_4 
       (.I0(obs_ecorr[5]),
        .I1(\phase_reg[0]_rep__0_n_0 ),
        .I2(obs_grown[4]),
        .O(\g_eslot[8].my_state [2]));
  (* SOFT_HLUTNM = "soft_lutpair230" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \g_eslot[8].ed_i_i_5 
       (.I0(obs_growth[11]),
        .I1(\phase_reg[0]_rep__0_n_0 ),
        .I2(obs_unrooted[4]),
        .O(\g_eslot[8].my_state [1]));
  (* SOFT_HLUTNM = "soft_lutpair275" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \g_eslot[8].ed_i_i_6 
       (.I0(obs_growth[10]),
        .I1(\phase_reg[0]_rep__0_n_0 ),
        .I2(obs_busy[4]),
        .O(\g_eslot[8].my_state [0]));
  (* SOFT_HLUTNM = "soft_lutpair171" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \g_eslot[8].ed_i_i_7 
       (.I0(obs_active[6]),
        .I1(phase),
        .I2(\g_slot[0].omir_reg_n_0_[8] ),
        .O(p_5_in));
  (* SOFT_HLUTNM = "soft_lutpair173" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \g_eslot[8].ed_i_i_8 
       (.I0(obs_whole[6]),
        .I1(phase),
        .I2(\g_slot[0].omir_reg_n_0_[7] ),
        .O(p_0_in88_in));
  FDRE \g_eslot[8].eomir_reg[0] 
       (.C(clk),
        .CE(\g_eslot[0].eown [1]),
        .D(obs_growth[10]),
        .Q(\g_eslot[8].eomir [0]),
        .R(reset));
  FDRE \g_eslot[8].eomir_reg[1] 
       (.C(clk),
        .CE(\g_eslot[0].eown [1]),
        .D(obs_growth[11]),
        .Q(\g_eslot[8].eomir [1]),
        .R(reset));
  FDRE \g_eslot[8].eown_reg[0] 
       (.C(clk),
        .CE(\g_eslot[0].eown [1]),
        .D(\eslot_nxt[8] [0]),
        .Q(obs_growth[10]),
        .R(reset));
  FDRE \g_eslot[8].eown_reg[1] 
       (.C(clk),
        .CE(\g_eslot[0].eown [1]),
        .D(\eslot_nxt[8] [1]),
        .Q(obs_growth[11]),
        .R(reset));
  FDRE \g_eslot[8].eown_reg[2] 
       (.C(clk),
        .CE(\g_eslot[0].eown [1]),
        .D(\eslot_nxt[8] [2]),
        .Q(obs_ecorr[5]),
        .R(reset));
  (* ST_DROP = "3'b001" *) 
  (* ST_GH = "3'b100" *) 
  (* ST_GW = "3'b010" *) 
  (* ST_MH = "3'b101" *) 
  (* ST_MW = "3'b011" *) 
  (* ZZZ_ANCHOR = "0" *) 
  snowflake_edge \g_eslot[9].ed_i 
       (.above_ecorr(1'b0),
        .above_growth({1'b0,1'b0}),
        .clk(1'b0),
        .flip_u(\g_eslot[9].umir ),
        .flip_v(\g_eslot[9].vmir ),
        .reset(reset),
        .st_in(\g_eslot[9].my_state ),
        .st_out(\eslot_nxt[9] ),
        .stage(stage_reg),
        .u_pulse(\g_eslot[9].upulse ),
        .v_pulse(\g_eslot[9].vpulse ));
  LUT6 #(
    .INIT(64'hAAAA0000FF300000)) 
    \g_eslot[9].ed_i_i_1 
       (.I0(\g_eslot[0].ed_i_i_9_n_0 ),
        .I1(obs_grown[7]),
        .I2(\g_eslot[3].ed_i_i_11_n_0 ),
        .I3(\g_eslot[3].ed_i_i_12_n_0 ),
        .I4(p_8_in),
        .I5(p_0_in86_in),
        .O(\g_eslot[9].vpulse ));
  LUT6 #(
    .INIT(64'h202A000A20200000)) 
    \g_eslot[9].ed_i_i_2 
       (.I0(\g_eslot[9].ed_i_i_9_n_0 ),
        .I1(\g_slot[0].omir_reg_n_0_[3] ),
        .I2(phase),
        .I3(obs_ptr[27]),
        .I4(\g_slot[0].omir_reg_n_0_[5] ),
        .I5(obs_ptr[29]),
        .O(\g_eslot[9].umir ));
  LUT6 #(
    .INIT(64'hFFFFFFFF08000000)) 
    \g_eslot[9].ed_i_i_3 
       (.I0(\phase_reg[0]_rep__0_n_0 ),
        .I1(\g_slot[0].omir_reg_n_0_[14] ),
        .I2(\g_slot[0].omir_reg_n_0_[5] ),
        .I3(\g_slot[0].omir_reg_n_0_[3] ),
        .I4(\g_slot[0].omir_reg_n_0_[4] ),
        .I5(\g_slot[6].nb_push [3]),
        .O(\g_eslot[9].vmir ));
  (* SOFT_HLUTNM = "soft_lutpair271" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \g_eslot[9].ed_i_i_4 
       (.I0(obs_ecorr[8]),
        .I1(\phase_reg[0]_rep__0_n_0 ),
        .I2(obs_grown[4]),
        .O(\g_eslot[9].my_state [2]));
  (* SOFT_HLUTNM = "soft_lutpair223" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \g_eslot[9].ed_i_i_5 
       (.I0(obs_growth[17]),
        .I1(\phase_reg[0]_rep__0_n_0 ),
        .I2(obs_unrooted[4]),
        .O(\g_eslot[9].my_state [1]));
  (* SOFT_HLUTNM = "soft_lutpair276" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \g_eslot[9].ed_i_i_6 
       (.I0(obs_growth[16]),
        .I1(\phase_reg[0]_rep__0_n_0 ),
        .I2(obs_busy[4]),
        .O(\g_eslot[9].my_state [0]));
  (* SOFT_HLUTNM = "soft_lutpair221" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \g_eslot[9].ed_i_i_7 
       (.I0(obs_active[7]),
        .I1(phase),
        .I2(\g_slot[0].omir_reg_n_0_[8] ),
        .O(p_8_in));
  (* SOFT_HLUTNM = "soft_lutpair238" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \g_eslot[9].ed_i_i_8 
       (.I0(obs_whole[7]),
        .I1(phase),
        .I2(\g_slot[0].omir_reg_n_0_[7] ),
        .O(p_0_in86_in));
  (* SOFT_HLUTNM = "soft_lutpair154" *) 
  LUT5 #(
    .INIT(32'h000CAA0C)) 
    \g_eslot[9].ed_i_i_9 
       (.I0(\g_slot[0].omir_reg_n_0_[14] ),
        .I1(\g_slot[2].g_dir[3].nsrc_mux [14]),
        .I2(obs_ptr[28]),
        .I3(phase),
        .I4(\g_slot[0].omir_reg_n_0_[4] ),
        .O(\g_eslot[9].ed_i_i_9_n_0 ));
  FDRE \g_eslot[9].eomir_reg[0] 
       (.C(clk),
        .CE(\g_eslot[0].eown [1]),
        .D(obs_growth[16]),
        .Q(\g_eslot[9].eomir_reg_n_0_[0] ),
        .R(reset));
  FDRE \g_eslot[9].eomir_reg[1] 
       (.C(clk),
        .CE(\g_eslot[0].eown [1]),
        .D(obs_growth[17]),
        .Q(\g_eslot[9].eomir_reg_n_0_[1] ),
        .R(reset));
  FDRE \g_eslot[9].eown_reg[0] 
       (.C(clk),
        .CE(\g_eslot[0].eown [1]),
        .D(\eslot_nxt[9] [0]),
        .Q(obs_growth[16]),
        .R(reset));
  FDRE \g_eslot[9].eown_reg[1] 
       (.C(clk),
        .CE(\g_eslot[0].eown [1]),
        .D(\eslot_nxt[9] [1]),
        .Q(obs_growth[17]),
        .R(reset));
  FDRE \g_eslot[9].eown_reg[2] 
       (.C(clk),
        .CE(\g_eslot[0].eown [1]),
        .D(\eslot_nxt[9] [2]),
        .Q(obs_ecorr[8]),
        .R(reset));
  LUT5 #(
    .INIT(32'h000000FE)) 
    \g_slot[0].bshA[0][0]_i_1 
       (.I0(stage__0[0]),
        .I1(stage__0[2]),
        .I2(stage__0[1]),
        .I3(phase),
        .I4(lat_bpass),
        .O(bshA[0]));
  LUT5 #(
    .INIT(32'h0000AAA8)) 
    \g_slot[0].bshA[0][1]_i_1 
       (.I0(phase),
        .I1(stage__0[1]),
        .I2(stage__0[2]),
        .I3(stage__0[0]),
        .I4(lat_bpass),
        .O(bshA[1]));
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
  LUT5 #(
    .INIT(32'h00FE0000)) 
    \g_slot[0].bshB[0][0]_i_1 
       (.I0(stage__0[0]),
        .I1(stage__0[2]),
        .I2(stage__0[1]),
        .I3(phase),
        .I4(lat_bpass),
        .O(bshB[0]));
  LUT5 #(
    .INIT(32'hAAA80000)) 
    \g_slot[0].bshB[0][1]_i_1 
       (.I0(phase),
        .I1(stage__0[1]),
        .I2(stage__0[2]),
        .I3(stage__0[0]),
        .I4(lat_bpass),
        .O(bshB[1]));
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
  FDRE \g_slot[0].omir_reg[14] 
       (.C(clk),
        .CE(\g_slot[0].own [13]),
        .D(\g_slot[0].g_dir[0].nsrc_mux [14]),
        .Q(\g_slot[0].omir_reg_n_0_[14] ),
        .R(reset));
  FDRE \g_slot[0].omir_reg[23] 
       (.C(clk),
        .CE(\g_slot[0].own [28]),
        .D(obs_active[0]),
        .Q(\g_slot[0].g_dir[0].nsrc_mux [23]),
        .R(reset));
  FDRE \g_slot[0].omir_reg[2] 
       (.C(clk),
        .CE(\g_slot[0].own [13]),
        .D(obs_grown[4]),
        .Q(\g_slot[0].omir_reg_n_0_[2] ),
        .R(reset));
  FDRE \g_slot[0].omir_reg[3] 
       (.C(clk),
        .CE(\g_slot[0].own [13]),
        .D(obs_ptr[12]),
        .Q(\g_slot[0].omir_reg_n_0_[3] ),
        .R(reset));
  FDRE \g_slot[0].omir_reg[4] 
       (.C(clk),
        .CE(\g_slot[0].own [13]),
        .D(obs_ptr[13]),
        .Q(\g_slot[0].omir_reg_n_0_[4] ),
        .R(reset));
  FDRE \g_slot[0].omir_reg[5] 
       (.C(clk),
        .CE(\g_slot[0].own [13]),
        .D(obs_ptr[14]),
        .Q(\g_slot[0].omir_reg_n_0_[5] ),
        .R(reset));
  FDSE \g_slot[0].omir_reg[7] 
       (.C(clk),
        .CE(\g_slot[0].own [13]),
        .D(obs_whole[4]),
        .Q(\g_slot[0].omir_reg_n_0_[7] ),
        .S(reset));
  FDRE \g_slot[0].omir_reg[8] 
       (.C(clk),
        .CE(\g_slot[0].own [13]),
        .D(obs_active[4]),
        .Q(\g_slot[0].omir_reg_n_0_[8] ),
        .R(reset));
  FDRE \g_slot[0].own_reg[0] 
       (.C(clk),
        .CE(\g_slot[0].own [13]),
        .D(\slot_nxt[0] [0]),
        .Q(obs_busy[4]),
        .R(reset));
  FDRE \g_slot[0].own_reg[10] 
       (.C(clk),
        .CE(\g_slot[0].own [13]),
        .D(\slot_nxt[0] [10]),
        .Q(obs_cid[21]),
        .R(reset));
  FDSE \g_slot[0].own_reg[11] 
       (.C(clk),
        .CE(\g_slot[0].own [13]),
        .D(\slot_nxt[0] [11]),
        .Q(obs_cid[22]),
        .S(reset));
  FDRE \g_slot[0].own_reg[12] 
       (.C(clk),
        .CE(\g_slot[0].own [13]),
        .D(\slot_nxt[0] [12]),
        .Q(obs_cid[23]),
        .R(reset));
  FDRE \g_slot[0].own_reg[13] 
       (.C(clk),
        .CE(\g_slot[0].own [13]),
        .D(\slot_nxt[0] [13]),
        .Q(obs_cid[24]),
        .R(reset));
  FDRE \g_slot[0].own_reg[14] 
       (.C(clk),
        .CE(\g_slot[0].own [13]),
        .D(\slot_nxt[0] [14]),
        .Q(\g_slot[0].g_dir[0].nsrc_mux [14]),
        .R(reset));
  FDRE \g_slot[0].own_reg[15] 
       (.C(clk),
        .CE(\g_slot[0].own [28]),
        .D(\slot_nxt[0] [0]),
        .Q(obs_busy[0]),
        .R(reset));
  FDRE \g_slot[0].own_reg[16] 
       (.C(clk),
        .CE(\g_slot[0].own [28]),
        .D(\slot_nxt[0] [1]),
        .Q(obs_unrooted[0]),
        .R(reset));
  FDRE \g_slot[0].own_reg[17] 
       (.C(clk),
        .CE(\g_slot[0].own [28]),
        .D(\slot_nxt[0] [2]),
        .Q(obs_grown[0]),
        .R(reset));
  FDRE \g_slot[0].own_reg[18] 
       (.C(clk),
        .CE(\g_slot[0].own [28]),
        .D(\slot_nxt[0] [3]),
        .Q(obs_ptr[0]),
        .R(reset));
  FDRE \g_slot[0].own_reg[19] 
       (.C(clk),
        .CE(\g_slot[0].own [28]),
        .D(\slot_nxt[0] [4]),
        .Q(obs_ptr[1]),
        .R(reset));
  FDRE \g_slot[0].own_reg[1] 
       (.C(clk),
        .CE(\g_slot[0].own [13]),
        .D(\slot_nxt[0] [1]),
        .Q(obs_unrooted[4]),
        .R(reset));
  FDRE \g_slot[0].own_reg[20] 
       (.C(clk),
        .CE(\g_slot[0].own [28]),
        .D(\slot_nxt[0] [5]),
        .Q(obs_ptr[2]),
        .R(reset));
  FDRE \g_slot[0].own_reg[21] 
       (.C(clk),
        .CE(\g_slot[0].own [28]),
        .D(\slot_nxt[0] [6]),
        .Q(obs_defect[0]),
        .R(reset));
  FDSE \g_slot[0].own_reg[22] 
       (.C(clk),
        .CE(\g_slot[0].own [28]),
        .D(\slot_nxt[0] [7]),
        .Q(obs_whole[0]),
        .S(reset));
  FDRE \g_slot[0].own_reg[23] 
       (.C(clk),
        .CE(\g_slot[0].own [28]),
        .D(\slot_nxt[0] [8]),
        .Q(obs_active[0]),
        .R(reset));
  FDRE \g_slot[0].own_reg[24] 
       (.C(clk),
        .CE(\g_slot[0].own [28]),
        .D(\slot_nxt[0] [9]),
        .Q(obs_cid[0]),
        .R(reset));
  FDRE \g_slot[0].own_reg[25] 
       (.C(clk),
        .CE(\g_slot[0].own [28]),
        .D(\slot_nxt[0] [10]),
        .Q(obs_cid[1]),
        .R(reset));
  FDRE \g_slot[0].own_reg[26] 
       (.C(clk),
        .CE(\g_slot[0].own [28]),
        .D(\slot_nxt[0] [11]),
        .Q(obs_cid[2]),
        .R(reset));
  FDRE \g_slot[0].own_reg[27] 
       (.C(clk),
        .CE(\g_slot[0].own [28]),
        .D(\slot_nxt[0] [12]),
        .Q(obs_cid[3]),
        .R(reset));
  FDRE \g_slot[0].own_reg[28] 
       (.C(clk),
        .CE(\g_slot[0].own [28]),
        .D(\slot_nxt[0] [13]),
        .Q(obs_cid[4]),
        .R(reset));
  FDRE \g_slot[0].own_reg[29] 
       (.C(clk),
        .CE(\g_slot[0].own [28]),
        .D(\slot_nxt[0] [14]),
        .Q(bview_495),
        .R(reset));
  FDRE \g_slot[0].own_reg[2] 
       (.C(clk),
        .CE(\g_slot[0].own [13]),
        .D(\slot_nxt[0] [2]),
        .Q(obs_grown[4]),
        .R(reset));
  FDRE \g_slot[0].own_reg[3] 
       (.C(clk),
        .CE(\g_slot[0].own [13]),
        .D(\slot_nxt[0] [3]),
        .Q(obs_ptr[12]),
        .R(reset));
  FDRE \g_slot[0].own_reg[4] 
       (.C(clk),
        .CE(\g_slot[0].own [13]),
        .D(\slot_nxt[0] [4]),
        .Q(obs_ptr[13]),
        .R(reset));
  FDRE \g_slot[0].own_reg[5] 
       (.C(clk),
        .CE(\g_slot[0].own [13]),
        .D(\slot_nxt[0] [5]),
        .Q(obs_ptr[14]),
        .R(reset));
  FDRE \g_slot[0].own_reg[6] 
       (.C(clk),
        .CE(\g_slot[0].own [13]),
        .D(\slot_nxt[0] [6]),
        .Q(obs_defect[4]),
        .R(reset));
  FDSE \g_slot[0].own_reg[7] 
       (.C(clk),
        .CE(\g_slot[0].own [13]),
        .D(\slot_nxt[0] [7]),
        .Q(obs_whole[4]),
        .S(reset));
  FDRE \g_slot[0].own_reg[8] 
       (.C(clk),
        .CE(\g_slot[0].own [13]),
        .D(\slot_nxt[0] [8]),
        .Q(obs_active[4]),
        .R(reset));
  FDRE \g_slot[0].own_reg[9] 
       (.C(clk),
        .CE(\g_slot[0].own [13]),
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
       (.ab_active(\g_slot[5].nb_active [0]),
        .ab_cid(\g_slot[5].nb_cid [4:0]),
        .ab_defect(\g_slot[0].pe_i_i_8_n_0 ),
        .ab_ptr({\g_slot[0].pe_i_i_9_n_0 ,\g_slot[0].pe_i_i_10_n_0 ,\g_slot[0].pe_i_i_11_n_0 }),
        .ab_whole(\g_slot[0].pe_i_i_7_n_0 ),
        .clk(1'b0),
        .e_grown({1'b0,1'b0,\g_slot[0].pe_i_i_12_n_0 ,1'b0}),
        .m_pass(m_pass_w),
        .nb_active({1'b0,\g_slot[0].pe_i_i_18_n_0 ,p_4_in,1'b0}),
        .nb_cid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,\g_slot[2].nb_cid [4:0],1'b0,1'b0,1'b0,1'b0,1'b0}),
        .nb_grown({1'b0,1'b0,\g_slot[2].nb_grown [0],1'b0}),
        .nb_push({1'b0,1'b0,\g_slot[0].nb_push0 ,1'b0}),
        .nb_valid({1'b0,1'b0,1'b1,1'b0}),
        .o_busy_c(\NLW_g_slot[0].pe_i_o_busy_c_UNCONNECTED ),
        .o_pulse(\NLW_g_slot[0].pe_i_o_pulse_UNCONNECTED ),
        .o_push(\NLW_g_slot[0].pe_i_o_push_UNCONNECTED [3:0]),
        .p_has_above(1'b0),
        .p_id({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .p_is_bnd(1'b1),
        .p_is_bot(qa2),
        .p_is_syn(1'b0),
        .p_is_top(1'b0),
        .reset(1'b0),
        .st_in({\g_slot[0].pe_i_i_24_n_0 ,\g_slot[1].nb_cid [4:0],p_3_in,p_0_in104_in,\g_slot[0].pe_i_i_32_n_0 ,p_0_in10_in,\g_slot[1].nb_grown [0],\g_slot[0].pe_i_i_37_n_0 ,1'b0}),
        .st_out(\slot_nxt[0] ),
        .stage(stage_reg),
        .syn_bit(1'b0),
        .zzz_never_used(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair299" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \g_slot[0].pe_i_i_1 
       (.I0(obs_cid[14]),
        .I1(\phase_reg[0]_rep_n_0 ),
        .O(\g_slot[5].nb_cid [4]));
  (* SOFT_HLUTNM = "soft_lutpair222" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \g_slot[0].pe_i_i_10 
       (.I0(obs_ptr[7]),
        .I1(\phase_reg[0]_rep__0_n_0 ),
        .O(\g_slot[0].pe_i_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair303" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \g_slot[0].pe_i_i_11 
       (.I0(obs_ptr[6]),
        .I1(\phase_reg[0]_rep__0_n_0 ),
        .O(\g_slot[0].pe_i_i_11_n_0 ));
  LUT5 #(
    .INIT(32'h20202F20)) 
    \g_slot[0].pe_i_i_12 
       (.I0(obs_growth[1]),
        .I1(obs_growth[0]),
        .I2(\phase_reg[0]_rep_n_0 ),
        .I3(obs_growth[5]),
        .I4(obs_growth[4]),
        .O(\g_slot[0].pe_i_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair166" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \g_slot[0].pe_i_i_13 
       (.I0(obs_cid[34]),
        .I1(phase),
        .I2(obs_cid[54]),
        .O(\g_slot[2].nb_cid [4]));
  (* SOFT_HLUTNM = "soft_lutpair167" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \g_slot[0].pe_i_i_14 
       (.I0(obs_cid[33]),
        .I1(phase),
        .I2(obs_cid[53]),
        .O(\g_slot[2].nb_cid [3]));
  (* SOFT_HLUTNM = "soft_lutpair168" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \g_slot[0].pe_i_i_15 
       (.I0(obs_cid[32]),
        .I1(phase),
        .I2(obs_cid[52]),
        .O(\g_slot[2].nb_cid [2]));
  (* SOFT_HLUTNM = "soft_lutpair169" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \g_slot[0].pe_i_i_16 
       (.I0(obs_cid[31]),
        .I1(phase),
        .I2(obs_cid[51]),
        .O(\g_slot[2].nb_cid [1]));
  (* SOFT_HLUTNM = "soft_lutpair170" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \g_slot[0].pe_i_i_17 
       (.I0(obs_cid[30]),
        .I1(phase),
        .I2(obs_cid[50]),
        .O(\g_slot[2].nb_cid [0]));
  (* SOFT_HLUTNM = "soft_lutpair241" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \g_slot[0].pe_i_i_18 
       (.I0(\g_slot[0].g_dir[0].nsrc_mux [23]),
        .I1(\phase_reg[0]_rep__0_n_0 ),
        .I2(obs_active[4]),
        .O(\g_slot[0].pe_i_i_18_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair171" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \g_slot[0].pe_i_i_19 
       (.I0(obs_active[6]),
        .I1(phase),
        .I2(obs_active[10]),
        .O(p_4_in));
  (* SOFT_HLUTNM = "soft_lutpair299" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \g_slot[0].pe_i_i_2 
       (.I0(obs_cid[13]),
        .I1(\phase_reg[0]_rep_n_0 ),
        .O(\g_slot[5].nb_cid [3]));
  (* SOFT_HLUTNM = "soft_lutpair175" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \g_slot[0].pe_i_i_20 
       (.I0(obs_grown[6]),
        .I1(phase),
        .I2(obs_grown[10]),
        .O(\g_slot[2].nb_grown [0]));
  LUT6 #(
    .INIT(64'h202A000A20200000)) 
    \g_slot[0].pe_i_i_21 
       (.I0(\g_slot[0].pe_i_i_39_n_0 ),
        .I1(obs_ptr[19]),
        .I2(phase),
        .I3(obs_ptr[31]),
        .I4(obs_ptr[18]),
        .I5(obs_ptr[30]),
        .O(\g_slot[0].nb_push0 ));
  (* SOFT_HLUTNM = "soft_lutpair162" *) 
  LUT4 #(
    .INIT(16'h0220)) 
    \g_slot[0].pe_i_i_22 
       (.I0(lat_bpass),
        .I1(stage__0[1]),
        .I2(stage__0[2]),
        .I3(stage__0[0]),
        .O(m_pass_w[1]));
  (* SOFT_HLUTNM = "soft_lutpair162" *) 
  LUT4 #(
    .INIT(16'h0110)) 
    \g_slot[0].pe_i_i_23 
       (.I0(lat_bpass),
        .I1(stage__0[1]),
        .I2(stage__0[2]),
        .I3(stage__0[0]),
        .O(m_pass_w[0]));
  (* SOFT_HLUTNM = "soft_lutpair180" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \g_slot[0].pe_i_i_24 
       (.I0(bview_495),
        .I1(phase),
        .I2(\g_slot[0].g_dir[0].nsrc_mux [14]),
        .O(\g_slot[0].pe_i_i_24_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair181" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \g_slot[0].pe_i_i_25 
       (.I0(obs_cid[4]),
        .I1(phase),
        .I2(obs_cid[24]),
        .O(\g_slot[1].nb_cid [4]));
  (* SOFT_HLUTNM = "soft_lutpair182" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \g_slot[0].pe_i_i_26 
       (.I0(obs_cid[3]),
        .I1(phase),
        .I2(obs_cid[23]),
        .O(\g_slot[1].nb_cid [3]));
  (* SOFT_HLUTNM = "soft_lutpair183" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \g_slot[0].pe_i_i_27 
       (.I0(obs_cid[2]),
        .I1(phase),
        .I2(obs_cid[22]),
        .O(\g_slot[1].nb_cid [2]));
  (* SOFT_HLUTNM = "soft_lutpair184" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \g_slot[0].pe_i_i_28 
       (.I0(obs_cid[1]),
        .I1(phase),
        .I2(obs_cid[21]),
        .O(\g_slot[1].nb_cid [1]));
  (* SOFT_HLUTNM = "soft_lutpair185" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \g_slot[0].pe_i_i_29 
       (.I0(obs_cid[0]),
        .I1(phase),
        .I2(obs_cid[20]),
        .O(\g_slot[1].nb_cid [0]));
  (* SOFT_HLUTNM = "soft_lutpair300" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \g_slot[0].pe_i_i_3 
       (.I0(obs_cid[12]),
        .I1(\phase_reg[0]_rep_n_0 ),
        .O(\g_slot[5].nb_cid [2]));
  (* SOFT_HLUTNM = "soft_lutpair186" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \g_slot[0].pe_i_i_30 
       (.I0(obs_active[0]),
        .I1(phase),
        .I2(obs_active[4]),
        .O(p_3_in));
  (* SOFT_HLUTNM = "soft_lutpair187" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \g_slot[0].pe_i_i_31 
       (.I0(obs_whole[0]),
        .I1(phase),
        .I2(obs_whole[4]),
        .O(p_0_in104_in));
  (* SOFT_HLUTNM = "soft_lutpair188" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \g_slot[0].pe_i_i_32 
       (.I0(obs_defect[0]),
        .I1(\phase_reg[0]_rep__0_n_0 ),
        .I2(obs_defect[4]),
        .O(\g_slot[0].pe_i_i_32_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair189" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \g_slot[0].pe_i_i_33 
       (.I0(obs_ptr[2]),
        .I1(\phase_reg[0]_rep__0_n_0 ),
        .I2(obs_ptr[14]),
        .O(p_0_in10_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair190" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \g_slot[0].pe_i_i_34 
       (.I0(obs_ptr[1]),
        .I1(\phase_reg[0]_rep__0_n_0 ),
        .I2(obs_ptr[13]),
        .O(p_0_in10_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair191" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \g_slot[0].pe_i_i_35 
       (.I0(obs_ptr[0]),
        .I1(\phase_reg[0]_rep__0_n_0 ),
        .I2(obs_ptr[12]),
        .O(p_0_in10_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair192" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \g_slot[0].pe_i_i_36 
       (.I0(obs_grown[0]),
        .I1(phase),
        .I2(obs_grown[4]),
        .O(\g_slot[1].nb_grown [0]));
  (* SOFT_HLUTNM = "soft_lutpair193" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \g_slot[0].pe_i_i_37 
       (.I0(obs_unrooted[0]),
        .I1(\phase_reg[0]_rep__0_n_0 ),
        .I2(obs_unrooted[4]),
        .O(\g_slot[0].pe_i_i_37_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair150" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \g_slot[0].pe_i_i_38 
       (.I0(phase),
        .O(qa2));
  (* SOFT_HLUTNM = "soft_lutpair146" *) 
  LUT5 #(
    .INIT(32'h33500050)) 
    \g_slot[0].pe_i_i_39 
       (.I0(obs_ptr[32]),
        .I1(obs_ptr[20]),
        .I2(\g_slot[1].g_dir[2].nsrc_mux [14]),
        .I3(phase),
        .I4(\g_slot[5].g_dir[3].nsrc_mux ),
        .O(\g_slot[0].pe_i_i_39_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair300" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \g_slot[0].pe_i_i_4 
       (.I0(obs_cid[11]),
        .I1(\phase_reg[0]_rep_n_0 ),
        .O(\g_slot[5].nb_cid [1]));
  (* SOFT_HLUTNM = "soft_lutpair301" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \g_slot[0].pe_i_i_5 
       (.I0(obs_cid[10]),
        .I1(\phase_reg[0]_rep_n_0 ),
        .O(\g_slot[5].nb_cid [0]));
  (* SOFT_HLUTNM = "soft_lutpair302" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \g_slot[0].pe_i_i_6 
       (.I0(obs_active[2]),
        .I1(\phase_reg[0]_rep_n_0 ),
        .O(\g_slot[5].nb_active [0]));
  (* SOFT_HLUTNM = "soft_lutpair305" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \g_slot[0].pe_i_i_7 
       (.I0(obs_whole[2]),
        .I1(\phase_reg[0]_rep_n_0 ),
        .O(\g_slot[0].pe_i_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair295" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \g_slot[0].pe_i_i_8 
       (.I0(obs_defect[2]),
        .I1(\phase_reg[0]_rep__0_n_0 ),
        .O(\g_slot[0].pe_i_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair155" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \g_slot[0].pe_i_i_9 
       (.I0(obs_ptr[8]),
        .I1(\phase_reg[0]_rep__0_n_0 ),
        .O(\g_slot[0].pe_i_i_9_n_0 ));
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
  FDRE \g_slot[1].omir_reg[15] 
       (.C(clk),
        .CE(\g_slot[0].own [28]),
        .D(obs_busy[6]),
        .Q(\g_slot[1].g_dir[3].nsrc_mux [15]),
        .R(reset));
  FDRE \g_slot[1].omir_reg[16] 
       (.C(clk),
        .CE(\g_slot[0].own [28]),
        .D(obs_unrooted[6]),
        .Q(\g_slot[1].g_dir[3].nsrc_mux [16]),
        .R(reset));
  FDRE \g_slot[1].omir_reg[17] 
       (.C(clk),
        .CE(\g_slot[0].own [28]),
        .D(obs_grown[6]),
        .Q(\g_slot[1].g_dir[3].nsrc_mux [17]),
        .R(reset));
  FDRE \g_slot[1].omir_reg[23] 
       (.C(clk),
        .CE(\g_slot[0].own [28]),
        .D(obs_active[6]),
        .Q(\g_slot[1].g_dir[3].nsrc_mux [23]),
        .R(reset));
  FDRE \g_slot[1].omir_reg[24] 
       (.C(clk),
        .CE(\g_slot[0].own [28]),
        .D(obs_cid[30]),
        .Q(\g_slot[1].g_dir[3].nsrc_mux [24]),
        .R(reset));
  FDSE \g_slot[1].omir_reg[25] 
       (.C(clk),
        .CE(\g_slot[0].own [28]),
        .D(obs_cid[31]),
        .Q(\g_slot[1].g_dir[3].nsrc_mux [25]),
        .S(reset));
  FDSE \g_slot[1].omir_reg[26] 
       (.C(clk),
        .CE(\g_slot[0].own [28]),
        .D(obs_cid[32]),
        .Q(\g_slot[1].g_dir[3].nsrc_mux [26]),
        .S(reset));
  FDRE \g_slot[1].omir_reg[27] 
       (.C(clk),
        .CE(\g_slot[0].own [28]),
        .D(obs_cid[33]),
        .Q(\g_slot[1].g_dir[3].nsrc_mux [27]),
        .R(reset));
  FDRE \g_slot[1].omir_reg[28] 
       (.C(clk),
        .CE(\g_slot[0].own [28]),
        .D(obs_cid[34]),
        .Q(\g_slot[1].g_dir[3].nsrc_mux [28]),
        .R(reset));
  FDRE \g_slot[1].own_reg[0] 
       (.C(clk),
        .CE(\g_slot[0].own [13]),
        .D(\slot_nxt[1] [0]),
        .Q(obs_busy[10]),
        .R(reset));
  FDSE \g_slot[1].own_reg[10] 
       (.C(clk),
        .CE(\g_slot[0].own [13]),
        .D(\slot_nxt[1] [10]),
        .Q(obs_cid[51]),
        .S(reset));
  FDRE \g_slot[1].own_reg[11] 
       (.C(clk),
        .CE(\g_slot[0].own [13]),
        .D(\slot_nxt[1] [11]),
        .Q(obs_cid[52]),
        .R(reset));
  FDSE \g_slot[1].own_reg[12] 
       (.C(clk),
        .CE(\g_slot[0].own [13]),
        .D(\slot_nxt[1] [12]),
        .Q(obs_cid[53]),
        .S(reset));
  FDRE \g_slot[1].own_reg[13] 
       (.C(clk),
        .CE(\g_slot[0].own [13]),
        .D(\slot_nxt[1] [13]),
        .Q(obs_cid[54]),
        .R(reset));
  FDRE \g_slot[1].own_reg[14] 
       (.C(clk),
        .CE(\g_slot[0].own [13]),
        .D(\slot_nxt[1] [14]),
        .Q(\g_slot[1].g_dir[2].nsrc_mux [14]),
        .R(reset));
  FDRE \g_slot[1].own_reg[15] 
       (.C(clk),
        .CE(\g_slot[0].own [28]),
        .D(\slot_nxt[1] [0]),
        .Q(obs_busy[6]),
        .R(reset));
  FDRE \g_slot[1].own_reg[16] 
       (.C(clk),
        .CE(\g_slot[0].own [28]),
        .D(\slot_nxt[1] [1]),
        .Q(obs_unrooted[6]),
        .R(reset));
  FDRE \g_slot[1].own_reg[17] 
       (.C(clk),
        .CE(\g_slot[0].own [28]),
        .D(\slot_nxt[1] [2]),
        .Q(obs_grown[6]),
        .R(reset));
  FDRE \g_slot[1].own_reg[18] 
       (.C(clk),
        .CE(\g_slot[0].own [28]),
        .D(\slot_nxt[1] [3]),
        .Q(obs_ptr[18]),
        .R(reset));
  FDRE \g_slot[1].own_reg[19] 
       (.C(clk),
        .CE(\g_slot[0].own [28]),
        .D(\slot_nxt[1] [4]),
        .Q(obs_ptr[19]),
        .R(reset));
  FDRE \g_slot[1].own_reg[1] 
       (.C(clk),
        .CE(\g_slot[0].own [13]),
        .D(\slot_nxt[1] [1]),
        .Q(obs_unrooted[10]),
        .R(reset));
  FDRE \g_slot[1].own_reg[20] 
       (.C(clk),
        .CE(\g_slot[0].own [28]),
        .D(\slot_nxt[1] [5]),
        .Q(obs_ptr[20]),
        .R(reset));
  FDRE \g_slot[1].own_reg[21] 
       (.C(clk),
        .CE(\g_slot[0].own [28]),
        .D(\slot_nxt[1] [6]),
        .Q(obs_defect[6]),
        .R(reset));
  FDSE \g_slot[1].own_reg[22] 
       (.C(clk),
        .CE(\g_slot[0].own [28]),
        .D(\slot_nxt[1] [7]),
        .Q(obs_whole[6]),
        .S(reset));
  FDRE \g_slot[1].own_reg[23] 
       (.C(clk),
        .CE(\g_slot[0].own [28]),
        .D(\slot_nxt[1] [8]),
        .Q(obs_active[6]),
        .R(reset));
  FDRE \g_slot[1].own_reg[24] 
       (.C(clk),
        .CE(\g_slot[0].own [28]),
        .D(\slot_nxt[1] [9]),
        .Q(obs_cid[30]),
        .R(reset));
  FDSE \g_slot[1].own_reg[25] 
       (.C(clk),
        .CE(\g_slot[0].own [28]),
        .D(\slot_nxt[1] [10]),
        .Q(obs_cid[31]),
        .S(reset));
  FDSE \g_slot[1].own_reg[26] 
       (.C(clk),
        .CE(\g_slot[0].own [28]),
        .D(\slot_nxt[1] [11]),
        .Q(obs_cid[32]),
        .S(reset));
  FDRE \g_slot[1].own_reg[27] 
       (.C(clk),
        .CE(\g_slot[0].own [28]),
        .D(\slot_nxt[1] [12]),
        .Q(obs_cid[33]),
        .R(reset));
  FDRE \g_slot[1].own_reg[28] 
       (.C(clk),
        .CE(\g_slot[0].own [28]),
        .D(\slot_nxt[1] [13]),
        .Q(obs_cid[34]),
        .R(reset));
  FDRE \g_slot[1].own_reg[29] 
       (.C(clk),
        .CE(\g_slot[0].own [28]),
        .D(\slot_nxt[1] [14]),
        .Q(\g_slot[5].g_dir[3].nsrc_mux ),
        .R(reset));
  FDRE \g_slot[1].own_reg[2] 
       (.C(clk),
        .CE(\g_slot[0].own [13]),
        .D(\slot_nxt[1] [2]),
        .Q(obs_grown[10]),
        .R(reset));
  FDRE \g_slot[1].own_reg[3] 
       (.C(clk),
        .CE(\g_slot[0].own [13]),
        .D(\slot_nxt[1] [3]),
        .Q(obs_ptr[30]),
        .R(reset));
  FDRE \g_slot[1].own_reg[4] 
       (.C(clk),
        .CE(\g_slot[0].own [13]),
        .D(\slot_nxt[1] [4]),
        .Q(obs_ptr[31]),
        .R(reset));
  FDRE \g_slot[1].own_reg[5] 
       (.C(clk),
        .CE(\g_slot[0].own [13]),
        .D(\slot_nxt[1] [5]),
        .Q(obs_ptr[32]),
        .R(reset));
  FDRE \g_slot[1].own_reg[6] 
       (.C(clk),
        .CE(\g_slot[0].own [13]),
        .D(\slot_nxt[1] [6]),
        .Q(obs_defect[10]),
        .R(reset));
  FDSE \g_slot[1].own_reg[7] 
       (.C(clk),
        .CE(\g_slot[0].own [13]),
        .D(\slot_nxt[1] [7]),
        .Q(obs_whole[10]),
        .S(reset));
  FDRE \g_slot[1].own_reg[8] 
       (.C(clk),
        .CE(\g_slot[0].own [13]),
        .D(\slot_nxt[1] [8]),
        .Q(obs_active[10]),
        .R(reset));
  FDRE \g_slot[1].own_reg[9] 
       (.C(clk),
        .CE(\g_slot[0].own [13]),
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
       (.ab_active(\g_slot[6].nb_active [0]),
        .ab_cid(\g_slot[6].nb_cid [4:0]),
        .ab_defect(\g_slot[1].pe_i_i_9_n_0 ),
        .ab_ptr({\g_slot[1].pe_i_i_10_n_0 ,\g_slot[1].pe_i_i_11_n_0 ,\g_slot[1].pe_i_i_12_n_0 }),
        .ab_whole(\g_slot[1].pe_i_i_8_n_0 ),
        .clk(1'b0),
        .e_grown({\g_slot[1].e_grown ,\g_slot[2].e_grown03_in ,\g_slot[0].pe_i_i_12_n_0 }),
        .m_pass(m_pass_w),
        .nb_active({\g_slot[1].pe_i_i_31_n_0 ,\g_slot[1].pe_i_i_32_n_0 ,\g_slot[1].pe_i_i_33_n_0 ,p_3_in}),
        .nb_cid(\g_slot[1].nb_cid ),
        .nb_grown(\g_slot[1].nb_grown ),
        .nb_push({\g_slot[1].nb_push ,\g_eslot[0].umir }),
        .nb_valid({qa2,phase,1'b1,1'b1}),
        .o_busy_c(\NLW_g_slot[1].pe_i_o_busy_c_UNCONNECTED ),
        .o_pulse(\NLW_g_slot[1].pe_i_o_pulse_UNCONNECTED ),
        .o_push(\NLW_g_slot[1].pe_i_o_push_UNCONNECTED [3:0]),
        .p_has_above(1'b0),
        .p_id({1'b0,1'b0,1'b0,1'b1,1'b0}),
        .p_is_bnd(1'b0),
        .p_is_bot(1'b0),
        .p_is_syn(1'b0),
        .p_is_top(1'b0),
        .reset(1'b0),
        .st_in({\g_slot[1].pe_i_i_41_n_0 ,\g_slot[2].nb_cid [4:0],p_4_in,p_0_in103_in,\g_slot[1].pe_i_i_43_n_0 ,p_0_in8_in,\g_slot[2].nb_grown [0],\g_slot[1].pe_i_i_47_n_0 ,1'b0}),
        .st_out(\slot_nxt[1] ),
        .stage(stage_reg),
        .syn_bit(\g_slot[1].pe_i_i_1_n_0 ),
        .zzz_never_used(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair177" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \g_slot[1].pe_i_i_1 
       (.I0(\syn_buf_reg_n_0_[0] ),
        .I1(phase),
        .I2(\syn_buf_reg_n_0_[1] ),
        .O(\g_slot[1].pe_i_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair297" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \g_slot[1].pe_i_i_10 
       (.I0(obs_ptr[26]),
        .I1(\phase_reg[0]_rep_n_0 ),
        .O(\g_slot[1].pe_i_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair148" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \g_slot[1].pe_i_i_11 
       (.I0(obs_ptr[25]),
        .I1(\phase_reg[0]_rep__0_n_0 ),
        .O(\g_slot[1].pe_i_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair298" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \g_slot[1].pe_i_i_12 
       (.I0(obs_ptr[24]),
        .I1(\phase_reg[0]_rep_n_0 ),
        .O(\g_slot[1].pe_i_i_12_n_0 ));
  LUT5 #(
    .INIT(32'h20202F20)) 
    \g_slot[1].pe_i_i_13 
       (.I0(\g_slot[1].g_dir[3].nsrc_mux [16]),
        .I1(\g_slot[1].g_dir[3].nsrc_mux [15]),
        .I2(\phase_reg[0]_rep__0_n_0 ),
        .I3(obs_growth[19]),
        .I4(obs_growth[18]),
        .O(\g_slot[1].e_grown [3]));
  LUT5 #(
    .INIT(32'h20202F20)) 
    \g_slot[1].pe_i_i_14 
       (.I0(\g_eslot[8].eomir [1]),
        .I1(\g_eslot[8].eomir [0]),
        .I2(\phase_reg[0]_rep_n_0 ),
        .I3(obs_unrooted[10]),
        .I4(obs_busy[10]),
        .O(\g_slot[1].e_grown [2]));
  LUT5 #(
    .INIT(32'h20202F20)) 
    \g_slot[1].pe_i_i_15 
       (.I0(obs_growth[7]),
        .I1(obs_growth[6]),
        .I2(\phase_reg[0]_rep_n_0 ),
        .I3(obs_growth[21]),
        .I4(obs_growth[20]),
        .O(\g_slot[2].e_grown03_in ));
  (* SOFT_HLUTNM = "soft_lutpair248" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \g_slot[1].pe_i_i_16 
       (.I0(\g_slot[1].g_dir[3].nsrc_mux [28]),
        .I1(\phase_reg[0]_rep_n_0 ),
        .I2(obs_cid[44]),
        .O(\g_slot[1].nb_cid [19]));
  (* SOFT_HLUTNM = "soft_lutpair249" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \g_slot[1].pe_i_i_17 
       (.I0(\g_slot[1].g_dir[3].nsrc_mux [27]),
        .I1(\phase_reg[0]_rep_n_0 ),
        .I2(obs_cid[43]),
        .O(\g_slot[1].nb_cid [18]));
  (* SOFT_HLUTNM = "soft_lutpair250" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \g_slot[1].pe_i_i_18 
       (.I0(\g_slot[1].g_dir[3].nsrc_mux [26]),
        .I1(\phase_reg[0]_rep_n_0 ),
        .I2(obs_cid[42]),
        .O(\g_slot[1].nb_cid [17]));
  (* SOFT_HLUTNM = "soft_lutpair251" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \g_slot[1].pe_i_i_19 
       (.I0(\g_slot[1].g_dir[3].nsrc_mux [25]),
        .I1(\phase_reg[0]_rep_n_0 ),
        .I2(obs_cid[41]),
        .O(\g_slot[1].nb_cid [16]));
  (* SOFT_HLUTNM = "soft_lutpair248" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \g_slot[1].pe_i_i_2 
       (.I0(obs_cid[44]),
        .I1(\phase_reg[0]_rep_n_0 ),
        .O(\g_slot[6].nb_cid [4]));
  (* SOFT_HLUTNM = "soft_lutpair252" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \g_slot[1].pe_i_i_20 
       (.I0(\g_slot[1].g_dir[3].nsrc_mux [24]),
        .I1(\phase_reg[0]_rep_n_0 ),
        .I2(obs_cid[40]),
        .O(\g_slot[1].nb_cid [15]));
  (* SOFT_HLUTNM = "soft_lutpair242" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \g_slot[1].pe_i_i_21 
       (.I0(\g_slot[1].g_dir[2].nsrc_mux [28]),
        .I1(\phase_reg[0]_rep_n_0 ),
        .I2(obs_cid[54]),
        .O(\g_slot[1].nb_cid [14]));
  (* SOFT_HLUTNM = "soft_lutpair243" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \g_slot[1].pe_i_i_22 
       (.I0(\g_slot[1].g_dir[2].nsrc_mux [27]),
        .I1(\phase_reg[0]_rep_n_0 ),
        .I2(obs_cid[53]),
        .O(\g_slot[1].nb_cid [13]));
  (* SOFT_HLUTNM = "soft_lutpair244" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \g_slot[1].pe_i_i_23 
       (.I0(\g_slot[1].g_dir[2].nsrc_mux [26]),
        .I1(\phase_reg[0]_rep_n_0 ),
        .I2(obs_cid[52]),
        .O(\g_slot[1].nb_cid [12]));
  (* SOFT_HLUTNM = "soft_lutpair245" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \g_slot[1].pe_i_i_24 
       (.I0(\g_slot[1].g_dir[2].nsrc_mux [25]),
        .I1(\phase_reg[0]_rep_n_0 ),
        .I2(obs_cid[51]),
        .O(\g_slot[1].nb_cid [11]));
  (* SOFT_HLUTNM = "soft_lutpair246" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \g_slot[1].pe_i_i_25 
       (.I0(\g_slot[1].g_dir[2].nsrc_mux [24]),
        .I1(\phase_reg[0]_rep_n_0 ),
        .I2(obs_cid[50]),
        .O(\g_slot[1].nb_cid [10]));
  (* SOFT_HLUTNM = "soft_lutpair206" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \g_slot[1].pe_i_i_26 
       (.I0(obs_cid[39]),
        .I1(\phase_reg[0]_rep_n_0 ),
        .I2(obs_cid[59]),
        .O(\g_slot[1].nb_cid [9]));
  (* SOFT_HLUTNM = "soft_lutpair207" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \g_slot[1].pe_i_i_27 
       (.I0(obs_cid[38]),
        .I1(\phase_reg[0]_rep_n_0 ),
        .I2(obs_cid[58]),
        .O(\g_slot[1].nb_cid [8]));
  (* SOFT_HLUTNM = "soft_lutpair208" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \g_slot[1].pe_i_i_28 
       (.I0(obs_cid[37]),
        .I1(\phase_reg[0]_rep_n_0 ),
        .I2(obs_cid[57]),
        .O(\g_slot[1].nb_cid [7]));
  (* SOFT_HLUTNM = "soft_lutpair209" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \g_slot[1].pe_i_i_29 
       (.I0(obs_cid[36]),
        .I1(\phase_reg[0]_rep_n_0 ),
        .I2(obs_cid[56]),
        .O(\g_slot[1].nb_cid [6]));
  (* SOFT_HLUTNM = "soft_lutpair249" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \g_slot[1].pe_i_i_3 
       (.I0(obs_cid[43]),
        .I1(\phase_reg[0]_rep_n_0 ),
        .O(\g_slot[6].nb_cid [3]));
  (* SOFT_HLUTNM = "soft_lutpair210" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \g_slot[1].pe_i_i_30 
       (.I0(obs_cid[35]),
        .I1(\phase_reg[0]_rep_n_0 ),
        .I2(obs_cid[55]),
        .O(\g_slot[1].nb_cid [5]));
  (* SOFT_HLUTNM = "soft_lutpair228" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \g_slot[1].pe_i_i_31 
       (.I0(\g_slot[1].g_dir[3].nsrc_mux [23]),
        .I1(\phase_reg[0]_rep__0_n_0 ),
        .I2(obs_active[8]),
        .O(\g_slot[1].pe_i_i_31_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair172" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \g_slot[1].pe_i_i_32 
       (.I0(\g_slot[1].g_dir[2].nsrc_mux [23]),
        .I1(phase),
        .I2(obs_active[10]),
        .O(\g_slot[1].pe_i_i_32_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair211" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \g_slot[1].pe_i_i_33 
       (.I0(obs_active[7]),
        .I1(\phase_reg[0]_rep_n_0 ),
        .I2(obs_active[11]),
        .O(\g_slot[1].pe_i_i_33_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair253" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \g_slot[1].pe_i_i_34 
       (.I0(\g_slot[1].g_dir[3].nsrc_mux [17]),
        .I1(phase),
        .I2(obs_grown[8]),
        .O(\g_slot[1].nb_grown [3]));
  (* SOFT_HLUTNM = "soft_lutpair247" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \g_slot[1].pe_i_i_35 
       (.I0(\g_slot[1].g_dir[2].nsrc_mux [17]),
        .I1(phase),
        .I2(obs_grown[10]),
        .O(\g_slot[1].nb_grown [2]));
  (* SOFT_HLUTNM = "soft_lutpair215" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \g_slot[1].pe_i_i_36 
       (.I0(obs_grown[7]),
        .I1(\phase_reg[0]_rep_n_0 ),
        .I2(obs_grown[11]),
        .O(\g_slot[1].nb_grown [1]));
  (* SOFT_HLUTNM = "soft_lutpair147" *) 
  LUT5 #(
    .INIT(32'h00080000)) 
    \g_slot[1].pe_i_i_37 
       (.I0(obs_ptr[24]),
        .I1(obs_ptr[25]),
        .I2(obs_ptr[26]),
        .I3(\phase_reg[0]_rep__0_n_0 ),
        .I4(\g_slot[1].g_dir[3].nsrc_mux [14]),
        .O(\g_slot[1].nb_push [3]));
  LUT5 #(
    .INIT(32'h04000000)) 
    \g_slot[1].pe_i_i_38 
       (.I0(\g_slot[1].g_dir[2].nsrc_mux [18]),
        .I1(\g_slot[1].g_dir[2].nsrc_mux [20]),
        .I2(\g_slot[1].g_dir[2].nsrc_mux [19]),
        .I3(\phase_reg[0]_rep__0_n_0 ),
        .I4(\g_slot[1].g_dir[2].nsrc_mux [29]),
        .O(\g_slot[1].nb_push [2]));
  LUT6 #(
    .INIT(64'h202A000A20200000)) 
    \g_slot[1].pe_i_i_39 
       (.I0(\g_slot[1].pe_i_i_48_n_0 ),
        .I1(obs_ptr[22]),
        .I2(phase),
        .I3(obs_ptr[34]),
        .I4(obs_ptr[21]),
        .I5(obs_ptr[33]),
        .O(\g_slot[1].nb_push [1]));
  (* SOFT_HLUTNM = "soft_lutpair250" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \g_slot[1].pe_i_i_4 
       (.I0(obs_cid[42]),
        .I1(\phase_reg[0]_rep_n_0 ),
        .O(\g_slot[6].nb_cid [2]));
  LUT6 #(
    .INIT(64'hFFFFFFFF02000000)) 
    \g_slot[1].pe_i_i_40 
       (.I0(bview_495),
        .I1(obs_ptr[2]),
        .I2(obs_ptr[0]),
        .I3(obs_ptr[1]),
        .I4(phase),
        .I5(\g_slot[1].pe_i_i_49_n_0 ),
        .O(\g_eslot[0].umir ));
  (* SOFT_HLUTNM = "soft_lutpair165" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \g_slot[1].pe_i_i_41 
       (.I0(\g_slot[5].g_dir[3].nsrc_mux ),
        .I1(phase),
        .I2(\g_slot[1].g_dir[2].nsrc_mux [14]),
        .O(\g_slot[1].pe_i_i_41_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair173" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \g_slot[1].pe_i_i_42 
       (.I0(obs_whole[6]),
        .I1(phase),
        .I2(obs_whole[10]),
        .O(p_0_in103_in));
  (* SOFT_HLUTNM = "soft_lutpair174" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \g_slot[1].pe_i_i_43 
       (.I0(obs_defect[6]),
        .I1(phase),
        .I2(obs_defect[10]),
        .O(\g_slot[1].pe_i_i_43_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair146" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \g_slot[1].pe_i_i_44 
       (.I0(obs_ptr[32]),
        .I1(phase),
        .I2(obs_ptr[20]),
        .O(p_0_in8_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair165" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \g_slot[1].pe_i_i_45 
       (.I0(obs_ptr[19]),
        .I1(phase),
        .I2(obs_ptr[31]),
        .O(p_0_in8_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair164" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \g_slot[1].pe_i_i_46 
       (.I0(obs_ptr[18]),
        .I1(phase),
        .I2(obs_ptr[30]),
        .O(p_0_in8_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair176" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \g_slot[1].pe_i_i_47 
       (.I0(obs_unrooted[6]),
        .I1(phase),
        .I2(obs_unrooted[10]),
        .O(\g_slot[1].pe_i_i_47_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair149" *) 
  LUT5 #(
    .INIT(32'h33500050)) 
    \g_slot[1].pe_i_i_48 
       (.I0(obs_ptr[35]),
        .I1(obs_ptr[23]),
        .I2(\g_slot[2].g_dir[2].nsrc_mux [14]),
        .I3(phase),
        .I4(\g_slot[6].g_dir[3].nsrc_mux ),
        .O(\g_slot[1].pe_i_i_48_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair150" *) 
  LUT5 #(
    .INIT(32'h00040000)) 
    \g_slot[1].pe_i_i_49 
       (.I0(phase),
        .I1(obs_ptr[13]),
        .I2(obs_ptr[12]),
        .I3(obs_ptr[14]),
        .I4(\g_slot[0].g_dir[0].nsrc_mux [14]),
        .O(\g_slot[1].pe_i_i_49_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair251" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \g_slot[1].pe_i_i_5 
       (.I0(obs_cid[41]),
        .I1(\phase_reg[0]_rep_n_0 ),
        .O(\g_slot[6].nb_cid [1]));
  (* SOFT_HLUTNM = "soft_lutpair252" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \g_slot[1].pe_i_i_6 
       (.I0(obs_cid[40]),
        .I1(\phase_reg[0]_rep_n_0 ),
        .O(\g_slot[6].nb_cid [0]));
  (* SOFT_HLUTNM = "soft_lutpair296" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \g_slot[1].pe_i_i_7 
       (.I0(obs_active[8]),
        .I1(\phase_reg[0]_rep_n_0 ),
        .O(\g_slot[6].nb_active [0]));
  (* SOFT_HLUTNM = "soft_lutpair304" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \g_slot[1].pe_i_i_8 
       (.I0(obs_whole[8]),
        .I1(\phase_reg[0]_rep_n_0 ),
        .O(\g_slot[1].pe_i_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair297" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \g_slot[1].pe_i_i_9 
       (.I0(obs_defect[8]),
        .I1(\phase_reg[0]_rep_n_0 ),
        .O(\g_slot[1].pe_i_i_9_n_0 ));
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
  FDRE \g_slot[2].omir_reg[15] 
       (.C(clk),
        .CE(\g_slot[0].own [28]),
        .D(obs_busy[7]),
        .Q(\g_slot[2].g_dir[3].nsrc_mux [15]),
        .R(reset));
  FDRE \g_slot[2].omir_reg[16] 
       (.C(clk),
        .CE(\g_slot[0].own [28]),
        .D(obs_unrooted[7]),
        .Q(\g_slot[2].g_dir[3].nsrc_mux [16]),
        .R(reset));
  FDRE \g_slot[2].omir_reg[17] 
       (.C(clk),
        .CE(\g_slot[0].own [28]),
        .D(obs_grown[7]),
        .Q(\g_slot[2].g_dir[3].nsrc_mux [17]),
        .R(reset));
  FDRE \g_slot[2].omir_reg[23] 
       (.C(clk),
        .CE(\g_slot[0].own [28]),
        .D(obs_active[7]),
        .Q(\g_slot[2].g_dir[3].nsrc_mux [23]),
        .R(reset));
  FDSE \g_slot[2].omir_reg[24] 
       (.C(clk),
        .CE(\g_slot[0].own [28]),
        .D(obs_cid[35]),
        .Q(\g_slot[2].g_dir[3].nsrc_mux [24]),
        .S(reset));
  FDSE \g_slot[2].omir_reg[25] 
       (.C(clk),
        .CE(\g_slot[0].own [28]),
        .D(obs_cid[36]),
        .Q(\g_slot[2].g_dir[3].nsrc_mux [25]),
        .S(reset));
  FDSE \g_slot[2].omir_reg[26] 
       (.C(clk),
        .CE(\g_slot[0].own [28]),
        .D(obs_cid[37]),
        .Q(\g_slot[2].g_dir[3].nsrc_mux [26]),
        .S(reset));
  FDRE \g_slot[2].omir_reg[27] 
       (.C(clk),
        .CE(\g_slot[0].own [28]),
        .D(obs_cid[38]),
        .Q(\g_slot[2].g_dir[3].nsrc_mux [27]),
        .R(reset));
  FDRE \g_slot[2].omir_reg[28] 
       (.C(clk),
        .CE(\g_slot[0].own [28]),
        .D(obs_cid[39]),
        .Q(\g_slot[2].g_dir[3].nsrc_mux [28]),
        .R(reset));
  LUT4 #(
    .INIT(16'h00FE)) 
    \g_slot[2].own[13]_i_1 
       (.I0(stage__0[0]),
        .I1(stage__0[2]),
        .I2(stage__0[1]),
        .I3(phase),
        .O(\g_slot[0].own [13]));
  LUT4 #(
    .INIT(16'hFE00)) 
    \g_slot[2].own[28]_i_1 
       (.I0(stage__0[0]),
        .I1(stage__0[2]),
        .I2(stage__0[1]),
        .I3(phase),
        .O(\g_slot[0].own [28]));
  FDRE \g_slot[2].own_reg[0] 
       (.C(clk),
        .CE(\g_slot[0].own [13]),
        .D(\slot_nxt[2] [0]),
        .Q(obs_busy[11]),
        .R(reset));
  FDSE \g_slot[2].own_reg[10] 
       (.C(clk),
        .CE(\g_slot[0].own [13]),
        .D(\slot_nxt[2] [10]),
        .Q(obs_cid[56]),
        .S(reset));
  FDRE \g_slot[2].own_reg[11] 
       (.C(clk),
        .CE(\g_slot[0].own [13]),
        .D(\slot_nxt[2] [11]),
        .Q(obs_cid[57]),
        .R(reset));
  FDSE \g_slot[2].own_reg[12] 
       (.C(clk),
        .CE(\g_slot[0].own [13]),
        .D(\slot_nxt[2] [12]),
        .Q(obs_cid[58]),
        .S(reset));
  FDRE \g_slot[2].own_reg[13] 
       (.C(clk),
        .CE(\g_slot[0].own [13]),
        .D(\slot_nxt[2] [13]),
        .Q(obs_cid[59]),
        .R(reset));
  FDRE \g_slot[2].own_reg[14] 
       (.C(clk),
        .CE(\g_slot[0].own [13]),
        .D(\slot_nxt[2] [14]),
        .Q(\g_slot[2].g_dir[2].nsrc_mux [14]),
        .R(reset));
  FDRE \g_slot[2].own_reg[15] 
       (.C(clk),
        .CE(\g_slot[0].own [28]),
        .D(\slot_nxt[2] [0]),
        .Q(obs_busy[7]),
        .R(reset));
  FDRE \g_slot[2].own_reg[16] 
       (.C(clk),
        .CE(\g_slot[0].own [28]),
        .D(\slot_nxt[2] [1]),
        .Q(obs_unrooted[7]),
        .R(reset));
  FDRE \g_slot[2].own_reg[17] 
       (.C(clk),
        .CE(\g_slot[0].own [28]),
        .D(\slot_nxt[2] [2]),
        .Q(obs_grown[7]),
        .R(reset));
  FDRE \g_slot[2].own_reg[18] 
       (.C(clk),
        .CE(\g_slot[0].own [28]),
        .D(\slot_nxt[2] [3]),
        .Q(obs_ptr[21]),
        .R(reset));
  FDRE \g_slot[2].own_reg[19] 
       (.C(clk),
        .CE(\g_slot[0].own [28]),
        .D(\slot_nxt[2] [4]),
        .Q(obs_ptr[22]),
        .R(reset));
  FDRE \g_slot[2].own_reg[1] 
       (.C(clk),
        .CE(\g_slot[0].own [13]),
        .D(\slot_nxt[2] [1]),
        .Q(obs_unrooted[11]),
        .R(reset));
  FDRE \g_slot[2].own_reg[20] 
       (.C(clk),
        .CE(\g_slot[0].own [28]),
        .D(\slot_nxt[2] [5]),
        .Q(obs_ptr[23]),
        .R(reset));
  FDRE \g_slot[2].own_reg[21] 
       (.C(clk),
        .CE(\g_slot[0].own [28]),
        .D(\slot_nxt[2] [6]),
        .Q(obs_defect[7]),
        .R(reset));
  FDSE \g_slot[2].own_reg[22] 
       (.C(clk),
        .CE(\g_slot[0].own [28]),
        .D(\slot_nxt[2] [7]),
        .Q(obs_whole[7]),
        .S(reset));
  FDRE \g_slot[2].own_reg[23] 
       (.C(clk),
        .CE(\g_slot[0].own [28]),
        .D(\slot_nxt[2] [8]),
        .Q(obs_active[7]),
        .R(reset));
  FDSE \g_slot[2].own_reg[24] 
       (.C(clk),
        .CE(\g_slot[0].own [28]),
        .D(\slot_nxt[2] [9]),
        .Q(obs_cid[35]),
        .S(reset));
  FDSE \g_slot[2].own_reg[25] 
       (.C(clk),
        .CE(\g_slot[0].own [28]),
        .D(\slot_nxt[2] [10]),
        .Q(obs_cid[36]),
        .S(reset));
  FDSE \g_slot[2].own_reg[26] 
       (.C(clk),
        .CE(\g_slot[0].own [28]),
        .D(\slot_nxt[2] [11]),
        .Q(obs_cid[37]),
        .S(reset));
  FDRE \g_slot[2].own_reg[27] 
       (.C(clk),
        .CE(\g_slot[0].own [28]),
        .D(\slot_nxt[2] [12]),
        .Q(obs_cid[38]),
        .R(reset));
  FDRE \g_slot[2].own_reg[28] 
       (.C(clk),
        .CE(\g_slot[0].own [28]),
        .D(\slot_nxt[2] [13]),
        .Q(obs_cid[39]),
        .R(reset));
  FDRE \g_slot[2].own_reg[29] 
       (.C(clk),
        .CE(\g_slot[0].own [28]),
        .D(\slot_nxt[2] [14]),
        .Q(\g_slot[6].g_dir[3].nsrc_mux ),
        .R(reset));
  FDRE \g_slot[2].own_reg[2] 
       (.C(clk),
        .CE(\g_slot[0].own [13]),
        .D(\slot_nxt[2] [2]),
        .Q(obs_grown[11]),
        .R(reset));
  FDRE \g_slot[2].own_reg[3] 
       (.C(clk),
        .CE(\g_slot[0].own [13]),
        .D(\slot_nxt[2] [3]),
        .Q(obs_ptr[33]),
        .R(reset));
  FDRE \g_slot[2].own_reg[4] 
       (.C(clk),
        .CE(\g_slot[0].own [13]),
        .D(\slot_nxt[2] [4]),
        .Q(obs_ptr[34]),
        .R(reset));
  FDRE \g_slot[2].own_reg[5] 
       (.C(clk),
        .CE(\g_slot[0].own [13]),
        .D(\slot_nxt[2] [5]),
        .Q(obs_ptr[35]),
        .R(reset));
  FDRE \g_slot[2].own_reg[6] 
       (.C(clk),
        .CE(\g_slot[0].own [13]),
        .D(\slot_nxt[2] [6]),
        .Q(obs_defect[11]),
        .R(reset));
  FDSE \g_slot[2].own_reg[7] 
       (.C(clk),
        .CE(\g_slot[0].own [13]),
        .D(\slot_nxt[2] [7]),
        .Q(obs_whole[11]),
        .S(reset));
  FDRE \g_slot[2].own_reg[8] 
       (.C(clk),
        .CE(\g_slot[0].own [13]),
        .D(\slot_nxt[2] [8]),
        .Q(obs_active[11]),
        .R(reset));
  FDSE \g_slot[2].own_reg[9] 
       (.C(clk),
        .CE(\g_slot[0].own [13]),
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
       (.ab_active(\g_slot[2].pe_i_i_6_n_0 ),
        .ab_cid({\g_slot[2].pe_i_i_1_n_0 ,\g_slot[2].pe_i_i_2_n_0 ,\g_slot[2].pe_i_i_3_n_0 ,\g_slot[2].pe_i_i_4_n_0 ,\g_slot[2].pe_i_i_5_n_0 }),
        .ab_defect(\g_slot[2].pe_i_i_8_n_0 ),
        .ab_ptr({\g_slot[2].pe_i_i_9_n_0 ,\g_slot[2].pe_i_i_10_n_0 ,\g_slot[2].pe_i_i_11_n_0 }),
        .ab_whole(\g_slot[2].pe_i_i_7_n_0 ),
        .clk(1'b0),
        .e_grown({\g_slot[2].e_grown ,\g_slot[2].pe_i_i_14_n_0 ,\g_slot[2].e_grown03_in }),
        .m_pass(m_pass_w),
        .nb_active({\g_slot[2].pe_i_i_30_n_0 ,\g_slot[2].pe_i_i_31_n_0 ,p_1_in,p_4_in}),
        .nb_cid(\g_slot[2].nb_cid ),
        .nb_grown(\g_slot[2].nb_grown ),
        .nb_push({\g_slot[2].nb_push [3:2],\g_eslot[2].vmir ,\g_slot[2].nb_push [0]}),
        .nb_valid({qa2,phase,1'b1,1'b1}),
        .o_busy_c(\NLW_g_slot[2].pe_i_o_busy_c_UNCONNECTED ),
        .o_pulse(\NLW_g_slot[2].pe_i_o_pulse_UNCONNECTED ),
        .o_push(\NLW_g_slot[2].pe_i_o_push_UNCONNECTED [3:0]),
        .p_has_above(1'b0),
        .p_id({1'b0,1'b0,1'b0,1'b1,1'b1}),
        .p_is_bnd(1'b0),
        .p_is_bot(1'b0),
        .p_is_syn(1'b0),
        .p_is_top(1'b0),
        .reset(1'b0),
        .st_in({\g_slot[2].pe_i_i_40_n_0 ,\g_slot[1].nb_cid [9:5],\g_slot[1].pe_i_i_33_n_0 ,p_0_in102_in,\g_slot[2].pe_i_i_42_n_0 ,p_0_in7_in,\g_slot[1].nb_grown [1],\g_slot[2].pe_i_i_46_n_0 ,1'b0}),
        .st_out(\slot_nxt[2] ),
        .stage(stage_reg),
        .syn_bit(\syn_buf_reg_n_0_[1] ),
        .zzz_never_used(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair261" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \g_slot[2].pe_i_i_1 
       (.I0(obs_cid[49]),
        .I1(\phase_reg[0]_rep_n_0 ),
        .O(\g_slot[2].pe_i_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair219" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \g_slot[2].pe_i_i_10 
       (.I0(obs_ptr[28]),
        .I1(\phase_reg[0]_rep__0_n_0 ),
        .O(\g_slot[2].pe_i_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair152" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \g_slot[2].pe_i_i_11 
       (.I0(obs_ptr[27]),
        .I1(phase),
        .O(\g_slot[2].pe_i_i_11_n_0 ));
  LUT5 #(
    .INIT(32'h20202F20)) 
    \g_slot[2].pe_i_i_12 
       (.I0(\g_slot[2].g_dir[3].nsrc_mux [16]),
        .I1(\g_slot[2].g_dir[3].nsrc_mux [15]),
        .I2(\phase_reg[0]_rep_n_0 ),
        .I3(obs_growth[25]),
        .I4(obs_growth[24]),
        .O(\g_slot[2].e_grown [3]));
  LUT5 #(
    .INIT(32'h20202F20)) 
    \g_slot[2].pe_i_i_13 
       (.I0(\g_eslot[9].eomir_reg_n_0_[1] ),
        .I1(\g_eslot[9].eomir_reg_n_0_[0] ),
        .I2(\phase_reg[0]_rep_n_0 ),
        .I3(obs_unrooted[11]),
        .I4(obs_busy[11]),
        .O(\g_slot[2].e_grown [2]));
  LUT5 #(
    .INIT(32'h20202F20)) 
    \g_slot[2].pe_i_i_14 
       (.I0(obs_growth[9]),
        .I1(obs_growth[8]),
        .I2(\phase_reg[0]_rep_n_0 ),
        .I3(obs_growth[23]),
        .I4(obs_growth[22]),
        .O(\g_slot[2].pe_i_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair261" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \g_slot[2].pe_i_i_15 
       (.I0(\g_slot[2].g_dir[3].nsrc_mux [28]),
        .I1(\phase_reg[0]_rep_n_0 ),
        .I2(obs_cid[49]),
        .O(\g_slot[2].nb_cid [19]));
  (* SOFT_HLUTNM = "soft_lutpair262" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \g_slot[2].pe_i_i_16 
       (.I0(\g_slot[2].g_dir[3].nsrc_mux [27]),
        .I1(\phase_reg[0]_rep_n_0 ),
        .I2(obs_cid[48]),
        .O(\g_slot[2].nb_cid [18]));
  (* SOFT_HLUTNM = "soft_lutpair263" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \g_slot[2].pe_i_i_17 
       (.I0(\g_slot[2].g_dir[3].nsrc_mux [26]),
        .I1(\phase_reg[0]_rep_n_0 ),
        .I2(obs_cid[47]),
        .O(\g_slot[2].nb_cid [17]));
  (* SOFT_HLUTNM = "soft_lutpair264" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \g_slot[2].pe_i_i_18 
       (.I0(\g_slot[2].g_dir[3].nsrc_mux [25]),
        .I1(\phase_reg[0]_rep_n_0 ),
        .I2(obs_cid[46]),
        .O(\g_slot[2].nb_cid [16]));
  (* SOFT_HLUTNM = "soft_lutpair265" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \g_slot[2].pe_i_i_19 
       (.I0(\g_slot[2].g_dir[3].nsrc_mux [24]),
        .I1(\phase_reg[0]_rep_n_0 ),
        .I2(obs_cid[45]),
        .O(\g_slot[2].nb_cid [15]));
  (* SOFT_HLUTNM = "soft_lutpair262" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \g_slot[2].pe_i_i_2 
       (.I0(obs_cid[48]),
        .I1(\phase_reg[0]_rep_n_0 ),
        .O(\g_slot[2].pe_i_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair255" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \g_slot[2].pe_i_i_20 
       (.I0(\g_slot[2].g_dir[2].nsrc_mux [28]),
        .I1(\phase_reg[0]_rep_n_0 ),
        .I2(obs_cid[59]),
        .O(\g_slot[2].nb_cid [14]));
  (* SOFT_HLUTNM = "soft_lutpair256" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \g_slot[2].pe_i_i_21 
       (.I0(\g_slot[2].g_dir[2].nsrc_mux [27]),
        .I1(\phase_reg[0]_rep_n_0 ),
        .I2(obs_cid[58]),
        .O(\g_slot[2].nb_cid [13]));
  (* SOFT_HLUTNM = "soft_lutpair257" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \g_slot[2].pe_i_i_22 
       (.I0(\g_slot[2].g_dir[2].nsrc_mux [26]),
        .I1(\phase_reg[0]_rep_n_0 ),
        .I2(obs_cid[57]),
        .O(\g_slot[2].nb_cid [12]));
  (* SOFT_HLUTNM = "soft_lutpair258" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \g_slot[2].pe_i_i_23 
       (.I0(\g_slot[2].g_dir[2].nsrc_mux [25]),
        .I1(\phase_reg[0]_rep_n_0 ),
        .I2(obs_cid[56]),
        .O(\g_slot[2].nb_cid [11]));
  (* SOFT_HLUTNM = "soft_lutpair259" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \g_slot[2].pe_i_i_24 
       (.I0(\g_slot[2].g_dir[2].nsrc_mux [24]),
        .I1(\phase_reg[0]_rep_n_0 ),
        .I2(obs_cid[55]),
        .O(\g_slot[2].nb_cid [10]));
  (* SOFT_HLUTNM = "soft_lutpair194" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \g_slot[2].pe_i_i_25 
       (.I0(obs_cid[9]),
        .I1(phase),
        .I2(obs_cid[29]),
        .O(\g_slot[2].nb_cid [9]));
  (* SOFT_HLUTNM = "soft_lutpair195" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \g_slot[2].pe_i_i_26 
       (.I0(obs_cid[8]),
        .I1(phase),
        .I2(obs_cid[28]),
        .O(\g_slot[2].nb_cid [8]));
  (* SOFT_HLUTNM = "soft_lutpair196" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \g_slot[2].pe_i_i_27 
       (.I0(obs_cid[7]),
        .I1(phase),
        .I2(obs_cid[27]),
        .O(\g_slot[2].nb_cid [7]));
  (* SOFT_HLUTNM = "soft_lutpair197" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \g_slot[2].pe_i_i_28 
       (.I0(obs_cid[6]),
        .I1(phase),
        .I2(obs_cid[26]),
        .O(\g_slot[2].nb_cid [6]));
  (* SOFT_HLUTNM = "soft_lutpair198" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \g_slot[2].pe_i_i_29 
       (.I0(obs_cid[5]),
        .I1(phase),
        .I2(obs_cid[25]),
        .O(\g_slot[2].nb_cid [5]));
  (* SOFT_HLUTNM = "soft_lutpair263" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \g_slot[2].pe_i_i_3 
       (.I0(obs_cid[47]),
        .I1(\phase_reg[0]_rep_n_0 ),
        .O(\g_slot[2].pe_i_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair222" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \g_slot[2].pe_i_i_30 
       (.I0(\g_slot[2].g_dir[3].nsrc_mux [23]),
        .I1(\phase_reg[0]_rep__0_n_0 ),
        .I2(obs_active[9]),
        .O(\g_slot[2].pe_i_i_30_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair213" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \g_slot[2].pe_i_i_31 
       (.I0(\g_slot[2].g_dir[2].nsrc_mux [23]),
        .I1(\phase_reg[0]_rep__0_n_0 ),
        .I2(obs_active[11]),
        .O(\g_slot[2].pe_i_i_31_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair199" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \g_slot[2].pe_i_i_32 
       (.I0(obs_active[1]),
        .I1(phase),
        .I2(obs_active[5]),
        .O(p_1_in));
  (* SOFT_HLUTNM = "soft_lutpair266" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \g_slot[2].pe_i_i_33 
       (.I0(\g_slot[2].g_dir[3].nsrc_mux [17]),
        .I1(phase),
        .I2(obs_grown[9]),
        .O(\g_slot[2].nb_grown [3]));
  (* SOFT_HLUTNM = "soft_lutpair260" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \g_slot[2].pe_i_i_34 
       (.I0(\g_slot[2].g_dir[2].nsrc_mux [17]),
        .I1(phase),
        .I2(obs_grown[11]),
        .O(\g_slot[2].nb_grown [2]));
  (* SOFT_HLUTNM = "soft_lutpair205" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \g_slot[2].pe_i_i_35 
       (.I0(obs_grown[1]),
        .I1(\phase_reg[0]_rep_n_0 ),
        .I2(obs_grown[5]),
        .O(\g_slot[2].nb_grown [1]));
  (* SOFT_HLUTNM = "soft_lutpair151" *) 
  LUT5 #(
    .INIT(32'h00080000)) 
    \g_slot[2].pe_i_i_36 
       (.I0(obs_ptr[28]),
        .I1(\g_slot[2].g_dir[3].nsrc_mux [14]),
        .I2(obs_ptr[29]),
        .I3(\phase_reg[0]_rep__0_n_0 ),
        .I4(obs_ptr[27]),
        .O(\g_slot[2].nb_push [3]));
  LUT5 #(
    .INIT(32'h04000000)) 
    \g_slot[2].pe_i_i_37 
       (.I0(\g_slot[2].g_dir[2].nsrc_mux [18]),
        .I1(\g_slot[2].g_dir[2].nsrc_mux [20]),
        .I2(\g_slot[2].g_dir[2].nsrc_mux [19]),
        .I3(\phase_reg[0]_rep__0_n_0 ),
        .I4(\g_slot[2].g_dir[2].nsrc_mux [29]),
        .O(\g_slot[2].nb_push [2]));
  LUT6 #(
    .INIT(64'hFFFFFFFF02000000)) 
    \g_slot[2].pe_i_i_38 
       (.I0(bview_585),
        .I1(obs_ptr[5]),
        .I2(obs_ptr[4]),
        .I3(obs_ptr[3]),
        .I4(phase),
        .I5(\g_slot[2].pe_i_i_47_n_0 ),
        .O(\g_eslot[2].vmir ));
  LUT6 #(
    .INIT(64'h202A000A20200000)) 
    \g_slot[2].pe_i_i_39 
       (.I0(\g_slot[0].pe_i_i_39_n_0 ),
        .I1(obs_ptr[18]),
        .I2(phase),
        .I3(obs_ptr[30]),
        .I4(obs_ptr[19]),
        .I5(obs_ptr[31]),
        .O(\g_slot[2].nb_push [0]));
  (* SOFT_HLUTNM = "soft_lutpair264" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \g_slot[2].pe_i_i_4 
       (.I0(obs_cid[46]),
        .I1(\phase_reg[0]_rep_n_0 ),
        .O(\g_slot[2].pe_i_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair180" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \g_slot[2].pe_i_i_40 
       (.I0(\g_slot[6].g_dir[3].nsrc_mux ),
        .I1(phase),
        .I2(\g_slot[2].g_dir[2].nsrc_mux [14]),
        .O(\g_slot[2].pe_i_i_40_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair214" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \g_slot[2].pe_i_i_41 
       (.I0(obs_whole[7]),
        .I1(\phase_reg[0]_rep_n_0 ),
        .I2(obs_whole[11]),
        .O(p_0_in102_in));
  (* SOFT_HLUTNM = "soft_lutpair213" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \g_slot[2].pe_i_i_42 
       (.I0(obs_defect[7]),
        .I1(\phase_reg[0]_rep__0_n_0 ),
        .I2(obs_defect[11]),
        .O(\g_slot[2].pe_i_i_42_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair149" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \g_slot[2].pe_i_i_43 
       (.I0(obs_ptr[35]),
        .I1(phase),
        .I2(obs_ptr[23]),
        .O(p_0_in7_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair179" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \g_slot[2].pe_i_i_44 
       (.I0(obs_ptr[22]),
        .I1(phase),
        .I2(obs_ptr[34]),
        .O(p_0_in7_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair178" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \g_slot[2].pe_i_i_45 
       (.I0(obs_ptr[21]),
        .I1(phase),
        .I2(obs_ptr[33]),
        .O(p_0_in7_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair216" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \g_slot[2].pe_i_i_46 
       (.I0(obs_unrooted[7]),
        .I1(\phase_reg[0]_rep_n_0 ),
        .I2(obs_unrooted[11]),
        .O(\g_slot[2].pe_i_i_46_n_0 ));
  LUT5 #(
    .INIT(32'h00040000)) 
    \g_slot[2].pe_i_i_47 
       (.I0(phase),
        .I1(obs_ptr[15]),
        .I2(obs_ptr[16]),
        .I3(obs_ptr[17]),
        .I4(\g_slot[3].g_dir[1].nsrc_mux [14]),
        .O(\g_slot[2].pe_i_i_47_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair265" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \g_slot[2].pe_i_i_5 
       (.I0(obs_cid[45]),
        .I1(\phase_reg[0]_rep_n_0 ),
        .O(\g_slot[2].pe_i_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair292" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \g_slot[2].pe_i_i_6 
       (.I0(obs_active[9]),
        .I1(\phase_reg[0]_rep_n_0 ),
        .O(\g_slot[2].pe_i_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair239" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \g_slot[2].pe_i_i_7 
       (.I0(obs_whole[9]),
        .I1(\phase_reg[0]_rep_n_0 ),
        .O(\g_slot[2].pe_i_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair277" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \g_slot[2].pe_i_i_8 
       (.I0(obs_defect[9]),
        .I1(\phase_reg[0]_rep__0_n_0 ),
        .O(\g_slot[2].pe_i_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair294" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \g_slot[2].pe_i_i_9 
       (.I0(obs_ptr[29]),
        .I1(phase),
        .O(\g_slot[2].pe_i_i_9_n_0 ));
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
  FDRE \g_slot[3].omir_reg[23] 
       (.C(clk),
        .CE(\g_slot[0].own [28]),
        .D(obs_active[1]),
        .Q(\g_slot[3].g_dir[1].nsrc_mux [23]),
        .R(reset));
  FDRE \g_slot[3].own_reg[0] 
       (.C(clk),
        .CE(\g_slot[0].own [13]),
        .D(\slot_nxt[3] [0]),
        .Q(obs_busy[5]),
        .R(reset));
  FDRE \g_slot[3].own_reg[10] 
       (.C(clk),
        .CE(\g_slot[0].own [13]),
        .D(\slot_nxt[3] [10]),
        .Q(obs_cid[26]),
        .R(reset));
  FDSE \g_slot[3].own_reg[11] 
       (.C(clk),
        .CE(\g_slot[0].own [13]),
        .D(\slot_nxt[3] [11]),
        .Q(obs_cid[27]),
        .S(reset));
  FDRE \g_slot[3].own_reg[12] 
       (.C(clk),
        .CE(\g_slot[0].own [13]),
        .D(\slot_nxt[3] [12]),
        .Q(obs_cid[28]),
        .R(reset));
  FDRE \g_slot[3].own_reg[13] 
       (.C(clk),
        .CE(\g_slot[0].own [13]),
        .D(\slot_nxt[3] [13]),
        .Q(obs_cid[29]),
        .R(reset));
  FDRE \g_slot[3].own_reg[14] 
       (.C(clk),
        .CE(\g_slot[0].own [13]),
        .D(\slot_nxt[3] [14]),
        .Q(\g_slot[3].g_dir[1].nsrc_mux [14]),
        .R(reset));
  FDRE \g_slot[3].own_reg[15] 
       (.C(clk),
        .CE(\g_slot[0].own [28]),
        .D(\slot_nxt[3] [0]),
        .Q(obs_busy[1]),
        .R(reset));
  FDRE \g_slot[3].own_reg[16] 
       (.C(clk),
        .CE(\g_slot[0].own [28]),
        .D(\slot_nxt[3] [1]),
        .Q(obs_unrooted[1]),
        .R(reset));
  FDRE \g_slot[3].own_reg[17] 
       (.C(clk),
        .CE(\g_slot[0].own [28]),
        .D(\slot_nxt[3] [2]),
        .Q(obs_grown[1]),
        .R(reset));
  FDRE \g_slot[3].own_reg[18] 
       (.C(clk),
        .CE(\g_slot[0].own [28]),
        .D(\slot_nxt[3] [3]),
        .Q(obs_ptr[3]),
        .R(reset));
  FDRE \g_slot[3].own_reg[19] 
       (.C(clk),
        .CE(\g_slot[0].own [28]),
        .D(\slot_nxt[3] [4]),
        .Q(obs_ptr[4]),
        .R(reset));
  FDRE \g_slot[3].own_reg[1] 
       (.C(clk),
        .CE(\g_slot[0].own [13]),
        .D(\slot_nxt[3] [1]),
        .Q(obs_unrooted[5]),
        .R(reset));
  FDRE \g_slot[3].own_reg[20] 
       (.C(clk),
        .CE(\g_slot[0].own [28]),
        .D(\slot_nxt[3] [5]),
        .Q(obs_ptr[5]),
        .R(reset));
  FDRE \g_slot[3].own_reg[21] 
       (.C(clk),
        .CE(\g_slot[0].own [28]),
        .D(\slot_nxt[3] [6]),
        .Q(obs_defect[1]),
        .R(reset));
  FDSE \g_slot[3].own_reg[22] 
       (.C(clk),
        .CE(\g_slot[0].own [28]),
        .D(\slot_nxt[3] [7]),
        .Q(obs_whole[1]),
        .S(reset));
  FDRE \g_slot[3].own_reg[23] 
       (.C(clk),
        .CE(\g_slot[0].own [28]),
        .D(\slot_nxt[3] [8]),
        .Q(obs_active[1]),
        .R(reset));
  FDSE \g_slot[3].own_reg[24] 
       (.C(clk),
        .CE(\g_slot[0].own [28]),
        .D(\slot_nxt[3] [9]),
        .Q(obs_cid[5]),
        .S(reset));
  FDRE \g_slot[3].own_reg[25] 
       (.C(clk),
        .CE(\g_slot[0].own [28]),
        .D(\slot_nxt[3] [10]),
        .Q(obs_cid[6]),
        .R(reset));
  FDRE \g_slot[3].own_reg[26] 
       (.C(clk),
        .CE(\g_slot[0].own [28]),
        .D(\slot_nxt[3] [11]),
        .Q(obs_cid[7]),
        .R(reset));
  FDRE \g_slot[3].own_reg[27] 
       (.C(clk),
        .CE(\g_slot[0].own [28]),
        .D(\slot_nxt[3] [12]),
        .Q(obs_cid[8]),
        .R(reset));
  FDRE \g_slot[3].own_reg[28] 
       (.C(clk),
        .CE(\g_slot[0].own [28]),
        .D(\slot_nxt[3] [13]),
        .Q(obs_cid[9]),
        .R(reset));
  FDRE \g_slot[3].own_reg[29] 
       (.C(clk),
        .CE(\g_slot[0].own [28]),
        .D(\slot_nxt[3] [14]),
        .Q(bview_585),
        .R(reset));
  FDRE \g_slot[3].own_reg[2] 
       (.C(clk),
        .CE(\g_slot[0].own [13]),
        .D(\slot_nxt[3] [2]),
        .Q(obs_grown[5]),
        .R(reset));
  FDRE \g_slot[3].own_reg[3] 
       (.C(clk),
        .CE(\g_slot[0].own [13]),
        .D(\slot_nxt[3] [3]),
        .Q(obs_ptr[15]),
        .R(reset));
  FDRE \g_slot[3].own_reg[4] 
       (.C(clk),
        .CE(\g_slot[0].own [13]),
        .D(\slot_nxt[3] [4]),
        .Q(obs_ptr[16]),
        .R(reset));
  FDRE \g_slot[3].own_reg[5] 
       (.C(clk),
        .CE(\g_slot[0].own [13]),
        .D(\slot_nxt[3] [5]),
        .Q(obs_ptr[17]),
        .R(reset));
  FDRE \g_slot[3].own_reg[6] 
       (.C(clk),
        .CE(\g_slot[0].own [13]),
        .D(\slot_nxt[3] [6]),
        .Q(obs_defect[5]),
        .R(reset));
  FDSE \g_slot[3].own_reg[7] 
       (.C(clk),
        .CE(\g_slot[0].own [13]),
        .D(\slot_nxt[3] [7]),
        .Q(obs_whole[5]),
        .S(reset));
  FDRE \g_slot[3].own_reg[8] 
       (.C(clk),
        .CE(\g_slot[0].own [13]),
        .D(\slot_nxt[3] [8]),
        .Q(obs_active[5]),
        .R(reset));
  FDSE \g_slot[3].own_reg[9] 
       (.C(clk),
        .CE(\g_slot[0].own [13]),
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
  snowflake_pe__4 \g_slot[3].pe_i 
       (.ab_active(\g_slot[3].pe_i_i_6_n_0 ),
        .ab_cid({\g_slot[3].pe_i_i_1_n_0 ,\g_slot[3].pe_i_i_2_n_0 ,\g_slot[3].pe_i_i_3_n_0 ,\g_slot[3].pe_i_i_4_n_0 ,\g_slot[3].pe_i_i_5_n_0 }),
        .ab_defect(\g_slot[3].pe_i_i_8_n_0 ),
        .ab_ptr({\g_slot[3].pe_i_i_9_n_0 ,\g_slot[3].pe_i_i_10_n_0 ,\g_slot[3].pe_i_i_11_n_0 }),
        .ab_whole(\g_slot[3].pe_i_i_7_n_0 ),
        .clk(1'b0),
        .e_grown({1'b0,1'b0,1'b0,\g_slot[2].pe_i_i_14_n_0 }),
        .m_pass(m_pass_w),
        .nb_active({1'b0,\g_slot[3].pe_i_i_12_n_0 ,1'b0,\g_slot[1].pe_i_i_33_n_0 }),
        .nb_cid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,\g_slot[1].nb_cid [9:5]}),
        .nb_grown({1'b0,1'b0,1'b0,\g_slot[1].nb_grown [1]}),
        .nb_push({1'b0,1'b0,1'b0,\g_slot[3].nb_push0 }),
        .nb_valid({1'b0,1'b0,1'b0,1'b1}),
        .o_busy_c(\NLW_g_slot[3].pe_i_o_busy_c_UNCONNECTED ),
        .o_pulse(\NLW_g_slot[3].pe_i_o_pulse_UNCONNECTED ),
        .o_push(\NLW_g_slot[3].pe_i_o_push_UNCONNECTED [3:0]),
        .p_has_above(1'b0),
        .p_id({1'b0,1'b0,1'b0,1'b0,1'b1}),
        .p_is_bnd(1'b1),
        .p_is_bot(qa2),
        .p_is_syn(1'b0),
        .p_is_top(1'b0),
        .reset(1'b0),
        .st_in({\g_slot[3].pe_i_i_14_n_0 ,\g_slot[2].nb_cid [9:5],p_1_in,p_0_in100_in,\g_slot[3].pe_i_i_16_n_0 ,p_0_in15_in,\g_slot[2].nb_grown [1],\g_slot[3].pe_i_i_20_n_0 ,1'b0}),
        .st_out(\slot_nxt[3] ),
        .stage(stage_reg),
        .syn_bit(1'b0),
        .zzz_never_used(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair225" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \g_slot[3].pe_i_i_1 
       (.I0(obs_cid[19]),
        .I1(\phase_reg[0]_rep_n_0 ),
        .O(\g_slot[3].pe_i_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair258" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \g_slot[3].pe_i_i_10 
       (.I0(obs_ptr[10]),
        .I1(\phase_reg[0]_rep_n_0 ),
        .O(\g_slot[3].pe_i_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair220" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \g_slot[3].pe_i_i_11 
       (.I0(obs_ptr[9]),
        .I1(\phase_reg[0]_rep_n_0 ),
        .O(\g_slot[3].pe_i_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair254" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \g_slot[3].pe_i_i_12 
       (.I0(\g_slot[3].g_dir[1].nsrc_mux [23]),
        .I1(\phase_reg[0]_rep_n_0 ),
        .I2(obs_active[5]),
        .O(\g_slot[3].pe_i_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h202A000A20200000)) 
    \g_slot[3].pe_i_i_13 
       (.I0(\g_slot[1].pe_i_i_48_n_0 ),
        .I1(obs_ptr[21]),
        .I2(phase),
        .I3(obs_ptr[33]),
        .I4(obs_ptr[22]),
        .I5(obs_ptr[34]),
        .O(\g_slot[3].nb_push0 ));
  (* SOFT_HLUTNM = "soft_lutpair192" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \g_slot[3].pe_i_i_14 
       (.I0(bview_585),
        .I1(phase),
        .I2(\g_slot[3].g_dir[1].nsrc_mux [14]),
        .O(\g_slot[3].pe_i_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair200" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \g_slot[3].pe_i_i_15 
       (.I0(obs_whole[1]),
        .I1(\phase_reg[0]_rep_n_0 ),
        .I2(obs_whole[5]),
        .O(p_0_in100_in));
  (* SOFT_HLUTNM = "soft_lutpair201" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \g_slot[3].pe_i_i_16 
       (.I0(obs_defect[1]),
        .I1(\phase_reg[0]_rep__0_n_0 ),
        .I2(obs_defect[5]),
        .O(\g_slot[3].pe_i_i_16_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair202" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \g_slot[3].pe_i_i_17 
       (.I0(obs_ptr[5]),
        .I1(\phase_reg[0]_rep_n_0 ),
        .I2(obs_ptr[17]),
        .O(p_0_in15_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair203" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \g_slot[3].pe_i_i_18 
       (.I0(obs_ptr[4]),
        .I1(\phase_reg[0]_rep_n_0 ),
        .I2(obs_ptr[16]),
        .O(p_0_in15_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair204" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \g_slot[3].pe_i_i_19 
       (.I0(obs_ptr[3]),
        .I1(\phase_reg[0]_rep_n_0 ),
        .I2(obs_ptr[15]),
        .O(p_0_in15_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair229" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \g_slot[3].pe_i_i_2 
       (.I0(obs_cid[18]),
        .I1(\phase_reg[0]_rep_n_0 ),
        .O(\g_slot[3].pe_i_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair205" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \g_slot[3].pe_i_i_20 
       (.I0(obs_unrooted[1]),
        .I1(\phase_reg[0]_rep_n_0 ),
        .I2(obs_unrooted[5]),
        .O(\g_slot[3].pe_i_i_20_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair231" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \g_slot[3].pe_i_i_3 
       (.I0(obs_cid[17]),
        .I1(\phase_reg[0]_rep_n_0 ),
        .O(\g_slot[3].pe_i_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair232" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \g_slot[3].pe_i_i_4 
       (.I0(obs_cid[16]),
        .I1(\phase_reg[0]_rep_n_0 ),
        .O(\g_slot[3].pe_i_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair254" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \g_slot[3].pe_i_i_5 
       (.I0(obs_cid[15]),
        .I1(\phase_reg[0]_rep_n_0 ),
        .O(\g_slot[3].pe_i_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair256" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \g_slot[3].pe_i_i_6 
       (.I0(obs_active[3]),
        .I1(\phase_reg[0]_rep_n_0 ),
        .O(\g_slot[3].pe_i_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair303" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \g_slot[3].pe_i_i_7 
       (.I0(obs_whole[3]),
        .I1(\phase_reg[0]_rep__0_n_0 ),
        .O(\g_slot[3].pe_i_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair228" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \g_slot[3].pe_i_i_8 
       (.I0(obs_defect[3]),
        .I1(\phase_reg[0]_rep__0_n_0 ),
        .O(\g_slot[3].pe_i_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair257" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \g_slot[3].pe_i_i_9 
       (.I0(obs_ptr[11]),
        .I1(\phase_reg[0]_rep_n_0 ),
        .O(\g_slot[3].pe_i_i_9_n_0 ));
  FDRE \g_slot[4].bshA_reg[4][0] 
       (.C(clk),
        .CE(bshA[0]),
        .D(qnow082_out),
        .Q(\g_slot[4].bshA_reg[4] ),
        .R(reset));
  (* SOFT_HLUTNM = "soft_lutpair218" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \g_slot[4].bshB[4][0]_i_1 
       (.I0(\slot_nxt[4] [0]),
        .I1(phase),
        .O(qnow082_out));
  FDRE \g_slot[4].bshB_reg[4][0] 
       (.C(clk),
        .CE(bshB[0]),
        .D(qnow082_out),
        .Q(\g_slot[4].bshB_reg[4] ),
        .R(reset));
  FDRE \g_slot[4].own_reg[0] 
       (.C(clk),
        .CE(\g_slot[0].own [13]),
        .D(\slot_nxt[4] [0]),
        .Q(obs_busy[2]),
        .R(reset));
  FDSE \g_slot[4].own_reg[10] 
       (.C(clk),
        .CE(\g_slot[0].own [13]),
        .D(\slot_nxt[4] [10]),
        .Q(obs_cid[11]),
        .S(reset));
  FDRE \g_slot[4].own_reg[11] 
       (.C(clk),
        .CE(\g_slot[0].own [13]),
        .D(\slot_nxt[4] [11]),
        .Q(obs_cid[12]),
        .R(reset));
  FDRE \g_slot[4].own_reg[12] 
       (.C(clk),
        .CE(\g_slot[0].own [13]),
        .D(\slot_nxt[4] [12]),
        .Q(obs_cid[13]),
        .R(reset));
  FDRE \g_slot[4].own_reg[13] 
       (.C(clk),
        .CE(\g_slot[0].own [13]),
        .D(\slot_nxt[4] [13]),
        .Q(obs_cid[14]),
        .R(reset));
  FDRE \g_slot[4].own_reg[14] 
       (.C(clk),
        .CE(\g_slot[0].own [13]),
        .D(\slot_nxt[4] [14]),
        .Q(\g_slot[4].g_dir[0].nsrc_mux ),
        .R(reset));
  FDRE \g_slot[4].own_reg[1] 
       (.C(clk),
        .CE(\g_slot[0].own [13]),
        .D(\slot_nxt[4] [1]),
        .Q(obs_unrooted[2]),
        .R(reset));
  FDRE \g_slot[4].own_reg[2] 
       (.C(clk),
        .CE(\g_slot[0].own [13]),
        .D(\slot_nxt[4] [2]),
        .Q(obs_grown[2]),
        .R(reset));
  FDRE \g_slot[4].own_reg[3] 
       (.C(clk),
        .CE(\g_slot[0].own [13]),
        .D(\slot_nxt[4] [3]),
        .Q(obs_ptr[6]),
        .R(reset));
  FDRE \g_slot[4].own_reg[4] 
       (.C(clk),
        .CE(\g_slot[0].own [13]),
        .D(\slot_nxt[4] [4]),
        .Q(obs_ptr[7]),
        .R(reset));
  FDRE \g_slot[4].own_reg[5] 
       (.C(clk),
        .CE(\g_slot[0].own [13]),
        .D(\slot_nxt[4] [5]),
        .Q(obs_ptr[8]),
        .R(reset));
  FDRE \g_slot[4].own_reg[6] 
       (.C(clk),
        .CE(\g_slot[0].own [13]),
        .D(\slot_nxt[4] [6]),
        .Q(obs_defect[2]),
        .R(reset));
  FDSE \g_slot[4].own_reg[7] 
       (.C(clk),
        .CE(\g_slot[0].own [13]),
        .D(\slot_nxt[4] [7]),
        .Q(obs_whole[2]),
        .S(reset));
  FDRE \g_slot[4].own_reg[8] 
       (.C(clk),
        .CE(\g_slot[0].own [13]),
        .D(\slot_nxt[4] [8]),
        .Q(obs_active[2]),
        .R(reset));
  FDRE \g_slot[4].own_reg[9] 
       (.C(clk),
        .CE(\g_slot[0].own [13]),
        .D(\slot_nxt[4] [9]),
        .Q(obs_cid[10]),
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
  snowflake_pe__5 \g_slot[4].pe_i 
       (.ab_active(\g_slot[4].absrc [8]),
        .ab_cid(\g_slot[4].absrc [13:9]),
        .ab_defect(\g_slot[4].absrc [6]),
        .ab_ptr(\g_slot[4].absrc [5:3]),
        .ab_whole(\g_slot[4].absrc [7]),
        .clk(1'b0),
        .e_grown({1'b0,1'b0,\g_slot[5].e_grown [0],1'b0}),
        .m_pass(m_pass_w),
        .nb_active({1'b0,1'b0,\g_slot[6].nb_active [0],1'b0}),
        .nb_cid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,\g_slot[6].nb_cid [4:0],1'b0,1'b0,1'b0,1'b0,1'b0}),
        .nb_grown({1'b0,1'b0,\g_slot[6].nb_grown [0],\g_slot[5].nb_grown [0]}),
        .nb_push({1'b0,1'b0,\g_slot[4].nb_push0 ,1'b0}),
        .nb_valid({1'b0,1'b0,qa2,1'b0}),
        .o_busy_c(\NLW_g_slot[4].pe_i_o_busy_c_UNCONNECTED ),
        .o_pulse(\NLW_g_slot[4].pe_i_o_pulse_UNCONNECTED ),
        .o_push(\NLW_g_slot[4].pe_i_o_push_UNCONNECTED [3:0]),
        .p_has_above(1'b0),
        .p_id({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .p_is_bnd(1'b0),
        .p_is_bot(1'b0),
        .p_is_syn(1'b0),
        .p_is_top(1'b0),
        .reset(1'b0),
        .st_in({\g_slot[4].pe_i_i_16_n_0 ,\g_slot[5].nb_cid [4:0],\g_slot[5].nb_active [0],\g_slot[0].pe_i_i_7_n_0 ,\g_slot[0].pe_i_i_8_n_0 ,\g_slot[0].pe_i_i_9_n_0 ,\g_slot[0].pe_i_i_10_n_0 ,\g_slot[0].pe_i_i_11_n_0 ,1'b0,\g_slot[4].pe_i_i_17_n_0 ,1'b0}),
        .st_out(\slot_nxt[4] ),
        .stage(stage_reg),
        .syn_bit(1'b0),
        .zzz_never_used(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair181" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \g_slot[4].pe_i_i_1 
       (.I0(obs_cid[4]),
        .I1(\phase_reg[0]_rep_n_0 ),
        .O(\g_slot[4].absrc [13]));
  (* SOFT_HLUTNM = "soft_lutpair190" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \g_slot[4].pe_i_i_10 
       (.I0(obs_ptr[1]),
        .I1(\phase_reg[0]_rep__0_n_0 ),
        .O(\g_slot[4].absrc [4]));
  (* SOFT_HLUTNM = "soft_lutpair191" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \g_slot[4].pe_i_i_11 
       (.I0(obs_ptr[0]),
        .I1(\phase_reg[0]_rep__0_n_0 ),
        .O(\g_slot[4].absrc [3]));
  (* SOFT_HLUTNM = "soft_lutpair232" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \g_slot[4].pe_i_i_12 
       (.I0(\phase_reg[0]_rep_n_0 ),
        .I1(obs_growth[3]),
        .I2(obs_growth[2]),
        .O(\g_slot[5].e_grown [0]));
  (* SOFT_HLUTNM = "soft_lutpair296" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \g_slot[4].pe_i_i_13 
       (.I0(obs_grown[8]),
        .I1(\phase_reg[0]_rep_n_0 ),
        .O(\g_slot[6].nb_grown [0]));
  (* SOFT_HLUTNM = "soft_lutpair301" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \g_slot[4].pe_i_i_14 
       (.I0(obs_grown[2]),
        .I1(\phase_reg[0]_rep_n_0 ),
        .O(\g_slot[5].nb_grown [0]));
  (* SOFT_HLUTNM = "soft_lutpair147" *) 
  LUT5 #(
    .INIT(32'h00020000)) 
    \g_slot[4].pe_i_i_15 
       (.I0(obs_ptr[24]),
        .I1(obs_ptr[25]),
        .I2(obs_ptr[26]),
        .I3(\phase_reg[0]_rep__0_n_0 ),
        .I4(\g_slot[1].g_dir[3].nsrc_mux [14]),
        .O(\g_slot[4].nb_push0 ));
  (* SOFT_HLUTNM = "soft_lutpair294" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \g_slot[4].pe_i_i_16 
       (.I0(\g_slot[4].g_dir[0].nsrc_mux ),
        .I1(phase),
        .O(\g_slot[4].pe_i_i_16_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair304" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \g_slot[4].pe_i_i_17 
       (.I0(obs_unrooted[2]),
        .I1(\phase_reg[0]_rep_n_0 ),
        .O(\g_slot[4].pe_i_i_17_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair182" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \g_slot[4].pe_i_i_2 
       (.I0(obs_cid[3]),
        .I1(\phase_reg[0]_rep_n_0 ),
        .O(\g_slot[4].absrc [12]));
  (* SOFT_HLUTNM = "soft_lutpair183" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \g_slot[4].pe_i_i_3 
       (.I0(obs_cid[2]),
        .I1(\phase_reg[0]_rep_n_0 ),
        .O(\g_slot[4].absrc [11]));
  (* SOFT_HLUTNM = "soft_lutpair184" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \g_slot[4].pe_i_i_4 
       (.I0(obs_cid[1]),
        .I1(\phase_reg[0]_rep_n_0 ),
        .O(\g_slot[4].absrc [10]));
  (* SOFT_HLUTNM = "soft_lutpair185" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \g_slot[4].pe_i_i_5 
       (.I0(obs_cid[0]),
        .I1(\phase_reg[0]_rep_n_0 ),
        .O(\g_slot[4].absrc [9]));
  (* SOFT_HLUTNM = "soft_lutpair186" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \g_slot[4].pe_i_i_6 
       (.I0(obs_active[0]),
        .I1(\phase_reg[0]_rep_n_0 ),
        .O(\g_slot[4].absrc [8]));
  (* SOFT_HLUTNM = "soft_lutpair187" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \g_slot[4].pe_i_i_7 
       (.I0(obs_whole[0]),
        .I1(\phase_reg[0]_rep_n_0 ),
        .O(\g_slot[4].absrc [7]));
  (* SOFT_HLUTNM = "soft_lutpair188" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \g_slot[4].pe_i_i_8 
       (.I0(obs_defect[0]),
        .I1(\phase_reg[0]_rep__0_n_0 ),
        .O(\g_slot[4].absrc [6]));
  (* SOFT_HLUTNM = "soft_lutpair189" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \g_slot[4].pe_i_i_9 
       (.I0(obs_ptr[2]),
        .I1(\phase_reg[0]_rep__0_n_0 ),
        .O(\g_slot[4].absrc [5]));
  FDRE \g_slot[5].bshA_reg[5][0] 
       (.C(clk),
        .CE(bshA[0]),
        .D(qnow083_out),
        .Q(\g_slot[5].bshA_reg[5] ),
        .R(reset));
  (* SOFT_HLUTNM = "soft_lutpair253" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \g_slot[5].bshB[5][0]_i_1 
       (.I0(\slot_nxt[5] [0]),
        .I1(phase),
        .O(qnow083_out));
  FDRE \g_slot[5].bshB_reg[5][0] 
       (.C(clk),
        .CE(bshB[0]),
        .D(qnow083_out),
        .Q(\g_slot[5].bshB_reg[5] ),
        .R(reset));
  FDRE \g_slot[5].omir_reg[10] 
       (.C(clk),
        .CE(\g_slot[0].own [13]),
        .D(obs_cid[41]),
        .Q(\g_slot[1].g_dir[2].nsrc_mux [25]),
        .R(reset));
  FDRE \g_slot[5].omir_reg[11] 
       (.C(clk),
        .CE(\g_slot[0].own [13]),
        .D(obs_cid[42]),
        .Q(\g_slot[1].g_dir[2].nsrc_mux [26]),
        .R(reset));
  FDSE \g_slot[5].omir_reg[12] 
       (.C(clk),
        .CE(\g_slot[0].own [13]),
        .D(obs_cid[43]),
        .Q(\g_slot[1].g_dir[2].nsrc_mux [27]),
        .S(reset));
  FDRE \g_slot[5].omir_reg[13] 
       (.C(clk),
        .CE(\g_slot[0].own [13]),
        .D(obs_cid[44]),
        .Q(\g_slot[1].g_dir[2].nsrc_mux [28]),
        .R(reset));
  FDRE \g_slot[5].omir_reg[14] 
       (.C(clk),
        .CE(\g_slot[0].own [13]),
        .D(\g_slot[1].g_dir[3].nsrc_mux [14]),
        .Q(\g_slot[1].g_dir[2].nsrc_mux [29]),
        .R(reset));
  FDRE \g_slot[5].omir_reg[2] 
       (.C(clk),
        .CE(\g_slot[0].own [13]),
        .D(obs_grown[8]),
        .Q(\g_slot[1].g_dir[2].nsrc_mux [17]),
        .R(reset));
  FDRE \g_slot[5].omir_reg[3] 
       (.C(clk),
        .CE(\g_slot[0].own [13]),
        .D(obs_ptr[24]),
        .Q(\g_slot[1].g_dir[2].nsrc_mux [18]),
        .R(reset));
  FDRE \g_slot[5].omir_reg[4] 
       (.C(clk),
        .CE(\g_slot[0].own [13]),
        .D(obs_ptr[25]),
        .Q(\g_slot[1].g_dir[2].nsrc_mux [19]),
        .R(reset));
  FDRE \g_slot[5].omir_reg[5] 
       (.C(clk),
        .CE(\g_slot[0].own [13]),
        .D(obs_ptr[26]),
        .Q(\g_slot[1].g_dir[2].nsrc_mux [20]),
        .R(reset));
  FDRE \g_slot[5].omir_reg[8] 
       (.C(clk),
        .CE(\g_slot[0].own [13]),
        .D(obs_active[8]),
        .Q(\g_slot[1].g_dir[2].nsrc_mux [23]),
        .R(reset));
  FDRE \g_slot[5].omir_reg[9] 
       (.C(clk),
        .CE(\g_slot[0].own [13]),
        .D(obs_cid[40]),
        .Q(\g_slot[1].g_dir[2].nsrc_mux [24]),
        .R(reset));
  FDRE \g_slot[5].own_reg[0] 
       (.C(clk),
        .CE(\g_slot[0].own [13]),
        .D(\slot_nxt[5] [0]),
        .Q(obs_busy[8]),
        .R(reset));
  FDRE \g_slot[5].own_reg[10] 
       (.C(clk),
        .CE(\g_slot[0].own [13]),
        .D(\slot_nxt[5] [10]),
        .Q(obs_cid[41]),
        .R(reset));
  FDRE \g_slot[5].own_reg[11] 
       (.C(clk),
        .CE(\g_slot[0].own [13]),
        .D(\slot_nxt[5] [11]),
        .Q(obs_cid[42]),
        .R(reset));
  FDSE \g_slot[5].own_reg[12] 
       (.C(clk),
        .CE(\g_slot[0].own [13]),
        .D(\slot_nxt[5] [12]),
        .Q(obs_cid[43]),
        .S(reset));
  FDRE \g_slot[5].own_reg[13] 
       (.C(clk),
        .CE(\g_slot[0].own [13]),
        .D(\slot_nxt[5] [13]),
        .Q(obs_cid[44]),
        .R(reset));
  FDRE \g_slot[5].own_reg[14] 
       (.C(clk),
        .CE(\g_slot[0].own [13]),
        .D(\slot_nxt[5] [14]),
        .Q(\g_slot[1].g_dir[3].nsrc_mux [14]),
        .R(reset));
  FDRE \g_slot[5].own_reg[1] 
       (.C(clk),
        .CE(\g_slot[0].own [13]),
        .D(\slot_nxt[5] [1]),
        .Q(obs_unrooted[8]),
        .R(reset));
  FDRE \g_slot[5].own_reg[2] 
       (.C(clk),
        .CE(\g_slot[0].own [13]),
        .D(\slot_nxt[5] [2]),
        .Q(obs_grown[8]),
        .R(reset));
  FDRE \g_slot[5].own_reg[3] 
       (.C(clk),
        .CE(\g_slot[0].own [13]),
        .D(\slot_nxt[5] [3]),
        .Q(obs_ptr[24]),
        .R(reset));
  FDRE \g_slot[5].own_reg[4] 
       (.C(clk),
        .CE(\g_slot[0].own [13]),
        .D(\slot_nxt[5] [4]),
        .Q(obs_ptr[25]),
        .R(reset));
  FDRE \g_slot[5].own_reg[5] 
       (.C(clk),
        .CE(\g_slot[0].own [13]),
        .D(\slot_nxt[5] [5]),
        .Q(obs_ptr[26]),
        .R(reset));
  FDRE \g_slot[5].own_reg[6] 
       (.C(clk),
        .CE(\g_slot[0].own [13]),
        .D(\slot_nxt[5] [6]),
        .Q(obs_defect[8]),
        .R(reset));
  FDSE \g_slot[5].own_reg[7] 
       (.C(clk),
        .CE(\g_slot[0].own [13]),
        .D(\slot_nxt[5] [7]),
        .Q(obs_whole[8]),
        .S(reset));
  FDRE \g_slot[5].own_reg[8] 
       (.C(clk),
        .CE(\g_slot[0].own [13]),
        .D(\slot_nxt[5] [8]),
        .Q(obs_active[8]),
        .R(reset));
  FDRE \g_slot[5].own_reg[9] 
       (.C(clk),
        .CE(\g_slot[0].own [13]),
        .D(\slot_nxt[5] [9]),
        .Q(obs_cid[40]),
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
  snowflake_pe__6 \g_slot[5].pe_i 
       (.ab_active(1'b0),
        .ab_cid({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ab_defect(\g_slot[5].absrc [6]),
        .ab_ptr(\g_slot[5].absrc [5:3]),
        .ab_whole(\g_slot[5].absrc [7]),
        .clk(1'b0),
        .e_grown({\g_slot[5].e_grown [3:2],\g_slot[6].e_grown [0],\g_slot[5].e_grown [0]}),
        .m_pass(m_pass_w),
        .nb_active({\g_slot[5].nb_active [3:2],\g_slot[2].pe_i_i_6_n_0 ,\g_slot[5].nb_active [0]}),
        .nb_cid({\g_slot[5].nb_cid [19:10],\g_slot[2].pe_i_i_1_n_0 ,\g_slot[2].pe_i_i_2_n_0 ,\g_slot[2].pe_i_i_3_n_0 ,\g_slot[2].pe_i_i_4_n_0 ,\g_slot[2].pe_i_i_5_n_0 ,\g_slot[5].nb_cid [4:0]}),
        .nb_grown({\g_slot[5].nb_grown [3:2],\g_slot[5].pe_i_i_23_n_0 ,\g_slot[5].nb_grown [0]}),
        .nb_push(\g_slot[5].nb_push ),
        .nb_valid({1'b0,qa2,1'b0,1'b0}),
        .o_busy_c(\NLW_g_slot[5].pe_i_o_busy_c_UNCONNECTED ),
        .o_pulse(\NLW_g_slot[5].pe_i_o_pulse_UNCONNECTED ),
        .o_push(\NLW_g_slot[5].pe_i_o_push_UNCONNECTED [3:0]),
        .p_has_above(1'b0),
        .p_id({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .p_is_bnd(1'b0),
        .p_is_bot(1'b0),
        .p_is_syn(1'b0),
        .p_is_top(1'b0),
        .reset(1'b0),
        .st_in({\g_slot[5].pe_i_i_28_n_0 ,\g_slot[6].nb_cid [4:0],\g_slot[6].nb_active [0],\g_slot[1].pe_i_i_8_n_0 ,\g_slot[1].pe_i_i_9_n_0 ,\g_slot[1].pe_i_i_10_n_0 ,\g_slot[1].pe_i_i_11_n_0 ,\g_slot[1].pe_i_i_12_n_0 ,\g_slot[6].nb_grown [0],\g_slot[5].pe_i_i_29_n_0 ,1'b0}),
        .st_out(\slot_nxt[5] ),
        .stage(stage_reg),
        .syn_bit(1'b0),
        .zzz_never_used(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair305" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \g_slot[5].pe_i_i_1 
       (.I0(obs_whole[6]),
        .I1(\phase_reg[0]_rep_n_0 ),
        .O(\g_slot[5].absrc [7]));
  (* SOFT_HLUTNM = "soft_lutpair167" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \g_slot[5].pe_i_i_10 
       (.I0(obs_cid[33]),
        .I1(\phase_reg[0]_rep_n_0 ),
        .O(\g_slot[5].nb_cid [18]));
  (* SOFT_HLUTNM = "soft_lutpair168" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \g_slot[5].pe_i_i_11 
       (.I0(obs_cid[32]),
        .I1(\phase_reg[0]_rep_n_0 ),
        .O(\g_slot[5].nb_cid [17]));
  (* SOFT_HLUTNM = "soft_lutpair169" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \g_slot[5].pe_i_i_12 
       (.I0(obs_cid[31]),
        .I1(\phase_reg[0]_rep_n_0 ),
        .O(\g_slot[5].nb_cid [16]));
  (* SOFT_HLUTNM = "soft_lutpair170" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \g_slot[5].pe_i_i_13 
       (.I0(obs_cid[30]),
        .I1(\phase_reg[0]_rep_n_0 ),
        .O(\g_slot[5].nb_cid [15]));
  (* SOFT_HLUTNM = "soft_lutpair242" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \g_slot[5].pe_i_i_14 
       (.I0(obs_cid[54]),
        .I1(\phase_reg[0]_rep_n_0 ),
        .O(\g_slot[5].nb_cid [14]));
  (* SOFT_HLUTNM = "soft_lutpair243" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \g_slot[5].pe_i_i_15 
       (.I0(obs_cid[53]),
        .I1(\phase_reg[0]_rep_n_0 ),
        .O(\g_slot[5].nb_cid [13]));
  (* SOFT_HLUTNM = "soft_lutpair244" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \g_slot[5].pe_i_i_16 
       (.I0(obs_cid[52]),
        .I1(\phase_reg[0]_rep_n_0 ),
        .O(\g_slot[5].nb_cid [12]));
  (* SOFT_HLUTNM = "soft_lutpair245" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \g_slot[5].pe_i_i_17 
       (.I0(obs_cid[51]),
        .I1(\phase_reg[0]_rep_n_0 ),
        .O(\g_slot[5].nb_cid [11]));
  (* SOFT_HLUTNM = "soft_lutpair246" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \g_slot[5].pe_i_i_18 
       (.I0(obs_cid[50]),
        .I1(\phase_reg[0]_rep_n_0 ),
        .O(\g_slot[5].nb_cid [10]));
  (* SOFT_HLUTNM = "soft_lutpair302" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \g_slot[5].pe_i_i_19 
       (.I0(obs_active[6]),
        .I1(\phase_reg[0]_rep_n_0 ),
        .O(\g_slot[5].nb_active [3]));
  (* SOFT_HLUTNM = "soft_lutpair174" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \g_slot[5].pe_i_i_2 
       (.I0(obs_defect[6]),
        .I1(\phase_reg[0]_rep_n_0 ),
        .O(\g_slot[5].absrc [6]));
  (* SOFT_HLUTNM = "soft_lutpair176" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \g_slot[5].pe_i_i_20 
       (.I0(obs_active[10]),
        .I1(phase),
        .O(\g_slot[5].nb_active [2]));
  (* SOFT_HLUTNM = "soft_lutpair175" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \g_slot[5].pe_i_i_21 
       (.I0(obs_grown[6]),
        .I1(phase),
        .O(\g_slot[5].nb_grown [3]));
  (* SOFT_HLUTNM = "soft_lutpair247" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \g_slot[5].pe_i_i_22 
       (.I0(obs_grown[10]),
        .I1(phase),
        .O(\g_slot[5].nb_grown [2]));
  (* SOFT_HLUTNM = "soft_lutpair293" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \g_slot[5].pe_i_i_23 
       (.I0(obs_grown[9]),
        .I1(\phase_reg[0]_rep_n_0 ),
        .O(\g_slot[5].pe_i_i_23_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair157" *) 
  LUT5 #(
    .INIT(32'h00080000)) 
    \g_slot[5].pe_i_i_24 
       (.I0(obs_ptr[18]),
        .I1(obs_ptr[19]),
        .I2(obs_ptr[20]),
        .I3(\phase_reg[0]_rep__0_n_0 ),
        .I4(\g_slot[5].g_dir[3].nsrc_mux ),
        .O(\g_slot[5].nb_push [3]));
  LUT5 #(
    .INIT(32'h00040000)) 
    \g_slot[5].pe_i_i_25 
       (.I0(obs_ptr[30]),
        .I1(obs_ptr[32]),
        .I2(obs_ptr[31]),
        .I3(\phase_reg[0]_rep__0_n_0 ),
        .I4(\g_slot[1].g_dir[2].nsrc_mux [14]),
        .O(\g_slot[5].nb_push [2]));
  (* SOFT_HLUTNM = "soft_lutpair151" *) 
  LUT5 #(
    .INIT(32'h00040000)) 
    \g_slot[5].pe_i_i_26 
       (.I0(obs_ptr[28]),
        .I1(\g_slot[2].g_dir[3].nsrc_mux [14]),
        .I2(obs_ptr[29]),
        .I3(\phase_reg[0]_rep__0_n_0 ),
        .I4(obs_ptr[27]),
        .O(\g_slot[5].nb_push [1]));
  (* SOFT_HLUTNM = "soft_lutpair155" *) 
  LUT5 #(
    .INIT(32'h00040000)) 
    \g_slot[5].pe_i_i_27 
       (.I0(obs_ptr[6]),
        .I1(\g_slot[4].g_dir[0].nsrc_mux ),
        .I2(obs_ptr[8]),
        .I3(\phase_reg[0]_rep__0_n_0 ),
        .I4(obs_ptr[7]),
        .O(\g_slot[5].nb_push [0]));
  (* SOFT_HLUTNM = "soft_lutpair179" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \g_slot[5].pe_i_i_28 
       (.I0(\g_slot[1].g_dir[3].nsrc_mux [14]),
        .I1(phase),
        .O(\g_slot[5].pe_i_i_28_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair298" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \g_slot[5].pe_i_i_29 
       (.I0(obs_unrooted[8]),
        .I1(\phase_reg[0]_rep_n_0 ),
        .O(\g_slot[5].pe_i_i_29_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \g_slot[5].pe_i_i_3 
       (.I0(obs_ptr[20]),
        .I1(\phase_reg[0]_rep_n_0 ),
        .O(\g_slot[5].absrc [5]));
  (* SOFT_HLUTNM = "soft_lutpair157" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \g_slot[5].pe_i_i_4 
       (.I0(obs_ptr[19]),
        .I1(\phase_reg[0]_rep__0_n_0 ),
        .O(\g_slot[5].absrc [4]));
  (* SOFT_HLUTNM = "soft_lutpair164" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \g_slot[5].pe_i_i_5 
       (.I0(obs_ptr[18]),
        .I1(\phase_reg[0]_rep_n_0 ),
        .O(\g_slot[5].absrc [3]));
  (* SOFT_HLUTNM = "soft_lutpair229" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \g_slot[5].pe_i_i_6 
       (.I0(\phase_reg[0]_rep_n_0 ),
        .I1(obs_growth[11]),
        .I2(obs_growth[10]),
        .O(\g_slot[5].e_grown [3]));
  (* SOFT_HLUTNM = "soft_lutpair231" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \g_slot[5].pe_i_i_7 
       (.I0(\phase_reg[0]_rep_n_0 ),
        .I1(obs_growth[19]),
        .I2(obs_growth[18]),
        .O(\g_slot[5].e_grown [2]));
  (* SOFT_HLUTNM = "soft_lutpair225" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \g_slot[5].pe_i_i_8 
       (.I0(\phase_reg[0]_rep_n_0 ),
        .I1(obs_growth[13]),
        .I2(obs_growth[12]),
        .O(\g_slot[6].e_grown [0]));
  (* SOFT_HLUTNM = "soft_lutpair166" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \g_slot[5].pe_i_i_9 
       (.I0(obs_cid[34]),
        .I1(\phase_reg[0]_rep_n_0 ),
        .O(\g_slot[5].nb_cid [19]));
  FDRE \g_slot[6].bshA_reg[6][0] 
       (.C(clk),
        .CE(bshA[0]),
        .D(qnow084_out),
        .Q(\g_slot[6].bshA_reg[6] ),
        .R(reset));
  (* SOFT_HLUTNM = "soft_lutpair266" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \g_slot[6].bshB[6][0]_i_1 
       (.I0(\slot_nxt[6] [0]),
        .I1(phase),
        .O(qnow084_out));
  FDRE \g_slot[6].bshB_reg[6][0] 
       (.C(clk),
        .CE(bshB[0]),
        .D(qnow084_out),
        .Q(\g_slot[6].bshB_reg[6] ),
        .R(reset));
  FDRE \g_slot[6].omir_reg[10] 
       (.C(clk),
        .CE(\g_slot[0].own [13]),
        .D(obs_cid[46]),
        .Q(\g_slot[2].g_dir[2].nsrc_mux [25]),
        .R(reset));
  FDRE \g_slot[6].omir_reg[11] 
       (.C(clk),
        .CE(\g_slot[0].own [13]),
        .D(obs_cid[47]),
        .Q(\g_slot[2].g_dir[2].nsrc_mux [26]),
        .R(reset));
  FDSE \g_slot[6].omir_reg[12] 
       (.C(clk),
        .CE(\g_slot[0].own [13]),
        .D(obs_cid[48]),
        .Q(\g_slot[2].g_dir[2].nsrc_mux [27]),
        .S(reset));
  FDRE \g_slot[6].omir_reg[13] 
       (.C(clk),
        .CE(\g_slot[0].own [13]),
        .D(obs_cid[49]),
        .Q(\g_slot[2].g_dir[2].nsrc_mux [28]),
        .R(reset));
  FDRE \g_slot[6].omir_reg[14] 
       (.C(clk),
        .CE(\g_slot[0].own [13]),
        .D(\g_slot[2].g_dir[3].nsrc_mux [14]),
        .Q(\g_slot[2].g_dir[2].nsrc_mux [29]),
        .R(reset));
  FDRE \g_slot[6].omir_reg[2] 
       (.C(clk),
        .CE(\g_slot[0].own [13]),
        .D(obs_grown[9]),
        .Q(\g_slot[2].g_dir[2].nsrc_mux [17]),
        .R(reset));
  FDRE \g_slot[6].omir_reg[3] 
       (.C(clk),
        .CE(\g_slot[0].own [13]),
        .D(obs_ptr[27]),
        .Q(\g_slot[2].g_dir[2].nsrc_mux [18]),
        .R(reset));
  FDRE \g_slot[6].omir_reg[4] 
       (.C(clk),
        .CE(\g_slot[0].own [13]),
        .D(obs_ptr[28]),
        .Q(\g_slot[2].g_dir[2].nsrc_mux [19]),
        .R(reset));
  FDRE \g_slot[6].omir_reg[5] 
       (.C(clk),
        .CE(\g_slot[0].own [13]),
        .D(obs_ptr[29]),
        .Q(\g_slot[2].g_dir[2].nsrc_mux [20]),
        .R(reset));
  FDRE \g_slot[6].omir_reg[8] 
       (.C(clk),
        .CE(\g_slot[0].own [13]),
        .D(obs_active[9]),
        .Q(\g_slot[2].g_dir[2].nsrc_mux [23]),
        .R(reset));
  FDSE \g_slot[6].omir_reg[9] 
       (.C(clk),
        .CE(\g_slot[0].own [13]),
        .D(obs_cid[45]),
        .Q(\g_slot[2].g_dir[2].nsrc_mux [24]),
        .S(reset));
  FDRE \g_slot[6].own_reg[0] 
       (.C(clk),
        .CE(\g_slot[0].own [13]),
        .D(\slot_nxt[6] [0]),
        .Q(obs_busy[9]),
        .R(reset));
  FDRE \g_slot[6].own_reg[10] 
       (.C(clk),
        .CE(\g_slot[0].own [13]),
        .D(\slot_nxt[6] [10]),
        .Q(obs_cid[46]),
        .R(reset));
  FDRE \g_slot[6].own_reg[11] 
       (.C(clk),
        .CE(\g_slot[0].own [13]),
        .D(\slot_nxt[6] [11]),
        .Q(obs_cid[47]),
        .R(reset));
  FDSE \g_slot[6].own_reg[12] 
       (.C(clk),
        .CE(\g_slot[0].own [13]),
        .D(\slot_nxt[6] [12]),
        .Q(obs_cid[48]),
        .S(reset));
  FDRE \g_slot[6].own_reg[13] 
       (.C(clk),
        .CE(\g_slot[0].own [13]),
        .D(\slot_nxt[6] [13]),
        .Q(obs_cid[49]),
        .R(reset));
  FDRE \g_slot[6].own_reg[14] 
       (.C(clk),
        .CE(\g_slot[0].own [13]),
        .D(\slot_nxt[6] [14]),
        .Q(\g_slot[2].g_dir[3].nsrc_mux [14]),
        .R(reset));
  FDRE \g_slot[6].own_reg[1] 
       (.C(clk),
        .CE(\g_slot[0].own [13]),
        .D(\slot_nxt[6] [1]),
        .Q(obs_unrooted[9]),
        .R(reset));
  FDRE \g_slot[6].own_reg[2] 
       (.C(clk),
        .CE(\g_slot[0].own [13]),
        .D(\slot_nxt[6] [2]),
        .Q(obs_grown[9]),
        .R(reset));
  FDRE \g_slot[6].own_reg[3] 
       (.C(clk),
        .CE(\g_slot[0].own [13]),
        .D(\slot_nxt[6] [3]),
        .Q(obs_ptr[27]),
        .R(reset));
  FDRE \g_slot[6].own_reg[4] 
       (.C(clk),
        .CE(\g_slot[0].own [13]),
        .D(\slot_nxt[6] [4]),
        .Q(obs_ptr[28]),
        .R(reset));
  FDRE \g_slot[6].own_reg[5] 
       (.C(clk),
        .CE(\g_slot[0].own [13]),
        .D(\slot_nxt[6] [5]),
        .Q(obs_ptr[29]),
        .R(reset));
  FDRE \g_slot[6].own_reg[6] 
       (.C(clk),
        .CE(\g_slot[0].own [13]),
        .D(\slot_nxt[6] [6]),
        .Q(obs_defect[9]),
        .R(reset));
  FDSE \g_slot[6].own_reg[7] 
       (.C(clk),
        .CE(\g_slot[0].own [13]),
        .D(\slot_nxt[6] [7]),
        .Q(obs_whole[9]),
        .S(reset));
  FDRE \g_slot[6].own_reg[8] 
       (.C(clk),
        .CE(\g_slot[0].own [13]),
        .D(\slot_nxt[6] [8]),
        .Q(obs_active[9]),
        .R(reset));
  FDSE \g_slot[6].own_reg[9] 
       (.C(clk),
        .CE(\g_slot[0].own [13]),
        .D(\slot_nxt[6] [9]),
        .Q(obs_cid[45]),
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
  snowflake_pe__7 \g_slot[6].pe_i 
       (.ab_active(1'b0),
        .ab_cid({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ab_defect(\g_slot[6].absrc [6]),
        .ab_ptr(\g_slot[6].absrc [5:3]),
        .ab_whole(\g_slot[6].absrc [7]),
        .clk(1'b0),
        .e_grown({\g_slot[6].e_grown [3:2],\g_slot[6].pe_i_i_8_n_0 ,\g_slot[6].e_grown [0]}),
        .m_pass(m_pass_w),
        .nb_active({\g_slot[6].nb_active [3:2],\g_slot[3].pe_i_i_6_n_0 ,\g_slot[6].nb_active [0]}),
        .nb_cid({\g_slot[6].nb_cid [19:10],\g_slot[3].pe_i_i_1_n_0 ,\g_slot[3].pe_i_i_2_n_0 ,\g_slot[3].pe_i_i_3_n_0 ,\g_slot[3].pe_i_i_4_n_0 ,\g_slot[3].pe_i_i_5_n_0 ,\g_slot[6].nb_cid [4:0]}),
        .nb_grown({\g_slot[6].nb_grown [3:2],\g_slot[6].pe_i_i_23_n_0 ,\g_slot[6].nb_grown [0]}),
        .nb_push(\g_slot[6].nb_push ),
        .nb_valid({1'b0,qa2,1'b0,1'b0}),
        .o_busy_c(\NLW_g_slot[6].pe_i_o_busy_c_UNCONNECTED ),
        .o_pulse(\NLW_g_slot[6].pe_i_o_pulse_UNCONNECTED ),
        .o_push(\NLW_g_slot[6].pe_i_o_push_UNCONNECTED [3:0]),
        .p_has_above(1'b0),
        .p_id({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .p_is_bnd(1'b0),
        .p_is_bot(1'b0),
        .p_is_syn(1'b0),
        .p_is_top(1'b0),
        .reset(1'b0),
        .st_in({\g_slot[6].pe_i_i_28_n_0 ,\g_slot[2].pe_i_i_1_n_0 ,\g_slot[2].pe_i_i_2_n_0 ,\g_slot[2].pe_i_i_3_n_0 ,\g_slot[2].pe_i_i_4_n_0 ,\g_slot[2].pe_i_i_5_n_0 ,\g_slot[2].pe_i_i_6_n_0 ,\g_slot[2].pe_i_i_7_n_0 ,\g_slot[2].pe_i_i_8_n_0 ,\g_slot[2].pe_i_i_9_n_0 ,\g_slot[2].pe_i_i_10_n_0 ,\g_slot[2].pe_i_i_11_n_0 ,\g_slot[5].pe_i_i_23_n_0 ,\g_slot[6].pe_i_i_29_n_0 ,1'b0}),
        .st_out(\slot_nxt[6] ),
        .stage(stage_reg),
        .syn_bit(1'b0),
        .zzz_never_used(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair214" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \g_slot[6].pe_i_i_1 
       (.I0(obs_whole[7]),
        .I1(\phase_reg[0]_rep_n_0 ),
        .O(\g_slot[6].absrc [7]));
  (* SOFT_HLUTNM = "soft_lutpair279" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \g_slot[6].pe_i_i_10 
       (.I0(obs_cid[38]),
        .I1(\phase_reg[0]_rep__0_n_0 ),
        .O(\g_slot[6].nb_cid [18]));
  (* SOFT_HLUTNM = "soft_lutpair280" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \g_slot[6].pe_i_i_11 
       (.I0(obs_cid[37]),
        .I1(\phase_reg[0]_rep__0_n_0 ),
        .O(\g_slot[6].nb_cid [17]));
  (* SOFT_HLUTNM = "soft_lutpair281" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \g_slot[6].pe_i_i_12 
       (.I0(obs_cid[36]),
        .I1(\phase_reg[0]_rep__0_n_0 ),
        .O(\g_slot[6].nb_cid [16]));
  (* SOFT_HLUTNM = "soft_lutpair295" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \g_slot[6].pe_i_i_13 
       (.I0(obs_cid[35]),
        .I1(\phase_reg[0]_rep__0_n_0 ),
        .O(\g_slot[6].nb_cid [15]));
  (* SOFT_HLUTNM = "soft_lutpair255" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \g_slot[6].pe_i_i_14 
       (.I0(obs_cid[59]),
        .I1(\phase_reg[0]_rep_n_0 ),
        .O(\g_slot[6].nb_cid [14]));
  (* SOFT_HLUTNM = "soft_lutpair207" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \g_slot[6].pe_i_i_15 
       (.I0(obs_cid[58]),
        .I1(\phase_reg[0]_rep_n_0 ),
        .O(\g_slot[6].nb_cid [13]));
  (* SOFT_HLUTNM = "soft_lutpair208" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \g_slot[6].pe_i_i_16 
       (.I0(obs_cid[57]),
        .I1(\phase_reg[0]_rep_n_0 ),
        .O(\g_slot[6].nb_cid [12]));
  (* SOFT_HLUTNM = "soft_lutpair209" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \g_slot[6].pe_i_i_17 
       (.I0(obs_cid[56]),
        .I1(\phase_reg[0]_rep_n_0 ),
        .O(\g_slot[6].nb_cid [11]));
  (* SOFT_HLUTNM = "soft_lutpair210" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \g_slot[6].pe_i_i_18 
       (.I0(obs_cid[55]),
        .I1(\phase_reg[0]_rep_n_0 ),
        .O(\g_slot[6].nb_cid [10]));
  (* SOFT_HLUTNM = "soft_lutpair211" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \g_slot[6].pe_i_i_19 
       (.I0(obs_active[7]),
        .I1(\phase_reg[0]_rep_n_0 ),
        .O(\g_slot[6].nb_active [3]));
  (* SOFT_HLUTNM = "soft_lutpair306" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \g_slot[6].pe_i_i_2 
       (.I0(obs_defect[7]),
        .I1(\phase_reg[0]_rep__0_n_0 ),
        .O(\g_slot[6].absrc [6]));
  (* SOFT_HLUTNM = "soft_lutpair216" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \g_slot[6].pe_i_i_20 
       (.I0(obs_active[11]),
        .I1(\phase_reg[0]_rep_n_0 ),
        .O(\g_slot[6].nb_active [2]));
  (* SOFT_HLUTNM = "soft_lutpair215" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \g_slot[6].pe_i_i_21 
       (.I0(obs_grown[7]),
        .I1(\phase_reg[0]_rep__0_n_0 ),
        .O(\g_slot[6].nb_grown [3]));
  (* SOFT_HLUTNM = "soft_lutpair260" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \g_slot[6].pe_i_i_22 
       (.I0(obs_grown[11]),
        .I1(phase),
        .O(\g_slot[6].nb_grown [2]));
  (* SOFT_HLUTNM = "soft_lutpair259" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \g_slot[6].pe_i_i_23 
       (.I0(obs_grown[3]),
        .I1(\phase_reg[0]_rep_n_0 ),
        .O(\g_slot[6].pe_i_i_23_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair158" *) 
  LUT5 #(
    .INIT(32'h00080000)) 
    \g_slot[6].pe_i_i_24 
       (.I0(obs_ptr[21]),
        .I1(obs_ptr[22]),
        .I2(obs_ptr[23]),
        .I3(\phase_reg[0]_rep__0_n_0 ),
        .I4(\g_slot[6].g_dir[3].nsrc_mux ),
        .O(\g_slot[6].nb_push [3]));
  LUT5 #(
    .INIT(32'h00040000)) 
    \g_slot[6].pe_i_i_25 
       (.I0(obs_ptr[33]),
        .I1(obs_ptr[35]),
        .I2(obs_ptr[34]),
        .I3(\phase_reg[0]_rep__0_n_0 ),
        .I4(\g_slot[2].g_dir[2].nsrc_mux [14]),
        .O(\g_slot[6].nb_push [2]));
  LUT5 #(
    .INIT(32'h00040000)) 
    \g_slot[6].pe_i_i_26 
       (.I0(obs_ptr[10]),
        .I1(\g_slot[6].g_dir[1].nsrc_mux ),
        .I2(obs_ptr[11]),
        .I3(\phase_reg[0]_rep__0_n_0 ),
        .I4(obs_ptr[9]),
        .O(\g_slot[6].nb_push [1]));
  (* SOFT_HLUTNM = "soft_lutpair148" *) 
  LUT5 #(
    .INIT(32'h00040000)) 
    \g_slot[6].pe_i_i_27 
       (.I0(obs_ptr[24]),
        .I1(obs_ptr[25]),
        .I2(obs_ptr[26]),
        .I3(\phase_reg[0]_rep__0_n_0 ),
        .I4(\g_slot[1].g_dir[3].nsrc_mux [14]),
        .O(\g_slot[6].nb_push [0]));
  (* SOFT_HLUTNM = "soft_lutpair153" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \g_slot[6].pe_i_i_28 
       (.I0(\g_slot[2].g_dir[3].nsrc_mux [14]),
        .I1(\phase_reg[0]_rep__0_n_0 ),
        .O(\g_slot[6].pe_i_i_28_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair293" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \g_slot[6].pe_i_i_29 
       (.I0(obs_unrooted[9]),
        .I1(\phase_reg[0]_rep_n_0 ),
        .O(\g_slot[6].pe_i_i_29_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \g_slot[6].pe_i_i_3 
       (.I0(obs_ptr[23]),
        .I1(phase),
        .O(\g_slot[6].absrc [5]));
  (* SOFT_HLUTNM = "soft_lutpair158" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \g_slot[6].pe_i_i_4 
       (.I0(obs_ptr[22]),
        .I1(\phase_reg[0]_rep__0_n_0 ),
        .O(\g_slot[6].absrc [4]));
  (* SOFT_HLUTNM = "soft_lutpair178" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \g_slot[6].pe_i_i_5 
       (.I0(obs_ptr[21]),
        .I1(\phase_reg[0]_rep__0_n_0 ),
        .O(\g_slot[6].absrc [3]));
  (* SOFT_HLUTNM = "soft_lutpair223" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \g_slot[6].pe_i_i_6 
       (.I0(\phase_reg[0]_rep__0_n_0 ),
        .I1(obs_growth[17]),
        .I2(obs_growth[16]),
        .O(\g_slot[6].e_grown [3]));
  (* SOFT_HLUTNM = "soft_lutpair224" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \g_slot[6].pe_i_i_7 
       (.I0(\phase_reg[0]_rep__0_n_0 ),
        .I1(obs_growth[25]),
        .I2(obs_growth[24]),
        .O(\g_slot[6].e_grown [2]));
  (* SOFT_HLUTNM = "soft_lutpair220" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \g_slot[6].pe_i_i_8 
       (.I0(\phase_reg[0]_rep_n_0 ),
        .I1(obs_growth[15]),
        .I2(obs_growth[14]),
        .O(\g_slot[6].pe_i_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair206" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \g_slot[6].pe_i_i_9 
       (.I0(obs_cid[39]),
        .I1(\phase_reg[0]_rep_n_0 ),
        .O(\g_slot[6].nb_cid [19]));
  FDRE \g_slot[7].bshA_reg[7][0] 
       (.C(clk),
        .CE(bshA[0]),
        .D(qnow085_out),
        .Q(\g_slot[7].bshA_reg[7] ),
        .R(reset));
  (* SOFT_HLUTNM = "soft_lutpair291" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \g_slot[7].bshB[7][0]_i_1 
       (.I0(\slot_nxt[7] [0]),
        .I1(phase),
        .O(qnow085_out));
  FDRE \g_slot[7].bshB_reg[7][0] 
       (.C(clk),
        .CE(bshB[0]),
        .D(qnow085_out),
        .Q(\g_slot[7].bshB_reg[7] ),
        .R(reset));
  FDRE \g_slot[7].own_reg[0] 
       (.C(clk),
        .CE(\g_slot[0].own [13]),
        .D(\slot_nxt[7] [0]),
        .Q(obs_busy[3]),
        .R(reset));
  FDSE \g_slot[7].own_reg[10] 
       (.C(clk),
        .CE(\g_slot[0].own [13]),
        .D(\slot_nxt[7] [10]),
        .Q(obs_cid[16]),
        .S(reset));
  FDRE \g_slot[7].own_reg[11] 
       (.C(clk),
        .CE(\g_slot[0].own [13]),
        .D(\slot_nxt[7] [11]),
        .Q(obs_cid[17]),
        .R(reset));
  FDRE \g_slot[7].own_reg[12] 
       (.C(clk),
        .CE(\g_slot[0].own [13]),
        .D(\slot_nxt[7] [12]),
        .Q(obs_cid[18]),
        .R(reset));
  FDRE \g_slot[7].own_reg[13] 
       (.C(clk),
        .CE(\g_slot[0].own [13]),
        .D(\slot_nxt[7] [13]),
        .Q(obs_cid[19]),
        .R(reset));
  FDRE \g_slot[7].own_reg[14] 
       (.C(clk),
        .CE(\g_slot[0].own [13]),
        .D(\slot_nxt[7] [14]),
        .Q(\g_slot[6].g_dir[1].nsrc_mux ),
        .R(reset));
  FDRE \g_slot[7].own_reg[1] 
       (.C(clk),
        .CE(\g_slot[0].own [13]),
        .D(\slot_nxt[7] [1]),
        .Q(obs_unrooted[3]),
        .R(reset));
  FDRE \g_slot[7].own_reg[2] 
       (.C(clk),
        .CE(\g_slot[0].own [13]),
        .D(\slot_nxt[7] [2]),
        .Q(obs_grown[3]),
        .R(reset));
  FDRE \g_slot[7].own_reg[3] 
       (.C(clk),
        .CE(\g_slot[0].own [13]),
        .D(\slot_nxt[7] [3]),
        .Q(obs_ptr[9]),
        .R(reset));
  FDRE \g_slot[7].own_reg[4] 
       (.C(clk),
        .CE(\g_slot[0].own [13]),
        .D(\slot_nxt[7] [4]),
        .Q(obs_ptr[10]),
        .R(reset));
  FDRE \g_slot[7].own_reg[5] 
       (.C(clk),
        .CE(\g_slot[0].own [13]),
        .D(\slot_nxt[7] [5]),
        .Q(obs_ptr[11]),
        .R(reset));
  FDRE \g_slot[7].own_reg[6] 
       (.C(clk),
        .CE(\g_slot[0].own [13]),
        .D(\slot_nxt[7] [6]),
        .Q(obs_defect[3]),
        .R(reset));
  FDSE \g_slot[7].own_reg[7] 
       (.C(clk),
        .CE(\g_slot[0].own [13]),
        .D(\slot_nxt[7] [7]),
        .Q(obs_whole[3]),
        .S(reset));
  FDRE \g_slot[7].own_reg[8] 
       (.C(clk),
        .CE(\g_slot[0].own [13]),
        .D(\slot_nxt[7] [8]),
        .Q(obs_active[3]),
        .R(reset));
  FDSE \g_slot[7].own_reg[9] 
       (.C(clk),
        .CE(\g_slot[0].own [13]),
        .D(\slot_nxt[7] [9]),
        .Q(obs_cid[15]),
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
  snowflake_pe \g_slot[7].pe_i 
       (.ab_active(\g_slot[7].absrc [8]),
        .ab_cid(\g_slot[7].absrc [13:9]),
        .ab_defect(\g_slot[7].absrc [6]),
        .ab_ptr(\g_slot[7].absrc [5:3]),
        .ab_whole(\g_slot[7].absrc [7]),
        .clk(1'b0),
        .e_grown({1'b0,1'b0,1'b0,\g_slot[6].pe_i_i_8_n_0 }),
        .m_pass(m_pass_w),
        .nb_active({1'b0,1'b0,1'b0,\g_slot[2].pe_i_i_6_n_0 }),
        .nb_cid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,\g_slot[2].pe_i_i_1_n_0 ,\g_slot[2].pe_i_i_2_n_0 ,\g_slot[2].pe_i_i_3_n_0 ,\g_slot[2].pe_i_i_4_n_0 ,\g_slot[2].pe_i_i_5_n_0 }),
        .nb_grown({1'b0,1'b0,1'b0,\g_slot[5].pe_i_i_23_n_0 }),
        .nb_push({1'b0,1'b0,1'b0,\g_slot[7].nb_push0 }),
        .nb_valid({1'b0,1'b0,1'b0,qa2}),
        .o_busy_c(\NLW_g_slot[7].pe_i_o_busy_c_UNCONNECTED ),
        .o_pulse(\NLW_g_slot[7].pe_i_o_pulse_UNCONNECTED ),
        .o_push(\NLW_g_slot[7].pe_i_o_push_UNCONNECTED [3:0]),
        .p_has_above(1'b0),
        .p_id({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .p_is_bnd(1'b0),
        .p_is_bot(1'b0),
        .p_is_syn(1'b0),
        .p_is_top(1'b0),
        .reset(1'b0),
        .st_in({\g_slot[7].pe_i_i_13_n_0 ,\g_slot[3].pe_i_i_1_n_0 ,\g_slot[3].pe_i_i_2_n_0 ,\g_slot[3].pe_i_i_3_n_0 ,\g_slot[3].pe_i_i_4_n_0 ,\g_slot[3].pe_i_i_5_n_0 ,\g_slot[3].pe_i_i_6_n_0 ,\g_slot[3].pe_i_i_7_n_0 ,\g_slot[3].pe_i_i_8_n_0 ,\g_slot[3].pe_i_i_9_n_0 ,\g_slot[3].pe_i_i_10_n_0 ,\g_slot[3].pe_i_i_11_n_0 ,\g_slot[6].pe_i_i_23_n_0 ,\g_slot[7].pe_i_i_14_n_0 ,1'b0}),
        .st_out(\slot_nxt[7] ),
        .stage(stage_reg),
        .syn_bit(1'b0),
        .zzz_never_used(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair194" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \g_slot[7].pe_i_i_1 
       (.I0(obs_cid[9]),
        .I1(\phase_reg[0]_rep__0_n_0 ),
        .O(\g_slot[7].absrc [13]));
  (* SOFT_HLUTNM = "soft_lutpair203" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \g_slot[7].pe_i_i_10 
       (.I0(obs_ptr[4]),
        .I1(\phase_reg[0]_rep_n_0 ),
        .O(\g_slot[7].absrc [4]));
  (* SOFT_HLUTNM = "soft_lutpair204" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \g_slot[7].pe_i_i_11 
       (.I0(obs_ptr[3]),
        .I1(\phase_reg[0]_rep_n_0 ),
        .O(\g_slot[7].absrc [3]));
  (* SOFT_HLUTNM = "soft_lutpair153" *) 
  LUT5 #(
    .INIT(32'h00040000)) 
    \g_slot[7].pe_i_i_12 
       (.I0(obs_ptr[27]),
        .I1(\g_slot[2].g_dir[3].nsrc_mux [14]),
        .I2(obs_ptr[29]),
        .I3(\phase_reg[0]_rep__0_n_0 ),
        .I4(obs_ptr[28]),
        .O(\g_slot[7].nb_push0 ));
  (* SOFT_HLUTNM = "soft_lutpair291" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \g_slot[7].pe_i_i_13 
       (.I0(\g_slot[6].g_dir[1].nsrc_mux ),
        .I1(phase),
        .O(\g_slot[7].pe_i_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair292" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \g_slot[7].pe_i_i_14 
       (.I0(obs_unrooted[3]),
        .I1(\phase_reg[0]_rep_n_0 ),
        .O(\g_slot[7].pe_i_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair195" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \g_slot[7].pe_i_i_2 
       (.I0(obs_cid[8]),
        .I1(\phase_reg[0]_rep__0_n_0 ),
        .O(\g_slot[7].absrc [12]));
  (* SOFT_HLUTNM = "soft_lutpair196" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \g_slot[7].pe_i_i_3 
       (.I0(obs_cid[7]),
        .I1(\phase_reg[0]_rep__0_n_0 ),
        .O(\g_slot[7].absrc [11]));
  (* SOFT_HLUTNM = "soft_lutpair197" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \g_slot[7].pe_i_i_4 
       (.I0(obs_cid[6]),
        .I1(\phase_reg[0]_rep__0_n_0 ),
        .O(\g_slot[7].absrc [10]));
  (* SOFT_HLUTNM = "soft_lutpair198" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \g_slot[7].pe_i_i_5 
       (.I0(obs_cid[5]),
        .I1(\phase_reg[0]_rep__0_n_0 ),
        .O(\g_slot[7].absrc [9]));
  (* SOFT_HLUTNM = "soft_lutpair199" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \g_slot[7].pe_i_i_6 
       (.I0(obs_active[1]),
        .I1(\phase_reg[0]_rep__0_n_0 ),
        .O(\g_slot[7].absrc [8]));
  (* SOFT_HLUTNM = "soft_lutpair200" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \g_slot[7].pe_i_i_7 
       (.I0(obs_whole[1]),
        .I1(\phase_reg[0]_rep__0_n_0 ),
        .O(\g_slot[7].absrc [7]));
  (* SOFT_HLUTNM = "soft_lutpair201" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \g_slot[7].pe_i_i_8 
       (.I0(obs_defect[1]),
        .I1(\phase_reg[0]_rep__0_n_0 ),
        .O(\g_slot[7].absrc [6]));
  (* SOFT_HLUTNM = "soft_lutpair202" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \g_slot[7].pe_i_i_9 
       (.I0(obs_ptr[5]),
        .I1(\phase_reg[0]_rep_n_0 ),
        .O(\g_slot[7].absrc [5]));
  LUT6 #(
    .INIT(64'h1010101010141400)) 
    lat_bpass_i_1
       (.I0(reset),
        .I1(phase),
        .I2(lat_bpass),
        .I3(stage__0[0]),
        .I4(stage__0[2]),
        .I5(stage__0[1]),
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
  LUT1 #(
    .INIT(2'h1)) 
    \lat_push_cnt[7]_i_2 
       (.I0(lat_flip_cnt[0]),
        .O(\lat_push_cnt[7]_i_2_n_0 ));
  FDRE \lat_push_cnt_reg[0] 
       (.C(clk),
        .CE(\g_slot[0].own [28]),
        .D(\lat_push_cnt_reg[7]_i_1_n_15 ),
        .Q(lat_flip_cnt[0]),
        .R(reset));
  FDRE \lat_push_cnt_reg[10] 
       (.C(clk),
        .CE(\g_slot[0].own [28]),
        .D(\lat_push_cnt_reg[15]_i_1_n_13 ),
        .Q(lat_flip_cnt[10]),
        .R(reset));
  FDRE \lat_push_cnt_reg[11] 
       (.C(clk),
        .CE(\g_slot[0].own [28]),
        .D(\lat_push_cnt_reg[15]_i_1_n_12 ),
        .Q(lat_flip_cnt[11]),
        .R(reset));
  FDRE \lat_push_cnt_reg[12] 
       (.C(clk),
        .CE(\g_slot[0].own [28]),
        .D(\lat_push_cnt_reg[15]_i_1_n_11 ),
        .Q(lat_flip_cnt[12]),
        .R(reset));
  FDRE \lat_push_cnt_reg[13] 
       (.C(clk),
        .CE(\g_slot[0].own [28]),
        .D(\lat_push_cnt_reg[15]_i_1_n_10 ),
        .Q(lat_flip_cnt[13]),
        .R(reset));
  FDRE \lat_push_cnt_reg[14] 
       (.C(clk),
        .CE(\g_slot[0].own [28]),
        .D(\lat_push_cnt_reg[15]_i_1_n_9 ),
        .Q(lat_flip_cnt[14]),
        .R(reset));
  FDRE \lat_push_cnt_reg[15] 
       (.C(clk),
        .CE(\g_slot[0].own [28]),
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
        .CE(\g_slot[0].own [28]),
        .D(\lat_push_cnt_reg[23]_i_1_n_15 ),
        .Q(lat_flip_cnt[16]),
        .R(reset));
  FDRE \lat_push_cnt_reg[17] 
       (.C(clk),
        .CE(\g_slot[0].own [28]),
        .D(\lat_push_cnt_reg[23]_i_1_n_14 ),
        .Q(lat_flip_cnt[17]),
        .R(reset));
  FDRE \lat_push_cnt_reg[18] 
       (.C(clk),
        .CE(\g_slot[0].own [28]),
        .D(\lat_push_cnt_reg[23]_i_1_n_13 ),
        .Q(lat_flip_cnt[18]),
        .R(reset));
  FDRE \lat_push_cnt_reg[19] 
       (.C(clk),
        .CE(\g_slot[0].own [28]),
        .D(\lat_push_cnt_reg[23]_i_1_n_12 ),
        .Q(lat_flip_cnt[19]),
        .R(reset));
  FDRE \lat_push_cnt_reg[1] 
       (.C(clk),
        .CE(\g_slot[0].own [28]),
        .D(\lat_push_cnt_reg[7]_i_1_n_14 ),
        .Q(lat_flip_cnt[1]),
        .R(reset));
  FDRE \lat_push_cnt_reg[20] 
       (.C(clk),
        .CE(\g_slot[0].own [28]),
        .D(\lat_push_cnt_reg[23]_i_1_n_11 ),
        .Q(lat_flip_cnt[20]),
        .R(reset));
  FDRE \lat_push_cnt_reg[21] 
       (.C(clk),
        .CE(\g_slot[0].own [28]),
        .D(\lat_push_cnt_reg[23]_i_1_n_10 ),
        .Q(lat_flip_cnt[21]),
        .R(reset));
  FDRE \lat_push_cnt_reg[22] 
       (.C(clk),
        .CE(\g_slot[0].own [28]),
        .D(\lat_push_cnt_reg[23]_i_1_n_9 ),
        .Q(lat_flip_cnt[22]),
        .R(reset));
  FDRE \lat_push_cnt_reg[23] 
       (.C(clk),
        .CE(\g_slot[0].own [28]),
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
        .CE(\g_slot[0].own [28]),
        .D(\lat_push_cnt_reg[31]_i_1_n_15 ),
        .Q(lat_flip_cnt[24]),
        .R(reset));
  FDRE \lat_push_cnt_reg[25] 
       (.C(clk),
        .CE(\g_slot[0].own [28]),
        .D(\lat_push_cnt_reg[31]_i_1_n_14 ),
        .Q(lat_flip_cnt[25]),
        .R(reset));
  FDRE \lat_push_cnt_reg[26] 
       (.C(clk),
        .CE(\g_slot[0].own [28]),
        .D(\lat_push_cnt_reg[31]_i_1_n_13 ),
        .Q(lat_flip_cnt[26]),
        .R(reset));
  FDRE \lat_push_cnt_reg[27] 
       (.C(clk),
        .CE(\g_slot[0].own [28]),
        .D(\lat_push_cnt_reg[31]_i_1_n_12 ),
        .Q(lat_flip_cnt[27]),
        .R(reset));
  FDRE \lat_push_cnt_reg[28] 
       (.C(clk),
        .CE(\g_slot[0].own [28]),
        .D(\lat_push_cnt_reg[31]_i_1_n_11 ),
        .Q(lat_flip_cnt[28]),
        .R(reset));
  FDRE \lat_push_cnt_reg[29] 
       (.C(clk),
        .CE(\g_slot[0].own [28]),
        .D(\lat_push_cnt_reg[31]_i_1_n_10 ),
        .Q(lat_flip_cnt[29]),
        .R(reset));
  FDRE \lat_push_cnt_reg[2] 
       (.C(clk),
        .CE(\g_slot[0].own [28]),
        .D(\lat_push_cnt_reg[7]_i_1_n_13 ),
        .Q(lat_flip_cnt[2]),
        .R(reset));
  FDRE \lat_push_cnt_reg[30] 
       (.C(clk),
        .CE(\g_slot[0].own [28]),
        .D(\lat_push_cnt_reg[31]_i_1_n_9 ),
        .Q(lat_flip_cnt[30]),
        .R(reset));
  FDRE \lat_push_cnt_reg[31] 
       (.C(clk),
        .CE(\g_slot[0].own [28]),
        .D(\lat_push_cnt_reg[31]_i_1_n_8 ),
        .Q(lat_flip_cnt[31]),
        .R(reset));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \lat_push_cnt_reg[31]_i_1 
       (.CI(\lat_push_cnt_reg[23]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_lat_push_cnt_reg[31]_i_1_CO_UNCONNECTED [7],\lat_push_cnt_reg[31]_i_1_n_1 ,\lat_push_cnt_reg[31]_i_1_n_2 ,\lat_push_cnt_reg[31]_i_1_n_3 ,\lat_push_cnt_reg[31]_i_1_n_4 ,\lat_push_cnt_reg[31]_i_1_n_5 ,\lat_push_cnt_reg[31]_i_1_n_6 ,\lat_push_cnt_reg[31]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\lat_push_cnt_reg[31]_i_1_n_8 ,\lat_push_cnt_reg[31]_i_1_n_9 ,\lat_push_cnt_reg[31]_i_1_n_10 ,\lat_push_cnt_reg[31]_i_1_n_11 ,\lat_push_cnt_reg[31]_i_1_n_12 ,\lat_push_cnt_reg[31]_i_1_n_13 ,\lat_push_cnt_reg[31]_i_1_n_14 ,\lat_push_cnt_reg[31]_i_1_n_15 }),
        .S(lat_flip_cnt[31:24]));
  FDRE \lat_push_cnt_reg[3] 
       (.C(clk),
        .CE(\g_slot[0].own [28]),
        .D(\lat_push_cnt_reg[7]_i_1_n_12 ),
        .Q(lat_flip_cnt[3]),
        .R(reset));
  FDRE \lat_push_cnt_reg[4] 
       (.C(clk),
        .CE(\g_slot[0].own [28]),
        .D(\lat_push_cnt_reg[7]_i_1_n_11 ),
        .Q(lat_flip_cnt[4]),
        .R(reset));
  FDRE \lat_push_cnt_reg[5] 
       (.C(clk),
        .CE(\g_slot[0].own [28]),
        .D(\lat_push_cnt_reg[7]_i_1_n_10 ),
        .Q(lat_flip_cnt[5]),
        .R(reset));
  FDRE \lat_push_cnt_reg[6] 
       (.C(clk),
        .CE(\g_slot[0].own [28]),
        .D(\lat_push_cnt_reg[7]_i_1_n_9 ),
        .Q(lat_flip_cnt[6]),
        .R(reset));
  FDRE \lat_push_cnt_reg[7] 
       (.C(clk),
        .CE(\g_slot[0].own [28]),
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
        .CE(\g_slot[0].own [28]),
        .D(\lat_push_cnt_reg[15]_i_1_n_15 ),
        .Q(lat_flip_cnt[8]),
        .R(reset));
  FDRE \lat_push_cnt_reg[9] 
       (.C(clk),
        .CE(\g_slot[0].own [28]),
        .D(\lat_push_cnt_reg[15]_i_1_n_14 ),
        .Q(lat_flip_cnt[9]),
        .R(reset));
  (* ORIG_CELL_NAME = "phase_reg[0]" *) 
  FDRE \phase_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\g_slot[0].own [13]),
        .Q(phase),
        .R(reset));
  (* ORIG_CELL_NAME = "phase_reg[0]" *) 
  FDRE \phase_reg[0]_rep 
       (.C(clk),
        .CE(1'b1),
        .D(\g_slot[0].own [13]),
        .Q(\phase_reg[0]_rep_n_0 ),
        .R(reset));
  (* ORIG_CELL_NAME = "phase_reg[0]" *) 
  FDRE \phase_reg[0]_rep__0 
       (.C(clk),
        .CE(1'b1),
        .D(\g_slot[0].own [13]),
        .Q(\phase_reg[0]_rep__0_n_0 ),
        .R(reset));
  LUT6 #(
    .INIT(64'hAFAFAFAFAFAFAFEE)) 
    \step_cnt[0]_i_1 
       (.I0(\step_cnt[7]_i_4_n_0 ),
        .I1(stage__0[2]),
        .I2(\step_cnt_reg_n_0_[0] ),
        .I3(\FSM_sequential_stage[2]_i_6_n_0 ),
        .I4(all_busy_INST_0_i_2_n_0),
        .I5(\FSM_sequential_stage[2]_i_5_n_0 ),
        .O(step_cnt[0]));
  LUT6 #(
    .INIT(64'h000000FE00FE0000)) 
    \step_cnt[1]_i_1 
       (.I0(\FSM_sequential_stage[2]_i_5_n_0 ),
        .I1(all_busy_INST_0_i_2_n_0),
        .I2(\FSM_sequential_stage[2]_i_6_n_0 ),
        .I3(\step_cnt[7]_i_4_n_0 ),
        .I4(\step_cnt_reg_n_0_[0] ),
        .I5(\step_cnt_reg_n_0_[1] ),
        .O(step_cnt[1]));
  LUT6 #(
    .INIT(64'h0000000099999990)) 
    \step_cnt[2]_i_1 
       (.I0(\step_cnt_reg_n_0_[2] ),
        .I1(\step_cnt[2]_i_2_n_0 ),
        .I2(\FSM_sequential_stage[2]_i_5_n_0 ),
        .I3(all_busy_INST_0_i_2_n_0),
        .I4(\FSM_sequential_stage[2]_i_6_n_0 ),
        .I5(\step_cnt[7]_i_4_n_0 ),
        .O(step_cnt[2]));
  (* SOFT_HLUTNM = "soft_lutpair240" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \step_cnt[2]_i_2 
       (.I0(\step_cnt_reg_n_0_[1] ),
        .I1(\step_cnt_reg_n_0_[0] ),
        .O(\step_cnt[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000FE00FE0000)) 
    \step_cnt[3]_i_1 
       (.I0(\FSM_sequential_stage[2]_i_5_n_0 ),
        .I1(all_busy_INST_0_i_2_n_0),
        .I2(\FSM_sequential_stage[2]_i_6_n_0 ),
        .I3(\step_cnt[7]_i_4_n_0 ),
        .I4(\step_cnt[3]_i_2_n_0 ),
        .I5(\step_cnt_reg_n_0_[3] ),
        .O(step_cnt[3]));
  (* SOFT_HLUTNM = "soft_lutpair240" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \step_cnt[3]_i_2 
       (.I0(\step_cnt_reg_n_0_[2] ),
        .I1(\step_cnt_reg_n_0_[0] ),
        .I2(\step_cnt_reg_n_0_[1] ),
        .O(\step_cnt[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000099999990)) 
    \step_cnt[4]_i_1 
       (.I0(\step_cnt_reg_n_0_[4] ),
        .I1(\step_cnt[4]_i_2_n_0 ),
        .I2(\FSM_sequential_stage[2]_i_5_n_0 ),
        .I3(all_busy_INST_0_i_2_n_0),
        .I4(\FSM_sequential_stage[2]_i_6_n_0 ),
        .I5(\step_cnt[7]_i_4_n_0 ),
        .O(step_cnt[4]));
  (* SOFT_HLUTNM = "soft_lutpair159" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \step_cnt[4]_i_2 
       (.I0(\step_cnt_reg_n_0_[3] ),
        .I1(\step_cnt_reg_n_0_[1] ),
        .I2(\step_cnt_reg_n_0_[0] ),
        .I3(\step_cnt_reg_n_0_[2] ),
        .O(\step_cnt[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h1111111022222220)) 
    \step_cnt[5]_i_1 
       (.I0(\step_cnt[5]_i_2_n_0 ),
        .I1(\step_cnt[7]_i_4_n_0 ),
        .I2(\FSM_sequential_stage[2]_i_6_n_0 ),
        .I3(all_busy_INST_0_i_2_n_0),
        .I4(\FSM_sequential_stage[2]_i_5_n_0 ),
        .I5(\step_cnt_reg_n_0_[5] ),
        .O(step_cnt[5]));
  (* SOFT_HLUTNM = "soft_lutpair159" *) 
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
    .INIT(64'h0000000099999990)) 
    \step_cnt[6]_i_1 
       (.I0(\step_cnt_reg_n_0_[6] ),
        .I1(\step_cnt[6]_i_2_n_0 ),
        .I2(\FSM_sequential_stage[2]_i_5_n_0 ),
        .I3(all_busy_INST_0_i_2_n_0),
        .I4(\FSM_sequential_stage[2]_i_6_n_0 ),
        .I5(\step_cnt[7]_i_4_n_0 ),
        .O(step_cnt[6]));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \step_cnt[6]_i_2 
       (.I0(\step_cnt_reg_n_0_[5] ),
        .I1(\step_cnt_reg_n_0_[3] ),
        .I2(\step_cnt_reg_n_0_[1] ),
        .I3(\step_cnt_reg_n_0_[0] ),
        .I4(\step_cnt_reg_n_0_[2] ),
        .I5(\step_cnt_reg_n_0_[4] ),
        .O(\step_cnt[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0FFCFC0A0000000A)) 
    \step_cnt[7]_i_1 
       (.I0(start),
        .I1(lat_bpass),
        .I2(stage__0[1]),
        .I3(stage__0[2]),
        .I4(stage__0[0]),
        .I5(phase),
        .O(\step_cnt[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000099999990)) 
    \step_cnt[7]_i_2 
       (.I0(\step_cnt_reg_n_0_[7] ),
        .I1(\step_cnt[7]_i_3_n_0 ),
        .I2(\FSM_sequential_stage[2]_i_5_n_0 ),
        .I3(all_busy_INST_0_i_2_n_0),
        .I4(\FSM_sequential_stage[2]_i_6_n_0 ),
        .I5(\step_cnt[7]_i_4_n_0 ),
        .O(step_cnt[7]));
  LUT2 #(
    .INIT(4'hB)) 
    \step_cnt[7]_i_3 
       (.I0(\step_cnt[6]_i_2_n_0 ),
        .I1(\step_cnt_reg_n_0_[6] ),
        .O(\step_cnt[7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair163" *) 
  LUT3 #(
    .INIT(8'hEB)) 
    \step_cnt[7]_i_4 
       (.I0(stage__0[1]),
        .I1(stage__0[2]),
        .I2(stage__0[0]),
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
    .INIT(32'h00000004)) 
    \syn_buf[1]_i_1 
       (.I0(reset),
        .I1(start),
        .I2(stage__0[0]),
        .I3(stage__0[2]),
        .I4(stage__0[1]),
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
