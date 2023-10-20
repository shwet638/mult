`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.10.2023 10:00:40
// Design Name: 
// Module Name: multiply_csa
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


module multiply_csa(input x,
input y,
input si,
input ci,
output so,
output co);

wire p;
assign p=x&y;
assign so=p^si^ci;
assign co=si&p | ci&(si^p);
endmodule
