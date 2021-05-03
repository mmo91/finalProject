// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Sat May  1 23:17:42 2021
// Host        : DESKTOP-F3H5B92 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               C:/Users/Mya/Documents/finalProject/finalProject.srcs/sources_1/bd/design_1/ip/design_1_als_0_0/design_1_als_0_0_sim_netlist.v
// Design      : design_1_als_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_als_0_0,als,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "als,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module design_1_als_0_0
   (clk,
    rst,
    sdo,
    sck,
    cs,
    als_data);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, PHASE 0.000" *) input clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 rst RST" *) (* x_interface_parameter = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW" *) input rst;
  input sdo;
  output sck;
  output [0:0]cs;
  output [7:0]als_data;

  wire [7:0]als_data;
  wire clk;
  wire [0:0]cs;
  wire rst;
  wire sck;
  wire sdo;

  design_1_als_0_0_als U0
       (.als_data(als_data),
        .clk(clk),
        .cs(cs),
        .rst(rst),
        .sck(sck),
        .sdo(sdo));
endmodule

(* ORIG_REF_NAME = "als" *) 
module design_1_als_0_0_als
   (cs,
    als_data,
    sck,
    clk,
    sdo,
    rst);
  output [0:0]cs;
  output [7:0]als_data;
  output sck;
  input clk;
  input sdo;
  input rst;

  wire [7:0]als_data;
  wire clk;
  wire [0:0]cs;
  wire rst;
  wire sck;
  wire sdo;

  design_1_als_0_0_spi u0
       (.als_data(als_data),
        .clk(clk),
        .cs(cs),
        .rst(rst),
        .sck(sck),
        .sdo(sdo));
endmodule

(* ORIG_REF_NAME = "spi" *) 
module design_1_als_0_0_spi
   (cs,
    als_data,
    sck,
    clk,
    sdo,
    rst);
  output [0:0]cs;
  output [7:0]als_data;
  output sck;
  input clk;
  input sdo;
  input rst;

  wire \_inferred__0/i__carry__0_n_2 ;
  wire \_inferred__0/i__carry__0_n_3 ;
  wire \_inferred__0/i__carry_n_0 ;
  wire \_inferred__0/i__carry_n_1 ;
  wire \_inferred__0/i__carry_n_2 ;
  wire \_inferred__0/i__carry_n_3 ;
  wire [7:0]als_data;
  wire clk;
  wire [31:1]count0;
  wire count0_carry__0_n_0;
  wire count0_carry__0_n_1;
  wire count0_carry__0_n_2;
  wire count0_carry__0_n_3;
  wire count0_carry__1_n_0;
  wire count0_carry__1_n_1;
  wire count0_carry__1_n_2;
  wire count0_carry__1_n_3;
  wire count0_carry__2_n_0;
  wire count0_carry__2_n_1;
  wire count0_carry__2_n_2;
  wire count0_carry__2_n_3;
  wire count0_carry__3_n_0;
  wire count0_carry__3_n_1;
  wire count0_carry__3_n_2;
  wire count0_carry__3_n_3;
  wire count0_carry__4_n_0;
  wire count0_carry__4_n_1;
  wire count0_carry__4_n_2;
  wire count0_carry__4_n_3;
  wire count0_carry__5_n_0;
  wire count0_carry__5_n_1;
  wire count0_carry__5_n_2;
  wire count0_carry__5_n_3;
  wire count0_carry__6_n_2;
  wire count0_carry__6_n_3;
  wire count0_carry_n_0;
  wire count0_carry_n_1;
  wire count0_carry_n_2;
  wire count0_carry_n_3;
  wire \count[0]_i_1_n_0 ;
  wire \count[10]_i_1_n_0 ;
  wire \count[11]_i_1_n_0 ;
  wire \count[12]_i_1_n_0 ;
  wire \count[13]_i_1_n_0 ;
  wire \count[14]_i_1_n_0 ;
  wire \count[15]_i_1_n_0 ;
  wire \count[16]_i_1_n_0 ;
  wire \count[17]_i_1_n_0 ;
  wire \count[18]_i_1_n_0 ;
  wire \count[19]_i_1_n_0 ;
  wire \count[1]_i_1_n_0 ;
  wire \count[20]_i_1_n_0 ;
  wire \count[21]_i_1_n_0 ;
  wire \count[22]_i_1_n_0 ;
  wire \count[23]_i_1_n_0 ;
  wire \count[24]_i_1_n_0 ;
  wire \count[25]_i_1_n_0 ;
  wire \count[26]_i_1_n_0 ;
  wire \count[27]_i_1_n_0 ;
  wire \count[28]_i_1_n_0 ;
  wire \count[29]_i_1_n_0 ;
  wire \count[2]_i_1_n_0 ;
  wire \count[30]_i_1_n_0 ;
  wire \count[31]_i_1_n_0 ;
  wire \count[31]_i_2_n_0 ;
  wire \count[3]_i_1_n_0 ;
  wire \count[4]_i_1_n_0 ;
  wire \count[5]_i_1_n_0 ;
  wire \count[6]_i_1_n_0 ;
  wire \count[7]_i_1_n_0 ;
  wire \count[8]_i_1_n_0 ;
  wire \count[9]_i_1_n_0 ;
  wire \count_reg_n_0_[0] ;
  wire \count_reg_n_0_[10] ;
  wire \count_reg_n_0_[11] ;
  wire \count_reg_n_0_[12] ;
  wire \count_reg_n_0_[13] ;
  wire \count_reg_n_0_[14] ;
  wire \count_reg_n_0_[15] ;
  wire \count_reg_n_0_[16] ;
  wire \count_reg_n_0_[17] ;
  wire \count_reg_n_0_[18] ;
  wire \count_reg_n_0_[19] ;
  wire \count_reg_n_0_[1] ;
  wire \count_reg_n_0_[20] ;
  wire \count_reg_n_0_[21] ;
  wire \count_reg_n_0_[22] ;
  wire \count_reg_n_0_[23] ;
  wire \count_reg_n_0_[24] ;
  wire \count_reg_n_0_[25] ;
  wire \count_reg_n_0_[26] ;
  wire \count_reg_n_0_[27] ;
  wire \count_reg_n_0_[28] ;
  wire \count_reg_n_0_[29] ;
  wire \count_reg_n_0_[2] ;
  wire \count_reg_n_0_[30] ;
  wire \count_reg_n_0_[31] ;
  wire \count_reg_n_0_[3] ;
  wire \count_reg_n_0_[4] ;
  wire \count_reg_n_0_[5] ;
  wire \count_reg_n_0_[6] ;
  wire \count_reg_n_0_[7] ;
  wire \count_reg_n_0_[8] ;
  wire \count_reg_n_0_[9] ;
  wire [0:0]cs;
  wire data_flag_i_1_n_0;
  wire data_flag_reg_n_0;
  wire i__carry__0_i_1_n_0;
  wire i__carry_i_1_n_0;
  wire i__carry_i_2_n_0;
  wire i__carry_i_3_n_0;
  wire p_0_in;
  wire rst;
  wire [12:5]rx_buff;
  wire rx_buff0;
  wire \rx_buff_reg[4]_srl4_n_0 ;
  wire \rx_buff_reg_n_0_[0] ;
  wire \rx_data[12]_i_1_n_0 ;
  wire sck;
  wire sclk14_in;
  wire sclk_i_1_n_0;
  wire sdo;
  wire ss_n0__0;
  wire ss_n1__10;
  wire ss_n1_carry__0_i_1_n_0;
  wire ss_n1_carry__0_i_2_n_0;
  wire ss_n1_carry__0_i_3_n_0;
  wire ss_n1_carry__0_i_4_n_0;
  wire ss_n1_carry__0_n_0;
  wire ss_n1_carry__0_n_1;
  wire ss_n1_carry__0_n_2;
  wire ss_n1_carry__0_n_3;
  wire ss_n1_carry__1_i_1_n_0;
  wire ss_n1_carry__1_i_2_n_0;
  wire ss_n1_carry__1_i_3_n_0;
  wire ss_n1_carry__1_n_2;
  wire ss_n1_carry__1_n_3;
  wire ss_n1_carry_i_1_n_0;
  wire ss_n1_carry_i_2_n_0;
  wire ss_n1_carry_i_3_n_0;
  wire ss_n1_carry_i_4_n_0;
  wire ss_n1_carry_n_0;
  wire ss_n1_carry_n_1;
  wire ss_n1_carry_n_2;
  wire ss_n1_carry_n_3;
  wire \ss_n[0]_i_1_n_0 ;
  wire state;
  wire state_i_1_n_0;
  wire [5:1]togg;
  wire togg0;
  wire \togg[0]_i_1_n_0 ;
  wire \togg_reg_n_0_[0] ;
  wire \togg_reg_n_0_[1] ;
  wire \togg_reg_n_0_[2] ;
  wire \togg_reg_n_0_[3] ;
  wire \togg_reg_n_0_[4] ;
  wire \togg_reg_n_0_[5] ;
  wire [3:0]\NLW__inferred__0/i__carry_O_UNCONNECTED ;
  wire [3:2]\NLW__inferred__0/i__carry__0_CO_UNCONNECTED ;
  wire [3:0]\NLW__inferred__0/i__carry__0_O_UNCONNECTED ;
  wire [3:2]NLW_count0_carry__6_CO_UNCONNECTED;
  wire [3:3]NLW_count0_carry__6_O_UNCONNECTED;
  wire [3:0]NLW_ss_n1_carry_O_UNCONNECTED;
  wire [3:0]NLW_ss_n1_carry__0_O_UNCONNECTED;
  wire [3:3]NLW_ss_n1_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_ss_n1_carry__1_O_UNCONNECTED;

  CARRY4 \_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\_inferred__0/i__carry_n_0 ,\_inferred__0/i__carry_n_1 ,\_inferred__0/i__carry_n_2 ,\_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI({\togg_reg_n_0_[3] ,\togg_reg_n_0_[2] ,\togg_reg_n_0_[1] ,\togg_reg_n_0_[0] }),
        .O(\NLW__inferred__0/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_1_n_0,i__carry_i_2_n_0,i__carry_i_3_n_0,\togg_reg_n_0_[0] }));
  CARRY4 \_inferred__0/i__carry__0 
       (.CI(\_inferred__0/i__carry_n_0 ),
        .CO({\NLW__inferred__0/i__carry__0_CO_UNCONNECTED [3:2],\_inferred__0/i__carry__0_n_2 ,\_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\togg_reg_n_0_[5] ,\togg_reg_n_0_[4] }),
        .O(\NLW__inferred__0/i__carry__0_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,\togg_reg_n_0_[5] ,i__carry__0_i_1_n_0}));
  CARRY4 count0_carry
       (.CI(1'b0),
        .CO({count0_carry_n_0,count0_carry_n_1,count0_carry_n_2,count0_carry_n_3}),
        .CYINIT(\count_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(count0[4:1]),
        .S({\count_reg_n_0_[4] ,\count_reg_n_0_[3] ,\count_reg_n_0_[2] ,\count_reg_n_0_[1] }));
  CARRY4 count0_carry__0
       (.CI(count0_carry_n_0),
        .CO({count0_carry__0_n_0,count0_carry__0_n_1,count0_carry__0_n_2,count0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(count0[8:5]),
        .S({\count_reg_n_0_[8] ,\count_reg_n_0_[7] ,\count_reg_n_0_[6] ,\count_reg_n_0_[5] }));
  CARRY4 count0_carry__1
       (.CI(count0_carry__0_n_0),
        .CO({count0_carry__1_n_0,count0_carry__1_n_1,count0_carry__1_n_2,count0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(count0[12:9]),
        .S({\count_reg_n_0_[12] ,\count_reg_n_0_[11] ,\count_reg_n_0_[10] ,\count_reg_n_0_[9] }));
  CARRY4 count0_carry__2
       (.CI(count0_carry__1_n_0),
        .CO({count0_carry__2_n_0,count0_carry__2_n_1,count0_carry__2_n_2,count0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(count0[16:13]),
        .S({\count_reg_n_0_[16] ,\count_reg_n_0_[15] ,\count_reg_n_0_[14] ,\count_reg_n_0_[13] }));
  CARRY4 count0_carry__3
       (.CI(count0_carry__2_n_0),
        .CO({count0_carry__3_n_0,count0_carry__3_n_1,count0_carry__3_n_2,count0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(count0[20:17]),
        .S({\count_reg_n_0_[20] ,\count_reg_n_0_[19] ,\count_reg_n_0_[18] ,\count_reg_n_0_[17] }));
  CARRY4 count0_carry__4
       (.CI(count0_carry__3_n_0),
        .CO({count0_carry__4_n_0,count0_carry__4_n_1,count0_carry__4_n_2,count0_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(count0[24:21]),
        .S({\count_reg_n_0_[24] ,\count_reg_n_0_[23] ,\count_reg_n_0_[22] ,\count_reg_n_0_[21] }));
  CARRY4 count0_carry__5
       (.CI(count0_carry__4_n_0),
        .CO({count0_carry__5_n_0,count0_carry__5_n_1,count0_carry__5_n_2,count0_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(count0[28:25]),
        .S({\count_reg_n_0_[28] ,\count_reg_n_0_[27] ,\count_reg_n_0_[26] ,\count_reg_n_0_[25] }));
  CARRY4 count0_carry__6
       (.CI(count0_carry__5_n_0),
        .CO({NLW_count0_carry__6_CO_UNCONNECTED[3:2],count0_carry__6_n_2,count0_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_count0_carry__6_O_UNCONNECTED[3],count0[31:29]}),
        .S({1'b0,\count_reg_n_0_[31] ,\count_reg_n_0_[30] ,\count_reg_n_0_[29] }));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hBFF0)) 
    \count[0]_i_1 
       (.I0(ss_n1__10),
        .I1(state),
        .I2(rst),
        .I3(\count_reg_n_0_[0] ),
        .O(\count[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \count[10]_i_1 
       (.I0(count0[10]),
        .I1(ss_n1__10),
        .O(\count[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \count[11]_i_1 
       (.I0(count0[11]),
        .I1(ss_n1__10),
        .O(\count[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \count[12]_i_1 
       (.I0(count0[12]),
        .I1(ss_n1__10),
        .O(\count[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \count[13]_i_1 
       (.I0(count0[13]),
        .I1(ss_n1__10),
        .O(\count[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \count[14]_i_1 
       (.I0(count0[14]),
        .I1(ss_n1__10),
        .O(\count[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \count[15]_i_1 
       (.I0(count0[15]),
        .I1(ss_n1__10),
        .O(\count[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \count[16]_i_1 
       (.I0(count0[16]),
        .I1(ss_n1__10),
        .O(\count[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \count[17]_i_1 
       (.I0(count0[17]),
        .I1(ss_n1__10),
        .O(\count[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \count[18]_i_1 
       (.I0(count0[18]),
        .I1(ss_n1__10),
        .O(\count[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \count[19]_i_1 
       (.I0(count0[19]),
        .I1(ss_n1__10),
        .O(\count[19]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \count[1]_i_1 
       (.I0(count0[1]),
        .I1(ss_n1__10),
        .O(\count[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \count[20]_i_1 
       (.I0(count0[20]),
        .I1(ss_n1__10),
        .O(\count[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \count[21]_i_1 
       (.I0(count0[21]),
        .I1(ss_n1__10),
        .O(\count[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \count[22]_i_1 
       (.I0(count0[22]),
        .I1(ss_n1__10),
        .O(\count[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \count[23]_i_1 
       (.I0(count0[23]),
        .I1(ss_n1__10),
        .O(\count[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \count[24]_i_1 
       (.I0(count0[24]),
        .I1(ss_n1__10),
        .O(\count[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \count[25]_i_1 
       (.I0(count0[25]),
        .I1(ss_n1__10),
        .O(\count[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \count[26]_i_1 
       (.I0(count0[26]),
        .I1(ss_n1__10),
        .O(\count[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \count[27]_i_1 
       (.I0(count0[27]),
        .I1(ss_n1__10),
        .O(\count[27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \count[28]_i_1 
       (.I0(count0[28]),
        .I1(ss_n1__10),
        .O(\count[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \count[29]_i_1 
       (.I0(count0[29]),
        .I1(ss_n1__10),
        .O(\count[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \count[2]_i_1 
       (.I0(count0[2]),
        .I1(ss_n1__10),
        .O(\count[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \count[30]_i_1 
       (.I0(count0[30]),
        .I1(ss_n1__10),
        .O(\count[30]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \count[31]_i_1 
       (.I0(rst),
        .I1(state),
        .O(\count[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \count[31]_i_2 
       (.I0(count0[31]),
        .I1(ss_n1__10),
        .O(\count[31]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \count[3]_i_1 
       (.I0(count0[3]),
        .I1(ss_n1__10),
        .O(\count[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \count[4]_i_1 
       (.I0(count0[4]),
        .I1(ss_n1__10),
        .O(\count[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \count[5]_i_1 
       (.I0(count0[5]),
        .I1(ss_n1__10),
        .O(\count[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \count[6]_i_1 
       (.I0(count0[6]),
        .I1(ss_n1__10),
        .O(\count[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \count[7]_i_1 
       (.I0(count0[7]),
        .I1(ss_n1__10),
        .O(\count[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \count[8]_i_1 
       (.I0(count0[8]),
        .I1(ss_n1__10),
        .O(\count[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \count[9]_i_1 
       (.I0(count0[9]),
        .I1(ss_n1__10),
        .O(\count[9]_i_1_n_0 ));
  FDRE \count_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\count[0]_i_1_n_0 ),
        .Q(\count_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \count_reg[10] 
       (.C(clk),
        .CE(rst),
        .D(\count[10]_i_1_n_0 ),
        .Q(\count_reg_n_0_[10] ),
        .R(\count[31]_i_1_n_0 ));
  FDRE \count_reg[11] 
       (.C(clk),
        .CE(rst),
        .D(\count[11]_i_1_n_0 ),
        .Q(\count_reg_n_0_[11] ),
        .R(\count[31]_i_1_n_0 ));
  FDRE \count_reg[12] 
       (.C(clk),
        .CE(rst),
        .D(\count[12]_i_1_n_0 ),
        .Q(\count_reg_n_0_[12] ),
        .R(\count[31]_i_1_n_0 ));
  FDRE \count_reg[13] 
       (.C(clk),
        .CE(rst),
        .D(\count[13]_i_1_n_0 ),
        .Q(\count_reg_n_0_[13] ),
        .R(\count[31]_i_1_n_0 ));
  FDRE \count_reg[14] 
       (.C(clk),
        .CE(rst),
        .D(\count[14]_i_1_n_0 ),
        .Q(\count_reg_n_0_[14] ),
        .R(\count[31]_i_1_n_0 ));
  FDRE \count_reg[15] 
       (.C(clk),
        .CE(rst),
        .D(\count[15]_i_1_n_0 ),
        .Q(\count_reg_n_0_[15] ),
        .R(\count[31]_i_1_n_0 ));
  FDRE \count_reg[16] 
       (.C(clk),
        .CE(rst),
        .D(\count[16]_i_1_n_0 ),
        .Q(\count_reg_n_0_[16] ),
        .R(\count[31]_i_1_n_0 ));
  FDRE \count_reg[17] 
       (.C(clk),
        .CE(rst),
        .D(\count[17]_i_1_n_0 ),
        .Q(\count_reg_n_0_[17] ),
        .R(\count[31]_i_1_n_0 ));
  FDRE \count_reg[18] 
       (.C(clk),
        .CE(rst),
        .D(\count[18]_i_1_n_0 ),
        .Q(\count_reg_n_0_[18] ),
        .R(\count[31]_i_1_n_0 ));
  FDRE \count_reg[19] 
       (.C(clk),
        .CE(rst),
        .D(\count[19]_i_1_n_0 ),
        .Q(\count_reg_n_0_[19] ),
        .R(\count[31]_i_1_n_0 ));
  FDRE \count_reg[1] 
       (.C(clk),
        .CE(rst),
        .D(\count[1]_i_1_n_0 ),
        .Q(\count_reg_n_0_[1] ),
        .R(\count[31]_i_1_n_0 ));
  FDRE \count_reg[20] 
       (.C(clk),
        .CE(rst),
        .D(\count[20]_i_1_n_0 ),
        .Q(\count_reg_n_0_[20] ),
        .R(\count[31]_i_1_n_0 ));
  FDRE \count_reg[21] 
       (.C(clk),
        .CE(rst),
        .D(\count[21]_i_1_n_0 ),
        .Q(\count_reg_n_0_[21] ),
        .R(\count[31]_i_1_n_0 ));
  FDRE \count_reg[22] 
       (.C(clk),
        .CE(rst),
        .D(\count[22]_i_1_n_0 ),
        .Q(\count_reg_n_0_[22] ),
        .R(\count[31]_i_1_n_0 ));
  FDRE \count_reg[23] 
       (.C(clk),
        .CE(rst),
        .D(\count[23]_i_1_n_0 ),
        .Q(\count_reg_n_0_[23] ),
        .R(\count[31]_i_1_n_0 ));
  FDRE \count_reg[24] 
       (.C(clk),
        .CE(rst),
        .D(\count[24]_i_1_n_0 ),
        .Q(\count_reg_n_0_[24] ),
        .R(\count[31]_i_1_n_0 ));
  FDRE \count_reg[25] 
       (.C(clk),
        .CE(rst),
        .D(\count[25]_i_1_n_0 ),
        .Q(\count_reg_n_0_[25] ),
        .R(\count[31]_i_1_n_0 ));
  FDRE \count_reg[26] 
       (.C(clk),
        .CE(rst),
        .D(\count[26]_i_1_n_0 ),
        .Q(\count_reg_n_0_[26] ),
        .R(\count[31]_i_1_n_0 ));
  FDRE \count_reg[27] 
       (.C(clk),
        .CE(rst),
        .D(\count[27]_i_1_n_0 ),
        .Q(\count_reg_n_0_[27] ),
        .R(\count[31]_i_1_n_0 ));
  FDRE \count_reg[28] 
       (.C(clk),
        .CE(rst),
        .D(\count[28]_i_1_n_0 ),
        .Q(\count_reg_n_0_[28] ),
        .R(\count[31]_i_1_n_0 ));
  FDRE \count_reg[29] 
       (.C(clk),
        .CE(rst),
        .D(\count[29]_i_1_n_0 ),
        .Q(\count_reg_n_0_[29] ),
        .R(\count[31]_i_1_n_0 ));
  FDRE \count_reg[2] 
       (.C(clk),
        .CE(rst),
        .D(\count[2]_i_1_n_0 ),
        .Q(\count_reg_n_0_[2] ),
        .R(\count[31]_i_1_n_0 ));
  FDRE \count_reg[30] 
       (.C(clk),
        .CE(rst),
        .D(\count[30]_i_1_n_0 ),
        .Q(\count_reg_n_0_[30] ),
        .R(\count[31]_i_1_n_0 ));
  FDRE \count_reg[31] 
       (.C(clk),
        .CE(rst),
        .D(\count[31]_i_2_n_0 ),
        .Q(\count_reg_n_0_[31] ),
        .R(\count[31]_i_1_n_0 ));
  FDRE \count_reg[3] 
       (.C(clk),
        .CE(rst),
        .D(\count[3]_i_1_n_0 ),
        .Q(\count_reg_n_0_[3] ),
        .R(\count[31]_i_1_n_0 ));
  FDRE \count_reg[4] 
       (.C(clk),
        .CE(rst),
        .D(\count[4]_i_1_n_0 ),
        .Q(\count_reg_n_0_[4] ),
        .R(\count[31]_i_1_n_0 ));
  FDRE \count_reg[5] 
       (.C(clk),
        .CE(rst),
        .D(\count[5]_i_1_n_0 ),
        .Q(\count_reg_n_0_[5] ),
        .R(\count[31]_i_1_n_0 ));
  FDRE \count_reg[6] 
       (.C(clk),
        .CE(rst),
        .D(\count[6]_i_1_n_0 ),
        .Q(\count_reg_n_0_[6] ),
        .R(\count[31]_i_1_n_0 ));
  FDRE \count_reg[7] 
       (.C(clk),
        .CE(rst),
        .D(\count[7]_i_1_n_0 ),
        .Q(\count_reg_n_0_[7] ),
        .R(\count[31]_i_1_n_0 ));
  FDRE \count_reg[8] 
       (.C(clk),
        .CE(rst),
        .D(\count[8]_i_1_n_0 ),
        .Q(\count_reg_n_0_[8] ),
        .R(\count[31]_i_1_n_0 ));
  FDRE \count_reg[9] 
       (.C(clk),
        .CE(rst),
        .D(\count[9]_i_1_n_0 ),
        .Q(\count_reg_n_0_[9] ),
        .R(\count[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h60AA)) 
    data_flag_i_1
       (.I0(data_flag_reg_n_0),
        .I1(ss_n1__10),
        .I2(state),
        .I3(rst),
        .O(data_flag_i_1_n_0));
  FDRE data_flag_reg
       (.C(clk),
        .CE(1'b1),
        .D(data_flag_i_1_n_0),
        .Q(data_flag_reg_n_0),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__0_i_1
       (.I0(\togg_reg_n_0_[4] ),
        .O(i__carry__0_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_1
       (.I0(\togg_reg_n_0_[3] ),
        .O(i__carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_2
       (.I0(\togg_reg_n_0_[2] ),
        .O(i__carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_3
       (.I0(\togg_reg_n_0_[1] ),
        .O(i__carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h0000002000000000)) 
    \rx_buff[12]_i_1 
       (.I0(rst),
        .I1(cs),
        .I2(ss_n1__10),
        .I3(data_flag_reg_n_0),
        .I4(\_inferred__0/i__carry__0_n_2 ),
        .I5(state),
        .O(rx_buff0));
  FDRE \rx_buff_reg[0] 
       (.C(clk),
        .CE(rx_buff0),
        .D(sdo),
        .Q(\rx_buff_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \rx_buff_reg[10] 
       (.C(clk),
        .CE(rx_buff0),
        .D(rx_buff[9]),
        .Q(rx_buff[10]),
        .R(1'b0));
  FDRE \rx_buff_reg[11] 
       (.C(clk),
        .CE(rx_buff0),
        .D(rx_buff[10]),
        .Q(rx_buff[11]),
        .R(1'b0));
  FDRE \rx_buff_reg[12] 
       (.C(clk),
        .CE(rx_buff0),
        .D(rx_buff[11]),
        .Q(rx_buff[12]),
        .R(1'b0));
  (* srl_bus_name = "\U0/u0/rx_buff_reg " *) 
  (* srl_name = "\U0/u0/rx_buff_reg[4]_srl4 " *) 
  SRL16E \rx_buff_reg[4]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(rx_buff0),
        .CLK(clk),
        .D(\rx_buff_reg_n_0_[0] ),
        .Q(\rx_buff_reg[4]_srl4_n_0 ));
  FDRE \rx_buff_reg[5] 
       (.C(clk),
        .CE(rx_buff0),
        .D(\rx_buff_reg[4]_srl4_n_0 ),
        .Q(rx_buff[5]),
        .R(1'b0));
  FDRE \rx_buff_reg[6] 
       (.C(clk),
        .CE(rx_buff0),
        .D(rx_buff[5]),
        .Q(rx_buff[6]),
        .R(1'b0));
  FDRE \rx_buff_reg[7] 
       (.C(clk),
        .CE(rx_buff0),
        .D(rx_buff[6]),
        .Q(rx_buff[7]),
        .R(1'b0));
  FDRE \rx_buff_reg[8] 
       (.C(clk),
        .CE(rx_buff0),
        .D(rx_buff[7]),
        .Q(rx_buff[8]),
        .R(1'b0));
  FDRE \rx_buff_reg[9] 
       (.C(clk),
        .CE(rx_buff0),
        .D(rx_buff[8]),
        .Q(rx_buff[9]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h80)) 
    \rx_data[12]_i_1 
       (.I0(state),
        .I1(ss_n0__0),
        .I2(ss_n1__10),
        .O(\rx_data[12]_i_1_n_0 ));
  FDCE \rx_data_reg[10] 
       (.C(clk),
        .CE(\rx_data[12]_i_1_n_0 ),
        .CLR(p_0_in),
        .D(rx_buff[10]),
        .Q(als_data[5]));
  FDCE \rx_data_reg[11] 
       (.C(clk),
        .CE(\rx_data[12]_i_1_n_0 ),
        .CLR(p_0_in),
        .D(rx_buff[11]),
        .Q(als_data[6]));
  FDCE \rx_data_reg[12] 
       (.C(clk),
        .CE(\rx_data[12]_i_1_n_0 ),
        .CLR(p_0_in),
        .D(rx_buff[12]),
        .Q(als_data[7]));
  FDCE \rx_data_reg[5] 
       (.C(clk),
        .CE(\rx_data[12]_i_1_n_0 ),
        .CLR(p_0_in),
        .D(rx_buff[5]),
        .Q(als_data[0]));
  FDCE \rx_data_reg[6] 
       (.C(clk),
        .CE(\rx_data[12]_i_1_n_0 ),
        .CLR(p_0_in),
        .D(rx_buff[6]),
        .Q(als_data[1]));
  FDCE \rx_data_reg[7] 
       (.C(clk),
        .CE(\rx_data[12]_i_1_n_0 ),
        .CLR(p_0_in),
        .D(rx_buff[7]),
        .Q(als_data[2]));
  FDCE \rx_data_reg[8] 
       (.C(clk),
        .CE(\rx_data[12]_i_1_n_0 ),
        .CLR(p_0_in),
        .D(rx_buff[8]),
        .Q(als_data[3]));
  FDCE \rx_data_reg[9] 
       (.C(clk),
        .CE(\rx_data[12]_i_1_n_0 ),
        .CLR(p_0_in),
        .D(rx_buff[9]),
        .Q(als_data[4]));
  LUT6 #(
    .INIT(64'h9AAAFFFFAAAAAAAA)) 
    sclk_i_1
       (.I0(sck),
        .I1(cs),
        .I2(ss_n1__10),
        .I3(sclk14_in),
        .I4(state),
        .I5(rst),
        .O(sclk_i_1_n_0));
  LUT6 #(
    .INIT(64'h5555555555555557)) 
    sclk_i_2
       (.I0(\togg_reg_n_0_[5] ),
        .I1(\togg_reg_n_0_[2] ),
        .I2(\togg_reg_n_0_[4] ),
        .I3(\togg_reg_n_0_[0] ),
        .I4(\togg_reg_n_0_[1] ),
        .I5(\togg_reg_n_0_[3] ),
        .O(sclk14_in));
  FDRE sclk_reg
       (.C(clk),
        .CE(1'b1),
        .D(sclk_i_1_n_0),
        .Q(sck),
        .R(1'b0));
  CARRY4 ss_n1_carry
       (.CI(1'b0),
        .CO({ss_n1_carry_n_0,ss_n1_carry_n_1,ss_n1_carry_n_2,ss_n1_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_ss_n1_carry_O_UNCONNECTED[3:0]),
        .S({ss_n1_carry_i_1_n_0,ss_n1_carry_i_2_n_0,ss_n1_carry_i_3_n_0,ss_n1_carry_i_4_n_0}));
  CARRY4 ss_n1_carry__0
       (.CI(ss_n1_carry_n_0),
        .CO({ss_n1_carry__0_n_0,ss_n1_carry__0_n_1,ss_n1_carry__0_n_2,ss_n1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_ss_n1_carry__0_O_UNCONNECTED[3:0]),
        .S({ss_n1_carry__0_i_1_n_0,ss_n1_carry__0_i_2_n_0,ss_n1_carry__0_i_3_n_0,ss_n1_carry__0_i_4_n_0}));
  LUT3 #(
    .INIT(8'h01)) 
    ss_n1_carry__0_i_1
       (.I0(\count_reg_n_0_[23] ),
        .I1(\count_reg_n_0_[22] ),
        .I2(\count_reg_n_0_[21] ),
        .O(ss_n1_carry__0_i_1_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    ss_n1_carry__0_i_2
       (.I0(\count_reg_n_0_[20] ),
        .I1(\count_reg_n_0_[19] ),
        .I2(\count_reg_n_0_[18] ),
        .O(ss_n1_carry__0_i_2_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    ss_n1_carry__0_i_3
       (.I0(\count_reg_n_0_[17] ),
        .I1(\count_reg_n_0_[16] ),
        .I2(\count_reg_n_0_[15] ),
        .O(ss_n1_carry__0_i_3_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    ss_n1_carry__0_i_4
       (.I0(\count_reg_n_0_[14] ),
        .I1(\count_reg_n_0_[13] ),
        .I2(\count_reg_n_0_[12] ),
        .O(ss_n1_carry__0_i_4_n_0));
  CARRY4 ss_n1_carry__1
       (.CI(ss_n1_carry__0_n_0),
        .CO({NLW_ss_n1_carry__1_CO_UNCONNECTED[3],ss_n1__10,ss_n1_carry__1_n_2,ss_n1_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_ss_n1_carry__1_O_UNCONNECTED[3:0]),
        .S({1'b0,ss_n1_carry__1_i_1_n_0,ss_n1_carry__1_i_2_n_0,ss_n1_carry__1_i_3_n_0}));
  LUT2 #(
    .INIT(4'h1)) 
    ss_n1_carry__1_i_1
       (.I0(\count_reg_n_0_[30] ),
        .I1(\count_reg_n_0_[31] ),
        .O(ss_n1_carry__1_i_1_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    ss_n1_carry__1_i_2
       (.I0(\count_reg_n_0_[29] ),
        .I1(\count_reg_n_0_[28] ),
        .I2(\count_reg_n_0_[27] ),
        .O(ss_n1_carry__1_i_2_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    ss_n1_carry__1_i_3
       (.I0(\count_reg_n_0_[26] ),
        .I1(\count_reg_n_0_[25] ),
        .I2(\count_reg_n_0_[24] ),
        .O(ss_n1_carry__1_i_3_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    ss_n1_carry_i_1
       (.I0(\count_reg_n_0_[11] ),
        .I1(\count_reg_n_0_[10] ),
        .I2(\count_reg_n_0_[9] ),
        .O(ss_n1_carry_i_1_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    ss_n1_carry_i_2
       (.I0(\count_reg_n_0_[8] ),
        .I1(\count_reg_n_0_[7] ),
        .I2(\count_reg_n_0_[6] ),
        .O(ss_n1_carry_i_2_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    ss_n1_carry_i_3
       (.I0(\count_reg_n_0_[5] ),
        .I1(\count_reg_n_0_[4] ),
        .I2(\count_reg_n_0_[3] ),
        .O(ss_n1_carry_i_3_n_0));
  LUT3 #(
    .INIT(8'h02)) 
    ss_n1_carry_i_4
       (.I0(\count_reg_n_0_[0] ),
        .I1(\count_reg_n_0_[2] ),
        .I2(\count_reg_n_0_[1] ),
        .O(ss_n1_carry_i_4_n_0));
  LUT3 #(
    .INIT(8'h8F)) 
    \ss_n[0]_i_1 
       (.I0(ss_n1__10),
        .I1(ss_n0__0),
        .I2(state),
        .O(\ss_n[0]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \ss_n[0]_i_2 
       (.I0(rst),
        .O(p_0_in));
  LUT6 #(
    .INIT(64'h0000000000001000)) 
    \ss_n[0]_i_3 
       (.I0(\togg_reg_n_0_[1] ),
        .I1(\togg_reg_n_0_[4] ),
        .I2(\togg_reg_n_0_[5] ),
        .I3(\togg_reg_n_0_[0] ),
        .I4(\togg_reg_n_0_[3] ),
        .I5(\togg_reg_n_0_[2] ),
        .O(ss_n0__0));
  FDPE \ss_n_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\ss_n[0]_i_1_n_0 ),
        .PRE(p_0_in),
        .Q(cs));
  LUT3 #(
    .INIT(8'h7F)) 
    state_i_1
       (.I0(ss_n0__0),
        .I1(ss_n1__10),
        .I2(state),
        .O(state_i_1_n_0));
  FDCE state_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(state_i_1_n_0),
        .Q(state));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \togg[0]_i_1 
       (.I0(\togg_reg_n_0_[0] ),
        .O(\togg[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00FEFF0000FFFF00)) 
    \togg[1]_i_1 
       (.I0(\togg_reg_n_0_[2] ),
        .I1(\togg_reg_n_0_[4] ),
        .I2(\togg_reg_n_0_[3] ),
        .I3(\togg_reg_n_0_[1] ),
        .I4(\togg_reg_n_0_[0] ),
        .I5(\togg_reg_n_0_[5] ),
        .O(togg[1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \togg[2]_i_1 
       (.I0(\togg_reg_n_0_[2] ),
        .I1(\togg_reg_n_0_[1] ),
        .I2(\togg_reg_n_0_[0] ),
        .O(togg[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h6CCC)) 
    \togg[3]_i_1 
       (.I0(\togg_reg_n_0_[2] ),
        .I1(\togg_reg_n_0_[3] ),
        .I2(\togg_reg_n_0_[1] ),
        .I3(\togg_reg_n_0_[0] ),
        .O(togg[3]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h6CCCCCCC)) 
    \togg[4]_i_1 
       (.I0(\togg_reg_n_0_[2] ),
        .I1(\togg_reg_n_0_[4] ),
        .I2(\togg_reg_n_0_[3] ),
        .I3(\togg_reg_n_0_[1] ),
        .I4(\togg_reg_n_0_[0] ),
        .O(togg[4]));
  LUT3 #(
    .INIT(8'h80)) 
    \togg[5]_i_1 
       (.I0(rst),
        .I1(ss_n1__10),
        .I2(state),
        .O(togg0));
  LUT6 #(
    .INIT(64'h7FFEFFFF80000000)) 
    \togg[5]_i_2 
       (.I0(\togg_reg_n_0_[2] ),
        .I1(\togg_reg_n_0_[4] ),
        .I2(\togg_reg_n_0_[3] ),
        .I3(\togg_reg_n_0_[1] ),
        .I4(\togg_reg_n_0_[0] ),
        .I5(\togg_reg_n_0_[5] ),
        .O(togg[5]));
  FDRE \togg_reg[0] 
       (.C(clk),
        .CE(togg0),
        .D(\togg[0]_i_1_n_0 ),
        .Q(\togg_reg_n_0_[0] ),
        .R(\count[31]_i_1_n_0 ));
  FDRE \togg_reg[1] 
       (.C(clk),
        .CE(togg0),
        .D(togg[1]),
        .Q(\togg_reg_n_0_[1] ),
        .R(\count[31]_i_1_n_0 ));
  FDRE \togg_reg[2] 
       (.C(clk),
        .CE(togg0),
        .D(togg[2]),
        .Q(\togg_reg_n_0_[2] ),
        .R(\count[31]_i_1_n_0 ));
  FDRE \togg_reg[3] 
       (.C(clk),
        .CE(togg0),
        .D(togg[3]),
        .Q(\togg_reg_n_0_[3] ),
        .R(\count[31]_i_1_n_0 ));
  FDRE \togg_reg[4] 
       (.C(clk),
        .CE(togg0),
        .D(togg[4]),
        .Q(\togg_reg_n_0_[4] ),
        .R(\count[31]_i_1_n_0 ));
  FDRE \togg_reg[5] 
       (.C(clk),
        .CE(togg0),
        .D(togg[5]),
        .Q(\togg_reg_n_0_[5] ),
        .R(\count[31]_i_1_n_0 ));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
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

endmodule
`endif
