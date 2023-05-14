----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:31:26 01/17/2021 
-- Design Name: 
-- Module Name:    freqDivGen - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity freqDivGen is
	generic (nfCLK: natural :=100);
	port(
		cp: in std_logic:='0';
		cp_o: buffer std_logic:='0');
end freqDivGen;

architecture Behavioral of freqDivGen is

begin
	process (cp)
	variable temp: integer range 0 to nfCLK/2:=0;
	begin
		if (cp'EVENT and cp='1') then
			temp:=temp+1;
			if (temp>=nfCLK/2) then
				cp_o<=not cp_o;
				temp:=0;
			end if;
		end if;
end process;

end Behavioral;

