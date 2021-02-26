library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ripple_adder is
 Port (A, B : in std_logic_vector(3 downto 0);
        C_in: in std_logic;
        C_out: out std_logic;
        S : out std_logic_vector(3 downto 0) );
end ripple_adder;

architecture Behavioral of ripple_adder is

component adder is
    port (
        A : in std_logic;
        B : in std_logic;
        C_in : in std_logic;
        C_out : out std_logic;
        S : out std_logic
    );
end component;

signal c_i1 : std_logic;
signal c_i2 : std_logic;
signal c_i3 : std_logic;

begin

bit0: adder Port map (A => A(0), B => B(0), C_in => C_in, C_out=> c_i1, S => S(0));
bit1: adder Port map (A => A(1), B => B(1), C_in => c_i1, C_out=> c_i2, S => S(1));
bit2: adder Port map (A => A(2), B => B(2), C_in => C_i2, C_out=> c_i3, S => S(2));
bit3: adder Port map (A => A(3), B => B(3), C_in => C_i3, C_out=> C_out, S => S(3));

end Behavioral;
