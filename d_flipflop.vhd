library ieee;
use ieee.std_logic_1164.all;

entity d_flipflop is
port(

d: in std_logic;
enable: in std_logic;
q: out std_logic;
q_not: out std_logic
);
end d_flipflop;

architecture behavior of d_flipflop is
begin
process(d, enable)
begin
if (enable='1') then
	q<=d;
	q_not<=not(d);
end if;
end process;
end behavior;

