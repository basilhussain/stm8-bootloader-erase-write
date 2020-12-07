#pragma codeseg ERASE_SEG
#pragma callee_saves erase // TODO: F%$&!! This isn't implemented by SDCC for STM8!

#include <stdint.h>
#include "common.h"

extern void erase_fill_sectors(void);
extern void erase_map_sector_to_addr(const uint8_t sector);
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
		erase_fill_sectors();
	}
	
	while(global_0x90 < global_0x88) {
		// Get next sector number from buffer and translate into address in
		// EEPROM or flash (see UM0560 section 3.7).
		erase_map_sector_to_addr(global_0x00[global_0x90]);

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
