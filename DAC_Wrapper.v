`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.08.2025 17:56:49
// Design Name: 
// Module Name: DAC_Wrapper
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


module DAC_Wrapper(input clk,
				   input reset,
				   input clk_enb,
				   output PMOD_MOSI,
				   output PMOD_SCLK,
				   output PMOD_CS_N,
				   output PMOD_LDAC);
wire clk_96M;
//wire [31:0]Vint; // Intermedite voltage
//wire ce_out;
wire [15:0]Vout;
wire start;
wire clk_1M;

//Clock divider Clk_96M to Clk_1M
  clk_divider inst4(.clk_in(clk_96M),.reset(reset),.divided_clk(clk_1M));
  
// Clock of 96Mhz from Clocking Wizard
  clk_wiz_0 inst_0
   (
    // Clock out ports
    .clk_out1(clk_96M),     // output clk_96M
   // Clock in ports
    .clk_in1(clk)      // input clk
);

/*//Sine values from BRAM
sine_values inst1(.clk(clk_1M),
				  .reset(reset),
				  .sinout(Vint));*/
				 
/*//32bit to 16bit conversion
sin_16bit inst2(.clk(clk_1M),
				.reset(reset),
				.clk_enable(clk_enb),
				.In1(Vint),
				.ce_out(ce_out),
				.Out1(Vout));*/

// 16 bit Counter
counter16_bit inst5(.clk(clk_1M),
					.reset(reset),
					.Vout(Vout));



//Pmod DAC AD5541 controller instantiation
top_dac inst3(.clk(clk_96M),
			  .rst(reset),
			  .start(1),
			  .dac_code(Vout),
			  .PMOD_MOSI(PMOD_MOSI),
			  .PMOD_SCLK(PMOD_SCLK),
			  .PMOD_CS_N(PMOD_CS_N),
			  .PMOD_LDAC(PMOD_LDAC));

endmodule
