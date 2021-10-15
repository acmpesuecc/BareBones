module shift_reg (d, clk, en, dir, rst, out);
	
  //parameters defined
	parameter MSB = 8;
	
  //input and output initialized
	input logic d, clk, en, dir, rst;
	output reg [MSB-1:0] out;
	
  //always sychronous logic block
	always @(posedge clk) begin
		if (!rst)
			out <= 0;
		else begin
			if (en)
				case (dir)
					0 : out <= {out[MSB-2:0], d};
					1 : out <= {d, out[MSB-1:1]};
				endcase
			else
				out <= out;
		end
	end
endmodule
