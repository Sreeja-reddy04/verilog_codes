`timescale 1ns / 1ps
module tff_tb;

	// Inputs
	reg clock;
	reg reset;
	reg t;

	// Outputs
	wire q;
	wire qb;

	// Instantiate the Unit Under Test (UUT)
	tff uut (
		.clock(clock), 
		.reset(reset), 
		.t(t), 
		.q(q), 
		.qb(qb)
	);
	always
	begin
	 clock=1'b0;
	 #10;
	 clock=1'b1;
	 #10;
	 end
	 
	 task re_set;
	 begin
	 @(negedge clock);
	  reset=1'b1;
	  #5;
	 @(negedge clock);
	  reset=1'b0;
	  end
	  endtask
	  task in_put(input in);
	  begin
	  @(negedge clock);
	   t=in;
		end
		endtask
		initial begin
		// Initialize Inputs
		clock = 0;
		reset = 0;
		t = 0;

		// Wait 100 ns for global reset to finish
		#100;
      
		   re_set;
			in_put(0);
			in_put(1);
			in_put(0);
			in_put(0);
			re_set;
			in_put(0);
			in_put(0);
			in_put(1);
			#10;
			// Add stimulus here

	end
    initial begin
      #1000$finish;
		end
		initial begin
   $monitor("clk=%b,reset=%b,t=%b,q=%b,qb=%b",clock,reset,t,q,qb);
	//Step3 : Use $monitor to display the various inputs and outputs
      end  
endmodule

