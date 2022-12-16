module obj3(d0,d1,d2,d3,x,y,v);
input d0,d1,d2,d3;
output x,y,v;
assign x=d2|d3;
assign y=d3|(d1&(!d2));
assign v=d0|d1|d2|d3;
endmodule