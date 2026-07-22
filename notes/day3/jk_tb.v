module jk_tb;
reg clk,rst,j,k;
wire jk_ff;
jk_flop jk_inst(clk,j,k,rst,jk_ff);
initial
clk=1'b1;
always#5clk <= ~clk;
initial begin
#10 rst = 1'b1;j = 1'b1; k = 1'b0;
#10 rst = 1'b1;j = 1'b0; k = 1'b1;
#10 rst = 1'b0;j = 1'b0; k = 1'b0;
#10 rst = 1'b0;j = 1'b0; k = 1'b1;
#10 rst = 1'b0;j = 1'b1; k = 1'b0;
#10 rst = 1'b0;j = 1'b1; k = 1'b1;
#10 rst = 1'b0;j = 1'b1; k = 1'b1;
#10 rst = 1'b0;j = 1'b1; k = 1'b1;
end
initial
$monitor($time,"rst=%b,j=%b,k=%b,output=%b",rst,j,k,jk_ff);
initial
#1000$finish;
endmodule
