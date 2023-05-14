----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:18:00 01/17/2021 
-- Design Name: 
-- Module Name:    TrafficLight - Behavioral 
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

entity TrafficLight is
port(cp:in std_logic;
izlaz:out std_logic_vector(8 downto 0));
end TrafficLight;

architecture Behavioral of TrafficLight is
type state is(red,yellow_to_green,green,yellow_to_red);

constant time_red:integer:=3;
constant time_yellow : integer:=1;
constant time_green : integer :=8;
constant time_MAX: integer:= 8;

signal curr_state,next_state :state;
signal curr_time : integer range 0 to time_MAX;
signal cp_o: std_logic;

begin
A1:entity work.freqDivGen generic map(24000000) port map(cp,cp_o);
process(cp_o)
variable count :integer range 0 to time_MAX;
begin 
		if (cp_o'event and cp_o='1') then
				count:=count+1;
				if(count=curr_time) then
				curr_state<=next_state;
				count:=0;
				end if;
		end if;
end process;


process(curr_state)
begin
case curr_state is
		when red => izlaz<="011111111";
		curr_time <= time_red;
		next_state <= yellow_to_green;
		when yellow_to_green => izlaz<="111001111";
		curr_time <= time_yellow;
		next_state <= green;
		when green => izlaz<="111111101";
		curr_time <= time_green;
		next_state <= yellow_to_red;
		when yellow_to_red => izlaz<="111001111";
		curr_time <= time_yellow;
		next_state <= red;
end case;
end process;
end Behavioral;