library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

package XOR_new is
	component XOR_GATE is
		port (a, b: in std_logic; f: out std_logic);
	end component XOR_GATE;
end package XOR_new;

library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity XOR_GATE is
	port(a, b: in std_logic; f: out std_logic);
end entity XOR_GATE;

architecture Struct of XOR_GATE is
	signal c, d, e : std_logic;
begin
	--component instances
NAND1: NAND_2 port map ( A => a, B => b, Y => c);
NAND2: NAND_2 port map ( A => a, B => c, Y => d);
NAND3: NAND_2 port map ( A => b, B => c, Y => e);

	--final xor
NAND4: NAND_2 port map ( A => d, B => e, Y => f);
end Struct;
