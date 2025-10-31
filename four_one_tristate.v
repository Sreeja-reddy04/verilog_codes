`timescale 1ns / 1ps 
module four_one_tristate(s0,s1,i0,i1,i2,i3,y);
input i0,i1,i2,i3;
input s0,s1;
output y;
wire a0,a1,a2,a3;
wire b0,b1,b2,b3;
decoder DEC(.a(s0),.b(s1),.y0(a0),.y1(a1),.y2(a2),.y3(a3));
tristate T1(.in(i0),.en(a0),.y(b0));
tristate T2(.in(i1),.en(a1),.y(b1));
tristate T3(.in(i2),.en(a2),.y(b2));
tristate T4(.in(i3),.en(a3),.y(b3));
assign y=b0;
assign y=b1;
assign y=b2;
assign y=b3;


endmodule

module decoder(input a,b,output y0,y1,y2,y3);
assign y0=(~a&~b);
assign y1=(~a&b);
assign y2=(a&~b);
assign y3=(a&b);
endmodule

module tristate(input in,en,output y);
assign y=en?in:1'bz;
endmodule




