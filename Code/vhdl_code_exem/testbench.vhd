-- Testbench for OR gate
library IEEE;
use IEEE.std_logic_1164.all;
 
entity testbench is
-- empty
end testbench; 

architecture tb of testbench is

-- DUT component
component Multiplex is
port(
 	A, B, S : IN std_logic;
	Saida : OUT std_logic
  );
end component;

signal A_in, B_in, S_in, Saida_out: std_logic;

begin

  -- Connect DUT
  DUT: Multiplex port map(A_in, B_in, S_in, Saida_out);

  process
  begin
    A_in <= '0';
    B_in <= '1';
    S_in <= '0';
    wait for 1 ns;
    assert(Saida_out='0') report "Fail 1" severity error;
    
    A_in <= '0';
    B_in <= '1';
    S_in <= '1';
    wait for 1 ns;
    assert(Saida_out='1') report "Fail 2" severity error;
    
    A_in <= '0';
    B_in <= '1';
    S_in <= '1';
    wait for 1 ns;
    assert(Saida_out='0') report "Fail 3" severity error;

    assert false report "Test done." severity note;
    wait;
  end process;
end tb;

