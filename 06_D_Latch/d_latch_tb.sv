module d_latch_tb();
    logic d, en, reset, q;

   
    d_latch dut (
        .d(d), 
        .en(en), 
        .reset(reset), 
        .q(q)
    );

    initial begin
        d = 0; en = 0; reset = 0;
        #10 d = 0; en = 0; reset = 1;  
        #10 d = 0; en = 1; reset = 0; 
        #10 d = 0; en = 1; reset = 1;  
        #10 d = 1; en = 0; reset = 0;  
        #10 d = 1; en = 0; reset = 1; 
        #10 d = 1; en = 1; reset = 0;  
        
        #10 d = 0; en = 0; reset = 0;  

        #10 $finish;
    end
endmodule
