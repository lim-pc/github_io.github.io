
##################################################################################
## Company          : Sinux Tech
## Engineer         : Lim
## 
## Create Date      : 2018-8-22 14:42:42
## Design Name      : None
## Module Name      : None
## Project Name     : None
## Target Devices   : None
## Tool Versions    : Modelsim DE-64 10.6c
##                    Sublime Text 3.1.1
## Description      : Demo for all modelsim simulate script.
## 
## Dependencies     : simualte_wave_demo.do
## 
## Revision         : 1.0.0
##                    Project Created.      -Lim
## 
##################################################################################

##################################################################################
#### 1.Quit the last simmulate and clear the command display.
##################################################################################
quit -sim

.main clear

##################################################################################
#### 2.Create and map simulate libraries.
##################################################################################
set vivado2018_ipcore_lib_dir "C:/modelsim_dlx64_10.6c/vivado_2018_2/..."

# library for functional simulate of xilinx primitives.
vmap unisim     $vivado2018_ipcore_lib_dir/unisim
# library for functional simulate of xilinx macros.
vmap unimacro   $vivado2018_ipcore_lib_dir/unimacro
# library for timing simulate of xilinx primitives.
vamp simprims   $vivado2018_ipcore_lib_dir/simprims_ver
# library for both functional and timing simulation of xilinx devices features.
vamp secureip   $vivado2018_ipcore_lib_dir/secureip

##################################################################################
#### 3.Complie all the source files.
##################################################################################
set verilog_src_dir "E:/Project/cbb/ddr_hdl/..."

#vlog -work $verilog_src_dir/.../test0.v
#vlog -work $verilog_src_dir/.../test1.v
#vlog -work $verilog_src_dir/.../test2.v

##################################################################################
#### 4.Load the design for simulation.
##################################################################################
#vsim test_top_module

##################################################################################
#### 5.Simulate the design.
##################################################################################
# Add signals wave.
do simulate_wave_demo.do

# Run
run all
