################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../emb6/src/mac/frame802154.c \
../emb6/src/mac/framer-802154.c \
../emb6/src/mac/framer.c \
../emb6/src/mac/linkaddr.c \
../emb6/src/mac/mac.c \
../emb6/src/mac/no-framer.c \
../emb6/src/mac/nullframer.c \
../emb6/src/mac/nullmac.c \
../emb6/src/mac/nullrdc.c \
../emb6/src/mac/rimestats.c \
../emb6/src/mac/sicslowmac.c 

OBJS += \
./emb6/src/mac/frame802154.o \
./emb6/src/mac/framer-802154.o \
./emb6/src/mac/framer.o \
./emb6/src/mac/linkaddr.o \
./emb6/src/mac/mac.o \
./emb6/src/mac/no-framer.o \
./emb6/src/mac/nullframer.o \
./emb6/src/mac/nullmac.o \
./emb6/src/mac/nullrdc.o \
./emb6/src/mac/rimestats.o \
./emb6/src/mac/sicslowmac.o 

C_DEPS += \
./emb6/src/mac/frame802154.d \
./emb6/src/mac/framer-802154.d \
./emb6/src/mac/framer.d \
./emb6/src/mac/linkaddr.d \
./emb6/src/mac/mac.d \
./emb6/src/mac/no-framer.d \
./emb6/src/mac/nullframer.d \
./emb6/src/mac/nullmac.d \
./emb6/src/mac/nullrdc.d \
./emb6/src/mac/rimestats.d \
./emb6/src/mac/sicslowmac.d 


# Each subdirectory must supply rules for building sources it contributes
emb6/src/mac/%.o: ../emb6/src/mac/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


