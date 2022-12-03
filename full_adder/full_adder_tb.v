module full_adder_tb();
  reg A,B,C;
  wire SUM,CARRY;
  full_adder dut (.a(A), .b(B), .c(C), .sum(SUM), .carry(CARRY));
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