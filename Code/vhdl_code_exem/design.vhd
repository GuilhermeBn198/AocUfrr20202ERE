-- Code your design here
library IEEE;
use IEEE.std_logic_1164.all;

ENTITY Multiplex IS
PORT(
	A, B, S : IN std_logic;
	Saida : OUT std_logic
    );
END Multiplex;

ARCHITECTURE mut2x1 OF Multiplex IS
BEGIN
	Process(A,B,S) is
	Begin
		If S='0' Then Saida <= A;
		Else  Saida <= B;
		End If;
	End Process;    
END mut2x1;
