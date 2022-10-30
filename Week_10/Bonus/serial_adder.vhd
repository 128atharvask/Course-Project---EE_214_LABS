library ieee;
use ieee.std_logic_1164.all;

entity Serial_Adder is
	port (reset, a, b, clock: in std_logic; s: out std_logic);
end entity;

architecture BHV of Serial_Adder is
	signal c : std_logic :='0';
	begin
		output_proc: process(clock,a, b,reset)
		begin
		s <=a xor b xor c;
		if(reset='1')then 
			s <= '0';
			c <= '0';
		elsif(clock'event and clock='1') then
			c <= ((a xor b) and c) or (a and b);
		end if;
	end process output_proc;
end BHV;