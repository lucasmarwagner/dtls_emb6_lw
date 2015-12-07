################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../demo/extif/cmd.c \
../demo/extif/packetutils.c \
../demo/extif/slip-radio.c \
../demo/extif/slip.c \
../demo/extif/slip_radio.c 

OBJS += \
./demo/extif/cmd.o \
./demo/extif/packetutils.o \
./demo/extif/slip-radio.o \
./demo/extif/slip.o \
./demo/extif/slip_radio.o 

C_DEPS += \
./demo/extif/cmd.d \
./demo/extif/packetutils.d \
./demo/extif/slip-radio.d \
./demo/extif/slip.d \
./demo/extif/slip_radio.d 


# Each subdirectory must supply rules for building sources it contributes
demo/extif/%.o: ../demo/extif/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


