`timescale 1ns / 1ps
module priority_encoder(y0,y1,y2,IDLE,d0,d1,d2,d3,d4,d5,d6,d7);
input d0,d1,d2,d3,d4,d5,d6,d7;
output y0,y1,y2,IDLE;
wire h0,h1,h2,h3,h4,h5,h6,h7;

priority_ckt c1(.IDLE(IDLE),.h0(h0),.h1(h1),.h2(h2),.h3(h3),.h4(h4),.h5(h5),.h6(h6),.h7(h7),.d0(d0),.d1(d1),.d2(d2),.d3(d3),.d4(d4),.d5(d5),.d6(d6),.d7(d7));
binary_decoder b1(.y0(y0),.y1(y1),.y2(y2),.d0(h0),.d1(h1),.d2(h2),.d3(h3),.d4(h4),.d5(h5),.d6(h6),.d7(h7));
endmodule
module priority_ckt(IDLE,h0,h1,h2,h3,h4,h5,h6,h7,d0,d1,d2,d3,d4,d5,d6,d7);
input d0,d1,d2,d3,d4,d5,d6,d7;
//output y0,y1,y2,y3,y4,y5,y6,y7;
output IDLE,h0,h1,h2,h3,h4,h5,h6,h7;
assign h7 = d7;
assign h6 = ~d7 & d6;
assign h5 = ~d7 & ~d6 & d5;
assign h4 = ~d7 & ~d6 & ~d5 & d4;
assign h3 = ~d7 & ~d6 & ~d5 & ~d4 & d3;
assign h2 = ~d7 & ~d6 & ~d5 & ~d4 & ~d3 & d2;
assign h1 = ~d7 & ~d6 & ~d5 & ~d4 & ~d3 & ~d2 & d1;
assign h0 = ~d7 & ~d6 & ~d5 & ~d4 & ~d3 & ~d2 & ~d1 & d0;
assign IDLE =  ~d7 & ~d6 & ~d5 & ~d4 & ~d3 & ~d2 & ~d1 & ~d0;

endmodule
module binary_decoder (y0,y1,y2,d0,d1,d2,d3,d4,d5,d6,d7);
input d0,d1,d2,d3,d4,d5,d6,d7;
wire h0,h1,h2,h3,h4,h5,h6,h7;

output y0,y1,y2;
assign y0=(d7|d5|d3|d1);
assign y1=(d7|d6|d3|d2);
assign y2=(d7|d6|d5|d4);
//assign valid=(d7|d6|d5|d4|d3|d2|d1|d0);

endmodule 

