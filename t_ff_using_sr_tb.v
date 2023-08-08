`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.08.2023 18:55:18
// Design Name: 
// Module Name: t_ff_using_sr_tb
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


module t_ff_using_sr_tb(

    );
    reg clk,rst,t;
    wire q,qbar;
   t_ff_using_sr uut(clk,rst,t,q,qbar);
   initial begin
   rst=1;
   #40 rst=0;
   end
   initial begin
   clk=0;t=0;
   #10 clk=1; t=0;
   #10 clk=0;t=1;
   #10 clk=1;t=1;
   end
endmodule
