module halfadd_tb;
reg A,B;
wire S,C;
tbn add1(A,B,S,C);
initial
begin
$dumpfile("halfadd_test.vcd");
$dumpvars(0, halfadd_tb);
end
initial
 begin 
   $monitor($time, " a=%b, b=%b, sum=%b, carry=%b", A,B,S,C);
A = 1'b0;B = 1'b0;
#20
A = 1'b0;B = 1'b1;
#20
A = 1'b1;B = 1'b0;
#20
A = 1'b1;B = 1'b1;
end
endmodule