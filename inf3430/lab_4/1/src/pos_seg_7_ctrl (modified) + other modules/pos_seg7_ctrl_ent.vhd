library ieee;
use ieee.std_logic_1164.all;

entity pos_seg7_ctrl is
  port (
    rst          : in  std_logic;
    rst_div      : in  std_logic;
    mclk         : in  std_logic;
    mclk_div     : in  std_logic;
    sync_rst     : in  std_logic;
    sp           : in  std_logic_vector(7 downto 0);  -- Set Point
    a            : in  std_logic;       -- From position sensor
    b            : in  std_logic;       -- From position sensor
    force_cw     : in  std_logic;       -- Force motor clock wise motion
    force_ccw    : in  std_logic;  -- Force motor counter clock wise motion
    motor_cw     : out std_logic;       -- Motor clock wise motion
    motor_ccw    : out std_logic;       -- Motor counter clock wise motion
    -- Interface to seven segments
    abcdefgdec_n : out std_logic_vector(7 downto 0);
    a_n          : out std_logic_vector(3 downto 0)
    );
end pos_seg7_ctrl;
