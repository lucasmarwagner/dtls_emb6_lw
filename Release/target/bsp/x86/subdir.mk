################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../target/bsp/x86/board_conf.c 

OBJS += \
./target/bsp/x86/board_conf.o 

C_DEPS += \
./target/bsp/x86/board_conf.d 


# Each subdirectory must supply rules for building sources it contributes
target/bsp/x86/%.o: ../target/bsp/x86/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


