################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../target/bsp/samd20xpro_rf212b/board_conf.c 

OBJS += \
./target/bsp/samd20xpro_rf212b/board_conf.o 

C_DEPS += \
./target/bsp/samd20xpro_rf212b/board_conf.d 


# Each subdirectory must supply rules for building sources it contributes
target/bsp/samd20xpro_rf212b/%.o: ../target/bsp/samd20xpro_rf212b/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


