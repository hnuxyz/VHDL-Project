LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY SUOCUN IS
PORT(D1,D2,D3,D4,D5,D6,D7,D8:IN STD_LOGIC;
	Q:OUT STD_LOGIC);
END SUOCUN;
ARCHITECTURE A OF SUOCUN IS
BEGIN
PROCESS(D1,D2,D3)
BEGIN
IF D1='1' OR D2='1' OR D3='1' OR D4='1' OR D5='1' OR D6='1' OR D7='1' OR D8='1' THEN
Q<='1';
ELSE Q<='0';
END IF;
END PROCESS;
END A; 