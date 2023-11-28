module new(input  [2:0] opr,
	input [1:0] extend_one,
	input clk,
	input signed [7:0] b,
	output reg   [14:0] pp);

wire is_neg;
reg signed [8:0]r_pp;
reg [1:0] r_ext;
wire is_shifted;
reg d=0;
wire is_mul;

reg r_is_mul;
reg r_is_shifted;
reg r_is_neg;   

assign is_neg=opr[2];
assign is_shifted=(opr[2]&(~opr[1])&(~opr[0]))|((~opr[2])&opr[1]&opr[0]);
assign is_mul=((~opr[2]&opr[1])|(~opr[1]&opr[0]))|((~opr[0])&opr[2]);
// assign is_mul=opr[1]^opr[0];

always@(posedge clk)
begin 
    r_ext=extend_one;
    r_is_mul=is_mul;
    r_is_neg=is_neg;
    r_is_shifted=is_shifted;
        case(r_is_mul)
        1'b1:begin
        r_pp=b;

        
            case(r_is_neg)
                1'b0:begin
                    r_pp=r_pp;
                case(r_is_shifted)
                    1'b0:r_pp=r_pp;
                    1'b1:r_pp=r_pp<<1;
                    default:d=1;
                endcase
                end
                1'b1:begin
                    
                r_pp=(~r_pp+1);
                
                case(r_is_shifted)
                    1'b0:r_pp=r_pp;
                    1'b1:r_pp=r_pp<<1;
                    default:d=1;
                endcase
                end

                default:d=1;
            endcase
        end
        1'b0:r_pp=0;
        default:d=1;
        endcase
    case(r_ext) 
   
	2'b00:pp<={{6{r_pp[8]}},r_pp};
	2'b01:pp<={{4{r_pp[8]}},r_pp,{2{1'b0}}};
	2'b10:pp<={{2{r_pp[8]}},r_pp,{4{1'b0}}};
	2'b11:pp<={r_pp,{6{1'b0}}};
    default:d<=0;
	endcase	
        // case(is_neg)
        // 1'b0:r_pp<=b;
        // 1'b1:r_pp<=(~b+1);
        // default:d<=1;
        // endcase

        
        
end

endmodule


