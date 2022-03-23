`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.11.2021 23:22:10
// Design Name: 
// Module Name: fourdflipflop
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


module fourdflipflop(input logic D3, D2, D1, D0, shiftleft, shiftright,
                        s1, s0, reset, clk,
                        output logic Q3, Q2, Q1, Q0 );
 logic  om1, om2, om3, om4;
 
 structfourtoone m1(Q0, D0, Q1, shiftleft, s0, s1, om1);                       
 flipflop fl1(om1, clk, reset, Q0);
 
 structfourtoone m2(Q1, D1, Q2, Q0, s0, s1, om2);                       
 flipflop fl2(om2, clk, reset, Q1);
 
  structfourtoone m3(Q2, D2, Q3, Q1, s0, s1, om3);                       
  flipflop fl3(om3, clk, reset, Q2);
 
 structfourtoone m4(Q3, D3, shiftright, Q2, s0, s1, om4);                       
  flipflop fl4(om4, clk, reset, Q3);
                
endmodule