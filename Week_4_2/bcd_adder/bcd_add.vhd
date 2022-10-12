library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity bcd_add is
	port (A3, A2, A1, A0, B3, B2, B1, B0: in std_logic; Y4, Y3, Y2, Y1, Y0: out std_logic);
end entity bcd_add;

architecture struct of bcd_add is
	signal S3, S2, S1, S0, C1, C2, X1, X2, P :std_logic;
	
component add_sub_4 is
	port (A3, A2, A1, A0, B3, B2, B1, B0, M: in std_logic; S3, S2, S1, S0, Cout: out std_logic);
end component add_sub_4;

begin
ADD1: add_sub_4 port map (A3 => A3, A2 => A2, A1 => A1, A0 => A0, B3 => B3, B2 => B2, B1 => B1, B0 => B0, M => '0', S3 => S3, S2 => S2, S1 => S1, S0 => S0, Cout => C1);
ADD2: add_sub_4 port map (A3 => S3, A2 => S2, A1 => S1, A0 => S0, B3 => '0', B2 => P, B1 => P, B0 => '0', M => '0', S3 => Y3, S2 => Y2, S1 => Y1, S0 => Y0, Cout => C2);
OR1: OR_2 port map (A => C1, B => C2, Y => Y4);
OR2: OR_2 port map (A => S1, B => S2, Y => X1);
AND1: AND_2 port map (A => X1, B => S3, Y => X2);
OR3: OR_2 port map (A => X2, B => C1, Y => P);

end struct;
