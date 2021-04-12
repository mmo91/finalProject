----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/09/2021 06:08:56 PM
-- Design Name: 
-- Module Name: controls - Behavioral
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

entity controls is
Port (
        -- Timing Signals
        clk , en , rst : in std_logic ;
        
        -- Register File IO
        rID1 , rID2 : out std_logic_vector (4 downto 0) ;
        wr_enR1 , wr_enR2 : out std_logic ;
        regrD1 , regrD2 : in std_logic_vector (15 downto 0) ;
        regwD1 , regwD2 : out std_logic_vector (15 downto 0) ;
        
        -- Framebuffer IO
        fbRST : out std_logic ;
        fbAddr1 : out std_logic_vector (11 downto 0) ;
        fbDin1 : in std_logic_vector (15 downto 0) ;
        fbDout1 : out std_logic_vector (15 downto 0) ;
        
        -- Instruction Memory IO
        irAddr : out std_logic_vector (13 downto 0) ;
        irWord : in std_logic_vector (31 downto 0) ;
        
        -- Data Memory IO
        dAddr : out std_logic_vector (14 downto 0) ;
        d_wr_en : out std_logic ;
        dOut : out std_logic_vector (15 downto 0) ;
        dIn : in std_logic_vector (15 downto 0) ;
        
        -- ALU IO
        aluA , aluB : out std_logic_vector (15 downto 0) ;
        aluOp : out std_logic_vector (3 downto 0) ;
        aluResult : in std_logic_vector (15 downto 0) ;
        
        -- UART IO
        ready , newChar : in std_logic ;
        send : out std_logic ;
        charRec : in std_logic_vector (7 downto 0) ;
        charSend : out std_logic_vector (7 downto 0)
 );
end controls;

architecture Behavioral of controls is

type state is ( fetch, decode, Rops, Iops, Jops, 
            calc, store, jr, recv, rpix, wpix, 
            send_asip, equals, nequal, ori, lw, sw,
            jmp, jal, clrscr, finish);
type mem_type is array (0 to 31) of std_logic_vector(15 downto 0);
signal ctrl : state := fetch;
signal prev: state := fetch;
signal irMem : mem_type;
signal opcode: std_logic_vector(4 downto 0);
signal pc_signal : std_logic_vector(15 downto 0);
signal inst : std_logic_vector(31 downto 0);
signal reg1: std_logic_vector(15 downto 0);
signal reg2: std_logic_vector(15 downto 0);
signal reg3: std_logic_vector(15 downto 0);
signal imm: std_logic_vector(15 downto 0);
signal alu_res: std_logic_vector(15 downto 0);
signal pad: std_logic_vector(10 downto 0):= (others => '0');
signal update: std_logic_vector(15 downto 0);

begin
process(clk) begin
if(rising_edge(clk)) then
    case ctrl is
        when fetch =>
        -- action --
        wr_enR1 <= '0'; -- dont write to reg file
        wr_enR2 <= '0';
        rID1 <= "00001"; -- reg index 1
        pc_signal <= regrD1; -- get result from reg
        -- next state --
        ctrl <= decode;
        
        when decode =>
        -- action --
        irAddr <= pc_signal(13 downto 0);
        wr_enR1 <= '1'; -- enable write
        wr_enR2 <= '0';
        rID1 <= "00001"; -- reg index 1
        regwD1 <= std_logic_vector(unsigned(pc_signal) + 1); -- update pc
        -- next state --
        if(opcode(4 downto 3) = "00" or opcode(4 downto 3) = "01") then
            ctrl <= Rops;
        elsif(opcode(4 downto 3) = "10") then ctrl <= Iops;
        else ctrl <= Jops;
        end if;
        
        when Rops =>
        -- action -- 
        inst <= irWord; -- latency 
        opcode <= inst(31 downto 27);
        wr_enR1 <= '0'; -- dont write to reg file
        wr_enR2 <= '0';
        reg1 <= "00000000000" & inst(26 downto 22); -- store reg1
        rID1 <= inst(21 downto 17); -- load reg2 and reg3
        rID2 <= inst(16 downto 12);
        reg2 <= regrD1;
        reg3 <= regrD2;
        -- next state --
        if(opcode = "01101") then ctrl <= jr;
        elsif(opcode = "01100") then ctrl <= recv;
        elsif(opcode = "01111") then ctrl <= rpix;
        elsif(opcode = "01110") then ctrl <= wpix;
        elsif(opcode = "01011") then ctrl <= send_asip;
        else ctrl <= calc;
        end if;
        
        when Iops =>
        -- action --
        inst <= irWord; -- latency
        opcode <= inst(31 downto 27); 
        wr_enR1 <= '0'; -- dont write to reg file
        wr_enR2 <= '0';
        reg1 <= "00000000000" & inst(26 downto 22); -- store reg1
        rID1 <= inst(21 downto 17);
        reg2 <= regrD1;
        imm <= inst(16 downto 1);
        -- next state --
        if(opcode(2 downto 0) = "000") then ctrl <= equals;
        elsif(opcode(2 downto 0) = "001") then ctrl <= nequal;
        elsif(opcode(2 downto 0) = "010") then ctrl <= ori;
        elsif(opcode(2 downto 0) = "011") then ctrl <=lw;
        else ctrl <= sw;
        end if; 
        
        when Jops =>
        -- action --
        inst <= irWord; -- latency
        opcode <= inst(31 downto 27);
        imm <= inst(26 downto 11);
        wr_enR1 <= '0'; -- reset
        wr_enR2 <= '0';
        -- next state --
        if(opcode = "11000") then ctrl <= jmp;
        elsif(opcode = "11001") then ctrl <= jal;
        else ctrl <= clrscr;
        end if;
        
        when calc =>
        -- action --
        aluA <= reg2;
        aluB <= reg3;
        aluOp <= opcode(3 downto 0);
        wr_enR1 <= '0'; -- reset
        wr_enR2 <= '0';
        -- next state --
        ctrl <= store;
        prev <= calc;
        
        when store =>
        -- action --
        if prev = lw then alu_res <= dIn;
        elsif prev = calc then alu_res <= aluResult;
        end if;
        wr_enR1 <= '1'; -- write to reg1
        wr_enR2 <= '0';
        rID1 <= reg1(4 downto 0);
        regwD1 <= alu_res;
        -- next state --
        ctrl <= finish;
        
        when jr =>
        -- action --
        wr_enR1 <= '0'; 
        wr_enR2 <= '0';
        rID1 <= "00001"; -- read current pc
        alu_res <= regrD1;
        -- next state --
        ctrl <= store;
        
        when recv =>
        -- action --
        alu_res <= "00000000" & charRec;
        wr_enR1 <= '0'; -- reset
        wr_enR2 <= '0';
        -- next state --
        if(newChar = '0') then ctrl <= recv;
        else ctrl <= store;
        end if;
        
        when rpix =>
        -- action --
        fbAddr1 <= reg2(11 downto 0);
        alu_res <= fbDin1; 
        wr_enR1 <= '0'; -- reset
        wr_enR2 <= '0';
        -- next state --
        ctrl <= store;
        
        when wpix =>
        -- action --
        fbAddr1 <= reg1(11 downto 0); -- fb[reg1]
        fbDout1 <= reg2;
        -- next state --
        ctrl <= finish;
        
        when send_asip =>
        -- action --
        send <= '1';
        wr_enR1 <= '0'; -- dont write to reg file
        wr_enR2 <= '0';
        rID1 <= reg1(4 downto 0); -- get value at reg1
        charSend <= regrD1(7 downto 0);
        -- next state --
        if(ready = '1') then ctrl <= finish;
        else ctrl <= send_asip;
        end if;
        
        when equals =>
        -- action -- not sure which values to check for equals
        alu_res <= imm;
        wr_enR1 <= '0';
        wr_enR2 <= '0';
        rID1 <= "00001"; -- get pc id
        reg1 <= regrD1;
        -- next state --
        ctrl <= store;
        
        when nequal =>
        -- action -- not sure which values to check for nequal
        alu_res <= imm;
        
        wr_enR1 <= '0';
        wr_enR2 <= '0';
        rID1 <= "00001"; -- get pc id
        reg1 <= regrD1;
        -- next state --
        ctrl <= store;
        
        when ori =>
        -- action --
        alu_res <= imm or reg2;
        -- next state --
        ctrl <= store;
        
        when lw => 
        -- action --
        update <= std_logic_vector(unsigned(reg2) + unsigned(imm));
        dAddr <=  update(14 downto 0);
        d_wr_en <= '0';
        -- next state --
        ctrl <= store;
        prev <= lw;
        
        when sw =>
        -- action --
        update <= std_logic_vector(unsigned(reg2) + unsigned(imm));
        dAddr <=  update(14 downto 0);
        d_wr_en <= '1';
                
        wr_enR1 <= '0';
        wr_enR2 <= '0';
        rID1 <= reg1(4 downto 0);
        dOut <= regrD1;
        -- next state --
        ctrl <= finish;
        
        when jmp =>
        -- action --
        wr_enR1 <= '1';
        wr_enR2 <= '0';
        rID1 <= "00001";
        regwD1 <= imm;
        -- next state --
        ctrl <= finish;
        
        when jal =>
        -- action --
        wr_enR1 <= '1';
        wr_enR2 <= '1';
        rID1 <= "00010"; -- ra reg
        rID2 <= "00001"; -- pc reg
        pc_signal <= regrD2;
        regwD1 <= pc_signal;
        regwD2 <= imm;
        -- next state --
        ctrl <= finish;
        
        when clrscr =>
        -- action --
        fbRST <= '1';
        -- next state --
        ctrl <= finish;
        
        when finish =>
        -- action --
        wr_enR1 <= '0';
        wr_enR2 <= '0';
        fbRST <= '0';
        d_wr_en <= '0';
        send <= '0';
        -- next state --
        ctrl <= fetch;
        
        when others => ctrl <= fetch;
    end case;
        
       
    
end if;
end process;
end Behavioral;
