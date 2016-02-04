include config.mk

ASM_FILES	= $(wildcard Demo/*.S)

C_FILES 	= $(wildcard Demo/*.c) 								 \
			  $(wildcard Demo/Common/Minimal/*.c) 				 \
			  $(wildcard Source/*.c)							 \
			  $(wildcard Source/portable/GCC/ARM_Cortex-A15/*.c) \
			  $(wildcard Source/portable/MemMang/heap_3.c)

OBJS 		:= $(ASM_FILES:.S=.o) $(C_FILES:.c=.o)

BIN			= $(BUILD_DIR)/$(TARGET).bin
LD_SCRIPT	= $(PROJECT).lds.S
OUTPUT 		= $(TARGET).axf
MAP			= $(PROJECT).map

CC			= $(CROSS_COMPILE)gcc
LD			= $(CROSS_COMPILE)ld
NM			= $(CROSS_COMPILE)nm
OBJCOPY		= $(CROSS_COMPILE)objcopy


INCLUDES	= -I Demo
INCLUDES	+= -I Demo/Common/include
INCLUDES	+= -I Source/include
INCLUDES	+= -I Source/portable/GCC/ARM_Cortex-A15
LIBS		= /home/wonseok/experiment/arm-2013.05/arm-none-eabi/lib

CPPFLAGS	= $(CONFIG_FLAG) $(INCLUDES) -nostartfiles $(DEBUG_FLAG)
CPPFLAGS	+= -Wall

all: $(OBJS) $(OUTPUT) $(MAP)

$(MAP): $(OUTPUT)
	$(NM) $< > $@

clean:
	rm -f $(MAP) $(OUTPUT) $(BIN) $(OBJS)

$(OUTPUT): $(OBJS)
	$(CC) -T Demo/generic.ld -nostartfiles -L $(LIBS) --entry Vector_Init -mcpu=cortex-a15 -g -gdwarf-2 -o $@ $(OBJS) -lc -lcs3unhosted

#$(CC) $(CPPFLAGS) -e Vector_Init -T Demo/generic.ld -o $@ $(OBJS) -L $(LIBS) -lc -lcs3unhosted

$(BIN): $(OUTPUT)
	$(OBJCOPY) -O binary $(OUTPUT) $(BIN)

%.o: %.S
	$(CC) $(CPPFLAGS) -I. -c -o $@ $<

%.o: %.c
	$(CC) $(CPPFLAGS) -I. -c -o $@ $<

%: force
	$(MAKE) -C $(KERNEL_SRC) $@

force: ;

Makefile: ;

.PHONY: all clean config.mk
