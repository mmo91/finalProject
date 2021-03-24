----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/23/2021 11:58:24 PM
-- Design Name: 
-- Module Name: image_top - Behavioral
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
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity image_top is
    Port ( clk : in STD_LOGIC;
           vga_hs : out STD_LOGIC;
           vga_vs : out STD_LOGIC;
           vga_r : out STD_LOGIC_VECTOR (3 downto 0);
           vga_b : out STD_LOGIC_VECTOR (3 downto 0);
           vga_g : out STD_LOGIC_VECTOR (3 downto 0));
end image_top;

architecture Behavioral of image_top is

component clock_div is 
Port (
    clk : in std_logic;
    div : out std_logic
 );
end component;

component vga_ctrl is 
  Port ( 
      clk, en : in std_logic;
      hcount, vcount : out std_logic_vector(9 downto 0);
      vid, hs,vs : out std_logic
);
end component;

component picture is 
  PORT (
  clka : IN STD_LOGIC;
  addra : IN STD_LOGIC_VECTOR(17 DOWNTO 0);
  douta : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
);
end component;

component pixel_pusher is 
Port ( clk : in STD_LOGIC;
           en : in STD_LOGIC;
           VS : in STD_LOGIC;
           pixel : in STD_LOGIC_VECTOR (7 downto 0);
           hcount : in STD_LOGIC_VECTOR (9 downto 0);
           vid : in STD_LOGIC;
           R : out STD_LOGIC_VECTOR (3 downto 0);
           B : out STD_LOGIC_VECTOR (3 downto 0);
           G : out STD_LOGIC_VECTOR (3 downto 0);
           addr : out STD_LOGIC_VECTOR (17 downto 0));
end component;

signal en : std_logic;
signal addra : std_logic_vector(17 downto 0);
signal douta : std_logic_vector(7 downto 0);
signal hcount: std_logic_vector(9 downto 0);
signal vcount: std_logic_vector(9 downto 0);
signal vid : std_logic;
signal vs : std_logic;

begin

u1: clock_div Port map( clk => clk, div => en);
u2: picture Port map (clka => en, addra => addra, douta => douta);
u3: pixel_pusher Port map (clk => clk, en => en, VS => vs, pixel => douta, hcount => hcount, vid => vid,
                            R => vga_r, B => vga_b, G => vga_g, addr => addra);
u4: vga_ctrl Port map (clk => clk, en => en, hcount => hcount, vcount => vcount,
                        vid => vid, vs => vs, hs => vga_hs);
                        vga_vs <= vs;
                        
                             

end Behavioral;
