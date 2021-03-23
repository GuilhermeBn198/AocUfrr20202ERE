--libraries
library IEEE;
use IEEE.std_logic_1164.all;

--entidade
entity mult2x1 is 
    port(
        a, b, s : in  std_logic;
        so : out std_logic
    );
end entity mult2x1;

--arquitetura
architecture main of mult2x1 is 
begin
	process(a, b, s) is
	begin
        if (s = '0') then so <= a;
        else so <= b;
        end if ;
	end process;
end architecture main;

--configuration