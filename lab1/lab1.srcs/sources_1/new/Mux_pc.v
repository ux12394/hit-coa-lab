`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/10/08 17:45:08
// Design Name: 
// Module Name: Mux_pc
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


module Mux_pc(
    input [31:0] pc,
    input jmp,
    input [31:0] inst,
    input isI,
    input isJ,
    input [31:0] rdata1,
    output reg [31:0] npc_new
    );
reg [31:0] npc;
    //组合逻辑写这个判断选择器
always @(*) begin
    if (jmp) begin
        if (isI) begin
            //条件跳转
            if (rdata1[inst[20:16]]==1'b1) begin
                npc=pc+32'h00000004;
                npc_new=({{16{inst[15]}}, inst[15:0]} << 2)+npc;
            end
        end
        else if (isJ) begin
            //跳转
            npc=pc+32'h00000004;
            npc_new={npc[31:28],(inst[25:0]<<2)};
        end
    end
end
endmodule
