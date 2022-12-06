library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity loopcountingg is
port(CLK	:in std_logic;
	op		:out std_logic_vector(1 downto 0));
	
end loopcountingg;

ARCHITECTURE a of loopcountingg is
Begin
Process (CLK)
variable present_state:std_logic_vector(1 downto 0);
	Begin
	if CLK'event and CLK = '1' then
		case present_state is
			WHEN "00" => present_state:="01";
			WHEN "01" => present_state:="10";
			WHEN "10" => present_state:="11";
			WHEN "11" => present_state:="00";
		end case;
	end if;
	op<=present_state;
end process;
end a;