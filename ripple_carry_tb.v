`timescale 1ns / 1ps
module ripple_carry_tb;

	// Inputs
	reg a0;
	reg a1;
	reg a2;
	reg a3;
	reg b0;
	reg b1;
	reg b2;
	reg b3;
	reg c;

	// Outputs
	wire sum0;
	wire sum1;
	wire sum2;
	wire sum3;
	wire carry;
   integer i,j;
	// Instantiate the Unit Under Test (UUT)
	ripple_carry uut (
		.a0(a0), 
		.a1(a1), 
		.a2(a2), 
		.a3(a3), 
		.b0(b0), 
		.b1(b1), 
		.b2(b2), 
		.b3(b3), 
		.c(c), 
		.sum0(sum0), 
		.sum1(sum1), 
		.sum2(sum2), 
		.sum3(sum3), 
		.carry(carry)
	);

	initial begin
		// Initialize Inputs
		a0 = 0;
		a1 = 0;
		a2 = 0;
		a3 = 0;
		b0 = 0;
		b1 = 0;
		b2 = 0;
		b3 = 0;
		c = 0;

		// Wait 100 ns for global reset to finish
		#100;
     for (i=0;i<16;i=i+1)
	    begin
	       {a0,a1,a2,a3}=i;
	       #10;
	    end 
     for (j=0;j<16;j=j+1)
	    begin
	       {b0,b1,b2,b3}=j;
	       #10;
	    end		 
		// Add stimulus here

	end
      initial $monitor(" Input a0 = %b,a1 = %b,a2 = %b,a3 =%b,b0 =%b,b1 =%b,b2 =%b,b3 =%b,c =%b, output sum0 = %b,sum1 = %b,sum2 = %b,sum3 =%b,carry=%b",a0,a1,a2,a3,b0,b1,b2,b3,c,sum0,sum1,sum2,sum3,carry);
       
		
	initial begin #300 $finish;
 end
endmodule

