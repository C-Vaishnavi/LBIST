`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:50:18 04/15/2022 
// Design Name: 
// Module Name:    buf2 
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
module buf2( r1 , r2,  addr , inp ,clk 
    );

input [7:0] addr ;
input [7:0] inp;
input clk ;
output [7:0] r1 ,r2;


reg [7:0] temp1, in1 , in2;


initial begin
 assign temp1 = addr;
end

always @ (posedge clk)
begin
if(temp1 == addr)
  begin
  
   in1<= inp;
   in2 <= in1;
  
  temp1 = temp1 +8'b1 ;
  
//  if( in1 == in2)
//	 begin
//	  temp1 = temp1 + 8'b1;
//	 end

 
  end
  
end

assign r1 = in1;
assign r2 = in2;

endmodule
