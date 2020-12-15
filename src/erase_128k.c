#pragma codeseg ERASE_SEG

#include <stdint.h>
#include "common.h"

#define ERASE_MAX_SECTOR 0x81

/******************************************************************************/
// FOR 128K DEVICES ONLY
/******************************************************************************/

void erase_fill_sectors(void) {
	fill_sector_nums(ERASE_MAX_SECTOR);
}

void erase_map_sector_to_addr(const uint8_t sector) {
	// Translate 'sector code' (see UM0560 section 3.7) into address in EEPROM or flash.
	global_0x8a.e = 0x0;
	if(sector == 0x81) {
		// EEPROM addr >= 0x004400
		global_0x8a.hl = 0x4400;
	} else if(sector == 0x80) {
		// EEPROM addr >= 0x004000
		global_0x8a.hl = 0x4000;
	} else {
		if(sector >= 0x60) {
			// Flash addr >= 0x02xxxx
			global_0x8a.e = 0x02;
		} else if(sector >= 0x20) {
			// Flash addr >= 0x01xxxx
			global_0x8a.e = 0x01;
		}
		global_0x8a.hl = flash_sector_addr_hl(sector);
	}
}
