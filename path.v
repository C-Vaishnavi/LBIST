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
module path( out , num , clk , reset , wr, addr
    );
	 input clk;
	 input reset;
	 input wr;
	 
	 input [7:0] addr;
	 
	 reg [7:0] a , b, c ,red_out;
	 output [7:0] num;
	 output [7:0]out;
	 

lfsr_dd L1( clk , reset , a);
buft B1(b , c, a, clk);
distance1 D1 (clk , reset , b , c, num, red_out);
RAM1 R1( out , red_out , addr , wr, clk);




endmodule
