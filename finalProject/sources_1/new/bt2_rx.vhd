--
-- written by Gregory Leonberg
-- fall 2017
-- revised by Mya Odrick
-- spring 2021
---------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity bt2_rx is
    port (
    clk, en, rx, rst    : in std_logic;
    newChar             : out std_logic;
    led                 : out std_logic_vector(3 downto 0);
    char                : out std_logic_vector (7 downto 0)
);
end bt2_rx;

architecture fsm of bt2_rx is

    -- state type enumeration and state variable
    type state is (idle, start, data);
    signal curr : state := idle;

    -- shift register to read data in
    signal d : std_logic_vector (7 downto 0) := (others => '0');

    -- counter for data state
    signal count : std_logic_vector(2 downto 0) := (others => '0');

    -- double flop rx plus 2 extra samples to take majority vote of 3
    -- majority vote of samples helps mitigate noise on line
    signal inshift : std_logic_vector(3 downto 0) := (others => '0');
    signal maj : std_logic := '0';
    
    -- cur state of led --
    signal led_stat : std_logic_vector(3 downto 0) := (others => '0');

begin

    -- double flop input to fix potential metastability
    -- plus 2 extra samples to take majority vote of 3 inputs (oversampling)
    -- majority vote of samples helps mitigate noise on line
    process(clk) begin
        if rising_edge(clk) then
            inshift <= inshift(2 downto 0) & rx;
        end if;
    end process;

    -- majority vote of 3 samples (oversampling)
    -- majority vote of samples helps mitigate noise on line
    process(inshift)
    begin
        if (inshift(3) = '1' and inshift(2) = '1' and inshift(1) = '1') or
           (inshift(3) = '1' and inshift(2) = '1') or
           (inshift(2) = '1' and inshift(1) = '1') or
           (inshift(3) = '1' and inshift(1) = '1') then
                maj <= '1';
        else
            maj <= '0';
        end if;
    end process;

    -- FSM process (single process implementation)
    process(clk) begin
    if rising_edge(clk) then

        -- resets the state machine and its outputs
        if rst = '1' then

            curr <= idle;
            d <= (others => '0');
            count <= (others => '0');
            newChar <= '0';

        -- usual operation
        elsif en = '1' then
            case curr is

                when idle =>
                    newChar <= '0';
                    if maj = '0' then
                        curr <= start;
                    end if;

                when start =>
                    d <= maj & d(7 downto 1);
                    count <= (others => '0');
                    curr <= data;

                when data =>
                    if unsigned(count) < 7 then
                        d <= maj & d(7 downto 1);
                        count <= std_logic_vector(unsigned(count) + 1);
                         
                    elsif maj <= '1' then
                        curr <= idle;
                        newChar <= '1';
                        char <= d;
                        -- edit to send to led lights -- 

                        if(d(7) = '1') then
                            led(0) <= d(3);
                        end if;
                        if(d(6) = '1') then
                            led(1) <= d(2);
                        end if;
                        if(d(5) = '1') then
                            led(2) <= d(1);
                        end if;                  
                        if(d(4) = '1') then
                            led(3) <= d(0);
                        end if; 
                    else
                        curr <= idle;

                    end if;

                when others =>
                    curr <= idle;

            end case;
        end if;

    end if;
    end process;

end fsm;