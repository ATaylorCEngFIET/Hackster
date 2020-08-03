/**
 *******************************************************************************
 *******************************************************************************
 *
 * @file	hdmi_tx.c
 * @author	R. Bush
 * @email	bush@krtkl.com
 * @version	v1.0
 * @date	2018 May 18
 * @brief	HDMI Transmitter
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
#include <stdlib.h>
#include <stdint.h>
#include <unistd.h>

#include "i2c.h"

#include "hdmi_tx.h"

#define HDMI_TX_DEVICE_ID			(0)
#define HDMI_TX_NCONFIGS			(1)

#define HDMI_TX_HDMI_I2C_ADDR			(0x72U)
#define HDMI_TX_CEC_I2C_ADDR			(0x36U)

static struct tda998x_cfg hdmi_tx_cfg_tab[HDMI_TX_NCONFIGS] = {
	{
		.id = HDMI_TX_DEVICE_ID,
		.hdmi_addr = HDMI_TX_HDMI_I2C_ADDR,
		.cec_addr = HDMI_TX_CEC_I2C_ADDR,
		.i2c_write = i2c_write_reg,
		.i2c_read = i2c_read_reg,
		.cur_page = 0xFF
	}
};

static struct tda998x_vidin_cfg vin_cfg = {
	.format = VFMT_04_1280x720p_60Hz,
	.mode = VINMODE_RGB444,
	.sync_src = SYNCSRC_EXT_VS,
	.pix_rate = PIXRATE_SINGLE,
	.format_3d = FORMAT_3D_NONE
};

static struct tda998x_vidout_cfg vout_cfg = {
	.format = VFMT_04_1280x720p_60Hz,
	.mode = VOUTMODE_RGB444,
	.color_depth = COLORDEPTH_24,
	.vqr = VQR_RGB_FULL
};

static struct tda998x_audin_cfg ain_cfg = {
	.format = AFMT_I2S,
	.rate = AFS_48K,
	.i2s_format = I2S_FMT_OTH_R_16,
	.i2s_wlen = I2S_WLEN_16BITS,
	.dst_rate = DST_RATE_SINGLE,
	.ch_alloc = 0x1F
};


static struct tda998x_dev hdmi_tx;

/**
 * @brief	HDMI transmitter configuration lookup by device identifier
 *
 * @dev_id	Device identifier to use for lookup
 * @return	Pointer to configuration matching device identifier if found or
 * 			NULL if not found in the lookup table
 */
static struct tda998x_cfg *hdmi_tx_cfg_lookup(int dev_id)
{
	struct tda998x_cfg *cfg = NULL;
	int i;

	for (i = 0; i < HDMI_TX_NCONFIGS; i++) {
		if (hdmi_tx_cfg_tab[i].id == dev_id) {
			cfg = &hdmi_tx_cfg_tab[i];
			break;
		}
	}

	return cfg;
}

/**
 * @brief	HDMI Receiver Initialization
 */
int hdmi_tx_init(enum tda998x_vid_fmt vin_fmt, enum tda998x_vid_fmt vout_fmt)
{
	int err;
	struct tda998x_cfg *cfg;
	struct tda998x_dev *dev = &hdmi_tx;

	if (dev == NULL)
		return -1;

	cfg = hdmi_tx_cfg_lookup(HDMI_TX_DEVICE_ID);
	if (cfg == NULL) {
		printf("[ERROR] %s() %s %d\n", __func__, __FILE__, __LINE__);
		return (-1);
	}

	err = i2c_init(cfg->hdmi_addr);
	if (err < 0) {
		printf("[ERROR] %s() %s %d\n", __func__, __FILE__, __LINE__);
		return err;
	}

	err = i2c_init(cfg->cec_addr);
	if (err < 0) {
		printf("[ERROR] %s() %s %d\n", __func__, __FILE__, __LINE__);
		return err;
	}

	err = tda998x_init(dev, cfg);
	if (err < 0) {
		printf("[ERROR] %s() %s %d\n", __func__, __FILE__, __LINE__);
		return err;
	}

	vin_cfg.format = vin_fmt;
	vout_cfg.format = vout_fmt;

	err = tda998x_set_input_output(dev, &vin_cfg, &vout_cfg, &ain_cfg, SINK_HDMI);
	if (err < 0)
		return err;

	return 0;
}
