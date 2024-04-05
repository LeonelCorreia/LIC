library ieee;
use ieee.std_logic_1164.all;

entity TCorMR is
 port(
 I0, I1: in std_logic;
 O : out std_logic
 );		
end TCorMR;

architecture arc_TCorMR of TCorMR is
begin
	O <= I0 or I1;
end arc_TCorMR;