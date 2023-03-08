-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "03/05/2023 11:52:17"

-- 
-- Device: Altera EPM240T100C5 Package TQFP100
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY IEEE;
LIBRARY MAXII;
USE IEEE.STD_LOGIC_1164.ALL;
USE MAXII.MAXII_COMPONENTS.ALL;

ENTITY 	identificadorDeCodigoDeBarras IS
    PORT (
	E7 : IN std_logic;
	E6 : IN std_logic;
	E5 : IN std_logic;
	E4 : IN std_logic;
	E3 : IN std_logic;
	E2 : IN std_logic;
	E1 : IN std_logic;
	E0 : IN std_logic;
	g : BUFFER std_logic;
	f : BUFFER std_logic;
	e : BUFFER std_logic;
	d : BUFFER std_logic;
	c : BUFFER std_logic;
	b : BUFFER std_logic;
	a : BUFFER std_logic;
	dig : BUFFER std_logic;
	ledR : BUFFER std_logic;
	ledG : BUFFER std_logic;
	L0 : BUFFER std_logic;
	L1 : BUFFER std_logic;
	L2 : BUFFER std_logic;
	L3 : BUFFER std_logic;
	L4 : BUFFER std_logic;
	L5 : BUFFER std_logic;
	L6 : BUFFER std_logic;
	C0 : BUFFER std_logic;
	C1 : BUFFER std_logic;
	C2 : BUFFER std_logic;
	C3 : BUFFER std_logic;
	C4 : BUFFER std_logic
	);
END identificadorDeCodigoDeBarras;

-- Design Ports Information
-- g	=>  Location: PIN_39,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- f	=>  Location: PIN_92,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- e	=>  Location: PIN_100,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- d	=>  Location: PIN_98,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- c	=>  Location: PIN_41,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- b	=>  Location: PIN_70,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- a	=>  Location: PIN_90,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- dig	=>  Location: PIN_37,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- ledR	=>  Location: PIN_86,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- ledG	=>  Location: PIN_72,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- L0	=>  Location: PIN_85,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- L1	=>  Location: PIN_83,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- L2	=>  Location: PIN_84,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- L3	=>  Location: PIN_87,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- L4	=>  Location: PIN_81,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- L5	=>  Location: PIN_91,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- L6	=>  Location: PIN_89,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- C0	=>  Location: PIN_97,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- C1	=>  Location: PIN_99,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- C2	=>  Location: PIN_95,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- C3	=>  Location: PIN_82,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- C4	=>  Location: PIN_78,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- E2	=>  Location: PIN_38,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- E0	=>  Location: PIN_42,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- E1	=>  Location: PIN_40,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- E3	=>  Location: PIN_36,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- E4	=>  Location: PIN_34,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- E5	=>  Location: PIN_30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- E7	=>  Location: PIN_35,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- E6	=>  Location: PIN_33,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF identificadorDeCodigoDeBarras IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_E7 : std_logic;
SIGNAL ww_E6 : std_logic;
SIGNAL ww_E5 : std_logic;
SIGNAL ww_E4 : std_logic;
SIGNAL ww_E3 : std_logic;
SIGNAL ww_E2 : std_logic;
SIGNAL ww_E1 : std_logic;
SIGNAL ww_E0 : std_logic;
SIGNAL ww_g : std_logic;
SIGNAL ww_f : std_logic;
SIGNAL ww_e : std_logic;
SIGNAL ww_d : std_logic;
SIGNAL ww_c : std_logic;
SIGNAL ww_b : std_logic;
SIGNAL ww_a : std_logic;
SIGNAL ww_dig : std_logic;
SIGNAL ww_ledR : std_logic;
SIGNAL ww_ledG : std_logic;
SIGNAL ww_L0 : std_logic;
SIGNAL ww_L1 : std_logic;
SIGNAL ww_L2 : std_logic;
SIGNAL ww_L3 : std_logic;
SIGNAL ww_L4 : std_logic;
SIGNAL ww_L5 : std_logic;
SIGNAL ww_L6 : std_logic;
SIGNAL ww_C0 : std_logic;
SIGNAL ww_C1 : std_logic;
SIGNAL ww_C2 : std_logic;
SIGNAL ww_C3 : std_logic;
SIGNAL ww_C4 : std_logic;
SIGNAL \E4~combout\ : std_logic;
SIGNAL \E5~combout\ : std_logic;
SIGNAL \E7~combout\ : std_logic;
SIGNAL \E6~combout\ : std_logic;
SIGNAL \inst2|C~0_combout\ : std_logic;
SIGNAL \E3~combout\ : std_logic;
SIGNAL \E1~combout\ : std_logic;
SIGNAL \inst2|dig1Enabled~1_combout\ : std_logic;
SIGNAL \E2~combout\ : std_logic;
SIGNAL \E0~combout\ : std_logic;
SIGNAL \inst2|C~2_combout\ : std_logic;
SIGNAL \inst2|C~1_combout\ : std_logic;
SIGNAL \inst2|dig5Enabled~0_combout\ : std_logic;
SIGNAL \inst2|ERRO~5_combout\ : std_logic;
SIGNAL \inst2|dig2Enabled~0_combout\ : std_logic;
SIGNAL \inst2|ERRO~3_combout\ : std_logic;
SIGNAL \inst2|ERRO~1_combout\ : std_logic;
SIGNAL \inst2|ERRO~0_combout\ : std_logic;
SIGNAL \inst2|ERRO~2_combout\ : std_logic;
SIGNAL \inst2|ERRO~4_combout\ : std_logic;
SIGNAL \inst2|G~0_combout\ : std_logic;
SIGNAL \inst2|G~1_combout\ : std_logic;
SIGNAL \inst2|dig1Enabled~0_combout\ : std_logic;
SIGNAL \inst2|G~combout\ : std_logic;
SIGNAL \inst2|C~3_combout\ : std_logic;
SIGNAL \inst2|dig5Enabled~1_combout\ : std_logic;
SIGNAL \inst2|F~combout\ : std_logic;
SIGNAL \inst2|dig8Enabled~0_combout\ : std_logic;
SIGNAL \inst2|ERRO~6_combout\ : std_logic;
SIGNAL \inst2|dig6Enabled~0_combout\ : std_logic;
SIGNAL \inst2|dig7Enabled~0_combout\ : std_logic;
SIGNAL \inst2|E~0_combout\ : std_logic;
SIGNAL \inst2|E~combout\ : std_logic;
SIGNAL \inst2|D~0_combout\ : std_logic;
SIGNAL \inst2|dig9Enabled~0_combout\ : std_logic;
SIGNAL \inst2|B~0_combout\ : std_logic;
SIGNAL \inst2|A~0_combout\ : std_logic;
SIGNAL \inst2|acionamentoDig4~0_combout\ : std_logic;
SIGNAL \inst2|acionamentoDig4~1_combout\ : std_logic;
SIGNAL \inst1|linha0~0_combout\ : std_logic;
SIGNAL \inst1|linha0~1_combout\ : std_logic;
SIGNAL \inst1|linha0~2_combout\ : std_logic;
SIGNAL \inst1|linha0~3_combout\ : std_logic;
SIGNAL \inst1|linha0~4_combout\ : std_logic;
SIGNAL \inst1|linha0~5_combout\ : std_logic;
SIGNAL \inst1|linha0~6_combout\ : std_logic;
SIGNAL \inst1|coluna0~combout\ : std_logic;
SIGNAL \inst1|coluna1~combout\ : std_logic;
SIGNAL \inst1|coluna2~combout\ : std_logic;
SIGNAL \inst1|coluna3~combout\ : std_logic;
SIGNAL \inst1|coluna4~combout\ : std_logic;
SIGNAL \inst2|ALT_INV_A~0_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_D~0_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_ERRO~4_combout\ : std_logic;

BEGIN

ww_E7 <= E7;
ww_E6 <= E6;
ww_E5 <= E5;
ww_E4 <= E4;
ww_E3 <= E3;
ww_E2 <= E2;
ww_E1 <= E1;
ww_E0 <= E0;
g <= ww_g;
f <= ww_f;
e <= ww_e;
d <= ww_d;
c <= ww_c;
b <= ww_b;
a <= ww_a;
dig <= ww_dig;
ledR <= ww_ledR;
ledG <= ww_ledG;
L0 <= ww_L0;
L1 <= ww_L1;
L2 <= ww_L2;
L3 <= ww_L3;
L4 <= ww_L4;
L5 <= ww_L5;
L6 <= ww_L6;
C0 <= ww_C0;
C1 <= ww_C1;
C2 <= ww_C2;
C3 <= ww_C3;
C4 <= ww_C4;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\inst2|ALT_INV_A~0_combout\ <= NOT \inst2|A~0_combout\;
\inst2|ALT_INV_D~0_combout\ <= NOT \inst2|D~0_combout\;
\inst2|ALT_INV_ERRO~4_combout\ <= NOT \inst2|ERRO~4_combout\;

-- Location: PIN_34,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\E4~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_E4,
	combout => \E4~combout\);

-- Location: PIN_30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\E5~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_E5,
	combout => \E5~combout\);

-- Location: PIN_35,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\E7~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_E7,
	combout => \E7~combout\);

-- Location: PIN_33,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\E6~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_E6,
	combout => \E6~combout\);

-- Location: LC_X3_Y2_N9
\inst2|C~0\ : maxii_lcell
-- Equation(s):
-- \inst2|C~0_combout\ = (!\E4~combout\ & (!\E5~combout\ & (!\E7~combout\ & !\E6~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \E4~combout\,
	datab => \E5~combout\,
	datac => \E7~combout\,
	datad => \E6~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst2|C~0_combout\);

-- Location: PIN_36,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\E3~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_E3,
	combout => \E3~combout\);

-- Location: PIN_40,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\E1~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_E1,
	combout => \E1~combout\);

-- Location: LC_X4_Y2_N9
\inst2|dig1Enabled~1\ : maxii_lcell
-- Equation(s):
-- \inst2|dig1Enabled~1_combout\ = (((!\E3~combout\ & \E1~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \E3~combout\,
	datad => \E1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst2|dig1Enabled~1_combout\);

-- Location: PIN_38,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\E2~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_E2,
	combout => \E2~combout\);

-- Location: PIN_42,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\E0~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_E0,
	combout => \E0~combout\);

-- Location: LC_X4_Y4_N2
\inst2|C~2\ : maxii_lcell
-- Equation(s):
-- \inst2|C~2_combout\ = ((!\E2~combout\ & ((\E0~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3300",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \E2~combout\,
	datad => \E0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst2|C~2_combout\);

-- Location: LC_X3_Y2_N4
\inst2|C~1\ : maxii_lcell
-- Equation(s):
-- \inst2|C~1_combout\ = (!\E6~combout\ & (((!\E7~combout\ & !\E5~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0005",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \E6~combout\,
	datac => \E7~combout\,
	datad => \E5~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst2|C~1_combout\);

-- Location: LC_X4_Y2_N4
\inst2|dig5Enabled~0\ : maxii_lcell
-- Equation(s):
-- \inst2|dig5Enabled~0_combout\ = (!\E0~combout\ & (\inst2|C~1_combout\ & (!\E2~combout\ & \E4~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0400",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \E0~combout\,
	datab => \inst2|C~1_combout\,
	datac => \E2~combout\,
	datad => \E4~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst2|dig5Enabled~0_combout\);

-- Location: LC_X4_Y2_N6
\inst2|ERRO~5\ : maxii_lcell
-- Equation(s):
-- \inst2|ERRO~5_combout\ = ((\E4~combout\ & (!\E3~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0c0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \E4~combout\,
	datac => \E3~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst2|ERRO~5_combout\);

-- Location: LC_X4_Y2_N3
\inst2|dig2Enabled~0\ : maxii_lcell
-- Equation(s):
-- \inst2|dig2Enabled~0_combout\ = (\inst2|C~2_combout\ & (\inst2|C~1_combout\ & (\inst2|ERRO~5_combout\ & !\E1~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0080",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|C~2_combout\,
	datab => \inst2|C~1_combout\,
	datac => \inst2|ERRO~5_combout\,
	datad => \E1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst2|dig2Enabled~0_combout\);

-- Location: LC_X4_Y3_N1
\inst2|ERRO~3\ : maxii_lcell
-- Equation(s):
-- \inst2|ERRO~3_combout\ = (\E3~combout\ & (\E4~combout\ & (!\E1~combout\ & !\E0~combout\))) # (!\E3~combout\ & (!\E4~combout\ & (\E1~combout\ & \E0~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1008",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \E3~combout\,
	datab => \E4~combout\,
	datac => \E1~combout\,
	datad => \E0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst2|ERRO~3_combout\);

-- Location: LC_X4_Y3_N0
\inst2|ERRO~1\ : maxii_lcell
-- Equation(s):
-- \inst2|ERRO~1_combout\ = (!\E3~combout\ & (\E2~combout\ & (\E1~combout\ $ (\E0~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0440",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \E3~combout\,
	datab => \E2~combout\,
	datac => \E1~combout\,
	datad => \E0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst2|ERRO~1_combout\);

-- Location: LC_X4_Y3_N9
\inst2|ERRO~0\ : maxii_lcell
-- Equation(s):
-- \inst2|ERRO~0_combout\ = ((\E2~combout\ & (!\E1~combout\ & !\E0~combout\)) # (!\E2~combout\ & (\E1~combout\ $ (\E0~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "033c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \E2~combout\,
	datac => \E1~combout\,
	datad => \E0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst2|ERRO~0_combout\);

-- Location: LC_X4_Y3_N3
\inst2|ERRO~2\ : maxii_lcell
-- Equation(s):
-- \inst2|ERRO~2_combout\ = (\E4~combout\ & (!\E3~combout\ & ((\inst2|ERRO~0_combout\)))) # (!\E4~combout\ & ((\inst2|ERRO~1_combout\) # ((\E3~combout\ & \inst2|ERRO~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7630",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \E3~combout\,
	datab => \E4~combout\,
	datac => \inst2|ERRO~1_combout\,
	datad => \inst2|ERRO~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst2|ERRO~2_combout\);

-- Location: LC_X4_Y3_N4
\inst2|ERRO~4\ : maxii_lcell
-- Equation(s):
-- \inst2|ERRO~4_combout\ = ((\inst2|ERRO~2_combout\) # ((!\E2~combout\ & \inst2|ERRO~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff30",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \E2~combout\,
	datac => \inst2|ERRO~3_combout\,
	datad => \inst2|ERRO~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst2|ERRO~4_combout\);

-- Location: LC_X4_Y2_N8
\inst2|G~0\ : maxii_lcell
-- Equation(s):
-- \inst2|G~0_combout\ = (!\inst2|dig2Enabled~0_combout\ & (\inst2|ERRO~4_combout\ & ((!\inst2|dig1Enabled~1_combout\) # (!\inst2|dig5Enabled~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0700",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|dig5Enabled~0_combout\,
	datab => \inst2|dig1Enabled~1_combout\,
	datac => \inst2|dig2Enabled~0_combout\,
	datad => \inst2|ERRO~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst2|G~0_combout\);

-- Location: LC_X4_Y2_N7
\inst2|G~1\ : maxii_lcell
-- Equation(s):
-- \inst2|G~1_combout\ = (\inst2|G~0_combout\ & (((!\inst2|C~2_combout\) # (!\inst2|dig1Enabled~1_combout\)) # (!\inst2|C~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7f00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|C~0_combout\,
	datab => \inst2|dig1Enabled~1_combout\,
	datac => \inst2|C~2_combout\,
	datad => \inst2|G~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst2|G~1_combout\);

-- Location: LC_X4_Y4_N5
\inst2|dig1Enabled~0\ : maxii_lcell
-- Equation(s):
-- \inst2|dig1Enabled~0_combout\ = ((\E2~combout\ & ((!\E0~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \E2~combout\,
	datad => \E0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst2|dig1Enabled~0_combout\);

-- Location: LC_X4_Y2_N0
\inst2|G\ : maxii_lcell
-- Equation(s):
-- \inst2|G~combout\ = ((\inst2|dig1Enabled~1_combout\ & (\inst2|C~0_combout\ & \inst2|dig1Enabled~0_combout\))) # (!\inst2|G~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d555",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|G~1_combout\,
	datab => \inst2|dig1Enabled~1_combout\,
	datac => \inst2|C~0_combout\,
	datad => \inst2|dig1Enabled~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst2|G~combout\);

-- Location: LC_X3_Y3_N6
\inst2|C~3\ : maxii_lcell
-- Equation(s):
-- \inst2|C~3_combout\ = (\inst2|C~2_combout\ & (\E3~combout\ & (!\E1~combout\ & \inst2|C~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0800",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|C~2_combout\,
	datab => \E3~combout\,
	datac => \E1~combout\,
	datad => \inst2|C~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst2|C~3_combout\);

-- Location: LC_X3_Y3_N9
\inst2|dig5Enabled~1\ : maxii_lcell
-- Equation(s):
-- \inst2|dig5Enabled~1_combout\ = ((\E3~combout\ & (!\E1~combout\ & \inst2|dig5Enabled~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0c00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \E3~combout\,
	datac => \E1~combout\,
	datad => \inst2|dig5Enabled~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst2|dig5Enabled~1_combout\);

-- Location: LC_X3_Y3_N5
\inst2|F\ : maxii_lcell
-- Equation(s):
-- \inst2|F~combout\ = (((\inst2|C~3_combout\) # (\inst2|dig5Enabled~1_combout\))) # (!\inst2|G~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fff5",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|G~1_combout\,
	datac => \inst2|C~3_combout\,
	datad => \inst2|dig5Enabled~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst2|F~combout\);

-- Location: LC_X3_Y3_N4
\inst2|dig8Enabled~0\ : maxii_lcell
-- Equation(s):
-- \inst2|dig8Enabled~0_combout\ = (!\E2~combout\ & (\E3~combout\ & (\E1~combout\ & !\E0~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0040",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \E2~combout\,
	datab => \E3~combout\,
	datac => \E1~combout\,
	datad => \E0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst2|dig8Enabled~0_combout\);

-- Location: LC_X3_Y3_N7
\inst2|ERRO~6\ : maxii_lcell
-- Equation(s):
-- \inst2|ERRO~6_combout\ = (((\E2~combout\ & !\E3~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \E2~combout\,
	datad => \E3~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst2|ERRO~6_combout\);

-- Location: LC_X3_Y3_N2
\inst2|dig6Enabled~0\ : maxii_lcell
-- Equation(s):
-- \inst2|dig6Enabled~0_combout\ = (\E0~combout\ & (\inst2|ERRO~6_combout\ & (!\E1~combout\ & \inst2|C~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0800",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \E0~combout\,
	datab => \inst2|ERRO~6_combout\,
	datac => \E1~combout\,
	datad => \inst2|C~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst2|dig6Enabled~0_combout\);

-- Location: LC_X4_Y2_N5
\inst2|dig7Enabled~0\ : maxii_lcell
-- Equation(s):
-- \inst2|dig7Enabled~0_combout\ = (!\E1~combout\ & (\inst2|C~1_combout\ & (\inst2|ERRO~5_combout\ & \inst2|dig1Enabled~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \E1~combout\,
	datab => \inst2|C~1_combout\,
	datac => \inst2|ERRO~5_combout\,
	datad => \inst2|dig1Enabled~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst2|dig7Enabled~0_combout\);

-- Location: LC_X3_Y3_N3
\inst2|E~0\ : maxii_lcell
-- Equation(s):
-- \inst2|E~0_combout\ = (\inst2|G~1_combout\ & (!\inst2|dig6Enabled~0_combout\ & (!\inst2|dig7Enabled~0_combout\ & !\inst2|dig5Enabled~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0002",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|G~1_combout\,
	datab => \inst2|dig6Enabled~0_combout\,
	datac => \inst2|dig7Enabled~0_combout\,
	datad => \inst2|dig5Enabled~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst2|E~0_combout\);

-- Location: LC_X3_Y3_N8
\inst2|E\ : maxii_lcell
-- Equation(s):
-- \inst2|E~combout\ = (((\inst2|C~0_combout\ & \inst2|dig8Enabled~0_combout\)) # (!\inst2|E~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0ff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst2|C~0_combout\,
	datac => \inst2|dig8Enabled~0_combout\,
	datad => \inst2|E~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst2|E~combout\);

-- Location: LC_X3_Y4_N4
\inst2|D~0\ : maxii_lcell
-- Equation(s):
-- \inst2|D~0_combout\ = (!\inst2|dig6Enabled~0_combout\ & (((\inst2|G~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5500",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|dig6Enabled~0_combout\,
	datad => \inst2|G~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst2|D~0_combout\);

-- Location: LC_X4_Y2_N1
\inst2|dig9Enabled~0\ : maxii_lcell
-- Equation(s):
-- \inst2|dig9Enabled~0_combout\ = (\E3~combout\ & (\inst2|dig1Enabled~0_combout\ & (\inst2|C~0_combout\ & !\E1~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0080",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \E3~combout\,
	datab => \inst2|dig1Enabled~0_combout\,
	datac => \inst2|C~0_combout\,
	datad => \E1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst2|dig9Enabled~0_combout\);

-- Location: LC_X4_Y2_N2
\inst2|B~0\ : maxii_lcell
-- Equation(s):
-- \inst2|B~0_combout\ = (\inst2|dig7Enabled~0_combout\) # ((\inst2|dig9Enabled~0_combout\) # ((\inst2|dig5Enabled~0_combout\ & \inst2|dig1Enabled~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fff8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|dig5Enabled~0_combout\,
	datab => \inst2|dig1Enabled~1_combout\,
	datac => \inst2|dig7Enabled~0_combout\,
	datad => \inst2|dig9Enabled~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst2|B~0_combout\);

-- Location: LC_X3_Y4_N2
\inst2|A~0\ : maxii_lcell
-- Equation(s):
-- \inst2|A~0_combout\ = (!\inst2|dig6Enabled~0_combout\ & (((\inst2|G~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5500",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|dig6Enabled~0_combout\,
	datad => \inst2|G~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst2|A~0_combout\);

-- Location: LC_X3_Y3_N1
\inst2|acionamentoDig4~0\ : maxii_lcell
-- Equation(s):
-- \inst2|acionamentoDig4~0_combout\ = (\E2~combout\ & (!\E0~combout\ & (\E3~combout\ $ (\E1~combout\)))) # (!\E2~combout\ & (\E3~combout\ & (\E1~combout\ $ (\E0~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0468",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \E2~combout\,
	datab => \E3~combout\,
	datac => \E1~combout\,
	datad => \E0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst2|acionamentoDig4~0_combout\);

-- Location: LC_X3_Y3_N0
\inst2|acionamentoDig4~1\ : maxii_lcell
-- Equation(s):
-- \inst2|acionamentoDig4~1_combout\ = ((\inst2|C~3_combout\) # ((\inst2|C~0_combout\ & \inst2|acionamentoDig4~0_combout\))) # (!\inst2|E~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fdf5",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|E~0_combout\,
	datab => \inst2|C~0_combout\,
	datac => \inst2|C~3_combout\,
	datad => \inst2|acionamentoDig4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst2|acionamentoDig4~1_combout\);

-- Location: LC_X3_Y2_N8
\inst1|linha0~0\ : maxii_lcell
-- Equation(s):
-- \inst1|linha0~0_combout\ = (!\E6~combout\ & (((!\E7~combout\ & \E5~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0500",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \E6~combout\,
	datac => \E7~combout\,
	datad => \E5~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst1|linha0~0_combout\);

-- Location: LC_X3_Y2_N7
\inst1|linha0~1\ : maxii_lcell
-- Equation(s):
-- \inst1|linha0~1_combout\ = (\E6~combout\ & (((!\E7~combout\ & !\E5~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \E6~combout\,
	datac => \E7~combout\,
	datad => \E5~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst1|linha0~1_combout\);

-- Location: LC_X3_Y2_N6
\inst1|linha0~2\ : maxii_lcell
-- Equation(s):
-- \inst1|linha0~2_combout\ = (\E6~combout\ & (((!\E7~combout\ & \E5~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0a00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \E6~combout\,
	datac => \E7~combout\,
	datad => \E5~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst1|linha0~2_combout\);

-- Location: LC_X3_Y2_N3
\inst1|linha0~3\ : maxii_lcell
-- Equation(s):
-- \inst1|linha0~3_combout\ = (!\E6~combout\ & (((\E7~combout\ & !\E5~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0050",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \E6~combout\,
	datac => \E7~combout\,
	datad => \E5~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst1|linha0~3_combout\);

-- Location: LC_X3_Y2_N1
\inst1|linha0~4\ : maxii_lcell
-- Equation(s):
-- \inst1|linha0~4_combout\ = (!\E6~combout\ & (((\E7~combout\ & \E5~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \E6~combout\,
	datac => \E7~combout\,
	datad => \E5~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst1|linha0~4_combout\);

-- Location: LC_X3_Y2_N2
\inst1|linha0~5\ : maxii_lcell
-- Equation(s):
-- \inst1|linha0~5_combout\ = (\E6~combout\ & (((\E7~combout\ & !\E5~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \E6~combout\,
	datac => \E7~combout\,
	datad => \E5~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst1|linha0~5_combout\);

-- Location: LC_X3_Y2_N5
\inst1|linha0~6\ : maxii_lcell
-- Equation(s):
-- \inst1|linha0~6_combout\ = (\E6~combout\ & (((\E7~combout\ & \E5~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \E6~combout\,
	datac => \E7~combout\,
	datad => \E5~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst1|linha0~6_combout\);

-- Location: LC_X4_Y3_N7
\inst1|coluna0\ : maxii_lcell
-- Equation(s):
-- \inst1|coluna0~combout\ = (\E0~combout\ & ((\inst2|ERRO~2_combout\) # ((!\E2~combout\ & \inst2|ERRO~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ba00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ERRO~2_combout\,
	datab => \E2~combout\,
	datac => \inst2|ERRO~3_combout\,
	datad => \E0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst1|coluna0~combout\);

-- Location: LC_X4_Y3_N2
\inst1|coluna1\ : maxii_lcell
-- Equation(s):
-- \inst1|coluna1~combout\ = (\E1~combout\ & ((\inst2|ERRO~2_combout\) # ((!\E2~combout\ & \inst2|ERRO~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b0a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ERRO~2_combout\,
	datab => \E2~combout\,
	datac => \E1~combout\,
	datad => \inst2|ERRO~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst1|coluna1~combout\);

-- Location: LC_X4_Y3_N8
\inst1|coluna2\ : maxii_lcell
-- Equation(s):
-- \inst1|coluna2~combout\ = ((\E2~combout\ & ((\inst2|ERRO~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \E2~combout\,
	datad => \inst2|ERRO~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst1|coluna2~combout\);

-- Location: LC_X4_Y3_N6
\inst1|coluna3\ : maxii_lcell
-- Equation(s):
-- \inst1|coluna3~combout\ = (\E3~combout\ & ((\inst2|ERRO~2_combout\) # ((!\E2~combout\ & \inst2|ERRO~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa20",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \E3~combout\,
	datab => \E2~combout\,
	datac => \inst2|ERRO~3_combout\,
	datad => \inst2|ERRO~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst1|coluna3~combout\);

-- Location: LC_X4_Y3_N5
\inst1|coluna4\ : maxii_lcell
-- Equation(s):
-- \inst1|coluna4~combout\ = (\E4~combout\ & ((\inst2|ERRO~2_combout\) # ((!\E2~combout\ & \inst2|ERRO~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ba00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ERRO~2_combout\,
	datab => \E2~combout\,
	datac => \inst2|ERRO~3_combout\,
	datad => \E4~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst1|coluna4~combout\);

-- Location: PIN_39,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\g~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst2|G~combout\,
	oe => VCC,
	padio => ww_g);

-- Location: PIN_92,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\f~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst2|F~combout\,
	oe => VCC,
	padio => ww_f);

-- Location: PIN_100,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\e~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst2|E~combout\,
	oe => VCC,
	padio => ww_e);

-- Location: PIN_98,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\d~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst2|ALT_INV_D~0_combout\,
	oe => VCC,
	padio => ww_d);

-- Location: PIN_41,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\c~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst2|C~3_combout\,
	oe => VCC,
	padio => ww_c);

-- Location: PIN_70,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\b~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst2|B~0_combout\,
	oe => VCC,
	padio => ww_b);

-- Location: PIN_90,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\a~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst2|ALT_INV_A~0_combout\,
	oe => VCC,
	padio => ww_a);

-- Location: PIN_37,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\dig~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst2|acionamentoDig4~1_combout\,
	oe => VCC,
	padio => ww_dig);

-- Location: PIN_86,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\ledR~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst2|ALT_INV_ERRO~4_combout\,
	oe => VCC,
	padio => ww_ledR);

-- Location: PIN_72,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\ledG~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst2|ERRO~4_combout\,
	oe => VCC,
	padio => ww_ledG);

-- Location: PIN_85,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\L0~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst1|linha0~0_combout\,
	oe => VCC,
	padio => ww_L0);

-- Location: PIN_83,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\L1~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst1|linha0~1_combout\,
	oe => VCC,
	padio => ww_L1);

-- Location: PIN_84,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\L2~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst1|linha0~2_combout\,
	oe => VCC,
	padio => ww_L2);

-- Location: PIN_87,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\L3~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst1|linha0~3_combout\,
	oe => VCC,
	padio => ww_L3);

-- Location: PIN_81,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\L4~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst1|linha0~4_combout\,
	oe => VCC,
	padio => ww_L4);

-- Location: PIN_91,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\L5~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst1|linha0~5_combout\,
	oe => VCC,
	padio => ww_L5);

-- Location: PIN_89,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\L6~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst1|linha0~6_combout\,
	oe => VCC,
	padio => ww_L6);

-- Location: PIN_97,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\C0~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst1|coluna0~combout\,
	oe => VCC,
	padio => ww_C0);

-- Location: PIN_99,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\C1~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst1|coluna1~combout\,
	oe => VCC,
	padio => ww_C1);

-- Location: PIN_95,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\C2~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst1|coluna2~combout\,
	oe => VCC,
	padio => ww_C2);

-- Location: PIN_82,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\C3~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst1|coluna3~combout\,
	oe => VCC,
	padio => ww_C3);

-- Location: PIN_78,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\C4~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst1|coluna4~combout\,
	oe => VCC,
	padio => ww_C4);
END structure;


