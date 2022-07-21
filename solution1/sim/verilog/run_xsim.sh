
/home/sumin/tools/Xilinx/Vivado/2020.1/bin/xelab xil_defaultlib.apatb_region_top glbl -prj region.prj -L smartconnect_v1_0 -L axi_protocol_checker_v1_1_12 -L axi_protocol_checker_v1_1_13 -L axis_protocol_checker_v1_1_11 -L axis_protocol_checker_v1_1_12 -L xil_defaultlib -L unisims_ver -L xpm  --lib "ieee_proposed=./ieee_proposed" -s region -debug wave
/home/sumin/tools/Xilinx/Vivado/2020.1/bin/xsim --noieeewarnings region -tclbatch region.tcl -gui -view region_dataflow_ana.wcfg -protoinst region.protoinst

