// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Tue Oct  8 21:35:08 2024
// Host        : LAPTOP-K550ROTT running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ cpu_inst0_rom_sim_netlist.v
// Design      : cpu_inst0_rom
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a200tfbg676-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "cpu_inst0_rom,dist_mem_gen_v8_0_13,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dist_mem_gen_v8_0_13,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 10704)
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
