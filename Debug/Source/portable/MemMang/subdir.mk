################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Source/portable/MemMang/heap_3.c 

OBJS += \
./Source/portable/MemMang/heap_3.o 

C_DEPS += \
./Source/portable/MemMang/heap_3.d 


# Each subdirectory must supply rules for building sources it contributes
Source/portable/MemMang/%.o: ../Source/portable/MemMang/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Sourcery Windows GCC C Compiler'
	arm-none-eabi-gcc -I"/home/wonseok/work/guestos/freertos/FreeRTOS_ARM_Cortex-A15/Demo" -I"/home/wonseok/work/guestos/freertos/FreeRTOS_ARM_Cortex-A15/Demo/Common/include" -I"/home/wonseok/work/guestos/freertos/FreeRTOS_ARM_Cortex-A15/Source/include" -I"/home/wonseok/work/guestos/freertos/FreeRTOS_ARM_Cortex-A15/Source/portable/GCC/ARM_Cortex-A15" -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-a9 -g3 -gdwarf-2 -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


