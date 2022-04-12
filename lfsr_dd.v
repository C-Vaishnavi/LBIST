`timescale 1ns / 1ps


module dff1(clk,reset,d,q
    );
	
	  input clk;   
	  input reset;  
	  input d;  
	  output q;
	  reg q;   
	  always @(posedge clk)
	  begin    
	  if(reset)   
	  q=1;  
	  else    
	  q=d;   
	  end  

endmodule


 module xor1(y,a,b);
 output y; 
 input a,b; 
 assign y=a^b;
 endmodule 

 
 module lfsr_dd(clk,reset,q); 
 input clk,reset;
 output [7:0]q;
 wire [7:0] q; 
 wire a,b,c; 
 
 xor1 x1(a,q[5],q[7]);
xor1 x2(b,q[4],a);
xor1 x3(c,q[3],b);
dff1 d1(clk,reset,c,q[0]);
dff1 d2(clk,reset,q[0],q[1]);
dff1 d3(clk,reset,q[1],q[2]);
dff1 d4(clk,reset,q[2],q[3]);
dff1 d5(clk,reset,q[3],q[4]);
dff1 d6(clk,reset,q[4],q[5]);
dff1 d7(clk,reset,q[5],q[6]);
dff1 d8(clk,reset,q[6],q[7]);

endmodule