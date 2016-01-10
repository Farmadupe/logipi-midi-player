library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library virtual_button_lib;
use virtual_button_lib.constants.all;
use virtual_button_lib.utils.all;
use virtual_button_lib.uart_constants.all;
use virtual_button_lib.uart_functions.all;
use virtual_button_lib.button_pkg.all;


entity top_tb is
end;

architecture behavioural of top_tb is
  signal clk_50mhz : std_logic;

  -- board switches
  signal pb_0 : std_logic := '0';
  signal pb_1 : std_logic := '0';
  signal sw_0 : std_logic := '1';
  signal sw_1 : std_logic := '0';

  -- board leds
  signal led_0 : std_logic;
  signal led_1 : std_logic := '1';

  -- uart signals
  signal pi_to_fpga_pin : std_logic;
  signal fpga_to_pi_pin : std_logic;

  -- spi signals
  signal clock                 : std_logic;
  signal enable                : std_logic;
  signal mosi                  : std_logic;
  signal miso                  : std_logic;
  signal request_more_from_mcu : std_logic;
  signal light_square_data     : std_logic;

  -- mock spi master signals
  signal ready        : boolean;
  signal send         : boolean;
  signal master_data  : std_logic_vector(spi_word_length - 1 downto 0) := (others => '0');
  signal force_cs_low : boolean := false;


  signal mcu_to_fpga_data : std_logic_vector(spi_word_length - 1 downto 0);
begin

  top_1 : entity virtual_button_lib.top
    port map (
      clk_50mhz             => clk_50mhz,
      pb_0                  => pb_0,
      pb_1                  => pb_1,
      sw_0                  => sw_0,
      sw_1                  => sw_1,
      led_0                 => led_0,
      led_1                 => led_1,
      pi_to_fpga_pin        => pi_to_fpga_pin,
      fpga_to_pi_pin        => fpga_to_pi_pin,
      sclk                  => clock,
      cs_n                  => enable,
      mosi                  => mosi,
      miso                  => miso,
      request_more_from_mcu => request_more_from_mcu,
      light_square_data     => light_square_data);

  -- Clock process definitions
  clk_process : process
    constant clk_period_50 : time := 1 sec / 50_000_000;
  begin
    wait for 100 us;

    clk_50mhz <= '0';
    wait for clk_period_50/2;
    clk_50mhz <= '1';
    wait for clk_period_50/2;
    clk_50mhz <= '0';
    wait for clk_period_50/2;
    clk_50mhz <= '1';
    wait for clk_period_50/2;
    clk_50mhz <= '0';
    wait for clk_period_50/2;
    clk_50mhz <= '1';
    wait for clk_period_50/2;
    
    --wait until enable'event or Clock'event;

    loop
      clk_50mhz <= '0';
      wait for clk_period_50/2;
      clk_50mhz <= '1';
      wait for clk_period_50/2;
    end loop;
  end process;

  -- Stimulus process
  stim_proc : process
  begin
    sw_0 <= '0';
    wait for 1 us;
    sw_0 <= '1';


    wait;
  end process;

  

  mcu_send_proc : process is
  begin    

    
  if now < 0 sec then
    wait for 0 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '1';
  MOSI <= '0';

  if now < 4.366337 sec then
    wait for 4.366337 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.36639 sec then
    wait for 4.36639 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.366406 sec then
    wait for 4.366406 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.366422 sec then
    wait for 4.366422 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.366439 sec then
    wait for 4.366439 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.366455 sec then
    wait for 4.366455 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.366472 sec then
    wait for 4.366472 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.366488 sec then
    wait for 4.366488 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.366504 sec then
    wait for 4.366504 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.366521 sec then
    wait for 4.366521 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.366537 sec then
    wait for 4.366537 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.366553 sec then
    wait for 4.366553 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.36657 sec then
    wait for 4.36657 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.366586 sec then
    wait for 4.366586 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.366603 sec then
    wait for 4.366603 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.366619 sec then
    wait for 4.366619 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.366635 sec then
    wait for 4.366635 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.366685 sec then
    wait for 4.366685 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.366701 sec then
    wait for 4.366701 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.366717 sec then
    wait for 4.366717 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.366734 sec then
    wait for 4.366734 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.36675 sec then
    wait for 4.36675 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.366767 sec then
    wait for 4.366767 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.366783 sec then
    wait for 4.366783 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.366799 sec then
    wait for 4.366799 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.366816 sec then
    wait for 4.366816 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.366832 sec then
    wait for 4.366832 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.366848 sec then
    wait for 4.366848 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.366865 sec then
    wait for 4.366865 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.366881 sec then
    wait for 4.366881 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.366898 sec then
    wait for 4.366898 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.366914 sec then
    wait for 4.366914 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.36693 sec then
    wait for 4.36693 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.36698 sec then
    wait for 4.36698 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.366996 sec then
    wait for 4.366996 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.367012 sec then
    wait for 4.367012 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.367029 sec then
    wait for 4.367029 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.367045 sec then
    wait for 4.367045 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.367061 sec then
    wait for 4.367061 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.367078 sec then
    wait for 4.367078 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.367094 sec then
    wait for 4.367094 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.367111 sec then
    wait for 4.367111 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.367127 sec then
    wait for 4.367127 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.367143 sec then
    wait for 4.367143 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.36716 sec then
    wait for 4.36716 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.367176 sec then
    wait for 4.367176 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.367193 sec then
    wait for 4.367193 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.367209 sec then
    wait for 4.367209 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.367225 sec then
    wait for 4.367225 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.367275 sec then
    wait for 4.367275 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.367291 sec then
    wait for 4.367291 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.367307 sec then
    wait for 4.367307 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.367324 sec then
    wait for 4.367324 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.36734 sec then
    wait for 4.36734 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.367356 sec then
    wait for 4.367356 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.367373 sec then
    wait for 4.367373 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.367389 sec then
    wait for 4.367389 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.367406 sec then
    wait for 4.367406 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.367422 sec then
    wait for 4.367422 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.367438 sec then
    wait for 4.367438 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.367455 sec then
    wait for 4.367455 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.367471 sec then
    wait for 4.367471 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.367488 sec then
    wait for 4.367488 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.367504 sec then
    wait for 4.367504 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.36752 sec then
    wait for 4.36752 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.367569 sec then
    wait for 4.367569 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.367586 sec then
    wait for 4.367586 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.367602 sec then
    wait for 4.367602 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.367619 sec then
    wait for 4.367619 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.367635 sec then
    wait for 4.367635 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.367651 sec then
    wait for 4.367651 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.367668 sec then
    wait for 4.367668 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.367684 sec then
    wait for 4.367684 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.367701 sec then
    wait for 4.367701 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.367717 sec then
    wait for 4.367717 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.367733 sec then
    wait for 4.367733 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.36775 sec then
    wait for 4.36775 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.367766 sec then
    wait for 4.367766 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.367782 sec then
    wait for 4.367782 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.367799 sec then
    wait for 4.367799 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.367815 sec then
    wait for 4.367815 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.367851 sec then
    wait for 4.367851 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '1';
  MOSI <= '0';

  if now < 4.367961 sec then
    wait for 4.367961 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.368007 sec then
    wait for 4.368007 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.368023 sec then
    wait for 4.368023 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.368039 sec then
    wait for 4.368039 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.368056 sec then
    wait for 4.368056 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.368072 sec then
    wait for 4.368072 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.368089 sec then
    wait for 4.368089 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.368105 sec then
    wait for 4.368105 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.368121 sec then
    wait for 4.368121 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.368138 sec then
    wait for 4.368138 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.368154 sec then
    wait for 4.368154 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.368171 sec then
    wait for 4.368171 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.368187 sec then
    wait for 4.368187 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.368203 sec then
    wait for 4.368203 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.36822 sec then
    wait for 4.36822 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.368236 sec then
    wait for 4.368236 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.368252 sec then
    wait for 4.368252 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.368302 sec then
    wait for 4.368302 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.368318 sec then
    wait for 4.368318 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.368334 sec then
    wait for 4.368334 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.368351 sec then
    wait for 4.368351 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.368367 sec then
    wait for 4.368367 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.368384 sec then
    wait for 4.368384 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.3684 sec then
    wait for 4.3684 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.368416 sec then
    wait for 4.368416 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.368433 sec then
    wait for 4.368433 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.368449 sec then
    wait for 4.368449 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.368466 sec then
    wait for 4.368466 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.368482 sec then
    wait for 4.368482 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.368498 sec then
    wait for 4.368498 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.368515 sec then
    wait for 4.368515 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.368531 sec then
    wait for 4.368531 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.368547 sec then
    wait for 4.368547 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.368597 sec then
    wait for 4.368597 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.368613 sec then
    wait for 4.368613 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.368629 sec then
    wait for 4.368629 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.368646 sec then
    wait for 4.368646 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.368662 sec then
    wait for 4.368662 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.368679 sec then
    wait for 4.368679 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.368695 sec then
    wait for 4.368695 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.368711 sec then
    wait for 4.368711 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.368728 sec then
    wait for 4.368728 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.368744 sec then
    wait for 4.368744 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.36876 sec then
    wait for 4.36876 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.368777 sec then
    wait for 4.368777 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.368793 sec then
    wait for 4.368793 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.36881 sec then
    wait for 4.36881 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.368826 sec then
    wait for 4.368826 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.368842 sec then
    wait for 4.368842 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.368892 sec then
    wait for 4.368892 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.368908 sec then
    wait for 4.368908 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.368924 sec then
    wait for 4.368924 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.368941 sec then
    wait for 4.368941 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.368957 sec then
    wait for 4.368957 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.368973 sec then
    wait for 4.368973 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.36899 sec then
    wait for 4.36899 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.369006 sec then
    wait for 4.369006 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.369023 sec then
    wait for 4.369023 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.369039 sec then
    wait for 4.369039 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.369055 sec then
    wait for 4.369055 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.369072 sec then
    wait for 4.369072 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.369088 sec then
    wait for 4.369088 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.369105 sec then
    wait for 4.369105 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.369121 sec then
    wait for 4.369121 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.369137 sec then
    wait for 4.369137 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.369187 sec then
    wait for 4.369187 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.369203 sec then
    wait for 4.369203 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.369219 sec then
    wait for 4.369219 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.369236 sec then
    wait for 4.369236 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.369252 sec then
    wait for 4.369252 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.369268 sec then
    wait for 4.369268 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.369285 sec then
    wait for 4.369285 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.369301 sec then
    wait for 4.369301 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.369318 sec then
    wait for 4.369318 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.369334 sec then
    wait for 4.369334 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.36935 sec then
    wait for 4.36935 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.369367 sec then
    wait for 4.369367 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.369383 sec then
    wait for 4.369383 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.3694 sec then
    wait for 4.3694 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.369416 sec then
    wait for 4.369416 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.369432 sec then
    wait for 4.369432 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.369457 sec then
    wait for 4.369457 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '1';
  MOSI <= '0';

  if now < 4.369486 sec then
    wait for 4.369486 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.369527 sec then
    wait for 4.369527 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.369543 sec then
    wait for 4.369543 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.369559 sec then
    wait for 4.369559 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.369576 sec then
    wait for 4.369576 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.369592 sec then
    wait for 4.369592 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.369609 sec then
    wait for 4.369609 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.369625 sec then
    wait for 4.369625 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.369641 sec then
    wait for 4.369641 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.369658 sec then
    wait for 4.369658 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.369674 sec then
    wait for 4.369674 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.369691 sec then
    wait for 4.369691 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.369707 sec then
    wait for 4.369707 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.369723 sec then
    wait for 4.369723 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.36974 sec then
    wait for 4.36974 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.369756 sec then
    wait for 4.369756 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.369772 sec then
    wait for 4.369772 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.369822 sec then
    wait for 4.369822 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.369838 sec then
    wait for 4.369838 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.369854 sec then
    wait for 4.369854 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.369871 sec then
    wait for 4.369871 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.369887 sec then
    wait for 4.369887 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.369904 sec then
    wait for 4.369904 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.36992 sec then
    wait for 4.36992 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.369936 sec then
    wait for 4.369936 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.369953 sec then
    wait for 4.369953 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.369969 sec then
    wait for 4.369969 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.369985 sec then
    wait for 4.369985 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.370002 sec then
    wait for 4.370002 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.370018 sec then
    wait for 4.370018 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.370035 sec then
    wait for 4.370035 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.370051 sec then
    wait for 4.370051 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.370067 sec then
    wait for 4.370067 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.370117 sec then
    wait for 4.370117 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.370133 sec then
    wait for 4.370133 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.370149 sec then
    wait for 4.370149 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.370166 sec then
    wait for 4.370166 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.370182 sec then
    wait for 4.370182 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.370199 sec then
    wait for 4.370199 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.370215 sec then
    wait for 4.370215 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.370231 sec then
    wait for 4.370231 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.370248 sec then
    wait for 4.370248 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.370264 sec then
    wait for 4.370264 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.37028 sec then
    wait for 4.37028 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.370297 sec then
    wait for 4.370297 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.370313 sec then
    wait for 4.370313 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.37033 sec then
    wait for 4.37033 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.370346 sec then
    wait for 4.370346 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.370362 sec then
    wait for 4.370362 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.370412 sec then
    wait for 4.370412 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.370428 sec then
    wait for 4.370428 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.370444 sec then
    wait for 4.370444 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.370461 sec then
    wait for 4.370461 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.370477 sec then
    wait for 4.370477 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.370493 sec then
    wait for 4.370493 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.37051 sec then
    wait for 4.37051 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.370526 sec then
    wait for 4.370526 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.370543 sec then
    wait for 4.370543 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.370559 sec then
    wait for 4.370559 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.370575 sec then
    wait for 4.370575 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.370592 sec then
    wait for 4.370592 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.370608 sec then
    wait for 4.370608 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.370625 sec then
    wait for 4.370625 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.370641 sec then
    wait for 4.370641 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.370657 sec then
    wait for 4.370657 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.370706 sec then
    wait for 4.370706 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.370723 sec then
    wait for 4.370723 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.370739 sec then
    wait for 4.370739 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.370756 sec then
    wait for 4.370756 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.370772 sec then
    wait for 4.370772 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.370788 sec then
    wait for 4.370788 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.370805 sec then
    wait for 4.370805 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.370821 sec then
    wait for 4.370821 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.370838 sec then
    wait for 4.370838 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.370854 sec then
    wait for 4.370854 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.37087 sec then
    wait for 4.37087 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.370887 sec then
    wait for 4.370887 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.370903 sec then
    wait for 4.370903 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.37092 sec then
    wait for 4.37092 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.370936 sec then
    wait for 4.370936 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.370952 sec then
    wait for 4.370952 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.371048 sec then
    wait for 4.371048 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '1';
  MOSI <= '0';

  if now < 4.371077 sec then
    wait for 4.371077 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.371113 sec then
    wait for 4.371113 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.371129 sec then
    wait for 4.371129 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.371146 sec then
    wait for 4.371146 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.371162 sec then
    wait for 4.371162 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.371178 sec then
    wait for 4.371178 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.371195 sec then
    wait for 4.371195 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.371211 sec then
    wait for 4.371211 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.371228 sec then
    wait for 4.371228 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.371244 sec then
    wait for 4.371244 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.37126 sec then
    wait for 4.37126 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.371277 sec then
    wait for 4.371277 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.371293 sec then
    wait for 4.371293 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.371309 sec then
    wait for 4.371309 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.371326 sec then
    wait for 4.371326 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.371342 sec then
    wait for 4.371342 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.371359 sec then
    wait for 4.371359 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.371408 sec then
    wait for 4.371408 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.371424 sec then
    wait for 4.371424 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.371441 sec then
    wait for 4.371441 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.371457 sec then
    wait for 4.371457 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.371473 sec then
    wait for 4.371473 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.37149 sec then
    wait for 4.37149 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.371506 sec then
    wait for 4.371506 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.371523 sec then
    wait for 4.371523 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.371539 sec then
    wait for 4.371539 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.371555 sec then
    wait for 4.371555 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.371572 sec then
    wait for 4.371572 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.371588 sec then
    wait for 4.371588 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.371604 sec then
    wait for 4.371604 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.371621 sec then
    wait for 4.371621 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.371637 sec then
    wait for 4.371637 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.371654 sec then
    wait for 4.371654 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.371703 sec then
    wait for 4.371703 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.371719 sec then
    wait for 4.371719 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.371736 sec then
    wait for 4.371736 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.371752 sec then
    wait for 4.371752 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.371768 sec then
    wait for 4.371768 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.371785 sec then
    wait for 4.371785 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.371801 sec then
    wait for 4.371801 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.371817 sec then
    wait for 4.371817 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.371834 sec then
    wait for 4.371834 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.37185 sec then
    wait for 4.37185 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.371867 sec then
    wait for 4.371867 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.371883 sec then
    wait for 4.371883 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.371899 sec then
    wait for 4.371899 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.371916 sec then
    wait for 4.371916 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.371932 sec then
    wait for 4.371932 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.371949 sec then
    wait for 4.371949 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.371998 sec then
    wait for 4.371998 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.372014 sec then
    wait for 4.372014 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.37203 sec then
    wait for 4.37203 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.372047 sec then
    wait for 4.372047 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.372063 sec then
    wait for 4.372063 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.37208 sec then
    wait for 4.37208 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.372096 sec then
    wait for 4.372096 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.372112 sec then
    wait for 4.372112 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.372129 sec then
    wait for 4.372129 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.372145 sec then
    wait for 4.372145 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.372162 sec then
    wait for 4.372162 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.372178 sec then
    wait for 4.372178 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.372194 sec then
    wait for 4.372194 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.372211 sec then
    wait for 4.372211 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.372227 sec then
    wait for 4.372227 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.372244 sec then
    wait for 4.372244 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.372293 sec then
    wait for 4.372293 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.372309 sec then
    wait for 4.372309 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.372325 sec then
    wait for 4.372325 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.372342 sec then
    wait for 4.372342 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.372358 sec then
    wait for 4.372358 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.372375 sec then
    wait for 4.372375 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.372391 sec then
    wait for 4.372391 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.372407 sec then
    wait for 4.372407 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.372424 sec then
    wait for 4.372424 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.37244 sec then
    wait for 4.37244 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.372457 sec then
    wait for 4.372457 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.372473 sec then
    wait for 4.372473 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.372489 sec then
    wait for 4.372489 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.372506 sec then
    wait for 4.372506 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.372522 sec then
    wait for 4.372522 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.372538 sec then
    wait for 4.372538 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.372557 sec then
    wait for 4.372557 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '1';
  MOSI <= '0';

  if now < 4.372582 sec then
    wait for 4.372582 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.372628 sec then
    wait for 4.372628 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.372645 sec then
    wait for 4.372645 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.372661 sec then
    wait for 4.372661 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.372678 sec then
    wait for 4.372678 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.372694 sec then
    wait for 4.372694 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.37271 sec then
    wait for 4.37271 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.372727 sec then
    wait for 4.372727 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.372743 sec then
    wait for 4.372743 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.372759 sec then
    wait for 4.372759 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.372776 sec then
    wait for 4.372776 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.372792 sec then
    wait for 4.372792 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.372809 sec then
    wait for 4.372809 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.372825 sec then
    wait for 4.372825 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.372841 sec then
    wait for 4.372841 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.372858 sec then
    wait for 4.372858 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.372874 sec then
    wait for 4.372874 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.372923 sec then
    wait for 4.372923 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.37294 sec then
    wait for 4.37294 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.372956 sec then
    wait for 4.372956 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.372973 sec then
    wait for 4.372973 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.372989 sec then
    wait for 4.372989 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.373005 sec then
    wait for 4.373005 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.373022 sec then
    wait for 4.373022 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.373038 sec then
    wait for 4.373038 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.373054 sec then
    wait for 4.373054 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.373071 sec then
    wait for 4.373071 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.373087 sec then
    wait for 4.373087 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.373104 sec then
    wait for 4.373104 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.37312 sec then
    wait for 4.37312 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.373136 sec then
    wait for 4.373136 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.373153 sec then
    wait for 4.373153 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.373169 sec then
    wait for 4.373169 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.373218 sec then
    wait for 4.373218 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.373235 sec then
    wait for 4.373235 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.373251 sec then
    wait for 4.373251 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.373267 sec then
    wait for 4.373267 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.373284 sec then
    wait for 4.373284 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.3733 sec then
    wait for 4.3733 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.373317 sec then
    wait for 4.373317 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.373333 sec then
    wait for 4.373333 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.373349 sec then
    wait for 4.373349 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.373366 sec then
    wait for 4.373366 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.373382 sec then
    wait for 4.373382 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.373399 sec then
    wait for 4.373399 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.373415 sec then
    wait for 4.373415 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.373431 sec then
    wait for 4.373431 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.373448 sec then
    wait for 4.373448 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.373464 sec then
    wait for 4.373464 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.373513 sec then
    wait for 4.373513 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.37353 sec then
    wait for 4.37353 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.373546 sec then
    wait for 4.373546 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.373562 sec then
    wait for 4.373562 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.373579 sec then
    wait for 4.373579 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.373595 sec then
    wait for 4.373595 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.373612 sec then
    wait for 4.373612 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.373628 sec then
    wait for 4.373628 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.373644 sec then
    wait for 4.373644 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.373661 sec then
    wait for 4.373661 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.373677 sec then
    wait for 4.373677 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.373694 sec then
    wait for 4.373694 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.37371 sec then
    wait for 4.37371 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.373726 sec then
    wait for 4.373726 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.373743 sec then
    wait for 4.373743 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.373759 sec then
    wait for 4.373759 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.373808 sec then
    wait for 4.373808 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.373825 sec then
    wait for 4.373825 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.373841 sec then
    wait for 4.373841 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.373857 sec then
    wait for 4.373857 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.373874 sec then
    wait for 4.373874 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.37389 sec then
    wait for 4.37389 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.373907 sec then
    wait for 4.373907 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.373923 sec then
    wait for 4.373923 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.373939 sec then
    wait for 4.373939 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.373956 sec then
    wait for 4.373956 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.373972 sec then
    wait for 4.373972 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.373988 sec then
    wait for 4.373988 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.374005 sec then
    wait for 4.374005 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.374021 sec then
    wait for 4.374021 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.374038 sec then
    wait for 4.374038 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.374054 sec then
    wait for 4.374054 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.374072 sec then
    wait for 4.374072 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '1';
  MOSI <= '0';

  if now < 4.374095 sec then
    wait for 4.374095 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.374143 sec then
    wait for 4.374143 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.37416 sec then
    wait for 4.37416 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.374176 sec then
    wait for 4.374176 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.374192 sec then
    wait for 4.374192 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.374209 sec then
    wait for 4.374209 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.374225 sec then
    wait for 4.374225 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.374241 sec then
    wait for 4.374241 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.374258 sec then
    wait for 4.374258 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.374274 sec then
    wait for 4.374274 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.374291 sec then
    wait for 4.374291 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.374307 sec then
    wait for 4.374307 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.374323 sec then
    wait for 4.374323 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.37434 sec then
    wait for 4.37434 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.374356 sec then
    wait for 4.374356 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.374373 sec then
    wait for 4.374373 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.374389 sec then
    wait for 4.374389 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.374438 sec then
    wait for 4.374438 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.374455 sec then
    wait for 4.374455 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.374471 sec then
    wait for 4.374471 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.374487 sec then
    wait for 4.374487 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.374504 sec then
    wait for 4.374504 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.37452 sec then
    wait for 4.37452 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.374536 sec then
    wait for 4.374536 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.374553 sec then
    wait for 4.374553 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.374569 sec then
    wait for 4.374569 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.374586 sec then
    wait for 4.374586 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.374602 sec then
    wait for 4.374602 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.374618 sec then
    wait for 4.374618 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.374635 sec then
    wait for 4.374635 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.374651 sec then
    wait for 4.374651 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.374668 sec then
    wait for 4.374668 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.374684 sec then
    wait for 4.374684 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.374733 sec then
    wait for 4.374733 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.374749 sec then
    wait for 4.374749 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.374766 sec then
    wait for 4.374766 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.374782 sec then
    wait for 4.374782 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.374799 sec then
    wait for 4.374799 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.374815 sec then
    wait for 4.374815 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.374831 sec then
    wait for 4.374831 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.374848 sec then
    wait for 4.374848 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.374864 sec then
    wait for 4.374864 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.374881 sec then
    wait for 4.374881 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.374897 sec then
    wait for 4.374897 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.374913 sec then
    wait for 4.374913 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.37493 sec then
    wait for 4.37493 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.374946 sec then
    wait for 4.374946 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.374962 sec then
    wait for 4.374962 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.374979 sec then
    wait for 4.374979 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.375028 sec then
    wait for 4.375028 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.375044 sec then
    wait for 4.375044 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.375061 sec then
    wait for 4.375061 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.375077 sec then
    wait for 4.375077 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.375094 sec then
    wait for 4.375094 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.37511 sec then
    wait for 4.37511 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.375126 sec then
    wait for 4.375126 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.375143 sec then
    wait for 4.375143 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.375159 sec then
    wait for 4.375159 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.375176 sec then
    wait for 4.375176 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.375192 sec then
    wait for 4.375192 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.375208 sec then
    wait for 4.375208 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.375225 sec then
    wait for 4.375225 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.375241 sec then
    wait for 4.375241 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.375257 sec then
    wait for 4.375257 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.375274 sec then
    wait for 4.375274 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.375323 sec then
    wait for 4.375323 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.375339 sec then
    wait for 4.375339 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.375356 sec then
    wait for 4.375356 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.375372 sec then
    wait for 4.375372 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.375389 sec then
    wait for 4.375389 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.375405 sec then
    wait for 4.375405 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.375421 sec then
    wait for 4.375421 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.375438 sec then
    wait for 4.375438 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.375454 sec then
    wait for 4.375454 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.37547 sec then
    wait for 4.37547 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.375487 sec then
    wait for 4.375487 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.375503 sec then
    wait for 4.375503 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.37552 sec then
    wait for 4.37552 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.375536 sec then
    wait for 4.375536 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.375552 sec then
    wait for 4.375552 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.375569 sec then
    wait for 4.375569 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.375596 sec then
    wait for 4.375596 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '1';
  MOSI <= '0';

  if now < 4.375687 sec then
    wait for 4.375687 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.375725 sec then
    wait for 4.375725 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.375741 sec then
    wait for 4.375741 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.375757 sec then
    wait for 4.375757 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.375774 sec then
    wait for 4.375774 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.37579 sec then
    wait for 4.37579 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.375807 sec then
    wait for 4.375807 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.375823 sec then
    wait for 4.375823 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.375839 sec then
    wait for 4.375839 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.375856 sec then
    wait for 4.375856 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.375872 sec then
    wait for 4.375872 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.375889 sec then
    wait for 4.375889 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.375905 sec then
    wait for 4.375905 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.375921 sec then
    wait for 4.375921 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.375938 sec then
    wait for 4.375938 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.375954 sec then
    wait for 4.375954 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.375971 sec then
    wait for 4.375971 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.37602 sec then
    wait for 4.37602 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.376036 sec then
    wait for 4.376036 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.376052 sec then
    wait for 4.376052 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.376069 sec then
    wait for 4.376069 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.376085 sec then
    wait for 4.376085 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.376102 sec then
    wait for 4.376102 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.376118 sec then
    wait for 4.376118 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.376134 sec then
    wait for 4.376134 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.376151 sec then
    wait for 4.376151 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.376167 sec then
    wait for 4.376167 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.376184 sec then
    wait for 4.376184 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.3762 sec then
    wait for 4.3762 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.376216 sec then
    wait for 4.376216 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.376233 sec then
    wait for 4.376233 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.376249 sec then
    wait for 4.376249 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.376265 sec then
    wait for 4.376265 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.376315 sec then
    wait for 4.376315 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.376331 sec then
    wait for 4.376331 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.376347 sec then
    wait for 4.376347 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.376364 sec then
    wait for 4.376364 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.37638 sec then
    wait for 4.37638 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.376397 sec then
    wait for 4.376397 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.376413 sec then
    wait for 4.376413 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.376429 sec then
    wait for 4.376429 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.376446 sec then
    wait for 4.376446 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.376462 sec then
    wait for 4.376462 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.376478 sec then
    wait for 4.376478 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.376495 sec then
    wait for 4.376495 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.376511 sec then
    wait for 4.376511 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.376528 sec then
    wait for 4.376528 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.376544 sec then
    wait for 4.376544 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.37656 sec then
    wait for 4.37656 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.37661 sec then
    wait for 4.37661 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.376626 sec then
    wait for 4.376626 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.376642 sec then
    wait for 4.376642 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.376659 sec then
    wait for 4.376659 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.376675 sec then
    wait for 4.376675 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.376692 sec then
    wait for 4.376692 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.376708 sec then
    wait for 4.376708 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.376724 sec then
    wait for 4.376724 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.376741 sec then
    wait for 4.376741 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.376757 sec then
    wait for 4.376757 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.376773 sec then
    wait for 4.376773 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.37679 sec then
    wait for 4.37679 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.376806 sec then
    wait for 4.376806 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.376823 sec then
    wait for 4.376823 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.376839 sec then
    wait for 4.376839 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.376855 sec then
    wait for 4.376855 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.376905 sec then
    wait for 4.376905 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.376921 sec then
    wait for 4.376921 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.376937 sec then
    wait for 4.376937 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.376954 sec then
    wait for 4.376954 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.37697 sec then
    wait for 4.37697 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.376986 sec then
    wait for 4.376986 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.377003 sec then
    wait for 4.377003 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.377019 sec then
    wait for 4.377019 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.377036 sec then
    wait for 4.377036 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.377052 sec then
    wait for 4.377052 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.377068 sec then
    wait for 4.377068 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.377085 sec then
    wait for 4.377085 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.377101 sec then
    wait for 4.377101 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.377118 sec then
    wait for 4.377118 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.377134 sec then
    wait for 4.377134 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.37715 sec then
    wait for 4.37715 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.377188 sec then
    wait for 4.377188 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '1';
  MOSI <= '0';

  if now < 4.377231 sec then
    wait for 4.377231 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.377275 sec then
    wait for 4.377275 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.377292 sec then
    wait for 4.377292 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.377308 sec then
    wait for 4.377308 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.377324 sec then
    wait for 4.377324 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.377341 sec then
    wait for 4.377341 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.377357 sec then
    wait for 4.377357 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.377374 sec then
    wait for 4.377374 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.37739 sec then
    wait for 4.37739 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.377406 sec then
    wait for 4.377406 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.377423 sec then
    wait for 4.377423 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.377439 sec then
    wait for 4.377439 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.377455 sec then
    wait for 4.377455 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.377472 sec then
    wait for 4.377472 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.377488 sec then
    wait for 4.377488 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.377505 sec then
    wait for 4.377505 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.377521 sec then
    wait for 4.377521 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.37757 sec then
    wait for 4.37757 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.377587 sec then
    wait for 4.377587 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.377603 sec then
    wait for 4.377603 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.377619 sec then
    wait for 4.377619 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.377636 sec then
    wait for 4.377636 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.377652 sec then
    wait for 4.377652 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.377669 sec then
    wait for 4.377669 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.377685 sec then
    wait for 4.377685 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.377701 sec then
    wait for 4.377701 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.377718 sec then
    wait for 4.377718 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.377734 sec then
    wait for 4.377734 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.37775 sec then
    wait for 4.37775 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.377767 sec then
    wait for 4.377767 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.377783 sec then
    wait for 4.377783 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.3778 sec then
    wait for 4.3778 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.377816 sec then
    wait for 4.377816 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.377865 sec then
    wait for 4.377865 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.377882 sec then
    wait for 4.377882 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.377898 sec then
    wait for 4.377898 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.377914 sec then
    wait for 4.377914 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.377931 sec then
    wait for 4.377931 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.377947 sec then
    wait for 4.377947 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.377963 sec then
    wait for 4.377963 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.37798 sec then
    wait for 4.37798 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.377996 sec then
    wait for 4.377996 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.378013 sec then
    wait for 4.378013 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.378029 sec then
    wait for 4.378029 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.378045 sec then
    wait for 4.378045 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.378062 sec then
    wait for 4.378062 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.378078 sec then
    wait for 4.378078 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.378095 sec then
    wait for 4.378095 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.378111 sec then
    wait for 4.378111 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.37816 sec then
    wait for 4.37816 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.378176 sec then
    wait for 4.378176 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.378193 sec then
    wait for 4.378193 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.378209 sec then
    wait for 4.378209 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.378226 sec then
    wait for 4.378226 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.378242 sec then
    wait for 4.378242 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.378258 sec then
    wait for 4.378258 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.378275 sec then
    wait for 4.378275 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.378291 sec then
    wait for 4.378291 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.378308 sec then
    wait for 4.378308 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.378324 sec then
    wait for 4.378324 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.37834 sec then
    wait for 4.37834 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.378357 sec then
    wait for 4.378357 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.378373 sec then
    wait for 4.378373 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.37839 sec then
    wait for 4.37839 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.378406 sec then
    wait for 4.378406 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.378455 sec then
    wait for 4.378455 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.378471 sec then
    wait for 4.378471 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.378488 sec then
    wait for 4.378488 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.378504 sec then
    wait for 4.378504 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.378521 sec then
    wait for 4.378521 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.378537 sec then
    wait for 4.378537 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.378553 sec then
    wait for 4.378553 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.37857 sec then
    wait for 4.37857 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.378586 sec then
    wait for 4.378586 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.378603 sec then
    wait for 4.378603 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.378619 sec then
    wait for 4.378619 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.378635 sec then
    wait for 4.378635 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.378652 sec then
    wait for 4.378652 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.378668 sec then
    wait for 4.378668 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.378684 sec then
    wait for 4.378684 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.378701 sec then
    wait for 4.378701 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.378763 sec then
    wait for 4.378763 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '1';
  MOSI <= '0';

  if now < 4.378792 sec then
    wait for 4.378792 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.378827 sec then
    wait for 4.378827 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.378844 sec then
    wait for 4.378844 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.37886 sec then
    wait for 4.37886 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.378877 sec then
    wait for 4.378877 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.378893 sec then
    wait for 4.378893 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.378909 sec then
    wait for 4.378909 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.378926 sec then
    wait for 4.378926 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.378942 sec then
    wait for 4.378942 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.378959 sec then
    wait for 4.378959 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.378975 sec then
    wait for 4.378975 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.378991 sec then
    wait for 4.378991 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.379008 sec then
    wait for 4.379008 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.379024 sec then
    wait for 4.379024 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.379041 sec then
    wait for 4.379041 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.379057 sec then
    wait for 4.379057 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.379073 sec then
    wait for 4.379073 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.379122 sec then
    wait for 4.379122 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.379139 sec then
    wait for 4.379139 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.379155 sec then
    wait for 4.379155 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.379172 sec then
    wait for 4.379172 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.379188 sec then
    wait for 4.379188 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.379204 sec then
    wait for 4.379204 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.379221 sec then
    wait for 4.379221 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.379237 sec then
    wait for 4.379237 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.379254 sec then
    wait for 4.379254 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.37927 sec then
    wait for 4.37927 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.379286 sec then
    wait for 4.379286 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.379303 sec then
    wait for 4.379303 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.379319 sec then
    wait for 4.379319 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.379335 sec then
    wait for 4.379335 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.379352 sec then
    wait for 4.379352 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.379368 sec then
    wait for 4.379368 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.379417 sec then
    wait for 4.379417 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.379434 sec then
    wait for 4.379434 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.37945 sec then
    wait for 4.37945 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.379467 sec then
    wait for 4.379467 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.379483 sec then
    wait for 4.379483 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.379499 sec then
    wait for 4.379499 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.379516 sec then
    wait for 4.379516 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.379532 sec then
    wait for 4.379532 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.379548 sec then
    wait for 4.379548 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.379565 sec then
    wait for 4.379565 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.379581 sec then
    wait for 4.379581 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.379598 sec then
    wait for 4.379598 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.379614 sec then
    wait for 4.379614 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.37963 sec then
    wait for 4.37963 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.379647 sec then
    wait for 4.379647 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.379663 sec then
    wait for 4.379663 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.379712 sec then
    wait for 4.379712 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.379729 sec then
    wait for 4.379729 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.379745 sec then
    wait for 4.379745 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.379762 sec then
    wait for 4.379762 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.379778 sec then
    wait for 4.379778 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.379794 sec then
    wait for 4.379794 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.379811 sec then
    wait for 4.379811 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.379827 sec then
    wait for 4.379827 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.379843 sec then
    wait for 4.379843 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.37986 sec then
    wait for 4.37986 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.379876 sec then
    wait for 4.379876 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.379893 sec then
    wait for 4.379893 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.379909 sec then
    wait for 4.379909 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.379925 sec then
    wait for 4.379925 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.379942 sec then
    wait for 4.379942 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.379958 sec then
    wait for 4.379958 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.380007 sec then
    wait for 4.380007 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.380024 sec then
    wait for 4.380024 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.38004 sec then
    wait for 4.38004 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.380056 sec then
    wait for 4.380056 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.380073 sec then
    wait for 4.380073 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.380089 sec then
    wait for 4.380089 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.380106 sec then
    wait for 4.380106 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.380122 sec then
    wait for 4.380122 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.380138 sec then
    wait for 4.380138 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.380155 sec then
    wait for 4.380155 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.380171 sec then
    wait for 4.380171 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.380188 sec then
    wait for 4.380188 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.380204 sec then
    wait for 4.380204 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.38022 sec then
    wait for 4.38022 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.380237 sec then
    wait for 4.380237 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.380253 sec then
    wait for 4.380253 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.380277 sec then
    wait for 4.380277 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '1';
  MOSI <= '0';

  if now < 4.380302 sec then
    wait for 4.380302 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.380343 sec then
    wait for 4.380343 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.38036 sec then
    wait for 4.38036 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.380376 sec then
    wait for 4.380376 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.380392 sec then
    wait for 4.380392 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.380409 sec then
    wait for 4.380409 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.380425 sec then
    wait for 4.380425 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.380442 sec then
    wait for 4.380442 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.380458 sec then
    wait for 4.380458 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.380474 sec then
    wait for 4.380474 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.380491 sec then
    wait for 4.380491 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.380507 sec then
    wait for 4.380507 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.380524 sec then
    wait for 4.380524 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.38054 sec then
    wait for 4.38054 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.380556 sec then
    wait for 4.380556 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.380573 sec then
    wait for 4.380573 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.380589 sec then
    wait for 4.380589 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.380638 sec then
    wait for 4.380638 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.380655 sec then
    wait for 4.380655 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.380671 sec then
    wait for 4.380671 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.380687 sec then
    wait for 4.380687 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.380704 sec then
    wait for 4.380704 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.38072 sec then
    wait for 4.38072 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.380737 sec then
    wait for 4.380737 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.380753 sec then
    wait for 4.380753 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.380769 sec then
    wait for 4.380769 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.380786 sec then
    wait for 4.380786 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.380802 sec then
    wait for 4.380802 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.380819 sec then
    wait for 4.380819 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.380835 sec then
    wait for 4.380835 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.380851 sec then
    wait for 4.380851 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.380868 sec then
    wait for 4.380868 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.380884 sec then
    wait for 4.380884 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.380933 sec then
    wait for 4.380933 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.38095 sec then
    wait for 4.38095 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.380966 sec then
    wait for 4.380966 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.380982 sec then
    wait for 4.380982 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.380999 sec then
    wait for 4.380999 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.381015 sec then
    wait for 4.381015 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.381032 sec then
    wait for 4.381032 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.381048 sec then
    wait for 4.381048 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.381064 sec then
    wait for 4.381064 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.381081 sec then
    wait for 4.381081 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.381097 sec then
    wait for 4.381097 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.381113 sec then
    wait for 4.381113 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.38113 sec then
    wait for 4.38113 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.381146 sec then
    wait for 4.381146 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.381163 sec then
    wait for 4.381163 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.381179 sec then
    wait for 4.381179 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.381228 sec then
    wait for 4.381228 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.381245 sec then
    wait for 4.381245 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.381261 sec then
    wait for 4.381261 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.381277 sec then
    wait for 4.381277 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.381294 sec then
    wait for 4.381294 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.38131 sec then
    wait for 4.38131 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.381327 sec then
    wait for 4.381327 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.381343 sec then
    wait for 4.381343 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.381359 sec then
    wait for 4.381359 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.381376 sec then
    wait for 4.381376 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.381392 sec then
    wait for 4.381392 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.381408 sec then
    wait for 4.381408 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.381425 sec then
    wait for 4.381425 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.381441 sec then
    wait for 4.381441 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.381458 sec then
    wait for 4.381458 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.381474 sec then
    wait for 4.381474 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.381523 sec then
    wait for 4.381523 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.38154 sec then
    wait for 4.38154 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.381556 sec then
    wait for 4.381556 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.381572 sec then
    wait for 4.381572 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.381589 sec then
    wait for 4.381589 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.381605 sec then
    wait for 4.381605 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.381621 sec then
    wait for 4.381621 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.381638 sec then
    wait for 4.381638 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.381654 sec then
    wait for 4.381654 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.381671 sec then
    wait for 4.381671 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.381687 sec then
    wait for 4.381687 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.381703 sec then
    wait for 4.381703 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.38172 sec then
    wait for 4.38172 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.381736 sec then
    wait for 4.381736 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.381753 sec then
    wait for 4.381753 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.381769 sec then
    wait for 4.381769 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.381792 sec then
    wait for 4.381792 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '1';
  MOSI <= '0';

  if now < 4.381816 sec then
    wait for 4.381816 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.381859 sec then
    wait for 4.381859 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.381875 sec then
    wait for 4.381875 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.381892 sec then
    wait for 4.381892 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.381908 sec then
    wait for 4.381908 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.381924 sec then
    wait for 4.381924 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.381941 sec then
    wait for 4.381941 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.381957 sec then
    wait for 4.381957 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.381974 sec then
    wait for 4.381974 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.38199 sec then
    wait for 4.38199 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.382006 sec then
    wait for 4.382006 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.382023 sec then
    wait for 4.382023 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.382039 sec then
    wait for 4.382039 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.382055 sec then
    wait for 4.382055 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.382072 sec then
    wait for 4.382072 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.382088 sec then
    wait for 4.382088 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.382105 sec then
    wait for 4.382105 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.382154 sec then
    wait for 4.382154 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.38217 sec then
    wait for 4.38217 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.382187 sec then
    wait for 4.382187 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.382203 sec then
    wait for 4.382203 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.382219 sec then
    wait for 4.382219 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.382236 sec then
    wait for 4.382236 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.382252 sec then
    wait for 4.382252 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.382268 sec then
    wait for 4.382268 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.382285 sec then
    wait for 4.382285 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.382301 sec then
    wait for 4.382301 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.382318 sec then
    wait for 4.382318 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.382334 sec then
    wait for 4.382334 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.38235 sec then
    wait for 4.38235 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.382367 sec then
    wait for 4.382367 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.382383 sec then
    wait for 4.382383 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.3824 sec then
    wait for 4.3824 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.382449 sec then
    wait for 4.382449 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.382465 sec then
    wait for 4.382465 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.382481 sec then
    wait for 4.382481 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.382498 sec then
    wait for 4.382498 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.382514 sec then
    wait for 4.382514 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.382531 sec then
    wait for 4.382531 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.382547 sec then
    wait for 4.382547 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.382563 sec then
    wait for 4.382563 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.38258 sec then
    wait for 4.38258 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.382596 sec then
    wait for 4.382596 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.382613 sec then
    wait for 4.382613 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.382629 sec then
    wait for 4.382629 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.382645 sec then
    wait for 4.382645 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.382662 sec then
    wait for 4.382662 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.382678 sec then
    wait for 4.382678 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.382695 sec then
    wait for 4.382695 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.382744 sec then
    wait for 4.382744 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.38276 sec then
    wait for 4.38276 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.382776 sec then
    wait for 4.382776 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.382793 sec then
    wait for 4.382793 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.382809 sec then
    wait for 4.382809 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.382826 sec then
    wait for 4.382826 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.382842 sec then
    wait for 4.382842 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.382858 sec then
    wait for 4.382858 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.382875 sec then
    wait for 4.382875 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.382891 sec then
    wait for 4.382891 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.382908 sec then
    wait for 4.382908 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.382924 sec then
    wait for 4.382924 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.38294 sec then
    wait for 4.38294 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.382957 sec then
    wait for 4.382957 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.382973 sec then
    wait for 4.382973 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.382989 sec then
    wait for 4.382989 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.383039 sec then
    wait for 4.383039 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.383055 sec then
    wait for 4.383055 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.383071 sec then
    wait for 4.383071 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.383088 sec then
    wait for 4.383088 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.383104 sec then
    wait for 4.383104 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.383121 sec then
    wait for 4.383121 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.383137 sec then
    wait for 4.383137 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.383153 sec then
    wait for 4.383153 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.38317 sec then
    wait for 4.38317 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.383186 sec then
    wait for 4.383186 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.383202 sec then
    wait for 4.383202 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.383219 sec then
    wait for 4.383219 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.383235 sec then
    wait for 4.383235 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.383252 sec then
    wait for 4.383252 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.383268 sec then
    wait for 4.383268 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.383284 sec then
    wait for 4.383284 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.383308 sec then
    wait for 4.383308 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '1';
  MOSI <= '0';

  if now < 4.383379 sec then
    wait for 4.383379 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.38342 sec then
    wait for 4.38342 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.383437 sec then
    wait for 4.383437 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.383453 sec then
    wait for 4.383453 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.38347 sec then
    wait for 4.38347 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.383486 sec then
    wait for 4.383486 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.383502 sec then
    wait for 4.383502 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.383519 sec then
    wait for 4.383519 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.383535 sec then
    wait for 4.383535 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.383552 sec then
    wait for 4.383552 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.383568 sec then
    wait for 4.383568 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.383584 sec then
    wait for 4.383584 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.383601 sec then
    wait for 4.383601 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.383617 sec then
    wait for 4.383617 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.383633 sec then
    wait for 4.383633 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.38365 sec then
    wait for 4.38365 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.383666 sec then
    wait for 4.383666 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.383715 sec then
    wait for 4.383715 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.383732 sec then
    wait for 4.383732 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.383748 sec then
    wait for 4.383748 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.383765 sec then
    wait for 4.383765 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.383781 sec then
    wait for 4.383781 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.383797 sec then
    wait for 4.383797 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.383814 sec then
    wait for 4.383814 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.38383 sec then
    wait for 4.38383 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.383847 sec then
    wait for 4.383847 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.383863 sec then
    wait for 4.383863 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.383879 sec then
    wait for 4.383879 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.383896 sec then
    wait for 4.383896 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.383912 sec then
    wait for 4.383912 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.383928 sec then
    wait for 4.383928 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.383945 sec then
    wait for 4.383945 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.383961 sec then
    wait for 4.383961 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.38401 sec then
    wait for 4.38401 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.384027 sec then
    wait for 4.384027 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.384043 sec then
    wait for 4.384043 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.38406 sec then
    wait for 4.38406 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.384076 sec then
    wait for 4.384076 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.384092 sec then
    wait for 4.384092 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.384109 sec then
    wait for 4.384109 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.384125 sec then
    wait for 4.384125 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.384141 sec then
    wait for 4.384141 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.384158 sec then
    wait for 4.384158 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.384174 sec then
    wait for 4.384174 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.384191 sec then
    wait for 4.384191 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.384207 sec then
    wait for 4.384207 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.384223 sec then
    wait for 4.384223 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.38424 sec then
    wait for 4.38424 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.384256 sec then
    wait for 4.384256 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.384305 sec then
    wait for 4.384305 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.384322 sec then
    wait for 4.384322 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.384338 sec then
    wait for 4.384338 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.384354 sec then
    wait for 4.384354 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.384371 sec then
    wait for 4.384371 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.384387 sec then
    wait for 4.384387 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.384404 sec then
    wait for 4.384404 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.38442 sec then
    wait for 4.38442 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.384436 sec then
    wait for 4.384436 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.384453 sec then
    wait for 4.384453 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.384469 sec then
    wait for 4.384469 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.384486 sec then
    wait for 4.384486 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.384502 sec then
    wait for 4.384502 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.384518 sec then
    wait for 4.384518 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.384535 sec then
    wait for 4.384535 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.384551 sec then
    wait for 4.384551 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.3846 sec then
    wait for 4.3846 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.384617 sec then
    wait for 4.384617 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.384633 sec then
    wait for 4.384633 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.384649 sec then
    wait for 4.384649 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.384666 sec then
    wait for 4.384666 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.384682 sec then
    wait for 4.384682 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.384699 sec then
    wait for 4.384699 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.384715 sec then
    wait for 4.384715 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.384731 sec then
    wait for 4.384731 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.384748 sec then
    wait for 4.384748 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.384764 sec then
    wait for 4.384764 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.384781 sec then
    wait for 4.384781 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.384797 sec then
    wait for 4.384797 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.384813 sec then
    wait for 4.384813 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.38483 sec then
    wait for 4.38483 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.384846 sec then
    wait for 4.384846 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.384877 sec then
    wait for 4.384877 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '1';
  MOSI <= '0';

  if now < 4.384913 sec then
    wait for 4.384913 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.384964 sec then
    wait for 4.384964 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.384981 sec then
    wait for 4.384981 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.384997 sec then
    wait for 4.384997 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.385013 sec then
    wait for 4.385013 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.38503 sec then
    wait for 4.38503 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.385046 sec then
    wait for 4.385046 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.385063 sec then
    wait for 4.385063 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.385079 sec then
    wait for 4.385079 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.385095 sec then
    wait for 4.385095 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.385112 sec then
    wait for 4.385112 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.385128 sec then
    wait for 4.385128 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.385145 sec then
    wait for 4.385145 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.385161 sec then
    wait for 4.385161 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.385177 sec then
    wait for 4.385177 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.385194 sec then
    wait for 4.385194 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.38521 sec then
    wait for 4.38521 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.385259 sec then
    wait for 4.385259 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.385276 sec then
    wait for 4.385276 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.385292 sec then
    wait for 4.385292 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.385308 sec then
    wait for 4.385308 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.385325 sec then
    wait for 4.385325 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.385341 sec then
    wait for 4.385341 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.385358 sec then
    wait for 4.385358 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.385374 sec then
    wait for 4.385374 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.38539 sec then
    wait for 4.38539 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.385407 sec then
    wait for 4.385407 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.385423 sec then
    wait for 4.385423 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.38544 sec then
    wait for 4.38544 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.385456 sec then
    wait for 4.385456 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.385472 sec then
    wait for 4.385472 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.385489 sec then
    wait for 4.385489 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.385505 sec then
    wait for 4.385505 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.385554 sec then
    wait for 4.385554 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.385571 sec then
    wait for 4.385571 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.385587 sec then
    wait for 4.385587 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.385603 sec then
    wait for 4.385603 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.38562 sec then
    wait for 4.38562 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.385636 sec then
    wait for 4.385636 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.385653 sec then
    wait for 4.385653 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.385669 sec then
    wait for 4.385669 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.385685 sec then
    wait for 4.385685 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.385702 sec then
    wait for 4.385702 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.385718 sec then
    wait for 4.385718 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.385734 sec then
    wait for 4.385734 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.385751 sec then
    wait for 4.385751 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.385767 sec then
    wait for 4.385767 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.385784 sec then
    wait for 4.385784 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.3858 sec then
    wait for 4.3858 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.385849 sec then
    wait for 4.385849 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.385866 sec then
    wait for 4.385866 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.385882 sec then
    wait for 4.385882 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.385898 sec then
    wait for 4.385898 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.385915 sec then
    wait for 4.385915 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.385931 sec then
    wait for 4.385931 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.385948 sec then
    wait for 4.385948 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.385964 sec then
    wait for 4.385964 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.38598 sec then
    wait for 4.38598 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.385997 sec then
    wait for 4.385997 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.386013 sec then
    wait for 4.386013 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.386029 sec then
    wait for 4.386029 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.386046 sec then
    wait for 4.386046 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.386062 sec then
    wait for 4.386062 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.386079 sec then
    wait for 4.386079 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.386095 sec then
    wait for 4.386095 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.386144 sec then
    wait for 4.386144 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.386161 sec then
    wait for 4.386161 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.386177 sec then
    wait for 4.386177 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.386193 sec then
    wait for 4.386193 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.38621 sec then
    wait for 4.38621 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.386226 sec then
    wait for 4.386226 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.386242 sec then
    wait for 4.386242 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.386259 sec then
    wait for 4.386259 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.386275 sec then
    wait for 4.386275 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.386292 sec then
    wait for 4.386292 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.386308 sec then
    wait for 4.386308 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.386324 sec then
    wait for 4.386324 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.386341 sec then
    wait for 4.386341 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.386357 sec then
    wait for 4.386357 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.386374 sec then
    wait for 4.386374 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.38639 sec then
    wait for 4.38639 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.386413 sec then
    wait for 4.386413 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '1';
  MOSI <= '0';

  if now < 4.386439 sec then
    wait for 4.386439 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.386481 sec then
    wait for 4.386481 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.386498 sec then
    wait for 4.386498 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.386514 sec then
    wait for 4.386514 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.38653 sec then
    wait for 4.38653 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.386547 sec then
    wait for 4.386547 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.386563 sec then
    wait for 4.386563 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.38658 sec then
    wait for 4.38658 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.386596 sec then
    wait for 4.386596 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.386612 sec then
    wait for 4.386612 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.386629 sec then
    wait for 4.386629 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.386645 sec then
    wait for 4.386645 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.386662 sec then
    wait for 4.386662 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.386678 sec then
    wait for 4.386678 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.386694 sec then
    wait for 4.386694 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.386711 sec then
    wait for 4.386711 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.386727 sec then
    wait for 4.386727 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.386776 sec then
    wait for 4.386776 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.386793 sec then
    wait for 4.386793 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.386809 sec then
    wait for 4.386809 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.386825 sec then
    wait for 4.386825 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.386842 sec then
    wait for 4.386842 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.386858 sec then
    wait for 4.386858 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.386875 sec then
    wait for 4.386875 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.386891 sec then
    wait for 4.386891 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.386907 sec then
    wait for 4.386907 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.386924 sec then
    wait for 4.386924 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.38694 sec then
    wait for 4.38694 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.386957 sec then
    wait for 4.386957 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.386973 sec then
    wait for 4.386973 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.386989 sec then
    wait for 4.386989 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.387006 sec then
    wait for 4.387006 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.387022 sec then
    wait for 4.387022 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.387071 sec then
    wait for 4.387071 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.387088 sec then
    wait for 4.387088 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.387104 sec then
    wait for 4.387104 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.38712 sec then
    wait for 4.38712 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.387137 sec then
    wait for 4.387137 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.387153 sec then
    wait for 4.387153 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.38717 sec then
    wait for 4.38717 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.387186 sec then
    wait for 4.387186 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.387202 sec then
    wait for 4.387202 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.387219 sec then
    wait for 4.387219 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.387235 sec then
    wait for 4.387235 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.387252 sec then
    wait for 4.387252 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.387268 sec then
    wait for 4.387268 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.387284 sec then
    wait for 4.387284 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.387301 sec then
    wait for 4.387301 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.387317 sec then
    wait for 4.387317 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.387366 sec then
    wait for 4.387366 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.387383 sec then
    wait for 4.387383 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.387399 sec then
    wait for 4.387399 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.387415 sec then
    wait for 4.387415 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.387432 sec then
    wait for 4.387432 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.387448 sec then
    wait for 4.387448 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.387465 sec then
    wait for 4.387465 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.387481 sec then
    wait for 4.387481 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.387497 sec then
    wait for 4.387497 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.387514 sec then
    wait for 4.387514 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.38753 sec then
    wait for 4.38753 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.387546 sec then
    wait for 4.387546 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.387563 sec then
    wait for 4.387563 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.387579 sec then
    wait for 4.387579 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.387596 sec then
    wait for 4.387596 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.387612 sec then
    wait for 4.387612 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.387661 sec then
    wait for 4.387661 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.387678 sec then
    wait for 4.387678 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.387694 sec then
    wait for 4.387694 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.38771 sec then
    wait for 4.38771 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.387727 sec then
    wait for 4.387727 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.387743 sec then
    wait for 4.387743 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.387759 sec then
    wait for 4.387759 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.387776 sec then
    wait for 4.387776 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.387792 sec then
    wait for 4.387792 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.387809 sec then
    wait for 4.387809 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.387825 sec then
    wait for 4.387825 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.387841 sec then
    wait for 4.387841 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.387858 sec then
    wait for 4.387858 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.387874 sec then
    wait for 4.387874 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.387891 sec then
    wait for 4.387891 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.387907 sec then
    wait for 4.387907 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.387939 sec then
    wait for 4.387939 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '1';
  MOSI <= '0';

  if now < 4.387969 sec then
    wait for 4.387969 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.388019 sec then
    wait for 4.388019 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.388035 sec then
    wait for 4.388035 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.388052 sec then
    wait for 4.388052 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.388068 sec then
    wait for 4.388068 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.388084 sec then
    wait for 4.388084 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.388101 sec then
    wait for 4.388101 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.388117 sec then
    wait for 4.388117 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.388134 sec then
    wait for 4.388134 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.38815 sec then
    wait for 4.38815 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.388166 sec then
    wait for 4.388166 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.388183 sec then
    wait for 4.388183 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.388199 sec then
    wait for 4.388199 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.388215 sec then
    wait for 4.388215 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.388232 sec then
    wait for 4.388232 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.388248 sec then
    wait for 4.388248 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.388265 sec then
    wait for 4.388265 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.388314 sec then
    wait for 4.388314 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.38833 sec then
    wait for 4.38833 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.388347 sec then
    wait for 4.388347 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.388363 sec then
    wait for 4.388363 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.388379 sec then
    wait for 4.388379 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.388396 sec then
    wait for 4.388396 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.388412 sec then
    wait for 4.388412 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.388429 sec then
    wait for 4.388429 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.388445 sec then
    wait for 4.388445 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.388461 sec then
    wait for 4.388461 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.388478 sec then
    wait for 4.388478 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.388494 sec then
    wait for 4.388494 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.38851 sec then
    wait for 4.38851 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.388527 sec then
    wait for 4.388527 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.388543 sec then
    wait for 4.388543 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.38856 sec then
    wait for 4.38856 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.388609 sec then
    wait for 4.388609 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.388625 sec then
    wait for 4.388625 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.388642 sec then
    wait for 4.388642 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.388658 sec then
    wait for 4.388658 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.388674 sec then
    wait for 4.388674 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.388691 sec then
    wait for 4.388691 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.388707 sec then
    wait for 4.388707 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.388723 sec then
    wait for 4.388723 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.38874 sec then
    wait for 4.38874 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.388756 sec then
    wait for 4.388756 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.388773 sec then
    wait for 4.388773 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.388789 sec then
    wait for 4.388789 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.388805 sec then
    wait for 4.388805 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.388822 sec then
    wait for 4.388822 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.388838 sec then
    wait for 4.388838 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.388855 sec then
    wait for 4.388855 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.388904 sec then
    wait for 4.388904 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.38892 sec then
    wait for 4.38892 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.388936 sec then
    wait for 4.388936 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.388953 sec then
    wait for 4.388953 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.388969 sec then
    wait for 4.388969 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.388986 sec then
    wait for 4.388986 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.389002 sec then
    wait for 4.389002 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.389018 sec then
    wait for 4.389018 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.389035 sec then
    wait for 4.389035 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.389051 sec then
    wait for 4.389051 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.389068 sec then
    wait for 4.389068 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.389084 sec then
    wait for 4.389084 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.3891 sec then
    wait for 4.3891 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.389117 sec then
    wait for 4.389117 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.389133 sec then
    wait for 4.389133 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.38915 sec then
    wait for 4.38915 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.389199 sec then
    wait for 4.389199 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.389215 sec then
    wait for 4.389215 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.389231 sec then
    wait for 4.389231 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.389248 sec then
    wait for 4.389248 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.389264 sec then
    wait for 4.389264 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.389281 sec then
    wait for 4.389281 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.389297 sec then
    wait for 4.389297 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.389313 sec then
    wait for 4.389313 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.38933 sec then
    wait for 4.38933 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.389346 sec then
    wait for 4.389346 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.389363 sec then
    wait for 4.389363 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.389379 sec then
    wait for 4.389379 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.389395 sec then
    wait for 4.389395 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.389412 sec then
    wait for 4.389412 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.389428 sec then
    wait for 4.389428 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.389444 sec then
    wait for 4.389444 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.389468 sec then
    wait for 4.389468 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '1';
  MOSI <= '0';

  if now < 4.389493 sec then
    wait for 4.389493 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.389535 sec then
    wait for 4.389535 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.389551 sec then
    wait for 4.389551 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.389568 sec then
    wait for 4.389568 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.389584 sec then
    wait for 4.389584 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.389601 sec then
    wait for 4.389601 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.389617 sec then
    wait for 4.389617 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.389633 sec then
    wait for 4.389633 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.38965 sec then
    wait for 4.38965 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.389666 sec then
    wait for 4.389666 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.389683 sec then
    wait for 4.389683 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.389699 sec then
    wait for 4.389699 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.389715 sec then
    wait for 4.389715 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.389732 sec then
    wait for 4.389732 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.389748 sec then
    wait for 4.389748 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.389764 sec then
    wait for 4.389764 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.389781 sec then
    wait for 4.389781 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.38983 sec then
    wait for 4.38983 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.389846 sec then
    wait for 4.389846 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.389863 sec then
    wait for 4.389863 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.389879 sec then
    wait for 4.389879 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.389896 sec then
    wait for 4.389896 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.389912 sec then
    wait for 4.389912 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.389928 sec then
    wait for 4.389928 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.389945 sec then
    wait for 4.389945 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.389961 sec then
    wait for 4.389961 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.389977 sec then
    wait for 4.389977 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.389994 sec then
    wait for 4.389994 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.39001 sec then
    wait for 4.39001 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.390027 sec then
    wait for 4.390027 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.390043 sec then
    wait for 4.390043 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.390059 sec then
    wait for 4.390059 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.390076 sec then
    wait for 4.390076 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.390125 sec then
    wait for 4.390125 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.390141 sec then
    wait for 4.390141 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.390158 sec then
    wait for 4.390158 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.390174 sec then
    wait for 4.390174 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.390191 sec then
    wait for 4.390191 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.390207 sec then
    wait for 4.390207 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.390223 sec then
    wait for 4.390223 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.39024 sec then
    wait for 4.39024 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.390256 sec then
    wait for 4.390256 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.390272 sec then
    wait for 4.390272 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.390289 sec then
    wait for 4.390289 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.390305 sec then
    wait for 4.390305 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.390322 sec then
    wait for 4.390322 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.390338 sec then
    wait for 4.390338 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.390354 sec then
    wait for 4.390354 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.390371 sec then
    wait for 4.390371 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.39042 sec then
    wait for 4.39042 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.390436 sec then
    wait for 4.390436 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.390453 sec then
    wait for 4.390453 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.390469 sec then
    wait for 4.390469 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.390485 sec then
    wait for 4.390485 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.390502 sec then
    wait for 4.390502 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.390518 sec then
    wait for 4.390518 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.390535 sec then
    wait for 4.390535 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.390551 sec then
    wait for 4.390551 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.390567 sec then
    wait for 4.390567 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.390584 sec then
    wait for 4.390584 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.3906 sec then
    wait for 4.3906 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.390617 sec then
    wait for 4.390617 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.390633 sec then
    wait for 4.390633 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.390649 sec then
    wait for 4.390649 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.390666 sec then
    wait for 4.390666 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.390715 sec then
    wait for 4.390715 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.390731 sec then
    wait for 4.390731 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.390748 sec then
    wait for 4.390748 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.390764 sec then
    wait for 4.390764 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.39078 sec then
    wait for 4.39078 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.390797 sec then
    wait for 4.390797 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.390813 sec then
    wait for 4.390813 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.39083 sec then
    wait for 4.39083 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.390846 sec then
    wait for 4.390846 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.390862 sec then
    wait for 4.390862 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.390879 sec then
    wait for 4.390879 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.390895 sec then
    wait for 4.390895 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.390912 sec then
    wait for 4.390912 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.390928 sec then
    wait for 4.390928 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.390944 sec then
    wait for 4.390944 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.390961 sec then
    wait for 4.390961 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.390985 sec then
    wait for 4.390985 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '1';
  MOSI <= '0';

  if now < 4.391052 sec then
    wait for 4.391052 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.391094 sec then
    wait for 4.391094 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.39111 sec then
    wait for 4.39111 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.391127 sec then
    wait for 4.391127 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.391143 sec then
    wait for 4.391143 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.391159 sec then
    wait for 4.391159 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.391176 sec then
    wait for 4.391176 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.391192 sec then
    wait for 4.391192 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.391209 sec then
    wait for 4.391209 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.391225 sec then
    wait for 4.391225 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.391241 sec then
    wait for 4.391241 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.391258 sec then
    wait for 4.391258 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.391274 sec then
    wait for 4.391274 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.39129 sec then
    wait for 4.39129 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.391307 sec then
    wait for 4.391307 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.391323 sec then
    wait for 4.391323 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.39134 sec then
    wait for 4.39134 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.391389 sec then
    wait for 4.391389 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.391405 sec then
    wait for 4.391405 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.391422 sec then
    wait for 4.391422 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.391438 sec then
    wait for 4.391438 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.391454 sec then
    wait for 4.391454 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.391471 sec then
    wait for 4.391471 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.391487 sec then
    wait for 4.391487 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.391503 sec then
    wait for 4.391503 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.39152 sec then
    wait for 4.39152 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.391536 sec then
    wait for 4.391536 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.391553 sec then
    wait for 4.391553 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.391569 sec then
    wait for 4.391569 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.391585 sec then
    wait for 4.391585 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.391602 sec then
    wait for 4.391602 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.391618 sec then
    wait for 4.391618 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.391635 sec then
    wait for 4.391635 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.391684 sec then
    wait for 4.391684 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.3917 sec then
    wait for 4.3917 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.391716 sec then
    wait for 4.391716 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.391733 sec then
    wait for 4.391733 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.391749 sec then
    wait for 4.391749 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.391766 sec then
    wait for 4.391766 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.391782 sec then
    wait for 4.391782 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.391798 sec then
    wait for 4.391798 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.391815 sec then
    wait for 4.391815 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.391831 sec then
    wait for 4.391831 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.391848 sec then
    wait for 4.391848 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.391864 sec then
    wait for 4.391864 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.39188 sec then
    wait for 4.39188 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.391897 sec then
    wait for 4.391897 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.391913 sec then
    wait for 4.391913 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.39193 sec then
    wait for 4.39193 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.391979 sec then
    wait for 4.391979 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.391995 sec then
    wait for 4.391995 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.392011 sec then
    wait for 4.392011 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.392028 sec then
    wait for 4.392028 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.392044 sec then
    wait for 4.392044 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.392061 sec then
    wait for 4.392061 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.392077 sec then
    wait for 4.392077 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.392093 sec then
    wait for 4.392093 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.39211 sec then
    wait for 4.39211 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.392126 sec then
    wait for 4.392126 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.392143 sec then
    wait for 4.392143 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.392159 sec then
    wait for 4.392159 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.392175 sec then
    wait for 4.392175 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.392192 sec then
    wait for 4.392192 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.392208 sec then
    wait for 4.392208 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.392224 sec then
    wait for 4.392224 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.392274 sec then
    wait for 4.392274 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.39229 sec then
    wait for 4.39229 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.392306 sec then
    wait for 4.392306 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.392323 sec then
    wait for 4.392323 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.392339 sec then
    wait for 4.392339 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.392356 sec then
    wait for 4.392356 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.392372 sec then
    wait for 4.392372 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.392388 sec then
    wait for 4.392388 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.392405 sec then
    wait for 4.392405 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.392421 sec then
    wait for 4.392421 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.392438 sec then
    wait for 4.392438 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.392454 sec then
    wait for 4.392454 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.39247 sec then
    wait for 4.39247 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.392487 sec then
    wait for 4.392487 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.392503 sec then
    wait for 4.392503 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.392519 sec then
    wait for 4.392519 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.392551 sec then
    wait for 4.392551 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '1';
  MOSI <= '0';

  if now < 4.392583 sec then
    wait for 4.392583 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.392634 sec then
    wait for 4.392634 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.39265 sec then
    wait for 4.39265 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.392667 sec then
    wait for 4.392667 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.392683 sec then
    wait for 4.392683 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.392699 sec then
    wait for 4.392699 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.392716 sec then
    wait for 4.392716 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.392732 sec then
    wait for 4.392732 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.392749 sec then
    wait for 4.392749 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.392765 sec then
    wait for 4.392765 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.392781 sec then
    wait for 4.392781 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.392798 sec then
    wait for 4.392798 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.392814 sec then
    wait for 4.392814 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.39283 sec then
    wait for 4.39283 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.392847 sec then
    wait for 4.392847 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.392863 sec then
    wait for 4.392863 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.39288 sec then
    wait for 4.39288 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.392929 sec then
    wait for 4.392929 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.392945 sec then
    wait for 4.392945 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.392962 sec then
    wait for 4.392962 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.392978 sec then
    wait for 4.392978 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.392994 sec then
    wait for 4.392994 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.393011 sec then
    wait for 4.393011 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.393027 sec then
    wait for 4.393027 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.393043 sec then
    wait for 4.393043 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.39306 sec then
    wait for 4.39306 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.393076 sec then
    wait for 4.393076 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.393093 sec then
    wait for 4.393093 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.393109 sec then
    wait for 4.393109 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.393125 sec then
    wait for 4.393125 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.393142 sec then
    wait for 4.393142 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.393158 sec then
    wait for 4.393158 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.393175 sec then
    wait for 4.393175 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.393224 sec then
    wait for 4.393224 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.39324 sec then
    wait for 4.39324 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.393257 sec then
    wait for 4.393257 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.393273 sec then
    wait for 4.393273 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.393289 sec then
    wait for 4.393289 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.393306 sec then
    wait for 4.393306 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.393322 sec then
    wait for 4.393322 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.393338 sec then
    wait for 4.393338 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.393355 sec then
    wait for 4.393355 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.393371 sec then
    wait for 4.393371 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.393388 sec then
    wait for 4.393388 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.393404 sec then
    wait for 4.393404 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.39342 sec then
    wait for 4.39342 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.393437 sec then
    wait for 4.393437 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.393453 sec then
    wait for 4.393453 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.39347 sec then
    wait for 4.39347 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.393519 sec then
    wait for 4.393519 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.393535 sec then
    wait for 4.393535 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.393551 sec then
    wait for 4.393551 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.393568 sec then
    wait for 4.393568 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.393584 sec then
    wait for 4.393584 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.393601 sec then
    wait for 4.393601 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.393617 sec then
    wait for 4.393617 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.393633 sec then
    wait for 4.393633 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.39365 sec then
    wait for 4.39365 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.393666 sec then
    wait for 4.393666 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.393683 sec then
    wait for 4.393683 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.393699 sec then
    wait for 4.393699 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.393715 sec then
    wait for 4.393715 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.393732 sec then
    wait for 4.393732 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.393748 sec then
    wait for 4.393748 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.393764 sec then
    wait for 4.393764 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.393814 sec then
    wait for 4.393814 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.39383 sec then
    wait for 4.39383 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.393846 sec then
    wait for 4.393846 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.393863 sec then
    wait for 4.393863 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.393879 sec then
    wait for 4.393879 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.393896 sec then
    wait for 4.393896 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.393912 sec then
    wait for 4.393912 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.393928 sec then
    wait for 4.393928 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.393945 sec then
    wait for 4.393945 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.393961 sec then
    wait for 4.393961 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.393978 sec then
    wait for 4.393978 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.393994 sec then
    wait for 4.393994 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.39401 sec then
    wait for 4.39401 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.394027 sec then
    wait for 4.394027 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.394043 sec then
    wait for 4.394043 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.394059 sec then
    wait for 4.394059 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.394088 sec then
    wait for 4.394088 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '1';
  MOSI <= '0';

  if now < 4.394117 sec then
    wait for 4.394117 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.394154 sec then
    wait for 4.394154 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.394171 sec then
    wait for 4.394171 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.394187 sec then
    wait for 4.394187 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.394203 sec then
    wait for 4.394203 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.39422 sec then
    wait for 4.39422 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.394236 sec then
    wait for 4.394236 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.394252 sec then
    wait for 4.394252 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.394269 sec then
    wait for 4.394269 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.394285 sec then
    wait for 4.394285 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.394302 sec then
    wait for 4.394302 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.394318 sec then
    wait for 4.394318 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.394334 sec then
    wait for 4.394334 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.394351 sec then
    wait for 4.394351 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.394367 sec then
    wait for 4.394367 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.394384 sec then
    wait for 4.394384 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.3944 sec then
    wait for 4.3944 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.394449 sec then
    wait for 4.394449 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.394465 sec then
    wait for 4.394465 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.394482 sec then
    wait for 4.394482 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.394498 sec then
    wait for 4.394498 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.394515 sec then
    wait for 4.394515 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.394531 sec then
    wait for 4.394531 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.394547 sec then
    wait for 4.394547 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.394564 sec then
    wait for 4.394564 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.39458 sec then
    wait for 4.39458 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.394597 sec then
    wait for 4.394597 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.394613 sec then
    wait for 4.394613 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.394629 sec then
    wait for 4.394629 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.394646 sec then
    wait for 4.394646 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.394662 sec then
    wait for 4.394662 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.394679 sec then
    wait for 4.394679 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.394695 sec then
    wait for 4.394695 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.394744 sec then
    wait for 4.394744 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.39476 sec then
    wait for 4.39476 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.394777 sec then
    wait for 4.394777 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.394793 sec then
    wait for 4.394793 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.39481 sec then
    wait for 4.39481 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.394826 sec then
    wait for 4.394826 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.394842 sec then
    wait for 4.394842 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.394859 sec then
    wait for 4.394859 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.394875 sec then
    wait for 4.394875 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.394892 sec then
    wait for 4.394892 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.394908 sec then
    wait for 4.394908 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.394924 sec then
    wait for 4.394924 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.394941 sec then
    wait for 4.394941 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.394957 sec then
    wait for 4.394957 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.394973 sec then
    wait for 4.394973 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.39499 sec then
    wait for 4.39499 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.395039 sec then
    wait for 4.395039 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.395055 sec then
    wait for 4.395055 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.395072 sec then
    wait for 4.395072 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.395088 sec then
    wait for 4.395088 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.395105 sec then
    wait for 4.395105 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.395121 sec then
    wait for 4.395121 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.395137 sec then
    wait for 4.395137 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.395154 sec then
    wait for 4.395154 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.39517 sec then
    wait for 4.39517 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.395186 sec then
    wait for 4.395186 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.395203 sec then
    wait for 4.395203 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.395219 sec then
    wait for 4.395219 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.395236 sec then
    wait for 4.395236 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.395252 sec then
    wait for 4.395252 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.395268 sec then
    wait for 4.395268 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.395285 sec then
    wait for 4.395285 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.395334 sec then
    wait for 4.395334 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.39535 sec then
    wait for 4.39535 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.395367 sec then
    wait for 4.395367 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.395383 sec then
    wait for 4.395383 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.3954 sec then
    wait for 4.3954 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.395416 sec then
    wait for 4.395416 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.395432 sec then
    wait for 4.395432 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.395449 sec then
    wait for 4.395449 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.395465 sec then
    wait for 4.395465 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.395481 sec then
    wait for 4.395481 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.395498 sec then
    wait for 4.395498 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.395514 sec then
    wait for 4.395514 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.395531 sec then
    wait for 4.395531 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.395547 sec then
    wait for 4.395547 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.395563 sec then
    wait for 4.395563 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.39558 sec then
    wait for 4.39558 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.395605 sec then
    wait for 4.395605 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '1';
  MOSI <= '0';

  if now < 4.39563 sec then
    wait for 4.39563 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.395671 sec then
    wait for 4.395671 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.395687 sec then
    wait for 4.395687 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.395704 sec then
    wait for 4.395704 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.39572 sec then
    wait for 4.39572 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.395737 sec then
    wait for 4.395737 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.395753 sec then
    wait for 4.395753 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.395769 sec then
    wait for 4.395769 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.395786 sec then
    wait for 4.395786 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.395802 sec then
    wait for 4.395802 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.395819 sec then
    wait for 4.395819 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.395835 sec then
    wait for 4.395835 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.395851 sec then
    wait for 4.395851 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.395868 sec then
    wait for 4.395868 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.395884 sec then
    wait for 4.395884 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.3959 sec then
    wait for 4.3959 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.395917 sec then
    wait for 4.395917 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.395966 sec then
    wait for 4.395966 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.395982 sec then
    wait for 4.395982 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.395999 sec then
    wait for 4.395999 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.396015 sec then
    wait for 4.396015 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.396032 sec then
    wait for 4.396032 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.396048 sec then
    wait for 4.396048 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.396064 sec then
    wait for 4.396064 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.396081 sec then
    wait for 4.396081 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.396097 sec then
    wait for 4.396097 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.396113 sec then
    wait for 4.396113 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.39613 sec then
    wait for 4.39613 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.396146 sec then
    wait for 4.396146 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.396163 sec then
    wait for 4.396163 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.396179 sec then
    wait for 4.396179 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.396195 sec then
    wait for 4.396195 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.396212 sec then
    wait for 4.396212 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.396261 sec then
    wait for 4.396261 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.396277 sec then
    wait for 4.396277 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.396294 sec then
    wait for 4.396294 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.39631 sec then
    wait for 4.39631 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.396326 sec then
    wait for 4.396326 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.396343 sec then
    wait for 4.396343 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.396359 sec then
    wait for 4.396359 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.396376 sec then
    wait for 4.396376 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.396392 sec then
    wait for 4.396392 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.396408 sec then
    wait for 4.396408 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.396425 sec then
    wait for 4.396425 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.396441 sec then
    wait for 4.396441 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.396458 sec then
    wait for 4.396458 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.396474 sec then
    wait for 4.396474 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.39649 sec then
    wait for 4.39649 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.396507 sec then
    wait for 4.396507 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.396556 sec then
    wait for 4.396556 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.396572 sec then
    wait for 4.396572 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.396589 sec then
    wait for 4.396589 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.396605 sec then
    wait for 4.396605 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.396621 sec then
    wait for 4.396621 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.396638 sec then
    wait for 4.396638 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.396654 sec then
    wait for 4.396654 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.396671 sec then
    wait for 4.396671 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.396687 sec then
    wait for 4.396687 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.396703 sec then
    wait for 4.396703 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.39672 sec then
    wait for 4.39672 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.396736 sec then
    wait for 4.396736 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.396753 sec then
    wait for 4.396753 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.396769 sec then
    wait for 4.396769 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.396785 sec then
    wait for 4.396785 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.396802 sec then
    wait for 4.396802 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.396851 sec then
    wait for 4.396851 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.396867 sec then
    wait for 4.396867 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.396884 sec then
    wait for 4.396884 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.3969 sec then
    wait for 4.3969 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.396916 sec then
    wait for 4.396916 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.396933 sec then
    wait for 4.396933 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.396949 sec then
    wait for 4.396949 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.396966 sec then
    wait for 4.396966 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.396982 sec then
    wait for 4.396982 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.396998 sec then
    wait for 4.396998 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.397015 sec then
    wait for 4.397015 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.397031 sec then
    wait for 4.397031 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.397047 sec then
    wait for 4.397047 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.397064 sec then
    wait for 4.397064 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.39708 sec then
    wait for 4.39708 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.397097 sec then
    wait for 4.397097 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.39712 sec then
    wait for 4.39712 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '1';
  MOSI <= '0';

  if now < 4.397144 sec then
    wait for 4.397144 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.397186 sec then
    wait for 4.397186 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.397203 sec then
    wait for 4.397203 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.397219 sec then
    wait for 4.397219 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.397236 sec then
    wait for 4.397236 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.397252 sec then
    wait for 4.397252 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.397268 sec then
    wait for 4.397268 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.397285 sec then
    wait for 4.397285 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.397301 sec then
    wait for 4.397301 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.397318 sec then
    wait for 4.397318 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.397334 sec then
    wait for 4.397334 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.39735 sec then
    wait for 4.39735 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.397367 sec then
    wait for 4.397367 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.397383 sec then
    wait for 4.397383 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.397399 sec then
    wait for 4.397399 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.397416 sec then
    wait for 4.397416 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.397432 sec then
    wait for 4.397432 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.397481 sec then
    wait for 4.397481 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.397498 sec then
    wait for 4.397498 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.397514 sec then
    wait for 4.397514 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.397531 sec then
    wait for 4.397531 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.397547 sec then
    wait for 4.397547 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.397563 sec then
    wait for 4.397563 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.39758 sec then
    wait for 4.39758 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.397596 sec then
    wait for 4.397596 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.397613 sec then
    wait for 4.397613 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.397629 sec then
    wait for 4.397629 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.397645 sec then
    wait for 4.397645 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.397662 sec then
    wait for 4.397662 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.397678 sec then
    wait for 4.397678 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.397694 sec then
    wait for 4.397694 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.397711 sec then
    wait for 4.397711 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.397727 sec then
    wait for 4.397727 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.397776 sec then
    wait for 4.397776 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.397793 sec then
    wait for 4.397793 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.397809 sec then
    wait for 4.397809 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.397826 sec then
    wait for 4.397826 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.397842 sec then
    wait for 4.397842 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.397858 sec then
    wait for 4.397858 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.397875 sec then
    wait for 4.397875 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.397891 sec then
    wait for 4.397891 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.397907 sec then
    wait for 4.397907 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.397924 sec then
    wait for 4.397924 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.39794 sec then
    wait for 4.39794 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.397957 sec then
    wait for 4.397957 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.397973 sec then
    wait for 4.397973 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.397989 sec then
    wait for 4.397989 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.398006 sec then
    wait for 4.398006 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.398022 sec then
    wait for 4.398022 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.398071 sec then
    wait for 4.398071 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.398088 sec then
    wait for 4.398088 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.398104 sec then
    wait for 4.398104 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.398121 sec then
    wait for 4.398121 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.398137 sec then
    wait for 4.398137 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.398153 sec then
    wait for 4.398153 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.39817 sec then
    wait for 4.39817 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.398186 sec then
    wait for 4.398186 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.398202 sec then
    wait for 4.398202 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.398219 sec then
    wait for 4.398219 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.398235 sec then
    wait for 4.398235 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.398252 sec then
    wait for 4.398252 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.398268 sec then
    wait for 4.398268 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.398284 sec then
    wait for 4.398284 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.398301 sec then
    wait for 4.398301 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.398317 sec then
    wait for 4.398317 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.398366 sec then
    wait for 4.398366 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.398383 sec then
    wait for 4.398383 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.398399 sec then
    wait for 4.398399 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.398415 sec then
    wait for 4.398415 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.398432 sec then
    wait for 4.398432 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.398448 sec then
    wait for 4.398448 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.398465 sec then
    wait for 4.398465 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.398481 sec then
    wait for 4.398481 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.398497 sec then
    wait for 4.398497 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.398514 sec then
    wait for 4.398514 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.39853 sec then
    wait for 4.39853 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.398547 sec then
    wait for 4.398547 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.398563 sec then
    wait for 4.398563 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.398579 sec then
    wait for 4.398579 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.398596 sec then
    wait for 4.398596 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.398612 sec then
    wait for 4.398612 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.398634 sec then
    wait for 4.398634 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '1';
  MOSI <= '0';

  if now < 4.398696 sec then
    wait for 4.398696 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.398739 sec then
    wait for 4.398739 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.398756 sec then
    wait for 4.398756 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.398772 sec then
    wait for 4.398772 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.398788 sec then
    wait for 4.398788 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.398805 sec then
    wait for 4.398805 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.398821 sec then
    wait for 4.398821 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.398838 sec then
    wait for 4.398838 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.398854 sec then
    wait for 4.398854 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.39887 sec then
    wait for 4.39887 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.398887 sec then
    wait for 4.398887 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.398903 sec then
    wait for 4.398903 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.39892 sec then
    wait for 4.39892 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.398936 sec then
    wait for 4.398936 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.398952 sec then
    wait for 4.398952 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.398969 sec then
    wait for 4.398969 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.398985 sec then
    wait for 4.398985 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.399034 sec then
    wait for 4.399034 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.399051 sec then
    wait for 4.399051 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.399067 sec then
    wait for 4.399067 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.399083 sec then
    wait for 4.399083 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.3991 sec then
    wait for 4.3991 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.399116 sec then
    wait for 4.399116 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.399133 sec then
    wait for 4.399133 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.399149 sec then
    wait for 4.399149 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.399165 sec then
    wait for 4.399165 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.399182 sec then
    wait for 4.399182 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.399198 sec then
    wait for 4.399198 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.399215 sec then
    wait for 4.399215 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.399231 sec then
    wait for 4.399231 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.399247 sec then
    wait for 4.399247 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.399264 sec then
    wait for 4.399264 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.39928 sec then
    wait for 4.39928 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.399329 sec then
    wait for 4.399329 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.399346 sec then
    wait for 4.399346 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.399362 sec then
    wait for 4.399362 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.399378 sec then
    wait for 4.399378 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.399395 sec then
    wait for 4.399395 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.399411 sec then
    wait for 4.399411 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.399428 sec then
    wait for 4.399428 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.399444 sec then
    wait for 4.399444 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.39946 sec then
    wait for 4.39946 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.399477 sec then
    wait for 4.399477 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.399493 sec then
    wait for 4.399493 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.399509 sec then
    wait for 4.399509 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.399526 sec then
    wait for 4.399526 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.399542 sec then
    wait for 4.399542 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.399559 sec then
    wait for 4.399559 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.399575 sec then
    wait for 4.399575 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.399624 sec then
    wait for 4.399624 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.399641 sec then
    wait for 4.399641 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.399657 sec then
    wait for 4.399657 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.399673 sec then
    wait for 4.399673 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.39969 sec then
    wait for 4.39969 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.399706 sec then
    wait for 4.399706 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.399723 sec then
    wait for 4.399723 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.399739 sec then
    wait for 4.399739 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.399755 sec then
    wait for 4.399755 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.399772 sec then
    wait for 4.399772 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.399788 sec then
    wait for 4.399788 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.399804 sec then
    wait for 4.399804 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.399821 sec then
    wait for 4.399821 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.399837 sec then
    wait for 4.399837 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.399854 sec then
    wait for 4.399854 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.39987 sec then
    wait for 4.39987 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.399919 sec then
    wait for 4.399919 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.399936 sec then
    wait for 4.399936 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.399952 sec then
    wait for 4.399952 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.399968 sec then
    wait for 4.399968 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.399985 sec then
    wait for 4.399985 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.400001 sec then
    wait for 4.400001 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.400017 sec then
    wait for 4.400017 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.400034 sec then
    wait for 4.400034 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.40005 sec then
    wait for 4.40005 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.400067 sec then
    wait for 4.400067 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.400083 sec then
    wait for 4.400083 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.400099 sec then
    wait for 4.400099 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.400116 sec then
    wait for 4.400116 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.400132 sec then
    wait for 4.400132 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.400149 sec then
    wait for 4.400149 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '1';

  if now < 4.400165 sec then
    wait for 4.400165 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.400194 sec then
    wait for 4.400194 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '1';
  MOSI <= '0';

  if now < 4.400227 sec then
    wait for 4.400227 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.400263 sec then
    wait for 4.400263 sec - now;
  end if;
  CLOCK <= '1';
  ENABLE <= '0';
  MOSI <= '0';

  if now < 4.40028 sec then
    wait for 4.40028 sec - now;
  end if;
  CLOCK <= '0';
  ENABLE <= '0';
  MOSI <= '0';


  wait;
end process;
end;

