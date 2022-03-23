`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.11.2021 23:31:31
// Design Name: 
// Module Name: testbench
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


module testbench( );
logic D3, D2, D1, D0, shiftleft, shiftright, s0, s1, reset, clk;
logic Q3, Q2, Q1, Q0;

fourdflipflop shift1(D3, D2, D1, D0,  shiftleft, shiftright, s1, s0,reset, clk,Q3, Q2,Q1,Q0 );

initial begin
for(int i = 0; i < 1024; i++)
begin
{D0, D1, D2, D3, shiftleft, shiftright, reset, s1, s0, clk} = i;
#2;
end
end
endmodule
