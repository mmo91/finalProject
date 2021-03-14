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
        char : out std_logic_vector (7 downto 0) := (others => '0')
 );
end sender;

architecture Behavioral of sender is

type arr is array (0 to 4) of std_logic_vector (7 downto 0);
signal NETID : arr := ("01101101", "01101101", "01101111", "00111001", "00110001"); -- mmo91
signal i : std_logic_vector(2 downto 0) := (others => '0'); -- counts up to 5 or "101"
signal busy: std_logic_vector ( 3 downto 0) := "0000"; -- idle
type state is (idle, busyA, busyB, busyC);
signal status : state := idle;

begin
FSM: process(clk) begin
    if rising_edge(clk) then
        if (en = '1') then
            if (rst = '1') then
                send <= '0';
                char <= (others => '0');
                status <= idle;
            else
                if (ready = '1' and btn = '1') then

                        if (unsigned(i) < 5) then
                            
                            case status is
                                when idle => 
                                    status <= busyA;
                                    send <= '1';
                                    char <= NETID(to_integer(unsigned(i)));
                                    i <= std_logic_vector(unsigned(i) + 1);
                                when busyA => status <= busyB;
                                when busyB => status <= busyC; send <= '0';
                                when others => status <= busyC;
                             end case;
                         elsif (unsigned(i) = 5) then
                            i <= (others => '0');
                            status <= idle;     
                         end if;
                else -- ready '1' btn '0'
                    status <= idle;
                    send <= '0';
        
                end if;
            end if; 
        end if;
    end if;
end process;

end Behavioral;
