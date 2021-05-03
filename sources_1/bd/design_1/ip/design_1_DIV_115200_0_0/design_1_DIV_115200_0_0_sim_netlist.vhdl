-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
-- Date        : Sat May  1 21:26:44 2021
-- Host        : DESKTOP-F3H5B92 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               C:/Users/Mya/Documents/finalProject/finalProject.srcs/sources_1/bd/design_1/ip/design_1_DIV_115200_0_0/design_1_DIV_115200_0_0_sim_netlist.vhdl
-- Design      : design_1_DIV_115200_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_DIV_115200_0_0_DIV_115200 is
  port (
    div : out STD_LOGIC;
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_DIV_115200_0_0_DIV_115200 : entity is "DIV_115200";
end design_1_DIV_115200_0_0_DIV_115200;

architecture STRUCTURE of design_1_DIV_115200_0_0_DIV_115200 is
  signal \counter[10]_i_2_n_0\ : STD_LOGIC;
  signal \counter_reg__0\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal div_i_1_n_0 : STD_LOGIC;
  signal div_i_2_n_0 : STD_LOGIC;
  signal plusOp : STD_LOGIC_VECTOR ( 10 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \counter[1]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \counter[2]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \counter[3]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \counter[4]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \counter[6]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \counter[7]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \counter[8]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \counter[9]_i_1\ : label is "soft_lutpair0";
begin
\counter[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \counter_reg__0\(0),
      O => plusOp(0)
    );
\counter[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \counter_reg__0\(8),
      I1 => \counter_reg__0\(6),
      I2 => \counter[10]_i_2_n_0\,
      I3 => \counter_reg__0\(7),
      I4 => \counter_reg__0\(9),
      I5 => \counter_reg__0\(10),
      O => plusOp(10)
    );
\counter[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \counter_reg__0\(5),
      I1 => \counter_reg__0\(3),
      I2 => \counter_reg__0\(1),
      I3 => \counter_reg__0\(0),
      I4 => \counter_reg__0\(2),
      I5 => \counter_reg__0\(4),
      O => \counter[10]_i_2_n_0\
    );
\counter[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \counter_reg__0\(0),
      I1 => \counter_reg__0\(1),
      O => plusOp(1)
    );
\counter[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \counter_reg__0\(0),
      I1 => \counter_reg__0\(1),
      I2 => \counter_reg__0\(2),
      O => plusOp(2)
    );
\counter[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \counter_reg__0\(1),
      I1 => \counter_reg__0\(0),
      I2 => \counter_reg__0\(2),
      I3 => \counter_reg__0\(3),
      O => plusOp(3)
    );
\counter[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \counter_reg__0\(2),
      I1 => \counter_reg__0\(0),
      I2 => \counter_reg__0\(1),
      I3 => \counter_reg__0\(3),
      I4 => \counter_reg__0\(4),
      O => plusOp(4)
    );
\counter[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \counter_reg__0\(3),
      I1 => \counter_reg__0\(1),
      I2 => \counter_reg__0\(0),
      I3 => \counter_reg__0\(2),
      I4 => \counter_reg__0\(4),
      I5 => \counter_reg__0\(5),
      O => plusOp(5)
    );
\counter[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \counter[10]_i_2_n_0\,
      I1 => \counter_reg__0\(6),
      O => plusOp(6)
    );
\counter[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \counter[10]_i_2_n_0\,
      I1 => \counter_reg__0\(6),
      I2 => \counter_reg__0\(7),
      O => plusOp(7)
    );
\counter[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \counter_reg__0\(6),
      I1 => \counter[10]_i_2_n_0\,
      I2 => \counter_reg__0\(7),
      I3 => \counter_reg__0\(8),
      O => plusOp(8)
    );
\counter[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \counter_reg__0\(7),
      I1 => \counter[10]_i_2_n_0\,
      I2 => \counter_reg__0\(6),
      I3 => \counter_reg__0\(8),
      I4 => \counter_reg__0\(9),
      O => plusOp(9)
    );
\counter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => plusOp(0),
      Q => \counter_reg__0\(0),
      R => div_i_1_n_0
    );
\counter_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => plusOp(10),
      Q => \counter_reg__0\(10),
      R => div_i_1_n_0
    );
\counter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => plusOp(1),
      Q => \counter_reg__0\(1),
      R => div_i_1_n_0
    );
\counter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => plusOp(2),
      Q => \counter_reg__0\(2),
      R => div_i_1_n_0
    );
\counter_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => plusOp(3),
      Q => \counter_reg__0\(3),
      R => div_i_1_n_0
    );
\counter_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => plusOp(4),
      Q => \counter_reg__0\(4),
      R => div_i_1_n_0
    );
\counter_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => plusOp(5),
      Q => \counter_reg__0\(5),
      R => div_i_1_n_0
    );
\counter_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => plusOp(6),
      Q => \counter_reg__0\(6),
      R => div_i_1_n_0
    );
\counter_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => plusOp(7),
      Q => \counter_reg__0\(7),
      R => div_i_1_n_0
    );
\counter_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => plusOp(8),
      Q => \counter_reg__0\(8),
      R => div_i_1_n_0
    );
\counter_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => plusOp(9),
      Q => \counter_reg__0\(9),
      R => div_i_1_n_0
    );
div_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAAA2"
    )
        port map (
      I0 => \counter_reg__0\(10),
      I1 => div_i_2_n_0,
      I2 => \counter_reg__0\(8),
      I3 => \counter_reg__0\(9),
      I4 => \counter_reg__0\(7),
      I5 => \counter_reg__0\(6),
      O => div_i_1_n_0
    );
div_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7F7F7FFFFFFFFFFF"
    )
        port map (
      I0 => \counter_reg__0\(2),
      I1 => \counter_reg__0\(3),
      I2 => \counter_reg__0\(5),
      I3 => \counter_reg__0\(1),
      I4 => \counter_reg__0\(0),
      I5 => \counter_reg__0\(4),
      O => div_i_2_n_0
    );
div_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => div_i_1_n_0,
      Q => div,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_DIV_115200_0_0 is
  port (
    clk : in STD_LOGIC;
    div : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_DIV_115200_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_DIV_115200_0_0 : entity is "design_1_DIV_115200_0_0,DIV_115200,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_1_DIV_115200_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of design_1_DIV_115200_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of design_1_DIV_115200_0_0 : entity is "DIV_115200,Vivado 2018.2";
end design_1_DIV_115200_0_0;

architecture STRUCTURE of design_1_DIV_115200_0_0 is
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 100000000, PHASE 0.000";
begin
U0: entity work.design_1_DIV_115200_0_0_DIV_115200
     port map (
      clk => clk,
      div => div
    );
end STRUCTURE;
