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

module RAM1( data_out ,con_addr ,  data_in , wr, clk
    );
input [7:0] data_in;
input  wr, clk;
output [7:0] con_addr;

reg[7:0] addr;

output  [7:0] data_out;

reg [7:0] mem [255:0] ;


initial
begin
 addr = 8'b0;
 end
 

assign data_out = mem[addr] ;


always @ (posedge clk ) 

begin

if(data_in)
begin
 if(wr ) 
 begin
 addr = addr +1;
 mem[addr] <= data_in ;
// $display(" mem :  %d   data_in : %d  " ,addr , data_in ); 
 end
 end
 

end
  assign con_addr = addr;


endmodule