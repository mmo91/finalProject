
 library IEEE;
 use IEEE.STD_LOGIC_1164.ALL;

 -- Uncomment the following library declaration if using
 -- arithmetic functions with Signed or Unsigned values
 --use IEEE.NUMERIC_STD.ALL;

 -- Uncomment the following library declaration if instantiating
 -- any Xilinx leaf cells in this code.
 --library UNISIM;
 --use UNISIM.VComponents.all;

 entity adder is
   Port ( A, B, C_in : in std_logic;
          S, C_out : out std_logic );
 end adder;

 architecture Behavioral of adder is

 begin
     S <= (A xor B) xor C_in;
     C_out <= (A and B) or ( (A xor B) and C_in);

 end Behavioral;
