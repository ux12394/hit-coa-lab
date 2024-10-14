`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/10/08 20:50:11
// Design Name: 
// Module Name: Write_back
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


module Write_back(
    input clk,
    input resetn,
    input [31:0] pc,
    // input wen,
    input [4:0] waddr,
    input [31:0] wdata,
    input select_for_writereg_for_wb,
    input [31:0] data_sram_rdata_for_wb,
    output reg [31:0] debug_wb_pc,
    // output reg  debug_wb_rf_wen,
    output reg [4:0] debug_wb_rf_wnum,
    output reg [31:0] debug_wb_rf_wdata,
    output reg [4:0] waddr_for_regwb,
    output reg [31:0] wdata_for_regwb
    );
    // Reg reg_wb(
    //     .clk(clk),
    //     .we(wen),
    //     .resetn(resetn),
    //     .waddr(waddr),
    //     .wdata((select_for_writereg_for_wb==1'b1)?wdata:data_sram_rdata_for_wb)
    // );
    initial begin
        debug_wb_pc=32'h00000000;
        // debug_wb_rf_wen=1'b0;
        debug_wb_rf_wnum=5'b00000;
        debug_wb_rf_wdata=32'h00000000;
    end
    always @(posedge clk) begin
        if (resetn==1'b1) begin
            debug_wb_pc<=pc;
            debug_wb_rf_wdata<=(select_for_writereg_for_wb==1'b0)?wdata:data_sram_rdata_for_wb;
            // debug_wb_rf_wen=wen;
            debug_wb_rf_wnum<=waddr;
            waddr_for_regwb<=waddr;
            wdata_for_regwb<=(select_for_writereg_for_wb==1'b0)?wdata:data_sram_rdata_for_wb;
        end
    end
endmodule
