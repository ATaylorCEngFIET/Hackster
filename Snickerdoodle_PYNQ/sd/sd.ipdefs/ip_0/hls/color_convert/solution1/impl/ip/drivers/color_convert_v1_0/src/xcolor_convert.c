// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xcolor_convert.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XColor_convert_CfgInitialize(XColor_convert *InstancePtr, XColor_convert_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Axilites_BaseAddress = ConfigPtr->Axilites_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XColor_convert_Set_c1_c1_V(XColor_convert *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XColor_convert_WriteReg(InstancePtr->Axilites_BaseAddress, XCOLOR_CONVERT_AXILITES_ADDR_C1_C1_V_DATA, Data);
}

u32 XColor_convert_Get_c1_c1_V(XColor_convert *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XColor_convert_ReadReg(InstancePtr->Axilites_BaseAddress, XCOLOR_CONVERT_AXILITES_ADDR_C1_C1_V_DATA);
    return Data;
}

void XColor_convert_Set_c1_c2_V(XColor_convert *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XColor_convert_WriteReg(InstancePtr->Axilites_BaseAddress, XCOLOR_CONVERT_AXILITES_ADDR_C1_C2_V_DATA, Data);
}

u32 XColor_convert_Get_c1_c2_V(XColor_convert *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XColor_convert_ReadReg(InstancePtr->Axilites_BaseAddress, XCOLOR_CONVERT_AXILITES_ADDR_C1_C2_V_DATA);
    return Data;
}

void XColor_convert_Set_c1_c3_V(XColor_convert *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XColor_convert_WriteReg(InstancePtr->Axilites_BaseAddress, XCOLOR_CONVERT_AXILITES_ADDR_C1_C3_V_DATA, Data);
}

u32 XColor_convert_Get_c1_c3_V(XColor_convert *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XColor_convert_ReadReg(InstancePtr->Axilites_BaseAddress, XCOLOR_CONVERT_AXILITES_ADDR_C1_C3_V_DATA);
    return Data;
}

void XColor_convert_Set_c2_c1_V(XColor_convert *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XColor_convert_WriteReg(InstancePtr->Axilites_BaseAddress, XCOLOR_CONVERT_AXILITES_ADDR_C2_C1_V_DATA, Data);
}

u32 XColor_convert_Get_c2_c1_V(XColor_convert *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XColor_convert_ReadReg(InstancePtr->Axilites_BaseAddress, XCOLOR_CONVERT_AXILITES_ADDR_C2_C1_V_DATA);
    return Data;
}

void XColor_convert_Set_c2_c2_V(XColor_convert *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XColor_convert_WriteReg(InstancePtr->Axilites_BaseAddress, XCOLOR_CONVERT_AXILITES_ADDR_C2_C2_V_DATA, Data);
}

u32 XColor_convert_Get_c2_c2_V(XColor_convert *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XColor_convert_ReadReg(InstancePtr->Axilites_BaseAddress, XCOLOR_CONVERT_AXILITES_ADDR_C2_C2_V_DATA);
    return Data;
}

void XColor_convert_Set_c2_c3_V(XColor_convert *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XColor_convert_WriteReg(InstancePtr->Axilites_BaseAddress, XCOLOR_CONVERT_AXILITES_ADDR_C2_C3_V_DATA, Data);
}

u32 XColor_convert_Get_c2_c3_V(XColor_convert *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XColor_convert_ReadReg(InstancePtr->Axilites_BaseAddress, XCOLOR_CONVERT_AXILITES_ADDR_C2_C3_V_DATA);
    return Data;
}

void XColor_convert_Set_c3_c1_V(XColor_convert *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XColor_convert_WriteReg(InstancePtr->Axilites_BaseAddress, XCOLOR_CONVERT_AXILITES_ADDR_C3_C1_V_DATA, Data);
}

u32 XColor_convert_Get_c3_c1_V(XColor_convert *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XColor_convert_ReadReg(InstancePtr->Axilites_BaseAddress, XCOLOR_CONVERT_AXILITES_ADDR_C3_C1_V_DATA);
    return Data;
}

void XColor_convert_Set_c3_c2_V(XColor_convert *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XColor_convert_WriteReg(InstancePtr->Axilites_BaseAddress, XCOLOR_CONVERT_AXILITES_ADDR_C3_C2_V_DATA, Data);
}

u32 XColor_convert_Get_c3_c2_V(XColor_convert *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XColor_convert_ReadReg(InstancePtr->Axilites_BaseAddress, XCOLOR_CONVERT_AXILITES_ADDR_C3_C2_V_DATA);
    return Data;
}

void XColor_convert_Set_c3_c3_V(XColor_convert *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XColor_convert_WriteReg(InstancePtr->Axilites_BaseAddress, XCOLOR_CONVERT_AXILITES_ADDR_C3_C3_V_DATA, Data);
}

u32 XColor_convert_Get_c3_c3_V(XColor_convert *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XColor_convert_ReadReg(InstancePtr->Axilites_BaseAddress, XCOLOR_CONVERT_AXILITES_ADDR_C3_C3_V_DATA);
    return Data;
}

void XColor_convert_Set_bias_c1_V(XColor_convert *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XColor_convert_WriteReg(InstancePtr->Axilites_BaseAddress, XCOLOR_CONVERT_AXILITES_ADDR_BIAS_C1_V_DATA, Data);
}

u32 XColor_convert_Get_bias_c1_V(XColor_convert *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XColor_convert_ReadReg(InstancePtr->Axilites_BaseAddress, XCOLOR_CONVERT_AXILITES_ADDR_BIAS_C1_V_DATA);
    return Data;
}

void XColor_convert_Set_bias_c2_V(XColor_convert *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XColor_convert_WriteReg(InstancePtr->Axilites_BaseAddress, XCOLOR_CONVERT_AXILITES_ADDR_BIAS_C2_V_DATA, Data);
}

u32 XColor_convert_Get_bias_c2_V(XColor_convert *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XColor_convert_ReadReg(InstancePtr->Axilites_BaseAddress, XCOLOR_CONVERT_AXILITES_ADDR_BIAS_C2_V_DATA);
    return Data;
}

void XColor_convert_Set_bias_c3_V(XColor_convert *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XColor_convert_WriteReg(InstancePtr->Axilites_BaseAddress, XCOLOR_CONVERT_AXILITES_ADDR_BIAS_C3_V_DATA, Data);
}

u32 XColor_convert_Get_bias_c3_V(XColor_convert *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XColor_convert_ReadReg(InstancePtr->Axilites_BaseAddress, XCOLOR_CONVERT_AXILITES_ADDR_BIAS_C3_V_DATA);
    return Data;
}

