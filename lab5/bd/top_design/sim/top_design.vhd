--Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
--Date        : Tue Apr 13 17:03:30 2021
--Host        : DESKTOP-F3H5B92 running 64-bit major release  (build 9200)
--Command     : generate_target top_design.bd
--Design      : top_design
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity top_design is
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
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of top_design : entity is "top_design,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=top_design,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=10,numReposBlks=10,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=10,numPkgbdBlks=0,bdsource=USER,da_clkrst_cnt=7,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of top_design : entity is "top_design.hwdef";
end top_design;

architecture STRUCTURE of top_design is
  component top_design_debounce_0_0 is
  port (
    clk : in STD_LOGIC;
    btn : in STD_LOGIC;
    dbnc : out STD_LOGIC
  );
  end component top_design_debounce_0_0;
  component top_design_div_25M_0_0 is
  port (
    clk : in STD_LOGIC;
    div : out STD_LOGIC
  );
  end component top_design_div_25M_0_0;
  component top_design_div_115200_0_0 is
  port (
    clk : in STD_LOGIC;
    div : out STD_LOGIC
  );
  end component top_design_div_115200_0_0;
  component top_design_vga_ctrl_0_0 is
  port (
    clk : in STD_LOGIC;
    en : in STD_LOGIC;
    hcount : out STD_LOGIC_VECTOR ( 6 downto 0 );
    vcount : out STD_LOGIC_VECTOR ( 6 downto 0 );
    vid : out STD_LOGIC;
    hs : out STD_LOGIC;
    vs : out STD_LOGIC
  );
  end component top_design_vga_ctrl_0_0;
  component top_design_pixel_pusher_0_0 is
  port (
    clk : in STD_LOGIC;
    en : in STD_LOGIC;
    VS : in STD_LOGIC;
    pixel : in STD_LOGIC_VECTOR ( 15 downto 0 );
    hcount : in STD_LOGIC_VECTOR ( 6 downto 0 );
    vcount : in STD_LOGIC_VECTOR ( 6 downto 0 );
    vid : in STD_LOGIC;
    R : out STD_LOGIC_VECTOR ( 3 downto 0 );
    B : out STD_LOGIC_VECTOR ( 3 downto 0 );
    G : out STD_LOGIC_VECTOR ( 3 downto 0 );
    addr : out STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  end component top_design_pixel_pusher_0_0;
  component top_design_framebuffer_0_0 is
  port (
    clk1 : in STD_LOGIC;
    en1 : in STD_LOGIC;
    en2 : in STD_LOGIC;
    ld : in STD_LOGIC;
    wr_en1 : in STD_LOGIC;
    addr1 : in STD_LOGIC_VECTOR ( 11 downto 0 );
    addr2 : in STD_LOGIC_VECTOR ( 11 downto 0 );
    din1 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    dout1 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    dout2 : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component top_design_framebuffer_0_0;
  component top_design_uart_0_0 is
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
  end component top_design_uart_0_0;
  component top_design_my_alu_0_0 is
  port (
    clk : in STD_LOGIC;
    en : in STD_LOGIC;
    A : in STD_LOGIC_VECTOR ( 15 downto 0 );
    B : in STD_LOGIC_VECTOR ( 15 downto 0 );
    Opcode : in STD_LOGIC_VECTOR ( 3 downto 0 );
    funct : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component top_design_my_alu_0_0;
  component top_design_regs_0_0 is
  port (
    clk : in STD_LOGIC;
    en : in STD_LOGIC;
    rst : in STD_LOGIC;
    id1 : in STD_LOGIC_VECTOR ( 4 downto 0 );
    id2 : in STD_LOGIC_VECTOR ( 4 downto 0 );
    wr_en1 : in STD_LOGIC;
    wr_en2 : in STD_LOGIC;
    din_1 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    din_2 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    dout1 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    dout2 : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component top_design_regs_0_0;
  component top_design_controls_0_0 is
  port (
    clk : in STD_LOGIC;
    en : in STD_LOGIC;
    rst : in STD_LOGIC;
    rID1 : out STD_LOGIC_VECTOR ( 4 downto 0 );
    rID2 : out STD_LOGIC_VECTOR ( 4 downto 0 );
    wr_enR1 : out STD_LOGIC;
    wr_enR2 : out STD_LOGIC;
    regrD1 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    regrD2 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    regwD1 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    regwD2 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    fbRST : out STD_LOGIC;
    fbAddr1 : out STD_LOGIC_VECTOR ( 11 downto 0 );
    fbDin1 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    fbDout1 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    irAddr : out STD_LOGIC_VECTOR ( 13 downto 0 );
    irWord : in STD_LOGIC_VECTOR ( 31 downto 0 );
    dAddr : out STD_LOGIC_VECTOR ( 14 downto 0 );
    d_wr_en : out STD_LOGIC;
    dOut : out STD_LOGIC_VECTOR ( 15 downto 0 );
    dIn : in STD_LOGIC_VECTOR ( 15 downto 0 );
    aluA : out STD_LOGIC_VECTOR ( 15 downto 0 );
    aluB : out STD_LOGIC_VECTOR ( 15 downto 0 );
    aluOp : out STD_LOGIC_VECTOR ( 3 downto 0 );
    aluResult : in STD_LOGIC_VECTOR ( 15 downto 0 );
    ready : in STD_LOGIC;
    newChar : in STD_LOGIC;
    send : out STD_LOGIC;
    charRec : in STD_LOGIC_VECTOR ( 7 downto 0 );
    charSend : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component top_design_controls_0_0;
  signal btn_0_1 : STD_LOGIC;
  signal clk_0_1 : STD_LOGIC;
  signal controls_0_aluA : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal controls_0_aluB : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal controls_0_aluOp : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal controls_0_charSend : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal controls_0_fbAddr1 : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal controls_0_fbDout1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal controls_0_fbRST : STD_LOGIC;
  signal controls_0_rID1 : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal controls_0_rID2 : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal controls_0_regwD1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal controls_0_regwD2 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal controls_0_send : STD_LOGIC;
  signal controls_0_wr_enR1 : STD_LOGIC;
  signal controls_0_wr_enR2 : STD_LOGIC;
  signal debounce_0_dbnc : STD_LOGIC;
  signal div_115200_0_div : STD_LOGIC;
  signal div_25M_0_div : STD_LOGIC;
  signal framebuffer_0_dout1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal framebuffer_0_dout2 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal my_alu_0_funct : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal pixel_pusher_0_B : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal pixel_pusher_0_G : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal pixel_pusher_0_R : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal pixel_pusher_0_addr : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal regs_0_dout1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal regs_0_dout2 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal rx_0_1 : STD_LOGIC;
  signal uart_0_charRec : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal uart_0_newChar : STD_LOGIC;
  signal uart_0_ready : STD_LOGIC;
  signal uart_0_tx : STD_LOGIC;
  signal vga_ctrl_0_hcount : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal vga_ctrl_0_hs : STD_LOGIC;
  signal vga_ctrl_0_vcount : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal vga_ctrl_0_vid : STD_LOGIC;
  signal vga_ctrl_0_vs : STD_LOGIC;
  signal NLW_controls_0_d_wr_en_UNCONNECTED : STD_LOGIC;
  signal NLW_controls_0_dAddr_UNCONNECTED : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal NLW_controls_0_dOut_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_controls_0_irAddr_UNCONNECTED : STD_LOGIC_VECTOR ( 13 downto 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 CLK.CLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME CLK.CLK, CLK_DOMAIN top_design_clk_0, FREQ_HZ 100000000, PHASE 0.000";
begin
  RXD <= uart_0_tx;
  btn_0_1 <= btn;
  clk_0_1 <= clk;
  rx_0_1 <= TXD;
  vga_b(3 downto 0) <= pixel_pusher_0_B(3 downto 0);
  vga_g(3 downto 0) <= pixel_pusher_0_G(3 downto 0);
  vga_hs <= vga_ctrl_0_hs;
  vga_r(3 downto 0) <= pixel_pusher_0_R(3 downto 0);
  vga_vs <= vga_ctrl_0_vs;
  CTS <= 'Z';
  RTS <= 'Z';
controls_0: component top_design_controls_0_0
     port map (
      aluA(15 downto 0) => controls_0_aluA(15 downto 0),
      aluB(15 downto 0) => controls_0_aluB(15 downto 0),
      aluOp(3 downto 0) => controls_0_aluOp(3 downto 0),
      aluResult(15 downto 0) => my_alu_0_funct(15 downto 0),
      charRec(7 downto 0) => uart_0_charRec(7 downto 0),
      charSend(7 downto 0) => controls_0_charSend(7 downto 0),
      clk => clk_0_1,
      dAddr(14 downto 0) => NLW_controls_0_dAddr_UNCONNECTED(14 downto 0),
      dIn(15 downto 0) => B"0000000000000000",
      dOut(15 downto 0) => NLW_controls_0_dOut_UNCONNECTED(15 downto 0),
      d_wr_en => NLW_controls_0_d_wr_en_UNCONNECTED,
      en => div_115200_0_div,
      fbAddr1(11 downto 0) => controls_0_fbAddr1(11 downto 0),
      fbDin1(15 downto 0) => framebuffer_0_dout1(15 downto 0),
      fbDout1(15 downto 0) => controls_0_fbDout1(15 downto 0),
      fbRST => controls_0_fbRST,
      irAddr(13 downto 0) => NLW_controls_0_irAddr_UNCONNECTED(13 downto 0),
      irWord(31 downto 0) => B"00000000000000000000000000000000",
      newChar => uart_0_newChar,
      rID1(4 downto 0) => controls_0_rID1(4 downto 0),
      rID2(4 downto 0) => controls_0_rID2(4 downto 0),
      ready => uart_0_ready,
      regrD1(15 downto 0) => regs_0_dout1(15 downto 0),
      regrD2(15 downto 0) => regs_0_dout2(15 downto 0),
      regwD1(15 downto 0) => controls_0_regwD1(15 downto 0),
      regwD2(15 downto 0) => controls_0_regwD2(15 downto 0),
      rst => debounce_0_dbnc,
      send => controls_0_send,
      wr_enR1 => controls_0_wr_enR1,
      wr_enR2 => controls_0_wr_enR2
    );
debounce_0: component top_design_debounce_0_0
     port map (
      btn => btn_0_1,
      clk => clk_0_1,
      dbnc => debounce_0_dbnc
    );
div_115200_0: component top_design_div_115200_0_0
     port map (
      clk => clk_0_1,
      div => div_115200_0_div
    );
div_25M_0: component top_design_div_25M_0_0
     port map (
      clk => clk_0_1,
      div => div_25M_0_div
    );
framebuffer_0: component top_design_framebuffer_0_0
     port map (
      addr1(11 downto 0) => controls_0_fbAddr1(11 downto 0),
      addr2(11 downto 0) => pixel_pusher_0_addr(11 downto 0),
      clk1 => clk_0_1,
      din1(15 downto 0) => controls_0_fbDout1(15 downto 0),
      dout1(15 downto 0) => framebuffer_0_dout1(15 downto 0),
      dout2(15 downto 0) => framebuffer_0_dout2(15 downto 0),
      en1 => div_115200_0_div,
      en2 => div_25M_0_div,
      ld => controls_0_fbRST,
      wr_en1 => '0'
    );
my_alu_0: component top_design_my_alu_0_0
     port map (
      A(15 downto 0) => controls_0_aluA(15 downto 0),
      B(15 downto 0) => controls_0_aluB(15 downto 0),
      Opcode(3 downto 0) => controls_0_aluOp(3 downto 0),
      clk => clk_0_1,
      en => div_115200_0_div,
      funct(15 downto 0) => my_alu_0_funct(15 downto 0)
    );
pixel_pusher_0: component top_design_pixel_pusher_0_0
     port map (
      B(3 downto 0) => pixel_pusher_0_B(3 downto 0),
      G(3 downto 0) => pixel_pusher_0_G(3 downto 0),
      R(3 downto 0) => pixel_pusher_0_R(3 downto 0),
      VS => vga_ctrl_0_vs,
      addr(11 downto 0) => pixel_pusher_0_addr(11 downto 0),
      clk => clk_0_1,
      en => div_25M_0_div,
      hcount(6 downto 0) => vga_ctrl_0_hcount(6 downto 0),
      pixel(15 downto 0) => framebuffer_0_dout2(15 downto 0),
      vcount(6 downto 0) => vga_ctrl_0_vcount(6 downto 0),
      vid => vga_ctrl_0_vid
    );
regs_0: component top_design_regs_0_0
     port map (
      clk => clk_0_1,
      din_1(15 downto 0) => controls_0_regwD1(15 downto 0),
      din_2(15 downto 0) => controls_0_regwD2(15 downto 0),
      dout1(15 downto 0) => regs_0_dout1(15 downto 0),
      dout2(15 downto 0) => regs_0_dout2(15 downto 0),
      en => div_115200_0_div,
      id1(4 downto 0) => controls_0_rID1(4 downto 0),
      id2(4 downto 0) => controls_0_rID2(4 downto 0),
      rst => debounce_0_dbnc,
      wr_en1 => controls_0_wr_enR1,
      wr_en2 => controls_0_wr_enR2
    );
uart_0: component top_design_uart_0_0
     port map (
      charRec(7 downto 0) => uart_0_charRec(7 downto 0),
      charSend(7 downto 0) => controls_0_charSend(7 downto 0),
      clk => clk_0_1,
      en => div_115200_0_div,
      newChar => uart_0_newChar,
      ready => uart_0_ready,
      rst => debounce_0_dbnc,
      rx => rx_0_1,
      send => controls_0_send,
      tx => uart_0_tx
    );
vga_ctrl_0: component top_design_vga_ctrl_0_0
     port map (
      clk => clk_0_1,
      en => div_25M_0_div,
      hcount(6 downto 0) => vga_ctrl_0_hcount(6 downto 0),
      hs => vga_ctrl_0_hs,
      vcount(6 downto 0) => vga_ctrl_0_vcount(6 downto 0),
      vid => vga_ctrl_0_vid,
      vs => vga_ctrl_0_vs
    );
end STRUCTURE;
