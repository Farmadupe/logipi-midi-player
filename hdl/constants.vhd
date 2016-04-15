-- Tweakable constants

package constants is
  constant clk_period : time := 1 sec / 50_000_000;

  -- todo this constant is useless. Remove it.
  constant spi_word_length : integer := 8;

  -----------------------------------------------------------------------------
  --sine wave generator configuration
  -- The higher this number, the more concurrent midi notes can be played
  constant num_sines : integer := 10;


  -----------------------------------------------------------------------------
  -- Always ensure that the maximum number of brams is used.

  --each The lx9 FPGA has 64  brams.
  constant device_brams : integer := 50;

  -- The number of brams used for the SPI tx buffer. The higher this number,
  -- the more protection against the pi hiccoughing and failing to read data
  -- from the FPGA.
  constant spi_tx_ram_brams : integer := 4;

  -- brams for holding sine lookup data. The higher this number, the more
  -- accurate the sine lookup process is
  constant sine_lut_brams : integer := 2;

  -- Allocate all remaining block rams to the receive buffer from the pi. The
  -- higher this number, the more music can be played.
  constant midi_file_rx_brams : integer := device_brams - spi_tx_ram_brams - sine_lut_brams;


  -- each spartan 6 RAMB8BWER is 1024 bits long
  constant device_bram_depth       : integer := 1024;
  constant spi_tx_ram_depth        : integer := spi_tx_ram_brams * device_bram_depth;
  constant sine_lut_bram_depth     : integer := sine_lut_brams * device_bram_depth;
  constant midi_file_rx_bram_depth : integer := midi_file_rx_brams * device_bram_depth;

  -------------------------------------------------------------------------------
  -- The max number of words (each word is currently 2 bytes) that SPI transmitter will send
  -- in a frame. Must be less than (256/word size)
  constant spi_tx_max_block_size : integer := 100;

end;
