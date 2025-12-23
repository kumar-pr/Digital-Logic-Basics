module syn_counter_tb();

    logic clk, reset, updown;
    logic [3:0] y;

    
    syn_counter dut(.clk(clk), .reset(reset), .y(y), .updown(updown));

    initial begin
        
        reset = 1; clk = 0; updown = 0;

        
        #20 reset = 0;

        #200 updown = 1;
        
        #200 $finish;
    end

    always #5 clk = ~clk;

endmodule
