# 
# Synthesis run script generated by Vivado
# 

set_msg_config -id {Common 17-41} -limit 10000000
create_project -in_memory -part xc7z010clg400-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir /home/will/redpitaya/fpga_examples/redpitaya_guide/adc_dac_control/adc_dac_control.cache/wt [current_project]
set_property parent.project_path /home/will/redpitaya/fpga_examples/redpitaya_guide/adc_dac_control/adc_dac_control.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property ip_repo_paths /home/will/redpitaya/fpga_examples/redpitaya_guide/tmp/cores [current_project]
set_property ip_output_repo /home/will/redpitaya/fpga_examples/redpitaya_guide/adc_dac_control/adc_dac_control.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
set_property verilog_define TOOL_VIVADO [current_fileset]
read_verilog -library xil_defaultlib /home/will/redpitaya/fpga_examples/redpitaya_guide/adc_dac_control/adc_dac_control.srcs/sources_1/bd/system/hdl/system_wrapper.v
add_files /home/will/redpitaya/fpga_examples/redpitaya_guide/adc_dac_control/adc_dac_control.srcs/sources_1/bd/system/system.bd
set_property used_in_implementation false [get_files -all /home/will/redpitaya/fpga_examples/redpitaya_guide/adc_dac_control/adc_dac_control.srcs/sources_1/bd/system/ip/system_processing_system7_0_0/system_processing_system7_0_0.xdc]
set_property used_in_implementation false [get_files -all /home/will/redpitaya/fpga_examples/redpitaya_guide/adc_dac_control/adc_dac_control.srcs/sources_1/bd/system/ip/system_util_ds_buf_1_0/system_util_ds_buf_1_0_board.xdc]
set_property used_in_implementation false [get_files -all /home/will/redpitaya/fpga_examples/redpitaya_guide/adc_dac_control/adc_dac_control.srcs/sources_1/bd/system/ip/system_util_ds_buf_2_0/system_util_ds_buf_2_0_board.xdc]
set_property used_in_implementation false [get_files -all /home/will/redpitaya/fpga_examples/redpitaya_guide/adc_dac_control/adc_dac_control.srcs/sources_1/bd/system/system_ooc.xdc]
set_property is_locked true [get_files /home/will/redpitaya/fpga_examples/redpitaya_guide/adc_dac_control/adc_dac_control.srcs/sources_1/bd/system/system.bd]

# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc /home/will/redpitaya/fpga_examples/redpitaya_guide/adc_dac_control/adc_dac_control.srcs/constrs_1/imports/cfg/clocks.xdc
set_property used_in_implementation false [get_files /home/will/redpitaya/fpga_examples/redpitaya_guide/adc_dac_control/adc_dac_control.srcs/constrs_1/imports/cfg/clocks.xdc]

read_xdc /home/will/redpitaya/fpga_examples/redpitaya_guide/adc_dac_control/adc_dac_control.srcs/constrs_1/imports/cfg/ports.xdc
set_property used_in_implementation false [get_files /home/will/redpitaya/fpga_examples/redpitaya_guide/adc_dac_control/adc_dac_control.srcs/constrs_1/imports/cfg/ports.xdc]

read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]

synth_design -top system_wrapper -part xc7z010clg400-1 -fanout_limit 400 -fsm_extraction one_hot -keep_equivalent_registers -resource_sharing off -no_lc -shreg_min_size 5


write_checkpoint -force -noxdef system_wrapper.dcp

catch { report_utilization -file system_wrapper_utilization_synth.rpt -pb system_wrapper_utilization_synth.pb }
