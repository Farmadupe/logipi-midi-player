
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library virtual_button_lib;
use virtual_button_lib.utils.all;
use virtual_button_lib.constants.all;

----------------------------------------------------------------------------------------------------

entity spi_rx is
  generic(
    --debug
    cpol : in integer;
    cpha : in integer
    );
  port (
    ctrl : in ctrl_t;
    sclk : in std_logic;
    cs_n : in std_logic;
    mosi : in std_logic;

    data     : out std_logic_vector(spi_word_length - 1 downto 0);
    new_data : out std_logic
    );

end entity spi_rx;

----------------------------------------------------------------------------------------------------
architecture rtl of spi_rx is


  ----------------------------------------------------------------------------------------------------
  -- Prevent metastability.
  ----------------------------------------------------------------------------------------------------
  signal sclk_d1, sclk_d2 : std_logic;
  signal cs_n_d1, cs_n_d2 : std_logic;
  signal mosi_d1, mosi_d2 : std_logic;

  ----------------------------------------------------------------------------------------------------
  -- Internal signal declarations
  ----------------------------------------------------------------------------------------------------

  type state_t is (disabled, wait_until_time_to_capture, hold_data);
  signal state : state_t;

  signal sclk_d3   : std_logic;
  signal bit_index : integer range 0 to spi_word_length - 1;

begin
  prevent_metastability : process (ctrl.clk) is
  begin
    if rising_edge(ctrl.clk) then
      sclk_d1 <= sclk;
      sclk_d2 <= sclk_d1;

      cs_n_d1 <= cs_n;
      cs_n_d2 <= cs_n_d1;

      mosi_d1 <= mosi;
      mosi_d2 <= mosi_d1;
    end if;
  end process prevent_metastability;

  delay_sclk : process (ctrl.clk) is
  begin
    if rising_edge(ctrl.clk) then
      sclk_d3 <= sclk_d2;
    end if;
  end process delay_sclk;

  fsm_nextstate : process (ctrl.clk) is

    -- This function abstracts away the decisionmaking about what to do given different values of cpol and cpha.
    -- Hopefully, because cpol and cpha are constant in this block, the FPGA will not synthesize the parts
    -- of the if statements which are not reached.
    function is_it_time_to_capture(the_sclk   : in std_logic;
                                   the_sclk_d : in std_logic;
                                   the_cpha   : in integer;
                                   the_cpol   : in integer) return boolean is
    begin
      if the_cpol = 0 and the_cpha = 0 then
        return the_sclk_d = '0' and the_sclk = '1';
        
      elsif the_cpol = 0 and the_cpha = 1 then
        return the_sclk_d = '1' and the_sclk = '0';
        
      elsif the_cpol = 1 and the_cpha = 0 then
        return the_sclk_d = '1' and the_sclk = '0';

      -- otherwise the_cpol = 1 and the_cpha = 1
      else
        return the_sclk_d = '0' and the_sclk = '1';
      end if;
    end is_it_time_to_capture;

  begin
    if rising_edge(ctrl.clk) then
      if ctrl.reset_n = '0' then
        state     <= disabled;
        bit_index <= spi_word_length - 1;
        data      <= (others => '0');
        new_data <= '0';
      else
        new_data <= '0';

        if cs_n_d2 = '1' then
          state <= disabled;
        else
          -- cs is enabled. Let's do stuff!
          case state is
            when disabled =>
              state     <= wait_until_time_to_capture;
              bit_index <= spi_word_length - 1;

            when wait_until_time_to_capture =>
              if is_it_time_to_capture(sclk_d2, sclk_d3, cpha, cpol) then
                data(bit_index) <= mosi_d2;

                --We could push this functionality into another state if necessary.
                if bit_index = 0 then
                  bit_index <= spi_word_length - 1;
                  new_data  <= '1';
                  state     <= hold_data;
                else
                  bit_index <= bit_index - 1;
                end if;
              end if;

            -- This state exists to guarantee that data will be valid in the clock cycle after
            -- new_data is flagged.
            when hold_data =>
              state <= wait_until_time_to_capture;
              
          end case;
        end if;
      end if;
    end if;
  end process fsm_nextstate;
end architecture rtl;

----------------------------------------------------------------------------------------------------
