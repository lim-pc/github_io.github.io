-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
-- Date        : Mon Jan 28 16:14:08 2019
-- Host        : tanggl1 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top bus32_demo_0 -prefix
--               bus32_demo_0_ bus32_demo_0_stub.vhdl
-- Design      : bus32_demo_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z100ffg900-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity bus32_demo_0 is
  Port ( 
    clock_in : in STD_LOGIC;
    reset_in : in STD_LOGIC;
    epc_addr_in : in STD_LOGIC_VECTOR ( 31 downto 0 );
    epc_data_out : out STD_LOGIC_VECTOR ( 31 downto 0 );
    epc_data_in : in STD_LOGIC_VECTOR ( 31 downto 0 );
    epc_be_in : in STD_LOGIC_VECTOR ( 3 downto 0 );
    epc_cs_n_in : in STD_LOGIC;
    epc_wr_n_in : in STD_LOGIC;
    epc_rd_n_in : in STD_LOGIC;
    epc_rdy_out : out STD_LOGIC;
    control_0_out : out STD_LOGIC;
    control_1_out : out STD_LOGIC;
    status_0_in : in STD_LOGIC;
    status_1_in : in STD_LOGIC
  );

end bus32_demo_0;

architecture stub of bus32_demo_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clock_in,reset_in,epc_addr_in[31:0],epc_data_out[31:0],epc_data_in[31:0],epc_be_in[3:0],epc_cs_n_in,epc_wr_n_in,epc_rd_n_in,epc_rdy_out,control_0_out,control_1_out,status_0_in,status_1_in";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "bus32_demo,Vivado 2018.2";
begin
end;
