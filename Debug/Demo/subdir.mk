################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables
C_SRCS += \
../Demo/main.c \
../Demo/pl011.c \
../Demo/pl031_rtc.c \
../Demo/serial.c \
../Demo/sp804_timer.c

S_UPPER_SRCS += \
../Demo/vectors.S

OBJS += \
./Demo/main.o \
./Demo/pl011.o \
./Demo/pl031_rtc.o \
./Demo/serial.o \
./Demo/sp804_timer.o \
./Demo/vectors.o

C_DEPS += \
./Demo/main.d \
./Demo/pl011.d \
./Demo/pl031_rtc.d \
./Demo/serial.d \
./Demo/sp804_timer.d

S_UPPER_DEPS += \
./Demo/vectors.d


# Each subdirectory must supply rules for building sources it contributes
Demo/%.o: ../Demo/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Sourcery Windows GCC C Compiler'
	arm-none-eabi-gcc -I"/home/wonseok/work/guestos/freertos/FreeRTOS_FVP_VE_Cortex-A15/Demo" -I"/home/wonseok/work/guestos/freertos/FreeRTOS_FVP_VE_Cortex-A15/Demo/Common/include" -I"/home/wonseok/work/guestos/freertos/FreeRTOS_FVP_VE_Cortex-A15/Source/include" -I"/home/wonseok/work/guestos/freertos/FreeRTOS_FVP_VE_Cortex-A15/Source/portable/GCC/ARM_Cortex-A15" -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-a15 -g3 -gdwarf-2 -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Demo/%.o: ../Demo/%.S
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Sourcery Windows GCC Assembler'
	arm-none-eabi-gcc -x assembler-with-cpp -I"/home/wonseok/work/guestos/freertos/FreeRTOS_FVP_VE_Cortex-A15/Demo" -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-a15 -g3 -gdwarf-2 -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


