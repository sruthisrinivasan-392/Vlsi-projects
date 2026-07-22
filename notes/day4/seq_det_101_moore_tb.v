
module tb_moore;

    reg clk;
    reg rst;
    reg in;
    wire out;
    moore uut (
        .clk(clk),
        .rst(rst),
        .in(in),
        .out(out)
    );

    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end
    initial begin
        #10 rst = 1;
        #10 rst = 0;
        #10 rst = 1;
        #10 in  = 0;
        #12 rst = 0;

        @(posedge clk) in = 1;  // s0 -> s1
        @(posedge clk) in = 1;  // s1 -> s2
        @(posedge clk) in = 1;  // s2 -> s3
        @(posedge clk) in = 1;  // s3 -> s1
        @(posedge clk) in = 0;  // s1 -> s1
        @(posedge clk) in = 1;  // s1 -> s2
        @(posedge clk) in = 0;  // s2 -> s2
        @(posedge clk) in = 1;  // s2 -> s3
        @(posedge clk) in = 0;  // s3 -> s2
        @(posedge clk) in = 1;
        @(posedge clk) in = 1;
        @(posedge clk) in = 0;
        @(posedge clk) in = 0;

        #20;
        $finish;
    end
    initial begin
        $monitor("Time=%0t rst=%b in=%b state=%0d out=%b",
                  $time, rst, in, uut.state, out);
    end

endmodule
