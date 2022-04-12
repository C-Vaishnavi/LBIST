`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:21:33 04/11/2022 
// Design Name: 
// Module Name:    RAM1 
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

module RAM1( data_out , data_in , addr , wr, clk
    );
input [7:0] data_in;
input  wr, clk;
input [7:0] addr;

output [7:0] data_out;

reg [7:0] mem [255:0] ;

assign data_out = mem[addr] ;

always @ (posedge clk)
 if(wr) mem[addr] = data_in ;
 


endmodule