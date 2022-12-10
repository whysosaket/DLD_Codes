module bit_parallel_adder(a0,a1,b0,b1,s0,s1,co);
  input a0,a1,b0,b1;
  output s0,s1,co;
  wire w1;
  assign s0 = a0^b0;  //s0 digit
  assign w1 = a0&b0;  // carry out for a0b0 half_adder

  assign s1 = a1^b1^w1; // s1 digit
  assign co = !((!(a1&b1))|(!(b1&w1))|(!(a1&w1))); // 
endmodule