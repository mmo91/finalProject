

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity tb_adder is

end tb_adder;

architecture Behavioral of tb_adder is
signal tb_A : STD_LOGIC_VECTOR (3 downto 0);
signal tb_B : STD_LOGIC_VECTOR (3 downto 0);
signal tb_cin :  STD_LOGIC;
signal tb_cout :  STD_LOGIC;
signal tb_S :  STD_LOGIC_VECTOR (3 downto 0);

component ripple_adder is
    Port (
        A : in std_logic_vector(3 downto 0);
        B : in std_logic_vector (3 downto 0);
        C_in : in std_logic;
        C_out : out std_logic;
        S : out std_logic_vector
    ); 
end component;

begin

    setValues: process begin
        wait for 4 ns;
        tb_A <= "1010";
        tb_B <= "0011";
        tb_cin <= '1';
        wait for 50 ns;
        tb_A <= "0110";
        tb_B <= "1101";
        tb_cin <= '0';
        wait for 46 ns;
    end process setValues;


    dut: ripple_adder port map(
        A => tb_A,
        B => tb_B,
        C_in => tb_cin,
        C_out => tb_cout,
        S  => tb_S
    );
    
end Behavioral;
