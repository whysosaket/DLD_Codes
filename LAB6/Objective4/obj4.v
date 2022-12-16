module obj4(a,b,c,s,co);
input a,b,c;
output s,co;
  wire [0:7]y;
  assign y[0]=(!a)&(!b)&(!c);
  assign y[1]=(!a)&(!b)&(c);
  assign y[2]=(!a)&(b)&(!c);
  assign y[3]=(!a)&(b)&(c);
  assign y[4]=(a)&(!b)&(!c);
  assign y[5]=(a)&(!b)&(c);
  assign y[6]=(a)&(b)&(!c);
  assign y[7]=(a)&(b)&(c);
  assign s=y[1]|y[2]|y[4]|y[7];
  assign co = y[3]|y[5]|y[6]|y[7];
endmodule 
