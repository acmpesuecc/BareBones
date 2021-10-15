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
wire [7:0] q;
	ddir ddir1(d, dir, en, clk, reset, out);

initial begin
forever begin
clk <= 0;
#5
clk <= 1;
#5
clk <= 0;
end
end

initial begin
rst = 1;
#12
rst = 0;
#90
rst = 1;
#12
rst = 0;
end

initial begin
d = 1;
dir = 0;
#50
d = 0;
#12
dir = 1;
end

initial begin
forever begin
en = 0;
#7
en = 1;
#8
en = 0;
end
end

endmodule
