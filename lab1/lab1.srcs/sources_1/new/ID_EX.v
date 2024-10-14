/*
 * @Author: S.H.Y 
 * @Date: 2024-10-08 15:21:18 
 * @Last Modified by: S.H.Y
 * @Last Modified time: 2024-10-08 15:29:17
 */
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/10/08 09:26:20
// Design Name: 
// Module Name: ID_EX
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


module ID_EX(
    input clk,
    input [31:0] inst,
    input resetn,
    input isI,
    input [31:0] pc,
    input isR,
    input isJ,
    input [15:0] offset,
    input [4:0] waddr,
    input rden1,
    input rden2,
    input [4:0] raddr1,
    input [4:0] raddr2,
    input [31:0] rdata1,
    input [31:0] rdata2,
    input alu_en,
    input [4:0] alu_card,
    input mem_rd,
    input mem_wr,
    input jmp,
    input invalid,
    input [25:0] instr_index,
    input [4:0] sa,
    input select_for_writereg,
    //决定暂停
    input is_stop_pipeline,
    //决定定向
    input is_confict_with_ex1,
    input is_confict_with_ex2,
    input is_confict_with_mem1,
    input is_confict_with_mem2,
    input is_confict_with_wb1,
    input is_confict_with_wb2,
    input [31:0] wdata_for_regwb,
    input [31:0] wdata_for_cu,
    input [31:0] wdata_for_access,
    input [31:0] data_sram_rdata,
    input select_for_writereg_for_access,
    input wen_for_inst_decoder,
    input ismovz,
    input is_confict_between_lw_lw,
    input is_nop,
    // output reg is_nop_for_ex,
    output reg is_confict_with_mem1_for_ex,
    output reg is_confict_with_mem2_for_ex,
    output reg is_confict_with_ex1_for_ex,
    output reg is_confict_with_ex2_for_ex,
    output reg is_confict_between_lw_lw_for_ex,
    output reg wen_for_ex,
    output reg [31:0] inst_for_ex,
    output reg [31:0] rdata1_for_ex,
    output reg [31:0] rdata2_for_ex,
    output reg [31:0] pc_for_ex,
    output reg isI_for_ex,
    output reg isR_for_ex,
    output reg isJ_for_ex,
    output reg [15:0]offset_for_ex,
    output reg [4:0] waddr_for_ex,
    output reg rden1_for_ex,
    output reg rden2_for_ex,
    output reg [4:0] raddr1_for_ex,
    output reg [4:0] raddr2_for_ex,
    output reg alu_en_for_ex,
    output reg [4:0] alu_card_for_ex,
    output reg mem_rd_for_ex,
    output reg mem_wr_for_ex,
    output reg jmp_for_ex,
    output reg invalid_for_ex,
    output reg [25:0] instr_index_for_ex,
    output reg [4:0] sa_for_ex,
    output reg select_for_writereg_for_ex
    );
    reg [31:0] rdata2_for_movz;
    initial begin
        pc_for_ex=32'h00000000;
        inst_for_ex=32'h00000000;
        rdata1_for_ex=32'h00000000;
        rdata2_for_ex=32'h00000000;
        isI_for_ex=1'b0;
        isR_for_ex=1'b0;
        isJ_for_ex=1'b0;
        offset_for_ex=16'h0000;
        waddr_for_ex=5'b00000;
        rden1_for_ex=1'b0;
        rden2_for_ex=1'b0;
        raddr1_for_ex=5'b00000;
        raddr2_for_ex=5'b00000;
        alu_en_for_ex=1'b0;
        alu_card_for_ex=5'b00000;
        mem_rd_for_ex=1'b0;
        mem_wr_for_ex=1'b0;
        jmp_for_ex=1'b0;
        invalid_for_ex=1'b0;
        instr_index_for_ex=26'b00000000000000000000000000;
        sa_for_ex=5'b00000;
        select_for_writereg_for_ex=1'b0;
        wen_for_ex<=1'b0;
        is_confict_between_lw_lw_for_ex<=1'b0;
        is_confict_with_ex1_for_ex<=1'b0;
        is_confict_with_ex2_for_ex<=1'b0;
        is_confict_with_mem2_for_ex<=1'b0;
        is_confict_with_mem1_for_ex<=1'b0;
    end
    always @(posedge clk) begin
        if (resetn==1'b1) begin
            if (is_stop_pipeline==1'b1) begin
                //暂停
                pc_for_ex<=32'h00000000;
                inst_for_ex<=32'h00000000;
                rdata1_for_ex<=32'h00000000;
                rdata2_for_ex<=32'h00000000;
                isI_for_ex<=1'b0;
                isR_for_ex<=1'b0;
                isJ_for_ex<=1'b0;
                offset_for_ex<=16'h0000;
                waddr_for_ex<=5'b00000;
                rden1_for_ex<=1'b0;
                rden2_for_ex<=1'b0;
                raddr1_for_ex<=5'b00000;
                raddr2_for_ex<=5'b00000;
                alu_en_for_ex<=1'b0;
                alu_card_for_ex<=5'b00000;
                mem_rd_for_ex<=1'b0;
                mem_wr_for_ex<=1'b0;
                jmp_for_ex<=1'b0;
                invalid_for_ex<=1'b0;
                instr_index_for_ex<=26'b00000000000000000000000000;
                sa_for_ex<=5'b00000;
                select_for_writereg_for_ex<=1'b0;
                wen_for_ex<=1'b0;
                is_confict_between_lw_lw_for_ex<=1'b0;
                is_confict_with_mem2_for_ex<=1'b0;
                is_confict_with_mem1_for_ex<=1'b0;
//                is_nop_for_ex<=1'b0;
            end
            else if (is_nop) begin
                pc_for_ex<=pc+4;
                inst_for_ex<=32'h00000000;
                rdata1_for_ex<=32'h00000000;
                rdata2_for_ex<=32'h00000000;
                isI_for_ex<=1'b0;
                isR_for_ex<=1'b0;
                isJ_for_ex<=1'b0;
                offset_for_ex<=16'h0000;
                waddr_for_ex<=5'b00000;
                rden1_for_ex<=1'b0;
                rden2_for_ex<=1'b0;
                raddr1_for_ex<=5'b00000;
                raddr2_for_ex<=5'b00000;
                alu_en_for_ex<=1'b0;
                alu_card_for_ex<=5'b00000;
                mem_rd_for_ex<=1'b0;
                mem_wr_for_ex<=1'b0;
                jmp_for_ex<=1'b0;
                invalid_for_ex<=1'b0;
                instr_index_for_ex<=26'b00000000000000000000000000;
                sa_for_ex<=5'b00000;
                select_for_writereg_for_ex<=1'b0;
                wen_for_ex<=1'b0;
                is_confict_between_lw_lw_for_ex<=1'b0;
                is_confict_with_mem2_for_ex<=1'b0;
                is_confict_with_mem1_for_ex<=1'b0;
            end
            else begin
                inst_for_ex<=inst;
                // is_nop_for_ex<=is_nop;
                is_confict_between_lw_lw_for_ex<=is_confict_between_lw_lw;
                //定向
                if (is_confict_with_ex1&~is_confict_with_ex2) begin
                    rdata1_for_ex<=wdata_for_cu;
                end
                else if (is_confict_with_ex2&~is_confict_with_ex1) begin
                    rdata2_for_ex<=wdata_for_cu;
                end
                else if (is_confict_with_ex2&is_confict_with_ex1) begin
                    rdata1_for_ex<=wdata_for_cu;
                    rdata2_for_ex<=wdata_for_cu;
                end
                if (~is_confict_with_ex1&is_confict_with_mem1&~is_confict_with_mem2) begin
                    rdata1_for_ex<=(select_for_writereg_for_access==1'b0)?wdata_for_access:data_sram_rdata;
                end
                else if (~is_confict_with_ex2&is_confict_with_mem2&~is_confict_with_mem1) begin
                    rdata2_for_ex<=(select_for_writereg_for_access==1'b0)?wdata_for_access:data_sram_rdata;
                end
                else if (is_confict_with_mem2&is_confict_with_mem1&~is_confict_with_ex2&~is_confict_with_ex1) begin
                    rdata1_for_ex<=(select_for_writereg_for_access==1'b0)?wdata_for_access:data_sram_rdata;
                    rdata2_for_ex<=(select_for_writereg_for_access==1'b0)?wdata_for_access:data_sram_rdata;
                end
                if (~is_confict_with_ex1&~is_confict_with_mem1&is_confict_with_wb1&~is_confict_with_wb2) begin
                    rdata1_for_ex<=wdata_for_regwb;
                end
                else if (~is_confict_with_ex2&~is_confict_with_mem2&is_confict_with_wb2&~is_confict_with_wb1) begin
                    rdata2_for_ex<=wdata_for_regwb;
                end
                else if (is_confict_with_wb2&is_confict_with_wb1&~is_confict_with_ex1&~is_confict_with_mem1&~is_confict_with_ex2&~is_confict_with_mem2) begin
                    rdata2_for_ex<=wdata_for_regwb;
                    rdata1_for_ex<=wdata_for_regwb;
                end
                if (~is_confict_with_ex1&~is_confict_with_mem1&~is_confict_with_wb1) begin
                    rdata1_for_ex<=rdata1;
                end
                if (~is_confict_with_ex2&~is_confict_with_mem2&~is_confict_with_wb2) begin
                    rdata2_for_ex<=rdata2;
                end
                isI_for_ex<=isI;
                pc_for_ex<=pc;//译码已经更新
                isJ_for_ex<=isJ;
                isR_for_ex<=isR;
                offset_for_ex<=offset;
                waddr_for_ex<=waddr;
                rden1_for_ex<=rden1;
                rden2_for_ex<=rden2;
                raddr1_for_ex<=raddr1;
                raddr2_for_ex<=raddr2;
                alu_en_for_ex<=alu_en;
                mem_rd_for_ex<=mem_rd;
                mem_wr_for_ex<=mem_wr;
                jmp_for_ex<=jmp;
                invalid_for_ex<=invalid;
                instr_index_for_ex<=instr_index;
                sa_for_ex<=sa;
                select_for_writereg_for_ex<=select_for_writereg;
                alu_card_for_ex<=alu_card;
                is_confict_with_mem1_for_ex<=is_confict_with_mem1;
                is_confict_with_mem2_for_ex<=is_confict_with_mem2;
                is_confict_with_ex1_for_ex<=is_confict_with_ex1;
                is_confict_with_ex2_for_ex<=is_confict_with_ex2;
                if (ismovz==1'b0) begin
                    wen_for_ex<=wen_for_inst_decoder;
                end 
                else begin
                    if (is_confict_with_ex2) begin
                        rdata2_for_movz=wdata_for_cu;
                    end
                    else if (is_confict_with_mem2&~is_confict_with_ex2) begin
                        rdata2_for_movz=(select_for_writereg_for_access==1'b0)?wdata_for_access:data_sram_rdata;
                    end
                    else if (is_confict_with_wb2&~is_confict_with_mem2&~is_confict_with_ex2) begin
                        rdata2_for_movz=wdata_for_regwb;
                    end
                    else begin
                        rdata2_for_movz=rdata2;
                    end
                    if (rdata2_for_movz==32'h00000000) begin
                        wen_for_ex<=1'b1;
                    end
                    else begin
                        wen_for_ex<=1'b0;
                    end
                end  
            end
        end
    end

endmodule
