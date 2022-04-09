`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:07:44 04/06/2022
// Design Name:   lfsr_dd
// Module Name:   /home/ise/prog/minor_project/lfsr_dd_tb.v
// Project Name:  minor_project
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: lfsr_dd
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module lfsr_dd_tb;

	// Inputs
	reg clk;
	reg reset;

	// Outputs
	wire [7:0] q;

	// Instantiate the Unit Under Test (UUT)
	lfsr_dd uut (
		.clk(clk), 
		.reset(reset), 
		.q(q)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		
		
		reset = 1;
      #20
		
		reset =0;
		#20;
		
		reset =1;
		
		#20;
		
		reset =0;
		#20;

	end
	
	always 
	begin
	#10;
	clk = ~clk;
   end
	
      
endmodule

