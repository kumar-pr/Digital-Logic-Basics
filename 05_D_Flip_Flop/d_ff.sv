module d_ff(
    input logic d, en, reset, clk,
    output logic q
);

always_ff @(posedge clk or posedge reset)
begin
    if (reset)
        q <= 0;
    else if (en)
        q <= d;
end

endmodule
