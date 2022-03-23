`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.10.2021 03:34:49
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
    logic a,b,c,d,s,m;
    labcalc dut(
        .a(a),
        .b(b),
        .c(c),
        .d(d),
        .s(s),
        .m(m)
    );
    initial begin
        for (int i=0; i<16; i=i+1) begin
            {d,c,b,a} = i;
            #1;
        end
     end
endmodule
