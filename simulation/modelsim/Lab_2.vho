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

-- DATE "05/04/2021 17:33:04"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
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

ENTITY 	Lab_2 IS
    PORT (
	CONT1 : IN std_logic_vector(3 DOWNTO 0);
	CONT2 : IN std_logic_vector(3 DOWNTO 0);
	CONT3 : IN std_logic_vector(3 DOWNTO 0);
	CONT4 : IN std_logic_vector(3 DOWNTO 0);
	SEL_P : IN std_logic_vector(1 DOWNTO 0);
	SAL_P : BUFFER std_logic_vector(0 TO 6)
	);
END Lab_2;

-- Design Ports Information
-- SAL_P[6]	=>  Location: PIN_AD2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SAL_P[5]	=>  Location: PIN_AA4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SAL_P[4]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SAL_P[3]	=>  Location: PIN_V2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SAL_P[2]	=>  Location: PIN_AB3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SAL_P[1]	=>  Location: PIN_AD1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SAL_P[0]	=>  Location: PIN_AA3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CONT3[0]	=>  Location: PIN_AC1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEL_P[0]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CONT2[0]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEL_P[1]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CONT4[0]	=>  Location: PIN_W1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CONT1[0]	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CONT2[1]	=>  Location: PIN_V1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CONT3[1]	=>  Location: PIN_AC2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CONT4[1]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CONT1[1]	=>  Location: PIN_AD3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CONT3[2]	=>  Location: PIN_AB2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CONT2[2]	=>  Location: PIN_U5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CONT4[2]	=>  Location: PIN_AB1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CONT1[2]	=>  Location: PIN_AE2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CONT2[3]	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CONT3[3]	=>  Location: PIN_AC3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CONT4[3]	=>  Location: PIN_AE1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CONT1[3]	=>  Location: PIN_Y4,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Lab_2 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CONT1 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_CONT2 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_CONT3 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_CONT4 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_SEL_P : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_SAL_P : std_logic_vector(0 TO 6);
SIGNAL \SAL_P[6]~output_o\ : std_logic;
SIGNAL \SAL_P[5]~output_o\ : std_logic;
SIGNAL \SAL_P[4]~output_o\ : std_logic;
SIGNAL \SAL_P[3]~output_o\ : std_logic;
SIGNAL \SAL_P[2]~output_o\ : std_logic;
SIGNAL \SAL_P[1]~output_o\ : std_logic;
SIGNAL \SAL_P[0]~output_o\ : std_logic;
SIGNAL \CONT1[1]~input_o\ : std_logic;
SIGNAL \SEL_P[1]~input_o\ : std_logic;
SIGNAL \CONT4[1]~input_o\ : std_logic;
SIGNAL \CONT3[1]~input_o\ : std_logic;
SIGNAL \SEL_P[0]~input_o\ : std_logic;
SIGNAL \t:1:u1|Mux0~0_combout\ : std_logic;
SIGNAL \CONT2[1]~input_o\ : std_logic;
SIGNAL \t:1:u1|Mux0~1_combout\ : std_logic;
SIGNAL \CONT3[0]~input_o\ : std_logic;
SIGNAL \CONT1[0]~input_o\ : std_logic;
SIGNAL \CONT4[0]~input_o\ : std_logic;
SIGNAL \CONT2[0]~input_o\ : std_logic;
SIGNAL \t:0:u1|Mux0~0_combout\ : std_logic;
SIGNAL \t:0:u1|Mux0~1_combout\ : std_logic;
SIGNAL \CONT2[3]~input_o\ : std_logic;
SIGNAL \CONT1[3]~input_o\ : std_logic;
SIGNAL \CONT3[3]~input_o\ : std_logic;
SIGNAL \CONT4[3]~input_o\ : std_logic;
SIGNAL \t:3:u1|Mux0~0_combout\ : std_logic;
SIGNAL \t:3:u1|Mux0~1_combout\ : std_logic;
SIGNAL \CONT3[2]~input_o\ : std_logic;
SIGNAL \CONT1[2]~input_o\ : std_logic;
SIGNAL \CONT2[2]~input_o\ : std_logic;
SIGNAL \CONT4[2]~input_o\ : std_logic;
SIGNAL \t:2:u1|Mux0~0_combout\ : std_logic;
SIGNAL \t:2:u1|Mux0~1_combout\ : std_logic;
SIGNAL \u2|Mux6~0_combout\ : std_logic;
SIGNAL \u2|Mux5~0_combout\ : std_logic;
SIGNAL \u2|Mux4~0_combout\ : std_logic;
SIGNAL \u2|Mux3~0_combout\ : std_logic;
SIGNAL \u2|Mux2~0_combout\ : std_logic;
SIGNAL \u2|Mux1~0_combout\ : std_logic;
SIGNAL \u2|Mux0~0_combout\ : std_logic;
SIGNAL \u2|ALT_INV_Mux6~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_CONT1 <= CONT1;
ww_CONT2 <= CONT2;
ww_CONT3 <= CONT3;
ww_CONT4 <= CONT4;
ww_SEL_P <= SEL_P;
SAL_P <= ww_SAL_P;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\u2|ALT_INV_Mux6~0_combout\ <= NOT \u2|Mux6~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X0_Y22_N23
\SAL_P[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u2|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \SAL_P[6]~output_o\);

-- Location: IOOBUF_X0_Y19_N2
\SAL_P[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u2|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \SAL_P[5]~output_o\);

-- Location: IOOBUF_X0_Y20_N16
\SAL_P[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u2|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \SAL_P[4]~output_o\);

-- Location: IOOBUF_X0_Y28_N16
\SAL_P[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u2|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \SAL_P[3]~output_o\);

-- Location: IOOBUF_X0_Y21_N23
\SAL_P[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u2|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \SAL_P[2]~output_o\);

-- Location: IOOBUF_X0_Y21_N16
\SAL_P[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u2|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \SAL_P[1]~output_o\);

-- Location: IOOBUF_X0_Y19_N9
\SAL_P[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u2|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \SAL_P[0]~output_o\);

-- Location: IOIBUF_X0_Y22_N15
\CONT1[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CONT1(1),
	o => \CONT1[1]~input_o\);

-- Location: IOIBUF_X0_Y24_N15
\SEL_P[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SEL_P(1),
	o => \SEL_P[1]~input_o\);

-- Location: IOIBUF_X0_Y16_N22
\CONT4[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CONT4(1),
	o => \CONT4[1]~input_o\);

-- Location: IOIBUF_X0_Y24_N22
\CONT3[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CONT3(1),
	o => \CONT3[1]~input_o\);

-- Location: IOIBUF_X0_Y25_N22
\SEL_P[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SEL_P(0),
	o => \SEL_P[0]~input_o\);

-- Location: LCCOMB_X1_Y24_N4
\t:1:u1|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \t:1:u1|Mux0~0_combout\ = (\SEL_P[1]~input_o\ & (((\SEL_P[0]~input_o\)))) # (!\SEL_P[1]~input_o\ & ((\SEL_P[0]~input_o\ & ((\CONT3[1]~input_o\))) # (!\SEL_P[0]~input_o\ & (\CONT4[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONT4[1]~input_o\,
	datab => \SEL_P[1]~input_o\,
	datac => \CONT3[1]~input_o\,
	datad => \SEL_P[0]~input_o\,
	combout => \t:1:u1|Mux0~0_combout\);

-- Location: IOIBUF_X0_Y28_N22
\CONT2[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CONT2(1),
	o => \CONT2[1]~input_o\);

-- Location: LCCOMB_X1_Y24_N6
\t:1:u1|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \t:1:u1|Mux0~1_combout\ = (\SEL_P[1]~input_o\ & ((\t:1:u1|Mux0~0_combout\ & (\CONT1[1]~input_o\)) # (!\t:1:u1|Mux0~0_combout\ & ((\CONT2[1]~input_o\))))) # (!\SEL_P[1]~input_o\ & (((\t:1:u1|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONT1[1]~input_o\,
	datab => \SEL_P[1]~input_o\,
	datac => \t:1:u1|Mux0~0_combout\,
	datad => \CONT2[1]~input_o\,
	combout => \t:1:u1|Mux0~1_combout\);

-- Location: IOIBUF_X0_Y23_N15
\CONT3[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CONT3(0),
	o => \CONT3[0]~input_o\);

-- Location: IOIBUF_X0_Y18_N22
\CONT1[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CONT1(0),
	o => \CONT1[0]~input_o\);

-- Location: IOIBUF_X0_Y25_N15
\CONT4[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CONT4(0),
	o => \CONT4[0]~input_o\);

-- Location: IOIBUF_X0_Y18_N15
\CONT2[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CONT2(0),
	o => \CONT2[0]~input_o\);

-- Location: LCCOMB_X1_Y24_N24
\t:0:u1|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \t:0:u1|Mux0~0_combout\ = (\SEL_P[1]~input_o\ & (((\CONT2[0]~input_o\) # (\SEL_P[0]~input_o\)))) # (!\SEL_P[1]~input_o\ & (\CONT4[0]~input_o\ & ((!\SEL_P[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONT4[0]~input_o\,
	datab => \SEL_P[1]~input_o\,
	datac => \CONT2[0]~input_o\,
	datad => \SEL_P[0]~input_o\,
	combout => \t:0:u1|Mux0~0_combout\);

-- Location: LCCOMB_X1_Y24_N2
\t:0:u1|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \t:0:u1|Mux0~1_combout\ = (\SEL_P[0]~input_o\ & ((\t:0:u1|Mux0~0_combout\ & ((\CONT1[0]~input_o\))) # (!\t:0:u1|Mux0~0_combout\ & (\CONT3[0]~input_o\)))) # (!\SEL_P[0]~input_o\ & (((\t:0:u1|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONT3[0]~input_o\,
	datab => \SEL_P[0]~input_o\,
	datac => \CONT1[0]~input_o\,
	datad => \t:0:u1|Mux0~0_combout\,
	combout => \t:0:u1|Mux0~1_combout\);

-- Location: IOIBUF_X0_Y26_N15
\CONT2[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CONT2(3),
	o => \CONT2[3]~input_o\);

-- Location: IOIBUF_X0_Y24_N8
\CONT1[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CONT1(3),
	o => \CONT1[3]~input_o\);

-- Location: IOIBUF_X0_Y23_N22
\CONT3[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CONT3(3),
	o => \CONT3[3]~input_o\);

-- Location: IOIBUF_X0_Y16_N15
\CONT4[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CONT4(3),
	o => \CONT4[3]~input_o\);

-- Location: LCCOMB_X1_Y24_N20
\t:3:u1|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \t:3:u1|Mux0~0_combout\ = (\SEL_P[1]~input_o\ & (((\SEL_P[0]~input_o\)))) # (!\SEL_P[1]~input_o\ & ((\SEL_P[0]~input_o\ & (\CONT3[3]~input_o\)) # (!\SEL_P[0]~input_o\ & ((\CONT4[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONT3[3]~input_o\,
	datab => \SEL_P[1]~input_o\,
	datac => \CONT4[3]~input_o\,
	datad => \SEL_P[0]~input_o\,
	combout => \t:3:u1|Mux0~0_combout\);

-- Location: LCCOMB_X1_Y24_N30
\t:3:u1|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \t:3:u1|Mux0~1_combout\ = (\SEL_P[1]~input_o\ & ((\t:3:u1|Mux0~0_combout\ & ((\CONT1[3]~input_o\))) # (!\t:3:u1|Mux0~0_combout\ & (\CONT2[3]~input_o\)))) # (!\SEL_P[1]~input_o\ & (((\t:3:u1|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONT2[3]~input_o\,
	datab => \SEL_P[1]~input_o\,
	datac => \CONT1[3]~input_o\,
	datad => \t:3:u1|Mux0~0_combout\,
	combout => \t:3:u1|Mux0~1_combout\);

-- Location: IOIBUF_X0_Y27_N15
\CONT3[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CONT3(2),
	o => \CONT3[2]~input_o\);

-- Location: IOIBUF_X0_Y17_N15
\CONT1[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CONT1(2),
	o => \CONT1[2]~input_o\);

-- Location: IOIBUF_X0_Y24_N1
\CONT2[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CONT2(2),
	o => \CONT2[2]~input_o\);

-- Location: IOIBUF_X0_Y27_N22
\CONT4[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CONT4(2),
	o => \CONT4[2]~input_o\);

-- Location: LCCOMB_X1_Y24_N0
\t:2:u1|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \t:2:u1|Mux0~0_combout\ = (\SEL_P[0]~input_o\ & (((\SEL_P[1]~input_o\)))) # (!\SEL_P[0]~input_o\ & ((\SEL_P[1]~input_o\ & (\CONT2[2]~input_o\)) # (!\SEL_P[1]~input_o\ & ((\CONT4[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONT2[2]~input_o\,
	datab => \SEL_P[0]~input_o\,
	datac => \SEL_P[1]~input_o\,
	datad => \CONT4[2]~input_o\,
	combout => \t:2:u1|Mux0~0_combout\);

-- Location: LCCOMB_X1_Y24_N10
\t:2:u1|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \t:2:u1|Mux0~1_combout\ = (\SEL_P[0]~input_o\ & ((\t:2:u1|Mux0~0_combout\ & ((\CONT1[2]~input_o\))) # (!\t:2:u1|Mux0~0_combout\ & (\CONT3[2]~input_o\)))) # (!\SEL_P[0]~input_o\ & (((\t:2:u1|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONT3[2]~input_o\,
	datab => \SEL_P[0]~input_o\,
	datac => \CONT1[2]~input_o\,
	datad => \t:2:u1|Mux0~0_combout\,
	combout => \t:2:u1|Mux0~1_combout\);

-- Location: LCCOMB_X1_Y24_N8
\u2|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|Mux6~0_combout\ = (\t:1:u1|Mux0~1_combout\ & (!\t:3:u1|Mux0~1_combout\ & ((!\t:2:u1|Mux0~1_combout\) # (!\t:0:u1|Mux0~1_combout\)))) # (!\t:1:u1|Mux0~1_combout\ & ((\t:3:u1|Mux0~1_combout\ $ (\t:2:u1|Mux0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t:1:u1|Mux0~1_combout\,
	datab => \t:0:u1|Mux0~1_combout\,
	datac => \t:3:u1|Mux0~1_combout\,
	datad => \t:2:u1|Mux0~1_combout\,
	combout => \u2|Mux6~0_combout\);

-- Location: LCCOMB_X1_Y24_N18
\u2|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|Mux5~0_combout\ = (\t:0:u1|Mux0~1_combout\ & ((\t:1:u1|Mux0~1_combout\) # (\t:3:u1|Mux0~1_combout\ $ (!\t:2:u1|Mux0~1_combout\)))) # (!\t:0:u1|Mux0~1_combout\ & ((\t:2:u1|Mux0~1_combout\ & ((\t:3:u1|Mux0~1_combout\))) # (!\t:2:u1|Mux0~1_combout\ & 
-- (\t:1:u1|Mux0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t:1:u1|Mux0~1_combout\,
	datab => \t:0:u1|Mux0~1_combout\,
	datac => \t:3:u1|Mux0~1_combout\,
	datad => \t:2:u1|Mux0~1_combout\,
	combout => \u2|Mux5~0_combout\);

-- Location: LCCOMB_X1_Y24_N12
\u2|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|Mux4~0_combout\ = (\t:0:u1|Mux0~1_combout\) # ((\t:1:u1|Mux0~1_combout\ & (\t:3:u1|Mux0~1_combout\)) # (!\t:1:u1|Mux0~1_combout\ & ((\t:2:u1|Mux0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t:1:u1|Mux0~1_combout\,
	datab => \t:0:u1|Mux0~1_combout\,
	datac => \t:3:u1|Mux0~1_combout\,
	datad => \t:2:u1|Mux0~1_combout\,
	combout => \u2|Mux4~0_combout\);

-- Location: LCCOMB_X1_Y24_N22
\u2|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|Mux3~0_combout\ = (\t:1:u1|Mux0~1_combout\ & ((\t:3:u1|Mux0~1_combout\) # ((\t:0:u1|Mux0~1_combout\ & \t:2:u1|Mux0~1_combout\)))) # (!\t:1:u1|Mux0~1_combout\ & (\t:2:u1|Mux0~1_combout\ $ (((\t:0:u1|Mux0~1_combout\ & !\t:3:u1|Mux0~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100110100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t:1:u1|Mux0~1_combout\,
	datab => \t:0:u1|Mux0~1_combout\,
	datac => \t:3:u1|Mux0~1_combout\,
	datad => \t:2:u1|Mux0~1_combout\,
	combout => \u2|Mux3~0_combout\);

-- Location: LCCOMB_X1_Y24_N16
\u2|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|Mux2~0_combout\ = (\t:2:u1|Mux0~1_combout\ & (((\t:3:u1|Mux0~1_combout\)))) # (!\t:2:u1|Mux0~1_combout\ & (\t:1:u1|Mux0~1_combout\ & ((\t:3:u1|Mux0~1_combout\) # (!\t:0:u1|Mux0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t:1:u1|Mux0~1_combout\,
	datab => \t:0:u1|Mux0~1_combout\,
	datac => \t:3:u1|Mux0~1_combout\,
	datad => \t:2:u1|Mux0~1_combout\,
	combout => \u2|Mux2~0_combout\);

-- Location: LCCOMB_X1_Y24_N26
\u2|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|Mux1~0_combout\ = (\t:3:u1|Mux0~1_combout\ & ((\t:1:u1|Mux0~1_combout\) # ((\t:2:u1|Mux0~1_combout\)))) # (!\t:3:u1|Mux0~1_combout\ & (\t:2:u1|Mux0~1_combout\ & (\t:1:u1|Mux0~1_combout\ $ (\t:0:u1|Mux0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t:1:u1|Mux0~1_combout\,
	datab => \t:0:u1|Mux0~1_combout\,
	datac => \t:3:u1|Mux0~1_combout\,
	datad => \t:2:u1|Mux0~1_combout\,
	combout => \u2|Mux1~0_combout\);

-- Location: LCCOMB_X1_Y24_N28
\u2|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|Mux0~0_combout\ = (\t:1:u1|Mux0~1_combout\ & (((\t:3:u1|Mux0~1_combout\)))) # (!\t:1:u1|Mux0~1_combout\ & (\t:2:u1|Mux0~1_combout\ $ (((\t:0:u1|Mux0~1_combout\ & !\t:3:u1|Mux0~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000110100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t:1:u1|Mux0~1_combout\,
	datab => \t:0:u1|Mux0~1_combout\,
	datac => \t:3:u1|Mux0~1_combout\,
	datad => \t:2:u1|Mux0~1_combout\,
	combout => \u2|Mux0~0_combout\);

ww_SAL_P(6) <= \SAL_P[6]~output_o\;

ww_SAL_P(5) <= \SAL_P[5]~output_o\;

ww_SAL_P(4) <= \SAL_P[4]~output_o\;

ww_SAL_P(3) <= \SAL_P[3]~output_o\;

ww_SAL_P(2) <= \SAL_P[2]~output_o\;

ww_SAL_P(1) <= \SAL_P[1]~output_o\;

ww_SAL_P(0) <= \SAL_P[0]~output_o\;
END structure;


