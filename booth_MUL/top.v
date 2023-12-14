//`include "booth_recod.v"
// `include "ft_bit.v"
// `include "ff_bit.v"
// `include "new.v"
module top(input signed [7:0] a,
	input signed [7:0] b,
	input clk,
	   output  reg signed [15:0] c);

wire signed [8:0] temp_a;
wire signed [7:0] temp_b;
	wire signed [63:0] pp;
	reg signed [15:0] pp_1;
	reg signed [31:16] pp_2;
	reg signed [47:32] pp_3;
	reg signed [63:48] pp_4;
assign temp_a=a>=b?{a,1'b0}:{b,1'b0};
assign temp_b=a>=b?b:a;
// always @(posedge clk or negedge clk)begin
// 	// always @(posedge clk )begin
	
// 	temp_a<={b,1'b0};
	
// end
// wire signed [14:0] w1,w2;
// assign c=w1+w2
always@(posedge clk)
begin
	pp_1=pp[15:0];
	pp_2=pp[31:16];
	pp_3=pp[47:32];
	pp_4=pp[63:48];
	c=pp_1+pp_2+pp_3+pp_4;
	
end
	
genvar i;
generate 
	for (i=0;i<4;i=i+1)
	begin 
	
		new b1(.clk(clk),.opr(temp_a[i*2 +:3]),.extend_one(i),.b(temp_b),.pp(pp[i*16+:16]));

end
endgenerate

//  ft_bit f1(.a(pp_1),.b(pp_2),.c(w1));
//  ft_bit f2(.a(pp_3),.b(pp_4),.c(w2));
	
endmodule

	



