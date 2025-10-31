`timescale 1ns / 1ps
module operators(a,b,sum,diff,mul,quot,rem,
log_shift,arth_shift,reduct,bit_or,bit_neg,conc,relational);
input [3:0]a,b;
output reg [3:0]sum,diff,quot,rem,log_shift,arth_shift,reduct,bit_or,bit_neg,relational;
output reg [8:0]conc,mul;

always@(*)
 begin
  sum=a+b;
  diff=a-b;
  mul=a*b;
  quot=a/b;
  rem=a%b;
  log_shift=a>>1;
  arth_shift=b<<<1;
  reduct=&b;
  bit_or=a|b;
  bit_neg=~a;
  conc={2{a}};
  relational=a>b;
  
 end
endmodule
