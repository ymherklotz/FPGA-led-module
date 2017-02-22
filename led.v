`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Yann Herklotz
// 
// Create Date:    23:10:42 02/19/2017 
// Design Name: 
// Module Name:    led 
// Project Name: 
// Target Devices: Papilio Pro
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
module led(CLK, LED1);

   input CLK;
   output reg LED1;
   
   reg [26:0] count;
   
   initial begin
      count = 26'd16000000;
      LED1 = 1'b0;
   end
   
   always @ (posedge CLK) 
     begin
	if(count == 1'b0) 
	  begin
	     LED1 <= ~LED1;
	     count <= 26'd16000000;
	  end
	else 
	  count <= count - 1'b1;
     end
   
endmodule
