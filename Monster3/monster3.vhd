LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use ieee.std_logic_unsigned.all;

ENTITY monster3 IS
	PORT( CLK : IN STD_LOGIC;
		 x : in std_LOGIC_vector(1 downto 0);
	      col_Green,row_Green:OUT std_logic_vector(0 to 7);
		col_Red,row_Red:OUT std_logic_vector(0 to 7));
END  monster3;

ARCHITECTURE a OF  monster3 IS
signal cnt1: std_logic_vector (2 downto 0);
signal cnt2: std_logic_vector (2 downto 0);
signal cnt3: std_logic_vector (2 downto 0);
signal cnt4: std_logic_vector (2 downto 0);
BEGIN
PROCESS(clk)
BEGIN
	IF clk'event and clk = '1' then
		IF x = "00" then 
			CASE cnt1 IS
					WHEN "000" => col_Red <= "00100100";col_Green <= "00000000"; row_Green<="10000000";
					WHEN "001" => col_Red <= "00100100";col_Green <= "00100100"; row_Green<="01000000";
					WHEN "010" => col_Red <= "01111110";col_Green <= "01011010"; row_Green<="00100000";
					WHEN "011" => col_Red <= "01111110";col_Green <= "11111110"; row_Green<="00010000";
					WHEN "100" => col_Red <= "00111100";col_Green <= "11100100"; row_Green<="00001000";
					WHEN "101" => col_Red <= "00111110";col_Green <= "01111110"; row_Green<="00000100";
					WHEN "110" => col_Red <= "01111100";col_Green <= "01111100"; row_Green<="00000010";
					when others=> col_Red <= "00011100";col_Green <= "01111100"; row_Green<="00000001";
			END CASE;
		ELSIF x = "01" then
			CASE cnt2 IS
					WHEN "000" => col_Red <= "00100100";col_Green <= "00000000"; row_Green<="10000000";
					WHEN "001" => col_Red <= "00100100";col_Green <= "00100100"; row_Green<="01000000";
					WHEN "010" => col_Red <= "01111110";col_Green <= "01011010"; row_Green<="00100000";
					WHEN "011" => col_Red <= "01111110";col_Green <= "01111111"; row_Green<="00010000";
					WHEN "100" => col_Red <= "00111100";col_Green <= "00100111"; row_Green<="00001000";
					WHEN "101" => col_Red <= "01111100";col_Green <= "01111110"; row_Green<="00000100";
					WHEN "110" => col_Red <= "00111110";col_Green <= "00111110"; row_Green<="00000010";
					when others=> col_Red <= "00111000";col_Green <= "00111110"; row_Green<="00000001";
			END CASE;
		ELSIF x = "10" then
			CASE cnt3 Is
					WHEN "000" => col_Red <= "00100100";col_Green <= "00000000"; row_Green<="10000000";
					WHEN "001" => col_Red <= "00100100";col_Green <= "00100100"; row_Green<="01000000";
					WHEN "010" => col_Red <= "01111110";col_Green <= "01011010"; row_Green<="00100000";
					WHEN "011" => col_Red <= "01111110";col_Green <= "01111111"; row_Green<="00010000";
					WHEN "100" => col_Red <= "00111100";col_Green <= "00100111"; row_Green<="00001000";
					WHEN "101" => col_Red <= "00111110";col_Green <= "00111110"; row_Green<="00000100";
					WHEN "110" => col_Red <= "01111100";col_Green <= "01111110"; row_Green<="00000010";
					when others=> col_Red <= "00111000";col_Green <= "00111110"; row_Green<="00000001";
			END CASE;
		ELSIF x = "11" then
			CASE cnt4 Is					
					WHEN "000" => col_Red <= "00100100";col_Green <= "00000000"; row_Green<="10000000";
					WHEN "001" => col_Red <= "00100100";col_Green <= "00100100"; row_Green<="01000000";
					WHEN "010" => col_Red <= "01111110";col_Green <= "01011010"; row_Green<="00100000";
					WHEN "011" => col_Red <= "01111110";col_Green <= "11111110"; row_Green<="00010000";
					WHEN "100" => col_Red <= "00111100";col_Green <= "11100100"; row_Green<="00001000";
					WHEN "101" => col_Red <= "01111100";col_Green <= "01111100"; row_Green<="00000100";
					WHEN "110" => col_Red <= "00111110";col_Green <= "01111110"; row_Green<="00000010";
					when others=> col_Red <= "00011100";col_Green <= "01111100"; row_Green<="00000001";
			END CASE;
		end if;
	end if;
END PROCESS;

PROCESS(clk)
BEGIN
	IF clk'event and clk='1' then
		IF x = "00" then
			cnt1<=cnt1+1;
		ELSIF x = "01" then
			cnt2<=cnt2+1;
		ELSIF x = "10" then
			cnt3<=cnt3+1;
		ELSIF x = "11" then
			cnt4<=cnt4+1;
		end if;
	end if;
END PROCESS;

END a;