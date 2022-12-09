module obj1(a,b,c,d,x,y,z,w);
input a,b,c,d;
output x,y,z,w;
assign x=(!a)&(!b)&(!c);
assign y=b^c;
assign z=c;
assign w=!d;
endmodule