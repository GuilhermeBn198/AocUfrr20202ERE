library ieee;
use ieee.std_logic_1164.all;

entity extender8to16 is
    port (
        in_port : in std_logic_vector(7 downto 0);
        out_port : out std_logic_vector(15 downto 0)
    );
end extender8to16;

architecture behavior of extender8to16 is
begin
    process (in_port)
    begin

        out_port <= ("00000000") & in_port;

    end process;

end behavior;