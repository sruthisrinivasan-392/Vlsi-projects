
read_libs /home/vlsi30/45nm_Library/lib/slow_vdd1v0_basicCells.lib
read_hdl fifo.v
elaborate
read_sdc fifo_constraints.sdc
syn_generic
gui_show
syn_map
syn_opt
write_hdl > fifoout_netlist.v
write_sdc > fifoout_cont.sdc
report_area > fifo.area.txt
report_power > fifo.power.txt
report_timing > fifo.timing.txt

