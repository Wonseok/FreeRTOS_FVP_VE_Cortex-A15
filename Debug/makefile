################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include subdir.mk
-include Source/subdir.mk
-include Source/portable/MemMang/subdir.mk
-include Source/portable/GCC/ARM_Cortex-A9/subdir.mk
-include Demo/subdir.mk
-include Demo/Common/Minimal/subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
ifneq ($(strip $(ASM_DEPS)),)
-include $(ASM_DEPS)
endif
ifneq ($(strip $(S_UPPER_DEPS)),)
-include $(S_UPPER_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables
SECONDARY_FLASH += \
/home/wonseok/work/guestos/freertos/FreeRTOS_ARM_Cortex-A9.hex \

SECONDARY_LIST += \
/home/wonseok/work/guestos/freertos/FreeRTOS_ARM_Cortex-A9.lst \

SECONDARY_SIZE += \
/home/wonseok/work/guestos/freertos/FreeRTOS_ARM_Cortex-A9.siz \


# All Target
all: /home/wonseok/work/guestos/freertos/FreeRTOS_ARM_Cortex-A9.elf secondary-outputs

# Tool invocations
/home/wonseok/work/guestos/freertos/FreeRTOS_ARM_Cortex-A9.elf: $(OBJS) $(USER_OBJS)
	@echo 'Building target: $@'
	@echo 'Invoking: ARM Sourcery Windows GCC C Linker'
	arm-none-eabi-gcc -T"../Demo/generic.ld" -nostartfiles -L"/home/wonseok/experiment/arm-2013.05/arm-none-eabi/lib" -Wl,-Map,/home/wonseok/work/guestos/freertos/FreeRTOS_ARM_Cortex-A9.map --entry Vector_Init -mcpu=cortex-a9 -g3 -gdwarf-2 -o"/home/wonseok/work/guestos/freertos/FreeRTOS_ARM_Cortex-A9.elf" $(OBJS) $(USER_OBJS) $(LIBS)
	@echo 'Finished building target: $@'
	@echo ' '

/home/wonseok/work/guestos/freertos/FreeRTOS_ARM_Cortex-A9.hex: /home/wonseok/work/guestos/freertos/FreeRTOS_ARM_Cortex-A9.elf
	@echo 'Invoking: ARM Sourcery Windows GNU Create Flash Image'
	arm-none-eabi-objcopy -O binary /home/wonseok/work/guestos/freertos/FreeRTOS_ARM_Cortex-A9.elf "/home/wonseok/work/guestos/freertos/FreeRTOS_ARM_Cortex-A9.hex"
	@echo 'Finished building: $@'
	@echo ' '

/home/wonseok/work/guestos/freertos/FreeRTOS_ARM_Cortex-A9.lst: /home/wonseok/work/guestos/freertos/FreeRTOS_ARM_Cortex-A9.elf
	@echo 'Invoking: ARM Sourcery Windows GNU Create Listing'
	arm-none-eabi-objdump -h -S /home/wonseok/work/guestos/freertos/FreeRTOS_ARM_Cortex-A9.elf >"/home/wonseok/work/guestos/freertos/FreeRTOS_ARM_Cortex-A9.lst"
	@echo 'Finished building: $@'
	@echo ' '

/home/wonseok/work/guestos/freertos/FreeRTOS_ARM_Cortex-A9.siz: /home/wonseok/work/guestos/freertos/FreeRTOS_ARM_Cortex-A9.elf
	@echo 'Invoking: ARM Sourcery Windows GNU Print Size'
	arm-none-eabi-size  --format=berkeley /home/wonseok/work/guestos/freertos/FreeRTOS_ARM_Cortex-A9.elf
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) $(SECONDARY_SIZE)$(OBJS)$(C_DEPS)$(ASM_DEPS)$(SECONDARY_FLASH)$(EXECUTABLES)$(SECONDARY_LIST)$(S_UPPER_DEPS) /home/wonseok/work/guestos/freertos/FreeRTOS_ARM_Cortex-A9.*
	find . -name '*.o.lst' -exec rm {} \;
	-@echo ' '

secondary-outputs: $(SECONDARY_FLASH) $(SECONDARY_LIST) $(SECONDARY_SIZE)

.PHONY: all clean dependents
.SECONDARY:

-include ../makefile.targets
