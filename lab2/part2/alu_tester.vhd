library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity alu_tester is
port (  clk : in std_logic;
        btn, sw : in std_logic_vector (3 downto 0);
        led : out std_logic_vector (3 downto 0)

);
end alu_tester;

architecture Behavioral of alu_tester is

component my_alu is
 Port (clk : in std_logic;
       A, B, Opcode : in unsigned (3 downto 0);
       funct : out unsigned(3 downto 0)
 );
 end component;
 component debounce is
 port ( 
     clk : in std_logic;
     btn : in std_logic;
     dbnc : out std_logic
 
 );
 end component;
 
 component btn_sel is
     Port ( clk : in std_logic;
            btn : in STD_LOGIC_VECTOR (3 downto 0);
            sw : in STD_LOGIC_VECTOR (3 downto 0);
            rst : out STD_LOGIC;
            A : out STD_LOGIC_VECTOR (3 downto 0);
            B : out STD_LOGIC_VECTOR (3 downto 0);
            Op : out STD_LOGIC_VECTOR (3 downto 0));
 end component;

 
 signal A, B, Op : std_logic_vector (3 downto 0);
 signal rst: std_logic;
 signal dbnc : std_logic_vector (3 downto 0);
 signal funct : unsigned(3 downto 0);

begin

    
    btn3: debounce Port map ( clk => clk, btn => btn(3), dbnc => dbnc(3));
    btn2: debounce Port map ( clk => clk, btn => btn(2), dbnc => dbnc(2));
    btn1: debounce Port map ( clk => clk, btn => btn(1), dbnc => dbnc(1));
    btn0: debounce Port map ( clk => clk, btn => btn(0), dbnc => dbnc(0));
    
    sel: btn_sel Port map ( clk => clk, btn => dbnc, sw => sw, Op => Op, A => A, B => B, rst => rst);
    alu : my_alu Port map (clk => clk, A => unsigned(A), B => unsigned(B), Opcode => unsigned(Op), funct => funct);  
    
    process(clk) begin
    
        if rising_edge(clk) then
            if (rst = '1') then
                led <= (others => '0');
             else
                led <= std_logic_vector(funct);
             end if;
        end if;
    
    end process;  

end Behavioral;
