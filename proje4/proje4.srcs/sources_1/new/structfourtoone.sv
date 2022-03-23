`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.11.2021 23:27:26
// Design Name: 
// Module Name: structfourtoone
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


module structfourtoone(
    input logic in3, in2, in1, in0, s1, s0,
    output logic out0
    );
    logic m1;
    logic m2;
    
    behtwotoone multiplexer1(in0, in1, s1, m1);
    behtwotoone multiplexer2(in2, in3, s1, m2);
    behtwotoone multiplexer3(m1, m2, s0, out0);
    
endmodule
