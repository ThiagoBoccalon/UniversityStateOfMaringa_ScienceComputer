library ieee;
use ieee.std_logic_1164.all;

entity exercicio_6 is
	port (i0,i1,i2 : in bit;
		  s1, s2: out bit);
end exercicio_6;

architecture X of exercicio_6 is
	begin
		s1 <= i0 and (not i1);
		s2 <= i1 xor i2;
	end X;