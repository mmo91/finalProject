library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity debounce is
    Port ( clk : in STD_LOGIC;
           btn : in STD_LOGIC;
           dbnc : out STD_LOGIC);
end debounce;

architecture Behavioral of debounce is
signal sreg : std_logic_vector(1 downto 0);
signal samples: std_logic_vector(22 downto 0);

begin
    process(clk)
        begin
            if (rising_edge(clk)) then

                sreg(1) <= sreg(0);
                sreg(0) <= btn;
                if (sreg(1) = '1') then
                    samples <= std_logic_vector(unsigned(samples) + 1);
                    if (unsigned(samples) = 2500000) then
                        dbnc <= '1';
                    end if;
                else
                    samples <= (others => '0');
                    dbnc <= '0';
                end if;
                           
           end if;
   end process;

end Behavioral;
