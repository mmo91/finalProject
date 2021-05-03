----------------------------------------------------------------------------------
-- Company: Rutgers Unversity
-- Engineer: Mya Odrick 
-- 
-- Create Date: 05/01/2021
-- Design Name: ALS UpTime Sender
-- Module Name: sender - Behavioral
-- Project Name: Embedded Systems - Final Project: lightCtrl
-- Target Devices: xc7z010
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
         rst, clk, en : in std_logic;
         ready : in std_logic;
         data: in std_logic_vector(7 downto 0);
         send : out std_logic;
         char : out std_logic_vector (7 downto 0) := (others => '0')
 );
end sender;

architecture Behavioral of sender is

signal sw: std_logic:='0';
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
                case status is
                    when idle =>  status <= busyA;
                    when busyA => status <= busyB;
                    when busyB => status <= busyC; send <= '0';
                    when busyC => status <= busyC; sw <= '0';
                    when others => status <= idle;
                    end case;
                if (ready = '1') then
                    if(sw = '0') then
                        if(status = busyA) then
                            char <= data;
                            send <= '1';
                            sw <= '1';
                        end if;
                    end if;
                else
                    status <= idle;
                end if;
            end if; 
        end if;
    end if;
end process;
end Behavioral;

