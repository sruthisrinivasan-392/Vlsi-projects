class mem_trans_gen #();
 transaction mem_trans,mem_trans_mb;
   mailbox gen2mbox;
    function new(mailbox inbox);
    this.gen2mbox=inbox;
  endfunction
  extern task run(string test_name);
endclass
