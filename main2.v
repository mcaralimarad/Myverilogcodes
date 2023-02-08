module main2;
`include sub.v
always @(posedge clk)
   g <= ~g;
endmodule;