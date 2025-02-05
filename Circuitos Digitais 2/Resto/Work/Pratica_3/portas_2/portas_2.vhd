library ieee;
use ieee.std_logic_1164.all;

entity portas_2 is
	port ( a, b: in bit;
			f_and, f_nand, f_or, f_xnor: out bit);
end portas_2;

architecture procedural of portas_2 is
begin
	process (a,b)
		begin
			if (a /= b) and (b = '0') then
				f_and <= '0';
				f_nand <= '1';
				f_or <= '1';
				f_xnor <= '0';
			else
				if (a = '0') and (b = a) then
						f_and <= '0';
						f_nand <= '1';
						f_or <= '0';
						f_xnor <= '1';
				else
						f_and <= '1';
						f_nand <= '0';
						f_or <= '1';
						f_xnor <= '1';
				end if;
			end if;			
	end process;
end procedural;