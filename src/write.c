/*******************************************************************************
 *
 * write.c - Write routine and supporting functions
 *
 * Copyright 2021 Basil Hussain
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *    http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 ******************************************************************************/

#pragma codeseg WRITE_SEG
#pragma callee_saves write // TODO: F%$&!! This isn't implemented by SDCC for STM8!

#include <stdint.h>
#include <stdbool.h>
#include "common.h"

static void write_byte(const uint8_t data, const uint16_t idx);

/******************************************************************************/

void write(void) {
	write_err = false;
	
#ifdef STATUS_STRUCT
	if(status.write_flash_block) {
#else
	if(status & (1 << STATUS_WRITE_FLASH_BLOCK)) {
#endif
		if(option_write) {
			// Enable block writing while keeping option byte writing enabled.
			FLASH_CR2  = ((1 << FLASH_CR2_PRG) | (1 << FLASH_CR2_OPT));
			FLASH_NCR2 = ~((1 << FLASH_NCR2_NPRG) | (1 << FLASH_NCR2_NOPT));
		} else {
			// Enable just block writing.
			FLASH_CR2  = (1 << FLASH_CR2_PRG);
			FLASH_NCR2 = ~(1 << FLASH_NCR2_NPRG);
		}
	}
	
	option_write = false;
	
	for(uint8_t idx = 0; idx <= data_buf_max; idx++) {
		watchdog_refresh();
		
		write_byte(data_buf[idx], idx);
		
		// If not writing a whole block (i.e. byte programming), we must wait
		// after each byte written for programming to complete.
#ifdef STATUS_STRUCT
		if(!status.write_flash_block) {
#else
		if(!(status & (1 << STATUS_WRITE_FLASH_BLOCK))) {
#endif
			write_err = flash_prg_wait();
		}
	}
	
	// If we wrote a whole block, wait for programming to complete.
#ifdef STATUS_STRUCT
	if(status.write_flash_block) {
#else
	if(status & (1 << STATUS_WRITE_FLASH_BLOCK)) {
#endif
		write_err = flash_prg_wait();
	}
}

void write_byte(const uint8_t data, const uint16_t idx) {
	// This function is necessary because C memory pointers are only 16-bit, not
	// the 24-bits needed to address the full range of flash on large devices
	// (with >32 KB flash). We can only work with 'extended' addressing using
	// assembly code.
	
	// Avoid compiler warnings for unreferenced args.
	(void)data;
	(void)idx;
	
	__asm
		; Load args from stack: data byte to A reg, index to X reg.
		ld a, (3+0, sp)
		ldw x, (3+1, sp)
		
		; Write the byte to memory at base address given by global variable,
		; offset by the index given by argument.
		ldf ([_mem_addr], x), a
	__endasm;
}
