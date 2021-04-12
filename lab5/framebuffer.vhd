----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/09/2021 05:37:13 PM
-- Design Name: 
-- Module Name: framebuffer - Behavioral
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

entity framebuffer is
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
end framebuffer;

architecture Behavioral of framebuffer is
type mem_type is array (0 to 4096) of std_logic_vector( 15 downto 0);
signal mem : mem_type;

begin

process(clk1) begin
if(rising_edge(clk1)) then
    -- port A
    if(en1 = '1') then 
        if(wr_en1 = '1') then
            mem(to_integer(unsigned(addr1))) <= din1;
        end if;
        dout1 <= mem(to_integer(unsigned(addr1)));
    end if;
    
    -- port B
    if(en2 = '1') then
        if(wr_en1 = '1') then
            mem(to_integer(unsigned(addr2))) <= din1;
        end if;
        dout2 <= mem(to_integer(unsigned(addr2)));
    end if;
    
end if;
end process;


end Behavioral;
