----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/09/2021 04:33:43 PM
-- Design Name: 
-- Module Name: regs - Behavioral
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

entity regs is
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
end regs;

architecture Behavioral of regs is

type arr is array (0 to 31) of std_logic_vector (15 downto 0);
signal reg : arr;

begin
dout1 <= reg(to_integer(unsigned(id1)));
dout2 <= reg(to_integer(unsigned(id2)));
process(clk) begin
    if (rising_edge(clk)) then
        reg(0) <= (others => '0');
        
        if(rst = '1') then
            for i in 0 to 15 loop
                reg(i) <= (others => '0');
                reg(i+16) <= (others=> '0');
            end loop;
        elsif (en = '1') then
            if (wr_en1 = '1') then
                reg(to_integer(unsigned(id1))) <= din_1;
            end if;
            
            if (wr_en2 = '1') then
                reg(to_integer(unsigned(id2))) <= din_2;
            end if;
        end if;
    end if;
end process;
end Behavioral;
