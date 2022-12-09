module mux2x1_tb ();
reg A,B,S;
wire Y;
mux2x1 dut(.a(A), .b(B), .s(S),.y(Y));

initial begin
    $dumpfile("dump.vcd");
    $dumpvars(1);
end

initial begin

S=0; A=0; B=0;
#10
S=0; A=0; B=1;
#10
S=0; A=1; B=0;
#10
S=0; A=1; B=1;
#10
S=1; A=0; B=0;
#10
S=1; A=0; B=1;
#10
S=1; A=1; B=0;
#10
S=1; A=1; B=1;
#10
$stop;
end
endmodule

