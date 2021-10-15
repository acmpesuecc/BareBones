module FA(a,b,c,sum,cout);
	input logic a, b, c;
	output logic sum, cout;
	logic m,n,q;
	HA I1 (a,b,m,n);
	HA I2 (n,c,q,sum);
	or g1 (q,m,cout);
endmodule
