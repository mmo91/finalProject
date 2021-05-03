--
-- written by Gregory Leonberg
-- fall 2017
-- revised by Mya Odrick
-- spring 2021
--
---------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

entity bt2 is
    port (

    clk, en, send, rx, rst      : in std_logic;
    charSend                    : in std_logic_vector (7 downto 0);
    ready, tx, newChar          : out std_logic;
    led                         : out std_logic_vector(3 downto 0);
    charRec                     : out std_logic_vector (7 downto 0)

);
end bt2;

architecture structural of bt2 is
    component bt2_tx port
    (
        clk, en, send, rst  : in std_logic;
        char                : in std_logic_vector (7 downto 0);
        ready, tx           : out std_logic
    );
    end component;

    component bt2_rx port
    (
        clk, en, rx, rst    : in std_logic;
        newChar             : out std_logic;
        led                 : out std_logic_vector;
        char                : out std_logic_vector (7 downto 0)
    );
    end component;

begin

    r_x: bt2_rx port map(
        clk => clk,
        en => en,
        rx => rx,
        rst => rst,
        led => led,
        newChar => newChar,
        char => charRec);

    t_x: bt2_tx port map(
        clk => clk,
        en => en,
        send => send,
        rst => rst,
        char => charSend,
        ready => ready,
        tx => tx);

end structural;    
