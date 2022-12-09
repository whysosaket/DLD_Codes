module bit_parallel_adder_tb();
  reg A0,A1,B0,B1;
  wire S0,S1,CO;
  bit_parallel_adder dut (.a0(A0),.a1(A1), .b0(B0), .b1(B1),.s0(S0), .s1(S1), .co(CO));
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(1);
  end
  initial begin
    A1=0; A0=0; B1=0; B0=0;
    #10;
    A1=0; A0=0; B1=0; B0=1;
    #10;
    A1=0; A0=0; B1=1; B0=0;
    #10;
    A1=0; A0=0; B1=1; B0=1;
    #10;
    A1=0; A0=1; B1=0; B0=0;
    #10;
    A1=0; A0=1; B1=0; B0=1;
    #10;
    A1=0; A0=1; B1=1; B0=0;
    #10;
    A1=0; A0=1; B1=1; B0=1;
    #10;
    A1=1; A0=0; B1=0; B0=0;
    #10;
    A1=1; A0=0; B1=0; B0=1;
    #10;
    A1=1; A0=0; B1=1; B0=0;
    #10;
    A1=1; A0=0; B1=1; B0=1;
    #10;
    A1=1; A0=1; B1=0; B0=0;
    #10;
    A1=1; A0=1; B1=0; B0=1;
    #10;
    A1=1; A0=1; B1=1; B0=0;
    #10;
    A1=1; A0=1; B1=1; B0=1;
    #10;
    $stop;
  end
endmodule