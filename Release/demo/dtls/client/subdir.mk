################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../demo/dtls/client/demo_dtls_cli.c 

OBJS += \
./demo/dtls/client/demo_dtls_cli.o 

C_DEPS += \
./demo/dtls/client/demo_dtls_cli.d 


# Each subdirectory must supply rules for building sources it contributes
demo/dtls/client/%.o: ../demo/dtls/client/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


