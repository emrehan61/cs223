`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.12.2021 10:54:02
// Design Name: 
// Module Name: ssdisp
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


module ssdisp(

input clk, 
input logic checkus,
input [2:0] usinput,
 input [3:0] i3, i2, i1, 
 output [6:0]segs, logic disp, 
 output [3:0] an   

    );
   localparam N = 18;
logic [N-1:0] count = {N{1'b0}};
always@ (posedge clk)
	count <= count + 1;

 
logic [3:0]dval; 
logic [3:0]den; 
 
always@ (*)
 begin
 den = 4'b1111; 
 dval = i1;
 
  case(count[N-1:N-2])  
    
   2'b00 :  
    begin
     dval =  i1;
     den = 4'b1110;
    end
    
   2'b10:  
    begin
    den = 4'b1011;
    if(checkus == 1)
    begin
    dval =  usinput;
    end
     else 
     dval = i2;
    end
    
     
   2'b11:  
    begin
     dval =  i3;
     den = 4'b0111;
    end
  endcase
 end
 


logic [6:0] segsLEDs; 
always @(*)
 begin 
  segsLEDs = 7'b1111111; 
  case( dval)
   4'd0 : segsLEDs = 7'b1000000; 
   4'd1 : segsLEDs = 7'b1111001; 
   4'd2 : segsLEDs = 7'b0100100;
   4'd3 : segsLEDs = 7'b0110000; 
   4'd4 : segsLEDs = 7'b0011001; 
   4'd5 : segsLEDs = 7'b0010010; 
   4'd6 : segsLEDs = 7'b0000010; 
   4'd7 : segsLEDs = 7'b1111000; 
   4'd8 : segsLEDs = 7'b0000000;
   4'd9 : segsLEDs = 7'b0010000; 
   4'd10: segsLEDs = 7'b0001000; 
   4'd11: segsLEDs = 7'b0000011; 
   4'd12: segsLEDs = 7'b1000110; 
   4'd13: segsLEDs = 7'b0100001; 
   4'd14: segsLEDs = 7'b0000110; 
   //4'd15: segsLEDs = 7'b0001110; 
   5'd15: segsLEDs = 7'b0001110;   
   5'd16: segsLEDs = 7'b0110111; 
   default : segsLEDs = 7'b0111111; 
  endcase
 end
 
assign an = den;
assign segs = segsLEDs; 
assign disp = 1'b1; 
 
endmodule
