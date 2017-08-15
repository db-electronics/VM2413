
library IEEE;

use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity TestVM2413 is
  port(
    XIN     : in std_logic;
    XOUT    : out std_logic;
    XENA    : in std_logic;
    D       : in std_logic_vector(7 downto 0);
    A       : in std_logic;
    CS_n    : in std_logic;
    WE_n    : in std_logic;
    IC_n    : in std_logic;
    MO      : out std_logic_vector(9 downto 0);
    RO      : out std_logic_vector(9 downto 0)
  );    
end TestVM2413;

architecture RTL of TestVM2413 is
begin
	chip: entity work.opll 
		port map (
			XIN, XOUT, XENA, D, A, CS_n, WE_n, IC_n, MO, RO
		);

end RTL;