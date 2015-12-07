################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../tools/lcm/lcmgen/emit_c.c \
../tools/lcm/lcmgen/emit_cpp.c \
../tools/lcm/lcmgen/emit_csharp.c \
../tools/lcm/lcmgen/emit_java.c \
../tools/lcm/lcmgen/emit_lua.c \
../tools/lcm/lcmgen/emit_python.c \
../tools/lcm/lcmgen/getopt.c \
../tools/lcm/lcmgen/lcmgen.c \
../tools/lcm/lcmgen/main.c \
../tools/lcm/lcmgen/tokenize.c 

OBJS += \
./tools/lcm/lcmgen/emit_c.o \
./tools/lcm/lcmgen/emit_cpp.o \
./tools/lcm/lcmgen/emit_csharp.o \
./tools/lcm/lcmgen/emit_java.o \
./tools/lcm/lcmgen/emit_lua.o \
./tools/lcm/lcmgen/emit_python.o \
./tools/lcm/lcmgen/getopt.o \
./tools/lcm/lcmgen/lcmgen.o \
./tools/lcm/lcmgen/main.o \
./tools/lcm/lcmgen/tokenize.o 

C_DEPS += \
./tools/lcm/lcmgen/emit_c.d \
./tools/lcm/lcmgen/emit_cpp.d \
./tools/lcm/lcmgen/emit_csharp.d \
./tools/lcm/lcmgen/emit_java.d \
./tools/lcm/lcmgen/emit_lua.d \
./tools/lcm/lcmgen/emit_python.d \
./tools/lcm/lcmgen/getopt.d \
./tools/lcm/lcmgen/lcmgen.d \
./tools/lcm/lcmgen/main.d \
./tools/lcm/lcmgen/tokenize.d 


# Each subdirectory must supply rules for building sources it contributes
tools/lcm/lcmgen/%.o: ../tools/lcm/lcmgen/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


