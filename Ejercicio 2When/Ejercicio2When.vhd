-- Ejercicio 1 VHDL

library IEEE;
 use ieee.std_logic_1164.all;
 use ieee.std_logic_arith.all;
 use ieee.std_logic_unsigned.all;

entity Ejercicio2When is
	
	port
	(
		-- Pines de entrada
		A,B,C,D	: in  bit;
		
		-- Pines de salida
		F	: out  bit);

end Ejercicio2When;


architecture Behavioral of Ejercicio2When is

begin

F <= '0' when (A='0' and B='0' and C='1' and D='1')else
     '0' when (A='0' and B='1' and C='1' and D='1')else
	  '0' when (A='1' and B='0' and C='1' and D='1')else
	  '0' when (A='1' and B='1' and C='1' and D='1')else
	  '1';

end Behavioral;