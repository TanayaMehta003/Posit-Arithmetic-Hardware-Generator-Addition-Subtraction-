############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
############################################################
open_project POSIT_HLS
set_top decoder
add_files decoder.cpp
add_files -tb tb_decoder.cpp
open_solution "solution1" -flow_target vivado
set_part {xc7a12ticsg325-1L}
create_clock -period 10 -name default
config_export -flow syn -format ip_catalog -output C:/Users/tanay/Documents/FPGA/POSIT/POSIT_HLS -rtl verilog -vivado_clock 10
#source "./POSIT_HLS/solution1/directives.tcl"
csim_design
csynth_design
cosim_design -trace_level all
export_design -rtl verilog -format ip_catalog -output C:/Users/tanay/Documents/FPGA/POSIT/POSIT_HLS
