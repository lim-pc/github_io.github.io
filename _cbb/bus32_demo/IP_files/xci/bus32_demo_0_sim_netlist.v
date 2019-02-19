// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Mon Jan 28 16:14:08 2019
// Host        : tanggl1 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top bus32_demo_0 -prefix
//               bus32_demo_0_ bus32_demo_0_sim_netlist.v
// Design      : bus32_demo_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z100ffg900-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module bus32_demo_0_bus32_demo
   (control_1_out,
    epc_data_out,
    epc_rdy_out,
    control_0_out,
    epc_addr_in,
    reset_in,
    clock_in,
    epc_data_in,
    epc_rd_n_in,
    epc_wr_n_in,
    epc_cs_n_in,
    epc_be_in,
    status_1_in,
    status_0_in);
  output control_1_out;
  output [7:0]epc_data_out;
  output epc_rdy_out;
  output control_0_out;
  input [7:0]epc_addr_in;
  input reset_in;
  input clock_in;
  input [7:0]epc_data_in;
  input epc_rd_n_in;
  input epc_wr_n_in;
  input epc_cs_n_in;
  input [0:0]epc_be_in;
  input status_1_in;
  input status_0_in;

  wire clock_in;
  wire control_0_out;
  wire control_1_out;
  wire [7:0]epc_addr_in;
  wire [0:0]epc_be_in;
  wire epc_cs_n_in;
  wire [7:0]epc_data_in;
  wire [7:0]epc_data_out;
  wire epc_rd_n_in;
  wire epc_rdy_out;
  wire epc_wr_n_in;
  wire reset_in;
  wire status_0_in;
  wire status_1_in;

  bus32_demo_0_bus32_demo_cell bus32_demo_cell_inst
       (.clock_in(clock_in),
        .control_0_out(control_0_out),
        .control_1_out(control_1_out),
        .epc_addr_in(epc_addr_in),
        .epc_be_in(epc_be_in),
        .epc_cs_n_in(epc_cs_n_in),
        .epc_data_in(epc_data_in),
        .epc_data_out(epc_data_out),
        .epc_rd_n_in(epc_rd_n_in),
        .epc_rdy_out(epc_rdy_out),
        .epc_wr_n_in(epc_wr_n_in),
        .reset_in(reset_in),
        .status_0_in(status_0_in),
        .status_1_in(status_1_in));
endmodule

(* CHECK_LICENSE_TYPE = "bus32_demo_0,bus32_demo,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* X_CORE_INFO = "bus32_demo,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module bus32_demo_0
   (clock_in,
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
    status_1_in);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clock_in CLK, xilinx.com:interface:epc:1.0 S_EPC CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clock_in, ASSOCIATED_RESET reset_in, ASSOCIATED_BUSIF S_EPC, FREQ_HZ 100000000, PHASE 0.000" *) input clock_in;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 reset_in RST, xilinx.com:interface:epc:1.0 S_EPC RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME reset_in, POLARITY ACTIVE_LOW" *) input reset_in;
  (* X_INTERFACE_INFO = "xilinx.com:interface:epc:1.0 S_EPC ADDR" *) input [31:0]epc_addr_in;
  (* X_INTERFACE_INFO = "xilinx.com:interface:epc:1.0 S_EPC DATA_O" *) output [31:0]epc_data_out;
  (* X_INTERFACE_INFO = "xilinx.com:interface:epc:1.0 S_EPC DATA_I" *) input [31:0]epc_data_in;
  (* X_INTERFACE_INFO = "xilinx.com:interface:epc:1.0 S_EPC BE" *) input [3:0]epc_be_in;
  (* X_INTERFACE_INFO = "xilinx.com:interface:epc:1.0 S_EPC CS_N" *) input epc_cs_n_in;
  (* X_INTERFACE_INFO = "xilinx.com:interface:epc:1.0 S_EPC WR_N" *) input epc_wr_n_in;
  (* X_INTERFACE_INFO = "xilinx.com:interface:epc:1.0 S_EPC RD_N" *) input epc_rd_n_in;
  (* X_INTERFACE_INFO = "xilinx.com:interface:epc:1.0 S_EPC RDY" *) output epc_rdy_out;
  output control_0_out;
  output control_1_out;
  input status_0_in;
  input status_1_in;

  wire \<const0> ;
  wire clock_in;
  wire control_0_out;
  wire control_1_out;
  wire [31:0]epc_addr_in;
  wire [3:0]epc_be_in;
  wire epc_cs_n_in;
  wire [31:0]epc_data_in;
  wire [7:0]\^epc_data_out ;
  wire epc_rd_n_in;
  wire epc_rdy_out;
  wire epc_wr_n_in;
  wire reset_in;
  wire status_0_in;
  wire status_1_in;

  assign epc_data_out[31] = \<const0> ;
  assign epc_data_out[30] = \<const0> ;
  assign epc_data_out[29] = \<const0> ;
  assign epc_data_out[28] = \<const0> ;
  assign epc_data_out[27] = \<const0> ;
  assign epc_data_out[26] = \<const0> ;
  assign epc_data_out[25] = \<const0> ;
  assign epc_data_out[24] = \<const0> ;
  assign epc_data_out[23] = \<const0> ;
  assign epc_data_out[22] = \<const0> ;
  assign epc_data_out[21] = \<const0> ;
  assign epc_data_out[20] = \<const0> ;
  assign epc_data_out[19] = \<const0> ;
  assign epc_data_out[18] = \<const0> ;
  assign epc_data_out[17] = \<const0> ;
  assign epc_data_out[16] = \<const0> ;
  assign epc_data_out[15] = \<const0> ;
  assign epc_data_out[14] = \<const0> ;
  assign epc_data_out[13] = \<const0> ;
  assign epc_data_out[12] = \<const0> ;
  assign epc_data_out[11] = \<const0> ;
  assign epc_data_out[10] = \<const0> ;
  assign epc_data_out[9] = \<const0> ;
  assign epc_data_out[8] = \<const0> ;
  assign epc_data_out[7:0] = \^epc_data_out [7:0];
  GND GND
       (.G(\<const0> ));
  bus32_demo_0_bus32_demo inst
       (.clock_in(clock_in),
        .control_0_out(control_0_out),
        .control_1_out(control_1_out),
        .epc_addr_in(epc_addr_in[7:0]),
        .epc_be_in(epc_be_in[0]),
        .epc_cs_n_in(epc_cs_n_in),
        .epc_data_in(epc_data_in[7:0]),
        .epc_data_out(\^epc_data_out ),
        .epc_rd_n_in(epc_rd_n_in),
        .epc_rdy_out(epc_rdy_out),
        .epc_wr_n_in(epc_wr_n_in),
        .reset_in(reset_in),
        .status_0_in(status_0_in),
        .status_1_in(status_1_in));
endmodule

module bus32_demo_0_bus32_demo_cell
   (control_1_out,
    epc_data_out,
    epc_rdy_out,
    control_0_out,
    epc_addr_in,
    reset_in,
    clock_in,
    epc_data_in,
    epc_rd_n_in,
    epc_wr_n_in,
    epc_cs_n_in,
    epc_be_in,
    status_1_in,
    status_0_in);
  output control_1_out;
  output [7:0]epc_data_out;
  output epc_rdy_out;
  output control_0_out;
  input [7:0]epc_addr_in;
  input reset_in;
  input clock_in;
  input [7:0]epc_data_in;
  input epc_rd_n_in;
  input epc_wr_n_in;
  input epc_cs_n_in;
  input [0:0]epc_be_in;
  input status_1_in;
  input status_0_in;

  wire clock_in;
  wire control_0_out;
  wire control_1_out;
  wire [7:0]epc_addr_in;
  wire [0:0]epc_be_in;
  wire epc_cs_n_in;
  wire [7:0]epc_data_in;
  wire [7:0]epc_data_out;
  wire epc_rd_n_in;
  wire epc_rdy_out;
  wire epc_wr_n_in;
  wire \gc_reg[0]_i_1_n_0 ;
  wire \gc_reg[0]_i_2_n_0 ;
  wire \gc_reg[1]_i_2_n_0 ;
  wire \gc_reg[1]_i_3_n_0 ;
  wire \gc_reg_reg_n_0_[2] ;
  wire \gc_reg_reg_n_0_[3] ;
  wire \gc_reg_reg_n_0_[4] ;
  wire \gc_reg_reg_n_0_[5] ;
  wire \gc_reg_reg_n_0_[6] ;
  wire \gc_reg_reg_n_0_[7] ;
  wire i__carry_i_1__0_n_0;
  wire i__carry_i_1_n_0;
  wire i__carry_i_2__0_n_0;
  wire i__carry_i_2_n_0;
  wire i__carry_i_3__0_n_0;
  wire i__carry_i_3_n_0;
  wire i__carry_i_4__0_n_0;
  wire i__carry_i_4_n_0;
  wire i__carry_i_5__0_n_0;
  wire i__carry_i_5_n_0;
  wire [7:1]p_0_in;
  wire [7:1]p_0_in__0;
  wire [1:1]p_1_in;
  wire read_data_reg;
  wire \read_data_reg[0]_i_1_n_0 ;
  wire \read_data_reg[1]_i_1_n_0 ;
  wire \read_data_reg[2]_i_1_n_0 ;
  wire \read_data_reg[3]_i_1_n_0 ;
  wire \read_data_reg[4]_i_1_n_0 ;
  wire \read_data_reg[5]_i_1_n_0 ;
  wire \read_data_reg[6]_i_1_n_0 ;
  wire \read_data_reg[7]_i_2_n_0 ;
  wire \read_data_reg[7]_i_3_n_0 ;
  wire \read_data_reg[7]_i_4_n_0 ;
  wire read_wait_cnt;
  wire \read_wait_cnt0_inferred__0/i__carry_n_0 ;
  wire \read_wait_cnt0_inferred__0/i__carry_n_1 ;
  wire \read_wait_cnt0_inferred__0/i__carry_n_2 ;
  wire \read_wait_cnt0_inferred__0/i__carry_n_3 ;
  wire \read_wait_cnt[0]_i_1_n_0 ;
  wire \read_wait_cnt[7]_i_3_n_0 ;
  wire [7:0]read_wait_cnt_reg__0;
  wire [1:0]read_wait_num;
  wire \read_wait_num[1]_i_1_n_0 ;
  wire reset_in;
  wire status_0_in;
  wire status_1_in;
  wire \write_wait_cnt0_inferred__0/i__carry_n_0 ;
  wire \write_wait_cnt0_inferred__0/i__carry_n_1 ;
  wire \write_wait_cnt0_inferred__0/i__carry_n_2 ;
  wire \write_wait_cnt0_inferred__0/i__carry_n_3 ;
  wire \write_wait_cnt[0]_i_1_n_0 ;
  wire \write_wait_cnt[7]_i_2_n_0 ;
  wire [7:0]write_wait_cnt_reg__0;
  wire [0:0]write_wait_num;
  wire [3:0]\NLW_read_wait_cnt0_inferred__0/i__carry_O_UNCONNECTED ;
  wire [3:0]\NLW_write_wait_cnt0_inferred__0/i__carry_O_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00030500)) 
    epc_rdy_out_INST_0
       (.I0(\write_wait_cnt0_inferred__0/i__carry_n_0 ),
        .I1(\read_wait_cnt0_inferred__0/i__carry_n_0 ),
        .I2(epc_cs_n_in),
        .I3(epc_rd_n_in),
        .I4(epc_wr_n_in),
        .O(epc_rdy_out));
  LUT6 #(
    .INIT(64'h0000000000000008)) 
    \gc_reg[0]_i_1 
       (.I0(epc_rd_n_in),
        .I1(\gc_reg[0]_i_2_n_0 ),
        .I2(\write_wait_cnt0_inferred__0/i__carry_n_0 ),
        .I3(epc_wr_n_in),
        .I4(reset_in),
        .I5(epc_cs_n_in),
        .O(\gc_reg[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFBFFFFF00800000)) 
    \gc_reg[0]_i_2 
       (.I0(epc_data_in[0]),
        .I1(epc_be_in),
        .I2(epc_addr_in[2]),
        .I3(epc_addr_in[3]),
        .I4(\read_data_reg[7]_i_4_n_0 ),
        .I5(control_0_out),
        .O(\gc_reg[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    \gc_reg[1]_i_1 
       (.I0(epc_be_in),
        .I1(\read_data_reg[7]_i_4_n_0 ),
        .I2(\gc_reg[1]_i_2_n_0 ),
        .I3(epc_wr_n_in),
        .I4(\write_wait_cnt0_inferred__0/i__carry_n_0 ),
        .I5(\gc_reg[1]_i_3_n_0 ),
        .O(p_1_in));
  LUT2 #(
    .INIT(4'h1)) 
    \gc_reg[1]_i_2 
       (.I0(epc_addr_in[3]),
        .I1(epc_cs_n_in),
        .O(\gc_reg[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \gc_reg[1]_i_3 
       (.I0(epc_rd_n_in),
        .I1(epc_addr_in[2]),
        .O(\gc_reg[1]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gc_reg_reg[0] 
       (.C(clock_in),
        .CE(1'b1),
        .D(\gc_reg[0]_i_1_n_0 ),
        .Q(control_0_out),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gc_reg_reg[1] 
       (.C(clock_in),
        .CE(p_1_in),
        .D(epc_data_in[1]),
        .Q(control_1_out),
        .R(reset_in));
  FDRE #(
    .INIT(1'b0)) 
    \gc_reg_reg[2] 
       (.C(clock_in),
        .CE(p_1_in),
        .D(epc_data_in[2]),
        .Q(\gc_reg_reg_n_0_[2] ),
        .R(reset_in));
  FDRE #(
    .INIT(1'b0)) 
    \gc_reg_reg[3] 
       (.C(clock_in),
        .CE(p_1_in),
        .D(epc_data_in[3]),
        .Q(\gc_reg_reg_n_0_[3] ),
        .R(reset_in));
  FDRE #(
    .INIT(1'b0)) 
    \gc_reg_reg[4] 
       (.C(clock_in),
        .CE(p_1_in),
        .D(epc_data_in[4]),
        .Q(\gc_reg_reg_n_0_[4] ),
        .R(reset_in));
  FDRE #(
    .INIT(1'b0)) 
    \gc_reg_reg[5] 
       (.C(clock_in),
        .CE(p_1_in),
        .D(epc_data_in[5]),
        .Q(\gc_reg_reg_n_0_[5] ),
        .R(reset_in));
  FDRE #(
    .INIT(1'b0)) 
    \gc_reg_reg[6] 
       (.C(clock_in),
        .CE(p_1_in),
        .D(epc_data_in[6]),
        .Q(\gc_reg_reg_n_0_[6] ),
        .R(reset_in));
  FDRE #(
    .INIT(1'b0)) 
    \gc_reg_reg[7] 
       (.C(clock_in),
        .CE(p_1_in),
        .D(epc_data_in[7]),
        .Q(\gc_reg_reg_n_0_[7] ),
        .R(reset_in));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry_i_1
       (.I0(read_wait_num[1]),
        .I1(read_wait_cnt_reg__0[1]),
        .I2(read_wait_num[0]),
        .I3(read_wait_cnt_reg__0[0]),
        .O(i__carry_i_1_n_0));
  LUT3 #(
    .INIT(8'h10)) 
    i__carry_i_1__0
       (.I0(write_wait_cnt_reg__0[1]),
        .I1(write_wait_cnt_reg__0[0]),
        .I2(write_wait_num),
        .O(i__carry_i_1__0_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry_i_2
       (.I0(read_wait_cnt_reg__0[7]),
        .I1(read_wait_cnt_reg__0[6]),
        .O(i__carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry_i_2__0
       (.I0(write_wait_cnt_reg__0[7]),
        .I1(write_wait_cnt_reg__0[6]),
        .O(i__carry_i_2__0_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry_i_3
       (.I0(read_wait_cnt_reg__0[4]),
        .I1(read_wait_cnt_reg__0[5]),
        .O(i__carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry_i_3__0
       (.I0(write_wait_cnt_reg__0[4]),
        .I1(write_wait_cnt_reg__0[5]),
        .O(i__carry_i_3__0_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry_i_4
       (.I0(read_wait_cnt_reg__0[2]),
        .I1(read_wait_cnt_reg__0[3]),
        .O(i__carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry_i_4__0
       (.I0(write_wait_cnt_reg__0[2]),
        .I1(write_wait_cnt_reg__0[3]),
        .O(i__carry_i_4__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_5
       (.I0(read_wait_num[1]),
        .I1(read_wait_cnt_reg__0[1]),
        .I2(read_wait_num[0]),
        .I3(read_wait_cnt_reg__0[0]),
        .O(i__carry_i_5_n_0));
  LUT3 #(
    .INIT(8'h09)) 
    i__carry_i_5__0
       (.I0(write_wait_num),
        .I1(write_wait_cnt_reg__0[0]),
        .I2(write_wait_cnt_reg__0[1]),
        .O(i__carry_i_5__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hB0BB)) 
    \read_data_reg[0]_i_1 
       (.I0(control_0_out),
        .I1(epc_addr_in[2]),
        .I2(status_0_in),
        .I3(epc_addr_in[3]),
        .O(\read_data_reg[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \read_data_reg[1]_i_1 
       (.I0(epc_addr_in[2]),
        .I1(control_1_out),
        .I2(epc_addr_in[3]),
        .I3(status_1_in),
        .O(\read_data_reg[1]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \read_data_reg[2]_i_1 
       (.I0(\gc_reg_reg_n_0_[2] ),
        .I1(epc_addr_in[2]),
        .O(\read_data_reg[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \read_data_reg[3]_i_1 
       (.I0(\gc_reg_reg_n_0_[3] ),
        .I1(epc_addr_in[2]),
        .O(\read_data_reg[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \read_data_reg[4]_i_1 
       (.I0(\gc_reg_reg_n_0_[4] ),
        .I1(epc_addr_in[2]),
        .O(\read_data_reg[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \read_data_reg[5]_i_1 
       (.I0(\gc_reg_reg_n_0_[5] ),
        .I1(epc_addr_in[2]),
        .O(\read_data_reg[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \read_data_reg[6]_i_1 
       (.I0(\gc_reg_reg_n_0_[6] ),
        .I1(epc_addr_in[2]),
        .O(\read_data_reg[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00150000)) 
    \read_data_reg[7]_i_1 
       (.I0(\read_data_reg[7]_i_3_n_0 ),
        .I1(epc_addr_in[3]),
        .I2(epc_addr_in[2]),
        .I3(\read_wait_cnt0_inferred__0/i__carry_n_0 ),
        .I4(\read_data_reg[7]_i_4_n_0 ),
        .O(read_data_reg));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \read_data_reg[7]_i_2 
       (.I0(\gc_reg_reg_n_0_[7] ),
        .I1(epc_addr_in[2]),
        .O(\read_data_reg[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    \read_data_reg[7]_i_3 
       (.I0(epc_cs_n_in),
        .I1(epc_rd_n_in),
        .I2(epc_wr_n_in),
        .O(\read_data_reg[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \read_data_reg[7]_i_4 
       (.I0(epc_addr_in[4]),
        .I1(epc_addr_in[5]),
        .I2(epc_addr_in[6]),
        .I3(epc_addr_in[7]),
        .I4(epc_addr_in[1]),
        .I5(epc_addr_in[0]),
        .O(\read_data_reg[7]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \read_data_reg_reg[0] 
       (.C(clock_in),
        .CE(read_data_reg),
        .D(\read_data_reg[0]_i_1_n_0 ),
        .Q(epc_data_out[0]),
        .R(reset_in));
  FDRE #(
    .INIT(1'b0)) 
    \read_data_reg_reg[1] 
       (.C(clock_in),
        .CE(read_data_reg),
        .D(\read_data_reg[1]_i_1_n_0 ),
        .Q(epc_data_out[1]),
        .R(reset_in));
  FDRE #(
    .INIT(1'b0)) 
    \read_data_reg_reg[2] 
       (.C(clock_in),
        .CE(read_data_reg),
        .D(\read_data_reg[2]_i_1_n_0 ),
        .Q(epc_data_out[2]),
        .R(reset_in));
  FDRE #(
    .INIT(1'b0)) 
    \read_data_reg_reg[3] 
       (.C(clock_in),
        .CE(read_data_reg),
        .D(\read_data_reg[3]_i_1_n_0 ),
        .Q(epc_data_out[3]),
        .R(reset_in));
  FDRE #(
    .INIT(1'b0)) 
    \read_data_reg_reg[4] 
       (.C(clock_in),
        .CE(read_data_reg),
        .D(\read_data_reg[4]_i_1_n_0 ),
        .Q(epc_data_out[4]),
        .R(reset_in));
  FDRE #(
    .INIT(1'b0)) 
    \read_data_reg_reg[5] 
       (.C(clock_in),
        .CE(read_data_reg),
        .D(\read_data_reg[5]_i_1_n_0 ),
        .Q(epc_data_out[5]),
        .R(reset_in));
  FDRE #(
    .INIT(1'b0)) 
    \read_data_reg_reg[6] 
       (.C(clock_in),
        .CE(read_data_reg),
        .D(\read_data_reg[6]_i_1_n_0 ),
        .Q(epc_data_out[6]),
        .R(reset_in));
  FDRE #(
    .INIT(1'b0)) 
    \read_data_reg_reg[7] 
       (.C(clock_in),
        .CE(read_data_reg),
        .D(\read_data_reg[7]_i_2_n_0 ),
        .Q(epc_data_out[7]),
        .R(reset_in));
  CARRY4 \read_wait_cnt0_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\read_wait_cnt0_inferred__0/i__carry_n_0 ,\read_wait_cnt0_inferred__0/i__carry_n_1 ,\read_wait_cnt0_inferred__0/i__carry_n_2 ,\read_wait_cnt0_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,i__carry_i_1_n_0}),
        .O(\NLW_read_wait_cnt0_inferred__0/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_2_n_0,i__carry_i_3_n_0,i__carry_i_4_n_0,i__carry_i_5_n_0}));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \read_wait_cnt[0]_i_1 
       (.I0(read_wait_cnt_reg__0[0]),
        .O(\read_wait_cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \read_wait_cnt[1]_i_1 
       (.I0(read_wait_cnt_reg__0[0]),
        .I1(read_wait_cnt_reg__0[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \read_wait_cnt[2]_i_1 
       (.I0(read_wait_cnt_reg__0[1]),
        .I1(read_wait_cnt_reg__0[0]),
        .I2(read_wait_cnt_reg__0[2]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \read_wait_cnt[3]_i_1 
       (.I0(read_wait_cnt_reg__0[2]),
        .I1(read_wait_cnt_reg__0[0]),
        .I2(read_wait_cnt_reg__0[1]),
        .I3(read_wait_cnt_reg__0[3]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \read_wait_cnt[4]_i_1 
       (.I0(read_wait_cnt_reg__0[3]),
        .I1(read_wait_cnt_reg__0[1]),
        .I2(read_wait_cnt_reg__0[0]),
        .I3(read_wait_cnt_reg__0[2]),
        .I4(read_wait_cnt_reg__0[4]),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \read_wait_cnt[5]_i_1 
       (.I0(read_wait_cnt_reg__0[4]),
        .I1(read_wait_cnt_reg__0[2]),
        .I2(read_wait_cnt_reg__0[0]),
        .I3(read_wait_cnt_reg__0[1]),
        .I4(read_wait_cnt_reg__0[3]),
        .I5(read_wait_cnt_reg__0[5]),
        .O(p_0_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \read_wait_cnt[6]_i_1 
       (.I0(\read_wait_cnt[7]_i_3_n_0 ),
        .I1(read_wait_cnt_reg__0[4]),
        .I2(read_wait_cnt_reg__0[5]),
        .I3(read_wait_cnt_reg__0[6]),
        .O(p_0_in[6]));
  LUT4 #(
    .INIT(16'hFFFD)) 
    \read_wait_cnt[7]_i_1 
       (.I0(epc_wr_n_in),
        .I1(epc_rd_n_in),
        .I2(epc_cs_n_in),
        .I3(reset_in),
        .O(read_wait_cnt));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \read_wait_cnt[7]_i_2 
       (.I0(\read_wait_cnt[7]_i_3_n_0 ),
        .I1(read_wait_cnt_reg__0[6]),
        .I2(read_wait_cnt_reg__0[5]),
        .I3(read_wait_cnt_reg__0[4]),
        .I4(read_wait_cnt_reg__0[7]),
        .O(p_0_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \read_wait_cnt[7]_i_3 
       (.I0(read_wait_cnt_reg__0[2]),
        .I1(read_wait_cnt_reg__0[0]),
        .I2(read_wait_cnt_reg__0[1]),
        .I3(read_wait_cnt_reg__0[3]),
        .O(\read_wait_cnt[7]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \read_wait_cnt_reg[0] 
       (.C(clock_in),
        .CE(\read_wait_cnt0_inferred__0/i__carry_n_0 ),
        .D(\read_wait_cnt[0]_i_1_n_0 ),
        .Q(read_wait_cnt_reg__0[0]),
        .R(read_wait_cnt));
  FDRE #(
    .INIT(1'b0)) 
    \read_wait_cnt_reg[1] 
       (.C(clock_in),
        .CE(\read_wait_cnt0_inferred__0/i__carry_n_0 ),
        .D(p_0_in[1]),
        .Q(read_wait_cnt_reg__0[1]),
        .R(read_wait_cnt));
  FDRE #(
    .INIT(1'b0)) 
    \read_wait_cnt_reg[2] 
       (.C(clock_in),
        .CE(\read_wait_cnt0_inferred__0/i__carry_n_0 ),
        .D(p_0_in[2]),
        .Q(read_wait_cnt_reg__0[2]),
        .R(read_wait_cnt));
  FDRE #(
    .INIT(1'b0)) 
    \read_wait_cnt_reg[3] 
       (.C(clock_in),
        .CE(\read_wait_cnt0_inferred__0/i__carry_n_0 ),
        .D(p_0_in[3]),
        .Q(read_wait_cnt_reg__0[3]),
        .R(read_wait_cnt));
  FDRE #(
    .INIT(1'b0)) 
    \read_wait_cnt_reg[4] 
       (.C(clock_in),
        .CE(\read_wait_cnt0_inferred__0/i__carry_n_0 ),
        .D(p_0_in[4]),
        .Q(read_wait_cnt_reg__0[4]),
        .R(read_wait_cnt));
  FDRE #(
    .INIT(1'b0)) 
    \read_wait_cnt_reg[5] 
       (.C(clock_in),
        .CE(\read_wait_cnt0_inferred__0/i__carry_n_0 ),
        .D(p_0_in[5]),
        .Q(read_wait_cnt_reg__0[5]),
        .R(read_wait_cnt));
  FDRE #(
    .INIT(1'b0)) 
    \read_wait_cnt_reg[6] 
       (.C(clock_in),
        .CE(\read_wait_cnt0_inferred__0/i__carry_n_0 ),
        .D(p_0_in[6]),
        .Q(read_wait_cnt_reg__0[6]),
        .R(read_wait_cnt));
  FDRE #(
    .INIT(1'b0)) 
    \read_wait_cnt_reg[7] 
       (.C(clock_in),
        .CE(\read_wait_cnt0_inferred__0/i__carry_n_0 ),
        .D(p_0_in[7]),
        .Q(read_wait_cnt_reg__0[7]),
        .R(read_wait_cnt));
  LUT5 #(
    .INIT(32'h00000020)) 
    \read_wait_num[1]_i_1 
       (.I0(\read_data_reg[7]_i_4_n_0 ),
        .I1(epc_addr_in[2]),
        .I2(epc_addr_in[3]),
        .I3(\read_data_reg[7]_i_3_n_0 ),
        .I4(reset_in),
        .O(\read_wait_num[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \read_wait_num_reg[0] 
       (.C(clock_in),
        .CE(1'b1),
        .D(1'b1),
        .Q(read_wait_num[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \read_wait_num_reg[1] 
       (.C(clock_in),
        .CE(1'b1),
        .D(\read_wait_num[1]_i_1_n_0 ),
        .Q(read_wait_num[1]),
        .R(1'b0));
  CARRY4 \write_wait_cnt0_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\write_wait_cnt0_inferred__0/i__carry_n_0 ,\write_wait_cnt0_inferred__0/i__carry_n_1 ,\write_wait_cnt0_inferred__0/i__carry_n_2 ,\write_wait_cnt0_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,i__carry_i_1__0_n_0}),
        .O(\NLW_write_wait_cnt0_inferred__0/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_2__0_n_0,i__carry_i_3__0_n_0,i__carry_i_4__0_n_0,i__carry_i_5__0_n_0}));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \write_wait_cnt[0]_i_1 
       (.I0(write_wait_cnt_reg__0[0]),
        .O(\write_wait_cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \write_wait_cnt[1]_i_1 
       (.I0(write_wait_cnt_reg__0[0]),
        .I1(write_wait_cnt_reg__0[1]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \write_wait_cnt[2]_i_1 
       (.I0(write_wait_cnt_reg__0[1]),
        .I1(write_wait_cnt_reg__0[0]),
        .I2(write_wait_cnt_reg__0[2]),
        .O(p_0_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \write_wait_cnt[3]_i_1 
       (.I0(write_wait_cnt_reg__0[2]),
        .I1(write_wait_cnt_reg__0[0]),
        .I2(write_wait_cnt_reg__0[1]),
        .I3(write_wait_cnt_reg__0[3]),
        .O(p_0_in__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \write_wait_cnt[4]_i_1 
       (.I0(write_wait_cnt_reg__0[3]),
        .I1(write_wait_cnt_reg__0[1]),
        .I2(write_wait_cnt_reg__0[0]),
        .I3(write_wait_cnt_reg__0[2]),
        .I4(write_wait_cnt_reg__0[4]),
        .O(p_0_in__0[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \write_wait_cnt[5]_i_1 
       (.I0(write_wait_cnt_reg__0[4]),
        .I1(write_wait_cnt_reg__0[2]),
        .I2(write_wait_cnt_reg__0[0]),
        .I3(write_wait_cnt_reg__0[1]),
        .I4(write_wait_cnt_reg__0[3]),
        .I5(write_wait_cnt_reg__0[5]),
        .O(p_0_in__0[5]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \write_wait_cnt[6]_i_1 
       (.I0(\write_wait_cnt[7]_i_2_n_0 ),
        .I1(write_wait_cnt_reg__0[4]),
        .I2(write_wait_cnt_reg__0[5]),
        .I3(write_wait_cnt_reg__0[6]),
        .O(p_0_in__0[6]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \write_wait_cnt[7]_i_1 
       (.I0(\write_wait_cnt[7]_i_2_n_0 ),
        .I1(write_wait_cnt_reg__0[6]),
        .I2(write_wait_cnt_reg__0[5]),
        .I3(write_wait_cnt_reg__0[4]),
        .I4(write_wait_cnt_reg__0[7]),
        .O(p_0_in__0[7]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \write_wait_cnt[7]_i_2 
       (.I0(write_wait_cnt_reg__0[2]),
        .I1(write_wait_cnt_reg__0[0]),
        .I2(write_wait_cnt_reg__0[1]),
        .I3(write_wait_cnt_reg__0[3]),
        .O(\write_wait_cnt[7]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \write_wait_cnt_reg[0] 
       (.C(clock_in),
        .CE(\write_wait_cnt0_inferred__0/i__carry_n_0 ),
        .D(\write_wait_cnt[0]_i_1_n_0 ),
        .Q(write_wait_cnt_reg__0[0]),
        .R(read_wait_cnt));
  FDRE #(
    .INIT(1'b0)) 
    \write_wait_cnt_reg[1] 
       (.C(clock_in),
        .CE(\write_wait_cnt0_inferred__0/i__carry_n_0 ),
        .D(p_0_in__0[1]),
        .Q(write_wait_cnt_reg__0[1]),
        .R(read_wait_cnt));
  FDRE #(
    .INIT(1'b0)) 
    \write_wait_cnt_reg[2] 
       (.C(clock_in),
        .CE(\write_wait_cnt0_inferred__0/i__carry_n_0 ),
        .D(p_0_in__0[2]),
        .Q(write_wait_cnt_reg__0[2]),
        .R(read_wait_cnt));
  FDRE #(
    .INIT(1'b0)) 
    \write_wait_cnt_reg[3] 
       (.C(clock_in),
        .CE(\write_wait_cnt0_inferred__0/i__carry_n_0 ),
        .D(p_0_in__0[3]),
        .Q(write_wait_cnt_reg__0[3]),
        .R(read_wait_cnt));
  FDRE #(
    .INIT(1'b0)) 
    \write_wait_cnt_reg[4] 
       (.C(clock_in),
        .CE(\write_wait_cnt0_inferred__0/i__carry_n_0 ),
        .D(p_0_in__0[4]),
        .Q(write_wait_cnt_reg__0[4]),
        .R(read_wait_cnt));
  FDRE #(
    .INIT(1'b0)) 
    \write_wait_cnt_reg[5] 
       (.C(clock_in),
        .CE(\write_wait_cnt0_inferred__0/i__carry_n_0 ),
        .D(p_0_in__0[5]),
        .Q(write_wait_cnt_reg__0[5]),
        .R(read_wait_cnt));
  FDRE #(
    .INIT(1'b0)) 
    \write_wait_cnt_reg[6] 
       (.C(clock_in),
        .CE(\write_wait_cnt0_inferred__0/i__carry_n_0 ),
        .D(p_0_in__0[6]),
        .Q(write_wait_cnt_reg__0[6]),
        .R(read_wait_cnt));
  FDRE #(
    .INIT(1'b0)) 
    \write_wait_cnt_reg[7] 
       (.C(clock_in),
        .CE(\write_wait_cnt0_inferred__0/i__carry_n_0 ),
        .D(p_0_in__0[7]),
        .Q(write_wait_cnt_reg__0[7]),
        .R(read_wait_cnt));
  FDRE #(
    .INIT(1'b0)) 
    \write_wait_num_reg[0] 
       (.C(clock_in),
        .CE(1'b1),
        .D(read_wait_cnt),
        .Q(write_wait_num),
        .R(1'b0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
