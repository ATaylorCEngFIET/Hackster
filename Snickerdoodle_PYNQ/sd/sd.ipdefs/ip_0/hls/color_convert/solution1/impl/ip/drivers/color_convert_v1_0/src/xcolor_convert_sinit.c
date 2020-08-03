// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xcolor_convert.h"

extern XColor_convert_Config XColor_convert_ConfigTable[];

XColor_convert_Config *XColor_convert_LookupConfig(u16 DeviceId) {
	XColor_convert_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XCOLOR_CONVERT_NUM_INSTANCES; Index++) {
		if (XColor_convert_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XColor_convert_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XColor_convert_Initialize(XColor_convert *InstancePtr, u16 DeviceId) {
	XColor_convert_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XColor_convert_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XColor_convert_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

