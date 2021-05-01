-- 
-- written by Gregory Leonberg 
-- fall 2017 
-- 
-- - ---- --- ---- --- ---- --- ---- --- ---- --- ---- --- --- ---- --- ---- --- ---- --- ---- -- 
library ieee ; 
use ieee . std_logic_1164 .all ; 
entity bt is 
port ( 
    clk , en , send , rx , rst : in std_logic ; 
    charSend : in std_logic_vector (7 downto 0) ; ready , tx , newChar : out std_logic ; 
    charRec : out std_logic_vector (7 downto 0) ) ; 
end bt ; 

architecture structural of bt is 
    component bt_tx is 
    port ( 
        clk , en , send , rst : in std_logic ; 
        char : in std_logic_vector (7 downto 0) ; 
        ready , tx : out std_logic 
    ) ; 
    end component ; 
    component bt_rx is 
    port ( 
        clk , en , rx , rst : in std_logic ; 
        newChar : out std_logic ; 
        char : out std_logic_vector (7 downto 0) 
    ) ; 
    end component ; 
    begin 
        r_x : bt_rx 
        port map ( 
            clk => clk , 
            en => en , 
            rx => rx , 
            rst => rst , 
            newChar => newChar , 
            char => charRec 
        ) ; 
        t_x : bt_tx 
        port map ( 
            clk => clk , 
            en => en , 
            send => send , 
            rst => rst , 
            char => charSend , 
            ready => ready , 
            tx => tx 
        ) ; 
end structural ;        