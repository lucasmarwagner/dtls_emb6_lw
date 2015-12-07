################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../tools/lcm/lcm/eventlog.c \
../tools/lcm/lcm/lcm.c \
../tools/lcm/lcm/lcm_file.c \
../tools/lcm/lcm/lcm_memq.c \
../tools/lcm/lcm/lcm_mpudpm.c \
../tools/lcm/lcm/lcm_tcpq.c \
../tools/lcm/lcm/lcm_udpm.c \
../tools/lcm/lcm/ringbuffer.c \
../tools/lcm/lcm/udpm_util.c 

OBJS += \
./tools/lcm/lcm/eventlog.o \
./tools/lcm/lcm/lcm.o \
./tools/lcm/lcm/lcm_file.o \
./tools/lcm/lcm/lcm_memq.o \
./tools/lcm/lcm/lcm_mpudpm.o \
./tools/lcm/lcm/lcm_tcpq.o \
./tools/lcm/lcm/lcm_udpm.o \
./tools/lcm/lcm/ringbuffer.o \
./tools/lcm/lcm/udpm_util.o 

C_DEPS += \
./tools/lcm/lcm/eventlog.d \
./tools/lcm/lcm/lcm.d \
./tools/lcm/lcm/lcm_file.d \
./tools/lcm/lcm/lcm_memq.d \
./tools/lcm/lcm/lcm_mpudpm.d \
./tools/lcm/lcm/lcm_tcpq.d \
./tools/lcm/lcm/lcm_udpm.d \
./tools/lcm/lcm/ringbuffer.d \
./tools/lcm/lcm/udpm_util.d 


# Each subdirectory must supply rules for building sources it contributes
tools/lcm/lcm/%.o: ../tools/lcm/lcm/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


