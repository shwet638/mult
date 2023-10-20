`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.10.2023 11:01:39
// Design Name: 
// Module Name: fifo
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


module fifo (input clk,
input rd_en,
input wr_en,
input [7:0] wr_data,
//output [2:0] elements,
//output [2:0] ptr_value,
//output [2:0] wr_ptr_value,
//output [3:0] ele,
output  full,
output  empty,
output reg [7:0] rd_data);

reg r_empty=1'b1;
reg r_full=1'b0;
reg [8:0] rd_ptr=0;
reg [8:0] wr_ptr=0;
reg [8:0] elements=0;
//(* syn_romstyle = "block_rom" *) 
reg [7:0] mem[511:0];
//reg [7:0] rd_data;
always @(elements)
begin
    r_empty <= (elements==0 )?1:0;
    r_full <= (elements==512)?1:0;

end     
always @(posedge clk)
begin
 if (!r_empty && rd_en)
    begin
    rd_ptr<=rd_ptr+1;
    end
 else
 begin 
 rd_ptr<=rd_ptr;
 end
 
 if (!r_full && wr_en)
    begin
    wr_ptr<=wr_ptr+1;
    end
  else
  begin 
  wr_ptr<=wr_ptr;
  end
end

always @(posedge clk)
begin 
    if (!r_empty && rd_en)
    begin 
        elements<=elements-1;
//        rd_ptr<=rd_ptr+1;
    end
    else if (!r_full && wr_en)
    begin 
        elements<=elements+1;
//        wr_ptr<=wr_ptr+1;
    end
    else
    begin
    elements<=elements;
    end
end


always @(posedge clk )
begin
    if(!r_full && wr_en)
    begin 
        mem[wr_ptr]<=wr_data;
    end
    else if (!r_empty && rd_en)
    begin
        rd_data<=mem[rd_ptr];  
    end
   
end



//assign rd_data=temp_data;
assign full=r_full;
assign empty=r_empty;


endmodule
