module up_down_counter (
    input clk,        
    input reset,        
    input up_down,      
    output reg [7:0] count
);

always @(posedge clk or posedge reset)
begin
    if (reset)
        count <= 0 ;  
    else
    begin
        if (up_down)
            count <= count + 1;
        else
            count <= count - 1;
    end
end
 

endmodule



