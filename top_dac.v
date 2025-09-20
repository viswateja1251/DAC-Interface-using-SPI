`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.08.2025 18:54:11
// Design Name: 
// Module Name: top_dac
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


module top_dac (
    input  wire        clk,
    input  wire        rst,
    input  wire        start,
    input  wire [15:0] dac_code,
    // Top-level pins to connect to Pmod header / board connectors,
    output wire        PMOD_MOSI,   // connect to Pmod pin -> AD5541 DIN
    output wire        PMOD_SCLK,   // connect to Pmod pin -> AD5541 SCLK
    output wire        PMOD_CS_N,   // connect to Pmod pin -> AD5541 CS (active low)
    output wire        PMOD_LDAC    // optionally to AD5541 LDAC (or tie low extern.)
);

// Instantiate your SPI master (example signals)
wire sclk;
wire mosi;
wire cs_n;
wire busy;

spi_master_dac inst0 (
    .clk(clk),
    .resetn(rst),
    .start(start),
    .data_in(dac_code),
    .sclk(sclk),
    .mosi(mosi),
    .cs(cs_n),
    .busy(busy)
);

// Directly drive Pmod outputs
assign PMOD_MOSI  = mosi;
assign PMOD_SCLK  = sclk;
assign PMOD_CS_N  = cs_n;
assign PMOD_LDAC  = 1'b0; // tie low here for immediate update, OR route to a GPIO if you want control

endmodule
