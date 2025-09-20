`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.08.2025 23:38:54
// Design Name: 
// Module Name: test_bench
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


module test_bench();
reg clk;
reg reset;
reg clk_enb;
wire PMOD_MOSI;
wire PMOD_SCLK;
wire PMOD_CS_N;
wire PMOD_LDAC;
initial 
begin 
clk = 1'b0;reset = 1'b1;clk_enb = 1'b1;
#50 reset = 1'b0;
end
always #4 clk = ~clk;
DAC_Wrapper inst0(.clk(clk),.reset(reset),.clk_enb(clk_enb),.PMOD_MOSI(PMOD_MOSI),.PMOD_SCLK(PMOD_SCLK),.PMOD_CS_N(PMOD_CS_N),.PMOD_LDAC(PMOD_LDAC));


endmodule
