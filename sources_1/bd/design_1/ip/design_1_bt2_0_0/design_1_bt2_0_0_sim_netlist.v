// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Sat May  1 21:24:06 2021
// Host        : DESKTOP-F3H5B92 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               C:/Users/Mya/Documents/finalProject/finalProject.srcs/sources_1/bd/design_1/ip/design_1_bt2_0_0/design_1_bt2_0_0_sim_netlist.v
// Design      : design_1_bt2_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_bt2_0_0,bt2,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "bt2,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module design_1_bt2_0_0
   (clk,
    en,
    send,
    rx,
    rst,
    charSend,
    ready,
    tx,
    newChar,
    led,
    charRec);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, PHASE 0.000" *) input clk;
  input en;
  input send;
  input rx;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 rst RST" *) (* x_interface_parameter = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW" *) input rst;
  input [7:0]charSend;
  output ready;
  output tx;
  output newChar;
  output [3:0]led;
  output [7:0]charRec;

  wire [7:0]charRec;
  wire [7:0]charSend;
  wire clk;
  wire en;
  wire [3:0]led;
  wire newChar;
  wire ready;
  wire rst;
  wire rx;
  wire send;
  wire tx;

  design_1_bt2_0_0_bt2 U0
       (.charRec(charRec),
        .charSend(charSend),
        .clk(clk),
        .en(en),
        .led(led),
        .newChar(newChar),
        .ready(ready),
        .rst(rst),
        .rx(rx),
        .send(send),
        .tx(tx));
endmodule

(* ORIG_REF_NAME = "bt2" *) 
module design_1_bt2_0_0_bt2
   (led,
    charRec,
    newChar,
    tx,
    ready,
    rst,
    clk,
    rx,
    send,
    en,
    charSend);
  output [3:0]led;
  output [7:0]charRec;
  output newChar;
  output tx;
  output ready;
  input rst;
  input clk;
  input rx;
  input send;
  input en;
  input [7:0]charSend;

  wire [7:0]charRec;
  wire [7:0]charSend;
  wire clk;
  wire en;
  wire [3:0]led;
  wire newChar;
  wire ready;
  wire rst;
  wire rx;
  wire send;
  wire tx;

  design_1_bt2_0_0_bt2_rx r_x
       (.charRec(charRec),
        .clk(clk),
        .en(en),
        .led(led),
        .newChar(newChar),
        .rst(rst),
        .rx(rx));
  design_1_bt2_0_0_bt2_tx t_x
       (.charSend(charSend),
        .clk(clk),
        .en(en),
        .ready(ready),
        .rst(rst),
        .send(send),
        .tx(tx));
endmodule

(* ORIG_REF_NAME = "bt2_rx" *) 
module design_1_bt2_0_0_bt2_rx
   (newChar,
    led,
    charRec,
    clk,
    en,
    rst,
    rx);
  output newChar;
  output [3:0]led;
  output [7:0]charRec;
  input clk;
  input en;
  input rst;
  input rx;

  wire \FSM_onehot_curr[0]_i_1_n_0 ;
  wire \FSM_onehot_curr[1]_i_1_n_0 ;
  wire \FSM_onehot_curr[2]_i_1_n_0 ;
  wire \FSM_onehot_curr[2]_i_2_n_0 ;
  wire \FSM_onehot_curr[2]_i_3_n_0 ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_curr_reg_n_0_[0] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_curr_reg_n_0_[1] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_curr_reg_n_0_[2] ;
  wire [7:0]charRec;
  wire \char[7]_i_1_n_0 ;
  wire clk;
  wire [2:0]count;
  wire \count[0]_i_1_n_0 ;
  wire \count[2]_i_1_n_0 ;
  wire [2:1]count_0;
  wire \d_reg_n_0_[0] ;
  wire \d_reg_n_0_[1] ;
  wire \d_reg_n_0_[2] ;
  wire \d_reg_n_0_[3] ;
  wire \d_reg_n_0_[4] ;
  wire \d_reg_n_0_[5] ;
  wire \d_reg_n_0_[6] ;
  wire \d_reg_n_0_[7] ;
  wire en;
  wire \inshift_reg_n_0_[0] ;
  wire [3:0]led;
  wire \led[0]_i_1_n_0 ;
  wire \led[1]_i_1_n_0 ;
  wire \led[2]_i_1_n_0 ;
  wire \led[3]_i_1_n_0 ;
  wire maj;
  wire newChar;
  wire newChar_i_1_n_0;
  wire newChar_i_2_n_0;
  wire p_0_in;
  wire p_1_in;
  wire p_2_in;
  wire rst;
  wire rx;

  LUT4 #(
    .INIT(16'hFFE2)) 
    \FSM_onehot_curr[0]_i_1 
       (.I0(\FSM_onehot_curr_reg_n_0_[0] ),
        .I1(\FSM_onehot_curr[2]_i_2_n_0 ),
        .I2(\FSM_onehot_curr_reg_n_0_[2] ),
        .I3(rst),
        .O(\FSM_onehot_curr[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \FSM_onehot_curr[1]_i_1 
       (.I0(\FSM_onehot_curr_reg_n_0_[1] ),
        .I1(\FSM_onehot_curr[2]_i_2_n_0 ),
        .I2(\FSM_onehot_curr_reg_n_0_[0] ),
        .I3(rst),
        .O(\FSM_onehot_curr[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \FSM_onehot_curr[2]_i_1 
       (.I0(\FSM_onehot_curr_reg_n_0_[2] ),
        .I1(\FSM_onehot_curr[2]_i_2_n_0 ),
        .I2(\FSM_onehot_curr_reg_n_0_[1] ),
        .I3(rst),
        .O(\FSM_onehot_curr[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hABBFAAAAAAAAAAAA)) 
    \FSM_onehot_curr[2]_i_2 
       (.I0(\FSM_onehot_curr[2]_i_3_n_0 ),
        .I1(p_2_in),
        .I2(p_1_in),
        .I3(p_0_in),
        .I4(en),
        .I5(\FSM_onehot_curr_reg_n_0_[0] ),
        .O(\FSM_onehot_curr[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEAAAAAAA00000000)) 
    \FSM_onehot_curr[2]_i_3 
       (.I0(\FSM_onehot_curr_reg_n_0_[1] ),
        .I1(count[1]),
        .I2(count[0]),
        .I3(count[2]),
        .I4(\FSM_onehot_curr_reg_n_0_[2] ),
        .I5(en),
        .O(\FSM_onehot_curr[2]_i_3_n_0 ));
  (* FSM_ENCODED_STATES = "idle:001,start:010,data:100," *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b1)) 
    \FSM_onehot_curr_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_curr[0]_i_1_n_0 ),
        .Q(\FSM_onehot_curr_reg_n_0_[0] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "idle:001,start:010,data:100," *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_curr_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_curr[1]_i_1_n_0 ),
        .Q(\FSM_onehot_curr_reg_n_0_[1] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "idle:001,start:010,data:100," *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_curr_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_curr[2]_i_1_n_0 ),
        .Q(\FSM_onehot_curr_reg_n_0_[2] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \char[7]_i_1 
       (.I0(count[1]),
        .I1(count[0]),
        .I2(count[2]),
        .I3(\FSM_onehot_curr_reg_n_0_[2] ),
        .I4(en),
        .I5(rst),
        .O(\char[7]_i_1_n_0 ));
  FDRE \char_reg[0] 
       (.C(clk),
        .CE(\char[7]_i_1_n_0 ),
        .D(\d_reg_n_0_[0] ),
        .Q(charRec[0]),
        .R(1'b0));
  FDRE \char_reg[1] 
       (.C(clk),
        .CE(\char[7]_i_1_n_0 ),
        .D(\d_reg_n_0_[1] ),
        .Q(charRec[1]),
        .R(1'b0));
  FDRE \char_reg[2] 
       (.C(clk),
        .CE(\char[7]_i_1_n_0 ),
        .D(\d_reg_n_0_[2] ),
        .Q(charRec[2]),
        .R(1'b0));
  FDRE \char_reg[3] 
       (.C(clk),
        .CE(\char[7]_i_1_n_0 ),
        .D(\d_reg_n_0_[3] ),
        .Q(charRec[3]),
        .R(1'b0));
  FDRE \char_reg[4] 
       (.C(clk),
        .CE(\char[7]_i_1_n_0 ),
        .D(\d_reg_n_0_[4] ),
        .Q(charRec[4]),
        .R(1'b0));
  FDRE \char_reg[5] 
       (.C(clk),
        .CE(\char[7]_i_1_n_0 ),
        .D(\d_reg_n_0_[5] ),
        .Q(charRec[5]),
        .R(1'b0));
  FDRE \char_reg[6] 
       (.C(clk),
        .CE(\char[7]_i_1_n_0 ),
        .D(\d_reg_n_0_[6] ),
        .Q(charRec[6]),
        .R(1'b0));
  FDRE \char_reg[7] 
       (.C(clk),
        .CE(\char[7]_i_1_n_0 ),
        .D(\d_reg_n_0_[7] ),
        .Q(charRec[7]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    \count[0]_i_1 
       (.I0(\FSM_onehot_curr_reg_n_0_[2] ),
        .I1(count[0]),
        .O(\count[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h48)) 
    \count[1]_i_1 
       (.I0(count[0]),
        .I1(\FSM_onehot_curr_reg_n_0_[2] ),
        .I2(count[1]),
        .O(count_0[1]));
  LUT6 #(
    .INIT(64'hBFFFAAAA00000000)) 
    \count[2]_i_1 
       (.I0(\FSM_onehot_curr_reg_n_0_[1] ),
        .I1(count[1]),
        .I2(count[0]),
        .I3(count[2]),
        .I4(\FSM_onehot_curr_reg_n_0_[2] ),
        .I5(en),
        .O(\count[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h7080)) 
    \count[2]_i_2 
       (.I0(count[0]),
        .I1(count[1]),
        .I2(\FSM_onehot_curr_reg_n_0_[2] ),
        .I3(count[2]),
        .O(count_0[2]));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.C(clk),
        .CE(\count[2]_i_1_n_0 ),
        .D(\count[0]_i_1_n_0 ),
        .Q(count[0]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(clk),
        .CE(\count[2]_i_1_n_0 ),
        .D(count_0[1]),
        .Q(count[1]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.C(clk),
        .CE(\count[2]_i_1_n_0 ),
        .D(count_0[2]),
        .Q(count[2]),
        .R(rst));
  LUT3 #(
    .INIT(8'hE8)) 
    \d[7]_i_1 
       (.I0(p_2_in),
        .I1(p_1_in),
        .I2(p_0_in),
        .O(maj));
  FDRE #(
    .INIT(1'b0)) 
    \d_reg[0] 
       (.C(clk),
        .CE(\count[2]_i_1_n_0 ),
        .D(\d_reg_n_0_[1] ),
        .Q(\d_reg_n_0_[0] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \d_reg[1] 
       (.C(clk),
        .CE(\count[2]_i_1_n_0 ),
        .D(\d_reg_n_0_[2] ),
        .Q(\d_reg_n_0_[1] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \d_reg[2] 
       (.C(clk),
        .CE(\count[2]_i_1_n_0 ),
        .D(\d_reg_n_0_[3] ),
        .Q(\d_reg_n_0_[2] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \d_reg[3] 
       (.C(clk),
        .CE(\count[2]_i_1_n_0 ),
        .D(\d_reg_n_0_[4] ),
        .Q(\d_reg_n_0_[3] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \d_reg[4] 
       (.C(clk),
        .CE(\count[2]_i_1_n_0 ),
        .D(\d_reg_n_0_[5] ),
        .Q(\d_reg_n_0_[4] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \d_reg[5] 
       (.C(clk),
        .CE(\count[2]_i_1_n_0 ),
        .D(\d_reg_n_0_[6] ),
        .Q(\d_reg_n_0_[5] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \d_reg[6] 
       (.C(clk),
        .CE(\count[2]_i_1_n_0 ),
        .D(\d_reg_n_0_[7] ),
        .Q(\d_reg_n_0_[6] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \d_reg[7] 
       (.C(clk),
        .CE(\count[2]_i_1_n_0 ),
        .D(maj),
        .Q(\d_reg_n_0_[7] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \inshift_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(rx),
        .Q(\inshift_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inshift_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\inshift_reg_n_0_[0] ),
        .Q(p_2_in),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inshift_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(p_2_in),
        .Q(p_0_in),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inshift_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in),
        .Q(p_1_in),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hBF80)) 
    \led[0]_i_1 
       (.I0(\d_reg_n_0_[3] ),
        .I1(\char[7]_i_1_n_0 ),
        .I2(\d_reg_n_0_[7] ),
        .I3(led[0]),
        .O(\led[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \led[1]_i_1 
       (.I0(\d_reg_n_0_[2] ),
        .I1(\char[7]_i_1_n_0 ),
        .I2(\d_reg_n_0_[6] ),
        .I3(led[1]),
        .O(\led[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \led[2]_i_1 
       (.I0(\d_reg_n_0_[1] ),
        .I1(\char[7]_i_1_n_0 ),
        .I2(\d_reg_n_0_[5] ),
        .I3(led[2]),
        .O(\led[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \led[3]_i_1 
       (.I0(\d_reg_n_0_[0] ),
        .I1(\char[7]_i_1_n_0 ),
        .I2(\d_reg_n_0_[4] ),
        .I3(led[3]),
        .O(\led[3]_i_1_n_0 ));
  FDRE \led_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\led[0]_i_1_n_0 ),
        .Q(led[0]),
        .R(1'b0));
  FDRE \led_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\led[1]_i_1_n_0 ),
        .Q(led[1]),
        .R(1'b0));
  FDRE \led_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\led[2]_i_1_n_0 ),
        .Q(led[2]),
        .R(1'b0));
  FDRE \led_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\led[3]_i_1_n_0 ),
        .Q(led[3]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00000000FEEE0222)) 
    newChar_i_1
       (.I0(newChar),
        .I1(newChar_i_2_n_0),
        .I2(\FSM_onehot_curr_reg_n_0_[0] ),
        .I3(en),
        .I4(\FSM_onehot_curr_reg_n_0_[2] ),
        .I5(rst),
        .O(newChar_i_1_n_0));
  LUT5 #(
    .INIT(32'h80000000)) 
    newChar_i_2
       (.I0(en),
        .I1(\FSM_onehot_curr_reg_n_0_[2] ),
        .I2(count[2]),
        .I3(count[0]),
        .I4(count[1]),
        .O(newChar_i_2_n_0));
  FDRE newChar_reg
       (.C(clk),
        .CE(1'b1),
        .D(newChar_i_1_n_0),
        .Q(newChar),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "bt2_tx" *) 
module design_1_bt2_0_0_bt2_tx
   (ready,
    tx,
    clk,
    rst,
    send,
    en,
    charSend);
  output ready;
  output tx;
  input clk;
  input rst;
  input send;
  input en;
  input [7:0]charSend;

  wire [7:0]charSend;
  wire clk;
  wire en;
  wire go;
  wire go_i_1_n_0;
  wire idle;
  wire idle_i_1_n_0;
  wire idle_i_2_n_0;
  wire \index[0]_i_1_n_0 ;
  wire \index[1]_i_1_n_0 ;
  wire \index[2]_i_1_n_0 ;
  wire \index[2]_i_2_n_0 ;
  wire \index_reg_n_0_[0] ;
  wire \index_reg_n_0_[1] ;
  wire \index_reg_n_0_[2] ;
  wire p_1_in;
  wire ready;
  wire ready_i_1_n_0;
  wire rst;
  wire send;
  wire seq;
  wire \seq_reg_n_0_[0] ;
  wire \seq_reg_n_0_[1] ;
  wire \seq_reg_n_0_[2] ;
  wire \seq_reg_n_0_[3] ;
  wire \seq_reg_n_0_[4] ;
  wire \seq_reg_n_0_[5] ;
  wire \seq_reg_n_0_[6] ;
  wire tx;
  wire tx1_out;
  wire tx_i_1_n_0;
  wire tx_i_3_n_0;
  wire tx_i_4_n_0;
  wire tx_i_5_n_0;

  LUT4 #(
    .INIT(16'hBFA0)) 
    go_i_1
       (.I0(send),
        .I1(idle),
        .I2(en),
        .I3(go),
        .O(go_i_1_n_0));
  FDCE go_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(go_i_1_n_0),
        .Q(go));
  LUT6 #(
    .INIT(64'h0000F0F0F4F0F0F0)) 
    idle_i_1
       (.I0(idle_i_2_n_0),
        .I1(\index_reg_n_0_[2] ),
        .I2(idle),
        .I3(go),
        .I4(en),
        .I5(send),
        .O(idle_i_1_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    idle_i_2
       (.I0(\index_reg_n_0_[0] ),
        .I1(\index_reg_n_0_[1] ),
        .O(idle_i_2_n_0));
  FDPE idle_reg
       (.C(clk),
        .CE(1'b1),
        .D(idle_i_1_n_0),
        .PRE(rst),
        .Q(idle));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hEFFF1000)) 
    \index[0]_i_1 
       (.I0(idle),
        .I1(send),
        .I2(go),
        .I3(en),
        .I4(\index_reg_n_0_[0] ),
        .O(\index[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \index[1]_i_1 
       (.I0(\index_reg_n_0_[0] ),
        .I1(\index[2]_i_2_n_0 ),
        .I2(\index_reg_n_0_[1] ),
        .O(\index[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \index[2]_i_1 
       (.I0(\index_reg_n_0_[1] ),
        .I1(\index_reg_n_0_[0] ),
        .I2(\index[2]_i_2_n_0 ),
        .I3(\index_reg_n_0_[2] ),
        .O(\index[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \index[2]_i_2 
       (.I0(en),
        .I1(go),
        .I2(send),
        .I3(idle),
        .O(\index[2]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \index_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\index[0]_i_1_n_0 ),
        .Q(\index_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \index_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\index[1]_i_1_n_0 ),
        .Q(\index_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \index_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\index[2]_i_1_n_0 ),
        .Q(\index_reg_n_0_[2] ));
  LUT4 #(
    .INIT(16'h5F40)) 
    ready_i_1
       (.I0(send),
        .I1(idle),
        .I2(en),
        .I3(ready),
        .O(ready_i_1_n_0));
  FDPE ready_reg
       (.C(clk),
        .CE(1'b1),
        .D(ready_i_1_n_0),
        .PRE(rst),
        .Q(ready));
  LUT2 #(
    .INIT(4'h8)) 
    \seq[7]_i_1 
       (.I0(en),
        .I1(send),
        .O(seq));
  FDCE \seq_reg[0] 
       (.C(clk),
        .CE(seq),
        .CLR(rst),
        .D(charSend[0]),
        .Q(\seq_reg_n_0_[0] ));
  FDCE \seq_reg[1] 
       (.C(clk),
        .CE(seq),
        .CLR(rst),
        .D(charSend[1]),
        .Q(\seq_reg_n_0_[1] ));
  FDCE \seq_reg[2] 
       (.C(clk),
        .CE(seq),
        .CLR(rst),
        .D(charSend[2]),
        .Q(\seq_reg_n_0_[2] ));
  FDCE \seq_reg[3] 
       (.C(clk),
        .CE(seq),
        .CLR(rst),
        .D(charSend[3]),
        .Q(\seq_reg_n_0_[3] ));
  FDCE \seq_reg[4] 
       (.C(clk),
        .CE(seq),
        .CLR(rst),
        .D(charSend[4]),
        .Q(\seq_reg_n_0_[4] ));
  FDCE \seq_reg[5] 
       (.C(clk),
        .CE(seq),
        .CLR(rst),
        .D(charSend[5]),
        .Q(\seq_reg_n_0_[5] ));
  FDCE \seq_reg[6] 
       (.C(clk),
        .CE(seq),
        .CLR(rst),
        .D(charSend[6]),
        .Q(\seq_reg_n_0_[6] ));
  FDCE \seq_reg[7] 
       (.C(clk),
        .CE(seq),
        .CLR(rst),
        .D(charSend[7]),
        .Q(p_1_in));
  LUT6 #(
    .INIT(64'hAFAFAFBFA0A0A080)) 
    tx_i_1
       (.I0(tx1_out),
        .I1(go),
        .I2(en),
        .I3(idle),
        .I4(send),
        .I5(tx),
        .O(tx_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFAEAEAFAE)) 
    tx_i_2
       (.I0(tx_i_3_n_0),
        .I1(idle),
        .I2(send),
        .I3(tx_i_4_n_0),
        .I4(\index_reg_n_0_[0] ),
        .I5(tx_i_5_n_0),
        .O(tx1_out));
  LUT6 #(
    .INIT(64'h4040400000004000)) 
    tx_i_3
       (.I0(send),
        .I1(\index_reg_n_0_[0] ),
        .I2(\index_reg_n_0_[1] ),
        .I3(\seq_reg_n_0_[3] ),
        .I4(\index_reg_n_0_[2] ),
        .I5(p_1_in),
        .O(tx_i_3_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    tx_i_4
       (.I0(\seq_reg_n_0_[6] ),
        .I1(\seq_reg_n_0_[2] ),
        .I2(\index_reg_n_0_[1] ),
        .I3(\seq_reg_n_0_[4] ),
        .I4(\index_reg_n_0_[2] ),
        .I5(\seq_reg_n_0_[0] ),
        .O(tx_i_4_n_0));
  LUT6 #(
    .INIT(64'h0404040000000400)) 
    tx_i_5
       (.I0(send),
        .I1(\index_reg_n_0_[0] ),
        .I2(\index_reg_n_0_[1] ),
        .I3(\seq_reg_n_0_[1] ),
        .I4(\index_reg_n_0_[2] ),
        .I5(\seq_reg_n_0_[5] ),
        .O(tx_i_5_n_0));
  FDPE tx_reg
       (.C(clk),
        .CE(1'b1),
        .D(tx_i_1_n_0),
        .PRE(rst),
        .Q(tx));
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
