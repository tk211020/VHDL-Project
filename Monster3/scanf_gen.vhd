library IEEE;

use IEEE.STD_LOGIC_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

entity scanf_gen is
	generic(divisor:integer:=1); --25175000/78670=320
port ( clockin : in STD_LOGIC;
	   clockout : out STD_LOGIC);
	  
end scanf_gen;

architecture arch of scanf_gen is
	signal PULSE : std_logic;
begin

	----------clk divider----------
	process(clockin)
		variable counter,divisor2 : integer range 0 to divisor;
	begin
		divisor2:=divisor/2;
	----------up counter----------	
	if (clockin'event and clockin='1') then
		if counter = divisor then
			counter := 1;
		else
			counter := counter +1;
		end if;
	end if;
	--clk_out register clk genetator --
	if (clockin'event and clockin='1') then
		if ((counter= divisor2) or (counter = divisor2))then
			PULSE <= not PULSE;
		end if;
	end if;
		clockout <= PULSE ;
	end process;
end arch;

