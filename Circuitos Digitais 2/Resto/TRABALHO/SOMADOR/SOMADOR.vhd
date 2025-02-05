-- SOMADOR COMPLETO DE 1 BIT
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY SOMADOR IS
	PORT (A_B_Cin: IN BIT_VECTOR (2 downTO 0);   -- A = (3), B(2), Cin(1) E6(0) � a entrada de condi��o
		--  E: IN BIT;
		  C_Out: OUT BIT;
		  S: OUT BIT); -- DA UMA VERIFICADA AQUI MAS ACHO QUE � S� 1 BIT QUE SAI
END SOMADOR;

-- O SOMADOR DEVE SER FEITO USANDO WHITE SELECT WHEN

ARCHITECTURE TEST_SOMADOR OF SOMADOR IS
	BEGIN
	   WITH A_B_Cin SELECT
			S <= '0' WHEN "000",
				 '1' WHEN "001",
				 '1' WHEN "010",
				 '0' WHEN "011",
				 '1' WHEN "100",
				 '0' WHEN "101",
				 '0' WHEN "110",
				 '1' WHEN "111";
				 
		WITH A_B_Cin SELECT
			C_Out <= '0' WHEN "000",
					 '0' WHEN "001",
					 '0' WHEN "010",
					 '1' WHEN "011",
					 '0' WHEN "100",
					 '1' WHEN "101",
					 '1' WHEN "110",
					 '1' WHEN "111";				
	END TEST_SOMADOR;