`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.10.2021 22:23:51
// Design Name: 
// Module Name: fmux
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


module fmux(
    input logic a,b,c,d,e,f,
    output logic s
    );
    logic carr1;
    logic carry2;
    tmux t1 (a,b,f,carry1);
    tmux t2 (c,d,f,carry2);
    tmux t3 (carry1,carry2,e,s);
endmodule
