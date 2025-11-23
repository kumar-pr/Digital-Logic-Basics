module mux2_1(
input logic[2:0]i0,i1,
input  logic s0,
output logic [2:0]y);

assign y=s0?i1:i0;
endmodule
