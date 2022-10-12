library ieee;
use ieee.std_logic_1164.all;
use work.Gates.all;

entity ZNVLG  is
  port (X, Y: in std_logic_vector(3 downto 0); S3, S2, S1, S0: out std_logic);
end entity ZNVLG;

architecture Struct of ZNVLG is
	signal Y3BAR, Y2BAR, Y1BAR, Y0BAR, X3BAR, C3, C2, C1, C0: std_logic;
	
	component add_sub_4 is
	port (A3, A2, A1, A0, B3, B2, B1, B0, M: in std_logic; S3, S2, S1, S0, Cout: out std_logic);
	end component add_sub_4;
	
	begin
	NOT3: INVERTER port map (A => Y(3), Y => Y3BAR);
	NOT2: INVERTER port map (A => Y(2), Y => Y2BAR);
	NOT1: INVERTER port map (A => Y(1), Y => Y1BAR);
	NOT0: INVERTER port map (A => Y(0), Y => Y0BAR);
	ADDER1: add_sub_4 port map (A3 => Y3BAR, A2 => Y2BAR, A1 => Y1BAR, A0 => Y0BAR, B3 => '0', B2 => '0', B1 => '0', B0 => '1', M => '0', S3 => C3, S2 => C2, S1 => C1, S0 => C0);
	ADDER2: add_sub_4 port map (A3 => C3, A2 => C2, A1 => C1, A0 => C0, B3 => X(3), B2 => X(2), B1 => X(1), B0 => X(0), M => '0', S3 => S3, S2 => S2, S1 => S1, S0 => S0);
end Struct;
