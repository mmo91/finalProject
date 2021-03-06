// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Sat May  1 21:22:18 2021
// Host        : DESKTOP-F3H5B92 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/Mya/Documents/finalProject/finalProject.srcs/sources_1/bd/design_1/ip/design_1_sender_0_0/design_1_sender_0_0_sim_netlist.v
// Design      : design_1_sender_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_sender_0_0,sender,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "sender,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module design_1_sender_0_0
   (rst,
    clk,
    en,
    ready,
    data,
    send,
    char);
  (* x_interface_info = "xilinx.com:signal:reset:1.0 rst RST" *) (* x_interface_parameter = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW" *) input rst;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, PHASE 0.000" *) input clk;
  input en;
  input ready;
  input [7:0]data;
  output send;
  output [7:0]char;

  wire [7:0]char;
  wire clk;
  wire [7:0]data;
  wire en;
  wire ready;
  wire rst;
  wire send;

  design_1_sender_0_0_sender U0
       (.char(char),
        .clk(clk),
        .data(data),
        .en(en),
        .ready(ready),
        .rst(rst),
        .send(send));
endmodule

(* ORIG_REF_NAME = "sender" *) 
module design_1_sender_0_0_sender
   (char,
    send,
    ready,
    en,
    clk,
    data,
    rst);
  output [7:0]char;
  output send;
  input ready;
  input en;
  input clk;
  input [7:0]data;
  input rst;

  wire \FSM_onehot_status[3]_i_2_n_0 ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_status_reg_n_0_[0] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_status_reg_n_0_[1] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_status_reg_n_0_[2] ;
  wire [7:0]char;
  wire \char[7]_i_1_n_0 ;
  wire \char[7]_i_2_n_0 ;
  wire clk;
  wire [7:0]data;
  wire en;
  wire ready;
  wire rst;
  wire send;
  wire send3_out;
  wire send_i_1_n_0;
  wire status;
  (* RTL_KEEP = "yes" *) wire sw;
  wire sw_i_1_n_0;
  wire sw_reg_n_0;

  LUT3 #(
    .INIT(8'hA2)) 
    \FSM_onehot_status[3]_i_1 
       (.I0(en),
        .I1(ready),
        .I2(rst),
        .O(status));
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_onehot_status[3]_i_2 
       (.I0(\FSM_onehot_status_reg_n_0_[2] ),
        .I1(sw),
        .O(\FSM_onehot_status[3]_i_2_n_0 ));
  (* FSM_ENCODED_STATES = "idle:0001,busya:0010,busyb:0100,busyc:1000" *) 
  (* KEEP = "yes" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_status_reg[0] 
       (.C(clk),
        .CE(en),
        .D(1'b0),
        .Q(\FSM_onehot_status_reg_n_0_[0] ),
        .S(status));
  (* FSM_ENCODED_STATES = "idle:0001,busya:0010,busyb:0100,busyc:1000" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_status_reg[1] 
       (.C(clk),
        .CE(en),
        .D(\FSM_onehot_status_reg_n_0_[0] ),
        .Q(\FSM_onehot_status_reg_n_0_[1] ),
        .R(status));
  (* FSM_ENCODED_STATES = "idle:0001,busya:0010,busyb:0100,busyc:1000" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_status_reg[2] 
       (.C(clk),
        .CE(en),
        .D(\FSM_onehot_status_reg_n_0_[1] ),
        .Q(\FSM_onehot_status_reg_n_0_[2] ),
        .R(status));
  (* FSM_ENCODED_STATES = "idle:0001,busya:0010,busyb:0100,busyc:1000" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_status_reg[3] 
       (.C(clk),
        .CE(en),
        .D(\FSM_onehot_status[3]_i_2_n_0 ),
        .Q(sw),
        .R(status));
  LUT2 #(
    .INIT(4'h8)) 
    \char[7]_i_1 
       (.I0(en),
        .I1(rst),
        .O(\char[7]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h4000)) 
    \char[7]_i_2 
       (.I0(sw_reg_n_0),
        .I1(\FSM_onehot_status_reg_n_0_[1] ),
        .I2(ready),
        .I3(en),
        .O(\char[7]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \char_reg[0] 
       (.C(clk),
        .CE(\char[7]_i_2_n_0 ),
        .D(data[0]),
        .Q(char[0]),
        .R(\char[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \char_reg[1] 
       (.C(clk),
        .CE(\char[7]_i_2_n_0 ),
        .D(data[1]),
        .Q(char[1]),
        .R(\char[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \char_reg[2] 
       (.C(clk),
        .CE(\char[7]_i_2_n_0 ),
        .D(data[2]),
        .Q(char[2]),
        .R(\char[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \char_reg[3] 
       (.C(clk),
        .CE(\char[7]_i_2_n_0 ),
        .D(data[3]),
        .Q(char[3]),
        .R(\char[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \char_reg[4] 
       (.C(clk),
        .CE(\char[7]_i_2_n_0 ),
        .D(data[4]),
        .Q(char[4]),
        .R(\char[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \char_reg[5] 
       (.C(clk),
        .CE(\char[7]_i_2_n_0 ),
        .D(data[5]),
        .Q(char[5]),
        .R(\char[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \char_reg[6] 
       (.C(clk),
        .CE(\char[7]_i_2_n_0 ),
        .D(data[6]),
        .Q(char[6]),
        .R(\char[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \char_reg[7] 
       (.C(clk),
        .CE(\char[7]_i_2_n_0 ),
        .D(data[7]),
        .Q(char[7]),
        .R(\char[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00CEEEEE)) 
    send_i_1
       (.I0(send),
        .I1(send3_out),
        .I2(\FSM_onehot_status_reg_n_0_[2] ),
        .I3(rst),
        .I4(en),
        .O(send_i_1_n_0));
  LUT4 #(
    .INIT(16'h0800)) 
    send_i_2
       (.I0(en),
        .I1(\FSM_onehot_status_reg_n_0_[1] ),
        .I2(sw_reg_n_0),
        .I3(ready),
        .O(send3_out));
  FDRE send_reg
       (.C(clk),
        .CE(1'b1),
        .D(send_i_1_n_0),
        .Q(send),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hD2D0D0D0F2F0F0F0)) 
    sw_i_1
       (.I0(en),
        .I1(rst),
        .I2(sw_reg_n_0),
        .I3(\FSM_onehot_status_reg_n_0_[1] ),
        .I4(ready),
        .I5(sw),
        .O(sw_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sw_reg
       (.C(clk),
        .CE(1'b1),
        .D(sw_i_1_n_0),
        .Q(sw_reg_n_0),
        .R(1'b0));
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
