---Laboratorio 2  SDA
---Villafane Mario 
--- Parte A    DECO 3 a 8
-----------------------------------
library ieee;
use ieee.std_logic_1164.all;
-----------------------------------
entity deco_3_a_8 is
port(
	ENT: in  std_logic_vector(2 downto 0);  ---Entradas
	HAB: in  std_logic;		        ---Habilitacion
	SAL: out std_logic_vector(7 downto 0));  ---Salida
end deco_3_a_8;
-----------------------------------
architecture DEC of deco_3_a_8 is
	signal sal_int: std_logic_vector(7 downto 0);  ---Señal de salida interna
begin
	with ENT select		---tabla de verdad
		sal_int <= "00000001" when "000",
			   "00000010" when "001",
			   "00000100" when "010",
			   "00001000" when "011",
			   "00010000" when "100",
			   "00100000" when "101",
			   "01000000" when "110",
			   "10000000" when "111",
			   "00000000" when others;
		
		SAL<= sal_int when (HAB= '0') else "00000000";
end DEC;