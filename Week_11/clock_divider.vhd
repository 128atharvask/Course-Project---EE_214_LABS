library ieee;
use ieee.std_logic_1164.all;

entity clock_divider is
	port( clk_50: in std_logic, freq: in integer; clk_out:out std_logic);
end entity;

architecture bhv of clock_divider is
	signal count : integer := 1;
	signal outp : std_logic := '0';
	
	begin
		counter:process(clk_50,resetn)
		begin
			if(resetn = '1') then
				count <= 1;
			else
				if(clk_50'event and clk_50='1') then
					if(count=12500000) then
						count <= 1;
					else
						count <= count + 1;
					end if;
				end if;
			end if;
		end process;
		
		outp_proc:process(count)
		begin
			if(count=1) then
				outp <= not outp;
				clk_out <= outp;
			end if;
		end process;
end bhv;