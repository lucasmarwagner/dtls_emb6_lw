################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../emb6/src/net/ipv6/multicast/roll-tm.c \
../emb6/src/net/ipv6/multicast/smrf.c \
../emb6/src/net/ipv6/multicast/uip-mcast6-route.c \
../emb6/src/net/ipv6/multicast/uip-mcast6-stats.c 

OBJS += \
./emb6/src/net/ipv6/multicast/roll-tm.o \
./emb6/src/net/ipv6/multicast/smrf.o \
./emb6/src/net/ipv6/multicast/uip-mcast6-route.o \
./emb6/src/net/ipv6/multicast/uip-mcast6-stats.o 

C_DEPS += \
./emb6/src/net/ipv6/multicast/roll-tm.d \
./emb6/src/net/ipv6/multicast/smrf.d \
./emb6/src/net/ipv6/multicast/uip-mcast6-route.d \
./emb6/src/net/ipv6/multicast/uip-mcast6-stats.d 


# Each subdirectory must supply rules for building sources it contributes
emb6/src/net/ipv6/multicast/%.o: ../emb6/src/net/ipv6/multicast/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


