################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../target/mcu/samd21/samd21.c 

OBJS += \
./target/mcu/samd21/samd21.o 

C_DEPS += \
./target/mcu/samd21/samd21.d 


# Each subdirectory must supply rules for building sources it contributes
target/mcu/samd21/%.o: ../target/mcu/samd21/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


