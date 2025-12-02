module all_gates_tb();
logic a,b,y1,y2,y3,y4,y5,y6,y7;
module all_gates dut(a,b,y1,y2,y3,y4,y5,y6,y7);
initial 
begin
a=0;b=0;
#10 a=0;b=1;
#10 a=1;b=0;
#10 a=1;b=1;
end
endmodule
