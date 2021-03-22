library ieee;
use ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;


entity somador16 is
    port(
        in_portA : in STD_LOGIC_VECTOR(15 downto 0);
        in_portB : in STD_LOGIC_VECTOR(15 downto 0);
        out_port : out STD_LOGIC_VECTOR(15 downto 0)
    );
end somador16;

architecture behavior of somador16 is
begin
    out_port <= in_portA + in_portB;
end behavior;