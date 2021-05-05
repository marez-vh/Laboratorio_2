---Laboratorio 2  SDA
---Villafane Mario 
--- Parte D   MUX 4 entradas a 1 salida
------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
------------------------------------------
entity mux_4_a_1 is
port(
	ENT: in std_logic_vector(3 downto 0);
	SAL: out std_logic;
	SEL: in std_logic_vector(1 downto 0));
end mux_4_a_1;
-------------------------------------------
architecture MUX of mux_4_a_1 is
begin
	with SEL select
			SAL<= ENT(0) when "00",
			      ENT(1) when "01",
			      ENT(2) when "10",
			      ENT(3) when "11",		
			      '-' when others;

end MUX;