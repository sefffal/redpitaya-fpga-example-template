// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.1 (lin64) Build 1846317 Fri Apr 14 18:54:47 MDT 2017
// Date        : Mon May  8 13:55:20 2017
// Host        : 3rdyearlabdesign running 64-bit unknown
// Command     : write_verilog -force -mode synth_stub
//               /home/will/redpitaya/fpga_examples/redpitaya_guide/tmp/1_led_blink/1_led_blink.srcs/sources_1/bd/system/ip/system_util_ds_buf_1_0/system_util_ds_buf_1_0_stub.v
// Design      : system_util_ds_buf_1_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "util_ds_buf,Vivado 2017.1" *)
module system_util_ds_buf_1_0(IBUF_DS_P, IBUF_DS_N, IBUF_OUT)
/* synthesis syn_black_box black_box_pad_pin="IBUF_DS_P[1:0],IBUF_DS_N[1:0],IBUF_OUT[1:0]" */;
  input [1:0]IBUF_DS_P;
  input [1:0]IBUF_DS_N;
  output [1:0]IBUF_OUT;
endmodule
