library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;
entity encoder_8_to_3 is
	port (Y0, Y1, Y2, Y3, Y4, Y5, Y6, Y7, En : in std_logic; A2, A1, A0 : out std_logic);
end entity encoder_8_to_3;

architecture Struct of encoder_8_to_3 is
	signal  P0, P1, Q0, Q1, S1, S2 : std_logic;
	
component encoder_4_2 is
port(A, B, C, D, En : in std_logic; Y0, Y1 : out std_logic);
end component encoder_4_2;
begin
	--component instances
	encoder1: encoder_4_2 port map(A => Y7, B => Y6, C => Y5, D => Y4, En => En,Y0 => Q0, Y1 => Q1);
	encoder2: encoder_4_2 port map(A => Y3, B => Y2, C => Y1, D => Y0, En => En,Y0 => P0, Y1 => P1);
	OR1: OR_2 port map (A => P0, B => Q0, Y => A0);
	OR2: OR_2 port map (A => P1, B => Q1, Y => A1);
	OR3: OR_2 port map (A => Q1, B => Q0, Y => S1);
	OR4: OR_2 port map (A => S1, B => Y4, Y => S2);
	AND1: AND_2 port map (A => S2, B => En, Y => A2);
end Struct;