`timescale 1ns / 1ps


module distance1(
  input CLK,
  input RST,
  input [7:0] SIG_IN,
  input [7:0] SIG_OUT,
  output [7:0] NUMBER,
  output [7:0] RED_SIG
);
    
  integer i ;
  reg[7:0] sign_in;
  reg[7:0] sign_out;

  always @(posedge CLK) begin
    sign_in[7:0] <= SIG_IN[7:0];
    sign_out[7:0] <= SIG_OUT[7:0];
  end

  reg [15:0] bit_err; 
  reg [7:0] signal;
  
  
   
  always @(CLK)
  begin
    
    bit_err = 8'b0;
    for (i=0;i<8;i=i+1) begin
      if (sign_in[i] == sign_out[i]) begin
        bit_err = bit_err + 8'b0;
      end else begin
        bit_err = bit_err + 8'b1;
      end
    end
	 
	 if((bit_err == 1) ||(bit_err ==2) ||(bit_err ==0) )
	  begin
	   signal = sign_out;
		
		end
		
		else
		signal = 8'b0;
	 
  end
  
     
   assign NUMBER = bit_err; 
	assign RED_SIG = signal;
	
	
	
endmodule 