-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
-- Date        : Sat May  1 21:26:44 2021
-- Host        : DESKTOP-F3H5B92 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               C:/Users/Mya/Documents/finalProject/finalProject.srcs/sources_1/bd/design_1/ip/design_1_DIV_115200_0_0/design_1_DIV_115200_0_0_stub.vhdl
-- Design      : design_1_DIV_115200_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_DIV_115200_0_0 is
  Port ( 
    clk : in STD_LOGIC;
    div : out STD_LOGIC
  );

end design_1_DIV_115200_0_0;

architecture stub of design_1_DIV_115200_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,div";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "DIV_115200,Vivado 2018.2";
begin
end;
