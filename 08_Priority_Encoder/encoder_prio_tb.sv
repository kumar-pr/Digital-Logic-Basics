module encoder_prio_tb();
    logic [7:0] a;
    logic [2:0] y;

    encoder_prio dut(
        .a(a), 
        .y(y)
    );

    initial begin
        a = 8'b00000001; #10;
        a = 8'b00000010; #10;
        a = 8'b00000100; #10;
        a = 8'b00001000; #10;
        a = 8'b00010000; #10;
        a = 8'b00100000; #10;
        a = 8'b01000000; #10;
        a = 8'b10000000; #10;
        
        // Test priority: Bit 1 (High) vs Bit 0 (High) -> Should output 1
        a = 8'b00000011; #10;
        
        $finish;
    end
endmodule
