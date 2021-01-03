/*******************************************************************************
 *
 * common.c - Common functions
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

#pragma codeseg COMMON_SEG

// The bootloader's watchdog refresh function has no side effects on A/X/Y
// registers - it does nothing except MOV some values to the watchdog registers
// - so it is better to call it this way and save some pushes/pops.
#pragma callee_saves watchdog_refresh // TODO: F%$&!! This isn't implemented by SDCC for STM8!

#include <stdint.h>
#include <stdbool.h>
#include "common.h"

/******************************************************************************/

bool flash_prg_wait(void) {
	uint8_t iapsr;

	// TODO: earliest versions (128K v2.0 and 32K v1.0) of RAM routines do not
	// check WR_PG_DIS, and consequently do not have a 'return' value. Is it
	// safe to still set those global vars?

	// Wait for end-of-programming to occur.
	do {
		// Read the entire register at once. We do this because reading the
		// register clears the WR_PG_DIS and EOP bits, so we need to perform
		// value tests on a copy. See PM0051, section 4.2 "Block programming".
		iapsr = FLASH_IAPSR;

		// Check if attempted to write/erase a protected area. If so, exit
		// indicating failure.
		if(iapsr & (1 << FLASH_IAPSR_WR_PG_DIS)) {
			return true;
		}
	} while(!(iapsr & (1 << FLASH_IAPSR_EOP)));

	return false;
}

void fill_sector_nums(const uint8_t max_sector) {
	// Fill the global buffer with sector numbers, up to the maximum value
	// given as argument.
	for(uint8_t i = 0; i <= max_sector; i++) {
		watchdog_refresh();
		data_buf[i] = i;
	}

	// Set the global buffer limit (i.e. index of last element) to the given
	// maximum sector number.
	data_buf_max = max_sector;
}
