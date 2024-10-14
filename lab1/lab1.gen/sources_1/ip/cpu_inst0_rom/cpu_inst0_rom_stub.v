// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Tue Oct  8 21:35:08 2024
// Host        : LAPTOP-K550ROTT running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top cpu_inst0_rom -prefix
//               cpu_inst0_rom_ cpu_inst0_rom_stub.v
// Design      : cpu_inst0_rom
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a200tfbg676-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "dist_mem_gen_v8_0_13,Vivado 2019.2" *)
module cpu_inst0_rom(a, spo)
/* synthesis syn_black_box black_box_pad_pin="a[4:0],spo[31:0]" */;
  input [4:0]a;
  output [31:0]spo;
endmodule
