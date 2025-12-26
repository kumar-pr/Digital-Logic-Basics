module mealy_101(
    input  logic clk, reset, x,
    output logic y
);

    typedef enum logic [1:0] {s0, s1, s2} statetype;
    statetype state, nextstate;

    // Sequential Logic: State Update
    always_ff @(posedge clk, posedge reset) begin
        if (reset)
            state <= s0;
        else
            state <= nextstate;
    end

    // Combinational Logic: Next State Logic
    always_comb begin
        nextstate = state;
        case (state)
            s0: if (x)  nextstate = s1;
                else    nextstate = s0;

            s1: if (x)  nextstate = s1;
                else    nextstate = s2;

            s2: if (x)  nextstate = s1;
                else    nextstate = s0;
            
            default: nextstate = s0;
        endcase
    end

    
    assign y = (state == s2) && (x == 1);

endmodule
