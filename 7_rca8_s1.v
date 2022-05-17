`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    06:30:47 05/17/2022 
// Design Name: 
// Module Name:    rca_s1 
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


module rca_s1(a,b,z);

	input [7:0] a,b;						
	output [7:0] z;									
	wire [7:0] c;	
	reg d;
    
	fulladder FA1 (a[0],b[0],1'b0,z[0],c[0]);		
	fulladder FA2 (a[1],b[1],c[0],z[1],c[1]);
	fulladder FA3 (a[2],b[2],c[1],z[2],c[2]);
	fulladder FA4 (a[3],b[3],c[2],z[3],c[3]);
	fulladder FA5 (a[4],b[4],c[3],z[4],c[4]);
	fulladder FA6 (a[5],b[5],c[4],z[5],c[5]);
	fulladder FA7 (a[6],b[6],c[5],z[6],c[6]);
	fulladder FA8 (a[7],b[7],c[6],z[7],c[7]);
	
initial
begin	 
 assign d = c[5];
force c[5] =0;		
end

assign c[5] = d;
	
endmodule