################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../target/if/at86rf212/at86rf212.c 

OBJS += \
./target/if/at86rf212/at86rf212.o 

C_DEPS += \
./target/if/at86rf212/at86rf212.d 


# Each subdirectory must supply rules for building sources it contributes
target/if/at86rf212/%.o: ../target/if/at86rf212/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


