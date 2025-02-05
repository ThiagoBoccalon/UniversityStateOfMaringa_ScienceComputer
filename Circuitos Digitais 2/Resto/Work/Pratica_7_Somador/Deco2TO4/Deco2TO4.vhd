library ieee;
use ieee.std_logic_1164.all;

-- library work

use work.deco2to4_package.all;

entity deco2to4 is
	port (s1,s0: in bit;
		  d3,d2,d1,d0: out bit);
end deco2to4;

architecture teste of deco2to4 is
signal t0,t1: bit;
begin
	p1: not_1 port map (s0,t0);
	p2: not_1 port map (s1,t1);
	p3: and_2 port map (t0,t1,d0);
	p4: and_2 port map (t0,t1,d1);
	p5: and_2 port map (t0,t1,d2);
	p6: and_2 port map (t0,t1,d3);
end teste;
