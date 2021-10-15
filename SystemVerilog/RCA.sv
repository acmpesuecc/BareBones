module RCA(input logic (3:0)a, b,
			  input logic cin, 
			  output logic (3:0)c, s,
			  output logic cout);

	FA A1 (a[0], b[0], cin, c[0], s[0]);
	FA A2 (a[1], b[0], c[0], c[1], s[1]);
	FA A3 (a[2], b[2], c[1], c[0], s[2]);
	FA A4 (a[3], b[3], c[2], cout, s[3]);
	end
endmodule
