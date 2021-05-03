--Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
--Date        : Sat May  1 23:17:03 2021
--Host        : DESKTOP-F3H5B92 running 64-bit major release  (build 9200)
--Command     : generate_target design_1.bd
--Design      : design_1
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1 is
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
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of design_1 : entity is "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=7,numReposBlks=7,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=7,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of design_1 : entity is "design_1.hwdef";
end design_1;

architecture STRUCTURE of design_1 is
  component design_1_bt2_0_0 is
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
  end component design_1_bt2_0_0;
  component design_1_DIV_1_0_0 is
  port (
    clk : in STD_LOGIC;
    div : out STD_LOGIC
  );
  end component design_1_DIV_1_0_0;
  component design_1_DIV_115200_0_0 is
  port (
    clk : in STD_LOGIC;
    div : out STD_LOGIC
  );
  end component design_1_DIV_115200_0_0;
  component design_1_sender_0_0 is
  port (
    rst : in STD_LOGIC;
    clk : in STD_LOGIC;
    en : in STD_LOGIC;
    ready : in STD_LOGIC;
    data : in STD_LOGIC_VECTOR ( 7 downto 0 );
    send : out STD_LOGIC;
    char : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component design_1_sender_0_0;
  component design_1_uart_0_0 is
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
    charRec : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component design_1_uart_0_0;
  component design_1_counter_0_0 is
  port (
    clk : in STD_LOGIC;
    light : in STD_LOGIC_VECTOR ( 7 downto 0 );
    count : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component design_1_counter_0_0;
  component design_1_als_0_0 is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    sdo : in STD_LOGIC;
    sck : out STD_LOGIC;
    cs : out STD_LOGIC_VECTOR ( 0 to 0 );
    als_data : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component design_1_als_0_0;
  signal DIV_115200_0_div : STD_LOGIC;
  signal DIV_1_0_div : STD_LOGIC;
  signal SDO_1 : STD_LOGIC;
  signal TXD_B_1 : STD_LOGIC;
  signal TXD_U_1 : STD_LOGIC;
  signal als_0_als_data : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal als_0_cs : STD_LOGIC_VECTOR ( 0 to 0 );
  signal als_0_sck : STD_LOGIC;
  signal bt2_0_led : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal bt2_0_tx : STD_LOGIC;
  signal clk_1 : STD_LOGIC;
  signal counter_0_count : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal rst_als_1 : STD_LOGIC;
  signal rst_bt_1 : STD_LOGIC;
  signal rst_uart_1 : STD_LOGIC;
  signal sender_0_char : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal sender_0_send : STD_LOGIC;
  signal uart_0_ready : STD_LOGIC;
  signal uart_0_tx : STD_LOGIC;
  signal NLW_bt2_0_newChar_UNCONNECTED : STD_LOGIC;
  signal NLW_bt2_0_ready_UNCONNECTED : STD_LOGIC;
  signal NLW_bt2_0_charRec_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_uart_0_newChar_UNCONNECTED : STD_LOGIC;
  signal NLW_uart_0_charRec_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
begin
  CS(0) <= als_0_cs(0);
  RXD_B <= bt2_0_tx;
  RXD_U <= uart_0_tx;
  SCK <= als_0_sck;
  SDO_1 <= SDO;
  TXD_B_1 <= TXD_B;
  TXD_U_1 <= TXD_U;
  clk_1 <= clk;
  led(3 downto 0) <= bt2_0_led(3 downto 0);
  rst_als_1 <= rst_als;
  rst_bt_1 <= rst_bt;
  rst_uart_1 <= rst_uart;
  CTS <= 'Z';
  RTS <= 'Z';
DIV_115200_0: component design_1_DIV_115200_0_0
     port map (
      clk => clk_1,
      div => DIV_115200_0_div
    );
DIV_1_0: component design_1_DIV_1_0_0
     port map (
      clk => clk_1,
      div => DIV_1_0_div
    );
als_0: component design_1_als_0_0
     port map (
      als_data(7 downto 0) => als_0_als_data(7 downto 0),
      clk => clk_1,
      cs(0) => als_0_cs(0),
      rst => rst_als_1,
      sck => als_0_sck,
      sdo => SDO_1
    );
bt2_0: component design_1_bt2_0_0
     port map (
      charRec(7 downto 0) => NLW_bt2_0_charRec_UNCONNECTED(7 downto 0),
      charSend(7 downto 0) => B"00000000",
      clk => clk_1,
      en => DIV_115200_0_div,
      led(3 downto 0) => bt2_0_led(3 downto 0),
      newChar => NLW_bt2_0_newChar_UNCONNECTED,
      ready => NLW_bt2_0_ready_UNCONNECTED,
      rst => rst_bt_1,
      rx => TXD_B_1,
      send => '0',
      tx => bt2_0_tx
    );
counter_0: component design_1_counter_0_0
     port map (
      clk => DIV_1_0_div,
      count(7 downto 0) => counter_0_count(7 downto 0),
      light(7 downto 0) => als_0_als_data(7 downto 0)
    );
sender_0: component design_1_sender_0_0
     port map (
      char(7 downto 0) => sender_0_char(7 downto 0),
      clk => clk_1,
      data(7 downto 0) => counter_0_count(7 downto 0),
      en => DIV_115200_0_div,
      ready => uart_0_ready,
      rst => rst_bt_1,
      send => sender_0_send
    );
uart_0: component design_1_uart_0_0
     port map (
      charRec(7 downto 0) => NLW_uart_0_charRec_UNCONNECTED(7 downto 0),
      charSend(7 downto 0) => sender_0_char(7 downto 0),
      clk => clk_1,
      en => DIV_115200_0_div,
      newChar => NLW_uart_0_newChar_UNCONNECTED,
      ready => uart_0_ready,
      rst => rst_uart_1,
      rx => TXD_U_1,
      send => sender_0_send,
      tx => uart_0_tx
    );
end STRUCTURE;
