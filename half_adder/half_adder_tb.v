module half_adder_tb();
  reg A,B;
  wire SUM,CARRY;
  half_adder dut (.a(A), .b(B), .sum(SUM), .carry(CARRY));
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