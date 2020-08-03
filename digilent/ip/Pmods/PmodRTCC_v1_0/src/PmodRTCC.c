

/***************************** Include Files *******************************/
#include "PmodRTCC.h"

#include <stdlib.h>
#include <stdio.h>
#include <string.h>
/************************** Function Definitions ***************************/
XIic_Config RTCC_Config =
{

	0,
	0,
	0,
	2

};
static void StatusHandler(PmodRTCC *InstancePtr);
/* ------------------------------------------------------------ */
/***	void RTCC_begin(PmodRTCC* InstancePtr, u32 IIC_Address)
**
**	Parameters:
**		InstancePtr: A PmodRTCC object to start
**		IIC_Address: The Base address of the PmodRTCC IIC
**		Chip_Address: 7 bit Pmod device address
**
**	Return Value:
**		none
**
**	Errors:
**		none
**
**	Description:
**		Initialize the PmodRTCC.
*/
void RTCC_begin(PmodRTCC* InstancePtr, u32 IIC_Address, u8 Chip_Address)
{
	RTCC_Config.BaseAddress=IIC_Address;
	InstancePtr->chipAddr=Chip_Address;
	RTCC_IICInit(&InstancePtr->RTCCIic);
	XIic_SetAddress(&InstancePtr->RTCCIic, XII_ADDR_TO_SEND_TYPE, InstancePtr->chipAddr);
}

/* ------------------------------------------------------------ */
/***	RTCC_end(void)
**
**	Parameters:
**		InstancePtr		- PmodRTCC object to stop
**
**	Return Value:
**		none
**
**	Errors:
**		none
**
**	Description:
**		Stops the device
*/
void RTCC_end(PmodRTCC* InstancePtr){
	//XIic_Stop(&InstancePtr->RTCCIic);
}

/* ------------------------------------------------------------ */
/***	RTCC_IICInit
**
**	Parameters:
**		none
**
**	Return Value:
**		none
**
**	Errors:
**		none
**
**	Description:
**		Initializes the PmodRTCC IIC.

*/

int RTCC_IICInit(XIic *IicInstancePtr){
	int Status;

	Status = XIic_CfgInitialize(IicInstancePtr, &RTCC_Config, RTCC_Config.BaseAddress);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}



	/*
	 * Start the IIC driver so that the device is enabled.
	 */
	XIic_Start(IicInstancePtr);

	/*
	 * Disable Global interrupt to use polled mode operation
	 */
	XIic_IntrGlobalDisable(IicInstancePtr);

	return XST_SUCCESS;

}

/* ------------------------------------------------------------ */
/***	RTCC_ReadIIC
**
**	Parameters:
**		InstancePtr - PmodRTCC object to initialize
**		reg			- Register to read from
**		Data		- Pointer to recieve buffer
**		nData		- Number of data values to read
**
**	Return Value:
**		none
**
**	Errors:
**		none
**
**	Description:
**		Reads nData data bytes from register reg
**
*/
void RTCC_ReadIIC(PmodRTCC* InstancePtr, u8 reg, u8 *Data, int nData)
{
	int Status;
	Status = XIic_Start(&InstancePtr->RTCCIic);
	if (Status != XST_SUCCESS) {
		return;
	}
	if (InstancePtr->currentRegister!=reg){
		//XIic_MasterSend(&InstancePtr->RTCCIic, &reg, 1);
		XIic_Send(InstancePtr->RTCCIic.BaseAddress, InstancePtr->chipAddr, &reg, 1, XII_REPEATED_START_OPTION);
		InstancePtr->currentRegister=reg;
	}//else{
		//XIic_MasterRecv(&InstancePtr->RTCCIic, Data, nData);
	//}
	XIic_Recv(InstancePtr->RTCCIic.BaseAddress, InstancePtr->chipAddr, Data, nData, XIIC_STOP);


	//XIic_MasterSend(&InstancePtr->RTCCIic, &reg, 2);
	//InstancePtr->recvbytes=nData+1;
	//InstancePtr->recv=Data;
	//XIic_MasterRecv(&InstancePtr->RTCCIic, Data, nData);

	Status = XIic_Stop(&InstancePtr->RTCCIic);
	if (Status != XST_SUCCESS) {
		return;
	}
}

/* ------------------------------------------------------------ */
/***	RTCC_WriteIIC
**
**	Parameters:
**		InstancePtr - PmodRTCC object to initialize
**		reg			- Register to send to
**		Data		- Pointer to data buffer to send
**		nData		- Number of data values to send
**
**	Return Value:
**		none
**
**	Errors:
**		none
**
**	Description:
**		Writes nData data bytes to register reg
**
*/
void RTCC_WriteIIC(PmodRTCC* InstancePtr, u8 reg, u8 *Data, int nData)
{
	u8 out[10];
	out[0]=reg;
	out[1]=*Data;
	int Status;

	if (InstancePtr->currentRegister!=reg){
			InstancePtr->currentRegister=reg;
	}
	Status = XIic_Start(&InstancePtr->RTCCIic);
	if (Status != XST_SUCCESS) {
		return;
	}
	XIic_Send(InstancePtr->RTCCIic.BaseAddress, InstancePtr->chipAddr, out, nData+1, XIIC_STOP);

	//XIic_MasterSend(&InstancePtr->RTCCIic, out, nData+1);

	//XIic_DynMasterSend(&InstancePtr->RTCCIic, out, nData+1);

	//while(XIic_IsIicBusy(&InstancePtr->RTCCIic));

	Status = XIic_Stop(&InstancePtr->RTCCIic);
	if (Status != XST_SUCCESS) {
		return;
	}

}

/* ------------------------------------------------------------ */
/*  RTCC_SetupInterruptSystem()
**
**  Parameters:
**	  InstancePtr: PmodRTCC object to get data from
**	  interruptDeviceID: Device ID of the interrupt controller
**	  interruptID: The vector ID of the RTCC I2C interrupt
**
**  Return Value:
**    A status indicating XST_SUCCESS or a value that is contained in
**		xstatus.h.
**
**  Errors:
**    none
**
**  Description:
**    This function sets up the interrupt system for the example.  The processing
** 	  contained in this function assumes the hardware system was built with
** 	  and interrupt controller.
**
*****************************************************************************/
int RTCC_SetupInterruptSystem(PmodRTCC* InstancePtr, u32 interruptDeviceID, u32 interruptID, void* SendHandler,  void* ReceiveHandler)
{
	int Result;

#ifdef XPAR_XINTC_NUM_INSTANCES
	INTC *IntcInstancePtr = &InstancePtr->intc;
	/*
	 * Initialize the interrupt controller driver so that it's ready to use.
	 * specify the device ID that was generated in xparameters.h
	 */
	Result = XIntc_Initialize(IntcInstancePtr, interruptDeviceID);
	if (Result != XST_SUCCESS) {
		return Result;
	}

	/* Hook up interrupt service routine */
	XIntc_Connect(IntcInstancePtr, interruptID,
		      (Xil_ExceptionHandler)XIic_InterruptHandler, &InstancePtr->RTCCIic);

	/* Enable the interrupt vector at the interrupt controller */

	XIntc_Enable(IntcInstancePtr, interruptID);

	/*
	 * Start the interrupt controller such that interrupts are recognized
	 * and handled by the processor
	 */
	Result = XIntc_Start(IntcInstancePtr, XIN_REAL_MODE);
	if (Result != XST_SUCCESS) {
		return Result;
	}
	XIic_SetSendHandler(&InstancePtr->RTCCIic, InstancePtr, (XIic_Handler)SendHandler);
	XIic_SetRecvHandler(&InstancePtr->RTCCIic, InstancePtr, (XIic_Handler)ReceiveHandler);

	/*
	 * Initialize the exception table and register the interrupt
	 * controller handler with the exception table
	 */
	Xil_ExceptionInit();

	Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_INT,
			 (Xil_ExceptionHandler)INTC_HANDLER, IntcInstancePtr);

	/* Enable non-critical exceptions */
	Xil_ExceptionEnable();

#endif
#ifdef XPAR_SCUGIC_0_DEVICE_ID
	INTC *IntcInstancePtr = &InstancePtr->intc;
	XScuGic_Config *IntcConfig;

	/*
	 * Initialize the interrupt controller driver so that it is ready to
	 * use.
	 */
	IntcConfig = XScuGic_LookupConfig(interruptDeviceID);
	if (NULL == IntcConfig) {
		return XST_FAILURE;
	}

	Result = XScuGic_CfgInitialize(IntcInstancePtr, IntcConfig,
					IntcConfig->CpuBaseAddress);
	if (Result != XST_SUCCESS) {
		return XST_FAILURE;
	}

	XScuGic_SetPriorityTriggerType(IntcInstancePtr, interruptID,
					0xA0, 0x3);

	/*
	 * Connect the interrupt handler that will be called when an
	 * interrupt occurs for the device.
	 */
	Result = XScuGic_Connect(IntcInstancePtr, interruptID,
				 (Xil_ExceptionHandler)XIic_InterruptHandler, &InstancePtr->RTCCIic);
	if (Result != XST_SUCCESS) {
		return Result;
	}

	/*
	 * Enable the interrupt for the device.
	 */
	XScuGic_Enable(IntcInstancePtr, interruptID);


	XIic_SetSendHandler(&InstancePtr->RTCCIic, InstancePtr, (XIic_Handler)SendHandler);
	XIic_SetRecvHandler(&InstancePtr->RTCCIic, InstancePtr, (XIic_Handler)ReceiveHandler);
	XIic_SetStatusHandler(&InstancePtr->RTCCIic, InstancePtr, (XIic_Handler)StatusHandler);

	/*
	 * Initialize the exception table and register the interrupt
	 * controller handler with the exception table
	 */
	Xil_ExceptionInit();

	Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_INT,
			 (Xil_ExceptionHandler)INTC_HANDLER, IntcInstancePtr);

	/* Enable non-critical exceptions */
	Xil_ExceptionEnable();

#endif

	return XST_SUCCESS;
}

static void StatusHandler(PmodRTCC *InstancePtr){
	xil_printf("status\r\n");
}


//This function starts the RTCC_RTCC
void RTCCI2C_startClock(PmodRTCC* InstancePtr)
{
	u8 data = 0;
	RTCC_ReadIIC(InstancePtr, 0, &data, 1);

	data= (data | 0x80);

	RTCC_WriteIIC(InstancePtr, 0, &data, 1);

}

//This function stops the RTCC_RTCC
void RTCCI2C_stopClock(PmodRTCC *InstancePtr)
{
	u8 data = 0;
	RTCC_ReadIIC(InstancePtr, 0, &data, 1);

	data = (data & 0x7F);

	RTCC_WriteIIC(InstancePtr, 0,  &data, 1);
}

/** void RTCCI2C_enableAlarm(u8 dest, u8 config)
**
**	Parameters:
**		dest    - RTCC_ALM0 for alarm 0
**                RTCC_ALM1 for alarm 1
**      config  - alarm configuration:
**                RTCC_ALM_POL - MPF outputs high when alarm is triggered
**
**                NONE                       - seconds match
**                RTCC_ALMC0                 - minutes match
**                RTCC_ALMC1                 - hours match
**                RTCC_ALMC1 | ALMC0         - matches on day at midnight
**                RTCC_ALMC2                 - date match
**                RTCC_ALMC2 | ALMC1 | ALMC0 - seconds, minutes, hour, day, date,
**                                        and month match
**	Return Value:
**		None
**
**
**	Description:
**		This function enables and configures the dest alarm.
*/
void RTCCI2C_enableAlarm(u8 dest, u8 config, PmodRTCC *InstancePtr)
{
	u8 data = 0;
	u8 rgbAlmCfg[2];

	RTCC_ReadIIC(InstancePtr, 7, &data, 1);

	//Set enable bit and alarm config register address
	//depending on the destination
	switch(dest)
	{
		case RTCC_ALM0:
		    //set ALM0 enable bit
			data = (data | 0x10);
			//alarm config register address
			rgbAlmCfg[0] = 0x0D;
			break;
		case RTCC_ALM1:
		    //set ALM1 enable bit
			data = (data | 0x20);
			//alarm config register address
			rgbAlmCfg[0] = 0x14;
			break;
		default:
			return;
	}

	RTCC_WriteIIC(InstancePtr, 7,  &data, 1);
	RTCC_ReadIIC(InstancePtr, rgbAlmCfg[0], &data, 1);

	rgbAlmCfg[1] = ((data & 0x07) | (config & 0xF0));

	RTCC_WriteIIC(InstancePtr, rgbAlmCfg[0],  &rgbAlmCfg[1], 1);

}

/** void RTCCI2C_disableAlarm(u8 dest)
**
**	Parameters:
**		dest    - RTCC_ALM0 for alarm 0
**                RTCC_ALM1 for alarm 1
**
**	Return Value:
**		None
**
**
**	Description:
**		This function disables the dest alarm and clear the alarm interrupt
**  flag for that alarm.
*/
void RTCCI2C_disableAlarm(u8 dest, PmodRTCC *InstancePtr)
{
	u8 data;

	//clear the alarm interrupt flag
	RTCCI2C_alarmOff(dest,InstancePtr);

	RTCC_ReadIIC(InstancePtr, 7, &data, 1);

	//Clear enable bit depending on the destination
		switch(dest)
		{
			case RTCC_ALM0:
				data = (data & 0xEF);
				break;
			case RTCC_ALM1:
				data = (data & 0xDF);
				break;
			default:
				return;
		}

		//configure alarm
		RTCC_WriteIIC(InstancePtr, 7,  &data, 1);
}

/** void RTCCI2C::alarmOff(u8 dest)
**
**	Parameters:
**		dest    - RTCC_ALM0 for alarm 0
**                RTCC_ALM1 for alarm 1
**
**	Return Value:
**		None
**
**
**	Description:
**		This function clear the alarm interrupt flag for the dest alarm.
*/
void RTCCI2C_alarmOff(u8 dest, PmodRTCC *InstancePtr)
{
	u8 rgbFlag[2];
	u8 data;

	//set alarm flag address depending on the destination
	switch(dest)
		{
			case RTCC_ALM0:
				rgbFlag[0] = 0x0D;
				break;
			case RTCC_ALM1:
				rgbFlag[0] = 0x14;
				break;
			default:
				return;
		}

	RTCC_ReadIIC(InstancePtr, rgbFlag[0], &data, 1);

	   //clear interrupt flag
	   rgbFlag[1] = data & 0xF7;

	   RTCC_WriteIIC(InstancePtr, rgbFlag[0],  &rgbFlag[1], 1);
}

/** unsigned int RTCCI2C_checkFlag(u8 src)
**
**	Parameters:
**		src    - RTCC_ALM0 for alarm 0
**               RTCC_ALM1 for alarm 1
**
**	Return Value:
**		unsigned int - 1 - alarm triggered
**                     0 - alarm not triggered
**
**
**	Description:
**		This function checks if the src alarm has been triggered.
*/
unsigned int RTCCI2C_checkFlag(u8 src,PmodRTCC *InstancePtr)
{
	u8 rgbFlag[2];
	u8 data;

	//set alarm flag address depending on the destination
	switch(src)
	{
		case RTCC_ALM0:
			rgbFlag[0] = 0x0D;
			break;
		case RTCC_ALM1:
			rgbFlag[0] = 0x14;
			break;
		default:
			return 0;
	}
	RTCC_ReadIIC(InstancePtr, rgbFlag[0], &data, 1);

	//check the for the Alarm Interrupt Flag
		if((data & 0x08) == 0x08)
		    //alarm triggered
			return 1;
		else
		    //alarm not triggered
			return 0;
}

//backup battery functions
void RTCCI2C_enableVbat(PmodRTCC *InstancePtr)
{
	u8 data;
	RTCC_ReadIIC(InstancePtr, 3, &data, 1);

	data = (data | 0x08);

	RTCC_WriteIIC(InstancePtr, 3,  &data, 1);


	/*RTCC_ReadIIC(InstancePtr, 7, &data, 1);

	data = (data | 0x08) // set bit 3 (EXTOSC)

	RTCC_WriteIIC(InstancePtr, 7, &data, 1);*/
}

void RTCCI2C_clearPWRFAIL(PmodRTCC *InstancePtr) {
	u8 data;
	RTCC_ReadIIC(InstancePtr, 3, &data, 1);

	data = (data & 0xEF);

	RTCC_WriteIIC(InstancePtr, 3, &data, 1);
}

//This function disables backup battery mode
void RTCCI2C_disableVbat(PmodRTCC *InstancePtr)
{
	u8 data;
	RTCC_ReadIIC(InstancePtr, 3, &data, 1);

	data = (data & 0x37);

	RTCC_WriteIIC(InstancePtr, 3,  &data, 1);
}

//get functions
/** u8 RTCCI2C_getSec(u8 src)
**
**	Parameters:
**		src - RTCC_RTCC - real-time clock
**            RTCC_ALM0 - Alarm 0
**            RTCC_ALM1 - Alarm 1
**            ** RTCC_PWRU and RTCC_PWRD does not have the second parameter
**	Return Value:
**		uint8_t - second in hexadecimal
**
**	Description:
**		This function returns the second of the source
*/
u8 RTCCI2C_getSec(u8 src, PmodRTCC *InstancePtr)
{
	u8 bSecBuffer = 0;
	u8 bSec;

	 //Set address of the second register depending on the source
	    switch(src)
		{
			case RTCC_RTCC:
	          bSec = 0x00;
	          break;
	        case RTCC_ALM0:
	          bSec = 0x0A;
	          break;
	        case RTCC_ALM1:
	          bSec = 0x11;
	          break;
	        default:
	          return 0xFF; //ERROR Invalid Source
	    }

	    RTCC_ReadIIC(InstancePtr, bSec, &bSecBuffer, 1);
		// return valid bits
		return (bSecBuffer & 0x7F);
}

/** u8 RTCCI2C_getMin(u8 src)
**
**	Parameters:
**		src - RTCC_RTCC - real-time clock
**            RTCC_ALM0 - Alarm 0
**            RTCC_ALM1 - Alarm 1
**            RTCC_PWRD - Power-down time-stamp
**            RTCC_PWRU - Power-up time-stamp
**
**	Return Value:
**		uint8_t - minute in hexadecimal
**
**	Description:
**		This function returns the minute of the source
*/
u8 RTCCI2C_getMin(u8 src, PmodRTCC *InstancePtr)
{
	u8 bMinBuffer = 0;
	u8 bMin;

	//Set address of the minute register depending on the source
		switch(src)
		{
			case RTCC_RTCC:
				bMin = 0x01;
				break;
			case RTCC_ALM0:
				bMin = 0x0B;
				break;
			case RTCC_ALM1:
				bMin = 0x12;
				break;
			case RTCC_PWRD:
	            bMin = 0x18;
	            break;
	        case RTCC_PWRU:
	            bMin = 0x1C;
	            break;
			default:
				return 0xFF; //ERROR Invalid Source
		}

		RTCC_ReadIIC(InstancePtr, bMin, &bMinBuffer, 1);
		// return valid bits
		return (bMinBuffer & 0x7F);
}

/** u8 RTCCI2C_getHour(u8 src)
**
**	Parameters:
**		src - RTCC_RTCC - real-time clock
**            RTCC_ALM0 - Alarm 0
**            RTCC_ALM1 - Alarm 1
**            RTCC_PWRD - Power-down time-stamp
**            RTCC_PWRU - Power-up time-stamp
**
**	Return Value:
**		uint8_t - hour in hexadecimal
**
**	Description:
**		This function returns the hour of the source
*/
u8 RTCCI2C_getHour(u8 src, PmodRTCC *InstancePtr)
{
	u8 bHourBuffer = 0;
	u8 bHour;

	//Set address of the hour register depending on the source
	switch(src)
	{
		case RTCC_RTCC:
			bHour = 0x02;
			break;
		case RTCC_ALM0:
			bHour = 0x0C;
			break;
		case RTCC_ALM1:
			bHour = 0x13;
			break;
		case RTCC_PWRD:
            bHour = 0x19;
            break;
        case RTCC_PWRU:
            bHour = 0x1D;
            break;
		default:
			return 0xFF; //ERROR Invalid Source
	}

	RTCC_ReadIIC(InstancePtr, bHour, &bHourBuffer, 1);

	 // return valid bits
	    //hour is in 12 hour format
	    if((bHourBuffer & 0x40) == 0x40)
	    {
	        return (bHourBuffer & 0x1F);
	    }
	    //hour is in 24 hour format
	    else
	    {
	        return (bHourBuffer & 0x3F);
		}
}

/** u8 RTCCI2C_getAmPm(u8 src)
**
**	Parameters:
**		src - RTCC_RTCC - real-time clock
**            RTCC_ALM0 - Alarm 0
**            RTCC_ALM1 - Alarm 1
**            RTCC_PWRD - Power-down time-stamp
**            RTCC_PWRU - Power-up time-stamp
**
**	Return Value:
**		uint8_t - 0 - RTCC_AM
**                1 - RTCC_PM
**
**	Description:
**		This function returns AM/PM for the source. This function should
** only be used when the hour is in 12 hour format.
*/
u8 RTCCI2C_getAmPm(u8 src, PmodRTCC *InstancePtr)
{
	u8 bHourBuffer = 0;
	u8 bHour;

	//Set address of the hour register depending on the source
		switch(src)
		{
			case RTCC_RTCC:
				bHour = 0x02;
				break;
			case RTCC_ALM0:
				bHour = 0x0C;
				break;
			case RTCC_ALM1:
				bHour = 0x13;
				break;
		    case RTCC_PWRD:
	            bHour = 0x19;
	            break;
	        case RTCC_PWRU:
	            bHour = 0x1D;
	            break;
			default:
				return 0xFF; //ERROR Invalid Source
		}

		RTCC_ReadIIC(InstancePtr, bHour, &bHourBuffer, 1);
		return (bHourBuffer & 0x20);
}

/** u8 RTCCI2C_getDay(u8 src)
**
**	Parameters:
**		src - RTCC_RTCC - real-time clock
**            RTCC_ALM0 - Alarm 0
**            RTCC_ALM1 - Alarm 1
**            RTCC_PWRD - Power-down time-stamp
**            RTCC_PWRU - Power-up time-stamp
**
**	Return Value:
**		uint8_t - day in hexadecimal
**
**	Description:
**		This function returns the day of the source
*/
u8 RTCCI2C_getDay(u8 src, PmodRTCC *InstancePtr)
{
	u8 bDayBuffer = 0;
	u8 bDay;

	//Set address of the day register depending on the source
		switch(src)
		{
			case RTCC_RTCC:
				bDay = 0x03;
				break;
			case RTCC_ALM0:
				bDay = 0x0D;
				break;
			case RTCC_ALM1:
				bDay = 0x14;
				break;
			case RTCC_PWRD:
	            bDay = 0x1B;
	            break;
	        case RTCC_PWRU:
	            bDay = 0x1F;
	            break;
			default:
				return 0xFF; //ERROR Invalid Source
		}

		RTCC_ReadIIC(InstancePtr, bDay, &bDayBuffer, 1);

		 // return valid bits
			if(src == RTCC_PWRD || src == RTCC_PWRU)
			{
		        return ((bDayBuffer & 0xE0)>> 5);
		    }
		    else
		    {
		        return (bDayBuffer & 0x07);
		    }
}

/** u8 RTCCI2C_getDate(u8 src)
**
**	Parameters:
**		src - RTCC_RTCC - real-time clock
**            RTCC_ALM0 - Alarm 0
**            RTCC_ALM1 - Alarm 1
**            RTCC_PWRD - Power-down time-stamp
**            RTCC_PWRU - Power-up time-stamp
**
**	Return Value:
**		uint8_t - date in hexadecimal
**
**	Description:
**		This function returns the date of the source
*/
u8 RTCCI2C_getDate(u8 src, PmodRTCC *InstancePtr)
{
	u8 bDateBuffer = 0;
	u8 bDate;

	//Set address of the date register depending on the source
		switch(src)
		{
			case RTCC_RTCC:
				bDate = 0x04;
				break;
			case RTCC_ALM0:
				bDate = 0x0E;
				break;
			case RTCC_ALM1:
				bDate = 0x15;
				break;
			case RTCC_PWRD:
	            bDate = 0x1A;
	            break;
	        case RTCC_PWRU:
	            bDate = 0x1E;
	            break;
			default:
				return 0xFF; //ERROR Invalid Source
		}

		RTCC_ReadIIC(InstancePtr, bDate, &bDateBuffer, 1);
		return (bDateBuffer & 0x3F);
}

/** u8 RTCCI2C_getMonth(u8 src)
**
**	Parameters:
**		src - RTCC_RTCC - real-time clock
**            RTCC_ALM0 - Alarm 0
**            RTCC_ALM1 - Alarm 1
**            RTCC_PWRD - Power-down time-stamp
**            RTCC_PWRU - Power-up time-stamp
**
**	Return Value:
**		uint8_t - month in hexadecimal
**
**	Description:
**		This function returns the month of the source
*/
u8 RTCCI2C_getMonth(u8 src, PmodRTCC *InstancePtr)
{
	u8 bMonthBuffer = 0;
	u8 bMonth;

	//Set address of the month register depending on the source
		switch(src)
		{
			case RTCC_RTCC:
				bMonth = 0x05;
				break;
			case RTCC_ALM0:
				bMonth = 0x0F;
				break;
			case RTCC_ALM1:
				bMonth = 0x16;
				break;
			case RTCC_PWRD:
	            bMonth = 0x1B;
	            break;
	        case RTCC_PWRU:
	            bMonth = 0x1F;
	            break;
			default:
				return 0xFF; //ERROR Invalid Source
		}

		RTCC_ReadIIC(InstancePtr, bMonth, &bMonthBuffer, 1);
		return (bMonthBuffer & 0x1F);
}

/** u8 RTCCI2C_getYear()
**
**	Parameters:
**		None
**
**	Return Value:
**		uint8_t - year in hexadecimal
**
**	Description:
**		This function returns the year of the RTCC_RTCC.
** The year parameter is only available for the RTCC_RTCC.
*/
u8 RTCCI2C_getYear(PmodRTCC *InstancePtr)
{
	u8 bYearBuffer = 0;
	RTCC_ReadIIC(InstancePtr, 6, &bYearBuffer, 1);
	return (bYearBuffer & 0xFF);
}

/** void RTCCI2C_setSec(u8 dest, u8 value)
**
**	Parameters:
**		dest    - RTCC_RTCC - real-time clock
**                RTCC_ALM0 - Alarm 0
**                RTCC_ALM1 - Alarm 1
**      value   - desire value for the second in HEX 0x00-0x59
**
**	Return Value:
**		None
**
**	Description:
**		This function sets the second of the dest with the value.
*/
void RTCCI2C_setSec(u8 dest, u8 value, PmodRTCC *InstancePtr)
{
	u8 rgbSec[0];
	rgbSec[1] = value;
	u8 data;

	//Set address of the second register depending on the destination
	        switch(dest)
	        {
	            case RTCC_RTCC:
	            	rgbSec[0] = 0x00;
	            	RTCC_ReadIIC(InstancePtr, rgbSec[0], &data, 1);
	            	if((data & 0x80) == 0x80)
	                {   //preserve configuration bits
	            	    rgbSec[1] = (rgbSec[1] | 0x80);
	            	}
	            	break;
	            case RTCC_ALM0:
	                rgbSec[0] = 0x0A;
	                break;
	            case RTCC_ALM1:
	                rgbSec[0] = 0x11;
	                break;
	            default: //Should not enter
	                return;
	        }

	RTCC_WriteIIC(InstancePtr, rgbSec[0],  &rgbSec[1], 1);
}

/** void RTCCI2C_setMin(u8 dest, u8 value)
**
**	Parameters:
**		dest    - RTCC_RTCC - real-time clock
**                RTCC_ALM0 - Alarm 0
**                RTCC_ALM1 - Alarm 1
**      value   - desire value for the minute in HEX 0x00-0x59
**
**	Return Value:
**		None
**
**	Description:
**		This function sets the minute of the dest with the value.
*/
void RTCCI2C_setMin(u8 dest, u8 value, PmodRTCC *InstancePtr)
{
	u8 rgbMin[2];
	rgbMin[1] = value;

	//validate minute 0x00-0x59
	    if( value < 0x60)
	    {
	        //Set address of the minute register depending on the destination
	        switch(dest)
	        {
	            case RTCC_RTCC:
	                rgbMin[0] = 0x01;
	                break;
	            case RTCC_ALM0:
	                rgbMin[0] = 0x0B;
	                break;
	            case RTCC_ALM1:
	                rgbMin[0] = 0x12;
	                break;
	            default: //Should not enter
	                return;
	        }
	     RTCC_WriteIIC(InstancePtr, rgbMin[0],  &rgbMin[1], 1);
	     }
}

/** void RTCCI2C_setHour(u8 dest, u8 value, u8 ampm)
**
**	Parameters:
**		dest    - RTCC_RTCC - real-time clock
**                RTCC_ALM0 - Alarm 0
**                RTCC_ALM1 - Alarm 1
**      value   - desire value for the hour in 12 hour format.
**                the value should be represented in HEX and should be
**                between 0x01-0x12
**      ampm  -  RTCC_AM
**               RTCC_PM
**
**	Return Value:
**		None
**
**	Description:
**	    This function sets the hour of the dest with the value in
**  12 hour format.
*/
void RTCCI2C_setHour12(u8 dest, u8 value, u8 ampm, PmodRTCC *InstancePtr)
{
	u8 rgbHour[2];
	u8 data;

	//validate hour 0x01-0x12
	    if( value < 0x13 && value > 0)
	    {
	        //Set address of the hour register depending on the destination
		    switch(dest)
		    {
			    case RTCC_RTCC:
				    rgbHour[0] = 0x02;
				    break;
			    case RTCC_ALM0:
				    rgbHour[0] = 0x0C;
				    break;
			    case RTCC_ALM1:
				    rgbHour[0] = 0x13;
				    break;
			    default: //Should not enter
				    return;
		    }
	//set the format bit to 12 hr format
			//set ampm bit if PM
			if(ampm == RTCC_PM)
			{
				rgbHour[1] = (value | 0x60);
			}
			else
			{
				rgbHour[1] = (value | 0x40);
			}

			RTCC_WriteIIC(InstancePtr, rgbHour[0],  &rgbHour[1], 1);
	    }
}

/** void RTCCI2C_setHour(u8 dest, u8 value)
**
**	Parameters:
**		dest    - RTCC_RTCC - real-time clock
**                RTCC_ALM0 - Alarm 0
**                RTCC_ALM1 - Alarm 1
**      value   - desire value for the hour in 24 hour format.
**                the value should be represented in HEX and should be
**                between 0x00-0x23
**
**	Return Value:
**		None
**
**	Description:
**  This function sets the hour of the destination with the value
**  in 24 hour format.
*/
void RTCCI2C_setHour24(u8 dest, u8 value, PmodRTCC *InstancePtr)
{
	u8 rgbHour[2];
	u8 data;

	//validate hour 0x00-0x23
	    if( value < 0x24)
	    {
	        //Set address of the hour register depending on the destination
		    switch(dest)
		    {
			    case RTCC_RTCC:
				    rgbHour[0] = 0x02;
				    break;
			    case RTCC_ALM0:
				    rgbHour[0] = 0x0C;
				    break;
			    case RTCC_ALM1:
				    rgbHour[0] = 0x13;
				    break;
			    default: //Should not enter
				    return;
		    }


	        rgbHour[1] = value;
	        RTCC_WriteIIC(InstancePtr, rgbHour[0],  &rgbHour[1], 1);
	    }
}

/** void RTCCI2C::setDay(uint8_t dest, uint8_t value)
**
**	Parameters:
**		dest    - RTCC_RTCC - real-time clock
**                RTCC_ALM0 - Alarm 0
**                RTCC_ALM1 - Alarm 1
**      value   - desire value for the day in HEX 0x01-0x07
**
**	Return Value:
**		None
**
**	Description:
**		This function sets the day of the dest with the value.
*/
void RTCCI2C_setDay(u8 dest, u8 value, PmodRTCC *InstancePtr)
{
	u8 rgbDay[2];
	u8 data;

	//validate day 0x01-0x07
	    if( value < 0x08 && value > 0)
	    {
	        //Set address of the day register depending on the destination
		    switch(dest)
		    {
			    case RTCC_RTCC:
				    rgbDay[0] = 0x03;
				    break;
			    case RTCC_ALM0:
				    rgbDay[0] = 0x0D;
				    break;
			    case RTCC_ALM1:
				    rgbDay[0] = 0x14;
				    break;
			    default: //Should not enter
				    return;
		    }
		    RTCC_ReadIIC(InstancePtr, rgbDay[0], &data, 1);
		    //reserve the control bits
		    rgbDay[1] = ((value & 0x07) | (data & 0xF8));
	        RTCC_WriteIIC(InstancePtr, rgbDay[0],  &rgbDay[1], 1);
	    }
}

/** void RTCCI2C_setDate(u8 dest, u8 value)
**
**	Parameters:
**		dest    - RTCC_RTCC - real-time clock
**                RTCC_ALM0 - Alarm 0
**                RTCC_ALM1 - Alarm 1
**      value   - desire value for the date in HEX 0x01-0x31
**
**	Return Value:
**		None
**
**	Description:
**		This function sets the date of the dest with the value.
*/
void RTCCI2C_setDate(u8 dest, u8 value, PmodRTCC *InstancePtr)
{
	u8 rgbDate[2];
	rgbDate[1] = value;
	//validate date 0x01-0x31
	    if( value < 0x32 && value > 0)
	    {
	        //Set address of the date register depending on the destination
	        switch(dest)
	        {
	            case RTCC_RTCC:
	                rgbDate[0] = 0x04;
	                break;
	            case RTCC_ALM0:
	                rgbDate[0] = 0x0E;
	                break;
	            case RTCC_ALM1:
	                rgbDate[0] = 0x15;
	                break;
	            default: //Should not enter
	                return;
	        }
	        RTCC_WriteIIC(InstancePtr, rgbDate[0],  &rgbDate[1], 1);
	    }

}

/** void RTCCI2C::setMonth(uint8_t dest, uint8_t value)
**
**	Parameters:
**		dest    - RTCC_RTCC - real-time clock
**                RTCC_ALM0 - Alarm 0
**                RTCC_ALM1 - Alarm 1
**      value   - desire value for the month in HEX 0x01-0x12
**
**	Return Value:
**		None
**
**	Description:
**		This function sets the month of the dest with the value.
*/
void RTCCI2C_setMonth(u8 dest, u8 value, PmodRTCC *InstancePtr)
{
	u8 rgbMonth[2];
	rgbMonth[1] = value;

	//validate month 0x01-0x12
    if( value < 0x13 && value > 0)
    {
        //Set address of the month register depending on the destination
        switch(dest)
        {
            case RTCC_RTCC:
                rgbMonth[0] = 0x05;
                break;
            case RTCC_ALM0:
                rgbMonth[0] = 0x0F;
                break;
            case RTCC_ALM1:
                rgbMonth[0] = 0x16;
                break;
            default: //Should not enter
                return;
        }
        RTCC_WriteIIC(InstancePtr, rgbMonth[0],  &rgbMonth[1], 1);
	}
}

/** void RTCCI2C::setYear(uint8_t value)
**
**	Parameters:
**      value   - desire value for the month in HEX 0x00-0x99
**
**	Return Value:
**		None
**
**	Description:
**		This function sets the year of the RTCC_RTCC with the value.
**  The year parameter is only available for the RTCC_RTCC.
*/
void RTCCI2C_setYear(u8 value, PmodRTCC *InstancePtr)
{
	u8 rgbYear[2];
	rgbYear[1] = value;
	rgbYear[0] = 0x06;
	//validate year 0x00-0x99
		if(value < 0xA0)
		{
		RTCC_WriteIIC(InstancePtr, rgbYear[0],  &rgbYear[1], 1);
	    }
}

bool RTCCI2C_checkVbat(PmodRTCC *InstancePtr)
{
	u8 data;
	RTCC_ReadIIC( InstancePtr, 3,  &data, 1);
	data = (data & 0x08) >> 3;
	return data;
}






























