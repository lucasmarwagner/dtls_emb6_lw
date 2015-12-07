################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../.sconf_temp/conftest_0.c 

OBJS += \
./.sconf_temp/conftest_0.o 

C_DEPS += \
./.sconf_temp/conftest_0.d 


# Each subdirectory must supply rules for building sources it contributes
.sconf_temp/%.o: ../.sconf_temp/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


