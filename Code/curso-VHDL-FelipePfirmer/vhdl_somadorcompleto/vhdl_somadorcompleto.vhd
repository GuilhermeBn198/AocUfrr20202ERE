--somador completo

entity somador_completo is
    port(
        A, B : in bit; --entradas 
        TE : in bit; --Transporte de entrada
        S : out bit; --Soma
        TS : out bit -- Transporte de saída
    );
end entity somador_completo;

architecture main of somador_completo is 
begin
    S<= A xor B xor TE;
    TS<= (A and B) or (A and TE) or (B and TE);
end architecture main;
--fim