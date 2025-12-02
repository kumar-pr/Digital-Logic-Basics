module demux(
    input  logic [2:0] i,       
    input  logic       s1, s0,  
    output logic [2:0] y0, y1, y2, y3  
);

     
    assign y0 = (~s1 & ~s0) ? i : 3'b000;
    assign y1 = (~s1 &  s0) ? i : 3'b000;
    assign y2 = ( s1 & ~s0) ? i : 3'b000;
    assign y3 = ( s1 &  s0) ? i : 3'b000;

endmodule
