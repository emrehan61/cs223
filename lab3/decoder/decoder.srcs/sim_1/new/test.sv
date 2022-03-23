`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.10.2021 21:46:18
// Design Name: 
// Module Name: test
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


module test();
logic a,b,c,d,e,f,en;

decoder dut(
            .en(en),
            .a(a),
             .b(b),
             .c(c),
             .d(d),
             .e(e),
             .f(f)
             );
initial begin
    for(int i = 0;i<8;i++)begin
    
        {a,b,en} = i;
        #1;
    
    end
   end
            
endmodule
