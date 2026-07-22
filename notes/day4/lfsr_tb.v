module lfsr_tb;

reg clk;
reg rst;
wire [3:0] out;

lfsr dut(out,clk,rst);
always
begin
#5;
clk=~clk;
end
initial
begin
clk=0;rst=1;
#10 rst=0;
#10 rst=1;
#10 rst=0;
#300;
$finish;
end
endmodule
