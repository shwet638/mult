module booth_recod(input  [2:0] opr,
	input [1:0] extend_one,
	input clk,
	input signed [7:0] b,
	output reg   [13:0] pp);

reg [2:0] r_opr;
reg [1:0] r_ext;
reg signed   [7:0] r_b;
reg signed [7:0] r_pp;
// reg signed [13:0] e_pp;
reg d=0;
always @(posedge clk)
begin	
	r_opr<=opr;
	r_ext<=extend_one;
	r_b<=b;
	// pp<=e_pp;
	case(r_opr)
	3'b000:r_pp<=0;
	3'b001:r_pp<=r_b;
	3'b010:r_pp<=r_b;
	3'b011:r_pp<=(r_b<<1);
	3'b100:r_pp<=((~r_b+1)<<1);
	3'b101:r_pp<=(~r_b+1);
	3'b110:r_pp<=(~r_b+1);
	3'b111:r_pp<=0;
	default:d<=1;
	endcase

	case(r_ext)
	2'b00:pp<={{6{r_pp[7]}},r_pp};
	2'b01:pp<={{4{r_pp[7]}},r_pp,{2{1'b0}}};
	2'b10:pp<={{2{r_pp[7]}},r_pp,{4{1'b0}}};
	2'b11:pp<={r_pp,{6{1'b0}}};
	default:d<=0;
	endcase	
end
endmodule


