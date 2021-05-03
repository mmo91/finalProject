LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;
USE ieee.std_logic_unsigned.all;

entity spi is
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
end spi;

architecture Behavioral of spi is

type status is (ready,exe);
signal state : status;

signal slave : integer;
signal ratio : integer;
signal count : integer;
signal togg : integer range 0 to 33;
signal data_flag : std_logic;
signal continue : std_logic;
signal rx_buff : std_logic_vector(15 downto 0);
signal tx_buff : std_logic_vector(15 downto 0);
signal last : integer range 0 to 32;

begin
	process(clk, rst) begin
		if(rst = '0') then
			ss_n <= (others => '1');
			rx_data <= (others => '0');
			state <= ready;
		elsif(rising_edge(clk)) then
			case state is
				when ready =>
				ss_n <= (others => '1');
				continue <= '0';
				
				if (en = '1') then
					if(addr < 1) then
						ratio <= 1;
						count <= 1;
					else
						ratio <= div;
						count <= div;
					end if;
					sclk <= '1';
					data_flag <= '0';
					--tx_buff <= tx_data;
					togg <= 0;
					last <= 32;
					state <= exe;
				else
					state <= ready;
				end if;
				when exe =>
					ss_n(0) <= '0';
					
				if (count = ratio) then
					count <= 1;
					data_flag <= not data_flag;
					
					if(togg = 33) then
						togg <= 0;
					else
						togg <= togg + 1;
					end if;
					
					if(togg <= 32 and ss_n(0) = '0') then
						sclk <= not sclk;
					end if;
					
					--rx--
					if(data_flag = '0' and togg <(last + 1) and ss_n(0) = '0') then
						rx_buff <= rx_buff(14 downto 0) & miso; -- shift in data
					end if;
					
					if(continue = '1') then
						continue <= '0';
						rx_data <= rx_buff;
					end if;
					
					if((togg = 33) and cont = '0') then
						ss_n <= (others => '1');
						rx_data <= rx_buff;
						state <= ready;
					else
						state <= exe;
					end if;
				else
					count <= count + 1;
					state <= exe;
				end if;		
			end case;
		end if;
	end process;

end Behavioral;
