module moore(input clk,rst,in,
output reg out);
parameter s0=0,s1=1,s2=2,s3=3;
reg[1:0]state;
always@(posedge clk or rst)
begin
if(rst)begin
 state<=0;
   out<=0;
end else begin
 case(state)
 s0:begin
   out<=1'b0;
   if(in)
    state<=s1;
   else
    state<=s0;
 end
 s1:begin
   if(in)begin
    state<=s2;out<=1'b0;
   end else begin
    state<=s1;out<=1'b1;
   end
 end
 s2:begin
  if(in)begin
   state<=s3;out<=1'b1;
  end else begin
    state<=s2;out<=1'b0;
  end
 end
 s3:begin
  if(in)begin
   state<=s1;out<=1'b1;
  end else begin
   state<=s2;out<=1'b0;
  end
 end
 default:begin
   out<=0; state<=s0;
 
 end
endcase
end
end
endmodule
