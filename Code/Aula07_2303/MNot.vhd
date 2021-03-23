--libraries
library IEEE;
use IEEE.std_logic_1164.all;

--entidade
entity MNot is 
    port(
        a  : in  std_logic;
        z : out std_logic
    );
end entity MNot;

--arquitetura
architecture main of MNot is 
begin
    z <= not a;
end architecture main;

--configuration
