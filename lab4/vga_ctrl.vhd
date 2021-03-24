----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/23/2021 05:12:00 PM
-- Design Name: 
-- Module Name: vga_ctrl - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity vga_ctrl is
  Port ( 
        clk, en : in std_logic;
        hcount, vcount : out std_logic_vector(9 downto 0);
        vid, hs,vs : out std_logic
  );
end vga_ctrl;

architecture Behavioral of vga_ctrl is
signal hc : std_logic_vector(9 downto 0) :=(others => '0');
signal h_on : std_logic;
signal vc : std_logic_vector(9 downto 0) := (others => '0');
signal v_on : std_logic;

begin
process(clk) begin
    if (rising_edge(clk)) then
        if (en = '1') then
            -- increment horizontal counter range --
            if (unsigned(hc) < 800) then 
            
                -- set horizontal display --
                if (unsigned (hc) < 640) then
                    h_on <= '1';
                else 
                    h_on <= '0';
                    
                    -- set hs pulse --
                    if (unsigned(hc) > 655 and unsigned(hc) < 752) then 
                        hs <= '0';
                    else
                        hs <= '1';
                    end if;
                end if;
                
                -- increment counter --
                hc <= std_logic_vector(unsigned(hc) + 1);
                hcount <= hc;
            else 
                -- reset hc to 0 and start vc
                hc <= (others => '0');
                hcount <= hc;
                
                -- increment vertical counter range --
                if (unsigned(vc) < 525) then
                 
                    --set vertical display --
                    if (unsigned(vc) < 480) then 
                        v_on <= '1';
                    else
                        v_on <= '0';
                        
                        -- set vs pulse --
                        if (unsigned(vc) > 489 and unsigned(vc) < 492) then 
                            vs <= '0';
                        else
                            vs <= '1';
                        end if;
                    end if;
                    
                    -- increment counter --
                    vc <= std_logic_vector(unsigned(vc) + 1);
                    vcount <= vc;
                else
                
                 -- rest vc to 0
                vc <= (others => '0');
                vcount <= vc;
                end if;
            end if;
            -- turn display on--
            if (v_on = '1' and h_on = '1') then
                vid <= '1';
            else 
                vid <= '0';
            end if;
            
        end if;
    end if;
end process;


end Behavioral;
