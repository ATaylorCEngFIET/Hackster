// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
`timescale 1ns/1ps
module color_convert_AXILiteS_s_axi
#(parameter
    C_S_AXI_ADDR_WIDTH = 7,
    C_S_AXI_DATA_WIDTH = 32
)(
    input  wire                          ACLK,
    input  wire                          ARESET,
    input  wire                          ACLK_EN,
    input  wire [C_S_AXI_ADDR_WIDTH-1:0] AWADDR,
    input  wire                          AWVALID,
    output wire                          AWREADY,
    input  wire [C_S_AXI_DATA_WIDTH-1:0] WDATA,
    input  wire [C_S_AXI_DATA_WIDTH/8-1:0] WSTRB,
    input  wire                          WVALID,
    output wire                          WREADY,
    output wire [1:0]                    BRESP,
    output wire                          BVALID,
    input  wire                          BREADY,
    input  wire [C_S_AXI_ADDR_WIDTH-1:0] ARADDR,
    input  wire                          ARVALID,
    output wire                          ARREADY,
    output wire [C_S_AXI_DATA_WIDTH-1:0] RDATA,
    output wire [1:0]                    RRESP,
    output wire                          RVALID,
    input  wire                          RREADY,
    input  wire                          clk,
    input  wire                          rst,
    output wire [9:0]                    c1_c1_V,
    output wire [9:0]                    c1_c2_V,
    output wire [9:0]                    c1_c3_V,
    output wire [9:0]                    c2_c1_V,
    output wire [9:0]                    c2_c2_V,
    output wire [9:0]                    c2_c3_V,
    output wire [9:0]                    c3_c1_V,
    output wire [9:0]                    c3_c2_V,
    output wire [9:0]                    c3_c3_V,
    output wire [9:0]                    bias_c1_V,
    output wire [9:0]                    bias_c2_V,
    output wire [9:0]                    bias_c3_V
);
//------------------------Address Info-------------------
// 0x00 : reserved
// 0x04 : reserved
// 0x08 : reserved
// 0x0c : reserved
// 0x10 : Data signal of c1_c1_V
//        bit 9~0 - c1_c1_V[9:0] (Read/Write)
//        others  - reserved
// 0x14 : reserved
// 0x18 : Data signal of c1_c2_V
//        bit 9~0 - c1_c2_V[9:0] (Read/Write)
//        others  - reserved
// 0x1c : reserved
// 0x20 : Data signal of c1_c3_V
//        bit 9~0 - c1_c3_V[9:0] (Read/Write)
//        others  - reserved
// 0x24 : reserved
// 0x28 : Data signal of c2_c1_V
//        bit 9~0 - c2_c1_V[9:0] (Read/Write)
//        others  - reserved
// 0x2c : reserved
// 0x30 : Data signal of c2_c2_V
//        bit 9~0 - c2_c2_V[9:0] (Read/Write)
//        others  - reserved
// 0x34 : reserved
// 0x38 : Data signal of c2_c3_V
//        bit 9~0 - c2_c3_V[9:0] (Read/Write)
//        others  - reserved
// 0x3c : reserved
// 0x40 : Data signal of c3_c1_V
//        bit 9~0 - c3_c1_V[9:0] (Read/Write)
//        others  - reserved
// 0x44 : reserved
// 0x48 : Data signal of c3_c2_V
//        bit 9~0 - c3_c2_V[9:0] (Read/Write)
//        others  - reserved
// 0x4c : reserved
// 0x50 : Data signal of c3_c3_V
//        bit 9~0 - c3_c3_V[9:0] (Read/Write)
//        others  - reserved
// 0x54 : reserved
// 0x58 : Data signal of bias_c1_V
//        bit 9~0 - bias_c1_V[9:0] (Read/Write)
//        others  - reserved
// 0x5c : reserved
// 0x60 : Data signal of bias_c2_V
//        bit 9~0 - bias_c2_V[9:0] (Read/Write)
//        others  - reserved
// 0x64 : reserved
// 0x68 : Data signal of bias_c3_V
//        bit 9~0 - bias_c3_V[9:0] (Read/Write)
//        others  - reserved
// 0x6c : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

//------------------------Parameter----------------------
localparam
    ADDR_C1_C1_V_DATA_0   = 7'h10,
    ADDR_C1_C1_V_CTRL     = 7'h14,
    ADDR_C1_C2_V_DATA_0   = 7'h18,
    ADDR_C1_C2_V_CTRL     = 7'h1c,
    ADDR_C1_C3_V_DATA_0   = 7'h20,
    ADDR_C1_C3_V_CTRL     = 7'h24,
    ADDR_C2_C1_V_DATA_0   = 7'h28,
    ADDR_C2_C1_V_CTRL     = 7'h2c,
    ADDR_C2_C2_V_DATA_0   = 7'h30,
    ADDR_C2_C2_V_CTRL     = 7'h34,
    ADDR_C2_C3_V_DATA_0   = 7'h38,
    ADDR_C2_C3_V_CTRL     = 7'h3c,
    ADDR_C3_C1_V_DATA_0   = 7'h40,
    ADDR_C3_C1_V_CTRL     = 7'h44,
    ADDR_C3_C2_V_DATA_0   = 7'h48,
    ADDR_C3_C2_V_CTRL     = 7'h4c,
    ADDR_C3_C3_V_DATA_0   = 7'h50,
    ADDR_C3_C3_V_CTRL     = 7'h54,
    ADDR_BIAS_C1_V_DATA_0 = 7'h58,
    ADDR_BIAS_C1_V_CTRL   = 7'h5c,
    ADDR_BIAS_C2_V_DATA_0 = 7'h60,
    ADDR_BIAS_C2_V_CTRL   = 7'h64,
    ADDR_BIAS_C3_V_DATA_0 = 7'h68,
    ADDR_BIAS_C3_V_CTRL   = 7'h6c,
    WRIDLE                = 2'd0,
    WRDATA                = 2'd1,
    WRRESP                = 2'd2,
    WRRESET               = 2'd3,
    RDIDLE                = 2'd0,
    RDDATA                = 2'd1,
    RDRESET               = 2'd2,
    ADDR_BITS         = 7;

//------------------------Local signal-------------------
    reg  [1:0]                    wstate = WRRESET;
    reg  [1:0]                    wnext;
    reg  [ADDR_BITS-1:0]          waddr;
    wire [31:0]                   wmask;
    wire                          aw_hs;
    wire                          w_hs;
    reg  [1:0]                    rstate = RDRESET;
    reg  [1:0]                    rnext;
    reg  [31:0]                   rdata;
    wire                          ar_hs;
    wire [ADDR_BITS-1:0]          raddr;
    // internal registers
    reg  [9:0]                    int_c1_c1_V = 'b0;
    reg  [9:0]                    int_c1_c2_V = 'b0;
    reg  [9:0]                    int_c1_c3_V = 'b0;
    reg  [9:0]                    int_c2_c1_V = 'b0;
    reg  [9:0]                    int_c2_c2_V = 'b0;
    reg  [9:0]                    int_c2_c3_V = 'b0;
    reg  [9:0]                    int_c3_c1_V = 'b0;
    reg  [9:0]                    int_c3_c2_V = 'b0;
    reg  [9:0]                    int_c3_c3_V = 'b0;
    reg  [9:0]                    int_bias_c1_V = 'b0;
    reg  [9:0]                    int_bias_c2_V = 'b0;
    reg  [9:0]                    int_bias_c3_V = 'b0;

//------------------------Instantiation------------------

//------------------------AXI write fsm------------------
assign AWREADY = (wstate == WRIDLE);
assign WREADY  = (wstate == WRDATA);
assign BRESP   = 2'b00;  // OKAY
assign BVALID  = (wstate == WRRESP);
assign wmask   = { {8{WSTRB[3]}}, {8{WSTRB[2]}}, {8{WSTRB[1]}}, {8{WSTRB[0]}} };
assign aw_hs   = AWVALID & AWREADY;
assign w_hs    = WVALID & WREADY;

// wstate
always @(posedge ACLK) begin
    if (ARESET)
        wstate <= WRRESET;
    else if (ACLK_EN)
        wstate <= wnext;
end

// wnext
always @(*) begin
    case (wstate)
        WRIDLE:
            if (AWVALID)
                wnext = WRDATA;
            else
                wnext = WRIDLE;
        WRDATA:
            if (WVALID)
                wnext = WRRESP;
            else
                wnext = WRDATA;
        WRRESP:
            if (BREADY)
                wnext = WRIDLE;
            else
                wnext = WRRESP;
        default:
            wnext = WRIDLE;
    endcase
end

// waddr
always @(posedge ACLK) begin
    if (ACLK_EN) begin
        if (aw_hs)
            waddr <= AWADDR[ADDR_BITS-1:0];
    end
end

//------------------------AXI read fsm-------------------
assign ARREADY = (rstate == RDIDLE);
assign RDATA   = rdata;
assign RRESP   = 2'b00;  // OKAY
assign RVALID  = (rstate == RDDATA);
assign ar_hs   = ARVALID & ARREADY;
assign raddr   = ARADDR[ADDR_BITS-1:0];

// rstate
always @(posedge ACLK) begin
    if (ARESET)
        rstate <= RDRESET;
    else if (ACLK_EN)
        rstate <= rnext;
end

// rnext
always @(*) begin
    case (rstate)
        RDIDLE:
            if (ARVALID)
                rnext = RDDATA;
            else
                rnext = RDIDLE;
        RDDATA:
            if (RREADY & RVALID)
                rnext = RDIDLE;
            else
                rnext = RDDATA;
        default:
            rnext = RDIDLE;
    endcase
end

// rdata
always @(posedge ACLK) begin
    if (ACLK_EN) begin
        if (ar_hs) begin
            rdata <= 1'b0;
            case (raddr)
                ADDR_C1_C1_V_DATA_0: begin
                    rdata <= int_c1_c1_V[9:0];
                end
                ADDR_C1_C2_V_DATA_0: begin
                    rdata <= int_c1_c2_V[9:0];
                end
                ADDR_C1_C3_V_DATA_0: begin
                    rdata <= int_c1_c3_V[9:0];
                end
                ADDR_C2_C1_V_DATA_0: begin
                    rdata <= int_c2_c1_V[9:0];
                end
                ADDR_C2_C2_V_DATA_0: begin
                    rdata <= int_c2_c2_V[9:0];
                end
                ADDR_C2_C3_V_DATA_0: begin
                    rdata <= int_c2_c3_V[9:0];
                end
                ADDR_C3_C1_V_DATA_0: begin
                    rdata <= int_c3_c1_V[9:0];
                end
                ADDR_C3_C2_V_DATA_0: begin
                    rdata <= int_c3_c2_V[9:0];
                end
                ADDR_C3_C3_V_DATA_0: begin
                    rdata <= int_c3_c3_V[9:0];
                end
                ADDR_BIAS_C1_V_DATA_0: begin
                    rdata <= int_bias_c1_V[9:0];
                end
                ADDR_BIAS_C2_V_DATA_0: begin
                    rdata <= int_bias_c2_V[9:0];
                end
                ADDR_BIAS_C3_V_DATA_0: begin
                    rdata <= int_bias_c3_V[9:0];
                end
            endcase
        end
    end
end


//------------------------Register logic-----------------
assign c1_c1_V   = int_c1_c1_V;
assign c1_c2_V   = int_c1_c2_V;
assign c1_c3_V   = int_c1_c3_V;
assign c2_c1_V   = int_c2_c1_V;
assign c2_c2_V   = int_c2_c2_V;
assign c2_c3_V   = int_c2_c3_V;
assign c3_c1_V   = int_c3_c1_V;
assign c3_c2_V   = int_c3_c2_V;
assign c3_c3_V   = int_c3_c3_V;
assign bias_c1_V = int_bias_c1_V;
assign bias_c2_V = int_bias_c2_V;
assign bias_c3_V = int_bias_c3_V;
// int_c1_c1_V[9:0]
always @(posedge clk) begin
    if (rst)
        int_c1_c1_V[9:0] <= 0;
    else if (w_hs && waddr == ADDR_C1_C1_V_DATA_0)
        int_c1_c1_V[9:0] <= (WDATA[31:0] & wmask) | (int_c1_c1_V[9:0] & ~wmask);
end
// int_c1_c2_V[9:0]
always @(posedge clk) begin
    if (rst)
        int_c1_c2_V[9:0] <= 0;
    else if (w_hs && waddr == ADDR_C1_C2_V_DATA_0)
        int_c1_c2_V[9:0] <= (WDATA[31:0] & wmask) | (int_c1_c2_V[9:0] & ~wmask);
end
// int_c1_c3_V[9:0]
always @(posedge clk) begin
    if (rst)
        int_c1_c3_V[9:0] <= 0;
    else if (w_hs && waddr == ADDR_C1_C3_V_DATA_0)
        int_c1_c3_V[9:0] <= (WDATA[31:0] & wmask) | (int_c1_c3_V[9:0] & ~wmask);
end
// int_c2_c1_V[9:0]
always @(posedge clk) begin
    if (rst)
        int_c2_c1_V[9:0] <= 0;
    else if (w_hs && waddr == ADDR_C2_C1_V_DATA_0)
        int_c2_c1_V[9:0] <= (WDATA[31:0] & wmask) | (int_c2_c1_V[9:0] & ~wmask);
end
// int_c2_c2_V[9:0]
always @(posedge clk) begin
    if (rst)
        int_c2_c2_V[9:0] <= 0;
    else if (w_hs && waddr == ADDR_C2_C2_V_DATA_0)
        int_c2_c2_V[9:0] <= (WDATA[31:0] & wmask) | (int_c2_c2_V[9:0] & ~wmask);
end
// int_c2_c3_V[9:0]
always @(posedge clk) begin
    if (rst)
        int_c2_c3_V[9:0] <= 0;
    else if (w_hs && waddr == ADDR_C2_C3_V_DATA_0)
        int_c2_c3_V[9:0] <= (WDATA[31:0] & wmask) | (int_c2_c3_V[9:0] & ~wmask);
end
// int_c3_c1_V[9:0]
always @(posedge clk) begin
    if (rst)
        int_c3_c1_V[9:0] <= 0;
    else if (w_hs && waddr == ADDR_C3_C1_V_DATA_0)
        int_c3_c1_V[9:0] <= (WDATA[31:0] & wmask) | (int_c3_c1_V[9:0] & ~wmask);
end
// int_c3_c2_V[9:0]
always @(posedge clk) begin
    if (rst)
        int_c3_c2_V[9:0] <= 0;
    else if (w_hs && waddr == ADDR_C3_C2_V_DATA_0)
        int_c3_c2_V[9:0] <= (WDATA[31:0] & wmask) | (int_c3_c2_V[9:0] & ~wmask);
end
// int_c3_c3_V[9:0]
always @(posedge clk) begin
    if (rst)
        int_c3_c3_V[9:0] <= 0;
    else if (w_hs && waddr == ADDR_C3_C3_V_DATA_0)
        int_c3_c3_V[9:0] <= (WDATA[31:0] & wmask) | (int_c3_c3_V[9:0] & ~wmask);
end
// int_bias_c1_V[9:0]
always @(posedge clk) begin
    if (rst)
        int_bias_c1_V[9:0] <= 0;
    else if (w_hs && waddr == ADDR_BIAS_C1_V_DATA_0)
        int_bias_c1_V[9:0] <= (WDATA[31:0] & wmask) | (int_bias_c1_V[9:0] & ~wmask);
end
// int_bias_c2_V[9:0]
always @(posedge clk) begin
    if (rst)
        int_bias_c2_V[9:0] <= 0;
    else if (w_hs && waddr == ADDR_BIAS_C2_V_DATA_0)
        int_bias_c2_V[9:0] <= (WDATA[31:0] & wmask) | (int_bias_c2_V[9:0] & ~wmask);
end
// int_bias_c3_V[9:0]
always @(posedge clk) begin
    if (rst)
        int_bias_c3_V[9:0] <= 0;
    else if (w_hs && waddr == ADDR_BIAS_C3_V_DATA_0)
        int_bias_c3_V[9:0] <= (WDATA[31:0] & wmask) | (int_bias_c3_V[9:0] & ~wmask);
end

//------------------------Memory logic-------------------

endmodule
