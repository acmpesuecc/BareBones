module circuit( A,B,C,D,Y);
input logic A,B,C,D;
output logic Y;

assign y = A&B&(~C)&D + (~A)&(~B)&(~C) + (~B)&C&D + B&C&(~D) + (~B)&(~C)&(~D);

endmodule
