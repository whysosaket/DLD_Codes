module obj3_tb();
reg D0,D1,D2,D3;
wire X,Y,V;
obj3 dut (.d0(D0),.d1(D1),.d2(D2),.d3(D3),.x(X),.y(Y),.v(V));
initial begin
    $dumpfile("dump.vcd");
    $dumpvars(1);
  end
initial begin
D0=0;D1=0;D2=0;D3=0;
#10;
D0=0;D1=0;D2=0;D3=1;
#10;
D0=0;D1=0;D2=1;D3=0;
#10;
D0=0;D1=0;D2=1;D3=1;
#10;
D0=0;D1=1;D2=0;D3=0;
#10;
D0=0;D1=1;D2=0;D3=1;
#10;
D0=0;D1=1;D2=1;D3=0;
#10;
D0=0;D1=1;D2=1;D3=1;
#10;
D0=1;D1=0;D2=0;D3=0;
#10;
D0=1;D1=0;D2=0;D3=1;
#10;
D0=1;D1=0;D2=1;D3=0;
#10;
D0=1;D1=0;D2=1;D3=1;
#10;
D0=1;D1=1;D2=0;D3=0;
#10;
D0=1;D1=1;D2=0;D3=1;
#10;
D0=1;D1=1;D2=1;D3=0;
#10;
D0=1;D1=1;D2=1;D3=1;
#10;
$stop;
end
endmodule