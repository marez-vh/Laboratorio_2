---Laboratorio 2  SDA
---Villafane Mario 
--- Parte B    DECO BCD a 7seg  0 a 9
------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
------------------------------------------
entity deco_bcd_a_7_seg is
port(
	ENT: in  std_logic_vector(3 downto 0);  ---Entradas BCD
	SAL: out std_logic_vector(0 to 6));  ---Salidas ABCDEFG
end deco_bcd_a_7_seg;
------------------------------------------
architecture DEC of deco_bcd_a_7_seg is
begin
	with ENT select
			SAL <= "0000001" when "0000",
			       "1001111" when "0001",
			       "0010010" when "0010",
			       "0000110" when "0011",
			       "1001100" when "0100",
			       "0100100" when "0101",
			       "0100000" when "0110",
			       "0001111" when "0111",
			       "0000000" when "1000",
			       "0000100" when "1001",
			       "1111111" when others;
		
end DEC;