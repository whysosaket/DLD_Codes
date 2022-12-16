module obj4_tb();
reg A,B,C;
wire S,CO;

  obj4 dut(.a(A),.b(B),.c(C),.s(S), .co(CO));
initial begin
    $dumpfile("dump.vcd");
    $dumpvars(1);
  end
  initial begin
    A=0; B=0; C=0;
    #10;
    A=0; B=0; C=1;
    #10;
    A=0; B=1; C=0;
    #10;
    A=0; B=1; C=1;
    #10;
    A=1; B=0; C=0;
    #10;
    A=1; B=0; C=1;
    #10;
    A=1; B=1; C=0;
    #10;
    A=1; B=1; C=1;
    #10;
    $stop;
  end
endmodule