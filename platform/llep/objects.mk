#
# SPDX-License-Identifier: BSD-2-Clause
#
# Copyright (c) 2019 Western Digital Corporation or its affiliates.
#

# Compiler pre-processor flags
platform-cppflags-y =

# C Compiler and assembler flags.
platform-cflags-y =
platform-asflags-y =

# Linker flags: additional libraries and object files that the platform
# code needs can be added here
platform-ldflags-y =

#
# Command for platform specific "make run"
# Useful for development and debugging on plaftform simulator (such as QEMU)
#
# platform-runcmd = your_platform_run.sh

#
# Platform RISC-V XLEN, ABI, ISA and Code Model configuration.
# These are optional parameters but platforms can optionaly provide it.
# Some of these are guessed based on GCC compiler capabilities
#
# PLATFORM_RISCV_XLEN = 64
# PLATFORM_RISCV_ABI = lp64
# PLATFORM_RISCV_ISA = rv64imafdc
# PLATFORM_RISCV_CODE_MODEL = medany

# Space separated list of object file names to be compiled for the platform
platform-objs-y += platform.o

#
# If the platform support requires a builtin device tree file, the name of
# the device tree compiled file should be specified here. The device tree
# source file be in the form <dt file name>.dts
#
# platform-objs-y += <dt file name>.o

# Firmware load address configuration. This is mandatory.
FW_TEXT_START=0x02000000
PLATFORM_RISCV_XLEN=32

#
# Jump firmware configuration.
# Optional parameters are commented out. Uncomment and define these parameters
# as needed.
#
FW_JUMP=y
# This needs to be 4MB aligned for 32-bit support
FW_JUMP_ADDR=0x02400000
