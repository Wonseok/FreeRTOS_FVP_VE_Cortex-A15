# Author has to know the difference among '?=', '=', '+=' and ':='

CROSS_COMPILE		?= arm-none-eabi-
PROCESSOR			?= cortex-a15

DEBUG_FLAG		= -g
CONFIG_FLAG		= -mcpu=$(PROCESSOR) -marm

MACHINE			?= rtsm
PROJECT			?= freeRTOS
TARGET			?= freeRTOS-$(MACHINE)

# Desciption of directory structure
ROOT			?= $(PWD)
MAKE			?= make
