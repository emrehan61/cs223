`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.11.2021 01:25:40
// Design Name: 
// Module Name: tbtlights
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


module tbtlights(   );
    logic clk, reset;
    logic SA, SB;
    logic [2:0] x,y;
    
    tlights t1(clk, reset, SA, SB, x,y);
    
    initial begin 
     reset = 1; #100; 
     reset= 0;
       
       SA =0; SB =0; #100;
       SA=0; SB=1; #100;
       SA=1; SB=0; #100;
       SA=1; SB=1; #100;
       
       reset = 1; 
        SA =0; SB =0; #100;
        SA=0; SB=1; #100;
        SA=1; SB=0; #100;
        SA=1; SB=1; #100;
        end
        
        always 
           begin
               clk <= 1; #5;
               clk <= 0; #5;
            end
endmodule