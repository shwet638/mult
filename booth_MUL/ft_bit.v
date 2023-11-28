//`include "booth_add.v"
//`include "booth_ha.v"
module ft_bit(input [13:0] a,
input [13:0] b,
output [13:0] c
);

wire w1,w2,w3,w4,w5,w6,w7,w8,w9,w10,w11,w12,w13,w14,w15;

booth_ha a1(.a(a[0]),.b(b[0]),.sum(c[0]),.cout(w1));

booth_add fa_1(.a(a[1]),.b(b[1]),.cin(w1),.sum(c[1]),.cout(w2));

booth_add fa_2(.a(a[2]),.b(b[2]),.cin(w2),.sum(c[2]),.cout(w3));

booth_add fa_3(.a(a[3]),.b(b[3]),.cin(w3),.sum(c[3]),.cout(w4));

booth_add fa_4(.a(a[4]),.b(b[4]),.cin(w4),.sum(c[4]),.cout(w5));

booth_add fa_5(.a(a[5]),.b(b[5]),.cin(w5),.sum(c[5]),.cout(w6));

booth_add fa_6(.a(a[6]),.b(b[6]),.cin(w6),.sum(c[6]),.cout(w7));
booth_add fa7(.a(a[7]),.b(b[7]),.cin(w7),.sum(c[7]),.cout(w8));
booth_add fa8(.a(a[8]),.b(b[8]),.cin(w8),.sum(c[8]),.cout(w9));

booth_add fa9(.a(a[9]),.b(b[9]),.cin(w9),.sum(c[9]),.cout(w10));
booth_add fa10(.a(a[10]),.b(b[10]),.cin(w10),.sum(c[10]),.cout(w11));

booth_add fa11(.a(a[11]),.b(b[11]),.cin(w11),.sum(c[11]),.cout(w12));
booth_add fa12(.a(a[12]),.b(b[12]),.cin(w12),.sum(c[12]),.cout(w13));
booth_add fa13(.a(a[13]),.b(b[13]),.cin(w13),.sum(c[13]),.cout());
endmodule
