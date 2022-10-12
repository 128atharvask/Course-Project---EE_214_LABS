library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity multiplier is
	port(A3, A2, A1, A0, B2, B1, B0: in std_logic; M6, M5, M4, M3, M2, M1, M0: out std_logic);
end entity multiplier;

architecture struct of multiplier is
	signal O1, O2, O3, O4, O5, O6, O7, O8, O9, O10, O11, S4, S3, S2, S1: std_logic;
	
	component add_sub_4 is
	port (A3, A2, A1, A0, B3, B2, B1, B0, M: in std_logic; S3, S2, S1, S0, Cout: out std_logic);
end component add_sub_4;

begin
AND1: AND_2 port map(A => A0, B => B0, Y => M0);
AND2: AND_2 port map(A => A1, B => B0, Y => O1);
AND3: AND_2 port map(A => A2, B => B0, Y => O2);
AND4: AND_2 port map(A => A3, B => B0, Y => O3);
AND5: AND_2 port map(A => A0, B => B1, Y => O4);
AND6: AND_2 port map(A => A1, B => B1, Y => O5);
AND7: AND_2 port map(A => A2, B => B1, Y => O6);
AND8: AND_2 port map(A => A3, B => B1, Y => O7);
ADD1: add_sub_4 port map(A3 => '0', A2 => O3, A1 => O2, A0 => O1, B3 => O7, B2 => O6, B1 => O5, B0 => O4, M => '0', S3 => S3, S2 => S2, S1 => S1, S0 => M1, Cout => S4);
AND9: AND_2 port map(A => A0, B => B2, Y => O8);
AND10: AND_2 port map(A => A1, B => B2, Y => O9);
AND11: AND_2 port map(A => A2, B => B2, Y => O10);
AND12: AND_2 port map(A => A3, B => B2, Y => O11);
ADD2: add_sub_4 port map(A3 => S4, A2 => S3, A1 => S2, A0 => S1, B3 => O11, B2 => O10, B1 => O9, B0 => O8, M => '0', S3 => M5, S2 => M4, S1 => M3, S0 => M2, Cout => M6);
end struct;