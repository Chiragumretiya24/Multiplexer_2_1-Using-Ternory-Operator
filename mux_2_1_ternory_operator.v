// 2:1 mux using ternory operator

module multiplexer_2_1_ternory(i,s,f);

// ---------- Port Declaration ---------- \\
  
  input [1:0]i;
  input s;
  output f;

// ---------- Implementation ---------- \\
  
  assign f = ((s==1) ? i[1] : i[0]); //here s==1 means i have put condition if s==1 then true otherwise false, true condition must be first

endmodule

