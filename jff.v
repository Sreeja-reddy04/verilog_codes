`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:43:25 10/15/2025 
// Design Name: 
// Module Name:    jff 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
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


