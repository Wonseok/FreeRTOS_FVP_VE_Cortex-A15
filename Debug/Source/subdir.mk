################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Source/croutine.c \
../Source/list.c \
../Source/queue.c \
../Source/tasks.c \
../Source/timers.c 

OBJS += \
./Source/croutine.o \
./Source/list.o \
./Source/queue.o \
./Source/tasks.o \
./Source/timers.o 

C_DEPS += \
./Source/croutine.d \
./Source/list.d \
./Source/queue.d \
./Source/tasks.d \
./Source/timers.d 


# Each subdirectory must supply rules for building sources it contributes
Source/%.o: ../Source/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Sourcery Windows GCC C Compiler'
	arm-none-eabi-gcc -I"/home/wonseok/work/guestos/freertos/FreeRTOS_ARM_Cortex-A15/Demo" -I"/home/wonseok/work/guestos/freertos/FreeRTOS_ARM_Cortex-A15/Demo/Common/include" -I"/home/wonseok/work/guestos/freertos/FreeRTOS_ARM_Cortex-A15/Source/include" -I"/home/wonseok/work/guestos/freertos/FreeRTOS_ARM_Cortex-A15/Source/portable/GCC/ARM_Cortex-A15" -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-a9 -g3 -gdwarf-2 -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


