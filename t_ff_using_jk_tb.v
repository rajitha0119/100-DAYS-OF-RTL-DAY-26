`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.08.2023 19:10:18
// Design Name: 
// Module Name: t_ff_using_jk_tb
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


module t_ff_using_jk_tb(

    );
    reg clk,rst,t;
    wire q,qbar;
    t_ff_using_jk uut(clk,rst,t,q,qbar);
    initial begin
    rst=1;
    #50 rst=0;
    end
    initial begin
    clk=0;t=0;
    #10 clk=1;t=0;
    #10 clk=0;t=1;
    #10 clk=1;t=1;
    end
    
endmodule
