module mult_tb;
reg[1:0]a;
reg[1:0]b;
wire[4:0]c;
mult dut(
.a(a),.b(b),.c(c));
initial
 $monitor($time ,"ns :a= %0d b= %0d", a,b,c);
initial
begin
a=0; b=0;
#10; a=2; b=1;
#10; a=3; b=2;
#10; a=2; b=1;
#10; a=3; b=1;
#10; a=1; b=1;
#10; $finish;
end
endmodule

