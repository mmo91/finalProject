// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Sat May  1 23:17:42 2021
// Host        : DESKTOP-F3H5B92 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               C:/Users/Mya/Documents/finalProject/finalProject.srcs/sources_1/bd/design_1/ip/design_1_als_0_0/design_1_als_0_0_stub.v
// Design      : design_1_als_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "als,Vivado 2018.2" *)
module design_1_als_0_0(clk, rst, sdo, sck, cs, als_data)
/* synthesis syn_black_box black_box_pad_pin="clk,rst,sdo,sck,cs[0:0],als_data[7:0]" */;
  input clk;
  input rst;
  input sdo;
  output sck;
  output [0:0]cs;
  output [7:0]als_data;
endmodule
