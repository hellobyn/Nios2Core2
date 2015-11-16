/* system.h
 *
 * Machine generated for a CPU named "cpu1" as defined in:
 * e:\MyProject\My_project\Altera\Q11MultiCore\software\CPU1_syslib\..\..\Nios2Core2.ptf
 *
 * Generated: 2015-11-16 16:36:30.152
 *
 */

#ifndef __SYSTEM_H_
#define __SYSTEM_H_

/*

DO NOT MODIFY THIS FILE

   Changing this file will have subtle consequences
   which will almost certainly lead to a nonfunctioning
   system. If you do modify this file, be aware that your
   changes will be overwritten and lost when this file
   is generated again.

DO NOT MODIFY THIS FILE

*/

/******************************************************************************
*                                                                             *
* License Agreement                                                           *
*                                                                             *
* Copyright (c) 2003 Altera Corporation, San Jose, California, USA.           *
* All rights reserved.                                                        *
*                                                                             *
* Permission is hereby granted, free of charge, to any person obtaining a     *
* copy of this software and associated documentation files (the "Software"),  *
* to deal in the Software without restriction, including without limitation   *
* the rights to use, copy, modify, merge, publish, distribute, sublicense,    *
* and/or sell copies of the Software, and to permit persons to whom the       *
* Software is furnished to do so, subject to the following conditions:        *
*                                                                             *
* The above copyright notice and this permission notice shall be included in  *
* all copies or substantial portions of the Software.                         *
*                                                                             *
* THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR  *
* IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,    *
* FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE *
* AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER      *
* LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING     *
* FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER         *
* DEALINGS IN THE SOFTWARE.                                                   *
*                                                                             *
* This agreement shall be governed in all respects by the laws of the State   *
* of California and by the laws of the United States of America.              *
*                                                                             *
******************************************************************************/

/*
 * system configuration
 *
 */

#define ALT_SYSTEM_NAME "Nios2Core2"
#define ALT_CPU_NAME "cpu1"
#define ALT_CPU_ARCHITECTURE "altera_nios2"
#define ALT_DEVICE_FAMILY "CYCLONEIVE"
#define ALT_STDIN "/dev/null"
#define ALT_STDIN_TYPE ""
#define ALT_STDIN_BASE UNDEFINED VARIABLE %BASE_ADDRESS%
#define ALT_STDIN_DEV null
#define ALT_STDOUT "/dev/null"
#define ALT_STDOUT_TYPE ""
#define ALT_STDOUT_BASE UNDEFINED VARIABLE %BASE_ADDRESS%
#define ALT_STDOUT_DEV null
#define ALT_STDERR "/dev/null"
#define ALT_STDERR_TYPE ""
#define ALT_STDERR_BASE UNDEFINED VARIABLE %BASE_ADDRESS%
#define ALT_STDERR_DEV null
#define ALT_CPU_FREQ 100000000
#define ALT_IRQ_BASE NULL
#define ALT_LEGACY_INTERRUPT_API_PRESENT

/*
 * processor configuration
 *
 */

#define NIOS2_CPU_IMPLEMENTATION "fast"
#define NIOS2_BIG_ENDIAN 0
#define NIOS2_INTERRUPT_CONTROLLER_ID 0

#define NIOS2_ICACHE_SIZE 4096
#define NIOS2_DCACHE_SIZE 0
#define NIOS2_ICACHE_LINE_SIZE 32
#define NIOS2_ICACHE_LINE_SIZE_LOG2 5
#define NIOS2_DCACHE_LINE_SIZE 0
#define NIOS2_DCACHE_LINE_SIZE_LOG2 0
#define NIOS2_FLUSHDA_SUPPORTED

#define NIOS2_EXCEPTION_ADDR 0x05000020
#define NIOS2_RESET_ADDR 0x00200000
#define NIOS2_BREAK_ADDR 0x00401820

#define NIOS2_HAS_DEBUG_STUB

#define NIOS2_CPU_ID_SIZE 1
#define NIOS2_CPU_ID_VALUE 1

/*
 * A define for each class of peripheral
 *
 */

#define __ALTERA_AVALON_NEW_SDRAM_CONTROLLER
#define __ALTERA_AVALON_TRI_STATE_BRIDGE
#define __ALTERA_AVALON_CFI_FLASH
#define __ALTERA_AVALON_SYSID
#define __ALTERA_AVALON_TIMER
#define __ALTERA_AVALON_PIO

/*
 * sdram configuration
 *
 */

#define SDRAM_NAME "/dev/sdram"
#define SDRAM_TYPE "altera_avalon_new_sdram_controller"
#define SDRAM_BASE 0x04000000
#define SDRAM_SPAN 33554432
#define SDRAM_REGISTER_DATA_IN 1
#define SDRAM_SIM_MODEL_BASE 0
#define SDRAM_SDRAM_DATA_WIDTH 16
#define SDRAM_SDRAM_ADDR_WIDTH 13
#define SDRAM_SDRAM_ROW_WIDTH 13
#define SDRAM_SDRAM_COL_WIDTH 9
#define SDRAM_SDRAM_NUM_CHIPSELECTS 1
#define SDRAM_SDRAM_NUM_BANKS 4
#define SDRAM_REFRESH_PERIOD 15.625
#define SDRAM_POWERUP_DELAY 100.0
#define SDRAM_CAS_LATENCY 3
#define SDRAM_T_RFC 70.0
#define SDRAM_T_RP 20.0
#define SDRAM_T_MRD 3
#define SDRAM_T_RCD 20.0
#define SDRAM_T_AC 5.5
#define SDRAM_T_WR 14.0
#define SDRAM_INIT_REFRESH_COMMANDS 2
#define SDRAM_INIT_NOP_DELAY 0.0
#define SDRAM_SHARED_DATA 0
#define SDRAM_SDRAM_BANK_WIDTH 2
#define SDRAM_TRISTATE_BRIDGE_SLAVE ""
#define SDRAM_STARVATION_INDICATOR 0
#define SDRAM_IS_INITIALIZED 1
#define ALT_MODULE_CLASS_sdram altera_avalon_new_sdram_controller

/*
 * triStateBridge configuration
 *
 */

#define TRISTATEBRIDGE_NAME "/dev/triStateBridge"
#define TRISTATEBRIDGE_TYPE "altera_avalon_tri_state_bridge"
#define ALT_MODULE_CLASS_triStateBridge altera_avalon_tri_state_bridge

/*
 * cfi configuration
 *
 */

#define CFI_NAME "/dev/cfi"
#define CFI_TYPE "altera_avalon_cfi_flash"
#define CFI_BASE 0x00000000
#define CFI_SPAN 4194304
#define CFI_SETUP_VALUE 40
#define CFI_WAIT_VALUE 160
#define CFI_HOLD_VALUE 40
#define CFI_TIMING_UNITS "ns"
#define CFI_UNIT_MULTIPLIER 1
#define CFI_SIZE 4194304
#define ALT_MODULE_CLASS_cfi altera_avalon_cfi_flash

/*
 * sysid configuration
 *
 */

#define SYSID_NAME "/dev/sysid"
#define SYSID_TYPE "altera_avalon_sysid"
#define SYSID_BASE 0x00401030
#define SYSID_SPAN 8
#define SYSID_ID 11u
#define SYSID_TIMESTAMP 1447592398u
#define SYSID_REGENERATE_VALUES 0
#define ALT_MODULE_CLASS_sysid altera_avalon_sysid

/*
 * timer1 configuration
 *
 */

#define TIMER1_NAME "/dev/timer1"
#define TIMER1_TYPE "altera_avalon_timer"
#define TIMER1_BASE 0x00401040
#define TIMER1_SPAN 32
#define TIMER1_IRQ 0
#define TIMER1_IRQ_INTERRUPT_CONTROLLER_ID 0
#define TIMER1_ALWAYS_RUN 0
#define TIMER1_FIXED_PERIOD 0
#define TIMER1_SNAPSHOT 1
#define TIMER1_PERIOD 1
#define TIMER1_PERIOD_UNITS "ms"
#define TIMER1_RESET_OUTPUT 0
#define TIMER1_TIMEOUT_PULSE_OUTPUT 0
#define TIMER1_LOAD_VALUE 99999
#define TIMER1_COUNTER_SIZE 32
#define TIMER1_MULT 0.0010
#define TIMER1_TICKS_PER_SEC 1000
#define TIMER1_FREQ 100000000
#define ALT_MODULE_CLASS_timer1 altera_avalon_timer

/*
 * pio1 configuration
 *
 */

#define PIO1_NAME "/dev/pio1"
#define PIO1_TYPE "altera_avalon_pio"
#define PIO1_BASE 0x00401060
#define PIO1_SPAN 16
#define PIO1_DO_TEST_BENCH_WIRING 0
#define PIO1_DRIVEN_SIM_VALUE 0
#define PIO1_HAS_TRI 0
#define PIO1_HAS_OUT 1
#define PIO1_HAS_IN 0
#define PIO1_CAPTURE 0
#define PIO1_DATA_WIDTH 2
#define PIO1_RESET_VALUE 0
#define PIO1_EDGE_TYPE "NONE"
#define PIO1_IRQ_TYPE "NONE"
#define PIO1_BIT_CLEARING_EDGE_REGISTER 0
#define PIO1_BIT_MODIFYING_OUTPUT_REGISTER 0
#define PIO1_FREQ 100000000
#define ALT_MODULE_CLASS_pio1 altera_avalon_pio

/*
 * system library configuration
 *
 */

#define ALT_MAX_FD 32
#define ALT_SYS_CLK TIMER1
#define ALT_TIMESTAMP_CLK none

/*
 * Devices associated with code sections.
 *
 */

#define ALT_TEXT_DEVICE       CFI
#define ALT_RODATA_DEVICE     SDRAM
#define ALT_RWDATA_DEVICE     SDRAM
#define ALT_EXCEPTIONS_DEVICE SDRAM
#define ALT_RESET_DEVICE      CFI

/*
 * The text section is initialised so no bootloader will be required.
 * Set a variable to tell crt0.S to provide code at the reset address and
 * to initialise rwdata if appropriate.
 */

#define ALT_NO_BOOTLOADER


#endif /* __SYSTEM_H_ */
