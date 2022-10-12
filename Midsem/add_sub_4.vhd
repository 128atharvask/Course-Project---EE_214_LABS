library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity add_sub_4 is
	port (A3, A2, A1, A0, B3, B2, B1, B0, M: in std_logic; S3, S2, S1, S0, Cout: out std_logic);
end entity add_sub_4;

architecture struct of add_sub_4 is
	signal X0, X1, X2, X3, C0, C1, C2 : std_logic;
	

begin
XOR1: XOR_2 port map (B0 , M , X0);
XOR2: XOR_2 port map (B1 , M , X1);
XOR3: XOR_2 port map (B2 , M , X2);
XOR4: XOR_2 port map (B3 , M , X3);
FA1: FULL_ADDER port map (A0 , X0 , M, S0, C0); 
FA2: FULL_ADDER port map (A1 , X1 , C0, S1, C1);
FA3: FULL_ADDER port map (A2 , X2 , C1, S2, C2);
FA4: FULL_ADDER port map (A3 , X3 , C2, S3, Cout);


end struct;