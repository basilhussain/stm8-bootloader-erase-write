#pragma codeseg WRITE_SEG
#pragma callee_saves write

#include <stdint.h>
#include "common.h"

static void write_byte(const uint8_t data, const uint16_t idx);

/******************************************************************************/

void write(void) {
	uint16_t idx = 0;
	
	watchdog_refresh();
	
	global_0x9c = 0;

#ifdef STATUS_STRUCT
	if(global_0x8e.write_flash_block) {
#else
	if(global_0x8e & (1 << 6)) {
#endif
		if(global_0x98 & (1 << 0)) {
			// Enable writing of option bytes in addition to block writing.
			flash_block_prg_option_wr_enable();
		} else {
			// Enable just block writing.
			flash_block_prg_enable();
		}
	}	
		
	global_0x98 = 0;
	
	// TODO: earliest BL versions call watchdog function here instead. Perhaps add another call?
	
	while(idx < global_0x88) {
		write_byte(global_0x00[idx], idx);
		
		// If not writing a whole block (i.e. byte programming), we must wait
		// after each byte written for programming to complete.
#ifdef STATUS_STRUCT
		if(!global_0x8e.write_flash_block) {
#else
		if(!(global_0x8e & (1 << 6))) {
#endif
			flash_prg_wait(&global_0x9c);
		}
		
		watchdog_refresh();
		
		idx++;
	}
	
	// If we wrote a whole block, wait for programming to complete.
#ifdef STATUS_STRUCT
	if(global_0x8e.write_flash_block) {
#else
	if(global_0x8e & (1 << 6)) {
#endif
		flash_prg_wait(&global_0x9c);
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
