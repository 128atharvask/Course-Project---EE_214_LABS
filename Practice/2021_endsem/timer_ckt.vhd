library ieee;
use ieee.std_logic_1164.all;
--
--entity timer_controller is
--	port( inp_switch:in std_logic_vector(2 downto 0);
--	reset,clock_50, clock_1:in std_logic;
--	out_LED: out std_logic_vector(3 downto 0));
--end timer_controller;
--
--architecture bhv of timer_controller is
--	signal outp : std_logic_vector
--	begin
--		proc : process(inp_switch, reset)
--		begin
--			

entity timer_ckt is
	port ( clock_1, clock_50, reset : in std_logic;
		LED : out std_logic_vector(3 downto 0);
		timer_inp : in std_logic_vector(1 downto 0));
		-- timer_inp is State Machine output
end entity timer_ckt;


-- Define architecture body
architecture bhv of timer_ckt is
begin
	process(clock_50)
		variable timer1 : integer range 1 to 500E6 := 1;
		variable timer2 : integer range 1 to 500E6 := 1;
		variable timer3 : integer range 1 to 500E6 := 1;
		-- the above variable will count the number of clock pulses till it reaches required number of seconds
		begin
		if................... -- Fill your code here
		-- You may have to use multiple nested if condition here
		-- e.g. clock_50'event, reset, condition for increment etc.
		-- reset will initialize the timer1, timer2 and timer3 with
		-- the value 1
		timer1 := timer1 + 1;
		-- this is the syntax to increment timer variable
		-- remember : you have to assign LED here also
		end if;
	end process;
end bhv;