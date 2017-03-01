----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:52:18 10/28/2016 
-- Design Name: 
-- Module Name:    code - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity code is
    Port ( clk : in  STD_LOGIC;
           s : out  STD_LOGIC;
			  en:in std_logic_vector(7 downto 0));
end code;

architecture Behavioral of code is
signal pulse : std_logic_vector(7 downto 0):= "00000000";
signal count : integer range 0 to 95556 :=0;


begin
process(clk,en)
	begin
		if clk'event and clk='1' then
			if en(7)= '1' then
				if count =95556 then
					count<=0;
					pulse(7)<=not pulse(7);
				else
					count<=count+1;
				end if;
				
			elsif en(6)= '1' then
					if count =85131 then
						count<=0;
						pulse(6)<=not pulse(6);
					else
						count<=count+1;
					end if;
				
			elsif en(5)= '1' then
					if count =75843 then
						count<=0;
						pulse(5)<=not pulse(5);
					else
						count<=count+1;
					end if;
			
			elsif en(4)= '1' then
					if count =71586 then
						count<=0;
						pulse(4)<=not pulse(4);
					else
						count<=count+1;
					end if;
			
			elsif en(3)= '1' then
					if count =63776 then
						count<=0;
						pulse(3)<=not pulse(3);
					else
						count<=count+1;
					end if;
			
			
			
			
			elsif en(2)= '1' then
					if count =56818 then
						count<=0;
						pulse(2)<=not pulse(2);
					else
						count<=count+1;
					end if;
			
			
			elsif en(1)= '1' then
					if count =50619 then
						count<=0;
						pulse(1)<=not pulse(1);
					else
						count<=count+1;
					end if;
				
			
			elsif en(0)= '1' then
					if count =47778 then
						count<=0;
						pulse(0)<=not pulse(0);
					else
						count<=count+1;
					end if;
				
			
		else
			pulse <="00000000";
		end if;
	end if;
	end process;
	s<=pulse(7) or pulse(6) or pulse(5) or pulse(4) or pulse(3) or pulse(2) or pulse(1) or pulse(0) ;
		

end Behavioral;

