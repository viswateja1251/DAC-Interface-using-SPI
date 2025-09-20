// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Tue Aug 26 18:36:27 2025
// Host        : viswateja running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top blk_mem_gen_0 -prefix
//               blk_mem_gen_0_ blk_mem_gen_0_sim_netlist.v
// Design      : blk_mem_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_0,blk_mem_gen_v8_4_9,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_9,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module blk_mem_gen_0
   (clka,
    addra,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_mode = "slave BRAM_PORTA" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [9:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [31:0]douta;

  wire [9:0]addra;
  wire clka;
  wire [31:0]douta;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [31:0]NLW_U0_doutb_UNCONNECTED;
  wire [9:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [9:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "10" *) 
  (* C_ADDRB_WIDTH = "10" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "0" *) 
  (* C_COUNT_36K_BRAM = "1" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.622 mW" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "0" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "1" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "blk_mem_gen_0.mem" *) 
  (* C_INIT_FILE_NAME = "blk_mem_gen_0.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "3" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "1000" *) 
  (* C_READ_DEPTH_B = "1000" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "32" *) 
  (* C_READ_WIDTH_B = "32" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "1" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "1000" *) 
  (* C_WRITE_DEPTH_B = "1000" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "32" *) 
  (* C_WRITE_WIDTH_B = "32" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  blk_mem_gen_0_blk_mem_gen_v8_4_9 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[31:0]),
        .eccpipece(1'b0),
        .ena(1'b0),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[9:0]),
        .regcea(1'b1),
        .regceb(1'b1),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[9:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[31:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(1'b0),
        .web(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2024.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
FPXllyX2NFs/RMngGqZy2bLYbZr92CdofeZrJOHklWXExpaPgHNYp2Lzm4MnflbnrfSkCmLwwKT5
zfRgEip7FKQ5Zhb73p0MAIADixBZ/ZRt4hQkJL0T9brm0waLHfanjnov2aCX6jN3LbQc3ujmDga6
Dd73k78u4xjRTDv1/P4=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
kr7VKKvChFoiyRCReag+OvU3jnmG9pN0cv+BxhNmMKLthg/ksgNZyU3L+fQ7cmIQELtlUjwjkBAP
Jjq5RsCnHbJxj+Ys1GNhriiBsxLqxWCP8onhAVvgZN2xZFOih0UWpqlU8NVP8Eww1ohvkDgxTstC
3kDmYehxIUJjqCC/mgRZmuezqugrFdubYmBoz16tUvD17iA5qqCIMS9xSIXYp2LBNekmWEwrVqzu
R4koEo4UlXl/CEw0XY3QvMoHnlXgu6N/6sc+nxZtKSwjiMVvGnZE9UVvJPAC3Hn3zKFGlK53mmGO
Tj0dWzhwX0ahSYzkyJC/HLdbGZmriL2UNvDyFw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
CaLc9FGt3AdRHfNtGAsGFY/QEvHY1Vv4TvvgCDsdDMqiuDeLizFJDJeskBWjeKDoE2cufK8TxiBq
mySRQNJoeOKnxTiDdf+Rx6m0iR6h/YeswegYwgghpM5KVrl6mSwF3+4yEovPM7a+9ArDQ5vl+WT8
SilNGzyW0KnTwe7+szs=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
cEnudSW1X71p0Xuq6jrXOxHnBku87IA0RA3zKqmeZHZM0r+9rEm5MSzX8RecnQ994yiqeyxbIH2l
fGEzUzr0ZzryS3fkf2LnJuB39f2YARW9eVCSiaeWaraZuY1l89T+h3vgdlurS/1LIraYLS1MyOXa
6F1LAcQp3W4OO4ctc3q1FRMZGldRS1biMsKwJ8Lxj8NEOm67UfgFrJNQAxbVXEfbWRWhKtwNxcTB
JbgC8j4EHkIA46mzoHloeBAL6KieplQUBjKXSSTb66rxglbFhWLy+mirROHcocu9J4ZbvTRYZEww
4lso1lqAllVLAoKYqa3WImZuSRoTbGDngBt9Lg==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
rOyI+x4PlmKcVSFoN3oKgSYpVlmYxc194Ej04il/YmBg10xopy4zmtu5sdCP/uGSNYcNGWeAiw01
mNf98KyNgTUFXruHCA38qjhhEIvl4vfWWn3W3mFRxrIuwmnreT6qTvgMaxIkCdVBDP7Iy7O6WmCf
3Va5X5hnCHhtXgX5UYniBHiLjmupv63B8XMAYDH2n6mQ3H0DF7mtb7psBafd0Z6+IWUbmzwMtKrf
ZrRJBGAhNT0i1KrEjEh/rWjN7Z7N32zQ+Pl1kc5gYCQIX5McfdTdqSaRVXZ/HF90ymS7/8d5LDyj
Er+ORdcjnOn6oAyY4PuUUl4OYUHv5k+RglTe5Q==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2023_11", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
bJa7kPSpDipzoJoQu1APEjc8vFLqBfQZK/grZvWijD7/FgMTerFCWLUY6n8DWeGdvjXvTeyrqCHE
2rP/H57wUqPC8tIJlGm6ZYQGjZ3TgYqLrJshDE5zYMTO//q0vuSraWvZP7A7SLuW6y7tFE/nplpx
L8gbYORx6j70okGUwnamCMS9yhFr7Z2QTJne1k4GNFGvy66URk3k5cBPl5j4/1yc4xGV+aWYl6L8
q8RorRU/CltObHKrji/jdiY1WtdGrkpRyCEFc+XNPazL9xSLLu5bz6XlvKwoks+8a5KYT/VFUovM
JbM0bpAXM8Z7rGaPuXjqXtZBg5praTZLu/WNcA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
PYKBDinOGc/kIVdFzXrz2wA4/QNFxLDrQfTWfR5TjYE6bm49vrZi0bawcr9HXp4OP1+XxPLB3oCP
oV5e/rYeDln531ebt8yEg27XCoSHEX4FU8oG8aBJ8fqgWayOnAMJt025WodOxuZXbhT1zPo7J3uh
6iO9Mv7RtYE2fZ1W+G8oN//FTOEJYPWlKYnt0cDeZrN3I4rHHptZHuu7l8T+df0PYea3x6U3Mvkl
ojZ+TwQtdu0NuYY5j3QNgx3+W2XYq1M773FAnEz/deW54EjE+jf1jjrBk2pl8SYxeKuutS15oPVF
eHdqXYVcJxoUY5JH8z04lITKEnZ4oq6sYS6dog==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
tl+2vFCWZ583gQGsVC7oopz2NCKBiJ9uOHYBGzJZheOHJMqI/ehNvo25l710eBx00tztXzM30AH6
ZhAJg+kJwE2jO0MV5fmG5dnwXmLqoGEJMBs7xwWxvYK7w/0z9M0AJKD7HnuC+IiLhNU/fIxyuE+I
+vWqp//RcfY0tMMp2I2J1yEW6GUahS1ve/4JchssZ7Xu7VthoSDWXMQWATbvsUsDzeSo2+Ruz8Kq
Dc05HqEU8NgBxDPPEKLCcdKLp4byglwj7iCAtCjsPy8P18qjgb2sycFjNgmaiNMMB51WqeD+hneG
hLOue9bqVdEojkrb3q4WbsGZKz0bAGsryxslOlYHP1b8vey3yI2ixA80wyERe8d3GRIeZiSxGykH
qWxsE6x/iyi8QRb5mXZPMApA+Fln8tYmn7+1rFCm8gF4gJWhr1PsSJqTi658symGrzT0Ghjvf2QL
SvvoaeNdy0pOsWs7jLBFndd4GiFA+9K6Y33sziLToU9EvvFokENIslod

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
oYiCujFRj1F3wKsGZlHR9niEtR9MLXEVAVfy+f/3xrmpW6Ye5a+fBCvm4TH+iRQefGHNdMPnzTNW
K/pEPAS9uMJjOdFiu+APT+LYrSRnEg4W0dX5buSDGM6LBWAuMseoTMjbJJoYDGLRckJgW43E30mX
ej4823nkbfwc+Ecbrup825qLyv8RTQLNHafvJA5lSapdqXwnlOIYRmcHn+sfAh5pGv9kW9aokcdh
ObR2XYxX99rYloyvz3x0pmjxD5ILW4SQMB1IUEuuyqX6eb5IQ+kZ41hjvsHIuQH29vzpCfV9Jqha
WC5yxxK1R+cleZSKD1H1gVzbTei8uFs/91Bgeg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
urNc+S8AFPj+GVFdqJE5V7P8O6QI6MA3nkwYb8NKbYbVufnXKg6voJIRYYeYr7EOa8mrqirozWbY
Lln9SLWnkaAy2LvL/N6WahoQdCt++4RH+xe768XvSrVUFPrIwZRixqMLurc/tPov4i5P/ukZKl18
ZPZvXRzUNlvCZnMPcF+5QCQihqPbjcZ0YyGgWgX/ipTGG3sNqmylGN7qLa4Rgqu/mB5a2xVyu5Wc
911+/X3VVFx697WVaP5V0SbOzYN8R8+8B8kdznwixMA+f4lSbBXyRysVOSzYjo8bKEMqyKMVBQn9
xDmEuV0DvVWXdO7VPvWA1LuJFwS07OxeI2GCcQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
QcP7fsLZxaDrG29e9HQeXfu2TsKsdyW7Yc1vWct6lbmDEfXkWMU1fFWSPIjPzRc9UOnfEu0bRn+B
D+8MWokqes3WF7txljBmgUPiNGZ8arUU6ENa/IY/Wv7iaB/ZKM5PtdnFAkjDIrYyKFCTz/U6Yzwi
hBGGarK/wYQOLzeeKRewiPTiNUL7tztWuMZ1t1msxD951EeKrwjrjcXIIuf/TzrOGUOlWgjHlnrl
4Q/lfMAnRLBNTSWG+5wWewCE8jK2X/gJ5AV4p3x1WP3+JglbxpP39l3pzedXqciZPbuz2XlFnRPV
KByaUaAShzJ56p8+0HjWebibqQdieGNPiPWW0Q==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 26848)
`pragma protect data_block
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
EQ==
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
