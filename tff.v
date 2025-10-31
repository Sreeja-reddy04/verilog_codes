`timescale 1ns / 1ps
module dff(clk,d,rst,q,qb);
input clk,d,rst;
output reg q;
output qb;
always@(posedge clk )
begin
if(rst)
q <= 1'b0;
else
q <= d;
end 
assign qb = ~q;
endmodule 
module tff(clk,t,rst,q,qb);
input clk,t,rst;
output q,qb;
wire d;
assign d = t^q;
dff d1(.d(d),.clk(clk),.rst(rst),.q(q),.qb(qb));
endmodule		 



