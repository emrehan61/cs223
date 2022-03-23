`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.10.2021 03:25:44
// Design Name: 
// Module Name: labcalc
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

module labcalc(
        input logic a,b,c,d,
        output logic s,m
    );
    logic x1,x2,x3,x4,x5,x6;
    halfadder add(a,b,x1,x2);
    assign x3 = x1&c;
    halfsub sub(a,d,x4,x5);
    assign x6 = (~c)&((x5&(~b))| (x2&(~d)));
    assign s = x3 | x6;
    assign m = c&b&x4;
    
endmodule
