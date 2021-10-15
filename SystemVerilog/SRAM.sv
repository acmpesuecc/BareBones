module syncRAM(dataIn, dataOut, Addr, CS, WE, RD, clk);
	
	// parameters for the width
	parameter ADR = 8;
	parameter DAT = 8;
	parameter DPTH = 8;
	
	// ports
	input logic [DAT-1:0] dataIn;
	output reg [DAT-1:0] dataOut;
	input logic [ADR-1:0] Addr;
	input logic CS, WE, RD, clk;
	
	// internal variables
	reg [DAT-1:0] SRAM [DPTH-1:0];
	
	// sychronous logic
	always @(posedge clk) begin
		if(CS == 1'b1) begin
			if(WE == 1'b1 && RD == 1'b0)
				SRAM[Addr] = dataIn;
			else if (RD == 1'b1 && WE == 1'b0)
				dataOut = SRAM [Addr];
		end
	end
endmodule			
