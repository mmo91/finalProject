--Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
--Date        : Tue Apr 13 17:03:30 2021
--Host        : DESKTOP-F3H5B92 running 64-bit major release  (build 9200)
--Command     : generate_target top_design_wrapper.bd
--Design      : top_design_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity top_design_wrapper is
  port (
    CTS : out STD_LOGIC;
    RTS : out STD_LOGIC;
    RXD : out STD_LOGIC;
    TXD : in STD_LOGIC;
    btn : in STD_LOGIC;
    clk : in STD_LOGIC;
    vga_b : out STD_LOGIC_VECTOR ( 3 downto 0 );
    vga_g : out STD_LOGIC_VECTOR ( 3 downto 0 );
    vga_hs : out STD_LOGIC;
    vga_r : out STD_LOGIC_VECTOR ( 3 downto 0 );
    vga_vs : out STD_LOGIC
  );
end top_design_wrapper;

architecture STRUCTURE of top_design_wrapper is
  component top_design is
  port (
    clk : in STD_LOGIC;
    btn : in STD_LOGIC;
    vga_r : out STD_LOGIC_VECTOR ( 3 downto 0 );
    vga_b : out STD_LOGIC_VECTOR ( 3 downto 0 );
    vga_g : out STD_LOGIC_VECTOR ( 3 downto 0 );
    vga_hs : out STD_LOGIC;
    vga_vs : out STD_LOGIC;
    RXD : out STD_LOGIC;
    TXD : in STD_LOGIC;
    CTS : out STD_LOGIC;
    RTS : out STD_LOGIC
  );
  end component top_design;
begin
top_design_i: component top_design
     port map (
      CTS => CTS,
      RTS => RTS,
      RXD => RXD,
      TXD => TXD,
      btn => btn,
      clk => clk,
      vga_b(3 downto 0) => vga_b(3 downto 0),
      vga_g(3 downto 0) => vga_g(3 downto 0),
      vga_hs => vga_hs,
      vga_r(3 downto 0) => vga_r(3 downto 0),
      vga_vs => vga_vs
    );
end STRUCTURE;
