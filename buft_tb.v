`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   03:29:22 04/12/2022
// Design Name:   buft
// Module Name:   /home/ise/prog/minor_project/buft_tb.v
// Project Name:  minor_project
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: buft
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module buft_tb;

	// Inputs
	reg [7:0] inp;
	reg clk;
	
	integer i;
	

	// Outputs
	wire [7:0] data1;
	wire [7:0] data2;

//	// Instantiate the Unit Under Test (UUT)
//	buft uut (
//		.data1(data1), 
//		.data2(data2), 
//		.inp(inp), 
//		.clk(clk)
//	);


buft  DUT  (data1 , data2 , inp , clk);
	initial begin
		
		

	for(i=0; i<40; i=i+1)
	begin
	#10 clk = 0;
	inp = i+10;
	#10 clk =1;
	
	end
        

	end
	
	
endmodule

