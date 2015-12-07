################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../target/arch/arm/cm0plus/atmel/device/common/src/cycle_counter.c \
../target/arch/arm/cm0plus/atmel/device/common/src/extint.c \
../target/arch/arm/cm0plus/atmel/device/common/src/extint_callback.c \
../target/arch/arm/cm0plus/atmel/device/common/src/interrupt_sam_nvic.c \
../target/arch/arm/cm0plus/atmel/device/common/src/nvm.c \
../target/arch/arm/cm0plus/atmel/device/common/src/pinmux.c \
../target/arch/arm/cm0plus/atmel/device/common/src/port.c \
../target/arch/arm/cm0plus/atmel/device/common/src/rtc_count.c \
../target/arch/arm/cm0plus/atmel/device/common/src/rtc_count_interrupt.c \
../target/arch/arm/cm0plus/atmel/device/common/src/sercom.c \
../target/arch/arm/cm0plus/atmel/device/common/src/sercom_interrupt.c \
../target/arch/arm/cm0plus/atmel/device/common/src/spi.c \
../target/arch/arm/cm0plus/atmel/device/common/src/system.c \
../target/arch/arm/cm0plus/atmel/device/common/src/system_interrupt.c \
../target/arch/arm/cm0plus/atmel/device/common/src/usart.c \
../target/arch/arm/cm0plus/atmel/device/common/src/wdt.c 

OBJS += \
./target/arch/arm/cm0plus/atmel/device/common/src/cycle_counter.o \
./target/arch/arm/cm0plus/atmel/device/common/src/extint.o \
./target/arch/arm/cm0plus/atmel/device/common/src/extint_callback.o \
./target/arch/arm/cm0plus/atmel/device/common/src/interrupt_sam_nvic.o \
./target/arch/arm/cm0plus/atmel/device/common/src/nvm.o \
./target/arch/arm/cm0plus/atmel/device/common/src/pinmux.o \
./target/arch/arm/cm0plus/atmel/device/common/src/port.o \
./target/arch/arm/cm0plus/atmel/device/common/src/rtc_count.o \
./target/arch/arm/cm0plus/atmel/device/common/src/rtc_count_interrupt.o \
./target/arch/arm/cm0plus/atmel/device/common/src/sercom.o \
./target/arch/arm/cm0plus/atmel/device/common/src/sercom_interrupt.o \
./target/arch/arm/cm0plus/atmel/device/common/src/spi.o \
./target/arch/arm/cm0plus/atmel/device/common/src/system.o \
./target/arch/arm/cm0plus/atmel/device/common/src/system_interrupt.o \
./target/arch/arm/cm0plus/atmel/device/common/src/usart.o \
./target/arch/arm/cm0plus/atmel/device/common/src/wdt.o 

C_DEPS += \
./target/arch/arm/cm0plus/atmel/device/common/src/cycle_counter.d \
./target/arch/arm/cm0plus/atmel/device/common/src/extint.d \
./target/arch/arm/cm0plus/atmel/device/common/src/extint_callback.d \
./target/arch/arm/cm0plus/atmel/device/common/src/interrupt_sam_nvic.d \
./target/arch/arm/cm0plus/atmel/device/common/src/nvm.d \
./target/arch/arm/cm0plus/atmel/device/common/src/pinmux.d \
./target/arch/arm/cm0plus/atmel/device/common/src/port.d \
./target/arch/arm/cm0plus/atmel/device/common/src/rtc_count.d \
./target/arch/arm/cm0plus/atmel/device/common/src/rtc_count_interrupt.d \
./target/arch/arm/cm0plus/atmel/device/common/src/sercom.d \
./target/arch/arm/cm0plus/atmel/device/common/src/sercom_interrupt.d \
./target/arch/arm/cm0plus/atmel/device/common/src/spi.d \
./target/arch/arm/cm0plus/atmel/device/common/src/system.d \
./target/arch/arm/cm0plus/atmel/device/common/src/system_interrupt.d \
./target/arch/arm/cm0plus/atmel/device/common/src/usart.d \
./target/arch/arm/cm0plus/atmel/device/common/src/wdt.d 


# Each subdirectory must supply rules for building sources it contributes
target/arch/arm/cm0plus/atmel/device/common/src/%.o: ../target/arch/arm/cm0plus/atmel/device/common/src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


