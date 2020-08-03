/**
 *******************************************************************************
 *******************************************************************************
 *
 * @file	tda998x.c
 * @author	R. Bush
 * @email	bush@krtkl.com
 * @version	v1.0
 * @date	2017 November 10
 * @brief	TDA998x HDMI Transmitter
 * @license	FreeBSD
 *
 *******************************************************************************
 *
 * Copyright (c) 2017, krtkl inc.
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions are met:
 *
 * 1. Redistributions of source code must retain the above copyright notice,
 *	  this list of conditions and the following disclaimer.
 * 2. Redistributions in binary form must reproduce the above copyright notice,
 *	  this list of conditions and the following disclaimer in the documentation
 *	  and/or other materials provided with the distribution.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
 * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
 * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
 * ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE
 * LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
 * CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
 * SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
 * INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
 * CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
 * ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
 * POSSIBILITY OF SUCH DAMAGE.
 *
 * The views and conclusions contained in the software and documentation are
 * those of the authors and should not be interpreted as representing official
 * policies, either expressed or implied, of the FreeBSD Project.
 *
 *******************************************************************************
 */

#include <stdio.h>
#include <stdint.h>
#include <stdbool.h>
#include <unistd.h>
#include <string.h>
#include <sys/time.h>

#include "tda998x.h"

#ifdef DEBUG
# define DEBUG_PRINT(__format__, ...)		printf("[DEBUG] %s() %s %d: " __format__ "\r\n", __FUNCTION__, __FILE__, __LINE__, ##__VA_ARGS__)
#else
# define DEBUG_PRINT(...)			do {} while (0)
#endif

/**
 * @defgroup	TDA998X TDA998x HDMI Transmitter
 * @{
 */
#define PAGE_ADDR(__PAGE__, __ADDR__)		(((__PAGE__) << 8) | ((__ADDR__) & 0xFFU))
#define PAGE_OF(__REG__)			(((__REG__) >> 8) & 0xFFU)

#define ERR_BAD_PARAM				(0x009U)
#define ERR_NOT_PERMITTED			(0x00AU)
#define ERR_NULL_PARAM				(0x00BU)
#define ERR_ILLEGAL_PARAMS			(0x010U)
#define ERR_NOT_FOUND				(0x011U)
#define ERR_RESOURCE_NOT_AVAILABLE		(0x012U)

#define DDC_EDID_ADDRESS			(0xA0U)
#define DDC_EDID_ADDRESS_ALT			(0xA2U)
#define DDC_SGMT_PTR_ADDRESS			(0x60U)

#define EDID_BLK0_EXT_CNT			(0x7E)

/**
 * @addtogroup	TDA998X_CEC_Core
 * @{
 */
#define INTERRUPTSTATUS_CEC			(1 << 0)
#define INTERRUPTSTATUS_HDMI			(1 << 1)

#define RXSHPDINTENA_ENA_RXS_INT		(1 << 0)
#define RXSHPDINTENA_ENA_HPD_INT		(1 << 1)

#define RXSHPDINT_RXS_INT			(1 << 0)
#define RXSHPDINT_HPD_INT			(1 << 1)

#define RXSHPDLEV_RXS_LEVEL			(1 << 0)
#define RXSHPDLEV_HPD_LEVEL			(1 << 1)

#define ENAMODS_ENA_CEC				(1 << 0)
#define ENAMODS_ENA_HDMI			(1 << 1)
#define ENAMODS_ENA_RXS				(1 << 2)
#define ENAMODS_DIS_CCLK			(1 << 5)
#define ENAMODS_DIS_FRO				(1 << 6)

#define FRO_IM_CLK_CTRL_FRO_DIV			(1 << 0)
#define FRO_IM_CLK_CTRL_IMCLK_SEL		(1 << 1)
#define FRO_IM_CLK_CTRL_ENA_OTP			(1 << 6)
#define FRO_IM_CLK_CTRL_GHOST_DIS		(1 << 7)

/**
 * @brief	CEC Core Registers
 */
enum tda998x_cec_reg {
	INTERRUPTSTATUS = 0xEE,
	RXSHPDINTENA = 0xFC,
	RXSHPDINT = 0xFD,
	RXSHPDLEV = 0xFE,
	ENAMODS = 0xFF,
	FRO_IM_CLK_CTRL = 0xFB,
};
/**
 * @}
 */

/**
 * @addtogroup	TDA998X_HDMI_Core
 * @{
 */

/**
 * @addtogroup	TDA998X_HDMI_Core_Registers
 * @{
 */

/**
 * @brief	HDMI Core Register Pages
 */
enum tda998x_hdmi_page {
	PAGE_00 = 0x00,
	PAGE_01 = 0x01,
	PAGE_02 = 0x02,
	PAGE_09 = 0x09,
	PAGE_10 = 0x10,
	PAGE_11 = 0x11,
	PAGE_12 = 0x12,
	PAGE_13 = 0x13,
	PAGE_INVALID = 0xFF
};

#define VERSION_NOT_SCALER			(1 << 4)
#define VERSION_NOT_HDCP			(1 << 5)

#define MAIN_CNTRL0_SR				(1 << 0)
#define MAIN_CNTRL0_DECS			(1 << 1)
#define MAIN_CNTRL0_DEHS			(1 << 2)
#define MAIN_CNTRL0_CECS			(1 << 3)
#define MAIN_CNTRL0_CEHS			(1 << 4)
#define MAIN_CNTRL0_SCALER			(1 << 7)

#define SR_REG_SR_AUDIO				(1 << 0)
#define SR_REG_SR_I2C_MS			(1 << 1)

#define DDC_DISABLE_DDC_DIS			(1 << 0)

#define CCLK_ON_CCLK_DDC_ON			(1 << 0)

#define I2C_MASTER_DIS_MM			(1 << 0)
#define I2C_MASTER_DIS_FILT			(1 << 1)
#define I2C_MASTER_APP_STRT_LAT			(1 << 2)

#define INT_FLAGS_0_ENCRYPT			(1 << 0)
#define INT_FLAGS_0_HPD				(1 << 1)
#define INT_FLAGS_0_T0				(1 << 2)
#define INT_FLAGS_0_BCAPS			(1 << 3)
#define INT_FLAGS_0_BSTATUS			(1 << 4)
#define INT_FLAGS_0_SHA_1			(1 << 5)
#define INT_FLAGS_0_PJ				(1 << 6)
#define INT_FLAGS_0_R0				(1 << 7)

#define INT_FLAGS_1_VS_RPT			(1 << 0)
#define INT_FLAGS_1_OTP				(1 << 1)
#define INT_FLAGS_1_SC_IN			(1 << 2)
#define INT_FLAGS_1_SC_OUT			(1 << 3)
#define INT_FLAGS_1_SC_VID			(1 << 4)
#define INT_FLAGS_1_SC_DEIL			(1 << 5)
#define INT_FLAGS_1_SW_INT			(1 << 6)
#define INT_FLAGS_1_HPD_IN			(1 << 7)

#define INT_FLAGS_2_RX_SENSE			(1 << 0)
#define INT_FLAGS_2_EDID_BLK_RD			(1 << 1)

#define INT_FLAGS_3_RXS_FIL			(1 << 0)

#define SW_INT_SW_INT				(1 << 0)

#define ENA_ACLK_ENA_ACLK			(1 << 0)
#define GND_ACLK_GND_ACLK			(1 << 0)

#define ENA_VP_0_ENA_VP0			(1 << 0)
#define ENA_VP_0_ENA_VP1			(1 << 1)
#define ENA_VP_0_ENA_VP2			(1 << 2)
#define ENA_VP_0_ENA_VP3			(1 << 3)
#define ENA_VP_0_ENA_VP4			(1 << 4)
#define ENA_VP_0_ENA_VP5			(1 << 5)
#define ENA_VP_0_ENA_VP6			(1 << 6)
#define ENA_VP_0_ENA_VP7			(1 << 7)

#define ENA_VP_1_ENA_VP8			(1 << 0)
#define ENA_VP_1_ENA_VP9			(1 << 1)
#define ENA_VP_1_ENA_VP10			(1 << 2)
#define ENA_VP_1_ENA_VP11			(1 << 3)
#define ENA_VP_1_ENA_VP12			(1 << 4)
#define ENA_VP_1_ENA_VP13			(1 << 5)
#define ENA_VP_1_ENA_VP14			(1 << 6)
#define ENA_VP_1_ENA_VP15			(1 << 7)

#define ENA_VP_2_ENA_VP16			(1 << 0)
#define ENA_VP_2_ENA_VP17			(1 << 1)
#define ENA_VP_2_ENA_VP18			(1 << 2)
#define ENA_VP_2_ENA_VP19			(1 << 3)
#define ENA_VP_2_ENA_VP20			(1 << 4)
#define ENA_VP_2_ENA_VP21			(1 << 5)
#define ENA_VP_2_ENA_VP22			(1 << 6)
#define ENA_VP_2_ENA_VP23			(1 << 7)

#define ENA_AP_ENA_AP0				(1 << 0)
#define ENA_AP_ENA_AP1				(1 << 1)
#define ENA_AP_ENA_AP2				(1 << 2)
#define ENA_AP_ENA_AP3				(1 << 3)
#define ENA_AP_ENA_AP4				(1 << 4)
#define ENA_AP_ENA_AP5				(1 << 5)
#define ENA_AP_ENA_AP6				(1 << 6)
#define ENA_AP_ENA_AP7				(1 << 7)

#define VIP_CNTRL_LEN				(3)
#define VIP_CNTRL_SWAP_L_SHIFT			(0)
#define VIP_CNTRL_MIRR_L			(1 << 3)
#define VIP_CNTRL_SWAP_H_SHIFT			(4)
#define VIP_CNTRL_MIRR_H			(1 << 7)

#define VIP_CNTRL_SWAP_MASK			(0x77U)
enum vip_cntrl_swap {
	VIP_CNTRL_VP23_20 = 0x00,
	VIP_CNTRL_VP19_16 = 0x01,
	VIP_CNTRL_VP15_12 = 0x02,
	VIP_CNTRL_VP11_8 = 0x03,
	VIP_CNTRL_VP7_4 = 0x04,
	VIP_CNTRL_VP3_0 = 0x05
};

enum vip_cntrl_mirr {
	VIP_CNTRL_NOT_MIRRORED = 0,		/**< No action */
	VIP_CNTRL_MIRRORED = 1			/**< Mirrored (i.e. In[a:b] -> Out[b:a]) */
};

#define VIP_CNTRL_3_X_TGL			(1 << 0)
#define VIP_CNTRL_3_H_TGL			(1 << 1)
#define VIP_CNTRL_3_V_TGL			(1 << 2)
#define VIP_CNTRL_3_EMB				(1 << 3)
enum vip_cntrl_3_emb {
	EMB_DISABLE = 0,			/**< No action */
	EMB_ENABLE = VIP_CNTRL_3_EMB		/**< Use embedded syncronization codes */
};

#define VIP_CNTRL_3_SP_SYNC_MASK		(0x30U)

/**
 * @brief	Video Input Port Control Subpacket Synchronization Enumeration
 */
enum vip_cntrl_3_sp_sync {
	SPSYNC_HEMB = 0,
    	SPSYNC_RISING_DE = 0x10,
    	SPSYNC_RISING_HS = 0x20,
    	SPSYNC_FIXED = 0x30
};

#define VIP_CNTRL_3_DE_INT			(1 << 6)
#define VIP_CNTRL_3_EDGE			(1 << 7)
enum vip_cntrl_3_edge {
	PIXEDGE_POS = 0,        		/**< Pixel Clock Positive Edge */
	PIXEDGE_NEG = VIP_CNTRL_3_EDGE,		/**< Pixel Clock Negative Edge */
};

#define VIP_CNTRL_4_BLC_MASK			(0x03U)

/**
 * @brief	Video Input Port Control Blanking Code Enumeration
 */
enum vip_cntrl_4_blc {
	BLNKCODE_ALL_0 = 0x00,			/**< Blanking codes not inserted */
	BLNKCODE_RGB444 = 0x01,			/**< RGB444 */
	BLNKCODE_YUV444 = 0x02,			/**< YUV444 */
	BLNKCODE_YUV422 = 0x03			/**< YUV422 */
};

#define VIP_CNTRL_4_BLNKIT_MASK			(0x0CU)

/**
 * @brief	Video Input Port Control Blanking Source Enumeration
 */
enum vip_cntrl_4_blnkit {
	BLNKSRC_NOT_DE = 0x00,			/**< Not DE */
	BLNKSRC_VS_HS = 0x04,			/**< VS AND HS */
	BLNKSRC_VS_NOT_HS = 0x08,		/**< VS AND NOT HS */
	BLNKSRC_VS_HEMB_VEMB = 0x0C		/**< Hemb AND Vemb */
};

#define VIP_CNTRL_4_CCIR656			(1 << 4)
#define VIP_CNTRL_4_656_ALT			(1 << 5)
#define VIP_CNTRL_4_TST_656			(1 << 6)
#define VIP_CNTRL_4_TST_PAT			(1 << 7)

#define VIDFORMAT_FMT_MASK			(0x1FU)

/**
 * @brief	Video Format Enumeration
 */
enum vidformat_fmt {
	VIDFORMAT_640x480p_60Hz = 0x00,
	VIDFORMAT_720x480p_60Hz = 0x01,
	VIDFORMAT_1280x720p_60Hz = 0x02,
	VIDFORMAT_1920x1080i_60Hz = 0x03,
	VIDFORMAT_720x480i_60Hz = 0x04,
	VIDFORMAT_720x240p_60Hz = 0x05,
	VIDFORMAT_1920x1080p_60Hz = 0x06,
	VIDFORMAT_720x576p_50Hz = 0x07,
	VIDFORMAT_1280x720p_50Hz = 0x08,
	VIDFORMAT_1920x1080i_50Hz = 0x09,
	VIDFORMAT_720x576i_50Hz = 0x0A,
	VIDFORMAT_720x288p_50Hz = 0x0B,
	VIDFORMAT_1920x1080p_50Hz = 0x0C,
	VIDFORMAT_800x600p_60Hz,
	VIDFORMAT_1024x768p_60Hz,
	VIDFORMAT_1280x768p_60Hz,
	VIDFORMAT_1366x768p_60Hz,
	VIDFORMAT_1600x1200p_60Hz,
	VIDFORMAT_1920x1200p_60Hz
};

#define REFPIX_MIN				(0x0000U)
#define REFPIX_MAX				(0x1FFFU)

#define REFLINE_MIN				(0x0000U)
#define REFLINE_MAX				(0x07FFU)

#define VIP_CNTRL_5_CLKPOL			(1 << 0)

/**
 * @brief	Video Input Port Control Clock Polarity Enumeration
 */
enum vip_cntrl_5_clkpol {
	TGLCLK_LOW = 0,				/**< Clock polarity low */
	TGLCLK_HIGH = VIP_CNTRL_5_CLKPOL	/**< Clock polarity high */
};

#define VIP_CNTRL_5_SP_CNT_MASK			(0x06U)
#define VIP_CNTRL_5_SP_CNT_SHIFT		(1)

#define MUX_AP_SELECT_I2S			(0x64)
#define MUX_AP_SELECT_SPDIF			(0x24)

#define PIXREP_NONE		(0)		/**< No repetition  */
#define PIXREP_MIN		(0)		/**< 1 repetition   */
#define PIXREP_MAX		(9)		/**< 10 repetitions */
#define PIXREP_DEFAULT		(10)		/**< Default repetitions for output format */

#define MTX_CNTRL_MTX_SC			(0x03U)

/**
 * @brief	Matrix Control Scale Enumeration
 */
enum mtx_cntrl_scale {
	MTXSCALE_256 = 0,			/**< Factor 1/256  */
	MTXSCALE_512 = 1,			/**< Factor 1/512  */
	MTXSCALE_1024 = 2,			/**< Factor 1/1024 */
};

#define MTX_CNTRL_MTX_BP			(1 << 2)	/**< Matrix bypass */

/**
 * @brief	Matrix Control Bypass Enumeration
 */
enum mtx_cntrl_bp {
	MTXBYPASS_OFF = 0,			/**< Matrix bypass off */
	MTXBYPASS_ON = MTX_CNTRL_MTX_BP		/**< Matrix bypass on */
};

#define MTX_OFFSET_LEN				(3)		/**< Matrix offset (in or out) length */
struct mtx_offset {
	int16_t offset[MTX_OFFSET_LEN];
};

#define TBG_CNTRL_0_SYNC			(1 << 7)
#define TBG_CNTRL_0_SYNC_MTHD			(1 << 6)
#define TBG_CNTRL_0_FRAME_DIS			(1 << 5)

#define TBG_CNTRL_1_VH_TGL_MASK			(0x07U)
#define TBG_CNTRL_1_VH_TGL_0			(1 << 0)
#define TBG_CNTRL_1_VH_TGL_1			(1 << 1)
#define TBG_CNTRL_1_VH_TGL_2			(1 << 2)
#define TBG_CNTRL_1_VHX_EXT_MASK		(0x38U)
#define TBG_CNTRL_1_VHX_EXT_DE			(1 << 3)
#define TBG_CNTRL_1_VHX_EXT_HS			(1 << 4)
#define TBG_CNTRL_1_VHX_EXT_VS			(1 << 5)

#define TBG_CNTRL_1_DWIN_DIS			(1 << 6)

#define I2C_TIMER_RI_MASK			(0x0FU)
#define I2C_TIMER_PJ_MASK			(0xF0U)

#define HVF_CNTRL_0_INTPOL_MASK			(0x03U)		/**< Interpolation */
#define HVF_CNTRL_0_PREFIL_MASK			(0x0CU)		/**< Prefilter */

/**
 * @brief	HDMI Video Formatter Control Prefilter Enumeration
 */
enum hvf_cntrl_0_prefil {
	PREFIL_OFF = 0,
	PREFIL_121 = 0x04,
	PREFIL_109 = 0x08,
	PREFIL_CCIR601 = 0x0C
};

#define HVF_CNTRL_0_CLRBAR			(1 << 6)	/**< Color bar mode */
enum hvf_cntrl_0_clrbar {
	CLRBAR_4BAR = 0,			/**< 4-bar colorbar (R/W/B/Bl) */
	CLRBAR_8BAR = HVF_CNTRL_0_CLRBAR	/**< 8-bar colorbar (W/Y/Mg/R/Cy/G/B/Bl) */
};

#define HVF_CNTRL_0_SM				(1 << 7)	/**< Service mode (color bar enable ) */

#define HVF_CNTRL_1_FOR				(1 << 0)	/**< Format bypass */
#define HVF_CNTRL_1_YUVBLK			(1 << 1)	/**< YUV blanking level */

/**
 * @brief	HDMI Video Formatter Control Blanking Level Enumeration
 */
enum hvf_cntrl_1_yuv_blk {
	YUVBLK_16 = 0,				/**< Blanking level set to '16' */
	YUVBLK_0 = HVF_CNTRL_1_YUVBLK,		/**< Blanking level set to '0' */
};

#define HVF_CNTRL_1_VQR_MASK			(0x0CU)		/**< Video quantization range */

/**
 * @brief	HDMI Video Formatter Control Video Quantization Range Enumeration
 */
enum hvf_cntrl_1_vqr {
	QRANGE_FS = 0,				/**< Full Scale */
	QRANGE_RGB_YUV = 0x04,			/**< Limited RGB or YUV */
	QRANGE_YUV = 0x08,			/**< YUV */
};

#define HVF_CNTRL_1_PAD_MASK			(0x30U)

/**
 * @brief	HDMI Video Formatter Control Datapath
 */
enum hvf_cntrl_1_pad {
	DATAPATH_BITS_12 = 0,			/**< 12 bits */
	DATAPATH_BITS_10 = 0x10,		/**< 10 bits (pad 2 lsbs) */
	DATAPATH_BITS_8 = 0x20			/**< 8 bits (pad 4 lsbs) */
};

#define HVF_CNTRL_1_SEMI_PLANAR			(1 << 6)

#define TIMER_H_TIM_H_MASK			(0x03U)
#define TIMER_H_WD_CLKSEL			(1 << 6)

#define DEBUG_PROBE_WOO_EN			(1 << 0)
#define DEBUG_PROBE_DI_DE			(1 << 1)
#define DEBUG_PROBE_VID_DE			(1 << 2)
#define DEBUG_PROBE_BYPASS			(1 << 3)
#define DEBUG_PROBE_SEL_MASK			(0x30U)

#define I2S_FORMAT_I2S_FORMAT_MASK		(0x0FU)
#define I2S_FORMAT_I2S_DATA_SIZE_MASK		(0x0CU)

#define AIP_CLKSEL_DST_RATE       		(1 << 6)
#define AIP_CLKSEL_SEL_AIP_MASK			(0x38U)
#define AIP_CLKSEL_SEL_POL_CLK			(1 << 2)
#define AIP_CLKSEL_SEL_FS_MASK			(0x03U)

#define SC_VIDFORMAT_LUT_SEL_MASK		(0xC0U)
#define SC_VIDFORMAT_VID_FORMAT_O_MASK		(0x38U)
#define SC_VIDFORMAT_VID_FORMAT_I_MASK		(0x0FU)

#define SC_CNTRL_PHASES_H			(1 << 4)
#define SC_CNTRL_IL_OUT_ON			(1 << 3)
#define SC_CNTRL_PHASES_V			(1 << 2)
#define SC_CNTRL_VS_ON				(1 << 1)
#define SC_CNTRL_DEIL_ON			(1 << 0)

#define TBG_CNTRL_0_SYNC			(1 << 7)
enum tbg_cntrl_0_sync {
	SYNC_EACH_FRAME = 0,
	SYNC_ONCE = TBG_CNTRL_0_SYNC
};

#define TBG_CNTRL_0_SYNC_MTHD			(1 << 6)
enum tbg_cntrl_0_sync_mthd {
	SYNCMTHD_V_H = 0,			/**< V and H    */
	SYNCMTHD_V_XDE = TBG_CNTRL_0_SYNC_MTHD,	/**< V and X-DE */
};

#define TBG_CNTRL_0_FRAME_DIS			(1 << 5)
#define TBG_CNTRL_0_TOP_EXT			(1 << 3)
#define TBG_CNTRL_0_DE_EXT			(1 << 2)
#define TBG_CNTRL_0_TOP_SEL			(1 << 1)
#define TBG_CNTRL_0_TOP_TGL			(1 << 0)

#define PLL_SERIAL_1_SRL_FDN			(1 << 0)
#define PLL_SERIAL_1_SRL_IZ_MASK		(0x06U)
#define PLL_SERIAL_1_SRL_MAN_IZ			(1 << 6)

#define PLL_SERIAL_2_SRL_NOSC_MASK		(0x03U)
#define PLL_SERIAL_2_SRL_PR_MASK		(0xF0U)

#define PLL_SERIAL_3_SRL_CCIR			(1 << 0)
#define PLL_SERIAL_3_SRL_DE			(1 << 1)
#define PLL_SERIAL_3_SRL_PXIN_SEL		(1 << 4)

#define SERIALIZER_SRL_PHASE2_MASK		(0x0FU)
#define SERIALIZER_SRL_PHASE3_MASK		(0xF0U)

#define BUFFER_OUT_SRL_CLK_MASK			(0x03U)
#define BUFFER_OUT_SRL_FORCE_MASK		(0x0CU)

/**
 * @brief	Buffer Output Serializer Force Enumeration
 */
enum buffer_out_srl_force {
	TMDSOUT_NORMAL = 0x00,
	TMDSOUT_NORMAL1 = 0x04,
	TMDSOUT_FORCED0 = 0x08,
	TMDSOUT_FORCED1 = 0x0C
};

#define PLL_SCG1_SCG_FDN			(1 << 0)

#define PLL_SCG2_SCG_NOSC_MASK			(0x03U)
#define PLL_SCG2_SELPLLCLKIN			(1 << 4)
#define PLL_SCG2_BYPASS_SCG			(1 << 7)

#define VAI_PLL_PLLSRL_LOCK			(1 << 0)
#define VAI_PLL_PLLSCG_LOCK			(1 << 1)
#define VAI_PLL_PLLSRL_HVP			(1 << 4)
#define VAI_PLL_PLLSCG_HVP			(1 << 5)
#define VAI_PLL_PLLDE_HVP			(1 << 6)

#define AUDIO_DIV_AUDIO_DIV_MASK		(0x07U)

#define AIP_CNTRL_0_RST_FIFO			(1 << 0)
#define AIP_CNTRL_0_SWAP			(1 << 1)
#define AIP_CNTRL_0_LAYOUT			(1 << 2)
#define AIP_CNTRL_0_ACR_MAN			(1 << 5)
#define AIP_CNTRL_0_RST_CTS			(1 << 6)

#define TEST1_TST_ENAHVP			(1 << 0)
#define TEST1_TST_NOSC				(1 << 1)
#define TEST1_SRLDAT_MASK			(0xC0U)

#define TEST2_DIVTESTOE				(1 << 0)
#define TEST2_PWD1V8				(1 << 1)

#define SEL_CLK_SEL_CLK1			(1 << 0)
#define SEL_CLK_SEL_VRF_CLK_MASK		(0x06U)
#define SEL_CLK_ENA_SC_CLK			(1 << 3)


#define BUFF_OUT2_FORCE_DAT0_MASK		(0x03U)
#define BUFF_OUT2_FORCE_DAT1_MASK		(0x0CU)
#define BUFF_OUT2_FORCE_DAT2_MASK		(0x30U)

#define EDID_CTRL_EDID_RD			(1 << 0)

#define CA_I2S_CA_I2S_MASK			(0x1FU)
#define CA_I2S_HBR_CHSTAT_4			(1 << 5)

#define GC_AVMUTE_SETCLR_MUTE			(0x0CU)
#define GC_AVMUTE_CLR_MUTE			(1 << 0)
#define GC_AVMUTE_SET_MUTE			(1 << 1)

#define CTS_N_M_SEL_MASK			(0x30U)
#define CTS_N_K_SEL_MASK			(0x07U)

#define ENC_CNTRL_RST_ENC			(1 << 0)
#define ENC_CNTRL_RST_SEL			(1 << 1)
#define ENC_CNTRL_CTL_CODE_MASK			(0x0CU)

#define DIP_FLAGS_ACR				(1 << 0)
#define DIP_FLAGS_GC				(1 << 1)
#define DIP_FLAGS_ISRC1				(1 << 2)
#define DIP_FLAGS_ISRC2				(1 << 3)
#define DIP_FLAGS_ACP				(1 << 4)
#define DIP_FLAGS_NULL				(1 << 6)
#define DIP_FLAGS_FORCE_NULL			(1 << 7)

#define DIP_IF_FLAGS_IF1			(1 << 1)
#define DIP_IF_FLAGS_IF2			(1 << 2)
#define DIP_IF_FLAGS_IF3			(1 << 3)
#define DIP_IF_FLAGS_IF4			(1 << 4)
#define DIP_IF_FLAGS_IF5			(1 << 5)

#define OTP_TX0_SR_HDCP				(1 << 0)
#define DDC_SPEED_FACTOR			(39)
#define OTP_TX33_HDMI				(1 << 1)

#define GMD_CONTROL_ENABLE			(1 << 0)
#define GMD_CONTROL_BUF_SEL			(1 << 1)

#define SSD_UNUSED_VALUE 0xF0

#define REG_VAL_SEL_AIP_SPDIF   0
#define REG_VAL_SEL_AIP_I2S     1
#define REG_VAL_SEL_AIP_OBA     2
#define REG_VAL_SEL_AIP_DST     3
#define REG_VAL_SEL_AIP_HBR     5

#define CH_STAT_B_0_DATA_PCM			(1 << 1)	/**< PCM data field */
#define CH_STAT_B_0_COPYRIGHT			(1 << 2)	/**< Copyright protection */
#define CH_STAT_B_0_FMT_MASK			(0x38U)

/**
 * @brief	HDMI Core Registers Enumeration
 */
enum tda998x_hdmi_reg {
	VERSION			= PAGE_ADDR(PAGE_00, 0x00),	/**< Device version */
	MAIN_CNTRL0		= PAGE_ADDR(PAGE_00, 0x01),	/**< Main control */
	VERSION_MSB		= PAGE_ADDR(PAGE_00, 0x02),
	PACKAGE_TYPE		= PAGE_ADDR(PAGE_00, 0x03),
	SR_REG			= PAGE_ADDR(PAGE_00, 0x0A),
	DDC_DISABLE		= PAGE_ADDR(PAGE_00, 0x0B),
	CCLK_ON			= PAGE_ADDR(PAGE_00, 0x0C),
	I2C_MASTER		= PAGE_ADDR(PAGE_00, 0x0D),
	INT_FLAGS_0		= PAGE_ADDR(PAGE_00, 0x0F),
	INT_FLAGS_1		= PAGE_ADDR(PAGE_00, 0x10),
	INT_FLAGS_2		= PAGE_ADDR(PAGE_00, 0x11),
	INT_FLAGS_3		= PAGE_ADDR(PAGE_00, 0x12),
	SW_INT			= PAGE_ADDR(PAGE_00, 0x15),
	ENA_ACLK		= PAGE_ADDR(PAGE_00, 0x16),
	ENA_VP_0		= PAGE_ADDR(PAGE_00, 0x18),
	ENA_VP_1		= PAGE_ADDR(PAGE_00, 0x19),
	ENA_VP_2		= PAGE_ADDR(PAGE_00, 0x1A),
	ENA_AP			= PAGE_ADDR(PAGE_00, 0x1E),
	VIP_CNTRL_0		= PAGE_ADDR(PAGE_00, 0x20),	/**< Video port control 0 */
	VIP_CNTRL_1		= PAGE_ADDR(PAGE_00, 0x21),	/**< Video port control 1 */
	VIP_CNTRL_2		= PAGE_ADDR(PAGE_00, 0x22),	/**< Video port control 2 */
	VIP_CNTRL_3		= PAGE_ADDR(PAGE_00, 0x23),	/**< Video port control 3 */
	VIP_CNTRL_4		= PAGE_ADDR(PAGE_00, 0x24),	/**< Video port control 4 */
	VIP_CNTRL_5		= PAGE_ADDR(PAGE_00, 0x25),	/**< Video port control 5 */
	MUX_AP			= PAGE_ADDR(PAGE_00, 0x26),
	MUX_VP_VIP_OUT		= PAGE_ADDR(PAGE_00, 0x27),
	MTX_CNTRL		= PAGE_ADDR(PAGE_00, 0x80),
	MTX_OI1_MSB		= PAGE_ADDR(PAGE_00, 0x81),
	MTX_P11_MSB		= PAGE_ADDR(PAGE_00, 0x87),
	MTX_OO1_MSB		= PAGE_ADDR(PAGE_00, 0x99),
	VIDFORMAT		= PAGE_ADDR(PAGE_00, 0xA0),
	REFPIX_MSB		= PAGE_ADDR(PAGE_00, 0xA1),
	REFPIX_LSB		= PAGE_ADDR(PAGE_00, 0xA2),
	REFLINE_MSB		= PAGE_ADDR(PAGE_00, 0xA3),
	REFLINE_LSB		= PAGE_ADDR(PAGE_00, 0xA4),
	NPIX_MSB		= PAGE_ADDR(PAGE_00, 0xA5),
	NPIX_LSB		= PAGE_ADDR(PAGE_00, 0xA6),
	NLINE_MSB		= PAGE_ADDR(PAGE_00, 0xA7),
	NLINE_LSB		= PAGE_ADDR(PAGE_00, 0xA8),
	VS_LINE_STRT_1_MSB	= PAGE_ADDR(PAGE_00, 0xA9),
	VS_LINE_STRT_1_LSB	= PAGE_ADDR(PAGE_00, 0xAA),
	VS_PIX_STRT_1_MSB	= PAGE_ADDR(PAGE_00, 0xAB),
	VS_PIX_STRT_1_LSB	= PAGE_ADDR(PAGE_00, 0xAC),
	VS_LINE_END_1_MSB	= PAGE_ADDR(PAGE_00, 0xAD),
	VS_LINE_END_1_LSB	= PAGE_ADDR(PAGE_00, 0xAE),
	VS_PIX_END_1_MSB	= PAGE_ADDR(PAGE_00, 0xAF),
	VS_PIX_END_1_LSB	= PAGE_ADDR(PAGE_00, 0xB0),
	VS_LINE_STRT_2_MSB	= PAGE_ADDR(PAGE_00, 0xB1),
	VS_LINE_STRT_2_LSB	= PAGE_ADDR(PAGE_00, 0xB2),
	VS_PIX_STRT_2_MSB	= PAGE_ADDR(PAGE_00, 0xB3),
	VS_PIX_STRT_2_LSB	= PAGE_ADDR(PAGE_00, 0xB4),
	VS_LINE_END_2_MSB	= PAGE_ADDR(PAGE_00, 0xB5),
	VS_LINE_END_2_LSB	= PAGE_ADDR(PAGE_00, 0xB6),
	VS_PIX_END_2_MSB	= PAGE_ADDR(PAGE_00, 0xB7),
	VS_PIX_END_2_LSB	= PAGE_ADDR(PAGE_00, 0xB8),
	HS_PIX_START_MSB	= PAGE_ADDR(PAGE_00, 0xB9),
	HS_PIX_START_LSB	= PAGE_ADDR(PAGE_00, 0xBA),
	HS_PIX_STOP_MSB		= PAGE_ADDR(PAGE_00, 0xBB),
	HS_PIX_STOP_LSB		= PAGE_ADDR(PAGE_00, 0xBC),
	VWIN_START_1_MSB	= PAGE_ADDR(PAGE_00, 0xBD),
	VWIN_START_1_LSB	= PAGE_ADDR(PAGE_00, 0xBE),
	VWIN_END_1_MSB		= PAGE_ADDR(PAGE_00, 0xBF),
	VWIN_END_1_LSB		= PAGE_ADDR(PAGE_00, 0xC0),
	VWIN_START_2_MSB	= PAGE_ADDR(PAGE_00, 0xC1),
	VWIN_START_2_LSB	= PAGE_ADDR(PAGE_00, 0xC2),
	VWIN_END_2_MSB		= PAGE_ADDR(PAGE_00, 0xC3),
	VWIN_END_2_LSB		= PAGE_ADDR(PAGE_00, 0xC4),
	DE_START_MSB		= PAGE_ADDR(PAGE_00, 0xC5),
	DE_START_LSB		= PAGE_ADDR(PAGE_00, 0xC6),
	DE_STOP_MSB		= PAGE_ADDR(PAGE_00, 0xC7),
	DE_STOP_LSB		= PAGE_ADDR(PAGE_00, 0xC8),
	COLBAR_WIDTH		= PAGE_ADDR(PAGE_00, 0xC9),
	TBG_CNTRL_0		= PAGE_ADDR(PAGE_00, 0xCA),
	TBG_CNTRL_1		= PAGE_ADDR(PAGE_00, 0xCB),
	VBL_OFFSET_START	= PAGE_ADDR(PAGE_00, 0xCC),
	VBL_OFFSET_END		= PAGE_ADDR(PAGE_00, 0xCD),
	HBL_OFFSET_START	= PAGE_ADDR(PAGE_00, 0xCE),
	HBL_OFFSET_END		= PAGE_ADDR(PAGE_00, 0xCF),
	DWIN_RE_DE		= PAGE_ADDR(PAGE_00, 0xD0),
	DWIN_FE_DE		= PAGE_ADDR(PAGE_00, 0xD1),
	TIMER_RI_PJ		= PAGE_ADDR(PAGE_00, 0xE1),
	BCAPS_POLL		= PAGE_ADDR(PAGE_00, 0xE2),
	REG_100us		= PAGE_ADDR(PAGE_00, 0xE3),
	HVF_CNTRL_0		= PAGE_ADDR(PAGE_00, 0xE4),
	HVF_CNTRL_1		= PAGE_ADDR(PAGE_00, 0xE5),
	TIMER_H			= PAGE_ADDR(PAGE_00, 0xE8),
	TIMER_M			= PAGE_ADDR(PAGE_00, 0xE9),
	TIMER_L			= PAGE_ADDR(PAGE_00, 0xEA),
	TIMER_2SEC		= PAGE_ADDR(PAGE_00, 0xEB),
	TIMER_5SEC		= PAGE_ADDR(PAGE_00, 0xEC),
	NDIV_IM			= PAGE_ADDR(PAGE_00, 0xEE),
	NDIV_PF			= PAGE_ADDR(PAGE_00, 0xEF),
	RPT_CNTRL		= PAGE_ADDR(PAGE_00, 0xF0),
	LEAD_OFF		= PAGE_ADDR(PAGE_00, 0xF1),
	TRAIL_OFF		= PAGE_ADDR(PAGE_00, 0xF2),
	MISR_EXP_0		= PAGE_ADDR(PAGE_00, 0xF3),
	MISR_EXP_1		= PAGE_ADDR(PAGE_00, 0xF4),
	MISR_EXP_2		= PAGE_ADDR(PAGE_00, 0xF5),
	MISR_0			= PAGE_ADDR(PAGE_00, 0xF6),
	MISR_1			= PAGE_ADDR(PAGE_00, 0xF7),
	DEBUG_PROBE		= PAGE_ADDR(PAGE_00, 0xF8),
	GHOST_XADDR		= PAGE_ADDR(PAGE_00, 0xF9),
	MISR_2			= PAGE_ADDR(PAGE_00, 0xFA),
	I2S_FORMAT		= PAGE_ADDR(PAGE_00, 0xFC),
	AIP_CLKSEL		= PAGE_ADDR(PAGE_00, 0xFD),
	GHOST_ADDR		= PAGE_ADDR(PAGE_00, 0xFE),
	SC_VIDFORMAT		= PAGE_ADDR(PAGE_01, 0x00),
	SC_CNTRL		= PAGE_ADDR(PAGE_01, 0x01),
	SC_DELTA_PHASE_V	= PAGE_ADDR(PAGE_01, 0x02),
	SC_DELTA_PHASE_H	= PAGE_ADDR(PAGE_01, 0x03),
	SC_START_PHASE_H	= PAGE_ADDR(PAGE_01, 0x04),
	SC_NPIX_IN_LSB		= PAGE_ADDR(PAGE_01, 0x05),
	SC_NPIX_IN_MSB		= PAGE_ADDR(PAGE_01, 0x06),
	SC_NPIX_OUT_LSB		= PAGE_ADDR(PAGE_01, 0x07),
	SC_NPIX_OUT_MSB		= PAGE_ADDR(PAGE_01, 0x08),
	SC_NLINE_IN_LSB		= PAGE_ADDR(PAGE_01, 0x09),
	SC_NLINE_IN_MSB		= PAGE_ADDR(PAGE_01, 0x0A),
	SC_NLINE_OUT_LSB	= PAGE_ADDR(PAGE_01, 0x0B),
	SC_NLINE_OUT_MSB	= PAGE_ADDR(PAGE_01, 0x0C),
	SC_NLINE_SKIP		= PAGE_ADDR(PAGE_01, 0x0D),
	SC_SAMPLE_BUFFIL	= PAGE_ADDR(PAGE_01, 0x0E),
	SC_MAX_BUFFILL_P_0	= PAGE_ADDR(PAGE_01, 0x0F),
	SC_MAX_BUFFILL_P_1	= PAGE_ADDR(PAGE_01, 0x10),
	SC_MAX_BUFFILL_D_0	= PAGE_ADDR(PAGE_01, 0x11),
	SC_MAX_BUFFILL_D_1	= PAGE_ADDR(PAGE_01, 0x12),
	SC_SAMPLE_FIFOFILL	= PAGE_ADDR(PAGE_01, 0x13),
	SC_MAX_FIFOFILL_PI	= PAGE_ADDR(PAGE_01, 0x14),
	SC_MIN_FIFOFILL_PO1	= PAGE_ADDR(PAGE_01, 0x15),
	SC_MIN_FIFOFILL_PO2	= PAGE_ADDR(PAGE_01, 0x16),
	SC_MIN_FIFOFILL_PO3	= PAGE_ADDR(PAGE_01, 0x17),
	SC_MIN_FIFOFILL_PO4	= PAGE_ADDR(PAGE_01, 0x18),
	SC_MAX_FIFOFILL_DI	= PAGE_ADDR(PAGE_01, 0x19),
	SC_MAX_FIFOFILL_DO	= PAGE_ADDR(PAGE_01, 0x1A),
	SC_VS_LUT_0		= PAGE_ADDR(PAGE_01, 0x1B),
	SC_LAT_SCO		= PAGE_ADDR(PAGE_01, 0x48),
	VIDFORMAT_W		= PAGE_ADDR(PAGE_01, 0xA0),
	REFPIX_MSB_W		= PAGE_ADDR(PAGE_01, 0xA1),
	REFPIX_LSB_W		= PAGE_ADDR(PAGE_01, 0xA2),
	REFLINE_MSB_W		= PAGE_ADDR(PAGE_01, 0xA3),
	REFLINE_LSB_W		= PAGE_ADDR(PAGE_01, 0xA4),
	NPIX_MSB_W		= PAGE_ADDR(PAGE_01, 0xA5),
	NPIX_LSB_W		= PAGE_ADDR(PAGE_01, 0xA6),
	NLINE_MSB_W		= PAGE_ADDR(PAGE_01, 0xA7),
	NLINE_LSB_W		= PAGE_ADDR(PAGE_01, 0xA8),
	VWIN_START_1_MSB_W	= PAGE_ADDR(PAGE_01, 0xBD),
	VWIN_START_1_LSB_W	= PAGE_ADDR(PAGE_01, 0xBE),
	VWIN_END_1_MSB_W	= PAGE_ADDR(PAGE_01, 0xBF),
	VWIN_END_1_LSB_W	= PAGE_ADDR(PAGE_01, 0xC0),
	VWIN_START_2_MSB_W	= PAGE_ADDR(PAGE_01, 0xC1),
	VWIN_START_2_LSB_W	= PAGE_ADDR(PAGE_01, 0xC2),
	VWIN_END_2_MSB_W	= PAGE_ADDR(PAGE_01, 0xC3),
	VWIN_END_2_LSB_W	= PAGE_ADDR(PAGE_01, 0xC4),
	DE_START_MSB_W		= PAGE_ADDR(PAGE_01, 0xC5),
	DE_START_LSB_W		= PAGE_ADDR(PAGE_01, 0xC6),
	DE_STOP_MSB_W		= PAGE_ADDR(PAGE_01, 0xC7),
	DE_STOP_LSB_W		= PAGE_ADDR(PAGE_01, 0xC8),
	PLL_SERIAL_1		= PAGE_ADDR(PAGE_02, 0x00),
	PLL_SERIAL_2		= PAGE_ADDR(PAGE_02, 0x01),
	PLL_SERIAL_3		= PAGE_ADDR(PAGE_02, 0x02),
	SERIALIZER		= PAGE_ADDR(PAGE_02, 0x03),
	BUFFER_OUT		= PAGE_ADDR(PAGE_02, 0x04),
	PLL_SCG1		= PAGE_ADDR(PAGE_02, 0x05),
	PLL_SCG2		= PAGE_ADDR(PAGE_02, 0x06),
	PLL_SCGN1		= PAGE_ADDR(PAGE_02, 0x07),
	PLL_SCGN2		= PAGE_ADDR(PAGE_02, 0x08),
	PLL_SCGR1		= PAGE_ADDR(PAGE_02, 0x09),
	PLL_SCGR2		= PAGE_ADDR(PAGE_02, 0x0A),
	VAI_PLL_R		= PAGE_ADDR(PAGE_02, 0x0D),
	AUDIO_DIV		= PAGE_ADDR(PAGE_02, 0x0E),
	TEST1_RW		= PAGE_ADDR(PAGE_02, 0x0F),
	TEST2_RW		= PAGE_ADDR(PAGE_02, 0x10),
	SEL_CLK			= PAGE_ADDR(PAGE_02, 0x11),
	ANA_GENERAL		= PAGE_ADDR(PAGE_02, 0x12),
	BUFFER_OUT2_RW		= PAGE_ADDR(PAGE_02, 0x13),
	SRL_TSTPAT0_RW		= PAGE_ADDR(PAGE_02, 0x14),
	SRL_TSTPAT1_RW		= PAGE_ADDR(PAGE_02, 0x15),
	SRL_TSTPAT2_RW		= PAGE_ADDR(PAGE_02, 0x16),
	SRL_TSTPAT3_RW		= PAGE_ADDR(PAGE_02, 0x17),
	EDID_DATA_0_R		= PAGE_ADDR(PAGE_09, 0x00),
	EDID_CTRL_RW		= PAGE_ADDR(PAGE_09, 0xFA),
	DDC_ADDR_RW		= PAGE_ADDR(PAGE_09, 0xFB),
	DDC_OFFS_RW		= PAGE_ADDR(PAGE_09, 0xFC),
	DDC_SEGM_ADDR_RW	= PAGE_ADDR(PAGE_09, 0xFD),
	DDC_SEGM_RW		= PAGE_ADDR(PAGE_09, 0xFE),
	IF1_HB0			= PAGE_ADDR(PAGE_10, 0x20),
	IF1_PB0			= PAGE_ADDR(PAGE_10, 0x23),
	IF1_PB10		= PAGE_ADDR(PAGE_10, 0x2D),
	IF2_HB0			= PAGE_ADDR(PAGE_10, 0x40),
	IF2_PB0			= PAGE_ADDR(PAGE_10, 0x43),
	IF3_HB0			= PAGE_ADDR(PAGE_10, 0x60),
	IF3_PB0			= PAGE_ADDR(PAGE_10, 0x63),
	IF4_HB0			= PAGE_ADDR(PAGE_10, 0x80),
	IF4_PB0			= PAGE_ADDR(PAGE_10, 0x83),
	IF5_HB0			= PAGE_ADDR(PAGE_10, 0xA0),
	IF5_PB0			= PAGE_ADDR(PAGE_10, 0xA3),
	AIP_CNTRL_0		= PAGE_ADDR(PAGE_11, 0x00),
	CA_I2S			= PAGE_ADDR(PAGE_11, 0x01),
	CA_DSD			= PAGE_ADDR(PAGE_11, 0x02),
	OBA_PH			= PAGE_ADDR(PAGE_11, 0x03),
	LATENCY_RD		= PAGE_ADDR(PAGE_11, 0x04),
	ACR_CTS_0		= PAGE_ADDR(PAGE_11, 0x05),
	ACR_CTS_1		= PAGE_ADDR(PAGE_11, 0x06),
	ACR_CTS_2		= PAGE_ADDR(PAGE_11, 0x07),
	ACR_N_0			= PAGE_ADDR(PAGE_11, 0x08),
	ACR_N_1			= PAGE_ADDR(PAGE_11, 0x09),
	ACR_N_2			= PAGE_ADDR(PAGE_11, 0x0A),
	GC_AVMUTE		= PAGE_ADDR(PAGE_11, 0x0B),
	CTS_N_RW		= PAGE_ADDR(PAGE_11, 0x0C),
	ENC_CNTRL		= PAGE_ADDR(PAGE_11, 0x0D),
	DIP_FLAGS		= PAGE_ADDR(PAGE_11, 0x0E),
	DIP_IF_FLAGS		= PAGE_ADDR(PAGE_11, 0x0F),
	CH_STAT_B_0		= PAGE_ADDR(PAGE_11, 0x14),
	CH_STAT_B_1		= PAGE_ADDR(PAGE_11, 0x15),
	CH_STAT_B_3		= PAGE_ADDR(PAGE_11, 0x16),
	CH_STAT_B_4		= PAGE_ADDR(PAGE_11, 0x17),
	CH_STAT_B_2_AP0_L	= PAGE_ADDR(PAGE_11, 0x18),
	CH_STAT_B_2_AP0_R	= PAGE_ADDR(PAGE_11, 0x19),
	CH_STAT_B_2_AP1_L	= PAGE_ADDR(PAGE_11, 0x1A),
	CH_STAT_B_2_AP1_R	= PAGE_ADDR(PAGE_11, 0x1B),
	CH_STAT_B_2_AP2_L	= PAGE_ADDR(PAGE_11, 0x1C),
	CH_STAT_B_2_AP2_R	= PAGE_ADDR(PAGE_11, 0x1D),
	CH_STAT_B_2_AP3_L	= PAGE_ADDR(PAGE_11, 0x1E),
	CH_STAT_B_2_AP3_R	= PAGE_ADDR(PAGE_11, 0x1F),
	ISRC1_HB0		= PAGE_ADDR(PAGE_11, 0x20),
	ISRC1_PB0		= PAGE_ADDR(PAGE_11, 0x23),
	ISRC2_HB0		= PAGE_ADDR(PAGE_11, 0x40),
	ISRC2_PB0		= PAGE_ADDR(PAGE_11, 0x43),
	ACP_HB0			= PAGE_ADDR(PAGE_11, 0x60),
	ACP_PB0			= PAGE_ADDR(PAGE_11, 0x63),
	OTP_TX0			= PAGE_ADDR(PAGE_12, 0x97),
	OTP_TX1			= PAGE_ADDR(PAGE_12, 0x98),
	OTP_TX2			= PAGE_ADDR(PAGE_12, 0x99),
	OTP_TX3			= PAGE_ADDR(PAGE_12, 0x9A),
	OTP_TX33		= PAGE_ADDR(PAGE_12, 0xB8),
	GMD_0_HB0_RW		= PAGE_ADDR(PAGE_13, 0x00),
	GMD_0_PB0_RW		= PAGE_ADDR(PAGE_13, 0x03),
	GMD_CONTROL_RW		= PAGE_ADDR(PAGE_13, 0x1F),
	GMD_1_HB0_RW		= PAGE_ADDR(PAGE_13, 0x20),
	GMD_1_PB0_RW		= PAGE_ADDR(PAGE_13, 0x23),
	INVALID_REG		= PAGE_ADDR(PAGE_INVALID, 0xFF),
	CURPAGE			= PAGE_ADDR(PAGE_INVALID, 0xFF),
};

/**
 * @brief	Supported feature enumeration
 */
enum feat_support {
	FEAT_HDCP = 0,			/**< HDCP */
	FEAT_SCALER = 1,  		/**< Scaler */
	FEAT_AUDIO_OBA = 2, 		/**< One bit audio */
	FEAT_AUDIO_DST = 3,  		/**< DST audio */
	FEAT_AUDIO_HBR = 4,  		/**< HBR audio */
	FEAT_HDMI_1_1 = 5,  		/**< HDMI 1.1 */
	FEAT_HDMI_1_2A = 6, 		/**< HDMI 1.2a */
	FEAT_HDMI_1_3A = 7,  		/**< HDMI 1.3a */
	FEAT_DEEP_COLOR_30 = 8,  	/**< 30 bits deep color */
	FEAT_DEEP_COLOR_36 = 9,  	/**< 36 bits deep color */
	FEAT_DEEP_COLOR_48 = 11, 	/**< 48 bits deep color */
	FEAT_UPSAMPLER = 12, 		/**< Up sampler */
	FEAT_DOWNSAMPLER = 13, 		/**< Down sampler */
	FEAT_COLOR_CONVERSION = 14	/**< Color conversion matrix */
};

/**
 * @brief	Frame Sync
 */
enum vs_fsync {
	VS_FSYNC_EACH_FRAME = 0,	/**< Sync on each frame */
	VS_FSYNC_ONCE = 1,		/**< Sync once only     */
};

enum vs_src {
	VS_SRC_INTERNAL = 0,		/**< Internal */
	VS_SRC_EXTERNAL = 1,		/**< External */
};

enum vs_tgl {
	VS_TGL_TABLE = 0,		/**< VS/HS polarity from table */
	VS_TGL_UNUSED_1 = 1,		/**< Unused */
	VS_TGL_UNUSED_2 = 2,		/**< Unused */
	VS_TGL_UNUSED_3 = 3,		/**< Unused */
	VS_TGL_NO_ACTION = 4,		/**< No toggle */
	VS_TGL_HS = 5,			/**< Toggle Hs */
	VS_TGL_VS = 6,			/**< Toggle Vs */
	VS_TGL_HS_VS = 7		/**< Toggle Hs & Vs */
};

struct reg_mask_val {
	enum tda998x_hdmi_reg	reg;
	uint8_t			mask;
	uint8_t			val;
};

/**
 * @brief	Vertical output frequencies
 */
enum tda998x_vert_freq {
	VFREQ_24Hz = 0,			/**< 24Hz */
	VFREQ_25Hz = 1,			/**< 25Hz */
	VFREQ_30Hz = 2,			/**< 30Hz */
	VFREQ_50Hz = 3,			/**< 50Hz */
	VFREQ_59Hz = 4,			/**< 59.94Hz */
	VFREQ_60Hz = 5,			/**< 60Hz */
};

enum tda998x_pix_edge {
	PIXEDGE_CLK_POS = 0,		/**< Pixel Clock Positive Edge */
	PIXEDGE_CLK_NEG = 1,		/**< Pixel Clock Negative Edge */
};

enum tda998x_color_space {
	CS_RGB_FULL  = 0,		/**< RGB full */
	CS_RGB_LIMITED = 1,		/**< RGB Limited (TV) */
	CS_YUV_ITU_BT601 = 2,		/**< YUV ITUBT601 (SDTV) */
	CS_YUV_ITU_BT709 = 3,		/**< YUV ITUBT709 (HDTV) */
};

struct tda998x_vid_frm {
	uint16_t	npix;
	uint16_t	nline;
	uint16_t	line_start;
	uint16_t	pix_start;
	uint16_t	line_end;
	uint16_t	pix_end;
	uint16_t	hs_start;
	uint16_t	hs_end;
	uint16_t	act_vid_start;
	uint16_t	act_vid_end;
	uint16_t	de_start;
	uint16_t	de_end;
};

static int tda998x_aud_set_pkt_infoframe(struct tda998x_dev *dev,
					 struct tda998x_aud_if_pkt *pkt,
					 bool en);

static const enum vip_cntrl_swap port_map_rgb444[] = {
	VIP_CNTRL_VP3_0,
	VIP_CNTRL_VP7_4,
	VIP_CNTRL_VP11_8,
	VIP_CNTRL_VP15_12,
	VIP_CNTRL_VP19_16,
	VIP_CNTRL_VP23_20
};

static const enum vip_cntrl_mirr mirr_map_rgb444[] = {
	VIP_CNTRL_NOT_MIRRORED,
	VIP_CNTRL_NOT_MIRRORED,
	VIP_CNTRL_NOT_MIRRORED,
	VIP_CNTRL_NOT_MIRRORED,
	VIP_CNTRL_NOT_MIRRORED,
	VIP_CNTRL_NOT_MIRRORED
};

struct reg_mask_val pll_cfg_common[] = {
	{ PLL_SERIAL_1,	0x00},
	{ PLL_SERIAL_2,	0x01},
	{ PLL_SERIAL_3,	0x00},
	{ SERIALIZER,	0x00},
	{ BUFFER_OUT,	0x00},
	{ PLL_SCG1,	0x00},
	{ AUDIO_DIV,	0x03},
	{ SEL_CLK,	0x09},
	{ INVALID_REG,	0x00 }
};

struct reg_mask_val pll_cfg_other[] = {
	{ PLL_SCGN1,	0xFA},
	{ PLL_SCGN2,	0x00},
	{ PLL_SCGR1,	0x5B},
	{ PLL_SCGR2,	0x00},
	{ INVALID_REG,	0x00 }
};

struct reg_mask_val pll_cfg_480ix576i[] = {
	{ PLL_SCGN1,	0x14 },
	{ PLL_SCGN2,	0x00 },
	{ PLL_SCGR1,	0x0A },
	{ PLL_SCGR2,	0x00 },
	{ INVALID_REG,	0x00 }
};

static const uint8_t mtx_cfg_preset[12][31] = {
	/* RGB full to RGB limited */
	{ 0x2,							/** Control: MTXSCALE_1024 */
		0x00,	0x00,	0x00,	0x00,	0x00,	0x00,	/** Input offset */
		0x03,	0x6F,	0x00,	0x00,	0x00,	0x00,	/** Matrix */
		0x00,	0x00,	0x03,	0x6F,	0x00,	0x00,
		0x00,	0x00,	0x00,	0x00,	0x03,	0x6F,
		0x00,	0x40,	0x00,	0x40,	0x00,	0x40	/** Output offset */
	},

	/* RGB full to BT601 */
	{ 0x2,				/* MTXSCALE_1024 */
		0x00,	0x00,	0x00,	0x00,	0x00,	0x00,
		0x02,	0x04,	0x01,	0x07,	0x00,	0x64,
		0x06,	0x88,	0x01,	0xC2,	0x07,	0xB7,
		0x06,	0xD6,	0x07,	0x68,	0x01,	0xC2,
		0x00,	0x40,	0x02,	0x00,	0x02,	0x0
	},

	/* RGB full to BT709 */
	{ 0x2,				/* MTXSCALE_1024 */
		0x0,	0x0,	0x0,	0x0,	0x0,	0x0,
		0x2,	0x75,	0x0,	0xBB,	0x0,	0x3F,
		0x6,	0x68,	0x1,	0xC2,	0x7,	0xD7,
		0x6,	0xA6,	0x7,	0x99,	0x1,	0xC2,
		0x0,	0x40,	0x2,	0x0,	0x2,	0x0
	},

	/* RGB limited to RGB fill */
	{ 0x1,				/* MTXSCALE_512 */
		0x7,	0xC0,	0x7,	0xC0,	0x7,	0xC0,
		0x2,	0x54,	0x0,	0x0,	0x0,	0x0,
		0x0,	0x0,	0x2,	0x54,	0x0,	0x0,
		0x0,	0x0,	0x0,	0x0,	0x2,	0x54,
		0x0,	0x0,	0x0,	0x0,	0x0,	0x0
	},

	/* RGB limited to BT601 */
	{ 0x2,				/* MTXSCALE_1024 */
		0x7,	0xC0,	0x7,	0xC0,	0x7,	0xC0,
		0x2,	0x59,	0x1,	0x32,	0x0,	0x75,
		0x6,	0x4A,	0x2,	0x0C,	0x7,	0xAB,
		0x6,	0xA5,	0x7,	0x4F,	0x2,	0x0C,
		0x0,	0x40,	0x2,	0x0,	0x2,	0x0
	},

	/* RGB limited to BT709 */
	{ 0x2,				/* MTXSCALE_1024 */
		0x7,	0xC0,	0x7,	0xC0,	0x7,	0xC0,
		0x2,	0xDC,	0x0,	0xDA,	0x0,	0x4A,
		0x6,	0x24,	0x2,	0x0C,	0x7,	0xD0,
		0x6,	0x6C,	0x7,	0x88,	0x2,	0x0C,
		0x0,	0x40,	0x2,	0x0,	0x2,	0x0
	},

	/* BT601 to RGB full */
	{ 0x0,				/* MTXSCALE_256 */
		0x7,	0xC0,	0x6,	0x0,	0x6,	0x0,
		0x1,	0x2A,	0x7,	0x30,	0x7,	0x9C,
		0x1,	0x2A,	0x1,	0x99,	0x0,	0x0,
		0x1,	0x2A,	0x0,	0x0,	0x2,	0x5,
		0x0,	0x0,	0x0,	0x0,	0x0,	0x0
	},

	/* BT601 to RGB limited */
	{ 0x1,				/* MTXSCALE_512 */
		0x7,	0xC0,	0x6,	0x0,	0x6,	0x0,
		0x2,	0x0,	0x6,	0x9A,	0x7,	0x54,
		0x2,	0x0,	0x2,	0xBE,	0x0,	0x0,
		0x2,	0x0,	0x0,	0x0,	0x3,	0x77,
		0x0,	0x40,	0x0,	0x40,	0x0,	0x40
	},

	/* BT601 to BT709 */
	{ 0x1,				/* MTXSCALE_512 */
		0x7,	0xC0,	0x6,	0x0,	0x6,	0x0,
		0x2,	0x0,	0x7,	0x96,	0x7,	0xC5,
		0x0,	0x0,	0x2,	0x0D,	0x0,	0x26,
		0x0,	0x0,	0x0,	0x3B,	0x2,	0x0A,
		0x0,	0x40,	0x2,	0x0,	0x2,	0x0
	},

	/* BT709 to RGB full */
	{ 0x0,				/* MTXSCALE_256 */
		0x7,	0xC0,	0x6,	0x0,	0x6,	0x0,
		0x1,	0x2A,	0x7,	0x77,	0x7,	0xC9,
		0x1,	0x2A,	0x1,	0xCB,	0x0,	0x0,
		0x1,	0x2A,	0x0,	0x0,	0x2,	0x1D,
		0x0,	0x0,	0x0,	0x0,	0x0,	0x0
	},

	/* BT709 to RGB limited */
	{ 0x1,				/* MTXSCALE_512 */
		0x7,	0xC0,	0x6,	0x0,	0x6,	0x0,
		0x2,	0x0,	0x7,	0x16,	0x7,	0xA2,
		0x2,	0x0,	0x3,	0x14,	0x0,	0x0,
		0x2,	0x0,	0x0,	0x0,	0x3,	0xA1,
		0x0,	0x40,	0x0,	0x40,	0x0,	0x40
	},

	/* BT709 to BT601 */
	{ 0x1,				/* MTXSCALE_512 */
		0x7,	0xC0,	0x6,	0x0,	0x6,	0x0,
		0x2,	0x0,	0x0,	0x62,	0x0,	0x33,
		0x0,	0x0,	0x1,	0xF7,	0x7,	0xDB,
		0x0,	0x0,	0x7,	0xC7,	0x1,	0xFB,
		0x0,	0x40,	0x2,	0x0,	0x2,	0x0
	}
};
/**
 * @}
 */

static const struct vidfmt_desc {
	uint16_t		vs2;
	uint8_t			pix_rpt;
	uint8_t			v_toggle;
	uint8_t			h_toggle;
	uint16_t		hfp;
	uint16_t		vfp;
	uint16_t		href;
	uint16_t		vref;
	uint8_t			pll_sc;		/**< PLL scaler */
	enum vidformat_fmt	reg_fmt;
} vidformat_desc[] = {
	/* vs2	pr	vtg	htg	hfp	vfp	href	vref	pll	fmt */
	{ 0,	0,	1,	1,	17,	2,	161,	36,	2,	VIDFORMAT_640x480p_60Hz },
	{ 0,	0,	1,	1,	17,	8,	139,	43,	2,	VIDFORMAT_720x480p_60Hz },
	{ 0,	0,	0,	0,	111,	2,	371,	26,	1,	VIDFORMAT_1280x720p_60Hz },
	{ 1188,	0,	0,	0,	89,	2,	281,	21,	1,	VIDFORMAT_1920x1080i_60Hz },
	{ 448,	1,	1,	1,	20,	5,	139,	22,	3,	VIDFORMAT_720x480i_60Hz },
	{ 0,	1,	1,	1,	20,	5,	139,	22,	0,	VIDFORMAT_720x240p_60Hz },
	{ 0,	0,	0,	0,	89,	2,	281,	42,	0,	VIDFORMAT_1920x1080p_60Hz },
	{ 0,	0,	1,	1,	13,	2,	145,	45,	2,	VIDFORMAT_720x576p_50Hz },
	{ 0,	0,	0,	0,	441,	2,	701,	26,	1,	VIDFORMAT_1280x720p_50Hz },
	{ 1848,	0,	0,	0,	529,	2,	721,	21,	1,	VIDFORMAT_1920x1080i_50Hz },
	{ 444,	1,	1,	1,	13,	2,	145,	23,	3,	VIDFORMAT_720x576i_50Hz },
	{ 0,	1,	1,	1,	13,	2,	145,	23,	0,	VIDFORMAT_720x288p_50Hz },
	{ 0,	0,	0,	0,	529,	2,	721,	42,	0,	VIDFORMAT_1920x1080p_50Hz },
	{ 0,	0,	0,	0,	41,	2,	259,	28,	1,	VIDFORMAT_800x600p_60Hz },
	{ 0,	0,	1,	1,	25,	2,	323,	36,	1,	VIDFORMAT_1024x768p_60Hz },
	{ 0,	0,	0,	1,	65,	2,	387,	28,	1,	VIDFORMAT_1280x768p_60Hz },
	{ 0,	0,	0,	0,	71,	5,	429,	31,	0,	VIDFORMAT_1366x768p_60Hz },
	{ 0,	0,	0,	0,	65,	2,	563,	50,	0,	VIDFORMAT_1600x1200p_60Hz },
	{ 0,	0,	0,	0,	65,	2,	163,	35,	0,	VIDFORMAT_1920x1200p_60Hz },
	{ /* Sentinel */ }
};

//struct tda998x_vid_frm {
//	uint16_t	npix;
//	uint16_t	nline;
//	uint16_t	line_start;
//	uint16_t	pix_start;
//	uint16_t	line_end;
//	uint16_t	pix_end;
//	uint16_t	hs_start;
//	uint16_t	hs_end;
//	uint16_t	act_vid_start;
//	uint16_t	act_vid_end;
//	uint16_t	de_start;
//	uint16_t	de_end;
//};
struct tda998x_vid_frm vidformat_pc[] = {
	/*  npix	nline	vsl_s1	vsp_s1	vsl_e1	vsp_e1	hs_s	hs_e	vw_s1	vw_e1	de_s	de_e */
	{ 1056,		628,	1,	40,	5,	40,	40,	168,	27,	627,	256,	1056 },		/* VIDFORMAT_800x600p_60Hz   */
	{ 1344,		806,	1,	24,	7,	24,	24,	160,	35,	803,	320,	1344 },		/* VIDFORMAT_1024x768p_60Hz  */
	{ 1664,		798,	1,	64,	8,	64,	64,	192,	27,	795,	384,	1664 },		/* VIDFORMAT_1280x768p_60Hz  */
	{ 1792,		798,	1,	70,	4,	70,	70,	213,	30,	798,	426,	1792 },		/* VIDFORMAT_1366x768p_60Hz  */
	{ 2160,		1250,	1,	64,	4,	64,	64,	256,	49,	1249,	560,	2160 },		/* VIDFORMAT_1600x1200p_60Hz */
	{ 2080,		1235,	1,	64,	4,	64,	40,	80,	35,	1235,	160,	2080 },		/* VIDFORMAT_1920x1200p_60Hz */
};

static const struct vidfmt_map {
	enum tda998x_vid_fmt vid_fmt;
	enum vidformat_fmt reg_fmt;
} vidformat_map[] = {
	{ VFMT_01_640x480p_60Hz,	VIDFORMAT_640x480p_60Hz },
	{ VFMT_02_720x480p_60Hz,	VIDFORMAT_720x480p_60Hz },
	{ VFMT_03_720x480p_60Hz,	VIDFORMAT_720x480p_60Hz },
	{ VFMT_04_1280x720p_60Hz,	VIDFORMAT_1280x720p_60Hz },
	{ VFMT_05_1920x1080i_60Hz,	VIDFORMAT_1920x1080i_60Hz },
	{ VFMT_06_720x480i_60Hz,	VIDFORMAT_720x480i_60Hz },
	{ VFMT_07_720x480i_60Hz,	VIDFORMAT_720x480i_60Hz },
	{ VFMT_08_720x240p_60Hz,	VIDFORMAT_720x240p_60Hz },
	{ VFMT_09_720x240p_60Hz,	VIDFORMAT_720x240p_60Hz },
	{ VFMT_16_1920x1080p_60Hz,	VIDFORMAT_1920x1080p_60Hz },
	{ VFMT_17_720x576p_50Hz,	VIDFORMAT_720x576p_50Hz },
	{ VFMT_18_720x576p_50Hz,	VIDFORMAT_720x576p_50Hz },
	{ VFMT_19_1280x720p_50Hz,	VIDFORMAT_1280x720p_50Hz },
	{ VFMT_20_1920x1080i_50Hz,	VIDFORMAT_1920x1080i_50Hz },
	{ VFMT_21_720x576i_50Hz,	VIDFORMAT_720x576i_50Hz },
	{ VFMT_22_720x576i_50Hz,	VIDFORMAT_720x576i_50Hz },
	{ VFMT_23_720x288p_50Hz,	VIDFORMAT_720x288p_50Hz },
	{ VFMT_24_720x288p_50Hz,	VIDFORMAT_720x288p_50Hz },
	{ VFMT_PC_800x600p_60Hz,	VIDFORMAT_800x600p_60Hz },
	{ VFMT_PC_1024x768p_60Hz,	VIDFORMAT_1024x768p_60Hz },
	{ VFMT_PC_1280x768p_60Hz,	VIDFORMAT_1280x768p_60Hz },
	{ VFMT_PC_1366x768p_60Hz,	VIDFORMAT_1366x768p_60Hz },
	{ VFMT_PC_1600x1200p_60Hz,	VIDFORMAT_1600x1200p_60Hz },
	{ VFMT_PC_1920x1200p_60Hz,	VIDFORMAT_1920x1200p_60Hz },
	{ /* Sentinel */ }
};

static int
tda998x_mtx_set_conv(struct tda998x_dev *dev,
		enum tda998x_vid_fmt vin_fmt,
		enum tda998x_vidin_mode vin_mode,
		enum tda998x_vid_fmt vout_fmt,
		enum tda998x_vidout_mode vout_mode,
		enum tda998x_vqr vqr);

static int
tda998x_mtx_set_mode(struct tda998x_dev *dev,
		enum mtx_cntrl_bp bp,
		enum mtx_cntrl_scale sc);

//enum tda998x_vid_fmt
//calculateVidFmtIndex(enum tda998x_vid_fmt vidFmt)

/**
 * @defgroup TDA998X_Functions TDA998x Device Control Functions
 * @{
 */

/**
 * @defgroup TDA998X_Functions_I2C I2C Interface/Control
 * @{
 */

/**
 * @brief	Write Data
 *
 * @param	dev:	TDA998X device structure pointer
 * @param	reg:	Start register and page address
 * @param	len:	Length of data to write to device
 * @param	data:	Pointer to data to write from
 * @return	Number of bytes written or less-than-zero error status
 */
static int
tda998x_write(struct tda998x_dev *dev,
		enum tda998x_hdmi_reg reg,
		uint8_t len,
		uint8_t *data)
{
	int i, err;
	struct tda998x_cfg *cfg = dev->cfg;
	uint8_t page = PAGE_OF(reg);

	if (dev->cfg->cur_page != page) {
		/* Change the page */
		err = cfg->i2c_write(cfg->hdmi_addr, (uint8_t) CURPAGE, &page);
		if (err < 0)
			return err;

		dev->cfg->cur_page = page;
	}

	for (i = 0; i < len; i++, data++) {
		err = cfg->i2c_write(cfg->hdmi_addr, (uint8_t)reg + i, data);
		if (err < 0)
			return err;
	}

	return i;
}

/**
 * @brief	Write Register
 *
 * @param	dev:	TDA998X device structure pointer
 * @param	reg:	Register and page address
 * @param	data:	Data value to write to register
 * @return	Number of bytes written or less-than-zero error status
 */
static int
write_reg(struct tda998x_dev *dev, enum tda998x_hdmi_reg reg, uint8_t data)
{
	uint8_t tmp = data;

	return tda998x_write(dev, reg, 1, &tmp);
}

/**
 * @brief	Write 16-bit Register
 *
 * @param	dev:	TDA998x device structure pointer
 * @param	reg:	Register and page address enumeration
 * @param	data:	16-bit data value to write
 * @return	Number of bytes written or less-than-zero error status
 */
static int
write_reg16(struct tda998x_dev *dev, enum tda998x_hdmi_reg reg, uint16_t data)
{
	uint8_t buf[2];

	buf[0] = (data & 0xFF00U) >> 8;
	buf[1] = (uint8_t) data & 0x00FFU;

	return tda998x_write(dev, reg, 2, buf);
}

/**
 * @brief	Read Data
 *
 * @param	dev:	TDA998X device structure pointer
 * @param	reg:	Start register and page address
 * @param	len:	Length of data to read from device
 * @param	data:	Pointer to data to read to
 * @return	Number of bytes read or less-than-zero error status
 */
static int
tda998x_read(struct tda998x_dev *dev,
		enum tda998x_hdmi_reg reg,
		uint8_t len,
		uint8_t *data)
{
	int i, err;
	struct tda998x_cfg *cfg = dev->cfg;
	uint8_t page = PAGE_OF(reg);

	if (dev->cfg->cur_page != page) {
		/* Change the page */
		err = cfg->i2c_write(cfg->hdmi_addr, (uint8_t) CURPAGE, &page);
		if (err < 0)
			return err;

		dev->cfg->cur_page = page;
	}

	for (i = 0; i < len; i++, data++) {
		err = cfg->i2c_read(cfg->hdmi_addr, (uint8_t) reg + i, data);
		if (err < 0)
			return err;
	}

	return i;
}

/**
 * @brief	Read Register
 *
 * @param	dev:	TDA998X device structure pointer
 * @param	reg:	Register and page address
 * @param	data:	Pointer to data to read to
 * @return	Number of bytes read or less-than-zero error status
 */
static int
read_reg(struct tda998x_dev *dev, enum tda998x_hdmi_reg reg, uint8_t *data)
{
	return tda998x_read(dev, reg, 1, data);
}

/**
 * @brief	Register Mask Write
 *		Write a value with mask bits to a register
 *
 * @param	dev:	TDA998X device structure pointer
 * @param	reg:	Register and page address
 * @param	mask:	Mask of bits to be transformed
 * @param	val:	Bitfield to be written within mask
 * @return	Number of bytes written or less-than-zero error status
 */
static int
write_reg_mask(struct tda998x_dev *dev,
		enum tda998x_hdmi_reg reg,
		uint8_t mask,
		uint8_t val)
{
	int err;
	uint8_t reg_val;

	err = read_reg(dev, reg, &reg_val);
	if (err < 0)
		return err;

	reg_val &= ~(mask);			/* clear bits in the mask */
	reg_val |= val & mask;			/* set masked value bits */

	return write_reg(dev, reg, reg_val);
}

/**
 * @brief	CEC Write Data
 *
 * @param	dev:	TDA998X device structure pointer
 * @param	reg:	Start register and page address
 * @param	len:	Length of data to write to device
 * @param	data:	Pointer to data to write from
 * @return	Number of bytes written or less-than-zero error status
 */
static int
tda998x_cec_write(struct tda998x_dev *dev,
		enum tda998x_cec_reg reg,
		uint8_t len,
		uint8_t *data)
{
	int i, err;
	struct tda998x_cfg *cfg = dev->cfg;

	for (i = 0; i < len; i++, data++) {
		err = cfg->i2c_write(cfg->cec_addr, (uint8_t)reg + i, data);
		if (err < 0)
			return err;
	}

	return i;
}

/**
 * @brief	CEC Write Register
 *
 * @param	dev:	TDA998X device structure pointer
 * @param	reg:	Register and page address
 * @param	data:	Data value to write to register
 * @return	Number of bytes written or less-than-zero error status
 */
static int
cec_write_reg(struct tda998x_dev *dev, enum tda998x_cec_reg reg, uint8_t data)
{
	uint8_t tmp = data;

	return tda998x_cec_write(dev, reg, 1, &tmp);
}

/**
 * @brief	CEC Read Data
 *
 * @param	dev:	TDA998X device structure pointer
 * @param	reg:	Start register and page address
 * @param	len:	Length of data to read from device
 * @param	data:	Pointer to data to read to
 * @return	Number of bytes read or less-than-zero error status
 */
static int
tda998x_cec_read(struct tda998x_dev *dev,
		enum tda998x_cec_reg reg,
		uint8_t len,
		uint8_t *data)
{
	int i, err;
	struct tda998x_cfg *cfg = dev->cfg;

	for (i = 0; i < len; i++, data++) {
		err = cfg->i2c_read(cfg->cec_addr, (uint8_t)reg + i, data);
		if (err < 0)
			return err;
	}

	return i;
}

/**
 * @brief	CEC Read Register
 *
 * @param	dev:	TDA998X device structure pointer
 * @param	reg:	Register and page address
 * @param	data:	Pointer to data to read to
 * @return	Number of bytes read or less-than-zero error status
 */
static int
cec_read_reg(struct tda998x_dev *dev, enum tda998x_cec_reg reg, uint8_t *data)
{
	return tda998x_cec_read(dev, reg, 1, data);
}

/**
 * @brief	CEC Register Mask Write
 *		Write a specified value with specified mask bits to a register
 *
 * @param	dev:	TDA99X device structure pointer
 * @param	reg:	Register and page address
 * @param	mask:	Mask of bits to be transformed
 * @param	val:	Bitfield to be written within mask
 * @return	Number of bytes written or less-than-zero error status
 */
static int
cec_write_reg_mask(struct tda998x_dev *dev,
		enum tda998x_cec_reg reg,
		uint8_t mask,
		uint8_t val)
{
	int err;
	uint8_t reg_val;

	err = cec_read_reg(dev, reg, &reg_val);
	if (err < 0)
		return err;

	reg_val &= ~(mask);
	reg_val |= val & mask;

	return cec_write_reg(dev, reg, reg_val);
}
/**
 * @}
 */

static uint8_t
set_pix_clk(enum tda998x_vid_fmt fmt, enum tda998x_vert_freq freq, uint8_t *pclk)
{
//	*pclk = 0xFF;
//
//	if (IS_TV (fmt)) {
//		*pclk = kVfmtToPixClk_TV[fmt - VFMT_TV_MIN][freq];
//	}
//
//	return ((*pclk) == REGVFMT_INVALID);

	if ((fmt >= VFMT_01_640x480p_60Hz) &&
			(fmt <= VFMT_62_1280x720p_30Hz)) {
//		*pck =
	}

	return 0;
}

static const struct vidfmt_desc *
get_vidfmt_desc(enum tda998x_vid_fmt vid_fmt)
{
	const struct vidfmt_map *pfmt = vidformat_map;
	const struct vidfmt_desc *pdesc = vidformat_desc;

	while (pfmt && pfmt->vid_fmt) {
		if (pfmt->vid_fmt == vid_fmt)
			return (pdesc + pfmt->reg_fmt);

		pfmt++;
	}

	return NULL;
}

static int
set_de_vs(struct tda998x_dev *dev,
		enum tda998x_vid_fmt vout_fmt,
		enum tda998x_format_3d format_3d)
{
	int ret;
	uint16_t vs2;
	const struct vidfmt_desc *desc;

	desc = get_vidfmt_desc(vout_fmt);
	if (desc == NULL)
		return ERR_NOT_FOUND;

	vs2 = desc->vs2;

	ret = write_reg16(dev, VS_PIX_STRT_2_MSB, vs2);
	if (ret < 0)
		return ret;

	ret = write_reg16(dev, VS_PIX_END_2_MSB, vs2);
	if (ret < 0)
		return ret;

	return 0;
}

/**
 * @brief	Set Pixel Repetition
 *
 * @param	dev:	TDA998x device structure pointer
 * @return	0 on success, non-zero error status otherwise
 */
static int
set_pix_repeat(struct tda998x_dev *dev,
		enum tda998x_vid_fmt vout_fmt,
		uint8_t pix_rpt,
		enum tda998x_format_3d format_3d)
{
	int ret = 0;

	ret = write_reg_mask(dev,
			PLL_SERIAL_2,
			PLL_SERIAL_2_SRL_PR_MASK,
			pix_rpt << 4);
	if (ret < 0)
		return ret;

	/* Set pixel repetition count for Repetitor module */
	ret = write_reg(dev, RPT_CNTRL, pix_rpt);
	if (ret < 0)
		return ret;

	ret = write_reg_mask(dev,
			PLL_SERIAL_1,
			PLL_SERIAL_1_SRL_MAN_IZ,
			0);
	if (ret < 0)
		return ret;

	ret = write_reg_mask(dev,
			PLL_SERIAL_3,
			PLL_SERIAL_3_SRL_DE,
			0);
	if (ret < 0)
		return ret;

	ret = write_reg(dev, SERIALIZER, 0);
	if (ret < 0)
		return ret;

	return 0;
}


static int
set_sampling(struct tda998x_dev *dev)
{
	int ret;
	uint8_t upsample;
	uint8_t downsample;
	uint8_t reg_val;

	if ((dev->vin_cfg->mode == VINMODE_YUV422) ||
			(dev->vin_cfg->mode == VINMODE_CCIR656)) {
		if (dev->vout_cfg->mode == VOUTMODE_YUV422) {
			/* Input 422/656, output 422 */
			ret = read_reg(dev, MTX_CNTRL, &reg_val);
			if (ret < 0)
				return ret;

			if (reg_val & MTX_CNTRL_MTX_BP) {
				upsample = 0;
				downsample = 0;
			} else {
				upsample = 1;
				downsample = 1;
			}
		} else {
			/* Input 422/656, output not 422 */
			upsample = 1;
			downsample = 0;
		}
	} else {
		if (dev->vout_cfg->mode == VOUTMODE_YUV422) {
			/* Input not 422/656, output 422 */
			upsample = 0;
			downsample = 1;
		} else {
			/* Input not 422/656, output not 422 */
			upsample = 0;
			downsample = 0;
		}
	}

//	if (dev->upsampleMode != UPSAMPLE_AUTO) {
//		/* Saved upsample mode overrides local one */
//		upsample = dev->upsampleMode;
//	}

	/* Set upsampler */
	ret = write_reg_mask(dev,
			HVF_CNTRL_0,
			HVF_CNTRL_0_INTPOL_MASK,
			upsample);
	if (ret < 0)
		return ret;

	/* Set downsampler */
	ret = write_reg_mask(dev,
			HVF_CNTRL_1,
			HVF_CNTRL_1_FOR,
			downsample);

	return ret;
}

static uint8_t
chksum(uint8_t *data, int len)
{
	uint8_t cksum = 0;
	int i;

	if (data == NULL || !len)
		return 0;

	for (i = 0; i < len; i++)
		cksum += *(data++);

	return (255 - cksum) + 1;
}

/**
 * @brief	Set Video Configuration
 *
 * @param	dev:	TDA998x device structure pointer
 * @param	vid:	Video frame structure pointer
 * @return	0 on success, non-zero error status otherwise
 */
static int
set_video_config(struct tda998x_dev *dev,
		  struct tda998x_vid_frm *vid)
{
	int ret;

	ret = write_reg(dev, VIDFORMAT, 0x1F);
	if (ret < 0)
		return ret;

	ret = write_reg(dev, VIDFORMAT, 0x00);
	if (ret < 0)
		return ret;

	ret = write_reg16(dev, NPIX_MSB, vid->npix);
	if (ret < 0)
		return ret;

	ret = write_reg16(dev, NLINE_MSB, vid->nline);
	if (ret < 0)
		return ret;

	ret = write_reg16(dev, VS_LINE_STRT_1_MSB, vid->line_start);
	if (ret < 0)
		return ret;

	ret = write_reg16(dev, VS_PIX_STRT_1_MSB, vid->pix_start);
	if (ret < 0)
		return ret;

	ret = write_reg16(dev, VS_LINE_END_1_MSB, vid->line_end);
	if (ret < 0)
		return ret;

	ret = write_reg16(dev, VS_PIX_END_1_MSB, vid->pix_end);
	if (ret < 0)
		return ret;

	ret = write_reg16(dev, HS_PIX_START_MSB, vid->hs_start);
	if (ret < 0)
		return ret;

	ret = write_reg16(dev, HS_PIX_STOP_MSB, vid->hs_end);
	if (ret < 0)
		return ret;

	ret = write_reg16(dev, VWIN_START_1_MSB, vid->act_vid_start);
	if (ret < 0)
		return ret;

	ret = write_reg16(dev, VWIN_END_1_MSB, vid->act_vid_end);
	if (ret < 0)
		return ret;

	ret = write_reg16(dev, DE_START_MSB, vid->de_start);
	if (ret < 0)
		return ret;

	ret = write_reg16(dev, DE_STOP_MSB, vid->de_end);
	if (ret < 0)
		return ret;

	return 0;
}

/**
 * @defgroup	TDA998X_Functions_Audio TDA998x Audio
 * @{
 */




/**
*  Lookup table for each pixel clock frequency's CTS value in kHz
*  according to SCS table "Audio Clock Recovery CTS Values"
*/
//static CONST_DAT UInt32 kPixClkToAcrCts[E_PIXCLK_NUM][HDMITX_AFS_NUM] =
//{
/* HDMITX_AFS_32k  _AFS_48K       _AFS_96K        _AFS_192K */
/*         _AFS_44_1k      _AFS_88_2K      _AFS_176_4K       */
//  { 28125,  31250,  28125,  31250,  28125,  31250,  28125}, /* E_PIXCLK_25175 */
//  { 25200,  28000,  25200,  28000,  25200,  28000,  25200}, /* E_PIXCLK_25200 */
//  { 27000,  30000,  27000,  30000,  27000,  30000,  27000}, /* E_PIXCLK_27000 */
//  { 27027,  30030,  27027,  30030,  27027,  30030,  27027}, /* E_PIXCLK_27027 */
//  { 54000,  60000,  54000,  60000,  54000,  60000,  54000}, /* E_PIXCLK_54000 */
//  { 54054,  60060,  54054,  60060,  54054,  60060,  54054}, /* E_PIXCLK_54054 */
//  { 59400,  65996,  59400,  65996,  59400,  65996,  59400}, /* E_PIXCLK_59400 */
//  {210937, 234375, 140625, 234375, 140625, 234375, 140625}, /* E_PIXCLK_74175 */
//  { 74250,  82500,  74250,  82500,  74250,  82500,  74250}, /* E_PIXCLK_74250 */
//  {421875, 234375, 140625, 234375, 140625, 234375, 140625}, /* E_PIXCLK_148350*/
//  {148500, 165000, 148500, 165000, 148500, 165000, 148500}  /* E_PIXCLK_148500*/
//#ifdef FORMAT_PC
// ,{ 31500,  35000,  31500,  35000,  31500,  35000,  31500}, /* E_PIXCLK_31500 */
//  { 36000,  40000,  36000,  40000,  36000,  40000,  36000}, /* E_PIXCLK_36000 */
//  { 40000,  44444,  40000,  44444,  40000,  44444,  40000}, /* E_PIXCLK_40000 */
//  { 49500,  55000,  49500,  55000,  49500,  55000,  49500}, /* E_PIXCLK_49500 */
//  { 50000,  55556,  50000,  55556,  50000,  55556,  50000}, /* E_PIXCLK_50000 */
//  { 56250,  62500,  56250,  62500,  56250,  62500,  56250}, /* E_PIXCLK_56250 */
//  { 65000,  72222,  65000,  72222,  65000,  72222,  65000}, /* E_PIXCLK_65000 */
//  { 75000,  83333,  75000,  83333,  75000,  83333,  75000}, /* E_PIXCLK_75000 */
//  { 78750,  87500,  78750,  87500,  78750,  87500,  78750}, /* E_PIXCLK_78750 */
//  {162000, 180000, 162000, 180000, 162000, 180000, 162000}, /* E_PIXCLK_162000*/
//  {157500, 175000, 157500, 175000, 157500, 175000, 157500}  /* E_PIXCLK_157500 */
//#endif /* FORMAT_PC */
//};

/**
*  Lookup table for each pixel clock frequency's Audio Clock Regeneration N,
*  according to SCS Table "Audio Clock Recovery N Values"
*/
//static CONST_DAT UInt32 kPixClkToAcrN[E_PIXCLK_NUM][HDMITX_AFS_NUM] =
//{
/* HDMITX_AFS_32k  _AFS_48K       _AFS_96K        _AFS_192K */
/*         _AFS_44_1k      _AFS_88_2K      _AFS_176_4K       */
//  { 4576,   7007,   6864,  14014,  13728,  28028,  27456}, /* E_PIXCLK_25175 */
//  { 4096,   6272,   6144,  12544,  12288,  25088,  24576}, /* E_PIXCLK_25200 */
//  { 4096,   6272,   6144,  12544,  12288,  25088,  24576}, /* E_PIXCLK_27000 */
//  { 4096,   6272,   6144,  12544,  12288,  25088,  24576}, /* E_PIXCLK_27027 */
//  { 4096,   6272,   6144,  12544,  12288,  25088,  24576}, /* E_PIXCLK_54000 */
//  { 4096,   6272,   6144,  12544,  12288,  25088,  24576}, /* E_PIXCLK_54054 */
//  { 4096,   6272,   6144,  12544,  12288,  25088,  24576}, /* E_PIXCLK_59400 */
//  {11648,  17836,  11648,  35672,  23296,  71344,  46592}, /* E_PIXCLK_74175 */
//  { 4096,   6272,   6144,  12544,  12288,  25088,  24576}, /* E_PIXCLK_74250 */
//  {11648,   8918,   5824,  17836,  11648,  35672,  23296}, /* E_PIXCLK_148350*/
//  { 4096,   6272,   6144,  12544,  12288,  25088,  24576}  /* E_PIXCLK_148500*/
//#ifdef FORMAT_PC
// ,{ 4096,  6272,  6144,  12544,  12288,  25088,  24576}, /* E_PIXCLK_31500 */
//  { 4096,  6272,  6144,  12544,  12288,  25088,  24576}, /* E_PIXCLK_36000 */
//  { 4096,  6272,  6144,  12544,  12288,  25088,  24576}, /* E_PIXCLK_40000 */
//  { 4096,  6272,  6144,  12544,  12288,  25088,  24576}, /* E_PIXCLK_49500 */
//  { 4096,  6272,  6144,  12544,  12288,  25088,  24576}, /* E_PIXCLK_50000 */
//  { 4096,  6272,  6144,  12544,  12288,  25088,  24576}, /* E_PIXCLK_56250 */
//  { 4096,  6272,  6144,  12544,  12288,  25088,  24576}, /* E_PIXCLK_65000 */
//  { 4096,  6272,  6144,  12544,  12288,  25088,  24576}, /* E_PIXCLK_75000 */
//  { 4096,  6272,  6144,  12544,  12288,  25088,  24576}, /* E_PIXCLK_78750 */
//  { 4096,  6272,  6144,  12544,  12288,  25088,  24576},  /* E_PIXCLK_162000*/
//  { 4096,  6272,  6144,  12544,  12288,  25088,  24576}  /* E_PIXCLK_157500*/
//#endif /* FORMAT_PC */
//};

/**
*  Lookup table for each pixel clock frequency's Audio Divider, according to
*  SCS Table "Audio Clock Recovery Divider Values"
*/
//static CONST_DAT UInt8 kPixClkToAdiv[E_PIXCLK_NUM][HDMITX_AFS_NUM] =
//{
/* HDMITX_AFS_32k  _AFS_48K       _AFS_96K        _AFS_192K */
/*         _AFS_44_1k      _AFS_88_2K      _AFS_176_4K       */
//  {2,      2,      2,      1,      1,      0,      0},     /* E_PIXCLK_25175 */
//  {2,      2,      2,      1,      1,      0,      0},     /* E_PIXCLK_25200 */
//  {2,      2,      2,      1,      1,      0,      0},     /* E_PIXCLK_27000 */
//  {2,      2,      2,      1,      1,      0,      0},     /* E_PIXCLK_27027 */
//  {3,      3,      3,      2,      2,      1,      1},     /* E_PIXCLK_54000 */
//  {3,      3,      3,      2,      2,      1,      1},     /* E_PIXCLK_54054 */
//  {3,      3,      3,      2,      2,      1,      1},     /* E_PIXCLK_59400 */
//  {4,      3,      3,      2,      2,      1,      1},     /* E_PIXCLK_74175 */
//  {4,      3,      3,      2,      2,      1,      1},     /* E_PIXCLK_74250 */
//  {5,      4,      4,      3,      3,      2,      2},     /* E_PIXCLK_148350 */
//  {5,      4,      4,      3,      3,      2,      2}      /* E_PIXCLK_148500 */
//#ifdef FORMAT_PC
// ,{2,      2,      2,      1,      1,      0,      0}, /* E_PIXCLK_31500  */
//  {3,      2,      2,      1,      1,      0,      0}, /* E_PIXCLK_36000  */
//  {3,      2,      2,      1,      1,      0,      0}, /* E_PIXCLK_40000  */
//  {3,      3,      3,      2,      2,      1,      1}, /* E_PIXCLK_49500  */
//  {3,      3,      3,      2,      2,      1,      1}, /* E_PIXCLK_50000  */
//  {3,      3,      3,      2,      2,      1,      1}, /* E_PIXCLK_56250  */
//  {4,      3,      3,      2,      2,      1,      1}, /* E_PIXCLK_65000  */
//  {4,      3,      3,      2,      2,      1,      1}, /* E_PIXCLK_75000  */
//  {4,      3,      3,      2,      2,      1,      1}, /* E_PIXCLK_78750  */
//  {5,      4,      4,      3,      3,      2,      2}, /* E_PIXCLK_162000 */
//  {5,      4,      4,      3,      3,      2,      2}  /* E_PIXCLK_157500 */
//#endif /* FORMAT_PC */
//};

/**
*  Lookup table for converting a sampling frequency into the values
*  required in channel status byte 3 according to IEC60958-3
*/
//static CONST_DAT UInt8 kAfsToCSbyte3[HDMITX_AFS_NUM+1] =
//{
//   3,      /* HDMITX_AFS_32k */
//   0,      /* HDMITX_AFS_44_1k */
//   2,      /* HDMITX_AFS_48k */
//   8,      /* HDMITX_AFS_88_2k */
//   10,     /* HDMITX_AFS_96k */
//   12,     /* HDMITX_AFS_176_4k */
//   14,     /* HDMITX_AFS_192k */
//   9,      /* HDMITX_AFS_768k */
//   1,      /* HDMITX_AFS_NOT_INDICATED */
//};

/**
*  Lookup table for each CTS X factor's k and m register values
*/
//static CONST_DAT UInt8 kCtsXToMK[HDMITX_CTSX_NUM][2] =
//{
/*   Register values    Actual values */
/*   m  k               m, k */
//   {3, 0},          /* 8, 1 */
//   {3, 1},          /* 8, 2 */
//   {3, 2},          /* 8, 3 */
//   {3, 3},          /* 8, 4 */
//   {0, 0}           /* 1, 1 */
//};

/**
* Table of registers to reset and release the CTS generator
*/
//static CONST_DAT tmHdmiTxRegMaskVal_t kResetCtsGenerator[] =
//{
//   {E_REG_P11_AIP_CNTRL_0_RW,  E_MASKREG_P11_AIP_CNTRL_0_rst_cts,  1},
//   {E_REG_P11_AIP_CNTRL_0_RW,  E_MASKREG_P11_AIP_CNTRL_0_rst_cts,  0},
//   {0,0,0}
//};






/**
 * @brief	Set Audio Port Enable
 *
 * @param	dev:	TDA998x device structure pointer
 * @param	en:	Audio port enable register value
 * @return	0 on success, non-zero error status otherwise
 */
int
tda998x_aud_set_port_enable(struct tda998x_dev *dev, uint8_t en)
{
	int ret;

	/* Check parameter */
	if (dev == NULL)
		return ERR_NULL_PARAM;

	ret = write_reg(dev, ENA_AP, en);
	if (ret < 0)
		return ret;

	return 0;
}

/**
 * @brief	Set Audio Clock Port Enable
 *
 * @param	dev:	TDA998x device structure pointer
 * @param	en:	Clock port enable register value
 * @return	0 on success, non-zero error status otherwise
 */
int
tda998x_aud_set_clk_enable(struct tda998x_dev *dev, uint8_t en)
{
	int ret;

	/* Check parameter */
	if (dev == NULL)
		return ERR_NULL_PARAM;

	ret = write_reg(dev, ENA_ACLK, en);
	if (ret < 0)
		return ret;

	return 0;
}

/**
 * @brief	Reset Audio CTS
 *		@todo Finish register mask write sequence to reset CTS
 *
 * @param	dev:	TDA998x device structure pointer
 * @return	0 on success, non-zero error status otherwise
 */ 
int
tda998x_aud_reset_cts(struct tda998x_dev *dev)
{
	/* Reset and release the CTS generator */
	/**
	 * @todo Define reset register table
	 */
//	return write_reg_mask_table(dev, &kResetCtsGenerator[0]);
	return 0;
}

/**
 * @brief	Set Audio Input Configuration
 *
 * @param	dev:	TDA998x device structure pointer
 * @return	0 on success, non-zero error status otherwise
 */
static int
tda998x_aud_set_config(struct tda998x_dev *dev,
		enum tda998x_aud_fmt aud_fmt,
		enum tda998x_aud_i2s_fmt i2s_fmt,
		uint8_t i2s_chan,
		uint8_t dsd_chan,
		enum tda998x_clkpol_dsd dsd_clkpol,
		enum tda998x_swap_dsd dsd_swap,
		uint8_t layout,
		uint16_t latency,
		enum tda998x_dst_rate dst_rate)
{
	int ret;
	uint8_t reg_val;

	switch (aud_fmt) {
	case AFMT_SPDIF:
		reg_val = (uint8_t) REG_VAL_SEL_AIP_SPDIF;

		/* configure MUX_AP */
		ret = write_reg(dev, MUX_AP, MUX_AP_SELECT_SPDIF);
		if (ret < 0)
			return ret;

		break;

	case AFMT_I2S:
		reg_val = (uint8_t) REG_VAL_SEL_AIP_I2S;
    
		/* configure MUX_AP */
		ret = write_reg(dev, MUX_AP, MUX_AP_SELECT_I2S);
		if (ret < 0)
			return ret;
    
		break;
 
	case AFMT_OBA:
		reg_val = (uint8_t) REG_VAL_SEL_AIP_OBA;
		break;
 
	case AFMT_HBR:
		reg_val = (uint8_t) REG_VAL_SEL_AIP_HBR;
		break;
 
	default:
		return ERR_BAD_PARAM;
	}

	/* Set the audio input processor format to aud_fmt. AIP_CLKSEL_sel_aip */
	ret = write_reg_mask(dev, AIP_CLKSEL, 0x38U, reg_val << 3);
	if (ret < 0)
		return ret;
  
	/* Channel status on 1 channel  */
	ret = write_reg_mask(dev, CA_I2S, CA_I2S_HBR_CHSTAT_4, 0);
	if (ret < 0)
		return ret;
  
	/* Select the audio format */
	if (aud_fmt == AFMT_I2S) {
		if (i2s_chan != 32) {
			ret = write_reg_mask(dev,
					CA_I2S,
					CA_I2S_CA_I2S_MASK,
					(uint8_t) i2s_chan);
		}
    
		/* Select the I2S format */
		ret = write_reg_mask(dev,
				I2S_FORMAT,
				I2S_FORMAT_I2S_FORMAT_MASK,
				(uint8_t) i2s_fmt);
		if (ret < 0)
			return ret;
  
	} else if (aud_fmt == AFMT_OBA) {
		ret = write_reg(dev, CA_DSD, dsd_chan);
		if (ret < 0)
			return ret;
 
		ret = write_reg_mask(dev,
				AIP_CLKSEL,
				AIP_CLKSEL_SEL_POL_CLK,
				(uint8_t) dsd_clkpol);
			if (ret < 0)
				return ret;

		ret = write_reg_mask(dev,
				AIP_CNTRL_0,
				AIP_CNTRL_0_SWAP,
				(uint8_t) dsd_swap);
		if (ret < 0)
			return ret;
	}
 
	/* Set layout and latency */
	ret = write_reg_mask(dev,
			AIP_CNTRL_0,
			AIP_CNTRL_0_LAYOUT,
			layout << 2);
	if (ret < 0)
		return ret;

	ret = write_reg(dev, LATENCY_RD, (uint8_t) latency);
	if (ret < 0)
		return ret;

	return 0;
}

/**
 * @brief	Set Audio CTS
 *
 * @param	dev:	TDA998x device structure pointer
 * @return	0 on success, non-zero error status otherwise
 */ 
static int
tda998x_aud_set_cts(struct tda998x_dev *dev,
		enum tda998x_cts_ref cts_ref,
		enum tda998x_aud_rate afs,
		enum tda998x_vid_fmt vout_fmt,
		enum tda998x_vert_freq vout_freq,
		uint32_t cts,
		uint16_t ctsX,
		enum tda998x_ctsk ctsK,
		enum tda998x_ctsm ctsM,
		enum tda998x_dst_rate dst_rate)
{
	int ret;
	uint8_t reg_val;
	uint8_t pixClk;			/* Pixel clock index */
	uint32_t acrN;			/* Audio clock recovery N */
 
	/* Return if sink is not an HDMI device */
	if (dev->sink != SINK_HDMI)
		return ERR_NOT_PERMITTED;
 
	if ((vout_fmt >= VFMT_01_640x480p_60Hz) &&
			(vout_fmt <= VFMT_62_1280x720p_30Hz)) {
		if (vout_freq == VFREQ_50Hz) {
			if ((vout_fmt < VFMT_17_720x576p_50Hz) ||
					(vout_fmt > VFMT_31_1920x1080p_50Hz))
				return ERR_ILLEGAL_PARAMS;
    
		} else if (vout_freq == VFREQ_24Hz) {
			if ((vout_fmt != VFMT_32_1920x1080p_24Hz) &&
					(vout_fmt != VFMT_60_1280x720p_24Hz))
				return ERR_ILLEGAL_PARAMS;
		} else if (vout_freq == VFREQ_25Hz) {
			if ((vout_fmt != VFMT_33_1920x1080p_25Hz) &&
					(vout_fmt != VFMT_20_1920x1080i_50Hz) &&
					(vout_fmt != VFMT_61_1280x720p_25Hz))
				return ERR_ILLEGAL_PARAMS;
		} else if (vout_freq == VFREQ_30Hz) {
			if ((vout_fmt != VFMT_34_1920x1080p_30Hz) &&
					(vout_fmt != VFMT_05_1920x1080i_60Hz) &&
					(vout_fmt != VFMT_62_1280x720p_30Hz))
				return ERR_ILLEGAL_PARAMS;
		} else {
			if (vout_fmt >= VFMT_17_720x576p_50Hz)
				return ERR_ILLEGAL_PARAMS;
		}
	}
  
	/* Check for auto or manual CTS */
	if (cts == 0) {
		/* Auto */
		ret = write_reg_mask(dev, AIP_CNTRL_0, AIP_CNTRL_0_ACR_MAN, 0);
		if (ret < 0)
			return ret;
	} else {
		/* Manual */
		ret = write_reg_mask(dev,
				AIP_CNTRL_0,
				AIP_CNTRL_0_ACR_MAN,
				AIP_CNTRL_0_ACR_MAN);
		if (ret < 0)
			return ret;
	}
 
	/* Derive M and K from X? */
	if ((ctsM == CTSMTS_USE_CTSX) ||
			(ctsK == CTSK_USE_CTSX)) {
		/**
		 * @todo Define CTS values
		 */
//		ctsM = (enum tda998x_ctsm) kCtsXToMK[ctsX][0];
//		ctsK = (enum tda998x_ctsk) kCtsXToMK[ctsX][1];
	}
 
	/* Set the Post-divider measured timestamp factor */
	reg_val = (uint8_t) ctsM;
	ret = write_reg_mask(dev,
			CTS_N_RW,
			CTS_N_M_SEL_MASK,
			reg_val << 4);
	if (ret < 0)
		return ret;
 
	/* Set the predivider scale */
	ret = write_reg_mask (dev,
			CTS_N_RW,
			CTS_N_K_SEL_MASK,
			(uint8_t) ctsK);
	if (ret < 0)
		return ret;

	/*
	 * Use vout_fmt and vout_freq to index into a lookup table to get
	 * the current pixel clock value.
	 */
	set_pix_clk(vout_fmt, vout_freq, &pixClk);

	/*
	 * Set the Audio Clock Recovery N multiplier based on the audio sample
	 * frequency afs and current pixel clock.
	 */
//	acrN = kPixClkToAcrN[pixClk][afs];
//	 /* HDMITX_AFS_32k  _AFS_48K       _AFS_96K        _AFS_192K */
//	 /*         _AFS_44_1k      _AFS_88_2K      _AFS_176_4K       */
//	   { 4576,   7007,   6864,  14014,  13728,  28028,  27456}, /* E_PIXCLK_25175 */
//	   { 4096,   6272,   6144,  12544,  12288,  25088,  24576}, /* E_PIXCLK_25200 */
//	   { 4096,   6272,   6144,  12544,  12288,  25088,  24576}, /* E_PIXCLK_27000 */
//	   { 4096,   6272,   6144,  12544,  12288,  25088,  24576}, /* E_PIXCLK_27027 */
//	   { 4096,   6272,   6144,  12544,  12288,  25088,  24576}, /* E_PIXCLK_54000 */
//	   { 4096,   6272,   6144,  12544,  12288,  25088,  24576}, /* E_PIXCLK_54054 */
//	   { 4096,   6272,   6144,  12544,  12288,  25088,  24576}, /* E_PIXCLK_59400 */
//	   {11648,  17836,  11648,  35672,  23296,  71344,  46592}, /* E_PIXCLK_74175 */
//	   { 4096,   6272,   6144,  12544,  12288,  25088,  24576}, /* E_PIXCLK_74250 */
//	   {11648,   8918,   5824,  17836,  11648,  35672,  23296}, /* E_PIXCLK_148350*/
//	   { 4096,   6272,   6144,  12544,  12288,  25088,  24576}  /* E_PIXCLK_148500*/
//	#ifdef FORMAT_PC
//	  ,{ 4096,  6272,  6144,  12544,  12288,  25088,  24576}, /* E_PIXCLK_31500 */
//	   { 4096,  6272,  6144,  12544,  12288,  25088,  24576}, /* E_PIXCLK_36000 */
//	   { 4096,  6272,  6144,  12544,  12288,  25088,  24576}, /* E_PIXCLK_40000 */
//	   { 4096,  6272,  6144,  12544,  12288,  25088,  24576}, /* E_PIXCLK_49500 */
//	   { 4096,  6272,  6144,  12544,  12288,  25088,  24576}, /* E_PIXCLK_50000 */
//	   { 4096,  6272,  6144,  12544,  12288,  25088,  24576}, /* E_PIXCLK_56250 */
//	   { 4096,  6272,  6144,  12544,  12288,  25088,  24576}, /* E_PIXCLK_65000 */
//	   { 4096,  6272,  6144,  12544,  12288,  25088,  24576}, /* E_PIXCLK_75000 */
//	   { 4096,  6272,  6144,  12544,  12288,  25088,  24576}, /* E_PIXCLK_78750 */
//	   { 4096,  6272,  6144,  12544,  12288,  25088,  24576},  /* E_PIXCLK_162000*/
//	   { 4096,  6272,  6144,  12544,  12288,  25088,  24576}  /* E_PIXCLK_157500*/
//	#endif /* FORMAT_PC */
//	};

	acrN = 6272;
	/* Set ACR N multiplier [19 to 16] */
	reg_val = (uint8_t) (acrN >> 16);
	ret = write_reg (dev, ACR_N_2, reg_val);
	if (ret < 0)
		return ret;

	/* Set ACR N multiplier [15 to 8] */
	reg_val = (uint8_t) (acrN >> 8);
	ret = write_reg (dev, ACR_N_1, reg_val);
	if (ret < 0)
		return ret;

	/* Set ACR N multiplier [7 to 0] */
	reg_val = (uint8_t) acrN;
	ret = write_reg (dev, ACR_N_0, reg_val);
	if (ret < 0)
		return ret;

	/*
	 * Set the CDC Audio Divider register based on the audio sample frequency
	 * afs and current pixel clock.
	 */
//	reg_val = kPixClkToAdiv[pixClk][afs];
//	{
//	 /* HDMITX_AFS_32k  _AFS_48K       _AFS_96K        _AFS_192K */
//	 /*         _AFS_44_1k      _AFS_88_2K      _AFS_176_4K       */
//	   {2,      2,      2,      1,      1,      0,      0},     /* E_PIXCLK_25175 */
//	   {2,      2,      2,      1,      1,      0,      0},     /* E_PIXCLK_25200 */
//	   {2,      2,      2,      1,      1,      0,      0},     /* E_PIXCLK_27000 */
//	   {2,      2,      2,      1,      1,      0,      0},     /* E_PIXCLK_27027 */
//	   {3,      3,      3,      2,      2,      1,      1},     /* E_PIXCLK_54000 */
//	   {3,      3,      3,      2,      2,      1,      1},     /* E_PIXCLK_54054 */
//	   {3,      3,      3,      2,      2,      1,      1},     /* E_PIXCLK_59400 */
//	   {4,      3,      3,      2,      2,      1,      1},     /* E_PIXCLK_74175 */
//	   {4,      3,      3,      2,      2,      1,      1},     /* E_PIXCLK_74250 */
//	   {5,      4,      4,      3,      3,      2,      2},     /* E_PIXCLK_148350 */
//	   {5,      4,      4,      3,      3,      2,      2}      /* E_PIXCLK_148500 */
//	#ifdef FORMAT_PC
//	  ,{2,      2,      2,      1,      1,      0,      0}, /* E_PIXCLK_31500  */
//	   {3,      2,      2,      1,      1,      0,      0}, /* E_PIXCLK_36000  */
//	   {3,      2,      2,      1,      1,      0,      0}, /* E_PIXCLK_40000  */
//	   {3,      3,      3,      2,      2,      1,      1}, /* E_PIXCLK_49500  */
//	   {3,      3,      3,      2,      2,      1,      1}, /* E_PIXCLK_50000  */
//	   {3,      3,      3,      2,      2,      1,      1}, /* E_PIXCLK_56250  */
//	   {4,      3,      3,      2,      2,      1,      1}, /* E_PIXCLK_65000  */
//	   {4,      3,      3,      2,      2,      1,      1}, /* E_PIXCLK_75000  */
//	   {4,      3,      3,      2,      2,      1,      1}, /* E_PIXCLK_78750  */
//	   {5,      4,      4,      3,      3,      2,      2}, /* E_PIXCLK_162000 */
//	   {5,      4,      4,      3,      3,      2,      2}  /* E_PIXCLK_157500 */
//	#endif /* FORMAT_PC */
//	};

	ret = write_reg(dev, AUDIO_DIV, 4);
	if (ret < 0)
		return ret;

	/*
	 * If auto CTS, get CTS value based on the audio sample
	 * frequency afs and current pixel clock.
	 */
//	if (cts == 0)
//		cts = kPixClkToAcrCts[pixClk][afs];
 
	/* Set manual or pixel clock CTS */
	if (cts != 0) {
		/* Set manual ACR CTS [19 to 16] */
		reg_val = (uint8_t) (cts >> 16);
		ret = write_reg (dev, ACR_CTS_2, reg_val);
		if (ret < 0)
			return ret;

		/* Set manual ACR CTS [15 to 8] */
		reg_val = (uint8_t) (cts >> 8);
		ret = write_reg (dev, ACR_CTS_1, reg_val);
		if (ret < 0)
			return ret;
 
		/* Set manual ACR CTS [7 to 0] */
		reg_val = (uint8_t) cts;
		ret = write_reg (dev, ACR_CTS_0, reg_val);
		if (ret < 0)
			return ret;
	}

	/* Set the CTS clock reference register according to cts_ref */
	reg_val = (uint8_t) cts_ref;
	ret = write_reg_mask(dev,
			AIP_CLKSEL,
			AIP_CLKSEL_SEL_FS_MASK,
			reg_val);
	if (ret < 0)
		return ret;

	/**
	 * @todo Reset and release the CTS generator
	 */
//	ret = write_reg_mask_table(dev, &kResetCtsGenerator[0]);
  
	return ret;
}

/**
 * @brief	Set Audio Output Channel Status
 *
 * @param	dev:	TDA998x device structure pointer
 * @return	0 on success, non-zero error status otherwise
 */
static int
tda998x_aud_set_chan_status(struct tda998x_dev *dev,
		uint8_t pcm_id,
		uint8_t fmt_info,
		uint8_t copyright,
		uint8_t categoryCode,
		enum tda998x_aud_rate samp_freq,
		uint8_t clk_acc,
		uint8_t maxword_len,
		uint8_t word_len,
		uint8_t origsamp_freq)
{
	int ret;
	uint8_t buf[4];
	const uint8_t freq[] = {
		3,      /* 32k */
		0,      /* 44.1k */
		2,      /* 48k */
		8,      /* 88.2k */
		10,     /* 96k */
		12,     /* 176.4k */
		14,     /* 192k */
		9,      /* 768k */
		1,      /* Not indicated */
	};

	/* Return if sink is not an HDMI device */
	if (dev->sink != SINK_HDMI)
		return ERR_NOT_PERMITTED;

	buf[0] = ((uint8_t) fmt_info << 3) |
			((uint8_t) copyright << 2) |
			((uint8_t) pcm_id << 1);
	buf[1] = categoryCode;
	buf[2] = ((uint8_t) clk_acc << 4) | freq[samp_freq];
	buf[3] = ((uint8_t) origsamp_freq << 4) |
			((uint8_t) word_len << 1) |
			(uint8_t) maxword_len;

	/* Write 4 Channel Status bytes */
	ret = tda998x_write(dev, CH_STAT_B_0, 4, &buf[0]);
	if (ret < 0)
		return ret;

	return 0;
}

/**
 * @brief	Set Audio Channel Status Mapping
 *
 * @param	dev:		TDA998x device structure pointer
 * @param	src_left:	Left channel source
 * @param	chan_left:	Left channel output
 * @param	src_right:	Right channel source
 * @param	chan_right:	Right channel output
 * @return	0 on success, non-zero error status otherwise
 */
static int
tda998x_aud_set_chan_status_mapping(struct tda998x_dev *dev,
		uint8_t src_left[4],
		uint8_t chan_left[4],
		uint8_t src_right[4],
		uint8_t chan_right[4])
{
	int ret;
	uint8_t buf[2];

	if (dev->sink != SINK_HDMI)
		return ERR_NOT_PERMITTED;
 
	buf[0] = (chan_left[0] << 4) | (src_left[0] & 0xFF);
	buf[1] = (chan_right[0] << 4) | (src_right[0] & 0xFF);

	ret = tda998x_write(dev, CH_STAT_B_2_AP0_L, 2, &buf[0]);
	if (ret < 0)
		return ret;
  
	return 0;
}

/**
 * @brief	Set Audio Mute
 *
 * @param	dev:	TDA998x device structure pointer
 * @param	mute:	Mute enable value
 * @return	0 on success, non-zero error status otherwise
 */
static int
tda998x_aud_set_mute(struct tda998x_dev *dev, bool mute)
{
	int ret;

	if (dev->sink != SINK_HDMI)
		return ERR_NOT_PERMITTED;
 
	if (mute) {
		ret = write_reg_mask(dev,
				SR_REG,
				SR_REG_SR_AUDIO,
				SR_REG_SR_AUDIO);
		if (ret < 0)
			return ret;

		ret = write_reg_mask(dev, SR_REG, SR_REG_SR_AUDIO, 0);
		if (ret < 0)
			return ret;
	}
 
	ret = write_reg_mask(dev,
			AIP_CNTRL_0,
			AIP_CNTRL_0_RST_FIFO,
			mute ? AIP_CNTRL_0_RST_FIFO : 0);
	if (ret < 0)
		return ret;
 
	return 0;
}

/**
 * @todo Rework the audio configuration
 */
int
tda998x_aud_set_input(struct tda998x_dev *dev,
                      struct tda998x_audin_cfg *audin_cfg)
{
    int ret;
    uint8_t reg_val;
    uint8_t buf[4];
    uint8_t layout;                    /* 0 or 1 */
    uint16_t uCtsX;                    /* CtsX value */
    uint32_t acrN;
    struct tda998x_aud_if_pkt aif_pkt;        /* Audio infoframe packet */
    
    ret = write_reg(dev, ENA_AP, 0xFF);
    if (ret < 0)
        return ret;
    
    ret = write_reg(dev, ENA_ACLK, 0x01);
    if (ret < 0)
        return ret;
    
    /* configure MUX_AP */
    ret = write_reg(dev, MUX_AP, 0x64);
    if (ret < 0)
        return ret;
    
    /* Set the audio input processor format to aFmt. */
    ret = write_reg_mask(dev, AIP_CLKSEL, 0x38, 0x08);
    if (ret < 0)
        return ret;
    
    /* Channel status on 1 channel  */
    ret = write_reg_mask(dev, CA_I2S, (1 << 5), 0);
    if (ret < 0)
        return ret;
    
    ret = write_reg_mask(dev, CA_I2S, 0x1F, 0x1F);
    if (ret < 0)
        return ret;
    
    /* Select the I2S format */
    ret = write_reg_mask(dev, I2S_FORMAT, 0x0F, 0x0E);
    if (ret < 0)
        return ret;
    
    ret = write_reg_mask(dev, AIP_CNTRL_0, (1 << 2), (1 << 2));
    if (ret < 0)
        return ret;
    
    ret = write_reg(dev, LATENCY_RD, 0x80);
    if (ret < 0)
        return ret;
    
    /* Auto */
    ret = write_reg_mask(dev, AIP_CNTRL_0, (1 << 5), 0);
    if (ret < 0)
        return ret;
    
    /* Set the Post-divider measured timestamp factor */
    ret = write_reg_mask(dev, CTS_N_RW, 0x30, 0x10);
    if (ret < 0)
        return ret;
    
    /* Set the Pre-divider scale */
    ret = write_reg_mask(dev, CTS_N_RW, 0x07, 0x01);
    if (ret < 0)
        return ret;
    
    /* Set ACR N multiplier [19 to 16] */
    ret = write_reg(dev, ACR_N_2, 0x00);
    if (ret < 0)
        return ret;
    
    /* Set ACR N multiplier [15 to 8] */
    ret = write_reg(dev, ACR_N_1, 0x18);
    if (ret < 0)
        return ret;
    
    ret = write_reg(dev, ACR_N_0, 0x00);
    if (ret < 0)
        return ret;
    
    /*
     * Set the CDC Audio Divider register based on the audio sample
     * frequency afs and current pixel clock
     */
    ret = write_reg(dev, AUDIO_DIV, 0x04);
    if (ret < 0)
        return ret;
    
    /* Set the CTS clock reference register according to ctsRef */
    ret = write_reg_mask(dev, AIP_CLKSEL, 0x03, 0);
    if (ret < 0)
        return ret;
    
    /* Reset and release the CTS generator */
    ret = write_reg_mask(dev, AIP_CNTRL_0, (1 << 6), (1 << 6));
    if (ret < 0)
        return ret;
    
    ret = write_reg_mask(dev, AIP_CNTRL_0, (1 << 6), 0);
    if (ret < 0)
        return ret;
    
    /* Prepare Byte 0 */
    buf[0] = 0x00; // ((UInt8)formatInfo << 3) | ((UInt8)copyright << 2) | ((UInt8)pcmIdentification<< 1);
    
    /* Prepare Byte 1 */
    buf[1] = 0x00; // categoryCode;
    
    /* Prepare Byte 3  - note Byte 2 not in sequence in TDA9983 register map */
    buf[2] = 0x02; // ((UInt8)clockAccuracy << 4) | 0x02;
    
    /* Prepare Byte 4 */
    buf[3] = (13 << 4) | (1 << 1);
    
    ret = tda998x_write(dev, CH_STAT_B_0, 4, &buf[0]);
    if (ret < 0)
        return ret;
    
    ret = tda998x_aud_set_mute(dev, true);
    if (ret < 0)
        return ret;
    
    /* Wait 20ms */
    usleep(1000 * 20);
    
    ret = tda998x_aud_set_mute(dev, false);
    if (ret < 0)
        return ret;
    
    aif_pkt.nchan = 7;            /**< Number of channels - 1 */
    aif_pkt.type = 0;            /* refer to stream header */
    aif_pkt.samp_size = 0;            /* refer to stream header */
    aif_pkt.chan_alloc = audin_cfg->ch_alloc;    /**< Channel allocation code */
    aif_pkt.lvl_shift = 0;            /* 0dB level shift */
    aif_pkt.dmix_inhib = 0;        /* down-mix stereo permitted */
    aif_pkt.samp_freq = 0;            /* refer to stream header */
    
    ret = tda998x_aud_set_pkt_infoframe(dev, &aif_pkt, true);
    if (ret < 0)
        return ret;
    
    return 0;
}
/**
 * @}
 */

/**
 * @defgroup	TDA998X_Functions_Hotplug TDA998x Hotplug
 * @{
 */

int
tda998x_get_hotplug_status(struct tda998x_dev *dev,
		enum tda998x_hotplug_status *status,
		bool client)
{
	int ret;
	uint8_t reg_val;

	/* Read HPD RXS level */
	ret = cec_read_reg(dev, RXSHPDLEV, &reg_val);
	if (ret < 0)
		return ret;

	/* Read Hot Plug input status to know the actual level that caused the interrupt */
	if (client) {
		*status = (reg_val & RXSHPDLEV_HPD_LEVEL) ? HOTPLUG_ACTIVE : HOTPLUG_INACTIVE;
	} else {
		*status = dev->hotplug_status;
	}

	return 0;
}

/**
 * @}
 */

/**
 * @defgroup	TDA998X_Functions_EDID TDA998x EDID
 * @{
 */

static int
request_edid_block(struct tda998x_dev *dev)
{
	int ret;
	uint8_t segptr;     /* Segment ptr value */
	uint8_t offset;     /* Word offset value */
	struct tda998x_edid *edid;

	if ((dev == NULL) || (dev->edid == NULL))
		return ERR_NULL_PARAM;

	edid = dev->edid;

	DEBUG_PRINT("Req: %d", edid->req_id);

	ret = write_reg(dev, DDC_ADDR_RW, DDC_EDID_ADDRESS);
	if (ret < 0)
		return ret;

	/* For even blocks we need an offset of 0, odd blocks we need 128 */
	offset = (((uint8_t) edid->req_id & 1) == 1) ? 128 : 0;
	ret = write_reg(dev, DDC_OFFS_RW, offset);
	if (ret < 0)
		return ret;

	ret = write_reg(dev, DDC_SEGM_ADDR_RW, DDC_SGMT_PTR_ADDRESS);
	if (ret < 0)
		return ret;

	/* Calculate which segment of the EDID we need (2 blocks per segment) */
	segptr = (uint8_t) edid->req_id / 2;
	ret = write_reg(dev, DDC_SEGM_RW, segptr);
	if (ret < 0)
		return ret;

	/* Enable reading EDID */
	ret = write_reg(dev, EDID_CTRL_RW, 0x01);
	if (ret < 0)
		return ret;

	/* The flag to start the EDID reading must cleared by software */
	ret = write_reg(dev, EDID_CTRL_RW, 0x0);
	if (ret < 0)
		return ret;

	return 0;
}

int
tda998x_read_edid(struct tda998x_dev *dev, uint8_t *data)
{
	int ret;
	uint8_t reg_val;
	struct timeval start, end;

	/* Enable EDID read */
	ret = write_reg(dev, INT_FLAGS_2, INT_FLAGS_2_EDID_BLK_RD);
	if (ret < 0)
		return ret;

	ret = request_edid_block(dev);
	if (ret < 0)
		return ret;

	gettimeofday(&start, NULL);

	/* Wait for the block read flag to be set */
	while (1) {
		ret = read_reg(dev, INT_FLAGS_2, &reg_val);
		if (ret < 0)
			return ret;

		if (reg_val & INT_FLAGS_2_EDID_BLK_RD)
			break;

		usleep(1000 * 50);


		gettimeofday(&end, NULL);

		if (end.tv_sec > (start.tv_sec + 5))
			return -1;
	}

	ret = tda998x_read(dev, EDID_DATA_0_R, EDID_BLOCK_SIZE, data);
	if (ret < 0)
		return ret;

	return 0;
}

/**
 * @brief	Get EDID Block Data
 *
 * @param	dev:	TDA998x device structure pointer
 * @return	0 on success, non-zero error status otherwise
 */
int
tda998x_edid_get_block(struct tda998x_dev *dev,
		uint8_t *block,
		int nblocks,
		int len)
{
	int ret;
	struct tda998x_edid *edid;

	if ((dev == NULL) || (dev->edid == NULL))
		return ERR_NULL_PARAM;

	/* Enable EDID read */
	ret = write_reg(dev, INT_FLAGS_2, INT_FLAGS_2_EDID_BLK_RD);
	if (ret < 0)
		return ret;

	edid = dev->edid;

	if (!edid->read_started) {
		/* Reset the EdidStatus in the Device Instance Structure */
		edid->state = EDID_NOT_READ;

		edid->read_started = true;

		/* Reset stored parameters from EDID in the Device Instance Structure */
		dev->sink = SINK_DVI;

		/* Enable the T0 interrupt for detecting the Read_EDID failure */
		ret = write_reg(dev, INT_FLAGS_0, INT_FLAGS_0_T0);
		if (ret < 0)
			return ret;

		/* Launch the read of first EDID block into Device Instance workspace */
		edid->req_id = 0;
		ret = request_edid_block(dev);
		if (ret < 0)
			return ret;
	} else {
		/* Not allowed if read edid is on going */
		return ERR_RESOURCE_NOT_AVAILABLE;
	}

	return 0;
}

static int
clear_edid_request(struct tda998x_dev *dev)
{
	int ret;
	struct tda998x_edid *edid;

	if ((dev == NULL) || (dev->edid == NULL))
		return ERR_NULL_PARAM;

	edid = dev->edid;

	edid->state = EDID_NOT_READ;
	edid->read_started = false;

	/* Launch the read of first EDID block into Device Instance workspace */
	edid->req_id = 0;

	return 0;
}


int
edid_block_available(struct tda998x_dev *dev, bool *pSendEDIDCallback)
{
	int i, ret;
	uint8_t chksum;
	struct tda998x_edid *edid;

	if ((dev == NULL) || (dev->edid == NULL))
		return ERR_NULL_PARAM;

	edid = dev->edid;

	if (edid->read_started) {

//		err = tmbslTDA9989HwGetRegisters(txUnit, kPageIndexToPage[E_PAGE_09],
//				SPA2ADDR(E_REG_P09_EDID_DATA_0_R), pDis->EdidBlock, EDID_BLOCK_SIZE);
//		if (pSendEDIDCallback) {
//			*pSendEDIDCallback = False;
//		}

		if (edid->state == EDID_NOT_READ) {

			ret = tda998x_read(dev, EDID_DATA_0_R, EDID_BLOCK_SIZE, &edid->block[0]);
			if (ret < 0)
				return ret;

			/*
			 * Add up all the values of the EDID block bytes, including the
			 * checksum byte
			 */
			chksum = 0;
			for (i = 0; i < EDID_BLOCK_SIZE; i++)
				chksum += edid->block[i];

			/*
			 * IF the EDID block does not yield a checksum of zero
			 */
//			if (chksum != 0) {
//				if (pDis->EdidBlockRequested == 0) {
//					/* THEN return a HDMITX_EDID_ERROR error.*/
//					pDis->EdidStatus = HDMITX_EDID_ERROR_CHK_BLOCK_0;
//				} else {
//					/* THEN return a HDMITX_EDID_ERROR_CHK error.*/
//					pDis->EdidStatus = HDMITX_EDID_ERROR_CHK;
//				}
//			}
		}

		if (edid->state == EDID_ERR_BLOCK_0) {

			/*
			 * PR11 : On i2c error or bad checksum in block 0
			 * allow driver to go in state CONNECTED
			 * On the other block, we also accept INVALID_CHECKSUM which means
			 * there was a checksum error
			 */
//			if (pSendEDIDCallback) {
//				*pSendEDIDCallback = True;
//			}

//			setState(pDis, EV_GETBLOCKDATA);

//			if (pDis->rxSenseStatus == HDMITX_RX_SENSE_ACTIVE) {
//				setState(pDis, EV_SINKON);
//			}

			edid->read_started = false;

			return 0;
		}

		/* Check if block 0 */
		if (edid->req_id == 0) {

			/*
			 * Could check block 0 header (0x00,6 x 0xFF,0x00) here but not
			 * certain to be future proof [CEA861C A.2.3]
			 */

			/* Read block count from penultimate byte of block */
			edid->count = edid->block[EDID_BLK0_EXT_CNT] + 1;
		}

		/* If pointer was supplied, copy block from DIS to buffer */
//		if (pDis->EdidToApp.pRawEdid != NULL) {
//			/* Check if we've copied as many as requested yet? */
//			if (pDis->EdidBlockRequested < pDis->EdidToApp.numBlocks) {
//				lmemcpy(pDis->EdidToApp.pRawEdid + (edid->req_id * EDID_BLOCK_SIZE),
//						pDis->EdidBlock,
//						EDID_BLOCK_SIZE);
//			}
//		}

//		parseEdidBlock(pDis, pDis->EdidBlockRequested);

		/* If extension blocks are present, process them */
		if ((edid->req_id + 1) < edid->count) {

			edid->req_id++;

			/* Launch an edid block read */
			ret = request_edid_block(dev);
			if (ret < 0)
				return ret;
		} else {
			if (edid->state == EDID_NOT_READ) {
				edid->state = EDID_READ;
			}

//			if (pSendEDIDCallback) {
//				*pSendEDIDCallback = True;
//			}

//			setState(pDis, EV_GETBLOCKDATA);

//			if (pDis->rxSenseStatus == HDMITX_RX_SENSE_ACTIVE) {
//				setState(pDis, EV_SINKON);
//			}

			edid->read_started = false;
		}
	} else {
		return ERR_RESOURCE_NOT_AVAILABLE;
	}

	return 0;
}
/**
 * @}
 */

/**
 * @brief	Set TMDS Output
 *
 * @param	dev:	TDA998x device structure pointer
 * @param	tmds:	TMDS serializer output selection
 * @return	0 on success, non-zero error status otherwise
 */
static int
tda998x_set_tmds_output(struct tda998x_dev *dev, enum buffer_out_srl_force tmds)
{
	int ret;



	/* Set the TMDS output mode */
	ret = write_reg_mask(dev,
			BUFFER_OUT,
			BUFFER_OUT_SRL_FORCE_MASK,
			(uint8_t) tmds);
	if (ret < 0)
		return ret;

	return 0;
}

/**
 * @defgroup	TDA998X_Functions_Video_Input TDA998x Video Input
 * @{
 */

/**
 * @brief	Set Video Input Blanking Source and Code
 *
 * @param	dev:	TDA998x device structure pointer
 * @param	src:	Blanking source
 * @param	code:	Blanking code
 * @return	0 on success, non-zero error status otherwise
 */
static int
tda998x_vidin_set_blanking(struct tda998x_dev *dev,
		enum vip_cntrl_4_blnkit src,
		enum vip_cntrl_4_blc code)
{
	int ret;

	ret = write_reg_mask(dev,
			VIP_CNTRL_4,
			VIP_CNTRL_4_BLNKIT_MASK | VIP_CNTRL_4_BLC_MASK,
			(uint8_t) src | (uint8_t) code);
	if (ret < 0)
		return ret;

	return 0;
}

static int
tda998x_vidin_set_config(struct tda998x_dev *dev,
		enum tda998x_vidin_mode vin_mode,
		enum tda998x_vid_fmt vout_fmt,
		enum tda998x_format_3d format_3d,
		enum tda998x_pix_edge edge,
		enum tda998x_pix_rate pix_rate,
		enum tda998x_upsample upsampleMode)
{
	int ret;
	uint8_t ssd = 0;
	uint8_t vip_cntrl_4, hvf_cntrl_1, pll_serial_3, sel_clk;
	struct tda998x_vidin_cfg *vidin_cfg;
	const struct vidfmt_desc *desc;

	if ((dev == NULL) || (dev->vin_cfg == NULL))
		return ERR_NULL_PARAM;

	vidin_cfg = dev->vin_cfg;

	desc = get_vidfmt_desc(vout_fmt);
	if (desc == NULL)
		return ERR_NOT_FOUND;

	ret = write_reg_mask(dev,
			VIP_CNTRL_3,
			VIP_CNTRL_3_EDGE,
			(uint8_t) edge);
	if (ret < 0)
		return ret;

	vidin_cfg->pix_rate = pix_rate;

	ret = read_reg(dev, VIP_CNTRL_4, &vip_cntrl_4);
	if (ret < 0)
		return ret;

	ret = read_reg(dev, HVF_CNTRL_1, &hvf_cntrl_1);
	if (ret < 0)
		return ret;

	ret = read_reg(dev, PLL_SERIAL_3, &pll_serial_3);
	if (ret < 0)
		return ret;

	ret = read_reg(dev, SEL_CLK, &sel_clk);
	if (ret < 0)
		return ret;

	if ((vidin_cfg->pix_rate == PIXRATE_SINGLE) ||
			(vidin_cfg->pix_rate == PIXRATE_SINGLE_REPEATED)) {

		switch (vidin_cfg->mode) {
		case VINMODE_RGB444:
		case VINMODE_YUV444:
			vip_cntrl_4	&= ~VIP_CNTRL_4_CCIR656;
			hvf_cntrl_1	&= ~HVF_CNTRL_1_SEMI_PLANAR;
			pll_serial_3	&= ~PLL_SERIAL_3_SRL_CCIR;
			sel_clk		&= ~SEL_CLK_SEL_VRF_CLK_MASK;
			vip_cntrl_4	&= ~VIP_CNTRL_4_656_ALT;
			break;

		case VINMODE_CCIR656:
			vip_cntrl_4	|= VIP_CNTRL_4_CCIR656;
			hvf_cntrl_1	|= HVF_CNTRL_1_SEMI_PLANAR;
			pll_serial_3	|= PLL_SERIAL_3_SRL_CCIR;
			sel_clk		&= ~SEL_CLK_SEL_VRF_CLK_MASK;
			sel_clk		|= 0x02;
			vip_cntrl_4	&= ~VIP_CNTRL_4_656_ALT;
			break;

		default:
			return ERR_BAD_PARAM;
		}

	} else if (vidin_cfg->pix_rate == PIXRATE_DOUBLE) {

		switch (vidin_cfg->mode) {
		case VINMODE_CCIR656:
			vip_cntrl_4	|= VIP_CNTRL_4_CCIR656;
			hvf_cntrl_1	|= HVF_CNTRL_1_SEMI_PLANAR;
			pll_serial_3	&= ~PLL_SERIAL_3_SRL_CCIR;
			sel_clk		&= ~SEL_CLK_SEL_VRF_CLK_MASK;
			vip_cntrl_4	|= VIP_CNTRL_4_656_ALT;
			break;

		case VINMODE_RGB444:
		case VINMODE_YUV444:
		default:
			return ERR_BAD_PARAM;
		}
	}

	ret = write_reg(dev, HVF_CNTRL_1, hvf_cntrl_1);
	if (ret < 0)
		return ret;

	ret = write_reg(dev, PLL_SERIAL_3, pll_serial_3);
	if (ret < 0)
		return ret;

	ret = write_reg(dev, SEL_CLK, sel_clk);
	if (ret < 0)
		return ret;

	ret = write_reg(dev, VIP_CNTRL_4, vip_cntrl_4);
	if (ret < 0)
		return ret;

	ssd = desc->pll_sc;
	if (ssd < SSD_UNUSED_VALUE) {
		ret = write_reg_mask(dev,
				PLL_SERIAL_2,
				PLL_SERIAL_2_SRL_NOSC_MASK,
				ssd);
	}

	ret = write_reg_mask(dev,
			PLL_SERIAL_1,
			PLL_SERIAL_1_SRL_MAN_IZ,
			0);
	if (ret < 0)
		return ret;

	ret = write_reg_mask(dev,
			PLL_SERIAL_3,
			PLL_SERIAL_3_SRL_DE,
			0);
	if (ret < 0)
		return ret;

	ret = write_reg(dev, SERIALIZER, 0);
	if (ret < 0)
		return ret;

	return 0;
}

/**
 * @brief	Set Video Input Fine
 *
 * @param	dev:		TDA998x device structure pointer
 * @param	sp_sync:	Subpacket synchronization selection
 * @param	sp_cnt:		Subpacket count
 * @param	clkpol:		Clock polarity
 * @return	0 on success, non-zero error status otherwise
 */
static int
tda998x_vidin_set_fine(struct tda998x_dev *dev,
		enum vip_cntrl_3_sp_sync sp_sync,
		uint8_t sp_cnt,
		enum vip_cntrl_5_clkpol clkpol)
{
	int ret;

	if (dev == NULL)
		return ERR_NULL_PARAM;
 
	if (sp_sync == SPSYNC_FIXED) {
		ret = write_reg_mask(dev,
				VIP_CNTRL_5,
				VIP_CNTRL_5_SP_CNT_MASK,
				sp_cnt << 1);
		if (ret < 0)
			return ret;
    
		ret = write_reg_mask(dev,
				VIP_CNTRL_3,
				VIP_CNTRL_3_SP_SYNC_MASK,
				(uint8_t) SPSYNC_FIXED);
		if (ret < 0)
			return ret;
	} else {
		ret = write_reg_mask(dev,
				VIP_CNTRL_5,
				VIP_CNTRL_5_SP_CNT_MASK,
				0);
		if (ret < 0)
			return ret;

		ret = write_reg_mask(dev,
				VIP_CNTRL_3,
				VIP_CNTRL_3_SP_SYNC_MASK,
				(uint8_t) sp_sync);
		if (ret < 0)
			return ret;
	}
 
	ret = write_reg_mask(dev,
			VIP_CNTRL_5,
			VIP_CNTRL_5_CLKPOL,
			(uint8_t) clkpol);
	if (ret < 0)
		return ret;
  
	return 0;
}

/**
 * @brief	Set Video Input Port Mapping
 *
 * @param	dev:	TDA998x device structure pointer
 * @param	swap:	Port swap mapping table pointer
 * @param	mirr:	Port mirroring table pointer
 * @return	0 on success, non-zero error code otherwise
 */
static int
tda998x_vidin_set_mapping(struct tda998x_dev *dev,
		const enum vip_cntrl_swap *swap,
		const enum vip_cntrl_mirr *mirr)
{
	int i, ret;
	uint8_t buf[3];

	/* Check parameters */
	if ((dev == NULL) || (swap == NULL) || (mirr == NULL))
		return ERR_NULL_PARAM;

	for (i = 0; i < VIP_CNTRL_LEN; i++) {
		buf[i] = (uint8_t) swap[2 * i];
		buf[i] |= (uint8_t) swap[(2 * i) + 1] << 4;
		buf[i] |= (uint8_t) mirr[2 * i] << 3;
		buf[i] |= (uint8_t) mirr[(2 * i) + 1] << 7;
	}

	ret = tda998x_write(dev, VIP_CNTRL_0, VIP_CNTRL_LEN, buf);
	if (ret < 0)
		return ret;

	return 0;
}

/**
 * @brief	Set Video Input Port Pin Enable
 *
 * @param	dev:	TDA998x device structure pointer
 * @return	0 on success, non-zero error status otherwise
 */
static int
tda998x_vidin_set_port_enable(struct tda998x_dev *dev)
{
	int ret;
	uint8_t buf[3] = { 0xFF, 0xFF, 0xFF };

	/* Check parameters */
	if (dev == NULL)
		return ERR_NULL_PARAM;
    
	ret = tda998x_write(dev, ENA_VP_0, 3, buf);
	if (ret < 0)
		return ret;

	return 0;
}

/**
 * @brief	Set Video Input Synchronization
 *
 * @param	dev:	TDA998x device structure pointer
 * @param	src:	Syncing source
 * @param	mthd:	Syncing method
 * @param	tgl_v:	Toggle VS/VREF
 * @param	tgl_h:	Toggle HS/HREF
 * @param	tgl_x:	Toggle DE/FREF
 * @param	ref_pix:
 * @param	ref_line:
 * @return	0 on success, non-zero error status otherwise
 */
static int
tda998x_vidin_set_sync(struct tda998x_dev *dev,
		enum vip_cntrl_3_emb emb,
		enum tbg_cntrl_0_sync_mthd mthd,
		bool tgl_v,
		bool tgl_h,
		bool tgl_x,
		uint16_t ref_pix,
		uint16_t ref_line)
{
	int ret;
	uint8_t reg_val;

	ret = write_reg_mask(dev,
			VIP_CNTRL_3,
			VIP_CNTRL_3_EMB,
			(uint8_t) emb);
	if (ret < 0)
		return ret;

	ret = write_reg_mask(dev,
			TBG_CNTRL_0,
			TBG_CNTRL_0_SYNC_MTHD,
			(uint8_t) mthd);
	if (ret < 0)
		return ret;

	reg_val = tgl_v ? VIP_CNTRL_3_V_TGL : 0;
	reg_val |= tgl_h ? VIP_CNTRL_3_H_TGL : 0;
	reg_val |= tgl_x ? VIP_CNTRL_3_X_TGL : 0;

	ret = write_reg_mask(dev,
			VIP_CNTRL_3,
			VIP_CNTRL_3_V_TGL | VIP_CNTRL_3_H_TGL | VIP_CNTRL_3_X_TGL,
			reg_val);
	if (ret < 0)
		return ret;

//	set_video_config(dev, struct tda998x_vid_frm *vid)

	if ((ref_pix >= REFPIX_MIN) &&
			(ref_pix <= REFPIX_MAX)) {
		ret = write_reg16(dev, REFPIX_MSB, ref_pix);
		if (ret < 0)
			return ret;
	}

	if ((ref_line >= REFLINE_MIN) &&
			(ref_line <= REFLINE_MAX)) {
		ret = write_reg16(dev, REFLINE_MSB, ref_line);
		if (ret < 0)
			return ret;
	}

	return 0;
}
/**
 * @}
 */

/**
 * @defgroup	TDA998X_VideoOut TDA998x Video Output
 * @{
 */

/**
 * @brief	Video Output Enable
 *
 * @param	dev:	TDA998x device structure pointer
 * @param	en:	Enable video selection
 * @return	0 on success, non-zero error status otherwise
 */
static int
tda998x_vidout_enable(struct tda998x_dev *dev, bool en)
{
	int ret;

	ret = write_reg_mask(dev,
			TBG_CNTRL_0,
			TBG_CNTRL_0_FRAME_DIS,
			en ? 0 : TBG_CNTRL_0_FRAME_DIS);
	if (ret < 0)
		return ret;

	return 0;
}

/**
 * @brief	Set Video Output Configuration
 *
 * @param	dev:	TDA998x device structure pointer
 * @param	sink:	Video output sink type
 * @param	vout_mode:	Video output mode
 * @param	prefil:	Prefilter
 * @param	yuv_blk:
 * @param	vqr:	Video quantization range
 * @return	0 on success, non-zero error status otherwise
 */
static int
tda998x_vidout_set_config(struct tda998x_dev *dev,
		enum tda998x_sink sink,
		enum tda998x_vidout_mode vout_mode,
		enum hvf_cntrl_0_prefil prefil,
		enum hvf_cntrl_1_yuv_blk yuv_blk,
		enum hvf_cntrl_1_vqr vqr)
{
	int ret;

	if (dev == NULL)
		return ERR_NULL_PARAM;

	if (sink == SINK_EDID) {
		if (dev->edid->state == EDID_NOT_READ)
			dev->sink = SINK_DVI;		/* Assume simplest sink */
		else
			dev->sink = dev->edid->sink;	/* Set sink to the type that was read */
	} else {
		/* Set demanded sink type */
		dev->sink = sink;
	}
 
	if (dev->sink == SINK_DVI) {
		ret = write_reg_mask(dev,
				AIP_CNTRL_0,
				AIP_CNTRL_0_RST_FIFO,
				AIP_CNTRL_0_RST_FIFO);
		if (ret < 0)
			return ret;

		vout_mode = VOUTMODE_RGB444;
 
		ret = write_reg_mask(dev, TBG_CNTRL_1, TBG_CNTRL_1_DWIN_DIS, TBG_CNTRL_1_DWIN_DIS);
		if (ret < 0)
			return ret;

		ret = write_reg_mask(dev, OTP_TX33, OTP_TX33_HDMI, 0);
		if (ret < 0)
			return ret;

		ret = write_reg_mask(dev, ENC_CNTRL, ENC_CNTRL_CTL_CODE_MASK, 0);
		if (ret < 0)
			return ret;
	} else {
		ret = write_reg_mask(dev, AIP_CNTRL_0, AIP_CNTRL_0_RST_FIFO, 0);
		if (ret < 0)
			return ret;

		ret = write_reg_mask(dev, TBG_CNTRL_1, TBG_CNTRL_1_DWIN_DIS, 0);
		if (ret < 0)
			return ret;

		ret = write_reg_mask(dev, ENC_CNTRL, ENC_CNTRL_CTL_CODE_MASK, 0x04U);
		if (ret < 0)
			return ret;

		ret = write_reg_mask(dev, OTP_TX33, OTP_TX33_HDMI, OTP_TX33_HDMI);
		if (ret < 0)
			return ret;
	}

	dev->vout_cfg->mode = vout_mode;

	ret = write_reg_mask(dev,
			HVF_CNTRL_0,
			HVF_CNTRL_0_PREFIL_MASK,
			(uint8_t) prefil);
	if (ret < 0)
		return ret;

	ret = write_reg_mask(dev,
			HVF_CNTRL_1,
			HVF_CNTRL_1_YUVBLK,
			(uint8_t) yuv_blk);
	if (ret < 0)
		return ret;

	return 0;
}

/**
 * @brief	Set Video Output Synchronization
 *
 * @param	dev:	TDA998x device structure pointer
 * @param	h_ext:	Is HS/HREF external?
 * @param	v_ext:	Is VS/VREF external?
 * @param	x_ext:	Is DE/FREF external?
 *
 * @return	0 on success, non-zero error status otherwise
 */
static int
tda998x_vidout_set_sync(struct tda998x_dev *dev,
		bool h_ext,
		bool v_ext,
		bool de_ext,
		uint8_t tgl,
		enum tbg_cntrl_0_sync sync)
{
	int ret;
	uint8_t reg_val = 0;
 
	/* Build register value */
	if (h_ext)
		reg_val |= TBG_CNTRL_1_VHX_EXT_HS;

	if (v_ext)
		reg_val |= TBG_CNTRL_1_VHX_EXT_VS;

	if (de_ext)
		reg_val |= TBG_CNTRL_1_VHX_EXT_DE;

	ret = write_reg_mask (dev,
			TBG_CNTRL_1,
			TBG_CNTRL_1_VHX_EXT_MASK,
			reg_val);
	if (ret < 0)
		return ret;
 
	ret = write_reg_mask(dev,
			TBG_CNTRL_1,
			TBG_CNTRL_1_VH_TGL_MASK,
			tgl);

	if (ret < 0)
		return ret;
  
	/* Must be last register set */
	ret = write_reg_mask(dev,
			TBG_CNTRL_0,
			TBG_CNTRL_0_SYNC,
			(uint8_t) sync);
	if (ret < 0)
		return ret;

	/* Toggle TMDS serializer */
	ret = write_reg_mask(dev,
			BUFFER_OUT,
			BUFFER_OUT_SRL_FORCE_MASK,
			(uint8_t) TMDSOUT_FORCED0);
	if (ret < 0)
		return ret;

	ret = write_reg_mask(dev,
			BUFFER_OUT,
			BUFFER_OUT_SRL_FORCE_MASK,
			(uint8_t) TMDSOUT_NORMAL);
	if (ret < 0)
		return ret;
 
	if (sync == SYNC_ONCE) {
		/* Toggle output Sync Once flag for settings to take effect */
		ret = write_reg_mask(dev,
				TBG_CNTRL_0,
				TBG_CNTRL_0_SYNC,
				(uint8_t) SYNC_EACH_FRAME);
		if (ret < 0)
			return ret;

		ret = write_reg_mask(dev,
				TBG_CNTRL_0,
				TBG_CNTRL_0_SYNC,
				(uint8_t) SYNC_ONCE);
		if (ret < 0)
			return ret;
	}
  
	return 0;
}

static int
tda998x_video_set_inout(struct tda998x_dev *dev,
		enum tda998x_vid_fmt vin_fmt,
		enum tda998x_format_3d format_3d,
		enum tda998x_scaler_mode sca_mod_req,
		enum tda998x_vid_fmt vout_fmt,
		uint8_t pix_rpt,
		enum tda998x_mtx_mode mtx_mode,
		enum tda998x_dwidth dwidth,
		enum tda998x_vqr vqr)
{
	int ret;
	enum tda998x_scaler_mode sca_mode;
	const struct vidfmt_desc *desc;
	uint8_t reg_idx;
	uint8_t reg_val;

	desc = get_vidfmt_desc(vout_fmt);
	if (desc == NULL)
		return ERR_NOT_FOUND;

	if (dev->vout_cfg->mode == VOUTMODE_RGB444) {
		if ((dev->vout_cfg->format >= VFMT_02_720x480p_60Hz) &&
				(dev->vout_cfg->format >= VFMT_01_640x480p_60Hz) &&
				(dev->vout_cfg->format <= VFMT_62_1280x720p_30Hz)) {
			if (vqr == VQR_RGB_FULL) {
				ret = write_reg_mask(dev,
						HVF_CNTRL_1,
						HVF_CNTRL_1_VQR_MASK,
						(uint8_t) QRANGE_FS);
				if (ret < 0)
					return ret;
			} else {
				ret = write_reg_mask(dev,
						HVF_CNTRL_1,
						HVF_CNTRL_1_VQR_MASK,
						(uint8_t) QRANGE_RGB_YUV);
				if (ret < 0)
					return ret;
			}
		} else {
			/*Format PC or VGA */
			ret = write_reg_mask(dev,
					HVF_CNTRL_1,
					HVF_CNTRL_1_VQR_MASK,
					(uint8_t) QRANGE_FS);
			if (ret < 0)
				return ret;
		}
	} else {

		ret = write_reg_mask(dev,
				HVF_CNTRL_1,
				HVF_CNTRL_1_VQR_MASK,
				(uint8_t) QRANGE_YUV);
		if (ret < 0)
			return ret;
	}
 
	/* Set pixel repetition - sets pixelRepeatCount, used by setScalerFormat */
	ret = set_pix_repeat(dev, vout_fmt, pix_rpt, format_3d);
	if (ret < 0)
		return ret;
 
	/* Set scaler clock */
//	reg_val = 0;
//	if ((dev->pixelRepeatCount > PIXREP_MIN) &&
//			(dev->pixelRepeatCount <= PIXREP_MAX)) {
//		reg_val = 2;
//	} else if (dev->vin_in_cfg->mode == VINMODE_CCIR656) {
//		reg_val = (uint8_t) ((dev->sca_mode == SCAMODE_ON) ? 0 : 1);
//
//		if (dev->vid_in_cfg->pix_rate == PIXRATE_DOUBLE) {
//			reg_val = 0;
//		}
//	}

	reg_val = 0x00;
	ret = write_reg_mask(dev,
			SEL_CLK,
			SEL_CLK_SEL_VRF_CLK_MASK,
			reg_val << 1);
	if (ret < 0)
		return ret;

	/* Look up the VIDFORMAT register format from the register format table */
//	RETIF_BADPARAM(reg_vid_fmt
//			(vin_fmt, format_3d, &reg_idx, &reg_idx3D, 0));

	/* Determine if the video can be set up using preformatted resolution */
	if (desc->reg_fmt <= VIDFORMAT_1920x1080p_50Hz) {
		ret = write_reg(dev, VIDFORMAT, 0x00);
		if (ret < 0)
			return ret;

		ret = write_reg(dev, VIDFORMAT, 0x1F);
		if (ret < 0)
			return ret;

		ret = write_reg(dev, VIDFORMAT, desc->reg_fmt);
		if (ret < 0)
			return ret;
	}

	/* Set VS and optional DE */
	ret = set_de_vs(dev, vout_fmt, format_3d);
	if (ret < 0)
		return ret;

	if (mtx_mode == MTX_MODE_AUTO) {
		ret = tda998x_mtx_set_conv(dev,
				vin_fmt,
				dev->vin_cfg->mode,
				vout_fmt,
				dev->vout_cfg->mode,
				dev->vout_cfg->vqr);
	} else {
		ret = tda998x_mtx_set_mode(dev,
				MTXBYPASS_ON,
				MTXSCALE_256);	// HDMITX_MSCALE_NO_CHANGE
	}

	if (ret < 0)
		return ret;

	/* Set upsampler and downsampler */
	ret = set_sampling(dev);
	if (ret < 0)
		return ret;

	/* Set color component bit depth */
	ret = write_reg_mask(dev,
			HVF_CNTRL_1,
			HVF_CNTRL_1_PAD_MASK,
			(uint8_t) dwidth);
	if (ret < 0)
		return ret;

	return 0;
}

/**
 * @defgroup	TDA998X_Functions_Matrix Color Conversion Matrix
 * @{
 */

/**
 * @brief	Set Matrix Coefficients
 *
 * @param	dev:	TDA998x device structure pointer
 * @param	mtx:	Pointer to matrix coefficients structure
 * @return	0 on success, non-zero error status otherwise
 */
static int
tda998x_mtx_set_coeffs(struct tda998x_dev *dev, struct tda998x_mtx_coeff *mtx)
{
	int i, ret;
	uint8_t buf[MTX_COEFF_LEN * 2];

	for (i = 0; i < MTX_COEFF_LEN; i++) {
		buf[i * 2] = (uint8_t) (((uint16_t) mtx->coeff[i] & 0x0700) >> 8);
		buf[(i * 2) + 1] = (uint8_t) ((uint16_t) mtx->coeff[i] & 0x00FF);
	}

	ret = tda998x_write(dev, MTX_P11_MSB, MTX_COEFF_LEN * 2, &buf[0]);
	if (ret < 0)
		return ret;

	return 0;
}

/**
 * @brief	Set Matrix Conversion
 *
 * @param	dev:		TDA998x device structure pointer
 * @param	vin_fmt:	Video input format
 * @param	vout_fmt:	Video output format
 * @param	vout_mode:	Video output mode
 * @param	vqr:		Video quantization range
 * @return	0 on success, non-zero error status otherwise
 */
static int
tda998x_mtx_set_conv(struct tda998x_dev *dev,
		enum tda998x_vid_fmt vin_fmt,
		enum tda998x_vidin_mode vin_mode,
		enum tda998x_vid_fmt vout_fmt,
		enum tda998x_vidout_mode vout_mode,
		enum tda998x_vqr vqr)
{
	int i, ret;
	enum tda998x_color_space cs_in;
	enum tda998x_color_space cs_out;
	int mtx_idx;
	uint8_t buf[31];

	/* Compute input color space */
	switch (vin_fmt) {
	case VFMT_04_1280x720p_60Hz:
	case VFMT_05_1920x1080i_60Hz:
	case VFMT_16_1920x1080p_60Hz:
	case VFMT_19_1280x720p_50Hz:
	case VFMT_20_1920x1080i_50Hz:
	case VFMT_31_1920x1080p_50Hz:
	case VFMT_32_1920x1080p_24Hz:
	case VFMT_33_1920x1080p_25Hz:
	case VFMT_34_1920x1080p_30Hz:
	case VFMT_60_1280x720p_24Hz:
	case VFMT_61_1280x720p_25Hz:
	case VFMT_62_1280x720p_30Hz:
		/* HD modes */
		if (vin_mode == VINMODE_RGB444)
			cs_in = CS_RGB_LIMITED;
		else
			cs_in = CS_YUV_ITU_BT709;	/* CCIR656, YUV444, YU422 */
    
		break;
  
	default:
		/* SD modes */
		if (vin_mode == VINMODE_RGB444)
			cs_in = CS_RGB_LIMITED;
		else
			cs_in = CS_YUV_ITU_BT601;	/* CCIR656, YUV444, YU422 */

		break;
	}
    
	/* Compute output color space */
	switch (vout_fmt) {
	case VFMT_04_1280x720p_60Hz:
	case VFMT_05_1920x1080i_60Hz:
	case VFMT_16_1920x1080p_60Hz:
	case VFMT_19_1280x720p_50Hz:
	case VFMT_20_1920x1080i_50Hz:
	case VFMT_31_1920x1080p_50Hz:
	case VFMT_32_1920x1080p_24Hz:
	case VFMT_33_1920x1080p_25Hz:
	case VFMT_34_1920x1080p_30Hz:
	case VFMT_60_1280x720p_24Hz:
	case VFMT_61_1280x720p_25Hz:
	case VFMT_62_1280x720p_30Hz:
		/* Catch the HD modes */
		if (vout_mode == VOUTMODE_RGB444) {
			cs_out = CS_RGB_LIMITED;
		} else {
			cs_out = CS_YUV_ITU_BT709;	/* YUV444 or YUV422 */
		}
    
		break;
  
	default:
		/* SD modes */
		if (vout_mode == VOUTMODE_RGB444) {
			cs_out = CS_RGB_LIMITED;
		} else {
			cs_out = CS_YUV_ITU_BT601;	/* YUV444 or YUV422 */
		}
    
		break;
	}
  
	if (cs_in == cs_out) {
		ret = write_reg_mask(dev,
				MTX_CNTRL,
				MTX_CNTRL_MTX_BP,
				MTX_CNTRL_MTX_BP);
		if (ret < 0)
			return ret;
	} else {
		ret = write_reg_mask(dev,
				MTX_CNTRL,
				MTX_CNTRL_MTX_BP,
				0);
		if (ret < 0)
			return ret;

		for (i = 0; i < 31; i++)
			buf[i] = mtx_cfg_preset[mtx_idx][i];

		ret = write_reg_mask (dev,
				MTX_CNTRL,
				MTX_CNTRL_MTX_SC,
				buf[0]);
		if (ret < 0)
			return ret;

		ret = tda998x_write(dev, MTX_OI1_MSB, 30, &buf[1]);
		if (ret < 0)
			return ret;
	}
  
	return 0;
}

/**
 * @brief	Set Matrix Input Offset
 *
 * @param	dev:	TDA998x device structure pointer
 * @param	offset:	Matrix offset data structure pointer
 * @return	0 on success, non-zero error status otherwise
 */
static int
tda998x_mtx_set_inoffset(struct tda998x_dev *dev, struct mtx_offset *offset)
{
	int i, ret;
	uint8_t buf[MTX_OFFSET_LEN * 2];

	for (i = 0; i < MTX_OFFSET_LEN; i++) {
		buf[i * 2] = (uint8_t) (((uint16_t) offset->offset[i] & 0x0700) >> 8);
		buf[(i * 2) + 1] = (uint8_t) ((uint16_t) offset->offset[i] & 0x00FF);
	}
  
	ret = tda998x_write(dev,
			MTX_OI1_MSB,
			MTX_OFFSET_LEN * 2,
			&buf[0]);
	if (ret < 0)
		return ret;

	return 0;
}

/**
 * @brief	Set Matrix Output Offset
 *
 * @param	dev:	TDA998x device structure pointer
 * @param	offset:	Matrix offset data structure pointer
 * @return	0 on success, non-zero error status otherwise
 */
static int
tda998x_mtx_set_outoffset(struct tda998x_dev *dev, struct mtx_offset *offset)
{
	int i, ret;
	uint8_t buf[MTX_OFFSET_LEN * 2];
  
	if (dev == NULL)
		return ERR_NULL_PARAM;
 
	for (i = 0; i < MTX_OFFSET_LEN; i++) {
		buf[i * 2] = (uint8_t) (((uint16_t) offset->offset[i] & 0x0700) >> 8);
		buf[(i * 2) + 1] = (uint8_t) ((uint16_t) offset->offset[i] & 0x00FF);
	}
  
	ret = tda998x_write(dev,
			MTX_OO1_MSB,
			MTX_OFFSET_LEN * 2,
			&buf[0]);
	if (ret < 0)
		return ret;

	return 0;
}

/**
 * @brief	Set Matrix Mode
 *
 * @param	dev:	TDA998x device structure pointer
 * @param	bp:	Matrix bypass selection
 * @param	sc:	Matrix scaler selection
 * @return	0 on success, non-zero error status otherwise
 */
static int
tda998x_mtx_set_mode(struct tda998x_dev *dev,
		enum mtx_cntrl_bp bp,
		enum mtx_cntrl_scale sc)
{
	int ret;

	ret = write_reg_mask(dev,
			MTX_CNTRL,
			MTX_CNTRL_MTX_BP | MTX_CNTRL_MTX_SC,
			(uint8_t) bp | (uint8_t) sc);
	if (ret < 0)
		return ret;

	return 0;
}
/**
 * @}
 */

/**
 * @brief	Set Audio Clock Packet Recovery
 */
static int
tda998x_set_aud_pkt_enable(struct tda998x_dev *dev, bool en)
{
	if (dev->sink != SINK_HDMI)
		return ERR_NOT_PERMITTED;
 
	return write_reg_mask(dev,
			DIP_FLAGS,
			DIP_FLAGS_ACR,
			en ? DIP_FLAGS_ACR : 0);
}

/**
 * @brief
 */
static int
tda998x_set_pkt_acp(struct tda998x_dev *dev,
		struct tda998x_pkt *pkt,
		unsigned int len,
		uint8_t uAcpType,
		bool en)
{
	int ret;
	uint8_t buf[3];			/* Temp buffer to hold header bytes */
 
	if (dev->sink != SINK_HDMI)
		return ERR_NOT_PERMITTED;
    
//	if (pkt != Null) {

		/* Data to change, start by clearing ACP packet insertion flag */
		ret = write_reg_mask(dev,
				DIP_FLAGS,
				DIP_FLAGS_ACP,
				0x00);
		if (ret < 0)
			return ret;
 
		buf[0] = 0x04;
		buf[1] = uAcpType;
		buf[2] = 0;
 
		ret = tda998x_write(dev, ACP_HB0, 3, &buf[0]);
		if (ret < 0)
			return ret;
    
		ret = tda998x_write(dev, ACP_PB0, len, &pkt->data[0]);
		if (ret < 0)
			return ret;
    
//	}
  
	ret = write_reg_mask(dev, DIP_FLAGS, DIP_FLAGS_ACP, en ? DIP_FLAGS_ACP : 0);
	if (ret < 0)
		return ret;
  
	return 0;
}

/**
 * @brief	Set Audio Infoframe Packet
 *
 * @param	dev:	TDA998x device structure pointer
 * @param	pkt:	Audio infoframe packet structure pointer
 * @param	en:	Enable infoframe insertion
 * @return	0 on success, non-zero error status otherwise
 */
static int
tda998x_aud_set_pkt_infoframe(struct tda998x_dev *dev,
		struct tda998x_aud_if_pkt *pkt,
		bool en)
{
	int ret;
	uint8_t buf[9];			/* Temp buffer to hold header/packet bytes */
	uint16_t buf_reg;		/* Base register used for writing InfoFrame */
	uint16_t flag_reg;		/* Flag register to be used */
	uint8_t flag_mask;		/* Mask used for writing flag register */
  
	if (dev->sink != SINK_HDMI)
		return ERR_NOT_PERMITTED;
    
	buf_reg = IF4_HB0;
	flag_reg = DIP_IF_FLAGS;
	flag_mask = DIP_IF_FLAGS_IF4;
 
//	if (pkt != Null) {
		/* Data to change, start by clearing AIF packet insertion flag */
		ret = write_reg_mask(dev, flag_reg, flag_mask, 0);
		if (ret < 0)
			return ret;
 
		/* Prepare AIF header */
		buf[0] = 0x84;		/* Audio InfoFrame */
		buf[1] = 0x01;		/* Version 1 [HDMI 1.2] */
		buf[2] = 0x0A;		/* Length [HDMI 1.2] */
 
		/* Prepare AIF packet (byte numbers offset by 3) */
		buf[3] = 0;		/* Preset checksum to zero */
    
		buf[4] = ((pkt->type & 0x0F) << 4) |
				(pkt->nchan & 0x07);	/* CT3-0, CC2-0 */
    
		buf[5] = ((pkt->samp_freq & 0x07) << 2) |
				(pkt->samp_size & 0x03);	/* SF2-0, SS1-0 */
    
		buf[6] = 0;			/* [HDMI 1.2] */
		buf[7] = pkt->chan_alloc;	/* CA7-0 */
		buf[8] = ((pkt->lvl_shift & 0x0F) << 3);	/* LS3-0 */
    
		if (pkt->dmix_inhib)
			buf[8] |= (1 << 7);
 
		/* Calculate checksum - this is worked out on "Length" bytes of the
		 * packet, the checksum (which we've preset to zero), and the three
		 * header bytes.  We exclude bytes PB6 to PB10 (which we
		 * are not writing) since they are zero.
		 */
		buf[3] = chksum(&buf[0], 9);
    
 
		/* Write header and packet bytes in one operation */
		ret = tda998x_write(dev, buf_reg, 9, &buf[0]);
		if (ret < 0)
			return ret;
//	}
 
	/* Write AIF packet insertion flag */
	ret = write_reg_mask(dev,
			flag_reg,
			flag_mask,
			(uint8_t) en);
  
	return ret;
}

static int
tda998x_PktSetGeneralCntrl(struct tda998x_dev *dev,
		bool mute,
		bool en)
{
	int ret;
 
	if (dev->sink != SINK_HDMI)
		return ERR_NOT_PERMITTED;
    
	ret = write_reg(dev, GC_AVMUTE, mute ? 0x02 : 0x01);
	if (ret < 0)
		return ret;
 
	/* Set or clear GC packet insertion flag */
	ret = write_reg_mask(dev,
			DIP_FLAGS,
			DIP_FLAGS_GC,
			en ? DIP_FLAGS_GC : 0);
	if (ret < 0)
		return ret;

	return 0;
}

static int
tda998x_PktSetIsrc1(struct tda998x_dev *dev,
		struct tda998x_pkt *pkt,
		unsigned int len,
		bool bIsrcCont,
		bool bIsrcValid,
		uint8_t uIsrcStatus,
		bool en)
{
	int ret;
	uint8_t buf[3];
 
	/* Return ERR_NOT_PERMITTED error if the
	 * sinkType is not HDMI
	 */
	if (dev->sink != SINK_HDMI)
		return ERR_NOT_PERMITTED;

		/* Data to change, start by clearing ISRC1 packet insertion flag */
		ret = write_reg_mask(dev,
				DIP_FLAGS,
				DIP_FLAGS_ISRC1,
				0);
		if (ret < 0)
			return ret;
    
		/* Prepare ISRC1 header */
		buf[0] = 0x05;		/* ISRC1 packet */
		buf[1] = (uIsrcStatus & 0x07);

		if (bIsrcValid)
			buf[1] |= (1 << 6);
    
		if (bIsrcCont)
			buf[1] |= (1 << 7);
    
		buf[2] = 0;		/* Reserved [HDMI 1.2] */
    
		/* Write 3 header bytes to registers */
		ret = tda998x_write(dev, ISRC1_HB0, 3, &buf[0]);
		if (ret < 0)
			return ret;
 
		/* Write "len" bytes of data to registers */
		ret = tda998x_write(dev, ISRC1_PB0, len, &pkt->data[0]);
		if (ret < 0)
			return ret;
//	}
 
	/* Write the ISRC1 packet insertion flag */
	ret = write_reg_mask(dev,
			DIP_FLAGS,
			DIP_FLAGS_ISRC1,
			en ? DIP_FLAGS_ISRC1 : 0);
	if (ret < 0)
		return ret;

	return 0;
}

static int
tda998x_PktSetIsrc2(struct tda998x_dev *dev,
		struct tda998x_pkt *pkt,
		unsigned int len,
		bool en)
{
	int ret;
	uint8_t buf[3];
 
	if (dev->sink != SINK_HDMI)
		return ERR_NOT_PERMITTED;

	if (pkt != NULL) {
		/* Data to change, start by clearing ISRC2 packet insertion flag */
		ret = write_reg_mask(dev,
				DIP_FLAGS,
				DIP_FLAGS_ISRC2,
				0);
		if (ret < 0)
			return ret;

		/* Prepare ISRC2 header */
		buf[0] = 0x06;		/* ISRC2 packet */
		buf[1] = 0;		/* Reserved [HDMI 1.2] */
		buf[2] = 0;		/* Reserved [HDMI 1.2] */

		/* Write 3 header bytes to registers */
		ret = tda998x_write(dev, ISRC2_HB0, 3, &buf[0]);
		if (ret < 0)
			return ret;

		ret = tda998x_write(dev, ISRC2_PB0, len, &pkt->data[0]);
		if (ret < 0)
			return ret;
	}
  
	/* Write the ISRC2 packet insertion flag */
	ret = write_reg_mask(dev,
			DIP_FLAGS,
			DIP_FLAGS_ISRC2,
			en ? DIP_FLAGS_ISRC2 : 0);
  
	return ret;
}

static int
tda998x_PktSetMpegInfoframe(struct tda998x_dev *dev,
		struct tda998x_mpeg_pkt *pkt,
		bool en)
{
	int ret;
	uint8_t buf[9];

	if (dev->sink != SINK_HDMI)
		return ERR_NOT_PERMITTED;
    
	if (pkt != NULL) {
		/* Data to change, start by clearing MPEG packet insertion flag */
		ret = write_reg_mask(dev, DIP_IF_FLAGS, DIP_IF_FLAGS_IF5, 0);
		if (ret < 0)
			return ret;
 
		/* Prepare MPEG header */
		buf[0] = 0x85;		/* MPEG Source InfoFrame */
		buf[1] = 0x01;		/* Version 1 [HDMI 1.2] */
		buf[2] = 0x0A;		/* Length [HDMI 1.2] */

		/* Prepare MPEG packet (byte numbers offset by 3) */
		buf[3] = 0;		/* Preset checksum to zero */
		buf[4] = (uint8_t) (pkt->bitrate & 0x000000FF);
		buf[5] = (uint8_t) ((pkt->bitrate & 0x0000FF00) >> 8);
		buf[6] = (uint8_t) ((pkt->bitrate & 0x00FF0000) >> 16);
		buf[7] = (uint8_t) ((pkt->bitrate & 0xFF000000) >> 24);
		buf[8] = pkt->frame;	/* MF1-0 */
    
		if (pkt->repeat) {
			buf[8] += 0x10;	/* FR0 bit */
		}

		buf[4] = chksum(&buf[0], 9);
 
		/* Write header and packet bytes in one operation */
		ret = tda998x_write(dev, IF5_HB0, 9, &buf[0]);
		if (ret < 0)
			return ret;
	}

	/* Write the MPEG packet insertion flag */
	ret = write_reg_mask(dev,
			DIP_IF_FLAGS,
			DIP_IF_FLAGS_IF5,
			en ? DIP_IF_FLAGS_IF5 : 0);

	return ret;
}


/**
 * @brief	Set Null Packet Insertion
 *
 * @param	dev:	TDA998x device structure pointer
 * @param	en:	Set or clear null packet insertion
 * @return	0 on success, non-zero error status otherwise
 */
static int
tda998x_pkt_set_null_insert(struct tda998x_dev *dev, bool en)
{
	int ret;
	if (dev->sink != SINK_HDMI)
		return ERR_NOT_PERMITTED;
 
	/* Set or clear FORCE_NULL packet insertion flag */
	ret = write_reg_mask(dev,
			DIP_FLAGS,
			DIP_FLAGS_FORCE_NULL,
			en ? DIP_FLAGS_FORCE_NULL : 0);
	if (ret < 0)
		return ret;
  
	return 0;
}

static int
tda998x_pkt_set_null(struct tda998x_dev *dev)
{
	int ret;

	if (dev->sink != SINK_HDMI)
		return ERR_NOT_PERMITTED;

	/* Set NULL packet insertion flag */
	ret = write_reg_mask(dev,
			DIP_FLAGS,
			DIP_FLAGS_NULL,
			DIP_FLAGS_NULL);
	if (ret < 0)
		return ret;
  
	return 0;
}

/**
 * @brief	Set Source Product Description Infoframe
 */
static int
tda998x_pkg_set_spdinfo(struct tda998x_dev *dev,
		struct tda998x_spd_pkt *pkt,
		bool en)
{
	int ret;
	uint8_t buf[29];
  
	if (dev->sink != SINK_HDMI)
		return ERR_NOT_PERMITTED;
    
	if (pkt != NULL) {
		/* Data to change, start by clearing SPD packet insertion flag */
		ret = write_reg_mask(dev,
				DIP_IF_FLAGS,
				DIP_IF_FLAGS_IF3,
				0);
		if (ret < 0)
			return ret;
 
		buf[0] = 0x83;		/* Source. Product Descriptor InfoFrame */
		buf[1] = 0x01;		/* Version 1 [CEA 861B] */
		buf[2] = 0x19;		/* Length [HDMI 1.2] */
		buf[3] = 0;		/* Preset checksum to zero */
    
		memcpy(&buf[4], &pkt->vname[0], 8);	/* Copy vendor name */
		memcpy(&buf[12], &pkt->desc[0], 16);	/* Copy device description */
    
		buf[28] = pkt->dev_info;
    
		buf[3] = chksum(&buf[0], 29);
    
		/* Write header and packet bytes in one operation */
		ret = tda998x_write(dev,
				IF3_HB0,
				29,
				&buf[0]);
		if (ret < 0)
			return ret;
	}
 
	ret = write_reg_mask(dev,
			DIP_IF_FLAGS,
			DIP_IF_FLAGS_IF3,
			en ? DIP_IF_FLAGS_IF3 : 0);
  
	return ret;
}

static int
tda998x_pkt_set_raw_vid_infoframe(struct tda998x_dev *dev,
		struct tda998x_pkt *pkt,
		bool en)
{
	int ret;
  
	if (dev->sink != SINK_HDMI)
		return ERR_NOT_PERMITTED;
 
	if (pkt != NULL) {
		ret = write_reg_mask(dev,
				DIP_IF_FLAGS,
				DIP_IF_FLAGS_IF2,
				0);
		if (ret < 0)
			return ret;
    
		ret = tda998x_write(dev, IF2_HB0, 3, &pkt->header[0]);
		if (ret < 0)
			return ret;
    
		ret = tda998x_write(dev,
				IF2_PB0,
				28,
				&pkt->data[0]);
		if (ret < 0)
			return ret;
	}
  
	ret = write_reg_mask(dev,
			DIP_IF_FLAGS,
			DIP_IF_FLAGS_IF2,
			en ? DIP_IF_FLAGS_IF2 : 0);
	if (ret < 0)
		return ret;
 
	return 0;
}

static int
tda998x_pkt_set_vs_infoframe(struct tda998x_dev *dev,
		struct tda998x_pkt *pkt,
		unsigned int len,
		uint8_t version,
		bool en)
{
	int ret;
	uint8_t buf[31];

	if (dev->sink != SINK_HDMI)
		return ERR_NOT_PERMITTED;
    
	if (pkt != NULL) {
		ret = write_reg_mask(dev, DIP_IF_FLAGS, DIP_IF_FLAGS_IF1, 0);
		if (ret < 0)
			return ret;
 
		/* Prepare VS_IF header */
		memset(&buf[0], 0, 31);
		buf[0] = 0x81;			/* Vendor Specific InfoFrame */
		buf[1] = version;		/* Vendor defined version */
		buf[2] = (uint8_t) len;		/* Length [HDMI 1.2] */

		/* Prepare VS_IF packet (byte numbers offset by 3) */
		buf[4] = 0;		/* Preset checksum to zero */
		memcpy(&buf[4], &pkt->data[0], len);
 
		buf[4] = chksum(&buf[0], len + 4);
 
		ret = tda998x_write(dev, IF1_HB0, 31, &buf[0]);
		if (ret < 0)
			return ret;
	}
  
	ret = write_reg_mask(dev,
			DIP_IF_FLAGS,
			DIP_IF_FLAGS_IF1,
			en ? DIP_IF_FLAGS_IF1 : 0);
  
	return ret;
}


static int
tda998x_set_pix_edge(struct tda998x_dev *dev, enum vip_cntrl_3_edge edge)
{
	int ret;

	ret = write_reg_mask(dev,
			VIP_CNTRL_3,
			VIP_CNTRL_3_EDGE,
			(uint8_t) edge);
	if (ret < 0)
		return ret;

	return 0;
}

/**
 * @brief	Configure Video Input
 *
 * @param	dev:	TDA998x device structure pointer
 * @return	0 on success, non-zero error status otherwise
 */
static int
input_config(struct tda998x_dev *dev,
		enum tda998x_vidin_mode vin_mode,
		enum vip_cntrl_3_edge edge,
		enum tda998x_pix_rate pix_rate,
		enum tda998x_upsample upsample_mode,
		uint8_t pix_rpt,
		enum tda998x_vid_fmt vout_fmt,
		enum tda998x_format_3d format_3d)
{
	int ret = 0;
	uint8_t reg_idx, reg_idx3D;	/* Video format value used for register */
	uint8_t ssd = 0;		/* Packed srl, scg and de */
	struct tda998x_vidin_cfg *vidin_cfg;
	const struct vidfmt_desc *desc;

	/* Check parameters */
	if (dev == NULL)
		return ERR_NULL_PARAM;

	desc = get_vidfmt_desc(vout_fmt);
	if (desc == NULL)
		return ERR_NOT_FOUND;

	ret = write_reg_mask(dev,
			VIP_CNTRL_3,
			VIP_CNTRL_3_EDGE,
			(uint8_t) edge);
	if (ret < 0)
		return ret;

	vidin_cfg->pix_rate = pix_rate;

	switch (vidin_cfg->mode) {
	case VINMODE_RGB444:
	case VINMODE_YUV444:
		if ((vidin_cfg->pix_rate == PIXRATE_SINGLE) ||
				(vidin_cfg->pix_rate == PIXRATE_SINGLE_REPEATED)) {
			ret = write_reg_mask(dev, VIP_CNTRL_4, VIP_CNTRL_4_CCIR656, 0);
			if (ret < 0)
				return ret;

			ret = write_reg_mask(dev, HVF_CNTRL_1, HVF_CNTRL_1_SEMI_PLANAR, 0);
			if (ret < 0)
				return ret;

			ret = write_reg_mask(dev, PLL_SERIAL_3, PLL_SERIAL_3_SRL_CCIR, 0);
			if (ret < 0)
				return ret;

			ret = write_reg_mask(dev, SEL_CLK, SEL_CLK_SEL_VRF_CLK_MASK, 0);
			if (ret < 0)
				return ret;

			ret = write_reg_mask(dev, VIP_CNTRL_4, VIP_CNTRL_4_656_ALT, 0);
			if (ret < 0)
				return ret;
		} else {
			return ERR_BAD_PARAM;
		}
		break;

	case VINMODE_YUV422:
		if ((vidin_cfg->pix_rate == PIXRATE_SINGLE) ||
				(vidin_cfg->pix_rate == PIXRATE_SINGLE_REPEATED)) {
			ret = write_reg_mask(dev, VIP_CNTRL_4, VIP_CNTRL_4_CCIR656, 0);
			if (ret < 0)
				return ret;

			ret = write_reg_mask(dev, HVF_CNTRL_1, HVF_CNTRL_1_SEMI_PLANAR, HVF_CNTRL_1_SEMI_PLANAR);
			if (ret < 0)
				return ret;

			ret = write_reg_mask(dev, PLL_SERIAL_3, PLL_SERIAL_3_SRL_CCIR, 0);
			if (ret < 0)
				return ret;

			ret = write_reg_mask(dev, SEL_CLK, SEL_CLK_SEL_VRF_CLK_MASK, 0);
			if (ret < 0)
				return ret;

			ret = write_reg_mask(dev, VIP_CNTRL_4, VIP_CNTRL_4_656_ALT, 0);
			if (ret < 0)
				return ret;
		} else {
			return ERR_BAD_PARAM;
		}
		break;

	case VINMODE_CCIR656:
		if ((vidin_cfg->pix_rate == PIXRATE_SINGLE) ||
				(vidin_cfg->pix_rate == PIXRATE_SINGLE_REPEATED)) {
			ret = write_reg_mask(dev, VIP_CNTRL_4, VIP_CNTRL_4_CCIR656, VIP_CNTRL_4_CCIR656);
			if (ret < 0)
				return ret;

			ret = write_reg_mask(dev, HVF_CNTRL_1, HVF_CNTRL_1_SEMI_PLANAR, HVF_CNTRL_1_SEMI_PLANAR);
			if (ret < 0)
				return ret;

			ret = write_reg_mask(dev, PLL_SERIAL_3, PLL_SERIAL_3_SRL_CCIR, PLL_SERIAL_3_SRL_CCIR);
			if (ret < 0)
				return ret;

			ret = write_reg_mask(dev, SEL_CLK, SEL_CLK_SEL_VRF_CLK_MASK, 0x02);
			if (ret < 0)
				return ret;

			ret = write_reg_mask(dev,
					VIP_CNTRL_4,
					VIP_CNTRL_4_656_ALT,
					0);
			if (ret < 0)
				return ret;
		} else if (vidin_cfg->pix_rate == PIXRATE_DOUBLE) {
			ret = write_reg_mask(dev, VIP_CNTRL_4, VIP_CNTRL_4_CCIR656, VIP_CNTRL_4_CCIR656);
			if (ret < 0)
				return ret;

			ret = write_reg_mask(dev, HVF_CNTRL_1, HVF_CNTRL_1_SEMI_PLANAR, HVF_CNTRL_1_SEMI_PLANAR);
			if (ret < 0)
				return ret;

			ret = write_reg_mask(dev, PLL_SERIAL_3, PLL_SERIAL_3_SRL_CCIR, 0);
			if (ret < 0)
				return ret;

			ret = write_reg_mask(dev, SEL_CLK, SEL_CLK_SEL_VRF_CLK_MASK, 0);
			if (ret < 0)
				return ret;

			ret = write_reg_mask(dev, VIP_CNTRL_4, VIP_CNTRL_4_656_ALT, VIP_CNTRL_4_656_ALT);
			if (ret < 0)
				return ret;
		}
		break;

	default:
		ret = write_reg_mask(dev, VIP_CNTRL_4, VIP_CNTRL_4_CCIR656, 0);
		if (ret < 0)
			return ret;

		ret = write_reg_mask(dev, HVF_CNTRL_1, HVF_CNTRL_1_SEMI_PLANAR, 0);
		if (ret < 0)
			return ret;

		ret = write_reg_mask(dev, PLL_SERIAL_3, PLL_SERIAL_3_SRL_CCIR, 0);
		if (ret < 0)
			return ret;

		ret = write_reg_mask(dev, SEL_CLK, SEL_CLK_SEL_VRF_CLK_MASK, 0);
		if (ret < 0)
			return ret;

		break;
	}

	ret = write_reg_mask(dev,
			PLL_SERIAL_2,
			PLL_SERIAL_2_SRL_NOSC_MASK,
			desc->pll_sc);

	/* Set pixel repetition */
	ret = write_reg_mask(dev,
			PLL_SERIAL_2,
			PLL_SERIAL_2_SRL_PR_MASK,
			desc->pix_rpt);
	if (ret < 0)
		return ret;

	/* Set pixel repetition count for repeater module */
	ret = write_reg(dev, RPT_CNTRL, desc->pix_rpt);
	if (ret < 0)
		return ret;

	ret = write_reg_mask(dev,
			PLL_SERIAL_1,
			PLL_SERIAL_1_SRL_MAN_IZ,
			0);
	if (ret < 0)
		return ret;

	ret = write_reg_mask(dev,
			PLL_SERIAL_3,
			PLL_SERIAL_3_SRL_DE,
			0);
	if (ret < 0)
		return ret;

	ret = write_reg(dev, SERIALIZER, 0);
	if (ret < 0)
		return ret;

	return 0;
}


static int
tda998x_reset(struct tda998x_dev *dev)
{
	int ret;

	/* Reset I2C master and Audio*/
	ret = write_reg_mask(dev,
			SR_REG,
			SR_REG_SR_I2C_MS | SR_REG_SR_AUDIO,
			SR_REG_SR_AUDIO);
	if (ret < 0)
		return ret;

	usleep(1000 * 50);

	ret = write_reg_mask(dev,
			SR_REG,
                        SR_REG_SR_I2C_MS | SR_REG_SR_AUDIO,
                        0);
	if (ret < 0)
		return ret;

	usleep(1000 * 50);

	ret = write_reg_mask(dev,
			MAIN_CNTRL0,
			MAIN_CNTRL0_SR,
			MAIN_CNTRL0_SR);
	if (ret < 0)
		return ret;

	ret = write_reg_mask(dev,
			MAIN_CNTRL0,
			MAIN_CNTRL0_SR,
			0);
	if (ret < 0)
		return ret;

	/* Clear any colorbars */
	ret = write_reg_mask(dev,
			HVF_CNTRL_0,
			HVF_CNTRL_0_SM,
			0);
	if (ret < 0)
		return ret;

	return 0;
}


int
tda998x_init(struct tda998x_dev *dev, struct tda998x_cfg *cfg)
{
	int ret;

	if ((dev == NULL) || (cfg == NULL))
		return ERR_NULL_PARAM;

	dev->cfg = cfg;

	dev->int_level = 0xFF;

	/* Reset ENAMODS */
	ret = cec_write_reg(dev, ENAMODS, 0x40);
	if (ret < 0)
		return ret;

	ret = cec_write_reg_mask(dev,
			ENAMODS,
			ENAMODS_ENA_HDMI | ENAMODS_ENA_RXS | ENAMODS_DIS_FRO,
			ENAMODS_ENA_HDMI | ENAMODS_ENA_RXS);
	if (ret < 0)
		return ret;

	ret = tda998x_reset(dev);
	if (ret < 0)
		return ret;

	ret = write_reg(dev, ANA_GENERAL, 0x09);
	if (ret < 0)
		return ret;

	ret = write_reg(dev, PLL_SERIAL_1, 0x00);
	if (ret < 0)
		return ret;

	ret = write_reg(dev, PLL_SERIAL_2, 0x01);
	if (ret < 0)
		return ret;

	ret = write_reg(dev, PLL_SERIAL_3, 0x00);
	if (ret < 0)
		return ret;

	ret = write_reg(dev, SERIALIZER, 0x00);
	if (ret < 0)
		return ret;

	ret = write_reg(dev, PLL_SCG1, 0x00);
	if (ret < 0)
		return ret;

	ret = write_reg(dev, AUDIO_DIV, 0x03);
	if (ret < 0)
		return ret;

	ret = write_reg(dev, SEL_CLK, 0x09);
	if (ret < 0)
		return ret;

	ret = write_reg_mask(dev, VIP_CNTRL_4, VIP_CNTRL_4_656_ALT, 0);
	if (ret < 0)
		return ret;

	ret = write_reg(dev, PLL_SCGN1, 0xFA);
	if (ret < 0)
		return ret;

	ret = write_reg(dev, PLL_SCGN2, 0x00);
	if (ret < 0)
		return ret;

	ret = write_reg(dev, PLL_SCGR1, 0x5B);
	if (ret < 0)
		return ret;

	ret = write_reg(dev, PLL_SCGR2, 0x00);
	if (ret < 0)
		return ret;

	ret = write_reg(dev, PLL_SCG2, 0x10);
	if (ret < 0)
		return ret;

	ret = write_reg(dev, DDC_DISABLE, 0x00);
	if (ret < 0)
		return ret;

	/* Set clock speed of the DDC channel */
	ret = write_reg(dev, OTP_TX3, 39);		// TDA19989_DDC_SPEED_FACTOR
	if (ret < 0)
		return ret;

	ret = cec_write_reg(dev, FRO_IM_CLK_CTRL, FRO_IM_CLK_CTRL_GHOST_DIS | FRO_IM_CLK_CTRL_IMCLK_SEL);
	if (ret < 0)
		return ret;

	/*Write data in RXSHPD Register*/
	ret = cec_write_reg_mask(dev,
			RXSHPDINTENA,
			RXSHPDINTENA_ENA_RXS_INT | RXSHPDINTENA_ENA_HPD_INT,
			RXSHPDINTENA_ENA_RXS_INT | RXSHPDINTENA_ENA_HPD_INT);
	if (ret < 0)
		return ret;

	dev->state = TDA998X_STATE_ON;

	return 0;
}

/**
 * @brief	Set Input and Output
 *
 * @param	dev:		TDA998x device structure pointer
 * @param	vidin_cfg:	Video input configuration structure pointer
 * @param	vidout_cfg:	Video output configuration structure pointer
 * @param	audin_cfg:	Audio input configuration structure pointer
 * @return	0 on success, non-zero error status otherwise
 */
int
tda998x_set_input_output(struct tda998x_dev *dev,
		struct tda998x_vidin_cfg *vidin_cfg,
		struct tda998x_vidout_cfg *vidout_cfg,
		struct tda998x_audin_cfg *audin_cfg,
		enum tda998x_sink sink)
{
	int ret;
	uint8_t pix_rpt;				/**< Pixel repetition */
	enum tda998x_dwidth dwidth;			/**< Data path bit width */
	enum vip_cntrl_3_edge pix_edge;			/**< Pixel sampling edge */
	enum tbg_cntrl_0_sync_mthd sync_mthd;		/**< Sync method */
	enum tda998x_pix_tgl toggle;			/**< Toggling */
	uint8_t sync;					/**< Embedded or external */
	enum vip_cntrl_3_sp_sync sp_sync;		/**< Subpacket synchronization */
	enum vip_cntrl_4_blnkit blankit;		/**< Blanking source */
	uint16_t ref_pix;
	uint16_t ref_line;
	const struct vidfmt_desc *desc;

	const enum vip_cntrl_swap *swap = NULL;
	const enum vip_cntrl_mirr *mirr = NULL;

//	if (sink == SINK_EDID) {
//		/* Change sink type with the currently defined in EDID */
//		ret = tda998x_edid_get_sinktype(dev, &sinktype);
//		if (ret < 0)
//			return ret;
//	}

	desc = get_vidfmt_desc(vidout_cfg->format);
	if (desc == NULL)
		return ERR_NOT_FOUND;

	/* Pixel repetition for DVI not allowed */
	if (sink == SINK_DVI) {
		if (((vidout_cfg->format >= VFMT_06_720x480i_60Hz) && (vidout_cfg->format <= VFMT_15_1440x480p_60Hz)) ||
				((vidout_cfg->format >= VFMT_21_720x576i_50Hz) && (vidout_cfg->format <= VFMT_30_1440x576p_50Hz)) ||
				((vidout_cfg->format >= VFMT_35_2880x480p_60Hz)&& (vidout_cfg->format <= VFMT_38_2880x576p_50Hz)))
			return ERR_BAD_PARAM;
	}

	/* Set the TMDS outputs to a forced state */
	ret = tda998x_set_tmds_output(dev, TMDSOUT_FORCED0);
	if (ret < 0)
		return ret;

	dev->vin_cfg = vidin_cfg;
	dev->vout_cfg = vidout_cfg;

	/* Set video output configuration */
	ret = tda998x_vidout_set_config(dev, sink, vidout_cfg->mode, PREFIL_OFF, YUVBLK_16, QRANGE_FS);
	if (ret < 0)
		return ret;

	/* Default config */
	pix_rpt = PIXREP_DEFAULT;
	dwidth = VOUT_DBITS_12;
	pix_edge = PIXEDGE_CLK_POS;
	sync_mthd = SYNCMTHD_V_XDE;
	toggle = PIXTOGL_ENABLE;

	/* Set sync details */
	if (vidin_cfg->sync_src == SYNCSRC_EMBEDDED) {
		sync = 1;			        /* Embedded sync */
		sp_sync = SPSYNC_HEMB;
		blankit = BLNKSRC_VS_HEMB_VEMB;
		sync_mthd = SYNCMTHD_V_XDE;
	} else {
		sync = 0;				/* External sync */

		/* DE is available */
		sp_sync = SPSYNC_RISING_DE;
		blankit = BLNKSRC_NOT_DE;
	}

	/* Port swap table */
	switch(vidin_cfg->mode) {
//	case VINMODE_CCIR656:
//		dwidth = VOUT_DBITS_8;
//		pix_edge = PIXEDGE_CLK_NEG;
//		swap = port_map_ccir656;
//		mirr = mirr_map_ccir656;
//		break;

	case VINMODE_RGB444:
		swap = port_map_rgb444;
		mirr = mirr_map_rgb444;
		break;

//	case VINMODE_YUV444:
//		swap = port_map_yuv444;
//		mirr = mirr_map_yuv444;
//		break;

//	case VINMODE_YUV422:
//		swap = port_map_yuv422;
//		mirr = mirr_map_yuv422;
//		break;

	default:
		return ERR_BAD_PARAM;
	}

	/* Set the audio and video input port configuration */
	ret = tda998x_vidin_set_port_enable(dev);
	if (ret < 0)
		return ret;

	ret = tda998x_vidin_set_mapping(dev, swap, mirr);
	if (ret < 0)
		return ret;

	ret = tda998x_vidin_set_fine(dev, sp_sync, 0, TGLCLK_HIGH);
	if (ret < 0)
		return ret;

	/* Set input blanking */
	ret = tda998x_vidin_set_blanking(dev, blankit, BLNKCODE_RGB444);
	if (ret < 0)
		return ret;

	ret = tda998x_vidin_set_config(dev,
		    vidin_cfg->mode,
		    vidout_cfg->format,
		    vidin_cfg->format_3d,
		    pix_edge,
		    vidin_cfg->pix_rate,
		    UPSAMPLE_AUTO);
	if (ret < 0)
		return ret;

	/* Set input output */
	ret = tda998x_video_set_inout(dev,
		    vidin_cfg->format,
		    vidin_cfg->format_3d,
		    SCALER_MODE_AUTO,
		    vidout_cfg->format,
		    0,
		    MTX_MODE_AUTO,
		    dwidth,
		    vidout_cfg->vqr);
	if (ret < 0)
		return ret;

	/* Only set audio for HDMI, not DVI */
	if (sink == SINK_HDMI) {
		/* Set audio parameters */
		ret = tda998x_aud_set_input(dev, audin_cfg);
		if (ret < 0)
			return ret;
	}

	if (sync == 0) {
		/* External synchronization */
		switch (vidin_cfg->format) {
		case VFMT_04_1280x720p_60Hz:
		case VFMT_19_1280x720p_50Hz:
		case VFMT_05_1920x1080i_60Hz:
		case VFMT_20_1920x1080i_50Hz:
			if ((vidout_cfg->format == VFMT_16_1920x1080p_60Hz) ||
				    (vidout_cfg->format == VFMT_31_1920x1080p_50Hz)) {
			    toggle = PIXTOGL_NO_ACTION;
			}
			break;
		default:
			toggle = PIXTOGL_ENABLE;
			break;
		}
	}

	/**
	 * @todo BEGIN VIDO INPUT SYNCHRONIZATION
	 */
	ret = write_reg_mask(dev,
			VIP_CNTRL_3,
			VIP_CNTRL_3_EMB,
			(uint8_t) vidin_cfg->sync_src);
	if (ret < 0)
		return ret;

	ret = write_reg_mask(dev,
			TBG_CNTRL_0,
			TBG_CNTRL_0_SYNC_MTHD,
			(uint8_t) sync_mthd);
	if (ret < 0)
		return ret;

	/* Toggle DE */
	ret = write_reg_mask(dev,
			VIP_CNTRL_3,
			VIP_CNTRL_3_V_TGL | VIP_CNTRL_3_H_TGL | VIP_CNTRL_3_X_TGL,
			VIP_CNTRL_3_X_TGL);
	if (ret < 0)
		return ret;

	if (desc->reg_fmt >= VIDFORMAT_800x600p_60Hz) {
		set_video_config(dev, &vidformat_pc[desc->reg_fmt - VIDFORMAT_800x600p_60Hz]);
	}

	ref_pix = desc->hfp + 2;
	ref_line = desc->vfp;

	if ((ref_pix >= REFPIX_MIN) &&
			(ref_pix <= REFPIX_MAX)) {
		ret = write_reg16(dev, REFPIX_MSB, ref_pix);
		if (ret < 0)
			return ret;
	}

	if ((ref_line >= REFLINE_MIN) &&
			(ref_line <= REFLINE_MAX)) {
		ret = write_reg16(dev, REFLINE_MSB, ref_line);
		if (ret < 0)
			return ret;
	}

//	ret = tda998x_vidin_set_sync(dev,
//				vidin_cfg->sync_src,
//				sync_mthd,
//				false,
//				false,
//				true,
//				ref_pix,
//				ref_line);
//	if (ret < 0)
//		return ret;

//	toggle = HDMITX_PIXTOGL_ENABLE;
//	ref_pix = 0;
//	ref_line = 0;
//	sync_mthd = 0;

		/* Not found so assume non-scaler and auto-configure input */
//	ret = tda998x_vidin_set_sync_auto(dev,
//				vidin_cfg->sync_src,
//				vidin_cfg->format,
//				vidin_cfg->mode,
//				vidin_cfg->format_3d);
//	if (ret < 0)
//		return ret;

	/* Set infoframes for HDMI only */
//	if (sink == SINK_HDMI) {
//		/* Set infoframe */
//		ret = tda998x_vidout_set_infofram(dev, vidout_cfg->format, vidout_cfg->mode);
//		if (ret < 0)
//			return ret;
//	}

	/* Set video synchronization */
	ret = tda998x_vidout_set_sync(dev,
			VS_SRC_INTERNAL,
			VS_SRC_INTERNAL,
			VS_SRC_INTERNAL,
			VS_TGL_TABLE,
			SYNC_EACH_FRAME);
	if (ret < 0)
		return ret;

	return 0;
}
/**
 * @}
 */

int
hot_plug_restore(struct tda998x_dev *dev)
{
	int ret;

	/* Set the BIAS_tmds Value */
	ret = write_reg(dev, ANA_GENERAL, 0x09);
	if (ret < 0)
		return ret;

	ret = write_reg(dev, PLL_SERIAL_1, 0x00);
	if (ret < 0)
		return ret;

	ret = write_reg(dev, PLL_SERIAL_2, 0x01);
	if (ret < 0)
		return ret;

	ret = write_reg(dev, PLL_SERIAL_3, 0x00);
	if (ret < 0)
		return ret;

	ret = write_reg(dev, SERIALIZER, 0x00);
	if (ret < 0)
		return ret;

	ret = write_reg(dev, PLL_SCG1, 0x00);
	if (ret < 0)
		return ret;

	ret = write_reg(dev, AUDIO_DIV, 0x03);
	if (ret < 0)
		return ret;

	ret = write_reg(dev, SEL_CLK, 0x09);
	if (ret < 0)
		return ret;

	/*Reset 656_Alt bit in VIP_CONTROL_4 Register*/
	ret = write_reg_mask(dev, VIP_CNTRL_4, VIP_CNTRL_4_656_ALT, 0);
	if (ret < 0)
		return ret;

	/* DDC interface is disable for TDA9989 after reset, enable it */
	ret = write_reg(dev, DDC_DISABLE, 0x00);
	if (ret < 0)
		return ret;

	ret = write_reg(dev, OTP_TX3, 0x27);
	if (ret < 0)
		return ret;

	ret = cec_write_reg(dev, FRO_IM_CLK_CTRL, FRO_IM_CLK_CTRL_GHOST_DIS | FRO_IM_CLK_CTRL_IMCLK_SEL);
	if (ret < 0)
		return ret;

	/* enable sw_interrupt for debug */
	ret = write_reg(dev, INT_FLAGS_1, INT_FLAGS_1_SW_INT);
	if (ret < 0)
		return ret;

	/* enable edid read */
	ret = write_reg(dev, INT_FLAGS_2, INT_FLAGS_2_EDID_BLK_RD);
	if (ret < 0)
	    return ret;

	ret = cec_write_reg_mask(dev,
			RXSHPDINTENA,
			RXSHPDINTENA_ENA_RXS_INT | RXSHPDINTENA_ENA_HPD_INT,
			RXSHPDINTENA_ENA_RXS_INT | RXSHPDINTENA_ENA_HPD_INT);
	if (ret < 0)
		return ret;

	ret = cec_read_reg(dev, RXSHPDLEV, &dev->int_level);
	if (ret < 0)
		return ret;

	//    setState(pDis, EV_INIT);

	return 0;
}


int
tda998x_handle_interrupt(struct tda998x_dev *dev)
{
	int ret;
	uint8_t reg_val[2];
	uint8_t int_flags[4];			/* Interrupt flags */
	uint16_t int_status;
	uint16_t fInterruptMask;		/* Mask to test each interrupt bit */
//	tmbslHdmiTxRxSense_t newRxs_fil;	/* Latest copy of rx_sense */
	int i;
//	tmbslHdmiTxHotPlug_t newHpdIn;
	bool sendEdidCallback = false;
	bool hpdOrRxsLevelHasChanged = false;
	static bool gMiscInterruptHpdRxEnable = false;

	if (dev == NULL)
		return ERR_NULL_PARAM;

	int_status = 0;

	/* Read hotplug detect and RX sense interrupt status */
	ret = cec_read_reg(dev, RXSHPDINT, &reg_val[0]);
	if (ret < 0)
		return ret;

	if (reg_val[0] & (RXSHPDINT_HPD_INT | RXSHPDINT_RXS_INT))
		DEBUG_PRINT("RXSHPDINT: %02x", reg_val[0]);

	/* Read hotplug detect and RX sense level */
	ret = cec_read_reg(dev, RXSHPDLEV, &reg_val[1]);
	if (ret < 0)
		return ret;

//	DEBUG_PRINT("RXSHPDINT: %02x  RXSHPDLEV: %02x", reg_val[0], reg_val[1]);

//	if (dev->int_level != 0xFF) {

		/* Init should be done check multi-transition */
		if (reg_val[0] == 0) {
//			&& (dev->int_level != reg_val[1])) {

			/* Reset RX sense and hotplug detect interrupts */
			ret = cec_write_reg(dev, RXSHPDINTENA, 0x00);
			if (ret < 0)
				return ret;

			ret = cec_write_reg(dev,
					RXSHPDINTENA,
					RXSHPDINTENA_ENA_RXS_INT | RXSHPDINTENA_ENA_HPD_INT);
			if (ret < 0)
				return ret;

			ret = cec_read_reg(dev, RXSHPDLEV, &reg_val[1]);
			if (ret < 0)
				return ret;

		} else {
//			if ((reg_val[0] != 0) && (dev->int_level == reg_val[1])) {

			/* At least one IT has been lost */
			if (reg_val[0] & RXSHPDINT_HPD_INT) {

				/* Handle the state machine for new hotplug detect interrupt */
				if (dev->callback[CALLBACK_HPD])
					dev->callback[CALLBACK_HPD](dev);

				/* Signal interrupt to have the second event correctly managed by the rest of the code */
				int_status |= (1 << CALLBACK_HPD);
			}

			if (reg_val[0] & RXSHPDINT_RXS_INT) {

				/* Handle the state machine for new RX sense interrupt */
				if (dev->callback[CALLBACK_RX_SENSE])
					dev->callback[CALLBACK_RX_SENSE](dev);

				/* Signal interrupt to have the second event correctly managed by the rest of the code */
				int_status |= (1 << CALLBACK_RX_SENSE);
			}
		}
//	}

	dev->int_level = reg_val[1];

	/* Read Hot Plug input status to know the actual level that caused the interrupt */
	dev->hotplug_status = (reg_val[1] & RXSHPDLEV_HPD_LEVEL) ? HOTPLUG_ACTIVE : HOTPLUG_INACTIVE;

	/*Read RXS_FIL status to know the actual level that caused the interrupt */
//	newRxs_fil = (reg_val[1] & RXSHPDLEV_RXS_LEVEL) ?
//		 HDMITX_RX_SENSE_ACTIVE : HDMITX_RX_SENSE_INACTIVE;

	/*Fill int_status with HPD Interrupt flag*/
//	if (newHpdIn != dev->hotPlugStatus) {
//		int_status |= (1 << CALLBACK_HPD);

		/* Yes: save new HPD level */
//		dev->hotPlugStatus = newHpdIn;
//		hpdOrRxsLevelHasChanged = True;
//	 }

	/* Fill int_status with RX Sense Interrupt flag */
//	if (newRxs_fil != dev->rxSenseStatus) {
//		int_status |= (1 << CALLBACK_RX_SENSE);

		/* Yes: save new rxSense level */
//		dev->rxSenseStatus = newRxs_fil;
//		hpdOrRxsLevelHasChanged = True;
//	}

	if (dev->state == TDA998X_STATE_ON) {

		/*
		 * Read the main interrupt flags register to determine the source(s)
		 * of the interrupt. (The device resets these register flags after they
		 * have been read.)
		 */
		ret = tda998x_read(dev, INT_FLAGS_0, 3, &int_flags[0]);
		if (ret < 0)
			return ret;

		/* Get TO interrupt Flag*/
		if (int_flags[0] & INT_FLAGS_0_T0) {
			DEBUG_PRINT("INT_FLAGS_0: %02x", reg_val[0]);

			int_status |= (1 << CALLBACK_T0);
		}

		/* Read the software interrupt flag */
		if (reg_val[1] & INT_FLAGS_1_SW_INT) {
			int_status |= (1 << CALLBACK_SW_INT);
		}

		if (reg_val[1] & INT_FLAGS_1_VS_RPT) {
			int_status |= (1 << CALLBACK_VS_RPT);
		}

		/* Has the EDID block read interrupt occurred? */
		if (reg_val[2] & INT_FLAGS_2_EDID_BLK_RD) {
			DEBUG_PRINT("INT_FLAGS_2: %02x", reg_val[2]);

			int_status |= (1 << CALLBACK_EDID_BLK_READ);
		}
	}

	/* Hot plug detect interrupt */
	if (int_status & (1 << CALLBACK_HPD)) {

		/* Callback disable on first tmbslTDA9989HwHandleInterrupt call */
		if (gMiscInterruptHpdRxEnable) {
			/* Reset EDID status */
			ret = clear_edid_request(dev);
			if (ret < 0)
				return ret;

			/*
			 * Reset all simultaneous HDCP interrupts on hot plug,
			 * preserving only the high-priority hpd interrupt
			 * rx_sense and sw interrupt for debug
			 */
			int_status &= ((1 << CALLBACK_HPD) |
						(1 << CALLBACK_RX_SENSE) |
						(1 << CALLBACK_SW_INT));

			if (dev->state == TDA998X_STATE_ON) {
//				if ((dev->hotPlugStatus == HDMITX_HOTPLUG_ACTIVE)) {
//					setState(dev, EV_PLUGGEDIN);
//				} else {
//					setState(dev, EV_UNPLUGGED);
//				}
			}
		}
	} else {
		if (int_status & (1 << CALLBACK_EDID_BLK_READ)) {

			ret = edid_block_available(dev, &sendEdidCallback);
			if (ret < 0)
				return ret;

			if (sendEdidCallback == false) {
				/* Read EDID not finished clear callback */
				int_status &= ~(1 << CALLBACK_EDID_BLK_READ);
			} else {

			}
		}
	}

	/* Handle RxSense interrupt*/
	if (int_status & (1 << CALLBACK_RX_SENSE)) {
		/* Callback disable on first tmbslTDA9989HwHandleInterrupt call */
		if (gMiscInterruptHpdRxEnable) {
			int_status &= (1 << CALLBACK_HPD) |
						(1 << CALLBACK_RX_SENSE) |
						(1 << CALLBACK_SW_INT);
		}
	}
	else {
		/* Clear RX_sense IT if level has not changed */
		int_status &= ~(1 << CALLBACK_RX_SENSE);
	}

	/*
	 * Ignore other simultaneous HDCP interrupts if T0 interrupt, preserving
	 * any hotplug detect interrupt
	 */
	if (int_status & (1 << CALLBACK_T0)) {

		if (dev->edid->read_started) {

			ret = clear_edid_request(dev);
			if (ret < 0)
				return ret;

			/* Enable EDID callback */
			int_status &= ~(1 << CALLBACK_T0);
			int_status |= (1 << CALLBACK_EDID_BLK_READ);
		} else {
			/* Ignore other interrupts */
			int_status &= (1 << CALLBACK_HPD) |
						(1 << CALLBACK_T0) |
						(1 << CALLBACK_RX_SENSE) |
						(1 << CALLBACK_SW_INT);
		}
	}

	for (i = 0; i < CALLBACK_VS_RPT; i++) {
		if (int_status & (1 << i)) {
			if (dev->callback[i])
				dev->callback[i](dev);
		}
	}

	gMiscInterruptHpdRxEnable = true;

	return 0;
}

/*
 * END OF FILE [tda998x.c]
 */
