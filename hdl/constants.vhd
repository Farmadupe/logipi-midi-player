package constants is
  constant clk_period : time := 1 sec / 50_000_000;

  constant spi_word_length : integer := 8;

  --sine wave generator configuration
  constant num_sines : integer := 2;
end;
