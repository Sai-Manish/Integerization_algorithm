-- (c) Copyright 1995-2022 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: xilinx.com:hls:top_module:0.0
-- IP Revision: 0

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY bd_0_hls_inst_0 IS
  PORT (
    output_r_ce0 : OUT STD_LOGIC;
    output_r_we0 : OUT STD_LOGIC;
    input_r_ce0 : OUT STD_LOGIC;
    kernel_V_ce0 : OUT STD_LOGIC;
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    ap_return : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    output_r_address0 : OUT STD_LOGIC_VECTOR(13 DOWNTO 0);
    output_r_d0 : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    input_r_address0 : OUT STD_LOGIC_VECTOR(13 DOWNTO 0);
    input_r_q0 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    kernel_V_address0 : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
    kernel_V_q0 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    alpha_kernel : IN STD_LOGIC_VECTOR(31 DOWNTO 0)
  );
END bd_0_hls_inst_0;

ARCHITECTURE bd_0_hls_inst_0_arch OF bd_0_hls_inst_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF bd_0_hls_inst_0_arch: ARCHITECTURE IS "yes";
  COMPONENT top_module IS
    PORT (
      output_r_ce0 : OUT STD_LOGIC;
      output_r_we0 : OUT STD_LOGIC;
      input_r_ce0 : OUT STD_LOGIC;
      kernel_V_ce0 : OUT STD_LOGIC;
      ap_clk : IN STD_LOGIC;
      ap_rst : IN STD_LOGIC;
      ap_start : IN STD_LOGIC;
      ap_done : OUT STD_LOGIC;
      ap_idle : OUT STD_LOGIC;
      ap_ready : OUT STD_LOGIC;
      ap_return : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      output_r_address0 : OUT STD_LOGIC_VECTOR(13 DOWNTO 0);
      output_r_d0 : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      input_r_address0 : OUT STD_LOGIC_VECTOR(13 DOWNTO 0);
      input_r_q0 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      kernel_V_address0 : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
      kernel_V_q0 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      alpha_kernel : IN STD_LOGIC_VECTOR(31 DOWNTO 0)
    );
  END COMPONENT top_module;
  ATTRIBUTE IP_DEFINITION_SOURCE : STRING;
  ATTRIBUTE IP_DEFINITION_SOURCE OF bd_0_hls_inst_0_arch: ARCHITECTURE IS "HLS";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER OF alpha_kernel: SIGNAL IS "XIL_INTERFACENAME alpha_kernel, LAYERED_METADATA undef";
  ATTRIBUTE X_INTERFACE_INFO OF alpha_kernel: SIGNAL IS "xilinx.com:signal:data:1.0 alpha_kernel DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF kernel_V_q0: SIGNAL IS "XIL_INTERFACENAME kernel_V_q0, LAYERED_METADATA undef";
  ATTRIBUTE X_INTERFACE_INFO OF kernel_V_q0: SIGNAL IS "xilinx.com:signal:data:1.0 kernel_V_q0 DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF kernel_V_address0: SIGNAL IS "XIL_INTERFACENAME kernel_V_address0, LAYERED_METADATA undef";
  ATTRIBUTE X_INTERFACE_INFO OF kernel_V_address0: SIGNAL IS "xilinx.com:signal:data:1.0 kernel_V_address0 DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF input_r_q0: SIGNAL IS "XIL_INTERFACENAME input_r_q0, LAYERED_METADATA undef";
  ATTRIBUTE X_INTERFACE_INFO OF input_r_q0: SIGNAL IS "xilinx.com:signal:data:1.0 input_r_q0 DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF input_r_address0: SIGNAL IS "XIL_INTERFACENAME input_r_address0, LAYERED_METADATA undef";
  ATTRIBUTE X_INTERFACE_INFO OF input_r_address0: SIGNAL IS "xilinx.com:signal:data:1.0 input_r_address0 DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF output_r_d0: SIGNAL IS "XIL_INTERFACENAME output_r_d0, LAYERED_METADATA undef";
  ATTRIBUTE X_INTERFACE_INFO OF output_r_d0: SIGNAL IS "xilinx.com:signal:data:1.0 output_r_d0 DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF output_r_address0: SIGNAL IS "XIL_INTERFACENAME output_r_address0, LAYERED_METADATA undef";
  ATTRIBUTE X_INTERFACE_INFO OF output_r_address0: SIGNAL IS "xilinx.com:signal:data:1.0 output_r_address0 DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF ap_return: SIGNAL IS "XIL_INTERFACENAME ap_return, LAYERED_METADATA undef";
  ATTRIBUTE X_INTERFACE_INFO OF ap_return: SIGNAL IS "xilinx.com:signal:data:1.0 ap_return DATA";
  ATTRIBUTE X_INTERFACE_INFO OF ap_ready: SIGNAL IS "xilinx.com:interface:acc_handshake:1.0 ap_ctrl ready";
  ATTRIBUTE X_INTERFACE_INFO OF ap_idle: SIGNAL IS "xilinx.com:interface:acc_handshake:1.0 ap_ctrl idle";
  ATTRIBUTE X_INTERFACE_INFO OF ap_done: SIGNAL IS "xilinx.com:interface:acc_handshake:1.0 ap_ctrl done";
  ATTRIBUTE X_INTERFACE_INFO OF ap_start: SIGNAL IS "xilinx.com:interface:acc_handshake:1.0 ap_ctrl start";
  ATTRIBUTE X_INTERFACE_PARAMETER OF ap_rst: SIGNAL IS "XIL_INTERFACENAME ap_rst, POLARITY ACTIVE_HIGH, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF ap_rst: SIGNAL IS "xilinx.com:signal:reset:1.0 ap_rst RST";
  ATTRIBUTE X_INTERFACE_PARAMETER OF ap_clk: SIGNAL IS "XIL_INTERFACENAME ap_clk, ASSOCIATED_RESET ap_rst, FREQ_HZ 100000000.0, PHASE 0.000, CLK_DOMAIN bd_0_ap_clk_0, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF ap_clk: SIGNAL IS "xilinx.com:signal:clock:1.0 ap_clk CLK";
BEGIN
  U0 : top_module
    PORT MAP (
      output_r_ce0 => output_r_ce0,
      output_r_we0 => output_r_we0,
      input_r_ce0 => input_r_ce0,
      kernel_V_ce0 => kernel_V_ce0,
      ap_clk => ap_clk,
      ap_rst => ap_rst,
      ap_start => ap_start,
      ap_done => ap_done,
      ap_idle => ap_idle,
      ap_ready => ap_ready,
      ap_return => ap_return,
      output_r_address0 => output_r_address0,
      output_r_d0 => output_r_d0,
      input_r_address0 => input_r_address0,
      input_r_q0 => input_r_q0,
      kernel_V_address0 => kernel_V_address0,
      kernel_V_q0 => kernel_V_q0,
      alpha_kernel => alpha_kernel
    );
END bd_0_hls_inst_0_arch;
