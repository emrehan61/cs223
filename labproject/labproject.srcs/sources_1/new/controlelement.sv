`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.12.2021 11:20:47
// Design Name: 
// Module Name: controlelement
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


module controlelement(
    input logic clk,
input logic [11:0] inst,
input logic [3:0] regtmem, memtreg, alu0,
output logic[1:0] alu1,
output logic wden, wren, jump,
output logic [3:0] wda, rda,
output logic [2:0] wra, rra0, rra1, usinput,
output logic [2:0] rom,
output logic [3:0] wd, wr,
output logic checkus
    );
    always_comb

    case(inst[11:9])
    3'b000:
    begin
    alu1 = 2'b11;
    wden = 0;
    wren = 1;
    wra = inst[6:4];
    rda = inst[3:0];
    wr = memtreg;
    checkus = 0;
    end
    3'b001:
    begin
     alu1 = 2'b11;
    wden = 1;
    wren = 0;
    wda =  inst[3:0];
    rra1 = inst[6:4];
    wd = regtmem;
    checkus = 0;
    end
    3'b010:
    begin
    alu1 = 2'b00;
    wden = 0;
    wra = inst[8:6];
    rra0 = inst[5:3];
    rra1 = inst[2:0];
    wr = alu0;
    wren = 1;
    checkus = 0;
    end
    3'b101:
    begin
    alu1 = 2'b10;
    wden = 0;
    wra = inst[8:6];
    rra1 = inst[5:3];
    usinput = inst[2:0];
    wr = alu0;
    wren = 1;
    checkus = 1;
    end
    3'b111:
    begin
    alu1 = 2'b01;
    jump = 1;
    rra0 = inst[5:3];
    rra1 = inst[2:0];
    rom = inst[8:6];
    checkus = 0;
    end
    default:
    begin
    alu1 = 2'b11;
    jump = 0;
    checkus = 0;
    alu1 = 0;
    wden = 0;
    wren = 0;
    end
    endcase
endmodule
