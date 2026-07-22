module up_down_tb;

reg clk;
reg reset;
reg up_down;
wire [7:0] count;

up_down h12( clk,reset,up_down, count);


always #5 clk = ~clk;

initial
begin
    clk = 0;
    reset = 1;
    up_down = 1;

    #10 reset = 0;

    #10 reset = 1;
    #10 reset = 0;

    #2000 up_down = 0;
    #2000 up_down = 1;
    #2000 up_down = 0;

    #50 $finish;
end


always @(count)
begin
    if(up_down)
        $display("Time=%0t Up Counting Count=%d", $time, count);
    else
        $display("Time=%0t Down Counting Count=%d", $time, count);
end

endmodule
