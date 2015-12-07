################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../target/mcu/efm32lg990f256/efm32lg990.c 

OBJS += \
./target/mcu/efm32lg990f256/efm32lg990.o 

C_DEPS += \
./target/mcu/efm32lg990f256/efm32lg990.d 


# Each subdirectory must supply rules for building sources it contributes
target/mcu/efm32lg990f256/%.o: ../target/mcu/efm32lg990f256/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


