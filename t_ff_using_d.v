`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.08.2023 19:17:19
// Design Name: 
// Module Name: t_ff_using_d
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

module d_ff(input clk,rst,d,output reg q=1,output qbar);
assign qbar=~q;
always@(posedge clk)
begin
if(!rst)
q<=d;
else
q<=1'b0;
end
endmodule
module t_ff_using_d(
    input clk,
    input rst,
    input t,
    output q,
    output qbar
    ); 
    wire x;
    assign x=q^t;
    d_ff DFF(clk,rst,x,q,qbar);
endmodule
