`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   03:58:19 04/12/2022
// Design Name:   path
// Module Name:   /home/ise/prog/minor_project/path_tb.v
// Project Name:  minor_project
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: path
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module path_tb;

	// Inputs
	reg clk;
	reg reset;
	reg wr;
	reg [7:0] addr;
	
	integer k;

	// Outputs
	wire [7:0] out;
	wire [7:0] num;



	path DUT(out , num, clk , reset , wr , addr);

	initial begin
		
		clk = 0;
		reset = 0;
		
		for(k =0;k<40;k =k+1)
		begin
		reset =1;
		#10 addr = k+10 ; wr=1;
		#10 wr =0;
   end
		

	end
	
	always  #10 clk = ~clk;
      
endmodule

