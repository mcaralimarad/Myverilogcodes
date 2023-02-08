`timescale 1ns/100ps
module add_1bit (a, b, ci, s, co );
input a, b, ci;
output s, co;
reg s, co;
always @(a, b, ci)
begin
s = #5 a ^ b ^ ci;
co = #3 (a & b) | (b &ci) | (a & ci);
end
endmodule