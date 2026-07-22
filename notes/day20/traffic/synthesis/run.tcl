set_db init_lib_search_path /home/install/FOUNDRY/digital/90nm/dig/lib

set_db library  slow.lib
   
read_hdl {./traffic.v}
 
elaborate

read_sdc ./constraints_traffic.sdc

set_db use_scan_seqs_for_non_dft false


set_db syn_generic_effort medium
set_db syn_map_effort  medium
set_db syn_opt_effort  medium

syn_generic
syn_map
syn_opt

write_hdl > traffic_netlist.v
write_sdc  > traffic_tool.sdc
   
gui_show

report timing > traffic_timing.rpt
report power > traffic_power.rpt
report area > traffic_cell.rpt
report gates > traffic_gates.rpt
