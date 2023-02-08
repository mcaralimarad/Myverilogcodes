module moore_detector1101 (input x, start, rst, clk, output z );
parameter a=0, b=1, c=2, d=3, e=4;
reg [2:0] current;
always @( posedge clk )
if ( rst )  current <= a;
else if ( ~start ) current <= a;
else case ( current )
a : current <= x ? b : a ;
b : current <= x ? c : a ;
c : current <= x ? c : d ;
d : current <= x ? e : a ;
e : current <= x ? c : a ;
default: current <= a;
endcase
assign z = (current==e);
endmodule
