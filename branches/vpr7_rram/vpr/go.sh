#!/bin/sh
# Example of how to run vpr

# Pack, place, and route a heterogeneous FPGA
# Packing uses the AAPack algorithm
#./vpr sample_arch.xml or1200.latren.blif
#rm -rf spice_test
#valgrind ./vpr ARCH/K6_N10_I33_frac_UMC180nm_1p8V.xml Circuits/s298_K6_N10_ace.blif --activity_file Circuits/s298_K6_N10_ace.act --nodisp --fpga_spice --spice_dir /home/xitang/tangxifan-eda-tools/branches/vpr7_rram/vpr/spice_test  --print_spice_grid_testbench --print_spice_lut_testbench --print_spice_dff_testbench --print_spice_pb_mux_testbench --print_spice_cb_mux_testbench --print_spice_sb_mux_testbench --print_spice_top_testbench #--fpga_spice_parasitic_net_estimation_off #--print_spice_grid_testbench  #--fpga_spice_leakage_only
#valgrind ./vpr ARCH/K6_N10_I33_frac_UMC180nm_1p8V.xml Circuits/apex4_K6_N10_ace.blif --activity_file Circuits/apex4_K6_N10_ace.act --nodisp --fpga_spice --spice_dir /home/xitang/tangxifan-eda-tools/branches/vpr7_rram/vpr/spice_test --route_chan_width 120  --print_spice_grid_testbench --print_spice_lut_testbench --print_spice_dff_testbench --print_spice_pb_mux_testbench --print_spice_cb_mux_testbench --print_spice_sb_mux_testbench --print_spice_top_testbench --fpga_spice_parasitic_net_estimation_off #--print_spice_grid_testbench  #--fpga_spice_leakage_only
#valgrind 
#rm -rf spice_test_rram
#./vpr ARCH/K6_N10_I33_frac_UMC180nm_1p2V_rram.xml Circuits/s298_K6_N10_ace.blif --activity_file Circuits/s298_K6_N10_ace.act --nodisp --fpga_spice --spice_dir /home/xitang/tangxifan-eda-tools/branches/vpr7_rram/vpr/spice_test_rram --print_spice_mux_testbench --fpga_spice_leakage_only

#rm -rf spice_test_rram_sized
#./vpr ARCH/K6_N10_I33_frac_UMC180nm_1p2V_rram_sizing.xml Circuits/s298_K6_N10_ace.blif --activity_file Circuits/s298_K6_N10_ace.act --nodisp --fpga_spice --spice_dir /home/xitang/tangxifan-eda-tools/branches/vpr7_rram/vpr/spice_test_rram_sized --print_spice_mux_testbench --fpga_spice_leakage_only
./vpr /home/xitang/tangxifan-eda-tools/branches/fpga_flow/arch/fpga_spice/k6_N10_sram_tsmc40nm.xml Circuits/s298_K6_N10_ace.blif --full_stats --nodisp --power --activity_file Circuits/s298_K6_N10_ace.act --tech_properties /home/xitang/research/vtr_release/vtr_flow/tech/PTM_45nm/45nm.xml --route_chan_width 300

