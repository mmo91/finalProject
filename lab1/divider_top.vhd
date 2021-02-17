----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/16/2021 07:49:05 PM
-- Design Name: 
-- Module Name: divider_top - Behavioral
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

entity divider_top is
  Port (
    clk  : in std_logic;
    led0 : inout std_logic
   );
end divider_top;

architecture Behavioral of divider_top is
    signal div : std_logic;
    signal led_in : std_logic;
    component clock_div is
    port (
        clk : in std_logic;
        div : out std_logic
        );
    end component;

begin
    process(clk)
    begin
        if rising_edge(clk) then
            if (div = '1') then
                led0 <= not led0;
            end if;
        end if;
    end process;
    
        dut : clock_div
    port map (
        clk => clk,
        div => div
     );

end Behavioral;
