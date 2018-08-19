

/************ Include Files ************/

#include "PWM_Analyzer.h"
#include "xil_io.h"


/************ Function Definitions ************/

/*
 * u32 getDutyCycle_percent(u32 baseAddr)
 * double getDutyCycle_decFrac(u32 baseAddr)
 * -----------------------------------------------------------------------------
 * Parameters:
 *       baseAddr: Base address of PWM_Analyzer registers
 *
 * Return:
 *       Duty cycle of PWM signal, based on most recent period
 *        - percentage rounded to nearest integer
 *        - decimal-fraction rounded to 2 decimal places
 *
 * Description:
 *       Return duty cycle of PWM signal as
 *        - percentage (out of 100)
 *        - decimal-fraction (out of 1)
 */
u32 getDutyCycle_percent(u32 baseAddr) {
   u64 on_time = (u64) getOnTime_clkEdges(baseAddr);
   u32 period = getPeriod_clkEdges(baseAddr);
   return (u32) (on_time * 1000 / period + 5) / 10;
}

double getDutyCycle_decFrac(u32 baseAddr) {
   return getDutyCycle_percent(baseAddr) / 100.0;
}

/*
 * u32 getOffTime_ms(u32 baseAddr, int clk_freq)
 * u32 getOnTime_ms(u32 baseAddr, int clk_freq)
 * u32 getPeriod_ms(u32 baseAddr, int clk_freq)
 * -----------------------------------------------------------------------------
 * Parameters:
 *       baseAddr: Base address of PWM_Analyzer registers
 *       clk_freq: Frequency of the PWM_Analyzer's clock in Hz
 *
 * Return:
 *       Duration of most recent off time, on time, or period in milliseconds
 *
 * Description:
 *       Return the duration, in milliseconds, of the most recent
 *        - off time (PWM is low/off),
 *        - on time  (PWM is high/on),
 *        - period   (posedge to posedge / negedge to negedge)
 */
u32 getOffTime_ms(u32 baseAddr, int clk_freq) {
   u64 clk_edges = (u64) getOffTime_clkEdges(baseAddr);
   return (u32) (clk_edges * 10000 / clk_freq + 5) / 10;
}

u32 getOnTime_ms(u32 baseAddr, int clk_freq) {
   u64 clk_edges = (u64) getOnTime_clkEdges(baseAddr);
   return (u32) (clk_edges * 10000 / clk_freq + 5) / 10;
}

u32 getPeriod_ms(u32 baseAddr, int clk_freq) {
   u64 clk_edges = (u64) getPeriod_clkEdges(baseAddr);
   return (u32) (clk_edges * 10000 / clk_freq + 5) / 10;
}

/*
 * u32 getOffTime_us(u32 baseAddr, int clk_freq)
 * u32 getOnTime_us(u32 baseAddr, int clk_freq)
 * u32 getPeriod_us(u32 baseAddr, int clk_freq)
 * -----------------------------------------------------------------------------
 * Parameters:
 *       baseAddr: Base address of PWM_Analyzer registers
 *       clk_freq: Frequency of the PWM_Analyzer's clock in Hz
 *
 * Return:
 *       Duration of most recent off time, on time, or period in microseconds
 *
 * Description:
 *       Return the duration, in microseconds, of the most recent
 *        - off time (PWM is low/off),
 *        - on time  (PWM is high/on),
 *        - period   (posedge to posedge / negedge to negedge)
 */
u32 getOffTime_us(u32 baseAddr, int clk_freq) {
   u64 clk_edges = (u64) getOffTime_clkEdges(baseAddr);
   return (u32) (clk_edges * 10000000 / clk_freq + 5) / 10;
}

u32 getOnTime_us(u32 baseAddr, int clk_freq) {
   u64 clk_edges = (u64) getOnTime_clkEdges(baseAddr);
   return (u32) (clk_edges * 10000000 / clk_freq + 5) / 10;
}

u32 getPeriod_us(u32 baseAddr, int clk_freq) {
   u64 clk_edges = (u64) getPeriod_clkEdges(baseAddr);
   return (u32) (clk_edges * 10000000 / clk_freq + 5) / 10;
}

/*
 * u32 getOffTime_ns(u32 baseAddr, int clk_freq)
 * u32 getOnTime_ns(u32 baseAddr, int clk_freq)
 * u32 getPeriod_ns(u32 baseAddr, int clk_freq)
 * -----------------------------------------------------------------------------
 * Parameters:
 *       baseAddr: Base address of PWM_Analyzer registers
 *       clk_freq: Frequency of the PWM_Analyzer's clock in Hz
 *
 * Return:
 *       Duration of most recent off time, on time, or period in nanoseconds
 *
 * Description:
 *       Return the duration, in nanoseconds, of the most recent
 *        - off time (PWM is low/off),
 *        - on time  (PWM is high/on),
 *        - period   (posedge to posedge / negedge to negedge)
 */
u32 getOffTime_ns(u32 baseAddr, int clk_freq) {
   u64 clk_edges = (u64) getOffTime_clkEdges(baseAddr);
   return (u32) (clk_edges * 10000000000 / clk_freq + 5) / 10;
}

u32 getOnTime_ns(u32 baseAddr, int clk_freq) {
   u64 clk_edges = (u64) getOnTime_clkEdges(baseAddr);
   return (u32) (clk_edges * 10000000000 / clk_freq + 5) / 10;
}

u32 getPeriod_ns(u32 baseAddr, int clk_freq) {
   u64 clk_edges = (u64) getPeriod_clkEdges(baseAddr);
   return (u32) (clk_edges * 10000000000 / clk_freq + 5) / 10;
}

/*
 * u32 getOffTime_clkEdges(u32 baseAddr)
 * u32 getOnTime_clkEdges(u32 baseAddr)
 * u32 getPeriod_clkEdges(u32 baseAddr)
 * -----------------------------------------------------------------------------
 * Parameters:
 *       baseAddr: Base address of PWM_Analyzer registers
 *
 * Return:
 *       Number of clock edges during most recent off time, on time, or period
 *
 * Description:
 *       Return the number of clock edges that occurred during the most recent
 *        - off time (PWM is low/off),
 *        - on time  (PWM is high/on),
 *        - period   (posedge to posedge / negedge to negedge)
 */
u32 getOffTime_clkEdges(u32 baseAddr) {
   return Xil_In32(baseAddr + OFF_TIME_OFFSET);
}

u32 getOnTime_clkEdges(u32 baseAddr) {
   return Xil_In32(baseAddr + ON_TIME_OFFSET);
}

u32 getPeriod_clkEdges(u32 baseAddr) {
   return Xil_In32(baseAddr + PERIOD_OFFSET);
}
