----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/12/2021 11:58:39 PM
-- Design Name: 
-- Module Name: top_module - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity top_module is
    Port (
        clk, btn, TXD : in std_logic;
        vga_r, vga_b, vga_g : out std_logic_vector(3 downto 0);
        vga_hs, vga_vs : out std_logic;
        CTS, RTS, RXD : out std_logic  
     );
end top_module;

architecture Behavioral of top_module is

component debounce is
    Port ( clk : in STD_LOGIC;
       btn : in STD_LOGIC;
       dbnc : out STD_LOGIC);
end component;

component div_115200 is
Port (
    clk : in std_logic;
    div : out std_logic
 );
end component;

component div_25M is
Port (
    clk : in std_logic;
    div : out std_logic
 );
end component;

component pixel_pusher is
    Port ( clk : in STD_LOGIC;
       en : in STD_LOGIC;
       VS : in STD_LOGIC;
       pixel : in STD_LOGIC_VECTOR (15 downto 0);
       hcount : in STD_LOGIC_VECTOR (6 downto 0);
       vcount: in STD_LOGIC_VECTOR (6 downto 0);
       vid : in STD_LOGIC;
       R : out STD_LOGIC_VECTOR (3 downto 0);
       B : out STD_LOGIC_VECTOR (3 downto 0);
       G : out STD_LOGIC_VECTOR (3 downto 0);
       addr : out STD_LOGIC_VECTOR (11 downto 0));
end component;

component vga_ctrl is
  Port ( 
      clk, en : in std_logic;
      hcount, vcount : out std_logic_vector(6 downto 0);
      vid, hs,vs : out std_logic
);
end component;

component framebuffer is
    Port ( clk1 : in STD_LOGIC;
       en1 : in STD_LOGIC;
       en2 : in STD_LOGIC;
       ld : in STD_LOGIC;
       wr_en1 : in STD_LOGIC;
       addr1 : in STD_LOGIC_VECTOR (11 downto 0);
       addr2 : in STD_LOGIC_VECTOR (11 downto 0);
       din1 : in STD_LOGIC_VECTOR (15 downto 0);
       dout1 : out STD_LOGIC_VECTOR (15 downto 0);
       dout2 : out STD_LOGIC_VECTOR (15 downto 0));
end component;

component controls is
Port (
        -- Timing Signals
        clk , en , rst : in std_logic ;
        
        -- Register File IO
        rID1 , rID2 : out std_logic_vector (4 downto 0) ;
        wr_enR1 , wr_enR2 : out std_logic ;
        regrD1 , regrD2 : in std_logic_vector (15 downto 0) ;
        regwD1 , regwD2 : out std_logic_vector (15 downto 0) ;
        
        -- Framebuffer IO
        fbRST : out std_logic ;
        fbAddr1 : out std_logic_vector (11 downto 0) ;
        fbDin1 : in std_logic_vector (15 downto 0) ;
        fbDout1 : out std_logic_vector (15 downto 0) ;
        
        -- Instruction Memory IO
        irAddr : out std_logic_vector (13 downto 0) ;
        irWord : in std_logic_vector (31 downto 0) ;
        
        -- Data Memory IO
        dAddr : out std_logic_vector (14 downto 0) ;
        d_wr_en : out std_logic ;
        dOut : out std_logic_vector (15 downto 0) ;
        dIn : in std_logic_vector (15 downto 0) ;
        
        -- ALU IO
        aluA , aluB : out std_logic_vector (15 downto 0) ;
        aluOp : out std_logic_vector (3 downto 0) ;
        aluResult : in std_logic_vector (15 downto 0) ;
        
        -- UART IO
        ready , newChar : in std_logic ;
        send : out std_logic ;
        charRec : in std_logic_vector (7 downto 0) ;
        charSend : out std_logic_vector (7 downto 0)
 );
end component;

component regs is
    Port ( clk : in STD_LOGIC;
       en : in STD_LOGIC;
       rst : in STD_LOGIC;
       id1 : in STD_LOGIC_VECTOR (4 downto 0);
       id2 : in STD_LOGIC_VECTOR (4 downto 0);
       wr_en1 : in STD_LOGIC;
       wr_en2 : in STD_LOGIC;
       din_1 : in STD_LOGIC_VECTOR (15 downto 0);
       din_2 : in STD_LOGIC_VECTOR (15 downto 0);
       dout1 : out STD_LOGIC_VECTOR (15 downto 0);
       dout2 : out STD_LOGIC_VECTOR (15 downto 0));
end component;

component my_alu is
 Port (clk,en : in std_logic;
       A, B : in unsigned(15 downto 0);
       Opcode : in std_logic_vector (3 downto 0);
       funct : out unsigned (15 downto 0)
 );
end component;

component uart is
    port (

    clk, en, send, rx, rst: in std_logic;
    charSend: in std_logic_vector (7 downto 0);
    ready, tx, newChar: out std_logic;
    charRec: out std_logic_vector (7 downto 0)

);
end component;

-- signals --
signal rst: std_logic;
signal en_1: std_logic;
signal en_2: std_logic;
signal hcount: std_logic_vector(6 downto 0);
signal vcount: std_logic_vector(6 downto 0);
signal vid: std_logic;
signal hs: std_logic;
signal vs: std_logic;
signal pixel: std_logic_vector(15 downto 0);
signal addr1: std_logic_vector(11 downto 0);
signal addr2: std_logic_vector(11 downto 0);
signal send: std_logic;
signal charSend: std_logic_vector(7 downto 0);
signal ready: std_logic;
signal tx: std_logic;
signal newChar: std_logic;
signal charRec: std_logic_vector(7 downto 0);
signal A: std_logic_vector(15 downto 0);
signal B: std_logic_Vector(15 downto 0);
signal Op: std_logic_vector(3 downto 0);
signal funct: unsigned(15 downto 0);
signal id1 : STD_LOGIC_VECTOR (4 downto 0);
signal id2 : STD_LOGIC_VECTOR (4 downto 0);
signal wr_en1 : STD_LOGIC;
signal wr_en2 : STD_LOGIC;
signal din_1 : STD_LOGIC_VECTOR (15 downto 0);
signal din_2 : STD_LOGIC_VECTOR (15 downto 0);
signal dout1 : STD_LOGIC_VECTOR (15 downto 0);
signal dout2 : STD_LOGIC_VECTOR (15 downto 0);
signal ld: std_logic;
signal fbDout1: std_logic_vector(15 downto 0);
signal fbDin1: stD_logic_vector(15 downto 0);
signal irAddr: std_logic_vector(13 downto 0);
signal irWord: std_logic_vector(31 downto 0);
signal dAddr: std_logic_vector(14 downto 0);
signal d_wr_en: std_logic;
signal d_dOut: std_logic_vector(15 downto 0);
signal d_dIn: std_logic_vector(15 downto 0);
begin


u1: debounce port map ( clk => clk, btn => btn, dbnc => rst);
u2: div_25M port map( clk=> clk, div =>en_1);
u3: div_115200 port map( clk => clk, div=>en_2);
u4: vga_ctrl port map(clk=> clk, en=> en_1, hcount => hcount, vcount => vcount, vid=>vid, hs=>vga_hs, vs=>vga_vs);
u5: pixel_pusher port map(clk=>clk, en=>en_1, vs=>vs, pixel => pixel,hcount=>hcount, vcount=>vcount, vid=>vid,r=>vga_r, g=>vga_g, b=>vga_b, addr=>addr2);
u6: framebuffer port map(clk1=>clk, en1=>en_2, ld=>ld, en2=>en_1, wr_en1=> '0', addr1=>addr1, ADDR2=>addr2, din1=>fbDout1, dout1 => fbDin1, DOUT2 => pixel);
u7: uart port map(clk=>clk, en=>en_2,rst=>rst, send=>send, rx=>TXD, charSend=> charSend, ready=> ready, tx=>RXD, newChar=>newChar, charRec=>charRec);
u8: my_alu port map(clk=>clk, en=> en_2, A=>unsigned(A),B=>unsigned(B),Opcode=>Op,funct=> funct);
u9: regs port map (clk=> clk, en=> en_2, rst=>rst, id1=>id1,id2=>id2,wr_en1=>wr_en1, wr_en2=>wr_en2,din_1=>din_1,din_2=>din_2,dout1=>dout1,dout2=>dout2);
u10: controls port map (
    clk=> clk, en=>en_2, rst=> rst,
    rId1=>id1, rId2=> id2, wr_enR1=>wr_en1, wr_enR2=>wr_en2,
    regrD1=>dout1, regrD2=>dout2, regwD1=>din_1, regwD2=>din_2,
    
    fbRST =>ld , fbAddr1=> addr1, fbDin1=> fbDin1, fbDout1=>fbDout1,
    
    aluA=>A, aluB=>B, aluOp=>Op,aluResult=>std_logic_vector(funct),
    
    ready=>ready, newChar=>newChar, send=>send, charRec=>charRec, charSend=>charSend,
    
    irAddr=>irAddr, irWord=>irWord,
    
    dAddr=> dAddr, d_wr_en=>d_wr_en, dOut=>d_dOut, dIn=>d_dIn); 
    

end Behavioral;
