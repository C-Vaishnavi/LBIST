`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:22:40 04/11/2022 
// Design Name: 
// Module Name:    RAM1_tb 
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

module RAM1_tb;

reg[7:0]addr;
wire[7:0] data_out;
reg[7:0] data_in;
reg wr , clk;

integer k;

RAM1 RA1(data_out , data_in , addr , wr, clk);


initial 
begin

for(k=0 ; k<40; k=k+1)
begin
#10 wr =1; clk = 1;
addr= k+10 ;
data_in = k+1;  
#10 wr =0; clk = 0;
end


end


endmodule