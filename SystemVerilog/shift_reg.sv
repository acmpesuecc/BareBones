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

module main;
reg clk, rst, en, d, dir;
	wire [7:0] out;
	shift_reg shift_reg1(d, clk, en, dir, rst, out);
initial begin
forever begin
clk <= 0;
#3
clk <= 1;
#3
clk <= 0;
end
end

initial begin
rst = 1;
#3
rst = 0;
#3
rst = 1;
#3
rst = 0;
end

initial begin
d = 1;
dir = 0;
#3
d = 0;
dir = 1;
#3
d = 1;
dir = 0;
end

initial begin
forever begin
en = 0;
#3
en = 1;
#3
en = 0;
end
end

endmodule
