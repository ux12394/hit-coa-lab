// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Tue Oct  8 21:35:08 2024
// Host        : LAPTOP-K550ROTT running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top cpu_inst0_rom -prefix
//               cpu_inst0_rom_ cpu_inst0_rom_sim_netlist.v
// Design      : cpu_inst0_rom
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a200tfbg676-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "cpu_inst0_rom,dist_mem_gen_v8_0_13,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dist_mem_gen_v8_0_13,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module cpu_inst0_rom
   (a,
    spo);
  input [4:0]a;
  output [31:0]spo;

  wire [4:0]a;
  wire [31:0]spo;
  wire [31:0]NLW_U0_dpo_UNCONNECTED;
  wire [31:0]NLW_U0_qdpo_UNCONNECTED;
  wire [31:0]NLW_U0_qspo_UNCONNECTED;

  (* C_FAMILY = "artix7" *) 
  (* C_HAS_D = "0" *) 
  (* C_HAS_DPO = "0" *) 
  (* C_HAS_DPRA = "0" *) 
  (* C_HAS_I_CE = "0" *) 
  (* C_HAS_QDPO = "0" *) 
  (* C_HAS_QDPO_CE = "0" *) 
  (* C_HAS_QDPO_CLK = "0" *) 
  (* C_HAS_QDPO_RST = "0" *) 
  (* C_HAS_QDPO_SRST = "0" *) 
  (* C_HAS_WE = "0" *) 
  (* C_MEM_TYPE = "0" *) 
  (* C_PIPELINE_STAGES = "0" *) 
  (* C_QCE_JOINED = "0" *) 
  (* C_QUALIFY_WE = "0" *) 
  (* C_REG_DPRA_INPUT = "0" *) 
  (* c_addr_width = "5" *) 
  (* c_default_data = "0" *) 
  (* c_depth = "32" *) 
  (* c_elaboration_dir = "./" *) 
  (* c_has_clk = "0" *) 
  (* c_has_qspo = "0" *) 
  (* c_has_qspo_ce = "0" *) 
  (* c_has_qspo_rst = "0" *) 
  (* c_has_qspo_srst = "0" *) 
  (* c_has_spo = "1" *) 
  (* c_mem_init_file = "cpu_inst0_rom.mif" *) 
  (* c_parser_type = "1" *) 
  (* c_read_mif = "1" *) 
  (* c_reg_a_d_inputs = "0" *) 
  (* c_sync_enable = "1" *) 
  (* c_width = "32" *) 
  (* is_du_within_envelope = "true" *) 
  cpu_inst0_rom_dist_mem_gen_v8_0_13 U0
       (.a(a),
        .clk(1'b0),
        .d({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dpo(NLW_U0_dpo_UNCONNECTED[31:0]),
        .dpra({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .i_ce(1'b1),
        .qdpo(NLW_U0_qdpo_UNCONNECTED[31:0]),
        .qdpo_ce(1'b1),
        .qdpo_clk(1'b0),
        .qdpo_rst(1'b0),
        .qdpo_srst(1'b0),
        .qspo(NLW_U0_qspo_UNCONNECTED[31:0]),
        .qspo_ce(1'b1),
        .qspo_rst(1'b0),
        .qspo_srst(1'b0),
        .spo(spo),
        .we(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2019.1"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
GxqA6ShybXzGX4SNuhZkgD2SfOuwDYSzjnHIzDz0NN2q/uX43CoUMt0L0xBGvUsa03MpmRUjohf7
RdQy3qKtvQ==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
AStGBi6dS/Pu8paudHFxlgoOUwiUG1xTKkUjscVJKbrztKTibNt5odE52tzbrf+TesjO4JiOib8i
0Jey1TL5RM52iOhyFipAueZE/1eeS8O2cWH4OX9ivJeL0THyXZgGKpsMQCYGLyjhMxSLxlVPoV94
fB5JulLJldV7LL+r0QY=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
EhEa53IbhFK8aH+jEkH9mB6vKemg7bdjNbNbMbNEUK7N+hEAQRxkwZz2tfm3qzUwBD7Hw3Spkyr0
mM4971brJyOIjG3WpVKqmHB45b7aVdWQN9gfE+d7N448c4h/eDZvaYQKQUUIgV9WCMcfD/mXsLEk
V1bEiMJXC6DvzwzhHsFPwYzBWYSGxJahZlyONurjgDNecV9lDxESnU2sXrRvrx6vqLKRU8fJGd82
nUvJqlKVbHbAH75O6ywJ8SuW6yVGMc08qJTVBFU1p55dzlQxemWLGvnBSFi0Y54eAI9o4d6yR1EK
PE2dH8oJTtYhXQBUlL3BoD3MpzMGMoTHU/6juQ==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
YRxYOjLrYRCvkxF50wuZS9soahAbHJR1U3PA3Oz/HM20BuknrOjgadjwYPKFk7QpQX0HJoufYAKu
VNL4Vcj4ePmhgdkE0/GdjfJaHnc3VJeCpDl9b2bpihBhnZnf/JbpU9QlDLMFdtBaQESF2F2TnZb1
0/JZYr3D8kgSN59mmtBoJAUZVQ09ykROPpiNtW1Ta5TDYPX6Lru7pRCLZMNNt5P9tyhEZ1c/Ynu1
w1M16hPaIjCuj4SgRuFluBvoL5ybQNlZeosBwRCD6ZmUoR0FxueGZN0D2t3FdRy7+8KFu8grCQK6
+zu4KIxt3Nf7gJeOO/mdiVPcTUorAvBjueTVXQ==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2019_02", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
N9TEIv2s4qLNbOamPB+iHsr/skKamzTWWLSQDVGwlSIUkPf7ZdV+br6WAhtBWGDdBtBk+tWj/sn+
m5TbL+jPJQSVLASsDKdp3z/AB5UOFxQ3XGJUBQhs+d+OH2CNamt97mOQamSOh/HonTpnIdNDxJhL
hUfTnXv2cPlTO7Hw/PqmH6JabR8MdbXbEx1t27aR7ZBt+x/IIqUiMvKNX1DuBCxPWJuL9YI6OqWS
JvJf9Zuw1WIWtrsWK9X0LqMlrsqwWGMwHlRj+vIJzFOBErtExTXxwxS2FImyG1YbPcTlj+7UmsK0
k8HlCh1ifM6NNWzWJ479zwyEl95M2qNPLBOBHQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
fKOwMyWryYahcHknLtf6MHFeCSya6sCMrRVc3/N1IsZc7Gg61FyzwRaSFbGF7R5xhIZfLm15HGaX
vTHfmV7inaTJVMSyZoqk4EBdf5xMaDrL/vPHM6XAjSK8itKAwn+syrnhPkkU+uIBovqDFujwHFmH
dvvR/RAnF5Zw84L3pR8=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
jN7WIyrArXu/q301RElviMDMHxQ+PHXin6Y/rmUfCm6hOg5LX3MY3tW0Ig/kDvXGK7sYck2MxDKU
3Vq+gXojG27PDtvlx7RXPpliasPoreafttcWcTrXXHIroTiCWvjO8tFf75MuTX7VAm9Pk8pg1n41
5f0H9XyCdZgqXl3KlJPydlYcXkvUp57cxr8s8kPgNxK49yl/PLcyHGTpM75hdp8mhV/3k3ZYL2cj
X0KK7Umg/OiyLKxHClvY5KMmaeLrou6mvz7HWnwXm1pc6EnOCGeUGGxFYIbOY+8n7VJJAt4ZIafG
IliQdJIa+jcbu/rEUwjdoxtcC+YkjnZZ4zTPHA==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
krOfV0etxNMBgHmB9eikWXkLasaz1ND/SLufPd/5MOv2M7uej5fEBgQlzj+OuyvTXpveIP+NESly
0Vpu45HLM3fWu0s5M9wZLfTM5jw/Q2YdiFPqaTBR1nbl8nzQScdbU+XIpP9l377SjU4vO1D5Tv5A
5kdkA3Z47QhtfnViEMmAm43DvyK0YzUy0U/nc5QrfVtpQDtwcVbXLkkl880fyRloUBtBiIeVNPxr
DaSOede4kzdyDEf0vnouHqRrLk8j4LAsoolvfTWXI9AFDt7TVAv1Xvnj17Z+84jZMYRpOd3EiGHb
WuKPk2F0XUIO+DOHFvJwDBmzbwkIvmn9PRwMpg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 10672)
`pragma protect data_block
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
mh9Ptk55EgQtih+fqQ==
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
