library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity alu_tb is
--  Port ( );
end alu_tb;

architecture Behavioral of alu_tb is

signal tb_clk : std_logic := '0';
signal tb_btn : std_logic_vector (3 downto 0);
signal tb_sw : std_logic_vector (3 downto 0);
signal tb_led : std_logic_vector (3 downto 0);

component alu_tester is 
    port(
        clk : in std_logic;
        btn : in std_logic_vector (3 downto 0);
        sw : in std_logic_vector (3 downto 0);
        led : out std_logic_vector (3 downto 0)
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

    alu_test: process begin
        wait for 4 ms;
        tb_btn <= "1000";
        tb_sw <= "0000";
        wait for 48 ms;
        tb_btn <= "0010";
        tb_sw <= "0001";
        wait for 48 ms;
        tb_btn <= "0000";
        wait for 40 ns;
        tb_btn <= "0001";
        tb_sw <= "0011";
        wait for 48 ms;
        tb_btn <= "0000";
        wait for 40 ns;
        tb_btn <= "0100";
        tb_sw <= "0000";
        wait for 116 ms;
        wait for 116 ms;
    
    end process alu_test;
    
    dut: alu_tester
        port map (
            clk => tb_clk,
            btn => tb_btn,
            sw => tb_sw,
            led => tb_led
            );

end Behavioral;
