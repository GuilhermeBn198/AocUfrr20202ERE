library ieee;
use ieee.std_logic_1164.all;

entity p_xor is
    port(
        in_portA : in STD_LOGIC;
        in_portB : in STD_LOGIC;
        out_port : out STD_LOGIC
    );
end p_xor;

architecture behavior of p_xor is
begin
    out_port <= in_portA xor in_portB;
end behavior;