// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Tue Oct  8 21:35:07 2024
// Host        : LAPTOP-K550ROTT running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top cpu_ans2_rom -prefix
//               cpu_ans2_rom_ cpu_ans2_rom_sim_netlist.v
// Design      : cpu_ans2_rom
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a200tfbg676-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "cpu_ans2_rom,dist_mem_gen_v8_0_13,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dist_mem_gen_v8_0_13,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module cpu_ans2_rom
   (a,
    spo);
  input [5:0]a;
  output [63:0]spo;

  wire \<const0> ;
  wire [5:0]a;
  wire [43:0]\^spo ;
  wire [63:0]NLW_U0_dpo_UNCONNECTED;
  wire [63:0]NLW_U0_qdpo_UNCONNECTED;
  wire [63:0]NLW_U0_qspo_UNCONNECTED;
  wire [63:5]NLW_U0_spo_UNCONNECTED;

  assign spo[63] = \<const0> ;
  assign spo[62] = \<const0> ;
  assign spo[61] = \<const0> ;
  assign spo[60] = \<const0> ;
  assign spo[59] = \<const0> ;
  assign spo[58] = \<const0> ;
  assign spo[57] = \<const0> ;
  assign spo[56] = \<const0> ;
  assign spo[55] = \<const0> ;
  assign spo[54] = \<const0> ;
  assign spo[53] = \<const0> ;
  assign spo[52] = \<const0> ;
  assign spo[51] = \<const0> ;
  assign spo[50] = \<const0> ;
  assign spo[49] = \<const0> ;
  assign spo[48] = \<const0> ;
  assign spo[47] = \<const0> ;
  assign spo[46] = \<const0> ;
  assign spo[45] = \<const0> ;
  assign spo[44] = \<const0> ;
  assign spo[43:39] = \^spo [43:39];
  assign spo[38] = \<const0> ;
  assign spo[37] = \<const0> ;
  assign spo[36:32] = \^spo [36:32];
  assign spo[31] = \<const0> ;
  assign spo[30] = \<const0> ;
  assign spo[29] = \<const0> ;
  assign spo[28] = \<const0> ;
  assign spo[27] = \<const0> ;
  assign spo[26] = \<const0> ;
  assign spo[25] = \<const0> ;
  assign spo[24] = \<const0> ;
  assign spo[23] = \<const0> ;
  assign spo[22] = \<const0> ;
  assign spo[21] = \<const0> ;
  assign spo[20] = \<const0> ;
  assign spo[19] = \<const0> ;
  assign spo[18] = \<const0> ;
  assign spo[17] = \<const0> ;
  assign spo[16] = \<const0> ;
  assign spo[15] = \<const0> ;
  assign spo[14] = \<const0> ;
  assign spo[13] = \<const0> ;
  assign spo[12] = \<const0> ;
  assign spo[11] = \<const0> ;
  assign spo[10] = \<const0> ;
  assign spo[9] = \<const0> ;
  assign spo[8] = \<const0> ;
  assign spo[7:6] = \^spo [7:6];
  assign spo[5] = \<const0> ;
  assign spo[4:0] = \^spo [4:0];
  GND GND
       (.G(\<const0> ));
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
  (* c_addr_width = "6" *) 
  (* c_default_data = "0" *) 
  (* c_depth = "64" *) 
  (* c_elaboration_dir = "./" *) 
  (* c_has_clk = "0" *) 
  (* c_has_qspo = "0" *) 
  (* c_has_qspo_ce = "0" *) 
  (* c_has_qspo_rst = "0" *) 
  (* c_has_qspo_srst = "0" *) 
  (* c_has_spo = "1" *) 
  (* c_mem_init_file = "cpu_ans2_rom.mif" *) 
  (* c_parser_type = "1" *) 
  (* c_read_mif = "1" *) 
  (* c_reg_a_d_inputs = "0" *) 
  (* c_sync_enable = "1" *) 
  (* c_width = "64" *) 
  (* is_du_within_envelope = "true" *) 
  cpu_ans2_rom_dist_mem_gen_v8_0_13 U0
       (.a(a),
        .clk(1'b0),
        .d({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dpo(NLW_U0_dpo_UNCONNECTED[63:0]),
        .dpra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .i_ce(1'b1),
        .qdpo(NLW_U0_qdpo_UNCONNECTED[63:0]),
        .qdpo_ce(1'b1),
        .qdpo_clk(1'b0),
        .qdpo_rst(1'b0),
        .qdpo_srst(1'b0),
        .qspo(NLW_U0_qspo_UNCONNECTED[63:0]),
        .qspo_ce(1'b1),
        .qspo_rst(1'b0),
        .qspo_srst(1'b0),
        .spo({NLW_U0_spo_UNCONNECTED[63:44],\^spo }),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 12896)
`pragma protect data_block
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
q1/d8gsT3+iwsxI+EdI=
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
