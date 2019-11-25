################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Each subdirectory must supply rules for building sources it contributes
MattB_HW8_v2cfg.cmd: ../MattB_HW8_v2.tcf
	@echo 'Building file: $<'
	@echo 'Invoking: TConf'
	"c:/ti/bios_5_42_01_09/xdctools/tconf" -b -Dconfig.importPath="c:/ti/bios_5_42_01_09/packages;" "$<"
	@echo 'Finished building: $<'
	@echo ' '

MattB_HW8_v2cfg.s??: | MattB_HW8_v2cfg.cmd
MattB_HW8_v2cfg_c.c: | MattB_HW8_v2cfg.cmd
MattB_HW8_v2cfg.h: | MattB_HW8_v2cfg.cmd
MattB_HW8_v2cfg.h??: | MattB_HW8_v2cfg.cmd
MattB_HW8_v2.cdb: | MattB_HW8_v2cfg.cmd

MattB_HW8_v2cfg.obj: ./MattB_HW8_v2cfg.s?? $(GEN_OPTS) $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C6000 Compiler'
	"C:/ti/ccsv6/tools/compiler/c6000_7.4.7/bin/cl6x" -mv6700 --abi=coffabi -g --include_path="C:/ti/ccsv6/tools/compiler/c6000_7.4.7/include" --include_path="C:/Users/bai45916/Desktop/Embedded_Libraries/DSK6713/c6000/dsk6713/include" --include_path="C:/Users/bai45916/Desktop/Embedded_Libraries/DSK6713/c6000/bios/include" --include_path="C:/Users/bai45916/Desktop/Workspaces/MattWorkspace/MattB_HW8_v2/Debug" --include_path="c:/ti/bios_5_42_01_09/packages/ti/bios/include" --include_path="c:/ti/bios_5_42_01_09/packages/ti/rtdx/include/c6000" --define=c6713 --define=CHIP_6713 --diag_wrap=off --diag_warning=225 --display_error_number --mem_model:const=far --mem_model:data=far --preproc_with_compile --preproc_dependency="MattB_HW8_v2cfg.pp" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

MattB_HW8_v2cfg_c.obj: ./MattB_HW8_v2cfg_c.c $(GEN_OPTS) $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C6000 Compiler'
	"C:/ti/ccsv6/tools/compiler/c6000_7.4.7/bin/cl6x" -mv6700 --abi=coffabi -g --include_path="C:/ti/ccsv6/tools/compiler/c6000_7.4.7/include" --include_path="C:/Users/bai45916/Desktop/Embedded_Libraries/DSK6713/c6000/dsk6713/include" --include_path="C:/Users/bai45916/Desktop/Embedded_Libraries/DSK6713/c6000/bios/include" --include_path="C:/Users/bai45916/Desktop/Workspaces/MattWorkspace/MattB_HW8_v2/Debug" --include_path="c:/ti/bios_5_42_01_09/packages/ti/bios/include" --include_path="c:/ti/bios_5_42_01_09/packages/ti/rtdx/include/c6000" --define=c6713 --define=CHIP_6713 --diag_wrap=off --diag_warning=225 --display_error_number --mem_model:const=far --mem_model:data=far --preproc_with_compile --preproc_dependency="MattB_HW8_v2cfg_c.pp" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

main.obj: ../main.c $(GEN_OPTS) $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C6000 Compiler'
	"C:/ti/ccsv6/tools/compiler/c6000_7.4.7/bin/cl6x" -mv6700 --abi=coffabi -g --include_path="C:/ti/ccsv6/tools/compiler/c6000_7.4.7/include" --include_path="C:/Users/bai45916/Desktop/Embedded_Libraries/DSK6713/c6000/dsk6713/include" --include_path="C:/Users/bai45916/Desktop/Embedded_Libraries/DSK6713/c6000/bios/include" --include_path="C:/Users/bai45916/Desktop/Workspaces/MattWorkspace/MattB_HW8_v2/Debug" --include_path="c:/ti/bios_5_42_01_09/packages/ti/bios/include" --include_path="c:/ti/bios_5_42_01_09/packages/ti/rtdx/include/c6000" --define=c6713 --define=CHIP_6713 --diag_wrap=off --diag_warning=225 --display_error_number --mem_model:const=far --mem_model:data=far --preproc_with_compile --preproc_dependency="main.pp" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '


