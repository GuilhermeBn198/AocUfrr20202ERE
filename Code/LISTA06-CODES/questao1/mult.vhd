library ieee;
use ieee.std_logic_1164.all;

entity mult is
    port(
        in_port : in STD_LOGIC_VECTOR(1 downto 0);
        in_portA : in STD_LOGIC_VECTOR(1 downto 0);
        in_portB : in STD_LOGIC_VECTOR(1 downto 0);
        in_portC : in STD_LOGIC_VECTOR(1 downto 0);
        in_portD : in STD_LOGIC_VECTOR(1 downto 0);
        out_port : out STD_LOGIC_VECTOR(1 downto 0);
    );
end mult;

architecture behavior of mult is
begin
    process (in_port, in_portA, in_portB, in_portC, in_portD)
    begin
        case in_port is
            when "00" => out_port <= in_portA;
            when "01" => out_port <= in_portB;
            when "10" => out_port <= in_portC;
            when "11" => out_port <= in_portD;
        end case;

    end process;
end behavior;