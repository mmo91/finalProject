
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
 Port (clk,en : in std_logic;
        A, B : in unsigned(15 downto 0);
        Opcode : in std_logic_vector(3 downto 0);
        funct : out unsigned (15 downto 0)
  );
end my_alu;

architecture Behavioral of my_alu is


begin
process(clk)
begin

if rising_edge(clk) then
    if(en = '1') then
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
                funct <= unsigned( A sll 1);
            when "0110" =>
                funct <= unsigned (A srl 1);
            when "0111" =>
                funct <= shift_right(A,1);
            when "1000" =>
                funct <= unsigned(std_logic_vector(A) and std_logic_vector(B));
            when "1001" =>
                funct <= unsigned(std_logic_vector(A) or std_logic_vector(B));
            when "1010" => 
                funct <= unsigned(std_logic_vector(A) xor std_logic_vector(B));
            when "1011" =>
               if (signed(A) < signed(B)) then 
                funct <= To_unsigned(1,16);
            else
                funct <= To_unsigned(0,16);
            end if;             
            when "1100" =>
               if (signed(A) > signed(B)) then 
                   funct <= To_unsigned(1,16);
               else
                   funct <= To_unsigned(0,16);
               end if;
            when "1101" =>
               if (A = B) then 
                funct <= To_unsigned(1,16);
            else
                funct <= To_unsigned(0,16);
            end if;
            when "1110" =>
               if (A < B) then 
                funct <= To_unsigned(1,16);
            else
                funct <= To_unsigned(0,16);
            end if;
            when "1111" =>
               if (A > B) then 
                funct <= To_unsigned(1,16);
            else
                funct <= To_unsigned(0,16);
            end if;
            when others => 
                funct <= To_unsigned(0,16);   
         end case;
     end if;
 end if;
        


end process;
end Behavioral;
