################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../tools/lcm/lcm-lite/lcmlite.c \
../tools/lcm/lcm-lite/lcmlite_ios.c \
../tools/lcm/lcm-lite/lcmlite_posix.c 

OBJS += \
./tools/lcm/lcm-lite/lcmlite.o \
./tools/lcm/lcm-lite/lcmlite_ios.o \
./tools/lcm/lcm-lite/lcmlite_posix.o 

C_DEPS += \
./tools/lcm/lcm-lite/lcmlite.d \
./tools/lcm/lcm-lite/lcmlite_ios.d \
./tools/lcm/lcm-lite/lcmlite_posix.d 


# Each subdirectory must supply rules for building sources it contributes
tools/lcm/lcm-lite/%.o: ../tools/lcm/lcm-lite/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


