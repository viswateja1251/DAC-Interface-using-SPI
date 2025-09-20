`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.09.2025 18:42:26
// Design Name: 
// Module Name: counter16_bit
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module counter16_bit(input clk,
					 input reset,
					 output reg [15:0]Vout=0 );
always@(posedge clk, posedge reset)
if(reset)  Vout=0;
else Vout = Vout +1;


endmodule
