module count4[clk,rst,out];
input clk,rst;
output reg[3:0]out;
always@(posedge clk or posedge rst)
begin
if(rst)
out<=1'd0;
else if(out<16)
out<=
 
