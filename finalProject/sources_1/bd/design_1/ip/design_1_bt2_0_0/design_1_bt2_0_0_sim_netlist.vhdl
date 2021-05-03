-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
-- Date        : Sat May  1 21:24:06 2021
-- Host        : DESKTOP-F3H5B92 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               C:/Users/Mya/Documents/finalProject/finalProject.srcs/sources_1/bd/design_1/ip/design_1_bt2_0_0/design_1_bt2_0_0_sim_netlist.vhdl
-- Design      : design_1_bt2_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_bt2_0_0_bt2_rx is
  port (
    newChar : out STD_LOGIC;
    led : out STD_LOGIC_VECTOR ( 3 downto 0 );
    charRec : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clk : in STD_LOGIC;
    en : in STD_LOGIC;
    rst : in STD_LOGIC;
    rx : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_bt2_0_0_bt2_rx : entity is "bt2_rx";
end design_1_bt2_0_0_bt2_rx;

architecture STRUCTURE of design_1_bt2_0_0_bt2_rx is
  signal \FSM_onehot_curr[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_curr[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_curr[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_curr[2]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_curr[2]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_curr_reg_n_0_[0]\ : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \FSM_onehot_curr_reg_n_0_[0]\ : signal is "yes";
  signal \FSM_onehot_curr_reg_n_0_[1]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_curr_reg_n_0_[1]\ : signal is "yes";
  signal \FSM_onehot_curr_reg_n_0_[2]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_curr_reg_n_0_[2]\ : signal is "yes";
  signal \char[7]_i_1_n_0\ : STD_LOGIC;
  signal count : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \count[0]_i_1_n_0\ : STD_LOGIC;
  signal \count[2]_i_1_n_0\ : STD_LOGIC;
  signal count_0 : STD_LOGIC_VECTOR ( 2 downto 1 );
  signal \d_reg_n_0_[0]\ : STD_LOGIC;
  signal \d_reg_n_0_[1]\ : STD_LOGIC;
  signal \d_reg_n_0_[2]\ : STD_LOGIC;
  signal \d_reg_n_0_[3]\ : STD_LOGIC;
  signal \d_reg_n_0_[4]\ : STD_LOGIC;
  signal \d_reg_n_0_[5]\ : STD_LOGIC;
  signal \d_reg_n_0_[6]\ : STD_LOGIC;
  signal \d_reg_n_0_[7]\ : STD_LOGIC;
  signal \inshift_reg_n_0_[0]\ : STD_LOGIC;
  signal \^led\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \led[0]_i_1_n_0\ : STD_LOGIC;
  signal \led[1]_i_1_n_0\ : STD_LOGIC;
  signal \led[2]_i_1_n_0\ : STD_LOGIC;
  signal \led[3]_i_1_n_0\ : STD_LOGIC;
  signal maj : STD_LOGIC;
  signal \^newchar\ : STD_LOGIC;
  signal newChar_i_1_n_0 : STD_LOGIC;
  signal newChar_i_2_n_0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal p_1_in : STD_LOGIC;
  signal p_2_in : STD_LOGIC;
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_curr_reg[0]\ : label is "idle:001,start:010,data:100,";
  attribute KEEP : string;
  attribute KEEP of \FSM_onehot_curr_reg[0]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_curr_reg[1]\ : label is "idle:001,start:010,data:100,";
  attribute KEEP of \FSM_onehot_curr_reg[1]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_curr_reg[2]\ : label is "idle:001,start:010,data:100,";
  attribute KEEP of \FSM_onehot_curr_reg[2]\ : label is "yes";
begin
  led(3 downto 0) <= \^led\(3 downto 0);
  newChar <= \^newchar\;
\FSM_onehot_curr[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFE2"
    )
        port map (
      I0 => \FSM_onehot_curr_reg_n_0_[0]\,
      I1 => \FSM_onehot_curr[2]_i_2_n_0\,
      I2 => \FSM_onehot_curr_reg_n_0_[2]\,
      I3 => rst,
      O => \FSM_onehot_curr[0]_i_1_n_0\
    );
\FSM_onehot_curr[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \FSM_onehot_curr_reg_n_0_[1]\,
      I1 => \FSM_onehot_curr[2]_i_2_n_0\,
      I2 => \FSM_onehot_curr_reg_n_0_[0]\,
      I3 => rst,
      O => \FSM_onehot_curr[1]_i_1_n_0\
    );
\FSM_onehot_curr[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \FSM_onehot_curr_reg_n_0_[2]\,
      I1 => \FSM_onehot_curr[2]_i_2_n_0\,
      I2 => \FSM_onehot_curr_reg_n_0_[1]\,
      I3 => rst,
      O => \FSM_onehot_curr[2]_i_1_n_0\
    );
\FSM_onehot_curr[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABBFAAAAAAAAAAAA"
    )
        port map (
      I0 => \FSM_onehot_curr[2]_i_3_n_0\,
      I1 => p_2_in,
      I2 => p_1_in,
      I3 => p_0_in,
      I4 => en,
      I5 => \FSM_onehot_curr_reg_n_0_[0]\,
      O => \FSM_onehot_curr[2]_i_2_n_0\
    );
\FSM_onehot_curr[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAAAAAAA00000000"
    )
        port map (
      I0 => \FSM_onehot_curr_reg_n_0_[1]\,
      I1 => count(1),
      I2 => count(0),
      I3 => count(2),
      I4 => \FSM_onehot_curr_reg_n_0_[2]\,
      I5 => en,
      O => \FSM_onehot_curr[2]_i_3_n_0\
    );
\FSM_onehot_curr_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_onehot_curr[0]_i_1_n_0\,
      Q => \FSM_onehot_curr_reg_n_0_[0]\,
      R => '0'
    );
\FSM_onehot_curr_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_onehot_curr[1]_i_1_n_0\,
      Q => \FSM_onehot_curr_reg_n_0_[1]\,
      R => '0'
    );
\FSM_onehot_curr_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_onehot_curr[2]_i_1_n_0\,
      Q => \FSM_onehot_curr_reg_n_0_[2]\,
      R => '0'
    );
\char[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000080000000"
    )
        port map (
      I0 => count(1),
      I1 => count(0),
      I2 => count(2),
      I3 => \FSM_onehot_curr_reg_n_0_[2]\,
      I4 => en,
      I5 => rst,
      O => \char[7]_i_1_n_0\
    );
\char_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \char[7]_i_1_n_0\,
      D => \d_reg_n_0_[0]\,
      Q => charRec(0),
      R => '0'
    );
\char_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \char[7]_i_1_n_0\,
      D => \d_reg_n_0_[1]\,
      Q => charRec(1),
      R => '0'
    );
\char_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \char[7]_i_1_n_0\,
      D => \d_reg_n_0_[2]\,
      Q => charRec(2),
      R => '0'
    );
\char_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \char[7]_i_1_n_0\,
      D => \d_reg_n_0_[3]\,
      Q => charRec(3),
      R => '0'
    );
\char_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \char[7]_i_1_n_0\,
      D => \d_reg_n_0_[4]\,
      Q => charRec(4),
      R => '0'
    );
\char_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \char[7]_i_1_n_0\,
      D => \d_reg_n_0_[5]\,
      Q => charRec(5),
      R => '0'
    );
\char_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \char[7]_i_1_n_0\,
      D => \d_reg_n_0_[6]\,
      Q => charRec(6),
      R => '0'
    );
\char_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \char[7]_i_1_n_0\,
      D => \d_reg_n_0_[7]\,
      Q => charRec(7),
      R => '0'
    );
\count[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \FSM_onehot_curr_reg_n_0_[2]\,
      I1 => count(0),
      O => \count[0]_i_1_n_0\
    );
\count[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"48"
    )
        port map (
      I0 => count(0),
      I1 => \FSM_onehot_curr_reg_n_0_[2]\,
      I2 => count(1),
      O => count_0(1)
    );
\count[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFAAAA00000000"
    )
        port map (
      I0 => \FSM_onehot_curr_reg_n_0_[1]\,
      I1 => count(1),
      I2 => count(0),
      I3 => count(2),
      I4 => \FSM_onehot_curr_reg_n_0_[2]\,
      I5 => en,
      O => \count[2]_i_1_n_0\
    );
\count[2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7080"
    )
        port map (
      I0 => count(0),
      I1 => count(1),
      I2 => \FSM_onehot_curr_reg_n_0_[2]\,
      I3 => count(2),
      O => count_0(2)
    );
\count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[2]_i_1_n_0\,
      D => \count[0]_i_1_n_0\,
      Q => count(0),
      R => rst
    );
\count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[2]_i_1_n_0\,
      D => count_0(1),
      Q => count(1),
      R => rst
    );
\count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[2]_i_1_n_0\,
      D => count_0(2),
      Q => count(2),
      R => rst
    );
\d[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => p_2_in,
      I1 => p_1_in,
      I2 => p_0_in,
      O => maj
    );
\d_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[2]_i_1_n_0\,
      D => \d_reg_n_0_[1]\,
      Q => \d_reg_n_0_[0]\,
      R => rst
    );
\d_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[2]_i_1_n_0\,
      D => \d_reg_n_0_[2]\,
      Q => \d_reg_n_0_[1]\,
      R => rst
    );
\d_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[2]_i_1_n_0\,
      D => \d_reg_n_0_[3]\,
      Q => \d_reg_n_0_[2]\,
      R => rst
    );
\d_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[2]_i_1_n_0\,
      D => \d_reg_n_0_[4]\,
      Q => \d_reg_n_0_[3]\,
      R => rst
    );
\d_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[2]_i_1_n_0\,
      D => \d_reg_n_0_[5]\,
      Q => \d_reg_n_0_[4]\,
      R => rst
    );
\d_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[2]_i_1_n_0\,
      D => \d_reg_n_0_[6]\,
      Q => \d_reg_n_0_[5]\,
      R => rst
    );
\d_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[2]_i_1_n_0\,
      D => \d_reg_n_0_[7]\,
      Q => \d_reg_n_0_[6]\,
      R => rst
    );
\d_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[2]_i_1_n_0\,
      D => maj,
      Q => \d_reg_n_0_[7]\,
      R => rst
    );
\inshift_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => rx,
      Q => \inshift_reg_n_0_[0]\,
      R => '0'
    );
\inshift_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \inshift_reg_n_0_[0]\,
      Q => p_2_in,
      R => '0'
    );
\inshift_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => p_2_in,
      Q => p_0_in,
      R => '0'
    );
\inshift_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => p_0_in,
      Q => p_1_in,
      R => '0'
    );
\led[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => \d_reg_n_0_[3]\,
      I1 => \char[7]_i_1_n_0\,
      I2 => \d_reg_n_0_[7]\,
      I3 => \^led\(0),
      O => \led[0]_i_1_n_0\
    );
\led[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => \d_reg_n_0_[2]\,
      I1 => \char[7]_i_1_n_0\,
      I2 => \d_reg_n_0_[6]\,
      I3 => \^led\(1),
      O => \led[1]_i_1_n_0\
    );
\led[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => \d_reg_n_0_[1]\,
      I1 => \char[7]_i_1_n_0\,
      I2 => \d_reg_n_0_[5]\,
      I3 => \^led\(2),
      O => \led[2]_i_1_n_0\
    );
\led[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => \d_reg_n_0_[0]\,
      I1 => \char[7]_i_1_n_0\,
      I2 => \d_reg_n_0_[4]\,
      I3 => \^led\(3),
      O => \led[3]_i_1_n_0\
    );
\led_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \led[0]_i_1_n_0\,
      Q => \^led\(0),
      R => '0'
    );
\led_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \led[1]_i_1_n_0\,
      Q => \^led\(1),
      R => '0'
    );
\led_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \led[2]_i_1_n_0\,
      Q => \^led\(2),
      R => '0'
    );
\led_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \led[3]_i_1_n_0\,
      Q => \^led\(3),
      R => '0'
    );
newChar_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FEEE0222"
    )
        port map (
      I0 => \^newchar\,
      I1 => newChar_i_2_n_0,
      I2 => \FSM_onehot_curr_reg_n_0_[0]\,
      I3 => en,
      I4 => \FSM_onehot_curr_reg_n_0_[2]\,
      I5 => rst,
      O => newChar_i_1_n_0
    );
newChar_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => en,
      I1 => \FSM_onehot_curr_reg_n_0_[2]\,
      I2 => count(2),
      I3 => count(0),
      I4 => count(1),
      O => newChar_i_2_n_0
    );
newChar_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => newChar_i_1_n_0,
      Q => \^newchar\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_bt2_0_0_bt2_tx is
  port (
    ready : out STD_LOGIC;
    tx : out STD_LOGIC;
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    send : in STD_LOGIC;
    en : in STD_LOGIC;
    charSend : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_bt2_0_0_bt2_tx : entity is "bt2_tx";
end design_1_bt2_0_0_bt2_tx;

architecture STRUCTURE of design_1_bt2_0_0_bt2_tx is
  signal go : STD_LOGIC;
  signal go_i_1_n_0 : STD_LOGIC;
  signal idle : STD_LOGIC;
  signal idle_i_1_n_0 : STD_LOGIC;
  signal idle_i_2_n_0 : STD_LOGIC;
  signal \index[0]_i_1_n_0\ : STD_LOGIC;
  signal \index[1]_i_1_n_0\ : STD_LOGIC;
  signal \index[2]_i_1_n_0\ : STD_LOGIC;
  signal \index[2]_i_2_n_0\ : STD_LOGIC;
  signal \index_reg_n_0_[0]\ : STD_LOGIC;
  signal \index_reg_n_0_[1]\ : STD_LOGIC;
  signal \index_reg_n_0_[2]\ : STD_LOGIC;
  signal p_1_in : STD_LOGIC;
  signal \^ready\ : STD_LOGIC;
  signal ready_i_1_n_0 : STD_LOGIC;
  signal seq : STD_LOGIC;
  signal \seq_reg_n_0_[0]\ : STD_LOGIC;
  signal \seq_reg_n_0_[1]\ : STD_LOGIC;
  signal \seq_reg_n_0_[2]\ : STD_LOGIC;
  signal \seq_reg_n_0_[3]\ : STD_LOGIC;
  signal \seq_reg_n_0_[4]\ : STD_LOGIC;
  signal \seq_reg_n_0_[5]\ : STD_LOGIC;
  signal \seq_reg_n_0_[6]\ : STD_LOGIC;
  signal \^tx\ : STD_LOGIC;
  signal tx1_out : STD_LOGIC;
  signal tx_i_1_n_0 : STD_LOGIC;
  signal tx_i_3_n_0 : STD_LOGIC;
  signal tx_i_4_n_0 : STD_LOGIC;
  signal tx_i_5_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \index[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \index[1]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \index[2]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \index[2]_i_2\ : label is "soft_lutpair0";
begin
  ready <= \^ready\;
  tx <= \^tx\;
go_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BFA0"
    )
        port map (
      I0 => send,
      I1 => idle,
      I2 => en,
      I3 => go,
      O => go_i_1_n_0
    );
go_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => go_i_1_n_0,
      Q => go
    );
idle_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000F0F0F4F0F0F0"
    )
        port map (
      I0 => idle_i_2_n_0,
      I1 => \index_reg_n_0_[2]\,
      I2 => idle,
      I3 => go,
      I4 => en,
      I5 => send,
      O => idle_i_1_n_0
    );
idle_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \index_reg_n_0_[0]\,
      I1 => \index_reg_n_0_[1]\,
      O => idle_i_2_n_0
    );
idle_reg: unisim.vcomponents.FDPE
     port map (
      C => clk,
      CE => '1',
      D => idle_i_1_n_0,
      PRE => rst,
      Q => idle
    );
\index[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFF1000"
    )
        port map (
      I0 => idle,
      I1 => send,
      I2 => go,
      I3 => en,
      I4 => \index_reg_n_0_[0]\,
      O => \index[0]_i_1_n_0\
    );
\index[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \index_reg_n_0_[0]\,
      I1 => \index[2]_i_2_n_0\,
      I2 => \index_reg_n_0_[1]\,
      O => \index[1]_i_1_n_0\
    );
\index[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \index_reg_n_0_[1]\,
      I1 => \index_reg_n_0_[0]\,
      I2 => \index[2]_i_2_n_0\,
      I3 => \index_reg_n_0_[2]\,
      O => \index[2]_i_1_n_0\
    );
\index[2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => en,
      I1 => go,
      I2 => send,
      I3 => idle,
      O => \index[2]_i_2_n_0\
    );
\index_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \index[0]_i_1_n_0\,
      Q => \index_reg_n_0_[0]\
    );
\index_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \index[1]_i_1_n_0\,
      Q => \index_reg_n_0_[1]\
    );
\index_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \index[2]_i_1_n_0\,
      Q => \index_reg_n_0_[2]\
    );
ready_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5F40"
    )
        port map (
      I0 => send,
      I1 => idle,
      I2 => en,
      I3 => \^ready\,
      O => ready_i_1_n_0
    );
ready_reg: unisim.vcomponents.FDPE
     port map (
      C => clk,
      CE => '1',
      D => ready_i_1_n_0,
      PRE => rst,
      Q => \^ready\
    );
\seq[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => en,
      I1 => send,
      O => seq
    );
\seq_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => seq,
      CLR => rst,
      D => charSend(0),
      Q => \seq_reg_n_0_[0]\
    );
\seq_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => seq,
      CLR => rst,
      D => charSend(1),
      Q => \seq_reg_n_0_[1]\
    );
\seq_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => seq,
      CLR => rst,
      D => charSend(2),
      Q => \seq_reg_n_0_[2]\
    );
\seq_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => seq,
      CLR => rst,
      D => charSend(3),
      Q => \seq_reg_n_0_[3]\
    );
\seq_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => seq,
      CLR => rst,
      D => charSend(4),
      Q => \seq_reg_n_0_[4]\
    );
\seq_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => seq,
      CLR => rst,
      D => charSend(5),
      Q => \seq_reg_n_0_[5]\
    );
\seq_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => seq,
      CLR => rst,
      D => charSend(6),
      Q => \seq_reg_n_0_[6]\
    );
\seq_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => seq,
      CLR => rst,
      D => charSend(7),
      Q => p_1_in
    );
tx_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFAFAFBFA0A0A080"
    )
        port map (
      I0 => tx1_out,
      I1 => go,
      I2 => en,
      I3 => idle,
      I4 => send,
      I5 => \^tx\,
      O => tx_i_1_n_0
    );
tx_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFAEAEAFAE"
    )
        port map (
      I0 => tx_i_3_n_0,
      I1 => idle,
      I2 => send,
      I3 => tx_i_4_n_0,
      I4 => \index_reg_n_0_[0]\,
      I5 => tx_i_5_n_0,
      O => tx1_out
    );
tx_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4040400000004000"
    )
        port map (
      I0 => send,
      I1 => \index_reg_n_0_[0]\,
      I2 => \index_reg_n_0_[1]\,
      I3 => \seq_reg_n_0_[3]\,
      I4 => \index_reg_n_0_[2]\,
      I5 => p_1_in,
      O => tx_i_3_n_0
    );
tx_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \seq_reg_n_0_[6]\,
      I1 => \seq_reg_n_0_[2]\,
      I2 => \index_reg_n_0_[1]\,
      I3 => \seq_reg_n_0_[4]\,
      I4 => \index_reg_n_0_[2]\,
      I5 => \seq_reg_n_0_[0]\,
      O => tx_i_4_n_0
    );
tx_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0404040000000400"
    )
        port map (
      I0 => send,
      I1 => \index_reg_n_0_[0]\,
      I2 => \index_reg_n_0_[1]\,
      I3 => \seq_reg_n_0_[1]\,
      I4 => \index_reg_n_0_[2]\,
      I5 => \seq_reg_n_0_[5]\,
      O => tx_i_5_n_0
    );
tx_reg: unisim.vcomponents.FDPE
     port map (
      C => clk,
      CE => '1',
      D => tx_i_1_n_0,
      PRE => rst,
      Q => \^tx\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_bt2_0_0_bt2 is
  port (
    led : out STD_LOGIC_VECTOR ( 3 downto 0 );
    charRec : out STD_LOGIC_VECTOR ( 7 downto 0 );
    newChar : out STD_LOGIC;
    tx : out STD_LOGIC;
    ready : out STD_LOGIC;
    rst : in STD_LOGIC;
    clk : in STD_LOGIC;
    rx : in STD_LOGIC;
    send : in STD_LOGIC;
    en : in STD_LOGIC;
    charSend : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_bt2_0_0_bt2 : entity is "bt2";
end design_1_bt2_0_0_bt2;

architecture STRUCTURE of design_1_bt2_0_0_bt2 is
begin
r_x: entity work.design_1_bt2_0_0_bt2_rx
     port map (
      charRec(7 downto 0) => charRec(7 downto 0),
      clk => clk,
      en => en,
      led(3 downto 0) => led(3 downto 0),
      newChar => newChar,
      rst => rst,
      rx => rx
    );
t_x: entity work.design_1_bt2_0_0_bt2_tx
     port map (
      charSend(7 downto 0) => charSend(7 downto 0),
      clk => clk,
      en => en,
      ready => ready,
      rst => rst,
      send => send,
      tx => tx
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_bt2_0_0 is
  port (
    clk : in STD_LOGIC;
    en : in STD_LOGIC;
    send : in STD_LOGIC;
    rx : in STD_LOGIC;
    rst : in STD_LOGIC;
    charSend : in STD_LOGIC_VECTOR ( 7 downto 0 );
    ready : out STD_LOGIC;
    tx : out STD_LOGIC;
    newChar : out STD_LOGIC;
    led : out STD_LOGIC_VECTOR ( 3 downto 0 );
    charRec : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_bt2_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_bt2_0_0 : entity is "design_1_bt2_0_0,bt2,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_1_bt2_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of design_1_bt2_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of design_1_bt2_0_0 : entity is "bt2,Vivado 2018.2";
end design_1_bt2_0_0;

architecture STRUCTURE of design_1_bt2_0_0 is
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, PHASE 0.000";
  attribute x_interface_info of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute x_interface_parameter of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW";
begin
U0: entity work.design_1_bt2_0_0_bt2
     port map (
      charRec(7 downto 0) => charRec(7 downto 0),
      charSend(7 downto 0) => charSend(7 downto 0),
      clk => clk,
      en => en,
      led(3 downto 0) => led(3 downto 0),
      newChar => newChar,
      ready => ready,
      rst => rst,
      rx => rx,
      send => send,
      tx => tx
    );
end STRUCTURE;
