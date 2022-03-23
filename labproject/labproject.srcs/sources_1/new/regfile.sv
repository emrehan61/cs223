`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.12.2021 10:50:51
// Design Name: 
// Module Name: regfile
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


module regfile ( 
input logic clk,
input logic reset,
input logic rwen,
input logic [2:0] rwa,
input logic [3:0] rwd,
input logic [2:0] rra0,
input logic [2:0] rra1,
output logic [3:0] rrd0,
output logic [3:0] rrd1

    );
 logic [3:0] mem [7:0];
always_ff @(posedge clk)
begin
if(reset)
begin
    begin
        for (int i = 0; i < 8; i++ )
            begin
            mem[i] = 4'b00;
            end
    end
end
else
    if(rwen == 1)
    mem[rwa] <= rwd;
end

assign rrd0 = mem[rra0];
assign rrd1 = mem[rra1];
endmodule
