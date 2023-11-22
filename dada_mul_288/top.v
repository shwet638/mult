//`include "dada_mul.v"
module top  (input  [7:0]a,
input  [7:0] b,
input clk,
output reg   [15:0]c);

wire [15:0] temp_c;
reg    [7:0] temp_a,temp_b;
reg is_neg;
always@(posedge clk)
begin
if(a[7]^b[7])
        is_neg<=1;
else
is_neg<=0;
end

dada_mul m1(.a(temp_a),.b(temp_b),.y(temp_c));
//always @(posedge clk)
//begin
        // temp_a<=a;
        // temp_b<=b;
        // c<=temp_c;

//     if(a[7] & b[7])
//  begin   
//         temp_a<=(~a+1);
//        temp_b<=(~b+1);
// //        c<=temp_c;
//  end
//  else if (b[7])
// begin 
//        temp_a<=a;
//        temp_b<=(~b+1);
// //        c<=temp_c;
// //        c<=(~temp_c+1);
// end
// else if(a[7])
// begin 
//         temp_a<=(~a+1);
//         temp_b<=b;
//         // c<=(~temp_c+1);
//         //c<=temp_c;
// end

// else 
// begin 
//         temp_a<=a;
//         temp_b<=b;
//         // c<=temp_c;
// end
// if (is_neg)
// c<=(~temp_c+1);

// else
// c<=temp_c;
// end

always @(posedge clk)
begin 
        case(a[7]&b[7])
        1'b1:
        begin 
        temp_a<=(~a+1);
        temp_b<=(~b+1);
        end
        1'b0:   case(a[7])
                1'b1: begin
                        temp_a<=(~a+1);
                        temp_b<=b;
                end
                1'b0:case(b[7])
                        1'b1:begin
                                temp_a<=a;
                                temp_b<=(~b+1);
                                end
                        1'b0:
                        begin   
                        temp_a<=a;
                        temp_b<=b;
                        end
                        default:c<=0;
                endcase
                default:c<=0;
                endcase
        endcase

        case(is_neg)
        1'b1:c<=(~temp_c+1);
        1'b0:c<=temp_c;
        default:c<=0;
        endcase
end

endmodule
