----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/08/2021 05:37:29 PM
-- Design Name: 
-- Module Name: top_tb - Behavioral
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

entity top_tb is
end top_tb;

architecture Behavioral of top_tb is

component uart_top port (
        TXD, clk : in std_logic;
        btn : in std_logic_vector (1 downto 0);
        CTS, RTS : out std_logic := '0';
        RXD : out std_logic
); 
end component;
signal tb_clk : std_logic;
signal tb_TXD : std_logic;
signal tb_btn : std_logic_vector (1 downto 0);
signal tb_CTS : std_logic := '0';
signal tb_RTS : std_logic := '0';
signal tb_RXD : std_logic;

begin

    clk_gen_proc : process begin
    
        tb_clk <= '0';
        wait for 4 ns;
        tb_clk <= '1';
        wait for 4 ns;
        end process clk_gen_proc;
    
    write: process begin
        tb_txd <= '1';
        tb_btn <= "01"; -- reset
        wait for 20.1 ms;
        tb_btn <= "00";
        wait for 1 ms;
        tb_btn <= "10"; -- send 'm'
        wait for 20.1 ms;
        tb_btn <= "00";
        wait for 1 ms;
        tb_btn <= "10"; -- send 'm'
        wait for 20.1 ms;
        tb_btn <= "00";
        wait for 1 ms;
        tb_btn <= "10"; -- send 'o'
        wait for 20.1 ms;
        tb_btn <= "00";
        wait for 1 ms;
        tb_btn <= "10"; -- send '9'
        wait for 20.1 ms;
        tb_btn <= "00";
        wait for 1 ms; 
        tb_btn <= "10"; -- send '1'
        wait for 20.1 ms;
        tb_btn <= "00";
        wait for 1 ms;
    end process write;
    
    
    dut: uart_top 
       port map (
        clk => tb_clk,
        TXD => tb_TXD,
        btn => tb_btn,
        CTS => tb_CTS,
        RTS => tb_RTS,
        RXD => tb_RXD
        );

end Behavioral;
