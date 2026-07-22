`timescale 1ns/1ns
module mel_com_tb;
reg clk,rst,din;
wire dout_1001,dout_1100,dout_1101;
integer i;

mel_com DUT(clk,rst,din,dout_1001,dout_1100,dout_1101);
initial
   forever #5 clk=~clk;
initial
begin
clk=0; rst=1; din=0;
#5; rst=0;
    for (i=0;i<100;i=i+1) begin
    @(posedge clk)
    din=$random;
 if ( dout_1001 )
$display (" Time= %d Sequence 1001 is detected",$time);
     else if ( dout_1100 )
$display (" Time= %d Sequence 1100 is detected",$time);
 else if ( dout_1101 )
$display (" Time= %d Sequence 1101 is detected",$time);
   
    end
#200; $finish;
end


endmodule
