library ieee;
use ieee.std_logic_1164.all;

entity process_tb is
end process_tb;

architecture behave of process_tb is
  signal r_SIG1   : std_logic := '0';
  signal r_SIG2   : std_logic := '0';
  signal w_RESULT1 : std_logic_vector(2 downto 0);

-- naudoti 4ARBA vhd
  component IR is
    port (
        A : in std_logic_vector(1 downto 0);
        S : out std_logic_vector(2 downto 0));
  end component IR;
--behin behave
begin
  and_gate_INST : IR
    port map (
      A(0)    => r_SIG1,
	  A(1)    => r_SIG2,
      S    => w_RESULT1
      );
	  
-- aprasyti visas reikalingas kombinacijas patikrinti schemai
  process is
  begin
    r_SIG1 <= '1';
	r_SIG2 <= '1';
    wait for 10 ns;
    r_SIG1 <= '0';
	r_SIG2 <= '0';
    wait for 10 ns;
    r_SIG1 <= '1';
	r_SIG2 <= '0';
    wait for 10 ns;
	r_SIG1 <= '0';
	r_SIG2 <= '1';
	wait for 10 ns;
  end process;

end behave;