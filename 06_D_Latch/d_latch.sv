module d_latch(
input logic d,en,reset,
output logic q);
always_latch begin
if (reset)
            q <= 1'b0;      
        else if (en)
            q <= d;
end 
endmodule
