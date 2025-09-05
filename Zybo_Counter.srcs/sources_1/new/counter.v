`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/05/2025 01:42:14 AM
// Design Name: 
// Module Name: counter
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


module counter(
    input clk,
    input [3:0] sw,
    output [3:0] led
    );
    
    wire rst;
    wire clk_1Hz;
    wire [3:0] bin_up;
    
    //Generate the 1Hz clock
    
    freq_divider #(.DIVISOR(50_000_000)) div1Hz(.clk_in(clk),
                                                .rst(sw[3]),
                                                .clk_out(clk_1Hz)
                                                );
                                                
    binary_up_counter bin(.clk(clk_1Hz),
                          .rst(sw[3]),
                          .count(bin_up)
                          );
                          
    assign led = (sw == 4'b0010) ? bin_up : 4'b0000;
    
endmodule
