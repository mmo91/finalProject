LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;
USE ieee.std_logic_unsigned.all;

entity als is
	port(
		clk : in std_logic;
		rst : in std_logic;
		sdo : in std_logic;
		sck : buffer std_logic;
		cs  : buffer std_logic_vector (0 downto 0);
		als_data : out std_logic_vector( 7 downto 0)
	);
end als;

architecture Behavioral of als is
	signal rx_data : std_logic_vector(15 downto 0); -- full data from als
	
	-- spi controller --
	component spi is
		port(
			clk : in std_logic;
			rst : in std_logic;
			en  : in std_logic;
			pol : in std_logic;
			pha : in std_logic;
			cont : in std_logic;
			div : in integer;
			addr : in integer;
			tx_data : in std_logic_vector(15 downto 0);
			miso : in std_logic;
			sclk : buffer std_logic;
			ss_n : buffer std_logic_vector(0 downto 0);
			mosi : out std_logic;
			rx_data : out std_logic_vector(15 downto 0)
		);
	end component;

begin
	u0: spi port map(
	clk => clk, 
	rst => rst,
	en => '1',
	pol => '1',
	pha => '1',
	cont => '0',
	div => 16,
	addr => 0,
	tx_data => (others => '0'),
	miso => sdo,
	sclk => sck,
	ss_n => cs,
	mosi => open,
	rx_data => rx_data);	
	
	als_data <= rx_data(12 downto 5); --extract the 8 bits of data
end Behavioral;
