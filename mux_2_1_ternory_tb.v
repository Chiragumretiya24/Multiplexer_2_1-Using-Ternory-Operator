// 2:1 multiplexer TB

module multiplexer_2_1_ternory_tb();

// ---------- Port Declaration ---------- \\

  reg [1:0]i;
  reg s;
  wire f;
  
// ---------- Instantiation from RTL ---------- \\ 

  multiplexer_2_1_ternory dut(.i(i),.s(s),.f(f));

// ---------- Implementation ---------- \\

  initial begin
      
      $monitor($time,"i = %b, s = %b, f = %b",i,s,f);

      i = 2'b00; s = 0;
      #5;
      i = 2'b01; s = 1;
      #5;
      i = 2'b10; s = 0;
      #5;
      i = 2'b11; s = 1;
      #5;
      $finish;

  end
endmodule


