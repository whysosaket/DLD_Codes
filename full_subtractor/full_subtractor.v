module full_subtractor(a,b,c,dif,bo);
  input a,b,c;
  output dif,bo;
  assign dif = a^b^c;
  assign bo = (!a&b)|(b&c)|(!a&c);
endmodule