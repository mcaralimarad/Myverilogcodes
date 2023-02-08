module mux2to1o(a,b,s,y);

input  a,b,s;
output y;


wire s0,s1,s2;
assign s0= ~s; //not gate

assign s1= s0&a;//andgate

assign s2= s&b;

assign y= s1| s2;//or gate



endmodule