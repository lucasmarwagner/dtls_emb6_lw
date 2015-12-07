################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../tools/scpi-parser/libscpi/test/test_fifo.c \
../tools/scpi-parser/libscpi/test/test_lexer_parser.c \
../tools/scpi-parser/libscpi/test/test_parser.c \
../tools/scpi-parser/libscpi/test/test_scpi_utils.c 

OBJS += \
./tools/scpi-parser/libscpi/test/test_fifo.o \
./tools/scpi-parser/libscpi/test/test_lexer_parser.o \
./tools/scpi-parser/libscpi/test/test_parser.o \
./tools/scpi-parser/libscpi/test/test_scpi_utils.o 

C_DEPS += \
./tools/scpi-parser/libscpi/test/test_fifo.d \
./tools/scpi-parser/libscpi/test/test_lexer_parser.d \
./tools/scpi-parser/libscpi/test/test_parser.d \
./tools/scpi-parser/libscpi/test/test_scpi_utils.d 


# Each subdirectory must supply rules for building sources it contributes
tools/scpi-parser/libscpi/test/%.o: ../tools/scpi-parser/libscpi/test/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


