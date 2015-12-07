################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../target/arch/arm/cm0plus/atmel/device/utils/src/read.c \
../target/arch/arm/cm0plus/atmel/device/utils/src/syscalls.c \
../target/arch/arm/cm0plus/atmel/device/utils/src/write.c 

OBJS += \
./target/arch/arm/cm0plus/atmel/device/utils/src/read.o \
./target/arch/arm/cm0plus/atmel/device/utils/src/syscalls.o \
./target/arch/arm/cm0plus/atmel/device/utils/src/write.o 

C_DEPS += \
./target/arch/arm/cm0plus/atmel/device/utils/src/read.d \
./target/arch/arm/cm0plus/atmel/device/utils/src/syscalls.d \
./target/arch/arm/cm0plus/atmel/device/utils/src/write.d 


# Each subdirectory must supply rules for building sources it contributes
target/arch/arm/cm0plus/atmel/device/utils/src/%.o: ../target/arch/arm/cm0plus/atmel/device/utils/src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


