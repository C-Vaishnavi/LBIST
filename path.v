`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    05:33:28 04/09/2022 
// Design Name: 
// Module Name:    path 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module path;
	 reg clk;
	 reg reset;
	 reg wr;
	 
	reg [7:0] addr;
	 wire [7:0] num;
	  wire [7:0]out ,a  , b, c , red_out;
	 
	 integer k;

lfsr_dd L1( clk , reset , a);
buft B1(b , c, a, clk);
distance1 D1 (clk , reset , b , c, num, red_out);
RAM1 R1( out , red_out , addr , wr, clk);

initial begin
		
		clk = 0;
    #20 reset = 1;
	 
	 #20 reset =0;
	  
		
		for(k =0;k<40;k =k+1)
		begin
		  
		#10  addr = k+10 ; wr=1;
		#10 wr =0;
   end
		

	end
	
	always  #10 clk = ~clk;


endmodule
