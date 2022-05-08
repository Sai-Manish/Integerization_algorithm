// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Wed Apr 27 12:14:46 2022
// Host        : LAPTOP-63J97F6G running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ bd_0_hls_inst_0_stub.v
// Design      : bd_0_hls_inst_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "top_module,Vivado 2019.1" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(output_r_ce0, output_r_we0, input_r_ce0, 
  kernel_V_ce0, ap_clk, ap_rst, ap_start, ap_done, ap_idle, ap_ready, ap_return, output_r_address0, 
  output_r_d0, input_r_address0, input_r_q0, kernel_V_address0, kernel_V_q0, alpha_kernel)
/* synthesis syn_black_box black_box_pad_pin="output_r_ce0,output_r_we0,input_r_ce0,kernel_V_ce0,ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,ap_return[31:0],output_r_address0[13:0],output_r_d0[7:0],input_r_address0[13:0],input_r_q0[7:0],kernel_V_address0[4:0],kernel_V_q0[3:0],alpha_kernel[31:0]" */;
  output output_r_ce0;
  output output_r_we0;
  output input_r_ce0;
  output kernel_V_ce0;
  input ap_clk;
  input ap_rst;
  input ap_start;
  output ap_done;
  output ap_idle;
  output ap_ready;
  output [31:0]ap_return;
  output [13:0]output_r_address0;
  output [7:0]output_r_d0;
  output [13:0]input_r_address0;
  input [7:0]input_r_q0;
  output [4:0]kernel_V_address0;
  input [3:0]kernel_V_q0;
  input [31:0]alpha_kernel;
endmodule
