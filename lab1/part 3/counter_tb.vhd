----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/20/2021 05:38:02 PM
-- Design Name: 
-- Module Name: counter_tb - Behavioral
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

entity counter_tb is
end counter_tb;

architecture Behavioral of counter_tb is

signal tb_clk : std_logic;
signal tb_clk_en : std_logic;
signal tb_dir : std_logic;
signal tb_en : std_logic;
signal tb_ld : std_logic;
signal tb_rst : std_logic;
signal tb_updn : std_logic;
signal tb_val : std_logic_vector (3 downto 0);
signal tb_cnt : std_logic_vector (3 downto 0);

component fancy_counter is 
    Port ( clk : in STD_LOGIC;
           clk_en : in STD_LOGIC;
           dir : in STD_LOGIC;
           en : in STD_LOGIC;
           ld : in STD_LOGIC;
           rst : in STD_LOGIC;
           updn : in STD_LOGIC;
           val : in STD_LOGIC_VECTOR (3 downto 0);
           cnt : out STD_LOGIC_VECTOR (3 downto 0));
           
end component;




begin

    clk_gen_proc: process
        begin
            wait for 4 ns;
            tb_clk <= '1';
            
            wait for 4 ns;
            tb_clk <= '0';
            
    end process clk_gen_proc;
    
    dir_proc: process begin

        tb_dir <= '0';
        wait for 50 ns;
        tb_dir <= '1';
        wait for 100 ns;
    end process dir_proc;
    
    rst_proc: process begin
        wait for 4 ns;
        tb_rst <= '0';
    end process rst_proc;
    
    val_proc: process begin
        wait for 8 ns;
        tb_val <= "1100";
        --wait for 8 ns;
        --tb_val <= "0101";
    end process val_proc;
    
    en_proc: process begin
        wait for 12 ns;
        tb_en <= '0';
        wait for 100 ns;
        --tb_en <= '1';
        tb_clk_en <='0';
    end process en_proc;
    
    ld_proc: process begin
            tb_ld <= '1';
            tb_updn <= '1';
        wait for 100 ns;
            tb_ld <= '0';
            tb_updn <= '0';
        wait for 100 ns;
    end process ld_proc;
    
    dut: fancy_counter
    port map (
        clk => tb_clk,
        clk_en => tb_clk_en,
        dir => tb_dir,
        en => tb_en,
        ld => tb_ld,
        rst => tb_rst,
        updn => tb_updn,
        val => tb_val,
        cnt => tb_cnt );
    
end Behavioral;
