################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../demo/coap/server/resources/res-led_toggle.c \
../demo/coap/server/resources/res-push.c \
../demo/coap/server/resources/res-rf_info.c \
../demo/coap/server/resources/res-temp.c \
../demo/coap/server/resources/res-toggle.c 

OBJS += \
./demo/coap/server/resources/res-led_toggle.o \
./demo/coap/server/resources/res-push.o \
./demo/coap/server/resources/res-rf_info.o \
./demo/coap/server/resources/res-temp.o \
./demo/coap/server/resources/res-toggle.o 

C_DEPS += \
./demo/coap/server/resources/res-led_toggle.d \
./demo/coap/server/resources/res-push.d \
./demo/coap/server/resources/res-rf_info.d \
./demo/coap/server/resources/res-temp.d \
./demo/coap/server/resources/res-toggle.d 


# Each subdirectory must supply rules for building sources it contributes
demo/coap/server/resources/%.o: ../demo/coap/server/resources/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


