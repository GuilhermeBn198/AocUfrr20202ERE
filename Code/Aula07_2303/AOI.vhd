--aoi

--libraries
library IEEE;
use IEEE.std_logic_1164.all;
--entidade
entity AOI is
    port (
        IA, IB, ISE : in std_logic;
        O                : out std_logic
    );
end entity;
--arquitetura
architecture logic of AOI is
    component MNot is --instanciação do componente MNot
    port(
        a  : in  std_logic;
        z : out std_logic
         );
    end component MNot;
    component mult2x1 is  --instanciação do componente multiplexer2x1
    port(
        a, b, s : in  std_logic;
        so : out std_logic
    );
    end component mult2x1;

     signal SELB : std_logic;
-- process + port map
begin
    G1: mult2x1 port map ( IA, SELB, ISE, O );
    G2: Mnot port map ( IB, SELB );
end logic ; -- logic
--configuration