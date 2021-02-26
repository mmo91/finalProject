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
           rst : out STD_LOGIC;
           A : out STD_LOGIC_VECTOR (3 downto 0);
           B : out STD_LOGIC_VECTOR (3 downto 0);
           Op : out STD_LOGIC_VECTOR (3 downto 0));
end btn_sel;

architecture Behavioral of btn_sel is

begin
process(clk)
begin

if rising_edge(clk) then

    case btn is
        when "1000" => -- reset button
            rst <= '1';
        when "0100" => -- load opcode
            Op <= sw;
        when "0010" => -- load A
            A <= sw;
        when "0001" => -- load B
            B <= sw;
        when others =>
            rst <= '0';
    end case;
    
end if;
end process;

end Behavioral;
