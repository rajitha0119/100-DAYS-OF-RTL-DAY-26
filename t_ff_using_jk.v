`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.08.2023 19:04:11
// Design Name: 
// Module Name: t_ff_using_jk
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
module jk_ff(input clk,rst,j,k,output reg q=0,output qbar);
assign qbar=~q;
always@(posedge clk)
begin
if(!rst)
case({j,k})
2'b00:q<=q;
2'b01:q<=0;
2'b10:q<=1;
2'b11:q<=~q;
endcase
else
q<=0;
end
endmodule


module t_ff_using_jk(
    input rst,
    input clk,
    input t,
    output q,
    output qbar
    );
    jk_ff JKFF(rst,clk,t,t,q,qbar);
    
endmodule
