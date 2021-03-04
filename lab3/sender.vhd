----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/04/2021 01:47:22 AM
-- Design Name: 
-- Module Name: sender - Behavioral
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

entity sender is
 Port ( 
        rst, clk, en, btn, ready : in std_logic;
        send : out std_logic;
        char : out std_logic_vector (7 downto 0)
 );
end sender;

architecture Behavioral of sender is

type arr is array (0 to 4) of std_logic_vector (7 downto 0);
signal NETID : arr := ( 0 => "01101101", 1 => "01101101", 2 => "01101111", 3 => "00111001", 4 => "00110001");
signal i : std_logic_vector(2 downto 0) := (others => '0'); -- counts up to 5 or "101"
signal idle : std_logic := '1';
signal busyA : std_logic;
signal busyB: std_logic;
signal busyC: std_logic;
signal busy: std_logic_vector ( 2 downto 0) := "000";

-- utilize idle state --
begin
FSM: process begin
    if rising_edge(clk) then
        if (en = '1') then
            if (rst = '1') then
                send <= '0';
                char <= (others => '0');
                idle <= '1';
            else
                if (ready = '1') then
                    if (btn = '1') then
                        if (unsigned(i) < 5) then
                            send <= '1';
                            char <= NETID(to_integer(unsigned(i)));
                            i <= std_logic_vector(unsigned(i) + 1);
                            if (busy = "000") then
                                busy <= "001"; -- busyA state
                            elsif (busy = "001") then
                                busy <= "010"; -- busyB state
                            elsif (busy = "010") then
                                send <= '0';
                                busy <= "100"; -- busyC state
                            end if;
                        elsif (unsigned(i) = 5) then
                            i <= (others => '0');
                            idle <='1';
                        end if;
                    else 
                        if (busy <= "100") then
                            busy <= "000";
                            idle <= '1';
                         end if;
                    end if;
                end if;
            end if; 
        end if;
    end if;
end process;

end Behavioral;
