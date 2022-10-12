library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity encoder is
	port(A, B, C, D : in std_logic; Y1, Y0, V : out std_logic);
end entity encoder;

architecture Struct of encoder is
	signal S1, S2, S3, S4, S5, S6 : std_logic;
begin
	--component instances
	--MSB of output
	OR1: OR_2 port map(A => A, B => B, Y => Y1);
	
	--lsb of output
	NOT1: INVERTER port map(A => A, Y => S1);
	NOT2: INVERTER port map(A => B, Y => S2);
	AND1: AND_2 port map(A => S1, B => S2, Y => S3);
	AND2: AND_2 port map(A => S3, B => C, Y => S4);
	OR2: OR_2 port map(A => A, B => S4, Y => Y0);
	
	--valid output
	OR3: OR_2 port map(A => A, B => B, Y => S5);
	OR4: OR_2 port map(A => C, B => D, Y => S6);
	OR5: OR_2 port map(A => S5, B => S6, Y => V);
end Struct;