module seq1010(clr,d,clk,y);
input clr,d,clk;
output y;
reg [2:0] state;
reg [2:0] nstate;
reg y;

always @(posedge clk)

begin
if (clr==1'b1)
begin
//nstate=3'b000;
state=3'b000;
end
else
state=nstate;
end

always@(state or d)

begin
case (state)
3'b000:begin y=1'b0;
if (d == 1'b1)
nstate = 3'b001;
else
nstate =3'b000;
end
3'b001:begin
y=1'b0;
if    (d == 1'b0)
nstate = 3'b010;
else
nstate =3'b001;
end

3'b010:begin
y=1'b0;
if (d == 1'b1)
nstate = 3'b011;
else
nstate =3'b000;
end

3'b011:begin
y=1'b0;
if (d == 1'b1)
nstate = 3'b001;
else
nstate =3'b100;
end
3'b100:begin
y=1'b1;
if (d == 1'b1)
nstate = 3'b011;
else
nstate =3'b000;
end

default :nstate = 3'b000;
endcase
end
endmodule
