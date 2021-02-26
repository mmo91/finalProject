library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity my_alu_tb is
--  Port ( );
end my_alu_tb;

architecture Behavioral of my_alu_tb is

signal tb_A : unsigned (3 downto 0);
signal tb_B : unsigned (3 downto 0);
signal tb_Opcode : unsigned (3 downto 0);
signal tb_funct : unsigned (3 downto 0);

component my_alu is
 Port (
       A, B, Opcode : in unsigned (3 downto 0);
       funct : out unsigned (3 downto 0)
 );
 end component;

begin

setValues: process begin

    wait for 4 ns;
    tb_A <= To_unsigned(1,4);
    tb_B <= To_unsigned(1,4);
    tb_Opcode <= To_unsigned(0,4);
    wait for 12 ns;
    tb_A <= To_unsigned(1,4);
    tb_B <= To_unsigned(1,4);
    tb_Opcode <= To_unsigned(1,4);
    wait for 12 ns;
    tb_A <= To_unsigned(1,4);
    tb_B <= To_unsigned(1,4);
    tb_Opcode <= To_unsigned(2,4);
    wait for 12 ns;
    tb_A <= To_unsigned(1,4);
    tb_B <= To_unsigned(1,4);
    tb_Opcode <= To_unsigned(3,4);
    wait for 12 ns;
    tb_A <= To_unsigned(1,4);
    tb_B <= To_unsigned(1,4);
    tb_Opcode <= To_unsigned(4,4);
    wait for 12 ns;
    tb_A <= To_unsigned(1,4);
    tb_B <= To_unsigned(1,4);
    tb_Opcode <= To_unsigned(5,4);
    wait for 12 ns;
    tb_A <= To_unsigned(1,4);
    tb_B <= To_unsigned(1,4);
    tb_Opcode <= To_unsigned(6,4);
    wait for 12 ns;
    tb_A <= To_unsigned(12,4);
    tb_B <= To_unsigned(1,4);
    tb_Opcode <= To_unsigned(7,4);
    wait for 12 ns;
    tb_A <= To_unsigned(12,4);
    tb_B <= To_unsigned(1,4);
    tb_Opcode <= To_unsigned(8,4);
    wait for 12 ns;
    tb_A <= To_unsigned(1,4);
    tb_B <= To_unsigned(1,4);
    tb_Opcode <= To_unsigned(9,4);    
    wait for 12 ns;
    tb_A <= To_unsigned(1,4);
    tb_B <= To_unsigned(1,4);
    tb_Opcode <= To_unsigned(10,4);
    wait for 12 ns;
    tb_A <= To_unsigned(1,4);
    tb_B <= To_unsigned(1,4);
    tb_Opcode <= To_unsigned(11,4);
     wait for 12 ns;
    tb_A <= To_unsigned(1,4);
    tb_B <= To_unsigned(1,4);
    tb_Opcode <= To_unsigned(12,4);
    wait for 12 ns;
    tb_A <= To_unsigned(1,4);
    tb_B <= To_unsigned(1,4);
    tb_Opcode <= To_unsigned(13,4);
    wait for 12 ns;
    tb_A <= To_unsigned(1,4);
    tb_B <= To_unsigned(1,4);
    tb_Opcode <= To_unsigned(14,4);
    wait for 12 ns;
    tb_A <= To_unsigned(1,4);
    tb_B <= To_unsigned(1,4);
    tb_Opcode <= To_unsigned(15,4);

    end process SetValues;
    
    dut: my_alu port map (
    A => tb_A,
    B => tb_B,
    Opcode => tb_Opcode,
    funct => tb_funct
    );


end Behavioral;
