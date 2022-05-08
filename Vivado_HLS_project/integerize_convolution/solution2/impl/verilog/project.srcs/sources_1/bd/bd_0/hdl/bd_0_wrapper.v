//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
//Date        : Wed Apr 27 12:12:19 2022
//Host        : LAPTOP-63J97F6G running 64-bit major release  (build 9200)
//Command     : generate_target bd_0_wrapper.bd
//Design      : bd_0_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module bd_0_wrapper
   (alpha_kernel,
    ap_clk,
    ap_ctrl_done,
    ap_ctrl_idle,
    ap_ctrl_ready,
    ap_ctrl_start,
    ap_return,
    ap_rst,
    input_r_address0,
    input_r_ce0,
    input_r_q0,
    kernel_V_address0,
    kernel_V_ce0,
    kernel_V_q0,
    output_r_address0,
    output_r_ce0,
    output_r_d0,
    output_r_we0);
  input [31:0]alpha_kernel;
  input ap_clk;
  output ap_ctrl_done;
  output ap_ctrl_idle;
  output ap_ctrl_ready;
  input ap_ctrl_start;
  output [31:0]ap_return;
  input ap_rst;
  output [13:0]input_r_address0;
  output input_r_ce0;
  input [7:0]input_r_q0;
  output [4:0]kernel_V_address0;
  output kernel_V_ce0;
  input [3:0]kernel_V_q0;
  output [13:0]output_r_address0;
  output output_r_ce0;
  output [7:0]output_r_d0;
  output output_r_we0;

  wire [31:0]alpha_kernel;
  wire ap_clk;
  wire ap_ctrl_done;
  wire ap_ctrl_idle;
  wire ap_ctrl_ready;
  wire ap_ctrl_start;
  wire [31:0]ap_return;
  wire ap_rst;
  wire [13:0]input_r_address0;
  wire input_r_ce0;
  wire [7:0]input_r_q0;
  wire [4:0]kernel_V_address0;
  wire kernel_V_ce0;
  wire [3:0]kernel_V_q0;
  wire [13:0]output_r_address0;
  wire output_r_ce0;
  wire [7:0]output_r_d0;
  wire output_r_we0;

  bd_0 bd_0_i
       (.alpha_kernel(alpha_kernel),
        .ap_clk(ap_clk),
        .ap_ctrl_done(ap_ctrl_done),
        .ap_ctrl_idle(ap_ctrl_idle),
        .ap_ctrl_ready(ap_ctrl_ready),
        .ap_ctrl_start(ap_ctrl_start),
        .ap_return(ap_return),
        .ap_rst(ap_rst),
        .input_r_address0(input_r_address0),
        .input_r_ce0(input_r_ce0),
        .input_r_q0(input_r_q0),
        .kernel_V_address0(kernel_V_address0),
        .kernel_V_ce0(kernel_V_ce0),
        .kernel_V_q0(kernel_V_q0),
        .output_r_address0(output_r_address0),
        .output_r_ce0(output_r_ce0),
        .output_r_d0(output_r_d0),
        .output_r_we0(output_r_we0));
endmodule
