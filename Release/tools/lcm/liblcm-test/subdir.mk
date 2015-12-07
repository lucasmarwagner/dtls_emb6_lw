################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../tools/lcm/liblcm-test/buftest-receiver.c \
../tools/lcm/liblcm-test/buftest-sender.c \
../tools/lcm/liblcm-test/lcm-example.c \
../tools/lcm/liblcm-test/lcm-logfilter.c \
../tools/lcm/liblcm-test/lcm-sink.c \
../tools/lcm/liblcm-test/lcm-source.c \
../tools/lcm/liblcm-test/lcm-tester.c 

OBJS += \
./tools/lcm/liblcm-test/buftest-receiver.o \
./tools/lcm/liblcm-test/buftest-sender.o \
./tools/lcm/liblcm-test/lcm-example.o \
./tools/lcm/liblcm-test/lcm-logfilter.o \
./tools/lcm/liblcm-test/lcm-sink.o \
./tools/lcm/liblcm-test/lcm-source.o \
./tools/lcm/liblcm-test/lcm-tester.o 

C_DEPS += \
./tools/lcm/liblcm-test/buftest-receiver.d \
./tools/lcm/liblcm-test/buftest-sender.d \
./tools/lcm/liblcm-test/lcm-example.d \
./tools/lcm/liblcm-test/lcm-logfilter.d \
./tools/lcm/liblcm-test/lcm-sink.d \
./tools/lcm/liblcm-test/lcm-source.d \
./tools/lcm/liblcm-test/lcm-tester.d 


# Each subdirectory must supply rules for building sources it contributes
tools/lcm/liblcm-test/%.o: ../tools/lcm/liblcm-test/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


