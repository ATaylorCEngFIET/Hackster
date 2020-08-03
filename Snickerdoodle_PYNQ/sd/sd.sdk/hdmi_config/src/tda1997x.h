/**
 *******************************************************************************
 *******************************************************************************
 *
 * @file	tda1997x.h
 * @author	R. Bush
 * @email	bush@krtkl.com
 * @version	v1.0
 * @date	2017 September 14
 * @brief	TDA1997x HDMI Receiver
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

#ifndef __TDA1997X_H
#define __TDA1997X_H

#ifdef __cplusplus
extern "C" {
#endif

/**
 * @addtogroup	TDA1997X
 * @{
 */
enum tda1997x_filters_ctrl_prefil {
	FILTERS_CTRL_PREFILTER_OFF = 0x00,
	FILTERS_CTRL_PREFILTER_2TAPS = 0x01,
	FILTERS_CTRL_PREFILTER_7TAPS = 0X02,
	FILTERS_CTRL_PREFILTER_27TAPS = 0x03
};

enum tda1997x_of_ctrl_format {
	OF_CTRL_FORMAT_444 = 0x00,
	OF_CTRL_FORMAT_422_SMP = 0x01,
	OF_CTRL_FORMAT_422_CCIR = 0x02
};

/**
 * @addtogroup TDA1997X_Audio
 * @{
 */
enum tda1997x_audio_freq {
	AUDIO_FREQ_HEADER = 0x00,
	AUDIO_FREQ_32kHz = 0x01,
	AUDIO_FREQ_44_1kHz = 0x02,
	AUDIO_FREQ_48kHz = 0x03,
	AUDIO_FREQ_88_2kHz = 0x04,
	AUDIO_FREQ_96kHz = 0x05,
	AUDIO_FREQ_176kHz = 0x06,
	AUDIO_FREQ_192kHz = 0x07
};

enum tda1997x_audio_sel_mode {
	AUDIO_SEL_MODE_SAMPLES = 0x00,						/**< Audio samples */
	AUDIO_SEL_MODE_HBR = 0x01,						/**< High bit rate mode */
	AUDIO_SEL_MODE_OBA = 0x02,						/**< One bit audio */
	AUDIO_SEL_MODE_DST = 0x03						/**< Direct stream transfer */
};
/**
 * @}
 */

struct tda1997x_mtp_seed {
    uint16_t		lookup;
    uint16_t		seed;
};

struct tda1997x_dev;

/**
 * @brief	TDA1997X interrupt event
 */
struct tda1997x_irq_event {
	uint8_t				irq;
	uint8_t				en;
	int (*handler)			(struct tda1997x_dev *ref, uint8_t flags);
};

struct tda1997x_irq_source {
	uint16_t			clr_reg;
	uint16_t			mask_reg;
	struct tda1997x_irq_event	*events;
};

/**
 * @brief	TDA1997X video format
 */
enum tda1997x_vid_fmt {
	VIDEO_FORMAT_444,     		/**< Output format is full 4:4:4 */
	VIDEO_FORMAT_422_SMP, 		/**< Output format is 4:2:2 Semi Planar */
	VIDEO_FORMAT_422_CCIR 		/**< Output format is 4:2:2 CCIR 656 */
};


/**
 * @brief	TDA1997X video configuration
 */
struct tda1997x_vid_cfg {
	enum tda1997x_vid_fmt	fmt;
	uint8_t			vpconf;
	uint8_t			mute;
};

/**
 * @brief	TDA1997X driver configuration
 */
struct tda1997x_cfg {
	uint8_t				id;
	uint16_t			i2c_addr;
	uint16_t			cec_addr;
	int (*i2c_write)		(uint16_t addr, uint8_t reg, uint8_t *data);
	int (*i2c_read)			(uint16_t addr, uint8_t reg, uint8_t *data);
	uint8_t				cur_page;
};

/**
 * @brief	TDA1997X device structure
 */
struct tda1997x_dev {
	int				id;
	struct tda1997x_cfg		*cfg;
	struct tda1997x_event		*events;
};

int tda1997x_init(struct tda1997x_dev *dev, struct tda1997x_cfg *cfg, uint8_t *edid_block, uint8_t *edid_ext);
int tda1997x_handle_irq(struct tda1997x_dev *dev);
int tda1997x_cfg_vid_out(struct tda1997x_dev *dev);
int tda1997x_cfg_vp(struct tda1997x_dev *dev, uint8_t *vp_conf);
int tda1997x_cfg_prefilter(struct tda1997x_dev *dev,
			enum tda1997x_filters_ctrl_prefil bu,
			enum tda1997x_filters_ctrl_prefil rv);
int tda1997x_cfg_audio_fmt(struct tda1997x_dev *dev);
int tda1997x_cfg_audio_mode(struct tda1997x_dev *dev, enum tda1997x_audio_sel_mode mode);
int tda1997x_get_audio_flags(struct tda1997x_dev *dev, uint8_t *status);
int tda1997x_get_audio_freq(struct tda1997x_dev *dev, enum tda1997x_audio_freq *freq);
int tda1997x_cfg_edid(struct tda1997x_dev *dev, uint8_t *edid, uint8_t *edid_ext);
int tda1997x_get_timing(struct tda1997x_dev *dev, uint8_t *data);
/**
 * @}
 */

#ifdef __cplusplus
}
#endif

#endif /* __TDA1997X_H */
