module mux2_1_tb();

logic [3:0] i0, i1;
logic s0;
logic [3:0] y;

MUX2 dut (
        .i0(i0), 
        .i1(i1), 
        .s0(s0), 
        .y(y)
    );

initial begin

    i0 = 0; i1 = 0; s0 = 0; #10;
    i0 = 0; i1 = 1; s0 = 1; #10;
    i0 = 1; i1 = 0; s0 = 0; #10;
    i0 = 1; i1 = 1; s0 = 1; #10;

end

endmodule
