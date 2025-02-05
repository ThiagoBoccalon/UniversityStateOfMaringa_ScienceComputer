LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY FLIPFLOPJK_PRESETCLEAR IS
	PORT(PST,CLR,CLK,J,K: IN STD_LOGIC;
		 Q, QBAR: OUT STD_LOGIC);
END FLIPFLOPJK_PRESETCLEAR;

ARCHITECTURE COMPORTAMENTAL OF FLIPFLOPJK_PRESETCLEAR IS
BEGIN
	PROCESS(PST,CLR,CLK,J,K)
	VARIABLE QV, QVBAR: STD_LOGIC;
		BEGIN
			IF (PST = '0') THEN 
				QV := '1';
				QVBAR := NOT QV;
			ELSIF (CLR = '0') THEN
				QV:= '0';
				QVBAR:= NOT QV;
			ELSIF (FALLING_EDGE (CLK)) THEN
				IF J = '1' AND K= '0' THEN
					QV:= '1';
					QVBAR := NOT QV;
				ELSIF J ='0' AND K = '1' THEN
					QV := '0';
					QVBAR := NOT QV;
				ELSIF J= '1' AND K='1' THEN
					QV:= '1';
					QVBAR:= '1';
				ELSIF J='0' AND K='0' THEN
					QV := QV;
					QVBAR := NOT QV;
				END IF;
			END IF;
			Q <= QV; QBAR <= QVBAR;
		END PROCESS;
	END COMPORTAMENTAL;
	
