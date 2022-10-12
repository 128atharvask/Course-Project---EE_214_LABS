library ieee;
use ieee.std_logic_1164.all;
use work.Gates.all;

entity ZNVLG  is
  port (X, Y: in std_logic_vector(3 downto 0); Z,N,V,L,G: buffer std_logic);
end entity ZNVLG;

architecture Struct of ZNVLG is
	signal Y3BAR, Y2BAR, Y1BAR, Y0BAR, X3BAR, C3, C2, C1, C0, S2, S1, S0, S2BAR, S1BAR, S0BAR, A1, A2, A3, A4, A5, A6, A7, A8, X1, O1, VBAR, NBAR : std_logic;
	
	component add_sub_4 is
	port (A3, A2, A1, A0, B3, B2, B1, B0, M: in std_logic; S3, S2, S1, S0, Cout: out std_logic);
	end component add_sub_4;
	
	begin
	NOT3: INVERTER port map (A => Y(3), Y => Y3BAR);
	NOT2: INVERTER port map (A => Y(2), Y => Y2BAR);
	NOT1: INVERTER port map (A => Y(1), Y => Y1BAR);
	NOT0: INVERTER port map (A => Y(0), Y => Y0BAR);
	ADDER1: add_sub_4 port map (A3 => Y3BAR, A2 => Y2BAR, A1 => Y1BAR, A0 => Y0BAR, B3 => '0', B2 => '0', B1 => '0', B0 => '1', M => '0', S3 => C3, S2 => C2, S1 => C1, S0 => C0); --cout
	ADDER2: add_sub_4 port map (A3 => C3, A2 => C2, A1 => C1, A0 => C0, B3 => X(3), B2 => X(2), B1 => X(1), B0 => X(0), M => '0', S3 => N, S2 => S2, S1 => S1, S0 => S0);
	NOT4: INVERTER port map (A => N, Y => NBAR);
	NOT5: INVERTER port map (A => S2, Y => S2BAR);
	NOT6: INVERTER port map (A => S1, Y => S1BAR);
	NOT7: INVERTER port map (A => S0, Y => S0BAR);
	AND1: AND_2 port map (S0BAR, S1BAR, A1);
	AND2: AND_2 port map (S2BAR, NBAR, A2);
	AND3: AND_2 port map (A1, A2, Z);
	NOT8: INVERTER port map (X(3), X3BAR);
	AND4: AND_2 port map (X3BAR, Y(3), A3);
	AND5: AND_2 port map (Y3BAR, X(3), A4);
	AND6: AND_2 port map (N, A3, A5);
	AND7: AND_2 port map (NBAR, A4, A6);
	OR1: OR_2 port map (A5, A6, V);
	XOR1: XOR_2 port map (V, N, X1);
	OR2: OR_2 port map (X1, Z, L);
	NOT9: INVERTER port map (V, VBAR);
	AND8: AND_2 port map (N, V, A7);
	AND9: AND_2 port map (NBAR, VBAR, A8);
	OR3: OR_2 port map (A7, A8, O1);
	OR4: OR_2 port map (O1, Z, G);
end Struct;
