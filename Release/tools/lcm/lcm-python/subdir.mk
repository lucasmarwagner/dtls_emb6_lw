################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../tools/lcm/lcm-python/module.c \
../tools/lcm/lcm-python/pyeventlog.c \
../tools/lcm/lcm-python/pylcm.c \
../tools/lcm/lcm-python/pylcm_subscription.c 

OBJS += \
./tools/lcm/lcm-python/module.o \
./tools/lcm/lcm-python/pyeventlog.o \
./tools/lcm/lcm-python/pylcm.o \
./tools/lcm/lcm-python/pylcm_subscription.o 

C_DEPS += \
./tools/lcm/lcm-python/module.d \
./tools/lcm/lcm-python/pyeventlog.d \
./tools/lcm/lcm-python/pylcm.d \
./tools/lcm/lcm-python/pylcm_subscription.d 


# Each subdirectory must supply rules for building sources it contributes
tools/lcm/lcm-python/%.o: ../tools/lcm/lcm-python/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


