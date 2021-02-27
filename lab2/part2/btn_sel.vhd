library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity btn_sel is
    Port ( clk : in std_logic;
           btn : in STD_LOGIC_VECTOR (3 downto 0);
           sw : in STD_LOGIC_VECTOR (3 downto 0);
           A : out STD_LOGIC_VECTOR (3 downto 0);
           B : out STD_LOGIC_VECTOR (3 downto 0);
           Op : out STD_LOGIC_VECTOR (3 downto 0));
end btn_sel;

architecture Behavioral of btn_sel is

begin
process(clk)
begin

if rising_edge(clk) then

   if (btn = "1000") then -- reset
       Op <= (others => '0');
       A <= (others => '0');
       B <= (others => '0');
   
   elsif (btn = "0100") then -- set opcode
       Op <= sw;

   elsif (btn = "0010") then -- set A
        A <= sw;

   elsif (btn = "0001") then -- set B
        B <= sw;
   end if;

    
end if;
end process;

end Behavioral;
