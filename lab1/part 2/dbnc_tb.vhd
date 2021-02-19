----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/18/2021 09:16:50 PM
-- Design Name: 
-- Module Name: dbnc_tb - Behavioral
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

entity dbnc_tb is
end dbnc_tb;

architecture Behavioral of dbnc_tb is

    signal tb_clk : std_logic := '0';
    signal tb_btn : std_logic;
    signal tb_dbnc : std_logic;

    component debounce is
        port ( 
            clk : in std_logic;
            btn : in std_logic;
            dbnc : out std_logic
        
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
        
       -- flip the switch high after 1ms    
       btn_proc: process    
       begin        
       wait for 100 ns;        
       tb_btn <= '1';
       
       wait for 100 ns;
       tb_btn <= '0';    
       end process btn_proc;

    dut : debounce
    port map (
        clk => tb_clk,
        btn => tb_btn,
        dbnc => tb_dbnc
     );


end Behavioral;
