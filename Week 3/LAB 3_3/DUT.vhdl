-- A DUT entity is used to wrap your design so that we can combine it with testbench.
-- This example shows how you can do this for the OR Gate

library ieee;
use ieee.std_logic_1164.all;

entity DUT is
    port(input_vector: in std_logic_vector(8 downto 0);
       	output_vector: out std_logic_vector(2 downto 0));
end entity;

architecture DutWrap of DUT is
   component encoder_8_to_3 is
     port(Y0, Y1, Y2, Y3, Y4, Y5, Y6, Y7, En : in std_logic; A2, A1, A0 : out std_logic);
   end component;
begin

   -- input/output vector element ordering is critical,
   -- and must match the ordering in the trace file!
   add_instance: encoder_8_to_3 
			port map (
					-- order of inputs Y7 Y6 Y5 Y4 Y3 Y2 Y1 Y0 E
					Y7 => input_vector(8),
					Y6 => input_vector(7),
					Y5 => input_vector(6),
					Y4 => input_vector(5),
					Y3 => input_vector(4),
					Y2 => input_vector(3),
					Y1 => input_vector(2),
					Y0 => input_vector(1),
					En => input_vector(0),
					
               -- order of output A2 A1 A0 
					A0 => output_vector(0),
					A1 => output_vector(1),
					A2=> output_vector(2));
end DutWrap;