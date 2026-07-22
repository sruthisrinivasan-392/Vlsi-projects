module adder(
    input [3:0] a,
    input [3:0] b,
    output [3:0] s,
    output carry
);

wire c1, c2, c3;

fulladder_1bit fa0(.a(a[0]), .b(b[0]), .cin(1'b0), .sum(s[0]), .cout(c1));
fulladder_1bit fa1(.a(a[1]), .b(b[1]), .cin(c1),   .sum(s[1]), .cout(c2));
fulladder_1bit fa2(.a(a[2]), .b(b[2]), .cin(c2),   .sum(s[2]), .cout(c3));
fulladder_1bit fa3(.a(a[3]), .b(b[3]), .cin(c3),   .sum(s[3]), .cout(carry));

endmodule

module adder_tb;

reg [3:0] a;
reg [3:0] b;
wire [3:0] s;
wire carry;

adder uut(
    .a(a),
    .b(b),
    .s(s),
    .carry(carry)
);

initial begin
    $monitor("Time=%0t a=%b b=%b sum=%b carry=%b",
              $time, a, b, s, carry);

    a = 4'b0000; b = 4'b0000; #10;
    a = 4'b0001; b = 4'b0001; #10;
    a = 4'b0011; b = 4'b0101; #10;
    a = 4'b0111; b = 4'b0001; #10;
    a = 4'b1111; b = 4'b0001; #10;
    a = 4'b1010; b = 4'b0101; #10;

    $finish;
end

endmodule


