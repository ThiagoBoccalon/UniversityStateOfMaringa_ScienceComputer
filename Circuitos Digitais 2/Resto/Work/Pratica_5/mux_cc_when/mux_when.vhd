library ieee;
use ieee.std_logic_1164.all;
Entity mux_when is
	port (  ch: in bit_vector (0 to 9);
			s: out bit_vector (3 downto 0)
			);
end mux_when;
architecture comp of mux_when is
	begin
			s <= "0000" when ch(0)='0' else
				"0001" when ch(1)='0' else
				"0010" when ch(2)='0' else
				"0011" when ch(3)='0' else
				"0100" when ch(4)='0' else
				"0101" when ch(5)='0' else
				"0110" when ch(6)='0' else
				"0111" when ch(7)='0' else
				"1000" when ch(8)='0' else
				"1111";
	end comp;