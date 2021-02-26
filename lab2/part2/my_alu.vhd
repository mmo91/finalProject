
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
 Port (
        A, B, Opcode : in unsigned;
        funct : out unsigned
  );
end my_alu;

architecture Behavioral of my_alu is

signal op : std_logic_vector (3 downto 0) := std_logic_vector(Opcode);
signal hd: std_logic_vector (1 downto 0);

begin
process
begin


case (op) is
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
        -- 
    when "0110" =>
        funct <= unsigned( A sll 1);
    when "0111" =>
        funct <= unsigned (A srl 1);
    when "1000" =>
    
    when "1001" =>
    
    when "1010" => 
    
    when "1011" =>
    
    when "1100" =>
    
    when "1101" =>
    
    when "1110" =>
    
    when "1111" =>
    
        
    when others =>
        
 end case;
        


end process;
end Behavioral;
