//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
//Date        : Mon Jan 28 17:25:55 2019
//Host        : tanggl1 running 64-bit major release  (build 9200)
//Command     : generate_target bus32_demo_block_wrapper.bd
//Design      : bus32_demo_block_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module bus32_demo_block_wrapper
   (S_EPC_0_addr,
    S_EPC_0_be,
    S_EPC_0_clk,
    S_EPC_0_cs_n,
    S_EPC_0_data_i,
    S_EPC_0_data_o,
    S_EPC_0_rd_n,
    S_EPC_0_rdy,
    S_EPC_0_rst,
    S_EPC_0_wr_n,
    control_0_out_0,
    control_1_out_0,
    status_0_in_0,
    status_1_in_0);
  input [31:0]S_EPC_0_addr;
  input [3:0]S_EPC_0_be;
  input S_EPC_0_clk;
  input S_EPC_0_cs_n;
  input [31:0]S_EPC_0_data_i;
  output [31:0]S_EPC_0_data_o;
  input S_EPC_0_rd_n;
  output S_EPC_0_rdy;
  input S_EPC_0_rst;
  input S_EPC_0_wr_n;
  output control_0_out_0;
  output control_1_out_0;
  input status_0_in_0;
  input status_1_in_0;

  wire [31:0]S_EPC_0_addr;
  wire [3:0]S_EPC_0_be;
  wire S_EPC_0_clk;
  wire S_EPC_0_cs_n;
  wire [31:0]S_EPC_0_data_i;
  wire [31:0]S_EPC_0_data_o;
  wire S_EPC_0_rd_n;
  wire S_EPC_0_rdy;
  wire S_EPC_0_rst;
  wire S_EPC_0_wr_n;
  wire control_0_out_0;
  wire control_1_out_0;
  wire status_0_in_0;
  wire status_1_in_0;

  bus32_demo_block bus32_demo_block_i
       (.S_EPC_0_addr(S_EPC_0_addr),
        .S_EPC_0_be(S_EPC_0_be),
        .S_EPC_0_clk(S_EPC_0_clk),
        .S_EPC_0_cs_n(S_EPC_0_cs_n),
        .S_EPC_0_data_i(S_EPC_0_data_i),
        .S_EPC_0_data_o(S_EPC_0_data_o),
        .S_EPC_0_rd_n(S_EPC_0_rd_n),
        .S_EPC_0_rdy(S_EPC_0_rdy),
        .S_EPC_0_rst(S_EPC_0_rst),
        .S_EPC_0_wr_n(S_EPC_0_wr_n),
        .control_0_out_0(control_0_out_0),
        .control_1_out_0(control_1_out_0),
        .status_0_in_0(status_0_in_0),
        .status_1_in_0(status_1_in_0));
endmodule
