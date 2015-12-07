################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../emb6/src/net/ipv6/nbr-table.c \
../emb6/src/net/ipv6/tcpip.c \
../emb6/src/net/ipv6/uip-debug.c \
../emb6/src/net/ipv6/uip-ds6-nbr.c \
../emb6/src/net/ipv6/uip-ds6-route.c \
../emb6/src/net/ipv6/uip-ds6.c \
../emb6/src/net/ipv6/uip-icmp6.c \
../emb6/src/net/ipv6/uip-nameserver.c \
../emb6/src/net/ipv6/uip-nd6.c \
../emb6/src/net/ipv6/uip-packetqueue.c \
../emb6/src/net/ipv6/uip-split.c \
../emb6/src/net/ipv6/uip-udp-packet.c \
../emb6/src/net/ipv6/uip6.c \
../emb6/src/net/ipv6/uiplib.c 

OBJS += \
./emb6/src/net/ipv6/nbr-table.o \
./emb6/src/net/ipv6/tcpip.o \
./emb6/src/net/ipv6/uip-debug.o \
./emb6/src/net/ipv6/uip-ds6-nbr.o \
./emb6/src/net/ipv6/uip-ds6-route.o \
./emb6/src/net/ipv6/uip-ds6.o \
./emb6/src/net/ipv6/uip-icmp6.o \
./emb6/src/net/ipv6/uip-nameserver.o \
./emb6/src/net/ipv6/uip-nd6.o \
./emb6/src/net/ipv6/uip-packetqueue.o \
./emb6/src/net/ipv6/uip-split.o \
./emb6/src/net/ipv6/uip-udp-packet.o \
./emb6/src/net/ipv6/uip6.o \
./emb6/src/net/ipv6/uiplib.o 

C_DEPS += \
./emb6/src/net/ipv6/nbr-table.d \
./emb6/src/net/ipv6/tcpip.d \
./emb6/src/net/ipv6/uip-debug.d \
./emb6/src/net/ipv6/uip-ds6-nbr.d \
./emb6/src/net/ipv6/uip-ds6-route.d \
./emb6/src/net/ipv6/uip-ds6.d \
./emb6/src/net/ipv6/uip-icmp6.d \
./emb6/src/net/ipv6/uip-nameserver.d \
./emb6/src/net/ipv6/uip-nd6.d \
./emb6/src/net/ipv6/uip-packetqueue.d \
./emb6/src/net/ipv6/uip-split.d \
./emb6/src/net/ipv6/uip-udp-packet.d \
./emb6/src/net/ipv6/uip6.d \
./emb6/src/net/ipv6/uiplib.d 


# Each subdirectory must supply rules for building sources it contributes
emb6/src/net/ipv6/%.o: ../emb6/src/net/ipv6/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


