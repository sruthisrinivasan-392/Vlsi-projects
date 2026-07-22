// Example
class Bus;
  randc bit [2:0] addr;
  randc bit [3:0] data;  //31
  randc bit  write_read;
 
 function new();

  endfunction 
  
endclass:Bus
 // module to randomize
module ranomize_01;
 Bus bus = new;
 
 initial begin 
 repeat(100)  begin
  if (bus.randomize() == 1)
     // Randomization successful
     $display("addr=%d data = %d\n", bus.addr,bus.data, bus.write_read);
   else
     $display ("Randomization failed\n"); 
  end
 end
endmodule

