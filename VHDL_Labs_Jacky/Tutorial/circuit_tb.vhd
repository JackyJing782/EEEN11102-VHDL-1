
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity circuit_tb is
end;

architecture bench of circuit_tb is
  -- Clock period
  -- constant clk_period : time := 5 ns;
  -- Generics
  -- Ports
  signal a      : std_logic := '0';
  signal b      : std_logic := '0';
  signal enable : std_logic := '0';
  signal y      : std_logic;
begin

  circuit_inst : entity work.circuit
    port map
    (
      a      => a,
      b      => b,
      enable => enable,
      y      => y
    );
  -- clk <= not clk after clk_period/2;

  a <= not a after 10 ns;
  b <= not b after 20 ns;
  enable <= not enable after 40 ns;
end;