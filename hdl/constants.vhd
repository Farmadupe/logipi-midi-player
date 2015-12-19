package constants is
  constant clk_period : time := 20 ns;

  constant spi_word_length : integer := 8;

  --spi tx ram constants.
  constant ram_depth : integer := 127;
  constant ram_width : integer := 8;
end;
