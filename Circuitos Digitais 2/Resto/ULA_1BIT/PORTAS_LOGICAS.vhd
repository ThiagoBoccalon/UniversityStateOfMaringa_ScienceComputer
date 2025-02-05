LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY PORTAS_LOGICAS IS
	PORT( A,B: IN BIT; -- AS PORTAs TER� 8 ENTRADAS AO TODO
		  ENT_PL: BIT_VECTOR (5 DOWNTO 0);
		   SAIDAS: BIT_VECTOR (5 DOWNTO 0)); -- TEM DE EXISTIR 6 SAIDAS 3 COM PORTA NOT
END PORTAS_LOGICAS;

ARCHITECTURE TEST_PORTAS OF PORTAS_LOGICAS IS
	BEGIN
			PROCESS(A,B)
				BEGIN
					IF A = B THEN
						SAIDA (0) <= '1'; -- XNOR
						SAIDA (1) <= '0'; -- XOR
					ELSE
						SAIDA (0) <= '0' -- XNOR
						SAIDA (1) <= '1' -- XOR
						IF A= '0' AND B = '0' THEN
							SAIDA (2) <= '1'; -- NOR
							SAIDA (3) <= '0'; -- OR
						ELSE
							SAIDA (2) <= '0'; -- NOR
							SAIDA (3) <= '1'; -- OR
							IF A ='0' OR B ='0' THEN
								SAIDA (4) <= '1'; -- -NAND
								SAIDA (5) <= '0'; -- AND
							ELSE
								SAIDA (4) <= '0'; -- NAND
								SAIDA (5) <= '1'; -- AND
							END IF;
						END IF;
					END IF;
			END PROCESS;
	END TEST_PORTAS;