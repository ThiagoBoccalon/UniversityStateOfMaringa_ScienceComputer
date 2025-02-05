library ieee;
use ieee.std_logic_1164.all;

package subtrator_package is

component not_1
port (x: in bit;
	  z: out bit);
end component;	  	
	component xor_2	
		port (x,y: in bit;
		  z: out bit);		
	end component;
	
component or_3	
port (x,y,w: in bit;
		  z: out bit	
			);		
end component;
component and_2	
port (x,y: in bit;
		  z: out bit	
			);		
end component;
end subtrator_package;