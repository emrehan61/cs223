`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.10.2021 21:39:38
// Design Name: 
// Module Name: decoder
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


module decoder(
        input logic a,b,en,
        output logic c,d,e,f
    );
    assign c = a&b&en;
    assign d = a&~b&en;
    assign e = ~a&b&en;
    assign f = ~a&~b&en;
endmodule
