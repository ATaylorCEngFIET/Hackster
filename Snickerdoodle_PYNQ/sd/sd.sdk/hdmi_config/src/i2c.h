/*
 * i2c.h
 *
 *  Created on: Jul 11, 2017
 *      Author: Russell Bush
 */

#ifndef __I2C_H
#define __I2C_H

int i2c_init(uint8_t addr);
int i2c_close(uint8_t addr);
int i2c_write_reg(uint16_t sl_addr, uint8_t reg_addr, uint8_t *data);
int i2c_read_reg(uint16_t sl_addr, uint8_t reg_addr, uint8_t *data);
int i2c_write_block(uint16_t sl_addr, uint8_t reg_addr, uint8_t len, uint8_t *data);
int i2c_read_block(uint16_t sl_addr, uint8_t reg_addr, uint8_t len, uint8_t *data);

#endif /* __I2C_H */
