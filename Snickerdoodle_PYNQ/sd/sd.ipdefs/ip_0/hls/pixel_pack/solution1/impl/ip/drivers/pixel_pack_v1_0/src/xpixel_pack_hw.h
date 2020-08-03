// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
// AXILiteS
// 0x00 : reserved
// 0x04 : reserved
// 0x08 : reserved
// 0x0c : reserved
// 0x10 : Data signal of mode
//        bit 31~0 - mode[31:0] (Read/Write)
// 0x14 : reserved
// 0x18 : Data signal of alpha_V
//        bit 7~0 - alpha_V[7:0] (Read/Write)
//        others  - reserved
// 0x1c : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define XPIXEL_PACK_AXILITES_ADDR_MODE_DATA    0x10
#define XPIXEL_PACK_AXILITES_BITS_MODE_DATA    32
#define XPIXEL_PACK_AXILITES_ADDR_ALPHA_V_DATA 0x18
#define XPIXEL_PACK_AXILITES_BITS_ALPHA_V_DATA 8

