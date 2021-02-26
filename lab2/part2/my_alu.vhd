
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity my_alu is
 Port (clk : in std_logic;
        A, B, Opcode : in unsigned (3 downto 0);
        funct : out unsigned (3 downto 0)
  );
end my_alu;

architecture Behavioral of my_alu is

signal op : std_logic_vector (3 downto 0) := std_logic_vector(Opcode);
signal hd: std_logic_vector (1 downto 0);

begin
process(clk)
begin

if rising_edge(clk) then
case (Opcode) is
    when "0000" =>
        funct <= A + B;
    when "0001" =>
        funct <= A - B;
    when "0010" =>
        funct <= A + 1;
    when "0011" =>
        funct <= A - 1;
    when "0100" =>
        funct <= 0 - A;
    when "0101" =>
        if (A > B) then 
            funct <= To_unsigned(1,4);
        else
            funct <= To_unsigned(0,4);
        end if;
    when "0110" =>
        funct <= unsigned( A sll 1);
    when "0111" =>
        funct <= unsigned (A srl 1);
    when "1000" =>
        funct <= shift_right(A,1);
    when "1001" =>
        funct <= unsigned(not std_logic_vector(A));
    when "1010" => 
        funct <= unsigned(std_logic_vector(A) and std_logic_vector(B));
    when "1011" =>
        funct <= unsigned(std_logic_vector(A) or std_logic_vector(B));
    when "1100" =>
        funct <= unsigned(std_logic_vector(A) xor std_logic_vector(B));
    when "1101" =>
        funct <= unsigned(std_logic_vector(A) xnor std_logic_vector(B));
    when "1110" =>
        funct <= unsigned(std_logic_vector(A) nand std_logic_vector(B));
    when "1111" =>
        funct <= unsigned(std_logic_vector(A) nor std_logic_vector(B)); 
    when others => 
        funct <= To_unsigned(0,4);   
 end case;
 end if;
        


end process;
end Behavioral;
