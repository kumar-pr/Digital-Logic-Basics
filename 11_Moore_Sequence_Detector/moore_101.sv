module moore_101(
    input  logic clk,
    input  logic reset,
    input  logic x,
    output logic y
);

    typedef enum logic [1:0] {s0, s1, s2, s3} statetype;
    statetype state, nextstate;

    // Sequential Logic: State Update
    always_ff @(posedge clk or posedge reset) begin
        if (reset)
            state <= s0;
        else
            state <= nextstate;
    end

    // Combinational Logic: Next State
    always_comb begin
        nextstate = state;
        case (state)
            s0: nextstate = (x) ? s1 : s0; // Got '1' -> Go to S1
            s1: nextstate = (x) ? s1 : s2; // Got '10' -> Go to S2
            s2: nextstate = (x) ? s3 : s0; // Got '101' -> Go to S3
            s3: nextstate = s0;            // Reset (Non-Overlapping)
            default: nextstate = s0;
        endcase
    end

    // Output Logic (Moore: Depends only on State)
    assign y = (state == s3);

endmodule
