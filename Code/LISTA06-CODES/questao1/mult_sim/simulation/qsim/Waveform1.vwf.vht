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
-- Generated on "03/29/2021 19:46:50"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          mult
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY mult_vhd_vec_tst IS
END mult_vhd_vec_tst;
ARCHITECTURE mult_arch OF mult_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL in_port : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL in_portA : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL in_portB : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL in_portC : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL in_portD : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL out_port : STD_LOGIC_VECTOR(1 DOWNTO 0);
COMPONENT mult
	PORT (
	in_port : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	in_portA : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	in_portB : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	in_portC : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	in_portD : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	out_port : OUT STD_LOGIC_VECTOR(1 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : mult
	PORT MAP (
-- list connections between master ports and signals
	in_port => in_port,
	in_portA => in_portA,
	in_portB => in_portB,
	in_portC => in_portC,
	in_portD => in_portD,
	out_port => out_port
	);
-- in_port[1]
t_prcs_in_port_1: PROCESS
BEGIN
LOOP
	in_port(1) <= '0';
	WAIT FOR 100000 ps;
	in_port(1) <= '1';
	WAIT FOR 100000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_in_port_1;
-- in_port[0]
t_prcs_in_port_0: PROCESS
BEGIN
LOOP
	in_port(0) <= '0';
	WAIT FOR 50000 ps;
	in_port(0) <= '1';
	WAIT FOR 50000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_in_port_0;
-- in_portA[1]
t_prcs_in_portA_1: PROCESS
BEGIN
	in_portA(1) <= '0';
	WAIT FOR 50000 ps;
	FOR i IN 1 TO 4
	LOOP
		in_portA(1) <= '1';
		WAIT FOR 100000 ps;
		in_portA(1) <= '0';
		WAIT FOR 100000 ps;
	END LOOP;
	in_portA(1) <= '1';
	WAIT FOR 100000 ps;
	in_portA(1) <= '0';
WAIT;
END PROCESS t_prcs_in_portA_1;
-- in_portA[0]
t_prcs_in_portA_0: PROCESS
BEGIN
LOOP
	in_portA(0) <= '1';
	WAIT FOR 50000 ps;
	in_portA(0) <= '0';
	WAIT FOR 50000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_in_portA_0;
-- in_portB[1]
t_prcs_in_portB_1: PROCESS
BEGIN
LOOP
	in_portB(1) <= '1';
	WAIT FOR 100000 ps;
	in_portB(1) <= '0';
	WAIT FOR 100000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_in_portB_1;
-- in_portB[0]
t_prcs_in_portB_0: PROCESS
BEGIN
LOOP
	in_portB(0) <= '0';
	WAIT FOR 50000 ps;
	in_portB(0) <= '1';
	WAIT FOR 50000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_in_portB_0;
-- in_portC[1]
t_prcs_in_portC_1: PROCESS
BEGIN
	in_portC(1) <= '1';
	WAIT FOR 50000 ps;
	FOR i IN 1 TO 4
	LOOP
		in_portC(1) <= '0';
		WAIT FOR 100000 ps;
		in_portC(1) <= '1';
		WAIT FOR 100000 ps;
	END LOOP;
	in_portC(1) <= '0';
	WAIT FOR 100000 ps;
	in_portC(1) <= '1';
WAIT;
END PROCESS t_prcs_in_portC_1;
-- in_portC[0]
t_prcs_in_portC_0: PROCESS
BEGIN
LOOP
	in_portC(0) <= '1';
	WAIT FOR 50000 ps;
	in_portC(0) <= '0';
	WAIT FOR 50000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_in_portC_0;
-- in_portD[1]
t_prcs_in_portD_1: PROCESS
BEGIN
	in_portD(1) <= '0';
WAIT;
END PROCESS t_prcs_in_portD_1;
-- in_portD[0]
t_prcs_in_portD_0: PROCESS
BEGIN
	in_portD(0) <= '0';
WAIT;
END PROCESS t_prcs_in_portD_0;
END mult_arch;
