`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/05/2025 01:37:18 AM
// Design Name: 
// Module Name: binary_up_counter
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


module binary_up_counter #(parameter N = 4)(
    input clk,
    input rst,
    output reg [N-1:0] count
    );
    
    always @(posedge clk or posedge rst) begin
        if(rst) begin
            count <= 0;
            end
        else
            count <= count +1'b1;
    end
            
endmodule
