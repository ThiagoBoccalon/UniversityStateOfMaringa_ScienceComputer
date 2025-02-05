Library ieee;
Use ieee.std_logic_1164.all;
Library work;
Use work.all;
ENTITY BCD_Horas IS
PORT(Horas : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
	 unidade_seg_7: OUT STD_LOGIC_VECTOR(6 DOWNTO 0); 
	 dezena_seg_7: OUT STD_LOGIC_VECTOR(6 DOWNTO 0));
END BCD_Horas;

ARCHITECTURE Fluxo_Dados OF BCD_Horas IS
	BEGIN
	  unidade_seg_7 <= "1111110" WHEN (Horas = "00000" or Horas = "01010" or Horas = "10100") ELSE --0,10,20
		    		   "0110000" WHEN (Horas = "00001" or Horas = "01011" or Horas = "10101") ELSE --1,11,21
				       "1101101" WHEN (Horas = "00010" or Horas = "01100" or Horas = "10110") ELSE --2,12,22
					   "1111001" WHEN (Horas = "00011" or Horas = "01101" or Horas = "10111") ELSE --3,13,23
					   "0110011" WHEN (Horas = "00100" or Horas = "01110") ELSE --4,14
					   "1011011" WHEN (Horas = "00101" or Horas = "01111") ELSE --5,15
					   "0011111" WHEN (Horas = "00110" or Horas = "10000") ELSE --6,16
					   "1110000" WHEN (Horas = "00111" or Horas = "10001") ELSE --7,17
					   "1111111" WHEN (Horas = "01000" or Horas = "10010") ELSE --8,18
					   "1110011" WHEN (Horas = "01001" or Horas = "10011") ELSE --9,19
					   "0000000";	
	
	 dezena_seg_7 <= "1111110" WHEN (Horas = "00000" or Horas = "00001" or Horas = "00010" or Horas = "00011" or Horas = "00100" or Horas = "00101" or Horas = "00110" or Horas = "00111" or Horas = "01000" or Horas = "01001") ELSE --00...09
		             "0110000" WHEN (Horas = "01010" or Horas = "01011" or Horas = "01100" or Horas = "01101" or Horas = "01110" or Horas =	"01111" or Horas = "10000" or Horas = "10001" or Horas = "10010" or Horas = "10011") ELSE --10...19
					 "1101101" WHEN (Horas = "10100" or Horas = "10101" or Horas = "10110" or  Horas = "10111")  ELSE --20...23
					 "0000000";
END Fluxo_Dados;
