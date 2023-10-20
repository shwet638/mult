`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.10.2023 10:27:28
// Design Name: 
// Module Name: mux4
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module mux4(input [1:0] sel,input d0,input d1,input d2,input d3,output reg c );


always @(*)
begin 
    case (sel)
        2'b00: c<=d0;
        2'b01: c<=d1;
        2'b10: c<=d2;
        2'b11: c<=d3;
endcase
end

endmodule
