################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../tools/scpi-parser/examples/test-tcp-srq/main.c 

OBJS += \
./tools/scpi-parser/examples/test-tcp-srq/main.o 

C_DEPS += \
./tools/scpi-parser/examples/test-tcp-srq/main.d 


# Each subdirectory must supply rules for building sources it contributes
tools/scpi-parser/examples/test-tcp-srq/%.o: ../tools/scpi-parser/examples/test-tcp-srq/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


