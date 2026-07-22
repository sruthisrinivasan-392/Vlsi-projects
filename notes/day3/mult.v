module ha(input a,b,output s,c);
assign s=a^b;
assign c=a&b;
endmodule

module mult(input[1:0]a,b,output[3:0]c);
wire cout,c1_temp,c2_temp,c3_temp;
and and1(c[0],a[0],b[0]);
and and2(c1_temp,a[0],b[1]);
and and3(c2_temp,a[1],b[0]);
and and4(c3_temp,a[1],b[1]);

ha hadd_int1(c1_temp,c2_temp,c[1],cout);
ha hadd_int2(c[3],c[2],cout,c3_temp);
endmodule
