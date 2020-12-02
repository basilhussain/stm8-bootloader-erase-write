#include <stdint.h>
#include "common.h"

static void write_byte(const uint8_t data, const uint16_t idx);

/******************************************************************************/

// TODO: this code too big! needs to be 10 bytes smaller!
// break in to smaller sub-functions, some of which are placed in further sections of RAM, beyond 0x1FF?

void write(void) {
	uint16_t idx = 0;
	
	watchdog_refresh();
	
	global_0x9c = 0;

	if(global_0x8e & (1 << 6)) {
		if(global_0x98 & (1 << 0)) {
			// Enable writing of option bytes in addition to block writing.
			FLASH_CR2 = (FLASH_CR2_PRG | FLASH_CR2_OPT);
			FLASH_NCR2 = ~(FLASH_NCR2_NPRG | FLASH_NCR2_NOPT);
		} else {
			// Enable just block writing.
			FLASH_CR2 = FLASH_CR2_PRG;
			FLASH_NCR2 = ~FLASH_NCR2_NPRG;
		}
	}	
		
	global_0x98 = 0;
	
	while(idx < global_0x88) {
		write_byte(global_0x00[idx], idx);
		
		if(!(global_0x8e & (1 << 6))) {
			if(FLASH_IAPSR & (1 << FLASH_IAPSR_WR_PG_DIS)) {
				// Failed, attempted to erase a protected area; set a flag?
				global_0x9c |= (1 << 0);
			} else {
				// Wait for end-of-programming to occur.
				while(!(FLASH_IAPSR & (1 << FLASH_IAPSR_EOP)));
			}
		}
		
		watchdog_refresh();
		
		idx++;
	}
	
	// ??? Why does it do this once more?
	if(global_0x8e & (1 << 6)) {
		if(FLASH_IAPSR & (1 << FLASH_IAPSR_WR_PG_DIS)) {
			// Failed, attempted to erase a protected area; set a flag?
			global_0x9c |= (1 << 0);
		} else {
			// Wait for end-of-programming to occur.
			while(!(FLASH_IAPSR & (1 << FLASH_IAPSR_EOP)));
		}
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
		ldf ([_global_0x8a], x), a
	__endasm;
}
