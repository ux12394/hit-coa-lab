`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/10/08 09:22:38
// Design Name: 
// Module Name: inst_decode
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

module inst_decoder(
    input [31:0]        inst,//处理器待译码的指令
    input               clk,
    input               resetn,
    input [31:0]        pc,
    input [31:0] inst_for_ex,//inst_decoder译码结束后的指令，也就是ID-EX段输入的指令
    input inst_for_ex_isR,//该指令的isR
    input inst_for_ex_isI,//该指令的isI
    input inst_for_ex_isJ,//该指令的isJ
    input [4:0]inst_for_ex_waddr,//该指令写回地址
    input wen_for_ex,
    input [31:0] inst_for_mem,//cu执行完后的指令，也就是EX-mem输入的指令
    input inst_for_mem_isR,//该指令的isR
    input inst_for_mem_isI,//该指令的isI
    input inst_for_mem_isJ,//该指令的isJ
    input [4:0] inst_for_mem_waddr,//该指令写回地址
    input wen_for_mem,
    input [31:0] inst_for_wb,
    input inst_for_wb_isR,
    input inst_for_wb_isI,
    input inst_for_wb_isJ,
    input [4:0] inst_for_wb_waddr,
    input wen_for_wb,
    input is_nop,
    output reg[31:0]    pc_inst,
    output reg          isR,//是否是r指令
    output reg          isI,//是否是I指令
    output reg          isJ,//是否是J指令
    output reg[15:0]    offset,//偏移
    output reg[4:0]     waddr,//指令要写回的寄存器
    output reg          rden1,//指令是否要读寄存器1
    output reg[4:0]     raddr1,//指令要读的寄存器1
    output reg          rden2,//指令是否要读寄存器2
    output reg[4:0]     raddr2,//指令要读的寄存器2
    output reg          alu_en,//指令的结果是否为ALU的输出
    output reg[4:0]     alu_card,//ALU的操作码
    output reg          mem_rd,//指令是否需要读存储器
    output reg          mem_wr,//指令是否需要写存储器
    output reg          jmp,//指令是否会直接修改PC
    output reg          invalid,//输入的指令无法识别
    output reg [25:0]   instr_index,
    output reg [4:0]    sa,
    output reg  select_for_writereg,
    output reg [31:0]   inst_decoder_inst,
    output reg is_stop_pipeline,//是否需要暂停流水线

    //1是给rs，2是给rt
    output reg is_confict_with_ex1,//与ex段的指令存在冲突
    output reg is_confict_with_ex2,
    output reg is_confict_with_mem1,//与mem段的指令存在冲突
    output reg is_confict_with_mem2,
    output reg is_confict_with_wb1,
    output reg is_confict_with_wb2,
    output reg is_confict_between_lw_lw,
    output reg wen,//写实能
    output reg ismovz,//是否是movz指令
    output reg is_nop_inst
);
//移位指令暂时没有写
parameter [5:0] ALU=6'b000000;
parameter [5:0] SW=6'b101011;
parameter [5:0] LW=6'b100011;
parameter [5:0] J=6'b000010;
parameter [5:0] CMP=6'b111110;
parameter [5:0] BBT=6'b111111;

parameter [5:0] ADD=6'b100000;
parameter [5:0] SLL=6'b000000;
parameter [5:0] SUB=6'b100010;
parameter [5:0] AND=6'b100100;
parameter [5:0] OR=6'b100101;
parameter [5:0] XOR=6'b100110;
parameter [5:0] MOVZ=6'b001010;//条件移动



wire [4:0] rs;
wire [4:0] rt;
wire [4:0] rd;
wire [5:0] cal;//计算码
wire [5:0] op;//操作码
// wire [4:0] base;
wire inst_isR_for_confict;
wire inst_isI_for_confict;



initial begin
    isI<=0;
    isR<=0;
    isJ<=0;
    invalid<=1;
    waddr<=5'b00000;
    rden1<=0;
    raddr1<=5'b00000;
    rden2<=0;
    raddr2<=5'b00000;
    alu_en<=0;
    alu_card<=5'b00000;
    mem_rd<=0;
    mem_wr<=0;
    jmp<=0;
    invalid<=0;
    alu_card<=5'b00000;
    inst_decoder_inst<=32'h00000000;
    pc_inst<=32'h00000000;
    is_confict_with_ex1<=1'b0;
    is_confict_with_mem2<=1'b0;
    is_confict_with_mem1<=1'b0;
    is_confict_with_ex1<=1'b0;
    is_stop_pipeline<=1'b0;
    is_confict_between_lw_lw<=1'b0;
    wen<=1'b0;
    ismovz<=1'b0;
    is_nop_inst<=1'b0;
    // rs=5'b00000;
    // rt=5'b00000;
    // rd=5'b00000;
end
assign rs=inst[25:21];
assign rt=inst[20:16];
assign rd=inst[15:11];
assign op=inst[31:26];
// assign offset=inst[15:0];
assign cal=inst[5:0];
assign inst_isR_for_confict=(((op==ALU)&(inst!=32'h00000000))|op==CMP)?1'b1:1'b0;
assign inst_isI_for_confict=(op==LW|op==SW)?1'b1:1'b0;
always @(posedge clk) begin
    is_nop_inst<=is_nop;
    if ((resetn==1'b1)&(inst!=32'h00000000)) begin
        inst_decoder_inst<=inst;
        pc_inst<=pc;
        // op=inst[31:26];
        if(op==ALU)begin
            isR<=1;
            isI<=0;
            isJ<=0;
            offset<=16'h0000;
            // rs=inst[25:21];
            // rt=inst[20:16];
            // rd=inst[15:11];
            // cal=inst[5:0];
            waddr<=rd;
            rden1<=1;
            raddr1<=rs;
            rden2<=1;
            raddr2<=rt;
            mem_rd<=0;
            mem_wr<=0;
            jmp<=0;
            select_for_writereg<=0;
            wen<=(rd==5'b00000)?1'b0:1'b1;
            // base<=5'b00000;
            //加法
            if(cal==ADD)begin
                alu_card<=5'b00001;
                alu_en<=1'b1;
                invalid<=0;
                ismovz<=1'b0;
                sa<=5'b00000;
            end
            //减法
            else if(cal==SUB)begin
                alu_card<=5'b00011;
                alu_en<=1'b1;
                invalid<=0;
                ismovz<=1'b0;
                sa<=5'b00000;
            end
            //与
            else if(cal==AND)begin
                alu_card<=5'b01100;
                alu_en<=1;
                invalid<=0;
                ismovz<=1'b0;
                sa<=5'b00000;
            end
            //或
            else if(cal==OR)begin
                alu_card<=5'b01011;
                alu_en<=1'b1;
                invalid<=0;
                raddr2<=5'b01010;
                ismovz<=1'b0;
                sa<=5'b00000;
            end
            //异或
            else if (cal==XOR)begin
                alu_card<=5'b01110;
                alu_en<=1;
                invalid<=0;
                ismovz<=1'b0;
                sa<=5'b00000;
            end
            //条件移动
            else if (cal==MOVZ)begin
                alu_card<=5'b01010;
                alu_en=1;
                invalid=0;
                ismovz<=1'b1;
                sa<=5'b00000;
            end
            //移位
            else if (cal==SLL) begin
                alu_en<=1;
                sa<=inst[10:6];
                alu_card<=5'b10000;//重新定义移位，反正也没什么用最后6位
                invalid<=0;
                ismovz<=1'b0;
            end
            else begin
                invalid<=0;
                ismovz<=1'b0;
                sa<=5'b00000;
                alu_en<=1'b0;
                alu_card<=5'b00000;
            end
        end
        //存数
        else if (op==SW)begin
            isI<=1;
            isJ<=0;
            isR<=0;
            // rs=inst[25:21];
            // rt=inst[20:16];
            offset<=inst[15:0];
            // rs<=5'b00000;
            // rd=5'b00000;
            waddr<=5'b00000;
            sa<=5'b00000;
            rden1<=1;
            raddr1<=rs;
            rden2<=1;
            raddr2<=rt;
            alu_en<=0;
            alu_card<=5'b00000;
            mem_rd<=0;
            mem_wr<=1;
            jmp<=0;
            invalid<=0;
            wen<=1'b0;
            ismovz<=1'b0;
            select_for_writereg<=0;
            
        end
        //取数
        else if (op==LW)begin
            isI<=1;
            isJ<=0;
            isR<=0;
            // rs=inst[25:21];
            // rt=inst[20:16];
            offset<=inst[15:0];
            // rs=base;
            // rd=5'b00000;
            waddr<=rt;
            sa<=5'b00000;
            rden1<=1;
            raddr1<=rs;
            rden2<=0;
            raddr2<=5'b00000;
            alu_en<=0;
            alu_card<=5'b00000;
            mem_rd<=1;
            mem_wr<=0;
            select_for_writereg<=1;
            jmp<=0;
            invalid<=0;
            wen<=(rt==5'b00000)?1'b0:1'b1;
            ismovz<=1'b0;
        end
        //跳转
        else if (op==J)begin
            isI<=0;
            isR<=0;
            isJ<=1;
            instr_index<=inst[25:0];
            // rs=5'b00000;
            // rd=5'b00000;
            // rt=5'b00000;
            waddr<=5'b00000;
            sa<=5'b00000;
            rden1<=0;
            raddr1<=5'b00000;
            rden2<=0;
            raddr2<=5'b00000;
            alu_en<=0;
            alu_card<=5'b00000;
            mem_rd<=0;
            mem_wr<=0;
            jmp<=1'b1;
            invalid<=0;
            wen<=1'b0;
            ismovz<=1'b0;
            select_for_writereg<=0;
            // base=5'b00000;
        end
        //比较
        else if (op==CMP) begin
            isI<=0;
            isR<=1;
            isJ<=0;
            // rs=inst[25:21];
            // rt=inst[20:16];
            // rd=inst[15:11];
            waddr<=rd;
            rden1<=1;
            raddr1<=rs;
            sa<=5'b00000;
            rden2<=1;
            raddr2<=rt;
            alu_en<=0;
            mem_rd<=0;
            mem_wr<=0;
            jmp<=0;
            invalid=0;
            alu_card<=5'b00000;
            select_for_writereg<=0;
            wen<=1'b1;
            ismovz<=1'b0;
            // base=5'b00000;
        end
        //条件跳转
        else if (op==BBT) begin
            isI<=1;
            isR<=0;
            isJ<=0;
            // rs=inst[25:21];
            // rt=inst[20:16];
            offset<=inst[15:0];
            // rd=5'b00000;
            // rt=5'b00000;
            rden1<=1;
            raddr1<=rs;
            rden2<=0;
            raddr2<=rt;
            jmp<=1'b1;
            alu_en<=0;
            alu_card<=5'b00000;
            mem_rd<=1'b0;
            mem_wr<=1'b0;
            invalid<=0;
            waddr<=5'b00000;
            wen<=1'b0;
            ismovz<=1'b0;
            select_for_writereg<=0;
            sa<=5'b00000;
        end
        //不合格指令，复位
        else begin
            isI<=0;
            isR<=0;
            isJ<=0;
            invalid<=1;
            waddr<=5'b00000;
            rden1<=0;
            raddr1<=5'b00000;
            rden2<=0;
            // rs=5'b00000;
            // rd=5'b00000;
            // rt=5'b00000;
            raddr2<=5'b00000;
            alu_en<=0;
            mem_rd<=0;
            mem_wr<=0;
            jmp<=0;
            alu_card<=5'b00000;
            wen<=1'b0;
            ismovz<=1'b0;
            select_for_writereg<=0;
            sa<=5'b00000;
            // base=5'b00000;
        end
        //这里对于这条指令的译码已经结束，下面对数据冲突进行分析
        //LOAD互锁
        // inst_isR_for_confict=(op==ALU|op==CMP)?1'b1:1'b0;
        //没有考虑BBT
        // inst_isI_for_confict=(op==LW|op==SW)?1'b1:1'b0;
        if (inst_isR_for_confict&(inst_for_ex[31:26]==LW)&((inst_for_ex_waddr==rs&inst_for_ex_waddr!=5'b00000)|(inst_for_ex_waddr==rt&inst_for_ex_waddr!=5'b00000))) begin
            is_stop_pipeline<=1'b1;//暂停流水线
            is_confict_with_mem1<=(inst_for_ex_waddr==rs)?1'b1:1'b0;//从mem定向拿到数据
            is_confict_with_mem2<=(inst_for_ex_waddr==rt)?1'b1:1'b0;
            is_confict_with_ex1<=1'b0;
            is_confict_with_ex2<=1'b0;
            is_confict_with_wb1<=1'b0;
            is_confict_with_wb2<=1'b0;
            is_confict_between_lw_lw<=1'b0;
        end
        //处理LW-LW的冲突，特殊，不用暂停,由mem定向到ex-mem中
        else if ((op==LW)&(inst_for_ex[31:26]==LW)&((inst_for_ex_waddr==rs)&(inst_for_ex_waddr!=5'b00000))) begin
            is_stop_pipeline<=1'b0;//暂停流水线
            is_confict_with_mem1<=1'b0;//从mem定向拿到数据
            is_confict_with_mem2<=1'b0;
            is_confict_with_ex1<=1'b0;
            is_confict_with_ex2<=1'b0;
            is_confict_with_wb1<=1'b0;
            is_confict_with_wb2<=1'b0;
            is_confict_between_lw_lw<=1'b1;
        end
        // //只需要定向可以解决的问题
        // //id与ex段的RR型数据冲突
        // else if (inst_isR_for_confict&inst_for_ex_isR&((inst_for_ex_waddr==rs)|(inst_for_ex_waddr==rt))) begin
        //     is_confict_with_ex1<=(inst_for_ex_waddr==rs)?1'b1:1'b0;
        //     is_confict_with_ex2<=(inst_for_ex_waddr==rt)?1'b1:1'b0;
        //     is_confict_with_mem1<=1'b0;
        //     is_confict_with_mem2<=1'b0;
        //     is_stop_pipeline<=1'b0;
        //     is_confict_with_wb1<=1'b0;
        //     is_confict_with_wb2<=1'b0;
        // end
        // //id与ex段的IR类型数据冲突
        // else if (inst_isI_for_confict&inst_for_ex_isR&((inst_for_ex_waddr==base)|(inst_for_ex_waddr==rt))) begin
        //     is_confict_with_mem1<=1'b0;
        //     is_confict_with_mem2<=1'b0;
        //     is_stop_pipeline<=1'b0;
        //     is_confict_with_ex1<=(inst_for_ex_waddr==base)?1'b1:1'b0;
        //     is_confict_with_ex2<=(inst_for_ex_waddr==rt)?1'b1:1'b0;
        //     is_confict_with_wb1<=1'b0;
        //     is_confict_with_wb2<=1'b0;
        // end
        // //id-mem段的RR冲突
        // else if (inst_isR_for_confict&inst_for_mem_isR&((inst_for_mem_waddr==rs)|(inst_for_mem_waddr==rt))) begin
        //     is_confict_with_ex1<=1'b0;
        //     is_confict_with_ex2<=1'b0;
        //     is_confict_with_mem1<=(inst_for_mem_waddr==rs)?1'b1:1'b0;
        //     is_confict_with_mem2<=(inst_for_mem_waddr==rt)?1'b1:1'b0;
        //     is_stop_pipeline<=1'b0;
        //     is_confict_with_wb1<=1'b0;
        //     is_confict_with_wb2<=1'b0;
        // end
        // //id-mem段的RI冲突
        // else if (inst_isR_for_confict&(inst_for_mem[31:26]==LW)&((inst_for_mem_waddr==rs)|(inst_for_mem_waddr==rt))) begin
        //     is_confict_with_ex1<=1'b0;
        //     is_confict_with_ex2<=1'b0;
        //     is_confict_with_mem1<=(inst_for_mem_waddr==rs)?1'b1:1'b0;
        //     is_confict_with_mem2<=(inst_for_mem_waddr==rt)?1'b1:1'b0;
        //     is_stop_pipeline<=1'b0;
        //     is_confict_with_wb1<=1'b0;
        //     is_confict_with_wb2<=1'b0;
        // end
        // //id-mem段的IR冲突
        // else if (inst_isI_for_confict&inst_for_mem_isR&((inst_for_mem_waddr==base)|(inst_for_mem_waddr==rt))) begin
        //     is_confict_with_ex1<=1'b0;
        //     is_confict_with_ex2<=1'b0;
        //     is_confict_with_mem1<=(inst_for_mem_waddr==base)?1'b1:1'b0;
        //     is_confict_with_mem2<=(inst_for_mem_waddr==rt)?1'b1:1'b0;
        //     is_stop_pipeline<=1'b0;
        //     is_confict_with_wb1<=1'b0;
        //     is_confict_with_wb2<=1'b0;
        // end
        // //id-wb段的RR冲突
        // else if (inst_isR_for_confict&inst_for_wb_isR&((inst_for_wb_waddr==rs)|(inst_for_wb_waddr==rt))) begin
        //     is_confict_with_ex1<=1'b0;
        //     is_confict_with_ex2<=1'b0;
        //     is_confict_with_mem1<=1'b0;
        //     is_confict_with_mem2<=1'b0;
        //     is_stop_pipeline<=1'b0;
        //     is_confict_with_wb1<=(inst_for_wb_waddr==rs)?1'b1:1'b0;
        //     is_confict_with_wb2<=(inst_for_wb_waddr==rt)?1'b1:1'b0;
        // end
        // //id-wb段RI(lw)冲突
        // else if (inst_isR_for_confict&(inst_for_wb[31:26]==LW)&((inst_for_wb_waddr==rs)|(inst_for_wb_waddr==rt))) begin
        //     is_confict_with_ex1<=1'b0;
        //     is_confict_with_ex2<=1'b0;
        //     is_confict_with_mem1<=1'b0;
        //     is_confict_with_mem2<=1'b0;
        //     is_stop_pipeline<=1'b0;
        //     is_confict_with_wb1<=(inst_for_wb_waddr==rs)?1'b1:1'b0;
        //     is_confict_with_wb2<=(inst_for_wb_waddr==rt)?1'b1:1'b0;
        // end
        // //id-wb段的IR冲突
        // else if (inst_isI_for_confict&inst_for_wb_isR&((inst_for_wb_waddr==base)|(inst_for_wb_waddr==rt))) begin
        //     is_confict_with_ex1<=1'b0;
        //     is_confict_with_ex2<=1'b0;
        //     is_confict_with_mem1<=1'b0;
        //     is_confict_with_mem2<=1'b0;
        //     is_stop_pipeline<=1'b0;
        //     is_confict_with_wb1<=(inst_for_wb_waddr==base)?1'b1:1'b0;
        //     is_confict_with_wb2<=(inst_for_wb_waddr==rt)?1'b1:1'b0;
        // end
        // //id-ex,wb发生冲突
        // else if (inst_isR_for_confict&) begin 
        // end
        else begin
            is_stop_pipeline<=1'b0;
            //ex1缺少对于lw-lw判断
            is_confict_with_wb1<=((inst_for_wb_waddr==rs&inst_for_wb_waddr!=5'b00000)&wen_for_wb)?1'b1:1'b0;
            is_confict_with_wb2<=((inst_for_wb_waddr==rt&inst_for_wb_waddr!=5'b00000)&wen_for_wb)?1'b1:1'b0;
            is_confict_with_mem1<=((inst_for_mem_waddr==rs&inst_for_mem_waddr!=5'b00000)&wen_for_mem)?1'b1:1'b0;
            is_confict_with_mem2<=((inst_for_mem_waddr==rt&inst_for_mem_waddr!=5'b00000)&wen_for_mem)?1'b1:1'b0;
            is_confict_with_ex1<=((inst_for_ex_waddr==rs&inst_for_ex_waddr!=5'b00000)&wen_for_ex)?1'b1:1'b0;
            is_confict_with_ex2<=((inst_for_ex_waddr==rt&inst_for_ex_waddr!=5'b00000)&wen_for_ex)?1'b1:1'b0;
            is_confict_between_lw_lw<=1'b0;
        end
    end
    // else if (resetn==1'b1 & is_nop==1'b1) begin
    //     //nop
    //         isI<=0;
    //         isR<=0;
    //         isJ<=0;
    //         invalid<=0;
    //         waddr<=5'b00000;
    //         rden1<=0;
    //         raddr1<=5'b00000;
    //         rden2<=0;
    //         // rs=5'b00000;
    //         // rd=5'b00000;
    //         // rt=5'b00000;
    //         raddr2<=5'b00000;
    //         alu_en<=0;
    //         mem_rd<=0;
    //         mem_wr<=0;
    //         jmp<=0;
    //         alu_card<=5'b00000;
    //         wen<=1'b0;
    //         ismovz<=1'b0;
    // end
end

endmodule

