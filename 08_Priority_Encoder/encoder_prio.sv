// 8:3 Priority Encoder using casex
module encoder_prio(
    input  logic [7:0] a,
    output logic [2:0] y
);

    always_comb begin
        casex (a)
            8'b00000001: y = 3'b000;
            8'b0000001x: y = 3'b001; // Priority to bit 1
            8'b000001xx: y = 3'b010; // Priority to bit 2
            8'b00001xxx: y = 3'b011; // Priority to bit 3
            8'b0001xxxx: y = 3'b100; // Priority to bit 4
            8'b001xxxxx: y = 3'b101; // Priority to bit 5
            8'b01xxxxxx: y = 3'b110; // Priority to bit 6
            8'b1xxxxxxx: y = 3'b111; // Priority to bit 7 (Highest)
            default:     y = 3'b000; // Default case
        endcase
    end
endmodule
