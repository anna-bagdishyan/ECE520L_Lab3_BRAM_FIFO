// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Fri Oct  2 14:07:17 2026
// Host        : MSI running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/ovsan/Downloads/sc_fifo/sc_fifo/sc_fifo/sc_fifo/sc_fifo.gen/sources_1/ip/blk_mem_gen_0/blk_mem_gen_0_sim_netlist.v
// Design      : blk_mem_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_0,blk_mem_gen_v8_4_6,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_6,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module blk_mem_gen_0
   (clka,
    ena,
    wea,
    addra,
    dina,
    douta,
    clkb,
    enb,
    web,
    addrb,
    dinb,
    doutb);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [4:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [15:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [15:0]douta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB EN" *) input enb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB WE" *) input [0:0]web;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [4:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DIN" *) input [15:0]dinb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [15:0]doutb;

  wire [4:0]addra;
  wire [4:0]addrb;
  wire clka;
  wire [15:0]dina;
  wire [15:0]dinb;
  wire [15:0]douta;
  wire [15:0]doutb;
  wire ena;
  wire enb;
  wire [0:0]wea;
  wire [0:0]web;
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
  wire [4:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [4:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [15:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "5" *) 
  (* C_ADDRB_WIDTH = "5" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "1" *) 
  (* C_COUNT_18K_BRAM = "1" *) 
  (* C_COUNT_36K_BRAM = "0" *) 
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     3.0361 mW" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "1" *) 
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
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "2" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "32" *) 
  (* C_READ_DEPTH_B = "32" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "16" *) 
  (* C_READ_WIDTH_B = "16" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "32" *) 
  (* C_WRITE_DEPTH_B = "32" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "16" *) 
  (* C_WRITE_WIDTH_B = "16" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  blk_mem_gen_0_blk_mem_gen_v8_4_6 U0
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb(dinb),
        .douta(douta),
        .doutb(doutb),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(enb),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[4:0]),
        .regcea(1'b0),
        .regceb(1'b0),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[4:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[15:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web(web));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2023.1"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
aMT3usC6uizzcwnzOCX4OsS16Ob+YxFcsGovFpFklbnaIaD1S0lVdxenTwHPp6ByIEi+ehwr6Rgg
z/3AlTheI5NFTM8ihiMA18/wmUxI7EbaftJACA1LykUKCuj5myy0T+DACuv3sGYIZS38TZTZnnBC
FGAlvTZmRWs+JzneH3o=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
lR9ZerhYSAb39nzEkeYvhnwEs5t9y/+yTDf8KuoUtR1BGeHZq8pA/YxtjzQLtaOW1R1IQUb0FtSI
e3CYAb7WHYbIjcpw3vKHvW1SqcGn9CMGa556CYKmD2oF12Kow8xRaFvMSBUVxX7HsHxNWnRd+PU1
+C0YayU2KFIY/7Yl6cZ5luAzhw/6SW3PFYUIyyqWy5MCIXweHOwQR2IpQEdlDur5nluN7i7BeB+i
fxwwHh8TU/g7T4mhZFkiTuBKdLAtQOjxWxzqTMxgcuAjlTylY16FgMFOASdvvSbqBZJjbxMdVloU
rYjS8O/8rWktv8GXcaIdBJ2BRj01q7jsChsbwA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
Qvl63GHz9mq2xOB7elt/vAQ7URLGdD1Lkcz7f3Wtw31dwjjjbP62Ny/Jr6OmBIheWlgejx38qxAT
TrHiiEyjKmGcnPn1Tn2n+cH4RAxCbOFnCI9n6+YsYMTe9JkplGhGGr39SkFgJz0I2IKpPsuqTjCj
rhf49TAryNMQeRpREJA=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
MA+9Ro+dh339m0iZrkKbqTKN8gQ5xkxN/SPCfhkOn+5jjgCTS5IOKLHil+HsZDjX333ebxnornwG
MOBxyEdFfLM8SA+bs2r41J/j0af2VVMmCM3hOh8JmZxB4X9Jg/glegNCbvwzqxMbOQNEy+zt7j5t
TFVD82RtPFmYVVYZZyll/WvAA+0aVpyjzLCIM1GznFky0RWLv65Wp4MJJnNRRrtG3muMznVO/u2s
tACsJ9jzv9M0IlMYjYH9BixhG6cZX02I4LEXXaPkhdOINlMMhsbArXtc9NphzmS4bY1/1yF1D6YD
EKLyS2Sr3HDl0O/lefN+jvfG8iKuVl55PNNrVQ==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
wpMTg7STjFkUDhOqdNPa0FHXTnHQgKmhvqDv+rRVBvMiQ8O7u8oj7ibITq3o+jugJsMJ60B410gQ
JFTcqCJKYmYJvqi8rPLLOYDmFG6ZLP/Ixr3n62IyIaCeDltBahi3yV009QN0X+iuzuFCL+Y7g9ff
IvAgyBly+Z3Itv2H9EJMZPMl17Sa7IkgjmWqzVXIKNMKn0iDVYsQw6ZgzQDYQ8N8IvTIEggU3/lh
6Nf0hV0ev3qOv/2P+4w0U766Ux3yLuzPJSI7bKm3/ip9NjhOytxOiKKqVXhKG8dzbbuS5u3EE/eq
q6YxkL7gpvNltVqqBnJB6vHSyWrD6+MqsCtR9A==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2022_10", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Q7Q4SSp70lxFryaopuic9VVP/Ire0pSsPEIMYdURBAczC7ShkuYeV02U7L3BlAiyBE4vBKcwYSQd
cWiaj8sVP7q4kxoRHKxLV1R5PIO6l4DsLWE2E+1MLyUPME0w5KTular/oX8EPCJ5n/8VCtW7x4Vf
dpeyki1/IAPJkAyi3zVZKHzgKhEwnZaZZtZYuMWoPZMt4V38sAcE42Raf+7yfFWG5HO74JY6iEnW
gJeRk58K+avB/XLF2/j2RQZfjTYizrprT2tUMBK6e7DRWZZtk8AOcsMhUikev44IFGNbNXjP8BXC
0J3y3P7pCFT6l+saU83nRwi/H25fSA34diJtNw==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
a/8ooC+s+6nfvfa1+oBhsvYWLJjFgp83DI1kNyOi5Am+ugPbGRmgGZudfyo6yw6Yd5gGbLm5aToQ
5G4cGF5HaXD5TU6A0ZZFMTIbzFLE76JMjjIxX8JcaJIZpSmrXqlru8l5gDINUEAmwUY3mRQnjcGJ
0Z+kMRH8iAEF+gEviPiFZSBbJeOPqivIS217kimQJX3BeNbNPQTP+GUidcRywpGMh5avxtA0kDRO
F9SoCSyTm9hr2v9hsK1IUAYQLb7n2/R+z5YNKNzt1oN4qgJH1wZfdI8if2K8+ohyOdnxrrgJOWdj
cOqr7cGqEOYfBMTIQeHVZzb7NGWVN+9B8XSUaQ==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
FLPvOUNRWNW2GU+FEGmt2XWthOT5bY/31DRbol2cUmEGNF6b2XzpCosNKGx/o2n6sQvGP39KRFCs
nJu0ihe2dUGee9nEZZUcpwPjnEfXVI3yJaRVYy8iL+rm59lXq0jX4sjAPieDvv8shgAnoXLTZGlq
K+2c1JhaHt+nFi27TDrYar/+P8nP1MhocOS7BjzCvSs0foEXj92/qD+71Sm/LqGr8cjlH2qTJJ8B
ynxoH6iT+bksVA2VbtPT9o6h1kJ/zwP4wcsL9l+qSlJhd4GI11JPux26DlNyIi41WmufQcfiT0PB
r6O9+0E9lV9ODwKdjaxfZRK29rjKeq2yr0jWhMV38XKKqHAJli7MIypGRXcCo+u89H87KgYt+ebw
s3foIqCe0JKR57WzI8VD6XdNtOL8eBxK539oemx4vkE0cGYECZKYru6A2hPeZOYDD5eyWSUlQl1R
EciK49WM8HnssyRVcmE6di6bISMbVi0TZG/v98bz+9UZa8DtqMVYH0tz

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
fphquQOeFuqByo36Gh2C1zEC1J6u9swSMbMzsKldIvLm+SZ6/hr/N8KJ/G2vBABzX6UtbVuP1ZXx
AxdftP4Aqis1B3Bs6989aQG9eo0SOHA7r6aFLtFb3qoD5Pvqw4aVNU4z4EtTpFpn/jCWD21lKROf
q5X32HRfFq1jwqod+9vIbUNRRzz5y9VHvXfacZlxDazSPmcCF4hxB1KqWqT44KmYVkDedgkgnYgb
ZGidHnTb3W7C8tSqC9ac4kNJCL429QndtddweESJNlpX+65pt9Irok9pkOodwoj0QScswOIFjhBZ
/GrzZLQcFWiD3gXRU4DazzxQnGdRH4qEIRWziw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
1lUYYHPCt1BUJOvcBbgMU2GSQiqfxItz4ntieMaenjrtsE9SLwaU6xB0tBl8Atw5yP/RRNww1kX/
9uZbTz5He3r9mPVt+mGxB4N3f9BbCrQRb4USVPgKO/+vWUfMQERGklScy0+fz75WuxH74CjRUoDI
8iyssb2cUNnfDe13jIoI8gM1w4w/Pkxkmb6Mef53QMxacHAWEZeytcH3fuL/adO263D8P90U3XJv
vBXJmbjkRVi9qzjBzfMxuOy2KbZaZgR3BLzaffIfFnMwg/Rb8sGls5pQsZv5jL2wk3+Bj3OXBYdd
pDyjGoalJBzObKzd/t15kNHwY4FXYFcZLQPncw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
YRmSEzaa2WFVvMH1BwWc1TIUpVbzSEIP0VbI6n0sEgct/X4PiTfMQmK1jBVCaISIzwBxscKQwZOt
mb/nmINGg6I7ih39LSbBMtx6cdCUiyaLkPeRbqfyPpKhvnUIFmdKVvTd1dYzxeOeuDnhSVaBaAcN
3lngSg7lIbmhLIGjC29yQrBTiLArbVZi6IRGronMK51e3UrYa6GspsznhiuRcXjEb4bHKrJ2CM5Z
BUwA+E9949sQgyOagFZbLVle2ESbwBaoxcAPn2gxfRHlT0leqyLgUGDZLsfArzGzw9BTGzyEG2TR
XOrKFNYRfMXMrnGsBM7acIelY4LdAMgsKgDH/A==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 19648)
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
