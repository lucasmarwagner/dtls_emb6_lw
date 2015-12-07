################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../tools/lcm/lcm/lcmtypes/channel_port_map_update_t.c \
../tools/lcm/lcm/lcmtypes/channel_to_port_t.c 

OBJS += \
./tools/lcm/lcm/lcmtypes/channel_port_map_update_t.o \
./tools/lcm/lcm/lcmtypes/channel_to_port_t.o 

C_DEPS += \
./tools/lcm/lcm/lcmtypes/channel_port_map_update_t.d \
./tools/lcm/lcm/lcmtypes/channel_to_port_t.d 


# Each subdirectory must supply rules for building sources it contributes
tools/lcm/lcm/lcmtypes/%.o: ../tools/lcm/lcm/lcmtypes/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


