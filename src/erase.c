#pragma codeseg ERASE_SEG
#pragma callee_saves erase

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

void erase(void) {
	global_0x90 = 0;
	global_0x9b = 0;
	
	// Doing a full erase? Fill the global buffer with numbers of all sectors.
#ifdef STATUS_STRUCT
	if(global_0x8e.erase_full) {
#else
	if(global_0x8e & (1 << 4)) {
#endif
		do {
			watchdog_refresh();
			global_0x00[global_0x90] = global_0x90;
		} while(++global_0x90 <= ERASE_MAX_SECTOR);
		
		global_0x88 = ERASE_MAX_SECTOR;
		global_0x90 = 0;
	}
	
	while(global_0x90 < global_0x88) {
		// Get next sector number from buffer.
		const uint8_t sector = global_0x00[global_0x90];

		// Translate 'sector code' (see UM0560 section 3.7) into address in EEPROM or flash.
#if defined(VER_32K)
		global_0x8a.e = 0x0;
		if(sector == 0x20) {
			// EEPROM addr >= 0x004000
			global_0x8a.hl = 0x4000;
		} else {
			// Flash addr >= 0x00xxxx
			global_0x8a.hl = ((128 * sector) * 8) + 0x8000;
		}
#elif defined(VER_128K)
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
#endif
		
		// Block size is 128 bytes (on high/medium density devices), 8 blocks per sector (1K).
		for(uint8_t i = 0; i < 8; i++) {
			watchdog_refresh();
			
			flash_erase_enable();
			
			erase_block();
			
			flash_prg_wait(&global_0x9b);
			
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
		ldf ([_global_0x8a], x), a
		incw x
		cpw x, #4
		jrult 0001$
	__endasm;
}
