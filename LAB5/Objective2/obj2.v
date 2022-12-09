module obj2(a,b,c,d,g0,g1,g2,g3);
input a,b,c,d;
output g0,g1,g2,g3;
assign g0=a;
assign g1=a^b;
assign g2=b^c;
assign g3=c^d;
endmodule