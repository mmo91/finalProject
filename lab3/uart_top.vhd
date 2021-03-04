----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/04/2021 02:37:03 AM
-- Design Name: 
-- Module Name: uart_top - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity uart_top is
Port ( 
       TXD, clk : in std_logic;
       btn : in std_logic_vector (1 downto 0);
       CTS, RTS : out std_logic := '0';
       RXD : out std_logic
);
end uart_top;

architecture Behavioral of uart_top is

component debounce is 
port (
    clk : in std_logic;
    btn : in std_logic;
    dbnc : out std_logic
 );
end component;

component clk_div is
port ( 
    clk : in std_logic;
    div : out std_logic
);
end component;

component sender is
port (
    rst, clk, en, btn, ready : in std_logic;
    send : out std_logic;
    char : out std_logic_vector (7 downto 0)
);
end component;

component uart is
port ( 
    charSend : in std_logic_vector (7 downto 0);
    clk, en, rst, rx, send : in std_logic;
    ready, tx : out std_logic
);
end component;   

signal rst : std_logic;
signal button : std_logic; 
signal en : std_logic;
signal ready: std_logic;
signal char : std_logic_vector(7 downto 0);
signal send : std_logic;

begin

    u1: debounce Port map ( clk => clk, btn => btn(0), dbnc => rst);
    u2: debounce Port map ( clk => clk, btn => btn(1), dbnc => button);
    u3: clk_div Port map (clk => clk, div => en);
    u4: sender Port map (btn => button, clk => clk, en => en, ready => ready, rst => rst, char => char, send => send);
    u5: uart Port map (charSend => char, clk => clk, en => en, rst => rst, rx => TXD, send => send, ready => ready, tx => RXD);
    
    

end Behavioral;
