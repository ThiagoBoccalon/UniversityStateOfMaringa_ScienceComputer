LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY CONT_SINC_MOD4 IS
	PORT(CLR, CLK, ES: IN STD_LOGIC;
		 Q_OUT, QB_OUT: BUFFER STD_LOGIC_VECTOR (1 DOWNTO 0));
END CONT_SINC_MOD4;

ARCHITECTURE ESTRUTURAL OF CONT_SINC_MOD4 IS
COMPONENT FFJK_C IS
	PORT(CLR, CLK, J,K: IN STD_LOGIC;
		 Q, QBAR: BUFFER STD_LOGIC);
END COMPONENT;

BEGIN
		FFJK_C1: FFJK_C PORT MAP (CLR,CLK,ES,ES,Q_OUT(1),QB_OUT(1));
		FFJK_C2: FFJK_C PORT MAP (CLR,CLK,Q_OUT(1),Q_OUT(1),Q_OUT(0),QB_OUT(0));
END ESTRUTURAL;

