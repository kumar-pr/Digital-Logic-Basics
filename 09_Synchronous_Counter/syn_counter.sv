module syn_counter(
    input logic clk, reset, updown,
    output logic [3:0] y
);

    always_ff @(posedge clk, posedge reset) begin
        if (reset)
            y <= 4'b0000;
        else if (updown == 0) begin
            // Count Up (Mod-10)
            if (y == 4'b1001)
                y <= 0;
            else
                y <= y + 1;
        end
        else begin
            // Count Down (Mod-10)
            if (y == 0)
                y <= 4'b1001;
            else
                y <= y - 1;
        end
    end

endmodule
