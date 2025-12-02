module mux4_1_tb();

logic [2:0] i0, i1, i2, i3;
logic s1, s0;
logic [2:0] y;

MUX4_1 dut(i0, i1, i2, i3, s1, s0, y);

initial begin

    i0 = 0; i1 = 1; i2 = 2; i3 = 3;

    s1 = 0; s0 = 0; #10;   // y = i0 = 0
    s1 = 0; s0 = 1; #10;   // y = i1 = 1
    s1 = 1; s0 = 0; #10;   // y = i2 = 2
    s1 = 1; s0 = 1; #10;   // y = i3 = 3

end

endmodule
