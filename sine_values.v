`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.08.2025 18:10:02
// Design Name: 
// Module Name: sine_values
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


module sine_values(input clk,input reset,output reg [31:0]sinout);
reg [9:0] i =0;
wire [31:0]dataout;

blk_mem_gen_0 inst0 (
  .clka(clk),    // input wire clka
  .addra(i),  // input wire [9 : 0] addra
  .douta(dataout)  // output wire [31 : 0] douta
);


always@(posedge clk)
if(reset == 1'b1)
    begin 
    sinout = 32'b0;
    end
else
    begin
        if(i == 999)
            begin
            sinout = dataout;
            i=0;
            end
        else
            begin    
            sinout = dataout;
            i = i+1;
            end
    end
endmodule
