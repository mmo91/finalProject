
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
        Opcode : in unsigned (4 downto 0);
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
            when "00000" =>
                funct <= A + B;
            when "00001" =>
                funct <= A - B;
            when "00010" =>
                funct <= A + 1;
            when "00011" =>
                funct <= A - 1;
            when "00100" =>
                funct <= 0 - A;
            when "00101" =>
                funct <= unsigned( A sll 1);
            when "00110" =>
                funct <= unsigned (A srl 1);
            when "00111" =>
                funct <= shift_right(A,1);
            when "01000" =>
                funct <= unsigned(std_logic_vector(A) and std_logic_vector(B));
            when "001001" =>
                funct <= unsigned(std_logic_vector(A) or std_logic_vector(B));
            when "01010" => 
                funct <= unsigned(std_logic_vector(A) xor std_logic_vector(B));
            when "01011" =>
               if (signed(A) < signed(B)) then 
                funct <= To_unsigned(1,4);
            else
                funct <= To_unsigned(0,4);
            end if;             
            when "01100" =>
               if (signed(A) > signed(B)) then 
                   funct <= To_unsigned(1,4);
               else
                   funct <= To_unsigned(0,4);
               end if;
            when "01101" =>
               if (A = B) then 
                funct <= To_unsigned(1,4);
            else
                funct <= To_unsigned(0,4);
            end if;
            when "01110" =>
               if (A < B) then 
                funct <= To_unsigned(1,4);
            else
                funct <= To_unsigned(0,4);
            end if;
            when "01111" =>
               if (A > B) then 
                funct <= To_unsigned(1,4);
            else
                funct <= To_unsigned(0,4);
            end if;
            when others => 
                funct <= To_unsigned(0,4);   
         end case;
     end if;
 end if;
        


end process;
end Behavioral;
