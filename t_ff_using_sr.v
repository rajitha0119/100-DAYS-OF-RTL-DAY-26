`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.08.2023 18:37:49
// Design Name: 
// Module Name: t_ff_using_sr
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
module sr_ff(input clk,rst,s,r,output reg q=0,output qbar);
assign qbar=~q;
always@(posedge clk)
begin
if(!rst)
begin
case({s,r})
2'b00:q<=q;
2'b01:q<=0;
2'b10:q<=1;
2'b11:q<=1'bx;
endcase
end
end
endmodule

module t_ff_using_sr(
    input clk,
    input rst,
    input t,
    output q,
    output qbar
    );
    wire x1,x2;
    assign x1=~q&t;
    assign x2=q&t;
    sr_ff SRFF(clk,rst,x1,x2,q,qbar);
endmodule
