`timescale 1ns / 1ps

module four_one_tristate_tb;

	// Inputs
	reg s0;
	reg s1;
	reg i0;
	reg i1;
	reg i2;
	reg i3;

	// Outputs
	wire y;
   integer i,j;
	// Instantiate the Unit Under Test (UUT)
	four_one_tristate uut (
		.s0(s0), 
		.s1(s1), 
		.i0(i0), 
		.i1(i1), 
		.i2(i2), 
		.i3(i3), 
		.y(y)
	);

	initial begin
		// Initialize Inputs
		s0 = 0;
		s1 = 0;
		i0 = 0;
		i1 = 0;
		i2 = 0;
		i3 = 0;

		// Wait 100 ns for global reset to finish
		#100;
		
		for(i=0;i<16;i=i+1)
		begin
		{i0,i1,i2,i3}=i;
		for(j=0;j<4;j=j+1)
		begin
		{s0,s1}=j;
       #10;
end
end		 
		// Add stimulus here

	end
      initial begin
     $monitor(" s0=%b, s1=%b,i0=%b,i1=%b,i2=%b,i3=%b, y=%b", s0,s1,i0,i1,i2,i3,y);// Add stimulus here

	 end
      initial begin
	#1000 $finish;
	end
endmodule

