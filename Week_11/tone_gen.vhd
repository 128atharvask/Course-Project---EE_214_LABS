--library ieee;
--use ieee.std_logic_1164.all;
--
--entity tone_gen is
--	port( clk_50: in std_logic; sw: in std_logic_vector(7 downto 0);
--		spkr_out:out std_logic; led_out: out std_logic_vector(7 downto 0));
--end tone_gen;
--
--architecture bhv of tone_gen is
--	signal count : integer := 1;
--	signal outp : std_logic := '0';
--	
--	begin
--		counter_update:process(clk_50,sw)
--			begin
--				if(clk_50'event and clk_50='1') then
--					count <= count + 1;	
--				end if;
--				case sw is
--				when "11111111" =>
--					if(count>=52083) then
--						count <= 1;
--					end if;					
--				when "01111111" =>
--					if(count>=55556) then
--						count <= 1;
--					end if;
--				when "00111111" =>
--					if(count>=62500) then
--						count <= 1;
--					end if;
--				when "00011111" =>
--					if(count>=69445) then
--						count <= 1;
--					end if;
--				when "00001111" =>
--					if(count>=78125) then
--						count <= 1;
--					end if;
--					when "00000111" =>
--					if(count>=83333) then
--						count <= 1;
--					end if;
--				when "00000011" =>
--					if(count>=92593) then
--						count <= 1;
--				end if;
--				when "00000001" =>
--					if(count>=104168) then
--						count <= 1;
--				end if;
--				when others =>
--					count <= count;
--			end case;
--			end process;
--			
--			
--		led_outp:process(sw)
--		begin
--			case sw is
--				when "11111111" =>
--					led_out <= "10000000";
--				when "01111111" =>
--					led_out <= "01000000";
--				when "00111111" =>
--					led_out <= "00100000";
--				when "00011111" =>
--					led_out <= "00010000";
--				when "00001111" =>
--					led_out <= "00001000";
--				when "00000111" =>
--					led_out <= "00000100";
--				when "00000011" =>
--					led_out <= "00000010";
--				when "00000001" =>
--					led_out <= "00000001";
--				when others =>
--					led_out <= "00000000";
--			end case;
--		end process;
--				
--		
--		
--		outp_proc:process(count)
--		begin
--			if(count=1) then
--				outp <= not outp;
--				spkr_out <= outp;
--			end if;
--		end process;
--end bhv;




library ieee;
use ieee.std_logic_1164.all;

entity tone_gen is
	port( clk_50: in std_logic; sw: in std_logic_vector(7 downto 0);
		spkr_outp:out std_logic; led_out: out std_logic_vector(7 downto 0));
end entity;

architecture bhv of tone_gen is
	signal count1, count2, count3, count4, count5, count6, count7, count8 : integer := 1;
	signal outp1, outp2, outp3, outp4, outp5, outp6, outp7, outp8 : std_logic := '0';
	--signal o1, o2, o3, o4, o5, o6, o7, o8 : std_logic;
	
	begin
		counter1:process(clk_50)
		begin
			if(clk_50'event and clk_50='1') then
						count1 <= count1 + 1;
				if(count1=104168) then
						count1 <= 1;
						outp1 <= not outp1;
					end if;
				end if;
	end process;
		counter2:process(clk_50)
		begin
			if(clk_50'event and clk_50='1') then
						count2 <= count2 + 1;
				if(count2=92593) then
						count2 <= 1;
						outp2 <= not outp2;
					end if;
				end if;
	end process;
		counter3:process(clk_50)
		begin
			if(clk_50'event and clk_50='1') then
						count3 <= count3 + 1;
				if(count3=83333) then
						count3 <= 1;
						outp3 <= not outp3;
					end if;
				end if;
	end process;
	counter4:process(clk_50)
		begin
			if(clk_50'event and clk_50='1') then
						count4 <= count4 + 1;
				if(count4=78125) then
						count4 <= 1;
						outp4 <= not outp4;
					end if;
				end if;
	end process;
	counter5:process(clk_50)
		begin
			if(clk_50'event and clk_50='1') then
						count5 <= count5 + 1;
				if(count5=69445) then
						count5 <= 1;
						outp5 <= not outp5;
					end if;
				end if;
	end process;
	counter6:process(clk_50)
		begin
			if(clk_50'event and clk_50='1') then
						count6 <= count6 + 1;
				if(count6=62500) then
						count6 <= 1;
						outp6 <= not outp6;
					end if;
				end if;
	end process;
	counter7:process(clk_50)
		begin
			if(clk_50'event and clk_50='1') then
						count7 <= count7 + 1;
				if(count7=55556) then
						count7 <= 1;
						outp7 <= not outp7;
					end if;
				end if;
	end process;
	counter8:process(clk_50)
		begin
			if(clk_50'event and clk_50='1') then
						count8 <= count8 + 1;
				if(count8=52083) then
						count8 <= 1;
						outp8 <= not outp8;
					end if;
				end if;
	end process;
		
		
--	outp_proc8:process(count8)
--		begin
--			if(count8=1) then
--					spkr_out <= outp;
--			end if;
--		end process;
--	outp_proc7:process(count7)
--		begin
--		if(count7=1) then
--					outp <= not outp;
--					spkr_out <= outp;
--			end if;
--		end process;
--	outp_proc6:process(count6)
--		begin
--			if(count6=1) then
--					outp <= not outp;
--					spkr_out <= outp;
--			end if;
--		end process;
--	outp_proc5:process(count5)
--		begin
--			if(count5=1) then
--					outp <= not outp;
--					spkr_out <= outp;
--			end if;
--		end process;
--	outp_proc4:process(count4)
--		begin
--			if(count4=1) then
--					outp <= not outp;
--					spkr_out <= outp;
--			end if;
--			end process;
--	outp_proc3:process(count3)
--		begin
--		if(count3=1) then
--					outp <= not outp;
--					spkr_out <= outp;
--			end if;
--		end process;
--	outp_proc2:process(count2)
--		begin
--			if(count2=1) then
--					outp <= not outp;
--					spkr_out <= outp;
--			end if;
--		end process;
--	outp_proc1:process(count1)
--		begin
--			if(count1=1) then
--					outp <= not outp;
--					spkr_out <= outp;
--			end if;
--		end process;
--		
		
		led_outp:process(sw)
		begin
				if(sw="11111111") then
					led_out <= "10000000";
					spkr_outp <= outp8;
				elsif(sw="01111111") then
					led_out <= "01000000";
					spkr_outp <= outp7;
				elsif(sw="00111111") then
					led_out <= "00100000";
					spkr_outp <= outp6;
				elsif(sw="00011111") then
					led_out <= "00010000";
					spkr_outp <= outp5;
				elsif(sw="00001111") then
					led_out <= "00001000";
					spkr_outp <= outp4;
				elsif(sw="00000111") then
					led_out <= "00000100";
					spkr_outp <= outp3;
				elsif(sw="00000011") then
					led_out <= "00000010";
					spkr_outp <= outp2;
				elsif(sw="00000001") then
					led_out <= "00000001";
					spkr_outp <= outp1;
--				else
--					led_out <= "00000000";
--					spkr_outp <= '0';
			end if;
		end process;
end bhv;