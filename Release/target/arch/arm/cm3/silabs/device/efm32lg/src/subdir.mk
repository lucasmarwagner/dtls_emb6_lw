################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../target/arch/arm/cm3/silabs/device/efm32lg/src/system_efm32lg.c 

OBJS += \
./target/arch/arm/cm3/silabs/device/efm32lg/src/system_efm32lg.o 

C_DEPS += \
./target/arch/arm/cm3/silabs/device/efm32lg/src/system_efm32lg.d 


# Each subdirectory must supply rules for building sources it contributes
target/arch/arm/cm3/silabs/device/efm32lg/src/%.o: ../target/arch/arm/cm3/silabs/device/efm32lg/src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


