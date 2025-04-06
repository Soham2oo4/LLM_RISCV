################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include work/profiles/New_configuration_20240528_1116/subdir.mk
-include work/profiles/New_configuration_20230801_1222/subdir.mk
-include src/subdir.mk
-include .settings/subdir.mk
-include subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 

# All Target
all: hackaton_sw.xexe secondary-outputs

# Tool invocations
hackaton_sw.xexe: $(OBJS) $(USER_OBJS) $(LDS)
	@echo 'Building target: $@'
	@echo 'Invoking: Codasip C Linker'
	codasip_urisc_v-ia-clang -Xlinker --defsym=_STACK_SIZE=0x2000 -Xlinker --defsym=_HEAP_SIZE=0xf0000 -stdlib=newlib -o "hackaton_sw.xexe" $(OBJS) $(USER_OBJS) $(LIBS)
	@echo 'Finished building target: $@'
	@echo ' '

: 
	@echo 'Invoking: Codasip Linker Support Package'
	codasip_urisc_v-ia-xml2lds
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) $(EXECUTABLES)$(OBJS)$(C_DEPS) hackaton_sw.xexe
	-@echo ' '

secondary-outputs:

.PHONY: all clean dependents

-include ../makefile.targets
