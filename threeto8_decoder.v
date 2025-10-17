`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:09:33 10/11/2025 
// Design Name: 
// Module Name:    threeto8_decoder 
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
module threeto8_decoder(i,en,y);
input [2:0]i;
input en;
output reg [7:0]y;
always@(*)
begin 
if (en==0)
begin
y=8'b1111_1111;
end
 else 
  begin
case(i)
  3'b000: y=8'b0000_0001;
  3'b001: y=8'b0000_0010;
  3'b010: y=8'b0000_0100; 
  3'b011: y=8'b0000_1000;
  3'b100: y=8'b0001_0000;
  3'b101: y=8'b0010_0000;
  3'b110: y=8'b0100_0000;
  3'b111: y=8'b1000_0000;
 default y=8'b0000_0000;
endcase
   end
end
endmodule
