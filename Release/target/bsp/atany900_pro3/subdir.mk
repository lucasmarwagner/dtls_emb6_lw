################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../target/bsp/atany900_pro3/board_conf.c 

OBJS += \
./target/bsp/atany900_pro3/board_conf.o 

C_DEPS += \
./target/bsp/atany900_pro3/board_conf.d 


# Each subdirectory must supply rules for building sources it contributes
target/bsp/atany900_pro3/%.o: ../target/bsp/atany900_pro3/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


