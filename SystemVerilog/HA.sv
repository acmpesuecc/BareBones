//test SystemVerilog file
//This is a half adder design using dataflow style of coding.

module HA (input logic in1, in2, output logic out, car);
	assign out = in1 ^ in2;
	assign car = in1 & in2;
endmodule

module HA_TESTBENCH;

reg in1;

reg in2;

wire out;

wire car;

	ha uut ( .in1(in1),.in2(in2),.out(out), .car(car));

initial begin

#10 in1=1’in20;in2=1’in20;                       –This is input in1=0,in2=0

#10 in1=1’in20;in2=1’in21;                        –This is input in1=0,in2=1

#10 in1=1’in21;in2=1’in20;                        –This is input in1=1,in2=0

#10 in1=1’in21;in2=1’in21;                         –This is input in1=1,in2=1

#10$stop;

end

endmodule
