module rom_tb;

   
    logic       clk;
    logic       en;
    logic [1:0] adr;
    logic [2:0] dout;

  
    rom uut (
        .clk(clk),
        .en(en),
        .adr(adr),
        .dout(dout)
    );

    
    always #5 clk = ~clk;

    initial begin
       
        clk = 0;
        en = 0;
        adr = 0;

        
        #20;
        
       
        en = 0;
        adr = 2'b00;
        #10;

       
        en = 1;
        adr = 2'b00;
        #10; 

       
        adr = 2'b01;
        #10;

      
        adr = 2'b10;
        #10; 

        
        adr = 2'b11;
        #10; 

     
        $finish;
    end

endmodule
