################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/test.c \
../src/xgpio_tapp_example.c 

LD_SRCS += \
../src/lscript.ld 

OBJS += \
./src/test.o \
./src/xgpio_tapp_example.o 

C_DEPS += \
./src/test.d \
./src/xgpio_tapp_example.d 


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.c
	@echo Building file: $<
	@echo Invoking: MicroBlaze gcc compiler
	mb-gcc -Wall -O0 -g3 -c -fmessage-length=0 -Wl,--no-relax -I../../standalone_bsp_0/microblaze_0/include -mxl-barrel-shift -mxl-pattern-compare -mcpu=v8.40.a -mno-xl-soft-mul -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o"$@" "$<"
	@echo Finished building: $<
	@echo ' '


