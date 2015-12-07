################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../tools/lcm/test/c/common.c \
../tools/lcm/test/c/server.c 

OBJS += \
./tools/lcm/test/c/common.o \
./tools/lcm/test/c/server.o 

C_DEPS += \
./tools/lcm/test/c/common.d \
./tools/lcm/test/c/server.d 


# Each subdirectory must supply rules for building sources it contributes
tools/lcm/test/c/%.o: ../tools/lcm/test/c/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


