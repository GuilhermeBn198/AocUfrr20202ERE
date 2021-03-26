LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY portaXor IS
    PORT (
        in_port_A : IN STD_LOGIC;
        in_port_B : IN STD_LOGIC;
        out_port : OUT STD_LOGIC
    );
END portaXor;

architecture behavior OF portaXor is

component PAnd IS --puxando o componente and
    PORT (
        in_port_A : IN STD_LOGIC;
        in_port_B : IN STD_LOGIC;
        out_port : OUT STD_LOGIC
    );
END component;

component POr IS --puxando o componente or
    PORT (
        in_port_A : IN STD_LOGIC;
        in_port_B : IN STD_LOGIC;
        out_port : OUT STD_LOGIC
    );
END component;

component PNot is --puxando o componente not
    port(
        in_port_A  : in  std_logic;
        out_port : out std_logic
    );
end component;

signal not_A, not_B, out_and_1, out_and_2, out_or : std_logic;


begin
    n_A : PNot port map(in_port_A, not_A);
	 n_B : PNot port map(in_port_B, not_B);
	
    p_an : PAnd port map(not_A, in_port_B, out_and_1);
    p_bn : PAnd port map(in_port_A, not_B, out_and_2);

    p_o : POr port map(out_and_1, out_and_2, out_or);

    out_port <= out_or;
	 
end behavior;