`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/10/08 17:15:58
// Design Name: 
// Module Name: Reg
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


// module Reg(

//     );
// endmodule
module Reg(
    input we,
    input resetn,
    input[4:0] raddr1,
    input[4:0] raddr2,
    input[4:0] waddr,
    input[31:0] wdata,
    output[31:0] rdata1,
    output[31:0] rdata2
);

    reg [31:0] regheap[31:0]; 
    integer i;

    //等时钟信号才写（同步写）
    always @(*) begin
        // 初始化寄存器堆
        if(resetn == 0) begin
            for (i=0;i<32;i=i+1) begin
                regheap[i] <= 32'b0;
            end
        end
        else begin
            if (we && waddr!=5'b00000) begin
                regheap[waddr] <= wdata; 
            end
        end
    end

    // 异步读（不需要再用always块）,这里是组合逻辑
    assign rdata1 = (raddr1==5'b0) ? 32'b0: regheap[raddr1];
    assign rdata2 = (raddr2==5'b0) ? 32'b0: regheap[raddr2];

endmodule
