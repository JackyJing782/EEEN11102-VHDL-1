library ieee;
use ieee.std_logic_1164.all;
entity cwk1 is
  port (
    a, b, c, d : in std_logic;
    x, y       : out std_logic
  );
end cwk1;

architecture rtl of cwk1 is
  signal p : std_logic;
  signal m : std_logic;
  signal n : std_logic;
  signal q : std_logic;
begin
  m <= not a and b;
  n <= b or c or d;
  q <= not n;
  p <= m when q = '0' else c;
  x <= p or d;
  y <= q;
end architecture;