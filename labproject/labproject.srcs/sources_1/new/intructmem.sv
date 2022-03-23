`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.12.2021 11:19:24
// Design Name: 
// Module Name: intructmem
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


module intructmem(
input logic [3:0] ra, 
output logic [11:0] rd0, rd1
    );
    logic [11:0] rom [15:0];
    
    always_comb
    begin
    rom[0] = 12'b000_00_000_0000;
    rom[1] = 12'b000100011001;//load d 9 to r 1 
    rom[2] = 12'b000111011111;//load d 15 to r 5
    rom[3] = 12'b001111010100;//store r 5 to d 4 
    rom[4] = 12'b000101100100;//load d 4 to r 6 
    rom[5] = 12'b000010000111;//load d7 to r0 
    rom[6] = 12'b000000100011;//load d3 to r2 
    rom[7] = 12'b010100101000;// r5-r0 = r4 8
    rom[8] = 12'b010011110100;// r6-r4 = r3 7
    rom[9] = 12'b101001011101;// r1 = r3 + 5 12
    rom[10] = 12'b101010100111;// r2 = r4 + 7 15 
    rom[11] = 12'b010000010001;//r2-r1 = 3 r0 
    rom[12] = 12'b101011000101;// r0+5 = 8 r3 
    rom[13] = 12'b000111110111; //d8 = r7 
    rom[14] = 12'b111010111011;// jump 2 
    rom[15] = 12'b101110111111;// r6 = r7 + 7 
    end
    
    assign rd0 = rom[ra];
    assign rd1 = rom[ra];//
endmodule
