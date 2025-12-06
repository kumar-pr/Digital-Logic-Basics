module d_ff_tb();

    
    logic d, en, reset, clk, q;

   
    d_ff dut (
        .d(d), 
        .en(en), 
        .reset(reset), 
        .clk(clk), 
        .q(q)
    );

    
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    
    initial begin
        d = 0; en = 0; reset = 1;
        #10;
      
        reset = 0;
        #10;

        en = 1; d = 1;
        #10;

        d = 0;
        #10;

        en = 0; d = 1;
        #10;

        reset = 1;
        #10;

        reset = 0;
        #10;
        
        $finish;
    end

endmodule
