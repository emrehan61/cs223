`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.12.2021 10:46:22
// Design Name: 
// Module Name: datamem
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


module datamem(
input logic clk,
input logic reset,
input logic wen, ien,
input logic [3:0] wa,
input logic [3:0] wd,
input logic [3:0] ra0,
input logic [3:0] ra1,
output logic [3:0] rd0,
output logic [3:0] rd1

    );
 logic [3:0] mem [15:0];
always_ff @(posedge clk)
begin
if(reset)
begin
    begin
        for (int i = 0; i < 16; i++ )
            begin
            mem[i] = 4'b0;
            end
    end
end
else
    if(wen == 1)
    begin
    mem[wa] <= wd;
    end
    if(ien == 1)
    begin
    for(int i = 0; i < 16; i++)
    begin
    mem[i] = i;
    end
    end
end

assign rd0  = mem[ra0];
assign rd1 = mem[ra1];
endmodule
