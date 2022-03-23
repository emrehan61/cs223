`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.10.2021 22:02:12
// Design Name: 
// Module Name: tb1
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


module tb1(
    );
 logic a,b,c,d;
 
 tmux dut(
    .d0(a),
    .d1(b),
    .s(c),
    .o(d)
 );
 initial begin
    for(int i = 0;i<8;i++)begin
    
        {c,b,a} = i;
        #1;
    
    end
   end
endmodule
