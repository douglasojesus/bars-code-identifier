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

-- DATE "02/21/2023 18:46:05"

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

ENTITY 	cod2outof5_to_7seg IS
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
	ledG : BUFFER std_logic
	);
END cod2outof5_to_7seg;

-- Design Ports Information
-- g	=>  Location: PIN_6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- f	=>  Location: PIN_61,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- e	=>  Location: PIN_4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- d	=>  Location: PIN_21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- c	=>  Location: PIN_33,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- b	=>  Location: PIN_18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- a	=>  Location: PIN_16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- dig	=>  Location: PIN_19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- ledR	=>  Location: PIN_1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- ledG	=>  Location: PIN_5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- E1	=>  Location: PIN_77,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- E7	=>  Location: PIN_12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- E6	=>  Location: PIN_27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- E5	=>  Location: PIN_2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- E2	=>  Location: PIN_7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- E4	=>  Location: PIN_20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- E3	=>  Location: PIN_8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- E0	=>  Location: PIN_39,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF cod2outof5_to_7seg IS
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
SIGNAL \E0~combout\ : std_logic;
SIGNAL \E2~combout\ : std_logic;
SIGNAL \E1~combout\ : std_logic;
SIGNAL \E4~combout\ : std_logic;
SIGNAL \E7~combout\ : std_logic;
SIGNAL \E5~combout\ : std_logic;
SIGNAL \E6~combout\ : std_logic;
SIGNAL \C~0_combout\ : std_logic;
SIGNAL \E3~combout\ : std_logic;
SIGNAL \dig0Enabled~0_combout\ : std_logic;
SIGNAL \G~0_combout\ : std_logic;
SIGNAL \dig3Enabled~0_combout\ : std_logic;
SIGNAL \dig3Enabled~1_combout\ : std_logic;
SIGNAL \ERRO~0_combout\ : std_logic;
SIGNAL \ERRO~1_combout\ : std_logic;
SIGNAL \ERRO~2_combout\ : std_logic;
SIGNAL \G~1_combout\ : std_logic;
SIGNAL \dig1Enabled~0_combout\ : std_logic;
SIGNAL \G~combout\ : std_logic;
SIGNAL \dig5Enabled~0_combout\ : std_logic;
SIGNAL \F~2_combout\ : std_logic;
SIGNAL \F~combout\ : std_logic;
SIGNAL \dig0Enabled~1_combout\ : std_logic;
SIGNAL \dig7Enabled~0_combout\ : std_logic;
SIGNAL \dig6Enabled~0_combout\ : std_logic;
SIGNAL \E~0_combout\ : std_logic;
SIGNAL \C~2_combout\ : std_logic;
SIGNAL \E~combout\ : std_logic;
SIGNAL \D~2_combout\ : std_logic;
SIGNAL \C~1_combout\ : std_logic;
SIGNAL \C~combout\ : std_logic;
SIGNAL \dig9Enabled~0_combout\ : std_logic;
SIGNAL \B~combout\ : std_logic;
SIGNAL \A~0_combout\ : std_logic;
SIGNAL \acionamentoDig4~0_combout\ : std_logic;
SIGNAL \acionamentoDig4~1_combout\ : std_logic;
SIGNAL \ALT_INV_D~2_combout\ : std_logic;
SIGNAL \ALT_INV_A~0_combout\ : std_logic;
SIGNAL \ALT_INV_ERRO~2_combout\ : std_logic;

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
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_D~2_combout\ <= NOT \D~2_combout\;
\ALT_INV_A~0_combout\ <= NOT \A~0_combout\;
\ALT_INV_ERRO~2_combout\ <= NOT \ERRO~2_combout\;

-- Location: PIN_39,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\E0~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_E0,
	combout => \E0~combout\);

-- Location: PIN_7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\E2~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_E2,
	combout => \E2~combout\);

-- Location: PIN_77,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\E1~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_E1,
	combout => \E1~combout\);

-- Location: PIN_20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\E4~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_E4,
	combout => \E4~combout\);

-- Location: PIN_12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\E7~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_E7,
	combout => \E7~combout\);

-- Location: PIN_2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\E5~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_E5,
	combout => \E5~combout\);

-- Location: PIN_27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\E6~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_E6,
	combout => \E6~combout\);

-- Location: LC_X3_Y3_N5
\C~0\ : maxii_lcell
-- Equation(s):
-- \C~0_combout\ = ((!\E7~combout\ & (!\E5~combout\ & !\E6~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0003",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \E7~combout\,
	datac => \E5~combout\,
	datad => \E6~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \C~0_combout\);

-- Location: PIN_8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\E3~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_E3,
	combout => \E3~combout\);

-- Location: LC_X3_Y3_N3
\dig0Enabled~0\ : maxii_lcell
-- Equation(s):
-- \dig0Enabled~0_combout\ = (\E4~combout\ & (((\C~0_combout\ & !\E3~combout\))))

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
	dataa => \E4~combout\,
	datac => \C~0_combout\,
	datad => \E3~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dig0Enabled~0_combout\);

-- Location: LC_X4_Y3_N4
\G~0\ : maxii_lcell
-- Equation(s):
-- \G~0_combout\ = (\E2~combout\) # ((\E0~combout\ $ (!\E1~combout\)) # (!\dig0Enabled~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "edff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \E0~combout\,
	datab => \E2~combout\,
	datac => \E1~combout\,
	datad => \dig0Enabled~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \G~0_combout\);

-- Location: LC_X4_Y3_N7
\dig3Enabled~0\ : maxii_lcell
-- Equation(s):
-- \dig3Enabled~0_combout\ = (\E1~combout\ & (((!\E3~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0a0a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \E1~combout\,
	datac => \E3~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dig3Enabled~0_combout\);

-- Location: LC_X3_Y3_N6
\dig3Enabled~1\ : maxii_lcell
-- Equation(s):
-- \dig3Enabled~1_combout\ = (!\E4~combout\ & (!\E2~combout\ & (\E0~combout\ & \C~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \E4~combout\,
	datab => \E2~combout\,
	datac => \E0~combout\,
	datad => \C~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dig3Enabled~1_combout\);

-- Location: LC_X4_Y3_N6
\ERRO~0\ : maxii_lcell
-- Equation(s):
-- \ERRO~0_combout\ = \E3~combout\ $ (((\E2~combout\ $ (\E0~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a55a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \E3~combout\,
	datac => \E2~combout\,
	datad => \E0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ERRO~0_combout\);

-- Location: LC_X4_Y3_N2
\ERRO~1\ : maxii_lcell
-- Equation(s):
-- \ERRO~1_combout\ = (\E3~combout\ & (((\E2~combout\) # (\E0~combout\)))) # (!\E3~combout\ & (((\E2~combout\ & \E0~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "faa0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \E3~combout\,
	datac => \E2~combout\,
	datad => \E0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ERRO~1_combout\);

-- Location: LC_X4_Y3_N3
\ERRO~2\ : maxii_lcell
-- Equation(s):
-- \ERRO~2_combout\ = (\ERRO~0_combout\ & (!\ERRO~1_combout\ & (\E4~combout\ $ (\E1~combout\)))) # (!\ERRO~0_combout\ & ((\E4~combout\ & (\E1~combout\ & !\ERRO~1_combout\)) # (!\E4~combout\ & (!\E1~combout\ & \ERRO~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0168",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ERRO~0_combout\,
	datab => \E4~combout\,
	datac => \E1~combout\,
	datad => \ERRO~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ERRO~2_combout\);

-- Location: LC_X4_Y3_N5
\G~1\ : maxii_lcell
-- Equation(s):
-- \G~1_combout\ = (\G~0_combout\ & (\ERRO~2_combout\ & ((!\dig3Enabled~1_combout\) # (!\dig3Enabled~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2a00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G~0_combout\,
	datab => \dig3Enabled~0_combout\,
	datac => \dig3Enabled~1_combout\,
	datad => \ERRO~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \G~1_combout\);

-- Location: LC_X3_Y3_N7
\dig1Enabled~0\ : maxii_lcell
-- Equation(s):
-- \dig1Enabled~0_combout\ = (!\E4~combout\ & (\E2~combout\ & (\C~0_combout\ & !\E3~combout\)))

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
	dataa => \E4~combout\,
	datab => \E2~combout\,
	datac => \C~0_combout\,
	datad => \E3~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dig1Enabled~0_combout\);

-- Location: LC_X3_Y3_N2
\G~71\ : maxii_lcell
-- Equation(s):
-- \G~combout\ = ((!\E0~combout\ & (\dig1Enabled~0_combout\ & \E1~combout\))) # (!\G~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7333",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \E0~combout\,
	datab => \G~1_combout\,
	datac => \dig1Enabled~0_combout\,
	datad => \E1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \G~combout\);

-- Location: LC_X3_Y3_N9
\dig5Enabled~0\ : maxii_lcell
-- Equation(s):
-- \dig5Enabled~0_combout\ = (\E4~combout\ & (\E3~combout\ & (!\E0~combout\ & !\E1~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0008",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \E4~combout\,
	datab => \E3~combout\,
	datac => \E0~combout\,
	datad => \E1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dig5Enabled~0_combout\);

-- Location: LC_X3_Y3_N1
\F~2\ : maxii_lcell
-- Equation(s):
-- \F~2_combout\ = (\G~1_combout\ & (((\E2~combout\) # (!\dig5Enabled~0_combout\)) # (!\C~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d0f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C~0_combout\,
	datab => \E2~combout\,
	datac => \G~1_combout\,
	datad => \dig5Enabled~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \F~2_combout\);

-- Location: LC_X4_Y3_N9
\F~70\ : maxii_lcell
-- Equation(s):
-- \F~combout\ = ((\E3~combout\ & (\dig3Enabled~1_combout\ & !\E1~combout\))) # (!\F~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "08ff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \E3~combout\,
	datab => \dig3Enabled~1_combout\,
	datac => \E1~combout\,
	datad => \F~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \F~combout\);

-- Location: LC_X3_Y2_N8
\dig0Enabled~1\ : maxii_lcell
-- Equation(s):
-- \dig0Enabled~1_combout\ = (\E1~combout\ & (!\E2~combout\ & ((!\E0~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0022",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \E1~combout\,
	datab => \E2~combout\,
	datad => \E0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dig0Enabled~1_combout\);

-- Location: LC_X3_Y2_N9
\dig7Enabled~0\ : maxii_lcell
-- Equation(s):
-- \dig7Enabled~0_combout\ = (!\E1~combout\ & (\E2~combout\ & ((!\E0~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0044",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \E1~combout\,
	datab => \E2~combout\,
	datad => \E0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dig7Enabled~0_combout\);

-- Location: LC_X3_Y3_N4
\dig6Enabled~0\ : maxii_lcell
-- Equation(s):
-- \dig6Enabled~0_combout\ = (\E0~combout\ & (((\dig1Enabled~0_combout\ & !\E1~combout\))))

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
	dataa => \E0~combout\,
	datac => \dig1Enabled~0_combout\,
	datad => \E1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dig6Enabled~0_combout\);

-- Location: LC_X3_Y2_N1
\E~0\ : maxii_lcell
-- Equation(s):
-- \E~0_combout\ = (\F~2_combout\ & (!\dig6Enabled~0_combout\ & ((!\dig0Enabled~0_combout\) # (!\dig7Enabled~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "020a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \F~2_combout\,
	datab => \dig7Enabled~0_combout\,
	datac => \dig6Enabled~0_combout\,
	datad => \dig0Enabled~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \E~0_combout\);

-- Location: LC_X3_Y3_N0
\C~2\ : maxii_lcell
-- Equation(s):
-- \C~2_combout\ = (!\E5~combout\ & (!\E7~combout\ & (!\E4~combout\ & !\E6~combout\)))

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
	dataa => \E5~combout\,
	datab => \E7~combout\,
	datac => \E4~combout\,
	datad => \E6~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \C~2_combout\);

-- Location: LC_X3_Y2_N2
\E~69\ : maxii_lcell
-- Equation(s):
-- \E~combout\ = ((\dig0Enabled~1_combout\ & (\C~2_combout\ & \E3~combout\))) # (!\E~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b333",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dig0Enabled~1_combout\,
	datab => \E~0_combout\,
	datac => \C~2_combout\,
	datad => \E3~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \E~combout\);

-- Location: LC_X3_Y3_N8
\D~2\ : maxii_lcell
-- Equation(s):
-- \D~2_combout\ = (\G~1_combout\ & (((\E1~combout\) # (!\dig1Enabled~0_combout\)) # (!\E0~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc4c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \E0~combout\,
	datab => \G~1_combout\,
	datac => \dig1Enabled~0_combout\,
	datad => \E1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \D~2_combout\);

-- Location: LC_X3_Y2_N4
\C~1\ : maxii_lcell
-- Equation(s):
-- \C~1_combout\ = ((\E3~combout\ & ((!\E1~combout\))))

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
	datab => \E3~combout\,
	datad => \E1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \C~1_combout\);

-- Location: LC_X3_Y2_N7
\C~67\ : maxii_lcell
-- Equation(s):
-- \C~combout\ = (\C~2_combout\ & (!\E2~combout\ & (\C~1_combout\ & \E0~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C~2_combout\,
	datab => \E2~combout\,
	datac => \C~1_combout\,
	datad => \E0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \C~combout\);

-- Location: LC_X3_Y2_N5
\dig9Enabled~0\ : maxii_lcell
-- Equation(s):
-- \dig9Enabled~0_combout\ = (\C~2_combout\ & (\E2~combout\ & (\C~1_combout\ & !\E0~combout\)))

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
	dataa => \C~2_combout\,
	datab => \E2~combout\,
	datac => \C~1_combout\,
	datad => \E0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dig9Enabled~0_combout\);

-- Location: LC_X3_Y2_N3
\B~66\ : maxii_lcell
-- Equation(s):
-- \B~combout\ = (\dig9Enabled~0_combout\) # ((\dig0Enabled~0_combout\ & ((\dig0Enabled~1_combout\) # (\dig7Enabled~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fef0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dig0Enabled~1_combout\,
	datab => \dig7Enabled~0_combout\,
	datac => \dig9Enabled~0_combout\,
	datad => \dig0Enabled~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \B~combout\);

-- Location: LC_X4_Y3_N8
\A~0\ : maxii_lcell
-- Equation(s):
-- \A~0_combout\ = ((!\dig6Enabled~0_combout\ & (\G~0_combout\ & \ERRO~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \dig6Enabled~0_combout\,
	datac => \G~0_combout\,
	datad => \ERRO~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \A~0_combout\);

-- Location: LC_X3_Y2_N6
\acionamentoDig4~0\ : maxii_lcell
-- Equation(s):
-- \acionamentoDig4~0_combout\ = (\E1~combout\ & (!\E0~combout\ & (\E3~combout\ $ (\E2~combout\)))) # (!\E1~combout\ & (\E3~combout\ & (\E2~combout\ $ (\E0~combout\))))

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
	dataa => \E1~combout\,
	datab => \E3~combout\,
	datac => \E2~combout\,
	datad => \E0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \acionamentoDig4~0_combout\);

-- Location: LC_X3_Y2_N0
\acionamentoDig4~1\ : maxii_lcell
-- Equation(s):
-- \acionamentoDig4~1_combout\ = ((\C~combout\) # ((\C~2_combout\ & \acionamentoDig4~0_combout\))) # (!\E~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fbf3",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C~2_combout\,
	datab => \E~0_combout\,
	datac => \C~combout\,
	datad => \acionamentoDig4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \acionamentoDig4~1_combout\);

-- Location: PIN_6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\g~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \G~combout\,
	oe => VCC,
	padio => ww_g);

-- Location: PIN_61,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\f~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \F~combout\,
	oe => VCC,
	padio => ww_f);

-- Location: PIN_4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\e~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \E~combout\,
	oe => VCC,
	padio => ww_e);

-- Location: PIN_21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\d~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_D~2_combout\,
	oe => VCC,
	padio => ww_d);

-- Location: PIN_33,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\c~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \C~combout\,
	oe => VCC,
	padio => ww_c);

-- Location: PIN_18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\b~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \B~combout\,
	oe => VCC,
	padio => ww_b);

-- Location: PIN_16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\a~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_A~0_combout\,
	oe => VCC,
	padio => ww_a);

-- Location: PIN_19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\dig~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \acionamentoDig4~1_combout\,
	oe => VCC,
	padio => ww_dig);

-- Location: PIN_1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\ledR~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_ERRO~2_combout\,
	oe => VCC,
	padio => ww_ledR);

-- Location: PIN_5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\ledG~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ERRO~2_combout\,
	oe => VCC,
	padio => ww_ledG);
END structure;


