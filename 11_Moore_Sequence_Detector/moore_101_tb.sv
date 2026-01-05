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

    always #5 clk = ~clk;

    initial begin
        clk = 0;
        reset = 1;
        x = 0;
        
        #10 reset = 0;

        // Sequence 1: 1-0-1 (Success)
        #10 x = 1;  
        #10 x = 0;  
        #10 x = 1;  // Reaches s3 here

        // Sequence 2: 0-1-0-1 (Success)
        #20 x = 0;
        #10 x = 1;
        #10 x = 0;
        #10 x = 1;  // Reaches s3 here

        // Sequence 3: 1-0-1 (Success)
        #10 x = 1;
        #10 x = 0;
        #10 x = 1;  // Reaches s3 here

        #50 $finish;
    end

    // Monitor Output
    initial begin
        $display("time\tclk\tx\ty");
        $monitor("%0t\t%b\t%b\t%b", $time, clk, x, y);
    end

endmodule
