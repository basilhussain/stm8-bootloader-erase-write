/*******************************************************************************
 *
 * erase.c - Erase routine and supporting functions
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

#pragma codeseg ERASE_SEG
#pragma callee_saves erase // TODO: F%$&!! This isn't implemented by SDCC for STM8!

#include <stdint.h>
#include <stdbool.h>
#include "common.h"

extern void erase_fill_sectors(void);
extern void erase_map_sector_to_addr(const uint8_t sector);
static void erase_block(void);

/******************************************************************************/

void erase(void) {
	erase_err = false;

	// Doing a full erase? Fill the global buffer with numbers of all sectors.
#ifdef STATUS_STRUCT
	if(status.erase_full) {
#else
	if(status & (1 << STATUS_ERASE_FULL)) {
#endif
		erase_fill_sectors();
	}

	for(uint8_t idx = 0; idx <= data_buf_max; idx++) {
		// Get next sector number from buffer and translate into address in
		// EEPROM or flash (see UM0560 section 3.7).
		erase_map_sector_to_addr(data_buf[idx]);

		// Block size is 128 bytes (on high/medium density devices), 8 blocks per sector (1K).
		for(uint8_t i = 0; i < 8; i++) {
			watchdog_refresh();

			// Enable flash block erasure.
			FLASH_CR2  = (1 << FLASH_CR2_ERASE);
			FLASH_NCR2 = ~(1 << FLASH_NCR2_NERASE);

			erase_block();

			erase_err = flash_prg_wait();

			// Increment address by one block. Overflow won't matter, as it'll occur on the
			// final block of the sector, so we don't need to increment extended byte of
			// address then.
			mem_addr.hl += 128;
		}
	}
}

void erase_block(void) {
	// This function is necessary because C memory pointers are only 16-bit, not
	// the 24-bits needed to address the full range of flash on large devices
	// (with >32 KB flash). We can only work with 'extended' addressing using
	// assembly code.

	// TODO: can the erase sequence of writing four zeroes be done in reverse?
	// i.e. writing from highest address to lowest? Would make assembly smaller
	// as counter in X could count down to zero.
	__asm
		; Initialise address offset in X to zero, and set byte to be written
		; in A also to zero.
		clrw x
		clr a

		; Erase the block by writing a sequence of four zero bytes at address
		; given by global variable. Increment address offset as we go.
	0001$:
		ldf ([_mem_addr], x), a
		incw x
		cpw x, #4
		jrult 0001$
	__endasm;
}
