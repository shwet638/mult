`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.10.2023 10:03:58
// Design Name: 
// Module Name: mul_array
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


module mul_array ( input wire [7:0] a,
				 input wire [7:0] b,
				  output wire [15:0] p );
							
   wire [9:0] s [8:0];
   wire [9:0] c [8:0];
	 
   generate
      genvar ii, jj;
	   for ( ii = 0; ii <= 8; ii = ii + 1) begin: gen_ii
         for ( jj = 0; jj < 8; jj = jj + 1) begin: gen_jj

            multiply_csa ma(
				       .x  ( ii < 8 ? a[jj] : (jj > 0) ? c[8][jj-1] : 1'b0 ),
                   .y  ( ii < 8 ? b[ii] : 1'b1 ),
                   .si ( ii > 0 && jj < 7 ? s[ii-1][jj+1] : 1'b0 ),
                   .ci ( ii > 0 ? c[ii-1][jj] : 1'b0 ),
                   .so ( s[ii][jj] ),
                   .co ( c[ii][jj] ) );

				if ( ii == 8 ) assign p[8+jj] = s[8][jj];
         end
            if(ii!=8)
			assign p[ii] = s[ii][0];
       end
		 // ignore the last carry, instead of doing assign p[N*2]  = c[N][N-1];
   endgenerate

endmodule
