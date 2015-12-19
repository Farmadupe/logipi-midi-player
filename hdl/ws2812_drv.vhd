library IEEE;
use IEEE.NUMERIC_STD.all;
use ieee.std_logic_1164.all;

library virtual_button_lib;
use virtual_button_lib.constants.all;
use virtual_button_lib.utils.all;
use virtual_button_lib.ws2812_data.all;


entity ws2812_drv is
  generic(
    num_leds : positive
    );


  port(
    ctrl    : in ctrl_t;
    data_in : in ws2812_t;

    current_led : out integer range 0 to num_leds;
    data_out    : out std_logic
    );
end ws2812_drv;

architecture rtl of ws2812_drv is

  ---------------------------------------------------------------------------------------------------
  -- Timing constants
  -- These constants are pullsed directly from the datasheet for the
  -- LEDs (http://www.adafruit.com/datasheets/WS2812.pdf)
  ---------------------------------------------------------------------------------------------------
  constant t0h : time := 350 ns;
  constant t1h : time := 700 ns;

  constant t0l : time := 800 ns;
  constant t1l : time := 600 ns;

  constant res : time := 51 us;

  -- clockified constants
  -- To make the firmware wait for the times specified by these times, we will count the number of
  -- FPGA clock cycles
  -- in each one (Note that the FPGA is clocked at 50 MHz).
  constant t0h_clocks : positive := calc_delay_clocks(clk_period, t0h);
  constant t1h_clocks : positive := calc_delay_clocks(clk_period, t1h);
  constant t0l_clocks : positive := calc_delay_clocks(clk_period, t0l);
  constant t1l_clocks : positive := calc_delay_clocks(clk_period, t1l);
  constant res_clocks : positive := calc_delay_clocks(clk_period, res);

  -- timer. These are the signals we need to implement the counter that makes the firmware
  -- wait for these times.
  signal timer       : natural range 0 to res_clocks;
  signal timer_limit : natural range 0 to res_clocks;
  signal timer_done  : std_logic;

  ---------------------------------------------------------------------------------------------------
  -- These signals index the data.
  ---------------------------------------------------------------------------------------------------

  -- The index in data_in of the bit that is currently being sent to the LEDs.
  signal bit_index : integer range 0 to 23;

  -- The value of the bit that is being sent to the LEDs. This signal exists solely to decrease logic depth.
  signal current_bit : std_logic;

  signal current_led_int : integer range 0 to num_leds;

  ---------------------------------------------------------------------------------------------------
  -- statey things.
  ---------------------------------------------------------------------------------------------------
  type driver_state is (high, low, wait_res);
  signal state : driver_state;

  ---------------------------------------------------------------------------------------------------
  --provide useful symbolic names for some things
  impure function current_bit_is_last return boolean is
  begin
    return bit_index = 0;
  end current_bit_is_last;

  impure function current_led_is_last return boolean is
  begin
    return current_led_int = num_leds - 1;
  end current_led_is_last;

begin

  current_led <= current_led_int;

  -- Place the bit that is currently being to the LEDs in its own register. This helps us decrease
  -- logic depth, which is good for high speed operation.
  --
  -- Additionally, output blank if the FPGA is in reset.
  select_current_bit : process (ctrl.clk) is
    variable data_in_as_slv : std_logic_vector(23 downto 0);
  begin
    if rising_edge(ctrl.clk) then
      data_in_as_slv := (
        std_logic_vector(to_unsigned(data_in.g, 8)) &
        std_logic_vector(to_unsigned(data_in.r, 8)) &
        std_logic_vector(to_unsigned(data_in.b, 8)));
      if ctrl.reset_n = '0' then
        current_bit <= '0';
      else
        current_bit <= data_in_as_slv(bit_index);
      end if;
    end if;
  end process select_current_bit;

  -- Here is the driver's main logic. Its derivation, planning and rationalisation is as follows:
  --
  -- * Observe that the way the LEDs differentiate between a '1' and a '0' is by timing not by bit pattern;
  --   to send a single bit, we send a '1' followed by an '0'.
  --
  -- * Because of this, sequencing is very easy.. To send a bitpattern to the LEDs, we send an
  --   alternating series of '1's and '0's followed by a stop (which is just a very long '0').
  --
  -- * It is easy to separate out timing and sequencing, so we will choose to do that.
  --   The FSM will handle sequencing, and the limit_select process will handle timing.
  --
  -- * This means that the FSM will just sequence through '1' and '0' states, checking for when
  -- it has reached the last bit. When it reaches the last bit, it should output a stop bit.
  fsm_nextstate : process (ctrl.clk) is

    -- We are finishing outputting a bit of data, so choose whether the next thing is to output
    -- the next bit or output a stop bit.
    procedure dispatch_next is
    begin
      if current_bit_is_last then
        if current_led_is_last then
          state <= wait_res;
        else
          current_led_int <= current_led_int + 1;
          bit_index       <= 23;
          state           <= high;
        end if;
      else
        bit_index <= bit_index - 1;
        state     <= high;
      end if;
    end dispatch_next;
    
  begin
    if rising_edge(ctrl.clk) then
      case state is
        when wait_res =>
          bit_index       <= 23;
          current_led_int <= 0;
          if timer_done = '1' then
            state <= high;
          end if;
          
        when high =>
          if timer_done = '1' then
            state <= low;
          end if;
          
        when low =>
          if timer_done = '1' then
            dispatch_next;
          end if;
      end case;
    end if;
  end process fsm_nextstate;

  -- This counter lets us implement the timings of the output serial stream.
  counter_proc : process (ctrl.clk) is
  begin
    if rising_edge(ctrl.clk) then
      if timer >= timer_limit then
        timer      <= 0;
        timer_done <= '1';
      else
        timer      <= timer + 1;
        timer_done <= '0';
      end if;
    end if;
  end process counter_proc;

  -- Select out counter limit here so that we can do timing.
  -- We need two pieces of information here. Whether the value of the current bit is a '1' or a '0',
  -- and whether we are outputting the high part or the low part of that bit. The current_bit signal
  -- tells us the value of the current bit. The FSM state tells us the whether we are currently in a
  -- high or a low.
  limit_select : process (ctrl.clk) is
  begin
    if rising_edge(ctrl.clk) then
      if state = wait_res then
        timer_limit <= res_clocks;
      elsif state = high and current_bit = '1' then
        timer_limit <= t1h_clocks;
      elsif state = high and current_bit = '0' then
        timer_limit <= t0h_clocks;
      elsif state = low and current_bit = '1' then
        timer_limit <= t1l_clocks;
      else
        -- By elimination, state = low and current_bit = '0'
        timer_limit <= t0l_clocks;
      end if;
    end if;
  end process limit_select;

  -- Here is where we actually set out output.
  -- We just dispatch based off the current state of the FSM.
  output_select : process (ctrl.clk) is
  begin
    --register output to prevent glitching.
    if rising_edge(ctrl.clk) then
      case state is
        when wait_res | low =>
          data_out <= '0';
        when high =>
          data_out <= '1';
      end case;
    end if;
  end process output_select;

end rtl;
