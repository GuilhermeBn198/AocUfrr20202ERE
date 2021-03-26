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

-- DATE "03/26/2021 15:25:43"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	portaXor IS
    PORT (
	in_port_A : IN std_logic;
	in_port_B : IN std_logic;
	out_port : OUT std_logic
	);
END portaXor;

ARCHITECTURE structure OF portaXor IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_in_port_A : std_logic;
SIGNAL ww_in_port_B : std_logic;
SIGNAL ww_out_port : std_logic;
SIGNAL \out_port~output_o\ : std_logic;
SIGNAL \in_port_A~input_o\ : std_logic;
SIGNAL \in_port_B~input_o\ : std_logic;
SIGNAL \p_o|out_port~0_combout\ : std_logic;
SIGNAL \ALT_INV_in_port_A~input_o\ : std_logic;
SIGNAL \ALT_INV_in_port_B~input_o\ : std_logic;

BEGIN

ww_in_port_A <= in_port_A;
ww_in_port_B <= in_port_B;
out_port <= ww_out_port;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_in_port_A~input_o\ <= NOT \in_port_A~input_o\;
\ALT_INV_in_port_B~input_o\ <= NOT \in_port_B~input_o\;

\out_port~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \p_o|out_port~0_combout\,
	devoe => ww_devoe,
	o => \out_port~output_o\);

\in_port_A~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_port_A,
	o => \in_port_A~input_o\);

\in_port_B~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_port_B,
	o => \in_port_B~input_o\);

\p_o|out_port~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \p_o|out_port~0_combout\ = !\in_port_A~input_o\ $ (!\in_port_B~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_in_port_A~input_o\,
	datab => \ALT_INV_in_port_B~input_o\,
	combout => \p_o|out_port~0_combout\);

ww_out_port <= \out_port~output_o\;
END structure;


