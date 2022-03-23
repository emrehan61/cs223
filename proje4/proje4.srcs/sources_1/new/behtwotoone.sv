`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.11.2021 23:15:09
// Design Name: 
// Module Name: behtwotoone
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



module behtwotoone(
    input logic in1, in0, s0,
    output logic out0
    );
    assign out0 = s0 ? in1 : in0;
endmodule
