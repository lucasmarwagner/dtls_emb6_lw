################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
S_UPPER_SRCS += \
../target/arch/arm/cm3/silabs/device/efm32lg/startup/GCC/startup_efm32lg.S 

OBJS += \
./target/arch/arm/cm3/silabs/device/efm32lg/startup/GCC/startup_efm32lg.o 

S_UPPER_DEPS += \
./target/arch/arm/cm3/silabs/device/efm32lg/startup/GCC/startup_efm32lg.d 


# Each subdirectory must supply rules for building sources it contributes
target/arch/arm/cm3/silabs/device/efm32lg/startup/GCC/%.o: ../target/arch/arm/cm3/silabs/device/efm32lg/startup/GCC/%.S
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM GNU Assembler'
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g -x assembler-with-cpp -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


