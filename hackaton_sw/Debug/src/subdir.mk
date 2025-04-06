################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/main.c 

OBJS += \
./src/main.o 

C_DEPS += \
./src/main.d 


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Codasip C Compiler'
	codasip_urisc_v-ia-clang -D__INT32 -O3 -fno-unroll-loops -g3 -Wall -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -stdlib=newlib -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


