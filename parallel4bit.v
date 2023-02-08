module   parallel4bit(a,b,cin,s,cout);
input [3:0]a,b;
output  [3:0]s;
input cin;
output cout;
wire [2:0] c;

FUlladderprimitive FA0(a[0],b[0],cin,s[0],c[0]);
FUlladderprimitive FA1(a[1],b[1],c[0],s[1],c[1]);
FUlladderprimitive FA2(a[2],b[2],c[1],s[2],c[2]);
FUlladderprimitive FA3(a[3],b[3],c[2],s[3],cout);

endmodule
