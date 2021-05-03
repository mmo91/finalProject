-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
-- Date        : Sat May  1 23:17:42 2021
-- Host        : DESKTOP-F3H5B92 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               C:/Users/Mya/Documents/finalProject/finalProject.srcs/sources_1/bd/design_1/ip/design_1_als_0_0/design_1_als_0_0_sim_netlist.vhdl
-- Design      : design_1_als_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_als_0_0_spi is
  port (
    cs : out STD_LOGIC_VECTOR ( 0 to 0 );
    als_data : out STD_LOGIC_VECTOR ( 7 downto 0 );
    sck : out STD_LOGIC;
    clk : in STD_LOGIC;
    sdo : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_als_0_0_spi : entity is "spi";
end design_1_als_0_0_spi;

architecture STRUCTURE of design_1_als_0_0_spi is
  signal \_inferred__0/i__carry__0_n_2\ : STD_LOGIC;
  signal \_inferred__0/i__carry__0_n_3\ : STD_LOGIC;
  signal \_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal count0 : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal \count0_carry__0_n_0\ : STD_LOGIC;
  signal \count0_carry__0_n_1\ : STD_LOGIC;
  signal \count0_carry__0_n_2\ : STD_LOGIC;
  signal \count0_carry__0_n_3\ : STD_LOGIC;
  signal \count0_carry__1_n_0\ : STD_LOGIC;
  signal \count0_carry__1_n_1\ : STD_LOGIC;
  signal \count0_carry__1_n_2\ : STD_LOGIC;
  signal \count0_carry__1_n_3\ : STD_LOGIC;
  signal \count0_carry__2_n_0\ : STD_LOGIC;
  signal \count0_carry__2_n_1\ : STD_LOGIC;
  signal \count0_carry__2_n_2\ : STD_LOGIC;
  signal \count0_carry__2_n_3\ : STD_LOGIC;
  signal \count0_carry__3_n_0\ : STD_LOGIC;
  signal \count0_carry__3_n_1\ : STD_LOGIC;
  signal \count0_carry__3_n_2\ : STD_LOGIC;
  signal \count0_carry__3_n_3\ : STD_LOGIC;
  signal \count0_carry__4_n_0\ : STD_LOGIC;
  signal \count0_carry__4_n_1\ : STD_LOGIC;
  signal \count0_carry__4_n_2\ : STD_LOGIC;
  signal \count0_carry__4_n_3\ : STD_LOGIC;
  signal \count0_carry__5_n_0\ : STD_LOGIC;
  signal \count0_carry__5_n_1\ : STD_LOGIC;
  signal \count0_carry__5_n_2\ : STD_LOGIC;
  signal \count0_carry__5_n_3\ : STD_LOGIC;
  signal \count0_carry__6_n_2\ : STD_LOGIC;
  signal \count0_carry__6_n_3\ : STD_LOGIC;
  signal count0_carry_n_0 : STD_LOGIC;
  signal count0_carry_n_1 : STD_LOGIC;
  signal count0_carry_n_2 : STD_LOGIC;
  signal count0_carry_n_3 : STD_LOGIC;
  signal \count[0]_i_1_n_0\ : STD_LOGIC;
  signal \count[10]_i_1_n_0\ : STD_LOGIC;
  signal \count[11]_i_1_n_0\ : STD_LOGIC;
  signal \count[12]_i_1_n_0\ : STD_LOGIC;
  signal \count[13]_i_1_n_0\ : STD_LOGIC;
  signal \count[14]_i_1_n_0\ : STD_LOGIC;
  signal \count[15]_i_1_n_0\ : STD_LOGIC;
  signal \count[16]_i_1_n_0\ : STD_LOGIC;
  signal \count[17]_i_1_n_0\ : STD_LOGIC;
  signal \count[18]_i_1_n_0\ : STD_LOGIC;
  signal \count[19]_i_1_n_0\ : STD_LOGIC;
  signal \count[1]_i_1_n_0\ : STD_LOGIC;
  signal \count[20]_i_1_n_0\ : STD_LOGIC;
  signal \count[21]_i_1_n_0\ : STD_LOGIC;
  signal \count[22]_i_1_n_0\ : STD_LOGIC;
  signal \count[23]_i_1_n_0\ : STD_LOGIC;
  signal \count[24]_i_1_n_0\ : STD_LOGIC;
  signal \count[25]_i_1_n_0\ : STD_LOGIC;
  signal \count[26]_i_1_n_0\ : STD_LOGIC;
  signal \count[27]_i_1_n_0\ : STD_LOGIC;
  signal \count[28]_i_1_n_0\ : STD_LOGIC;
  signal \count[29]_i_1_n_0\ : STD_LOGIC;
  signal \count[2]_i_1_n_0\ : STD_LOGIC;
  signal \count[30]_i_1_n_0\ : STD_LOGIC;
  signal \count[31]_i_1_n_0\ : STD_LOGIC;
  signal \count[31]_i_2_n_0\ : STD_LOGIC;
  signal \count[3]_i_1_n_0\ : STD_LOGIC;
  signal \count[4]_i_1_n_0\ : STD_LOGIC;
  signal \count[5]_i_1_n_0\ : STD_LOGIC;
  signal \count[6]_i_1_n_0\ : STD_LOGIC;
  signal \count[7]_i_1_n_0\ : STD_LOGIC;
  signal \count[8]_i_1_n_0\ : STD_LOGIC;
  signal \count[9]_i_1_n_0\ : STD_LOGIC;
  signal \count_reg_n_0_[0]\ : STD_LOGIC;
  signal \count_reg_n_0_[10]\ : STD_LOGIC;
  signal \count_reg_n_0_[11]\ : STD_LOGIC;
  signal \count_reg_n_0_[12]\ : STD_LOGIC;
  signal \count_reg_n_0_[13]\ : STD_LOGIC;
  signal \count_reg_n_0_[14]\ : STD_LOGIC;
  signal \count_reg_n_0_[15]\ : STD_LOGIC;
  signal \count_reg_n_0_[16]\ : STD_LOGIC;
  signal \count_reg_n_0_[17]\ : STD_LOGIC;
  signal \count_reg_n_0_[18]\ : STD_LOGIC;
  signal \count_reg_n_0_[19]\ : STD_LOGIC;
  signal \count_reg_n_0_[1]\ : STD_LOGIC;
  signal \count_reg_n_0_[20]\ : STD_LOGIC;
  signal \count_reg_n_0_[21]\ : STD_LOGIC;
  signal \count_reg_n_0_[22]\ : STD_LOGIC;
  signal \count_reg_n_0_[23]\ : STD_LOGIC;
  signal \count_reg_n_0_[24]\ : STD_LOGIC;
  signal \count_reg_n_0_[25]\ : STD_LOGIC;
  signal \count_reg_n_0_[26]\ : STD_LOGIC;
  signal \count_reg_n_0_[27]\ : STD_LOGIC;
  signal \count_reg_n_0_[28]\ : STD_LOGIC;
  signal \count_reg_n_0_[29]\ : STD_LOGIC;
  signal \count_reg_n_0_[2]\ : STD_LOGIC;
  signal \count_reg_n_0_[30]\ : STD_LOGIC;
  signal \count_reg_n_0_[31]\ : STD_LOGIC;
  signal \count_reg_n_0_[3]\ : STD_LOGIC;
  signal \count_reg_n_0_[4]\ : STD_LOGIC;
  signal \count_reg_n_0_[5]\ : STD_LOGIC;
  signal \count_reg_n_0_[6]\ : STD_LOGIC;
  signal \count_reg_n_0_[7]\ : STD_LOGIC;
  signal \count_reg_n_0_[8]\ : STD_LOGIC;
  signal \count_reg_n_0_[9]\ : STD_LOGIC;
  signal \^cs\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal data_flag_i_1_n_0 : STD_LOGIC;
  signal data_flag_reg_n_0 : STD_LOGIC;
  signal \i__carry__0_i_1_n_0\ : STD_LOGIC;
  signal \i__carry_i_1_n_0\ : STD_LOGIC;
  signal \i__carry_i_2_n_0\ : STD_LOGIC;
  signal \i__carry_i_3_n_0\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal rx_buff : STD_LOGIC_VECTOR ( 12 downto 5 );
  signal rx_buff0 : STD_LOGIC;
  signal \rx_buff_reg[4]_srl4_n_0\ : STD_LOGIC;
  signal \rx_buff_reg_n_0_[0]\ : STD_LOGIC;
  signal \rx_data[12]_i_1_n_0\ : STD_LOGIC;
  signal \^sck\ : STD_LOGIC;
  signal sclk14_in : STD_LOGIC;
  signal sclk_i_1_n_0 : STD_LOGIC;
  signal \ss_n0__0\ : STD_LOGIC;
  signal \ss_n1__10\ : STD_LOGIC;
  signal \ss_n1_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \ss_n1_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \ss_n1_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \ss_n1_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \ss_n1_carry__0_n_0\ : STD_LOGIC;
  signal \ss_n1_carry__0_n_1\ : STD_LOGIC;
  signal \ss_n1_carry__0_n_2\ : STD_LOGIC;
  signal \ss_n1_carry__0_n_3\ : STD_LOGIC;
  signal \ss_n1_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \ss_n1_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \ss_n1_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \ss_n1_carry__1_n_2\ : STD_LOGIC;
  signal \ss_n1_carry__1_n_3\ : STD_LOGIC;
  signal ss_n1_carry_i_1_n_0 : STD_LOGIC;
  signal ss_n1_carry_i_2_n_0 : STD_LOGIC;
  signal ss_n1_carry_i_3_n_0 : STD_LOGIC;
  signal ss_n1_carry_i_4_n_0 : STD_LOGIC;
  signal ss_n1_carry_n_0 : STD_LOGIC;
  signal ss_n1_carry_n_1 : STD_LOGIC;
  signal ss_n1_carry_n_2 : STD_LOGIC;
  signal ss_n1_carry_n_3 : STD_LOGIC;
  signal \ss_n[0]_i_1_n_0\ : STD_LOGIC;
  signal state : STD_LOGIC;
  signal state_i_1_n_0 : STD_LOGIC;
  signal togg : STD_LOGIC_VECTOR ( 5 downto 1 );
  signal togg0 : STD_LOGIC;
  signal \togg[0]_i_1_n_0\ : STD_LOGIC;
  signal \togg_reg_n_0_[0]\ : STD_LOGIC;
  signal \togg_reg_n_0_[1]\ : STD_LOGIC;
  signal \togg_reg_n_0_[2]\ : STD_LOGIC;
  signal \togg_reg_n_0_[3]\ : STD_LOGIC;
  signal \togg_reg_n_0_[4]\ : STD_LOGIC;
  signal \togg_reg_n_0_[5]\ : STD_LOGIC;
  signal \NLW__inferred__0/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW__inferred__0/i__carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW__inferred__0/i__carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_count0_carry__6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_count0_carry__6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_ss_n1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_ss_n1_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_ss_n1_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_ss_n1_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \count[0]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \count[10]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \count[11]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \count[12]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \count[13]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \count[14]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \count[15]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \count[16]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \count[17]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \count[18]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \count[19]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \count[20]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \count[21]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \count[22]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \count[23]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \count[24]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \count[25]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \count[26]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \count[27]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \count[28]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \count[29]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \count[2]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \count[30]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \count[31]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \count[3]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \count[4]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \count[5]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \count[6]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \count[7]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \count[8]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \count[9]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of data_flag_i_1 : label is "soft_lutpair1";
  attribute srl_bus_name : string;
  attribute srl_bus_name of \rx_buff_reg[4]_srl4\ : label is "\U0/u0/rx_buff_reg ";
  attribute srl_name : string;
  attribute srl_name of \rx_buff_reg[4]_srl4\ : label is "\U0/u0/rx_buff_reg[4]_srl4 ";
  attribute SOFT_HLUTNM of \togg[0]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \togg[2]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \togg[3]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \togg[4]_i_1\ : label is "soft_lutpair0";
begin
  cs(0) <= \^cs\(0);
  sck <= \^sck\;
\_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \_inferred__0/i__carry_n_0\,
      CO(2) => \_inferred__0/i__carry_n_1\,
      CO(1) => \_inferred__0/i__carry_n_2\,
      CO(0) => \_inferred__0/i__carry_n_3\,
      CYINIT => '1',
      DI(3) => \togg_reg_n_0_[3]\,
      DI(2) => \togg_reg_n_0_[2]\,
      DI(1) => \togg_reg_n_0_[1]\,
      DI(0) => \togg_reg_n_0_[0]\,
      O(3 downto 0) => \NLW__inferred__0/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_1_n_0\,
      S(2) => \i__carry_i_2_n_0\,
      S(1) => \i__carry_i_3_n_0\,
      S(0) => \togg_reg_n_0_[0]\
    );
\_inferred__0/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \_inferred__0/i__carry_n_0\,
      CO(3 downto 2) => \NLW__inferred__0/i__carry__0_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \_inferred__0/i__carry__0_n_2\,
      CO(0) => \_inferred__0/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \togg_reg_n_0_[5]\,
      DI(0) => \togg_reg_n_0_[4]\,
      O(3 downto 0) => \NLW__inferred__0/i__carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => \togg_reg_n_0_[5]\,
      S(0) => \i__carry__0_i_1_n_0\
    );
count0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => count0_carry_n_0,
      CO(2) => count0_carry_n_1,
      CO(1) => count0_carry_n_2,
      CO(0) => count0_carry_n_3,
      CYINIT => \count_reg_n_0_[0]\,
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => count0(4 downto 1),
      S(3) => \count_reg_n_0_[4]\,
      S(2) => \count_reg_n_0_[3]\,
      S(1) => \count_reg_n_0_[2]\,
      S(0) => \count_reg_n_0_[1]\
    );
\count0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => count0_carry_n_0,
      CO(3) => \count0_carry__0_n_0\,
      CO(2) => \count0_carry__0_n_1\,
      CO(1) => \count0_carry__0_n_2\,
      CO(0) => \count0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => count0(8 downto 5),
      S(3) => \count_reg_n_0_[8]\,
      S(2) => \count_reg_n_0_[7]\,
      S(1) => \count_reg_n_0_[6]\,
      S(0) => \count_reg_n_0_[5]\
    );
\count0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count0_carry__0_n_0\,
      CO(3) => \count0_carry__1_n_0\,
      CO(2) => \count0_carry__1_n_1\,
      CO(1) => \count0_carry__1_n_2\,
      CO(0) => \count0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => count0(12 downto 9),
      S(3) => \count_reg_n_0_[12]\,
      S(2) => \count_reg_n_0_[11]\,
      S(1) => \count_reg_n_0_[10]\,
      S(0) => \count_reg_n_0_[9]\
    );
\count0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \count0_carry__1_n_0\,
      CO(3) => \count0_carry__2_n_0\,
      CO(2) => \count0_carry__2_n_1\,
      CO(1) => \count0_carry__2_n_2\,
      CO(0) => \count0_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => count0(16 downto 13),
      S(3) => \count_reg_n_0_[16]\,
      S(2) => \count_reg_n_0_[15]\,
      S(1) => \count_reg_n_0_[14]\,
      S(0) => \count_reg_n_0_[13]\
    );
\count0_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \count0_carry__2_n_0\,
      CO(3) => \count0_carry__3_n_0\,
      CO(2) => \count0_carry__3_n_1\,
      CO(1) => \count0_carry__3_n_2\,
      CO(0) => \count0_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => count0(20 downto 17),
      S(3) => \count_reg_n_0_[20]\,
      S(2) => \count_reg_n_0_[19]\,
      S(1) => \count_reg_n_0_[18]\,
      S(0) => \count_reg_n_0_[17]\
    );
\count0_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \count0_carry__3_n_0\,
      CO(3) => \count0_carry__4_n_0\,
      CO(2) => \count0_carry__4_n_1\,
      CO(1) => \count0_carry__4_n_2\,
      CO(0) => \count0_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => count0(24 downto 21),
      S(3) => \count_reg_n_0_[24]\,
      S(2) => \count_reg_n_0_[23]\,
      S(1) => \count_reg_n_0_[22]\,
      S(0) => \count_reg_n_0_[21]\
    );
\count0_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \count0_carry__4_n_0\,
      CO(3) => \count0_carry__5_n_0\,
      CO(2) => \count0_carry__5_n_1\,
      CO(1) => \count0_carry__5_n_2\,
      CO(0) => \count0_carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => count0(28 downto 25),
      S(3) => \count_reg_n_0_[28]\,
      S(2) => \count_reg_n_0_[27]\,
      S(1) => \count_reg_n_0_[26]\,
      S(0) => \count_reg_n_0_[25]\
    );
\count0_carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \count0_carry__5_n_0\,
      CO(3 downto 2) => \NLW_count0_carry__6_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \count0_carry__6_n_2\,
      CO(0) => \count0_carry__6_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_count0_carry__6_O_UNCONNECTED\(3),
      O(2 downto 0) => count0(31 downto 29),
      S(3) => '0',
      S(2) => \count_reg_n_0_[31]\,
      S(1) => \count_reg_n_0_[30]\,
      S(0) => \count_reg_n_0_[29]\
    );
\count[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BFF0"
    )
        port map (
      I0 => \ss_n1__10\,
      I1 => state,
      I2 => rst,
      I3 => \count_reg_n_0_[0]\,
      O => \count[0]_i_1_n_0\
    );
\count[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => count0(10),
      I1 => \ss_n1__10\,
      O => \count[10]_i_1_n_0\
    );
\count[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => count0(11),
      I1 => \ss_n1__10\,
      O => \count[11]_i_1_n_0\
    );
\count[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => count0(12),
      I1 => \ss_n1__10\,
      O => \count[12]_i_1_n_0\
    );
\count[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => count0(13),
      I1 => \ss_n1__10\,
      O => \count[13]_i_1_n_0\
    );
\count[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => count0(14),
      I1 => \ss_n1__10\,
      O => \count[14]_i_1_n_0\
    );
\count[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => count0(15),
      I1 => \ss_n1__10\,
      O => \count[15]_i_1_n_0\
    );
\count[16]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => count0(16),
      I1 => \ss_n1__10\,
      O => \count[16]_i_1_n_0\
    );
\count[17]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => count0(17),
      I1 => \ss_n1__10\,
      O => \count[17]_i_1_n_0\
    );
\count[18]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => count0(18),
      I1 => \ss_n1__10\,
      O => \count[18]_i_1_n_0\
    );
\count[19]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => count0(19),
      I1 => \ss_n1__10\,
      O => \count[19]_i_1_n_0\
    );
\count[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => count0(1),
      I1 => \ss_n1__10\,
      O => \count[1]_i_1_n_0\
    );
\count[20]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => count0(20),
      I1 => \ss_n1__10\,
      O => \count[20]_i_1_n_0\
    );
\count[21]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => count0(21),
      I1 => \ss_n1__10\,
      O => \count[21]_i_1_n_0\
    );
\count[22]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => count0(22),
      I1 => \ss_n1__10\,
      O => \count[22]_i_1_n_0\
    );
\count[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => count0(23),
      I1 => \ss_n1__10\,
      O => \count[23]_i_1_n_0\
    );
\count[24]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => count0(24),
      I1 => \ss_n1__10\,
      O => \count[24]_i_1_n_0\
    );
\count[25]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => count0(25),
      I1 => \ss_n1__10\,
      O => \count[25]_i_1_n_0\
    );
\count[26]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => count0(26),
      I1 => \ss_n1__10\,
      O => \count[26]_i_1_n_0\
    );
\count[27]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => count0(27),
      I1 => \ss_n1__10\,
      O => \count[27]_i_1_n_0\
    );
\count[28]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => count0(28),
      I1 => \ss_n1__10\,
      O => \count[28]_i_1_n_0\
    );
\count[29]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => count0(29),
      I1 => \ss_n1__10\,
      O => \count[29]_i_1_n_0\
    );
\count[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => count0(2),
      I1 => \ss_n1__10\,
      O => \count[2]_i_1_n_0\
    );
\count[30]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => count0(30),
      I1 => \ss_n1__10\,
      O => \count[30]_i_1_n_0\
    );
\count[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => rst,
      I1 => state,
      O => \count[31]_i_1_n_0\
    );
\count[31]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => count0(31),
      I1 => \ss_n1__10\,
      O => \count[31]_i_2_n_0\
    );
\count[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => count0(3),
      I1 => \ss_n1__10\,
      O => \count[3]_i_1_n_0\
    );
\count[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => count0(4),
      I1 => \ss_n1__10\,
      O => \count[4]_i_1_n_0\
    );
\count[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => count0(5),
      I1 => \ss_n1__10\,
      O => \count[5]_i_1_n_0\
    );
\count[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => count0(6),
      I1 => \ss_n1__10\,
      O => \count[6]_i_1_n_0\
    );
\count[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => count0(7),
      I1 => \ss_n1__10\,
      O => \count[7]_i_1_n_0\
    );
\count[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => count0(8),
      I1 => \ss_n1__10\,
      O => \count[8]_i_1_n_0\
    );
\count[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => count0(9),
      I1 => \ss_n1__10\,
      O => \count[9]_i_1_n_0\
    );
\count_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \count[0]_i_1_n_0\,
      Q => \count_reg_n_0_[0]\,
      R => '0'
    );
\count_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => rst,
      D => \count[10]_i_1_n_0\,
      Q => \count_reg_n_0_[10]\,
      R => \count[31]_i_1_n_0\
    );
\count_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => rst,
      D => \count[11]_i_1_n_0\,
      Q => \count_reg_n_0_[11]\,
      R => \count[31]_i_1_n_0\
    );
\count_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => rst,
      D => \count[12]_i_1_n_0\,
      Q => \count_reg_n_0_[12]\,
      R => \count[31]_i_1_n_0\
    );
\count_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => rst,
      D => \count[13]_i_1_n_0\,
      Q => \count_reg_n_0_[13]\,
      R => \count[31]_i_1_n_0\
    );
\count_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => rst,
      D => \count[14]_i_1_n_0\,
      Q => \count_reg_n_0_[14]\,
      R => \count[31]_i_1_n_0\
    );
\count_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => rst,
      D => \count[15]_i_1_n_0\,
      Q => \count_reg_n_0_[15]\,
      R => \count[31]_i_1_n_0\
    );
\count_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => rst,
      D => \count[16]_i_1_n_0\,
      Q => \count_reg_n_0_[16]\,
      R => \count[31]_i_1_n_0\
    );
\count_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => rst,
      D => \count[17]_i_1_n_0\,
      Q => \count_reg_n_0_[17]\,
      R => \count[31]_i_1_n_0\
    );
\count_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => rst,
      D => \count[18]_i_1_n_0\,
      Q => \count_reg_n_0_[18]\,
      R => \count[31]_i_1_n_0\
    );
\count_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => rst,
      D => \count[19]_i_1_n_0\,
      Q => \count_reg_n_0_[19]\,
      R => \count[31]_i_1_n_0\
    );
\count_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => rst,
      D => \count[1]_i_1_n_0\,
      Q => \count_reg_n_0_[1]\,
      R => \count[31]_i_1_n_0\
    );
\count_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => rst,
      D => \count[20]_i_1_n_0\,
      Q => \count_reg_n_0_[20]\,
      R => \count[31]_i_1_n_0\
    );
\count_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => rst,
      D => \count[21]_i_1_n_0\,
      Q => \count_reg_n_0_[21]\,
      R => \count[31]_i_1_n_0\
    );
\count_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => rst,
      D => \count[22]_i_1_n_0\,
      Q => \count_reg_n_0_[22]\,
      R => \count[31]_i_1_n_0\
    );
\count_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => rst,
      D => \count[23]_i_1_n_0\,
      Q => \count_reg_n_0_[23]\,
      R => \count[31]_i_1_n_0\
    );
\count_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => rst,
      D => \count[24]_i_1_n_0\,
      Q => \count_reg_n_0_[24]\,
      R => \count[31]_i_1_n_0\
    );
\count_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => rst,
      D => \count[25]_i_1_n_0\,
      Q => \count_reg_n_0_[25]\,
      R => \count[31]_i_1_n_0\
    );
\count_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => rst,
      D => \count[26]_i_1_n_0\,
      Q => \count_reg_n_0_[26]\,
      R => \count[31]_i_1_n_0\
    );
\count_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => rst,
      D => \count[27]_i_1_n_0\,
      Q => \count_reg_n_0_[27]\,
      R => \count[31]_i_1_n_0\
    );
\count_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => rst,
      D => \count[28]_i_1_n_0\,
      Q => \count_reg_n_0_[28]\,
      R => \count[31]_i_1_n_0\
    );
\count_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => rst,
      D => \count[29]_i_1_n_0\,
      Q => \count_reg_n_0_[29]\,
      R => \count[31]_i_1_n_0\
    );
\count_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => rst,
      D => \count[2]_i_1_n_0\,
      Q => \count_reg_n_0_[2]\,
      R => \count[31]_i_1_n_0\
    );
\count_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => rst,
      D => \count[30]_i_1_n_0\,
      Q => \count_reg_n_0_[30]\,
      R => \count[31]_i_1_n_0\
    );
\count_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => rst,
      D => \count[31]_i_2_n_0\,
      Q => \count_reg_n_0_[31]\,
      R => \count[31]_i_1_n_0\
    );
\count_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => rst,
      D => \count[3]_i_1_n_0\,
      Q => \count_reg_n_0_[3]\,
      R => \count[31]_i_1_n_0\
    );
\count_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => rst,
      D => \count[4]_i_1_n_0\,
      Q => \count_reg_n_0_[4]\,
      R => \count[31]_i_1_n_0\
    );
\count_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => rst,
      D => \count[5]_i_1_n_0\,
      Q => \count_reg_n_0_[5]\,
      R => \count[31]_i_1_n_0\
    );
\count_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => rst,
      D => \count[6]_i_1_n_0\,
      Q => \count_reg_n_0_[6]\,
      R => \count[31]_i_1_n_0\
    );
\count_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => rst,
      D => \count[7]_i_1_n_0\,
      Q => \count_reg_n_0_[7]\,
      R => \count[31]_i_1_n_0\
    );
\count_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => rst,
      D => \count[8]_i_1_n_0\,
      Q => \count_reg_n_0_[8]\,
      R => \count[31]_i_1_n_0\
    );
\count_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => rst,
      D => \count[9]_i_1_n_0\,
      Q => \count_reg_n_0_[9]\,
      R => \count[31]_i_1_n_0\
    );
data_flag_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"60AA"
    )
        port map (
      I0 => data_flag_reg_n_0,
      I1 => \ss_n1__10\,
      I2 => state,
      I3 => rst,
      O => data_flag_i_1_n_0
    );
data_flag_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => data_flag_i_1_n_0,
      Q => data_flag_reg_n_0,
      R => '0'
    );
\i__carry__0_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \togg_reg_n_0_[4]\,
      O => \i__carry__0_i_1_n_0\
    );
\i__carry_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \togg_reg_n_0_[3]\,
      O => \i__carry_i_1_n_0\
    );
\i__carry_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \togg_reg_n_0_[2]\,
      O => \i__carry_i_2_n_0\
    );
\i__carry_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \togg_reg_n_0_[1]\,
      O => \i__carry_i_3_n_0\
    );
\rx_buff[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000002000000000"
    )
        port map (
      I0 => rst,
      I1 => \^cs\(0),
      I2 => \ss_n1__10\,
      I3 => data_flag_reg_n_0,
      I4 => \_inferred__0/i__carry__0_n_2\,
      I5 => state,
      O => rx_buff0
    );
\rx_buff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => rx_buff0,
      D => sdo,
      Q => \rx_buff_reg_n_0_[0]\,
      R => '0'
    );
\rx_buff_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => rx_buff0,
      D => rx_buff(9),
      Q => rx_buff(10),
      R => '0'
    );
\rx_buff_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => rx_buff0,
      D => rx_buff(10),
      Q => rx_buff(11),
      R => '0'
    );
\rx_buff_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => rx_buff0,
      D => rx_buff(11),
      Q => rx_buff(12),
      R => '0'
    );
\rx_buff_reg[4]_srl4\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => rx_buff0,
      CLK => clk,
      D => \rx_buff_reg_n_0_[0]\,
      Q => \rx_buff_reg[4]_srl4_n_0\
    );
\rx_buff_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => rx_buff0,
      D => \rx_buff_reg[4]_srl4_n_0\,
      Q => rx_buff(5),
      R => '0'
    );
\rx_buff_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => rx_buff0,
      D => rx_buff(5),
      Q => rx_buff(6),
      R => '0'
    );
\rx_buff_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => rx_buff0,
      D => rx_buff(6),
      Q => rx_buff(7),
      R => '0'
    );
\rx_buff_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => rx_buff0,
      D => rx_buff(7),
      Q => rx_buff(8),
      R => '0'
    );
\rx_buff_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => rx_buff0,
      D => rx_buff(8),
      Q => rx_buff(9),
      R => '0'
    );
\rx_data[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => state,
      I1 => \ss_n0__0\,
      I2 => \ss_n1__10\,
      O => \rx_data[12]_i_1_n_0\
    );
\rx_data_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \rx_data[12]_i_1_n_0\,
      CLR => p_0_in,
      D => rx_buff(10),
      Q => als_data(5)
    );
\rx_data_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \rx_data[12]_i_1_n_0\,
      CLR => p_0_in,
      D => rx_buff(11),
      Q => als_data(6)
    );
\rx_data_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \rx_data[12]_i_1_n_0\,
      CLR => p_0_in,
      D => rx_buff(12),
      Q => als_data(7)
    );
\rx_data_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \rx_data[12]_i_1_n_0\,
      CLR => p_0_in,
      D => rx_buff(5),
      Q => als_data(0)
    );
\rx_data_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \rx_data[12]_i_1_n_0\,
      CLR => p_0_in,
      D => rx_buff(6),
      Q => als_data(1)
    );
\rx_data_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \rx_data[12]_i_1_n_0\,
      CLR => p_0_in,
      D => rx_buff(7),
      Q => als_data(2)
    );
\rx_data_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \rx_data[12]_i_1_n_0\,
      CLR => p_0_in,
      D => rx_buff(8),
      Q => als_data(3)
    );
\rx_data_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \rx_data[12]_i_1_n_0\,
      CLR => p_0_in,
      D => rx_buff(9),
      Q => als_data(4)
    );
sclk_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9AAAFFFFAAAAAAAA"
    )
        port map (
      I0 => \^sck\,
      I1 => \^cs\(0),
      I2 => \ss_n1__10\,
      I3 => sclk14_in,
      I4 => state,
      I5 => rst,
      O => sclk_i_1_n_0
    );
sclk_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555555555555557"
    )
        port map (
      I0 => \togg_reg_n_0_[5]\,
      I1 => \togg_reg_n_0_[2]\,
      I2 => \togg_reg_n_0_[4]\,
      I3 => \togg_reg_n_0_[0]\,
      I4 => \togg_reg_n_0_[1]\,
      I5 => \togg_reg_n_0_[3]\,
      O => sclk14_in
    );
sclk_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => sclk_i_1_n_0,
      Q => \^sck\,
      R => '0'
    );
ss_n1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => ss_n1_carry_n_0,
      CO(2) => ss_n1_carry_n_1,
      CO(1) => ss_n1_carry_n_2,
      CO(0) => ss_n1_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_ss_n1_carry_O_UNCONNECTED(3 downto 0),
      S(3) => ss_n1_carry_i_1_n_0,
      S(2) => ss_n1_carry_i_2_n_0,
      S(1) => ss_n1_carry_i_3_n_0,
      S(0) => ss_n1_carry_i_4_n_0
    );
\ss_n1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => ss_n1_carry_n_0,
      CO(3) => \ss_n1_carry__0_n_0\,
      CO(2) => \ss_n1_carry__0_n_1\,
      CO(1) => \ss_n1_carry__0_n_2\,
      CO(0) => \ss_n1_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_ss_n1_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \ss_n1_carry__0_i_1_n_0\,
      S(2) => \ss_n1_carry__0_i_2_n_0\,
      S(1) => \ss_n1_carry__0_i_3_n_0\,
      S(0) => \ss_n1_carry__0_i_4_n_0\
    );
\ss_n1_carry__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \count_reg_n_0_[23]\,
      I1 => \count_reg_n_0_[22]\,
      I2 => \count_reg_n_0_[21]\,
      O => \ss_n1_carry__0_i_1_n_0\
    );
\ss_n1_carry__0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \count_reg_n_0_[20]\,
      I1 => \count_reg_n_0_[19]\,
      I2 => \count_reg_n_0_[18]\,
      O => \ss_n1_carry__0_i_2_n_0\
    );
\ss_n1_carry__0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \count_reg_n_0_[17]\,
      I1 => \count_reg_n_0_[16]\,
      I2 => \count_reg_n_0_[15]\,
      O => \ss_n1_carry__0_i_3_n_0\
    );
\ss_n1_carry__0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \count_reg_n_0_[14]\,
      I1 => \count_reg_n_0_[13]\,
      I2 => \count_reg_n_0_[12]\,
      O => \ss_n1_carry__0_i_4_n_0\
    );
\ss_n1_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \ss_n1_carry__0_n_0\,
      CO(3) => \NLW_ss_n1_carry__1_CO_UNCONNECTED\(3),
      CO(2) => \ss_n1__10\,
      CO(1) => \ss_n1_carry__1_n_2\,
      CO(0) => \ss_n1_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_ss_n1_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2) => \ss_n1_carry__1_i_1_n_0\,
      S(1) => \ss_n1_carry__1_i_2_n_0\,
      S(0) => \ss_n1_carry__1_i_3_n_0\
    );
\ss_n1_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \count_reg_n_0_[30]\,
      I1 => \count_reg_n_0_[31]\,
      O => \ss_n1_carry__1_i_1_n_0\
    );
\ss_n1_carry__1_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \count_reg_n_0_[29]\,
      I1 => \count_reg_n_0_[28]\,
      I2 => \count_reg_n_0_[27]\,
      O => \ss_n1_carry__1_i_2_n_0\
    );
\ss_n1_carry__1_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \count_reg_n_0_[26]\,
      I1 => \count_reg_n_0_[25]\,
      I2 => \count_reg_n_0_[24]\,
      O => \ss_n1_carry__1_i_3_n_0\
    );
ss_n1_carry_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \count_reg_n_0_[11]\,
      I1 => \count_reg_n_0_[10]\,
      I2 => \count_reg_n_0_[9]\,
      O => ss_n1_carry_i_1_n_0
    );
ss_n1_carry_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \count_reg_n_0_[8]\,
      I1 => \count_reg_n_0_[7]\,
      I2 => \count_reg_n_0_[6]\,
      O => ss_n1_carry_i_2_n_0
    );
ss_n1_carry_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \count_reg_n_0_[5]\,
      I1 => \count_reg_n_0_[4]\,
      I2 => \count_reg_n_0_[3]\,
      O => ss_n1_carry_i_3_n_0
    );
ss_n1_carry_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \count_reg_n_0_[0]\,
      I1 => \count_reg_n_0_[2]\,
      I2 => \count_reg_n_0_[1]\,
      O => ss_n1_carry_i_4_n_0
    );
\ss_n[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8F"
    )
        port map (
      I0 => \ss_n1__10\,
      I1 => \ss_n0__0\,
      I2 => state,
      O => \ss_n[0]_i_1_n_0\
    );
\ss_n[0]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rst,
      O => p_0_in
    );
\ss_n[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000001000"
    )
        port map (
      I0 => \togg_reg_n_0_[1]\,
      I1 => \togg_reg_n_0_[4]\,
      I2 => \togg_reg_n_0_[5]\,
      I3 => \togg_reg_n_0_[0]\,
      I4 => \togg_reg_n_0_[3]\,
      I5 => \togg_reg_n_0_[2]\,
      O => \ss_n0__0\
    );
\ss_n_reg[0]\: unisim.vcomponents.FDPE
     port map (
      C => clk,
      CE => '1',
      D => \ss_n[0]_i_1_n_0\,
      PRE => p_0_in,
      Q => \^cs\(0)
    );
state_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \ss_n0__0\,
      I1 => \ss_n1__10\,
      I2 => state,
      O => state_i_1_n_0
    );
state_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => p_0_in,
      D => state_i_1_n_0,
      Q => state
    );
\togg[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \togg_reg_n_0_[0]\,
      O => \togg[0]_i_1_n_0\
    );
\togg[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FEFF0000FFFF00"
    )
        port map (
      I0 => \togg_reg_n_0_[2]\,
      I1 => \togg_reg_n_0_[4]\,
      I2 => \togg_reg_n_0_[3]\,
      I3 => \togg_reg_n_0_[1]\,
      I4 => \togg_reg_n_0_[0]\,
      I5 => \togg_reg_n_0_[5]\,
      O => togg(1)
    );
\togg[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \togg_reg_n_0_[2]\,
      I1 => \togg_reg_n_0_[1]\,
      I2 => \togg_reg_n_0_[0]\,
      O => togg(2)
    );
\togg[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6CCC"
    )
        port map (
      I0 => \togg_reg_n_0_[2]\,
      I1 => \togg_reg_n_0_[3]\,
      I2 => \togg_reg_n_0_[1]\,
      I3 => \togg_reg_n_0_[0]\,
      O => togg(3)
    );
\togg[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6CCCCCCC"
    )
        port map (
      I0 => \togg_reg_n_0_[2]\,
      I1 => \togg_reg_n_0_[4]\,
      I2 => \togg_reg_n_0_[3]\,
      I3 => \togg_reg_n_0_[1]\,
      I4 => \togg_reg_n_0_[0]\,
      O => togg(4)
    );
\togg[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => rst,
      I1 => \ss_n1__10\,
      I2 => state,
      O => togg0
    );
\togg[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFEFFFF80000000"
    )
        port map (
      I0 => \togg_reg_n_0_[2]\,
      I1 => \togg_reg_n_0_[4]\,
      I2 => \togg_reg_n_0_[3]\,
      I3 => \togg_reg_n_0_[1]\,
      I4 => \togg_reg_n_0_[0]\,
      I5 => \togg_reg_n_0_[5]\,
      O => togg(5)
    );
\togg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => togg0,
      D => \togg[0]_i_1_n_0\,
      Q => \togg_reg_n_0_[0]\,
      R => \count[31]_i_1_n_0\
    );
\togg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => togg0,
      D => togg(1),
      Q => \togg_reg_n_0_[1]\,
      R => \count[31]_i_1_n_0\
    );
\togg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => togg0,
      D => togg(2),
      Q => \togg_reg_n_0_[2]\,
      R => \count[31]_i_1_n_0\
    );
\togg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => togg0,
      D => togg(3),
      Q => \togg_reg_n_0_[3]\,
      R => \count[31]_i_1_n_0\
    );
\togg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => togg0,
      D => togg(4),
      Q => \togg_reg_n_0_[4]\,
      R => \count[31]_i_1_n_0\
    );
\togg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => togg0,
      D => togg(5),
      Q => \togg_reg_n_0_[5]\,
      R => \count[31]_i_1_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_als_0_0_als is
  port (
    cs : out STD_LOGIC_VECTOR ( 0 to 0 );
    als_data : out STD_LOGIC_VECTOR ( 7 downto 0 );
    sck : out STD_LOGIC;
    clk : in STD_LOGIC;
    sdo : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_als_0_0_als : entity is "als";
end design_1_als_0_0_als;

architecture STRUCTURE of design_1_als_0_0_als is
begin
u0: entity work.design_1_als_0_0_spi
     port map (
      als_data(7 downto 0) => als_data(7 downto 0),
      clk => clk,
      cs(0) => cs(0),
      rst => rst,
      sck => sck,
      sdo => sdo
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_als_0_0 is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    sdo : in STD_LOGIC;
    sck : out STD_LOGIC;
    cs : out STD_LOGIC_VECTOR ( 0 to 0 );
    als_data : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_als_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_als_0_0 : entity is "design_1_als_0_0,als,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_1_als_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of design_1_als_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of design_1_als_0_0 : entity is "als,Vivado 2018.2";
end design_1_als_0_0;

architecture STRUCTURE of design_1_als_0_0 is
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, PHASE 0.000";
  attribute x_interface_info of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute x_interface_parameter of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW";
begin
U0: entity work.design_1_als_0_0_als
     port map (
      als_data(7 downto 0) => als_data(7 downto 0),
      clk => clk,
      cs(0) => cs(0),
      rst => rst,
      sck => sck,
      sdo => sdo
    );
end STRUCTURE;
