module struc_circuit(a,b,c,d,y);
input logic a,b,c,d;
output logic y;
logic l,m,n,o,p,an;

and(an,b,c);
and(l,~a,an);
and(m,a,an);
and(n,a,b,~c,d);
and(o,a,~b,~d);
and(p,a,b,~c);
or(y,l,~m,n,o,p);

endmodule


