#pragma codeseg ERASE_SEG

// The bootloader's watchdog refresh function has no side effects on A/X/Y
// registers - it does nothing except MOV some values to the watchdog registers
// - so it is better to call it this way and save some pushes/pops.
#pragma callee_saves watchdog_refresh // TODO: F%$&!! This isn't implemented by SDCC for STM8!

#include <stdint.h>
#include "common.h"

#define ERASE_MAX_SECTOR 0x81

/******************************************************************************/
// FOR 128K DEVICES ONLY
/******************************************************************************/

void erase_fill_sectors(void) {
	// Fill the global buffer with numbers of all sectors.
	for(uint8_t i = 0; i <= ERASE_MAX_SECTOR; i++) {
		watchdog_refresh();
		global_0x00[i] = i;
	}
	
	global_0x88 = ERASE_MAX_SECTOR;
}

void erase_map_sector_to_addr(const uint8_t sector) {
	// Translate 'sector code' (see UM0560 section 3.7) into address in EEPROM or flash.

	/*
	// NOPE, BIGGER THAN PREVIOUS CODE BELOW
	global_0x8a.e = 0x0;
	if(sector == 0x80) {
		// EEPROM addr >= 0x004000
		global_0x8a.hl = 0x4000;
	} else if(sector == 0x81) {
		// EEPROM addr >= 0x004400
		global_0x8a.hl = 0x4400;
	} else {
		global_0x8a.hl = 0x0;
		if(sector >= 0x60) {
			// Flash addr >= 0x02xxxx
			global_0x8a.e = 0x02;
			sector -= 0x60;
		} else if(sector >= 0x20) {
			// Flash addr >= 0x01xxxx
			global_0x8a.e = 0x01;
			sector -= 0x20;
		} else {
			// Flash addr >= 0x00xxxx; initialise with base address.
			global_0x8a.hl = 0x8000;
		}
		global_0x8a.hl += (128 * sector) * 8;
	}
	*/
	
	global_0x8a.e = 0x0;
	if(sector == 0x80) {
		// EEPROM addr >= 0x004000
		global_0x8a.hl = 0x4000;
	} else if(sector == 0x81) {
		// EEPROM addr >= 0x004400
		global_0x8a.hl = 0x4400;
	} else if(sector < 0x20) {
		// Flash addr >= 0x00xxxx
		global_0x8a.hl = ((128 * sector) * 8) + 0x8000;
	} else if(sector < 0x60) {
		// Flash addr >= 0x01xxxx
		global_0x8a.e = 0x01;
		global_0x8a.hl = (128 * (sector - 0x20)) * 8;
	} else {
		// Flash addr >= 0x02xxxx
		global_0x8a.e = 0x02;
		global_0x8a.hl = (128 * (sector - 0x60)) * 8;
	}
}
