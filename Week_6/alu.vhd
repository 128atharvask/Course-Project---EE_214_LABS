library ieee;
use ieee.std_logic_1164.all;


entity alu_beh is
	generic(
	operand_width : integer:=4);
	port (
	A: in std_logic_vector(operand_width-1 downto 0);
	B: in std_logic_vector(operand_width-1 downto 0);
	op: out std_logic_vector((operand_width*2)-1 downto 0)) ;
end alu_beh;


architecture a1 of alu_beh is

	function add(A: in std_logic_vector((operand_width*2)-1 downto 0);
	B: in std_logic_vector((operand_width*2)-1 downto 0))
	return std_logic_vector is
		variable sum: std_logic_vector((operand_width*2)-1 downto 0):= (others=>'0');
		variable carry: std_logic_vector((operand_width*2)-1 downto 0):= (others=>'0');
		begin
		
		L1: for i in 0 to 7 loop
			if i=0 then
				sum(i) := A(i) xor B(i) xor '0';
				carry(i) := A(i) and B(i);
			else
				sum(i) := A(i) xor B(i) xor carry(i-1);
				carry(i) := (A(i) and B(i)) or (carry(i-1) and (A(i) or B(i)));
			end if;
		end loop L1;
		return sum;
	end add;
	
	
	function sub(A: in std_logic_vector(operand_width-1 downto 0);
	B: in std_logic_vector(operand_width-1 downto 0))
	return std_logic_vector is
		variable diff : std_logic_vector((operand_width*2)-1 downto 0):= (others=>'0');
		variable carry : std_logic_vector(operand_width-1 downto 0):= (others=>'0');
		begin
		L2: for i in 0 to 3 loop
			if i = 0 then
				diff(i) := A(i) xor B(i) xor '0';
				carry(i) := A(i) and (not B(i));
			else
				diff(i) := A(i) xor B(i) xor carry(i-1);
				carry(i) := (not(B(i)) and carry(i-1)) or (A(i) and carry(i-1)) or (A(i) and not(B(i)));
			end if;
		end loop L2;
		return diff;
	end sub;
	
	function rolf(A: in std_logic_vector(operand_width-1 downto 0);
	B: in std_logic_vector(operand_width-1 downto 0))
	return std_logic_vector is
		variable shift : std_logic_vector((operand_width*2)-1 downto 0):= (others=>'0');
		variable p : integer:=0;
		begin
		L3: for i in 0 to 2 loop
			if B(i)='1' then
			p := p + 2**i;
			end if;
		end loop L3;
		L4: for i in 0 to 3 loop
			shift((i+p) mod 8) := A(i);
		end loop L4;
		return shift;
	end rolf;
		
	function mult_5(A: in std_logic_vector(operand_width-1 downto 0))
	return std_logic_vector is
		variable result : std_logic_vector((operand_width)*2 -1 downto 0):= (others=>'0');
		begin
		L5: for i in 0 to 4 loop
			result := add(A, result);
		end loop L5;
		return result;
	end mult_5;	
	
	begin
	
	alu : process(A, B)
	begin
		if ((A(3)='1') and (B(3)='1')) then
			op <= '0' & '0' & '0' & '0' & (A xor B) ;
		elsif ((A(3)='1') and (B(3)='0')) then
			op <= add(('0' & '0' & A & '0' & '0'),('0' & '0' & '0' & '0' & A));
		elsif ((A(3)='0') and (B(3)='1')) then
			op <= sub(A,B);
		else 
			op <= rolf(A,B);
		end if ;	
		
	end process;
end a1;