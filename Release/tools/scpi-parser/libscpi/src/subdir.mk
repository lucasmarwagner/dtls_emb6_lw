################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../tools/scpi-parser/libscpi/src/error.c \
../tools/scpi-parser/libscpi/src/fifo.c \
../tools/scpi-parser/libscpi/src/ieee488.c \
../tools/scpi-parser/libscpi/src/lexer.c \
../tools/scpi-parser/libscpi/src/minimal.c \
../tools/scpi-parser/libscpi/src/parser.c \
../tools/scpi-parser/libscpi/src/units.c \
../tools/scpi-parser/libscpi/src/utils.c 

OBJS += \
./tools/scpi-parser/libscpi/src/error.o \
./tools/scpi-parser/libscpi/src/fifo.o \
./tools/scpi-parser/libscpi/src/ieee488.o \
./tools/scpi-parser/libscpi/src/lexer.o \
./tools/scpi-parser/libscpi/src/minimal.o \
./tools/scpi-parser/libscpi/src/parser.o \
./tools/scpi-parser/libscpi/src/units.o \
./tools/scpi-parser/libscpi/src/utils.o 

C_DEPS += \
./tools/scpi-parser/libscpi/src/error.d \
./tools/scpi-parser/libscpi/src/fifo.d \
./tools/scpi-parser/libscpi/src/ieee488.d \
./tools/scpi-parser/libscpi/src/lexer.d \
./tools/scpi-parser/libscpi/src/minimal.d \
./tools/scpi-parser/libscpi/src/parser.d \
./tools/scpi-parser/libscpi/src/units.d \
./tools/scpi-parser/libscpi/src/utils.d 


# Each subdirectory must supply rules for building sources it contributes
tools/scpi-parser/libscpi/src/%.o: ../tools/scpi-parser/libscpi/src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


