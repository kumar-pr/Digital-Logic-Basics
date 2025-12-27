module mealy_101_tb;
    logic clk, reset, x, y;

    
    mealy_101 dut (
        .clk(clk),
        .reset(reset),
        .x(x),
        .y(y) 
    );

    initial begin
        clk = 0;
        reset = 1;
        x = 0;

        #4  reset = 0;
        #6  x = 0;
        
        // Sequence generation
        #10 x = 1;    
        #10 x = 0;      
        #10 x = 1;      

        #10 x = 1;      
        #10 x = 0;
        #10 x = 1;      

        #10 x = 0;
        #10 x = 0;
        #10 x = 1;

        #10 $finish;
    end

    always #5 clk = ~clk;

endmodule
