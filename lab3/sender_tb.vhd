----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/04/2021 03:14:10 PM
-- Design Name: 
-- Module Name: sender_tb - Behavioral
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
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity sender_tb is
end sender_tb;

architecture Behavioral of sender_tb is

component sender is 
port (
    rst, clk, en, btn, ready : in std_logic;
    send : out std_logic;
    char : out std_logic_vector (7 downto 0)
); end component;

signal tb_clk : std_logic;
signal tb_rst : std_logic;
signal tb_en : std_logic;
signal tb_btn : std_logic;
signal tb_rdy : std_logic;
signal tb_send : std_logic;
signal tb_char : std_logic_vector(7 downto 0);
begin

clk_gen: process begin
    wait for 4 ns;
    tb_clk <= '1';
    wait for 4 ns;
    tb_clk <= '0';
end process clk_gen;

proc: process begin
    wait for 4 ns;
    tb_en <= '1';
    tb_send <= '1';
    tb_btn <= '1';
    tb_rst <= '0';
    wait for 12 ns;
    tb_btn <= '0';
    wait for 12 ns;
    tb_btn <= '1';
    wait for 12 ns;
    tb_btn <= '0';
    tb_rdy <= '1';
end process proc;

dut: sender port map (
    clk => tb_clk,
    en => tb_en,
    rst => tb_rst,
    ready => tb_rdy,
    send => tb_send,
    btn => tb_btn,
    char => tb_char
);


end Behavioral;
