module obj2 (a,b,s,y);
input a,b,s;
output y;
assign y= (a&(!s))|(b&s);
endmodule