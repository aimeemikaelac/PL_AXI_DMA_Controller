############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 2014 Xilinx Inc. All rights reserved.
############################################################
open_project PL_AXI_DMA_Controller
set_top pl_axi_dma_controller
add_files PL_AXI_DMA_Controller/source/PL_AXI_DMA_Controller.cpp
add_files -tb PL_AXI_DMA_Controller/source/PL_AXI_DMA_Controller_Testbench.cpp
open_solution "solution1"
set_part {xc7z020clg484-1}
create_clock -period 10 -name default
source "./PL_AXI_DMA_Controller/solution1/directives.tcl"
csim_design
csynth_design
cosim_design -trace_level none -rtl verilog -tool xsim
export_design -format ip_catalog
