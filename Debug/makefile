################################################################################
# Automatically-generated file. Do not edit!
################################################################################

SHELL = cmd.exe

CG_TOOL_ROOT := C:/ti/ccsv6/tools/compiler/c6000_7.4.7

GEN_OPTS__FLAG := 
GEN_CMDS__FLAG := -l"./MattB_HW8_v2cfg.cmd"

ORDERED_OBJS += \
"./MattB_HW8_v2cfg.obj" \
"./MattB_HW8_v2cfg_c.obj" \
"./main.obj" \
$(GEN_CMDS__FLAG) \
-l"libc.a" \
-l"C:\Users\bai45916\Desktop\Embedded_Libraries\DSK6713\c6000\dsk6713\lib\dsk6713bsl.lib" \
-l"C:\Program Files\C6xCSL\lib_3x\csl6713.lib" \

-include ../makefile.init

RM := DEL /F
RMDIR := RMDIR /S/Q

# All of the sources participating in the build are defined here
-include sources.mk
-include subdir_vars.mk
-include subdir_rules.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(S_DEPS)),)
-include $(S_DEPS)
endif
ifneq ($(strip $(S_UPPER_DEPS)),)
-include $(S_UPPER_DEPS)
endif
ifneq ($(strip $(S62_DEPS)),)
-include $(S62_DEPS)
endif
ifneq ($(strip $(C64_DEPS)),)
-include $(C64_DEPS)
endif
ifneq ($(strip $(ASM_DEPS)),)
-include $(ASM_DEPS)
endif
ifneq ($(strip $(CC_DEPS)),)
-include $(CC_DEPS)
endif
ifneq ($(strip $(S55_DEPS)),)
-include $(S55_DEPS)
endif
ifneq ($(strip $(C67_DEPS)),)
-include $(C67_DEPS)
endif
ifneq ($(strip $(CLA_DEPS)),)
-include $(CLA_DEPS)
endif
ifneq ($(strip $(C??_DEPS)),)
-include $(C??_DEPS)
endif
ifneq ($(strip $(CPP_DEPS)),)
-include $(CPP_DEPS)
endif
ifneq ($(strip $(S??_DEPS)),)
-include $(S??_DEPS)
endif
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
ifneq ($(strip $(C62_DEPS)),)
-include $(C62_DEPS)
endif
ifneq ($(strip $(CXX_DEPS)),)
-include $(CXX_DEPS)
endif
ifneq ($(strip $(C++_DEPS)),)
-include $(C++_DEPS)
endif
ifneq ($(strip $(ASM_UPPER_DEPS)),)
-include $(ASM_UPPER_DEPS)
endif
ifneq ($(strip $(K_DEPS)),)
-include $(K_DEPS)
endif
ifneq ($(strip $(C43_DEPS)),)
-include $(C43_DEPS)
endif
ifneq ($(strip $(INO_DEPS)),)
-include $(INO_DEPS)
endif
ifneq ($(strip $(S67_DEPS)),)
-include $(S67_DEPS)
endif
ifneq ($(strip $(SA_DEPS)),)
-include $(SA_DEPS)
endif
ifneq ($(strip $(S43_DEPS)),)
-include $(S43_DEPS)
endif
ifneq ($(strip $(OPT_DEPS)),)
-include $(OPT_DEPS)
endif
ifneq ($(strip $(PDE_DEPS)),)
-include $(PDE_DEPS)
endif
ifneq ($(strip $(S64_DEPS)),)
-include $(S64_DEPS)
endif
ifneq ($(strip $(C_UPPER_DEPS)),)
-include $(C_UPPER_DEPS)
endif
ifneq ($(strip $(C55_DEPS)),)
-include $(C55_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 
EXE_OUTPUTS += \
MattB_HW8_v2.out \

EXE_OUTPUTS__QUOTED += \
"MattB_HW8_v2.out" \

BIN_OUTPUTS += \
MattB_HW8_v2.hex \

BIN_OUTPUTS__QUOTED += \
"MattB_HW8_v2.hex" \


# All Target
all: MattB_HW8_v2.out

# Tool invocations
MattB_HW8_v2.out: $(OBJS) $(GEN_CMDS)
	@echo 'Building target: $@'
	@echo 'Invoking: C6000 Linker'
	"C:/ti/ccsv6/tools/compiler/c6000_7.4.7/bin/cl6x" -mv6700 --abi=coffabi -g --define=c6713 --define=CHIP_6713 --diag_wrap=off --diag_warning=225 --display_error_number --mem_model:const=far --mem_model:data=far -z --stack_size=0x800 -m"MattB_HW8_v2.map" --heap_size=0x800 -i"C:/ti/ccsv6/tools/compiler/c6000_7.4.7/lib" -i"C:/ti/ccsv6/tools/compiler/c6000_7.4.7/include" -i"c:/ti/bios_5_42_01_09/packages/ti/rtdx/lib/c6000" -i"c:/ti/bios_5_42_01_09/packages/ti/bios/lib" --reread_libs --warn_sections --diag_wrap=off --display_error_number --xml_link_info="MattB_HW8_v2_linkInfo.xml" --rom_model -o "MattB_HW8_v2.out" $(ORDERED_OBJS)
	@echo 'Finished building target: $@'
	@echo ' '

MattB_HW8_v2.hex: $(EXE_OUTPUTS)
	@echo 'Invoking: C6000 Hex Utility'
	"C:/ti/ccsv6/tools/compiler/c6000_7.4.7/bin/hex6x"  -o "MattB_HW8_v2.hex" $(EXE_OUTPUTS__QUOTED)
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) $(GEN_HDRS__QUOTED)$(GEN_MISC_FILES__QUOTED)$(EXE_OUTPUTS__QUOTED)$(GEN_FILES__QUOTED)$(BIN_OUTPUTS__QUOTED)$(GEN_CMDS__QUOTED)
	-$(RM) "MattB_HW8_v2cfg_c.pp" "main.pp" 
	-$(RM) "MattB_HW8_v2cfg.pp" 
	-$(RM) "MattB_HW8_v2cfg.obj" "MattB_HW8_v2cfg_c.obj" "main.obj" 
	-@echo 'Finished clean'
	-@echo ' '

.PHONY: all clean dependents
.SECONDARY:

-include ../makefile.targets

