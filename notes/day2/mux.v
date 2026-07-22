module mux(
    input i0,
    input i1,
    input s0,
    output reg y
);

always @(i0 or i1 or s0)
begin
    if(s0 == 0)
        y = i0;
    else
        y = i1;
end

endmodule

module mux_test;

reg i0, i1, s0;
wire y;

mux dut(
    .i0(i0),
    .i1(i1),
    .s0(s0),
    .y(y)
);

initial
begin
    i0 = 1'b0; i1 = 1'b0; s0 = 1'b0;
    #10 i0 = 1'b1; i1 = 1'b0; s0 = 1'b1;
    #10 i0 = 1'b0; i1 = 1'b1; s0 = 1'b0;
    #10 i0 = 1'b1; i1 = 1'b1; s0 = 1'b1;
    #10 $finish;
end

initial
begin
    $monitor("time=%0t i0=%b i1=%b s0=%b y=%b",
              $time, i0, i1, s0, y);
end

endmodule





