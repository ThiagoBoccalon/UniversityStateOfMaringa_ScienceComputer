Library ieee;
Use ieee.std_logic_1164.all;
Library work;
Use work.all;
ENTITY BCD_Segundos IS
PORT(Segundos_mod10 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	 Segundos_mod6 : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	 unidade_seg_7: OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	 dezena_seg_7: OUT STD_LOGIC_VECTOR(6 DOWNTO 0)); 
END BCD_Segundos;

ARCHITECTURE Fluxo_Dados OF BCD_Segundos IS

	BEGIN
		unidade_seg_7 <= "1111110" WHEN Segundos_mod10 = "0000" ELSE--0
						 "0110000" WHEN Segundos_mod10 = "0001" ELSE--1
						 "1101101" WHEN Segundos_mod10 = "0010" ELSE--2
						 "1111001" WHEN Segundos_mod10 = "0011" ELSE--3
						 "0110011" WHEN Segundos_mod10 = "0100" ELSE--4
						 "1011011" WHEN Segundos_mod10 = "0101" ELSE--5
					     "0011111" WHEN Segundos_mod10 = "0110" ELSE--6
						 "1110000" WHEN Segundos_mod10 = "0111" ELSE--7
					     "1111111" WHEN Segundos_mod10 = "1000" ELSE--8
						 "1110011" WHEN Segundos_mod10 = "1001" ELSE--9
						 "0000000";

		dezena_seg_7 <=  "1111110" WHEN Segundos_mod6 = "000" ELSE --0
		                 "0110000" WHEN Segundos_mod6 = "001" ELSE --1
						 "1101101" WHEN Segundos_mod6 = "010" ELSE --2
						 "1111001" WHEN Segundos_mod6 = "011" ELSE --3
						 "0110011" WHEN Segundos_mod6 = "100" ELSE --4
						 "1011011" WHEN Segundos_mod6 = "101" ELSE --5
						 "0000000"; --conta de 0 a 59
END Fluxo_Dados;