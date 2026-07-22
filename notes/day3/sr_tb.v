
module sr_tb;

reg clk,rst,s,r;
wire sr_ff;

sr sr_inst(clk,rst,s,r,sr_ff);

initial
    clk = 1'b0;

always #5 clk = ~clk;

initial
begin
    rst = 1'b1; s = 1'b0; r = 1'b0;

    #10 rst = 1'b0; s = 1'b0; r = 1'b0;
    #10 rst = 1'b0; s = 1'b0; r = 1'b1;
    #10 rst = 1'b0; s = 1'b1; r = 1'b0;
    #10 rst = 1'b0; s = 1'b1; r = 1'b1;
    #10 rst = 1'b0; s = 1'b0; r = 1'b0;

    #20 $finish;
end

initial
begin
    $monitor("time=%0t rst=%b s=%b r=%b q=%b",
              $time,rst,s,r,sr_ff);
end

endmodule
