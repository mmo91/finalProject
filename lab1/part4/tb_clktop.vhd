----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/22/2021 04:50:39 PM
-- Design Name: 
-- Module Name: tb_clktop - Behavioral
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

entity tb_clktop is
--  Port ( );
end tb_clktop;

architecture Behavioral of tb_clktop is
signal tb_btn : std_logic_vector(3 downto 0);
signal tb_clk : std_logic;
signal tb_sw : std_logic_vector (3 downto 0);
signal tb_led : std_logic_vector(3 downto 0);

component counter_top is
  Port ( 
    btn : in std_logic_vector(3 downto 0);
    clk : in std_logic;
    sw : in std_logic_vector(3 downto 0);
    led : out std_logic_vector(3 downto 0)
    );
end component;
begin
    clk_gen_proc: process
    begin
        wait for 4 ns;
        tb_clk <= '1';
        
        wait for 4 ns;
        tb_clk <= '0';
        
    end process clk_gen_proc;

    btn_proc: process begin
        wait for 4 ns;
        tb_btn <= "1100";
        wait for 100 ns;
        tb_btn <= "0000";
        wait for 25 ns;
        tb_btn <= "0010";
        wait for 25 ns; 
        tb_btn <= "0001";
        wait for 50 ns;
        
    end process btn_proc;
    
    sw_proc: process begin
        wait for 4 ns;
        tb_sw(0) <= '1';
        tb_sw(1) <= '1';
        tb_sw(2) <= '1';
        tb_sw(3) <= '0';
        end process sw_proc;
        
        dut: counter_top port map(
        btn => tb_btn,
        clk  => tb_clk,
        led => tb_led,
        sw => tb_sw
        );

end Behavioral;
