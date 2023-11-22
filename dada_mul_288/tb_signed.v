`timescale 1ns / 1ps
`include "top.v"
module tb_signed;
reg clk=0;
 reg   [7:0] a;
 reg   [7:0] b;
wire  [15:0] c;

top m1(.a(a),.b(b),.c(c),.clk(clk));
always
begin
    #5 clk<=~clk;
end

integer i;
initial 
begin
    $dumpfile("result.vcd");
    $dumpvars(0,tb_signed);

    
    a<=8'h7F;
    b<=8'sd254;
     
    for(i=1;i<256;i=i+1)

        begin

            #10a<=a+i;
            b<=b+i;
        end
end
endmodule