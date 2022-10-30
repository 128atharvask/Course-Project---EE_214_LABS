library ieee;
use ieee.std_logic_1164.all;

component dff_reset is port(D,clock,reset:in std_logic;Q:out std_logic);
end component dff_reset;

end package Flipflops;


--D flip flop with reset
library ieee;
use ieee.std_logic_1164.all;


entity dff_reset is port(D,clock,reset:in std_logic;Q:out std_logic);
end entity dff_reset;

architecture behav of dff_reset is
begin
dff_reset_proc: process (clock,reset)
begin
if(reset='1')then -- reset implies flip flip output logic low
Q <= '0'; -- write the flip flop output when reset
elsif (clock'event and (clock='1')) then
Q <= D; -- write flip flop output when not reset
end if ;
end process dff_reset_proc;
end behav;


library ieee;
use ieee.std_logic_1164.all;
use work.Flipflops.all;


entity seq_gen is
port (UD, reset,clock: in std_logic;
y:out std_logic_vector(2 downto 0));
end entity seq_gen;

architecture struct of seq_gen is
signal s: std_logic_vector(2 downto 0) := "000";
begin
	--dff declarations
	D0: dff_reset port map(s(0), clock, reset);
	D1: dff_reset port map(s(1), clock, reset);
	D2: dff_reset port map(s(2), clock, reset);
	
	--output
	y(2)
end struct;


--architecture bhv of seq_gen is	--4 2 6 5 7 1 3 0
--signal s2 : std_logic := '0';
--signal s1 : std_logic := '0';
--signal s0 : std_logic := '0';
--begin
--	proc : process(clock,reset)
--	begin
--		y(2) <= ((not s1) and (not s0)) or ((not s2) and s1);
--		y(1) <= ((not s2) and (not s1) and s0) or (s1 and (s2 or (not s0)));
--		y(0) <= ((not s2) and s1 and s0) or (s2 and ((not s1) or (not s0)));
--		if(reset = '1') then
--			s2 <= '0';
--			s1 <= '0';
--			s0 <= '0';
--		elsif(clock'event and clock='1') then
--			if(UD = '0') then
--				s0 <= not s0;
--				s1 <= s1 xor s0;
--				s2 <= ((not s2) and s1 and s0) or (s2 and (s1 or s0));
--			elsif(UD = '1') then
--				s0 <= not s0;
--				s1 <= ((not s1) and (not s0)) or (s1 and (s0 or s2));
--				s2 <= ((not s2) and (not s1) and (not s0)) or (s2 and (s0 or s1));
--			end if;
--		end if;
--	end process;
--end bhv;