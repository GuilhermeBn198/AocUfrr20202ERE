LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY mult4x2x1 IS
    PORT (
        S1,S0, A , B, C, D : IN STD_LOGIC;
        Z : OUT  STD_LOGIC
    );
END mult4x2x1;

ARCHITECTURE behavior OF mult4x2x1 IS
COMPONENT mult2x1 IS
    PORT (
        in_port, inA, inB : IN STD_LOGIC;
        out_port : OUT STD_LOGIC
    );
    END COMPONENT;

    SIGNAL out_mult1, out_mult2, out_mult3 : STD_LOGIC;

BEGIN
        mult_1 : mult2x1 PORT MAP (S0, A, B, out_mult1);
        mult_2 : mult2x1 PORT MAP(S0, C, D, out_mult2);
        mult_3 : mult2x1 PORT MAP(S1, out_mult1, out_mult2, out_mult3);

        Z <= out_mult3;
END behavior;