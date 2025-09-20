`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.08.2025 18:56:11
// Design Name: 
// Module Name: spi_master_dac
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



module spi_master_dac (
    input  wire        clk,       // System clock (e.g., 100 MHz on Zybo)
    input  wire        resetn,    // Active-high reset
    input  wire        start,     // Start transmission pulse
    input  wire [15:0] data_in,   // 16-bit DAC data
    output reg         cs,        // Chip Select (active low)
    output reg         sclk,      // Serial Clock
    output reg         mosi,      // Master Out, Slave In (to DAC DIN)
    output reg         busy       // High during transfer
);

    // Parameters: adjust for your required SCLK speed
    parameter CLK_DIV = 3; // clk/(2*CLK_DIV) = SCLK freq
                            // Example: 100MHz / (2*50) = 1 MHz SCLK

    reg [7:0] clk_cnt;
    reg [4:0] bit_cnt;
    reg [15:0] shift_reg;
    reg sclk_en;

    // FSM states
    localparam IDLE  = 2'b00,
               LOAD  = 2'b01,
               TRANS = 2'b10,
               DONE  = 2'b11;

    reg [1:0] state, next_state;

    // Clock divider for SCLK
    always @(posedge clk or posedge resetn) begin
        if (resetn) begin
            clk_cnt <= 0;
            sclk    <= 0;
        end else if (sclk_en) begin
            if (clk_cnt == CLK_DIV-1) begin
                clk_cnt <= 0;
                sclk    <= ~sclk;
            end else
                clk_cnt <= clk_cnt + 1;
        end else begin
            clk_cnt <= 0;
            sclk    <= 0; // idle low
        end
    end

    // FSM sequential
    always @(posedge clk or posedge resetn) begin
        if (resetn)
            state <= IDLE;
        else
            state <= next_state;
    end

    // FSM combinational
    always @(*) begin
        case (state)
            IDLE:  next_state = start ? LOAD : IDLE;
            LOAD:  next_state = TRANS;
            TRANS: next_state = (bit_cnt == 16 && sclk==1'b1) ? DONE : TRANS;
            DONE:  next_state = IDLE;
            default: next_state = IDLE;
        endcase
    end

    // Data shifting and control
    always @(posedge clk or posedge resetn) begin
        if (resetn) begin
            cs        <= 1;
            mosi      <= 0;
            busy      <= 0;
            bit_cnt   <= 0;
            shift_reg <= 0;
            sclk_en   <= 0;
        end else begin
            case (state)
                IDLE: begin
                    cs      <= 1;
                    busy    <= 0;
                    sclk_en <= 0;
                end
                LOAD: begin
                    cs        <= 0;        // select DAC
                    busy      <= 1;
                    shift_reg <= data_in;
                    bit_cnt   <= 0;
                    sclk_en   <= 1;
                end
                TRANS: begin
                    // Change MOSI on falling edge, sample on rising
                    if (clk_cnt == (CLK_DIV-1)) begin
                        if (sclk == 0) begin
                            // Prepare next bit before rising edge
                            mosi <= shift_reg[15];
                        end else begin
                            // After rising edge, shift left
                            shift_reg <= {shift_reg[14:0],1'b0};
                            bit_cnt   <= bit_cnt + 1;
                        end
                    end
                end
                DONE: begin
                    cs      <= 1;  // latch data into DAC
                    sclk_en <= 0;
                end
            endcase
        end
    end

endmodule
