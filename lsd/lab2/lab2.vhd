	LIBRARY ieee;
USE ieee.std_logic_1164.all;
ENTITY lab2 IS
PORT(A, B, C : IN STD_LOGIC;
F : OUT STD_LOGIC);
END lab2;
ARCHITECTURE logicFunction OF lab2 IS
BEGIN
F <= (A AND NOT B) OR (NOT A AND C);
END LogicFunction;