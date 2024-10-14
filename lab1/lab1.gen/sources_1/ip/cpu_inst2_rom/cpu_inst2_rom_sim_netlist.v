// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Tue Oct  8 21:35:08 2024
// Host        : LAPTOP-K550ROTT running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top cpu_inst2_rom -prefix
//               cpu_inst2_rom_ cpu_inst2_rom_sim_netlist.v
// Design      : cpu_inst2_rom
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a200tfbg676-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "cpu_inst2_rom,dist_mem_gen_v8_0_13,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dist_mem_gen_v8_0_13,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module cpu_inst2_rom
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
  cpu_inst2_rom_dist_mem_gen_v8_0_13 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 10768)
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
