library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity encoder is
	port(A, B, C, D, En : in std_logic; Y0, Y1 : out std_logic);
end entity encoder;

architecture Struct of encoder is
	signal O1, O2 : std_logic;
begin
	--component instances
	OR1: OR_2 port map (A => A, B => C, Y => O1);
	OR2: OR_2 port map (A => A, B => B, Y => O2);
	AND1: AND_2 port map(A => O1, B => En, Y => Y0);
	AND2: AND_2 port map(A => O2, B => En, Y => Y1);
end Struct;