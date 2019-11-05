`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/02/2019 07:50:05 PM
// Design Name: 
// Module Name: mock_photon_signal
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


module mock_photon_signal(
    input clk,
    input restart,
    output photon_signal
    );
    
    reg [13:0] counter;
    wire photon_signal;
    
    blk_mem_gen_0 photon_data (
        .addra(counter),
        .clka(clk),
        .dina(),
        .douta(photon_signal),
        .ena(1'b1),
        .wea()
    );
    
    always @(posedge clk) begin
        if (restart) begin
            counter <= 0;
        end else begin
            counter <= counter + 1;
        end
    end
endmodule
