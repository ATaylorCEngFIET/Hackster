################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/hdmi-config.c \
../src/hdmi_rx.c \
../src/hdmi_tx.c \
../src/i2c.c \
../src/tda1997x.c \
../src/tda998x.c 

OBJS += \
./src/hdmi-config.o \
./src/hdmi_rx.o \
./src/hdmi_tx.o \
./src/i2c.o \
./src/tda1997x.o \
./src/tda998x.o 

C_DEPS += \
./src/hdmi-config.d \
./src/hdmi_rx.d \
./src/hdmi_tx.d \
./src/i2c.d \
./src/tda1997x.d \
./src/tda998x.d 


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM v7 Linux gcc compiler'
	arm-linux-gnueabihf-gcc -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


