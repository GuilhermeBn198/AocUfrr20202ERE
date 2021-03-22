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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "03/22/2021 17:28:22"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          p_xor
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY p_xor_vhd_vec_tst IS
END p_xor_vhd_vec_tst;
ARCHITECTURE p_xor_arch OF p_xor_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL in_portA : STD_LOGIC;
SIGNAL in_portB : STD_LOGIC;
SIGNAL out_port : STD_LOGIC;
COMPONENT p_xor
	PORT (
	in_portA : IN STD_LOGIC;
	in_portB : IN STD_LOGIC;
	out_port : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : p_xor
	PORT MAP (
-- list connections between master ports and signals
	in_portA => in_portA,
	in_portB => in_portB,
	out_port => out_port
	);

-- in_portA
t_prcs_in_portA: PROCESS
BEGIN
LOOP
	in_portA <= '0';
	WAIT FOR 10000 ps;
	in_portA <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_in_portA;

-- in_portB
t_prcs_in_portB: PROCESS
BEGIN
LOOP
	in_portB <= '0';
	WAIT FOR 20000 ps;
	in_portB <= '1';
	WAIT FOR 20000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_in_portB;
END p_xor_arch;
