`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:10:28 04/06/2022
// Design Name:   distance1
// Module Name:   /home/ise/prog/minor_project/distance1_tb.v
// Project Name:  minor_project
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: distance1
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module distance1_tb;

	// Inputs
	reg CLK;
	reg RST;
	reg [7:0] SIG_IN;
	reg [7:0] SIG_OUT;

	// Outputs
	wire [7:0] NUMBER;
	wire [7:0] RED_SIG;

	// Instantiate the Unit Under Test (UUT)
	distance1 uut (
		.CLK(CLK), 
		.RST(RST), 
		.SIG_IN(SIG_IN), 
		.SIG_OUT(SIG_OUT), 
		.NUMBER(NUMBER),
		.RED_SIG(RED_SIG)
	);

	initial begin
		// Initialize Inputs
		CLK = 0;
		RST = 0;
		SIG_IN = 0;
		SIG_OUT = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
      RST = 1;
		SIG_IN = 54;
		SIG_OUT = 22;
		#100;
        
		  RST =0;
		  SIG_IN = 235;
		SIG_OUT = 43;
		#100;
		
		 RST =0;
		  SIG_IN = 35;
		SIG_OUT = 53;
		#100;
		
		
		 RST =0;
		  SIG_IN = 64;
		SIG_OUT = 84;
		#100;
		
		RST =0;
		 SIG_IN = 20;
		SIG_OUT = 63;
		#100;
		
		
		
	end
	
	always 
	begin
	 #10 ;  CLK = ~CLK;
	end
      	
	
endmodule

