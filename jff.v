`timescale 1ns / 1ps
module jff(j,k,clk,rst,q,qb
    );
input j,k,clk,rst;
output reg q;
output qb;
parameter HOLD = 2'b00,
          RESET = 2'b01,
			 SET   = 2'b10,
			 TOGGLE = 2'b11;
always@(posedge clk)
begin
if(rst)
q <= 1'b0;
else
case({j,k})			 
HOLD : q <= q;
RESET : q <= 1'b0;
SET : q <= 1'b1;
TOGGLE : q <= ~q;
//default : q <=q;
endcase
end
assign qb = ~q;
endmodule 


