--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:19:00 12/15/2023
-- Design Name:   
-- Module Name:   C:/Users/Ali/Desktop/FIFO/twrefwaeferf.vhd
-- Project Name:  FIFO
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: main
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
 
ENTITY twrefwaeferf IS
END twrefwaeferf;
 
ARCHITECTURE behavior OF twrefwaeferf IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT main
    PORT(
         clk : IN  std_logic;
         Read_i : IN  std_logic;
         Write_i : IN  std_logic;
         Di : IN  std_logic_vector(7 downto 0);
         Do : OUT  std_logic_vector(7 downto 0);
         Full : INOUT  std_logic;
         Empty : INOUT  std_logic;
         Count : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal Read_i : std_logic := '0';
   signal Write_i : std_logic := '0';
   signal Di : std_logic_vector(7 downto 0) := (others => '0');

	--BiDirs
   signal Full : std_logic;
   signal Empty : std_logic;

 	--Outputs
   signal Do : std_logic_vector(7 downto 0);
   signal Count : std_logic_vector(3 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: main PORT MAP (
          clk => clk,
          Read_i => Read_i,
          Write_i => Write_i,
          Di => Di,
          Do => Do,
          Full => Full,
          Empty => Empty,
          Count => Count
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.	
		wait for 10 ns;
		Read_i <= '0';
		Write_i <= '1';
		Di <= "10001011";
		
		wait for 10 ns;
		Read_i <= '0';
		Write_i <= '1';
		Di <= "10001110";
		
		wait for 10 ns;
		Read_i <= '0';
		Write_i <= '1';
		Di <= "10001000";
		
		wait for 10 ns;
		Read_i <= '0';
		Write_i <= '1';
		Di <= "10001010";
		
		wait for 10 ns;
		Read_i <= '0';
		Write_i <= '1';
		Di <= "10101000";
		
		wait for 10 ns;
		Read_i <= '0';
		Write_i <= '1';
		Di <= "11111000";
		
		wait for 10 ns;
		Read_i <= '0';
		Write_i <= '1';
		Di <= "11111100";
		
		wait for 10 ns;
		Read_i <= '0';
		Write_i <= '1';
		Di <= "11111110";
		
		wait for 10 ns;
		Read_i <= '0';
		Write_i <= '1';
		Di <= "11111111";
		
		wait for 100 ns;
		Read_i <= '1';
		Write_i <= '0';
		Di <= "10001111";
		wait for 100 ns;
		Read_i <= '0';
		Write_i <= '1';
		Di <= "11111000";

     

      -- insert stimulus here 

      wait;
   end process;

END;
