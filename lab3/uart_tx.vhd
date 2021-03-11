----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/02/2021 08:51:56 PM
-- Design Name: 
-- Module Name: uart_tx - Behavioral
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

entity uart_tx is
    Port ( clk : in STD_LOGIC;
           en : in STD_LOGIC;
           send : in STD_LOGIC;
           rst : in STD_LOGIC;
           char : in STD_LOGIC_VECTOR (7 downto 0);
           ready : out STD_LOGIC;
           tx : out STD_LOGIC);
end uart_tx;

architecture Behavioral of uart_tx is

signal index : std_logic_vector (2 downto 0):= (others => '0');
signal samples : std_logic := '1';
signal idle : std_logic;
signal go: std_logic;
signal seq: std_logic_vector(7 downto 0);


begin
proc: process(clk)
begin
    if (rst = '1') then
        idle <= '1';
        index <= (others => '0');
        ready <= '1';
        go <= '0';
        samples <= '0';
        seq <= (others => '0');
        tx <= '1';
    else
      if (rising_edge(clk)) then
        if (en = '1') then
            if (send = '1') then
                go <= '1';
                seq <= char;
                idle <= '0';
                ready <= '0';
                tx <= '0'; -- send start bit
            elsif (idle = '1') then
                go <= '0';
                ready <= '1';
                tx <= '1';
                
            elsif (go = '1') then

                if (unsigned(index) < 7) then 
                    tx <= seq(to_integer(unsigned(index)));
                    index <= std_logic_vector( unsigned(index) + 1);

                elsif (unsigned(index) = 7) then
                    tx <= seq(7);
                    index <= (others => '0'); 
                    idle <= '1';
                end if;

            end if;
         end if;
      end if;
    end if;
end process;
end Behavioral;
