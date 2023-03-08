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

-- DATE "02/21/2023 18:49:26"

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

ENTITY 	matrizDeLeds IS
    PORT (
	E7 : IN std_logic;
	E6 : IN std_logic;
	E5 : IN std_logic;
	E4 : IN std_logic;
	E3 : IN std_logic;
	E2 : IN std_logic;
	E1 : IN std_logic;
	E0 : IN std_logic;
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
END matrizDeLeds;

-- Design Ports Information
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
-- E5	=>  Location: PIN_30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- E6	=>  Location: PIN_33,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- E7	=>  Location: PIN_35,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- E0	=>  Location: PIN_42,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- E1	=>  Location: PIN_40,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- E3	=>  Location: PIN_36,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- E2	=>  Location: PIN_38,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- E4	=>  Location: PIN_34,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF matrizDeLeds IS
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
SIGNAL \E7~combout\ : std_logic;
SIGNAL \E6~combout\ : std_logic;
SIGNAL \E5~combout\ : std_logic;
SIGNAL \linha0~0_combout\ : std_logic;
SIGNAL \linha0~1_combout\ : std_logic;
SIGNAL \linha0~2_combout\ : std_logic;
SIGNAL \linha0~3_combout\ : std_logic;
SIGNAL \linha0~4_combout\ : std_logic;
SIGNAL \linha0~5_combout\ : std_logic;
SIGNAL \linha0~6_combout\ : std_logic;
SIGNAL \E0~combout\ : std_logic;
SIGNAL \E4~combout\ : std_logic;
SIGNAL \E2~combout\ : std_logic;
SIGNAL \E3~combout\ : std_logic;
SIGNAL \ERRO~3_combout\ : std_logic;
SIGNAL \ERRO~2_combout\ : std_logic;
SIGNAL \E1~combout\ : std_logic;
SIGNAL \coluna0~combout\ : std_logic;
SIGNAL \coluna1~combout\ : std_logic;
SIGNAL \ERRO~4_combout\ : std_logic;
SIGNAL \coluna2~combout\ : std_logic;
SIGNAL \coluna3~combout\ : std_logic;
SIGNAL \coluna4~combout\ : std_logic;

BEGIN

ww_E7 <= E7;
ww_E6 <= E6;
ww_E5 <= E5;
ww_E4 <= E4;
ww_E3 <= E3;
ww_E2 <= E2;
ww_E1 <= E1;
ww_E0 <= E0;
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

-- Location: LC_X5_Y4_N3
\linha0~0\ : maxii_lcell
-- Equation(s):
-- \linha0~0_combout\ = ((!\E7~combout\ & (!\E6~combout\ & \E5~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0300",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \E7~combout\,
	datac => \E6~combout\,
	datad => \E5~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \linha0~0_combout\);

-- Location: LC_X5_Y4_N5
\linha0~1\ : maxii_lcell
-- Equation(s):
-- \linha0~1_combout\ = ((!\E7~combout\ & (\E6~combout\ & !\E5~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0030",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \E7~combout\,
	datac => \E6~combout\,
	datad => \E5~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \linha0~1_combout\);

-- Location: LC_X5_Y4_N2
\linha0~2\ : maxii_lcell
-- Equation(s):
-- \linha0~2_combout\ = ((!\E7~combout\ & (\E6~combout\ & \E5~combout\)))

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
	datab => \E7~combout\,
	datac => \E6~combout\,
	datad => \E5~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \linha0~2_combout\);

-- Location: LC_X5_Y4_N1
\linha0~3\ : maxii_lcell
-- Equation(s):
-- \linha0~3_combout\ = ((\E7~combout\ & (!\E6~combout\ & !\E5~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \E7~combout\,
	datac => \E6~combout\,
	datad => \E5~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \linha0~3_combout\);

-- Location: LC_X5_Y4_N6
\linha0~4\ : maxii_lcell
-- Equation(s):
-- \linha0~4_combout\ = ((\E7~combout\ & (!\E6~combout\ & \E5~combout\)))

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
	datab => \E7~combout\,
	datac => \E6~combout\,
	datad => \E5~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \linha0~4_combout\);

-- Location: LC_X5_Y4_N8
\linha0~5\ : maxii_lcell
-- Equation(s):
-- \linha0~5_combout\ = ((\E7~combout\ & (\E6~combout\ & !\E5~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \E7~combout\,
	datac => \E6~combout\,
	datad => \E5~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \linha0~5_combout\);

-- Location: LC_X5_Y4_N7
\linha0~6\ : maxii_lcell
-- Equation(s):
-- \linha0~6_combout\ = ((\E7~combout\ & (\E6~combout\ & \E5~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \E7~combout\,
	datac => \E6~combout\,
	datad => \E5~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \linha0~6_combout\);

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

-- Location: LC_X4_Y3_N9
\ERRO~3\ : maxii_lcell
-- Equation(s):
-- \ERRO~3_combout\ = ((\E4~combout\ & (!\E2~combout\ & !\E3~combout\)) # (!\E4~combout\ & (\E2~combout\ $ (\E3~combout\))))

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
	datab => \E4~combout\,
	datac => \E2~combout\,
	datad => \E3~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ERRO~3_combout\);

-- Location: LC_X4_Y3_N6
\ERRO~2\ : maxii_lcell
-- Equation(s):
-- \ERRO~2_combout\ = (\E2~combout\ & ((\E0~combout\) # (\E4~combout\ $ (\E3~combout\)))) # (!\E2~combout\ & ((\E4~combout\ & ((\E0~combout\) # (\E3~combout\))) # (!\E4~combout\ & (\E0~combout\ & \E3~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f6e8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \E2~combout\,
	datab => \E4~combout\,
	datac => \E0~combout\,
	datad => \E3~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ERRO~2_combout\);

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

-- Location: LC_X4_Y3_N8
coluna0 : maxii_lcell
-- Equation(s):
-- \coluna0~combout\ = (\E0~combout\ & ((\E1~combout\ & ((!\ERRO~2_combout\))) # (!\E1~combout\ & (\ERRO~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0a88",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \E0~combout\,
	datab => \ERRO~3_combout\,
	datac => \ERRO~2_combout\,
	datad => \E1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \coluna0~combout\);

-- Location: LC_X4_Y3_N3
coluna1 : maxii_lcell
-- Equation(s):
-- \coluna1~combout\ = (\E1~combout\ & ((\E0~combout\ & ((!\ERRO~2_combout\))) # (!\E0~combout\ & (\ERRO~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4e00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \E0~combout\,
	datab => \ERRO~3_combout\,
	datac => \ERRO~2_combout\,
	datad => \E1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \coluna1~combout\);

-- Location: LC_X4_Y3_N2
\ERRO~4\ : maxii_lcell
-- Equation(s):
-- \ERRO~4_combout\ = (\E0~combout\ & ((\E1~combout\ & ((!\ERRO~2_combout\))) # (!\E1~combout\ & (\ERRO~3_combout\)))) # (!\E0~combout\ & ((\E1~combout\ & (\ERRO~3_combout\)) # (!\E1~combout\ & ((\ERRO~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4ed8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \E0~combout\,
	datab => \ERRO~3_combout\,
	datac => \ERRO~2_combout\,
	datad => \E1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ERRO~4_combout\);

-- Location: LC_X4_Y3_N7
coluna2 : maxii_lcell
-- Equation(s):
-- \coluna2~combout\ = (((\E2~combout\ & \ERRO~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \E2~combout\,
	datad => \ERRO~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \coluna2~combout\);

-- Location: LC_X4_Y3_N5
coluna3 : maxii_lcell
-- Equation(s):
-- \coluna3~combout\ = (\E3~combout\ & (((\ERRO~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \E3~combout\,
	datad => \ERRO~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \coluna3~combout\);

-- Location: LC_X4_Y3_N4
coluna4 : maxii_lcell
-- Equation(s):
-- \coluna4~combout\ = ((\E4~combout\ & ((\ERRO~4_combout\))))

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
	datab => \E4~combout\,
	datad => \ERRO~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \coluna4~combout\);

-- Location: PIN_85,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\L0~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \linha0~0_combout\,
	oe => VCC,
	padio => ww_L0);

-- Location: PIN_83,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\L1~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \linha0~1_combout\,
	oe => VCC,
	padio => ww_L1);

-- Location: PIN_84,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\L2~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \linha0~2_combout\,
	oe => VCC,
	padio => ww_L2);

-- Location: PIN_87,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\L3~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \linha0~3_combout\,
	oe => VCC,
	padio => ww_L3);

-- Location: PIN_81,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\L4~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \linha0~4_combout\,
	oe => VCC,
	padio => ww_L4);

-- Location: PIN_91,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\L5~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \linha0~5_combout\,
	oe => VCC,
	padio => ww_L5);

-- Location: PIN_89,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\L6~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \linha0~6_combout\,
	oe => VCC,
	padio => ww_L6);

-- Location: PIN_97,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\C0~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \coluna0~combout\,
	oe => VCC,
	padio => ww_C0);

-- Location: PIN_99,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\C1~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \coluna1~combout\,
	oe => VCC,
	padio => ww_C1);

-- Location: PIN_95,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\C2~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \coluna2~combout\,
	oe => VCC,
	padio => ww_C2);

-- Location: PIN_82,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\C3~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \coluna3~combout\,
	oe => VCC,
	padio => ww_C3);

-- Location: PIN_78,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\C4~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \coluna4~combout\,
	oe => VCC,
	padio => ww_C4);
END structure;


