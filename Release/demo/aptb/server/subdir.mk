################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../demo/aptb/server/demo_aptb_srv.c 

OBJS += \
./demo/aptb/server/demo_aptb_srv.o 

C_DEPS += \
./demo/aptb/server/demo_aptb_srv.d 


# Each subdirectory must supply rules for building sources it contributes
demo/aptb/server/%.o: ../demo/aptb/server/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


