----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/13/2021 12:09:23 AM
-- Design Name: 
-- Module Name: div_25M - Behavioral
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

entity div_25M is
Port (
    clk : in std_logic;
    div : out std_logic
 );
end div_25M;

architecture Behavioral of div_25M is

signal counter : std_logic_vector(11 downto 0) := (others => '0');
signal divder : std_logic := '0';
begin

    process(clk)
    begin
    
        if rising_edge(clk) then
            if (unsigned(counter) < 10) then
                counter <= std_logic_vector(unsigned(counter) + 1);
            else
                counter <= (others => '0');
                
            end if;
            if ((unsigned(counter) < 4 )) then
                div <= '0';
            else
                div <= '1';
                counter <= (others => '0');
            end if;
           

        end if;

    
    end process;
    
end Behavioral;
