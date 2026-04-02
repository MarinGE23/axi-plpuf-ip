-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
-- Date        : Thu Apr  2 01:10:20 2026
-- Host        : Emanuel running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_axi_plpuf_0_0_sim_netlist.vhdl
-- Design      : design_1_axi_plpuf_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_plpuf_core is
  port (
    clk : in STD_LOGIC;
    rst_n : in STD_LOGIC;
    challenge : in STD_LOGIC_VECTOR ( 127 downto 0 );
    activation_duration : in STD_LOGIC_VECTOR ( 15 downto 0 );
    start : in STD_LOGIC;
    response : out STD_LOGIC_VECTOR ( 127 downto 0 );
    done : out STD_LOGIC;
    busy : out STD_LOGIC
  );
  attribute DURATION_BITS : integer;
  attribute DURATION_BITS of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_plpuf_core : entity is 16;
  attribute S_ACTIVE : string;
  attribute S_ACTIVE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_plpuf_core : entity is "2'b10";
  attribute S_DONE : string;
  attribute S_DONE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_plpuf_core : entity is "2'b11";
  attribute S_IDLE : string;
  attribute S_IDLE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_plpuf_core : entity is "2'b00";
  attribute S_LOAD : string;
  attribute S_LOAD of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_plpuf_core : entity is "2'b01";
  attribute TAP_1 : integer;
  attribute TAP_1 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_plpuf_core : entity is 125;
  attribute TAP_2 : integer;
  attribute TAP_2 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_plpuf_core : entity is 101;
  attribute TAP_3 : integer;
  attribute TAP_3 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_plpuf_core : entity is 98;
  attribute WIDTH : integer;
  attribute WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_plpuf_core : entity is 128;
  attribute dont_touch : string;
  attribute dont_touch of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_plpuf_core : entity is "true";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_plpuf_core;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_plpuf_core is
  signal \FSM_onehot_state[3]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[1]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[2]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[3]\ : STD_LOGIC;
  signal \^busy\ : STD_LOGIC;
  signal busy_i_1_n_0 : STD_LOGIC;
  signal core_in : STD_LOGIC_VECTOR ( 127 downto 0 );
  attribute DONT_TOUCH_boolean : boolean;
  attribute DONT_TOUCH_boolean of core_in : signal is std.standard.true;
  signal core_out : STD_LOGIC_VECTOR ( 127 downto 0 );
  attribute DONT_TOUCH_boolean of core_out : signal is std.standard.true;
  signal counter : STD_LOGIC;
  signal \counter[0]_i_1_n_0\ : STD_LOGIC;
  signal \counter[10]_i_1_n_0\ : STD_LOGIC;
  signal \counter[11]_i_1_n_0\ : STD_LOGIC;
  signal \counter[12]_i_1_n_0\ : STD_LOGIC;
  signal \counter[13]_i_1_n_0\ : STD_LOGIC;
  signal \counter[14]_i_1_n_0\ : STD_LOGIC;
  signal \counter[15]_i_2_n_0\ : STD_LOGIC;
  signal \counter[1]_i_1_n_0\ : STD_LOGIC;
  signal \counter[2]_i_1_n_0\ : STD_LOGIC;
  signal \counter[3]_i_1_n_0\ : STD_LOGIC;
  signal \counter[4]_i_1_n_0\ : STD_LOGIC;
  signal \counter[5]_i_1_n_0\ : STD_LOGIC;
  signal \counter[6]_i_1_n_0\ : STD_LOGIC;
  signal \counter[7]_i_1_n_0\ : STD_LOGIC;
  signal \counter[8]_i_1_n_0\ : STD_LOGIC;
  signal \counter[9]_i_1_n_0\ : STD_LOGIC;
  signal \counter_reg[12]_i_2_n_0\ : STD_LOGIC;
  signal \counter_reg[12]_i_2_n_1\ : STD_LOGIC;
  signal \counter_reg[12]_i_2_n_2\ : STD_LOGIC;
  signal \counter_reg[12]_i_2_n_3\ : STD_LOGIC;
  signal \counter_reg[15]_i_3_n_2\ : STD_LOGIC;
  signal \counter_reg[15]_i_3_n_3\ : STD_LOGIC;
  signal \counter_reg[4]_i_2_n_0\ : STD_LOGIC;
  signal \counter_reg[4]_i_2_n_1\ : STD_LOGIC;
  signal \counter_reg[4]_i_2_n_2\ : STD_LOGIC;
  signal \counter_reg[4]_i_2_n_3\ : STD_LOGIC;
  signal \counter_reg[8]_i_2_n_0\ : STD_LOGIC;
  signal \counter_reg[8]_i_2_n_1\ : STD_LOGIC;
  signal \counter_reg[8]_i_2_n_2\ : STD_LOGIC;
  signal \counter_reg[8]_i_2_n_3\ : STD_LOGIC;
  signal \counter_reg_n_0_[0]\ : STD_LOGIC;
  signal \counter_reg_n_0_[10]\ : STD_LOGIC;
  signal \counter_reg_n_0_[11]\ : STD_LOGIC;
  signal \counter_reg_n_0_[12]\ : STD_LOGIC;
  signal \counter_reg_n_0_[13]\ : STD_LOGIC;
  signal \counter_reg_n_0_[14]\ : STD_LOGIC;
  signal \counter_reg_n_0_[15]\ : STD_LOGIC;
  signal \counter_reg_n_0_[1]\ : STD_LOGIC;
  signal \counter_reg_n_0_[2]\ : STD_LOGIC;
  signal \counter_reg_n_0_[3]\ : STD_LOGIC;
  signal \counter_reg_n_0_[4]\ : STD_LOGIC;
  signal \counter_reg_n_0_[5]\ : STD_LOGIC;
  signal \counter_reg_n_0_[6]\ : STD_LOGIC;
  signal \counter_reg_n_0_[7]\ : STD_LOGIC;
  signal \counter_reg_n_0_[8]\ : STD_LOGIC;
  signal \counter_reg_n_0_[9]\ : STD_LOGIC;
  signal done_i_1_n_0 : STD_LOGIC;
  signal enable : STD_LOGIC;
  signal enable_i_1_n_0 : STD_LOGIC;
  signal in5 : STD_LOGIC_VECTOR ( 15 downto 1 );
  signal \response[127]_i_10_n_0\ : STD_LOGIC;
  signal \response[127]_i_11_n_0\ : STD_LOGIC;
  signal \response[127]_i_16_n_0\ : STD_LOGIC;
  signal \response[127]_i_17_n_0\ : STD_LOGIC;
  signal \response[127]_i_18_n_0\ : STD_LOGIC;
  signal \response[127]_i_19_n_0\ : STD_LOGIC;
  signal \response[127]_i_1_n_0\ : STD_LOGIC;
  signal \response[127]_i_20_n_0\ : STD_LOGIC;
  signal \response[127]_i_21_n_0\ : STD_LOGIC;
  signal \response[127]_i_22_n_0\ : STD_LOGIC;
  signal \response[127]_i_23_n_0\ : STD_LOGIC;
  signal \response[127]_i_24_n_0\ : STD_LOGIC;
  signal \response[127]_i_25_n_0\ : STD_LOGIC;
  signal \response[127]_i_26_n_0\ : STD_LOGIC;
  signal \response[127]_i_27_n_0\ : STD_LOGIC;
  signal \response[127]_i_28_n_0\ : STD_LOGIC;
  signal \response[127]_i_29_n_0\ : STD_LOGIC;
  signal \response[127]_i_2_n_0\ : STD_LOGIC;
  signal \response[127]_i_30_n_0\ : STD_LOGIC;
  signal \response[127]_i_6_n_0\ : STD_LOGIC;
  signal \response[127]_i_7_n_0\ : STD_LOGIC;
  signal \response[127]_i_8_n_0\ : STD_LOGIC;
  signal \response[127]_i_9_n_0\ : STD_LOGIC;
  signal \response_reg[127]_i_12_n_2\ : STD_LOGIC;
  signal \response_reg[127]_i_12_n_3\ : STD_LOGIC;
  signal \response_reg[127]_i_13_n_0\ : STD_LOGIC;
  signal \response_reg[127]_i_13_n_1\ : STD_LOGIC;
  signal \response_reg[127]_i_13_n_2\ : STD_LOGIC;
  signal \response_reg[127]_i_13_n_3\ : STD_LOGIC;
  signal \response_reg[127]_i_14_n_0\ : STD_LOGIC;
  signal \response_reg[127]_i_14_n_1\ : STD_LOGIC;
  signal \response_reg[127]_i_14_n_2\ : STD_LOGIC;
  signal \response_reg[127]_i_14_n_3\ : STD_LOGIC;
  signal \response_reg[127]_i_15_n_0\ : STD_LOGIC;
  signal \response_reg[127]_i_15_n_1\ : STD_LOGIC;
  signal \response_reg[127]_i_15_n_2\ : STD_LOGIC;
  signal \response_reg[127]_i_15_n_3\ : STD_LOGIC;
  signal \response_reg[127]_i_4_n_2\ : STD_LOGIC;
  signal \response_reg[127]_i_4_n_3\ : STD_LOGIC;
  signal \response_reg[127]_i_5_n_0\ : STD_LOGIC;
  signal \response_reg[127]_i_5_n_1\ : STD_LOGIC;
  signal \response_reg[127]_i_5_n_2\ : STD_LOGIC;
  signal \response_reg[127]_i_5_n_3\ : STD_LOGIC;
  signal state2 : STD_LOGIC_VECTOR ( 15 downto 1 );
  signal \NLW_counter_reg[15]_i_3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_counter_reg[15]_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_response_reg[127]_i_12_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_response_reg[127]_i_12_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_response_reg[127]_i_4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_response_reg[127]_i_4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_response_reg[127]_i_5_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[0]\ : label is "S_IDLE:0001,S_LOAD:0010,S_ACTIVE:0100,S_DONE:1000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[1]\ : label is "S_IDLE:0001,S_LOAD:0010,S_ACTIVE:0100,S_DONE:1000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[2]\ : label is "S_IDLE:0001,S_LOAD:0010,S_ACTIVE:0100,S_DONE:1000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[3]\ : label is "S_IDLE:0001,S_LOAD:0010,S_ACTIVE:0100,S_DONE:1000";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of busy_i_1 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \counter[0]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \counter[10]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \counter[11]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \counter[12]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \counter[13]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \counter[14]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \counter[15]_i_2\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \counter[1]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \counter[2]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \counter[3]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \counter[4]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \counter[5]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \counter[6]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \counter[7]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \counter[8]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \counter[9]_i_1\ : label is "soft_lutpair5";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \counter_reg[12]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \counter_reg[15]_i_3\ : label is 35;
  attribute ADDER_THRESHOLD of \counter_reg[4]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \counter_reg[8]_i_2\ : label is 35;
  attribute SOFT_HLUTNM of done_i_1 : label is "soft_lutpair0";
  attribute ADDER_THRESHOLD of \response_reg[127]_i_12\ : label is 35;
  attribute ADDER_THRESHOLD of \response_reg[127]_i_13\ : label is 35;
  attribute ADDER_THRESHOLD of \response_reg[127]_i_14\ : label is 35;
  attribute ADDER_THRESHOLD of \response_reg[127]_i_15\ : label is 35;
begin
  busy <= \^busy\;
\FSM_onehot_state[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFEEE"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => \FSM_onehot_state_reg_n_0_[3]\,
      I2 => \FSM_onehot_state_reg_n_0_[0]\,
      I3 => start,
      I4 => \response[127]_i_2_n_0\,
      O => \FSM_onehot_state[3]_i_1_n_0\
    );
\FSM_onehot_state_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \FSM_onehot_state[3]_i_1_n_0\,
      D => \FSM_onehot_state_reg_n_0_[3]\,
      Q => \FSM_onehot_state_reg_n_0_[0]\,
      S => \response[127]_i_1_n_0\
    );
\FSM_onehot_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \FSM_onehot_state[3]_i_1_n_0\,
      D => \FSM_onehot_state_reg_n_0_[0]\,
      Q => \FSM_onehot_state_reg_n_0_[1]\,
      R => \response[127]_i_1_n_0\
    );
\FSM_onehot_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \FSM_onehot_state[3]_i_1_n_0\,
      D => \FSM_onehot_state_reg_n_0_[1]\,
      Q => \FSM_onehot_state_reg_n_0_[2]\,
      R => \response[127]_i_1_n_0\
    );
\FSM_onehot_state_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \FSM_onehot_state[3]_i_1_n_0\,
      D => \FSM_onehot_state_reg_n_0_[2]\,
      Q => \FSM_onehot_state_reg_n_0_[3]\,
      R => \response[127]_i_1_n_0\
    );
busy_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C0EA0000"
    )
        port map (
      I0 => \^busy\,
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => start,
      I3 => \FSM_onehot_state_reg_n_0_[3]\,
      I4 => rst_n,
      O => busy_i_1_n_0
    );
busy_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => busy_i_1_n_0,
      Q => \^busy\,
      R => '0'
    );
core_in_inferred_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => core_out(0),
      I1 => enable,
      I2 => challenge(127),
      O => core_in(127)
    );
core_in_inferred_i_10: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => core_out(119),
      I1 => enable,
      I2 => challenge(118),
      O => core_in(118)
    );
core_in_inferred_i_100: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => core_out(29),
      I1 => enable,
      I2 => challenge(28),
      O => core_in(28)
    );
core_in_inferred_i_101: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => core_out(28),
      I1 => enable,
      I2 => challenge(27),
      O => core_in(27)
    );
core_in_inferred_i_102: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => core_out(27),
      I1 => enable,
      I2 => challenge(26),
      O => core_in(26)
    );
core_in_inferred_i_103: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => core_out(26),
      I1 => enable,
      I2 => challenge(25),
      O => core_in(25)
    );
core_in_inferred_i_104: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => core_out(25),
      I1 => enable,
      I2 => challenge(24),
      O => core_in(24)
    );
core_in_inferred_i_105: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => core_out(24),
      I1 => enable,
      I2 => challenge(23),
      O => core_in(23)
    );
core_in_inferred_i_106: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => core_out(23),
      I1 => enable,
      I2 => challenge(22),
      O => core_in(22)
    );
core_in_inferred_i_107: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => core_out(22),
      I1 => enable,
      I2 => challenge(21),
      O => core_in(21)
    );
core_in_inferred_i_108: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => core_out(21),
      I1 => enable,
      I2 => challenge(20),
      O => core_in(20)
    );
core_in_inferred_i_109: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => core_out(20),
      I1 => enable,
      I2 => challenge(19),
      O => core_in(19)
    );
core_in_inferred_i_11: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => core_out(118),
      I1 => enable,
      I2 => challenge(117),
      O => core_in(117)
    );
core_in_inferred_i_110: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => core_out(19),
      I1 => enable,
      I2 => challenge(18),
      O => core_in(18)
    );
core_in_inferred_i_111: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => core_out(18),
      I1 => enable,
      I2 => challenge(17),
      O => core_in(17)
    );
core_in_inferred_i_112: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => core_out(17),
      I1 => enable,
      I2 => challenge(16),
      O => core_in(16)
    );
core_in_inferred_i_113: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => core_out(16),
      I1 => enable,
      I2 => challenge(15),
      O => core_in(15)
    );
core_in_inferred_i_114: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => core_out(15),
      I1 => enable,
      I2 => challenge(14),
      O => core_in(14)
    );
core_in_inferred_i_115: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => core_out(14),
      I1 => enable,
      I2 => challenge(13),
      O => core_in(13)
    );
core_in_inferred_i_116: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => core_out(13),
      I1 => enable,
      I2 => challenge(12),
      O => core_in(12)
    );
core_in_inferred_i_117: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => core_out(12),
      I1 => enable,
      I2 => challenge(11),
      O => core_in(11)
    );
core_in_inferred_i_118: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => core_out(11),
      I1 => enable,
      I2 => challenge(10),
      O => core_in(10)
    );
core_in_inferred_i_119: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => core_out(10),
      I1 => enable,
      I2 => challenge(9),
      O => core_in(9)
    );
core_in_inferred_i_12: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => core_out(117),
      I1 => enable,
      I2 => challenge(116),
      O => core_in(116)
    );
core_in_inferred_i_120: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => core_out(9),
      I1 => enable,
      I2 => challenge(8),
      O => core_in(8)
    );
core_in_inferred_i_121: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => core_out(8),
      I1 => enable,
      I2 => challenge(7),
      O => core_in(7)
    );
core_in_inferred_i_122: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => core_out(7),
      I1 => enable,
      I2 => challenge(6),
      O => core_in(6)
    );
core_in_inferred_i_123: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => core_out(6),
      I1 => enable,
      I2 => challenge(5),
      O => core_in(5)
    );
core_in_inferred_i_124: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => core_out(5),
      I1 => enable,
      I2 => challenge(4),
      O => core_in(4)
    );
core_in_inferred_i_125: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => core_out(4),
      I1 => enable,
      I2 => challenge(3),
      O => core_in(3)
    );
core_in_inferred_i_126: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => core_out(3),
      I1 => enable,
      I2 => challenge(2),
      O => core_in(2)
    );
core_in_inferred_i_127: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => core_out(2),
      I1 => enable,
      I2 => challenge(1),
      O => core_in(1)
    );
core_in_inferred_i_128: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => core_out(1),
      I1 => enable,
      I2 => challenge(0),
      O => core_in(0)
    );
core_in_inferred_i_13: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => core_out(116),
      I1 => enable,
      I2 => challenge(115),
      O => core_in(115)
    );
core_in_inferred_i_14: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => core_out(115),
      I1 => enable,
      I2 => challenge(114),
      O => core_in(114)
    );
core_in_inferred_i_15: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => core_out(114),
      I1 => enable,
      I2 => challenge(113),
      O => core_in(113)
    );
core_in_inferred_i_16: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => core_out(113),
      I1 => enable,
      I2 => challenge(112),
      O => core_in(112)
    );
core_in_inferred_i_17: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => core_out(112),
      I1 => enable,
      I2 => challenge(111),
      O => core_in(111)
    );
core_in_inferred_i_18: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => core_out(111),
      I1 => enable,
      I2 => challenge(110),
      O => core_in(110)
    );
core_in_inferred_i_19: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => core_out(110),
      I1 => enable,
      I2 => challenge(109),
      O => core_in(109)
    );
core_in_inferred_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => core_out(127),
      I1 => enable,
      I2 => challenge(126),
      O => core_in(126)
    );
core_in_inferred_i_20: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => core_out(109),
      I1 => enable,
      I2 => challenge(108),
      O => core_in(108)
    );
core_in_inferred_i_21: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => core_out(108),
      I1 => enable,
      I2 => challenge(107),
      O => core_in(107)
    );
core_in_inferred_i_22: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => core_out(107),
      I1 => enable,
      I2 => challenge(106),
      O => core_in(106)
    );
core_in_inferred_i_23: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => core_out(106),
      I1 => enable,
      I2 => challenge(105),
      O => core_in(105)
    );
core_in_inferred_i_24: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => core_out(105),
      I1 => enable,
      I2 => challenge(104),
      O => core_in(104)
    );
core_in_inferred_i_25: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => core_out(104),
      I1 => enable,
      I2 => challenge(103),
      O => core_in(103)
    );
core_in_inferred_i_26: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => core_out(103),
      I1 => enable,
      I2 => challenge(102),
      O => core_in(102)
    );
core_in_inferred_i_27: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6F60"
    )
        port map (
      I0 => core_out(0),
      I1 => core_out(102),
      I2 => enable,
      I3 => challenge(101),
      O => core_in(101)
    );
core_in_inferred_i_28: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => core_out(101),
      I1 => enable,
      I2 => challenge(100),
      O => core_in(100)
    );
core_in_inferred_i_29: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => core_out(100),
      I1 => enable,
      I2 => challenge(99),
      O => core_in(99)
    );
core_in_inferred_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6F60"
    )
        port map (
      I0 => core_out(0),
      I1 => core_out(126),
      I2 => enable,
      I3 => challenge(125),
      O => core_in(125)
    );
core_in_inferred_i_30: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6F60"
    )
        port map (
      I0 => core_out(0),
      I1 => core_out(99),
      I2 => enable,
      I3 => challenge(98),
      O => core_in(98)
    );
core_in_inferred_i_31: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => core_out(98),
      I1 => enable,
      I2 => challenge(97),
      O => core_in(97)
    );
core_in_inferred_i_32: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => core_out(97),
      I1 => enable,
      I2 => challenge(96),
      O => core_in(96)
    );
core_in_inferred_i_33: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => core_out(96),
      I1 => enable,
      I2 => challenge(95),
      O => core_in(95)
    );
core_in_inferred_i_34: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => core_out(95),
      I1 => enable,
      I2 => challenge(94),
      O => core_in(94)
    );
core_in_inferred_i_35: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => core_out(94),
      I1 => enable,
      I2 => challenge(93),
      O => core_in(93)
    );
core_in_inferred_i_36: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => core_out(93),
      I1 => enable,
      I2 => challenge(92),
      O => core_in(92)
    );
core_in_inferred_i_37: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => core_out(92),
      I1 => enable,
      I2 => challenge(91),
      O => core_in(91)
    );
core_in_inferred_i_38: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => core_out(91),
      I1 => enable,
      I2 => challenge(90),
      O => core_in(90)
    );
core_in_inferred_i_39: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => core_out(90),
      I1 => enable,
      I2 => challenge(89),
      O => core_in(89)
    );
core_in_inferred_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => core_out(125),
      I1 => enable,
      I2 => challenge(124),
      O => core_in(124)
    );
core_in_inferred_i_40: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => core_out(89),
      I1 => enable,
      I2 => challenge(88),
      O => core_in(88)
    );
core_in_inferred_i_41: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => core_out(88),
      I1 => enable,
      I2 => challenge(87),
      O => core_in(87)
    );
core_in_inferred_i_42: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => core_out(87),
      I1 => enable,
      I2 => challenge(86),
      O => core_in(86)
    );
core_in_inferred_i_43: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => core_out(86),
      I1 => enable,
      I2 => challenge(85),
      O => core_in(85)
    );
core_in_inferred_i_44: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => core_out(85),
      I1 => enable,
      I2 => challenge(84),
      O => core_in(84)
    );
core_in_inferred_i_45: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => core_out(84),
      I1 => enable,
      I2 => challenge(83),
      O => core_in(83)
    );
core_in_inferred_i_46: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => core_out(83),
      I1 => enable,
      I2 => challenge(82),
      O => core_in(82)
    );
core_in_inferred_i_47: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => core_out(82),
      I1 => enable,
      I2 => challenge(81),
      O => core_in(81)
    );
core_in_inferred_i_48: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => core_out(81),
      I1 => enable,
      I2 => challenge(80),
      O => core_in(80)
    );
core_in_inferred_i_49: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => core_out(80),
      I1 => enable,
      I2 => challenge(79),
      O => core_in(79)
    );
core_in_inferred_i_5: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => core_out(124),
      I1 => enable,
      I2 => challenge(123),
      O => core_in(123)
    );
core_in_inferred_i_50: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => core_out(79),
      I1 => enable,
      I2 => challenge(78),
      O => core_in(78)
    );
core_in_inferred_i_51: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => core_out(78),
      I1 => enable,
      I2 => challenge(77),
      O => core_in(77)
    );
core_in_inferred_i_52: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => core_out(77),
      I1 => enable,
      I2 => challenge(76),
      O => core_in(76)
    );
core_in_inferred_i_53: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => core_out(76),
      I1 => enable,
      I2 => challenge(75),
      O => core_in(75)
    );
core_in_inferred_i_54: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => core_out(75),
      I1 => enable,
      I2 => challenge(74),
      O => core_in(74)
    );
core_in_inferred_i_55: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => core_out(74),
      I1 => enable,
      I2 => challenge(73),
      O => core_in(73)
    );
core_in_inferred_i_56: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => core_out(73),
      I1 => enable,
      I2 => challenge(72),
      O => core_in(72)
    );
core_in_inferred_i_57: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => core_out(72),
      I1 => enable,
      I2 => challenge(71),
      O => core_in(71)
    );
core_in_inferred_i_58: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => core_out(71),
      I1 => enable,
      I2 => challenge(70),
      O => core_in(70)
    );
core_in_inferred_i_59: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => core_out(70),
      I1 => enable,
      I2 => challenge(69),
      O => core_in(69)
    );
core_in_inferred_i_6: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => core_out(123),
      I1 => enable,
      I2 => challenge(122),
      O => core_in(122)
    );
core_in_inferred_i_60: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => core_out(69),
      I1 => enable,
      I2 => challenge(68),
      O => core_in(68)
    );
core_in_inferred_i_61: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => core_out(68),
      I1 => enable,
      I2 => challenge(67),
      O => core_in(67)
    );
core_in_inferred_i_62: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => core_out(67),
      I1 => enable,
      I2 => challenge(66),
      O => core_in(66)
    );
core_in_inferred_i_63: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => core_out(66),
      I1 => enable,
      I2 => challenge(65),
      O => core_in(65)
    );
core_in_inferred_i_64: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => core_out(65),
      I1 => enable,
      I2 => challenge(64),
      O => core_in(64)
    );
core_in_inferred_i_65: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => core_out(64),
      I1 => enable,
      I2 => challenge(63),
      O => core_in(63)
    );
core_in_inferred_i_66: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => core_out(63),
      I1 => enable,
      I2 => challenge(62),
      O => core_in(62)
    );
core_in_inferred_i_67: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => core_out(62),
      I1 => enable,
      I2 => challenge(61),
      O => core_in(61)
    );
core_in_inferred_i_68: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => core_out(61),
      I1 => enable,
      I2 => challenge(60),
      O => core_in(60)
    );
core_in_inferred_i_69: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => core_out(60),
      I1 => enable,
      I2 => challenge(59),
      O => core_in(59)
    );
core_in_inferred_i_7: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => core_out(122),
      I1 => enable,
      I2 => challenge(121),
      O => core_in(121)
    );
core_in_inferred_i_70: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => core_out(59),
      I1 => enable,
      I2 => challenge(58),
      O => core_in(58)
    );
core_in_inferred_i_71: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => core_out(58),
      I1 => enable,
      I2 => challenge(57),
      O => core_in(57)
    );
core_in_inferred_i_72: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => core_out(57),
      I1 => enable,
      I2 => challenge(56),
      O => core_in(56)
    );
core_in_inferred_i_73: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => core_out(56),
      I1 => enable,
      I2 => challenge(55),
      O => core_in(55)
    );
core_in_inferred_i_74: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => core_out(55),
      I1 => enable,
      I2 => challenge(54),
      O => core_in(54)
    );
core_in_inferred_i_75: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => core_out(54),
      I1 => enable,
      I2 => challenge(53),
      O => core_in(53)
    );
core_in_inferred_i_76: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => core_out(53),
      I1 => enable,
      I2 => challenge(52),
      O => core_in(52)
    );
core_in_inferred_i_77: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => core_out(52),
      I1 => enable,
      I2 => challenge(51),
      O => core_in(51)
    );
core_in_inferred_i_78: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => core_out(51),
      I1 => enable,
      I2 => challenge(50),
      O => core_in(50)
    );
core_in_inferred_i_79: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => core_out(50),
      I1 => enable,
      I2 => challenge(49),
      O => core_in(49)
    );
core_in_inferred_i_8: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => core_out(121),
      I1 => enable,
      I2 => challenge(120),
      O => core_in(120)
    );
core_in_inferred_i_80: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => core_out(49),
      I1 => enable,
      I2 => challenge(48),
      O => core_in(48)
    );
core_in_inferred_i_81: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => core_out(48),
      I1 => enable,
      I2 => challenge(47),
      O => core_in(47)
    );
core_in_inferred_i_82: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => core_out(47),
      I1 => enable,
      I2 => challenge(46),
      O => core_in(46)
    );
core_in_inferred_i_83: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => core_out(46),
      I1 => enable,
      I2 => challenge(45),
      O => core_in(45)
    );
core_in_inferred_i_84: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => core_out(45),
      I1 => enable,
      I2 => challenge(44),
      O => core_in(44)
    );
core_in_inferred_i_85: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => core_out(44),
      I1 => enable,
      I2 => challenge(43),
      O => core_in(43)
    );
core_in_inferred_i_86: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => core_out(43),
      I1 => enable,
      I2 => challenge(42),
      O => core_in(42)
    );
core_in_inferred_i_87: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => core_out(42),
      I1 => enable,
      I2 => challenge(41),
      O => core_in(41)
    );
core_in_inferred_i_88: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => core_out(41),
      I1 => enable,
      I2 => challenge(40),
      O => core_in(40)
    );
core_in_inferred_i_89: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => core_out(40),
      I1 => enable,
      I2 => challenge(39),
      O => core_in(39)
    );
core_in_inferred_i_9: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => core_out(120),
      I1 => enable,
      I2 => challenge(119),
      O => core_in(119)
    );
core_in_inferred_i_90: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => core_out(39),
      I1 => enable,
      I2 => challenge(38),
      O => core_in(38)
    );
core_in_inferred_i_91: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => core_out(38),
      I1 => enable,
      I2 => challenge(37),
      O => core_in(37)
    );
core_in_inferred_i_92: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => core_out(37),
      I1 => enable,
      I2 => challenge(36),
      O => core_in(36)
    );
core_in_inferred_i_93: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => core_out(36),
      I1 => enable,
      I2 => challenge(35),
      O => core_in(35)
    );
core_in_inferred_i_94: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => core_out(35),
      I1 => enable,
      I2 => challenge(34),
      O => core_in(34)
    );
core_in_inferred_i_95: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => core_out(34),
      I1 => enable,
      I2 => challenge(33),
      O => core_in(33)
    );
core_in_inferred_i_96: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => core_out(33),
      I1 => enable,
      I2 => challenge(32),
      O => core_in(32)
    );
core_in_inferred_i_97: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => core_out(32),
      I1 => enable,
      I2 => challenge(31),
      O => core_in(31)
    );
core_in_inferred_i_98: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => core_out(31),
      I1 => enable,
      I2 => challenge(30),
      O => core_in(30)
    );
core_in_inferred_i_99: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => core_out(30),
      I1 => enable,
      I2 => challenge(29),
      O => core_in(29)
    );
\counter[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => \counter_reg_n_0_[0]\,
      O => \counter[0]_i_1_n_0\
    );
\counter[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => in5(10),
      O => \counter[10]_i_1_n_0\
    );
\counter[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => in5(11),
      O => \counter[11]_i_1_n_0\
    );
\counter[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => in5(12),
      O => \counter[12]_i_1_n_0\
    );
\counter[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => in5(13),
      O => \counter[13]_i_1_n_0\
    );
\counter[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => in5(14),
      O => \counter[14]_i_1_n_0\
    );
\counter[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => start,
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => \response_reg[127]_i_4_n_2\,
      I3 => \FSM_onehot_state_reg_n_0_[2]\,
      O => counter
    );
\counter[15]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => in5(15),
      O => \counter[15]_i_2_n_0\
    );
\counter[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => in5(1),
      O => \counter[1]_i_1_n_0\
    );
\counter[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => in5(2),
      O => \counter[2]_i_1_n_0\
    );
\counter[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => in5(3),
      O => \counter[3]_i_1_n_0\
    );
\counter[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => in5(4),
      O => \counter[4]_i_1_n_0\
    );
\counter[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => in5(5),
      O => \counter[5]_i_1_n_0\
    );
\counter[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => in5(6),
      O => \counter[6]_i_1_n_0\
    );
\counter[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => in5(7),
      O => \counter[7]_i_1_n_0\
    );
\counter[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => in5(8),
      O => \counter[8]_i_1_n_0\
    );
\counter[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => in5(9),
      O => \counter[9]_i_1_n_0\
    );
\counter_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => counter,
      D => \counter[0]_i_1_n_0\,
      Q => \counter_reg_n_0_[0]\,
      R => \response[127]_i_1_n_0\
    );
\counter_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => counter,
      D => \counter[10]_i_1_n_0\,
      Q => \counter_reg_n_0_[10]\,
      R => \response[127]_i_1_n_0\
    );
\counter_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => counter,
      D => \counter[11]_i_1_n_0\,
      Q => \counter_reg_n_0_[11]\,
      R => \response[127]_i_1_n_0\
    );
\counter_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => counter,
      D => \counter[12]_i_1_n_0\,
      Q => \counter_reg_n_0_[12]\,
      R => \response[127]_i_1_n_0\
    );
\counter_reg[12]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[8]_i_2_n_0\,
      CO(3) => \counter_reg[12]_i_2_n_0\,
      CO(2) => \counter_reg[12]_i_2_n_1\,
      CO(1) => \counter_reg[12]_i_2_n_2\,
      CO(0) => \counter_reg[12]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in5(12 downto 9),
      S(3) => \counter_reg_n_0_[12]\,
      S(2) => \counter_reg_n_0_[11]\,
      S(1) => \counter_reg_n_0_[10]\,
      S(0) => \counter_reg_n_0_[9]\
    );
\counter_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => counter,
      D => \counter[13]_i_1_n_0\,
      Q => \counter_reg_n_0_[13]\,
      R => \response[127]_i_1_n_0\
    );
\counter_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => counter,
      D => \counter[14]_i_1_n_0\,
      Q => \counter_reg_n_0_[14]\,
      R => \response[127]_i_1_n_0\
    );
\counter_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => counter,
      D => \counter[15]_i_2_n_0\,
      Q => \counter_reg_n_0_[15]\,
      R => \response[127]_i_1_n_0\
    );
\counter_reg[15]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[12]_i_2_n_0\,
      CO(3 downto 2) => \NLW_counter_reg[15]_i_3_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \counter_reg[15]_i_3_n_2\,
      CO(0) => \counter_reg[15]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_counter_reg[15]_i_3_O_UNCONNECTED\(3),
      O(2 downto 0) => in5(15 downto 13),
      S(3) => '0',
      S(2) => \counter_reg_n_0_[15]\,
      S(1) => \counter_reg_n_0_[14]\,
      S(0) => \counter_reg_n_0_[13]\
    );
\counter_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => counter,
      D => \counter[1]_i_1_n_0\,
      Q => \counter_reg_n_0_[1]\,
      R => \response[127]_i_1_n_0\
    );
\counter_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => counter,
      D => \counter[2]_i_1_n_0\,
      Q => \counter_reg_n_0_[2]\,
      R => \response[127]_i_1_n_0\
    );
\counter_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => counter,
      D => \counter[3]_i_1_n_0\,
      Q => \counter_reg_n_0_[3]\,
      R => \response[127]_i_1_n_0\
    );
\counter_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => counter,
      D => \counter[4]_i_1_n_0\,
      Q => \counter_reg_n_0_[4]\,
      R => \response[127]_i_1_n_0\
    );
\counter_reg[4]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \counter_reg[4]_i_2_n_0\,
      CO(2) => \counter_reg[4]_i_2_n_1\,
      CO(1) => \counter_reg[4]_i_2_n_2\,
      CO(0) => \counter_reg[4]_i_2_n_3\,
      CYINIT => \counter_reg_n_0_[0]\,
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in5(4 downto 1),
      S(3) => \counter_reg_n_0_[4]\,
      S(2) => \counter_reg_n_0_[3]\,
      S(1) => \counter_reg_n_0_[2]\,
      S(0) => \counter_reg_n_0_[1]\
    );
\counter_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => counter,
      D => \counter[5]_i_1_n_0\,
      Q => \counter_reg_n_0_[5]\,
      R => \response[127]_i_1_n_0\
    );
\counter_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => counter,
      D => \counter[6]_i_1_n_0\,
      Q => \counter_reg_n_0_[6]\,
      R => \response[127]_i_1_n_0\
    );
\counter_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => counter,
      D => \counter[7]_i_1_n_0\,
      Q => \counter_reg_n_0_[7]\,
      R => \response[127]_i_1_n_0\
    );
\counter_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => counter,
      D => \counter[8]_i_1_n_0\,
      Q => \counter_reg_n_0_[8]\,
      R => \response[127]_i_1_n_0\
    );
\counter_reg[8]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[4]_i_2_n_0\,
      CO(3) => \counter_reg[8]_i_2_n_0\,
      CO(2) => \counter_reg[8]_i_2_n_1\,
      CO(1) => \counter_reg[8]_i_2_n_2\,
      CO(0) => \counter_reg[8]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in5(8 downto 5),
      S(3) => \counter_reg_n_0_[8]\,
      S(2) => \counter_reg_n_0_[7]\,
      S(1) => \counter_reg_n_0_[6]\,
      S(0) => \counter_reg_n_0_[5]\
    );
\counter_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => counter,
      D => \counter[9]_i_1_n_0\,
      Q => \counter_reg_n_0_[9]\,
      R => \response[127]_i_1_n_0\
    );
done_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[3]\,
      I1 => rst_n,
      O => done_i_1_n_0
    );
done_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => done_i_1_n_0,
      Q => done,
      R => '0'
    );
enable_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF002A00000000"
    )
        port map (
      I0 => enable,
      I1 => start,
      I2 => \FSM_onehot_state_reg_n_0_[0]\,
      I3 => \response[127]_i_2_n_0\,
      I4 => \FSM_onehot_state_reg_n_0_[1]\,
      I5 => rst_n,
      O => enable_i_1_n_0
    );
enable_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => enable_i_1_n_0,
      Q => enable,
      R => '0'
    );
\response[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => core_in(0),
      O => core_out(0)
    );
\response[100]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => core_in(100),
      O => core_out(100)
    );
\response[101]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => core_in(101),
      O => core_out(101)
    );
\response[102]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => core_in(102),
      O => core_out(102)
    );
\response[103]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => core_in(103),
      O => core_out(103)
    );
\response[104]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => core_in(104),
      O => core_out(104)
    );
\response[105]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => core_in(105),
      O => core_out(105)
    );
\response[106]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => core_in(106),
      O => core_out(106)
    );
\response[107]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => core_in(107),
      O => core_out(107)
    );
\response[108]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => core_in(108),
      O => core_out(108)
    );
\response[109]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => core_in(109),
      O => core_out(109)
    );
\response[10]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => core_in(10),
      O => core_out(10)
    );
\response[110]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => core_in(110),
      O => core_out(110)
    );
\response[111]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => core_in(111),
      O => core_out(111)
    );
\response[112]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => core_in(112),
      O => core_out(112)
    );
\response[113]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => core_in(113),
      O => core_out(113)
    );
\response[114]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => core_in(114),
      O => core_out(114)
    );
\response[115]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => core_in(115),
      O => core_out(115)
    );
\response[116]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => core_in(116),
      O => core_out(116)
    );
\response[117]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => core_in(117),
      O => core_out(117)
    );
\response[118]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => core_in(118),
      O => core_out(118)
    );
\response[119]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => core_in(119),
      O => core_out(119)
    );
\response[11]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => core_in(11),
      O => core_out(11)
    );
\response[120]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => core_in(120),
      O => core_out(120)
    );
\response[121]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => core_in(121),
      O => core_out(121)
    );
\response[122]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => core_in(122),
      O => core_out(122)
    );
\response[123]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => core_in(123),
      O => core_out(123)
    );
\response[124]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => core_in(124),
      O => core_out(124)
    );
\response[125]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => core_in(125),
      O => core_out(125)
    );
\response[126]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => core_in(126),
      O => core_out(126)
    );
\response[127]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rst_n,
      O => \response[127]_i_1_n_0\
    );
\response[127]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \counter_reg_n_0_[3]\,
      I1 => state2(3),
      I2 => state2(5),
      I3 => \counter_reg_n_0_[5]\,
      I4 => state2(4),
      I5 => \counter_reg_n_0_[4]\,
      O => \response[127]_i_10_n_0\
    );
\response[127]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6006000000006006"
    )
        port map (
      I0 => \counter_reg_n_0_[0]\,
      I1 => activation_duration(0),
      I2 => state2(2),
      I3 => \counter_reg_n_0_[2]\,
      I4 => state2(1),
      I5 => \counter_reg_n_0_[1]\,
      O => \response[127]_i_11_n_0\
    );
\response[127]_i_16\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => activation_duration(15),
      O => \response[127]_i_16_n_0\
    );
\response[127]_i_17\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => activation_duration(14),
      O => \response[127]_i_17_n_0\
    );
\response[127]_i_18\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => activation_duration(13),
      O => \response[127]_i_18_n_0\
    );
\response[127]_i_19\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => activation_duration(12),
      O => \response[127]_i_19_n_0\
    );
\response[127]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => \response_reg[127]_i_4_n_2\,
      O => \response[127]_i_2_n_0\
    );
\response[127]_i_20\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => activation_duration(11),
      O => \response[127]_i_20_n_0\
    );
\response[127]_i_21\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => activation_duration(10),
      O => \response[127]_i_21_n_0\
    );
\response[127]_i_22\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => activation_duration(9),
      O => \response[127]_i_22_n_0\
    );
\response[127]_i_23\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => activation_duration(8),
      O => \response[127]_i_23_n_0\
    );
\response[127]_i_24\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => activation_duration(7),
      O => \response[127]_i_24_n_0\
    );
\response[127]_i_25\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => activation_duration(6),
      O => \response[127]_i_25_n_0\
    );
\response[127]_i_26\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => activation_duration(5),
      O => \response[127]_i_26_n_0\
    );
\response[127]_i_27\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => activation_duration(4),
      O => \response[127]_i_27_n_0\
    );
\response[127]_i_28\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => activation_duration(3),
      O => \response[127]_i_28_n_0\
    );
\response[127]_i_29\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => activation_duration(2),
      O => \response[127]_i_29_n_0\
    );
\response[127]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => core_in(127),
      O => core_out(127)
    );
\response[127]_i_30\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => activation_duration(1),
      O => \response[127]_i_30_n_0\
    );
\response[127]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => state2(15),
      I1 => \counter_reg_n_0_[15]\,
      O => \response[127]_i_6_n_0\
    );
\response[127]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \counter_reg_n_0_[12]\,
      I1 => state2(12),
      I2 => state2(14),
      I3 => \counter_reg_n_0_[14]\,
      I4 => state2(13),
      I5 => \counter_reg_n_0_[13]\,
      O => \response[127]_i_7_n_0\
    );
\response[127]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \counter_reg_n_0_[9]\,
      I1 => state2(9),
      I2 => state2(11),
      I3 => \counter_reg_n_0_[11]\,
      I4 => state2(10),
      I5 => \counter_reg_n_0_[10]\,
      O => \response[127]_i_8_n_0\
    );
\response[127]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \counter_reg_n_0_[6]\,
      I1 => state2(6),
      I2 => state2(8),
      I3 => \counter_reg_n_0_[8]\,
      I4 => state2(7),
      I5 => \counter_reg_n_0_[7]\,
      O => \response[127]_i_9_n_0\
    );
\response[12]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => core_in(12),
      O => core_out(12)
    );
\response[13]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => core_in(13),
      O => core_out(13)
    );
\response[14]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => core_in(14),
      O => core_out(14)
    );
\response[15]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => core_in(15),
      O => core_out(15)
    );
\response[16]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => core_in(16),
      O => core_out(16)
    );
\response[17]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => core_in(17),
      O => core_out(17)
    );
\response[18]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => core_in(18),
      O => core_out(18)
    );
\response[19]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => core_in(19),
      O => core_out(19)
    );
\response[1]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => core_in(1),
      O => core_out(1)
    );
\response[20]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => core_in(20),
      O => core_out(20)
    );
\response[21]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => core_in(21),
      O => core_out(21)
    );
\response[22]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => core_in(22),
      O => core_out(22)
    );
\response[23]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => core_in(23),
      O => core_out(23)
    );
\response[24]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => core_in(24),
      O => core_out(24)
    );
\response[25]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => core_in(25),
      O => core_out(25)
    );
\response[26]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => core_in(26),
      O => core_out(26)
    );
\response[27]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => core_in(27),
      O => core_out(27)
    );
\response[28]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => core_in(28),
      O => core_out(28)
    );
\response[29]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => core_in(29),
      O => core_out(29)
    );
\response[2]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => core_in(2),
      O => core_out(2)
    );
\response[30]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => core_in(30),
      O => core_out(30)
    );
\response[31]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => core_in(31),
      O => core_out(31)
    );
\response[32]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => core_in(32),
      O => core_out(32)
    );
\response[33]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => core_in(33),
      O => core_out(33)
    );
\response[34]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => core_in(34),
      O => core_out(34)
    );
\response[35]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => core_in(35),
      O => core_out(35)
    );
\response[36]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => core_in(36),
      O => core_out(36)
    );
\response[37]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => core_in(37),
      O => core_out(37)
    );
\response[38]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => core_in(38),
      O => core_out(38)
    );
\response[39]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => core_in(39),
      O => core_out(39)
    );
\response[3]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => core_in(3),
      O => core_out(3)
    );
\response[40]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => core_in(40),
      O => core_out(40)
    );
\response[41]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => core_in(41),
      O => core_out(41)
    );
\response[42]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => core_in(42),
      O => core_out(42)
    );
\response[43]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => core_in(43),
      O => core_out(43)
    );
\response[44]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => core_in(44),
      O => core_out(44)
    );
\response[45]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => core_in(45),
      O => core_out(45)
    );
\response[46]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => core_in(46),
      O => core_out(46)
    );
\response[47]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => core_in(47),
      O => core_out(47)
    );
\response[48]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => core_in(48),
      O => core_out(48)
    );
\response[49]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => core_in(49),
      O => core_out(49)
    );
\response[4]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => core_in(4),
      O => core_out(4)
    );
\response[50]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => core_in(50),
      O => core_out(50)
    );
\response[51]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => core_in(51),
      O => core_out(51)
    );
\response[52]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => core_in(52),
      O => core_out(52)
    );
\response[53]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => core_in(53),
      O => core_out(53)
    );
\response[54]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => core_in(54),
      O => core_out(54)
    );
\response[55]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => core_in(55),
      O => core_out(55)
    );
\response[56]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => core_in(56),
      O => core_out(56)
    );
\response[57]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => core_in(57),
      O => core_out(57)
    );
\response[58]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => core_in(58),
      O => core_out(58)
    );
\response[59]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => core_in(59),
      O => core_out(59)
    );
\response[5]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => core_in(5),
      O => core_out(5)
    );
\response[60]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => core_in(60),
      O => core_out(60)
    );
\response[61]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => core_in(61),
      O => core_out(61)
    );
\response[62]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => core_in(62),
      O => core_out(62)
    );
\response[63]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => core_in(63),
      O => core_out(63)
    );
\response[64]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => core_in(64),
      O => core_out(64)
    );
\response[65]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => core_in(65),
      O => core_out(65)
    );
\response[66]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => core_in(66),
      O => core_out(66)
    );
\response[67]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => core_in(67),
      O => core_out(67)
    );
\response[68]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => core_in(68),
      O => core_out(68)
    );
\response[69]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => core_in(69),
      O => core_out(69)
    );
\response[6]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => core_in(6),
      O => core_out(6)
    );
\response[70]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => core_in(70),
      O => core_out(70)
    );
\response[71]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => core_in(71),
      O => core_out(71)
    );
\response[72]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => core_in(72),
      O => core_out(72)
    );
\response[73]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => core_in(73),
      O => core_out(73)
    );
\response[74]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => core_in(74),
      O => core_out(74)
    );
\response[75]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => core_in(75),
      O => core_out(75)
    );
\response[76]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => core_in(76),
      O => core_out(76)
    );
\response[77]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => core_in(77),
      O => core_out(77)
    );
\response[78]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => core_in(78),
      O => core_out(78)
    );
\response[79]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => core_in(79),
      O => core_out(79)
    );
\response[7]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => core_in(7),
      O => core_out(7)
    );
\response[80]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => core_in(80),
      O => core_out(80)
    );
\response[81]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => core_in(81),
      O => core_out(81)
    );
\response[82]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => core_in(82),
      O => core_out(82)
    );
\response[83]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => core_in(83),
      O => core_out(83)
    );
\response[84]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => core_in(84),
      O => core_out(84)
    );
\response[85]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => core_in(85),
      O => core_out(85)
    );
\response[86]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => core_in(86),
      O => core_out(86)
    );
\response[87]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => core_in(87),
      O => core_out(87)
    );
\response[88]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => core_in(88),
      O => core_out(88)
    );
\response[89]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => core_in(89),
      O => core_out(89)
    );
\response[8]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => core_in(8),
      O => core_out(8)
    );
\response[90]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => core_in(90),
      O => core_out(90)
    );
\response[91]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => core_in(91),
      O => core_out(91)
    );
\response[92]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => core_in(92),
      O => core_out(92)
    );
\response[93]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => core_in(93),
      O => core_out(93)
    );
\response[94]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => core_in(94),
      O => core_out(94)
    );
\response[95]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => core_in(95),
      O => core_out(95)
    );
\response[96]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => core_in(96),
      O => core_out(96)
    );
\response[97]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => core_in(97),
      O => core_out(97)
    );
\response[98]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => core_in(98),
      O => core_out(98)
    );
\response[99]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => core_in(99),
      O => core_out(99)
    );
\response[9]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => core_in(9),
      O => core_out(9)
    );
\response_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \response[127]_i_2_n_0\,
      D => core_out(0),
      Q => response(0),
      R => \response[127]_i_1_n_0\
    );
\response_reg[100]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \response[127]_i_2_n_0\,
      D => core_out(100),
      Q => response(100),
      R => \response[127]_i_1_n_0\
    );
\response_reg[101]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \response[127]_i_2_n_0\,
      D => core_out(101),
      Q => response(101),
      R => \response[127]_i_1_n_0\
    );
\response_reg[102]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \response[127]_i_2_n_0\,
      D => core_out(102),
      Q => response(102),
      R => \response[127]_i_1_n_0\
    );
\response_reg[103]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \response[127]_i_2_n_0\,
      D => core_out(103),
      Q => response(103),
      R => \response[127]_i_1_n_0\
    );
\response_reg[104]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \response[127]_i_2_n_0\,
      D => core_out(104),
      Q => response(104),
      R => \response[127]_i_1_n_0\
    );
\response_reg[105]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \response[127]_i_2_n_0\,
      D => core_out(105),
      Q => response(105),
      R => \response[127]_i_1_n_0\
    );
\response_reg[106]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \response[127]_i_2_n_0\,
      D => core_out(106),
      Q => response(106),
      R => \response[127]_i_1_n_0\
    );
\response_reg[107]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \response[127]_i_2_n_0\,
      D => core_out(107),
      Q => response(107),
      R => \response[127]_i_1_n_0\
    );
\response_reg[108]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \response[127]_i_2_n_0\,
      D => core_out(108),
      Q => response(108),
      R => \response[127]_i_1_n_0\
    );
\response_reg[109]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \response[127]_i_2_n_0\,
      D => core_out(109),
      Q => response(109),
      R => \response[127]_i_1_n_0\
    );
\response_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \response[127]_i_2_n_0\,
      D => core_out(10),
      Q => response(10),
      R => \response[127]_i_1_n_0\
    );
\response_reg[110]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \response[127]_i_2_n_0\,
      D => core_out(110),
      Q => response(110),
      R => \response[127]_i_1_n_0\
    );
\response_reg[111]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \response[127]_i_2_n_0\,
      D => core_out(111),
      Q => response(111),
      R => \response[127]_i_1_n_0\
    );
\response_reg[112]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \response[127]_i_2_n_0\,
      D => core_out(112),
      Q => response(112),
      R => \response[127]_i_1_n_0\
    );
\response_reg[113]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \response[127]_i_2_n_0\,
      D => core_out(113),
      Q => response(113),
      R => \response[127]_i_1_n_0\
    );
\response_reg[114]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \response[127]_i_2_n_0\,
      D => core_out(114),
      Q => response(114),
      R => \response[127]_i_1_n_0\
    );
\response_reg[115]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \response[127]_i_2_n_0\,
      D => core_out(115),
      Q => response(115),
      R => \response[127]_i_1_n_0\
    );
\response_reg[116]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \response[127]_i_2_n_0\,
      D => core_out(116),
      Q => response(116),
      R => \response[127]_i_1_n_0\
    );
\response_reg[117]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \response[127]_i_2_n_0\,
      D => core_out(117),
      Q => response(117),
      R => \response[127]_i_1_n_0\
    );
\response_reg[118]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \response[127]_i_2_n_0\,
      D => core_out(118),
      Q => response(118),
      R => \response[127]_i_1_n_0\
    );
\response_reg[119]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \response[127]_i_2_n_0\,
      D => core_out(119),
      Q => response(119),
      R => \response[127]_i_1_n_0\
    );
\response_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \response[127]_i_2_n_0\,
      D => core_out(11),
      Q => response(11),
      R => \response[127]_i_1_n_0\
    );
\response_reg[120]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \response[127]_i_2_n_0\,
      D => core_out(120),
      Q => response(120),
      R => \response[127]_i_1_n_0\
    );
\response_reg[121]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \response[127]_i_2_n_0\,
      D => core_out(121),
      Q => response(121),
      R => \response[127]_i_1_n_0\
    );
\response_reg[122]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \response[127]_i_2_n_0\,
      D => core_out(122),
      Q => response(122),
      R => \response[127]_i_1_n_0\
    );
\response_reg[123]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \response[127]_i_2_n_0\,
      D => core_out(123),
      Q => response(123),
      R => \response[127]_i_1_n_0\
    );
\response_reg[124]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \response[127]_i_2_n_0\,
      D => core_out(124),
      Q => response(124),
      R => \response[127]_i_1_n_0\
    );
\response_reg[125]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \response[127]_i_2_n_0\,
      D => core_out(125),
      Q => response(125),
      R => \response[127]_i_1_n_0\
    );
\response_reg[126]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \response[127]_i_2_n_0\,
      D => core_out(126),
      Q => response(126),
      R => \response[127]_i_1_n_0\
    );
\response_reg[127]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \response[127]_i_2_n_0\,
      D => core_out(127),
      Q => response(127),
      R => \response[127]_i_1_n_0\
    );
\response_reg[127]_i_12\: unisim.vcomponents.CARRY4
     port map (
      CI => \response_reg[127]_i_13_n_0\,
      CO(3 downto 2) => \NLW_response_reg[127]_i_12_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \response_reg[127]_i_12_n_2\,
      CO(0) => \response_reg[127]_i_12_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1 downto 0) => activation_duration(14 downto 13),
      O(3) => \NLW_response_reg[127]_i_12_O_UNCONNECTED\(3),
      O(2 downto 0) => state2(15 downto 13),
      S(3) => '0',
      S(2) => \response[127]_i_16_n_0\,
      S(1) => \response[127]_i_17_n_0\,
      S(0) => \response[127]_i_18_n_0\
    );
\response_reg[127]_i_13\: unisim.vcomponents.CARRY4
     port map (
      CI => \response_reg[127]_i_14_n_0\,
      CO(3) => \response_reg[127]_i_13_n_0\,
      CO(2) => \response_reg[127]_i_13_n_1\,
      CO(1) => \response_reg[127]_i_13_n_2\,
      CO(0) => \response_reg[127]_i_13_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => activation_duration(12 downto 9),
      O(3 downto 0) => state2(12 downto 9),
      S(3) => \response[127]_i_19_n_0\,
      S(2) => \response[127]_i_20_n_0\,
      S(1) => \response[127]_i_21_n_0\,
      S(0) => \response[127]_i_22_n_0\
    );
\response_reg[127]_i_14\: unisim.vcomponents.CARRY4
     port map (
      CI => \response_reg[127]_i_15_n_0\,
      CO(3) => \response_reg[127]_i_14_n_0\,
      CO(2) => \response_reg[127]_i_14_n_1\,
      CO(1) => \response_reg[127]_i_14_n_2\,
      CO(0) => \response_reg[127]_i_14_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => activation_duration(8 downto 5),
      O(3 downto 0) => state2(8 downto 5),
      S(3) => \response[127]_i_23_n_0\,
      S(2) => \response[127]_i_24_n_0\,
      S(1) => \response[127]_i_25_n_0\,
      S(0) => \response[127]_i_26_n_0\
    );
\response_reg[127]_i_15\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \response_reg[127]_i_15_n_0\,
      CO(2) => \response_reg[127]_i_15_n_1\,
      CO(1) => \response_reg[127]_i_15_n_2\,
      CO(0) => \response_reg[127]_i_15_n_3\,
      CYINIT => activation_duration(0),
      DI(3 downto 0) => activation_duration(4 downto 1),
      O(3 downto 0) => state2(4 downto 1),
      S(3) => \response[127]_i_27_n_0\,
      S(2) => \response[127]_i_28_n_0\,
      S(1) => \response[127]_i_29_n_0\,
      S(0) => \response[127]_i_30_n_0\
    );
\response_reg[127]_i_4\: unisim.vcomponents.CARRY4
     port map (
      CI => \response_reg[127]_i_5_n_0\,
      CO(3 downto 2) => \NLW_response_reg[127]_i_4_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \response_reg[127]_i_4_n_2\,
      CO(0) => \response_reg[127]_i_4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_response_reg[127]_i_4_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => \response[127]_i_6_n_0\,
      S(0) => \response[127]_i_7_n_0\
    );
\response_reg[127]_i_5\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \response_reg[127]_i_5_n_0\,
      CO(2) => \response_reg[127]_i_5_n_1\,
      CO(1) => \response_reg[127]_i_5_n_2\,
      CO(0) => \response_reg[127]_i_5_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_response_reg[127]_i_5_O_UNCONNECTED\(3 downto 0),
      S(3) => \response[127]_i_8_n_0\,
      S(2) => \response[127]_i_9_n_0\,
      S(1) => \response[127]_i_10_n_0\,
      S(0) => \response[127]_i_11_n_0\
    );
\response_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \response[127]_i_2_n_0\,
      D => core_out(12),
      Q => response(12),
      R => \response[127]_i_1_n_0\
    );
\response_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \response[127]_i_2_n_0\,
      D => core_out(13),
      Q => response(13),
      R => \response[127]_i_1_n_0\
    );
\response_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \response[127]_i_2_n_0\,
      D => core_out(14),
      Q => response(14),
      R => \response[127]_i_1_n_0\
    );
\response_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \response[127]_i_2_n_0\,
      D => core_out(15),
      Q => response(15),
      R => \response[127]_i_1_n_0\
    );
\response_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \response[127]_i_2_n_0\,
      D => core_out(16),
      Q => response(16),
      R => \response[127]_i_1_n_0\
    );
\response_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \response[127]_i_2_n_0\,
      D => core_out(17),
      Q => response(17),
      R => \response[127]_i_1_n_0\
    );
\response_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \response[127]_i_2_n_0\,
      D => core_out(18),
      Q => response(18),
      R => \response[127]_i_1_n_0\
    );
\response_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \response[127]_i_2_n_0\,
      D => core_out(19),
      Q => response(19),
      R => \response[127]_i_1_n_0\
    );
\response_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \response[127]_i_2_n_0\,
      D => core_out(1),
      Q => response(1),
      R => \response[127]_i_1_n_0\
    );
\response_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \response[127]_i_2_n_0\,
      D => core_out(20),
      Q => response(20),
      R => \response[127]_i_1_n_0\
    );
\response_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \response[127]_i_2_n_0\,
      D => core_out(21),
      Q => response(21),
      R => \response[127]_i_1_n_0\
    );
\response_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \response[127]_i_2_n_0\,
      D => core_out(22),
      Q => response(22),
      R => \response[127]_i_1_n_0\
    );
\response_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \response[127]_i_2_n_0\,
      D => core_out(23),
      Q => response(23),
      R => \response[127]_i_1_n_0\
    );
\response_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \response[127]_i_2_n_0\,
      D => core_out(24),
      Q => response(24),
      R => \response[127]_i_1_n_0\
    );
\response_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \response[127]_i_2_n_0\,
      D => core_out(25),
      Q => response(25),
      R => \response[127]_i_1_n_0\
    );
\response_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \response[127]_i_2_n_0\,
      D => core_out(26),
      Q => response(26),
      R => \response[127]_i_1_n_0\
    );
\response_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \response[127]_i_2_n_0\,
      D => core_out(27),
      Q => response(27),
      R => \response[127]_i_1_n_0\
    );
\response_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \response[127]_i_2_n_0\,
      D => core_out(28),
      Q => response(28),
      R => \response[127]_i_1_n_0\
    );
\response_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \response[127]_i_2_n_0\,
      D => core_out(29),
      Q => response(29),
      R => \response[127]_i_1_n_0\
    );
\response_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \response[127]_i_2_n_0\,
      D => core_out(2),
      Q => response(2),
      R => \response[127]_i_1_n_0\
    );
\response_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \response[127]_i_2_n_0\,
      D => core_out(30),
      Q => response(30),
      R => \response[127]_i_1_n_0\
    );
\response_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \response[127]_i_2_n_0\,
      D => core_out(31),
      Q => response(31),
      R => \response[127]_i_1_n_0\
    );
\response_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \response[127]_i_2_n_0\,
      D => core_out(32),
      Q => response(32),
      R => \response[127]_i_1_n_0\
    );
\response_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \response[127]_i_2_n_0\,
      D => core_out(33),
      Q => response(33),
      R => \response[127]_i_1_n_0\
    );
\response_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \response[127]_i_2_n_0\,
      D => core_out(34),
      Q => response(34),
      R => \response[127]_i_1_n_0\
    );
\response_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \response[127]_i_2_n_0\,
      D => core_out(35),
      Q => response(35),
      R => \response[127]_i_1_n_0\
    );
\response_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \response[127]_i_2_n_0\,
      D => core_out(36),
      Q => response(36),
      R => \response[127]_i_1_n_0\
    );
\response_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \response[127]_i_2_n_0\,
      D => core_out(37),
      Q => response(37),
      R => \response[127]_i_1_n_0\
    );
\response_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \response[127]_i_2_n_0\,
      D => core_out(38),
      Q => response(38),
      R => \response[127]_i_1_n_0\
    );
\response_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \response[127]_i_2_n_0\,
      D => core_out(39),
      Q => response(39),
      R => \response[127]_i_1_n_0\
    );
\response_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \response[127]_i_2_n_0\,
      D => core_out(3),
      Q => response(3),
      R => \response[127]_i_1_n_0\
    );
\response_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \response[127]_i_2_n_0\,
      D => core_out(40),
      Q => response(40),
      R => \response[127]_i_1_n_0\
    );
\response_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \response[127]_i_2_n_0\,
      D => core_out(41),
      Q => response(41),
      R => \response[127]_i_1_n_0\
    );
\response_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \response[127]_i_2_n_0\,
      D => core_out(42),
      Q => response(42),
      R => \response[127]_i_1_n_0\
    );
\response_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \response[127]_i_2_n_0\,
      D => core_out(43),
      Q => response(43),
      R => \response[127]_i_1_n_0\
    );
\response_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \response[127]_i_2_n_0\,
      D => core_out(44),
      Q => response(44),
      R => \response[127]_i_1_n_0\
    );
\response_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \response[127]_i_2_n_0\,
      D => core_out(45),
      Q => response(45),
      R => \response[127]_i_1_n_0\
    );
\response_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \response[127]_i_2_n_0\,
      D => core_out(46),
      Q => response(46),
      R => \response[127]_i_1_n_0\
    );
\response_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \response[127]_i_2_n_0\,
      D => core_out(47),
      Q => response(47),
      R => \response[127]_i_1_n_0\
    );
\response_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \response[127]_i_2_n_0\,
      D => core_out(48),
      Q => response(48),
      R => \response[127]_i_1_n_0\
    );
\response_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \response[127]_i_2_n_0\,
      D => core_out(49),
      Q => response(49),
      R => \response[127]_i_1_n_0\
    );
\response_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \response[127]_i_2_n_0\,
      D => core_out(4),
      Q => response(4),
      R => \response[127]_i_1_n_0\
    );
\response_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \response[127]_i_2_n_0\,
      D => core_out(50),
      Q => response(50),
      R => \response[127]_i_1_n_0\
    );
\response_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \response[127]_i_2_n_0\,
      D => core_out(51),
      Q => response(51),
      R => \response[127]_i_1_n_0\
    );
\response_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \response[127]_i_2_n_0\,
      D => core_out(52),
      Q => response(52),
      R => \response[127]_i_1_n_0\
    );
\response_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \response[127]_i_2_n_0\,
      D => core_out(53),
      Q => response(53),
      R => \response[127]_i_1_n_0\
    );
\response_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \response[127]_i_2_n_0\,
      D => core_out(54),
      Q => response(54),
      R => \response[127]_i_1_n_0\
    );
\response_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \response[127]_i_2_n_0\,
      D => core_out(55),
      Q => response(55),
      R => \response[127]_i_1_n_0\
    );
\response_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \response[127]_i_2_n_0\,
      D => core_out(56),
      Q => response(56),
      R => \response[127]_i_1_n_0\
    );
\response_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \response[127]_i_2_n_0\,
      D => core_out(57),
      Q => response(57),
      R => \response[127]_i_1_n_0\
    );
\response_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \response[127]_i_2_n_0\,
      D => core_out(58),
      Q => response(58),
      R => \response[127]_i_1_n_0\
    );
\response_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \response[127]_i_2_n_0\,
      D => core_out(59),
      Q => response(59),
      R => \response[127]_i_1_n_0\
    );
\response_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \response[127]_i_2_n_0\,
      D => core_out(5),
      Q => response(5),
      R => \response[127]_i_1_n_0\
    );
\response_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \response[127]_i_2_n_0\,
      D => core_out(60),
      Q => response(60),
      R => \response[127]_i_1_n_0\
    );
\response_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \response[127]_i_2_n_0\,
      D => core_out(61),
      Q => response(61),
      R => \response[127]_i_1_n_0\
    );
\response_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \response[127]_i_2_n_0\,
      D => core_out(62),
      Q => response(62),
      R => \response[127]_i_1_n_0\
    );
\response_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \response[127]_i_2_n_0\,
      D => core_out(63),
      Q => response(63),
      R => \response[127]_i_1_n_0\
    );
\response_reg[64]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \response[127]_i_2_n_0\,
      D => core_out(64),
      Q => response(64),
      R => \response[127]_i_1_n_0\
    );
\response_reg[65]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \response[127]_i_2_n_0\,
      D => core_out(65),
      Q => response(65),
      R => \response[127]_i_1_n_0\
    );
\response_reg[66]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \response[127]_i_2_n_0\,
      D => core_out(66),
      Q => response(66),
      R => \response[127]_i_1_n_0\
    );
\response_reg[67]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \response[127]_i_2_n_0\,
      D => core_out(67),
      Q => response(67),
      R => \response[127]_i_1_n_0\
    );
\response_reg[68]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \response[127]_i_2_n_0\,
      D => core_out(68),
      Q => response(68),
      R => \response[127]_i_1_n_0\
    );
\response_reg[69]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \response[127]_i_2_n_0\,
      D => core_out(69),
      Q => response(69),
      R => \response[127]_i_1_n_0\
    );
\response_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \response[127]_i_2_n_0\,
      D => core_out(6),
      Q => response(6),
      R => \response[127]_i_1_n_0\
    );
\response_reg[70]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \response[127]_i_2_n_0\,
      D => core_out(70),
      Q => response(70),
      R => \response[127]_i_1_n_0\
    );
\response_reg[71]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \response[127]_i_2_n_0\,
      D => core_out(71),
      Q => response(71),
      R => \response[127]_i_1_n_0\
    );
\response_reg[72]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \response[127]_i_2_n_0\,
      D => core_out(72),
      Q => response(72),
      R => \response[127]_i_1_n_0\
    );
\response_reg[73]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \response[127]_i_2_n_0\,
      D => core_out(73),
      Q => response(73),
      R => \response[127]_i_1_n_0\
    );
\response_reg[74]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \response[127]_i_2_n_0\,
      D => core_out(74),
      Q => response(74),
      R => \response[127]_i_1_n_0\
    );
\response_reg[75]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \response[127]_i_2_n_0\,
      D => core_out(75),
      Q => response(75),
      R => \response[127]_i_1_n_0\
    );
\response_reg[76]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \response[127]_i_2_n_0\,
      D => core_out(76),
      Q => response(76),
      R => \response[127]_i_1_n_0\
    );
\response_reg[77]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \response[127]_i_2_n_0\,
      D => core_out(77),
      Q => response(77),
      R => \response[127]_i_1_n_0\
    );
\response_reg[78]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \response[127]_i_2_n_0\,
      D => core_out(78),
      Q => response(78),
      R => \response[127]_i_1_n_0\
    );
\response_reg[79]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \response[127]_i_2_n_0\,
      D => core_out(79),
      Q => response(79),
      R => \response[127]_i_1_n_0\
    );
\response_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \response[127]_i_2_n_0\,
      D => core_out(7),
      Q => response(7),
      R => \response[127]_i_1_n_0\
    );
\response_reg[80]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \response[127]_i_2_n_0\,
      D => core_out(80),
      Q => response(80),
      R => \response[127]_i_1_n_0\
    );
\response_reg[81]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \response[127]_i_2_n_0\,
      D => core_out(81),
      Q => response(81),
      R => \response[127]_i_1_n_0\
    );
\response_reg[82]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \response[127]_i_2_n_0\,
      D => core_out(82),
      Q => response(82),
      R => \response[127]_i_1_n_0\
    );
\response_reg[83]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \response[127]_i_2_n_0\,
      D => core_out(83),
      Q => response(83),
      R => \response[127]_i_1_n_0\
    );
\response_reg[84]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \response[127]_i_2_n_0\,
      D => core_out(84),
      Q => response(84),
      R => \response[127]_i_1_n_0\
    );
\response_reg[85]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \response[127]_i_2_n_0\,
      D => core_out(85),
      Q => response(85),
      R => \response[127]_i_1_n_0\
    );
\response_reg[86]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \response[127]_i_2_n_0\,
      D => core_out(86),
      Q => response(86),
      R => \response[127]_i_1_n_0\
    );
\response_reg[87]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \response[127]_i_2_n_0\,
      D => core_out(87),
      Q => response(87),
      R => \response[127]_i_1_n_0\
    );
\response_reg[88]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \response[127]_i_2_n_0\,
      D => core_out(88),
      Q => response(88),
      R => \response[127]_i_1_n_0\
    );
\response_reg[89]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \response[127]_i_2_n_0\,
      D => core_out(89),
      Q => response(89),
      R => \response[127]_i_1_n_0\
    );
\response_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \response[127]_i_2_n_0\,
      D => core_out(8),
      Q => response(8),
      R => \response[127]_i_1_n_0\
    );
\response_reg[90]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \response[127]_i_2_n_0\,
      D => core_out(90),
      Q => response(90),
      R => \response[127]_i_1_n_0\
    );
\response_reg[91]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \response[127]_i_2_n_0\,
      D => core_out(91),
      Q => response(91),
      R => \response[127]_i_1_n_0\
    );
\response_reg[92]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \response[127]_i_2_n_0\,
      D => core_out(92),
      Q => response(92),
      R => \response[127]_i_1_n_0\
    );
\response_reg[93]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \response[127]_i_2_n_0\,
      D => core_out(93),
      Q => response(93),
      R => \response[127]_i_1_n_0\
    );
\response_reg[94]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \response[127]_i_2_n_0\,
      D => core_out(94),
      Q => response(94),
      R => \response[127]_i_1_n_0\
    );
\response_reg[95]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \response[127]_i_2_n_0\,
      D => core_out(95),
      Q => response(95),
      R => \response[127]_i_1_n_0\
    );
\response_reg[96]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \response[127]_i_2_n_0\,
      D => core_out(96),
      Q => response(96),
      R => \response[127]_i_1_n_0\
    );
\response_reg[97]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \response[127]_i_2_n_0\,
      D => core_out(97),
      Q => response(97),
      R => \response[127]_i_1_n_0\
    );
\response_reg[98]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \response[127]_i_2_n_0\,
      D => core_out(98),
      Q => response(98),
      R => \response[127]_i_1_n_0\
    );
\response_reg[99]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \response[127]_i_2_n_0\,
      D => core_out(99),
      Q => response(99),
      R => \response[127]_i_1_n_0\
    );
\response_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \response[127]_i_2_n_0\,
      D => core_out(9),
      Q => response(9),
      R => \response[127]_i_1_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_plpuf_slave_lite_v1_0_S00_AXI is
  port (
    s00_axi_bvalid : out STD_LOGIC;
    axi_awready_reg_0 : out STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    axi_rvalid_reg_0 : out STD_LOGIC;
    axi_arready_reg_0 : out STD_LOGIC;
    state_write : out STD_LOGIC_VECTOR ( 1 downto 0 );
    state_read : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \axi_awready0__0\ : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_aclk : in STD_LOGIC;
    axi_bvalid_reg_0 : in STD_LOGIC;
    axi_awready_reg_1 : in STD_LOGIC;
    axi_wready_reg_0 : in STD_LOGIC;
    axi_rvalid_reg_1 : in STD_LOGIC;
    axi_arready_reg_1 : in STD_LOGIC;
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_aresetn : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_plpuf_slave_lite_v1_0_S00_AXI;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_plpuf_slave_lite_v1_0_S00_AXI is
  signal \FSM_sequential_state_read[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_read[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_write[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_write[1]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[5]_i_1_n_0\ : STD_LOGIC;
  signal \^axi_arready_reg_0\ : STD_LOGIC;
  signal axi_awaddr : STD_LOGIC;
  signal \axi_awaddr_reg_n_0_[2]\ : STD_LOGIC;
  signal \axi_awaddr_reg_n_0_[3]\ : STD_LOGIC;
  signal \axi_awaddr_reg_n_0_[4]\ : STD_LOGIC;
  signal \axi_awaddr_reg_n_0_[5]\ : STD_LOGIC;
  signal axi_awready_i_1_n_0 : STD_LOGIC;
  signal \^axi_awready_reg_0\ : STD_LOGIC;
  signal \^axi_rvalid_reg_0\ : STD_LOGIC;
  signal done_flag : STD_LOGIC;
  signal done_flag_i_1_n_0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal plpuf_busy : STD_LOGIC;
  signal plpuf_challenge : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal plpuf_done : STD_LOGIC;
  signal plpuf_response : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal plpuf_rst_n : STD_LOGIC;
  signal \s00_axi_rdata[0]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[0]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[0]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[0]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[0]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[0]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[10]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[10]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[10]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[10]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[10]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[10]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[11]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[11]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[11]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[11]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[11]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[11]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[12]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[12]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[12]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[12]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[12]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[12]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[13]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[13]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[13]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[13]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[13]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[13]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[14]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[14]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[14]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[14]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[14]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[14]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[15]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[15]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[15]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[15]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[15]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[15]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[16]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[16]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[16]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[16]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[16]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[16]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[17]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[17]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[17]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[17]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[17]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[17]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[18]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[18]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[18]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[18]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[18]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[18]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[19]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[19]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[19]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[19]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[19]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[19]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[1]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[1]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[1]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[1]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[1]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[1]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[20]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[20]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[20]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[20]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[20]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[20]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[21]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[21]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[21]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[21]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[21]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[21]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[22]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[22]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[22]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[22]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[22]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[22]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[23]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[23]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[23]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[23]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[23]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[23]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[24]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[24]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[24]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[24]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[24]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[24]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[25]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[25]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[25]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[25]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[25]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[25]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[26]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[26]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[26]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[26]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[26]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[26]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[27]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[27]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[27]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[27]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[27]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[27]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[28]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[28]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[28]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[28]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[28]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[28]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[29]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[29]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[29]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[29]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[29]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[29]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[2]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[2]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[2]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[2]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[2]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[2]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[30]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[30]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[30]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[30]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[30]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[30]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[31]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[31]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[31]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[31]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[31]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[31]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[3]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[3]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[3]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[3]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[3]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[3]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[4]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[4]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[4]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[4]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[4]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[4]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[5]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[5]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[5]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[5]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[5]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[5]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[6]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[6]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[6]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[6]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[6]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[6]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[7]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[7]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[7]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[7]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[7]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[7]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[8]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[8]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[8]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[8]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[8]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[8]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[9]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[9]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[9]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[9]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[9]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[9]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal sel0 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \slv_reg0[0]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[1]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[1]_i_2_n_0\ : STD_LOGIC;
  signal \slv_reg0[1]_i_3_n_0\ : STD_LOGIC;
  signal \slv_reg0[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[7]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[0]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[10]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[11]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[12]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[13]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[14]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[15]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[16]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[17]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[18]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[19]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[20]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[21]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[22]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[23]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[24]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[25]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[26]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[27]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[28]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[29]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[2]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[30]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[31]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[3]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[4]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[5]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[6]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[7]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[8]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[9]\ : STD_LOGIC;
  signal slv_reg10 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal slv_reg11 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg11[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg11[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg11[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg11[7]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg12 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg12[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg12[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg12[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg12[7]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg13 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg13[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg13[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg13[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg13[7]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg14 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg14[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg14[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg14[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg14[7]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg15 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg15[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg15[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg15[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg15[7]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[0]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[1]\ : STD_LOGIC;
  signal slv_reg2 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \slv_reg2[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[7]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2__0\ : STD_LOGIC_VECTOR ( 31 downto 16 );
  signal \slv_reg3[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3[7]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg4[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg4[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg4[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg4[7]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg5[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg5[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg5[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg5[7]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg6[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg6[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg6[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg6[7]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg7 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal slv_reg8 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal slv_reg9 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^state_read\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^state_write\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \wr_addr__3\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_read_reg[0]\ : label is "Idle:00,Raddr:01,Rdata:10";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_read_reg[1]\ : label is "Idle:00,Raddr:01,Rdata:10";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_state_write[0]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \FSM_sequential_state_write[1]_i_1\ : label is "soft_lutpair9";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_write_reg[0]\ : label is "Idle:00,Wdata:10,Waddr:01";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_write_reg[1]\ : label is "Idle:00,Wdata:10,Waddr:01";
  attribute SOFT_HLUTNM of done_flag_i_1 : label is "soft_lutpair10";
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of plpuf_core_inst : label is std.standard.true;
  attribute DURATION_BITS : integer;
  attribute DURATION_BITS of plpuf_core_inst : label is 16;
  attribute S_ACTIVE : string;
  attribute S_ACTIVE of plpuf_core_inst : label is "2'b10";
  attribute S_DONE : string;
  attribute S_DONE of plpuf_core_inst : label is "2'b11";
  attribute S_IDLE : string;
  attribute S_IDLE of plpuf_core_inst : label is "2'b00";
  attribute S_LOAD : string;
  attribute S_LOAD of plpuf_core_inst : label is "2'b01";
  attribute TAP_1 : integer;
  attribute TAP_1 of plpuf_core_inst : label is 125;
  attribute TAP_2 : integer;
  attribute TAP_2 of plpuf_core_inst : label is 101;
  attribute TAP_3 : integer;
  attribute TAP_3 of plpuf_core_inst : label is 98;
  attribute WIDTH : integer;
  attribute WIDTH of plpuf_core_inst : label is 128;
  attribute SOFT_HLUTNM of plpuf_core_inst_i_1 : label is "soft_lutpair10";
begin
  axi_arready_reg_0 <= \^axi_arready_reg_0\;
  axi_awready_reg_0 <= \^axi_awready_reg_0\;
  axi_rvalid_reg_0 <= \^axi_rvalid_reg_0\;
  state_read(1 downto 0) <= \^state_read\(1 downto 0);
  state_write(1 downto 0) <= \^state_write\(1 downto 0);
\FSM_sequential_state_read[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFFFFF8F8F8F8F"
    )
        port map (
      I0 => \^axi_rvalid_reg_0\,
      I1 => s00_axi_rready,
      I2 => \^state_read\(1),
      I3 => \^axi_arready_reg_0\,
      I4 => s00_axi_arvalid,
      I5 => \^state_read\(0),
      O => \FSM_sequential_state_read[0]_i_1_n_0\
    );
\FSM_sequential_state_read[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F8F8F8F800F0F0F0"
    )
        port map (
      I0 => s00_axi_arvalid,
      I1 => \^axi_arready_reg_0\,
      I2 => \^state_read\(1),
      I3 => s00_axi_rready,
      I4 => \^axi_rvalid_reg_0\,
      I5 => \^state_read\(0),
      O => \FSM_sequential_state_read[1]_i_1_n_0\
    );
\FSM_sequential_state_read_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \FSM_sequential_state_read[0]_i_1_n_0\,
      Q => \^state_read\(0),
      R => axi_awready_i_1_n_0
    );
\FSM_sequential_state_read_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \FSM_sequential_state_read[1]_i_1_n_0\,
      Q => \^state_read\(1),
      R => axi_awready_i_1_n_0
    );
\FSM_sequential_state_write[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF0F7FF"
    )
        port map (
      I0 => \^axi_awready_reg_0\,
      I1 => s00_axi_awvalid,
      I2 => s00_axi_wvalid,
      I3 => \^state_write\(0),
      I4 => \^state_write\(1),
      O => \FSM_sequential_state_write[0]_i_1_n_0\
    );
\FSM_sequential_state_write[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF0F0800"
    )
        port map (
      I0 => s00_axi_awvalid,
      I1 => \^axi_awready_reg_0\,
      I2 => s00_axi_wvalid,
      I3 => \^state_write\(0),
      I4 => \^state_write\(1),
      O => \FSM_sequential_state_write[1]_i_1_n_0\
    );
\FSM_sequential_state_write_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \FSM_sequential_state_write[0]_i_1_n_0\,
      Q => \^state_write\(0),
      R => axi_awready_i_1_n_0
    );
\FSM_sequential_state_write_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \FSM_sequential_state_write[1]_i_1_n_0\,
      Q => \^state_write\(1),
      R => axi_awready_i_1_n_0
    );
\axi_araddr[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008000"
    )
        port map (
      I0 => s00_axi_aresetn,
      I1 => \^axi_arready_reg_0\,
      I2 => s00_axi_arvalid,
      I3 => \^state_read\(0),
      I4 => \^state_read\(1),
      O => \axi_araddr[5]_i_1_n_0\
    );
\axi_araddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_araddr[5]_i_1_n_0\,
      D => s00_axi_araddr(0),
      Q => sel0(0),
      R => '0'
    );
\axi_araddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_araddr[5]_i_1_n_0\,
      D => s00_axi_araddr(1),
      Q => sel0(1),
      R => '0'
    );
\axi_araddr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_araddr[5]_i_1_n_0\,
      D => s00_axi_araddr(2),
      Q => sel0(2),
      R => '0'
    );
\axi_araddr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_araddr[5]_i_1_n_0\,
      D => s00_axi_araddr(3),
      Q => sel0(3),
      R => '0'
    );
axi_arready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_arready_reg_1,
      Q => \^axi_arready_reg_0\,
      R => axi_awready_i_1_n_0
    );
\axi_awaddr[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => \^state_write\(1),
      I1 => \^state_write\(0),
      I2 => s00_axi_awvalid,
      I3 => \^axi_awready_reg_0\,
      O => axi_awaddr
    );
\axi_awaddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_awaddr,
      D => s00_axi_awaddr(0),
      Q => \axi_awaddr_reg_n_0_[2]\,
      R => axi_awready_i_1_n_0
    );
\axi_awaddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_awaddr,
      D => s00_axi_awaddr(1),
      Q => \axi_awaddr_reg_n_0_[3]\,
      R => axi_awready_i_1_n_0
    );
\axi_awaddr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_awaddr,
      D => s00_axi_awaddr(2),
      Q => \axi_awaddr_reg_n_0_[4]\,
      R => axi_awready_i_1_n_0
    );
\axi_awaddr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_awaddr,
      D => s00_axi_awaddr(3),
      Q => \axi_awaddr_reg_n_0_[5]\,
      R => axi_awready_i_1_n_0
    );
axi_awready_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s00_axi_aresetn,
      O => axi_awready_i_1_n_0
    );
axi_awready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_awready_reg_1,
      Q => \^axi_awready_reg_0\,
      R => axi_awready_i_1_n_0
    );
axi_bvalid_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s00_axi_awvalid,
      I1 => \^axi_awready_reg_0\,
      O => \axi_awready0__0\
    );
axi_bvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_bvalid_reg_0,
      Q => s00_axi_bvalid,
      R => axi_awready_i_1_n_0
    );
axi_rvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_rvalid_reg_1,
      Q => \^axi_rvalid_reg_0\,
      R => axi_awready_i_1_n_0
    );
axi_wready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_wready_reg_0,
      Q => s00_axi_wready,
      R => axi_awready_i_1_n_0
    );
done_flag_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000E0"
    )
        port map (
      I0 => done_flag,
      I1 => plpuf_done,
      I2 => s00_axi_aresetn,
      I3 => \slv_reg0_reg_n_0_[0]\,
      I4 => p_0_in,
      O => done_flag_i_1_n_0
    );
done_flag_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => done_flag_i_1_n_0,
      Q => done_flag,
      R => '0'
    );
plpuf_core_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_plpuf_core
     port map (
      activation_duration(15 downto 0) => slv_reg2(15 downto 0),
      busy => plpuf_busy,
      challenge(127 downto 0) => plpuf_challenge(127 downto 0),
      clk => s00_axi_aclk,
      done => plpuf_done,
      response(127 downto 0) => plpuf_response(127 downto 0),
      rst_n => plpuf_rst_n,
      start => \slv_reg0_reg_n_0_[0]\
    );
plpuf_core_inst_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s00_axi_aresetn,
      I1 => p_0_in,
      O => plpuf_rst_n
    );
\s00_axi_rdata[0]_INST_0\: unisim.vcomponents.MUXF8
     port map (
      I0 => \s00_axi_rdata[0]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[0]_INST_0_i_2_n_0\,
      O => s00_axi_rdata(0),
      S => sel0(3)
    );
\s00_axi_rdata[0]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[0]_INST_0_i_3_n_0\,
      I1 => \s00_axi_rdata[0]_INST_0_i_4_n_0\,
      O => \s00_axi_rdata[0]_INST_0_i_1_n_0\,
      S => sel0(2)
    );
\s00_axi_rdata[0]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[0]_INST_0_i_5_n_0\,
      I1 => \s00_axi_rdata[0]_INST_0_i_6_n_0\,
      O => \s00_axi_rdata[0]_INST_0_i_2_n_0\,
      S => sel0(2)
    );
\s00_axi_rdata[0]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => plpuf_challenge(0),
      I1 => slv_reg2(0),
      I2 => sel0(1),
      I3 => \slv_reg1_reg_n_0_[0]\,
      I4 => sel0(0),
      I5 => \slv_reg0_reg_n_0_[0]\,
      O => \s00_axi_rdata[0]_INST_0_i_3_n_0\
    );
\s00_axi_rdata[0]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(0),
      I1 => plpuf_challenge(96),
      I2 => sel0(1),
      I3 => plpuf_challenge(64),
      I4 => sel0(0),
      I5 => plpuf_challenge(32),
      O => \s00_axi_rdata[0]_INST_0_i_4_n_0\
    );
\s00_axi_rdata[0]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg11(0),
      I1 => slv_reg10(0),
      I2 => sel0(1),
      I3 => slv_reg9(0),
      I4 => sel0(0),
      I5 => slv_reg8(0),
      O => \s00_axi_rdata[0]_INST_0_i_5_n_0\
    );
\s00_axi_rdata[0]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg15(0),
      I1 => slv_reg14(0),
      I2 => sel0(1),
      I3 => slv_reg13(0),
      I4 => sel0(0),
      I5 => slv_reg12(0),
      O => \s00_axi_rdata[0]_INST_0_i_6_n_0\
    );
\s00_axi_rdata[10]_INST_0\: unisim.vcomponents.MUXF8
     port map (
      I0 => \s00_axi_rdata[10]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[10]_INST_0_i_2_n_0\,
      O => s00_axi_rdata(10),
      S => sel0(3)
    );
\s00_axi_rdata[10]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[10]_INST_0_i_3_n_0\,
      I1 => \s00_axi_rdata[10]_INST_0_i_4_n_0\,
      O => \s00_axi_rdata[10]_INST_0_i_1_n_0\,
      S => sel0(2)
    );
\s00_axi_rdata[10]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[10]_INST_0_i_5_n_0\,
      I1 => \s00_axi_rdata[10]_INST_0_i_6_n_0\,
      O => \s00_axi_rdata[10]_INST_0_i_2_n_0\,
      S => sel0(2)
    );
\s00_axi_rdata[10]_INST_0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => plpuf_challenge(10),
      I1 => slv_reg2(10),
      I2 => sel0(1),
      I3 => \slv_reg0_reg_n_0_[10]\,
      I4 => sel0(0),
      O => \s00_axi_rdata[10]_INST_0_i_3_n_0\
    );
\s00_axi_rdata[10]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(10),
      I1 => plpuf_challenge(106),
      I2 => sel0(1),
      I3 => plpuf_challenge(74),
      I4 => sel0(0),
      I5 => plpuf_challenge(42),
      O => \s00_axi_rdata[10]_INST_0_i_4_n_0\
    );
\s00_axi_rdata[10]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg11(10),
      I1 => slv_reg10(10),
      I2 => sel0(1),
      I3 => slv_reg9(10),
      I4 => sel0(0),
      I5 => slv_reg8(10),
      O => \s00_axi_rdata[10]_INST_0_i_5_n_0\
    );
\s00_axi_rdata[10]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg15(10),
      I1 => slv_reg14(10),
      I2 => sel0(1),
      I3 => slv_reg13(10),
      I4 => sel0(0),
      I5 => slv_reg12(10),
      O => \s00_axi_rdata[10]_INST_0_i_6_n_0\
    );
\s00_axi_rdata[11]_INST_0\: unisim.vcomponents.MUXF8
     port map (
      I0 => \s00_axi_rdata[11]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[11]_INST_0_i_2_n_0\,
      O => s00_axi_rdata(11),
      S => sel0(3)
    );
\s00_axi_rdata[11]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[11]_INST_0_i_3_n_0\,
      I1 => \s00_axi_rdata[11]_INST_0_i_4_n_0\,
      O => \s00_axi_rdata[11]_INST_0_i_1_n_0\,
      S => sel0(2)
    );
\s00_axi_rdata[11]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[11]_INST_0_i_5_n_0\,
      I1 => \s00_axi_rdata[11]_INST_0_i_6_n_0\,
      O => \s00_axi_rdata[11]_INST_0_i_2_n_0\,
      S => sel0(2)
    );
\s00_axi_rdata[11]_INST_0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => plpuf_challenge(11),
      I1 => slv_reg2(11),
      I2 => sel0(1),
      I3 => \slv_reg0_reg_n_0_[11]\,
      I4 => sel0(0),
      O => \s00_axi_rdata[11]_INST_0_i_3_n_0\
    );
\s00_axi_rdata[11]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(11),
      I1 => plpuf_challenge(107),
      I2 => sel0(1),
      I3 => plpuf_challenge(75),
      I4 => sel0(0),
      I5 => plpuf_challenge(43),
      O => \s00_axi_rdata[11]_INST_0_i_4_n_0\
    );
\s00_axi_rdata[11]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg11(11),
      I1 => slv_reg10(11),
      I2 => sel0(1),
      I3 => slv_reg9(11),
      I4 => sel0(0),
      I5 => slv_reg8(11),
      O => \s00_axi_rdata[11]_INST_0_i_5_n_0\
    );
\s00_axi_rdata[11]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg15(11),
      I1 => slv_reg14(11),
      I2 => sel0(1),
      I3 => slv_reg13(11),
      I4 => sel0(0),
      I5 => slv_reg12(11),
      O => \s00_axi_rdata[11]_INST_0_i_6_n_0\
    );
\s00_axi_rdata[12]_INST_0\: unisim.vcomponents.MUXF8
     port map (
      I0 => \s00_axi_rdata[12]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[12]_INST_0_i_2_n_0\,
      O => s00_axi_rdata(12),
      S => sel0(3)
    );
\s00_axi_rdata[12]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[12]_INST_0_i_3_n_0\,
      I1 => \s00_axi_rdata[12]_INST_0_i_4_n_0\,
      O => \s00_axi_rdata[12]_INST_0_i_1_n_0\,
      S => sel0(2)
    );
\s00_axi_rdata[12]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[12]_INST_0_i_5_n_0\,
      I1 => \s00_axi_rdata[12]_INST_0_i_6_n_0\,
      O => \s00_axi_rdata[12]_INST_0_i_2_n_0\,
      S => sel0(2)
    );
\s00_axi_rdata[12]_INST_0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => plpuf_challenge(12),
      I1 => slv_reg2(12),
      I2 => sel0(1),
      I3 => \slv_reg0_reg_n_0_[12]\,
      I4 => sel0(0),
      O => \s00_axi_rdata[12]_INST_0_i_3_n_0\
    );
\s00_axi_rdata[12]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(12),
      I1 => plpuf_challenge(108),
      I2 => sel0(1),
      I3 => plpuf_challenge(76),
      I4 => sel0(0),
      I5 => plpuf_challenge(44),
      O => \s00_axi_rdata[12]_INST_0_i_4_n_0\
    );
\s00_axi_rdata[12]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg11(12),
      I1 => slv_reg10(12),
      I2 => sel0(1),
      I3 => slv_reg9(12),
      I4 => sel0(0),
      I5 => slv_reg8(12),
      O => \s00_axi_rdata[12]_INST_0_i_5_n_0\
    );
\s00_axi_rdata[12]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg15(12),
      I1 => slv_reg14(12),
      I2 => sel0(1),
      I3 => slv_reg13(12),
      I4 => sel0(0),
      I5 => slv_reg12(12),
      O => \s00_axi_rdata[12]_INST_0_i_6_n_0\
    );
\s00_axi_rdata[13]_INST_0\: unisim.vcomponents.MUXF8
     port map (
      I0 => \s00_axi_rdata[13]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[13]_INST_0_i_2_n_0\,
      O => s00_axi_rdata(13),
      S => sel0(3)
    );
\s00_axi_rdata[13]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[13]_INST_0_i_3_n_0\,
      I1 => \s00_axi_rdata[13]_INST_0_i_4_n_0\,
      O => \s00_axi_rdata[13]_INST_0_i_1_n_0\,
      S => sel0(2)
    );
\s00_axi_rdata[13]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[13]_INST_0_i_5_n_0\,
      I1 => \s00_axi_rdata[13]_INST_0_i_6_n_0\,
      O => \s00_axi_rdata[13]_INST_0_i_2_n_0\,
      S => sel0(2)
    );
\s00_axi_rdata[13]_INST_0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => plpuf_challenge(13),
      I1 => slv_reg2(13),
      I2 => sel0(1),
      I3 => \slv_reg0_reg_n_0_[13]\,
      I4 => sel0(0),
      O => \s00_axi_rdata[13]_INST_0_i_3_n_0\
    );
\s00_axi_rdata[13]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(13),
      I1 => plpuf_challenge(109),
      I2 => sel0(1),
      I3 => plpuf_challenge(77),
      I4 => sel0(0),
      I5 => plpuf_challenge(45),
      O => \s00_axi_rdata[13]_INST_0_i_4_n_0\
    );
\s00_axi_rdata[13]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg11(13),
      I1 => slv_reg10(13),
      I2 => sel0(1),
      I3 => slv_reg9(13),
      I4 => sel0(0),
      I5 => slv_reg8(13),
      O => \s00_axi_rdata[13]_INST_0_i_5_n_0\
    );
\s00_axi_rdata[13]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg15(13),
      I1 => slv_reg14(13),
      I2 => sel0(1),
      I3 => slv_reg13(13),
      I4 => sel0(0),
      I5 => slv_reg12(13),
      O => \s00_axi_rdata[13]_INST_0_i_6_n_0\
    );
\s00_axi_rdata[14]_INST_0\: unisim.vcomponents.MUXF8
     port map (
      I0 => \s00_axi_rdata[14]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[14]_INST_0_i_2_n_0\,
      O => s00_axi_rdata(14),
      S => sel0(3)
    );
\s00_axi_rdata[14]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[14]_INST_0_i_3_n_0\,
      I1 => \s00_axi_rdata[14]_INST_0_i_4_n_0\,
      O => \s00_axi_rdata[14]_INST_0_i_1_n_0\,
      S => sel0(2)
    );
\s00_axi_rdata[14]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[14]_INST_0_i_5_n_0\,
      I1 => \s00_axi_rdata[14]_INST_0_i_6_n_0\,
      O => \s00_axi_rdata[14]_INST_0_i_2_n_0\,
      S => sel0(2)
    );
\s00_axi_rdata[14]_INST_0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => plpuf_challenge(14),
      I1 => slv_reg2(14),
      I2 => sel0(1),
      I3 => \slv_reg0_reg_n_0_[14]\,
      I4 => sel0(0),
      O => \s00_axi_rdata[14]_INST_0_i_3_n_0\
    );
\s00_axi_rdata[14]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(14),
      I1 => plpuf_challenge(110),
      I2 => sel0(1),
      I3 => plpuf_challenge(78),
      I4 => sel0(0),
      I5 => plpuf_challenge(46),
      O => \s00_axi_rdata[14]_INST_0_i_4_n_0\
    );
\s00_axi_rdata[14]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg11(14),
      I1 => slv_reg10(14),
      I2 => sel0(1),
      I3 => slv_reg9(14),
      I4 => sel0(0),
      I5 => slv_reg8(14),
      O => \s00_axi_rdata[14]_INST_0_i_5_n_0\
    );
\s00_axi_rdata[14]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg15(14),
      I1 => slv_reg14(14),
      I2 => sel0(1),
      I3 => slv_reg13(14),
      I4 => sel0(0),
      I5 => slv_reg12(14),
      O => \s00_axi_rdata[14]_INST_0_i_6_n_0\
    );
\s00_axi_rdata[15]_INST_0\: unisim.vcomponents.MUXF8
     port map (
      I0 => \s00_axi_rdata[15]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[15]_INST_0_i_2_n_0\,
      O => s00_axi_rdata(15),
      S => sel0(3)
    );
\s00_axi_rdata[15]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[15]_INST_0_i_3_n_0\,
      I1 => \s00_axi_rdata[15]_INST_0_i_4_n_0\,
      O => \s00_axi_rdata[15]_INST_0_i_1_n_0\,
      S => sel0(2)
    );
\s00_axi_rdata[15]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[15]_INST_0_i_5_n_0\,
      I1 => \s00_axi_rdata[15]_INST_0_i_6_n_0\,
      O => \s00_axi_rdata[15]_INST_0_i_2_n_0\,
      S => sel0(2)
    );
\s00_axi_rdata[15]_INST_0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => plpuf_challenge(15),
      I1 => slv_reg2(15),
      I2 => sel0(1),
      I3 => \slv_reg0_reg_n_0_[15]\,
      I4 => sel0(0),
      O => \s00_axi_rdata[15]_INST_0_i_3_n_0\
    );
\s00_axi_rdata[15]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(15),
      I1 => plpuf_challenge(111),
      I2 => sel0(1),
      I3 => plpuf_challenge(79),
      I4 => sel0(0),
      I5 => plpuf_challenge(47),
      O => \s00_axi_rdata[15]_INST_0_i_4_n_0\
    );
\s00_axi_rdata[15]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg11(15),
      I1 => slv_reg10(15),
      I2 => sel0(1),
      I3 => slv_reg9(15),
      I4 => sel0(0),
      I5 => slv_reg8(15),
      O => \s00_axi_rdata[15]_INST_0_i_5_n_0\
    );
\s00_axi_rdata[15]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg15(15),
      I1 => slv_reg14(15),
      I2 => sel0(1),
      I3 => slv_reg13(15),
      I4 => sel0(0),
      I5 => slv_reg12(15),
      O => \s00_axi_rdata[15]_INST_0_i_6_n_0\
    );
\s00_axi_rdata[16]_INST_0\: unisim.vcomponents.MUXF8
     port map (
      I0 => \s00_axi_rdata[16]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[16]_INST_0_i_2_n_0\,
      O => s00_axi_rdata(16),
      S => sel0(3)
    );
\s00_axi_rdata[16]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[16]_INST_0_i_3_n_0\,
      I1 => \s00_axi_rdata[16]_INST_0_i_4_n_0\,
      O => \s00_axi_rdata[16]_INST_0_i_1_n_0\,
      S => sel0(2)
    );
\s00_axi_rdata[16]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[16]_INST_0_i_5_n_0\,
      I1 => \s00_axi_rdata[16]_INST_0_i_6_n_0\,
      O => \s00_axi_rdata[16]_INST_0_i_2_n_0\,
      S => sel0(2)
    );
\s00_axi_rdata[16]_INST_0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => plpuf_challenge(16),
      I1 => \slv_reg2__0\(16),
      I2 => sel0(1),
      I3 => \slv_reg0_reg_n_0_[16]\,
      I4 => sel0(0),
      O => \s00_axi_rdata[16]_INST_0_i_3_n_0\
    );
\s00_axi_rdata[16]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(16),
      I1 => plpuf_challenge(112),
      I2 => sel0(1),
      I3 => plpuf_challenge(80),
      I4 => sel0(0),
      I5 => plpuf_challenge(48),
      O => \s00_axi_rdata[16]_INST_0_i_4_n_0\
    );
\s00_axi_rdata[16]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg11(16),
      I1 => slv_reg10(16),
      I2 => sel0(1),
      I3 => slv_reg9(16),
      I4 => sel0(0),
      I5 => slv_reg8(16),
      O => \s00_axi_rdata[16]_INST_0_i_5_n_0\
    );
\s00_axi_rdata[16]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg15(16),
      I1 => slv_reg14(16),
      I2 => sel0(1),
      I3 => slv_reg13(16),
      I4 => sel0(0),
      I5 => slv_reg12(16),
      O => \s00_axi_rdata[16]_INST_0_i_6_n_0\
    );
\s00_axi_rdata[17]_INST_0\: unisim.vcomponents.MUXF8
     port map (
      I0 => \s00_axi_rdata[17]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[17]_INST_0_i_2_n_0\,
      O => s00_axi_rdata(17),
      S => sel0(3)
    );
\s00_axi_rdata[17]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[17]_INST_0_i_3_n_0\,
      I1 => \s00_axi_rdata[17]_INST_0_i_4_n_0\,
      O => \s00_axi_rdata[17]_INST_0_i_1_n_0\,
      S => sel0(2)
    );
\s00_axi_rdata[17]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[17]_INST_0_i_5_n_0\,
      I1 => \s00_axi_rdata[17]_INST_0_i_6_n_0\,
      O => \s00_axi_rdata[17]_INST_0_i_2_n_0\,
      S => sel0(2)
    );
\s00_axi_rdata[17]_INST_0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => plpuf_challenge(17),
      I1 => \slv_reg2__0\(17),
      I2 => sel0(1),
      I3 => \slv_reg0_reg_n_0_[17]\,
      I4 => sel0(0),
      O => \s00_axi_rdata[17]_INST_0_i_3_n_0\
    );
\s00_axi_rdata[17]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(17),
      I1 => plpuf_challenge(113),
      I2 => sel0(1),
      I3 => plpuf_challenge(81),
      I4 => sel0(0),
      I5 => plpuf_challenge(49),
      O => \s00_axi_rdata[17]_INST_0_i_4_n_0\
    );
\s00_axi_rdata[17]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg11(17),
      I1 => slv_reg10(17),
      I2 => sel0(1),
      I3 => slv_reg9(17),
      I4 => sel0(0),
      I5 => slv_reg8(17),
      O => \s00_axi_rdata[17]_INST_0_i_5_n_0\
    );
\s00_axi_rdata[17]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg15(17),
      I1 => slv_reg14(17),
      I2 => sel0(1),
      I3 => slv_reg13(17),
      I4 => sel0(0),
      I5 => slv_reg12(17),
      O => \s00_axi_rdata[17]_INST_0_i_6_n_0\
    );
\s00_axi_rdata[18]_INST_0\: unisim.vcomponents.MUXF8
     port map (
      I0 => \s00_axi_rdata[18]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[18]_INST_0_i_2_n_0\,
      O => s00_axi_rdata(18),
      S => sel0(3)
    );
\s00_axi_rdata[18]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[18]_INST_0_i_3_n_0\,
      I1 => \s00_axi_rdata[18]_INST_0_i_4_n_0\,
      O => \s00_axi_rdata[18]_INST_0_i_1_n_0\,
      S => sel0(2)
    );
\s00_axi_rdata[18]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[18]_INST_0_i_5_n_0\,
      I1 => \s00_axi_rdata[18]_INST_0_i_6_n_0\,
      O => \s00_axi_rdata[18]_INST_0_i_2_n_0\,
      S => sel0(2)
    );
\s00_axi_rdata[18]_INST_0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => plpuf_challenge(18),
      I1 => \slv_reg2__0\(18),
      I2 => sel0(1),
      I3 => \slv_reg0_reg_n_0_[18]\,
      I4 => sel0(0),
      O => \s00_axi_rdata[18]_INST_0_i_3_n_0\
    );
\s00_axi_rdata[18]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(18),
      I1 => plpuf_challenge(114),
      I2 => sel0(1),
      I3 => plpuf_challenge(82),
      I4 => sel0(0),
      I5 => plpuf_challenge(50),
      O => \s00_axi_rdata[18]_INST_0_i_4_n_0\
    );
\s00_axi_rdata[18]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg11(18),
      I1 => slv_reg10(18),
      I2 => sel0(1),
      I3 => slv_reg9(18),
      I4 => sel0(0),
      I5 => slv_reg8(18),
      O => \s00_axi_rdata[18]_INST_0_i_5_n_0\
    );
\s00_axi_rdata[18]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg15(18),
      I1 => slv_reg14(18),
      I2 => sel0(1),
      I3 => slv_reg13(18),
      I4 => sel0(0),
      I5 => slv_reg12(18),
      O => \s00_axi_rdata[18]_INST_0_i_6_n_0\
    );
\s00_axi_rdata[19]_INST_0\: unisim.vcomponents.MUXF8
     port map (
      I0 => \s00_axi_rdata[19]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[19]_INST_0_i_2_n_0\,
      O => s00_axi_rdata(19),
      S => sel0(3)
    );
\s00_axi_rdata[19]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[19]_INST_0_i_3_n_0\,
      I1 => \s00_axi_rdata[19]_INST_0_i_4_n_0\,
      O => \s00_axi_rdata[19]_INST_0_i_1_n_0\,
      S => sel0(2)
    );
\s00_axi_rdata[19]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[19]_INST_0_i_5_n_0\,
      I1 => \s00_axi_rdata[19]_INST_0_i_6_n_0\,
      O => \s00_axi_rdata[19]_INST_0_i_2_n_0\,
      S => sel0(2)
    );
\s00_axi_rdata[19]_INST_0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => plpuf_challenge(19),
      I1 => \slv_reg2__0\(19),
      I2 => sel0(1),
      I3 => \slv_reg0_reg_n_0_[19]\,
      I4 => sel0(0),
      O => \s00_axi_rdata[19]_INST_0_i_3_n_0\
    );
\s00_axi_rdata[19]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(19),
      I1 => plpuf_challenge(115),
      I2 => sel0(1),
      I3 => plpuf_challenge(83),
      I4 => sel0(0),
      I5 => plpuf_challenge(51),
      O => \s00_axi_rdata[19]_INST_0_i_4_n_0\
    );
\s00_axi_rdata[19]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg11(19),
      I1 => slv_reg10(19),
      I2 => sel0(1),
      I3 => slv_reg9(19),
      I4 => sel0(0),
      I5 => slv_reg8(19),
      O => \s00_axi_rdata[19]_INST_0_i_5_n_0\
    );
\s00_axi_rdata[19]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg15(19),
      I1 => slv_reg14(19),
      I2 => sel0(1),
      I3 => slv_reg13(19),
      I4 => sel0(0),
      I5 => slv_reg12(19),
      O => \s00_axi_rdata[19]_INST_0_i_6_n_0\
    );
\s00_axi_rdata[1]_INST_0\: unisim.vcomponents.MUXF8
     port map (
      I0 => \s00_axi_rdata[1]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[1]_INST_0_i_2_n_0\,
      O => s00_axi_rdata(1),
      S => sel0(3)
    );
\s00_axi_rdata[1]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[1]_INST_0_i_3_n_0\,
      I1 => \s00_axi_rdata[1]_INST_0_i_4_n_0\,
      O => \s00_axi_rdata[1]_INST_0_i_1_n_0\,
      S => sel0(2)
    );
\s00_axi_rdata[1]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[1]_INST_0_i_5_n_0\,
      I1 => \s00_axi_rdata[1]_INST_0_i_6_n_0\,
      O => \s00_axi_rdata[1]_INST_0_i_2_n_0\,
      S => sel0(2)
    );
\s00_axi_rdata[1]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => plpuf_challenge(1),
      I1 => slv_reg2(1),
      I2 => sel0(1),
      I3 => \slv_reg1_reg_n_0_[1]\,
      I4 => sel0(0),
      I5 => p_0_in,
      O => \s00_axi_rdata[1]_INST_0_i_3_n_0\
    );
\s00_axi_rdata[1]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(1),
      I1 => plpuf_challenge(97),
      I2 => sel0(1),
      I3 => plpuf_challenge(65),
      I4 => sel0(0),
      I5 => plpuf_challenge(33),
      O => \s00_axi_rdata[1]_INST_0_i_4_n_0\
    );
\s00_axi_rdata[1]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg11(1),
      I1 => slv_reg10(1),
      I2 => sel0(1),
      I3 => slv_reg9(1),
      I4 => sel0(0),
      I5 => slv_reg8(1),
      O => \s00_axi_rdata[1]_INST_0_i_5_n_0\
    );
\s00_axi_rdata[1]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg15(1),
      I1 => slv_reg14(1),
      I2 => sel0(1),
      I3 => slv_reg13(1),
      I4 => sel0(0),
      I5 => slv_reg12(1),
      O => \s00_axi_rdata[1]_INST_0_i_6_n_0\
    );
\s00_axi_rdata[20]_INST_0\: unisim.vcomponents.MUXF8
     port map (
      I0 => \s00_axi_rdata[20]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[20]_INST_0_i_2_n_0\,
      O => s00_axi_rdata(20),
      S => sel0(3)
    );
\s00_axi_rdata[20]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[20]_INST_0_i_3_n_0\,
      I1 => \s00_axi_rdata[20]_INST_0_i_4_n_0\,
      O => \s00_axi_rdata[20]_INST_0_i_1_n_0\,
      S => sel0(2)
    );
\s00_axi_rdata[20]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[20]_INST_0_i_5_n_0\,
      I1 => \s00_axi_rdata[20]_INST_0_i_6_n_0\,
      O => \s00_axi_rdata[20]_INST_0_i_2_n_0\,
      S => sel0(2)
    );
\s00_axi_rdata[20]_INST_0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => plpuf_challenge(20),
      I1 => \slv_reg2__0\(20),
      I2 => sel0(1),
      I3 => \slv_reg0_reg_n_0_[20]\,
      I4 => sel0(0),
      O => \s00_axi_rdata[20]_INST_0_i_3_n_0\
    );
\s00_axi_rdata[20]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(20),
      I1 => plpuf_challenge(116),
      I2 => sel0(1),
      I3 => plpuf_challenge(84),
      I4 => sel0(0),
      I5 => plpuf_challenge(52),
      O => \s00_axi_rdata[20]_INST_0_i_4_n_0\
    );
\s00_axi_rdata[20]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg11(20),
      I1 => slv_reg10(20),
      I2 => sel0(1),
      I3 => slv_reg9(20),
      I4 => sel0(0),
      I5 => slv_reg8(20),
      O => \s00_axi_rdata[20]_INST_0_i_5_n_0\
    );
\s00_axi_rdata[20]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg15(20),
      I1 => slv_reg14(20),
      I2 => sel0(1),
      I3 => slv_reg13(20),
      I4 => sel0(0),
      I5 => slv_reg12(20),
      O => \s00_axi_rdata[20]_INST_0_i_6_n_0\
    );
\s00_axi_rdata[21]_INST_0\: unisim.vcomponents.MUXF8
     port map (
      I0 => \s00_axi_rdata[21]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[21]_INST_0_i_2_n_0\,
      O => s00_axi_rdata(21),
      S => sel0(3)
    );
\s00_axi_rdata[21]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[21]_INST_0_i_3_n_0\,
      I1 => \s00_axi_rdata[21]_INST_0_i_4_n_0\,
      O => \s00_axi_rdata[21]_INST_0_i_1_n_0\,
      S => sel0(2)
    );
\s00_axi_rdata[21]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[21]_INST_0_i_5_n_0\,
      I1 => \s00_axi_rdata[21]_INST_0_i_6_n_0\,
      O => \s00_axi_rdata[21]_INST_0_i_2_n_0\,
      S => sel0(2)
    );
\s00_axi_rdata[21]_INST_0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => plpuf_challenge(21),
      I1 => \slv_reg2__0\(21),
      I2 => sel0(1),
      I3 => \slv_reg0_reg_n_0_[21]\,
      I4 => sel0(0),
      O => \s00_axi_rdata[21]_INST_0_i_3_n_0\
    );
\s00_axi_rdata[21]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(21),
      I1 => plpuf_challenge(117),
      I2 => sel0(1),
      I3 => plpuf_challenge(85),
      I4 => sel0(0),
      I5 => plpuf_challenge(53),
      O => \s00_axi_rdata[21]_INST_0_i_4_n_0\
    );
\s00_axi_rdata[21]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg11(21),
      I1 => slv_reg10(21),
      I2 => sel0(1),
      I3 => slv_reg9(21),
      I4 => sel0(0),
      I5 => slv_reg8(21),
      O => \s00_axi_rdata[21]_INST_0_i_5_n_0\
    );
\s00_axi_rdata[21]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg15(21),
      I1 => slv_reg14(21),
      I2 => sel0(1),
      I3 => slv_reg13(21),
      I4 => sel0(0),
      I5 => slv_reg12(21),
      O => \s00_axi_rdata[21]_INST_0_i_6_n_0\
    );
\s00_axi_rdata[22]_INST_0\: unisim.vcomponents.MUXF8
     port map (
      I0 => \s00_axi_rdata[22]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[22]_INST_0_i_2_n_0\,
      O => s00_axi_rdata(22),
      S => sel0(3)
    );
\s00_axi_rdata[22]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[22]_INST_0_i_3_n_0\,
      I1 => \s00_axi_rdata[22]_INST_0_i_4_n_0\,
      O => \s00_axi_rdata[22]_INST_0_i_1_n_0\,
      S => sel0(2)
    );
\s00_axi_rdata[22]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[22]_INST_0_i_5_n_0\,
      I1 => \s00_axi_rdata[22]_INST_0_i_6_n_0\,
      O => \s00_axi_rdata[22]_INST_0_i_2_n_0\,
      S => sel0(2)
    );
\s00_axi_rdata[22]_INST_0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => plpuf_challenge(22),
      I1 => \slv_reg2__0\(22),
      I2 => sel0(1),
      I3 => \slv_reg0_reg_n_0_[22]\,
      I4 => sel0(0),
      O => \s00_axi_rdata[22]_INST_0_i_3_n_0\
    );
\s00_axi_rdata[22]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(22),
      I1 => plpuf_challenge(118),
      I2 => sel0(1),
      I3 => plpuf_challenge(86),
      I4 => sel0(0),
      I5 => plpuf_challenge(54),
      O => \s00_axi_rdata[22]_INST_0_i_4_n_0\
    );
\s00_axi_rdata[22]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg11(22),
      I1 => slv_reg10(22),
      I2 => sel0(1),
      I3 => slv_reg9(22),
      I4 => sel0(0),
      I5 => slv_reg8(22),
      O => \s00_axi_rdata[22]_INST_0_i_5_n_0\
    );
\s00_axi_rdata[22]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg15(22),
      I1 => slv_reg14(22),
      I2 => sel0(1),
      I3 => slv_reg13(22),
      I4 => sel0(0),
      I5 => slv_reg12(22),
      O => \s00_axi_rdata[22]_INST_0_i_6_n_0\
    );
\s00_axi_rdata[23]_INST_0\: unisim.vcomponents.MUXF8
     port map (
      I0 => \s00_axi_rdata[23]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[23]_INST_0_i_2_n_0\,
      O => s00_axi_rdata(23),
      S => sel0(3)
    );
\s00_axi_rdata[23]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[23]_INST_0_i_3_n_0\,
      I1 => \s00_axi_rdata[23]_INST_0_i_4_n_0\,
      O => \s00_axi_rdata[23]_INST_0_i_1_n_0\,
      S => sel0(2)
    );
\s00_axi_rdata[23]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[23]_INST_0_i_5_n_0\,
      I1 => \s00_axi_rdata[23]_INST_0_i_6_n_0\,
      O => \s00_axi_rdata[23]_INST_0_i_2_n_0\,
      S => sel0(2)
    );
\s00_axi_rdata[23]_INST_0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => plpuf_challenge(23),
      I1 => \slv_reg2__0\(23),
      I2 => sel0(1),
      I3 => \slv_reg0_reg_n_0_[23]\,
      I4 => sel0(0),
      O => \s00_axi_rdata[23]_INST_0_i_3_n_0\
    );
\s00_axi_rdata[23]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(23),
      I1 => plpuf_challenge(119),
      I2 => sel0(1),
      I3 => plpuf_challenge(87),
      I4 => sel0(0),
      I5 => plpuf_challenge(55),
      O => \s00_axi_rdata[23]_INST_0_i_4_n_0\
    );
\s00_axi_rdata[23]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg11(23),
      I1 => slv_reg10(23),
      I2 => sel0(1),
      I3 => slv_reg9(23),
      I4 => sel0(0),
      I5 => slv_reg8(23),
      O => \s00_axi_rdata[23]_INST_0_i_5_n_0\
    );
\s00_axi_rdata[23]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg15(23),
      I1 => slv_reg14(23),
      I2 => sel0(1),
      I3 => slv_reg13(23),
      I4 => sel0(0),
      I5 => slv_reg12(23),
      O => \s00_axi_rdata[23]_INST_0_i_6_n_0\
    );
\s00_axi_rdata[24]_INST_0\: unisim.vcomponents.MUXF8
     port map (
      I0 => \s00_axi_rdata[24]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[24]_INST_0_i_2_n_0\,
      O => s00_axi_rdata(24),
      S => sel0(3)
    );
\s00_axi_rdata[24]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[24]_INST_0_i_3_n_0\,
      I1 => \s00_axi_rdata[24]_INST_0_i_4_n_0\,
      O => \s00_axi_rdata[24]_INST_0_i_1_n_0\,
      S => sel0(2)
    );
\s00_axi_rdata[24]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[24]_INST_0_i_5_n_0\,
      I1 => \s00_axi_rdata[24]_INST_0_i_6_n_0\,
      O => \s00_axi_rdata[24]_INST_0_i_2_n_0\,
      S => sel0(2)
    );
\s00_axi_rdata[24]_INST_0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => plpuf_challenge(24),
      I1 => \slv_reg2__0\(24),
      I2 => sel0(1),
      I3 => \slv_reg0_reg_n_0_[24]\,
      I4 => sel0(0),
      O => \s00_axi_rdata[24]_INST_0_i_3_n_0\
    );
\s00_axi_rdata[24]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(24),
      I1 => plpuf_challenge(120),
      I2 => sel0(1),
      I3 => plpuf_challenge(88),
      I4 => sel0(0),
      I5 => plpuf_challenge(56),
      O => \s00_axi_rdata[24]_INST_0_i_4_n_0\
    );
\s00_axi_rdata[24]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg11(24),
      I1 => slv_reg10(24),
      I2 => sel0(1),
      I3 => slv_reg9(24),
      I4 => sel0(0),
      I5 => slv_reg8(24),
      O => \s00_axi_rdata[24]_INST_0_i_5_n_0\
    );
\s00_axi_rdata[24]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg15(24),
      I1 => slv_reg14(24),
      I2 => sel0(1),
      I3 => slv_reg13(24),
      I4 => sel0(0),
      I5 => slv_reg12(24),
      O => \s00_axi_rdata[24]_INST_0_i_6_n_0\
    );
\s00_axi_rdata[25]_INST_0\: unisim.vcomponents.MUXF8
     port map (
      I0 => \s00_axi_rdata[25]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[25]_INST_0_i_2_n_0\,
      O => s00_axi_rdata(25),
      S => sel0(3)
    );
\s00_axi_rdata[25]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[25]_INST_0_i_3_n_0\,
      I1 => \s00_axi_rdata[25]_INST_0_i_4_n_0\,
      O => \s00_axi_rdata[25]_INST_0_i_1_n_0\,
      S => sel0(2)
    );
\s00_axi_rdata[25]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[25]_INST_0_i_5_n_0\,
      I1 => \s00_axi_rdata[25]_INST_0_i_6_n_0\,
      O => \s00_axi_rdata[25]_INST_0_i_2_n_0\,
      S => sel0(2)
    );
\s00_axi_rdata[25]_INST_0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => plpuf_challenge(25),
      I1 => \slv_reg2__0\(25),
      I2 => sel0(1),
      I3 => \slv_reg0_reg_n_0_[25]\,
      I4 => sel0(0),
      O => \s00_axi_rdata[25]_INST_0_i_3_n_0\
    );
\s00_axi_rdata[25]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(25),
      I1 => plpuf_challenge(121),
      I2 => sel0(1),
      I3 => plpuf_challenge(89),
      I4 => sel0(0),
      I5 => plpuf_challenge(57),
      O => \s00_axi_rdata[25]_INST_0_i_4_n_0\
    );
\s00_axi_rdata[25]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg11(25),
      I1 => slv_reg10(25),
      I2 => sel0(1),
      I3 => slv_reg9(25),
      I4 => sel0(0),
      I5 => slv_reg8(25),
      O => \s00_axi_rdata[25]_INST_0_i_5_n_0\
    );
\s00_axi_rdata[25]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg15(25),
      I1 => slv_reg14(25),
      I2 => sel0(1),
      I3 => slv_reg13(25),
      I4 => sel0(0),
      I5 => slv_reg12(25),
      O => \s00_axi_rdata[25]_INST_0_i_6_n_0\
    );
\s00_axi_rdata[26]_INST_0\: unisim.vcomponents.MUXF8
     port map (
      I0 => \s00_axi_rdata[26]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[26]_INST_0_i_2_n_0\,
      O => s00_axi_rdata(26),
      S => sel0(3)
    );
\s00_axi_rdata[26]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[26]_INST_0_i_3_n_0\,
      I1 => \s00_axi_rdata[26]_INST_0_i_4_n_0\,
      O => \s00_axi_rdata[26]_INST_0_i_1_n_0\,
      S => sel0(2)
    );
\s00_axi_rdata[26]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[26]_INST_0_i_5_n_0\,
      I1 => \s00_axi_rdata[26]_INST_0_i_6_n_0\,
      O => \s00_axi_rdata[26]_INST_0_i_2_n_0\,
      S => sel0(2)
    );
\s00_axi_rdata[26]_INST_0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => plpuf_challenge(26),
      I1 => \slv_reg2__0\(26),
      I2 => sel0(1),
      I3 => \slv_reg0_reg_n_0_[26]\,
      I4 => sel0(0),
      O => \s00_axi_rdata[26]_INST_0_i_3_n_0\
    );
\s00_axi_rdata[26]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(26),
      I1 => plpuf_challenge(122),
      I2 => sel0(1),
      I3 => plpuf_challenge(90),
      I4 => sel0(0),
      I5 => plpuf_challenge(58),
      O => \s00_axi_rdata[26]_INST_0_i_4_n_0\
    );
\s00_axi_rdata[26]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg11(26),
      I1 => slv_reg10(26),
      I2 => sel0(1),
      I3 => slv_reg9(26),
      I4 => sel0(0),
      I5 => slv_reg8(26),
      O => \s00_axi_rdata[26]_INST_0_i_5_n_0\
    );
\s00_axi_rdata[26]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg15(26),
      I1 => slv_reg14(26),
      I2 => sel0(1),
      I3 => slv_reg13(26),
      I4 => sel0(0),
      I5 => slv_reg12(26),
      O => \s00_axi_rdata[26]_INST_0_i_6_n_0\
    );
\s00_axi_rdata[27]_INST_0\: unisim.vcomponents.MUXF8
     port map (
      I0 => \s00_axi_rdata[27]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[27]_INST_0_i_2_n_0\,
      O => s00_axi_rdata(27),
      S => sel0(3)
    );
\s00_axi_rdata[27]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[27]_INST_0_i_3_n_0\,
      I1 => \s00_axi_rdata[27]_INST_0_i_4_n_0\,
      O => \s00_axi_rdata[27]_INST_0_i_1_n_0\,
      S => sel0(2)
    );
\s00_axi_rdata[27]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[27]_INST_0_i_5_n_0\,
      I1 => \s00_axi_rdata[27]_INST_0_i_6_n_0\,
      O => \s00_axi_rdata[27]_INST_0_i_2_n_0\,
      S => sel0(2)
    );
\s00_axi_rdata[27]_INST_0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => plpuf_challenge(27),
      I1 => \slv_reg2__0\(27),
      I2 => sel0(1),
      I3 => \slv_reg0_reg_n_0_[27]\,
      I4 => sel0(0),
      O => \s00_axi_rdata[27]_INST_0_i_3_n_0\
    );
\s00_axi_rdata[27]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(27),
      I1 => plpuf_challenge(123),
      I2 => sel0(1),
      I3 => plpuf_challenge(91),
      I4 => sel0(0),
      I5 => plpuf_challenge(59),
      O => \s00_axi_rdata[27]_INST_0_i_4_n_0\
    );
\s00_axi_rdata[27]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg11(27),
      I1 => slv_reg10(27),
      I2 => sel0(1),
      I3 => slv_reg9(27),
      I4 => sel0(0),
      I5 => slv_reg8(27),
      O => \s00_axi_rdata[27]_INST_0_i_5_n_0\
    );
\s00_axi_rdata[27]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg15(27),
      I1 => slv_reg14(27),
      I2 => sel0(1),
      I3 => slv_reg13(27),
      I4 => sel0(0),
      I5 => slv_reg12(27),
      O => \s00_axi_rdata[27]_INST_0_i_6_n_0\
    );
\s00_axi_rdata[28]_INST_0\: unisim.vcomponents.MUXF8
     port map (
      I0 => \s00_axi_rdata[28]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[28]_INST_0_i_2_n_0\,
      O => s00_axi_rdata(28),
      S => sel0(3)
    );
\s00_axi_rdata[28]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[28]_INST_0_i_3_n_0\,
      I1 => \s00_axi_rdata[28]_INST_0_i_4_n_0\,
      O => \s00_axi_rdata[28]_INST_0_i_1_n_0\,
      S => sel0(2)
    );
\s00_axi_rdata[28]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[28]_INST_0_i_5_n_0\,
      I1 => \s00_axi_rdata[28]_INST_0_i_6_n_0\,
      O => \s00_axi_rdata[28]_INST_0_i_2_n_0\,
      S => sel0(2)
    );
\s00_axi_rdata[28]_INST_0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => plpuf_challenge(28),
      I1 => \slv_reg2__0\(28),
      I2 => sel0(1),
      I3 => \slv_reg0_reg_n_0_[28]\,
      I4 => sel0(0),
      O => \s00_axi_rdata[28]_INST_0_i_3_n_0\
    );
\s00_axi_rdata[28]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(28),
      I1 => plpuf_challenge(124),
      I2 => sel0(1),
      I3 => plpuf_challenge(92),
      I4 => sel0(0),
      I5 => plpuf_challenge(60),
      O => \s00_axi_rdata[28]_INST_0_i_4_n_0\
    );
\s00_axi_rdata[28]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg11(28),
      I1 => slv_reg10(28),
      I2 => sel0(1),
      I3 => slv_reg9(28),
      I4 => sel0(0),
      I5 => slv_reg8(28),
      O => \s00_axi_rdata[28]_INST_0_i_5_n_0\
    );
\s00_axi_rdata[28]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg15(28),
      I1 => slv_reg14(28),
      I2 => sel0(1),
      I3 => slv_reg13(28),
      I4 => sel0(0),
      I5 => slv_reg12(28),
      O => \s00_axi_rdata[28]_INST_0_i_6_n_0\
    );
\s00_axi_rdata[29]_INST_0\: unisim.vcomponents.MUXF8
     port map (
      I0 => \s00_axi_rdata[29]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[29]_INST_0_i_2_n_0\,
      O => s00_axi_rdata(29),
      S => sel0(3)
    );
\s00_axi_rdata[29]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[29]_INST_0_i_3_n_0\,
      I1 => \s00_axi_rdata[29]_INST_0_i_4_n_0\,
      O => \s00_axi_rdata[29]_INST_0_i_1_n_0\,
      S => sel0(2)
    );
\s00_axi_rdata[29]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[29]_INST_0_i_5_n_0\,
      I1 => \s00_axi_rdata[29]_INST_0_i_6_n_0\,
      O => \s00_axi_rdata[29]_INST_0_i_2_n_0\,
      S => sel0(2)
    );
\s00_axi_rdata[29]_INST_0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => plpuf_challenge(29),
      I1 => \slv_reg2__0\(29),
      I2 => sel0(1),
      I3 => \slv_reg0_reg_n_0_[29]\,
      I4 => sel0(0),
      O => \s00_axi_rdata[29]_INST_0_i_3_n_0\
    );
\s00_axi_rdata[29]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(29),
      I1 => plpuf_challenge(125),
      I2 => sel0(1),
      I3 => plpuf_challenge(93),
      I4 => sel0(0),
      I5 => plpuf_challenge(61),
      O => \s00_axi_rdata[29]_INST_0_i_4_n_0\
    );
\s00_axi_rdata[29]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg11(29),
      I1 => slv_reg10(29),
      I2 => sel0(1),
      I3 => slv_reg9(29),
      I4 => sel0(0),
      I5 => slv_reg8(29),
      O => \s00_axi_rdata[29]_INST_0_i_5_n_0\
    );
\s00_axi_rdata[29]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg15(29),
      I1 => slv_reg14(29),
      I2 => sel0(1),
      I3 => slv_reg13(29),
      I4 => sel0(0),
      I5 => slv_reg12(29),
      O => \s00_axi_rdata[29]_INST_0_i_6_n_0\
    );
\s00_axi_rdata[2]_INST_0\: unisim.vcomponents.MUXF8
     port map (
      I0 => \s00_axi_rdata[2]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[2]_INST_0_i_2_n_0\,
      O => s00_axi_rdata(2),
      S => sel0(3)
    );
\s00_axi_rdata[2]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[2]_INST_0_i_3_n_0\,
      I1 => \s00_axi_rdata[2]_INST_0_i_4_n_0\,
      O => \s00_axi_rdata[2]_INST_0_i_1_n_0\,
      S => sel0(2)
    );
\s00_axi_rdata[2]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[2]_INST_0_i_5_n_0\,
      I1 => \s00_axi_rdata[2]_INST_0_i_6_n_0\,
      O => \s00_axi_rdata[2]_INST_0_i_2_n_0\,
      S => sel0(2)
    );
\s00_axi_rdata[2]_INST_0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => plpuf_challenge(2),
      I1 => slv_reg2(2),
      I2 => sel0(1),
      I3 => \slv_reg0_reg_n_0_[2]\,
      I4 => sel0(0),
      O => \s00_axi_rdata[2]_INST_0_i_3_n_0\
    );
\s00_axi_rdata[2]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(2),
      I1 => plpuf_challenge(98),
      I2 => sel0(1),
      I3 => plpuf_challenge(66),
      I4 => sel0(0),
      I5 => plpuf_challenge(34),
      O => \s00_axi_rdata[2]_INST_0_i_4_n_0\
    );
\s00_axi_rdata[2]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg11(2),
      I1 => slv_reg10(2),
      I2 => sel0(1),
      I3 => slv_reg9(2),
      I4 => sel0(0),
      I5 => slv_reg8(2),
      O => \s00_axi_rdata[2]_INST_0_i_5_n_0\
    );
\s00_axi_rdata[2]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg15(2),
      I1 => slv_reg14(2),
      I2 => sel0(1),
      I3 => slv_reg13(2),
      I4 => sel0(0),
      I5 => slv_reg12(2),
      O => \s00_axi_rdata[2]_INST_0_i_6_n_0\
    );
\s00_axi_rdata[30]_INST_0\: unisim.vcomponents.MUXF8
     port map (
      I0 => \s00_axi_rdata[30]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[30]_INST_0_i_2_n_0\,
      O => s00_axi_rdata(30),
      S => sel0(3)
    );
\s00_axi_rdata[30]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[30]_INST_0_i_3_n_0\,
      I1 => \s00_axi_rdata[30]_INST_0_i_4_n_0\,
      O => \s00_axi_rdata[30]_INST_0_i_1_n_0\,
      S => sel0(2)
    );
\s00_axi_rdata[30]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[30]_INST_0_i_5_n_0\,
      I1 => \s00_axi_rdata[30]_INST_0_i_6_n_0\,
      O => \s00_axi_rdata[30]_INST_0_i_2_n_0\,
      S => sel0(2)
    );
\s00_axi_rdata[30]_INST_0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => plpuf_challenge(30),
      I1 => \slv_reg2__0\(30),
      I2 => sel0(1),
      I3 => \slv_reg0_reg_n_0_[30]\,
      I4 => sel0(0),
      O => \s00_axi_rdata[30]_INST_0_i_3_n_0\
    );
\s00_axi_rdata[30]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(30),
      I1 => plpuf_challenge(126),
      I2 => sel0(1),
      I3 => plpuf_challenge(94),
      I4 => sel0(0),
      I5 => plpuf_challenge(62),
      O => \s00_axi_rdata[30]_INST_0_i_4_n_0\
    );
\s00_axi_rdata[30]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg11(30),
      I1 => slv_reg10(30),
      I2 => sel0(1),
      I3 => slv_reg9(30),
      I4 => sel0(0),
      I5 => slv_reg8(30),
      O => \s00_axi_rdata[30]_INST_0_i_5_n_0\
    );
\s00_axi_rdata[30]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg15(30),
      I1 => slv_reg14(30),
      I2 => sel0(1),
      I3 => slv_reg13(30),
      I4 => sel0(0),
      I5 => slv_reg12(30),
      O => \s00_axi_rdata[30]_INST_0_i_6_n_0\
    );
\s00_axi_rdata[31]_INST_0\: unisim.vcomponents.MUXF8
     port map (
      I0 => \s00_axi_rdata[31]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[31]_INST_0_i_2_n_0\,
      O => s00_axi_rdata(31),
      S => sel0(3)
    );
\s00_axi_rdata[31]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[31]_INST_0_i_3_n_0\,
      I1 => \s00_axi_rdata[31]_INST_0_i_4_n_0\,
      O => \s00_axi_rdata[31]_INST_0_i_1_n_0\,
      S => sel0(2)
    );
\s00_axi_rdata[31]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[31]_INST_0_i_5_n_0\,
      I1 => \s00_axi_rdata[31]_INST_0_i_6_n_0\,
      O => \s00_axi_rdata[31]_INST_0_i_2_n_0\,
      S => sel0(2)
    );
\s00_axi_rdata[31]_INST_0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => plpuf_challenge(31),
      I1 => \slv_reg2__0\(31),
      I2 => sel0(1),
      I3 => \slv_reg0_reg_n_0_[31]\,
      I4 => sel0(0),
      O => \s00_axi_rdata[31]_INST_0_i_3_n_0\
    );
\s00_axi_rdata[31]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(31),
      I1 => plpuf_challenge(127),
      I2 => sel0(1),
      I3 => plpuf_challenge(95),
      I4 => sel0(0),
      I5 => plpuf_challenge(63),
      O => \s00_axi_rdata[31]_INST_0_i_4_n_0\
    );
\s00_axi_rdata[31]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg11(31),
      I1 => slv_reg10(31),
      I2 => sel0(1),
      I3 => slv_reg9(31),
      I4 => sel0(0),
      I5 => slv_reg8(31),
      O => \s00_axi_rdata[31]_INST_0_i_5_n_0\
    );
\s00_axi_rdata[31]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg15(31),
      I1 => slv_reg14(31),
      I2 => sel0(1),
      I3 => slv_reg13(31),
      I4 => sel0(0),
      I5 => slv_reg12(31),
      O => \s00_axi_rdata[31]_INST_0_i_6_n_0\
    );
\s00_axi_rdata[3]_INST_0\: unisim.vcomponents.MUXF8
     port map (
      I0 => \s00_axi_rdata[3]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[3]_INST_0_i_2_n_0\,
      O => s00_axi_rdata(3),
      S => sel0(3)
    );
\s00_axi_rdata[3]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[3]_INST_0_i_3_n_0\,
      I1 => \s00_axi_rdata[3]_INST_0_i_4_n_0\,
      O => \s00_axi_rdata[3]_INST_0_i_1_n_0\,
      S => sel0(2)
    );
\s00_axi_rdata[3]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[3]_INST_0_i_5_n_0\,
      I1 => \s00_axi_rdata[3]_INST_0_i_6_n_0\,
      O => \s00_axi_rdata[3]_INST_0_i_2_n_0\,
      S => sel0(2)
    );
\s00_axi_rdata[3]_INST_0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => plpuf_challenge(3),
      I1 => slv_reg2(3),
      I2 => sel0(1),
      I3 => \slv_reg0_reg_n_0_[3]\,
      I4 => sel0(0),
      O => \s00_axi_rdata[3]_INST_0_i_3_n_0\
    );
\s00_axi_rdata[3]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(3),
      I1 => plpuf_challenge(99),
      I2 => sel0(1),
      I3 => plpuf_challenge(67),
      I4 => sel0(0),
      I5 => plpuf_challenge(35),
      O => \s00_axi_rdata[3]_INST_0_i_4_n_0\
    );
\s00_axi_rdata[3]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg11(3),
      I1 => slv_reg10(3),
      I2 => sel0(1),
      I3 => slv_reg9(3),
      I4 => sel0(0),
      I5 => slv_reg8(3),
      O => \s00_axi_rdata[3]_INST_0_i_5_n_0\
    );
\s00_axi_rdata[3]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg15(3),
      I1 => slv_reg14(3),
      I2 => sel0(1),
      I3 => slv_reg13(3),
      I4 => sel0(0),
      I5 => slv_reg12(3),
      O => \s00_axi_rdata[3]_INST_0_i_6_n_0\
    );
\s00_axi_rdata[4]_INST_0\: unisim.vcomponents.MUXF8
     port map (
      I0 => \s00_axi_rdata[4]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[4]_INST_0_i_2_n_0\,
      O => s00_axi_rdata(4),
      S => sel0(3)
    );
\s00_axi_rdata[4]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[4]_INST_0_i_3_n_0\,
      I1 => \s00_axi_rdata[4]_INST_0_i_4_n_0\,
      O => \s00_axi_rdata[4]_INST_0_i_1_n_0\,
      S => sel0(2)
    );
\s00_axi_rdata[4]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[4]_INST_0_i_5_n_0\,
      I1 => \s00_axi_rdata[4]_INST_0_i_6_n_0\,
      O => \s00_axi_rdata[4]_INST_0_i_2_n_0\,
      S => sel0(2)
    );
\s00_axi_rdata[4]_INST_0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => plpuf_challenge(4),
      I1 => slv_reg2(4),
      I2 => sel0(1),
      I3 => \slv_reg0_reg_n_0_[4]\,
      I4 => sel0(0),
      O => \s00_axi_rdata[4]_INST_0_i_3_n_0\
    );
\s00_axi_rdata[4]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(4),
      I1 => plpuf_challenge(100),
      I2 => sel0(1),
      I3 => plpuf_challenge(68),
      I4 => sel0(0),
      I5 => plpuf_challenge(36),
      O => \s00_axi_rdata[4]_INST_0_i_4_n_0\
    );
\s00_axi_rdata[4]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg11(4),
      I1 => slv_reg10(4),
      I2 => sel0(1),
      I3 => slv_reg9(4),
      I4 => sel0(0),
      I5 => slv_reg8(4),
      O => \s00_axi_rdata[4]_INST_0_i_5_n_0\
    );
\s00_axi_rdata[4]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg15(4),
      I1 => slv_reg14(4),
      I2 => sel0(1),
      I3 => slv_reg13(4),
      I4 => sel0(0),
      I5 => slv_reg12(4),
      O => \s00_axi_rdata[4]_INST_0_i_6_n_0\
    );
\s00_axi_rdata[5]_INST_0\: unisim.vcomponents.MUXF8
     port map (
      I0 => \s00_axi_rdata[5]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[5]_INST_0_i_2_n_0\,
      O => s00_axi_rdata(5),
      S => sel0(3)
    );
\s00_axi_rdata[5]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[5]_INST_0_i_3_n_0\,
      I1 => \s00_axi_rdata[5]_INST_0_i_4_n_0\,
      O => \s00_axi_rdata[5]_INST_0_i_1_n_0\,
      S => sel0(2)
    );
\s00_axi_rdata[5]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[5]_INST_0_i_5_n_0\,
      I1 => \s00_axi_rdata[5]_INST_0_i_6_n_0\,
      O => \s00_axi_rdata[5]_INST_0_i_2_n_0\,
      S => sel0(2)
    );
\s00_axi_rdata[5]_INST_0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => plpuf_challenge(5),
      I1 => slv_reg2(5),
      I2 => sel0(1),
      I3 => \slv_reg0_reg_n_0_[5]\,
      I4 => sel0(0),
      O => \s00_axi_rdata[5]_INST_0_i_3_n_0\
    );
\s00_axi_rdata[5]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(5),
      I1 => plpuf_challenge(101),
      I2 => sel0(1),
      I3 => plpuf_challenge(69),
      I4 => sel0(0),
      I5 => plpuf_challenge(37),
      O => \s00_axi_rdata[5]_INST_0_i_4_n_0\
    );
\s00_axi_rdata[5]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg11(5),
      I1 => slv_reg10(5),
      I2 => sel0(1),
      I3 => slv_reg9(5),
      I4 => sel0(0),
      I5 => slv_reg8(5),
      O => \s00_axi_rdata[5]_INST_0_i_5_n_0\
    );
\s00_axi_rdata[5]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg15(5),
      I1 => slv_reg14(5),
      I2 => sel0(1),
      I3 => slv_reg13(5),
      I4 => sel0(0),
      I5 => slv_reg12(5),
      O => \s00_axi_rdata[5]_INST_0_i_6_n_0\
    );
\s00_axi_rdata[6]_INST_0\: unisim.vcomponents.MUXF8
     port map (
      I0 => \s00_axi_rdata[6]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[6]_INST_0_i_2_n_0\,
      O => s00_axi_rdata(6),
      S => sel0(3)
    );
\s00_axi_rdata[6]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[6]_INST_0_i_3_n_0\,
      I1 => \s00_axi_rdata[6]_INST_0_i_4_n_0\,
      O => \s00_axi_rdata[6]_INST_0_i_1_n_0\,
      S => sel0(2)
    );
\s00_axi_rdata[6]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[6]_INST_0_i_5_n_0\,
      I1 => \s00_axi_rdata[6]_INST_0_i_6_n_0\,
      O => \s00_axi_rdata[6]_INST_0_i_2_n_0\,
      S => sel0(2)
    );
\s00_axi_rdata[6]_INST_0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => plpuf_challenge(6),
      I1 => slv_reg2(6),
      I2 => sel0(1),
      I3 => \slv_reg0_reg_n_0_[6]\,
      I4 => sel0(0),
      O => \s00_axi_rdata[6]_INST_0_i_3_n_0\
    );
\s00_axi_rdata[6]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(6),
      I1 => plpuf_challenge(102),
      I2 => sel0(1),
      I3 => plpuf_challenge(70),
      I4 => sel0(0),
      I5 => plpuf_challenge(38),
      O => \s00_axi_rdata[6]_INST_0_i_4_n_0\
    );
\s00_axi_rdata[6]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg11(6),
      I1 => slv_reg10(6),
      I2 => sel0(1),
      I3 => slv_reg9(6),
      I4 => sel0(0),
      I5 => slv_reg8(6),
      O => \s00_axi_rdata[6]_INST_0_i_5_n_0\
    );
\s00_axi_rdata[6]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg15(6),
      I1 => slv_reg14(6),
      I2 => sel0(1),
      I3 => slv_reg13(6),
      I4 => sel0(0),
      I5 => slv_reg12(6),
      O => \s00_axi_rdata[6]_INST_0_i_6_n_0\
    );
\s00_axi_rdata[7]_INST_0\: unisim.vcomponents.MUXF8
     port map (
      I0 => \s00_axi_rdata[7]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[7]_INST_0_i_2_n_0\,
      O => s00_axi_rdata(7),
      S => sel0(3)
    );
\s00_axi_rdata[7]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[7]_INST_0_i_3_n_0\,
      I1 => \s00_axi_rdata[7]_INST_0_i_4_n_0\,
      O => \s00_axi_rdata[7]_INST_0_i_1_n_0\,
      S => sel0(2)
    );
\s00_axi_rdata[7]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[7]_INST_0_i_5_n_0\,
      I1 => \s00_axi_rdata[7]_INST_0_i_6_n_0\,
      O => \s00_axi_rdata[7]_INST_0_i_2_n_0\,
      S => sel0(2)
    );
\s00_axi_rdata[7]_INST_0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => plpuf_challenge(7),
      I1 => slv_reg2(7),
      I2 => sel0(1),
      I3 => \slv_reg0_reg_n_0_[7]\,
      I4 => sel0(0),
      O => \s00_axi_rdata[7]_INST_0_i_3_n_0\
    );
\s00_axi_rdata[7]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(7),
      I1 => plpuf_challenge(103),
      I2 => sel0(1),
      I3 => plpuf_challenge(71),
      I4 => sel0(0),
      I5 => plpuf_challenge(39),
      O => \s00_axi_rdata[7]_INST_0_i_4_n_0\
    );
\s00_axi_rdata[7]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg11(7),
      I1 => slv_reg10(7),
      I2 => sel0(1),
      I3 => slv_reg9(7),
      I4 => sel0(0),
      I5 => slv_reg8(7),
      O => \s00_axi_rdata[7]_INST_0_i_5_n_0\
    );
\s00_axi_rdata[7]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg15(7),
      I1 => slv_reg14(7),
      I2 => sel0(1),
      I3 => slv_reg13(7),
      I4 => sel0(0),
      I5 => slv_reg12(7),
      O => \s00_axi_rdata[7]_INST_0_i_6_n_0\
    );
\s00_axi_rdata[8]_INST_0\: unisim.vcomponents.MUXF8
     port map (
      I0 => \s00_axi_rdata[8]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[8]_INST_0_i_2_n_0\,
      O => s00_axi_rdata(8),
      S => sel0(3)
    );
\s00_axi_rdata[8]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[8]_INST_0_i_3_n_0\,
      I1 => \s00_axi_rdata[8]_INST_0_i_4_n_0\,
      O => \s00_axi_rdata[8]_INST_0_i_1_n_0\,
      S => sel0(2)
    );
\s00_axi_rdata[8]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[8]_INST_0_i_5_n_0\,
      I1 => \s00_axi_rdata[8]_INST_0_i_6_n_0\,
      O => \s00_axi_rdata[8]_INST_0_i_2_n_0\,
      S => sel0(2)
    );
\s00_axi_rdata[8]_INST_0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => plpuf_challenge(8),
      I1 => slv_reg2(8),
      I2 => sel0(1),
      I3 => \slv_reg0_reg_n_0_[8]\,
      I4 => sel0(0),
      O => \s00_axi_rdata[8]_INST_0_i_3_n_0\
    );
\s00_axi_rdata[8]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(8),
      I1 => plpuf_challenge(104),
      I2 => sel0(1),
      I3 => plpuf_challenge(72),
      I4 => sel0(0),
      I5 => plpuf_challenge(40),
      O => \s00_axi_rdata[8]_INST_0_i_4_n_0\
    );
\s00_axi_rdata[8]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg11(8),
      I1 => slv_reg10(8),
      I2 => sel0(1),
      I3 => slv_reg9(8),
      I4 => sel0(0),
      I5 => slv_reg8(8),
      O => \s00_axi_rdata[8]_INST_0_i_5_n_0\
    );
\s00_axi_rdata[8]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg15(8),
      I1 => slv_reg14(8),
      I2 => sel0(1),
      I3 => slv_reg13(8),
      I4 => sel0(0),
      I5 => slv_reg12(8),
      O => \s00_axi_rdata[8]_INST_0_i_6_n_0\
    );
\s00_axi_rdata[9]_INST_0\: unisim.vcomponents.MUXF8
     port map (
      I0 => \s00_axi_rdata[9]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[9]_INST_0_i_2_n_0\,
      O => s00_axi_rdata(9),
      S => sel0(3)
    );
\s00_axi_rdata[9]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[9]_INST_0_i_3_n_0\,
      I1 => \s00_axi_rdata[9]_INST_0_i_4_n_0\,
      O => \s00_axi_rdata[9]_INST_0_i_1_n_0\,
      S => sel0(2)
    );
\s00_axi_rdata[9]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[9]_INST_0_i_5_n_0\,
      I1 => \s00_axi_rdata[9]_INST_0_i_6_n_0\,
      O => \s00_axi_rdata[9]_INST_0_i_2_n_0\,
      S => sel0(2)
    );
\s00_axi_rdata[9]_INST_0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => plpuf_challenge(9),
      I1 => slv_reg2(9),
      I2 => sel0(1),
      I3 => \slv_reg0_reg_n_0_[9]\,
      I4 => sel0(0),
      O => \s00_axi_rdata[9]_INST_0_i_3_n_0\
    );
\s00_axi_rdata[9]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(9),
      I1 => plpuf_challenge(105),
      I2 => sel0(1),
      I3 => plpuf_challenge(73),
      I4 => sel0(0),
      I5 => plpuf_challenge(41),
      O => \s00_axi_rdata[9]_INST_0_i_4_n_0\
    );
\s00_axi_rdata[9]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg11(9),
      I1 => slv_reg10(9),
      I2 => sel0(1),
      I3 => slv_reg9(9),
      I4 => sel0(0),
      I5 => slv_reg8(9),
      O => \s00_axi_rdata[9]_INST_0_i_5_n_0\
    );
\s00_axi_rdata[9]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg15(9),
      I1 => slv_reg14(9),
      I2 => sel0(1),
      I3 => slv_reg13(9),
      I4 => sel0(0),
      I5 => slv_reg12(9),
      O => \s00_axi_rdata[9]_INST_0_i_6_n_0\
    );
\slv_reg0[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000001000000"
    )
        port map (
      I0 => \wr_addr__3\(0),
      I1 => \wr_addr__3\(3),
      I2 => \slv_reg0[1]_i_2_n_0\,
      I3 => s00_axi_wstrb(0),
      I4 => s00_axi_wdata(0),
      I5 => \slv_reg0[1]_i_3_n_0\,
      O => \slv_reg0[0]_i_1_n_0\
    );
\slv_reg0[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000200000000"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => \wr_addr__3\(0),
      I2 => \wr_addr__3\(3),
      I3 => \wr_addr__3\(1),
      I4 => \wr_addr__3\(2),
      I5 => s00_axi_wstrb(1),
      O => \slv_reg0[15]_i_1_n_0\
    );
\slv_reg0[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000001000000"
    )
        port map (
      I0 => \wr_addr__3\(0),
      I1 => \wr_addr__3\(3),
      I2 => \slv_reg0[1]_i_2_n_0\,
      I3 => s00_axi_wstrb(0),
      I4 => s00_axi_wdata(1),
      I5 => \slv_reg0[1]_i_3_n_0\,
      O => \slv_reg0[1]_i_1_n_0\
    );
\slv_reg0[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFACCFA"
    )
        port map (
      I0 => \axi_awaddr_reg_n_0_[4]\,
      I1 => s00_axi_awaddr(2),
      I2 => \axi_awaddr_reg_n_0_[3]\,
      I3 => s00_axi_awvalid,
      I4 => s00_axi_awaddr(1),
      O => \slv_reg0[1]_i_2_n_0\
    );
\slv_reg0[1]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => s00_axi_aresetn,
      O => \slv_reg0[1]_i_3_n_0\
    );
\slv_reg0[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000200000000"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => \wr_addr__3\(0),
      I2 => \wr_addr__3\(3),
      I3 => \wr_addr__3\(1),
      I4 => \wr_addr__3\(2),
      I5 => s00_axi_wstrb(2),
      O => \slv_reg0[23]_i_1_n_0\
    );
\slv_reg0[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000200000000"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => \wr_addr__3\(0),
      I2 => \wr_addr__3\(3),
      I3 => \wr_addr__3\(1),
      I4 => \wr_addr__3\(2),
      I5 => s00_axi_wstrb(3),
      O => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg0[31]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s00_axi_awaddr(0),
      I1 => s00_axi_awvalid,
      I2 => \axi_awaddr_reg_n_0_[2]\,
      O => \wr_addr__3\(0)
    );
\slv_reg0[31]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s00_axi_awaddr(3),
      I1 => s00_axi_awvalid,
      I2 => \axi_awaddr_reg_n_0_[5]\,
      O => \wr_addr__3\(3)
    );
\slv_reg0[31]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s00_axi_awaddr(1),
      I1 => s00_axi_awvalid,
      I2 => \axi_awaddr_reg_n_0_[3]\,
      O => \wr_addr__3\(1)
    );
\slv_reg0[31]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s00_axi_awaddr(2),
      I1 => s00_axi_awvalid,
      I2 => \axi_awaddr_reg_n_0_[4]\,
      O => \wr_addr__3\(2)
    );
\slv_reg0[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000200000000"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => \wr_addr__3\(0),
      I2 => \wr_addr__3\(3),
      I3 => \wr_addr__3\(1),
      I4 => \wr_addr__3\(2),
      I5 => s00_axi_wstrb(0),
      O => \slv_reg0[7]_i_1_n_0\
    );
\slv_reg0_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg0[0]_i_1_n_0\,
      Q => \slv_reg0_reg_n_0_[0]\,
      R => '0'
    );
\slv_reg0_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => \slv_reg0_reg_n_0_[10]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => \slv_reg0_reg_n_0_[11]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => \slv_reg0_reg_n_0_[12]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => \slv_reg0_reg_n_0_[13]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => \slv_reg0_reg_n_0_[14]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => \slv_reg0_reg_n_0_[15]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => \slv_reg0_reg_n_0_[16]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => \slv_reg0_reg_n_0_[17]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => \slv_reg0_reg_n_0_[18]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => \slv_reg0_reg_n_0_[19]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg0[1]_i_1_n_0\,
      Q => p_0_in,
      R => '0'
    );
\slv_reg0_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => \slv_reg0_reg_n_0_[20]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => \slv_reg0_reg_n_0_[21]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => \slv_reg0_reg_n_0_[22]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => \slv_reg0_reg_n_0_[23]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => \slv_reg0_reg_n_0_[24]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => \slv_reg0_reg_n_0_[25]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => \slv_reg0_reg_n_0_[26]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => \slv_reg0_reg_n_0_[27]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => \slv_reg0_reg_n_0_[28]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => \slv_reg0_reg_n_0_[29]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => \slv_reg0_reg_n_0_[2]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => \slv_reg0_reg_n_0_[30]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => \slv_reg0_reg_n_0_[31]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => \slv_reg0_reg_n_0_[3]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => \slv_reg0_reg_n_0_[4]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => \slv_reg0_reg_n_0_[5]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => \slv_reg0_reg_n_0_[6]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => \slv_reg0_reg_n_0_[7]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => \slv_reg0_reg_n_0_[8]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => \slv_reg0_reg_n_0_[9]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg10_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => plpuf_response(96),
      Q => slv_reg10(0),
      R => axi_awready_i_1_n_0
    );
\slv_reg10_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => plpuf_response(106),
      Q => slv_reg10(10),
      R => axi_awready_i_1_n_0
    );
\slv_reg10_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => plpuf_response(107),
      Q => slv_reg10(11),
      R => axi_awready_i_1_n_0
    );
\slv_reg10_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => plpuf_response(108),
      Q => slv_reg10(12),
      R => axi_awready_i_1_n_0
    );
\slv_reg10_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => plpuf_response(109),
      Q => slv_reg10(13),
      R => axi_awready_i_1_n_0
    );
\slv_reg10_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => plpuf_response(110),
      Q => slv_reg10(14),
      R => axi_awready_i_1_n_0
    );
\slv_reg10_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => plpuf_response(111),
      Q => slv_reg10(15),
      R => axi_awready_i_1_n_0
    );
\slv_reg10_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => plpuf_response(112),
      Q => slv_reg10(16),
      R => axi_awready_i_1_n_0
    );
\slv_reg10_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => plpuf_response(113),
      Q => slv_reg10(17),
      R => axi_awready_i_1_n_0
    );
\slv_reg10_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => plpuf_response(114),
      Q => slv_reg10(18),
      R => axi_awready_i_1_n_0
    );
\slv_reg10_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => plpuf_response(115),
      Q => slv_reg10(19),
      R => axi_awready_i_1_n_0
    );
\slv_reg10_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => plpuf_response(97),
      Q => slv_reg10(1),
      R => axi_awready_i_1_n_0
    );
\slv_reg10_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => plpuf_response(116),
      Q => slv_reg10(20),
      R => axi_awready_i_1_n_0
    );
\slv_reg10_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => plpuf_response(117),
      Q => slv_reg10(21),
      R => axi_awready_i_1_n_0
    );
\slv_reg10_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => plpuf_response(118),
      Q => slv_reg10(22),
      R => axi_awready_i_1_n_0
    );
\slv_reg10_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => plpuf_response(119),
      Q => slv_reg10(23),
      R => axi_awready_i_1_n_0
    );
\slv_reg10_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => plpuf_response(120),
      Q => slv_reg10(24),
      R => axi_awready_i_1_n_0
    );
\slv_reg10_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => plpuf_response(121),
      Q => slv_reg10(25),
      R => axi_awready_i_1_n_0
    );
\slv_reg10_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => plpuf_response(122),
      Q => slv_reg10(26),
      R => axi_awready_i_1_n_0
    );
\slv_reg10_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => plpuf_response(123),
      Q => slv_reg10(27),
      R => axi_awready_i_1_n_0
    );
\slv_reg10_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => plpuf_response(124),
      Q => slv_reg10(28),
      R => axi_awready_i_1_n_0
    );
\slv_reg10_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => plpuf_response(125),
      Q => slv_reg10(29),
      R => axi_awready_i_1_n_0
    );
\slv_reg10_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => plpuf_response(98),
      Q => slv_reg10(2),
      R => axi_awready_i_1_n_0
    );
\slv_reg10_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => plpuf_response(126),
      Q => slv_reg10(30),
      R => axi_awready_i_1_n_0
    );
\slv_reg10_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => plpuf_response(127),
      Q => slv_reg10(31),
      R => axi_awready_i_1_n_0
    );
\slv_reg10_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => plpuf_response(99),
      Q => slv_reg10(3),
      R => axi_awready_i_1_n_0
    );
\slv_reg10_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => plpuf_response(100),
      Q => slv_reg10(4),
      R => axi_awready_i_1_n_0
    );
\slv_reg10_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => plpuf_response(101),
      Q => slv_reg10(5),
      R => axi_awready_i_1_n_0
    );
\slv_reg10_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => plpuf_response(102),
      Q => slv_reg10(6),
      R => axi_awready_i_1_n_0
    );
\slv_reg10_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => plpuf_response(103),
      Q => slv_reg10(7),
      R => axi_awready_i_1_n_0
    );
\slv_reg10_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => plpuf_response(104),
      Q => slv_reg10(8),
      R => axi_awready_i_1_n_0
    );
\slv_reg10_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => plpuf_response(105),
      Q => slv_reg10(9),
      R => axi_awready_i_1_n_0
    );
\slv_reg11[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000080000000"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => s00_axi_wstrb(1),
      I2 => \wr_addr__3\(3),
      I3 => \wr_addr__3\(0),
      I4 => \wr_addr__3\(1),
      I5 => \wr_addr__3\(2),
      O => \slv_reg11[15]_i_1_n_0\
    );
\slv_reg11[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000080000000"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => s00_axi_wstrb(2),
      I2 => \wr_addr__3\(3),
      I3 => \wr_addr__3\(0),
      I4 => \wr_addr__3\(1),
      I5 => \wr_addr__3\(2),
      O => \slv_reg11[23]_i_1_n_0\
    );
\slv_reg11[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000080000000"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => s00_axi_wstrb(3),
      I2 => \wr_addr__3\(3),
      I3 => \wr_addr__3\(0),
      I4 => \wr_addr__3\(1),
      I5 => \wr_addr__3\(2),
      O => \slv_reg11[31]_i_1_n_0\
    );
\slv_reg11[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000080000000"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => s00_axi_wstrb(0),
      I2 => \wr_addr__3\(3),
      I3 => \wr_addr__3\(0),
      I4 => \wr_addr__3\(1),
      I5 => \wr_addr__3\(2),
      O => \slv_reg11[7]_i_1_n_0\
    );
\slv_reg11_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg11[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => slv_reg11(0),
      R => axi_awready_i_1_n_0
    );
\slv_reg11_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg11[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => slv_reg11(10),
      R => axi_awready_i_1_n_0
    );
\slv_reg11_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg11[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => slv_reg11(11),
      R => axi_awready_i_1_n_0
    );
\slv_reg11_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg11[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => slv_reg11(12),
      R => axi_awready_i_1_n_0
    );
\slv_reg11_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg11[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => slv_reg11(13),
      R => axi_awready_i_1_n_0
    );
\slv_reg11_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg11[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => slv_reg11(14),
      R => axi_awready_i_1_n_0
    );
\slv_reg11_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg11[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => slv_reg11(15),
      R => axi_awready_i_1_n_0
    );
\slv_reg11_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg11[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => slv_reg11(16),
      R => axi_awready_i_1_n_0
    );
\slv_reg11_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg11[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => slv_reg11(17),
      R => axi_awready_i_1_n_0
    );
\slv_reg11_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg11[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => slv_reg11(18),
      R => axi_awready_i_1_n_0
    );
\slv_reg11_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg11[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => slv_reg11(19),
      R => axi_awready_i_1_n_0
    );
\slv_reg11_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg11[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg11(1),
      R => axi_awready_i_1_n_0
    );
\slv_reg11_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg11[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => slv_reg11(20),
      R => axi_awready_i_1_n_0
    );
\slv_reg11_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg11[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => slv_reg11(21),
      R => axi_awready_i_1_n_0
    );
\slv_reg11_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg11[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => slv_reg11(22),
      R => axi_awready_i_1_n_0
    );
\slv_reg11_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg11[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => slv_reg11(23),
      R => axi_awready_i_1_n_0
    );
\slv_reg11_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg11[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => slv_reg11(24),
      R => axi_awready_i_1_n_0
    );
\slv_reg11_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg11[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => slv_reg11(25),
      R => axi_awready_i_1_n_0
    );
\slv_reg11_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg11[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => slv_reg11(26),
      R => axi_awready_i_1_n_0
    );
\slv_reg11_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg11[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => slv_reg11(27),
      R => axi_awready_i_1_n_0
    );
\slv_reg11_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg11[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => slv_reg11(28),
      R => axi_awready_i_1_n_0
    );
\slv_reg11_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg11[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => slv_reg11(29),
      R => axi_awready_i_1_n_0
    );
\slv_reg11_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg11[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => slv_reg11(2),
      R => axi_awready_i_1_n_0
    );
\slv_reg11_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg11[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => slv_reg11(30),
      R => axi_awready_i_1_n_0
    );
\slv_reg11_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg11[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => slv_reg11(31),
      R => axi_awready_i_1_n_0
    );
\slv_reg11_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg11[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => slv_reg11(3),
      R => axi_awready_i_1_n_0
    );
\slv_reg11_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg11[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => slv_reg11(4),
      R => axi_awready_i_1_n_0
    );
\slv_reg11_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg11[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => slv_reg11(5),
      R => axi_awready_i_1_n_0
    );
\slv_reg11_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg11[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => slv_reg11(6),
      R => axi_awready_i_1_n_0
    );
\slv_reg11_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg11[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => slv_reg11(7),
      R => axi_awready_i_1_n_0
    );
\slv_reg11_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg11[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => slv_reg11(8),
      R => axi_awready_i_1_n_0
    );
\slv_reg11_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg11[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => slv_reg11(9),
      R => axi_awready_i_1_n_0
    );
\slv_reg12[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000008000"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => \wr_addr__3\(3),
      I2 => s00_axi_wstrb(1),
      I3 => \wr_addr__3\(2),
      I4 => \wr_addr__3\(0),
      I5 => \wr_addr__3\(1),
      O => \slv_reg12[15]_i_1_n_0\
    );
\slv_reg12[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000008000"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => \wr_addr__3\(3),
      I2 => s00_axi_wstrb(2),
      I3 => \wr_addr__3\(2),
      I4 => \wr_addr__3\(0),
      I5 => \wr_addr__3\(1),
      O => \slv_reg12[23]_i_1_n_0\
    );
\slv_reg12[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000008000"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => \wr_addr__3\(3),
      I2 => s00_axi_wstrb(3),
      I3 => \wr_addr__3\(2),
      I4 => \wr_addr__3\(0),
      I5 => \wr_addr__3\(1),
      O => \slv_reg12[31]_i_1_n_0\
    );
\slv_reg12[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000008000"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => \wr_addr__3\(3),
      I2 => s00_axi_wstrb(0),
      I3 => \wr_addr__3\(2),
      I4 => \wr_addr__3\(0),
      I5 => \wr_addr__3\(1),
      O => \slv_reg12[7]_i_1_n_0\
    );
\slv_reg12_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg12[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => slv_reg12(0),
      R => axi_awready_i_1_n_0
    );
\slv_reg12_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg12[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => slv_reg12(10),
      R => axi_awready_i_1_n_0
    );
\slv_reg12_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg12[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => slv_reg12(11),
      R => axi_awready_i_1_n_0
    );
\slv_reg12_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg12[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => slv_reg12(12),
      R => axi_awready_i_1_n_0
    );
\slv_reg12_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg12[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => slv_reg12(13),
      R => axi_awready_i_1_n_0
    );
\slv_reg12_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg12[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => slv_reg12(14),
      R => axi_awready_i_1_n_0
    );
\slv_reg12_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg12[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => slv_reg12(15),
      R => axi_awready_i_1_n_0
    );
\slv_reg12_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg12[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => slv_reg12(16),
      R => axi_awready_i_1_n_0
    );
\slv_reg12_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg12[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => slv_reg12(17),
      R => axi_awready_i_1_n_0
    );
\slv_reg12_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg12[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => slv_reg12(18),
      R => axi_awready_i_1_n_0
    );
\slv_reg12_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg12[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => slv_reg12(19),
      R => axi_awready_i_1_n_0
    );
\slv_reg12_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg12[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg12(1),
      R => axi_awready_i_1_n_0
    );
\slv_reg12_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg12[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => slv_reg12(20),
      R => axi_awready_i_1_n_0
    );
\slv_reg12_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg12[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => slv_reg12(21),
      R => axi_awready_i_1_n_0
    );
\slv_reg12_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg12[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => slv_reg12(22),
      R => axi_awready_i_1_n_0
    );
\slv_reg12_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg12[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => slv_reg12(23),
      R => axi_awready_i_1_n_0
    );
\slv_reg12_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg12[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => slv_reg12(24),
      R => axi_awready_i_1_n_0
    );
\slv_reg12_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg12[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => slv_reg12(25),
      R => axi_awready_i_1_n_0
    );
\slv_reg12_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg12[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => slv_reg12(26),
      R => axi_awready_i_1_n_0
    );
\slv_reg12_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg12[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => slv_reg12(27),
      R => axi_awready_i_1_n_0
    );
\slv_reg12_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg12[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => slv_reg12(28),
      R => axi_awready_i_1_n_0
    );
\slv_reg12_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg12[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => slv_reg12(29),
      R => axi_awready_i_1_n_0
    );
\slv_reg12_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg12[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => slv_reg12(2),
      R => axi_awready_i_1_n_0
    );
\slv_reg12_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg12[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => slv_reg12(30),
      R => axi_awready_i_1_n_0
    );
\slv_reg12_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg12[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => slv_reg12(31),
      R => axi_awready_i_1_n_0
    );
\slv_reg12_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg12[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => slv_reg12(3),
      R => axi_awready_i_1_n_0
    );
\slv_reg12_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg12[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => slv_reg12(4),
      R => axi_awready_i_1_n_0
    );
\slv_reg12_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg12[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => slv_reg12(5),
      R => axi_awready_i_1_n_0
    );
\slv_reg12_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg12[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => slv_reg12(6),
      R => axi_awready_i_1_n_0
    );
\slv_reg12_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg12[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => slv_reg12(7),
      R => axi_awready_i_1_n_0
    );
\slv_reg12_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg12[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => slv_reg12(8),
      R => axi_awready_i_1_n_0
    );
\slv_reg12_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg12[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => slv_reg12(9),
      R => axi_awready_i_1_n_0
    );
\slv_reg13[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000080000000"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => \wr_addr__3\(2),
      I2 => \wr_addr__3\(3),
      I3 => \wr_addr__3\(0),
      I4 => s00_axi_wstrb(1),
      I5 => \wr_addr__3\(1),
      O => \slv_reg13[15]_i_1_n_0\
    );
\slv_reg13[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000080000000"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => \wr_addr__3\(2),
      I2 => \wr_addr__3\(3),
      I3 => \wr_addr__3\(0),
      I4 => s00_axi_wstrb(2),
      I5 => \wr_addr__3\(1),
      O => \slv_reg13[23]_i_1_n_0\
    );
\slv_reg13[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000080000000"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => \wr_addr__3\(2),
      I2 => \wr_addr__3\(3),
      I3 => \wr_addr__3\(0),
      I4 => s00_axi_wstrb(3),
      I5 => \wr_addr__3\(1),
      O => \slv_reg13[31]_i_1_n_0\
    );
\slv_reg13[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000080000000"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => \wr_addr__3\(2),
      I2 => \wr_addr__3\(3),
      I3 => \wr_addr__3\(0),
      I4 => s00_axi_wstrb(0),
      I5 => \wr_addr__3\(1),
      O => \slv_reg13[7]_i_1_n_0\
    );
\slv_reg13_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg13[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => slv_reg13(0),
      R => axi_awready_i_1_n_0
    );
\slv_reg13_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg13[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => slv_reg13(10),
      R => axi_awready_i_1_n_0
    );
\slv_reg13_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg13[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => slv_reg13(11),
      R => axi_awready_i_1_n_0
    );
\slv_reg13_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg13[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => slv_reg13(12),
      R => axi_awready_i_1_n_0
    );
\slv_reg13_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg13[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => slv_reg13(13),
      R => axi_awready_i_1_n_0
    );
\slv_reg13_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg13[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => slv_reg13(14),
      R => axi_awready_i_1_n_0
    );
\slv_reg13_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg13[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => slv_reg13(15),
      R => axi_awready_i_1_n_0
    );
\slv_reg13_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg13[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => slv_reg13(16),
      R => axi_awready_i_1_n_0
    );
\slv_reg13_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg13[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => slv_reg13(17),
      R => axi_awready_i_1_n_0
    );
\slv_reg13_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg13[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => slv_reg13(18),
      R => axi_awready_i_1_n_0
    );
\slv_reg13_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg13[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => slv_reg13(19),
      R => axi_awready_i_1_n_0
    );
\slv_reg13_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg13[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg13(1),
      R => axi_awready_i_1_n_0
    );
\slv_reg13_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg13[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => slv_reg13(20),
      R => axi_awready_i_1_n_0
    );
\slv_reg13_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg13[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => slv_reg13(21),
      R => axi_awready_i_1_n_0
    );
\slv_reg13_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg13[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => slv_reg13(22),
      R => axi_awready_i_1_n_0
    );
\slv_reg13_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg13[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => slv_reg13(23),
      R => axi_awready_i_1_n_0
    );
\slv_reg13_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg13[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => slv_reg13(24),
      R => axi_awready_i_1_n_0
    );
\slv_reg13_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg13[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => slv_reg13(25),
      R => axi_awready_i_1_n_0
    );
\slv_reg13_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg13[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => slv_reg13(26),
      R => axi_awready_i_1_n_0
    );
\slv_reg13_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg13[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => slv_reg13(27),
      R => axi_awready_i_1_n_0
    );
\slv_reg13_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg13[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => slv_reg13(28),
      R => axi_awready_i_1_n_0
    );
\slv_reg13_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg13[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => slv_reg13(29),
      R => axi_awready_i_1_n_0
    );
\slv_reg13_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg13[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => slv_reg13(2),
      R => axi_awready_i_1_n_0
    );
\slv_reg13_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg13[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => slv_reg13(30),
      R => axi_awready_i_1_n_0
    );
\slv_reg13_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg13[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => slv_reg13(31),
      R => axi_awready_i_1_n_0
    );
\slv_reg13_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg13[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => slv_reg13(3),
      R => axi_awready_i_1_n_0
    );
\slv_reg13_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg13[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => slv_reg13(4),
      R => axi_awready_i_1_n_0
    );
\slv_reg13_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg13[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => slv_reg13(5),
      R => axi_awready_i_1_n_0
    );
\slv_reg13_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg13[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => slv_reg13(6),
      R => axi_awready_i_1_n_0
    );
\slv_reg13_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg13[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => slv_reg13(7),
      R => axi_awready_i_1_n_0
    );
\slv_reg13_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg13[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => slv_reg13(8),
      R => axi_awready_i_1_n_0
    );
\slv_reg13_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg13[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => slv_reg13(9),
      R => axi_awready_i_1_n_0
    );
\slv_reg14[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000080000000"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => \wr_addr__3\(2),
      I2 => \wr_addr__3\(3),
      I3 => s00_axi_wstrb(1),
      I4 => \wr_addr__3\(1),
      I5 => \wr_addr__3\(0),
      O => \slv_reg14[15]_i_1_n_0\
    );
\slv_reg14[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000080000000"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => \wr_addr__3\(2),
      I2 => \wr_addr__3\(3),
      I3 => s00_axi_wstrb(2),
      I4 => \wr_addr__3\(1),
      I5 => \wr_addr__3\(0),
      O => \slv_reg14[23]_i_1_n_0\
    );
\slv_reg14[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000080000000"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => \wr_addr__3\(2),
      I2 => \wr_addr__3\(3),
      I3 => s00_axi_wstrb(3),
      I4 => \wr_addr__3\(1),
      I5 => \wr_addr__3\(0),
      O => \slv_reg14[31]_i_1_n_0\
    );
\slv_reg14[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000080000000"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => \wr_addr__3\(2),
      I2 => \wr_addr__3\(3),
      I3 => s00_axi_wstrb(0),
      I4 => \wr_addr__3\(1),
      I5 => \wr_addr__3\(0),
      O => \slv_reg14[7]_i_1_n_0\
    );
\slv_reg14_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg14[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => slv_reg14(0),
      R => axi_awready_i_1_n_0
    );
\slv_reg14_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg14[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => slv_reg14(10),
      R => axi_awready_i_1_n_0
    );
\slv_reg14_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg14[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => slv_reg14(11),
      R => axi_awready_i_1_n_0
    );
\slv_reg14_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg14[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => slv_reg14(12),
      R => axi_awready_i_1_n_0
    );
\slv_reg14_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg14[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => slv_reg14(13),
      R => axi_awready_i_1_n_0
    );
\slv_reg14_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg14[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => slv_reg14(14),
      R => axi_awready_i_1_n_0
    );
\slv_reg14_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg14[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => slv_reg14(15),
      R => axi_awready_i_1_n_0
    );
\slv_reg14_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg14[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => slv_reg14(16),
      R => axi_awready_i_1_n_0
    );
\slv_reg14_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg14[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => slv_reg14(17),
      R => axi_awready_i_1_n_0
    );
\slv_reg14_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg14[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => slv_reg14(18),
      R => axi_awready_i_1_n_0
    );
\slv_reg14_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg14[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => slv_reg14(19),
      R => axi_awready_i_1_n_0
    );
\slv_reg14_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg14[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg14(1),
      R => axi_awready_i_1_n_0
    );
\slv_reg14_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg14[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => slv_reg14(20),
      R => axi_awready_i_1_n_0
    );
\slv_reg14_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg14[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => slv_reg14(21),
      R => axi_awready_i_1_n_0
    );
\slv_reg14_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg14[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => slv_reg14(22),
      R => axi_awready_i_1_n_0
    );
\slv_reg14_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg14[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => slv_reg14(23),
      R => axi_awready_i_1_n_0
    );
\slv_reg14_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg14[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => slv_reg14(24),
      R => axi_awready_i_1_n_0
    );
\slv_reg14_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg14[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => slv_reg14(25),
      R => axi_awready_i_1_n_0
    );
\slv_reg14_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg14[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => slv_reg14(26),
      R => axi_awready_i_1_n_0
    );
\slv_reg14_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg14[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => slv_reg14(27),
      R => axi_awready_i_1_n_0
    );
\slv_reg14_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg14[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => slv_reg14(28),
      R => axi_awready_i_1_n_0
    );
\slv_reg14_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg14[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => slv_reg14(29),
      R => axi_awready_i_1_n_0
    );
\slv_reg14_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg14[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => slv_reg14(2),
      R => axi_awready_i_1_n_0
    );
\slv_reg14_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg14[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => slv_reg14(30),
      R => axi_awready_i_1_n_0
    );
\slv_reg14_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg14[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => slv_reg14(31),
      R => axi_awready_i_1_n_0
    );
\slv_reg14_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg14[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => slv_reg14(3),
      R => axi_awready_i_1_n_0
    );
\slv_reg14_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg14[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => slv_reg14(4),
      R => axi_awready_i_1_n_0
    );
\slv_reg14_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg14[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => slv_reg14(5),
      R => axi_awready_i_1_n_0
    );
\slv_reg14_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg14[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => slv_reg14(6),
      R => axi_awready_i_1_n_0
    );
\slv_reg14_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg14[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => slv_reg14(7),
      R => axi_awready_i_1_n_0
    );
\slv_reg14_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg14[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => slv_reg14(8),
      R => axi_awready_i_1_n_0
    );
\slv_reg14_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg14[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => slv_reg14(9),
      R => axi_awready_i_1_n_0
    );
\slv_reg15[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => \wr_addr__3\(2),
      I2 => s00_axi_wstrb(1),
      I3 => \wr_addr__3\(0),
      I4 => \wr_addr__3\(1),
      I5 => \wr_addr__3\(3),
      O => \slv_reg15[15]_i_1_n_0\
    );
\slv_reg15[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => \wr_addr__3\(2),
      I2 => s00_axi_wstrb(2),
      I3 => \wr_addr__3\(0),
      I4 => \wr_addr__3\(1),
      I5 => \wr_addr__3\(3),
      O => \slv_reg15[23]_i_1_n_0\
    );
\slv_reg15[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => \wr_addr__3\(2),
      I2 => s00_axi_wstrb(3),
      I3 => \wr_addr__3\(0),
      I4 => \wr_addr__3\(1),
      I5 => \wr_addr__3\(3),
      O => \slv_reg15[31]_i_1_n_0\
    );
\slv_reg15[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => \wr_addr__3\(2),
      I2 => s00_axi_wstrb(0),
      I3 => \wr_addr__3\(0),
      I4 => \wr_addr__3\(1),
      I5 => \wr_addr__3\(3),
      O => \slv_reg15[7]_i_1_n_0\
    );
\slv_reg15_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg15[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => slv_reg15(0),
      R => axi_awready_i_1_n_0
    );
\slv_reg15_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg15[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => slv_reg15(10),
      R => axi_awready_i_1_n_0
    );
\slv_reg15_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg15[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => slv_reg15(11),
      R => axi_awready_i_1_n_0
    );
\slv_reg15_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg15[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => slv_reg15(12),
      R => axi_awready_i_1_n_0
    );
\slv_reg15_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg15[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => slv_reg15(13),
      R => axi_awready_i_1_n_0
    );
\slv_reg15_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg15[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => slv_reg15(14),
      R => axi_awready_i_1_n_0
    );
\slv_reg15_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg15[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => slv_reg15(15),
      R => axi_awready_i_1_n_0
    );
\slv_reg15_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg15[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => slv_reg15(16),
      R => axi_awready_i_1_n_0
    );
\slv_reg15_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg15[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => slv_reg15(17),
      R => axi_awready_i_1_n_0
    );
\slv_reg15_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg15[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => slv_reg15(18),
      R => axi_awready_i_1_n_0
    );
\slv_reg15_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg15[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => slv_reg15(19),
      R => axi_awready_i_1_n_0
    );
\slv_reg15_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg15[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg15(1),
      R => axi_awready_i_1_n_0
    );
\slv_reg15_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg15[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => slv_reg15(20),
      R => axi_awready_i_1_n_0
    );
\slv_reg15_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg15[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => slv_reg15(21),
      R => axi_awready_i_1_n_0
    );
\slv_reg15_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg15[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => slv_reg15(22),
      R => axi_awready_i_1_n_0
    );
\slv_reg15_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg15[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => slv_reg15(23),
      R => axi_awready_i_1_n_0
    );
\slv_reg15_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg15[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => slv_reg15(24),
      R => axi_awready_i_1_n_0
    );
\slv_reg15_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg15[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => slv_reg15(25),
      R => axi_awready_i_1_n_0
    );
\slv_reg15_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg15[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => slv_reg15(26),
      R => axi_awready_i_1_n_0
    );
\slv_reg15_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg15[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => slv_reg15(27),
      R => axi_awready_i_1_n_0
    );
\slv_reg15_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg15[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => slv_reg15(28),
      R => axi_awready_i_1_n_0
    );
\slv_reg15_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg15[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => slv_reg15(29),
      R => axi_awready_i_1_n_0
    );
\slv_reg15_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg15[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => slv_reg15(2),
      R => axi_awready_i_1_n_0
    );
\slv_reg15_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg15[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => slv_reg15(30),
      R => axi_awready_i_1_n_0
    );
\slv_reg15_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg15[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => slv_reg15(31),
      R => axi_awready_i_1_n_0
    );
\slv_reg15_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg15[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => slv_reg15(3),
      R => axi_awready_i_1_n_0
    );
\slv_reg15_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg15[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => slv_reg15(4),
      R => axi_awready_i_1_n_0
    );
\slv_reg15_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg15[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => slv_reg15(5),
      R => axi_awready_i_1_n_0
    );
\slv_reg15_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg15[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => slv_reg15(6),
      R => axi_awready_i_1_n_0
    );
\slv_reg15_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg15[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => slv_reg15(7),
      R => axi_awready_i_1_n_0
    );
\slv_reg15_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg15[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => slv_reg15(8),
      R => axi_awready_i_1_n_0
    );
\slv_reg15_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg15[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => slv_reg15(9),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => plpuf_busy,
      Q => \slv_reg1_reg_n_0_[0]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => done_flag,
      Q => \slv_reg1_reg_n_0_[1]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg2[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000800000000"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => s00_axi_wstrb(1),
      I2 => \wr_addr__3\(3),
      I3 => \wr_addr__3\(0),
      I4 => \wr_addr__3\(2),
      I5 => \wr_addr__3\(1),
      O => \slv_reg2[15]_i_1_n_0\
    );
\slv_reg2[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000800000000"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => s00_axi_wstrb(2),
      I2 => \wr_addr__3\(3),
      I3 => \wr_addr__3\(0),
      I4 => \wr_addr__3\(2),
      I5 => \wr_addr__3\(1),
      O => \slv_reg2[23]_i_1_n_0\
    );
\slv_reg2[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000800000000"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => s00_axi_wstrb(3),
      I2 => \wr_addr__3\(3),
      I3 => \wr_addr__3\(0),
      I4 => \wr_addr__3\(2),
      I5 => \wr_addr__3\(1),
      O => \slv_reg2[31]_i_1_n_0\
    );
\slv_reg2[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000800000000"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => s00_axi_wstrb(0),
      I2 => \wr_addr__3\(3),
      I3 => \wr_addr__3\(0),
      I4 => \wr_addr__3\(2),
      I5 => \wr_addr__3\(1),
      O => \slv_reg2[7]_i_1_n_0\
    );
\slv_reg2_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => slv_reg2(0),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => slv_reg2(10),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => slv_reg2(11),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => slv_reg2(12),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => slv_reg2(13),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => slv_reg2(14),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => slv_reg2(15),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => \slv_reg2__0\(16),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => \slv_reg2__0\(17),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => \slv_reg2__0\(18),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => \slv_reg2__0\(19),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg2(1),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => \slv_reg2__0\(20),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => \slv_reg2__0\(21),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => \slv_reg2__0\(22),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => \slv_reg2__0\(23),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => \slv_reg2__0\(24),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => \slv_reg2__0\(25),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => \slv_reg2__0\(26),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => \slv_reg2__0\(27),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => \slv_reg2__0\(28),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => \slv_reg2__0\(29),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => slv_reg2(2),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => \slv_reg2__0\(30),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => \slv_reg2__0\(31),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => slv_reg2(3),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => slv_reg2(4),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => slv_reg2(5),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => slv_reg2(6),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => slv_reg2(7),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => slv_reg2(8),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => slv_reg2(9),
      R => axi_awready_i_1_n_0
    );
\slv_reg3[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000008000"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => s00_axi_wstrb(1),
      I2 => \wr_addr__3\(0),
      I3 => \wr_addr__3\(1),
      I4 => \wr_addr__3\(2),
      I5 => \wr_addr__3\(3),
      O => \slv_reg3[15]_i_1_n_0\
    );
\slv_reg3[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000008000"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => s00_axi_wstrb(2),
      I2 => \wr_addr__3\(0),
      I3 => \wr_addr__3\(1),
      I4 => \wr_addr__3\(2),
      I5 => \wr_addr__3\(3),
      O => \slv_reg3[23]_i_1_n_0\
    );
\slv_reg3[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000008000"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => s00_axi_wstrb(3),
      I2 => \wr_addr__3\(0),
      I3 => \wr_addr__3\(1),
      I4 => \wr_addr__3\(2),
      I5 => \wr_addr__3\(3),
      O => \slv_reg3[31]_i_1_n_0\
    );
\slv_reg3[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000008000"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => s00_axi_wstrb(0),
      I2 => \wr_addr__3\(0),
      I3 => \wr_addr__3\(1),
      I4 => \wr_addr__3\(2),
      I5 => \wr_addr__3\(3),
      O => \slv_reg3[7]_i_1_n_0\
    );
\slv_reg3_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => plpuf_challenge(0),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => plpuf_challenge(10),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => plpuf_challenge(11),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => plpuf_challenge(12),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => plpuf_challenge(13),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => plpuf_challenge(14),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => plpuf_challenge(15),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => plpuf_challenge(16),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => plpuf_challenge(17),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => plpuf_challenge(18),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => plpuf_challenge(19),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => plpuf_challenge(1),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => plpuf_challenge(20),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => plpuf_challenge(21),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => plpuf_challenge(22),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => plpuf_challenge(23),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => plpuf_challenge(24),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => plpuf_challenge(25),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => plpuf_challenge(26),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => plpuf_challenge(27),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => plpuf_challenge(28),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => plpuf_challenge(29),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => plpuf_challenge(2),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => plpuf_challenge(30),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => plpuf_challenge(31),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => plpuf_challenge(3),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => plpuf_challenge(4),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => plpuf_challenge(5),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => plpuf_challenge(6),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => plpuf_challenge(7),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => plpuf_challenge(8),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => plpuf_challenge(9),
      R => axi_awready_i_1_n_0
    );
\slv_reg4[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000800000000"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => s00_axi_wstrb(1),
      I2 => \wr_addr__3\(3),
      I3 => \wr_addr__3\(1),
      I4 => \wr_addr__3\(0),
      I5 => \wr_addr__3\(2),
      O => \slv_reg4[15]_i_1_n_0\
    );
\slv_reg4[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000800000000"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => s00_axi_wstrb(2),
      I2 => \wr_addr__3\(3),
      I3 => \wr_addr__3\(1),
      I4 => \wr_addr__3\(0),
      I5 => \wr_addr__3\(2),
      O => \slv_reg4[23]_i_1_n_0\
    );
\slv_reg4[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000800000000"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => s00_axi_wstrb(3),
      I2 => \wr_addr__3\(3),
      I3 => \wr_addr__3\(1),
      I4 => \wr_addr__3\(0),
      I5 => \wr_addr__3\(2),
      O => \slv_reg4[31]_i_1_n_0\
    );
\slv_reg4[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000800000000"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => s00_axi_wstrb(0),
      I2 => \wr_addr__3\(3),
      I3 => \wr_addr__3\(1),
      I4 => \wr_addr__3\(0),
      I5 => \wr_addr__3\(2),
      O => \slv_reg4[7]_i_1_n_0\
    );
\slv_reg4_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => plpuf_challenge(32),
      R => axi_awready_i_1_n_0
    );
\slv_reg4_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => plpuf_challenge(42),
      R => axi_awready_i_1_n_0
    );
\slv_reg4_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => plpuf_challenge(43),
      R => axi_awready_i_1_n_0
    );
\slv_reg4_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => plpuf_challenge(44),
      R => axi_awready_i_1_n_0
    );
\slv_reg4_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => plpuf_challenge(45),
      R => axi_awready_i_1_n_0
    );
\slv_reg4_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => plpuf_challenge(46),
      R => axi_awready_i_1_n_0
    );
\slv_reg4_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => plpuf_challenge(47),
      R => axi_awready_i_1_n_0
    );
\slv_reg4_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => plpuf_challenge(48),
      R => axi_awready_i_1_n_0
    );
\slv_reg4_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => plpuf_challenge(49),
      R => axi_awready_i_1_n_0
    );
\slv_reg4_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => plpuf_challenge(50),
      R => axi_awready_i_1_n_0
    );
\slv_reg4_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => plpuf_challenge(51),
      R => axi_awready_i_1_n_0
    );
\slv_reg4_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => plpuf_challenge(33),
      R => axi_awready_i_1_n_0
    );
\slv_reg4_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => plpuf_challenge(52),
      R => axi_awready_i_1_n_0
    );
\slv_reg4_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => plpuf_challenge(53),
      R => axi_awready_i_1_n_0
    );
\slv_reg4_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => plpuf_challenge(54),
      R => axi_awready_i_1_n_0
    );
\slv_reg4_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => plpuf_challenge(55),
      R => axi_awready_i_1_n_0
    );
\slv_reg4_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => plpuf_challenge(56),
      R => axi_awready_i_1_n_0
    );
\slv_reg4_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => plpuf_challenge(57),
      R => axi_awready_i_1_n_0
    );
\slv_reg4_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => plpuf_challenge(58),
      R => axi_awready_i_1_n_0
    );
\slv_reg4_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => plpuf_challenge(59),
      R => axi_awready_i_1_n_0
    );
\slv_reg4_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => plpuf_challenge(60),
      R => axi_awready_i_1_n_0
    );
\slv_reg4_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => plpuf_challenge(61),
      R => axi_awready_i_1_n_0
    );
\slv_reg4_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => plpuf_challenge(34),
      R => axi_awready_i_1_n_0
    );
\slv_reg4_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => plpuf_challenge(62),
      R => axi_awready_i_1_n_0
    );
\slv_reg4_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => plpuf_challenge(63),
      R => axi_awready_i_1_n_0
    );
\slv_reg4_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => plpuf_challenge(35),
      R => axi_awready_i_1_n_0
    );
\slv_reg4_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => plpuf_challenge(36),
      R => axi_awready_i_1_n_0
    );
\slv_reg4_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => plpuf_challenge(37),
      R => axi_awready_i_1_n_0
    );
\slv_reg4_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => plpuf_challenge(38),
      R => axi_awready_i_1_n_0
    );
\slv_reg4_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => plpuf_challenge(39),
      R => axi_awready_i_1_n_0
    );
\slv_reg4_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => plpuf_challenge(40),
      R => axi_awready_i_1_n_0
    );
\slv_reg4_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => plpuf_challenge(41),
      R => axi_awready_i_1_n_0
    );
\slv_reg5[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000008000"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => s00_axi_wstrb(1),
      I2 => \wr_addr__3\(0),
      I3 => \wr_addr__3\(2),
      I4 => \wr_addr__3\(1),
      I5 => \wr_addr__3\(3),
      O => \slv_reg5[15]_i_1_n_0\
    );
\slv_reg5[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000008000"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => s00_axi_wstrb(2),
      I2 => \wr_addr__3\(0),
      I3 => \wr_addr__3\(2),
      I4 => \wr_addr__3\(1),
      I5 => \wr_addr__3\(3),
      O => \slv_reg5[23]_i_1_n_0\
    );
\slv_reg5[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000008000"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => s00_axi_wstrb(3),
      I2 => \wr_addr__3\(0),
      I3 => \wr_addr__3\(2),
      I4 => \wr_addr__3\(1),
      I5 => \wr_addr__3\(3),
      O => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg5[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000008000"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => s00_axi_wstrb(0),
      I2 => \wr_addr__3\(0),
      I3 => \wr_addr__3\(2),
      I4 => \wr_addr__3\(1),
      I5 => \wr_addr__3\(3),
      O => \slv_reg5[7]_i_1_n_0\
    );
\slv_reg5_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => plpuf_challenge(64),
      R => axi_awready_i_1_n_0
    );
\slv_reg5_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => plpuf_challenge(74),
      R => axi_awready_i_1_n_0
    );
\slv_reg5_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => plpuf_challenge(75),
      R => axi_awready_i_1_n_0
    );
\slv_reg5_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => plpuf_challenge(76),
      R => axi_awready_i_1_n_0
    );
\slv_reg5_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => plpuf_challenge(77),
      R => axi_awready_i_1_n_0
    );
\slv_reg5_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => plpuf_challenge(78),
      R => axi_awready_i_1_n_0
    );
\slv_reg5_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => plpuf_challenge(79),
      R => axi_awready_i_1_n_0
    );
\slv_reg5_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => plpuf_challenge(80),
      R => axi_awready_i_1_n_0
    );
\slv_reg5_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => plpuf_challenge(81),
      R => axi_awready_i_1_n_0
    );
\slv_reg5_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => plpuf_challenge(82),
      R => axi_awready_i_1_n_0
    );
\slv_reg5_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => plpuf_challenge(83),
      R => axi_awready_i_1_n_0
    );
\slv_reg5_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => plpuf_challenge(65),
      R => axi_awready_i_1_n_0
    );
\slv_reg5_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => plpuf_challenge(84),
      R => axi_awready_i_1_n_0
    );
\slv_reg5_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => plpuf_challenge(85),
      R => axi_awready_i_1_n_0
    );
\slv_reg5_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => plpuf_challenge(86),
      R => axi_awready_i_1_n_0
    );
\slv_reg5_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => plpuf_challenge(87),
      R => axi_awready_i_1_n_0
    );
\slv_reg5_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => plpuf_challenge(88),
      R => axi_awready_i_1_n_0
    );
\slv_reg5_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => plpuf_challenge(89),
      R => axi_awready_i_1_n_0
    );
\slv_reg5_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => plpuf_challenge(90),
      R => axi_awready_i_1_n_0
    );
\slv_reg5_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => plpuf_challenge(91),
      R => axi_awready_i_1_n_0
    );
\slv_reg5_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => plpuf_challenge(92),
      R => axi_awready_i_1_n_0
    );
\slv_reg5_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => plpuf_challenge(93),
      R => axi_awready_i_1_n_0
    );
\slv_reg5_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => plpuf_challenge(66),
      R => axi_awready_i_1_n_0
    );
\slv_reg5_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => plpuf_challenge(94),
      R => axi_awready_i_1_n_0
    );
\slv_reg5_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => plpuf_challenge(95),
      R => axi_awready_i_1_n_0
    );
\slv_reg5_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => plpuf_challenge(67),
      R => axi_awready_i_1_n_0
    );
\slv_reg5_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => plpuf_challenge(68),
      R => axi_awready_i_1_n_0
    );
\slv_reg5_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => plpuf_challenge(69),
      R => axi_awready_i_1_n_0
    );
\slv_reg5_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => plpuf_challenge(70),
      R => axi_awready_i_1_n_0
    );
\slv_reg5_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => plpuf_challenge(71),
      R => axi_awready_i_1_n_0
    );
\slv_reg5_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => plpuf_challenge(72),
      R => axi_awready_i_1_n_0
    );
\slv_reg5_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => plpuf_challenge(73),
      R => axi_awready_i_1_n_0
    );
\slv_reg6[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000008000"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => s00_axi_wstrb(1),
      I2 => \wr_addr__3\(2),
      I3 => \wr_addr__3\(1),
      I4 => \wr_addr__3\(0),
      I5 => \wr_addr__3\(3),
      O => \slv_reg6[15]_i_1_n_0\
    );
\slv_reg6[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000008000"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => s00_axi_wstrb(2),
      I2 => \wr_addr__3\(2),
      I3 => \wr_addr__3\(1),
      I4 => \wr_addr__3\(0),
      I5 => \wr_addr__3\(3),
      O => \slv_reg6[23]_i_1_n_0\
    );
\slv_reg6[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000008000"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => s00_axi_wstrb(3),
      I2 => \wr_addr__3\(2),
      I3 => \wr_addr__3\(1),
      I4 => \wr_addr__3\(0),
      I5 => \wr_addr__3\(3),
      O => \slv_reg6[31]_i_1_n_0\
    );
\slv_reg6[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000008000"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => s00_axi_wstrb(0),
      I2 => \wr_addr__3\(2),
      I3 => \wr_addr__3\(1),
      I4 => \wr_addr__3\(0),
      I5 => \wr_addr__3\(3),
      O => \slv_reg6[7]_i_1_n_0\
    );
\slv_reg6_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => plpuf_challenge(96),
      R => axi_awready_i_1_n_0
    );
\slv_reg6_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => plpuf_challenge(106),
      R => axi_awready_i_1_n_0
    );
\slv_reg6_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => plpuf_challenge(107),
      R => axi_awready_i_1_n_0
    );
\slv_reg6_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => plpuf_challenge(108),
      R => axi_awready_i_1_n_0
    );
\slv_reg6_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => plpuf_challenge(109),
      R => axi_awready_i_1_n_0
    );
\slv_reg6_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => plpuf_challenge(110),
      R => axi_awready_i_1_n_0
    );
\slv_reg6_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => plpuf_challenge(111),
      R => axi_awready_i_1_n_0
    );
\slv_reg6_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => plpuf_challenge(112),
      R => axi_awready_i_1_n_0
    );
\slv_reg6_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => plpuf_challenge(113),
      R => axi_awready_i_1_n_0
    );
\slv_reg6_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => plpuf_challenge(114),
      R => axi_awready_i_1_n_0
    );
\slv_reg6_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => plpuf_challenge(115),
      R => axi_awready_i_1_n_0
    );
\slv_reg6_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => plpuf_challenge(97),
      R => axi_awready_i_1_n_0
    );
\slv_reg6_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => plpuf_challenge(116),
      R => axi_awready_i_1_n_0
    );
\slv_reg6_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => plpuf_challenge(117),
      R => axi_awready_i_1_n_0
    );
\slv_reg6_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => plpuf_challenge(118),
      R => axi_awready_i_1_n_0
    );
\slv_reg6_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => plpuf_challenge(119),
      R => axi_awready_i_1_n_0
    );
\slv_reg6_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => plpuf_challenge(120),
      R => axi_awready_i_1_n_0
    );
\slv_reg6_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => plpuf_challenge(121),
      R => axi_awready_i_1_n_0
    );
\slv_reg6_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => plpuf_challenge(122),
      R => axi_awready_i_1_n_0
    );
\slv_reg6_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => plpuf_challenge(123),
      R => axi_awready_i_1_n_0
    );
\slv_reg6_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => plpuf_challenge(124),
      R => axi_awready_i_1_n_0
    );
\slv_reg6_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => plpuf_challenge(125),
      R => axi_awready_i_1_n_0
    );
\slv_reg6_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => plpuf_challenge(98),
      R => axi_awready_i_1_n_0
    );
\slv_reg6_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => plpuf_challenge(126),
      R => axi_awready_i_1_n_0
    );
\slv_reg6_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => plpuf_challenge(127),
      R => axi_awready_i_1_n_0
    );
\slv_reg6_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => plpuf_challenge(99),
      R => axi_awready_i_1_n_0
    );
\slv_reg6_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => plpuf_challenge(100),
      R => axi_awready_i_1_n_0
    );
\slv_reg6_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => plpuf_challenge(101),
      R => axi_awready_i_1_n_0
    );
\slv_reg6_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => plpuf_challenge(102),
      R => axi_awready_i_1_n_0
    );
\slv_reg6_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => plpuf_challenge(103),
      R => axi_awready_i_1_n_0
    );
\slv_reg6_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => plpuf_challenge(104),
      R => axi_awready_i_1_n_0
    );
\slv_reg6_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => plpuf_challenge(105),
      R => axi_awready_i_1_n_0
    );
\slv_reg7_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => plpuf_response(0),
      Q => slv_reg7(0),
      R => axi_awready_i_1_n_0
    );
\slv_reg7_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => plpuf_response(10),
      Q => slv_reg7(10),
      R => axi_awready_i_1_n_0
    );
\slv_reg7_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => plpuf_response(11),
      Q => slv_reg7(11),
      R => axi_awready_i_1_n_0
    );
\slv_reg7_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => plpuf_response(12),
      Q => slv_reg7(12),
      R => axi_awready_i_1_n_0
    );
\slv_reg7_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => plpuf_response(13),
      Q => slv_reg7(13),
      R => axi_awready_i_1_n_0
    );
\slv_reg7_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => plpuf_response(14),
      Q => slv_reg7(14),
      R => axi_awready_i_1_n_0
    );
\slv_reg7_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => plpuf_response(15),
      Q => slv_reg7(15),
      R => axi_awready_i_1_n_0
    );
\slv_reg7_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => plpuf_response(16),
      Q => slv_reg7(16),
      R => axi_awready_i_1_n_0
    );
\slv_reg7_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => plpuf_response(17),
      Q => slv_reg7(17),
      R => axi_awready_i_1_n_0
    );
\slv_reg7_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => plpuf_response(18),
      Q => slv_reg7(18),
      R => axi_awready_i_1_n_0
    );
\slv_reg7_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => plpuf_response(19),
      Q => slv_reg7(19),
      R => axi_awready_i_1_n_0
    );
\slv_reg7_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => plpuf_response(1),
      Q => slv_reg7(1),
      R => axi_awready_i_1_n_0
    );
\slv_reg7_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => plpuf_response(20),
      Q => slv_reg7(20),
      R => axi_awready_i_1_n_0
    );
\slv_reg7_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => plpuf_response(21),
      Q => slv_reg7(21),
      R => axi_awready_i_1_n_0
    );
\slv_reg7_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => plpuf_response(22),
      Q => slv_reg7(22),
      R => axi_awready_i_1_n_0
    );
\slv_reg7_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => plpuf_response(23),
      Q => slv_reg7(23),
      R => axi_awready_i_1_n_0
    );
\slv_reg7_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => plpuf_response(24),
      Q => slv_reg7(24),
      R => axi_awready_i_1_n_0
    );
\slv_reg7_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => plpuf_response(25),
      Q => slv_reg7(25),
      R => axi_awready_i_1_n_0
    );
\slv_reg7_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => plpuf_response(26),
      Q => slv_reg7(26),
      R => axi_awready_i_1_n_0
    );
\slv_reg7_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => plpuf_response(27),
      Q => slv_reg7(27),
      R => axi_awready_i_1_n_0
    );
\slv_reg7_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => plpuf_response(28),
      Q => slv_reg7(28),
      R => axi_awready_i_1_n_0
    );
\slv_reg7_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => plpuf_response(29),
      Q => slv_reg7(29),
      R => axi_awready_i_1_n_0
    );
\slv_reg7_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => plpuf_response(2),
      Q => slv_reg7(2),
      R => axi_awready_i_1_n_0
    );
\slv_reg7_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => plpuf_response(30),
      Q => slv_reg7(30),
      R => axi_awready_i_1_n_0
    );
\slv_reg7_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => plpuf_response(31),
      Q => slv_reg7(31),
      R => axi_awready_i_1_n_0
    );
\slv_reg7_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => plpuf_response(3),
      Q => slv_reg7(3),
      R => axi_awready_i_1_n_0
    );
\slv_reg7_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => plpuf_response(4),
      Q => slv_reg7(4),
      R => axi_awready_i_1_n_0
    );
\slv_reg7_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => plpuf_response(5),
      Q => slv_reg7(5),
      R => axi_awready_i_1_n_0
    );
\slv_reg7_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => plpuf_response(6),
      Q => slv_reg7(6),
      R => axi_awready_i_1_n_0
    );
\slv_reg7_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => plpuf_response(7),
      Q => slv_reg7(7),
      R => axi_awready_i_1_n_0
    );
\slv_reg7_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => plpuf_response(8),
      Q => slv_reg7(8),
      R => axi_awready_i_1_n_0
    );
\slv_reg7_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => plpuf_response(9),
      Q => slv_reg7(9),
      R => axi_awready_i_1_n_0
    );
\slv_reg8_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => plpuf_response(32),
      Q => slv_reg8(0),
      R => axi_awready_i_1_n_0
    );
\slv_reg8_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => plpuf_response(42),
      Q => slv_reg8(10),
      R => axi_awready_i_1_n_0
    );
\slv_reg8_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => plpuf_response(43),
      Q => slv_reg8(11),
      R => axi_awready_i_1_n_0
    );
\slv_reg8_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => plpuf_response(44),
      Q => slv_reg8(12),
      R => axi_awready_i_1_n_0
    );
\slv_reg8_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => plpuf_response(45),
      Q => slv_reg8(13),
      R => axi_awready_i_1_n_0
    );
\slv_reg8_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => plpuf_response(46),
      Q => slv_reg8(14),
      R => axi_awready_i_1_n_0
    );
\slv_reg8_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => plpuf_response(47),
      Q => slv_reg8(15),
      R => axi_awready_i_1_n_0
    );
\slv_reg8_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => plpuf_response(48),
      Q => slv_reg8(16),
      R => axi_awready_i_1_n_0
    );
\slv_reg8_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => plpuf_response(49),
      Q => slv_reg8(17),
      R => axi_awready_i_1_n_0
    );
\slv_reg8_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => plpuf_response(50),
      Q => slv_reg8(18),
      R => axi_awready_i_1_n_0
    );
\slv_reg8_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => plpuf_response(51),
      Q => slv_reg8(19),
      R => axi_awready_i_1_n_0
    );
\slv_reg8_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => plpuf_response(33),
      Q => slv_reg8(1),
      R => axi_awready_i_1_n_0
    );
\slv_reg8_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => plpuf_response(52),
      Q => slv_reg8(20),
      R => axi_awready_i_1_n_0
    );
\slv_reg8_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => plpuf_response(53),
      Q => slv_reg8(21),
      R => axi_awready_i_1_n_0
    );
\slv_reg8_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => plpuf_response(54),
      Q => slv_reg8(22),
      R => axi_awready_i_1_n_0
    );
\slv_reg8_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => plpuf_response(55),
      Q => slv_reg8(23),
      R => axi_awready_i_1_n_0
    );
\slv_reg8_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => plpuf_response(56),
      Q => slv_reg8(24),
      R => axi_awready_i_1_n_0
    );
\slv_reg8_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => plpuf_response(57),
      Q => slv_reg8(25),
      R => axi_awready_i_1_n_0
    );
\slv_reg8_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => plpuf_response(58),
      Q => slv_reg8(26),
      R => axi_awready_i_1_n_0
    );
\slv_reg8_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => plpuf_response(59),
      Q => slv_reg8(27),
      R => axi_awready_i_1_n_0
    );
\slv_reg8_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => plpuf_response(60),
      Q => slv_reg8(28),
      R => axi_awready_i_1_n_0
    );
\slv_reg8_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => plpuf_response(61),
      Q => slv_reg8(29),
      R => axi_awready_i_1_n_0
    );
\slv_reg8_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => plpuf_response(34),
      Q => slv_reg8(2),
      R => axi_awready_i_1_n_0
    );
\slv_reg8_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => plpuf_response(62),
      Q => slv_reg8(30),
      R => axi_awready_i_1_n_0
    );
\slv_reg8_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => plpuf_response(63),
      Q => slv_reg8(31),
      R => axi_awready_i_1_n_0
    );
\slv_reg8_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => plpuf_response(35),
      Q => slv_reg8(3),
      R => axi_awready_i_1_n_0
    );
\slv_reg8_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => plpuf_response(36),
      Q => slv_reg8(4),
      R => axi_awready_i_1_n_0
    );
\slv_reg8_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => plpuf_response(37),
      Q => slv_reg8(5),
      R => axi_awready_i_1_n_0
    );
\slv_reg8_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => plpuf_response(38),
      Q => slv_reg8(6),
      R => axi_awready_i_1_n_0
    );
\slv_reg8_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => plpuf_response(39),
      Q => slv_reg8(7),
      R => axi_awready_i_1_n_0
    );
\slv_reg8_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => plpuf_response(40),
      Q => slv_reg8(8),
      R => axi_awready_i_1_n_0
    );
\slv_reg8_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => plpuf_response(41),
      Q => slv_reg8(9),
      R => axi_awready_i_1_n_0
    );
\slv_reg9_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => plpuf_response(64),
      Q => slv_reg9(0),
      R => axi_awready_i_1_n_0
    );
\slv_reg9_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => plpuf_response(74),
      Q => slv_reg9(10),
      R => axi_awready_i_1_n_0
    );
\slv_reg9_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => plpuf_response(75),
      Q => slv_reg9(11),
      R => axi_awready_i_1_n_0
    );
\slv_reg9_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => plpuf_response(76),
      Q => slv_reg9(12),
      R => axi_awready_i_1_n_0
    );
\slv_reg9_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => plpuf_response(77),
      Q => slv_reg9(13),
      R => axi_awready_i_1_n_0
    );
\slv_reg9_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => plpuf_response(78),
      Q => slv_reg9(14),
      R => axi_awready_i_1_n_0
    );
\slv_reg9_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => plpuf_response(79),
      Q => slv_reg9(15),
      R => axi_awready_i_1_n_0
    );
\slv_reg9_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => plpuf_response(80),
      Q => slv_reg9(16),
      R => axi_awready_i_1_n_0
    );
\slv_reg9_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => plpuf_response(81),
      Q => slv_reg9(17),
      R => axi_awready_i_1_n_0
    );
\slv_reg9_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => plpuf_response(82),
      Q => slv_reg9(18),
      R => axi_awready_i_1_n_0
    );
\slv_reg9_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => plpuf_response(83),
      Q => slv_reg9(19),
      R => axi_awready_i_1_n_0
    );
\slv_reg9_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => plpuf_response(65),
      Q => slv_reg9(1),
      R => axi_awready_i_1_n_0
    );
\slv_reg9_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => plpuf_response(84),
      Q => slv_reg9(20),
      R => axi_awready_i_1_n_0
    );
\slv_reg9_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => plpuf_response(85),
      Q => slv_reg9(21),
      R => axi_awready_i_1_n_0
    );
\slv_reg9_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => plpuf_response(86),
      Q => slv_reg9(22),
      R => axi_awready_i_1_n_0
    );
\slv_reg9_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => plpuf_response(87),
      Q => slv_reg9(23),
      R => axi_awready_i_1_n_0
    );
\slv_reg9_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => plpuf_response(88),
      Q => slv_reg9(24),
      R => axi_awready_i_1_n_0
    );
\slv_reg9_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => plpuf_response(89),
      Q => slv_reg9(25),
      R => axi_awready_i_1_n_0
    );
\slv_reg9_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => plpuf_response(90),
      Q => slv_reg9(26),
      R => axi_awready_i_1_n_0
    );
\slv_reg9_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => plpuf_response(91),
      Q => slv_reg9(27),
      R => axi_awready_i_1_n_0
    );
\slv_reg9_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => plpuf_response(92),
      Q => slv_reg9(28),
      R => axi_awready_i_1_n_0
    );
\slv_reg9_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => plpuf_response(93),
      Q => slv_reg9(29),
      R => axi_awready_i_1_n_0
    );
\slv_reg9_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => plpuf_response(66),
      Q => slv_reg9(2),
      R => axi_awready_i_1_n_0
    );
\slv_reg9_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => plpuf_response(94),
      Q => slv_reg9(30),
      R => axi_awready_i_1_n_0
    );
\slv_reg9_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => plpuf_response(95),
      Q => slv_reg9(31),
      R => axi_awready_i_1_n_0
    );
\slv_reg9_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => plpuf_response(67),
      Q => slv_reg9(3),
      R => axi_awready_i_1_n_0
    );
\slv_reg9_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => plpuf_response(68),
      Q => slv_reg9(4),
      R => axi_awready_i_1_n_0
    );
\slv_reg9_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => plpuf_response(69),
      Q => slv_reg9(5),
      R => axi_awready_i_1_n_0
    );
\slv_reg9_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => plpuf_response(70),
      Q => slv_reg9(6),
      R => axi_awready_i_1_n_0
    );
\slv_reg9_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => plpuf_response(71),
      Q => slv_reg9(7),
      R => axi_awready_i_1_n_0
    );
\slv_reg9_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => plpuf_response(72),
      Q => slv_reg9(8),
      R => axi_awready_i_1_n_0
    );
\slv_reg9_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => plpuf_response(73),
      Q => slv_reg9(9),
      R => axi_awready_i_1_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_plpuf is
  port (
    axi_awready_reg : out STD_LOGIC;
    axi_arready_reg : out STD_LOGIC;
    axi_rvalid_reg : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_bready : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_plpuf;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_plpuf is
  signal axi_arready_i_1_n_0 : STD_LOGIC;
  signal \^axi_arready_reg\ : STD_LOGIC;
  signal \axi_awready0__0\ : STD_LOGIC;
  signal axi_awready_i_2_n_0 : STD_LOGIC;
  signal \^axi_awready_reg\ : STD_LOGIC;
  signal axi_bvalid_i_1_n_0 : STD_LOGIC;
  signal axi_rvalid_i_1_n_0 : STD_LOGIC;
  signal \^axi_rvalid_reg\ : STD_LOGIC;
  signal axi_wready_i_1_n_0 : STD_LOGIC;
  signal \^s00_axi_bvalid\ : STD_LOGIC;
  signal \^s00_axi_wready\ : STD_LOGIC;
  signal state_read : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal state_write : STD_LOGIC_VECTOR ( 1 downto 0 );
begin
  axi_arready_reg <= \^axi_arready_reg\;
  axi_awready_reg <= \^axi_awready_reg\;
  axi_rvalid_reg <= \^axi_rvalid_reg\;
  s00_axi_bvalid <= \^s00_axi_bvalid\;
  s00_axi_wready <= \^s00_axi_wready\;
axi_arready_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C4C4C4C4FFCFCFCF"
    )
        port map (
      I0 => s00_axi_arvalid,
      I1 => \^axi_arready_reg\,
      I2 => state_read(1),
      I3 => s00_axi_rready,
      I4 => \^axi_rvalid_reg\,
      I5 => state_read(0),
      O => axi_arready_i_1_n_0
    );
axi_awready_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCC4FFCF"
    )
        port map (
      I0 => s00_axi_awvalid,
      I1 => \^axi_awready_reg\,
      I2 => state_write(1),
      I3 => s00_axi_wvalid,
      I4 => state_write(0),
      O => axi_awready_i_2_n_0
    );
axi_bvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFF3838C3FF0000"
    )
        port map (
      I0 => \axi_awready0__0\,
      I1 => state_write(0),
      I2 => state_write(1),
      I3 => s00_axi_bready,
      I4 => \^s00_axi_bvalid\,
      I5 => s00_axi_wvalid,
      O => axi_bvalid_i_1_n_0
    );
axi_plpuf_slave_lite_v1_0_S00_AXI_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_plpuf_slave_lite_v1_0_S00_AXI
     port map (
      axi_arready_reg_0 => \^axi_arready_reg\,
      axi_arready_reg_1 => axi_arready_i_1_n_0,
      \axi_awready0__0\ => \axi_awready0__0\,
      axi_awready_reg_0 => \^axi_awready_reg\,
      axi_awready_reg_1 => axi_awready_i_2_n_0,
      axi_bvalid_reg_0 => axi_bvalid_i_1_n_0,
      axi_rvalid_reg_0 => \^axi_rvalid_reg\,
      axi_rvalid_reg_1 => axi_rvalid_i_1_n_0,
      axi_wready_reg_0 => axi_wready_i_1_n_0,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(3 downto 0) => s00_axi_araddr(3 downto 0),
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awaddr(3 downto 0) => s00_axi_awaddr(3 downto 0),
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bvalid => \^s00_axi_bvalid\,
      s00_axi_rdata(31 downto 0) => s00_axi_rdata(31 downto 0),
      s00_axi_rready => s00_axi_rready,
      s00_axi_wdata(31 downto 0) => s00_axi_wdata(31 downto 0),
      s00_axi_wready => \^s00_axi_wready\,
      s00_axi_wstrb(3 downto 0) => s00_axi_wstrb(3 downto 0),
      s00_axi_wvalid => s00_axi_wvalid,
      state_read(1 downto 0) => state_read(1 downto 0),
      state_write(1 downto 0) => state_write(1 downto 0)
    );
axi_rvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFFFFF00800080"
    )
        port map (
      I0 => \^axi_arready_reg\,
      I1 => s00_axi_arvalid,
      I2 => state_read(0),
      I3 => state_read(1),
      I4 => s00_axi_rready,
      I5 => \^axi_rvalid_reg\,
      O => axi_rvalid_i_1_n_0
    );
axi_wready_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F1"
    )
        port map (
      I0 => state_write(1),
      I1 => state_write(0),
      I2 => \^s00_axi_wready\,
      O => axi_wready_i_1_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s00_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_awready : out STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    s00_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s00_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_rready : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "design_1_axi_plpuf_0_0,axi_plpuf,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "axi_plpuf,Vivado 2025.1";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \<const0>\ : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of s00_axi_aclk : signal is "xilinx.com:signal:clock:1.0 S00_AXI_CLK CLK";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of s00_axi_aclk : signal is "slave";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of s00_axi_aclk : signal is "XIL_INTERFACENAME S00_AXI_CLK, ASSOCIATED_BUSIF S00_AXI, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s00_axi_aresetn : signal is "xilinx.com:signal:reset:1.0 S00_AXI_RST RST";
  attribute X_INTERFACE_MODE of s00_axi_aresetn : signal is "slave";
  attribute X_INTERFACE_PARAMETER of s00_axi_aresetn : signal is "XIL_INTERFACENAME S00_AXI_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s00_axi_arready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY";
  attribute X_INTERFACE_INFO of s00_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID";
  attribute X_INTERFACE_INFO of s00_axi_awready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY";
  attribute X_INTERFACE_INFO of s00_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID";
  attribute X_INTERFACE_INFO of s00_axi_bready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BREADY";
  attribute X_INTERFACE_INFO of s00_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BVALID";
  attribute X_INTERFACE_INFO of s00_axi_rready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RREADY";
  attribute X_INTERFACE_INFO of s00_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RVALID";
  attribute X_INTERFACE_INFO of s00_axi_wready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WREADY";
  attribute X_INTERFACE_INFO of s00_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WVALID";
  attribute X_INTERFACE_INFO of s00_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR";
  attribute X_INTERFACE_INFO of s00_axi_arprot : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT";
  attribute X_INTERFACE_INFO of s00_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR";
  attribute X_INTERFACE_MODE of s00_axi_awaddr : signal is "slave";
  attribute X_INTERFACE_PARAMETER of s00_axi_awaddr : signal is "XIL_INTERFACENAME S00_AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 16, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 6, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s00_axi_awprot : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT";
  attribute X_INTERFACE_INFO of s00_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BRESP";
  attribute X_INTERFACE_INFO of s00_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RDATA";
  attribute X_INTERFACE_INFO of s00_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RRESP";
  attribute X_INTERFACE_INFO of s00_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WDATA";
  attribute X_INTERFACE_INFO of s00_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB";
begin
  s00_axi_bresp(1) <= \<const0>\;
  s00_axi_bresp(0) <= \<const0>\;
  s00_axi_rresp(1) <= \<const0>\;
  s00_axi_rresp(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_plpuf
     port map (
      axi_arready_reg => s00_axi_arready,
      axi_awready_reg => s00_axi_awready,
      axi_rvalid_reg => s00_axi_rvalid,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(3 downto 0) => s00_axi_araddr(5 downto 2),
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awaddr(3 downto 0) => s00_axi_awaddr(5 downto 2),
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_bvalid => s00_axi_bvalid,
      s00_axi_rdata(31 downto 0) => s00_axi_rdata(31 downto 0),
      s00_axi_rready => s00_axi_rready,
      s00_axi_wdata(31 downto 0) => s00_axi_wdata(31 downto 0),
      s00_axi_wready => s00_axi_wready,
      s00_axi_wstrb(3 downto 0) => s00_axi_wstrb(3 downto 0),
      s00_axi_wvalid => s00_axi_wvalid
    );
end STRUCTURE;
