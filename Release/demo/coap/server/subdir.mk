################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../demo/coap/server/demo_coap_srv.c 

OBJS += \
./demo/coap/server/demo_coap_srv.o 

C_DEPS += \
./demo/coap/server/demo_coap_srv.d 


# Each subdirectory must supply rules for building sources it contributes
demo/coap/server/%.o: ../demo/coap/server/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


