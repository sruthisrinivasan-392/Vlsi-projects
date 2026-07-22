read_libs /home/install/FOUNDRY/digital/90nm/dig/lib/slow.lib
read_hdl alu.v
elaborate

read_sdc constraints_alu.sdc
syn_generic
gui_show
syn_map
syn_opt
write_hdl > alu_netlist.v
write_sdc > alu_tool.sdc
