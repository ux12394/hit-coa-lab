// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Tue Oct  8 21:35:07 2024
// Host        : LAPTOP-K550ROTT running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ cpu_ans2_rom_sim_netlist.v
// Design      : cpu_ans2_rom
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a200tfbg676-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "cpu_ans2_rom,dist_mem_gen_v8_0_13,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dist_mem_gen_v8_0_13,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_13 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 13040)
`pragma protect data_block
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
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
