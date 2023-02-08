module padder4for(a,b,cin,sum,cout);
input [3:0]a,b;
output [3:0]sum;
reg [3:0]sum;
output cout;
reg cout;
reg [4:0]c;
input cin;
//assign c[0]= cin;
//assign cout= c[4];
integer i;
always@(a,b,cin)

begin
c[0]= cin;
cout= c[4];
for (i=0; i<4; i=i+1)
begin
 sum[i]=a[i] ^ b[i]^c[i];
 c[i+1]=( a[i] & b[i])|(a[i]& c[i])|(b[i]&c[i]);
end
end
endmodule