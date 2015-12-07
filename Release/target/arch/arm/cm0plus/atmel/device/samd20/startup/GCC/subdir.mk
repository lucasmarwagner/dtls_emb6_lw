################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../target/arch/arm/cm0plus/atmel/device/samd20/startup/GCC/startup_samd20.c 

OBJS += \
./target/arch/arm/cm0plus/atmel/device/samd20/startup/GCC/startup_samd20.o 

C_DEPS += \
./target/arch/arm/cm0plus/atmel/device/samd20/startup/GCC/startup_samd20.d 


# Each subdirectory must supply rules for building sources it contributes
target/arch/arm/cm0plus/atmel/device/samd20/startup/GCC/%.o: ../target/arch/arm/cm0plus/atmel/device/samd20/startup/GCC/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


