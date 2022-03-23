`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.11.2021 01:20:04
// Design Name: 
// Module Name: tlights
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


module tlights( input logic clk ,reset, input logic SA,SB, 
    output logic[2:0] LA, output logic [2:0] LB );
        logic cout;
       typedef enum logic[2:0] {S0,S1,S2,S3,S4,S5,S6,S7} stateype;
       stateype[2:0]  state, nextstate;
       //clock count1(clk,reset,cout);
       
       //state register
       always_ff @(posedge clk, posedge reset)
           if(reset) state <= S0;
           else state <= nextstate;
  
        always_comb
           case(state)
               S0: if(SA) nextstate = S0;
                   else nextstate = S1;
               S1: nextstate = S2;
               S2: nextstate = S3;
               S3: nextstate = S4;
               S4: if(SB) nextstate = S4;
                   else nextstate = S5;
               S5: nextstate = S6;
               S6: nextstate = S7;
               S7: nextstate = S0;
               default: nextstate = S0;
           endcase
          
           always_comb
               case(state)
                   S0:
                    begin
                       LA = 3'b011;
                       LB = 3'b111;
                    end
                   S1:
                    begin
                      LA = 3'b001;
                      LB = 3'b111;
                    end
                   S2:
                      begin
                         LA = 3'b111;
                         LB = 3'b111;
                       end                                        
                   S3:
                       begin
                         LA = 3'b111;
                         LB = 3'b001;
                        end                          
                   S4:
                    begin
                      LA = 3'b111;
                      LB = 3'b011;
                   end                        
                   S5:
                     begin
                      LA = 3'b111;
                      LB = 3'b001;
                    end                        
                   S6:
                   begin
                         LA = 3'b111;
                         LB = 3'b111;
                      end                       
                   S7:
                     begin
                         LA = 3'b001;
                         LB = 3'b111;
                     end
              endcase
endmodule
