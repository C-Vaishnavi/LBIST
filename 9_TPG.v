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

module TPG;
	 reg clk , clk2;
	 reg reset;
	 reg wr;
	 
	wire [7:0] addr;
	wire [7:0] num;
   wire [7:0] a  , b , c , red_out;
   wire [7:0] r1 , r2 , sum  ,sum2 , out ;
	wire[7:0]  out2 , out3;
	 
	 integer k;
	 
	 
	 
lfsr_dd L1( clk , reset , a);
buft B1(b , c, a, clk);
distance1 D1 (clk , reset , b , c, num, red_out);
RAM1 R1( out,  addr, red_out , wr, clk);
buf2 B2(r1 , r2 , addr ,out , clk);
rca8 RCA1(r1 , r2, sum);
rca_s1 RCA2(r1 , r2, sum2);
MISR M1(sum, out2 , clk2 ,reset);
MISR M2(sum2, out3 , clk2 ,reset);


initial begin
		
		clk = 0;
		
    #20 reset = 1;
	 
	 #20 reset =0;
	  
		
for(k =0;k<256;k =k+1)
	   begin  
		#10  wr=1;
		#10  wr =0;
   end


	end
	
	always  #10 clk = ~clk;
	//always  #10 clk2 = ~clk2;

endmodule