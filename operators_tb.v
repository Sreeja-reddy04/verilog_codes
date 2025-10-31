`timescale 1ns / 1ps

module operators_tb;

	// Inputs
	reg [3:0] a;
	reg [3:0] b;
   
	// Outputs
	wire [3:0]sum,diff,quot,rem,log_shift,arth_shift,reduct,bit_or,bit_neg,relational; 
   wire [8:0]mul,conc;	
	integer i,j;
	// Instantiate the Unit Under Test (UUT)
	operators uut (
		.a(a), 
		.b(b), 
		.sum(sum),.diff(diff),.mul(mul),.quot(quot),.rem(rem),
		.log_shift(log_shift),.arth_shift(arth_shift),.reduct(reduct),.bit_or(bit_or),.bit_neg(bit_neg),.conc(conc),.relational(relational)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		for(i=0;i<16;i=i+1)
		begin
		  a=i;
		  #10;
		 for(j=0;j<16;j=j+1)
		 begin
		 b=j;
		 #10;
		 end// Add stimulus here
      end
	end
	initial begin
        $monitor("Time=%0t | a=%b |b=%b| sum=%b | diff=%b | mul=%b | quot=%b|rem=%b log_shift=%b,arth_shift=%b,reduct=%b,bit_or=%b,bit_neg=%b,conc=%b relational=%b", $time, a,b,sum,diff,mul,quot,rem,log_shift,arth_shift,reduct,bit_or,bit_neg,conc,relational);
    end
	 initial begin #2000 $finish;
end	 
      
endmodule

