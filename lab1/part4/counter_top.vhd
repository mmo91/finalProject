----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/22/2021 04:03:50 PM
-- Design Name: 
-- Module Name: counter_top - Behavioral
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

entity counter_top is
  Port ( 
    btn : in std_logic_vector(3 downto 0);
    clk : in std_logic;
    sw : in std_logic_vector(3 downto 0);
    led : out std_logic_vector(3 downto 0)
    );
end counter_top;

architecture Behavioral of counter_top is

    component clock_div is
    port (
        clk : in std_logic;
        div : out std_logic
        );
    end component;
        component debounce is
        port ( 
            clk : in std_logic;
            btn : in std_logic;
            dbnc : out std_logic
        
        );
    end component;
    component fancy_counter is 
        Port ( clk : in STD_LOGIC;
               clk_en : in STD_LOGIC;
               dir : in STD_LOGIC;
               en : in STD_LOGIC;
               ld : in STD_LOGIC;
               rst : in STD_LOGIC;
               updn : in STD_LOGIC;
               val : in STD_LOGIC_VECTOR (3 downto 0);
               cnt : out STD_LOGIC_VECTOR (3 downto 0));
               
    end component;
    signal rst_holder : std_logic;
    signal en_holder : std_logic;
    signal updn_holder : std_logic;
    signal ld_holder : std_logic;
    signal clk_en_holder : std_logic;
    
begin
        u1: debounce Port map (btn => btn(0), clk => clk, dbnc => rst_holder);
        u2: debounce Port map (btn => btn(1), clk => clk, dbnc => en_holder);
        u3: debounce Port map (btn => btn(2), clk => clk, dbnc => updn_holder);
        u4: debounce Port map (btn => btn(3), clk => clk, dbnc => ld_holder);
        u5: clock_div Port map (clk => clk, div => clk_en_holder);
        u6: fancy_counter Port map (clk => clk, clk_en => clk_en_holder, dir => sw(0), 
                                    en => en_holder, ld => ld_holder, rst => rst_holder,
                                     updn => updn_holder, val => sw, cnt => led);
                                     



end Behavioral;
