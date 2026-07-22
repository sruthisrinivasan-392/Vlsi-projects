//memory_tb.sv: memory testbench module
`timescale 1ns/1ps
// include RTL file
`include "fa.v"
// include test bench files
`include "globals1.sv"
import globals1::*;
`include "fa_gen.sv"
`include "fa_if.sv"
`include "fa_drv.sv"
`include "fa_mon.sv"
`include "fa_sb.sv"
`include "fa_pgtest.sv"
// testbench
// testbench
module fa_tb;
// Memory(DUT) instantiation
   memory # fa_inst(fa_if_r.cin,fa_if_r.cout);

