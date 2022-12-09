module obj2_tb();
reg A,B,C,D;
wire G0,G1,G2,G3;

obj2 dut(.a(A),.b(B),.c(C),.d(D),.g0(G0),.g1(G1),.g2(G2),.g3(G3));
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