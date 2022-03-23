`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.11.2021 01:20:20
// Design Name: 
// Module Name: clock
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


module clock( input clk, input reset, output cout );
    logic[27:0] count = {28{1'b0}};
    localparam temp= 150000000;
    always@(posedge clk)
    begin
    if(reset == 1||count == temp-1)
    count <= {28{1'b0}};
    else
    count <= count + 1;
    end
    assign cout = {count == temp-1};
endmodule

