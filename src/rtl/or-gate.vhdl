entity orgate is
  port (  
          CLK   : in bit;
          A     : in bit;
          B     : in bit;
          O     : out bit
       );
end orgate;

architecture BEHAV of orgate is
signal O_REG : bit;
begin
  --CLK <= not CLK after 5 ns;
  O <= O_REG;
  process (CLK)
  begin
    if CLK'event and CLK = '1' then
      O_REG <= A or B;
    else
      O_REG <= O_REG;
    end if;
  end process;
end BEHAV;
