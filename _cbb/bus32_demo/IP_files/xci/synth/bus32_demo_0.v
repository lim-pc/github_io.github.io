// (c) Copyright 1995-2019 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: sinux.com:user:bus32_demo:1.0
// IP Revision: 3

(* X_CORE_INFO = "bus32_demo,Vivado 2018.2" *)
(* CHECK_LICENSE_TYPE = "bus32_demo_0,bus32_demo,{}" *)
(* IP_DEFINITION_SOURCE = "package_project" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module bus32_demo_0 (
  clock_in,
  reset_in,
  epc_addr_in,
  epc_data_out,
  epc_data_in,
  epc_be_in,
  epc_cs_n_in,
  epc_wr_n_in,
  epc_rd_n_in,
  epc_rdy_out,
  control_0_out,
  control_1_out,
  status_0_in,
  status_1_in
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clock_in, ASSOCIATED_RESET reset_in, ASSOCIATED_BUSIF S_EPC, FREQ_HZ 100000000, PHASE 0.000" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clock_in CLK, xilinx.com:interface:epc:1.0 S_EPC CLK" *)
input wire clock_in;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME reset_in, POLARITY ACTIVE_LOW" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 reset_in RST, xilinx.com:interface:epc:1.0 S_EPC RST" *)
input wire reset_in;
(* X_INTERFACE_INFO = "xilinx.com:interface:epc:1.0 S_EPC ADDR" *)
input wire [31 : 0] epc_addr_in;
(* X_INTERFACE_INFO = "xilinx.com:interface:epc:1.0 S_EPC DATA_O" *)
output wire [31 : 0] epc_data_out;
(* X_INTERFACE_INFO = "xilinx.com:interface:epc:1.0 S_EPC DATA_I" *)
input wire [31 : 0] epc_data_in;
(* X_INTERFACE_INFO = "xilinx.com:interface:epc:1.0 S_EPC BE" *)
input wire [3 : 0] epc_be_in;
(* X_INTERFACE_INFO = "xilinx.com:interface:epc:1.0 S_EPC CS_N" *)
input wire epc_cs_n_in;
(* X_INTERFACE_INFO = "xilinx.com:interface:epc:1.0 S_EPC WR_N" *)
input wire epc_wr_n_in;
(* X_INTERFACE_INFO = "xilinx.com:interface:epc:1.0 S_EPC RD_N" *)
input wire epc_rd_n_in;
(* X_INTERFACE_INFO = "xilinx.com:interface:epc:1.0 S_EPC RDY" *)
output wire epc_rdy_out;
output wire control_0_out;
output wire control_1_out;
input wire status_0_in;
input wire status_1_in;

  bus32_demo #(
    .datawidth(32),
    .addrwidth(8)
  ) inst (
    .clock_in(clock_in),
    .reset_in(reset_in),
    .epc_addr_in(epc_addr_in),
    .epc_data_out(epc_data_out),
    .epc_data_in(epc_data_in),
    .epc_be_in(epc_be_in),
    .epc_cs_n_in(epc_cs_n_in),
    .epc_wr_n_in(epc_wr_n_in),
    .epc_rd_n_in(epc_rd_n_in),
    .epc_rdy_out(epc_rdy_out),
    .control_0_out(control_0_out),
    .control_1_out(control_1_out),
    .status_0_in(status_0_in),
    .status_1_in(status_1_in)
  );
endmodule
