// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Tue Oct  8 21:35:08 2024
// Host        : LAPTOP-K550ROTT running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ cpu_inst2_rom_sim_netlist.v
// Design      : cpu_inst2_rom
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a200tfbg676-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "cpu_inst2_rom,dist_mem_gen_v8_0_13,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dist_mem_gen_v8_0_13,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (a,
    spo);
  input [4:0]a;
  output [31:0]spo;

  wire \<const0> ;
  wire [4:0]a;
  wire [31:0]\^spo ;
  wire [31:0]NLW_U0_dpo_UNCONNECTED;
  wire [31:0]NLW_U0_qdpo_UNCONNECTED;
  wire [31:0]NLW_U0_qspo_UNCONNECTED;
  wire [25:7]NLW_U0_spo_UNCONNECTED;

  assign spo[31:26] = \^spo [31:26];
  assign spo[25] = \<const0> ;
  assign spo[24:21] = \^spo [24:21];
  assign spo[20] = \<const0> ;
  assign spo[19:11] = \^spo [19:11];
  assign spo[10] = \<const0> ;
  assign spo[9] = \<const0> ;
  assign spo[8] = \<const0> ;
  assign spo[7] = \<const0> ;
  assign spo[6:0] = \^spo [6:0];
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
  (* c_mem_init_file = "cpu_inst2_rom.mif" *) 
  (* c_parser_type = "1" *) 
  (* c_read_mif = "1" *) 
  (* c_reg_a_d_inputs = "0" *) 
  (* c_sync_enable = "1" *) 
  (* c_width = "32" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_13 U0
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
        .spo(\^spo ),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 10912)
`pragma protect data_block
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
614v7ufe1xz0I9+P1Yy0PFRNRm6B0n//4A==
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
