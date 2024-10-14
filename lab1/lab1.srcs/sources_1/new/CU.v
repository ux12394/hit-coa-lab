`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/10/08 15:28:22
// Design Name: 
// Module Name: CU
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


module CU(
    input clk,
    input [31:0] pc,
    input [31:0] inst,
    input resetn,
    input isR,
    input isI,
    input isJ,
    input [4:0] raddr1,
    input [4:0] raddr2,
    input alu_en,
    input [4:0] alu_card,
    input mem_rd,
    input mem_wr,
    input jmp,
    input [4:0] sa,
    input [31:0] rdata1,
    input [31:0] rdata2,
    input [25:0] instr_index,
    input [4:0]  waddr,
    input [15:0] offset,
    input select_for_writereg,
    input wen,
    input is_confict_between_lw_lw,
    input is_confict_with_ex1,
    input is_confict_with_ex2,
    input is_confict_with_mem1,
    input is_confict_with_mem2,
    input [31:0] data_sram_rdata,
    input select_for_writereg_from_wb,
    output reg is_confict_between_lw_lw_for_cu,
    output reg [31:0] wdata,
    output reg wen_for_cu,
    output reg isR_for_cu,
    output reg isI_for_cu,
    output reg isJ_for_cu,
    output reg [31:0]pc_for_cu,
    output reg [31:0] inst_for_cu,
    output reg [31:0] rdata1_for_cu,
    output reg mem_wr_for_cu,
    output reg mem_rd_for_cu,
    output reg [4:0] waddr_for_cu,
    output reg [15:0] offset_for_cu,    
    output reg select_for_writereg_for_cu
    );

parameter [4:0] ADD=5'b00001;
parameter [4:0] SUB=5'b00011;
parameter [4:0] AND=5'b01100;
parameter [4:0] OR=5'b01011;
parameter [4:0] XOR=5'b01110;
parameter [4:0] MOVZ=5'b01010;
parameter [4:0] SLL =5'b10000;

initial begin
    wdata=32'h00000000;
    wen_for_cu=1'b0;
    inst_for_cu=32'h00000000;
    rdata1_for_cu=32'h00000000;
    mem_rd_for_cu=1'b0;
    mem_wr_for_cu=1'b0;
    waddr_for_cu=5'b00000;
    offset_for_cu=16'h0000;
    select_for_writereg_for_cu=1'b0;
    isR_for_cu=1'b0;
    isJ_for_cu=1'b0;
    isI_for_cu=1'b0;
    is_confict_between_lw_lw_for_cu=1'b0;
end
//删去
// reg wen;
reg [31:0] rdata1_unsigned;
reg [31:0] rdata2_unsigned;
wire [31:0] rdata1_true;
wire [31:0] rdata2_true;

assign rdata1_true=(is_confict_with_mem1&~is_confict_with_ex1&~is_confict_with_mem2&select_for_writereg_from_wb)?data_sram_rdata:rdata1;
assign rdata2_true=(is_confict_with_mem2&~is_confict_with_ex2&~is_confict_with_mem1&select_for_writereg_from_wb)?data_sram_rdata:rdata2;
always @(posedge clk) begin
    if (resetn==1'b0) begin
        wdata=32'h00000000;
        wen_for_cu<=1'b0;
        wen_for_cu<=wen;
        isR_for_cu<=isR;
        isI_for_cu<=isI;
        isJ_for_cu<=isJ;
        pc_for_cu<=pc;
        inst_for_cu<=inst;
        rdata1_for_cu<=rdata1;
        mem_rd_for_cu<=mem_rd;
        mem_wr_for_cu<=mem_wr;
        waddr_for_cu<=waddr;
        offset_for_cu<=offset;
        select_for_writereg_for_cu<=select_for_writereg;
        rdata1_unsigned=$unsigned(rdata1_true);
        rdata2_unsigned=$unsigned(rdata2_true);
        is_confict_between_lw_lw_for_cu<=is_confict_between_lw_lw;
    end
    //重新测试rdata1/rdata2可能由于是来自data_sram_rdata导致出错
    // if (is_confict_with_mem1&~is_confict_with_ex1&~is_confict_with_mem2) begin
    //     if (select_for_writereg_from_wb) begin
    //         rdata1_true=data_sram_rdata;
    //         rdata2_true=rdata2;
    //     end
    //     else begin
    //         rdata1_true=rdata1;
    //         rdata2_true=rdata2;
    //     end
    // end
    // else if (is_confict_with_mem2&~is_confict_with_ex2&is_confict_with_mem1) begin
    //     if (select_for_writereg_from_wb) begin
    //         rdata2_true=data_sram_rdata;
    //         rdata1_true=rdata1;
    //     end
    //     else begin
    //         rdata2_true=rdata2;
    //         rdata1_true=rdata1;
    //     end
    // end
    // else if (is_confict_with_mem2&is_confict_with_mem1&~is_confict_with_ex1&~is_confict_with_ex1) begin
    //     if (select_for_writereg_from_wb) begin
    //         rdata1_true=data_sram_rdata;
    //         rdata2_true=data_sram_rdata;
    //     end
    //     else begin
    //         rdata1_true=rdata1;
    //         rdata2_true=rdata2;
    //     end
    // end
    else begin
        wen_for_cu<=wen;
        isR_for_cu<=isR;
        isI_for_cu<=isI;
        isJ_for_cu<=isJ;
        pc_for_cu<=pc;
        inst_for_cu<=inst;
        rdata1_for_cu<=rdata1;
        mem_rd_for_cu<=mem_rd;
        mem_wr_for_cu<=mem_wr;
        waddr_for_cu<=waddr;
        offset_for_cu<=offset;
        select_for_writereg_for_cu<=select_for_writereg;
        rdata1_unsigned=$unsigned(rdata1_true);
        rdata2_unsigned=$unsigned(rdata2_true);
        is_confict_between_lw_lw_for_cu<=is_confict_between_lw_lw;
        //R型指令
        //可能是ALU指令，还有条件转移，比较
        if (isR) begin
            //先解决ALU和条件转移计算问题
            if (alu_en) begin
                if (alu_card==ADD) begin
                    wdata<=rdata1_true+rdata2_true;
                end
                else if (alu_card==SUB) begin
                    wdata<=rdata1_true-rdata2_true;
                end
                else if (alu_card==AND) begin
                    wdata<=rdata1_true&rdata2_true;
                end
                else if (alu_card==OR) begin
                    wdata<=rdata1_true|rdata2_true;
                end
                else if(alu_card==XOR) begin
                    wdata<=rdata1_true^rdata2_true;
                end
                else if (alu_card==MOVZ) begin
                    if (rdata2_true==0) begin
                        wdata<=rdata1_true;
                    end
                end
                else if (alu_card==SLL) begin
                    wdata<=rdata2_true<<sa;
                end
            end
            //比较
            else begin
                wdata[0]=(rdata1_true==rdata2_true)?1:0;
                wdata[2]=(rdata1_unsigned<rdata2_unsigned)?1:0;
                wdata[1]=($signed(rdata1_true)<$signed(rdata2_true))?1:0;
                wdata[4]=(rdata1_unsigned<=rdata2_unsigned)?1:0;
                wdata[3]=($signed(rdata1_true)<=$signed(rdata2_true))?1:0;
                wdata[9:5]=~wdata[4:0];
                wdata<={22'b0,wdata[9:0]};
            end   
        end
        //I型指令
        else if (isI) begin
            //存数，取数,条件跳转
            if (mem_rd) begin
                wdata<=32'h00000000;
            end
            else if (mem_wr) begin
                wdata<=rdata2_true;
            end
        end
        else begin
            wdata<=32'h00000000;
        end
    end
    
end

endmodule

