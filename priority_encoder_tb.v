`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   09:07:09 10/10/2025
// Design Name:   priority_encoder
// Module Name:   /home/vboxuser/3436-verilog_labs_f/Verilog_labs/lab1/FULL_ADDER/priority_encoder_tb.v
// Project Name:  FULL_ADDER
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: priority_encoder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module priority_encoder_tb;

	// Inputs
	reg d0;
	reg d1;
	reg d2;
	reg d3;
	reg d4;
	reg d5;
	reg d6;
	reg d7;

	// Outputs
	wire y0;
	wire y1;
	wire y2;
	wire IDLE;
	//wire valid;
   integer i;
	// Instantiate the Unit Under Test (UUT)
	priority_encoder uut (
		.y0(y0), 
		.y1(y1), 
		.y2(y2), 
      .IDLE(IDLE),		
		.d0(d0), 
		.d1(d1), 
		.d2(d2), 
		.d3(d3), 
		.d4(d4), 
		.d5(d5), 
		.d6(d6), 
		.d7(d7)
	);

	initial begin
		// Initialize Inputs
		d0 = 0;
		d1 = 0;
		d2 = 0;
		d3 = 0;
		d4 = 0;
		d5 = 0;
		d6 = 0;
		d7 = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		  for(i=0;i<256;i=i+1)
		  begin 
		  {d7,d6,d5,d4,d3,d2,d1,d0}=i;
		  #10;// Add stimulus here
        end
		  
		  
	end
	initial begin 
	#4000 $finish;
	end
	initial begin 
	$monitor("|d7=%b,d6=%b,d5=%b,d4=%b,d3=%b,d2=%b,d1=%b,d0=%b,y0=%b y1=%b,y2=%b,IDLE=%b",d7,d6,d5,d4,d3,d2,d1,d0,y0,y1,y2,IDLE);
	end
	
      
endmodule
