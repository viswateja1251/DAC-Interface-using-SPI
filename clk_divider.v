`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.08.2025 10:31:54
// Design Name: 
// Module Name: clk_divider
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


module clk_divider #(parameter DIV_VALUE = 47)(input clk_in,input reset,output reg divided_clk=0);  //div value =((given freq(96M)/2*Req freq(1M))-1
reg [5:0] count;


 always@(posedge clk_in)
 begin 
 if(reset==1'b1)
       count<=3'b0;
 else if(count==DIV_VALUE)
       count<=3'b0;
 else  count<=count+1;
 end
 
 always@(posedge clk_in)
 begin
 if(reset==1'b1)
  divided_clk<=1'b0; 
 else if(count==DIV_VALUE)
         divided_clk<=~divided_clk;
 else
         divided_clk<=divided_clk;
 end                                                                               
endmodule