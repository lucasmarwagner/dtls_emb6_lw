################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../emb6/src/net/dtls/ccm.c \
../emb6/src/net/dtls/crypto.c \
../emb6/src/net/dtls/debug.c \
../emb6/src/net/dtls/dtls.c \
../emb6/src/net/dtls/dtls_time.c \
../emb6/src/net/dtls/hmac.c \
../emb6/src/net/dtls/netq.c \
../emb6/src/net/dtls/peer.c \
../emb6/src/net/dtls/session.c 

OBJS += \
./emb6/src/net/dtls/ccm.o \
./emb6/src/net/dtls/crypto.o \
./emb6/src/net/dtls/debug.o \
./emb6/src/net/dtls/dtls.o \
./emb6/src/net/dtls/dtls_time.o \
./emb6/src/net/dtls/hmac.o \
./emb6/src/net/dtls/netq.o \
./emb6/src/net/dtls/peer.o \
./emb6/src/net/dtls/session.o 

C_DEPS += \
./emb6/src/net/dtls/ccm.d \
./emb6/src/net/dtls/crypto.d \
./emb6/src/net/dtls/debug.d \
./emb6/src/net/dtls/dtls.d \
./emb6/src/net/dtls/dtls_time.d \
./emb6/src/net/dtls/hmac.d \
./emb6/src/net/dtls/netq.d \
./emb6/src/net/dtls/peer.d \
./emb6/src/net/dtls/session.d 


# Each subdirectory must supply rules for building sources it contributes
emb6/src/net/dtls/%.o: ../emb6/src/net/dtls/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


