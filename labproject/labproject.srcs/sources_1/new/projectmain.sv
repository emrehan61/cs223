`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.12.2021 11:25:23
// Design Name: 
// Module Name: projectmain
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


module projectmain(
 input logic clk,
input logic reset,
input logic [11:0] switches,
logic [1:0] dbc,
output logic [11:0] leds,
output logic [6:0] segs,
output logic disp,
output logic [3:0] an
    );
 logic [11:0] inst;
logic [11:0] rom;
logic [1:0]alu1;
logic [3:0] rda0, rda1, rda2, wda,usinput;
logic [2:0] rra0, rra1, wra;
logic [3:0] roma = 4'b0000, romajump;
logic [3:0] ramrd0, ramrd1, rrd0, rrd1, wd, wr, alu0;
logic left, right, jump;
logic [3:0] mema;
logic wden, wren, jen, ien = 1'b1;
logic [3:0] temp = 4'b0000;
logic [3:0] temp2 = 4'b0000;
logic  incheck = 1'b0;
logic userchecker;


debouncer lb(clk, dbc[0], left);
debouncer rb(clk, dbc[1], right);

always_ff @(posedge clk)
begin
if((jen & jump) == 1)
    roma <= romajump;

if(left)
begin
inst <= rom;
    if(roma == 4'b1111)
    roma <= 4'b0000;
    else
      roma <= roma +1 ;

      
  end

if (right)
begin
inst <= switches;
end



if(incheck == 1)
ien = 0;

incheck = 1;


end

controlelement cont0(clk, inst, rrd1, ramrd1, alu0,alu1, wden, wren,jump, wda, rda0, wra, rra0, rra1,usinput, romajump, wd, wr,userchecker );
intructmem imem(roma, rom, leds);
datamem datamem0(clk, reset, wden, ien, wda, wd, mema, rda0, ramrd0, ramrd1);
regfile regfile0(clk, reset, wren, wra, wr, rra0, rra1, rrd0, rrd1);
alu a(rrd0, rrd1,usinput ,alu1, alu0, jen);
ssdisp seven(clk,userchecker,usinput, rrd0, rrd1, alu0,segs, disp, an);

endmodule
