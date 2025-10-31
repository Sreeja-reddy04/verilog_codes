`timescale 1ns / 1ps
module fourto1_tb;

	// Inputs
	reg [3:0] i;
	reg [1:0] s;

	// Outputs
	wire y;
   integer j,k;
	// Instantiate the Unit Under Test (UUT)
	foutto1 uut (
		.i(i), 
		.s(s), 
		.y(y)
	);
   task inti;
	begin
	  i=4'b0000;
	  s=2'b00;
	end
	endtask
	task in(input [3:0]j, input [1:0]k);
	 begin
	  i=j;
	  s=k;
	 end
	endtask
	/*task delay;
	 begin
	  #10;
	 end
	endtask*/
	initial begin
		// Initialize Inputs
      inti;
		// Wait 100 ns for global reset to finish
		#100;
 
		for(j=0;j<16;j=j+1)
		begin//#10;
		// Add stimulus here
		for(k=0;k<4;k=k+1)
		begin
		 in(j,k);
		 #10;
		end// Add stimulus here
		end
	end
		
	initial 
	  begin
     $monitor("i=%b,s=%b,y=%b",i,s,y);
	  end
	  
   initial 
     begin 
		#1000 $finish;	
     end 
		
endmodule

