-- Copyright (C) 2017  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- PROGRAM		"Quartus Prime"
-- VERSION		"Version 17.1.0 Build 590 10/25/2017 SJ Standard Edition"
-- CREATED		"Sat Nov 06 16:11:10 2021"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY QD IS 
	PORT
	(
		S1 :  IN  STD_LOGIC;
		S2 :  IN  STD_LOGIC;
		S3 :  IN  STD_LOGIC;
		S4 :  IN  STD_LOGIC;
		S5 :  IN  STD_LOGIC;
		S6 :  IN  STD_LOGIC;
		S7 :  IN  STD_LOGIC;
		S8 :  IN  STD_LOGIC;
		CLR :  IN  STD_LOGIC;
		EN :  IN  STD_LOGIC;
		EN8 :  IN  STD_LOGIC;
		SOUND :  OUT  STD_LOGIC;
		SOUND1 :  OUT  STD_LOGIC;
		BCD :  OUT  STD_LOGIC_VECTOR(7 DOWNTO 0);
		H :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0);
		L :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END QD;

ARCHITECTURE bdf_type OF QD IS 

COMPONENT bianma
	PORT(Q1 : IN STD_LOGIC;
		 Q2 : IN STD_LOGIC;
		 Q3 : IN STD_LOGIC;
		 Q4 : IN STD_LOGIC;
		 Q5 : IN STD_LOGIC;
		 Q6 : IN STD_LOGIC;
		 Q7 : IN STD_LOGIC;
		 Q8 : IN STD_LOGIC;
		 CLR : IN STD_LOGIC;
		 EN : OUT STD_LOGIC;
		 M : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;

COMPONENT display
	PORT(M : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 BCD : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;

COMPONENT djsq
	PORT(CLR : IN STD_LOGIC;
		 CLK : IN STD_LOGIC;
		 EN : IN STD_LOGIC;
		 SOUND1 : OUT STD_LOGIC;
		 H : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
		 L : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;

COMPONENT suocun
	PORT(D1 : IN STD_LOGIC;
		 D2 : IN STD_LOGIC;
		 D3 : IN STD_LOGIC;
		 D4 : IN STD_LOGIC;
		 D5 : IN STD_LOGIC;
		 D6 : IN STD_LOGIC;
		 D7 : IN STD_LOGIC;
		 D8 : IN STD_LOGIC;
		 Q : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT qdjb
	PORT(S1 : IN STD_LOGIC;
		 S2 : IN STD_LOGIC;
		 S3 : IN STD_LOGIC;
		 S4 : IN STD_LOGIC;
		 S5 : IN STD_LOGIC;
		 S6 : IN STD_LOGIC;
		 S7 : IN STD_LOGIC;
		 S8 : IN STD_LOGIC;
		 CLR : IN STD_LOGIC;
		 OE : IN STD_LOGIC;
		 Q1 : OUT STD_LOGIC;
		 Q2 : OUT STD_LOGIC;
		 Q3 : OUT STD_LOGIC;
		 Q4 : OUT STD_LOGIC;
		 Q5 : OUT STD_LOGIC;
		 Q6 : OUT STD_LOGIC;
		 Q7 : OUT STD_LOGIC;
		 Q8 : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT fasheng
	PORT(CLK : IN STD_LOGIC;
		 CLR : IN STD_LOGIC;
		 EN : IN STD_LOGIC;
		 SOUND : OUT STD_LOGIC
	);
END COMPONENT;

SIGNAL	SYNTHESIZED_WIRE_19 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_20 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_21 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_22 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_23 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_24 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_25 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_26 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_8 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_17 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_18 :  STD_LOGIC;


BEGIN 



b2v_1 : bianma
PORT MAP(Q1 => SYNTHESIZED_WIRE_19,
		 Q2 => SYNTHESIZED_WIRE_20,
		 Q3 => SYNTHESIZED_WIRE_21,
		 Q4 => SYNTHESIZED_WIRE_22,
		 Q5 => SYNTHESIZED_WIRE_23,
		 Q6 => SYNTHESIZED_WIRE_24,
		 Q7 => SYNTHESIZED_WIRE_25,
		 Q8 => SYNTHESIZED_WIRE_26,
		 CLR => CLR,
		 EN => SYNTHESIZED_WIRE_18,
		 M => SYNTHESIZED_WIRE_8);


b2v_2 : display
PORT MAP(M => SYNTHESIZED_WIRE_8,
		 BCD => BCD);


b2v_3 : djsq
PORT MAP(CLR => CLR,
		 CLK => EN8,
		 EN => EN,
		 SOUND1 => SOUND1,
		 H => H,
		 L => L);


b2v_4 : suocun
PORT MAP(D1 => SYNTHESIZED_WIRE_19,
		 D2 => SYNTHESIZED_WIRE_20,
		 D3 => SYNTHESIZED_WIRE_21,
		 D4 => SYNTHESIZED_WIRE_22,
		 D5 => SYNTHESIZED_WIRE_23,
		 D6 => SYNTHESIZED_WIRE_24,
		 D7 => SYNTHESIZED_WIRE_25,
		 D8 => SYNTHESIZED_WIRE_26,
		 Q => SYNTHESIZED_WIRE_17);


b2v_5 : qdjb
PORT MAP(S1 => S1,
		 S2 => S2,
		 S3 => S3,
		 S4 => S4,
		 S5 => S5,
		 S6 => S6,
		 S7 => S7,
		 S8 => S8,
		 CLR => CLR,
		 OE => SYNTHESIZED_WIRE_17,
		 Q1 => SYNTHESIZED_WIRE_19,
		 Q2 => SYNTHESIZED_WIRE_20,
		 Q3 => SYNTHESIZED_WIRE_21,
		 Q4 => SYNTHESIZED_WIRE_22,
		 Q5 => SYNTHESIZED_WIRE_23,
		 Q6 => SYNTHESIZED_WIRE_24,
		 Q7 => SYNTHESIZED_WIRE_25,
		 Q8 => SYNTHESIZED_WIRE_26);


b2v_6 : fasheng
PORT MAP(CLK => EN8,
		 CLR => CLR,
		 EN => SYNTHESIZED_WIRE_18,
		 SOUND => SOUND);


END bdf_type;