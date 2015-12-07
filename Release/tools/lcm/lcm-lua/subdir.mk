################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../tools/lcm/lcm-lua/init.c \
../tools/lcm/lcm-lua/lua_ref_helper.c \
../tools/lcm/lcm-lua/lualcm_hash.c \
../tools/lcm/lcm-lua/lualcm_lcm.c \
../tools/lcm/lcm-lua/lualcm_pack.c \
../tools/lcm/lcm-lua/test_unref.c \
../tools/lcm/lcm-lua/utf8_check.c 

OBJS += \
./tools/lcm/lcm-lua/init.o \
./tools/lcm/lcm-lua/lua_ref_helper.o \
./tools/lcm/lcm-lua/lualcm_hash.o \
./tools/lcm/lcm-lua/lualcm_lcm.o \
./tools/lcm/lcm-lua/lualcm_pack.o \
./tools/lcm/lcm-lua/test_unref.o \
./tools/lcm/lcm-lua/utf8_check.o 

C_DEPS += \
./tools/lcm/lcm-lua/init.d \
./tools/lcm/lcm-lua/lua_ref_helper.d \
./tools/lcm/lcm-lua/lualcm_hash.d \
./tools/lcm/lcm-lua/lualcm_lcm.d \
./tools/lcm/lcm-lua/lualcm_pack.d \
./tools/lcm/lcm-lua/test_unref.d \
./tools/lcm/lcm-lua/utf8_check.d 


# Each subdirectory must supply rules for building sources it contributes
tools/lcm/lcm-lua/%.o: ../tools/lcm/lcm-lua/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


