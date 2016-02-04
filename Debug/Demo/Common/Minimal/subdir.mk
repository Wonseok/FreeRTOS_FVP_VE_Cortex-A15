################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Demo/Common/Minimal/BlockQ.c \
../Demo/Common/Minimal/GenQTest.c \
../Demo/Common/Minimal/PollQ.c \
../Demo/Common/Minimal/QPeek.c \
../Demo/Common/Minimal/comtest.c \
../Demo/Common/Minimal/countsem.c \
../Demo/Common/Minimal/dynamic.c \
../Demo/Common/Minimal/flop.c \
../Demo/Common/Minimal/integer.c \
../Demo/Common/Minimal/recmutex.c \
../Demo/Common/Minimal/semtest.c 

OBJS += \
./Demo/Common/Minimal/BlockQ.o \
./Demo/Common/Minimal/GenQTest.o \
./Demo/Common/Minimal/PollQ.o \
./Demo/Common/Minimal/QPeek.o \
./Demo/Common/Minimal/comtest.o \
./Demo/Common/Minimal/countsem.o \
./Demo/Common/Minimal/dynamic.o \
./Demo/Common/Minimal/flop.o \
./Demo/Common/Minimal/integer.o \
./Demo/Common/Minimal/recmutex.o \
./Demo/Common/Minimal/semtest.o 

C_DEPS += \
./Demo/Common/Minimal/BlockQ.d \
./Demo/Common/Minimal/GenQTest.d \
./Demo/Common/Minimal/PollQ.d \
./Demo/Common/Minimal/QPeek.d \
./Demo/Common/Minimal/comtest.d \
./Demo/Common/Minimal/countsem.d \
./Demo/Common/Minimal/dynamic.d \
./Demo/Common/Minimal/flop.d \
./Demo/Common/Minimal/integer.d \
./Demo/Common/Minimal/recmutex.d \
./Demo/Common/Minimal/semtest.d 


# Each subdirectory must supply rules for building sources it contributes
Demo/Common/Minimal/%.o: ../Demo/Common/Minimal/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Sourcery Windows GCC C Compiler'
	arm-none-eabi-gcc -I"/home/wonseok/work/guestos/freertos/FreeRTOS_FVP_VE_Cortex-A15/Demo" -I"/home/wonseok/work/guestos/freertos/FreeRTOS_FVP_VE_Cortex-A15/Demo/Common/include" -I"/home/wonseok/work/guestos/freertos/FreeRTOS_FVP_VE_Cortex-A15/Source/include" -I"/home/wonseok/work/guestos/freertos/FreeRTOS_FVP_VE_Cortex-A15/Source/portable/GCC/ARM_Cortex-A15" -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-a15 -g3 -gdwarf-2 -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


