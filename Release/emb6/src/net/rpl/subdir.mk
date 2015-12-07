################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../emb6/src/net/rpl/rpl-dag.c \
../emb6/src/net/rpl/rpl-ext-header.c \
../emb6/src/net/rpl/rpl-icmp6.c \
../emb6/src/net/rpl/rpl-mrhof.c \
../emb6/src/net/rpl/rpl-timers.c \
../emb6/src/net/rpl/rpl.c 

OBJS += \
./emb6/src/net/rpl/rpl-dag.o \
./emb6/src/net/rpl/rpl-ext-header.o \
./emb6/src/net/rpl/rpl-icmp6.o \
./emb6/src/net/rpl/rpl-mrhof.o \
./emb6/src/net/rpl/rpl-timers.o \
./emb6/src/net/rpl/rpl.o 

C_DEPS += \
./emb6/src/net/rpl/rpl-dag.d \
./emb6/src/net/rpl/rpl-ext-header.d \
./emb6/src/net/rpl/rpl-icmp6.d \
./emb6/src/net/rpl/rpl-mrhof.d \
./emb6/src/net/rpl/rpl-timers.d \
./emb6/src/net/rpl/rpl.d 


# Each subdirectory must supply rules for building sources it contributes
emb6/src/net/rpl/%.o: ../emb6/src/net/rpl/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


