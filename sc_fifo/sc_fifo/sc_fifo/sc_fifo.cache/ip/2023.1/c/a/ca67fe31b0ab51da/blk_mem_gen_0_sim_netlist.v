// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Fri Oct  2 14:07:16 2026
// Host        : MSI running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ blk_mem_gen_0_sim_netlist.v
// Design      : blk_mem_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_0,blk_mem_gen_v8_4_6,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_6,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_6 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 19680)
`pragma protect data_block
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
a86SqIY3ldTAiPdvsjrs
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
