library ieee;
use ieee.std_logic_1164.all;
 
entity IR is
  port (A :	in std_logic_vector(1 downto 0);
        S : out std_logic_vector(2 downto 0)
    );
end IR;
 
architecture rtl of IR is
begin
process (A)
begin
      if A = "00" then S <= "011";
   elsif A = "01" then S <= "100";
   elsif A = "10" then S <= "101";
   else                S <= "110";
   end if;
   --wait;
end process;
end rtl;
