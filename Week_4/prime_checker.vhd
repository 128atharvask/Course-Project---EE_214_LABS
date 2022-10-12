library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;


entity prime_checker is
	port (X3, X2, X1, X0 : in std_logic; y : out std_logic);
end entity prime_checker;

architecture struct of prime_checker is
	signal X1_bar, X2_bar, X3_bar, A1, A2, A3, A4, S1, S2, S3, S4, O1, O2 : std_logic;
begin
	--component instances
	NOT1: INVERTER port map(A => X1, Y => X1_bar);
	NOT2: INVERTER port map(A => X2, Y => X2_bar);
	NOT3: INVERTER port map(A => X3, Y=> X3_bar);
	AND1: AND_2 port map (A => X0, B => X1_bar, Y => A1);
	AND2: AND_2 port map (A => A1, B => X2, Y => S1);
	AND3: AND_2 port map (A => X0, B => X1, Y => A2);
	AND4: AND_2 port map (A => A2, B => X3_bar, Y => S2);
	AND5: AND_2 port map (A => X1, B => X2_bar, Y => A3);
	AND6: AND_2 port map (A => A3, B => X3_bar, Y => S3);
	AND7: AND_2 port map (A => x0, B => X1, Y => A4);
	AND8: AND_2 port map (A => A4, B => X2_bar, Y => S4);
	OR1: OR_2 port map (A => S1, B => S2, Y => O1);
	OR2: OR_2 port map (A => S3, B => S4, Y => O2);
	OR3: OR_2 port map (A => O1, B => O2, Y => y);
end struct;