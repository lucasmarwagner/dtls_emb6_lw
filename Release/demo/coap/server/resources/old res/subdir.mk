################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../demo/coap/server/resources/old\ res/res-battstat.c \
../demo/coap/server/resources/old\ res/res-chunks.c \
../demo/coap/server/resources/old\ res/res-humidity.c \
../demo/coap/server/resources/old\ res/res-leds.c \
../demo/coap/server/resources/old\ res/res-push2.c 

OBJS += \
./demo/coap/server/resources/old\ res/res-battstat.o \
./demo/coap/server/resources/old\ res/res-chunks.o \
./demo/coap/server/resources/old\ res/res-humidity.o \
./demo/coap/server/resources/old\ res/res-leds.o \
./demo/coap/server/resources/old\ res/res-push2.o 

C_DEPS += \
./demo/coap/server/resources/old\ res/res-battstat.d \
./demo/coap/server/resources/old\ res/res-chunks.d \
./demo/coap/server/resources/old\ res/res-humidity.d \
./demo/coap/server/resources/old\ res/res-leds.d \
./demo/coap/server/resources/old\ res/res-push2.d 


# Each subdirectory must supply rules for building sources it contributes
demo/coap/server/resources/old\ res/res-battstat.o: ../demo/coap/server/resources/old\ res/res-battstat.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g -std=gnu11 -MMD -MP -MF"demo/coap/server/resources/old res/res-battstat.d" -MT"demo/coap/server/resources/old\ res/res-battstat.d" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

demo/coap/server/resources/old\ res/res-chunks.o: ../demo/coap/server/resources/old\ res/res-chunks.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g -std=gnu11 -MMD -MP -MF"demo/coap/server/resources/old res/res-chunks.d" -MT"demo/coap/server/resources/old\ res/res-chunks.d" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

demo/coap/server/resources/old\ res/res-humidity.o: ../demo/coap/server/resources/old\ res/res-humidity.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g -std=gnu11 -MMD -MP -MF"demo/coap/server/resources/old res/res-humidity.d" -MT"demo/coap/server/resources/old\ res/res-humidity.d" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

demo/coap/server/resources/old\ res/res-leds.o: ../demo/coap/server/resources/old\ res/res-leds.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g -std=gnu11 -MMD -MP -MF"demo/coap/server/resources/old res/res-leds.d" -MT"demo/coap/server/resources/old\ res/res-leds.d" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

demo/coap/server/resources/old\ res/res-push2.o: ../demo/coap/server/resources/old\ res/res-push2.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g -std=gnu11 -MMD -MP -MF"demo/coap/server/resources/old res/res-push2.d" -MT"demo/coap/server/resources/old\ res/res-push2.d" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


