`timescale 1ns / 1ps
module ripple_carry(a0,a1,a2,a3,b0,b1,b2,b3,c,sum0,sum1,sum2,sum3,carry);
input a0,a1,a2,a3;
input b0,b1,b2,b3;
input c;
output sum0,sum1,sum2,sum3;
output carry;
wire y0,y1,y2;
fulladder FA1(.a(a0),.b(b0),.c(c),.sum(sum0),.carry(y0));
fulladder FA2(.a(a1),.b(b1),.c(y0),.sum(sum1),.carry(y1));
fulladder FA3(.a(a2),.b(b2),.c(y1),.sum(sum2),.carry(y2));
fulladder FA4(.a(a3),.b(b3),.c(y2),.sum(sum3),.carry(carry));

endmodule
module fulladder(a,b,c,sum,carry);
input a,b,c;
output sum,carry;
assign sum=(a^b^c);
assign carry=(c&(a^b)|a&b);
endmodule