-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.1 (lin64) Build 1846317 Fri Apr 14 18:54:47 MDT 2017
-- Date        : Mon May  8 13:48:20 2017
-- Host        : 3rdyearlabdesign running 64-bit Ubuntu 17.04
-- Command     : write_vhdl -force -mode synth_stub
--               /home/will/redpitaya/fpga_examples/redpitaya_guide/tmp/1_led_blink/1_led_blink.srcs/sources_1/bd/system/ip/system_util_ds_buf_2_0/system_util_ds_buf_2_0_stub.vhdl
-- Design      : system_util_ds_buf_2_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity system_util_ds_buf_2_0 is
  Port ( 
    OBUF_IN : in STD_LOGIC_VECTOR ( 1 downto 0 );
    OBUF_DS_P : out STD_LOGIC_VECTOR ( 1 downto 0 );
    OBUF_DS_N : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );

end system_util_ds_buf_2_0;

architecture stub of system_util_ds_buf_2_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "OBUF_IN[1:0],OBUF_DS_P[1:0],OBUF_DS_N[1:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "util_ds_buf,Vivado 2017.1";
begin
end;
