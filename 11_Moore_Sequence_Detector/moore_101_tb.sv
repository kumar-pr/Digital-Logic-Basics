module moore_101_tb;
    logic clk;
    logic reset;
    logic x;
    logic y;

     
    moore_101 dut (
        .clk(clk),
        .reset(reset),
        .x(x),
        .y(y)
    );

    
    initial clk = 0;
    always #5 clk = ~clk;

    initial begin
         
        reset = 1;
        x = 0;
        #15 reset = 0;  

         
        
        @(negedge clk) x = 1; // FSM will move S0 -> S1 on next rising edge
        @(negedge clk) x = 0; // FSM will move S1 -> S2 on next rising edge
        @(negedge clk) x = 1; // FSM will move S2 -> S3 on next rising edge

         
        @(negedge clk) x = 0; 

        
        repeat (2) @(negedge clk); 
        @(negedge clk) x = 1;
        @(negedge clk) x = 0;
        @(negedge clk) x = 1;
        
        @(negedge clk) x = 0;
        
        #50;
        $display("Simulation Finished");
        $finish;
    end

    
    initial begin
        $monitor("Time=%0t | Reset=%b | x=%b | y=%b | State=%b", $time, reset, x, y, dut.state);
    end

endmodule
