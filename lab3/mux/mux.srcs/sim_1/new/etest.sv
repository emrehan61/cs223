`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.10.2021 23:15:35
// Design Name: 
// Module Name: etest
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


module etest(
    );
    logic a,b,c,d,e,f,g,h,s,s1,s2,o;
    emux dut(
        .a(a),
        .b(b),
        .c(c),
        .d(d),
        .e(e),
        .f(f),
        .g(g),
        .h(h),
        .s(s),
        .s1(s1),
        .s2(s2),
        .o(o)
    );
    initial begin
    for(int i = 0;i<2048;i++)begin
    
        {a,b,c,d,e,f,g,h,s,s1,s2} = i;
        #1;
    
    end
   end
endmodule
