--Component definition for AND_1
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity and_1 is port (
i1, i2: in std_logic;
o1: out std_logic
);
end and_1;
architecture dataflow of and_1 is
begin
o1 <= not i1 and i2;
end dataflow;

--Component definition for AND_2
library IEEE;
use IEEE.STD_LOGIC_1164.all;
entity and_2 is port (
i1, i2: in std_logic;
o1: out std_logic
);
end and_2;
architecture dataflow of and_2 is
begin
o1 <= i1 and i2;
end dataflow;

--Component definition for OR_1
library IEEE;
use IEEE.STD_LOGIC_1164.all;
entity or_1 is port (
i1, i2: in std_logic;
o1: out std_logic
);
end or_1;
architecture dataflow of or_1 is 
begin
o1 <= i1 or i2;
end dataflow;
--Structural Design (top level)
library IEEE;
use IEEE.STD_LOGIC_1164.all;
entity Small_ckt is port (
	isel, ibit0, ibit1: in std_logic;
	omux: out std_logic
);
end Small_ckt;

architecture structural of Small_ckt is
signal isel_ibit1, isel_ibit0: std_logic;
component and_1 is port (
i1, i2: in std_logic;
o1: out std_logic
);
end component;

component and_2 is port (
i1, i2: in std_logic;
o1: out std_logic
);
end component;

component or_1 is port (
i1, i2: in std_logic;
o1: out std_logic
);
end component;

begin
C1: and_1 port map (i1 => isel, i2 => ibit1, o1 => isel_ibit1);
C2: and_2 port map (i1 => isel, i2 => ibit0, o1 => isel_ibit0);
C3: or_1 port map (i1 => isel_ibit1, i2 => isel_ibit0, o1 => omux);
end structural;