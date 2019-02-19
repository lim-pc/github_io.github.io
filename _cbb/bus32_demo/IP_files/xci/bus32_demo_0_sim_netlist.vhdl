-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
-- Date        : Mon Jan 28 16:14:08 2019
-- Host        : tanggl1 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top bus32_demo_0 -prefix
--               bus32_demo_0_ bus32_demo_0_sim_netlist.vhdl
-- Design      : bus32_demo_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z100ffg900-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bus32_demo_0_bus32_demo_cell is
  port (
    control_1_out : out STD_LOGIC;
    epc_data_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    epc_rdy_out : out STD_LOGIC;
    control_0_out : out STD_LOGIC;
    epc_addr_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    reset_in : in STD_LOGIC;
    clock_in : in STD_LOGIC;
    epc_data_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    epc_rd_n_in : in STD_LOGIC;
    epc_wr_n_in : in STD_LOGIC;
    epc_cs_n_in : in STD_LOGIC;
    epc_be_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    status_1_in : in STD_LOGIC;
    status_0_in : in STD_LOGIC
  );
end bus32_demo_0_bus32_demo_cell;

architecture STRUCTURE of bus32_demo_0_bus32_demo_cell is
  signal \^control_0_out\ : STD_LOGIC;
  signal \^control_1_out\ : STD_LOGIC;
  signal \gc_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \gc_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \gc_reg[1]_i_2_n_0\ : STD_LOGIC;
  signal \gc_reg[1]_i_3_n_0\ : STD_LOGIC;
  signal \gc_reg_reg_n_0_[2]\ : STD_LOGIC;
  signal \gc_reg_reg_n_0_[3]\ : STD_LOGIC;
  signal \gc_reg_reg_n_0_[4]\ : STD_LOGIC;
  signal \gc_reg_reg_n_0_[5]\ : STD_LOGIC;
  signal \gc_reg_reg_n_0_[6]\ : STD_LOGIC;
  signal \gc_reg_reg_n_0_[7]\ : STD_LOGIC;
  signal \i__carry_i_1__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_1_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_2_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_3_n_0\ : STD_LOGIC;
  signal \i__carry_i_4__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_4_n_0\ : STD_LOGIC;
  signal \i__carry_i_5__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_5_n_0\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 7 downto 1 );
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 7 downto 1 );
  signal p_1_in : STD_LOGIC_VECTOR ( 1 to 1 );
  signal read_data_reg : STD_LOGIC;
  signal \read_data_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \read_data_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \read_data_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \read_data_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \read_data_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \read_data_reg[5]_i_1_n_0\ : STD_LOGIC;
  signal \read_data_reg[6]_i_1_n_0\ : STD_LOGIC;
  signal \read_data_reg[7]_i_2_n_0\ : STD_LOGIC;
  signal \read_data_reg[7]_i_3_n_0\ : STD_LOGIC;
  signal \read_data_reg[7]_i_4_n_0\ : STD_LOGIC;
  signal read_wait_cnt : STD_LOGIC;
  signal \read_wait_cnt0_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \read_wait_cnt0_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \read_wait_cnt0_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \read_wait_cnt0_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal \read_wait_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \read_wait_cnt[7]_i_3_n_0\ : STD_LOGIC;
  signal \read_wait_cnt_reg__0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal read_wait_num : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \read_wait_num[1]_i_1_n_0\ : STD_LOGIC;
  signal \write_wait_cnt0_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \write_wait_cnt0_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \write_wait_cnt0_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \write_wait_cnt0_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal \write_wait_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \write_wait_cnt[7]_i_2_n_0\ : STD_LOGIC;
  signal \write_wait_cnt_reg__0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal write_wait_num : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_read_wait_cnt0_inferred__0/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_write_wait_cnt0_inferred__0/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of epc_rdy_out_INST_0 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \gc_reg[1]_i_3\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \read_data_reg[0]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \read_data_reg[1]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \read_data_reg[3]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \read_data_reg[4]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \read_data_reg[5]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \read_data_reg[6]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \read_data_reg[7]_i_2\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \read_data_reg[7]_i_3\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \read_wait_cnt[0]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \read_wait_cnt[1]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \read_wait_cnt[2]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \read_wait_cnt[3]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \read_wait_cnt[4]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \read_wait_cnt[6]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \read_wait_cnt[7]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \read_wait_cnt[7]_i_3\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \write_wait_cnt[0]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \write_wait_cnt[1]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \write_wait_cnt[2]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \write_wait_cnt[3]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \write_wait_cnt[4]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \write_wait_cnt[6]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \write_wait_cnt[7]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \write_wait_cnt[7]_i_2\ : label is "soft_lutpair2";
begin
  control_0_out <= \^control_0_out\;
  control_1_out <= \^control_1_out\;
epc_rdy_out_INST_0: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00030500"
    )
        port map (
      I0 => \write_wait_cnt0_inferred__0/i__carry_n_0\,
      I1 => \read_wait_cnt0_inferred__0/i__carry_n_0\,
      I2 => epc_cs_n_in,
      I3 => epc_rd_n_in,
      I4 => epc_wr_n_in,
      O => epc_rdy_out
    );
\gc_reg[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000008"
    )
        port map (
      I0 => epc_rd_n_in,
      I1 => \gc_reg[0]_i_2_n_0\,
      I2 => \write_wait_cnt0_inferred__0/i__carry_n_0\,
      I3 => epc_wr_n_in,
      I4 => reset_in,
      I5 => epc_cs_n_in,
      O => \gc_reg[0]_i_1_n_0\
    );
\gc_reg[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBFFFFF00800000"
    )
        port map (
      I0 => epc_data_in(0),
      I1 => epc_be_in(0),
      I2 => epc_addr_in(2),
      I3 => epc_addr_in(3),
      I4 => \read_data_reg[7]_i_4_n_0\,
      I5 => \^control_0_out\,
      O => \gc_reg[0]_i_2_n_0\
    );
\gc_reg[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000008000000000"
    )
        port map (
      I0 => epc_be_in(0),
      I1 => \read_data_reg[7]_i_4_n_0\,
      I2 => \gc_reg[1]_i_2_n_0\,
      I3 => epc_wr_n_in,
      I4 => \write_wait_cnt0_inferred__0/i__carry_n_0\,
      I5 => \gc_reg[1]_i_3_n_0\,
      O => p_1_in(1)
    );
\gc_reg[1]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => epc_addr_in(3),
      I1 => epc_cs_n_in,
      O => \gc_reg[1]_i_2_n_0\
    );
\gc_reg[1]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => epc_rd_n_in,
      I1 => epc_addr_in(2),
      O => \gc_reg[1]_i_3_n_0\
    );
\gc_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock_in,
      CE => '1',
      D => \gc_reg[0]_i_1_n_0\,
      Q => \^control_0_out\,
      R => '0'
    );
\gc_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock_in,
      CE => p_1_in(1),
      D => epc_data_in(1),
      Q => \^control_1_out\,
      R => reset_in
    );
\gc_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock_in,
      CE => p_1_in(1),
      D => epc_data_in(2),
      Q => \gc_reg_reg_n_0_[2]\,
      R => reset_in
    );
\gc_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock_in,
      CE => p_1_in(1),
      D => epc_data_in(3),
      Q => \gc_reg_reg_n_0_[3]\,
      R => reset_in
    );
\gc_reg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock_in,
      CE => p_1_in(1),
      D => epc_data_in(4),
      Q => \gc_reg_reg_n_0_[4]\,
      R => reset_in
    );
\gc_reg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock_in,
      CE => p_1_in(1),
      D => epc_data_in(5),
      Q => \gc_reg_reg_n_0_[5]\,
      R => reset_in
    );
\gc_reg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock_in,
      CE => p_1_in(1),
      D => epc_data_in(6),
      Q => \gc_reg_reg_n_0_[6]\,
      R => reset_in
    );
\gc_reg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock_in,
      CE => p_1_in(1),
      D => epc_data_in(7),
      Q => \gc_reg_reg_n_0_[7]\,
      R => reset_in
    );
\i__carry_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => read_wait_num(1),
      I1 => \read_wait_cnt_reg__0\(1),
      I2 => read_wait_num(0),
      I3 => \read_wait_cnt_reg__0\(0),
      O => \i__carry_i_1_n_0\
    );
\i__carry_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => \write_wait_cnt_reg__0\(1),
      I1 => \write_wait_cnt_reg__0\(0),
      I2 => write_wait_num(0),
      O => \i__carry_i_1__0_n_0\
    );
\i__carry_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \read_wait_cnt_reg__0\(7),
      I1 => \read_wait_cnt_reg__0\(6),
      O => \i__carry_i_2_n_0\
    );
\i__carry_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \write_wait_cnt_reg__0\(7),
      I1 => \write_wait_cnt_reg__0\(6),
      O => \i__carry_i_2__0_n_0\
    );
\i__carry_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \read_wait_cnt_reg__0\(4),
      I1 => \read_wait_cnt_reg__0\(5),
      O => \i__carry_i_3_n_0\
    );
\i__carry_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \write_wait_cnt_reg__0\(4),
      I1 => \write_wait_cnt_reg__0\(5),
      O => \i__carry_i_3__0_n_0\
    );
\i__carry_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \read_wait_cnt_reg__0\(2),
      I1 => \read_wait_cnt_reg__0\(3),
      O => \i__carry_i_4_n_0\
    );
\i__carry_i_4__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \write_wait_cnt_reg__0\(2),
      I1 => \write_wait_cnt_reg__0\(3),
      O => \i__carry_i_4__0_n_0\
    );
\i__carry_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => read_wait_num(1),
      I1 => \read_wait_cnt_reg__0\(1),
      I2 => read_wait_num(0),
      I3 => \read_wait_cnt_reg__0\(0),
      O => \i__carry_i_5_n_0\
    );
\i__carry_i_5__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => write_wait_num(0),
      I1 => \write_wait_cnt_reg__0\(0),
      I2 => \write_wait_cnt_reg__0\(1),
      O => \i__carry_i_5__0_n_0\
    );
\read_data_reg[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B0BB"
    )
        port map (
      I0 => \^control_0_out\,
      I1 => epc_addr_in(2),
      I2 => status_0_in,
      I3 => epc_addr_in(3),
      O => \read_data_reg[0]_i_1_n_0\
    );
\read_data_reg[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => epc_addr_in(2),
      I1 => \^control_1_out\,
      I2 => epc_addr_in(3),
      I3 => status_1_in,
      O => \read_data_reg[1]_i_1_n_0\
    );
\read_data_reg[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \gc_reg_reg_n_0_[2]\,
      I1 => epc_addr_in(2),
      O => \read_data_reg[2]_i_1_n_0\
    );
\read_data_reg[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \gc_reg_reg_n_0_[3]\,
      I1 => epc_addr_in(2),
      O => \read_data_reg[3]_i_1_n_0\
    );
\read_data_reg[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \gc_reg_reg_n_0_[4]\,
      I1 => epc_addr_in(2),
      O => \read_data_reg[4]_i_1_n_0\
    );
\read_data_reg[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \gc_reg_reg_n_0_[5]\,
      I1 => epc_addr_in(2),
      O => \read_data_reg[5]_i_1_n_0\
    );
\read_data_reg[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \gc_reg_reg_n_0_[6]\,
      I1 => epc_addr_in(2),
      O => \read_data_reg[6]_i_1_n_0\
    );
\read_data_reg[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00150000"
    )
        port map (
      I0 => \read_data_reg[7]_i_3_n_0\,
      I1 => epc_addr_in(3),
      I2 => epc_addr_in(2),
      I3 => \read_wait_cnt0_inferred__0/i__carry_n_0\,
      I4 => \read_data_reg[7]_i_4_n_0\,
      O => read_data_reg
    );
\read_data_reg[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \gc_reg_reg_n_0_[7]\,
      I1 => epc_addr_in(2),
      O => \read_data_reg[7]_i_2_n_0\
    );
\read_data_reg[7]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => epc_cs_n_in,
      I1 => epc_rd_n_in,
      I2 => epc_wr_n_in,
      O => \read_data_reg[7]_i_3_n_0\
    );
\read_data_reg[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => epc_addr_in(4),
      I1 => epc_addr_in(5),
      I2 => epc_addr_in(6),
      I3 => epc_addr_in(7),
      I4 => epc_addr_in(1),
      I5 => epc_addr_in(0),
      O => \read_data_reg[7]_i_4_n_0\
    );
\read_data_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock_in,
      CE => read_data_reg,
      D => \read_data_reg[0]_i_1_n_0\,
      Q => epc_data_out(0),
      R => reset_in
    );
\read_data_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock_in,
      CE => read_data_reg,
      D => \read_data_reg[1]_i_1_n_0\,
      Q => epc_data_out(1),
      R => reset_in
    );
\read_data_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock_in,
      CE => read_data_reg,
      D => \read_data_reg[2]_i_1_n_0\,
      Q => epc_data_out(2),
      R => reset_in
    );
\read_data_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock_in,
      CE => read_data_reg,
      D => \read_data_reg[3]_i_1_n_0\,
      Q => epc_data_out(3),
      R => reset_in
    );
\read_data_reg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock_in,
      CE => read_data_reg,
      D => \read_data_reg[4]_i_1_n_0\,
      Q => epc_data_out(4),
      R => reset_in
    );
\read_data_reg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock_in,
      CE => read_data_reg,
      D => \read_data_reg[5]_i_1_n_0\,
      Q => epc_data_out(5),
      R => reset_in
    );
\read_data_reg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock_in,
      CE => read_data_reg,
      D => \read_data_reg[6]_i_1_n_0\,
      Q => epc_data_out(6),
      R => reset_in
    );
\read_data_reg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock_in,
      CE => read_data_reg,
      D => \read_data_reg[7]_i_2_n_0\,
      Q => epc_data_out(7),
      R => reset_in
    );
\read_wait_cnt0_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \read_wait_cnt0_inferred__0/i__carry_n_0\,
      CO(2) => \read_wait_cnt0_inferred__0/i__carry_n_1\,
      CO(1) => \read_wait_cnt0_inferred__0/i__carry_n_2\,
      CO(0) => \read_wait_cnt0_inferred__0/i__carry_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \i__carry_i_1_n_0\,
      O(3 downto 0) => \NLW_read_wait_cnt0_inferred__0/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_2_n_0\,
      S(2) => \i__carry_i_3_n_0\,
      S(1) => \i__carry_i_4_n_0\,
      S(0) => \i__carry_i_5_n_0\
    );
\read_wait_cnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \read_wait_cnt_reg__0\(0),
      O => \read_wait_cnt[0]_i_1_n_0\
    );
\read_wait_cnt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \read_wait_cnt_reg__0\(0),
      I1 => \read_wait_cnt_reg__0\(1),
      O => p_0_in(1)
    );
\read_wait_cnt[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \read_wait_cnt_reg__0\(1),
      I1 => \read_wait_cnt_reg__0\(0),
      I2 => \read_wait_cnt_reg__0\(2),
      O => p_0_in(2)
    );
\read_wait_cnt[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \read_wait_cnt_reg__0\(2),
      I1 => \read_wait_cnt_reg__0\(0),
      I2 => \read_wait_cnt_reg__0\(1),
      I3 => \read_wait_cnt_reg__0\(3),
      O => p_0_in(3)
    );
\read_wait_cnt[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \read_wait_cnt_reg__0\(3),
      I1 => \read_wait_cnt_reg__0\(1),
      I2 => \read_wait_cnt_reg__0\(0),
      I3 => \read_wait_cnt_reg__0\(2),
      I4 => \read_wait_cnt_reg__0\(4),
      O => p_0_in(4)
    );
\read_wait_cnt[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \read_wait_cnt_reg__0\(4),
      I1 => \read_wait_cnt_reg__0\(2),
      I2 => \read_wait_cnt_reg__0\(0),
      I3 => \read_wait_cnt_reg__0\(1),
      I4 => \read_wait_cnt_reg__0\(3),
      I5 => \read_wait_cnt_reg__0\(5),
      O => p_0_in(5)
    );
\read_wait_cnt[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \read_wait_cnt[7]_i_3_n_0\,
      I1 => \read_wait_cnt_reg__0\(4),
      I2 => \read_wait_cnt_reg__0\(5),
      I3 => \read_wait_cnt_reg__0\(6),
      O => p_0_in(6)
    );
\read_wait_cnt[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
        port map (
      I0 => epc_wr_n_in,
      I1 => epc_rd_n_in,
      I2 => epc_cs_n_in,
      I3 => reset_in,
      O => read_wait_cnt
    );
\read_wait_cnt[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \read_wait_cnt[7]_i_3_n_0\,
      I1 => \read_wait_cnt_reg__0\(6),
      I2 => \read_wait_cnt_reg__0\(5),
      I3 => \read_wait_cnt_reg__0\(4),
      I4 => \read_wait_cnt_reg__0\(7),
      O => p_0_in(7)
    );
\read_wait_cnt[7]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \read_wait_cnt_reg__0\(2),
      I1 => \read_wait_cnt_reg__0\(0),
      I2 => \read_wait_cnt_reg__0\(1),
      I3 => \read_wait_cnt_reg__0\(3),
      O => \read_wait_cnt[7]_i_3_n_0\
    );
\read_wait_cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock_in,
      CE => \read_wait_cnt0_inferred__0/i__carry_n_0\,
      D => \read_wait_cnt[0]_i_1_n_0\,
      Q => \read_wait_cnt_reg__0\(0),
      R => read_wait_cnt
    );
\read_wait_cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock_in,
      CE => \read_wait_cnt0_inferred__0/i__carry_n_0\,
      D => p_0_in(1),
      Q => \read_wait_cnt_reg__0\(1),
      R => read_wait_cnt
    );
\read_wait_cnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock_in,
      CE => \read_wait_cnt0_inferred__0/i__carry_n_0\,
      D => p_0_in(2),
      Q => \read_wait_cnt_reg__0\(2),
      R => read_wait_cnt
    );
\read_wait_cnt_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock_in,
      CE => \read_wait_cnt0_inferred__0/i__carry_n_0\,
      D => p_0_in(3),
      Q => \read_wait_cnt_reg__0\(3),
      R => read_wait_cnt
    );
\read_wait_cnt_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock_in,
      CE => \read_wait_cnt0_inferred__0/i__carry_n_0\,
      D => p_0_in(4),
      Q => \read_wait_cnt_reg__0\(4),
      R => read_wait_cnt
    );
\read_wait_cnt_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock_in,
      CE => \read_wait_cnt0_inferred__0/i__carry_n_0\,
      D => p_0_in(5),
      Q => \read_wait_cnt_reg__0\(5),
      R => read_wait_cnt
    );
\read_wait_cnt_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock_in,
      CE => \read_wait_cnt0_inferred__0/i__carry_n_0\,
      D => p_0_in(6),
      Q => \read_wait_cnt_reg__0\(6),
      R => read_wait_cnt
    );
\read_wait_cnt_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock_in,
      CE => \read_wait_cnt0_inferred__0/i__carry_n_0\,
      D => p_0_in(7),
      Q => \read_wait_cnt_reg__0\(7),
      R => read_wait_cnt
    );
\read_wait_num[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000020"
    )
        port map (
      I0 => \read_data_reg[7]_i_4_n_0\,
      I1 => epc_addr_in(2),
      I2 => epc_addr_in(3),
      I3 => \read_data_reg[7]_i_3_n_0\,
      I4 => reset_in,
      O => \read_wait_num[1]_i_1_n_0\
    );
\read_wait_num_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock_in,
      CE => '1',
      D => '1',
      Q => read_wait_num(0),
      R => '0'
    );
\read_wait_num_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock_in,
      CE => '1',
      D => \read_wait_num[1]_i_1_n_0\,
      Q => read_wait_num(1),
      R => '0'
    );
\write_wait_cnt0_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \write_wait_cnt0_inferred__0/i__carry_n_0\,
      CO(2) => \write_wait_cnt0_inferred__0/i__carry_n_1\,
      CO(1) => \write_wait_cnt0_inferred__0/i__carry_n_2\,
      CO(0) => \write_wait_cnt0_inferred__0/i__carry_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \i__carry_i_1__0_n_0\,
      O(3 downto 0) => \NLW_write_wait_cnt0_inferred__0/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_2__0_n_0\,
      S(2) => \i__carry_i_3__0_n_0\,
      S(1) => \i__carry_i_4__0_n_0\,
      S(0) => \i__carry_i_5__0_n_0\
    );
\write_wait_cnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \write_wait_cnt_reg__0\(0),
      O => \write_wait_cnt[0]_i_1_n_0\
    );
\write_wait_cnt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \write_wait_cnt_reg__0\(0),
      I1 => \write_wait_cnt_reg__0\(1),
      O => \p_0_in__0\(1)
    );
\write_wait_cnt[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \write_wait_cnt_reg__0\(1),
      I1 => \write_wait_cnt_reg__0\(0),
      I2 => \write_wait_cnt_reg__0\(2),
      O => \p_0_in__0\(2)
    );
\write_wait_cnt[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \write_wait_cnt_reg__0\(2),
      I1 => \write_wait_cnt_reg__0\(0),
      I2 => \write_wait_cnt_reg__0\(1),
      I3 => \write_wait_cnt_reg__0\(3),
      O => \p_0_in__0\(3)
    );
\write_wait_cnt[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \write_wait_cnt_reg__0\(3),
      I1 => \write_wait_cnt_reg__0\(1),
      I2 => \write_wait_cnt_reg__0\(0),
      I3 => \write_wait_cnt_reg__0\(2),
      I4 => \write_wait_cnt_reg__0\(4),
      O => \p_0_in__0\(4)
    );
\write_wait_cnt[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \write_wait_cnt_reg__0\(4),
      I1 => \write_wait_cnt_reg__0\(2),
      I2 => \write_wait_cnt_reg__0\(0),
      I3 => \write_wait_cnt_reg__0\(1),
      I4 => \write_wait_cnt_reg__0\(3),
      I5 => \write_wait_cnt_reg__0\(5),
      O => \p_0_in__0\(5)
    );
\write_wait_cnt[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \write_wait_cnt[7]_i_2_n_0\,
      I1 => \write_wait_cnt_reg__0\(4),
      I2 => \write_wait_cnt_reg__0\(5),
      I3 => \write_wait_cnt_reg__0\(6),
      O => \p_0_in__0\(6)
    );
\write_wait_cnt[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \write_wait_cnt[7]_i_2_n_0\,
      I1 => \write_wait_cnt_reg__0\(6),
      I2 => \write_wait_cnt_reg__0\(5),
      I3 => \write_wait_cnt_reg__0\(4),
      I4 => \write_wait_cnt_reg__0\(7),
      O => \p_0_in__0\(7)
    );
\write_wait_cnt[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \write_wait_cnt_reg__0\(2),
      I1 => \write_wait_cnt_reg__0\(0),
      I2 => \write_wait_cnt_reg__0\(1),
      I3 => \write_wait_cnt_reg__0\(3),
      O => \write_wait_cnt[7]_i_2_n_0\
    );
\write_wait_cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock_in,
      CE => \write_wait_cnt0_inferred__0/i__carry_n_0\,
      D => \write_wait_cnt[0]_i_1_n_0\,
      Q => \write_wait_cnt_reg__0\(0),
      R => read_wait_cnt
    );
\write_wait_cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock_in,
      CE => \write_wait_cnt0_inferred__0/i__carry_n_0\,
      D => \p_0_in__0\(1),
      Q => \write_wait_cnt_reg__0\(1),
      R => read_wait_cnt
    );
\write_wait_cnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock_in,
      CE => \write_wait_cnt0_inferred__0/i__carry_n_0\,
      D => \p_0_in__0\(2),
      Q => \write_wait_cnt_reg__0\(2),
      R => read_wait_cnt
    );
\write_wait_cnt_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock_in,
      CE => \write_wait_cnt0_inferred__0/i__carry_n_0\,
      D => \p_0_in__0\(3),
      Q => \write_wait_cnt_reg__0\(3),
      R => read_wait_cnt
    );
\write_wait_cnt_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock_in,
      CE => \write_wait_cnt0_inferred__0/i__carry_n_0\,
      D => \p_0_in__0\(4),
      Q => \write_wait_cnt_reg__0\(4),
      R => read_wait_cnt
    );
\write_wait_cnt_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock_in,
      CE => \write_wait_cnt0_inferred__0/i__carry_n_0\,
      D => \p_0_in__0\(5),
      Q => \write_wait_cnt_reg__0\(5),
      R => read_wait_cnt
    );
\write_wait_cnt_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock_in,
      CE => \write_wait_cnt0_inferred__0/i__carry_n_0\,
      D => \p_0_in__0\(6),
      Q => \write_wait_cnt_reg__0\(6),
      R => read_wait_cnt
    );
\write_wait_cnt_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock_in,
      CE => \write_wait_cnt0_inferred__0/i__carry_n_0\,
      D => \p_0_in__0\(7),
      Q => \write_wait_cnt_reg__0\(7),
      R => read_wait_cnt
    );
\write_wait_num_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock_in,
      CE => '1',
      D => read_wait_cnt,
      Q => write_wait_num(0),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bus32_demo_0_bus32_demo is
  port (
    control_1_out : out STD_LOGIC;
    epc_data_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    epc_rdy_out : out STD_LOGIC;
    control_0_out : out STD_LOGIC;
    epc_addr_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    reset_in : in STD_LOGIC;
    clock_in : in STD_LOGIC;
    epc_data_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    epc_rd_n_in : in STD_LOGIC;
    epc_wr_n_in : in STD_LOGIC;
    epc_cs_n_in : in STD_LOGIC;
    epc_be_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    status_1_in : in STD_LOGIC;
    status_0_in : in STD_LOGIC
  );
end bus32_demo_0_bus32_demo;

architecture STRUCTURE of bus32_demo_0_bus32_demo is
begin
bus32_demo_cell_inst: entity work.bus32_demo_0_bus32_demo_cell
     port map (
      clock_in => clock_in,
      control_0_out => control_0_out,
      control_1_out => control_1_out,
      epc_addr_in(7 downto 0) => epc_addr_in(7 downto 0),
      epc_be_in(0) => epc_be_in(0),
      epc_cs_n_in => epc_cs_n_in,
      epc_data_in(7 downto 0) => epc_data_in(7 downto 0),
      epc_data_out(7 downto 0) => epc_data_out(7 downto 0),
      epc_rd_n_in => epc_rd_n_in,
      epc_rdy_out => epc_rdy_out,
      epc_wr_n_in => epc_wr_n_in,
      reset_in => reset_in,
      status_0_in => status_0_in,
      status_1_in => status_1_in
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bus32_demo_0 is
  port (
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
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of bus32_demo_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of bus32_demo_0 : entity is "bus32_demo_0,bus32_demo,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of bus32_demo_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of bus32_demo_0 : entity is "package_project";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of bus32_demo_0 : entity is "bus32_demo,Vivado 2018.2";
end bus32_demo_0;

architecture STRUCTURE of bus32_demo_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \^epc_data_out\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clock_in : signal is "xilinx.com:signal:clock:1.0 clock_in CLK, xilinx.com:interface:epc:1.0 S_EPC CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clock_in : signal is "XIL_INTERFACENAME clock_in, ASSOCIATED_RESET reset_in, ASSOCIATED_BUSIF S_EPC, FREQ_HZ 100000000, PHASE 0.000";
  attribute X_INTERFACE_INFO of epc_cs_n_in : signal is "xilinx.com:interface:epc:1.0 S_EPC CS_N";
  attribute X_INTERFACE_INFO of epc_rd_n_in : signal is "xilinx.com:interface:epc:1.0 S_EPC RD_N";
  attribute X_INTERFACE_INFO of epc_rdy_out : signal is "xilinx.com:interface:epc:1.0 S_EPC RDY";
  attribute X_INTERFACE_INFO of epc_wr_n_in : signal is "xilinx.com:interface:epc:1.0 S_EPC WR_N";
  attribute X_INTERFACE_INFO of reset_in : signal is "xilinx.com:signal:reset:1.0 reset_in RST, xilinx.com:interface:epc:1.0 S_EPC RST";
  attribute X_INTERFACE_PARAMETER of reset_in : signal is "XIL_INTERFACENAME reset_in, POLARITY ACTIVE_LOW";
  attribute X_INTERFACE_INFO of epc_addr_in : signal is "xilinx.com:interface:epc:1.0 S_EPC ADDR";
  attribute X_INTERFACE_INFO of epc_be_in : signal is "xilinx.com:interface:epc:1.0 S_EPC BE";
  attribute X_INTERFACE_INFO of epc_data_in : signal is "xilinx.com:interface:epc:1.0 S_EPC DATA_I";
  attribute X_INTERFACE_INFO of epc_data_out : signal is "xilinx.com:interface:epc:1.0 S_EPC DATA_O";
begin
  epc_data_out(31) <= \<const0>\;
  epc_data_out(30) <= \<const0>\;
  epc_data_out(29) <= \<const0>\;
  epc_data_out(28) <= \<const0>\;
  epc_data_out(27) <= \<const0>\;
  epc_data_out(26) <= \<const0>\;
  epc_data_out(25) <= \<const0>\;
  epc_data_out(24) <= \<const0>\;
  epc_data_out(23) <= \<const0>\;
  epc_data_out(22) <= \<const0>\;
  epc_data_out(21) <= \<const0>\;
  epc_data_out(20) <= \<const0>\;
  epc_data_out(19) <= \<const0>\;
  epc_data_out(18) <= \<const0>\;
  epc_data_out(17) <= \<const0>\;
  epc_data_out(16) <= \<const0>\;
  epc_data_out(15) <= \<const0>\;
  epc_data_out(14) <= \<const0>\;
  epc_data_out(13) <= \<const0>\;
  epc_data_out(12) <= \<const0>\;
  epc_data_out(11) <= \<const0>\;
  epc_data_out(10) <= \<const0>\;
  epc_data_out(9) <= \<const0>\;
  epc_data_out(8) <= \<const0>\;
  epc_data_out(7 downto 0) <= \^epc_data_out\(7 downto 0);
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.bus32_demo_0_bus32_demo
     port map (
      clock_in => clock_in,
      control_0_out => control_0_out,
      control_1_out => control_1_out,
      epc_addr_in(7 downto 0) => epc_addr_in(7 downto 0),
      epc_be_in(0) => epc_be_in(0),
      epc_cs_n_in => epc_cs_n_in,
      epc_data_in(7 downto 0) => epc_data_in(7 downto 0),
      epc_data_out(7 downto 0) => \^epc_data_out\(7 downto 0),
      epc_rd_n_in => epc_rd_n_in,
      epc_rdy_out => epc_rdy_out,
      epc_wr_n_in => epc_wr_n_in,
      reset_in => reset_in,
      status_0_in => status_0_in,
      status_1_in => status_1_in
    );
end STRUCTURE;
