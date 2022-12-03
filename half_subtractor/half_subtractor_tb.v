module half_subtractor_tb();
  reg A,B;
  wire DIF,CO;
  half_subtractor dut (.a(A), .b(B), .dif(DIF), .co(CO));
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