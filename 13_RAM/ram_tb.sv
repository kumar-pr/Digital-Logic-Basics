module ram_tb;

   
    localparam N = 6;
    localparam M = 32;

    
    logic           clk;
    logic           we;
    logic [N-1:0]   adr;
    logic [M-1:0]   din;
    logic [M-1:0]   dout;

    
    ram #(.N(N), .M(M)) uut (
        .clk(clk),
        .we(we),
        .adr(adr),
        .din(din),
        .dout(dout)
    );

    
    always #5 clk = ~clk;

    initial begin
        
        clk = 0;
        we = 0;
        adr = 0;
        din = 0;

        $monitor("Time=%0t | WE=%b | Adr=%d | Din=%h | Dout=%h", $time, we, adr, din, dout);

        #20;

       
        we = 1;
        adr = 6'd5;
        din = 32'hAAAA_BBBB;
        #10; 

      
        adr = 6'd10;
        din = 32'h1234_5678;
        #10;

       
        adr = 6'd63;
        din = 32'hDEAD_BEEF;
        #10;

      
        we = 0; 

       
        adr = 6'd5;
        #10; 

        
        adr = 6'd10;
        #10; 

       
        adr = 6'd63;
        #10; 

        
        adr = 6'd0;
        #10;

        $finish;
    end

endmodule
