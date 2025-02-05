LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY FLIPFLOPD_PRESETCLEAR IS
	PORT(PST, CLR, CLK, D : IN STD_LOGIC;
		  Q, QBAR : OUT STD_LOGIC);
END FLIPFLOPD_PRESETCLEAR;

ARCHITECTURE COMPORTAMENTAL OF FLIPFLOPD_PRESETCLEAR IS
SIGNAL QV, QVBAR : STD_LOGIC;
	BEGIN
		PROCESS(PST,CLR,CLK,D)
			BEGIN
				 IF (PST = '0') THEN
					QV <= '1';
					QVBAR <= NOT QV;
				 ELSIF (CLR = '0') THEN
					QV <= '0';
					QVBAR <= NOT QV;
				ELSIF (FALLING_EDGE (CLK)) THEN
					QV <= D;
					QVBAR <= NOT D;
				END IF;
			 END PROCESS;
		Q <= QV; QBAR <= QVBAR;
 	END COMPORTAMENTAL;