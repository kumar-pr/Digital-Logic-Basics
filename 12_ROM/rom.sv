module rom (
    input  logic       clk,
    input  logic       en,
    input  logic [1:0] adr,
    output logic [2:0] dout
);

    always_ff @(posedge clk) begin
        if (en) begin
            case (adr)
                2'b00: dout <= 3'b010; // Address 0 -> Data 2
                2'b01: dout <= 3'b100; // Address 1 -> Data 4
                2'b10: dout <= 3'b011; // Address 2 -> Data 3
                2'b11: dout <= 3'b110; // Address 3 -> Data 6
                default: dout <= 3'b000;
            endcase
        end
    end

endmodule
