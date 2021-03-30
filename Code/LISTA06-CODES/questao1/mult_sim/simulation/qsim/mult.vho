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

-- DATE "03/29/2021 19:46:51"

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

ENTITY 	mult IS
    PORT (
	in_port : IN std_logic_vector(1 DOWNTO 0);
	in_portA : IN std_logic_vector(1 DOWNTO 0);
	in_portB : IN std_logic_vector(1 DOWNTO 0);
	in_portC : IN std_logic_vector(1 DOWNTO 0);
	in_portD : IN std_logic_vector(1 DOWNTO 0);
	out_port : OUT std_logic_vector(1 DOWNTO 0)
	);
END mult;

ARCHITECTURE structure OF mult IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_in_port : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_in_portA : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_in_portB : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_in_portC : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_in_portD : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_out_port : std_logic_vector(1 DOWNTO 0);
SIGNAL \out_port[0]~output_o\ : std_logic;
SIGNAL \out_port[1]~output_o\ : std_logic;
SIGNAL \in_portA[0]~input_o\ : std_logic;
SIGNAL \in_portB[0]~input_o\ : std_logic;
SIGNAL \in_portC[0]~input_o\ : std_logic;
SIGNAL \in_portD[0]~input_o\ : std_logic;
SIGNAL \in_port[0]~input_o\ : std_logic;
SIGNAL \in_port[1]~input_o\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \in_portA[1]~input_o\ : std_logic;
SIGNAL \in_portB[1]~input_o\ : std_logic;
SIGNAL \in_portC[1]~input_o\ : std_logic;
SIGNAL \in_portD[1]~input_o\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \ALT_INV_in_portB[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_in_portC[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_in_portD[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_in_portA[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_in_portB[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_in_portC[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_in_portD[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_in_port[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_in_port[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_in_portA[1]~input_o\ : std_logic;

BEGIN

ww_in_port <= in_port;
ww_in_portA <= in_portA;
ww_in_portB <= in_portB;
ww_in_portC <= in_portC;
ww_in_portD <= in_portD;
out_port <= ww_out_port;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_in_portB[1]~input_o\ <= NOT \in_portB[1]~input_o\;
\ALT_INV_in_portC[1]~input_o\ <= NOT \in_portC[1]~input_o\;
\ALT_INV_in_portD[1]~input_o\ <= NOT \in_portD[1]~input_o\;
\ALT_INV_in_portA[0]~input_o\ <= NOT \in_portA[0]~input_o\;
\ALT_INV_in_portB[0]~input_o\ <= NOT \in_portB[0]~input_o\;
\ALT_INV_in_portC[0]~input_o\ <= NOT \in_portC[0]~input_o\;
\ALT_INV_in_portD[0]~input_o\ <= NOT \in_portD[0]~input_o\;
\ALT_INV_in_port[0]~input_o\ <= NOT \in_port[0]~input_o\;
\ALT_INV_in_port[1]~input_o\ <= NOT \in_port[1]~input_o\;
\ALT_INV_in_portA[1]~input_o\ <= NOT \in_portA[1]~input_o\;

\out_port[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1~0_combout\,
	devoe => ww_devoe,
	o => \out_port[0]~output_o\);

\out_port[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux0~0_combout\,
	devoe => ww_devoe,
	o => \out_port[1]~output_o\);

\in_portA[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_portA(0),
	o => \in_portA[0]~input_o\);

\in_portB[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_portB(0),
	o => \in_portB[0]~input_o\);

\in_portC[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_portC(0),
	o => \in_portC[0]~input_o\);

\in_portD[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_portD(0),
	o => \in_portD[0]~input_o\);

\in_port[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_port(0),
	o => \in_port[0]~input_o\);

\in_port[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_port(1),
	o => \in_port[1]~input_o\);

\Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = ( \in_port[0]~input_o\ & ( \in_port[1]~input_o\ & ( \in_portD[0]~input_o\ ) ) ) # ( !\in_port[0]~input_o\ & ( \in_port[1]~input_o\ & ( \in_portC[0]~input_o\ ) ) ) # ( \in_port[0]~input_o\ & ( !\in_port[1]~input_o\ & ( 
-- \in_portB[0]~input_o\ ) ) ) # ( !\in_port[0]~input_o\ & ( !\in_port[1]~input_o\ & ( \in_portA[0]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_in_portA[0]~input_o\,
	datab => \ALT_INV_in_portB[0]~input_o\,
	datac => \ALT_INV_in_portC[0]~input_o\,
	datad => \ALT_INV_in_portD[0]~input_o\,
	datae => \ALT_INV_in_port[0]~input_o\,
	dataf => \ALT_INV_in_port[1]~input_o\,
	combout => \Mux1~0_combout\);

\in_portA[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_portA(1),
	o => \in_portA[1]~input_o\);

\in_portB[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_portB(1),
	o => \in_portB[1]~input_o\);

\in_portC[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_portC(1),
	o => \in_portC[1]~input_o\);

\in_portD[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_portD(1),
	o => \in_portD[1]~input_o\);

\Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = ( \in_port[0]~input_o\ & ( \in_port[1]~input_o\ & ( \in_portD[1]~input_o\ ) ) ) # ( !\in_port[0]~input_o\ & ( \in_port[1]~input_o\ & ( \in_portC[1]~input_o\ ) ) ) # ( \in_port[0]~input_o\ & ( !\in_port[1]~input_o\ & ( 
-- \in_portB[1]~input_o\ ) ) ) # ( !\in_port[0]~input_o\ & ( !\in_port[1]~input_o\ & ( \in_portA[1]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_in_portA[1]~input_o\,
	datab => \ALT_INV_in_portB[1]~input_o\,
	datac => \ALT_INV_in_portC[1]~input_o\,
	datad => \ALT_INV_in_portD[1]~input_o\,
	datae => \ALT_INV_in_port[0]~input_o\,
	dataf => \ALT_INV_in_port[1]~input_o\,
	combout => \Mux0~0_combout\);

ww_out_port(0) <= \out_port[0]~output_o\;

ww_out_port(1) <= \out_port[1]~output_o\;
END structure;


