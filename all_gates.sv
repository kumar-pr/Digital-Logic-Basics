module all_gates(
input a,input b, output y1,output y2,output y3,output y4,output y5,output y6,output y7);
assign y1=~a;
assign y2=a&b;
assign y3=a|b;
assign y4=~(a&b);
assign y5=~(a|b);
assign y6=a^b;
assign y7=~(a^b);

endmodule
