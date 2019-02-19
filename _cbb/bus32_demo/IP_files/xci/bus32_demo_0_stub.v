// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Mon Jan 28 16:14:08 2019
// Host        : tanggl1 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top bus32_demo_0 -prefix
//               bus32_demo_0_ bus32_demo_0_stub.v
// Design      : bus32_demo_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z100ffg900-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "bus32_demo,Vivado 2018.2" *)
module bus32_demo_0(clock_in, reset_in, epc_addr_in, epc_data_out, 
  epc_data_in, epc_be_in, epc_cs_n_in, epc_wr_n_in, epc_rd_n_in, epc_rdy_out, control_0_out, 
  control_1_out, status_0_in, status_1_in)
/* synthesis syn_black_box black_box_pad_pin="clock_in,reset_in,epc_addr_in[31:0],epc_data_out[31:0],epc_data_in[31:0],epc_be_in[3:0],epc_cs_n_in,epc_wr_n_in,epc_rd_n_in,epc_rdy_out,control_0_out,control_1_out,status_0_in,status_1_in" */;
  input clock_in;
  input reset_in;
  input [31:0]epc_addr_in;
  output [31:0]epc_data_out;
  input [31:0]epc_data_in;
  input [3:0]epc_be_in;
  input epc_cs_n_in;
  input epc_wr_n_in;
  input epc_rd_n_in;
  output epc_rdy_out;
  output control_0_out;
  output control_1_out;
  input status_0_in;
  input status_1_in;
endmodule
