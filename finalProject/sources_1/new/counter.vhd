----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/29/2021 10:01:31 PM
-- Design Name: 
-- Module Name: COUNTER - Behavioral
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

entity counter is
  Port (
        clk: in std_logic;
        light : in std_logic_vector(7 downto 0);
        count : out std_logic_vector(7 downto 0)
   );
end counter;

architecture Behavioral of counter is
signal i : std_logic_vector(7 downto 0);
begin

process(clk) begin
    if(rising_edge(clk)) then
        if(unsigned(light) = 0) then
            i <= (others => '0');
        else
            i <= std_logic_vector(unsigned(i) + 1);
        end if;
        count <= i;
    end if;
end process;
end Behavioral;
