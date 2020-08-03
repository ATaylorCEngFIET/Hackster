// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
`timescale 1ns/1ps
module design_1_v_tpg_0_0_v_tpg_CTRL_s_axi
#(parameter
    C_S_AXI_ADDR_WIDTH = 8,
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
    output wire                          interrupt,
    output wire [15:0]                   height,
    output wire [15:0]                   width,
    output wire [7:0]                    bckgndId,
    output wire [7:0]                    ovrlayId,
    output wire [7:0]                    maskId,
    output wire [7:0]                    motionSpeed,
    output wire [7:0]                    colorFormat,
    output wire [15:0]                   crossHairX,
    output wire [15:0]                   crossHairY,
    output wire [15:0]                   ZplateHorContStart,
    output wire [15:0]                   ZplateHorContDelta,
    output wire [15:0]                   ZplateVerContStart,
    output wire [15:0]                   ZplateVerContDelta,
    output wire [15:0]                   boxSize,
    output wire [15:0]                   boxColorR,
    output wire [15:0]                   boxColorG,
    output wire [15:0]                   boxColorB,
    output wire [7:0]                    dpDynamicRange,
    output wire [7:0]                    dpYUVCoef,
    output wire [15:0]                   field_id,
    output wire [15:0]                   bck_motion_en,
    output wire                          ap_start,
    input  wire                          ap_done,
    input  wire                          ap_ready,
    input  wire                          ap_idle
);
//------------------------Address Info-------------------
// 0x00 : Control signals
//        bit 0  - ap_start (Read/Write/COH)
//        bit 1  - ap_done (Read/COR)
//        bit 2  - ap_idle (Read)
//        bit 3  - ap_ready (Read)
//        bit 7  - auto_restart (Read/Write)
//        others - reserved
// 0x04 : Global Interrupt Enable Register
//        bit 0  - Global Interrupt Enable (Read/Write)
//        others - reserved
// 0x08 : IP Interrupt Enable Register (Read/Write)
//        bit 0  - Channel 0 (ap_done)
//        bit 1  - Channel 1 (ap_ready)
//        others - reserved
// 0x0c : IP Interrupt Status Register (Read/TOW)
//        bit 0  - Channel 0 (ap_done)
//        bit 1  - Channel 1 (ap_ready)
//        others - reserved
// 0x10 : Data signal of height
//        bit 15~0 - height[15:0] (Read/Write)
//        others   - reserved
// 0x14 : reserved
// 0x18 : Data signal of width
//        bit 15~0 - width[15:0] (Read/Write)
//        others   - reserved
// 0x1c : reserved
// 0x20 : Data signal of bckgndId
//        bit 7~0 - bckgndId[7:0] (Read/Write)
//        others  - reserved
// 0x24 : reserved
// 0x28 : Data signal of ovrlayId
//        bit 7~0 - ovrlayId[7:0] (Read/Write)
//        others  - reserved
// 0x2c : reserved
// 0x30 : Data signal of maskId
//        bit 7~0 - maskId[7:0] (Read/Write)
//        others  - reserved
// 0x34 : reserved
// 0x38 : Data signal of motionSpeed
//        bit 7~0 - motionSpeed[7:0] (Read/Write)
//        others  - reserved
// 0x3c : reserved
// 0x40 : Data signal of colorFormat
//        bit 7~0 - colorFormat[7:0] (Read/Write)
//        others  - reserved
// 0x44 : reserved
// 0x48 : Data signal of crossHairX
//        bit 15~0 - crossHairX[15:0] (Read/Write)
//        others   - reserved
// 0x4c : reserved
// 0x50 : Data signal of crossHairY
//        bit 15~0 - crossHairY[15:0] (Read/Write)
//        others   - reserved
// 0x54 : reserved
// 0x58 : Data signal of ZplateHorContStart
//        bit 15~0 - ZplateHorContStart[15:0] (Read/Write)
//        others   - reserved
// 0x5c : reserved
// 0x60 : Data signal of ZplateHorContDelta
//        bit 15~0 - ZplateHorContDelta[15:0] (Read/Write)
//        others   - reserved
// 0x64 : reserved
// 0x68 : Data signal of ZplateVerContStart
//        bit 15~0 - ZplateVerContStart[15:0] (Read/Write)
//        others   - reserved
// 0x6c : reserved
// 0x70 : Data signal of ZplateVerContDelta
//        bit 15~0 - ZplateVerContDelta[15:0] (Read/Write)
//        others   - reserved
// 0x74 : reserved
// 0x78 : Data signal of boxSize
//        bit 15~0 - boxSize[15:0] (Read/Write)
//        others   - reserved
// 0x7c : reserved
// 0x80 : Data signal of boxColorR
//        bit 15~0 - boxColorR[15:0] (Read/Write)
//        others   - reserved
// 0x84 : reserved
// 0x88 : Data signal of boxColorG
//        bit 15~0 - boxColorG[15:0] (Read/Write)
//        others   - reserved
// 0x8c : reserved
// 0x90 : Data signal of boxColorB
//        bit 15~0 - boxColorB[15:0] (Read/Write)
//        others   - reserved
// 0x94 : reserved
// 0xc0 : Data signal of dpDynamicRange
//        bit 7~0 - dpDynamicRange[7:0] (Read/Write)
//        others  - reserved
// 0xc4 : reserved
// 0xc8 : Data signal of dpYUVCoef
//        bit 7~0 - dpYUVCoef[7:0] (Read/Write)
//        others  - reserved
// 0xcc : reserved
// 0xd0 : Data signal of field_id
//        bit 15~0 - field_id[15:0] (Read/Write)
//        others   - reserved
// 0xd4 : reserved
// 0xd8 : Data signal of bck_motion_en
//        bit 15~0 - bck_motion_en[15:0] (Read/Write)
//        others   - reserved
// 0xdc : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

//------------------------Parameter----------------------
localparam
    ADDR_AP_CTRL                   = 8'h00,
    ADDR_GIE                       = 8'h04,
    ADDR_IER                       = 8'h08,
    ADDR_ISR                       = 8'h0c,
    ADDR_HEIGHT_DATA_0             = 8'h10,
    ADDR_HEIGHT_CTRL               = 8'h14,
    ADDR_WIDTH_DATA_0              = 8'h18,
    ADDR_WIDTH_CTRL                = 8'h1c,
    ADDR_BCKGNDID_DATA_0           = 8'h20,
    ADDR_BCKGNDID_CTRL             = 8'h24,
    ADDR_OVRLAYID_DATA_0           = 8'h28,
    ADDR_OVRLAYID_CTRL             = 8'h2c,
    ADDR_MASKID_DATA_0             = 8'h30,
    ADDR_MASKID_CTRL               = 8'h34,
    ADDR_MOTIONSPEED_DATA_0        = 8'h38,
    ADDR_MOTIONSPEED_CTRL          = 8'h3c,
    ADDR_COLORFORMAT_DATA_0        = 8'h40,
    ADDR_COLORFORMAT_CTRL          = 8'h44,
    ADDR_CROSSHAIRX_DATA_0         = 8'h48,
    ADDR_CROSSHAIRX_CTRL           = 8'h4c,
    ADDR_CROSSHAIRY_DATA_0         = 8'h50,
    ADDR_CROSSHAIRY_CTRL           = 8'h54,
    ADDR_ZPLATEHORCONTSTART_DATA_0 = 8'h58,
    ADDR_ZPLATEHORCONTSTART_CTRL   = 8'h5c,
    ADDR_ZPLATEHORCONTDELTA_DATA_0 = 8'h60,
    ADDR_ZPLATEHORCONTDELTA_CTRL   = 8'h64,
    ADDR_ZPLATEVERCONTSTART_DATA_0 = 8'h68,
    ADDR_ZPLATEVERCONTSTART_CTRL   = 8'h6c,
    ADDR_ZPLATEVERCONTDELTA_DATA_0 = 8'h70,
    ADDR_ZPLATEVERCONTDELTA_CTRL   = 8'h74,
    ADDR_BOXSIZE_DATA_0            = 8'h78,
    ADDR_BOXSIZE_CTRL              = 8'h7c,
    ADDR_BOXCOLORR_DATA_0          = 8'h80,
    ADDR_BOXCOLORR_CTRL            = 8'h84,
    ADDR_BOXCOLORG_DATA_0          = 8'h88,
    ADDR_BOXCOLORG_CTRL            = 8'h8c,
    ADDR_BOXCOLORB_DATA_0          = 8'h90,
    ADDR_BOXCOLORB_CTRL            = 8'h94,
    ADDR_DPDYNAMICRANGE_DATA_0     = 8'hc0,
    ADDR_DPDYNAMICRANGE_CTRL       = 8'hc4,
    ADDR_DPYUVCOEF_DATA_0          = 8'hc8,
    ADDR_DPYUVCOEF_CTRL            = 8'hcc,
    ADDR_FIELD_ID_DATA_0           = 8'hd0,
    ADDR_FIELD_ID_CTRL             = 8'hd4,
    ADDR_BCK_MOTION_EN_DATA_0      = 8'hd8,
    ADDR_BCK_MOTION_EN_CTRL        = 8'hdc,
    WRIDLE                         = 2'd0,
    WRDATA                         = 2'd1,
    WRRESP                         = 2'd2,
    WRRESET                        = 2'd3,
    RDIDLE                         = 2'd0,
    RDDATA                         = 2'd1,
    RDRESET                        = 2'd2,
    ADDR_BITS         = 8;

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
    reg                           int_ap_idle;
    reg                           int_ap_ready;
    reg                           int_ap_done = 1'b0;
    reg                           int_ap_start = 1'b0;
    reg                           int_auto_restart = 1'b0;
    reg                           int_gie = 1'b0;
    reg  [1:0]                    int_ier = 2'b0;
    reg  [1:0]                    int_isr = 2'b0;
    reg  [15:0]                   int_height = 'b0;
    reg  [15:0]                   int_width = 'b0;
    reg  [7:0]                    int_bckgndId = 'b0;
    reg  [7:0]                    int_ovrlayId = 'b0;
    reg  [7:0]                    int_maskId = 'b0;
    reg  [7:0]                    int_motionSpeed = 'b0;
    reg  [7:0]                    int_colorFormat = 'b0;
    reg  [15:0]                   int_crossHairX = 'b0;
    reg  [15:0]                   int_crossHairY = 'b0;
    reg  [15:0]                   int_ZplateHorContStart = 'b0;
    reg  [15:0]                   int_ZplateHorContDelta = 'b0;
    reg  [15:0]                   int_ZplateVerContStart = 'b0;
    reg  [15:0]                   int_ZplateVerContDelta = 'b0;
    reg  [15:0]                   int_boxSize = 'b0;
    reg  [15:0]                   int_boxColorR = 'b0;
    reg  [15:0]                   int_boxColorG = 'b0;
    reg  [15:0]                   int_boxColorB = 'b0;
    reg  [7:0]                    int_dpDynamicRange = 'b0;
    reg  [7:0]                    int_dpYUVCoef = 'b0;
    reg  [15:0]                   int_field_id = 'b0;
    reg  [15:0]                   int_bck_motion_en = 'b0;

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
                ADDR_AP_CTRL: begin
                    rdata[0] <= int_ap_start;
                    rdata[1] <= int_ap_done;
                    rdata[2] <= int_ap_idle;
                    rdata[3] <= int_ap_ready;
                    rdata[7] <= int_auto_restart;
                end
                ADDR_GIE: begin
                    rdata <= int_gie;
                end
                ADDR_IER: begin
                    rdata <= int_ier;
                end
                ADDR_ISR: begin
                    rdata <= int_isr;
                end
                ADDR_HEIGHT_DATA_0: begin
                    rdata <= int_height[15:0];
                end
                ADDR_WIDTH_DATA_0: begin
                    rdata <= int_width[15:0];
                end
                ADDR_BCKGNDID_DATA_0: begin
                    rdata <= int_bckgndId[7:0];
                end
                ADDR_OVRLAYID_DATA_0: begin
                    rdata <= int_ovrlayId[7:0];
                end
                ADDR_MASKID_DATA_0: begin
                    rdata <= int_maskId[7:0];
                end
                ADDR_MOTIONSPEED_DATA_0: begin
                    rdata <= int_motionSpeed[7:0];
                end
                ADDR_COLORFORMAT_DATA_0: begin
                    rdata <= int_colorFormat[7:0];
                end
                ADDR_CROSSHAIRX_DATA_0: begin
                    rdata <= int_crossHairX[15:0];
                end
                ADDR_CROSSHAIRY_DATA_0: begin
                    rdata <= int_crossHairY[15:0];
                end
                ADDR_ZPLATEHORCONTSTART_DATA_0: begin
                    rdata <= int_ZplateHorContStart[15:0];
                end
                ADDR_ZPLATEHORCONTDELTA_DATA_0: begin
                    rdata <= int_ZplateHorContDelta[15:0];
                end
                ADDR_ZPLATEVERCONTSTART_DATA_0: begin
                    rdata <= int_ZplateVerContStart[15:0];
                end
                ADDR_ZPLATEVERCONTDELTA_DATA_0: begin
                    rdata <= int_ZplateVerContDelta[15:0];
                end
                ADDR_BOXSIZE_DATA_0: begin
                    rdata <= int_boxSize[15:0];
                end
                ADDR_BOXCOLORR_DATA_0: begin
                    rdata <= int_boxColorR[15:0];
                end
                ADDR_BOXCOLORG_DATA_0: begin
                    rdata <= int_boxColorG[15:0];
                end
                ADDR_BOXCOLORB_DATA_0: begin
                    rdata <= int_boxColorB[15:0];
                end
                ADDR_DPDYNAMICRANGE_DATA_0: begin
                    rdata <= int_dpDynamicRange[7:0];
                end
                ADDR_DPYUVCOEF_DATA_0: begin
                    rdata <= int_dpYUVCoef[7:0];
                end
                ADDR_FIELD_ID_DATA_0: begin
                    rdata <= int_field_id[15:0];
                end
                ADDR_BCK_MOTION_EN_DATA_0: begin
                    rdata <= int_bck_motion_en[15:0];
                end
            endcase
        end
    end
end


//------------------------Register logic-----------------
assign interrupt          = int_gie & (|int_isr);
assign ap_start           = int_ap_start;
assign height             = int_height;
assign width              = int_width;
assign bckgndId           = int_bckgndId;
assign ovrlayId           = int_ovrlayId;
assign maskId             = int_maskId;
assign motionSpeed        = int_motionSpeed;
assign colorFormat        = int_colorFormat;
assign crossHairX         = int_crossHairX;
assign crossHairY         = int_crossHairY;
assign ZplateHorContStart = int_ZplateHorContStart;
assign ZplateHorContDelta = int_ZplateHorContDelta;
assign ZplateVerContStart = int_ZplateVerContStart;
assign ZplateVerContDelta = int_ZplateVerContDelta;
assign boxSize            = int_boxSize;
assign boxColorR          = int_boxColorR;
assign boxColorG          = int_boxColorG;
assign boxColorB          = int_boxColorB;
assign dpDynamicRange     = int_dpDynamicRange;
assign dpYUVCoef          = int_dpYUVCoef;
assign field_id           = int_field_id;
assign bck_motion_en      = int_bck_motion_en;
// int_ap_start
always @(posedge ACLK) begin
    if (ARESET)
        int_ap_start <= 1'b0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_AP_CTRL && WSTRB[0] && WDATA[0])
            int_ap_start <= 1'b1;
        else if (ap_ready)
            int_ap_start <= int_auto_restart; // clear on handshake/auto restart
    end
end

// int_ap_done
always @(posedge ACLK) begin
    if (ARESET)
        int_ap_done <= 1'b0;
    else if (ACLK_EN) begin
        if (ap_done)
            int_ap_done <= 1'b1;
        else if (ar_hs && raddr == ADDR_AP_CTRL)
            int_ap_done <= 1'b0; // clear on read
    end
end

// int_ap_idle
always @(posedge ACLK) begin
    if (ARESET)
        int_ap_idle <= 1'b0;
    else if (ACLK_EN) begin
            int_ap_idle <= ap_idle;
    end
end

// int_ap_ready
always @(posedge ACLK) begin
    if (ARESET)
        int_ap_ready <= 1'b0;
    else if (ACLK_EN) begin
            int_ap_ready <= ap_ready;
    end
end

// int_auto_restart
always @(posedge ACLK) begin
    if (ARESET)
        int_auto_restart <= 1'b0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_AP_CTRL && WSTRB[0])
            int_auto_restart <=  WDATA[7];
    end
end

// int_gie
always @(posedge ACLK) begin
    if (ARESET)
        int_gie <= 1'b0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_GIE && WSTRB[0])
            int_gie <= WDATA[0];
    end
end

// int_ier
always @(posedge ACLK) begin
    if (ARESET)
        int_ier <= 1'b0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_IER && WSTRB[0])
            int_ier <= WDATA[1:0];
    end
end

// int_isr[0]
always @(posedge ACLK) begin
    if (ARESET)
        int_isr[0] <= 1'b0;
    else if (ACLK_EN) begin
        if (int_ier[0] & ap_done)
            int_isr[0] <= 1'b1;
        else if (w_hs && waddr == ADDR_ISR && WSTRB[0])
            int_isr[0] <= int_isr[0] ^ WDATA[0]; // toggle on write
    end
end

// int_isr[1]
always @(posedge ACLK) begin
    if (ARESET)
        int_isr[1] <= 1'b0;
    else if (ACLK_EN) begin
        if (int_ier[1] & ap_ready)
            int_isr[1] <= 1'b1;
        else if (w_hs && waddr == ADDR_ISR && WSTRB[0])
            int_isr[1] <= int_isr[1] ^ WDATA[1]; // toggle on write
    end
end

// int_height[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_height[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_HEIGHT_DATA_0)
            int_height[15:0] <= (WDATA[31:0] & wmask) | (int_height[15:0] & ~wmask);
    end
end

// int_width[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_width[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_WIDTH_DATA_0)
            int_width[15:0] <= (WDATA[31:0] & wmask) | (int_width[15:0] & ~wmask);
    end
end

// int_bckgndId[7:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_bckgndId[7:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_BCKGNDID_DATA_0)
            int_bckgndId[7:0] <= (WDATA[31:0] & wmask) | (int_bckgndId[7:0] & ~wmask);
    end
end

// int_ovrlayId[7:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_ovrlayId[7:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_OVRLAYID_DATA_0)
            int_ovrlayId[7:0] <= (WDATA[31:0] & wmask) | (int_ovrlayId[7:0] & ~wmask);
    end
end

// int_maskId[7:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_maskId[7:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_MASKID_DATA_0)
            int_maskId[7:0] <= (WDATA[31:0] & wmask) | (int_maskId[7:0] & ~wmask);
    end
end

// int_motionSpeed[7:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_motionSpeed[7:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_MOTIONSPEED_DATA_0)
            int_motionSpeed[7:0] <= (WDATA[31:0] & wmask) | (int_motionSpeed[7:0] & ~wmask);
    end
end

// int_colorFormat[7:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_colorFormat[7:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_COLORFORMAT_DATA_0)
            int_colorFormat[7:0] <= (WDATA[31:0] & wmask) | (int_colorFormat[7:0] & ~wmask);
    end
end

// int_crossHairX[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_crossHairX[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_CROSSHAIRX_DATA_0)
            int_crossHairX[15:0] <= (WDATA[31:0] & wmask) | (int_crossHairX[15:0] & ~wmask);
    end
end

// int_crossHairY[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_crossHairY[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_CROSSHAIRY_DATA_0)
            int_crossHairY[15:0] <= (WDATA[31:0] & wmask) | (int_crossHairY[15:0] & ~wmask);
    end
end

// int_ZplateHorContStart[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_ZplateHorContStart[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_ZPLATEHORCONTSTART_DATA_0)
            int_ZplateHorContStart[15:0] <= (WDATA[31:0] & wmask) | (int_ZplateHorContStart[15:0] & ~wmask);
    end
end

// int_ZplateHorContDelta[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_ZplateHorContDelta[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_ZPLATEHORCONTDELTA_DATA_0)
            int_ZplateHorContDelta[15:0] <= (WDATA[31:0] & wmask) | (int_ZplateHorContDelta[15:0] & ~wmask);
    end
end

// int_ZplateVerContStart[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_ZplateVerContStart[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_ZPLATEVERCONTSTART_DATA_0)
            int_ZplateVerContStart[15:0] <= (WDATA[31:0] & wmask) | (int_ZplateVerContStart[15:0] & ~wmask);
    end
end

// int_ZplateVerContDelta[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_ZplateVerContDelta[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_ZPLATEVERCONTDELTA_DATA_0)
            int_ZplateVerContDelta[15:0] <= (WDATA[31:0] & wmask) | (int_ZplateVerContDelta[15:0] & ~wmask);
    end
end

// int_boxSize[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_boxSize[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_BOXSIZE_DATA_0)
            int_boxSize[15:0] <= (WDATA[31:0] & wmask) | (int_boxSize[15:0] & ~wmask);
    end
end

// int_boxColorR[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_boxColorR[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_BOXCOLORR_DATA_0)
            int_boxColorR[15:0] <= (WDATA[31:0] & wmask) | (int_boxColorR[15:0] & ~wmask);
    end
end

// int_boxColorG[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_boxColorG[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_BOXCOLORG_DATA_0)
            int_boxColorG[15:0] <= (WDATA[31:0] & wmask) | (int_boxColorG[15:0] & ~wmask);
    end
end

// int_boxColorB[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_boxColorB[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_BOXCOLORB_DATA_0)
            int_boxColorB[15:0] <= (WDATA[31:0] & wmask) | (int_boxColorB[15:0] & ~wmask);
    end
end

// int_dpDynamicRange[7:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_dpDynamicRange[7:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_DPDYNAMICRANGE_DATA_0)
            int_dpDynamicRange[7:0] <= (WDATA[31:0] & wmask) | (int_dpDynamicRange[7:0] & ~wmask);
    end
end

// int_dpYUVCoef[7:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_dpYUVCoef[7:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_DPYUVCOEF_DATA_0)
            int_dpYUVCoef[7:0] <= (WDATA[31:0] & wmask) | (int_dpYUVCoef[7:0] & ~wmask);
    end
end

// int_field_id[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_field_id[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_FIELD_ID_DATA_0)
            int_field_id[15:0] <= (WDATA[31:0] & wmask) | (int_field_id[15:0] & ~wmask);
    end
end

// int_bck_motion_en[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_bck_motion_en[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_BCK_MOTION_EN_DATA_0)
            int_bck_motion_en[15:0] <= (WDATA[31:0] & wmask) | (int_bck_motion_en[15:0] & ~wmask);
    end
end


//------------------------Memory logic-------------------

endmodule
