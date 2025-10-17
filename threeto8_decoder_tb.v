`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:42:04 10/11/2025
// Design Name:   threeto8_decoder
// Module Name:   /home/vboxuser/3436-verilog_labs_f/Verilog_labs/lab2/tb/threeto8_decoder_tb.v
// Project Name:  mux_decoder
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: threeto8_decoder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module threeto8_decoder_tb;

	// Inputs
	reg [2:0] i;
	reg en;

	// Outputs
	wire [7:0] y;
   integer j,n;
	// Instantiate the Unit Under Test (UUT)
	threeto8_decoder uut (
		.i(i),
      .en(en),		
		.y(y)
	);
	task inti;
	 begin
	  i=0;
	  en=0;
	 end
	endtask
	task delay;
	 begin
	  #10;
	 end
	endtask
	task inp(input [2:0]j,input n);
	 begin
	  i=j;
	  en=n;
	 end
	endtask
	initial begin
	inti;
	for(j=0;j<8;j=j+1)
	 begin
	  for(n=0;n<2;n=n+1)
	 begin
	  inp(j,n);
	  delay;
	 end
	 end
	 
	end

	/*initial begin
		// Initialize Inputs
		i = 0;
      en=1'b0;
		// Wait 100 ns for global reset to finish
		#100;
        en=1'b1;
        i = 3'b000; #10;
        i = 3'b001; #10;
        i = 3'b010; #10;
        i = 3'b011; #10;
        i = 3'b100; #10;
        i = 3'b101; #10;
        i = 3'b110; #10;
        i = 3'b111; 
		  #10;
		en=1'b0;
      #10;		
		     
    end*/
    initial begin
        $monitor("Time=%0t | i=%b |en=%b| y=%b", $time, i,en, y);
    end
	 initial begin #1000 $finish;
end	 
endmodule

