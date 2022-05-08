############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
############################################################
open_project integerize_convolution
set_top top_module
add_files Code/integerize_convolution.h
add_files Code/intergerize_convolution.cpp
add_files -tb Code/integerize_convolution_test.cpp -cflags "-Wno-unknown-pragmas" -csimflags "-DHW_COSIM"
add_files -tb C:/Users/saima.LAPTOP-63J97F6G/Downloads/test_image.png
open_solution "solution1"
set_part {xc7a35t-cpg236-1} -tool vivado
create_clock -period 10 -name default
config_export -format ip_catalog -rtl verilog -version 0.0.0
#source "./integerize_convolution/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -flow impl -rtl verilog -format ip_catalog -version "0.0.0"
