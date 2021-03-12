----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/11/2021 06:20:48 PM
-- Design Name: 
-- Module Name: clk_div_tb - Behavioral
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

entity clk_div_tb is
end clk_div_tb;

architecture testbench of clk_div_tb is

    signal tb_clk : std_logic := '0';
    signal tb_div : std_logic;
    
    component clock_div is
        port (
            clk : in std_logic;
            div : out std_logic
            );
        end component;
 begin
 
    clk_gen_proc: process
    begin
        tb_clk <= '0';
        wait for 4 ns;
        tb_clk <= '1';
        
        wait for 4 ns;

        
    end process clk_gen_proc;
    
    dut : clock_div
    port map (
        clk => tb_clk,
        div => tb_div
     );
end testbench;
