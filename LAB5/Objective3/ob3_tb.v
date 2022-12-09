module obj3_tb();
reg A,B;
wire X,Y,Z,W;

obj3 dut(.a(A),.b(B),.x(X),.y(Y),.z(Z),.w(W));
initial begin
    $dumpfile("dump.vcd");
    $dumpvars(1);
  end
  initial begin
    A=0; B=0;
    #10;
    A=0; B=1;
    #10;
    A=1; B=0;
    #10;
    A=1; B=1;
    #10;
    $stop;
  end
endmodule