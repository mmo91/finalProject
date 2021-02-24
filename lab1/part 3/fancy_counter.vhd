----------------------------------------------------------------------------------
----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/20/2021 05:04:28 PM
-- Design Name: 
-- Module Name: fancy_counter - Behavioral
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

entity fancy_counter is
    Port ( clk : in STD_LOGIC;
           clk_en : in STD_LOGIC;
           dir : in STD_LOGIC;
           en : in STD_LOGIC;
           ld : in STD_LOGIC;
           rst : in STD_LOGIC;
           updn : in STD_LOGIC;
           val : in STD_LOGIC_VECTOR (3 downto 0);
           cnt : out STD_LOGIC_VECTOR (3 downto 0));
end fancy_counter;

architecture Behavioral of fancy_counter is

signal value : std_logic_vector (3 downto 0);
signal direction : std_logic;
signal counter : std_logic_vector (3 downto 0) := (others => '0');

begin
    process(clk)

        begin
            if (rising_edge(clk)) then
                if (en = '0') then -- enables the circuit to perform
                    if (clk_en = '0') then -- clk enable
                        if (rst = '1') then
                            cnt <= (others => '0');
                        end if;
                    else -- circuit will perform
                    -- load the max value --
                        if (ld = '1') then
                           value <= val;
                        end if;
                    -- loads direction of counter --    
                        if (updn = '1') then
                            direction <= dir;
                        end if;
                       -- checks to see if the counter reached max val --
                        if (unsigned(counter) = unsigned(value)) then
                            counter <= (others => '0');
                            cnt <= (others => '0');
                        else
                         -- sets the counter value -- 
                            if (direction = '1') then
                                counter <= std_logic_vector(unsigned(counter) + 1);
                                cnt <= std_logic_vector(unsigned(counter) + 1);
                            else
                                counter <= std_logic_vector(unsigned(counter) - 1);
                                cnt <= std_logic_vector(unsigned(counter) - 1);
                            end if;
    
                        end if;
                    end if;                                     
                end if;
            end if;
        end process;

end Behavioral;
