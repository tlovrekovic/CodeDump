--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   21:44:24 01/17/2021
-- Design Name:   
-- Module Name:   F:/de/TrafficLight/TrafficLight_TB.vhd
-- Project Name:  TrafficLight
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: TrafficLight
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY TrafficLight_TB IS
END TrafficLight_TB;
 
ARCHITECTURE behavior OF TrafficLight_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT TrafficLight
    PORT(
         cp : IN  std_logic;
         r : OUT  std_logic;
         g : OUT  std_logic;
         y : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal cp : std_logic := '0';

 	--Outputs
   signal r : std_logic;
   signal g : std_logic;
   signal y : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   constant cp_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: TrafficLight PORT MAP (
          cp => cp,
          r => r,
          g => g,
          y => y
        );

   -- Clock process definitions
   cp_process :process
   begin
		cp <= '0';
		wait for cp_period/2;
		cp <= '1';
		wait for cp_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for cp_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
