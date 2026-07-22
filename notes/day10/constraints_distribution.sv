// Distribution constraints 
class Transaction;
  rand bit[7:0] src_data;
  rand bit[7:0] des_data;
  rand bit[15:0] length;

  constraint len {length dist{[5:10]:=30, [6:15]:=40, [7:40]:=50};}
  constraint src {src_data dist{0:=1,1:=1, 2:=3, 4:=1};}
  constraint des {des_data dist{[0:5]:/5, [6:100]:=1, [101:200]:=1,  [201:255]:=1};}

  function void post_randomize();
  begin
    $display("src data:%0b",src_data);
    $display("des data:%0b",des_data);
    $display("length:%0b",length);
  end
  endfunction
endclass
// class instance in module 
module distribution;
  initial  begin
    Transaction tran_h=new();
    integer value_rand,count=0;
   for(count=0; count<4;count++)    begin
      $display("randomize value");
      value_rand=tran_h.randomize();
    end
  end
endmodule

