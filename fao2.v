module  fao2(a,b,c,co,sum);
    input a,b,c;
    output  co,sum;
    reg co,sum,s0,s1,s2;
    always @(a,b,c)
    begin
    s0 <= a & b;
    s1 <= a & c;
    s2 <= c & b;
    co <= s0 | s1| s2;
    sum <= a ^ b ^ c;
	 end
    endmodule