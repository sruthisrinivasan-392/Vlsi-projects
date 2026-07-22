module lfsr(out,clk,rst);
output reg[3:0]out;
input clk,rst;
wire fb;
assign fb=~(out[3]^out[2]);
always @(posedge clk or posedge rst)
begin 
if(rst==1)
out=4'b0;
else
out={out[2:0],fb};
end
endmodule
