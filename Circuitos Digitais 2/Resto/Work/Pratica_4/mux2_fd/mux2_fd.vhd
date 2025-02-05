library ieee;
use ieee.std_logic_1164.all;

entity mux2_fd is
	port (a,b: in bit;
		s: in bit;
		f: out bit
		);
	end mux2_fd;
architecture fluxo_de_dados of mux2_fd is
begin
	f <= ((not s) and a) or (s and b);
end fluxo_de_dados;