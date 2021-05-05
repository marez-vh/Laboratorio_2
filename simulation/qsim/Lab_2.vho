-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"

-- DATE "04/21/2021 00:19:31"

-- 
-- Device: Altera EP4CE75F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_P28,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	deco_3_a_8 IS
    PORT (
	ENT : IN std_logic_vector(2 DOWNTO 0);
	HAB : IN std_logic;
	SAL : OUT std_logic_vector(7 DOWNTO 0)
	);
END deco_3_a_8;

-- Design Ports Information
-- SAL[0]	=>  Location: PIN_U3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SAL[1]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SAL[2]	=>  Location: PIN_U4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SAL[3]	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SAL[4]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SAL[5]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SAL[6]	=>  Location: PIN_N3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SAL[7]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENT[0]	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HAB	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENT[1]	=>  Location: PIN_R2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENT[2]	=>  Location: PIN_R3,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF deco_3_a_8 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_ENT : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_HAB : std_logic;
SIGNAL ww_SAL : std_logic_vector(7 DOWNTO 0);
SIGNAL \SAL[0]~output_o\ : std_logic;
SIGNAL \SAL[1]~output_o\ : std_logic;
SIGNAL \SAL[2]~output_o\ : std_logic;
SIGNAL \SAL[3]~output_o\ : std_logic;
SIGNAL \SAL[4]~output_o\ : std_logic;
SIGNAL \SAL[5]~output_o\ : std_logic;
SIGNAL \SAL[6]~output_o\ : std_logic;
SIGNAL \SAL[7]~output_o\ : std_logic;
SIGNAL \ENT[0]~input_o\ : std_logic;
SIGNAL \ENT[2]~input_o\ : std_logic;
SIGNAL \HAB~input_o\ : std_logic;
SIGNAL \ENT[1]~input_o\ : std_logic;
SIGNAL \SAL~0_combout\ : std_logic;
SIGNAL \SAL~1_combout\ : std_logic;
SIGNAL \SAL~2_combout\ : std_logic;
SIGNAL \SAL~3_combout\ : std_logic;
SIGNAL \SAL~4_combout\ : std_logic;
SIGNAL \SAL~5_combout\ : std_logic;
SIGNAL \SAL~6_combout\ : std_logic;
SIGNAL \SAL~7_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_ENT <= ENT;
ww_HAB <= HAB;
SAL <= ww_SAL;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X0_Y29_N23
\SAL[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SAL~0_combout\,
	devoe => ww_devoe,
	o => \SAL[0]~output_o\);

-- Location: IOOBUF_X0_Y29_N9
\SAL[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SAL~1_combout\,
	devoe => ww_devoe,
	o => \SAL[1]~output_o\);

-- Location: IOOBUF_X0_Y28_N9
\SAL[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SAL~2_combout\,
	devoe => ww_devoe,
	o => \SAL[2]~output_o\);

-- Location: IOOBUF_X0_Y26_N16
\SAL[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SAL~3_combout\,
	devoe => ww_devoe,
	o => \SAL[3]~output_o\);

-- Location: IOOBUF_X0_Y25_N16
\SAL[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SAL~4_combout\,
	devoe => ww_devoe,
	o => \SAL[4]~output_o\);

-- Location: IOOBUF_X0_Y26_N23
\SAL[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SAL~5_combout\,
	devoe => ww_devoe,
	o => \SAL[5]~output_o\);

-- Location: IOOBUF_X0_Y37_N23
\SAL[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SAL~6_combout\,
	devoe => ww_devoe,
	o => \SAL[6]~output_o\);

-- Location: IOOBUF_X0_Y29_N16
\SAL[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SAL~7_combout\,
	devoe => ww_devoe,
	o => \SAL[7]~output_o\);

-- Location: IOIBUF_X0_Y26_N8
\ENT[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ENT(0),
	o => \ENT[0]~input_o\);

-- Location: IOIBUF_X0_Y28_N15
\ENT[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ENT(2),
	o => \ENT[2]~input_o\);

-- Location: IOIBUF_X0_Y26_N1
\HAB~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_HAB,
	o => \HAB~input_o\);

-- Location: IOIBUF_X0_Y29_N1
\ENT[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ENT(1),
	o => \ENT[1]~input_o\);

-- Location: LCCOMB_X1_Y29_N16
\SAL~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SAL~0_combout\ = (!\ENT[0]~input_o\ & (!\ENT[2]~input_o\ & (!\HAB~input_o\ & !\ENT[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ENT[0]~input_o\,
	datab => \ENT[2]~input_o\,
	datac => \HAB~input_o\,
	datad => \ENT[1]~input_o\,
	combout => \SAL~0_combout\);

-- Location: LCCOMB_X1_Y29_N18
\SAL~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SAL~1_combout\ = (\ENT[0]~input_o\ & (!\ENT[2]~input_o\ & (!\HAB~input_o\ & !\ENT[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ENT[0]~input_o\,
	datab => \ENT[2]~input_o\,
	datac => \HAB~input_o\,
	datad => \ENT[1]~input_o\,
	combout => \SAL~1_combout\);

-- Location: LCCOMB_X1_Y29_N28
\SAL~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SAL~2_combout\ = (!\ENT[0]~input_o\ & (!\ENT[2]~input_o\ & (!\HAB~input_o\ & \ENT[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ENT[0]~input_o\,
	datab => \ENT[2]~input_o\,
	datac => \HAB~input_o\,
	datad => \ENT[1]~input_o\,
	combout => \SAL~2_combout\);

-- Location: LCCOMB_X1_Y29_N30
\SAL~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \SAL~3_combout\ = (\ENT[0]~input_o\ & (!\ENT[2]~input_o\ & (!\HAB~input_o\ & \ENT[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ENT[0]~input_o\,
	datab => \ENT[2]~input_o\,
	datac => \HAB~input_o\,
	datad => \ENT[1]~input_o\,
	combout => \SAL~3_combout\);

-- Location: LCCOMB_X1_Y29_N8
\SAL~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \SAL~4_combout\ = (!\ENT[0]~input_o\ & (\ENT[2]~input_o\ & (!\HAB~input_o\ & !\ENT[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ENT[0]~input_o\,
	datab => \ENT[2]~input_o\,
	datac => \HAB~input_o\,
	datad => \ENT[1]~input_o\,
	combout => \SAL~4_combout\);

-- Location: LCCOMB_X1_Y29_N26
\SAL~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \SAL~5_combout\ = (\ENT[0]~input_o\ & (\ENT[2]~input_o\ & (!\HAB~input_o\ & !\ENT[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ENT[0]~input_o\,
	datab => \ENT[2]~input_o\,
	datac => \HAB~input_o\,
	datad => \ENT[1]~input_o\,
	combout => \SAL~5_combout\);

-- Location: LCCOMB_X1_Y29_N4
\SAL~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \SAL~6_combout\ = (!\ENT[0]~input_o\ & (\ENT[2]~input_o\ & (!\HAB~input_o\ & \ENT[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ENT[0]~input_o\,
	datab => \ENT[2]~input_o\,
	datac => \HAB~input_o\,
	datad => \ENT[1]~input_o\,
	combout => \SAL~6_combout\);

-- Location: LCCOMB_X1_Y29_N14
\SAL~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \SAL~7_combout\ = (\ENT[0]~input_o\ & (\ENT[2]~input_o\ & (!\HAB~input_o\ & \ENT[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ENT[0]~input_o\,
	datab => \ENT[2]~input_o\,
	datac => \HAB~input_o\,
	datad => \ENT[1]~input_o\,
	combout => \SAL~7_combout\);

ww_SAL(0) <= \SAL[0]~output_o\;

ww_SAL(1) <= \SAL[1]~output_o\;

ww_SAL(2) <= \SAL[2]~output_o\;

ww_SAL(3) <= \SAL[3]~output_o\;

ww_SAL(4) <= \SAL[4]~output_o\;

ww_SAL(5) <= \SAL[5]~output_o\;

ww_SAL(6) <= \SAL[6]~output_o\;

ww_SAL(7) <= \SAL[7]~output_o\;
END structure;


