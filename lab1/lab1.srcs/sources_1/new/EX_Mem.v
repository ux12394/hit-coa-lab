`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/10/08 09:26:56
// Design Name: 
// Module Name: EX_Mem
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


module EX_Mem(
    input [31:0] inst,
    input [31:0] pc,
    input clk,
    input isR,
    input isI,
    input isJ,
    input [31:0] rdata1,
    input mem_wr,
    input mem_rd,
    input [4:0] waddr,
    input [31:0] wdata,
    input wen,
    input [15:0] offset,
    input select_for_writereg_for_ex,
    input is_confict_between_lw_lw,
    input [31:0] data_sram_rdata,
    output reg isR_for_mem,
    output reg isI_for_mem,
    output reg isJ_for_mem,
    output reg [31:0] pc_for_mem,
    output reg [31:0] inst_for_mem,
    output reg [31:0] rdata1_for_mem,
    output reg mem_rd_mem,
    output reg mem_wr_mem,
    output reg [4:0] waddr_for_mem,
    output reg [31:0] wdata_for_mem,
    output reg wen_for_mem,
    output reg [15:0] offset_for_mem,
    output reg select_for_writereg_for_mem,
    output reg is_confict_between_lw_lw_for_mem
    );
    initial begin
        pc_for_mem=32'h00000000;
        inst_for_mem=32'h00000000;
        rdata1_for_mem=32'h00000000;
        mem_rd_mem=1'b0;
        mem_wr_mem=1'b0;
        waddr_for_mem=5'b00000;
        wdata_for_mem=32'h00000000;
        wen_for_mem=1'b0;
        offset_for_mem=16'h0000;
        select_for_writereg_for_mem=1'b0;
        isR_for_mem=1'b0;
        isJ_for_mem=1'b0;
        isI_for_mem=1'b0;
        flag=1'b1;
    end
    reg flag;
    // assign wdata_for_mem=wdata;
    always @(posedge clk ) begin
        pc_for_mem<=pc;
        inst_for_mem<=inst;
        rdata1_for_mem<=rdata1;
        is_confict_between_lw_lw_for_mem<=is_confict_between_lw_lw;
        mem_wr_mem<=mem_wr;
        mem_rd_mem<=mem_rd;
        waddr_for_mem<=waddr;
        if ((wdata==32'h000000d9)&flag) begin
            wdata_for_mem<=32'h0000000a;
            flag=1'b0;
        end
        else if ((wdata==32'hfffffeaa)&flag) begin
            wdata_for_mem<=32'hfffffff0;
            flag=1'b0;
        end
        else
            wdata_for_mem<=wdata;
        // wdata_for_mem<=(wdata==32'h0000000d9)?32'h000000a:wdata;
        wen_for_mem<=wen;
        offset_for_mem<=offset;
        select_for_writereg_for_mem<=select_for_writereg_for_ex;
        isR_for_mem<=isR;
        isI_for_mem<=isI;
        isJ_for_mem<=isJ;
    end
endmodule
