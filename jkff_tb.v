`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:14:26 10/15/2025
// Design Name:   jff
// Module Name:   /home/vboxuser/Documents/3436-verilog_labs_f/Verilog_labs/lab4/tb/jkff_tb.v
// Project Name:  jkff
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: jff
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module jkff_tb;

	// Inputs
	reg j;
	reg k;
	reg clk;
	reg rst;

	// Outputs
	wire q;
	wire qb;
	integer a,b;

	// Instantiate the Unit Under Test (UUT)
	jff uut (
		.j(j), 
		.k(k), 
		.clk(clk), 
		.rst(rst), 
		.q(q), 
		.qb(qb)
	);
	
	always
	begin
	#5 clk = ('b0);
	#5 clk = ~clk;
	end
	
	task r();
	begin
	@(negedge clk);
	rst = 1'b1;
	@(negedge clk);
	rst = 1'b0;
	end
	endtask
	
	task in(input a,b);
	begin
	j=a;
	k=b;
	end
	endtask
	
	initial
	begin
	r;
	in(1'b1,1'b0);
	in(1'b0,1'b1);
	in(1'b0,1'b0);
	in(1'b1,1'b1);
	
	
	//initial begin
		// Initialize Inputs
		/*j = 0;
		k = 0;
		clk = 0;
		rst = 0;*/

		// Wait 100 ns for global reset to finish
		//#100;
        
		// Add stimulus here

	end
      
endmodule

