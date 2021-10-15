//test SystemVerilog file
//This is a half adder design using dataflow style of coding.

module tbn(A,B,S,C);
	input A,B;
	output S,C;
	assign S = A ^ B;
  	assign C= A & B;
endmodule
