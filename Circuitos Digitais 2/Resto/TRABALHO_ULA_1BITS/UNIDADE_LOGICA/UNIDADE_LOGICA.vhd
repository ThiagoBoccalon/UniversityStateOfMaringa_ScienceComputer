LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
	
ENTITY UNIDADE_LOGICA IS
	PORT(A,B: IN BIT;
	  
	     SEL: IN BIT; -- SELETOR DO MUX
		 Y: OUT BIT);
END UNIDADE_LOGICA;

ARCHITECTURE TEST_UNIDADE OF UNIDADE_LOGICA IS
	BEGIN
		PROCESS(A,B,SEL)
			BEGIN
				IF A = '0' AND (B = '0' OR B ='1') AND SEL = '0' THEN
					Y <= '0';
				ELSE 
					IF A = '1' AND B = '0' AND SEL = '0' THEN
						Y <= '1';
					ELSE
						IF A = '1' AND B = '1' AND SEL = '1' THEN
							Y <= '1';
						ELSE
							IF A = '0' AND B = '0' AND SEL = '1' THEN
								Y <= '0';
							ELSE 
								Y <= '1';
							END IF;
						END IF;
					END IF;
				END IF;							
		END PROCESS;
	END TEST_UNIDADE;
