`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/10/08 20:26:26
// Design Name: 
// Module Name: access
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

module access(
    input [31:0] wdata,
    input [31:0] inst,
    input [31:0] pc,
    input wen,
    input [4:0] waddr,
    input clk,
    input resetn,
    input [31:0] basedata,
    input [15:0] offset,
    input mem_rd,
    input mem_wr,
    input select_for_writereg,
    input isI,
    input isR,
    input isJ,
    input is_confict_between_lw_lw,
    input [31:0] data_sram_rdata,
    output reg isI_for_access,
    output reg isJ_for_access,
    output reg isR_for_access,
    output reg select_for_writereg_for_access,
    output reg [31:0]   wdata_for_access,
    output reg [31:0]   inst_for_access,
    output reg [31:0]   pc_for_access,
    output reg          wen_for_access,
    output reg [4:0]    waddr_for_access,
    output reg          data_sram_en,       // 数据存储器端口读
    output reg[3:0]     data_sram_wen,      // 数据存储器写使能      
    output reg[31:0]    data_sram_addr,     // 数据存储器读/写地址
    output reg[31:0]    data_sram_wdata    // 写入数据存储器的数据
    );

    initial begin
        data_sram_en=1'b0;
        data_sram_wen=4'b0000;
        data_sram_addr=32'h00000000;
        data_sram_wdata=32'h00000000;
        wdata_for_access=32'h00000000;
        inst_for_access=32'h00000000;
        pc_for_access=32'h00000000;
        wen_for_access=1'b0;
        waddr_for_access=5'b00000;
        select_for_writereg_for_access=1'b0;
        isJ_for_access<=1'b0;
        isR_for_access<=1'b0;
        isI_for_access<=1'b0;
    end
    reg [31:0] base;
always @(posedge clk) begin
    //读取
    if (resetn) begin
        wdata_for_access<=wdata;
        inst_for_access<=inst;
        pc_for_access<=pc;
        wen_for_access<=wen;
        waddr_for_access<=waddr;
        select_for_writereg_for_access<=select_for_writereg;
        isI_for_access<=isI;
        isJ_for_access<=isJ;
        isR_for_access<=isR;
        base=(is_confict_between_lw_lw==1'b1)?data_sram_rdata:basedata;
        if (mem_rd) begin
            data_sram_en<=1'b1;
            data_sram_wen<=4'b0000;
            data_sram_addr<=base+offset;
            data_sram_wdata<=32'h00000000;
        end
        //写回存储器
        else if (mem_wr) begin
            data_sram_en<=1'b1;
            data_sram_wen<=4'b1111;
            data_sram_addr<=basedata+offset;
            data_sram_wdata<=wdata;
        end
        else begin
            data_sram_en<=1'b0;
        end
    end
end
endmodule
