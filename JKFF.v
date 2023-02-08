module JKFF (SN, RN, J, K, CLK, Q, QN);
input SN, RN, J, K, CLK;
output Q, QN;
reg Qint;
always @(posedge CLK )
begin
if (~RN)
#8 Qint <= 0;				          // statement1
else if (~SN)
#8 Qint <= 1;                                                       // statement2
else
Qint <= #10 ((J && ~Qint) || (~K && Qint)); // statement3
end
assign Q = Qint; 				          // statement4
assign QN = ~Qint;                                             // statement5
endmodule
