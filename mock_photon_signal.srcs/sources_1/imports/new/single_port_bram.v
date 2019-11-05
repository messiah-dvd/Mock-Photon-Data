`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/24/2019 02:17:20 PM
// Design Name: 
// Module Name: single_port_bram
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


module single_port_bram #(DATA_WIDTH = 8, DEPTH = 256) (
    input wire i_clk,
    input wire [$clog2(DEPTH)-1:0] i_addr, 
    input wire i_write,
    input wire [DATA_WIDTH-1:0] i_data,
    output reg [DATA_WIDTH-1:0] o_data 
    );

    reg [DATA_WIDTH-1:0] memory_array [0:DEPTH-1]; 

    always @(posedge i_clk)
    begin
        if (i_write) begin
            memory_array[i_addr] <= i_data;
        end else begin
            o_data <= memory_array[i_addr];
        end     
    end
endmodule
