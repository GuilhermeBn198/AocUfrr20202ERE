library IEEE;
use IEEE.std_logic_1164.all;

--entidade
entity PNot is 
    port(
        in_port_A  : in  std_logic;
        out_port : out std_logic
    );
end entity PNot;

--arquitetura
architecture main of PNot is 
begin
    out_port <= not in_port_A;
end architecture main;