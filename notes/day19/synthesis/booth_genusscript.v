read_libs /home/install/FOUNDRY/digital/90nm/dig/lib/slow.lib
read_hdl booth_multiplier.v
elaborate
read_sdc input_constraints.sdc
syn_generic
syn_map
syn_opt
write_hdl > booth_netlist.v
write_sdc  > output_constraints.sdc
gui_show
report timing > booth_timing.rpt
report power > booth_power.rpt
report area > booth_cell.rpt
report gates > booth_gates.rpt
   
