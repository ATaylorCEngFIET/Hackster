/**
 *******************************************************************************
 *******************************************************************************
 *
 * @file	hdmi-config.c
 * @author	R. Bush
 * @email	bush@krtkl.com
 * @version	v1.0
 * @date	2018 April 10
 * @brief	HDMI Configuration Application
 * @license	FreeBSD
 *
 *******************************************************************************
 *
 * Copyright (c) 2018, krtkl inc.
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
#include <string.h>
#include <unistd.h>

#include "i2c.h"

#include "hdmi_tx.h"
#include "hdmi_rx.h"

#define ERROR_PRINT(__format__, ...)		printf("[ERROR] %s() %s %d: " __format__ "\r\n", __FUNCTION__, __FILE__, __LINE__, ##__VA_ARGS__)

#ifdef DEBUG_INFO
# define INFO_PRINT(__format__, ...)		printf("[INFO] %s() %s %d: " __format__ "\r\n", __FUNCTION__, __FILE__, __LINE__, ##__VA_ARGS__)
#else
# define INFO_PRINT(...)					do {} while (0)
#endif

#ifdef DEBUG
# define DEBUG_PRINT(__format__, ...)		printf("[DEBUG] %s() %s %d: " __format__ "\r\n", __FUNCTION__, __FILE__, __LINE__, ##__VA_ARGS__)
#else
# define DEBUG_PRINT(...)			do {} while (0)
#endif

#define UNIT_I2C_ADDRESS_0			(0x72)
#define CEC_UNIT_I2C_ADDRESS_0			(0x36)

static void
usage(void)
{
	printf("hdmi-config [OPTIONS]\n"
		"Options:\n"
		"    -m MODE   - Configure transmitter format mode\n"
		"\n"
		"Modes:\n"
		"    1280x720\n"
		"    1366x768\n"
		"    1920x1080\n"
		"    1920x1200\n"
		"\n"
	);
}



const struct vid_fmt_str {
	const char *str;
	enum tda998x_vid_fmt fmt;
} fmt_str[] = {
	{ "1280x720", VFMT_04_1280x720p_60Hz },
	{ "1366x768", VFMT_PC_1366x768p_60Hz },
	{ "1920x1080", VFMT_16_1920x1080p_60Hz },
	{ "1920x1200", VFMT_PC_1920x1200p_60Hz },
	{ /* Sentinel */ }
};

static int
str2fmt(const char *str, enum tda998x_vid_fmt *fmt)
{
	const struct vid_fmt_str *list = &fmt_str[0];

	while (list && list->str[0]) {

		printf("Comparing %s and %s\n", list->str, str);

		if (strcmp(str, list->str) == 0) {

			printf("Mode found %s (%d)\n", list->str, list->fmt);

			*fmt = list->fmt;
			return 0;
		}

		list++;
	}

	printf("Mode not found\n");

	return -1;
}

static int
hdmi_init(enum tda998x_vid_fmt vin_fmt, enum tda998x_vid_fmt vout_fmt)
{
	int ret;

	printf("%-30s", "Initializing TDA1997x HDMI receiver\n");
	ret = hdmi_rx_init();
	if (ret) {
		ERROR_PRINT("%d = hdmi_rx_init()", ret);
		return ret;
	}

	printf("done.\n");

//	printf("%-30s", "Initializing TD998x HDMI transmitter\n");
//	ret = hdmi_tx_init(vin_fmt, vout_fmt);
//	if (ret) {
//		ERROR_PRINT("%x = hdmi_tx_init()", ret);
//		return ret;
//	}

	return 0;
}

int
main(int argc, char **argv)
{
	int c, ret;
	enum tda998x_vid_fmt fmt = VFMT_04_1280x720p_60Hz;

	printf("--------------------------------------------------------\n");
	printf("Adiuvo Modified piSmasher HDMI Configuration Utility\n");

	printf("Compiled: %s %s\n\n", __DATE__, __TIME__);

	while ((c = getopt(argc, argv, "m:")) != -1) {
		switch (c) {
		case 'm':
			ret = str2fmt(optarg, &fmt);
			if (ret < 0) {
				printf("Unknown input format option %s\n", optarg);
				usage();
				return -1;
			}
			break;

		case '?':
		default:
			printf("Unknown option character `\\x%x'.\n", optopt);
			usage();
			return -1;
		}
	}

	ret = hdmi_init(fmt, fmt);
	if (ret < 0)
		ERROR_PRINT("%x = hdmi_init()", ret);

	exit(ret);
}
