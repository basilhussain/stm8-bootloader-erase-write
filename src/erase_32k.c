/*******************************************************************************
 *
 * erase_32k.c - Erase supporting functions for 32K devices
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

#include <stdint.h>
#include "common.h"

#define ERASE_MAX_SECTOR 0x20

/******************************************************************************/
// FOR 32K DEVICES ONLY
/******************************************************************************/

void erase_fill_sectors(void) {
	fill_sector_nums(ERASE_MAX_SECTOR);
}

void erase_map_sector_to_addr(const uint8_t sector) {
	// Translate 'sector code' (see UM0560 section 3.7) into address in EEPROM or flash.
	mem_addr.e = 0x0;
	if(sector == 0x20) {
		// EEPROM addr >= 0x004000
		mem_addr.hl = 0x4000;
	} else {
		// Flash addr >= 0x00xxxx
		mem_addr.hl = ((128 * sector) * 8) + 0x8000;
	}
}
