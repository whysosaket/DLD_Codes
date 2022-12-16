module obj1_tb();
reg A0,A1,A2,A3,B0,B1,B2,B3;
wire Y;

  obj1 dut(.a0(A0),.a1(A1),.a2(A2),.a3(A3),.b0(B0), .b1(B1), .b2(B2),.b3(B3),.y(Y));
initial begin
    $dumpfile("dump.vcd");
    $dumpvars(1);
  end
  initial begin
    A0=0;A1=0;A2=0;A3=0; B0=0;B1=0;B2=0;B3=0;
    #10;
     A0=0;A1=0;A2=0;A3=0; B0=0;B1=0;B2=0;B3=1;
    #10;
     A0=1;A1=0;A2=0;A3=0; B0=1;B1=0;B2=0;B3=0;
    #10;
     A0=0;A1=0;A2=0;A3=0; B0=1;B1=0;B2=0;B3=0;
    #10;
    $stop;
  end
endmodule