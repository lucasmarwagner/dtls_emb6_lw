################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../tools/lcm/lcm-logger/glib_util.c \
../tools/lcm/lcm-logger/lcm_logger.c \
../tools/lcm/lcm-logger/lcm_logplayer.c 

OBJS += \
./tools/lcm/lcm-logger/glib_util.o \
./tools/lcm/lcm-logger/lcm_logger.o \
./tools/lcm/lcm-logger/lcm_logplayer.o 

C_DEPS += \
./tools/lcm/lcm-logger/glib_util.d \
./tools/lcm/lcm-logger/lcm_logger.d \
./tools/lcm/lcm-logger/lcm_logplayer.d 


# Each subdirectory must supply rules for building sources it contributes
tools/lcm/lcm-logger/%.o: ../tools/lcm/lcm-logger/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


