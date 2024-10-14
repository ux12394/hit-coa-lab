`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/10/08 09:27:13
// Design Name: 
// Module Name: Mem_WB
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


module Mem_WB(
    input [31:0] inst,
    input clk,
    input [31:0] pc,
    input wen,
    input [4:0] waddr,
    input [31:0] wdata,
    // input [31:0] data_sram_rdata,
    input select_for_writereg_for_mem,
    input isI,
    input isJ,
    input isR,
    output reg isI_for_wb,
    output reg isJ_for_wb,
    output reg isR_for_wb,
    output reg [31:0] pc_for_wb,
    output reg [31:0] inst_for_wb,
    output reg wen_for_wb,
    output reg [4:0] waddr_for_wb,
    output reg [31:0] wdata_for_wb,
    // output reg [31:0] data_sram_rdata_for_wb,
    output reg select_for_writereg_for_wb
    );
    initial begin
        inst_for_wb=32'h00000000;
        wen_for_wb=1'b0;
        waddr_for_wb=5'b00000;
        wdata_for_wb=32'h00000000;
        // data_sram_rdata_for_wb=32'h00000000;
        select_for_writereg_for_wb=1'b0;
        pc_for_wb=32'h00000000;
        isR_for_wb<=1'b0;
        isI_for_wb<=1'b0;
        isJ_for_wb<=1'b0;
    end
    always @(posedge clk) begin
        inst_for_wb<=inst;
        wen_for_wb<=(waddr==5'b00000)?0:wen;
        waddr_for_wb<=waddr;
        wdata_for_wb<=wdata;
        // data_sram_rdata_for_wb<=data_sram_rdata;
        select_for_writereg_for_wb<=select_for_writereg_for_mem;
        pc_for_wb<=pc;
        isI_for_wb<=isI;
        isR_for_wb<=isR;
        isJ_for_wb<=isJ;
    end
endmodule
