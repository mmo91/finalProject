--Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
--Date        : Sat May  1 23:17:03 2021
--Host        : DESKTOP-F3H5B92 running 64-bit major release  (build 9200)
--Command     : generate_target design_1_wrapper.bd
--Design      : design_1_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_wrapper is
  port (
    CS : out STD_LOGIC_VECTOR ( 0 to 0 );
    CTS : out STD_LOGIC;
    RTS : out STD_LOGIC;
    RXD_B : out STD_LOGIC;
    RXD_U : out STD_LOGIC;
    SCK : out STD_LOGIC;
    SDO : in STD_LOGIC;
    TXD_B : in STD_LOGIC;
    TXD_U : in STD_LOGIC;
    clk : in STD_LOGIC;
    led : out STD_LOGIC_VECTOR ( 3 downto 0 );
    rst_als : in STD_LOGIC;
    rst_bt : in STD_LOGIC;
    rst_uart : in STD_LOGIC
  );
end design_1_wrapper;

architecture STRUCTURE of design_1_wrapper is
  component design_1 is
  port (
    CTS : out STD_LOGIC;
    RTS : out STD_LOGIC;
    clk : in STD_LOGIC;
    rst_uart : in STD_LOGIC;
    rst_bt : in STD_LOGIC;
    rst_als : in STD_LOGIC;
    SDO : in STD_LOGIC;
    CS : out STD_LOGIC_VECTOR ( 0 to 0 );
    SCK : out STD_LOGIC;
    led : out STD_LOGIC_VECTOR ( 3 downto 0 );
    TXD_U : in STD_LOGIC;
    TXD_B : in STD_LOGIC;
    RXD_B : out STD_LOGIC;
    RXD_U : out STD_LOGIC
  );
  end component design_1;
begin
design_1_i: component design_1
     port map (
      CS(0) => CS(0),
      CTS => CTS,
      RTS => RTS,
      RXD_B => RXD_B,
      RXD_U => RXD_U,
      SCK => SCK,
      SDO => SDO,
      TXD_B => TXD_B,
      TXD_U => TXD_U,
      clk => clk,
      led(3 downto 0) => led(3 downto 0),
      rst_als => rst_als,
      rst_bt => rst_bt,
      rst_uart => rst_uart
    );
end STRUCTURE;
