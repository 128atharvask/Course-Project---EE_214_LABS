library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity add_sub_4 is
	port (A3, A2, A1, A0, B3, B2, B1, B0, M: in std_logic; S3, S2, S1, S0, Cout: out std_logic);
end entity add_sub_4;

architecture struct of add_sub_4 is
	signal X0, X1, X2, X3, C0, C1, C2 : std_logic;
	
component XOR_GATE is
	port(a, b: in std_logic; f: out std_logic);
end component XOR_GATE;

component FULL_ADDER is
	port(a1, b1, c1: in std_logic; s, c: out std_logic);
end component FULL_ADDER;

begin
XOR1: XOR_GATE port map (a => B0 , b => M , f => X0);
XOR2: XOR_GATE port map (a => B1 , b => M , f => X1);
XOR3: XOR_GATE port map (a => B2 , b => M , f => X2);
XOR4: XOR_GATE port map (a => B3 , b => M , f => X3);
FA1: FULL_ADDER port map (a1 => A0 , b1 => X0 , c1 => M, s => S0, c => C0); 
FA2: FULL_ADDER port map (a1 => A1 , b1 => X1 , c1 => C0, s => S1, c => C1);
FA3: FULL_ADDER port map (a1 => A2 , b1 => X2 , c1 => C1, s => S2, c => C2);
FA4: FULL_ADDER port map (a1 => A3 , b1 => X3 , c1 => C2, s => S3, c => Cout);


end struct;