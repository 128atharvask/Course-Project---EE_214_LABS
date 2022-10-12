library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity multi_str_det is
port( inp:in std_logic_vector(4 downto 0);
 reset,clock:in std_logic;
 outp: out std_logic);
end multi_str_det;


architecture bhv of multi_str_det is
	---------------Define state type here----------------------------
	type state is (rst,s1,s2,s3,s4,s5);
	---------------Define signals of state type----------------------
	signal y0_present,y0_next,y1_present,y1_next,y2_present,y2_next : state:=rst;
	signal o0, o1, o2: std_logic;

	begin
	
		clock_proc0:process(clock,reset)
		begin
			if(clock='1' and clock' event) then
				if(reset='1') then
				y0_present<=rst; --Here Reset is synchronous
				else
				y0_present<=y0_next;
				end if;
			end if;
		end process;

		state_transition_proc0:process(inp,y0_present)
		begin
			case y0_present is
			when rst=>
				if(unsigned(inp)=18) then --r has been detected
				y0_next<= s1;
				else
				y0_next<= y0_present;
				end if;
			when s1=>
				if(unsigned(inp)=21) then --u has been detected
				y0_next<= s2;
				else
				y0_next<= s1;
				end if;
			when s2=>
				if(unsigned(inp)=14) then --n has been detected
				y0_next<= s3;
				else
				y0_next<= s2;
				end if;
--			when s3=>
--				y0_next<=s3;
			when others=>
				y0_next<= y0_present;
			end case;
		end process;


		output_proc0:process(y0_present, inp) ------- output process after this which will give
		-------the output based on the present state and input (Mealy machine)

		begin
		case y0_present is
		when rst=>
		o0<='0';
		when s1=>
		o0<='0';
		when s2=>
		if(unsigned(inp)=14)then
			o0<='1';
		else
			o0<='0';
		end if;
		when s3=>
		o0<='0';
		when others=>
		o0<=o0;
		end case;
		end process;


		clock_proc1:process(clock,reset)
		begin
			if(clock='1' and clock' event) then
				if(reset='1') then
				y1_present<=rst; --Here Reset is synchronous
				else
				y1_present<=y1_next;
				end if;
			end if;
		end process;

		state_transition_proc1:process(inp,y1_present)
		begin
			case y1_present is
			when rst=>
				if(unsigned(inp)=3) then --c has been detected
				y1_next<= s1;
				else
				y1_next<= y1_present;
				end if;
			when s1=>
				if(unsigned(inp)=18) then --r has been detected
				y1_next<= s2;
				else
				y1_next<= s1;
				end if;
			when s2=>
				if(unsigned(inp)=25) then --y has been detected
				y1_next<= s3;
				else
				y1_next<= s2;
				end if;
--			when s3=>
--				y1_next<=s3;
			when others=>
				y1_next<= y1_present;
			end case;
		end process;


		output_proc1:process(y1_present, inp) ------- output process after this which will give
		-------the output based on the present state and input (Mealy machine)

		begin
		case y1_present is
		when rst=>
		o1<='0';
		when s1=>
		o1<='0';
		when s2=>
		if(unsigned(inp)=25)then
			o1<='1';
		else
			o1<='0';
		end if;
		when s3=>
		o1<='0';
		when others=>
		o1<=o1;
		end case;
		end process;

		clock_proc2:process(clock,reset)
		begin
			if(clock='1' and clock' event) then
				if(reset='1') then
				y2_present<=rst; --Here Reset is synchronous
				else
				y2_present<=y2_next;
				end if;
			end if;
		end process;

		state_transition_proc2:process(inp,y2_present)
		begin
			case y2_present is
			when rst=>
				if(unsigned(inp)=2) then --b has been detected
				y2_next<= s1;
				else
				y2_next<= y2_present;
				end if;
			when s1=>
				if(unsigned(inp)=18) then --r has been detected
				y2_next<= s2;
				else
				y2_next<= s1;
				end if;
			when s2=>
				if(unsigned(inp)=15) then --o has been detected
				y2_next<= s3;
				else
				y2_next<= s2;
				end if;
			when s3=>
				if(unsigned(inp)=15) then --o has been detected
				y2_next<= s4;
				else
				y2_next<= s3;
				end if;
			when s4=>
				if(unsigned(inp)=13) then --m has been detected
				y2_next<= s5;
				else
				y2_next<= s4;
				end if;
--			when s5=>
--				y2_next<=s5;
			when others=>
				y2_next<=y2_present;
			end case;
		end process;


		output_proc2:process(y2_present, inp) ------- output process after this which will give
		-------the output based on the present state and input (Mealy machine)

		begin
		case y2_present is
		when rst=>
		o2<='0';
		when s1=>
		o2<='0';
		when s2=>
		o2<='0';
		when s3=>
		o2<='0';
		when s4=>
		if(unsigned(inp)=13) then
			o2<='1';
		else
			o2<='0';
		end if;
		when s5=>
		o2<='0';
		when others=>
		o2<='0';
		end case;
		end process;
		
		final_output : process(o0,o1,o2)
		begin
		outp <= o0 or o1 or o2;
		end process;
end bhv;