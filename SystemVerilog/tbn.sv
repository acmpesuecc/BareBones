//test SystemVerilog file
//This is a half adder design using dataflow style of coding.

module tbn (input logic in1, in2, output logic out, car);

	assign out = in1 ^ in2;
	assign car = in1 & in2;
endmodule
