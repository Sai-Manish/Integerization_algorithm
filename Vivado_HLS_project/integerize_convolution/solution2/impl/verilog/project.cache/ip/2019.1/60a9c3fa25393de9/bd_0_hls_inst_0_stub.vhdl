-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Wed Apr 27 12:14:46 2022
-- Host        : LAPTOP-63J97F6G running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ bd_0_hls_inst_0_stub.vhdl
-- Design      : bd_0_hls_inst_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    output_r_ce0 : out STD_LOGIC;
    output_r_we0 : out STD_LOGIC;
    input_r_ce0 : out STD_LOGIC;
    kernel_V_ce0 : out STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ap_rst : in STD_LOGIC;
    ap_start : in STD_LOGIC;
    ap_done : out STD_LOGIC;
    ap_idle : out STD_LOGIC;
    ap_ready : out STD_LOGIC;
    ap_return : out STD_LOGIC_VECTOR ( 31 downto 0 );
    output_r_address0 : out STD_LOGIC_VECTOR ( 13 downto 0 );
    output_r_d0 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    input_r_address0 : out STD_LOGIC_VECTOR ( 13 downto 0 );
    input_r_q0 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    kernel_V_address0 : out STD_LOGIC_VECTOR ( 4 downto 0 );
    kernel_V_q0 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    alpha_kernel : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "output_r_ce0,output_r_we0,input_r_ce0,kernel_V_ce0,ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,ap_return[31:0],output_r_address0[13:0],output_r_d0[7:0],input_r_address0[13:0],input_r_q0[7:0],kernel_V_address0[4:0],kernel_V_q0[3:0],alpha_kernel[31:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "top_module,Vivado 2019.1";
begin
end;