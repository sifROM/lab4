library ieee;
use ieee.std_logic_1164.all;
 
entity IR is
  port (A :	in std_logic_vector(1 downto 0);
	    S :	out std_logic_vector(2 downto 0)
    );
end IR;
 
architecture rtl of IR is
begin
      S <= "011" when (A = "00") else
		   "100" when (A = "01") else
		   "101" when (A = "10") else
		   "110" when (A = "11") else
		   "000";
  
end rtl;