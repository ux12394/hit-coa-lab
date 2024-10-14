`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/10/08 08:58:16
// Design Name: 
// Module Name: pc
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


module pc(
    input clk,
    input reset,
    input is_stop_pipeline,
    input jmp,
    input [31:0] next_pc,
    input [31:0] inst_decoder_pc,
    // input [31:0] pc_for_if,
    output reg [31:0] pre_pc,
    output inst_sram_en,
    output [31:0] inst_sram_addr
    );
    reg flag;
    reg [31:0] pc;
    integer temp;
    initial begin
        pre_pc=32'h00000000;
        temp=1;
    end
    assign inst_sram_en = (reset == 1'b1 & flag==1'b0) ? 1'b1 : 1'b0;
    assign inst_sram_addr = ({32{jmp}} & next_pc) | ({32{~jmp}} & (pc))|({32{is_stop_pipeline}}&(pc));

    always @(posedge clk) begin
        if (reset == 1'b0) begin
            pc <= 32'b0;
            flag<=0;
        end
        else if (flag==1'b0)  begin
            pre_pc<=pc;
            pc <= pc + 4;
            flag<=1'b1;
        end
        else if (flag==1'b1) begin
            flag<=1'b0;
            temp<=1;
        end
        if ((is_stop_pipeline)&temp) begin
            pc<=inst_decoder_pc+4;
            temp<=temp-1;
        end
    end
// reg [31:0] pc_temp;
// initial begin
//     pc_temp=32'h00000000;
// end

// always @(posedge clk) begin
//     inst_sram_en=1'b1;
//     if(reset==1'b1)begin
//         pc_temp=pc_temp+32'h00000004;
//     end
//     else if (reset==1'b0) begin
//         pc_temp<=32'h00000000;
//     end
//     inst_sram_addr<=pc_temp;
//     pc_for_if<=pc_temp;
//     if (jmp==1'b1) begin
//         inst_sram_addr<=next_pc;
//         pc_temp<=next_pc;
//         pc_for_if<=inst_sram_addr;
//     end
// end
endmodule
