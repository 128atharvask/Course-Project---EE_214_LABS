library ieee;
use ieee.std_logic_1164.all;

entity fsm is
	port(clock : in std_logic;
      b : in std_logic_vector(3 downto 0);
      y4: out std_logic;
		y3: out std_logic;
		y2: out std_logic;
		y1: out std_logic;
		y0: out std_logic);
end fsm;

architecture behav  of fsm is
	type statetype is (idle,stud,res,prof,admin);
	signal ps_state,nx_state : statetype := idle;
	signal count : integer := 1;
	signal warn : std_logic := '0';
	begin 
		clk_proc: process(clock)
		begin
			if(clock'event and clock = '1') then
				if(warn = '1') then
					if(count=75000000) then 
						warn <= '0';
						count <= 1;
					else
						count <= count + 1;
					end if;
				else
					ps_state <= nx_state;
					if(ps_state = idle) then
						if(b = "0000") then
							nx_state <= idle;
							warn <= '0';
						elsif(b = "0001") then
							nx_state <= stud;
							warn <= '0';
						elsif(b = "0010" or b = "0011") then
							nx_state <= res;
							warn <= '0';
						elsif(b = "0100" or b = "0101" or b = "0110" or b = "0111") then
							nx_state <= prof;
							warn <= '0';
						else
							nx_state <= admin;
							warn <= '0';
						end if;
					elsif(ps_state = stud) then
						if(b = "0000") then
							nx_state <= idle;
							warn <= '0';
						elsif(b = "0001") then
							nx_state <= stud;
							warn <= '0';
						elsif(b = "0011" or b = "0010") then
							nx_state <= res;
							warn <= '1';
						elsif(b = "0100" or b = "0101" or b = "0110" or b = "0111") then
							nx_state <= prof;
							warn <= '1';
						else
							nx_state <= admin;
							warn <= '1';
						end if;
					elsif(ps_state = res) then
						if(b = "0000" or b = "0001") then
							nx_state <= idle;
							warn <= '0';
						elsif(b = "0010" or b="0011") then
							nx_state <= res;
							warn <= '0';
						elsif(b = "0100" or b = "0101" or b = "0110" or b = "0111") then
							nx_state <= prof;
							warn <= '1';
						else
							nx_state <= admin;
							warn <= '1';
						end if;
					elsif(ps_state = prof) then
						if(b = "0000" or b = "0001" or b = "0010" or b = "0011") then
							nx_state <= idle;
							warn <= '0';
						elsif(b = "0100" or b="0101" or b = "0110" or b = "0111") then
							nx_state <= prof;
							warn <= '0';
						else
							nx_state <= admin;
							warn <= '1';
						end if;
					else
						if(b = "0000" or b = "0001" or b = "0010" or b = "0011" or b = "0100" or b = "0101" or b = "0110" or b = "0111") then
							nx_state <= idle;
							warn <= '0';
						else
							nx_state <= admin;
							warn <= '0';
						end if;
					end if;
				end if;
			end if;
		end process;
		
		led_proc: process(warn, ps_state)
		begin
			if(warn='1') then
				y4 <= '1';
				y3 <= '1';
				y2 <= '1';
				y1 <= '1';
				y0 <= '1';
			else
				if(ps_state = idle) then
					y4 <= '0';
					y3 <= '0';
					y2 <= '0';
					y1 <= '0';
					y0 <= '0';
				elsif(ps_state = stud) then
					y4 <= '0';
					y3 <= '0';
					y2 <= '0';
					y1 <= '0';
					y0 <= '1';
				elsif(ps_state = res) then
					y4 <= '0';
					y3 <= '0';
					y2 <= '0';
					y1 <= '1';
					y0 <= '1';
				elsif(ps_state = prof) then
					y4 <= '0';
					y3 <= '0';
					y2 <= '1';
					y1 <= '1';
					y0 <= '1';
				elsif(ps_state = admin) then
					y4 <= '0';
					y3 <= '1';
					y2 <= '1';
					y1 <= '1';
					y0 <= '1';
				end if;
			end if;
		end process;
end behav;
