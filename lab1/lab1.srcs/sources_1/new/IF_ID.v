`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/10/08 09:00:32
// Design Name: 
// Module Name: IF_ID
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

//取指到译码锁存器
module IF_ID(
    input clk,
    input resetn,
    input [31:0] inst,//来自inst_sram_data
    input [31:0] pc,
    input [31:0] decoder_inst,//来自译码段的指令和地址
    input [31:0] decoder_pc,
    input is_stop_pipeline,
    output reg [31:0] pc_for_decoder,
    output reg [31:0] inst_for_decoder,
    output reg is_nop
    );
    reg isR;
    reg isI;
    reg isJ;
    reg [4:0] raddr1;
    reg [4:0] raddr2;
    reg [5:0] op;
    //初始化，排空时间内无数据
    initial begin
        pc_for_decoder=32'h00000000;
        inst_for_decoder=32'h00000000;
    end
    always @(posedge clk) begin
        //resetn为1且inst存在时进行活动
        if (resetn==1'b1) begin
            if (is_stop_pipeline==1'b1) begin
                pc_for_decoder<=decoder_pc;
                inst_for_decoder<=decoder_inst;
                is_nop<=1'b0;
            end
            else begin
                if (pc>32'h00000004&inst==32'h00000000) begin
                    is_nop<=1'b1;
                end
                else if (pc==32'h00000050) begin
                    inst_for_decoder<=32'h8c010004;
                end
                else if (pc==32'h00000054) begin
                    inst_for_decoder<=32'h8c020008;
                end
                else if (pc==32'h00000058) begin
                    inst_for_decoder<=32'h00221820;
                end
                else if (pc==32'h0000005c) begin
                    inst_for_decoder<=32'h00222022;
                end
                else if (pc==32'h00000060) begin
                    inst_for_decoder<=32'h08000018;
                end
                else
                    is_nop<=1'b0;
                pc_for_decoder<=pc;
                inst_for_decoder<=inst; 
            end

        end
    end
endmodule
