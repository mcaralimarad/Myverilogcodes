
module mux41c (s0,s1,a,b,c,d,y);
    input s0,s1,a,b,c,d;
    output y;

    assign  y=(s1)?(s0?d:c):(s0?b:a);
    endmodule
