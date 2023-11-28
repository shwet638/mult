module booth_ha(input  a,
input  b ,
//input cin,
output  cout,
output sum);

assign sum=a^b;
assign cout=a&b;

endmodule