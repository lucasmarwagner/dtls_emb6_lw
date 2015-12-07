################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../demo/udp_alive/demo_udp_alive.c 

OBJS += \
./demo/udp_alive/demo_udp_alive.o 

C_DEPS += \
./demo/udp_alive/demo_udp_alive.d 


# Each subdirectory must supply rules for building sources it contributes
demo/udp_alive/%.o: ../demo/udp_alive/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


