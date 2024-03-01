----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/29/2024 06:49:17 PM
-- Design Name: 
-- Module Name: top_basys3_tb - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity top_basys3_tb is
--  Port ( );
end top_basys3_tb;

architecture Behavioral of top_basys3_tb is
    component top_basys3 is
    port(
        i_btnC : in std_logic
    );
    
    end component;
    
    signal w_7SD_EN_n : std_logic;
    
begin
    
    test_process: process
    begin
    
    w_7SD_EN_n <= '0'; wait for 10 ns;
        assert w_7SD_EN_n = '0' report "error on btnC" severity failure;
    wait;
    end process;
end Behavioral;
