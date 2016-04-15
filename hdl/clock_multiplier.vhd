-- In order to avoid compiling simlibs for this device, this file is unused

library ieee;
use ieee.std_logic_1164.all;

--library unisim;
--use unisim.vcomponents.all;

library virtual_button_lib;
use virtual_button_lib.constants.all;


entity clock_multiplier is
  port(
    clk_in  : in  std_logic;
    clk_out : out std_logic
    );
end;
architecture rtl of clock_multiplier is
begin

  -- DCM_CLKGEN: Digital Clock Manager
  -- Spartan-6
  -- Xilinx HDL Libraries Guide, version 14.7
  --DCM_CLKGEN_inst : DCM_CLKGEN
  --  generic map (
  --    CLKFXDV_DIVIDE  => 2,      -- CLKFXDV divide value (2, 4, 8, 16, 32)
  --    CLKFX_DIVIDE    => 1,      -- Divide value - D - (1-256)
  --    CLKFX_MD_MAX    => 2.0,    -- Specify maximum M/D ratio for timing anlysis
  --    CLKFX_MULTIPLY  => 2,      -- Multiply value - M - (2-256)
  --    CLKIN_PERIOD    => 20.0,   -- Input clock period specified in nS
  --    SPREAD_SPECTRUM => "NONE", -- Spread Spectrum mode "NONE", "CENTER_LOW_SPREAD", "CENTER_HIGH_SPREAD",
  --    --                         -- "VIDEO_LINK_M0", "VIDEO_LINK_M1" or "VIDEO_LINK_M2"
  --    STARTUP_WAIT    => true    -- Delay config DONE until DCM_CLKGEN LOCKED (TRUE/FALSE)
  --    )
  --  port map (
  --    CLKFX     => clk_out, -- 1-bit output: Generated clock output
  --    CLKFX180  => open,    -- 1-bit output: Generated clock output 180 degree out of phase from CLKFX.
  --    CLKFXDV   => open,    -- 1-bit output: Divided clock output
  --    LOCKED    => open,    -- 1-bit output: Locked output
  --    PROGDONE  => open,    -- 1-bit output: Active high output to indicate the successful re-programming
  --    STATUS    => open,    -- 2-bit output: DCM_CLKGEN status
  --    CLKIN     => clk_in,  -- 1-bit input: Input clock
  --    FREEZEDCM => '1',     -- 1-bit input: Prevents frequency adjustments to input clock
  --    PROGCLK   => '0',     -- 1-bit input: Clock input for M/D reconfiguration
  --    PROGDATA  => '0',     -- 1-bit input: Serial data input for M/D reconfiguration
  --    PROGEN    => '0',     -- 1-bit input: Active high program enable
  --    RST       => '0'      -- 1-bit input: Reset input pin
  --    );
end;
