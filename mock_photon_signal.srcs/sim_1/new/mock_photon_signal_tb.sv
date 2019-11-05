`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/03/2019 05:12:15 PM
// Design Name: 
// Module Name: mock_photon_signal_tb
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


module mock_photon_signal_tb();
    reg clk;
    reg restart;
    wire photon_signal;

    mock_photon_signal DUT (
        .clk(clk),
        .restart(restart),
        .photon_signal(photon_signal)
    );
    
    initial begin
        clk = 0;
        restart = 1'b0;
        forever #5 clk = ~clk;
    end
    
    initial begin
        #205
        restart = 1;
        #10
        restart = 0;
        #500
        restart = 1;
        #10
        restart = 0;
        #500;
        $finish;
    end

endmodule
