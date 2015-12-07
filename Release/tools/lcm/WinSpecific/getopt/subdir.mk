################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../tools/lcm/WinSpecific/getopt/getopt.c \
../tools/lcm/WinSpecific/getopt/getopt_long.c 

OBJS += \
./tools/lcm/WinSpecific/getopt/getopt.o \
./tools/lcm/WinSpecific/getopt/getopt_long.o 

C_DEPS += \
./tools/lcm/WinSpecific/getopt/getopt.d \
./tools/lcm/WinSpecific/getopt/getopt_long.d 


# Each subdirectory must supply rules for building sources it contributes
tools/lcm/WinSpecific/getopt/%.o: ../tools/lcm/WinSpecific/getopt/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


