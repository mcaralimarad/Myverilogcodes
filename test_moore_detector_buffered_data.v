module test_moore_detector_buffered_data;
reg x=0, rst, start, clk=0;
wire z;
reg [18:0] buffer;
moore_detector1101 MUT ( x, start, rst, clk, z );
initial buffer = 19'b0001101101111001001;
initial begin
rst=1'b1; start=1'b0;
#29 rst=1'b0;
#29 start=1'b1;
#500 $stop;
end
always @(posedge clk) #1 {x, buffer} = {buffer, x};
always #5 clk = ~clk;
endmodule