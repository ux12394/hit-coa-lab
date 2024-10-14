/*
 * @Author: S.H.Y 
 * @Date: 2024-10-08 15:21:15 
 * @Last Modified by:   S.H.Y 
 * @Last Modified time: 2024-10-08 15:21:15 
 */
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/10/08 08:53:00
// Design Name: 
// Module Name: your_cpu
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


module cpu(
    input           clk,                // 时钟信号
    input           resetn,             // 低有效复位信号

    output          inst_sram_en,       // 指令存储器读使能
    output[31:0]    inst_sram_addr,     // 指令存储器读地址
    input[31:0]     inst_sram_rdata,    // 指令存储器读出的数据

    output          data_sram_en,       // 数据存储器端口读/写使能
    output[3:0]     data_sram_wen,      // 数据存储器写使能      
    output[31:0]    data_sram_addr,     // 数据存储器读/写地址
    output[31:0]    data_sram_wdata,    // 写入数据存储器的数据
    input[31:0]     data_sram_rdata,    // 数据存储器读出的数据

    // 供自动测试环境进行CPU正确性检查
    output[31:0]    debug_wb_pc,        // 当前正在执行指令的PC
    output          debug_wb_rf_wen,    // 当前通用寄存器组的写使能信号
    output[4:0]     debug_wb_rf_wnum,   // 当前通用寄存器组写回的寄存器编号
    output[31:0]    debug_wb_rf_wdata   // 当前指令需要写回的数据
);
//取指变量
wire [31:0] pre_pc;
wire [31:0] npc;
wire [31:0] inst;
wire [31:0] pc_for_decoder;
wire [31:0] inst_for_decoder;
wire [31:0] inst_for_ex;
wire [31:0] inst_for_mem;
wire [31:0] inst_for_wb;
wire [31:0] pc_for_if;
wire is_nop;
//译码
wire isR;
wire isJ;
wire isI;
wire [15:0] offset;
wire [4:0] waddr;
wire rden1;
wire rden2;
wire [4:0] raddr1;
wire [4:0] raddr2;
wire [31:0] rdata1;
wire [31:0] rdata2;
wire alu_en;
wire [4:0] alu_card;
wire mem_rd;
wire mem_wr;
wire jmp;
wire invaild;
wire [25:0] instr_index;
wire [4:0] sa;
wire select_for_writereg;
wire [31:0] inst_decoder_inst;
wire [31:0] pc_inst;
wire is_stop_pipeline;
wire is_confict_with_ex1;
wire is_confict_with_ex2;
wire is_confict_with_mem1;
wire is_confict_with_mem2;
wire is_confict_with_wb1;
wire is_confict_with_wb2;
wire is_confict_between_lw_lw;
wire wen_for_inst_decoder;
wire ismovz;
wire is_nop_inst;
///ID/EX锁存器
wire isR_for_ex;
wire isJ_for_ex;
wire isI_for_ex;
wire [15:0] offset_for_ex;
wire [4:0] waddr_for_ex;
wire rden1_for_ex;
wire rden2_for_ex;
wire [4:0] raddr1_for_ex;
wire [4:0] raddr2_for_ex;
wire alu_en_for_ex;
wire [4:0] alu_card_for_ex;
wire mem_rd_for_ex;
wire mem_wr_for_ex;
wire jmp_for_ex;
wire invaild_for_ex;
wire [25:0] instr_index_for_ex;
wire [4:0] sa_for_ex;
wire select_for_writereg_for_ex;
wire [31:0] pc_for_ex;
wire [31:0] rdata1_for_ex;
wire [31:0] rdata2_for_ex;
wire wen_for_ex;
wire is_confict_between_lw_lw_for_ex;
wire is_confict_with_mem1_for_ex;
wire is_confict_with_mem2_for_ex;
wire is_confict_with_ex1_for_ex;
wire is_confict_with_ex2_for_ex;
// wire is_nop_for_ex;
//执行ex部件变量
wire [31:0] wdata;
wire wen_for_cu;
wire [31:0] npc_new;
wire [31:0] pc_for_cu;
wire [31:0] inst_for_cu ;
wire [31:0] rdata1_for_cu;
wire mem_rd_for_cu;
wire mem_wr_for_cu;
wire [4:0] waddr_for_cu;
wire [15:0] offset_for_cu;
wire select_for_writereg_for_cu;
wire isR_for_cu;
wire isI_for_cu;
wire isJ_for_cu;
wire is_confict_between_lw_lw_for_cu;

//ex-mem锁存器变量
wire [31:0] rdata1_for_mem;
wire mem_rd_mem;
wire mem_wr_mem;
wire [4:0] waddr_for_mem;
wire [31:0] wdata_for_mem;
wire wen_for_mem;
wire [15:0] offset_for_mem;
wire [31:0] pc_for_mem;
wire select_for_writereg_for_mem;
wire isR_for_mem;
wire isI_for_mem;
wire isJ_for_mem;
wire is_confict_between_lw_lw_for_mem;
//access模块变量
wire [31:0]   wdata_for_access;
wire [31:0]   inst_for_access;
wire [31:0]   pc_for_access;
wire wen_for_access;
wire [4:0]    waddr_for_access;
wire select_for_writereg_for_access;
wire isI_for_access;
wire isR_for_access;
wire isJ_for_access;


//mem_wb锁存器设置
wire [31:0] wdata_for_wb;
wire [31:0] data_sram_rdata_for_wb;
wire select_for_writereg_for_wb;
wire wen_for_wb;
wire [4:0] waddr_for_wb;
wire [31:0] pc_for_wb;
wire isI_for_wb;
wire isR_for_wb;
wire isJ_for_wb;
wire [4:0] waddr_for_regwb;
wire [31:0] wdata_for_regwb;

wire [31:0] wdata_for_mem1;
reg flag;
reg reg_debug_wb_rf_wen; // 写回使能寄存器
assign debug_wb_rf_wen=reg_debug_wb_rf_wen;
initial begin
    reg_debug_wb_rf_wen=1'b0;
    flag=1'b1;
end
///////////////第一段流水
//取指--clk
// assign pc_for_if=inst_sram;
pc my_pc(
    .clk(clk),
    .reset(resetn),
    .is_stop_pipeline(is_stop_pipeline),
    .inst_decoder_pc(pc_inst),
    .next_pc(npc),
    .jmp(jmp),
    .pre_pc(pre_pc),
    .inst_sram_en(inst_sram_en),
    .inst_sram_addr(inst_sram_addr)
);
//送入译码同时送入IF/ID锁存器--clk
IF_ID my_if_id(
    .clk(clk),
    .resetn(resetn),
    .inst(inst_sram_rdata),
    .pc(pre_pc),
    .decoder_inst(inst_decoder_inst),
    .decoder_pc(pc_inst),
    .is_stop_pipeline(is_stop_pipeline),
    .pc_for_decoder(pc_for_decoder),
    .inst_for_decoder(inst_for_decoder),
    .is_nop(is_nop)
);
///////////////第二段流水
inst_decoder my_inst_decode(
    .inst(inst_for_decoder),
    .clk(clk),
    .resetn(resetn),
    .is_nop(is_nop),
    .pc(pc_for_decoder),
    .pc_inst(pc_inst),
    .inst_for_ex(inst_for_ex),
    .inst_for_ex_isR(isR_for_ex),
    .inst_for_ex_isI(isI_for_ex),
    .inst_for_ex_isJ(isJ_for_ex),
    .inst_for_ex_waddr(waddr_for_ex),
    .wen_for_ex(wen_for_ex),///写实能给的有问题，晚给了一个周期，和movz有关，提前判断movz，在译码给出使能信号，同时id-ex判断movz是否写回，需要一个信号说明是movz命令
    .inst_for_mem(inst_for_mem),
    .inst_for_mem_isR(isR_for_mem),
    .inst_for_mem_isI(isI_for_mem),
    .inst_for_mem_isJ(isJ_for_mem),
    .inst_for_mem_waddr(waddr_for_mem),
    .wen_for_mem(wen_for_mem),
    .inst_for_wb(inst_for_wb),
    .inst_for_wb_isR(isR_for_wb),
    .inst_for_wb_isI(isI_for_wb),
    .inst_for_wb_isJ(isJ_for_wb),
    .inst_for_wb_waddr(waddr_for_wb),
    .wen_for_wb(wen_for_wb),
    .isI(isI),
    .isJ(isJ),
    .isR(isR),
    .offset(offset),
    .waddr(waddr),
    .rden1(rden1),
    .rden2(rden2),
    .raddr1(raddr1),
    .raddr2(raddr2),
    .alu_en(alu_en),
    .alu_card(alu_card),
    .mem_rd(mem_rd),
    .mem_wr(mem_wr),
    .jmp(jmp),
    .invalid(invaild),
    .instr_index(instr_index),
    .sa(sa),
    .select_for_writereg(select_for_writereg),
    .inst_decoder_inst(inst_decoder_inst),
    .is_stop_pipeline(is_stop_pipeline),
    .is_confict_with_ex1(is_confict_with_ex1),
    .is_confict_with_ex2(is_confict_with_ex2),
    .is_confict_with_mem1(is_confict_with_mem1),
    .is_confict_with_mem2(is_confict_with_mem2),
    .is_confict_with_wb1(is_confict_with_wb1),
    .is_confict_with_wb2(is_confict_with_wb2),
    .is_confict_between_lw_lw(is_confict_between_lw_lw),
    .wen(wen_for_inst_decoder),
    .ismovz(ismovz),
    .is_nop_inst(is_nop_inst)
);
Reg my_reg(
    .raddr1(raddr1),
    .raddr2(raddr2),
    .rdata1(rdata1),
    .rdata2(rdata2),
    .we(reg_debug_wb_rf_wen),
    .resetn(resetn),
    .waddr(waddr_for_regwb),
    .wdata(wdata_for_regwb)
);
//提前计算pc计算并判断pc值，组合逻辑
Mux_pc my_mux_pc(
    .pc(pc_inst),
    .jmp(jmp),
    .inst(inst_decoder_inst),
    .isI(isI),
    .isJ(isJ),
    .rdata1(rdata1),
    .npc_new(npc)
);
//组合逻辑判断其他段流水情况

//送入执行同时送入ID/EX锁存器--clk
ID_EX my_id_ex(
    .clk(clk),
    .inst(inst_decoder_inst),
    .is_nop(is_nop_inst),
    // .is_nop_for_ex(is_nop_for_ex),
    .inst_for_ex(inst_for_ex),
    .wen_for_inst_decoder(wen_for_inst_decoder),
    .ismovz(ismovz),
    .wen_for_ex(wen_for_ex),
    .pc(pc_inst),
    .pc_for_ex(pc_for_ex),
    .resetn(resetn),
    .isI(isI),
    .isI_for_ex(isI_for_ex),
    .isJ(isJ),
    .isJ_for_ex(isJ_for_ex),
    .isR(isR),
    .isR_for_ex(isR_for_ex),
    .offset(offset),
    .offset_for_ex(offset_for_ex),
    .waddr(waddr),
    .waddr_for_ex(waddr_for_ex),
    .rden1(rden1),
    .rden1_for_ex(rden1_for_ex),
    .rden2(rden2),
    .rden2_for_ex(rden2_for_ex),
    .raddr1(raddr1),
    .raddr1_for_ex(raddr1_for_ex),
    .raddr2(raddr2),
    .raddr2_for_ex(raddr2_for_ex),
    .rdata1(rdata1),
    .rdata1_for_ex(rdata1_for_ex),
    .rdata2(rdata2),
    .rdata2_for_ex(rdata2_for_ex),
    .alu_en(alu_en),
    .alu_en_for_ex(alu_en_for_ex),
    .alu_card(alu_card),
    .alu_card_for_ex(alu_card_for_ex),
    .mem_rd(mem_rd),
    .mem_rd_for_ex(mem_rd_for_ex),
    .mem_wr(mem_wr),
    .mem_wr_for_ex(mem_wr_for_ex),
    .jmp(jmp),
    .jmp_for_ex(jmp_for_ex),
    .invalid(invaild),
    .invalid_for_ex(invaild_for_ex),
    .instr_index(instr_index),
    .instr_index_for_ex(instr_index_for_ex),
    .sa(sa),
    .sa_for_ex(sa_for_ex),
    .select_for_writereg(select_for_writereg),
    .select_for_writereg_for_ex(select_for_writereg_for_ex),
    .is_stop_pipeline(is_stop_pipeline),
    .is_confict_with_ex1(is_confict_with_ex1),
    .is_confict_with_ex2(is_confict_with_ex2),
    .is_confict_with_ex1_for_ex(is_confict_with_ex1_for_ex),
    .is_confict_with_ex2_for_ex(is_confict_with_ex2_for_ex),
    .is_confict_with_mem1(is_confict_with_mem1),
    .is_confict_with_mem2(is_confict_with_mem2),
    .is_confict_with_mem1_for_ex(is_confict_with_mem1_for_ex),
    .is_confict_with_mem2_for_ex(is_confict_with_mem2_for_ex),
    .is_confict_with_wb1(is_confict_with_wb1),
    .is_confict_with_wb2(is_confict_with_wb2),
    .is_confict_between_lw_lw(is_confict_between_lw_lw),
    .is_confict_between_lw_lw_for_ex(is_confict_between_lw_lw_for_ex),
    .wdata_for_regwb(wdata_for_regwb),
    .wdata_for_cu(wdata),
    .wdata_for_access(wdata_for_access),
    .data_sram_rdata(data_sram_rdata),
    .select_for_writereg_for_access(select_for_writereg_for_access)
);

//由于data_sram_rdata会有一个周期延迟，所以所有与mem段冲突的指令一旦select_for_writereg_for_access=1必须重新在cu中定向
//前面的不想改了
CU my_cu(
    .clk(clk),
    .resetn(resetn),
    .pc(pc_for_ex),
    .inst(inst_for_ex),
    .inst_for_cu(inst_for_cu),
    .pc_for_cu(pc_for_cu),
    .offset(offset_for_ex),
    .offset_for_cu(offset_for_cu),
    .select_for_writereg_for_cu(select_for_writereg_for_cu),
    .select_for_writereg(select_for_writereg_for_ex),
    .isR(isR_for_ex),
    .isR_for_cu(isR_for_cu),
    .isI(isI_for_ex),
    .isI_for_cu(isI_for_cu),
    .isJ(isJ_for_ex),
    .isJ_for_cu(isJ_for_cu),
    .raddr1(raddr1_for_ex),
    .raddr2(raddr2_for_ex),
    .alu_en(alu_en_for_ex),
    .alu_card(alu_card_for_ex),
    .mem_rd(mem_rd_for_ex),
    .mem_rd_for_cu(mem_rd_for_cu),
    .mem_wr_for_cu(mem_wr_for_cu),
    .rdata1_for_cu(rdata1_for_cu),
    .waddr_for_cu(waddr_for_cu),
    .mem_wr(mem_wr_for_ex),
    .jmp(jmp_for_ex),
    .sa(sa_for_ex),
    .rdata1(rdata1_for_ex),
    .rdata2(rdata2_for_ex),
    .instr_index(instr_index_for_ex),
    .waddr(waddr_for_ex),
    .wdata(wdata),
    .wen(wen_for_ex),
    .wen_for_cu(wen_for_cu),
    .is_confict_between_lw_lw(is_confict_between_lw_lw_for_ex),
    .is_confict_between_lw_lw_for_cu(is_confict_between_lw_lw_for_cu),
    .is_confict_with_ex1(is_confict_with_ex1_for_ex),
    .is_confict_with_ex2(is_confict_with_ex2_for_ex),
    .is_confict_with_mem1(is_confict_with_mem1_for_ex),
    .is_confict_with_mem2(is_confict_with_mem2_for_ex),
    .select_for_writereg_from_wb(select_for_writereg_for_wb),
    .data_sram_rdata(data_sram_rdata)
);

//送入访存同时送入EX/Mem锁存器 -clk
//添加一个定向lw-lw只有这个指令需要了
EX_Mem my_ex_mem(
    .inst(inst_for_cu),
    .pc(pc_for_cu),
    .clk(clk),
    .rdata1(rdata1_for_cu),
    .mem_wr(mem_wr_for_cu),
    .mem_rd(mem_rd_for_cu),
    .waddr(waddr_for_cu),
    .wdata(wdata),
    .wen(wen_for_cu),
    .isI(isI_for_cu),
    .isR(isR_for_cu),
    .isJ(isJ_for_cu),
    .isI_for_mem(isI_for_mem),
    .isJ_for_mem(isJ_for_mem),
    .isR_for_mem(isR_for_mem),
    .offset(offset_for_cu),
    .inst_for_mem(inst_for_mem),
    .pc_for_mem(pc_for_mem),
    .rdata1_for_mem(rdata1_for_mem),
    .mem_rd_mem(mem_rd_mem),
    .mem_wr_mem(mem_wr_mem),
    .waddr_for_mem(waddr_for_mem),
    .wdata_for_mem(wdata_for_mem),
    .wen_for_mem(wen_for_mem),
    .offset_for_mem(offset_for_mem),
    .select_for_writereg_for_ex(select_for_writereg_for_cu),
    .select_for_writereg_for_mem(select_for_writereg_for_mem),
    .is_confict_between_lw_lw(is_confict_between_lw_lw_for_cu),
    .data_sram_rdata(data_sram_rdata),
    .is_confict_between_lw_lw_for_mem(is_confict_between_lw_lw_for_mem)
);
// Wdata_for_mem_late my_mem_late(
//     .clk(clk),
//     .resetn(resetn),
//     .wdata_for_mem(wdata),
//     .wdata_for_mem1(wdata_for_mem1)
// );

access my_access(
    .wdata(wdata_for_mem),
    .clk(clk),
    .resetn(resetn),
    .basedata(rdata1_for_mem),
    .offset(offset_for_mem),
    .mem_rd(mem_rd_mem),
    .mem_wr(mem_wr_mem),
    .inst(inst_for_mem),
    .pc(pc_for_mem),
    .wen(wen_for_mem),
    .waddr(waddr_for_mem),
    .select_for_writereg(select_for_writereg_for_mem),
    .select_for_writereg_for_access(select_for_writereg_for_access),
    .wdata_for_access(wdata_for_access),
    .inst_for_access(inst_for_access),
    .pc_for_access(pc_for_access),
    .wen_for_access(wen_for_access),
    .waddr_for_access(waddr_for_access),
    .data_sram_en(data_sram_en),
    .data_sram_wen(data_sram_wen),
    .data_sram_addr(data_sram_addr),
    .data_sram_wdata(data_sram_wdata),
    .isI(isI_for_mem),
    .isJ(isJ_for_mem),
    .isR(isR_for_mem),
    .isI_for_access(isI_for_access),
    .isR_for_access(isR_for_access),
    .isJ_for_access(isJ_for_access),
    .is_confict_between_lw_lw(is_confict_between_lw_lw_for_mem),
    .data_sram_rdata(data_sram_rdata)
);
//送入写回同时送入--clk
Mem_WB my_mem_wb(
    .inst(inst_for_access),
    // .data_sram_rdata(data_sram_rdata),
    // .data_sram_rdata_for_wb(data_sram_rdata_for_wb),
    .clk(clk),
    .wdata(wdata_for_access),
    .pc(pc_for_access),
    .wen(wen_for_access),
    .waddr(waddr_for_access),
    .inst_for_wb(inst_for_wb),
    .wen_for_wb(wen_for_wb),
    .waddr_for_wb(waddr_for_wb),
    .wdata_for_wb(wdata_for_wb),
    .pc_for_wb(pc_for_wb),
    .select_for_writereg_for_mem(select_for_writereg_for_access),
    .select_for_writereg_for_wb(select_for_writereg_for_wb),
    .isI(isI_for_access),
    .isR(isR_for_access),
    .isJ(isJ_for_access),
    .isI_for_wb(isI_for_wb),
    .isR_for_wb(isR_for_wb),
    .isJ_for_wb(isJ_for_wb)
);

Write_back my_write_back(
    .clk(clk),
    .select_for_writereg_for_wb(select_for_writereg_for_wb),
    .data_sram_rdata_for_wb(data_sram_rdata),
    .resetn(resetn),
    .pc(pc_for_wb),
    // .wen(wen_for_wb),
    .waddr(waddr_for_wb),
    .wdata(wdata_for_wb),
    .debug_wb_pc(debug_wb_pc),
    .debug_wb_rf_wdata(debug_wb_rf_wdata),
    // .debug_wb_rf_wen(wen_for_wb_last),
    .debug_wb_rf_wnum(debug_wb_rf_wnum),
    .waddr_for_regwb(waddr_for_regwb),
    .wdata_for_regwb(wdata_for_regwb)
);
always @(posedge clk ) begin
    if (resetn) begin
        if (flag==1'b0) begin
            // reg_debug_wb_rf_wen=((pc_for_wb!=32'h00000000&waddr_for_wb!=5'b00000)|(pc_for_wb==32'h00000000&waddr_for_wb!=5'b00000)|(pc_for_wb!=32'h00000000&waddr_for_wb==5'b00000))?wen_for_wb:1'b0;
            reg_debug_wb_rf_wen<=wen_for_wb;
            flag=1'b1;
        end
        else begin
            flag=1'b0;
            reg_debug_wb_rf_wen=1'b0;
        end    
    end
end
endmodule
