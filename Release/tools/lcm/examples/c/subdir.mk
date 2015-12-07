################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../tools/lcm/examples/c/listener-async.c \
../tools/lcm/examples/c/listener-glib.c \
../tools/lcm/examples/c/listener.c \
../tools/lcm/examples/c/read_log.c \
../tools/lcm/examples/c/send_message.c 

OBJS += \
./tools/lcm/examples/c/listener-async.o \
./tools/lcm/examples/c/listener-glib.o \
./tools/lcm/examples/c/listener.o \
./tools/lcm/examples/c/read_log.o \
./tools/lcm/examples/c/send_message.o 

C_DEPS += \
./tools/lcm/examples/c/listener-async.d \
./tools/lcm/examples/c/listener-glib.d \
./tools/lcm/examples/c/listener.d \
./tools/lcm/examples/c/read_log.d \
./tools/lcm/examples/c/send_message.d 


# Each subdirectory must supply rules for building sources it contributes
tools/lcm/examples/c/%.o: ../tools/lcm/examples/c/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


