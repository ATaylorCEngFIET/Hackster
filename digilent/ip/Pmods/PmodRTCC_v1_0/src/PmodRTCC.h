
#ifndef PMODRTCC_H
#define PMODRTCC_H


/****************** Include Files ********************/
#include "xil_types.h"
#include "xstatus.h"
#include "xiic_l.h"
#include "xiic.h"
#include "xparameters.h"

/* ------------------------------------------------------------ */
/*					Definitions									*/
/* ------------------------------------------------------------ */
#define bool u8
#define true 1
#define false 0

//available source/destination
#define RTCC_RTCC    0x01    // real- time clock
#define RTCC_ALM0    0x02    // alarm 0
#define RTCC_ALM1    0x03    // alarm 1
#define RTCC_PWRD    0x04    // power-down time-stamp
#define RTCC_PWRU    0x05    // power-up time-stamp

//alarm configuration bits
#define RTCC_ALM_POL 0x80
#define RTCC_ALMC2  0x40
#define RTCC_ALMC1  0x20
#define RTCC_ALMC0  0x10

//AM/PM
#define RTCC_AM 0
#define RTCC_PM 1


#ifdef XPAR_XINTC_NUM_INSTANCES
 #include "xintc.h"
 #define INTC		XIntc
 #define INTC_HANDLER	XIntc_InterruptHandler
#else
#ifdef XPAR_SCUGIC_0_DEVICE_ID
 #include "xscugic.h"
 #define INTC		XScuGic
 #define INTC_HANDLER	XScuGic_InterruptHandler
#else
#define NO_IRPT 1
#endif
#endif
/* ------------------------------------------------------------ */
/*		Register addresses Definitions							*/
/* ------------------------------------------------------------ */

/* ------------------------------------------------------------ */
/*				Bit masks Definitions							*/
/* ------------------------------------------------------------ */


/* ------------------------------------------------------------ */
/*				Parameters Definitions							*/
/* ------------------------------------------------------------ */



/* ------------------------------------------------------------ */
/*					Procedure Declarations						*/
/* ------------------------------------------------------------ */

typedef struct PmodRTCC{
	XIic RTCCIic;
	u8 chipAddr;
	u8 currentRegister;
	u8 recvbytes;
	u8* recv;
#ifndef NO_IRPT
	INTC intc;
#endif
}PmodRTCC;

void RTCC_begin(PmodRTCC* InstancePtr, u32 IIC_Address, u8 Chip_Address);
void RTCC_end(PmodRTCC* InstancePtr);
int RTCC_IICInit(XIic *IicInstancePtr);
void RTCC_ReadIIC(PmodRTCC* InstancePtr, u8 reg, u8 *Data, int nData);
void RTCC_WriteIIC(PmodRTCC* InstancePtr, u8 reg, u8 *Data, int nData);
int RTCC_SetupInterruptSystem(PmodRTCC* InstancePtr, u32 interruptDeviceID, u32 interruptID, void* SendHandler,  void* ReceiveHandler);

void RTCCI2C_startClock(PmodRTCC *InstancePtr);
void RTCCI2C_stopClock(PmodRTCC *InstancePtr);
void RTCCI2C_enableAlarm(u8 dest, u8 config,PmodRTCC *InstancePtr);
void RTCCI2C_disableAlarm(u8 dest,PmodRTCC *InstancePtr);
void RTCCI2C_alarmOff(u8 dest, PmodRTCC *InstancePtr);
unsigned int RTCCI2C_checkFlag(u8 src, PmodRTCC *InstancePtr);
void RTCCI2C_enableVbat(PmodRTCC *InstancePtr);
void RTCCI2C_disableVbat(PmodRTCC *InstancePtr);
bool RTCCI2C_checkVbat(PmodRTCC *InstancePtr);
u8 RTCCI2C_getSec(u8 src, PmodRTCC *InstancePtr);
u8 RTCCI2C_getMin(u8 src, PmodRTCC *InstancePtr);
u8 RTCCI2C_getHour(u8 src, PmodRTCC *InstancePtr);
u8 RTCCI2C_getAmPm(u8 src, PmodRTCC *InstancePtr);
u8 RTCCI2C_getDay(u8 src, PmodRTCC *InstancePtr);
u8 RTCCI2C_getDate(u8 src, PmodRTCC *InstancePtr);
u8 RTCCI2C_getMonth(u8 src, PmodRTCC *InstancePtr);
u8 RTCCI2C_getYear(PmodRTCC *InstancePtr);
void RTCCI2C_setSec(u8 dest, u8 value, PmodRTCC *InstancePtr);
void RTCCI2C_setMin(u8 dest, u8 value, PmodRTCC *InstancePtr);
void RTCCI2C_setHour12(u8 dest, u8 value, u8 ampm, PmodRTCC *InstancePtr);
void RTCCI2C_setHour24(u8 dest, u8 value, PmodRTCC *InstancePtr);
void RTCCI2C_setDay(u8 dest, u8 value, PmodRTCC *InstancePtr);
void RTCCI2C_setDate(u8 dest, u8 value, PmodRTCC *InstancePtr);
void RTCCI2C_setMonth(u8 dest, u8 value, PmodRTCC *InstancePtr);
void RTCCI2C_setYear(u8 value, PmodRTCC *InstancePtr);



#endif // PMODRTCC_H
