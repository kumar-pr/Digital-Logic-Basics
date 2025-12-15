module encoder8_3_tb();
    logic [7:0] a;
    logic [2:0] y;

   
    encoder8_3 dut( .a(a), .y(y) );

    initial begin
        a = 8'd1;   #10;
        a = 8'd2;   #10;
        a = 8'd4;   #10;
        a = 8'd8;   #10;
        a = 8'd16;  #10;
        a = 8'd32;  #10;
        a = 8'd64;  #10;
        a = 8'd128; #10;
        $finish;
    end
endmodule
