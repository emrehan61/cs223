`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.10.2021 22:55:48
// Design Name: 
// Module Name: emux
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


module emux(
    input logic a,b,c,d,e,f,g,h,s,s1,s2,
    output logic o
    );
    logic carry1,carry2;
    fmux f1(a,b,c,d,s1,s2,carry1);
    fmux f2(e,f,g,h,s1,s2,carry2);
    logic x,y;
    and (x,carry1,~s);
    and (y,carry2,s);
    or(o,x,y);
endmodule
