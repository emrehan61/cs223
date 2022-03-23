`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.12.2021 10:44:33
// Design Name: 
// Module Name: alu
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


module alu(
input logic [3:0] x,
input logic [3:0] y,
input logic [2:0] z,
input logic[1:0] controla,
output logic [3:0] res0,

output logic res1
    );
always_comb
begin
    case(controla)
    2'b00: res0 <= x - y;
    2'b01: res1 <= (x == y);
    2'b10: res0 <= x + z;
    2'b11: res0 <= 4'b0000;
    endcase
    end
endmodule
