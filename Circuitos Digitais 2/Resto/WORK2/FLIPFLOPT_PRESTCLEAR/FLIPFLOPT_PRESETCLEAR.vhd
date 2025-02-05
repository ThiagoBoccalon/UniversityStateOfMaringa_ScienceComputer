LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY FLIPFLOPT_PRESETCLEAR IS
	PORT(PST,CLR,CLK,T: IN STD_LOGIC;
		 Q,QBAR: OUT STD_LOGIC);
END FLIPFLOPT_PRESETCLEAR;

ARCHITECTURE COMPORTAMENTAL OF FLIPFLOPT_PRESETCLEAR IS
BEGIN
	PROCESS(PST, CLR, CLK, T)
		VARIABLE QV, QVBAR: STD_LOGIC;
	BEGIN		
		IF (PST = '0') THEN
			QV := '1';
			QVBAR := NOT QV;
		ELSIF (CLR = '0') THEN
			QV := '0';
			QVBAR := NOT QV;
		ELSIF (FALLING_EDGE (CLK)) THEN
			IF (T = '1') THEN
				QV := NOT QV;
				QVBAR := NOT QV;
			ELSE
				QV := QV;
				QVBAR := NOT QV;
			END IF;
		END IF;
		Q<= QV; QBAR <= QVBAR;
	END PROCESS;
END COMPORTAMENTAL;