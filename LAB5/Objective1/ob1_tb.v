module obj1_tb();
reg A,B,C,D;
wire X,Y,Z,W;

obj1 dut(.a(A),.b(B),.c(C),.d(D),.x(X),.y(Y),.z(Z),.w(W));
initial begin
    $dumpfile("dump.vcd");
    $dumpvars(1);
  end
  initial begin
    A=0; B=0; C=0; D=0;
    #10;
    A=0; B=0; C=0; D=1;
    #10;
    A=0; B=0; C=1; D=0;
    #10;
    A=0; B=0; C=1; D=1;
    #10;
    A=0; B=1; C=0; D=0;
    #10;
    A=0; B=1; C=0; D=1;
    #10;
    A=0; B=1; C=1; D=0;
    #10;
    A=0; B=1; C=1; D=1;
    #10;
    A=1; B=0; C=0; D=0;
    #10;
    A=1; B=0; C=0; D=1;
    #10;
    A=1; B=0; C=1; D=0;
    #10;
    A=1; B=0; C=1; D=1;
    #10;
    A=1; B=1; C=0; D=0;
    #10;
    A=1; B=1; C=0; D=1;
    #10;
    A=1; B=1; C=1; D=0;
    #10;
    A=1; B=1; C=1; D=1;
    #10;
    $stop;
  end
endmodule