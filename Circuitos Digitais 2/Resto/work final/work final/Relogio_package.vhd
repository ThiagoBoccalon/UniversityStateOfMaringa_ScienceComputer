Library ieee;
Use ieee.std_logic_1164.all;
Library work;
Use work.all;

Package Relogio_package IS

COMPONENT cont_mod6_segundos IS
	PORT(clk  : IN STD_LOGIC;
		 q_out: BUFFER STD_LOGIC_VECTOR(2 DOWNTO 0));
		 --Constant es : STD_LOGIC := '1';
END COMPONENT;

COMPONENT cont_mod10_segundos IS --ES = entrada serial
	PORT(clk : IN STD_LOGIC;
		 q_out: BUFFER STD_LOGIC_VECTOR(3 DOWNTO 0));
		-- Constant es : STD_LOGIC := '1';
END COMPONENT;

COMPONENT cont_mod6_minutos IS
	PORT(clk : IN STD_LOGIC;
		 q_out: BUFFER STD_LOGIC_VECTOR(2 DOWNTO 0));
		-- Constant es : STD_LOGIC := '1';
END COMPONENT;

COMPONENT cont_mod10_minutos IS --ES = entrada serial
	PORT(clk: IN STD_LOGIC;
		 q_out: BUFFER STD_LOGIC_VECTOR(3 DOWNTO 0));
		-- Constant es : STD_LOGIC := '1';
END COMPONENT;

COMPONENT cont_mod24_horas IS
	PORT(clk : IN STD_LOGIC;
		 q_out: BUFFER STD_LOGIC_VECTOR(4 DOWNTO 0));
		-- Constant es : STD_LOGIC := '1';
END COMPONENT;

COMPONENT contadorFFT IS
	PORT(es, clr, clk : IN STD_LOGIC;  
		 q: BUFFER STD_LOGIC);  
END COMPONENT;

COMPONENT BCD_Segundos IS
PORT(Segundos_mod10 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	 Segundos_mod6 : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	 unidade_seg_7: OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	 dezena_seg_7: OUT STD_LOGIC_VECTOR(6 DOWNTO 0));  
END COMPONENT;

COMPONENT BCD_Minutos IS
PORT(Min_mod10 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	 Min_mod6 : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	 unidade_seg_7: OUT STD_LOGIC_VECTOR(6 DOWNTO 0); 
	 dezena_seg_7 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0));
END COMPONENT;

COMPONENT BCD_Horas IS
PORT(Horas : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
	 unidade_seg_7: OUT STD_LOGIC_VECTOR(0 TO 6); 
	 dezena_seg_7: OUT STD_LOGIC_VECTOR(0 TO 6));
END COMPONENT;

END Relogio_package;