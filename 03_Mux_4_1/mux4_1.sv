module mux4_1(
    input  logic [2:0] i0, i1, i2, i3,
    input  logic       s1, s0,
    output logic [2:0] y
);

assign y = s1 ? (s0 ? i3 : i2) : (s0 ? i1 : i0);

endmodule
