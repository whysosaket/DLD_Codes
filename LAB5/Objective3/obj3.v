module obj3(a,b,,x,y,z,w);
input a,b;
output x,y,z,w;
assign x=a&b;
assign y=a&(!b);
assign z=0;
assign w=b;
endmodule