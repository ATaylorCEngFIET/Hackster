/*
 * i2c.c
 *
 *  Created on: Jul 11, 2017
 *      Author: Russell Bush
 */


#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <unistd.h>
#include <string.h>
#include <fcntl.h>
#include <errno.h>
#include <fcntl.h>
#include <linux/i2c.h>
#include <linux/i2c-dev.h>
#include <sys/ioctl.h>

#include "i2c.h"

#define I2C_NDEVS		(16)

struct i2c_addr_fd {
	uint8_t	addr;
	int	fd;
};

static struct i2c_addr_fd i2c_fd[I2C_NDEVS];
static int i2c_ndevs = 0;

static int i2c_addr_fd_lookup(struct i2c_addr_fd *tab, int len, uint8_t addr)
{
	int i;
	int fd = -1;

	for (i = 0; i < len; i++, tab++)
		if (tab->addr == addr)
			fd = tab->fd;

	return fd;
}

static inline __s32 i2c_smbus_access(int fd, char read_write, __u8 cmd, 
                                     int size, union i2c_smbus_data *data)
{
	struct i2c_smbus_ioctl_data args;

	args.read_write = read_write;
	args.command = cmd;
	args.size = size;
	args.data = data;

	return ioctl(fd, I2C_SMBUS, &args);
}

static inline __s32 i2c_smbus_read_byte_data(int fd, __u8 cmd)
{
	union i2c_smbus_data data;

	if (i2c_smbus_access(fd, I2C_SMBUS_READ, cmd, I2C_SMBUS_BYTE_DATA, &data))
		return -1;
	else
		return 0x0FF & data.byte;
}

static inline __s32 i2c_smbus_write_byte_data(int fd, __u8 cmd, 
                                              __u8 val)
{
	union i2c_smbus_data data;

	data.byte = val;

	return i2c_smbus_access(fd, I2C_SMBUS_WRITE, cmd,
	                        I2C_SMBUS_BYTE_DATA, &data);
}

static inline __s32 i2c_smbus_read_word_data(int fd, __u8 cmd)
{
	union i2c_smbus_data data;

	if (i2c_smbus_access(fd, I2C_SMBUS_READ, cmd, I2C_SMBUS_WORD_DATA, &data))
		return -1;
	else
		return 0x0FFFF & data.word;
}

static inline __s32 i2c_smbus_write_word_data(int fd, __u8 cmd, 
                                              __u16 val)
{
	union i2c_smbus_data data;
	data.word = val;

	return i2c_smbus_access(fd, I2C_SMBUS_WRITE, cmd, I2C_SMBUS_WORD_DATA, &data);
}

static inline __s32 i2c_smbus_read_block_data(int fd, __u8 cmd, 
                                              __u8 *block)
{
	int i;
	union i2c_smbus_data data;

	if (i2c_smbus_access(fd, I2C_SMBUS_READ, cmd,
	                     I2C_SMBUS_BLOCK_DATA, &data))
		return -1;

	for (i = 1; i <= data.block[0]; i++)
		block[i-1] = data.block[i];

	return data.block[0];
}

static inline __s32 i2c_smbus_write_block_data(int fd, __u8 cmd, 
                                               __u8 len, __u8 *block)
{
	int i;
	union i2c_smbus_data data;

	if (len > 32)
		len = 32;

	for (i = 1; i <= len; i++)
		data.block[i] = block[i-1];

	data.block[0] = len;

	return i2c_smbus_access(fd, I2C_SMBUS_WRITE, cmd, I2C_SMBUS_BLOCK_DATA, &data);
}

static inline __s32 i2c_smbus_read_i2c_block_data(int fd, __u8 cmd,
                                                  __u8 len, __u8 *block)
{
	int i;
	union i2c_smbus_data data;

	if (len > 32)
		len = 32;

	data.block[0] = len;

	if (i2c_smbus_access(fd, I2C_SMBUS_READ, cmd,
	                     len == 32 ? I2C_SMBUS_I2C_BLOCK_BROKEN :
	                      I2C_SMBUS_I2C_BLOCK_DATA, &data))
		return -1;

	for (i = 1; i <= data.block[0]; i++)
		block[i-1] = data.block[i];

	return data.block[0];
}

static inline __s32 i2c_smbus_write_i2c_block_data(int fd, __u8 cmd,
                                               __u8 len, __u8 *block)
{
	int i;
	union i2c_smbus_data data;

	if (len > 32)
		len = 32;

	for (i = 1; i <= len; i++)
		data.block[i] = block[i-1];

	data.block[0] = len;

	return i2c_smbus_access(fd, I2C_SMBUS_WRITE, cmd,
	                        I2C_SMBUS_I2C_BLOCK_BROKEN, &data);
}

/**
 * @brief	Initialize I2C device for communication
 */
int i2c_init(uint8_t addr)
{
	int err;
	int fd;

	/* Perform filename parsing here */
	fd = open("/dev/i2c-0", O_RDWR);
	if (fd < 0)
		return fd;

	/* Add the file descriptor to the list */
	i2c_fd[i2c_ndevs].fd = fd;
	i2c_fd[i2c_ndevs].addr = addr;

	err = ioctl(i2c_fd[i2c_ndevs].fd, I2C_SLAVE, addr);
	if (err < 0)
		return err;

	i2c_ndevs++;

	return fd;
}

int i2c_close(uint8_t sl_addr)
{
	int fd;

	fd = i2c_addr_fd_lookup(i2c_fd, i2c_ndevs, sl_addr);
	if (fd < 0)
		return fd;

	close(fd);

	return 0;
}

/**
 * @brief	Write a byte value to a register on an I2C slave device
 *
 * @sl_addr
 * @reg_addr
 * @data
 * @return
 */
int i2c_write_reg(uint16_t sl_addr, uint8_t reg_addr, uint8_t *data)
{
	int fd, error;

	fd = i2c_addr_fd_lookup(i2c_fd, i2c_ndevs, sl_addr);
	if (fd < 0)
		return fd;

	error = i2c_smbus_write_byte_data(fd, reg_addr, *data);
	if (error < 0)
		return error;

	return 0;
}

/**
 * @brief	Read a byte value from a register on an I2C slave device
 *
 * @sl_addr
 * @reg_addr
 * @data
 * @return
 */
int i2c_read_reg(uint16_t sl_addr, uint8_t reg_addr, uint8_t *data)
{
	int tmp, fd;

	fd = i2c_addr_fd_lookup(i2c_fd, i2c_ndevs, sl_addr);
	if (fd < 0)
		return fd;

	tmp = i2c_smbus_read_byte_data(fd, reg_addr);
	if (tmp < 0)
		return tmp;

	*data = tmp;
	return 0;
}

int i2c_write_block(uint16_t sl_addr, uint8_t reg_addr, uint8_t len, uint8_t *data)
{
	int tmp, fd;

	fd = i2c_addr_fd_lookup(i2c_fd, i2c_ndevs, sl_addr);
	if (fd < 0)
		return fd;

	tmp = i2c_smbus_write_block_data(fd, reg_addr, len, data);
	if (tmp < 0)
		return tmp;

	return 0;
}

int i2c_read_block(uint16_t sl_addr, uint8_t reg_addr, uint8_t len, uint8_t *data)
{
	int i, fd, err;
	union i2c_smbus_data bus_data;

	fd = i2c_addr_fd_lookup(i2c_fd, i2c_ndevs, sl_addr);
	if (fd < 0)
		return fd;

	err = i2c_smbus_read_i2c_block_data(fd, reg_addr, len, data);
	if (err < 0)
		return err;

	return 0;
}




