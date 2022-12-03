module half_subtractor(a,b,dif,co);
  input a,b;
  output dif,co;
  assign dif = a^b;
  assign co = !a&b;
endmodule