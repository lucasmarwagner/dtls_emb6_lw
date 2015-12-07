################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../utils/src/ctimer.c \
../utils/src/etimer.c \
../utils/src/evproc.c \
../utils/src/list.c \
../utils/src/memb.c \
../utils/src/mmem.c \
../utils/src/packetbuf.c \
../utils/src/queuebuf.c \
../utils/src/random.c \
../utils/src/ringbuffer.c \
../utils/src/stimer.c \
../utils/src/timer.c 

OBJS += \
./utils/src/ctimer.o \
./utils/src/etimer.o \
./utils/src/evproc.o \
./utils/src/list.o \
./utils/src/memb.o \
./utils/src/mmem.o \
./utils/src/packetbuf.o \
./utils/src/queuebuf.o \
./utils/src/random.o \
./utils/src/ringbuffer.o \
./utils/src/stimer.o \
./utils/src/timer.o 

C_DEPS += \
./utils/src/ctimer.d \
./utils/src/etimer.d \
./utils/src/evproc.d \
./utils/src/list.d \
./utils/src/memb.d \
./utils/src/mmem.d \
./utils/src/packetbuf.d \
./utils/src/queuebuf.d \
./utils/src/random.d \
./utils/src/ringbuffer.d \
./utils/src/stimer.d \
./utils/src/timer.d 


# Each subdirectory must supply rules for building sources it contributes
utils/src/%.o: ../utils/src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


