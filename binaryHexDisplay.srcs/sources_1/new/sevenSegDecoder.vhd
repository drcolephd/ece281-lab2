----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/26/2024 01:21:15 PM
-- Design Name: 
-- Module Name: sevenSegDecoder - Behavioral
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

entity sevenSegDecoder is
port(
    i_D : in std_logic_vector(3 downto 0);
    o_S : out std_logic_vector(6 downto 0)
    );
    
end sevenSegDecoder;

architecture Behavioral of sevenSegDecoder is
begin
--sA
    o_S(0) <= (not i_D(3) and not i_D(2) and not i_D(1) and i_D(0)  )
        or (  i_D(3) and not i_D(2) and i_D(1) and i_D(0)  )
        or (  i_D(2) and not i_D(1) and not i_D(0)  )
        or (  i_D(3) and i_D(2) and not i_D(1)  );
--sB        
    o_S(1) <= (not i_D(3) and i_D(2) and not i_D(1) and i_D(0)  )
        or (  i_D(3) and i_D(2) and not i_D(0)  )
        or (  i_D(3) and i_D(1) and i_D(0)  )
        or (  i_D(2) and i_D(1) and not i_D(0) );
--sC        
    o_S(2) <= '1' when (  (i_D = x"2") or
                          (i_D = x"C") or
                          (i_D = x"E") or
                          (i_D = x"F")  ) else '0';
--sD                        
    o_S(3) <= '1' when (  (i_D = x"1") or
                        (i_D = x"4") or
                        (i_D = x"7") or 
                        (i_D = x"A") or
                        (i_D = x"F")  ) else '0';
--sE                        
    o_S(4) <= '1' when (  (i_D = x"1") or
                        (i_D = x"3") or
                        (i_D = x"4") or
                        (i_D = x"5") or
                        (i_D = x"7") or
                        (i_D = x"9")  ) else '0';
--sF                        
    o_S(5) <= '1' when (  (i_D = x"1") or
                        (i_D = x"2") or
                        (i_D = x"3") or
                        (i_D = x"7") or
                        (i_D = x"C") or
                        (i_D = x"D")  ) else '0';
--sG                        
    o_S(6) <= '1' when (  (i_D = x"0") or
                        (i_D = x"1") or
                        (i_D = x"7") ) else '0';

end Behavioral;
