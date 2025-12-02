module demux_tb();

    logic [2:0] i;
    logic s1, s0;
    logic [2:0] y0, y1, y2, y3;

    // Use Named Mapping (Safe & Professional)
    demux1_4 dut (
        .i(i), 
        .s1(s1), .s0(s0), 
        .y0(y0), .y1(y1), .y2(y2), .y3(y3)
    );

    initial begin
        
        i = 3'b101;

        
        s1=0; s0=0; #10; 
        s1=0; s0=1; #10; 
        s1=1; s0=0; #10; 
        s1=1; s0=1; #10; 
        
        $finish;
    end

endmodule
