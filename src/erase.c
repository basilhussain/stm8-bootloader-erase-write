#include <stdint.h>
#include "common.h"

#if defined(VER_32K)
#define ERASE_MAX_SECTOR 0x20
#elif defined(VER_128K)
#define ERASE_MAX_SECTOR 0x81
#else
#error "Bootloader version not defined - must be either VER_32K or VER_128K"
#endif

static void erase_block(void);

/******************************************************************************/

// TODO: this code is too big! needs to be 4 bytes smaller!
// break in to smaller sub-functions, some of which are placed in further sections of RAM, beyond 0x1FF?

void erase(void) {
	global_0x90 = 0;
	global_0x9b = 0;
	
	// Doing a full erase? Fill the global buffer with numbers of all sectors.
	if(global_0x8e & (1 << 4)) {
		do {
			watchdog_refresh();
			global_0x00[global_0x90] = global_0x90;
		} while(++global_0x90 <= ERASE_MAX_SECTOR);
		
		global_0x88 = ERASE_MAX_SECTOR;
		global_0x90 = 0;
	}
	
	while(global_0x90 < global_0x88) {
		// Get next sector number from buffer.
		uint8_t sector = global_0x00[global_0x90];

		// Translate 'sector code' (see UM0560 section 3.7) into address in EEPROM or flash.
#if defined(VER_32K)
		if(sector == 0x20) {
			// EEPROM addr >= 0x004000
			global_0x8a.e = 0;
			global_0x8a.hl = 0x4000;
		} else {
			// Flash addr >= 0x00xxxx
			global_0x8a.e = 0;
			global_0x8a.hl = ((128 * sector) * 8) + 0x8000;
		}
#elif defined(VER_128K)
		if(sector == 0x80) {
			// EEPROM addr >= 0x004000
			global_0x8a.e = 0;
			global_0x8a.hl = 0x4000;
		} else if(sector == 0x81) {
			// EEPROM addr >= 0x004400
			global_0x8a.e = 0;
			global_0x8a.hl = 0x4400;
		} else if(sector < 0x20) {
			// Flash addr >= 0x00xxxx
			global_0x8a.e = 0;
			global_0x8a.hl = ((128 * sector) * 8) + 0x8000;
		} else if(sector < 0x60) {
			// Flash addr >= 0x01xxxx
			sector -= 0x20;
			global_0x8a.e = 0x01;
			global_0x8a.hl = (128 * sector) * 8;
		} else {
			// Flash addr >= 0x02xxxx
			sector -= 0x60;
			global_0x8a.e = 0x02;
			global_0x8a.hl = (128 * sector) * 8;
		}
#endif
		
		// Block size is 128 bytes (on high/medium density devices), 8 blocks per sector (1K).
		for(uint8_t i = 0; i < 8; i++) {
			watchdog_refresh();
			
			// Enable flash block erasure.
			FLASH_CR2 = (1 << FLASH_CR2_ERASE);
			FLASH_NCR2 = ~(1 << FLASH_NCR2_NERASE);
			
			erase_block();
			
			if(FLASH_IAPSR & (1 << FLASH_IAPSR_WR_PG_DIS)) {
				// Failed, attempted to erase a protected area; set a flag?
				global_0x9b |= (1 << 0);
			} else {
				// Wait for end-of-programming to occur.
				while(!(FLASH_IAPSR & (1 << FLASH_IAPSR_EOP)));
			}
			
			// Increment address by one block. Overflow won't matter, as it'll occur on the
			// final block of the sector, so we don't need to increment extended byte of
			// address then.
			global_0x8a.hl += 128;
		}
		
		global_0x90++;
	}
}

void erase_block(void) {
	// This function is necessary because C memory pointers are only 16-bit, not
	// the 24-bits needed to address the full range of flash on large devices
	// (with >32 KB flash). We can only work with 'extended' addressing using
	// assembly code.
	
	__asm
		; Initialise address offset in X to zero, and set byte to be written
		; in A also to zero.
		clrw x
		clr a
		
		; Erase the block by writing a sequence of four zero bytes at address
		; given by global variable. Increment address offset as we go.
		ldf ([_global_0x8a], x), a
		incw x
		ldf ([_global_0x8a], x), a
		incw x
		ldf ([_global_0x8a], x), a
		incw x
		ldf ([_global_0x8a], x), a
		incw x
	__endasm;
}
