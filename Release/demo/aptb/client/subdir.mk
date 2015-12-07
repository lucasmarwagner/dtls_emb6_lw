################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../demo/aptb/client/demo_aptb_cli.c 

OBJS += \
./demo/aptb/client/demo_aptb_cli.o 

C_DEPS += \
./demo/aptb/client/demo_aptb_cli.d 


# Each subdirectory must supply rules for building sources it contributes
demo/aptb/client/%.o: ../demo/aptb/client/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


