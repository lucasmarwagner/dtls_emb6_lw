################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../emb6/src/apl/rest-engine/rest-engine.c 

OBJS += \
./emb6/src/apl/rest-engine/rest-engine.o 

C_DEPS += \
./emb6/src/apl/rest-engine/rest-engine.d 


# Each subdirectory must supply rules for building sources it contributes
emb6/src/apl/rest-engine/%.o: ../emb6/src/apl/rest-engine/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


