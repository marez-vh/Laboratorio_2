library ieee;
use ieee.std_logic_1164.all;

entity Lab_2 is
port(
	CONT1,CONT2,CONT3,CONT4: in std_logic_vector (3 downto 0);
	SEL_P: in std_logic_vector(1 downto 0);
	SAL_P: out std_logic_vector(0 to 6));
end Lab_2;

architecture PRINCIPAL of Lab_2 is

component mux_4_a_1 is
port(
	ENT: in std_logic_vector(3 downto 0);
	SAL: out std_logic;
	SEL: in std_logic_vector(1 downto 0));
end component;

component deco_bcd_a_7_seg is
port(
	ENT: in  std_logic_vector(3 downto 0);  ---Entradas BCD
	SAL: out std_logic_vector(0 to 6));  ---Salidas ABCDEFG
end component;

type entradas_4X4 is array (0 to 3) of std_logic_vector(3 downto 0);
signal ENTRADA: entradas_4x4; 
signal SEN_INT: std_logic_vector(3 downto 0);

begin

t: for i in CONT1'range generate 

	ENTRADA(i) <= CONT1(i) & CONT2(i) & CONT3(i) & CONT4(i) ;
	u1: mux_4_a_1 port map(
			ENT=> ENTRADA(i),
			SAL=> SEN_INT(i),
			SEL=> SEL_P);
end generate t;

u2: deco_bcd_a_7_seg port map(
			ENT=> SEN_INT,
			SAL=> SAL_P);
end PRINCIPAL;	  