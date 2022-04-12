`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    03:19:40 04/12/2022 
// Design Name: 
// Module Name:    buf 
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
module buft( data1 , data2 , inp , clk
    );
input[7:0] inp;
input clk;
output reg[7:0] data1 , data2 ;

always @(posedge clk)
  #10  data2 <= inp;
	
always @(negedge clk)
	data1 <= data2;
	

endmodule
