################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../emb6/src/apl/er-coap/er-coap-block1.c \
../emb6/src/apl/er-coap/er-coap-engine.c \
../emb6/src/apl/er-coap/er-coap-observe.c \
../emb6/src/apl/er-coap/er-coap-res-well-known-core.c \
../emb6/src/apl/er-coap/er-coap-separate.c \
../emb6/src/apl/er-coap/er-coap-transactions.c \
../emb6/src/apl/er-coap/er-coap.c 

OBJS += \
./emb6/src/apl/er-coap/er-coap-block1.o \
./emb6/src/apl/er-coap/er-coap-engine.o \
./emb6/src/apl/er-coap/er-coap-observe.o \
./emb6/src/apl/er-coap/er-coap-res-well-known-core.o \
./emb6/src/apl/er-coap/er-coap-separate.o \
./emb6/src/apl/er-coap/er-coap-transactions.o \
./emb6/src/apl/er-coap/er-coap.o 

C_DEPS += \
./emb6/src/apl/er-coap/er-coap-block1.d \
./emb6/src/apl/er-coap/er-coap-engine.d \
./emb6/src/apl/er-coap/er-coap-observe.d \
./emb6/src/apl/er-coap/er-coap-res-well-known-core.d \
./emb6/src/apl/er-coap/er-coap-separate.d \
./emb6/src/apl/er-coap/er-coap-transactions.d \
./emb6/src/apl/er-coap/er-coap.d 


# Each subdirectory must supply rules for building sources it contributes
emb6/src/apl/er-coap/%.o: ../emb6/src/apl/er-coap/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


