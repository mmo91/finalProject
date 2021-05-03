-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
-- Date        : Sat May  1 21:22:18 2021
-- Host        : DESKTOP-F3H5B92 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/Mya/Documents/finalProject/finalProject.srcs/sources_1/bd/design_1/ip/design_1_sender_0_0/design_1_sender_0_0_sim_netlist.vhdl
-- Design      : design_1_sender_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_sender_0_0_sender is
  port (
    char : out STD_LOGIC_VECTOR ( 7 downto 0 );
    send : out STD_LOGIC;
    ready : in STD_LOGIC;
    en : in STD_LOGIC;
    clk : in STD_LOGIC;
    data : in STD_LOGIC_VECTOR ( 7 downto 0 );
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_sender_0_0_sender : entity is "sender";
end design_1_sender_0_0_sender;

architecture STRUCTURE of design_1_sender_0_0_sender is
  signal \FSM_onehot_status[3]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_status_reg_n_0_[0]\ : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \FSM_onehot_status_reg_n_0_[0]\ : signal is "yes";
  signal \FSM_onehot_status_reg_n_0_[1]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_status_reg_n_0_[1]\ : signal is "yes";
  signal \FSM_onehot_status_reg_n_0_[2]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_status_reg_n_0_[2]\ : signal is "yes";
  signal \char[7]_i_1_n_0\ : STD_LOGIC;
  signal \char[7]_i_2_n_0\ : STD_LOGIC;
  signal \^send\ : STD_LOGIC;
  signal send3_out : STD_LOGIC;
  signal send_i_1_n_0 : STD_LOGIC;
  signal status : STD_LOGIC;
  signal sw : STD_LOGIC;
  attribute RTL_KEEP of sw : signal is "yes";
  signal sw_i_1_n_0 : STD_LOGIC;
  signal sw_reg_n_0 : STD_LOGIC;
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_status_reg[0]\ : label is "idle:0001,busya:0010,busyb:0100,busyc:1000";
  attribute KEEP : string;
  attribute KEEP of \FSM_onehot_status_reg[0]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_status_reg[1]\ : label is "idle:0001,busya:0010,busyb:0100,busyc:1000";
  attribute KEEP of \FSM_onehot_status_reg[1]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_status_reg[2]\ : label is "idle:0001,busya:0010,busyb:0100,busyc:1000";
  attribute KEEP of \FSM_onehot_status_reg[2]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_status_reg[3]\ : label is "idle:0001,busya:0010,busyb:0100,busyc:1000";
  attribute KEEP of \FSM_onehot_status_reg[3]\ : label is "yes";
begin
  send <= \^send\;
\FSM_onehot_status[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A2"
    )
        port map (
      I0 => en,
      I1 => ready,
      I2 => rst,
      O => status
    );
\FSM_onehot_status[3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \FSM_onehot_status_reg_n_0_[2]\,
      I1 => sw,
      O => \FSM_onehot_status[3]_i_2_n_0\
    );
\FSM_onehot_status_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => en,
      D => '0',
      Q => \FSM_onehot_status_reg_n_0_[0]\,
      S => status
    );
\FSM_onehot_status_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => en,
      D => \FSM_onehot_status_reg_n_0_[0]\,
      Q => \FSM_onehot_status_reg_n_0_[1]\,
      R => status
    );
\FSM_onehot_status_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => en,
      D => \FSM_onehot_status_reg_n_0_[1]\,
      Q => \FSM_onehot_status_reg_n_0_[2]\,
      R => status
    );
\FSM_onehot_status_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => en,
      D => \FSM_onehot_status[3]_i_2_n_0\,
      Q => sw,
      R => status
    );
\char[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => en,
      I1 => rst,
      O => \char[7]_i_1_n_0\
    );
\char[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => sw_reg_n_0,
      I1 => \FSM_onehot_status_reg_n_0_[1]\,
      I2 => ready,
      I3 => en,
      O => \char[7]_i_2_n_0\
    );
\char_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \char[7]_i_2_n_0\,
      D => data(0),
      Q => char(0),
      R => \char[7]_i_1_n_0\
    );
\char_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \char[7]_i_2_n_0\,
      D => data(1),
      Q => char(1),
      R => \char[7]_i_1_n_0\
    );
\char_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \char[7]_i_2_n_0\,
      D => data(2),
      Q => char(2),
      R => \char[7]_i_1_n_0\
    );
\char_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \char[7]_i_2_n_0\,
      D => data(3),
      Q => char(3),
      R => \char[7]_i_1_n_0\
    );
\char_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \char[7]_i_2_n_0\,
      D => data(4),
      Q => char(4),
      R => \char[7]_i_1_n_0\
    );
\char_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \char[7]_i_2_n_0\,
      D => data(5),
      Q => char(5),
      R => \char[7]_i_1_n_0\
    );
\char_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \char[7]_i_2_n_0\,
      D => data(6),
      Q => char(6),
      R => \char[7]_i_1_n_0\
    );
\char_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \char[7]_i_2_n_0\,
      D => data(7),
      Q => char(7),
      R => \char[7]_i_1_n_0\
    );
send_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CEEEEE"
    )
        port map (
      I0 => \^send\,
      I1 => send3_out,
      I2 => \FSM_onehot_status_reg_n_0_[2]\,
      I3 => rst,
      I4 => en,
      O => send_i_1_n_0
    );
send_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => en,
      I1 => \FSM_onehot_status_reg_n_0_[1]\,
      I2 => sw_reg_n_0,
      I3 => ready,
      O => send3_out
    );
send_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => send_i_1_n_0,
      Q => \^send\,
      R => '0'
    );
sw_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D2D0D0D0F2F0F0F0"
    )
        port map (
      I0 => en,
      I1 => rst,
      I2 => sw_reg_n_0,
      I3 => \FSM_onehot_status_reg_n_0_[1]\,
      I4 => ready,
      I5 => sw,
      O => sw_i_1_n_0
    );
sw_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => sw_i_1_n_0,
      Q => sw_reg_n_0,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_sender_0_0 is
  port (
    rst : in STD_LOGIC;
    clk : in STD_LOGIC;
    en : in STD_LOGIC;
    ready : in STD_LOGIC;
    data : in STD_LOGIC_VECTOR ( 7 downto 0 );
    send : out STD_LOGIC;
    char : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_sender_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_sender_0_0 : entity is "design_1_sender_0_0,sender,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_1_sender_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of design_1_sender_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of design_1_sender_0_0 : entity is "sender,Vivado 2018.2";
end design_1_sender_0_0;

architecture STRUCTURE of design_1_sender_0_0 is
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, PHASE 0.000";
  attribute x_interface_info of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute x_interface_parameter of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW";
begin
U0: entity work.design_1_sender_0_0_sender
     port map (
      char(7 downto 0) => char(7 downto 0),
      clk => clk,
      data(7 downto 0) => data(7 downto 0),
      en => en,
      ready => ready,
      rst => rst,
      send => send
    );
end STRUCTURE;
