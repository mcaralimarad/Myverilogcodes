module dec24array(d,y);

input [1:0] d;
output [3:0] y;

assign y = (d==2'b00)?4'b1000:
			  (d==2'b01)?4'b100:
			  (d==2'b10)?4'b0010:
			  4'b0001;
			  
			  endmodule