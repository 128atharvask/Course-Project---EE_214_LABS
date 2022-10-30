library ieee;
use ieee.std_logic_1164.all;

entity seq_gen is
	port(clock   : in std_logic; 
      reset: in std_logic;
      y: out std_logic  );
end seq_gen;

architecture bhv  of seq_gen is
type statetype is (s0,s1,s2,s3);
signal ps_state : statetype := s0; 
signal nx_state : statetype := s1; 
begin
	clk_process: process(clock,reset)
		begin
			if(reset='1')then 
				ps_state<=s0;
			elsif(clock'event and clock='1')then
				ps_state<=nx_state;
			end if;
	end process clk_process;
				
	state_tran_proc: process(ps_state)
		begin
			if(ps_state = s0) then
				nx_state <= s1;
			elsif(ps_state = s1) then
				nx_state <= s2;
			elsif(ps_state = s2) then
				nx_state <= s3;
			else
				nx_state <= s0;
			end if;
	end process state_tran_proc;
			
	Output_process: process(ps_state)
		begin
			if(ps_state = s0) then
				y <= '1';
			elsif(ps_state = s1) then
				y <= '1';
			elsif(ps_state = s2) then
				y <= '1';
			else
				y <= '0';
			end if;
		end process Output_process;
end bhv;
