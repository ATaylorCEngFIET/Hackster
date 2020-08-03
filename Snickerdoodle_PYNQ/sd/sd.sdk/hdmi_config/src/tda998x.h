/**
 *******************************************************************************
 *******************************************************************************
 *
 * @file	tda998x.h
 * @author	R. Bush
 * @email	bush@krtkl.com
 * @version	v1.0
 * @date	2017 November 10
 * @brief	NXP TDA998x HDMI Transmitter
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

#ifndef __TDA998X_H
#define __TDA998X_H

#include <stdint.h>
#include <stdbool.h>

#ifdef __cplusplus
extern "C" {
#endif

/**
 * @addtogroup	TDA998X
 * @{
 */

/**
 * @brief
 */
enum tda998x_sink {
	SINK_DVI = 0,				/**< DVI  */
	SINK_HDMI = 0x01,			/**< HDMI */
	SINK_EDID = 0x02			/**< As currently defined in EDID */
};

/**
 * @brief	EIA/CEA-861B video format type
 */
enum tda998x_vid_fmt {
	VFMT_INVALID		= 0,     /**< Invalid */
	VFMT_01_640x480p_60Hz	= 1,     /**< Format 01 640  x 480p  60Hz  */
	VFMT_02_720x480p_60Hz	= 2,     /**< Format 02 720  x 480p  60Hz  */
	VFMT_03_720x480p_60Hz	= 3,     /**< Format 03 720  x 480p  60Hz  */
	VFMT_04_1280x720p_60Hz	= 4,     /**< Format 04 1280 x 720p  60Hz  */
	VFMT_05_1920x1080i_60Hz	= 5,     /**< Format 05 1920 x 1080i 60Hz  */
	VFMT_06_720x480i_60Hz	= 6,     /**< Format 06 720  x 480i  60Hz  */
	VFMT_07_720x480i_60Hz	= 7,     /**< Format 07 720  x 480i  60Hz  */
	VFMT_08_720x240p_60Hz	= 8,     /**< Format 08 720  x 240p  60Hz  */
	VFMT_09_720x240p_60Hz	= 9,     /**< Format 09 720  x 240p  60Hz  */
	VFMT_10_720x480i_60Hz	= 10,    /**< Format 10 720  x 480i  60Hz  */
	VFMT_11_720x480i_60Hz	= 11,    /**< Format 11 720  x 480i  60Hz  */
	VFMT_12_720x240p_60Hz	= 12,    /**< Format 12 720  x 240p  60Hz  */
	VFMT_13_720x240p_60Hz	= 13,    /**< Format 13 720  x 240p  60Hz  */
	VFMT_14_1440x480p_60Hz	= 14,    /**< Format 14 1440 x 480p  60Hz  */
	VFMT_15_1440x480p_60Hz	= 15,    /**< Format 15 1440 x 480p  60Hz  */
	VFMT_16_1920x1080p_60Hz	= 16,    /**< Format 16 1920 x 1080p 60Hz  */
	VFMT_17_720x576p_50Hz	= 17,    /**< Format 17 720  x 576p  50Hz  */
	VFMT_18_720x576p_50Hz	= 18,    /**< Format 18 720  x 576p  50Hz  */
	VFMT_19_1280x720p_50Hz	= 19,    /**< Format 19 1280 x 720p  50Hz  */
	VFMT_20_1920x1080i_50Hz	= 20,    /**< Format 20 1920 x 1080i 50Hz  */
	VFMT_21_720x576i_50Hz	= 21,    /**< Format 21 720  x 576i  50Hz  */
	VFMT_22_720x576i_50Hz	= 22,    /**< Format 22 720  x 576i  50Hz  */
	VFMT_23_720x288p_50Hz	= 23,    /**< Format 23 720  x 288p  50Hz  */
	VFMT_24_720x288p_50Hz	= 24,    /**< Format 24 720  x 288p  50Hz  */
	VFMT_25_720x576i_50Hz	= 25,    /**< Format 25 720  x 576i  50Hz  */
	VFMT_26_720x576i_50Hz	= 26,    /**< Format 26 720  x 576i  50Hz  */
	VFMT_27_720x288p_50Hz	= 27,    /**< Format 27 720  x 288p  50Hz  */
	VFMT_28_720x288p_50Hz   = 28,    /**< Format 28 720  x 288p  50Hz  */
	VFMT_29_1440x576p_50Hz  = 29,    /**< Format 29 1440 x 576p  50Hz  */
	VFMT_30_1440x576p_50Hz  = 30,    /**< Format 30 1440 x 576p  50Hz  */
	VFMT_31_1920x1080p_50Hz = 31,    /**< Format 31 1920 x 1080p 50Hz  */
	VFMT_32_1920x1080p_24Hz = 32,    /**< Format 32 1920 x 1080p 24Hz  */
	VFMT_33_1920x1080p_25Hz = 33,    /**< Format 33 1920 x 1080p 25Hz  */
	VFMT_34_1920x1080p_30Hz = 34,	/**< Format 34 1920 x 1080p 30Hz  */
	VFMT_35_2880x480p_60Hz  = 35,	/**< Format 35 2880 x 480p  60Hz 4:3  */
	VFMT_36_2880x480p_60Hz  = 36,   /**< Format 36 2880 x 480p  60Hz 16:9 */
	VFMT_37_2880x576p_50Hz  = 37,   /**< Format 37 2880 x 576p  50Hz 4:3  */
	VFMT_38_2880x576p_50Hz  = 38,   /**< Format 38 2880 x 576p  50Hz 16:9 */
	VFMT_60_1280x720p_24Hz  = 60,   /**< Format 60 1280 x 720p  23.97/24Hz 16:9 */
	VFMT_61_1280x720p_25Hz  = 61,   /**< Format 61 1280 x 720p  25Hz 16:9 */
	VFMT_62_1280x720p_30Hz  = 62,   /**< Format 60 1280 x 720p  29.97/30Hz 16:9 */
	VFMT_PC_640x480p_60Hz   = 128,   /**< PC format 128                */
	VFMT_PC_800x600p_60Hz   = 129,   /**< PC format 129                */
	VFMT_PC_1152x960p_60Hz  = 130,   /**< PC format 130                */
	VFMT_PC_1024x768p_60Hz  = 131,		/**< PC format 131 */
	VFMT_PC_1280x768p_60Hz  = 132,		/**< PC format 132 */
	VFMT_PC_1280x1024p_60Hz = 133,		/**< PC format 133 */
	VFMT_PC_1366x768p_60Hz  = 134,		/**< PC format 134 */
	VFMT_PC_1400x1050p_60Hz = 135,		/**< PC format 135 */
	VFMT_PC_1600x1200p_60Hz = 136,		/**< PC format 136 */
	VFMT_PC_1920x1200p_60Hz = 137,		/**< PC format custom */
};

enum tda998x_vidin_mode {
	VINMODE_CCIR656 = 0,		/**< CCIR656 */
	VINMODE_RGB444 = 1,		/**< RGB444  */
	VINMODE_YUV444 = 2,		/**< YUV444  */
	VINMODE_YUV422 = 3,		/**< YUV422  */
};

enum tda998x_sync_src {
	SYNCSRC_EMBEDDED = 0,		/**< Embedded sync */
	SYNCSRC_EXT_VREF = 1,		/**< External sync Vref, Href, Fref */
	SYNCSRC_EXT_VS = 2		/**< External sync Vs, Hs */
};

/**
 * @addtogroup	TDA998X_Video_In
 * @{
 */
enum tda998x_pix_rate {
	PIXRATE_DOUBLE = 0,		/**< Double pixel rate */
	PIXRATE_SINGLE = 1,		/**< Single pixel rate */
	PIXRATE_SINGLE_REPEATED = 2	/**< Single pixel repeated */
};

enum tda998x_upsample {
	UPSAMPLE_BYPASS = 0,		/**< Bypass */
	UPSAMPLE_COPY = 1,		/**< Copy */
	UPSAMPLE_INTERPOLATE = 2,	/**< Interpolate */
	UPSAMPLE_AUTO = 3,		/**< Auto: driver chooses best value */
};

enum tda998x_pix_tgl {
	PIXTOGL_NO_ACTION = 0,		/**< No Action  */
	PIXTOGL_ENABLE  = 1,		/**< Toggle     */
};
/**
 * @}
 */

enum tda998x_scaler_mode {
	SCALER_MODE_OFF = 0,		/**< Off  */
	SCALER_MODE_ON = 1,		/**< On   */
	SCALER_MODE_AUTO = 2,		/**< Auto */
};

/**
 * @addtogroup	TDA9998X_Matrix_Control	Matrix Control
 * @{
 */
enum tda998x_mtx_mode {
	MTX_MODE_OFF = 0,		/**< Off  */
	MTX_MODE_AUTO = 1,		/**< Auto */
};

#define MTX_COEFF_LEN			(9)
struct tda998x_mtx_coeff {
	int16_t coeff[MTX_COEFF_LEN];
};
/**
 * @}
 */

enum tda998x_format_3d {
	FORMAT_3D_NONE = 0,		/**< 3D video data not present */
	FORMAT_3D_FRAME_PACKING = 1,	/**< Frame packing */
	FORMAT_3D_TOP_AND_BOTTOM = 2,	/**< Top and bottom */
	FORMAT_3D_SIDE_BY_SIDEF = 3,	/**< Side by side half structure */
};

enum tda998x_vidout_mode {
	VOUTMODE_RGB444 = 0,		/**< RGB444 */
	VOUTMODE_YUV422 = 1,		/**< YUV422 */
    	VOUTMODE_YUV444 = 2		/**< YUV444 */
};

enum tda998x_dwidth {
	VOUT_DBITS_12 = 0,		/**< 12 bits */
	VOUT_DBITS_8 = 1,		/**< 8 bits  */
	VOUT_DBITS_10 = 2,		/**< 10 bits */
};

enum tda998x_color_depth {
	COLORDEPTH_24 = 0,		/**< 8 bits per color */
	COLORDEPTH_30 = 1,		/**< 10 bits per color */
	COLORDEPTH_36 = 2,		/**< 12 bits per color */
	COLORDEPTH_48 = 3 		/**< 16 bits per color */
};

/**
 * @brief	Video quantization range
 */
enum tda998x_vqr {
	VQR_DEFAULT = 0,		/**< Follow HDMI spec. */
	VQR_RGB_FULL = 1,		/**< Force RGB FULL, DVI only */
	VQR_RGB_LIMITED = 2		/**< Force RGB LIMITED, DVI only */
};

/**
 * @brief	Metadata packet structure
 */
struct tda998x_pkt {
	uint8_t header[3];		/**< Header data */
	uint8_t data[28];		/**< Packet data   */
};

enum tda998x_mpeg_frame {
	MPEG_FRAME_UNKNOWN = 0,		/**< Unknown  */
	MPEG_FRAME_I = 1,		/**< i-frame   */
	MPEG_FRAME_B = 2,		/**< b-frame */
	MPEG_FRAME_P = 3,		/**< p-frame */
};

struct tda998x_mpeg_pkt {
	uint32_t		bitrate;	/**< MPEG bit rate in Hz */
	enum tda998x_mpeg_frame frame;		/**< MPEG frame type */
	bool			repeat;		/**< Repeated field */
};

enum tda998x_spd_dev {
    SPDINFO_UNKNOWN = 0,
    SPDINFO_DIGITAL_STB = 1,
    SPDINFO_DVD = 2,
    SPDINFO_DVHS = 3,
    SPDINFO_HDD_VIDEO = 4,
    SPDINFO_DVC = 5,
    SPDINFO_DSC = 6,
    SPDINFO_VIDEO_CD = 7,
    SPDINFO_GAME = 8,
    SPDINFO_PC = 9,
};

struct tda998x_spd_pkt {
	uint8_t			vname[8];	/**< Vendor name */
	uint8_t			desc[16];	/**< Product description */
	enum tda998x_spd_dev	dev_info;	/**< Source Device Info */
} ;

/**
 * @addtogroup	TDA998X_Video_In
 * @{
 */

/**
 * @brief	Video Input Configuration
 */
struct tda998x_vidin_cfg {
	enum tda998x_vid_fmt		format;		/**< Video format as defined by EIA/CEA 861-D */
	enum tda998x_vidin_mode		mode;		/**< Video mode (CCIR, RGB, YUV, etc.) */
	enum tda998x_sync_src		sync_src;	/**< Sync source type */
	enum tda998x_pix_rate		pix_rate;	/**< Pixel rate */
	enum tda998x_format_3d		format_3d;	/**< 3D structure as defined in HDMI1.4a */
};
/**
 * @}
 */

/**
 * @addtogroup	TDA998X_Video_Out
 * @{
 */

/**
 * @brief	Video Output Configuration
 */
struct tda998x_vidout_cfg {
	enum tda998x_vid_fmt		format;		/**< Video format as defined by EIA/CEA 861-D */
	enum tda998x_vidout_mode	mode;		/**< Video mode (CCIR, RGB, YUV, etc.) */
	enum tda998x_color_depth	color_depth;	/**< Color depth */
	enum tda998x_vqr		vqr;		/**< VQR applied in DVI mode */
};
/**
 * @}
 */

/**
 * @addtogroup	TDA998X_EDID
 * @{
 */

#define EDID_BLOCK_SIZE			(128)

enum tda998x_edid_state {
	EDID_NOT_READ = 0,
	EDID_READ,
	EDID_ERR_BLOCK_0
};

struct tda998x_edid {
	uint8_t				*block;			/**< Block data */
	int				len;			/**< Block data length */
	int				count;			/**< Block count */
	int				req_id;			/**< Block request number */
	enum tda998x_edid_state		state;
	enum tda998x_sink		sink;
	bool				read_started;
};
/**
 * @}
 */

/**
 * @addtogroup	TDA998X_Audio
 * @{
 */
struct tda998x_aud_packet {
	int hbr;		/**< High bitrate audio packet */
	int dst;		/**< Direct stream transport audio packet */
	int oba;		/**< One bit audio sample packet */
};

enum tda998x_aud_fmt {
	AFMT_SPDIF = 0,		/**< SPDIF */
	AFMT_I2S = 1,		/**< I2S */
	AFMT_OBA = 2,		/**< One bit audio / DSD */
	AFMT_DST = 3,		/**< DST */
	AFMT_HBR = 4		/**< HBR */
};

/** Clock Time Stamp reference source */
enum tda998x_cts_ref {
	CTSREF_ACLK      = 0,    /**< Clock input pin for I2S       */
	CTSREF_MCLK      = 1,    /**< Clock input pin for EXTREF    */
	CTSREF_FS64SPDIF = 2,    /**< 64xsample rate, for SPDIF     */
};

/** Clock Time Stamp predivider - scales N */
enum tda998x_ctsk {
	CTSK1 = 0,		/**< k=1 */
	CTSK2 = 1,		/**< k=2 */
	CTSK3 = 2,		/**< k=3 */
	CTSK4 = 3,		/**< k=4 */
	CTSK8 = 4,		/**< k=8 */
	CTSK_USE_CTSX = 5,	/**< Calculate from ctsX factor */
};

/** Clock Time Stamp postdivider measured time stamp */
enum tda998x_ctsm {
	CTSMTS = 0,		/**< =mts   */
	CTSMTS2 = 1,		/**< =mts%2 */
	CTSMTS4 = 2,		/**< =mts%4 */
	CTSMTS8 = 3,		/**< =mts%8 */
	CTSMTS_USE_CTSX = 4,	/**< Calculate from ctsX factor */
};

enum tda998x_aud_rate {
	AFS_32K = 0,		/**< 32kHz    */
	AFS_44K = 1,		/**< 44.1kHz  */
	AFS_48K = 2,		/**< 48kHz    */
	AFS_88K = 3,		/**< 88.2kHz  */
	AFS_96K = 4,		/**< 96kHz    */
	AFS_176K = 5,		/**< 176.4kHz */
	AFS_192K = 6		/**< 192kHz   */
};

/**
 * @brief	Audio I2S word length
 */
enum tda998x_aud_i2s_wlen {
	I2S_WLEN_16BITS = 16,	/**< 16 bits */
    	I2S_WLEN_32BITS = 32,	/**< 32 bits */
    	I2S_WLEN_OTHERS = 0	/**< for SPDIF and DSD */
};

/**
 * @brief	Audio I2S format
 */
enum tda998x_aud_i2s_fmt {
	I2S_FMT_PHILIPS_L = 12,	/**< Philips like format */
	I2S_FMT_OTH_L = 14,	/**< Left justified */
	I2S_FMT_OTH_R_16 = 11,	/**< 16-bits right justified */
	I2S_FMT_OTH_R_20 = 7,	/**< 20-bits right justified */
    	I2S_FMT_OTH_R = 15	/**< 24-bits right justified */
};

/**
 * @brief	DSD clock polarities
 */
enum tda998x_clkpol_dsd {
	CLKPOLDSD_ACLK = 0,		/**< Same as ACLK */
	CLKPOLDSD_NACLK = 0x04,		/**< Not ACLK, i.e. inverted */
};

/**
 * @brief	DSD data swap values
 */
enum tda998x_swap_dsd {
	SWAPDSD_OFF = 0,	/**< No swap */
	SWAPDSD_ON = 0x02,	/**< Swap */
};

/**
 * @brief	DSD data transfer rates
 */
enum tda998x_dst_rate {
	DST_RATE_SINGLE = 0,	/**< Single transfer rate */
	DST_RATE_DOUBLE = 1	/**< Double data rate */
};

struct tda998x_aud_ch_status {
//    tmdlHdmiTxAudioData_t          PcmIdentification;
//    tmdlHdmiTxCScopyright_t        CopyrightInfo;
//    tmdlHdmiTxCSformatInfo_t       FormatInfo;
	uint8_t				cat_code;
//    tmdlHdmiTxCSclkAcc_t           clockAccuracy;
//    tmdlHdmiTxCSmaxWordLength_t    maxWordLength;
//    tmdlHdmiTxCSwordLength_t       wordLength;
//    tmdlHdmiTxCSorigAfs_t          origSampleFreq;
};


struct tda998x_aud_if_pkt {
	uint8_t		type;		/**< Coding type */
	uint8_t		nchan;		/**< Channel count */
	uint8_t		samp_freq;	/**< Sample frequency */
	uint8_t		samp_size;	/**< Sample size */
	uint8_t		chan_alloc;	/**< Channel allocation */
	bool		dmix_inhib;	/**< Downmix inhibit */
	uint8_t		lvl_shift;	/**< Level shift */
};

struct tda998x_audin_cfg {
	enum tda998x_aud_fmt		format;			/**< Audio format (I2S, SPDIF, etc.) */
	enum tda998x_aud_rate		rate;			/**< Audio sampling rate */
	enum tda998x_aud_i2s_fmt	i2s_format;		/**< I2S format of the audio input */
	enum tda998x_aud_i2s_wlen	i2s_wlen;		/**< I2S qualifier of the audio input (8,16,32 bits) */
	enum tda998x_dst_rate		dst_rate;		/**< DST data transfer rate */
	uint8_t				ch_alloc;		/**< Ref to CEA-861D p85 */
	struct tda998x_aud_ch_status	ch_status;		/**< Ref to IEC 60958-3 */
};
/**
 * @}
 */


/**
 * @brief	TDA998X driver configuration
 */
struct tda998x_cfg {
	uint8_t				id;
	uint16_t			hdmi_addr;
	uint16_t			cec_addr;
	int (*i2c_write)		(uint16_t addr, uint8_t reg, uint8_t *data);
	int (*i2c_read)			(uint16_t addr, uint8_t reg, uint8_t *data);
	uint8_t				cur_page;
};

/**
 * @brief	TDA998X state
 */
enum tda998x_state {
	TDA998X_STATE_ON,		/**< Powered on */
	TDA998X_STATE_STANDBY,		/**< Device standby */
	TDA998X_STATE_SUSPEND,		/**< Device suspend */
	TDA998X_STATE_OFF		/**< Powered off */
};

enum tda998x_hotplug_status {
	HOTPLUG_INACTIVE = 0,
	HOTPLUG_ACTIVE
};


enum tda998x_callback {
	CALLBACK_ENCRYPT,	/**< HDCP encrypt as above (Obsolete) */
	CALLBACK_HPD,		/**< Transition on HPD input          */
	CALLBACK_T0,		/**< HDCP state machine in state T0   */
	CALLBACK_BCAPS,		/**< BCAPS available                  */
	CALLBACK_BSTATUS,	/**< BSTATUS available                */
	CALLBACK_SHA_1,		/**< sha-1(ksv,bstatus,m0)=V'         */
	CALLBACK_PJ,		/**< pj=pj' check fails               */
	CALLBACK_R0,		/**< R0 interrupt                     */
	CALLBACK_SW_INT,	/**< SW DEBUG interrupt               */
	CALLBACK_RX_SENSE,	/**< RX SENSE interrupt               */
	CALLBACK_EDID_BLK_READ,	/**< EDID BLK READ interrupt          */
	CALLBACK_PLL_LOCK,	/**< Pll Lock (Serial or Formatter)   */
	CALLBACK_VS_RPT		/**< VS Interrupt for Gamut packets   */
};

/**
 * @brief	TDA998X device
 */
struct tda998x_dev {
	int				id;
	struct tda998x_cfg		*cfg;
	struct tda998x_vidin_cfg	*vin_cfg;
	struct tda998x_vidout_cfg	*vout_cfg;
	uint8_t				features;
	uint16_t			version;
	enum tda998x_state		state;
	enum tda998x_sink		sink;
	struct tda998x_edid		*edid;
	uint8_t 			int_level;
	enum tda998x_hotplug_status	hotplug_status;
	int				(*callback[CALLBACK_VS_RPT])(struct tda998x_dev *dev);

};

int tda998x_init(struct tda998x_dev *dev, struct tda998x_cfg *cfg);
int tda998x_edid_get_block(struct tda998x_dev *dev,
		uint8_t *block,
		int nblocks,
		int len);
int tda998x_read_edid(struct tda998x_dev *dev, uint8_t *data);
int tda998x_get_hotplug_status(struct tda998x_dev *dev,
		enum tda998x_hotplug_status *hotplug_status,
		bool client);
int tda998x_set_input_output(struct tda998x_dev *dev,
		struct tda998x_vidin_cfg *vidin_cfg,
		struct tda998x_vidout_cfg *vidout_cfg,
		struct tda998x_audin_cfg *audin_cfg,
		enum tda998x_sink sink);
int tda998x_handle_interrupt(struct tda998x_dev *dev);
/**
 * @}
 */

#ifdef __cplusplus
}
#endif

#endif /* __TDA998X_H */
