/******************************************************************************
*
* Copyright (C) 2009 - 2014 Xilinx, Inc. All rights reserved.
*
* Permission is hereby granted, free of charge, to any person obtaining a copy
* of this software and associated documentation files (the "Software"), to deal
* in the Software without restriction, including without limitation the rights
* to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
* copies of the Software, and to permit persons to whom the Software is
* furnished to do so, subject to the following conditions:
*
* The above copyright notice and this permission notice shall be included in
* all copies or substantial portions of the Software.
*
* Use of the Software is limited solely to applications:
* (a) running on a Xilinx device, or
* (b) that interact with a Xilinx device through a bus or interconnect.
*
* THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
* IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
* FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
* XILINX  BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
* WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF
* OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
* SOFTWARE.
*
* Except as contained in this notice, the name of the Xilinx shall not be used
* in advertising or otherwise to promote the sale, use or other dealings in
* this Software without prior written authorization from Xilinx.
*
******************************************************************************/
/*****************************************************************************/
/**
*
* @file xil_exception.c
*
* This file contains implementation of exception related driver functions.
*
* @addtogroup microblaze_exception_apis Microblaze exception APIs
* @{
* <pre>
* MODIFICATION HISTORY:
*
* Ver   Who  Date     Changes
* ----- ---- -------- -------------------------------------------------------
* 1.00  hbm  07/28/09 Initial release
* 6.2   ms   02/20/17 Fixed compilation warning. This is a fix for CR-969126.
*
* </pre>
*
* @note
*
* None.
*
******************************************************************************/

#include "xil_types.h"
#include "xil_exception.h"

#include "microblaze_exceptions_g.h"
#include "microblaze_interrupts_i.h"

#ifdef __cplusplus
extern "C" {
#endif

extern void microblaze_enable_exceptions(void);
extern void microblaze_disable_exceptions(void);
extern void microblaze_enable_interrupts(void);
extern void microblaze_disable_interrupts(void);

/**
* Currently HAL is an augmented part of standalone BSP, so the old definition
* of MB_ExceptionVectorTableEntry is used here.
*/

typedef struct {
   Xil_ExceptionHandler Handler;
   void *CallBackRef;
} MB_ExceptionVectorTableEntry;

#ifdef __cplusplus
}
#endif


/************************** Variable Definitions *****************************/
extern MB_ExceptionVectorTableEntry MB_ExceptionVectorTable[XIL_EXCEPTION_ID_INT];
extern MB_InterruptVectorTableEntry MB_InterruptVectorTable[MB_INTERRUPT_VECTOR_TABLE_ENTRIES];

/****************************************************************************/
/**
 * @brief   This function is a stub handler that is the default handler that gets
 *          called if the application has not setup a handler for a specific
 *          exception. The function interface has to match the interface
 *          specified for a handler even though none of the arguments are used.
 *
 * @param	Data: unused by this function.
 *
 *****************************************************************************/
static void Xil_ExceptionNullHandler(void *Data)
{
	(void) Data;
}

/****************************************************************************/
/**
* @brief   Initialize exception handling for the processor. The exception
*          vector table is setup with the stub handler for all exceptions.
*
* @param    None.
*
* @return   None.
*
*****************************************************************************/
void Xil_ExceptionInit(void)
{
	/*
	 * there is no need to setup the exception table here
	 */

}

/****************************************************************************/
/**
* @brief    Enable Exceptions.
*
* @return   None.
*
******************************************************************************/
void Xil_ExceptionEnable(void)
{
#ifdef MICROBLAZE_EXCEPTIONS_ENABLED
	microblaze_enable_exceptions();
#endif
	microblaze_enable_interrupts();
}

/****************************************************************************/
/**
* @brief    Disable Exceptions.
*
* @param    None.
*
* @return   None.
*
******************************************************************************/
void Xil_ExceptionDisable(void)
{
#ifdef MICROBLAZE_EXCEPTIONS_ENABLED
	microblaze_disable_exceptions();
#endif
	microblaze_disable_interrupts();
}

/*****************************************************************************/
/**
*@brief     Makes the connection between the Id of the exception source and the
*           associated handler that is to run when the exception is recognized.
*           The argument provided in this call as the DataPtr is used as the
*           argument for the handler when it is called.
*
* @param    Id: contains the 32 bit ID of the exception source and should
*           be XIL_EXCEPTION_INT or be in the range of 0 to XIL_EXCEPTION_LAST.
*	        See xil_mach_exception.h for further information.
* @param    Handler: handler function to be registered for exception
* @param    Data: a reference to data that will be passed to the handler
*           when it gets called.
*
****************************************************************************/
void Xil_ExceptionRegisterHandler(u32 Id, Xil_ExceptionHandler Handler,
				  void *Data)
{
	if (Id == XIL_EXCEPTION_ID_INT) {
		MB_InterruptVectorTable[0].Handler = Handler;
		MB_InterruptVectorTable[0].CallBackRef = Data;
	}
	else {
#ifdef MICROBLAZE_EXCEPTIONS_ENABLED
		MB_ExceptionVectorTable[Id].Handler = Handler;
		MB_ExceptionVectorTable[Id].CallBackRef = Data;
#endif
	}
}


/*****************************************************************************/
/**
* @brief    Removes the handler for a specific exception Id. The stub handler
*           is then registered for this exception Id.
*
* @param    Id: contains the 32 bit ID of the exception source and should
*           be XIL_EXCEPTION_INT or in the range of 0 to XIL_EXCEPTION_LAST.
*	        See xexception_l.h for further information.
*
****************************************************************************/
void Xil_ExceptionRemoveHandler(u32 Id)
{
	if (Id == XIL_EXCEPTION_ID_INT) {
		MB_InterruptVectorTable[0].Handler = Xil_ExceptionNullHandler;
		MB_InterruptVectorTable[0].CallBackRef = NULL;
	}
	else {

#ifdef MICROBLAZE_EXCEPTIONS_ENABLED
		MB_ExceptionVectorTable[Id].Handler =
			Xil_ExceptionNullHandler;
		MB_ExceptionVectorTable[Id].CallBackRef = NULL;
#endif
	}
}
/**
* @} End of "addtogroup microblaze_exception_apis".
*/